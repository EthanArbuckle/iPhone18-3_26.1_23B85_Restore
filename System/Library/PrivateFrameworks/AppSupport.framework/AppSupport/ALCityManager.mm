@interface ALCityManager
+ (BOOL)willApplyTimeZoneChanges1;
+ (__CFArray)legacyCityForCity:(id)city;
+ (id)_localeDictionaryFromSQLRow:(char *)row;
+ (id)newCitiesByIdentifierMap:(id)map;
+ (id)sharedManager;
- (ALCityManager)init;
- (id)_cityForClassicIdentifier:(id)identifier commaSearchOptions:(unint64_t)options;
- (id)_cityForTimeZone:(id)zone localeCode:(id)code;
- (id)_defaultCityForTimeZone:(id)zone localeCode:(id)code;
- (id)_whileDatabaseLocked_localeCodesMatchingQualifier:(id)qualifier;
- (id)allCities;
- (id)allLocales;
- (id)bestCityForLegacyCity:(__CFArray *)city;
- (id)citiesMatchingName:(id)name localized:(BOOL)localized;
- (id)citiesMatchingQualifier:(id)qualifier;
- (id)citiesWithIdentifiers:(id)identifiers;
- (id)citiesWithTimeZone:(id)zone;
- (id)cityForClassicIdentifier:(id)identifier;
- (id)defaultCitiesForLocaleCode:(id)code options:(int)options;
- (id)defaultCityForTimeZone:(id)zone;
- (id)defaultCityForTimeZone:(id)zone localeCode:(id)code;
- (id)localeWithCode:(id)code;
- (void)_whileDatabaseLocked_ensureGreenKeyValueCaches;
- (void)_whileDatabaseLocked_modifyCityForGreen:(id)green;
- (void)dealloc;
- (void)init;
- (void)localizeCities:(id)cities;
@end

@implementation ALCityManager

- (ALCityManager)init
{
  v7.receiver = self;
  v7.super_class = ALCityManager;
  v2 = [(ALCityManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AE68]);
    v2->_databaseAccessRecursiveLock = v3;
    [(NSRecursiveLock *)v3 setName:@"com.apple.AppSupport.ALCityManager.databaseAccessLock"];
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppSupport"];
    if (sqlite3_open_v2([objc_msgSend(v4 pathForResource:@"CityInfo" ofType:{@"db", "UTF8String"}], &v2->_db, 1, "unix-none"))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [ALCityManager init];
      }

      v2->_db = 0;

      return 0;
    }

    else
    {
      v5 = [v4 pathForResource:@"Localizable_Places" ofType:@"db"];
      if ([v5 length])
      {
        if (sqlite3_open_v2([v5 UTF8String], &v2->_localizedDb, 1, "unix-none"))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [ALCityManager init];
          }

          v2->_localizedDb = 0;
        }

        else
        {
          sqlite3_create_function(v2->_localizedDb, "CDLIKE", 1, 1, v2, ALBasicDiacriticMatch, 0, 0);
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [ALCityManager init];
        }

        v2->_localizedDb = 0;
      }

      sqlite3_create_function(v2->_db, "CDLIKE", 1, 1, v2, ALBasicDiacriticMatch, 0, 0);
    }
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[ALCityManager sharedManager];
  }

  return sharedManager__sharedManager;
}

ALCityManager *__30__ALCityManager_sharedManager__block_invoke()
{
  result = objc_alloc_init(ALCityManager);
  sharedManager__sharedManager = result;
  return result;
}

- (id)allCities
{
  v3 = [(ALCityManager *)self citiesMatchingQualifier:@"identifier IS NOT NULL"];
  if (self->_localizedDb)
  {
    [(ALCityManager *)self localizeCities:v3];
  }

  return v3;
}

