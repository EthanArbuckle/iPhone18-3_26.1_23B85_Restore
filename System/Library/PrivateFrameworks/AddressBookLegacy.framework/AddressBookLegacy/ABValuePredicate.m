@interface ABValuePredicate
+ (id)stringForComparison:(id)a3 withComparision:(int64_t)a4;
- (ABValuePredicate)init;
- (BOOL)_shouldConsultIndexForKey:(id)a3;
- (BOOL)_supportsFTSSearch;
- (BOOL)isValid;
- (id)_ftsAllQueryStrings;
- (id)_ftsTermStringForString:(id)a3;
- (id)_ftsTokenizedTermStringForString:(id)a3;
- (id)predicateFormat;
- (id)queryJoinsInCompound:(BOOL)a3 predicateIdentifier:(int)a4;
- (id)querySelectPropertiesForPredicateIdentifier:(int)a3;
- (id)queryWhereStringForPredicateIdentifier:(int)a3;
- (id)stringForComparison:(id)a3;
- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)a3 withBindingOffset:(int *)a4 predicateIdentifier:(int)a5;
- (void)dealloc;
- (void)setValue:(id)a3;
@end

@implementation ABValuePredicate

- (ABValuePredicate)init
{
  v3.receiver = self;
  v3.super_class = ABValuePredicate;
  result = [(ABPredicate *)&v3 init];
  if (result)
  {
    result->_comparison = 0;
    result->_property = -1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ABValuePredicate;
  [(ABPredicate *)&v3 dealloc];
}

- (void)setValue:(id)a3
{
  value = self->_value;
  if (value != a3)
  {

    self->_value = [a3 copy];
    objc_opt_class();
    self->_dictionaryValue = objc_opt_isKindOfClass() & 1;
  }
}

- (BOOL)isValid
{
  TypeOfProperty = ABPersonGetTypeOfProperty(self->_property);
  property = self->_property;
  if (property == -1)
  {
    return 0;
  }

  if ((TypeOfProperty & 0xFFFFFEFF) == 4)
  {
    comparison = self->_comparison;
    v6 = comparison > 5;
    v7 = (1 << comparison) & 0x31;
    if (v6 || v7 == 0)
    {
      ABDiagnosticsEnabled();
      _ABLog2(3, "[ABValuePredicate isValid]", 69, 0, @"Equality and inequalities are the only supported comparisons for date properties", v19, v20, v21, v30);
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      ABDiagnosticsEnabled();
      _ABLog2(3, "[ABValuePredicate isValid]", 73, 0, @"Date properties can only be matched with dates", v23, v24, v25, v30);
    }

    return v9 & isKindOfClass;
  }

  if (property != kABPersonPhoneProperty)
  {
    if ((TypeOfProperty & 0xFFFFFEFF) != 5)
    {
      return 1;
    }

    if (self->_dictionaryValue)
    {
      return 1;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 1;
    }

    ABDiagnosticsEnabled();
    v26 = ABPersonNameForProperty(self->_property);
    _ABLog2(3, "[ABValuePredicate isValid]", 89, 0, @"Dictionary properties like <%@> can only be compared to dictionaries or strings", v27, v28, v29, v26);
    return 0;
  }

  v10 = self->_comparison;
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  if (v10 >= 2)
  {
    ABDiagnosticsEnabled();
    _ABLog2(3, "[ABValuePredicate isValid]", 80, 0, @"Equality and prefix are the only supported comparison for the phone property.", v12, v13, v14, v30);
  }

  if ((v11 & 1) == 0)
  {
    ABDiagnosticsEnabled();
    _ABLog2(3, "[ABValuePredicate isValid]", 83, 0, @"Phone numbers can only be compared to strings", v15, v16, v17, v30);
  }

  return (v10 < 2) & v11;
}

- (id)querySelectPropertiesForPredicateIdentifier:(int)a3
{
  if (ABPersonGetTypeOfProperty(self->_property) == 261)
  {
    return &unk_1F2FF4978;
  }

  else
  {
    return 0;
  }
}

- (id)queryJoinsInCompound:(BOOL)a3 predicateIdentifier:(int)a4
{
  v4 = a3;
  if (ABPersonGetTypeOfProperty(self->_property) != 261)
  {
    return 0;
  }

  v5 = MEMORY[0x1E695DEC8];
  if (v4)
  {
    v6 = @"LEFT OUTER JOIN ABMultiValue abv ON abp.ROWID = abv.record_id";
  }

  else
  {
    v6 = @"JOIN ABMultiValue abv ON abp.ROWID = abv.record_id";
  }

  return [v5 arrayWithObject:v6];
}

- (BOOL)_shouldConsultIndexForKey:(id)a3
{
  ArrayOfAllFTSPropertyIDs = _ABPersonGetArrayOfAllFTSPropertyIDs();
  Count = CFArrayGetCount(ArrayOfAllFTSPropertyIDs);
  v7 = [(ABValuePredicate *)self property];
  v19.location = 0;
  v19.length = Count;
  v8 = CFArrayContainsValue(ArrayOfAllFTSPropertyIDs, v19, v7);
  if (!v8)
  {
    return v8;
  }

  if ([(ABValuePredicate *)self property]== kABPersonSocialProfileProperty)
  {
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"identifier", @"username", 0, v12, v13, v14, v15, v16, v17}];
  }

  else if ([(ABValuePredicate *)self property]== kABPersonAddressProperty)
  {
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"State", @"City", @"CountryCode", @"Country", @"ZIP", @"Street", @"SubLocality", @"SubAdministrativeArea", 0}];
  }

  else
  {
    if ([(ABValuePredicate *)self property]!= kABPersonInstantMessageProperty)
    {
      goto LABEL_12;
    }

    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"username", 0, v11, v12, v13, v14, v15, v16, v17}];
  }

  if (!v9)
  {
LABEL_12:
    LOBYTE(v8) = 1;
    return v8;
  }

  LOBYTE(v8) = [v9 containsObject:a3];
  return v8;
}

