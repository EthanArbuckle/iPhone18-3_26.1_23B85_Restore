@interface HDOntologyDiagnosticOperation
+ (void)_appendEntry:(id)entry tableFormatter:(id)formatter;
- (id)_countOfElementsPerSlotInDatabase:(id)database;
- (id)_entriesForSlots:(id)slots database:(id)database;
- (id)_expandResultsToIndividualSlots:(id)slots;
- (id)_valueForDaemonDefaultKey:(id)key healthStore:(id)store;
- (void)_appendDateStringForDefaultKey:(id)key tableFormatter:(id)formatter healthStore:(id)store;
- (void)_logAndAndAppendFormat:(id)format;
- (void)_reportBasicChecksForDatabase:(id)database;
- (void)_reportDomain:(id)domain keyValues:(id)values;
- (void)_reportElementCountsBySlot:(id)slot entriesBySlot:(id)bySlot;
- (void)_reportElementCountsBySlotForDatabase:(id)database;
- (void)_reportForOntologyDatabase;
- (void)_reportForOntologyDatabase:(id)database;
- (void)_reportForOntologyFeaturesWithOntologyStore:(id)store;
- (void)_reportForOntologyKeyValueDomains;
- (void)_reportForOntologyKeyValueDomainsWithDatabase:(id)database;
- (void)_reportForOntologyUserDefaultsWithHealthStore:(id)store;
- (void)_reportForShardRequirementStatuses:(id)statuses;
- (void)_reportLocaleAndRegion;
- (void)_reportNetworkReachabilityForEnvironment:(id)environment;
- (void)_reportOntologyHostURLWithOntologyStore:(id)store;
- (void)_reportOntologyMetadataForDatabase:(id)database;
- (void)_reportReachabilityFlags:(unsigned int)flags;
- (void)_reportShardRegistryForDatabase:(id)database;
- (void)run;
@end

@implementation HDOntologyDiagnosticOperation

- (void)run
{
  [(HDOntologyDiagnosticOperation *)self log:@"Analyzing ontology database...\n"];
  v7 = objc_alloc_init(HKHealthStore);
  v3 = [[HKOntologyStore alloc] initWithHealthStore:v7];
  v4 = +[_HKBehavior sharedBehavior];
  [v4 supportsOntology];
  v5 = HKStringFromBool();
  [(HDOntologyDiagnosticOperation *)self appendFormat:@"Supports Ontology: %@", v5];

  [v4 supportsOntologyDatabaseUpdates];
  v6 = HKStringFromBool();
  [(HDOntologyDiagnosticOperation *)self appendFormat:@"Supports Ontology Database Updates: %@", v6];

  [(HDOntologyDiagnosticOperation *)self _reportLocaleAndRegion];
  [(HDOntologyDiagnosticOperation *)self appendNewline];
  [(HDOntologyDiagnosticOperation *)self _reportOntologyHostURLWithOntologyStore:v3];
  [(HDOntologyDiagnosticOperation *)self appendNewline];
  [(HDOntologyDiagnosticOperation *)self appendStrongSeparator];
  [(HDOntologyDiagnosticOperation *)self appendNewline];
  [(HDOntologyDiagnosticOperation *)self _reportForOntologyDatabase];
  [(HDOntologyDiagnosticOperation *)self _reportForOntologyFeaturesWithOntologyStore:v3];
  [(HDOntologyDiagnosticOperation *)self _reportForOntologyKeyValueDomains];
  [(HDOntologyDiagnosticOperation *)self _reportForOntologyUserDefaultsWithHealthStore:v7];
}

- (void)_reportLocaleAndRegion
{
  v6 = +[NSLocale currentLocale];
  localeIdentifier = [v6 localeIdentifier];
  [(HDOntologyDiagnosticOperation *)self appendFormat:@"Current Locale: %@", localeIdentifier];

  languageCode = [v6 languageCode];
  [(HDOntologyDiagnosticOperation *)self appendFormat:@"Current Language: %@", languageCode];

  countryCode = [v6 countryCode];
  [(HDOntologyDiagnosticOperation *)self appendFormat:@"Current Country/Region: %@", countryCode];
}