- (id)citiesMatchingName:(id)name localized:(BOOL)localized
{
  localizedCopy = localized;
  [(NSRecursiveLock *)self->_databaseAccessRecursiveLock lock];

  self->_citySearchMatcher = [[CPSearchMatcher alloc] initWithSearchString:name];
  v7 = 0x1E7450000uLL;
  v8 = [ALCityManager newCitiesByIdentifierMap:[(ALCityManager *)self citiesMatchingQualifier:@"CDLIKE(name) = 1 OR CDLIKE(country_name) = 1"]];
  [(ALCityManager *)self _whileDatabaseLocked_ensureGreenKeyValueCaches];
  if (self->_greenKey2ValueCache && [-[ALCityManager _whileDatabaseLocked_localeCodesMatchingQualifier:](self _whileDatabaseLocked_localeCodesMatchingQualifier:{@"CDLIKE(country_name) = 1 AND code = CN", "count"}] == 1 && self->_greenKey2ValueCache)
  {
    v9 = [ALCityManager newCitiesByIdentifierMap:[(ALCityManager *)self citiesMatchingQualifier:@"locale_code = TW"]];
    [v8 addEntriesFromDictionary:v9];
  }

  if (localizedCopy && (localizedDb = self->_localizedDb) != 0)
  {
    *pnColumn = 0;
    pazResult = 0;
    pzErrmsg = 0;
    if (sqlite3_get_table(localizedDb, [@"SELECT code FROM locale_names WHERE CDLIKE(name) = 1" UTF8String], &pazResult, &pnColumn[1], pnColumn, &pzErrmsg) || (v11 = pnColumn[1], pnColumn[1] < 1))
    {
      if (pzErrmsg)
      {
        uTF8String = [name UTF8String];
        printf("Error fetching locales matching %s: %s\n", uTF8String, pzErrmsg);
        sqlite3_free(pzErrmsg);
      }

      if (pazResult)
      {
        sqlite3_free_table(pazResult);
      }
    }

    else
    {
      pazResult += pnColumn[0];
      if (self->_greenKey2ValueCache)
      {
        LOBYTE(v12) = 0;
        v13 = 0;
        LOBYTE(v14) = 1;
        while (1)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:pazResult[pnColumn[0] * v13]];
          v16 = v15;
          if (v12)
          {
            v12 = 1;
            if (v14)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v12 = [v15 isEqualToString:@"CN"];
            if (v14)
            {
LABEL_15:
              v14 = [v16 isEqualToString:@"TW"] ^ 1;
              goto LABEL_16;
            }
          }

          v14 = 0;
LABEL_16:
          if (++v13 >= pnColumn[1])
          {
            v17 = v12 & v14;
            v11 += v12 & v14;
            v7 = 0x1E7450000;
            goto LABEL_24;
          }
        }
      }

      v17 = 0;
LABEL_24:
      v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:22 * v11 - 4];
      [v21 appendFormat:@"locale_code = %@", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *pazResult)];
      if (pnColumn[1] >= 2)
      {
        v22 = 1;
        do
        {
          [v21 appendFormat:@" OR locale_code = %@", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", pazResult[pnColumn[0] * v22++])];
        }

        while (v22 < pnColumn[1]);
      }

      if (v17)
      {
        [v21 appendString:@" OR locale_code = TW"];
      }

      v23 = [(ALCityManager *)self citiesMatchingQualifier:v21];

      pazResult -= pnColumn[0];
      sqlite3_free_table(pazResult);
      v24 = [*(v7 + 1128) newCitiesByIdentifierMap:v23];
      [v8 addEntriesFromDictionary:v24];
    }

    if (sqlite3_get_table(self->_localizedDb, [@"SELECT id FROM city_names WHERE CDLIKE(name) = 1 OR CDLIKE(country_name) = 1" UTF8String], &pazResult, &pnColumn[1], pnColumn, &pzErrmsg))
    {
      if (pzErrmsg)
      {
        printf("Error getting city names: %s\n", pzErrmsg);
        sqlite3_free(pzErrmsg);
      }

      if (pazResult)
      {
        sqlite3_free_table(pazResult);
      }
    }

    else
    {
      pazResult += pnColumn[0];
      v25 = objc_alloc(MEMORY[0x1E695DF70]);
      v26 = [v25 initWithCapacity:pnColumn[1]];
      if (pnColumn[1] >= 1)
      {
        v27 = 0;
        do
        {
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:pazResult[pnColumn[0] * v27]];
          [v26 addObject:v28];

          ++v27;
        }

        while (v27 < pnColumn[1]);
      }

      v29 = [(ALCityManager *)self citiesWithIdentifiers:v26];

      pazResult -= pnColumn[0];
      sqlite3_free_table(pazResult);
      v30 = [*(v7 + 1128) newCitiesByIdentifierMap:v29];
      [v8 addEntriesFromDictionary:v30];
    }

    allValues = [v8 allValues];
    [(ALCityManager *)self localizeCities:allValues];

    self->_citySearchMatcher = 0;
    [(NSRecursiveLock *)self->_databaseAccessRecursiveLock unlock];
    return allValues;
  }

  else
  {

    self->_citySearchMatcher = 0;
    [(NSRecursiveLock *)self->_databaseAccessRecursiveLock unlock];
    allValues2 = [v8 allValues];

    return allValues2;
  }
}