- (BOOL)_supportsFTSSearch
{
  v17 = *MEMORY[0x1E69E9840];
  LODWORD(v3) = ABCFTSIsEnabled();
  if (!v3)
  {
    return v3;
  }

  comparison = self->_comparison;
  TypeOfProperty = ABPersonGetTypeOfProperty(self->_property);
  if (TypeOfProperty == 1)
  {
    if (self->_value)
    {
      v10 = comparison >= 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (TypeOfProperty == 257)
  {
    if (comparison > 1)
    {
LABEL_24:
      LOBYTE(v3) = 0;
      return v3;
    }

LABEL_16:

    LOBYTE(v3) = [(ABValuePredicate *)self _shouldConsultIndexForKey:0];
    return v3;
  }

  if (TypeOfProperty != 261 || comparison > 1)
  {
    goto LABEL_24;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  orderedKeys = self->_orderedKeys;
  v3 = [(NSArray *)orderedKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v7 = v3;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(orderedKeys);
        }

        if ([(ABValuePredicate *)self _shouldConsultIndexForKey:*(*(&v12 + 1) + 8 * i)])
        {
          LOBYTE(v3) = 1;
          return v3;
        }
      }

      v7 = [(NSArray *)orderedKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      LOBYTE(v3) = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (id)queryWhereStringForPredicateIdentifier:(int)a3
{
  TypeOfProperty = ABPersonGetTypeOfProperty(self->_property);
  v5 = TypeOfProperty;
  comparison = self->_comparison;
  if (comparison > 3)
  {
    v8 = @"< ?";
    if (comparison != 5)
    {
      v8 = 0;
    }

    if (comparison == 4)
    {
      v7 = @"> ?";
    }

    else
    {
      v7 = v8;
    }
  }

  else if ((comparison - 1) >= 3)
  {
    if (comparison)
    {
      v7 = 0;
    }

    else
    {
      if ((TypeOfProperty & 0xFFFFFEFF) == 4)
      {
        v7 = @"BETWEEN ? AND ?";
        goto LABEL_24;
      }

      v7 = @"LIKE ?";
      if (TypeOfProperty == 1)
      {
        if (!self->_value)
        {
          v7 = @"IS NULL";
        }

        v17 = ABPersonNameForProperty(self->_property);
        goto LABEL_42;
      }
    }
  }

  else
  {
    v7 = @"LIKE ?";
  }

  if (TypeOfProperty == 261)
  {
    if (!self->_dictionaryValue)
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"((SELECT COUNT() FROM ABMultiValue JOIN ABMultiValueEntry abve ON abve.parent_id = abv.UID WHERE (abp.ROWID = abv.record_id AND abv.property+0 = ? AND abve.value %@) LIMIT 1) > 0)", v7, v22, v23];
    }

    v24 = v7;
    v9 = objc_opt_new();
    v25 = ABCPersonNameForProperty([(ABValuePredicate *)self property]);
    objc_msgSend(v9, "appendString:", CFSTR("(abv.ROWID IN ("));
    value = self->_value;
    v11 = [value count];

    self->_orderedKeys = [value allKeys];
    if (v11 < 1)
    {
      v13 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      do
      {
        [value objectForKey:[(NSArray *)self->_orderedKeys objectAtIndex:v12]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v12)
          {
            [v9 appendString:@" INTERSECT "];
          }

          v14 = [(ABValuePredicate *)self _supportsFTSSearch];
          v15 = @"(SELECT ROWID FROM ABPerson)";
          if (v14)
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(SELECT rowid FROM ABPersonFullTextSearch WHERE %@ MATCH ?)", v25];
          }

          [v9 appendFormat:@"SELECT parent_id FROM ABMultiValueEntry mve JOIN ABMultiValueEntryKey mvk NOT INDEXED ON mve.key = mvk.rowid WHERE mve.ROWID IN (SELECT ROWID FROM ABMultiValueEntry WHERE parent_id IN (SELECT UID FROM ABMultiValue WHERE record_id IN %@ )) AND mvk.value = ? AND mve.value LIKE ?", v15];
          v13 = 1;
        }

        ++v12;
      }

      while (v11 != v12);
    }

    [v9 appendString:@"]"));
    result = v9;
    v7 = v24;
    if ((v13 & 1) == 0)
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"((SELECT COUNT() FROM ABMultiValue JOIN ABMultiValueEntry abve ON abve.parent_id = abv.UID WHERE (abp.ROWID = abv.record_id AND abv.property+0 = ? AND abve.value %@) LIMIT 1) > 0)", v7, v22, v23];
    }

    return result;
  }