- (void)_reportOntologyHostURLWithOntologyStore:(id)store
{
  storeCopy = store;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_122C;
  v14 = sub_123C;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1244;
  v7[3] = &unk_8260;
  v9 = &v10;
  v5 = dispatch_semaphore_create(0);
  v8 = v5;
  [storeCopy ontologyServerURLWithCompletion:v7];
  v6 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    [(HDOntologyDiagnosticOperation *)self _logAndAndAppendFormat:@"Timed out attempting to get the ontology host URL"];
  }

  [(HDOntologyDiagnosticOperation *)self appendFormat:@"Ontology Host URL: %@", v11[5]];
  [(HDOntologyDiagnosticOperation *)self _reportNetworkReachabilityForEnvironment:v11[5]];

  _Block_object_dispose(&v10, 8);
}

- (void)_reportForOntologyDatabase
{
  healthDirectoryURL = [(HDOntologyDiagnosticOperation *)self healthDirectoryURL];
  v3 = [healthDirectoryURL URLByAppendingPathComponent:@"ontology" isDirectory:1];
  v4 = [v3 URLByAppendingPathComponent:@"HealthOntology.db" isDirectory:0];
  path = [v4 path];
  [(HDOntologyDiagnosticOperation *)self appendFormat:@"Ontology Database %@", path];

  [(HDOntologyDiagnosticOperation *)self reportStatsForDatabaseAtURL:v4];
  [(HDOntologyDiagnosticOperation *)self appendNewline];
  [(HDOntologyDiagnosticOperation *)self verifyPermissionsForFileAtURL:v4];
  v6 = [(HDOntologyDiagnosticOperation *)self openReadOnlyDatabaseAtURL:v4];
  if (v6)
  {
    [(HDOntologyDiagnosticOperation *)self _reportForOntologyDatabase:v6];
  }

  else
  {
    path2 = [v4 path];
    [(HDOntologyDiagnosticOperation *)self appendFormat:@"Unable to open %@ \n", path2];
  }

  [v6 close];
}

- (void)_reportForOntologyDatabase:(id)database
{
  databaseCopy = database;
  [(HDOntologyDiagnosticOperation *)self _reportBasicChecksForDatabase:databaseCopy];
  [(HDOntologyDiagnosticOperation *)self _reportShardRegistryForDatabase:databaseCopy];
  [(HDOntologyDiagnosticOperation *)self _reportElementCountsBySlotForDatabase:databaseCopy];
  [(HDOntologyDiagnosticOperation *)self _reportOntologyMetadataForDatabase:databaseCopy];
}

- (void)_reportBasicChecksForDatabase:(id)database
{
  databaseCopy = database;
  [(HDOntologyDiagnosticOperation *)self checkSchemaVersionForDatabase:databaseCopy currentSchema:8 futureSchema:10002];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v6 count:3];
  [(HDOntologyDiagnosticOperation *)self reportCountsForDatabase:databaseCopy entityClasses:v5, v6, v7];

  [(HDOntologyDiagnosticOperation *)self appendNewline];
  [(HDOntologyDiagnosticOperation *)self appendStrongSeparator];
  [(HDOntologyDiagnosticOperation *)self appendNewline];
}