- (void)localizeCities:(id)cities
{
  v75 = *MEMORY[0x1E69E9840];
  if (self->_localizedDb && [cities count])
  {
    *pnColumn = 0;
    pazResult = 0;
    pzErrmsg = 0;
    [(NSRecursiveLock *)self->_databaseAccessRecursiveLock lock];
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{(objc_msgSend(cities, "count") + 1) >> 1}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v6 = [cities countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v61;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v61 != v8)
          {
            objc_enumerationMutation(cities);
          }

          v10 = *(*(&v60 + 1) + 8 * i);
          localeCode = [v10 localeCode];
          if (localeCode)
          {
            v12 = localeCode;
            v13 = [v5 objectForKey:localeCode];
            if (!v13)
            {
              v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
              [v5 setObject:v13 forKey:v12];
            }

            [v13 addObject:v10];
          }

          else
          {
            [v10 setCountryName:&stru_1F0A49170];
          }
        }

        v7 = [cities countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v7);
    }

    allKeys = [v5 allKeys];
    if (![allKeys count])
    {
LABEL_48:

      v34 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(cities, "count")}];
      v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{16 * objc_msgSend(cities, "count") + 40}];
      objc_msgSend(v35, "appendFormat:", @"SELECT id,name,country_name FROM city_names WHERE id IN(%d"), objc_msgSend(objc_msgSend(cities, "objectAtIndex:", 0), "identifier");
      v36 = [cities objectAtIndex:0];
      [v34 setObject:v36 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(objc_msgSend(cities, "objectAtIndex:", 0), "identifier"))}];
      if ([cities count] >= 2)
      {
        v37 = 1;
        do
        {
          v38 = [cities objectAtIndex:v37];
          v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "identifier")}];
          [v35 appendFormat:@", %@", v39];
          [v34 setObject:v38 forKey:v39];
          ++v37;
        }

        while ([cities count] > v37);
      }

      [v35 appendString:@""]);
      if (sqlite3_get_table(self->_localizedDb, [v35 UTF8String], &pazResult, &pnColumn[1], pnColumn, &pzErrmsg))
      {
        if (pzErrmsg)
        {
          uTF8String = [v35 UTF8String];
          printf("Error getting city localizations from query %s: %s\n", uTF8String, pzErrmsg);
          sqlite3_free(pzErrmsg);
        }

        v41 = pazResult;
        if (!pazResult)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v42 = pnColumn[0];
        v43 = &pazResult[pnColumn[0]];
        pazResult = v43;
        if (pnColumn[1] >= 1)
        {
          v44 = 0;
          do
          {
            v45 = [v34 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", atoi(pazResult[pnColumn[0] * v44]))}];
            if (v45)
            {
              v46 = v45;
              [v45 setName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", pazResult[pnColumn[0] * v44 + 1])}];
              if (pazResult[pnColumn[0] * v44 + 2])
              {
                [v46 setCountryOverride:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:")}];
              }
            }

            ++v44;
          }

          while (v44 < pnColumn[1]);
          v42 = pnColumn[0];
          v43 = pazResult;
        }

        v41 = &v43[-v42];
        pazResult = v41;
      }

      sqlite3_free_table(v41);
LABEL_65:

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v47 = [cities countByEnumeratingWithState:&v52 objects:v71 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v53;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v53 != v49)
            {
              objc_enumerationMutation(cities);
            }

            [(ALCityManager *)self _whileDatabaseLocked_modifyCityForGreen:*(*(&v52 + 1) + 8 * j)];
          }

          v48 = [cities countByEnumeratingWithState:&v52 objects:v71 count:16];
        }

        while (v48);
      }

LABEL_72:
      [(NSRecursiveLock *)self->_databaseAccessRecursiveLock unlock];
      goto LABEL_73;
    }

    v15 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{16 * objc_msgSend(v5, "count") + 40}];
    objc_msgSend(v15, "appendFormat:", @"SELECT code,name FROM locale_names WHERE code IN (%@"), objc_msgSend(allKeys, "objectAtIndex:", 0);
    if ([allKeys count] >= 2)
    {
      v16 = 1;
      do
      {
        [v15 appendFormat:@", %@", objc_msgSend(allKeys, "objectAtIndex:", v16++)];
      }

      while ([allKeys count] > v16);
    }

    [v15 appendString:@""]);
    if (sqlite3_get_table(self->_localizedDb, [v15 UTF8String], &pazResult, &pnColumn[1], pnColumn, &pzErrmsg))
    {
      if (pzErrmsg)
      {
        uTF8String2 = [v15 UTF8String];
        printf("Error getting locale localizations from query %s: %s\n", uTF8String2, pzErrmsg);
        sqlite3_free(pzErrmsg);
      }

      v18 = pazResult;
      if (!pazResult)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v23 = pnColumn[0];
      v24 = &pazResult[pnColumn[0]];
      pazResult = v24;
      if (pnColumn[1] >= 1)
      {
        v25 = 0;
        do
        {
          v26 = objc_alloc(MEMORY[0x1E696AEC0]);
          v27 = [v26 initWithUTF8String:pazResult[pnColumn[0] * v25 + 1]];
          v28 = [v5 objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", pazResult[pnColumn[0] * v25])}];
          if (v28)
          {
            v29 = v28;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v30 = [v28 countByEnumeratingWithState:&v56 objects:v72 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v57;
              do
              {
                for (k = 0; k != v31; ++k)
                {
                  if (*v57 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  [*(*(&v56 + 1) + 8 * k) setCountryName:v27];
                }

                v31 = [v29 countByEnumeratingWithState:&v56 objects:v72 count:16];
              }

              while (v31);
            }
          }

          ++v25;
        }

        while (v25 < pnColumn[1]);
        v23 = pnColumn[0];
        v24 = pazResult;
      }

      v18 = &v24[-v23];
      pazResult = v18;
    }

    sqlite3_free_table(v18);
LABEL_47:

    goto LABEL_48;
  }

  if ([cities count])
  {
    [(NSRecursiveLock *)self->_databaseAccessRecursiveLock lock];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v19 = [cities countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v68;
      do
      {
        for (m = 0; m != v20; ++m)
        {
          if (*v68 != v21)
          {
            objc_enumerationMutation(cities);
          }

          [(ALCityManager *)self _whileDatabaseLocked_modifyCityForGreen:*(*(&v67 + 1) + 8 * m)];
        }

        v20 = [cities countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v20);
    }

    goto LABEL_72;
  }

LABEL_73:
  v51 = *MEMORY[0x1E69E9840];
}

+ (id)newCitiesByIdentifierMap:(id)map
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(map, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [map countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(map);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v9, "identifier")}];
        [v4 setObject:v9 forKey:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [map countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)citiesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v34 = *MEMORY[0x1E69E9840];
  if ([identifiers count])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{4 * objc_msgSend(identifiersCopy, "count")}];
    [v5 appendString:{objc_msgSend(identifiersCopy, "objectAtIndex:", 0)}];
    if ([identifiersCopy count] >= 2)
    {
      v6 = 1;
      do
      {
        [v5 appendFormat:@", %@", objc_msgSend(identifiersCopy, "objectAtIndex:", v6++)];
      }

      while ([identifiersCopy count] > v6);
    }

    v7 = -[ALCityManager citiesMatchingQualifier:](self, "citiesMatchingQualifier:", [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier IN (%@)", v5]);
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [identifiersCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        v11 = identifiersCopy;
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v11);
          }

          intValue = [*(*(&v28 + 1) + 8 * i) intValue];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v14 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(v7);
                }

                v18 = *(*(&v24 + 1) + 8 * j);
                if (intValue == [v18 identifier])
                {
                  [v23 addObject:v18];
                  goto LABEL_20;
                }
              }

              v15 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:
          ;
        }

        identifiersCopy = v11;
        v9 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    v19 = *MEMORY[0x1E69E9840];
    return v23;
  }

  else
  {
    v21 = MEMORY[0x1E695DEC8];
    v22 = *MEMORY[0x1E69E9840];

    return [v21 array];
  }
}

