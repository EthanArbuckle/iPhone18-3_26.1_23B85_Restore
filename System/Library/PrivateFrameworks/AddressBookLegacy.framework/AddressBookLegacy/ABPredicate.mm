@interface ABPredicate
+ (id)newQueryFromABPredicate:(id)predicate withSortOrder:(unsigned int)order ranked:(BOOL)ranked addressBook:(void *)book propertyIndices:(const __CFDictionary *)indices;
+ (id)newQueryFromCompoundPredicate:(id)predicate withSortOrder:(unsigned int)order ranked:(BOOL)ranked addressBook:(void *)book propertyIndices:(const __CFDictionary *)indices;
+ (id)newQueryWithProperties:(id)properties joins:(id)joins whereString:(id)string sortOrder:(unsigned int)order rankString:(id)rankString groupByProperties:(id)byProperties addressBook:(void *)book propertyIndices:(const __CFDictionary *)self0;
+ (id)personPredicateWithAnyValueForProperty:(int)property;
+ (id)personPredicateWithGroup:(void *)group source:(void *)source account:(id)account;
+ (id)personPredicateWithName:(id)name addressBook:(void *)book;
+ (id)personPredicateWithNameLike:(id)like addressBook:(void *)book;
+ (id)personPredicateWithNameLike:(id)like group:(void *)group source:(void *)source account:(id)account includeSourceInResults:(BOOL)results addressBook:(void *)book;
+ (id)personPredicateWithNameLike:(id)like groups:(id)groups sources:(id)sources includeSourceInResults:(BOOL)results includePhotosInResults:(BOOL)inResults addressBook:(void *)book;
+ (id)personPredicateWithNameOnly:(id)only account:(id)account addressBook:(void *)book;
+ (id)personPredicateWithPhoneLike:(id)like countryHint:(id)hint addressBook:(void *)book;
+ (id)personPredicateWithSmartDialerStringLike:(id)like addressBook:(void *)book;
+ (id)personPredicateWithValue:(id)value comparison:(int64_t)comparison forProperty:(int)property;
+ (void)searchPeopleWithPredicate:(id)predicate sortOrder:(unsigned int)order ranked:(BOOL)ranked inAddressBook:(void *)book withDelegate:(id)delegate;
- (ABPredicate)init;
- (id)_querySelectStringForPredicateIdentifier:(int)identifier;
- (void)ab_addCallbackContextToArray:(id)array;
- (void)bindString:(id)string toStatement:(CPSqliteStatement *)statement withBindingOffset:(int *)offset;
- (void)dealloc;
@end

@implementation ABPredicate