- (void)_reportShardRegistryForDatabase:(id)database
{
  databaseCopy = database;
  v5 = [[HKTableFormatter alloc] initWithColumnTitles:&off_8FE8];
  v22 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1788;
  v20[3] = &unk_8288;
  v6 = objc_alloc_init(NSMutableArray);
  v21 = v6;
  v7 = [HDOntologyShardRegistryEntity enumerateEntriesWithPredicate:0 orderingTerms:0 database:databaseCopy error:&v22 enumerationHandler:v20];
  v8 = v22;
  v9 = v8;
  if (v7)
  {
    [v6 sortUsingComparator:&stru_82C8];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [objc_opt_class() _appendEntry:*(*(&v16 + 1) + 8 * v14) tableFormatter:v5];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v23 count:16];
      }

      while (v12);
    }

    [(HDOntologyDiagnosticOperation *)self appendFormat:@"Ontology Shard Registry"];
    [(HDOntologyDiagnosticOperation *)self appendSeparator];
    formattedTable = [v5 formattedTable];
    [(HDOntologyDiagnosticOperation *)self appendString:formattedTable];

    [(HDOntologyDiagnosticOperation *)self appendNewline];
    [(HDOntologyDiagnosticOperation *)self appendStrongSeparator];
    [(HDOntologyDiagnosticOperation *)self appendNewline];
  }

  else
  {
    [(HDOntologyDiagnosticOperation *)self _logAndAndAppendFormat:@"Failed to enumerate shard registry entries: %@", v8];
  }
}

+ (void)_appendEntry:(id)entry tableFormatter:(id)formatter
{
  entryCopy = entry;
  formatterCopy = formatter;
  identifier = [entryCopy identifier];
  v62[0] = identifier;
  schemaType = [entryCopy schemaType];
  v62[1] = schemaType;
  v59 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [entryCopy schemaVersion]);
  stringValue = [v59 stringValue];
  v62[2] = stringValue;
  [entryCopy settings];
  v57 = HKStringFromOntologyShardSettings();
  v62[3] = v57;
  v56 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [entryCopy slot]);
  stringValue2 = [v56 stringValue];
  v62[4] = stringValue2;
  [entryCopy desiredState];
  v54 = HKStringFromOntologyShardState();
  v62[5] = v54;
  desiredStateDate = [entryCopy desiredStateDate];
  v52 = HKDiagnosticStringFromDate();
  v62[6] = v52;
  [entryCopy currentVersion];
  v51 = HKStringFromOntologyShardVersion();
  v62[7] = v51;
  currentVersionDate = [entryCopy currentVersionDate];
  v49 = HKDiagnosticStringFromDate();
  v62[8] = v49;
  currentRegion = [entryCopy currentRegion];
  v62[9] = currentRegion;
  currentRegionDate = [entryCopy currentRegionDate];
  v45 = HKDiagnosticStringFromDate();
  v62[10] = v45;
  currentLocale = [entryCopy currentLocale];
  v44 = currentLocale;
  if (currentLocale)
  {
    v7 = currentLocale;
  }

  else
  {
    v7 = @"nil";
  }

  v62[11] = v7;
  currentLocaleDate = [entryCopy currentLocaleDate];
  v42 = HKDiagnosticStringFromDate();
  v62[12] = v42;
  [entryCopy availableVersion];
  v41 = HKStringFromOntologyShardVersion();
  v62[13] = v41;
  availableVersionDate = [entryCopy availableVersionDate];
  v39 = HKDiagnosticStringFromDate();
  v62[14] = v39;
  availableRegion = [entryCopy availableRegion];
  v62[15] = availableRegion;
  availableRegionDate = [entryCopy availableRegionDate];
  v36 = HKDiagnosticStringFromDate();
  v62[16] = v36;
  availableLocale = [entryCopy availableLocale];
  v35 = availableLocale;
  if (availableLocale)
  {
    v9 = availableLocale;
  }

  else
  {
    v9 = @"nil";
  }

  v62[17] = v9;
  availableLocaleDate = [entryCopy availableLocaleDate];
  v33 = HKDiagnosticStringFromDate();
  v62[18] = v33;
  availableURL = [entryCopy availableURL];
  absoluteString = [availableURL absoluteString];
  v31 = absoluteString;
  if (absoluteString)
  {
    v11 = absoluteString;
  }

  else
  {
    v11 = @"nil";
  }

  v62[19] = v11;
  availableURLDate = [entryCopy availableURLDate];
  v29 = HKDiagnosticStringFromDate();
  v62[20] = v29;
  availableChecksum = [entryCopy availableChecksum];
  v13 = availableChecksum;
  if (availableChecksum)
  {
    v14 = availableChecksum;
  }

  else
  {
    v14 = @"nil";
  }

  v62[21] = v14;
  availableChecksumDate = [entryCopy availableChecksumDate];
  v27 = HKDiagnosticStringFromDate();
  v62[22] = v27;
  availableSize = [entryCopy availableSize];
  v16 = HKOntologyShardRegistryEntrySizeUnknown;
  v26 = availableSize;
  if (availableSize == HKOntologyShardRegistryEntrySizeUnknown)
  {
    stringValue3 = @"unkown";
  }

  else
  {
    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [entryCopy availableSize]);
    stringValue3 = [v24 stringValue];
  }

  v25 = stringValue3;
  v62[23] = stringValue3;
  availableSizeDate = [entryCopy availableSizeDate];
  v19 = HKDiagnosticStringFromDate();
  v62[24] = v19;
  [entryCopy availableState];
  v20 = HKStringFromOntologyShardState();
  v62[25] = v20;
  availableStateDate = [entryCopy availableStateDate];
  v22 = HKDiagnosticStringFromDate();
  v62[26] = v22;
  v23 = [NSArray arrayWithObjects:v62 count:27];
  [formatterCopy appendRow:v23];

  if (v26 != v16)
  {
  }
}