LABEL_24:
  if ((TypeOfProperty & 0x100) == 0)
  {
    v16 = ABPersonNameForProperty(self->_property);
    if (v5 != 4)
    {
      goto LABEL_43;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAST(%@ AS NUMERIC)", v16];
LABEL_42:
    v16 = v17;
LABEL_43:
    if (![(ABValuePredicate *)self _supportsFTSSearch])
    {
      return [(__CFString *)v16 stringByAppendingFormat:@" %@", v7];
    }

    v21 = ABCPersonNameForProperty([(ABValuePredicate *)self property]);
    if ([(ABValuePredicate *)self _allowsLaxCheckingForFTS])
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"ROWID IN (SELECT rowid FROM ABPersonFullTextSearch WHERE %@ MATCH ?)", v21, v22, v23];
    }

    else
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"ROWID IN (SELECT rowid FROM ABPersonFullTextSearch WHERE %@ MATCH ? AND %@ %@)", v21, v16, v7];
    }
  }

  v18 = @"value COLLATE NOCASE";
  if ((TypeOfProperty & 0xFFFFFEFF) == 4)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAST(%@ AS NUMERIC)", @"value COLLATE NOCASE"];
  }

  if (![(ABValuePredicate *)self _supportsFTSSearch])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"ROWID IN (select record_id from ABMultiValue where property = ? and %@ %@)", v18, v7, v23];
  }

  v19 = ABCPersonNameForProperty([(ABValuePredicate *)self property]);
  if ([(ABValuePredicate *)self _allowsLaxCheckingForFTS])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"ROWID IN (SELECT rowid FROM ABPersonFullTextSearch fts WHERE fts.%@ MATCH ?)", v19, v22, v23];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"ROWID IN (SELECT abv.record_id FROM ABPersonFullTextSearch fts JOIN ABMultiValue abv ON abv.record_id = fts.rowid WHERE fts.%@ MATCH ? AND abv.%@ %@)", v19, v18, v7];
  }
}

+ (id)stringForComparison:(id)a3 withComparision:(int64_t)a4
{
  switch(a4)
  {
    case 3:
      v5 = [@"%" stringByAppendingString:a3];
      a3 = @"%";

      return [(__CFString *)v5 stringByAppendingString:a3];
    case 2:
      v5 = @"%";

      return [(__CFString *)v5 stringByAppendingString:a3];
    case 1:
      v5 = a3;
      a3 = @"%";

      return [(__CFString *)v5 stringByAppendingString:a3];
  }

  return a3;
}

- (id)stringForComparison:(id)a3
{
  v5 = objc_opt_class();
  comparison = self->_comparison;

  return [v5 stringForComparison:a3 withComparision:comparison];
}

- (id)_ftsTermStringForString:(id)a3
{
  if ([(ABValuePredicate *)self comparison]== 3 || [(ABValuePredicate *)self comparison]== 2)
  {
    v5 = @"*";
  }

  else
  {
    v5 = &stru_1F2FE2718;
  }

  if ([(ABValuePredicate *)self comparison]== 3 || [(ABValuePredicate *)self comparison]== 1)
  {
    v6 = @"*";
  }

  else
  {
    v6 = &stru_1F2FE2718;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"##&%@%@%@", v5, a3, v6];
}

- (id)_ftsTokenizedTermStringForString:(id)a3
{
  v5 = CFLocaleCopyPreferredLanguages();
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      v8 = CFLocaleCreate(0, ValueAtIndex);
      CFRelease(v6);
      if (v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      CFRelease(v6);
    }
  }

  v8 = CFLocaleCopyCurrent();