+ (id)personPredicateWithNameLike:(id)like addressBook:(void *)book
{
  v6 = objc_opt_new();
  [v6 setAddressBook:book];
  [v6 setName:like];
  if (([v6 isValid] & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

+ (id)personPredicateWithNameLike:(id)like group:(void *)group source:(void *)source account:(id)account includeSourceInResults:(BOOL)results addressBook:(void *)book
{
  resultsCopy = results;
  if (group)
  {
    v14 = [MEMORY[0x1E695DEC8] arrayWithObject:group];
    if (source)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if (source)
    {
LABEL_3:
      v15 = [MEMORY[0x1E695DEC8] arrayWithObject:source];
      if (!account)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  v15 = 0;
  if (!account)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!v14 && !v15)
  {
    v15 = ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier(book, account);
  }

LABEL_10:

  return [self personPredicateWithNameLike:like groups:v14 sources:v15 includeSourceInResults:resultsCopy addressBook:book];
}

+ (id)personPredicateWithNameLike:(id)like groups:(id)groups sources:(id)sources includeSourceInResults:(BOOL)results includePhotosInResults:(BOOL)inResults addressBook:(void *)book
{
  inResultsCopy = inResults;
  resultsCopy = results;
  if ([sources count])
  {
    v15 = [sources objectAtIndex:0];
  }

  else
  {
    if (![groups count])
    {
      v16 = 0;
      goto LABEL_6;
    }

    v15 = ABGroupCopySource([groups objectAtIndex:0]);
  }

  v16 = v15;
LABEL_6:
  if (!ABSourceIsRemote(v16) || (AccountForSource = ABAddressBookGetAccountForSource(book, v16)) == 0 || (v18 = ABAccountCopyIdentifier(AccountForSource)) == 0)
  {
    v20 = 0;
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = v18;
  v20 = [[ABServerSearchPredicate alloc] initWithSearchString:like source:v16 account:v18 includeSourceInResults:resultsCopy includePhotosInResults:inResultsCopy];
  CFRelease(v19);
  if (v16)
  {
LABEL_12:
    CFRelease(v16);
  }

LABEL_13:
  if (!v20)
  {
    v20 = [self personPredicateWithNameLike:like addressBook:book];
    [(ABServerSearchPredicate *)v20 setSources:sources];
    [(ABServerSearchPredicate *)v20 setGroups:groups];
  }

  return v20;
}

+ (id)personPredicateWithName:(id)name addressBook:(void *)book
{
  v4 = [self personPredicateWithNameLike:name addressBook:book];
  [v4 setMatchWholeWords:1];
  return v4;
}

+ (id)personPredicateWithNameOnly:(id)only account:(id)account addressBook:(void *)book
{
  v6 = [self personPredicateWithNameLike:only addressBook:book];
  [v6 setMatchWholeWords:1];
  [v6 setMatchPersonOrCompanyNamesExclusively:1];
  [v6 setMatchPreferredName:0];
  if (account)
  {
    [v6 setAccountIdentifier:account];
    if (![objc_msgSend(v6 "sources")])
    {
      return 0;
    }
  }

  return v6;
}

+ (id)personPredicateWithSmartDialerStringLike:(id)like addressBook:(void *)book
{
  v4 = [self personPredicateWithNameLike:like addressBook:book];
  [v4 setMatchSmartDialerFormatsExclusively:1];
  return v4;
}

+ (id)personPredicateWithValue:(id)value comparison:(int64_t)comparison forProperty:(int)property
{
  v5 = *&property;
  v8 = objc_opt_new();
  [v8 setValue:value];
  [v8 setProperty:v5];
  [v8 setComparison:comparison];
  if (([v8 isValid] & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

+ (id)personPredicateWithAnyValueForProperty:(int)property
{
  v3 = *&property;
  v4 = objc_opt_new();
  [v4 setProperty:v3];
  if (([v4 isValid] & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

+ (id)personPredicateWithPhoneLike:(id)like countryHint:(id)hint addressBook:(void *)book
{
  v7 = objc_opt_new();
  [v7 setCountry:hint];
  [v7 setPhoneNumber:like];
  if (([v7 isValid] & 1) == 0)
  {

    v7 = 0;
  }

  return v7;
}

+ (id)personPredicateWithGroup:(void *)group source:(void *)source account:(id)account
{
  v8 = objc_opt_new();
  [v8 setGroup:group];
  [v8 setStore:source];
  [v8 setAccountIdentifier:account];
  if (([v8 isValid] & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

+ (id)newQueryWithProperties:(id)properties joins:(id)joins whereString:(id)string sortOrder:(unsigned int)order rankString:(id)rankString groupByProperties:(id)byProperties addressBook:(void *)book propertyIndices:(const __CFDictionary *)self0
{
  v38 = *MEMORY[0x1E69E9840];
  ColumnListWithAliasAndExtraColumns = CPRecordStoreCreateColumnListWithAliasAndExtraColumns();
  v17 = ColumnListWithAliasAndExtraColumns;
  if (properties)
  {
    [ColumnListWithAliasAndExtraColumns appendString:properties];
  }

  [v17 appendString:@" FROM ABPerson abp "];
  if (joins)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = [joins countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v34;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(joins);
          }

          [v17 appendString:*(*(&v33 + 1) + 8 * i)];
          [v17 appendString:@" "];
        }

        v19 = [joins countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v19);
    }
  }

  if (string)
  {
    [v17 appendString:@"WHERE "];
    [v17 appendString:string];
  }

  v22 = [byProperties count];
  if (v22 >= 1)
  {
    v23 = v22;
    objc_msgSend(v17, "appendString:", @" GROUP BY (");
    for (j = 0; j != v23; ++j)
    {
      v25 = [byProperties objectAtIndex:j];
      if (j >= 2)
      {
        [v17 appendString:{@", "}];
      }

      [v17 appendString:v25];
    }

    [v17 appendString:@""]);
  }

  if (order != -1)
  {
    if (order)
    {
      v26 = @" ORDER BY LastSortLanguageIndex, LastSortSection, LastSort";
    }

    else
    {
      v26 = @" ORDER BY FirstSortLanguageIndex, FirstSortSection, FirstSort";
    }

    [v17 appendString:v26];
  }

  if ([rankString length])
  {
    v27 = [v17 rangeOfString:@"ORDER BY" options:5];
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = [v17 length];
      v30 = &stru_1F2FE2718;
      v31 = @" ORDER BY ";
    }

    else
    {
      v29 = v27 + v28;
      v30 = @", ";
      v31 = @" ";
    }

    [v17 insertString:objc_msgSend(MEMORY[0x1E696AEC0] atIndex:{"stringWithFormat:", @"%@%@ DESC %@", v31, rankString, v30), v29}];
  }

  return v17;
}

+ (id)newQueryFromABPredicate:(id)predicate withSortOrder:(unsigned int)order ranked:(BOOL)ranked addressBook:(void *)book propertyIndices:(const __CFDictionary *)indices
{
  rankedCopy = ranked;
  v10 = *&order;
  v13 = [predicate _querySelectStringForPredicateIdentifier:0];
  v14 = [predicate queryJoinsInCompound:0 predicateIdentifier:0];
  v15 = [predicate queryWhereStringForPredicateIdentifier:0];
  if (rankedCopy)
  {
    v16 = [predicate queryRankStringForPredicateIdentifier:0];
  }

  else
  {
    v16 = 0;
  }

  return [self newQueryWithProperties:v13 joins:v14 whereString:v15 sortOrder:v10 rankString:v16 groupByProperties:objc_msgSend(predicate addressBook:"queryGroupByProperties") propertyIndices:{book, indices}];
}

+ (id)newQueryFromCompoundPredicate:(id)predicate withSortOrder:(unsigned int)order ranked:(BOOL)ranked addressBook:(void *)book propertyIndices:(const __CFDictionary *)indices
{
  rankedCopy = ranked;
  v105 = *MEMORY[0x1E69E9840];
  ColumnListWithAliasAndExtraColumns = CPRecordStoreCreateColumnListWithAliasAndExtraColumns();
  compoundPredicateType = [predicate compoundPredicateType];
  v10 = @" OR ";
  v11 = @" AND ";
  if (compoundPredicateType != 1)
  {
    v11 = 0;
  }

  v12 = compoundPredicateType == 2 || compoundPredicateType == 1;
  if (compoundPredicateType != 2)
  {
    v10 = v11;
  }

  v63 = v10;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = [predicate subpredicates];
  v13 = [obj countByEnumeratingWithState:&v94 objects:v104 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v95;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v95 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [*(*(&v94 + 1) + 8 * i) _querySelectStringForPredicateIdentifier:v15];
        if (v18)
        {
          [ColumnListWithAliasAndExtraColumns appendString:v18];
        }

        v15 = (v15 + 1);
      }

      v14 = [obj countByEnumeratingWithState:&v94 objects:v104 count:16];
    }

    while (v14);
  }

  v60 = v12;
  [ColumnListWithAliasAndExtraColumns appendString:@" FROM ABPerson abp "];
  v19 = objc_opt_new();
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v67 = [obj countByEnumeratingWithState:&v90 objects:v103 count:16];
  if (v67)
  {
    v20 = 0;
    v65 = *v91;
    do
    {
      for (j = 0; j != v67; ++j)
      {
        if (*v91 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v22 = [*(*(&v90 + 1) + 8 * j) queryJoinsInCompound:1 predicateIdentifier:v20];
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v23 = [v22 countByEnumeratingWithState:&v86 objects:v102 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v87;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v87 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v86 + 1) + 8 * k);
              if (([v19 containsObject:v27] & 1) == 0)
              {
                [ColumnListWithAliasAndExtraColumns appendString:v27];
                [ColumnListWithAliasAndExtraColumns appendString:@" "];
                [v19 addObject:v27];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v86 objects:v102 count:16];
          }

          while (v24);
        }

        v20 = (v20 + 1);
      }

      v67 = [obj countByEnumeratingWithState:&v90 objects:v103 count:16];
    }

    while (v67);
  }

  [ColumnListWithAliasAndExtraColumns appendString:@"WHERE "];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v28 = [obj countByEnumeratingWithState:&v82 objects:v101 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v31 = 0;
    v32 = *v83;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v83 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = [*(*(&v82 + 1) + 8 * m) queryWhereStringForPredicateIdentifier:v31];
        if ((v60 & v30) == 1)
        {
          [ColumnListWithAliasAndExtraColumns appendString:v63];
        }

        if ([v34 length])
        {
          objc_msgSend(ColumnListWithAliasAndExtraColumns, "appendString:", @"(");
          [ColumnListWithAliasAndExtraColumns appendString:v34];
          [ColumnListWithAliasAndExtraColumns appendString:@""]);
          v30 = 1;
        }

        v31 = (v31 + 1);
      }

      v29 = [obj countByEnumeratingWithState:&v82 objects:v101 count:16];
    }

    while (v29);
  }

  if (rankedCopy)
  {
    string = [MEMORY[0x1E696AD60] string];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v36 = [obj countByEnumeratingWithState:&v78 objects:v100 count:16];
    v64 = string;
    if (v36)
    {
      v37 = v36;
      v38 = 0;
      v39 = 0;
      v40 = *v79;
      do
      {
        for (n = 0; n != v37; ++n)
        {
          if (*v79 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = [*(*(&v78 + 1) + 8 * n) queryRankStringForPredicateIdentifier:v39];
          if (v42)
          {
            v43 = v42;
            if (v38)
            {
              [string appendString:@" + "];
            }

            [string appendString:v43];
          }

          v38 |= ColumnListWithAliasAndExtraColumns != 0;
          v39 = (v39 + 1);
        }

        v37 = [obj countByEnumeratingWithState:&v78 objects:v100 count:16];
      }

      while (v37);
    }
  }

  else
  {
    v64 = 0;
  }

  v44 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v68 = [obj countByEnumeratingWithState:&v74 objects:v99 count:16];
  if (v68)
  {
    v66 = *v75;
    do
    {
      for (ii = 0; ii != v68; ++ii)
      {
        if (*v75 != v66)
        {
          objc_enumerationMutation(obj);
        }

        queryGroupByProperties = [*(*(&v74 + 1) + 8 * ii) queryGroupByProperties];
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v47 = [queryGroupByProperties countByEnumeratingWithState:&v70 objects:v98 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v71;
          do
          {
            for (jj = 0; jj != v48; ++jj)
            {
              if (*v71 != v49)
              {
                objc_enumerationMutation(queryGroupByProperties);
              }

              v51 = *(*(&v70 + 1) + 8 * jj);
              if (([v44 containsObject:v51] & 1) == 0)
              {
                if ([v44 count])
                {
                  v52 = @", ";
                }

                else
                {
                  v52 = @" GROUP BY ";
                }

                [ColumnListWithAliasAndExtraColumns appendString:v52];
                [ColumnListWithAliasAndExtraColumns appendString:v51];
                [v44 addObject:v51];
              }
            }

            v48 = [queryGroupByProperties countByEnumeratingWithState:&v70 objects:v98 count:16];
          }

          while (v48);
        }
      }

      v68 = [obj countByEnumeratingWithState:&v74 objects:v99 count:16];
    }

    while (v68);
  }

  if (order != -1)
  {
    if (order)
    {
      v53 = @" ORDER BY LastSortLanguageIndex, LastSortSection, LastSort";
    }

    else
    {
      v53 = @" ORDER BY FirstSortLanguageIndex, FirstSortSection, FirstSort";
    }

    [ColumnListWithAliasAndExtraColumns appendString:v53];
  }

  if ([v64 length])
  {
    v54 = [ColumnListWithAliasAndExtraColumns rangeOfString:@"ORDER BY" options:5];
    if (v54 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v56 = [ColumnListWithAliasAndExtraColumns length];
      v57 = &stru_1F2FE2718;
      v58 = @" ORDER BY ";
    }

    else
    {
      v56 = v54 + v55;
      v57 = @", ";
      v58 = @" ";
    }

    [ColumnListWithAliasAndExtraColumns insertString:objc_msgSend(MEMORY[0x1E696AEC0] atIndex:{"stringWithFormat:", @"%@%@%@", v58, v64, v57), v56}];
  }

  return ColumnListWithAliasAndExtraColumns;
}

+ (void)searchPeopleWithPredicate:(id)predicate sortOrder:(unsigned int)order ranked:(BOOL)ranked inAddressBook:(void *)book withDelegate:(id)delegate
{
  rankedCopy = ranked;
  v10 = *&order;
  if (predicate)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [ABPredicate searchPeopleWithPredicate:a2 sortOrder:self ranked:? inAddressBook:? withDelegate:?];
      }
    }
  }

  [predicate ab_runPredicateWithSortOrder:v10 ranked:rankedCopy inAddressBook:book withDelegate:delegate];
}