- (void)_reportElementCountsBySlotForDatabase:(id)database
{
  databaseCopy = database;
  v8 = [(HDOntologyDiagnosticOperation *)self _countOfElementsPerSlotInDatabase:databaseCopy];
  v5 = [(HDOntologyDiagnosticOperation *)self _expandResultsToIndividualSlots:v8];
  allKeys = [v5 allKeys];
  v7 = [(HDOntologyDiagnosticOperation *)self _entriesForSlots:allKeys database:databaseCopy];

  [(HDOntologyDiagnosticOperation *)self _reportElementCountsBySlot:v5 entriesBySlot:v7];
}

- (id)_countOfElementsPerSlotInDatabase:(id)database
{
  databaseCopy = database;
  v14 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1FBC;
  v12[3] = &unk_82F0;
  v5 = objc_alloc_init(NSMutableDictionary);
  v13 = v5;
  v6 = [databaseCopy executeSQL:@"SELECT 'nodes' error:slots bindingHandler:COUNT(*) FROM nodes GROUP BY slots UNION ALL SELECT 'attributes' enumerationHandler:{slots, COUNT(*) FROM attributes GROUP BY slots UNION ALL SELECT 'relationships', slots, COUNT(*) FROM relationships GROUP BY slots", &v14, 0, v12}];

  v7 = v14;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    [(HDOntologyDiagnosticOperation *)self _logAndAndAppendFormat:@"Failed to get count of elements per shard slot: %@", v7];
  }

  v9 = v13;
  v10 = v5;

  return v5;
}

- (id)_expandResultsToIndividualSlots:(id)slots
{
  slotsCopy = slots;
  v4 = objc_alloc_init(NSMutableDictionary);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = slotsCopy;
  v25 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v25)
  {
    v24 = *v37;
    v27 = v5;
    v28 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v24)
        {
          v7 = v6;
          objc_enumerationMutation(v5);
          v6 = v7;
        }

        v8 = 0;
        v26 = v6;
        v9 = *(*(&v36 + 1) + 8 * v6);
        v29 = v9;
        do
        {
          if (([v9 unsignedLongLongValue] >> v8))
          {
            v10 = [NSNumber numberWithUnsignedLongLong:v8];
            v11 = [v5 objectForKeyedSubscript:v9];
            v12 = [v4 objectForKeyedSubscript:v10];
            if (v12)
            {
              v13 = v12;
              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              v14 = [&off_9000 countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v14)
              {
                v15 = v14;
                v30 = v10;
                v31 = v8;
                v16 = *v33;
                do
                {
                  for (i = 0; i != v15; i = i + 1)
                  {
                    if (*v33 != v16)
                    {
                      objc_enumerationMutation(&off_9000);
                    }

                    v18 = *(*(&v32 + 1) + 8 * i);
                    v19 = [v13 objectForKeyedSubscript:v18];
                    integerValue = [v19 integerValue];
                    v21 = [v11 objectForKeyedSubscript:v18];
                    v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", &integerValue[[v21 integerValue]]);
                    [v13 setObject:v22 forKeyedSubscript:v18];
                  }

                  v15 = [&off_9000 countByEnumeratingWithState:&v32 objects:v40 count:16];
                }

                while (v15);
                v5 = v27;
                v4 = v28;
                v10 = v30;
                v8 = v31;
                v9 = v29;
              }
            }

            else
            {
              v13 = [v11 mutableCopy];
              [v4 setObject:v13 forKeyedSubscript:v10];
            }
          }

          ++v8;
        }

        while (v8 != 64);
        v6 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      v25 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v25);
  }

  return v4;
}