- (id)_cityForClassicIdentifier:(id)identifier commaSearchOptions:(unint64_t)options
{
  v6 = [identifier rangeOfString:@" options:{", options}];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v6;
  v9 = [identifier substringToIndex:v6];
  v10 = [identifier substringFromIndex:v8 + 2];
  v11 = [v10 length] ? objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"name = %@ and country_name = %@", v9, v10) : objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"name = %@", v9, v16);
  v12 = [(ALCityManager *)self citiesMatchingQualifier:v11];
  if (!v12 || (v13 = v12, ![v12 count]))
  {
    v14 = [v10 length] ? objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"name LIKE %%%@%% and country_name LIKE %%%@%%", v9, v10) : objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"name LIKE %%%@%%", v9, v17);
    v15 = [(ALCityManager *)self citiesMatchingQualifier:v14];
    if (!v15)
    {
      return 0;
    }

    v13 = v15;
    if (![v15 count])
    {
      return 0;
    }
  }

  return [v13 objectAtIndex:0];
}

- (id)cityForClassicIdentifier:(id)identifier
{
  result = [(ALCityManager *)self _cityForClassicIdentifier:identifier commaSearchOptions:4];
  if (!result)
  {

    return [(ALCityManager *)self _cityForClassicIdentifier:identifier commaSearchOptions:0];
  }

  return result;
}

- (id)bestCityForLegacyCity:(__CFArray *)city
{
  v20 = *MEMORY[0x1E69E9840];
  if (!city)
  {
    goto LABEL_8;
  }

  if (CFArrayGetCount(city) > 9)
  {
    Identifier = CPCityGetIdentifier(city);
    if (Identifier)
    {
      v6 = [(ALCityManager *)self cityForClassicIdentifier:Identifier];
      if (v6)
      {
        goto LABEL_22;
      }
    }
  }

  if (CFArrayGetCount(city) <= 6)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_22;
  }

  v7 = [(ALCityManager *)self citiesMatchingName:CPCityGetLocalizedCityName(city)];
  if ([v7 count] == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [[CPSearchMatcher alloc] initWithSearchString:CPCityGetLocalizedCountryName(city)];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_12:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v6 = *(*(&v15 + 1) + 8 * v12);
      if (!v8 || -[CPSearchMatcher matches:](v8, "matches:", [*(*(&v15 + 1) + 8 * v12) countryName]))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v6 = 0;
        if (v10)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (__CFArray)legacyCityForCity:(id)city
{
  if (!city)
  {
    return 0;
  }

  unlocalizedName = [city unlocalizedName];
  unlocalizedCountryName = [city unlocalizedCountryName];
  localeCode = [city localeCode];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  v8 = MEMORY[0x1E696AD98];
  [city latitude];
  [v7 addObject:{objc_msgSend(v8, "numberWithFloat:")}];
  v9 = MEMORY[0x1E696AD98];
  [city longitude];
  [v7 addObject:{objc_msgSend(v9, "numberWithFloat:")}];
  [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(city, "identifier"))}];
  [v7 addObject:{objc_msgSend(city, "timeZone")}];
  if (localeCode)
  {
    v10 = localeCode;
  }

  else
  {
    v10 = &stru_1F0A49170;
  }

  [v7 addObject:v10];
  [v7 addObject:{objc_msgSend(city, "name")}];
  [v7 addObject:{objc_msgSend(city, "countryName")}];
  [v7 addObject:unlocalizedName];
  [v7 addObject:unlocalizedCountryName];
  [v7 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@, %@", unlocalizedName, unlocalizedCountryName)}];

  return v7;
}