- (ABPredicate)init
{
  v3.receiver = self;
  v3.super_class = ABPredicate;
  return [(ABPredicate *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ABPredicate;
  [(ABPredicate *)&v2 dealloc];
}

- (id)_querySelectStringForPredicateIdentifier:(int)identifier
{
  v3 = [(ABPredicate *)self querySelectPropertiesForPredicateIdentifier:*&identifier];
  result = [v3 count];
  if (result)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", objc_msgSend(v3, "componentsJoinedByString:", @", ")];
  }

  return result;
}

- (void)bindString:(id)string toStatement:(CPSqliteStatement *)statement withBindingOffset:(int *)offset
{
  v7 = _CPCreateUTF8StringFromCFString();
  v8 = sqlite3_bind_text(statement->var1, *offset, v7, -1, MEMORY[0x1E69E9B38]);
  ++*offset;
  if (v8)
  {
    ABDiagnosticsEnabled();
    _ABLog2(3, "[ABPredicate bindString:toStatement:withBindingOffset:]", 581, 0, @"Binding error at index %d", v9, v10, v11, *offset);
  }
}

- (void)ab_addCallbackContextToArray:(id)array
{
  callbackContext = [(ABPredicate *)self callbackContext];
  if (!callbackContext)
  {
    callbackContext = [MEMORY[0x1E695DFB0] null];
  }

  [array addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithNonretainedObject:", self)}];

  [array addObject:callbackContext];
}

+ (uint64_t)searchPeopleWithPredicate:(uint64_t)a1 sortOrder:(uint64_t)a2 ranked:inAddressBook:withDelegate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"ABPredicate.m" lineNumber:490 description:@"Only address book specific predicates and compound predicates are supported"];
}

@end