- (id)_entriesForSlots:(id)slots database:(id)database
{
  databaseCopy = database;
  slotsCopy = slots;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [HDSQLiteContainsPredicate alloc];
  v10 = [v9 initWithProperty:HDOntologyShardRegistryEntityPropertySlot values:slotsCopy contains:1];

  v19 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_24B0;
  v17[3] = &unk_8288;
  v11 = v8;
  v18 = v11;
  LOBYTE(slotsCopy) = [HDOntologyShardRegistryEntity enumerateEntriesWithPredicate:v10 orderingTerms:0 database:databaseCopy error:&v19 enumerationHandler:v17];

  v12 = v19;
  v13 = v12;
  if ((slotsCopy & 1) == 0)
  {
    [(HDOntologyDiagnosticOperation *)self _logAndAndAppendFormat:@"Failed to enumerate shard registry entries: %@", v12];
  }

  v14 = v18;
  v15 = v11;

  return v11;
}

- (void)_reportElementCountsBySlot:(id)slot entriesBySlot:(id)bySlot
{
  slotCopy = slot;
  bySlotCopy = bySlot;
  v25 = slotCopy;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [slotCopy hk_sortedKeys];
  v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v26)
  {
    v23 = *v34;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [bySlotCopy objectForKeyedSubscript:v8];
        v28 = v9;
        if (v9)
        {
          v10 = v9;
          identifier = [v9 identifier];
          schemaType = [v10 schemaType];
          v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" %@ %@ %ld", identifier, schemaType, [v10 schemaVersion]);
        }

        else
        {
          v13 = &stru_89C8;
        }

        v27 = v13;
        [(HDOntologyDiagnosticOperation *)self appendFormat:@"Slot %@%@", v8, v13];
        [(HDOntologyDiagnosticOperation *)self appendSeparator];
        v14 = [v25 objectForKeyedSubscript:v8];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        hk_sortedKeys = [v14 hk_sortedKeys];
        v16 = [hk_sortedKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(hk_sortedKeys);
              }

              v20 = *(*(&v29 + 1) + 8 * j);
              v21 = [v14 objectForKeyedSubscript:v20];
              -[HDOntologyDiagnosticOperation appendFormat:](self, "appendFormat:", @"        %lld %@", [v21 longLongValue], v20);
            }

            v17 = [hk_sortedKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v17);
        }

        [(HDOntologyDiagnosticOperation *)self appendNewline];
      }

      v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }
}

- (void)_reportOntologyMetadataForDatabase:(id)database
{
  databaseCopy = database;
  v12 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_292C;
  v10[3] = &unk_8318;
  v5 = [[HKTableFormatter alloc] initWithColumnTitles:&off_9018];
  v11 = v5;
  v6 = [HDSimpleGraphDatabaseMetadataEntity enumerateMetadataValuesWithPredicate:0 database:databaseCopy error:&v12 enumerationHandler:v10];

  v7 = v12;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    [(HDOntologyDiagnosticOperation *)self _logAndAndAppendFormat:@"Failed to enumerate ontology metadata: %@", v7];
  }

  [(HDOntologyDiagnosticOperation *)self appendStrongSeparator];
  [(HDOntologyDiagnosticOperation *)self appendNewline];
  [(HDOntologyDiagnosticOperation *)self appendFormat:@"Ontology Metadata"];
  [(HDOntologyDiagnosticOperation *)self appendSeparator];
  formattedTable = [v5 formattedTable];
  [(HDOntologyDiagnosticOperation *)self appendString:formattedTable];

  [(HDOntologyDiagnosticOperation *)self appendNewline];
}