- (id)citiesMatchingQualifier:(id)qualifier
{
  *pnColumn = 0;
  pazResult = 0;
  pzErrmsg = 0;
  [(NSRecursiveLock *)self->_databaseAccessRecursiveLock lock];
  _shouldUseTablesAlternate1 = [(ALCityManager *)self _shouldUseTablesAlternate1];
  v6 = @"cities";
  if (_shouldUseTablesAlternate1)
  {
    v6 = @"cities_alternate_1";
  }

  if (sqlite3_get_table(self->_db, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name, country_name, country_override, longitude, latitude, timezonename, yahoocode, identifier, code FROM %@ LEFT OUTER JOIN locales ON %@.locale_code = locales.code WHERE %@ ORDER BY name, country_name", v6, v6, qualifier), "UTF8String"], &pazResult, &pnColumn[1], pnColumn, &pzErrmsg))
  {
    if (pzErrmsg)
    {
      uTF8String = [qualifier UTF8String];
      printf("error getting cities matching %s - %s\n", uTF8String, pzErrmsg);
      sqlite3_free(pzErrmsg);
    }

    if (pazResult)
    {
      sqlite3_free_table(pazResult);
    }

    v8 = 0;
  }

  else
  {
    pazResult += pnColumn[0];
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v8 = [v9 initWithCapacity:pnColumn[1]];
    if (pnColumn[1] >= 1)
    {
      v10 = 0;
      do
      {
        v11 = [ALCity alloc];
        v12 = [(ALCity *)v11 initWithSQLRow:&pazResult[pnColumn[0] * v10]];
        [v8 addObject:v12];

        ++v10;
      }

      while (v10 < pnColumn[1]);
    }

    pazResult -= pnColumn[0];
    sqlite3_free_table(pazResult);
  }

  [(NSRecursiveLock *)self->_databaseAccessRecursiveLock unlock];
  return v8;
}

- (id)_whileDatabaseLocked_localeCodesMatchingQualifier:(id)qualifier
{
  *pnColumn = 0;
  pazResult = 0;
  pzErrmsg = 0;
  if (sqlite3_get_table(self->_db, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT code FROM locales WHERE %@", qualifier), "UTF8String"], &pazResult, &pnColumn[1], pnColumn, &pzErrmsg))
  {
    if (pzErrmsg)
    {
      uTF8String = [qualifier UTF8String];
      printf("error getting locale codes matching %s - %s\n", uTF8String, pzErrmsg);
      sqlite3_free(pzErrmsg);
    }

    if (pazResult)
    {
      sqlite3_free_table(pazResult);
    }

    v5 = 0;
  }

  else
  {
    pazResult += pnColumn[0];
    v6 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = [v6 initWithCapacity:pnColumn[1]];
    if (pnColumn[1] >= 1)
    {
      v7 = 0;
      do
      {
        v8 = objc_alloc(MEMORY[0x1E696AEC0]);
        v9 = [v8 initWithUTF8String:pazResult[pnColumn[0] * v7]];
        [v5 addObject:v9];

        ++v7;
      }

      while (v7 < pnColumn[1]);
    }

    pazResult -= pnColumn[0];
    sqlite3_free_table(pazResult);
  }

  return v5;
}

- (void)_whileDatabaseLocked_ensureGreenKeyValueCaches
{
  if (!self->_greenKeyValueCacheExpirationDate || ([objc_msgSend(MEMORY[0x1E695DF00] "now")], v3 <= 0.0))
  {
    p_greenClient = &self->_greenClient;
    if (self->_greenClient)
    {
      return;
    }

    goto LABEL_6;
  }

  self->_greenKeyValueCacheExpirationDate = 0;
  p_greenClient = &self->_greenClient;
  greenClient = self->_greenClient;
  if (!greenClient)
  {
LABEL_6:
    greenClient = objc_alloc_init(ALSCGreenClient);
    *p_greenClient = greenClient;
  }

  if (![(ALSCGreenClient *)greenClient valuesFinalized])
  {
    self->_greenKeyValueCacheExpirationDate = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
  }

  self->_greenKey1ValueCache = [(ALSCGreenClientProtocol *)self->_greenClient key1Value];
  self->_greenKey2ValueCache = [(ALSCGreenClientProtocol *)self->_greenClient key2Value];
  self->_greenKey3ValueCache = [(ALSCGreenClientProtocol *)self->_greenClient key3Value];
}

- (void)_whileDatabaseLocked_modifyCityForGreen:(id)green
{
  [(ALCityManager *)self _whileDatabaseLocked_ensureGreenKeyValueCaches];
  if ((self->_greenKey1ValueCache || self->_greenKey2ValueCache) && [objc_msgSend(green "localeCode")] && objc_msgSend(green, "identifier") != 118)
  {
    v5 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.AppSupport", "localizedStringForKey:value:table:", @"CHINA", &stru_1F0A49170, @"Localizable"}];
  }

  else
  {
    v5 = 0;
  }

  if (self->_greenKey2ValueCache && [objc_msgSend(green "localeCode")])
  {
    v5 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.AppSupport", "localizedStringForKey:value:table:", @"TAIPEI_TAIWAN_CHINA", &stru_1F0A49170, @"Localizable"}];
    [green setDisplayNameIncludingCountryShowsOnlyCountry:1];
  }

  if (self->_greenKey3ValueCache)
  {
    if ([green identifier] == 118)
    {
      v6 = @"HONG_KONG";
    }

    else
    {
      if (![objc_msgSend(green "localeCode")])
      {
        goto LABEL_15;
      }

      v6 = @"MACAO";
    }

    v5 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.AppSupport", "localizedStringForKey:value:table:", v6, &stru_1F0A49170, @"Localizable"}];
  }

LABEL_15:
  if (v5)
  {
    [green setUnlocalizedCountryOverride:v5];

    [green setCountryOverride:v5];
  }
}

- (id)_cityForTimeZone:(id)zone localeCode:(id)code
{
  if ([zone length])
  {
    if (!code)
    {
      code = &stru_1F0A49170;
    }

    [(NSRecursiveLock *)self->_databaseAccessRecursiveLock lock];
    code = [MEMORY[0x1E696AEC0] stringWithFormat:@"timezonename = %@ and locale_code = %@", zone, code];
    _shouldUseTablesAlternate1 = [(ALCityManager *)self _shouldUseTablesAlternate1];
    v9 = @"timezone_locale_to_city_map";
    if (_shouldUseTablesAlternate1)
    {
      v9 = @"timezone_locale_to_city_map_alternate_1";
    }

    *pnColumn = 0;
    pazResult = 0;
    pzErrmsg = 0;
    if (sqlite3_get_table(self->_db, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT city_id FROM %@ WHERE %@", v9, code), "UTF8String"], &pazResult, &pnColumn[1], pnColumn, &pzErrmsg))
    {
      if (pzErrmsg)
      {
        sqlite3_free(pzErrmsg);
      }

      if (pazResult)
      {
        sqlite3_free_table(pazResult);
      }
    }

    else
    {
      v11 = pazResult;
      if (pnColumn[1] < 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = atoi(pazResult[pnColumn[0]]);
      }

      sqlite3_free_table(v11);
      if (pnColumn[1] >= 1)
      {
        v13 = -[ALCityManager citiesMatchingQualifier:](self, "citiesMatchingQualifier:", [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier = %d", v12]);
        if ([v13 count])
        {
          v10 = [v13 objectAtIndexedSubscript:0];
LABEL_19:
          [(NSRecursiveLock *)self->_databaseAccessRecursiveLock unlock];
          return v10;
        }
      }
    }

    v10 = 0;
    goto LABEL_19;
  }

  return 0;
}

+ (id)_localeDictionaryFromSQLRow:(char *)row
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithUTF8String:", *row), @"code"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithUTF8String:", row[1]), @"name"}];
  if (row[2])
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithUTF8String:"), @"mainCity"}];
  }

  if (row[3])
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithUTF8String:"), @"mapLongitude"}];
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithUTF8String:", row[4]), @"mapLatitude"}];
    if (row[5])
    {
      [v4 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithUTF8String:"), @"mapWidth"}];
      [v4 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithUTF8String:", row[6]), @"mapHeight"}];
    }
  }

  return v4;
}

- (id)allLocales
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *pnColumn = 0;
  pazResult = 0;
  pzErrmsg = 0;
  [(NSRecursiveLock *)self->_databaseAccessRecursiveLock lock];
  if (!sqlite3_get_table(self->_db, [@""select code country_name], &pazResult, &pnColumn[1], pnColumn, &pzErrmsg)
  {
    if (pnColumn[1] >= 1)
    {
      v5 = 0;
      do
      {
        ++v5;
        [v3 addObject:{objc_msgSend(objc_opt_class(), "_localeDictionaryFromSQLRow:", &pazResult[pnColumn[0] * v5])}];
      }

      while (v5 < pnColumn[1]);
    }

    v4 = pazResult;
    goto LABEL_10;
  }

  if (pzErrmsg)
  {
    printf("couldn't get all locales: %s\n", pzErrmsg);
    sqlite3_free(pzErrmsg);
  }

  v4 = pazResult;
  if (pazResult)
  {
LABEL_10:
    sqlite3_free_table(v4);
  }

  [(NSRecursiveLock *)self->_databaseAccessRecursiveLock unlock];
  return v3;
}

- (id)localeWithCode:(id)code
{
  *pnColumn = 0;
  pazResult = 0;
  pzErrmsg = 0;
  [(NSRecursiveLock *)self->_databaseAccessRecursiveLock lock];
  if (sqlite3_get_table(self->_db, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"select code, country_name, main_city, map_center_longitude, map_center_latitude, map_width, map_height from locales where code = %@", code), "UTF8String"], &pazResult, &pnColumn[1], pnColumn, &pzErrmsg))
  {
    if (pzErrmsg)
    {
      uTF8String = [code UTF8String];
      printf("couldn't get locale with code %s: %s\n", uTF8String, pzErrmsg);
      sqlite3_free(pzErrmsg);
    }

    if (pazResult)
    {
      sqlite3_free_table(pazResult);
    }

    goto LABEL_6;
  }

  if (pnColumn[1])
  {
    goto LABEL_8;
  }

  sqlite3_free_table(pazResult);
  v8 = [objc_msgSend(MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{code), "regionCode"}];
  if (!v8)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if (!sqlite3_get_table(self->_db, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"select code, country_name, main_city, map_center_longitude, map_center_latitude, map_width, map_height from locales where code = %@", v8), "UTF8String"], &pazResult, &pnColumn[1], pnColumn, &pzErrmsg))
  {
    if (pnColumn[1])
    {
LABEL_8:
      v6 = [objc_opt_class() _localeDictionaryFromSQLRow:&pazResult[pnColumn[0]]];
      sqlite3_free_table(pazResult);
    }
  }

LABEL_9:
  [(NSRecursiveLock *)self->_databaseAccessRecursiveLock unlock];
  return v6;
}