LABEL_7:
  v16.location = 0;
  v16.length = 0;
  v9 = CFStringTokenizerCreate(*MEMORY[0x1E695E480], &stru_1F2FE2718, v16, 0, v8);
  v10 = ABTokenListCreate();
  ABTokenListPopulateFromString(v10, v9, 0, a3, 0, 1, 0);
  v11 = [MEMORY[0x1E696AD60] string];
  Count = ABTokenListGetCount(v10);
  if (Count >= 1)
  {
    v13 = Count;
    for (i = 0; i != v13; ++i)
    {
      [v11 appendFormat:@"%@ ", -[ABValuePredicate _ftsTermStringForString:](self, "_ftsTermStringForString:", ABTokenListGetTokenAtIndex(v10, i))];
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(v9);
  CFRelease(v10);
  return v11;
}

- (id)_ftsAllQueryStrings
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  orderedKeys = self->_orderedKeys;
  v5 = [(NSArray *)orderedKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(orderedKeys);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([(ABValuePredicate *)self _shouldConsultIndexForKey:v9])
        {
          [v3 appendFormat:@"%@ ", -[NSObject objectForKey:](self->_value, "objectForKey:", v9)];
        }
      }

      v6 = [(NSArray *)orderedKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [(ABValuePredicate *)self _ftsTokenizedTermStringForString:v3];
}

- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)a3 withBindingOffset:(int *)a4 predicateIdentifier:(int)a5
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_value)
  {
    TypeOfProperty = ABPersonGetTypeOfProperty(self->_property);
    v26 = [(ABValuePredicate *)self _supportsFTSSearch];
    if (TypeOfProperty == 261 && self->_dictionaryValue)
    {
      value = self->_value;
      orderedKeys = self->_orderedKeys;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v10 = [(NSArray *)orderedKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(orderedKeys);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            v15 = [value objectForKey:v14];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [(ABValuePredicate *)self stringForComparison:v15];
              if (v26)
              {
                [(ABPredicate *)self bindString:[(ABValuePredicate *)self _ftsAllQueryStrings] toStatement:a3 withBindingOffset:a4];
              }

              [(ABPredicate *)self bindString:v14 toStatement:a3 withBindingOffset:a4];
              [(ABPredicate *)self bindString:v16 toStatement:a3 withBindingOffset:a4];
            }
          }

          v11 = [(NSArray *)orderedKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v17 = v26;
      if ((TypeOfProperty & 0x100) == 0)
      {
        v17 = 1;
      }

      if ((v17 & 1) == 0)
      {
        sqlite3_bind_int(a3->var1, *a4, self->_property);
        ++*a4;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v19 = self->_value;
      if (isKindOfClass)
      {
        if (!v26 || ([(ABPredicate *)self bindString:[(ABValuePredicate *)self _ftsTokenizedTermStringForString:self->_value] toStatement:a3 withBindingOffset:a4], ![(ABValuePredicate *)self _allowsLaxCheckingForFTS]))
        {
          v20 = [(ABValuePredicate *)self stringForComparison:v19];

          [(ABPredicate *)self bindString:v20 toStatement:a3 withBindingOffset:a4];
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [MEMORY[0x1E695DEE8] currentCalendar];
          v22 = [v21 components:254 fromDate:self->_value];
          [v21 setTimeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "timeZoneForSecondsFromGMT:", 0)}];
          [v22 setHour:12];
          [v22 setMinute:0];
          [v22 setSecond:0];
          v23 = [v21 dateFromComponents:v22];
          v24 = v23;
          comparison = self->_comparison;
          if (comparison == 5 || !comparison)
          {
            [objc_msgSend(v23 dateByAddingTimeInterval:{-43200.0), "timeIntervalSinceReferenceDate"}];
            [(ABPredicate *)self bindDouble:a3 toStatement:a4 withBindingOffset:?];
            comparison = self->_comparison;
          }

          if ((comparison | 4) == 4)
          {
            [objc_msgSend(v24 dateByAddingTimeInterval:{43200.0), "timeIntervalSinceReferenceDate"}];

            [(ABPredicate *)self bindDouble:a3 toStatement:a4 withBindingOffset:?];
          }
        }
      }
    }
  }
}

- (id)predicateFormat
{
  comparison = self->_comparison;
  if (comparison > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7CCCD28[comparison];
  }

  if (self->_value)
  {
    value = self->_value;
  }

  else
  {
    value = @"nil";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"ABPredicate %p - Value matching (%@): %@ %@", self, v3, value, ABPersonNameForProperty(self->_property)];
}

@end