- (void)_reportForOntologyFeaturesWithOntologyStore:(id)store
{
  storeCopy = store;
  [(HDOntologyDiagnosticOperation *)self appendStrongSeparator];
  [(HDOntologyDiagnosticOperation *)self appendNewline];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_122C;
  v17 = sub_123C;
  v18 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_2B74;
  v10 = &unk_8340;
  v12 = &v13;
  v5 = dispatch_semaphore_create(0);
  v11 = v5;
  [storeCopy shardRequirementStatusesWithCompletion:&v7];
  v6 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    [(HDOntologyDiagnosticOperation *)self _logAndAndAppendFormat:@"Timed out attempting to get shard requirement statuses", v7, v8, v9, v10];
  }

  else if ([v14[5] count])
  {
    [(HDOntologyDiagnosticOperation *)self _reportForShardRequirementStatuses:v14[5]];
  }

  else
  {
    [(HDOntologyDiagnosticOperation *)self appendFormat:@"No feature evaluators to report required shards"];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)_reportForShardRequirementStatuses:(id)statuses
{
  statusesCopy = statuses;
  v5 = [[HKTableFormatter alloc] initWithColumnTitles:&off_9030];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = statusesCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v19[0] = *(*(&v15 + 1) + 8 * v10);
        v11 = [v6 objectForKeyedSubscript:v15];
        [v11 integerValue];
        v12 = HKStringFromOptionalBooleanResult();
        v19[1] = v12;
        v13 = [NSArray arrayWithObjects:v19 count:2];
        [v5 appendRow:v13];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  [(HDOntologyDiagnosticOperation *)self appendFormat:@"Ontology Feature Evaluator Statuses"];
  [(HDOntologyDiagnosticOperation *)self appendSeparator];
  formattedTable = [v5 formattedTable];
  [(HDOntologyDiagnosticOperation *)self appendString:formattedTable];

  [(HDOntologyDiagnosticOperation *)self appendNewline];
}

- (void)_reportForOntologyKeyValueDomains
{
  [(HDOntologyDiagnosticOperation *)self appendStrongSeparator];
  [(HDOntologyDiagnosticOperation *)self appendNewline];
  healthDirectoryURL = [(HDOntologyDiagnosticOperation *)self healthDirectoryURL];
  v6 = [healthDirectoryURL URLByAppendingPathComponent:@"healthdb.sqlite" isDirectory:0];

  v4 = [(HDOntologyDiagnosticOperation *)self openReadOnlyDatabaseAtURL:v6];
  if (v4)
  {
    [(HDOntologyDiagnosticOperation *)self _reportForOntologyKeyValueDomainsWithDatabase:v4];
  }

  else
  {
    path = [v6 path];
    [(HDOntologyDiagnosticOperation *)self appendFormat:@"Unable to open %@ \n", path];
  }

  [v4 close];
}

- (void)_reportForOntologyKeyValueDomainsWithDatabase:(id)database
{
  v7 = 0;
  v4 = [HDUnprotectedKeyValueEntity allValuesForDomain:@"HDOntologyUpdateCoordinator" category:0 database:database error:&v7];
  v5 = v7;
  v6 = v5;
  if (v4)
  {
    [(HDOntologyDiagnosticOperation *)self _reportDomain:@"HDOntologyUpdateCoordinator" keyValues:v4];
  }

  else
  {
    [(HDOntologyDiagnosticOperation *)self _logAndAndAppendFormat:@"ERROR: Failed to get key value pairs for domain %@: %@", @"HDOntologyUpdateCoordinator", v5];
  }
}