- (id)defaultCitiesForLocaleCode:(id)code options:(int)options
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = [(ALCityManager *)self localeWithCode:?];
  *pnColumn = 0;
  pazResult = 0;
  pzErrmsg = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    codeCopy = code;
    v35 = 1024;
    optionsCopy = options;
    _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ALCityManager defaultCitiesForLocaleCode: %@ options: %x", buf, 0x12u);
  }

  [(NSRecursiveLock *)self->_databaseAccessRecursiveLock lock];
  db = self->_db;
  v9 = MEMORY[0x1E696AEC0];
  codeCopy2 = code;
  if (v7)
  {
    codeCopy2 = [v7 objectForKey:@"code"];
  }

  if (sqlite3_get_table(db, [objc_msgSend(v9 stringWithFormat:@"select city_id from defaults where locale_code = %@", codeCopy2), "UTF8String"], &pazResult, &pnColumn[1], pnColumn, &pzErrmsg))
  {
    if (pzErrmsg)
    {
      uTF8String = [code UTF8String];
      printf("couldn't get default cities for locale %s: %s\n", uTF8String, pzErrmsg);
      sqlite3_free(pzErrmsg);
    }

    if (pazResult)
    {
      sqlite3_free_table(pazResult);
    }

    [(NSRecursiveLock *)self->_databaseAccessRecursiveLock unlock];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [ALCityManager defaultCitiesForLocaleCode:options:];
    }

    v12 = 0;
  }

  else
  {
    ++pazResult;
    v13 = objc_alloc(MEMORY[0x1E695DF70]);
    v14 = [v13 initWithCapacity:pnColumn[1]];
    v15 = [v7 objectForKey:@"mainCity"];
    if (pnColumn[1] >= 1)
    {
      v16 = 0;
      do
      {
        [v14 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", pazResult[v16++])}];
      }

      while (v16 < pnColumn[1]);
    }

    sqlite3_free_table(--pazResult);
    v17 = [(ALCityManager *)self citiesWithIdentifiers:v14];
    v12 = v17;
    if (v15 && [v17 count])
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = [v12 objectAtIndex:v18];
        intValue = [v15 intValue];
        identifier = [v20 identifier];
        if ((options & 1) != 0 && intValue == identifier)
        {
          v23 = v20;
          [v12 removeObjectAtIndex:v18];
          [v12 insertObject:v20 atIndex:0];

          v19 = v20;
        }

        ++v18;
      }

      while ([v12 count] > v18);
      if ((options & 2) != 0)
      {
        if (v19)
        {
          timeZone = [v19 timeZone];
          if ([v12 count])
          {
            v25 = 0;
            v26 = 0;
            do
            {
              v27 = [v12 objectAtIndex:v25];
              if (v27 != v19 && [objc_msgSend(v27 "timeZone")])
              {
                [v12 removeObjectAtIndex:v25];
                --v26;
              }

              v25 = ++v26;
            }

            while ([v12 count] > v26);
          }
        }
      }
    }

    [(NSRecursiveLock *)self->_databaseAccessRecursiveLock unlock];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      codeCopy = v12;
      _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ALCityManager defaultCitiesForLocaleCode: returning %@", buf, 0xCu);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)defaultCityForTimeZone:(id)zone
{
  v5 = CFLocaleCopyCurrent();
  v6 = [(ALCityManager *)self _defaultCityForTimeZone:zone localeCode:MEMORY[0x19A8C1930]()];
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

- (id)defaultCityForTimeZone:(id)zone localeCode:(id)code
{
  if (code)
  {

    return [(ALCityManager *)self _defaultCityForTimeZone:zone localeCode:?];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [ALCityManager defaultCityForTimeZone:localeCode:];
    }

    return 0;
  }
}