- (void)_reportDomain:(id)domain keyValues:(id)values
{
  domainCopy = domain;
  valuesCopy = values;
  v6 = [[HKTableFormatter alloc] initWithColumnTitles:&off_9048];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [valuesCopy hk_sortedKeys];
  v7 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [valuesCopy objectForKeyedSubscript:v11];
        if (([v11 containsString:@"updateStartDate"] & 1) != 0 || objc_msgSend(v11, "containsString:", @"updateEndDate"))
        {
          [v12 doubleValue];
          v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          v14 = HKDiagnosticStringFromDate();
        }

        else
        {
          if ([v11 containsString:@"updateError"])
          {
            v15 = v12;
          }

          else
          {
            v15 = [v12 description];
          }

          v14 = v15;
        }

        v25[0] = v11;
        v25[1] = v14;
        v16 = [NSArray arrayWithObjects:v25 count:2];
        [v6 appendRow:v16];
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  [(HDOntologyDiagnosticOperation *)self appendFormat:@"%@ Key Value Domain", domainCopy];
  [(HDOntologyDiagnosticOperation *)self appendSeparator];
  formattedTable = [v6 formattedTable];
  [(HDOntologyDiagnosticOperation *)self appendString:formattedTable];

  [(HDOntologyDiagnosticOperation *)self appendNewline];
}

- (void)_reportForOntologyUserDefaultsWithHealthStore:(id)store
{
  storeCopy = store;
  [(HDOntologyDiagnosticOperation *)self appendStrongSeparator];
  [(HDOntologyDiagnosticOperation *)self appendNewline];
  v5 = [[HKTableFormatter alloc] initWithColumnTitles:&off_9060];
  v6 = [(HDOntologyDiagnosticOperation *)self _valueForDaemonDefaultKey:@"PeriodicActivity-com.apple.healthd.ontology.update-ErrorCount" healthStore:storeCopy];
  v12[0] = @"PeriodicActivity-com.apple.healthd.ontology.update-ErrorCount";
  stringValue = [v6 stringValue];
  v8 = stringValue;
  v9 = @"(null)";
  if (stringValue)
  {
    v9 = stringValue;
  }

  v12[1] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:2];
  [v5 appendRow:v10];

  [(HDOntologyDiagnosticOperation *)self _appendDateStringForDefaultKey:@"PeriodicActivity-com.apple.healthd.ontology.update-LastSuccessfulRun" tableFormatter:v5 healthStore:storeCopy];
  [(HDOntologyDiagnosticOperation *)self _appendDateStringForDefaultKey:@"PeriodicActivity-com.apple.healthd.ontology.update-EarliestNextRun" tableFormatter:v5 healthStore:storeCopy];

  [(HDOntologyDiagnosticOperation *)self appendFormat:@"healthd User Defaults"];
  [(HDOntologyDiagnosticOperation *)self appendSeparator];
  formattedTable = [v5 formattedTable];
  [(HDOntologyDiagnosticOperation *)self appendString:formattedTable];

  [(HDOntologyDiagnosticOperation *)self appendNewline];
  [(HDOntologyDiagnosticOperation *)self appendStrongSeparator];
  [(HDOntologyDiagnosticOperation *)self appendNewline];
}

- (void)_appendDateStringForDefaultKey:(id)key tableFormatter:(id)formatter healthStore:(id)store
{
  formatterCopy = formatter;
  keyCopy = key;
  v10 = [(HDOntologyDiagnosticOperation *)self _valueForDaemonDefaultKey:keyCopy healthStore:store];
  if (v10)
  {
    v11 = HKDiagnosticStringFromDate();
  }

  else
  {
    v11 = @"(null)";
  }

  v13[0] = keyCopy;
  v13[1] = v11;
  v12 = [NSArray arrayWithObjects:v13 count:2];

  [formatterCopy appendRow:v12];
}