- (id)_defaultCityForTimeZone:(id)zone localeCode:(id)code
{
  v34 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    zoneCopy = zone;
    v32 = 2112;
    codeCopy = code;
    _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ALCityManager defaultCityForTimeZone: %@ localeCode: %@", buf, 0x16u);
  }

  if (zone)
  {
    if (code && ((v7 = -[ALCityManager _cityForTimeZone:localeCode:](self, "_cityForTimeZone:localeCode:", [zone name], code)) != 0 || (v7 = -[ALCityManager _cityForTimeZone:localeCode:](self, "_cityForTimeZone:localeCode:", objc_msgSend(zone, "name"), objc_msgSend(objc_msgSend(MEMORY[0x1E695DF58], "localeWithLocaleIdentifier:", code), "regionCode"))) != 0) || (v7 = -[ALCityManager _cityForTimeZone:localeCode:](self, "_cityForTimeZone:localeCode:", objc_msgSend(zone, "name"), &stru_1F0A49170)) != 0)
    {
      v8 = v7;
      goto LABEL_34;
    }
  }

  v9 = [(ALCityManager *)self citiesWithTimeZone:zone];
  v10 = [objc_msgSend(zone "name")];
  if ([v10 count] >= 2)
  {
    v11 = [v10 objectAtIndex:1];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
LABEL_12:
      v15 = 0;
      while (1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v8 = *(*(&v25 + 1) + 8 * v15);
        if ([objc_msgSend(v8 "name")])
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v13)
          {
            goto LABEL_12;
          }

          goto LABEL_20;
        }
      }

      if (v8)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_20:
  if ([v9 count])
  {
    v8 = [v9 objectAtIndex:0];
    if (!zone)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v8 = 0;
    if (!zone)
    {
      goto LABEL_34;
    }
  }

  if (code && !v8)
  {
    v16 = [(ALCityManager *)self defaultCitiesForLocaleCode:code options:1];
    if (v16 && (v17 = v16, [v16 count]) && (v18 = objc_msgSend(v17, "objectAtIndexedSubscript:", 0), (v19 = CFTimeZoneCreateWithName(*MEMORY[0x1E695E480], objc_msgSend(v18, "timeZone"), 1u)) != 0))
    {
      v20 = v19;
      Current = CFAbsoluteTimeGetCurrent();
      SecondsFromGMT = CFTimeZoneGetSecondsFromGMT(zone, Current);
      if (SecondsFromGMT == CFTimeZoneGetSecondsFromGMT(v20, Current))
      {
        v8 = [v17 objectAtIndexedSubscript:0];
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v20);
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_34:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    zoneCopy = v8;
    _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ALCityManager defaultCityForTimeZone: returning %@", buf, 0xCu);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)citiesWithTimeZone:(id)zone
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"timezonename = %@", objc_msgSend(zone, "name")];

  return [(ALCityManager *)self citiesMatchingQualifier:v4];
}