- (id)_valueForDaemonDefaultKey:(id)key healthStore:(id)store
{
  keyCopy = key;
  storeCopy = store;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_122C;
  v27 = sub_123C;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_122C;
  v21 = sub_123C;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_35F8;
  v13[3] = &unk_8368;
  v15 = &v23;
  v16 = &v17;
  v8 = dispatch_semaphore_create(0);
  v14 = v8;
  [storeCopy _fetchDaemonPreferenceForKey:keyCopy completion:v13];
  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    [(HDOntologyDiagnosticOperation *)self _logAndAndAppendFormat:@"Timed out attempting to get daemon default for key %@", keyCopy];
  }

  v10 = v18[5];
  if (v10)
  {
    [(HDOntologyDiagnosticOperation *)self _logAndAndAppendFormat:@"Error getting daemon default for key %@: %@", keyCopy, v10];
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (void)_reportNetworkReachabilityForEnvironment:(id)environment
{
  environmentCopy = environment;
  flags = 0;
  v5 = SCNetworkReachabilityCreateWithName(0, [environmentCopy UTF8String]);
  if (v5)
  {
    v6 = v5;
    if (SCNetworkReachabilityGetFlags(v5, &flags))
    {
      [(HDOntologyDiagnosticOperation *)self _reportReachabilityFlags:flags];
    }

    else
    {
      [(HDOntologyDiagnosticOperation *)self _logAndAndAppendFormat:@"Unable to get reachability flags for %@", environmentCopy];
    }

    CFRelease(v6);
  }

  else
  {
    [(HDOntologyDiagnosticOperation *)self _logAndAndAppendFormat:@"Unable to get reachability flags for %@", environmentCopy];
  }
}

- (void)_reportReachabilityFlags:(unsigned int)flags
{
  v4 = [[HKTableFormatter alloc] initWithColumnTitles:&off_9078];
  v32[0] = @"TransientConnection";
  v5 = HKStringFromBool();
  v32[1] = v5;
  v6 = [NSArray arrayWithObjects:v32 count:2];
  [v4 appendRow:v6];

  v31[0] = @"Reachable";
  v7 = HKStringFromBool();
  v31[1] = v7;
  v8 = [NSArray arrayWithObjects:v31 count:2];
  [v4 appendRow:v8];

  v30[0] = @"ConnectionRequired";
  v9 = HKStringFromBool();
  v30[1] = v9;
  v10 = [NSArray arrayWithObjects:v30 count:2];
  [v4 appendRow:v10];

  v29[0] = @"ConnectionOnTraffic";
  v11 = HKStringFromBool();
  v29[1] = v11;
  v12 = [NSArray arrayWithObjects:v29 count:2];
  [v4 appendRow:v12];

  v28[0] = @"InterventionRequired";
  v13 = HKStringFromBool();
  v28[1] = v13;
  v14 = [NSArray arrayWithObjects:v28 count:2];
  [v4 appendRow:v14];

  v27[0] = @"ConnectionOnDemand";
  v15 = HKStringFromBool();
  v27[1] = v15;
  v16 = [NSArray arrayWithObjects:v27 count:2];
  [v4 appendRow:v16];

  v26[0] = @"IsLocalAddress";
  v17 = HKStringFromBool();
  v26[1] = v17;
  v18 = [NSArray arrayWithObjects:v26 count:2];
  [v4 appendRow:v18];

  v25[0] = @"IsDirect";
  v19 = HKStringFromBool();
  v25[1] = v19;
  v20 = [NSArray arrayWithObjects:v25 count:2];
  [v4 appendRow:v20];

  v24[0] = @"IsWWAN";
  v21 = HKStringFromBool();
  v24[1] = v21;
  v22 = [NSArray arrayWithObjects:v24 count:2];
  [v4 appendRow:v22];

  [(HDOntologyDiagnosticOperation *)self appendSeparator];
  formattedTable = [v4 formattedTable];
  [(HDOntologyDiagnosticOperation *)self appendString:formattedTable];

  [(HDOntologyDiagnosticOperation *)self appendNewline];
}

- (void)_logAndAndAppendFormat:(id)format
{
  formatCopy = format;
  v5 = [[NSString alloc] initWithFormat:formatCopy arguments:&v6];

  [(HDOntologyDiagnosticOperation *)self log:@"%@", v5];
  [(HDOntologyDiagnosticOperation *)self appendFormat:@"%@", v5];
}

@end