- (void)dealloc
{
  db = self->_db;
  if (db)
  {
    sqlite3_close(db);
  }

  localizedDb = self->_localizedDb;
  if (localizedDb)
  {
    sqlite3_close(localizedDb);
  }

  [(ALSCGreenClientProtocol *)self->_greenClient release];
  v5.receiver = self;
  v5.super_class = ALCityManager;
  [(ALCityManager *)&v5 dealloc];
}

+ (BOOL)willApplyTimeZoneChanges1
{
  if (willApplyTimeZoneChanges1_onceToken != -1)
  {
    +[ALCityManager willApplyTimeZoneChanges1];
  }

  return willApplyTimeZoneChanges1_shouldUseTablesAlternate1;
}

void __42__ALCityManager_willApplyTimeZoneChanges1__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer();
  if ([v0 isEqualToString:@"CH"])
  {
    goto LABEL_2;
  }

  willApplyTimeZoneChanges1_shouldUseTablesAlternate1 = [v0 isEqualToString:@"ZA"];
  if ((willApplyTimeZoneChanges1_shouldUseTablesAlternate1 & 1) == 0 && [v0 isEqualToString:@"ZP"])
  {
    v2 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
    if (([v2 isEqualToString:@"CN"] & 1) == 0 && (objc_msgSend(v2, "isEqualToString:", @"HK") & 1) == 0)
    {
      v1 = [v2 isEqualToString:@"MO"];
      goto LABEL_3;
    }

LABEL_2:
    v1 = 1;
LABEL_3:
    willApplyTimeZoneChanges1_shouldUseTablesAlternate1 = v1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = [MEMORY[0x1E696AD98] numberWithBool:willApplyTimeZoneChanges1_shouldUseTablesAlternate1];
    _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ALCityManager _shouldUseTablesAlternate1 %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)init
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)defaultCityForTimeZone:localeCode:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end