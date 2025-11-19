@interface ABPredicate
+ (id)newQueryFromABPredicate:(id)a3 withSortOrder:(unsigned int)a4 ranked:(BOOL)a5 addressBook:(void *)a6 propertyIndices:(const __CFDictionary *)a7;
+ (id)newQueryFromCompoundPredicate:(id)a3 withSortOrder:(unsigned int)a4 ranked:(BOOL)a5 addressBook:(void *)a6 propertyIndices:(const __CFDictionary *)a7;
+ (id)newQueryWithProperties:(id)a3 joins:(id)a4 whereString:(id)a5 sortOrder:(unsigned int)a6 rankString:(id)a7 groupByProperties:(id)a8 addressBook:(void *)a9 propertyIndices:(const __CFDictionary *)a10;
+ (id)personPredicateWithAnyValueForProperty:(int)a3;
+ (id)personPredicateWithGroup:(void *)a3 source:(void *)a4 account:(id)a5;
+ (id)personPredicateWithName:(id)a3 addressBook:(void *)a4;
+ (id)personPredicateWithNameLike:(id)a3 addressBook:(void *)a4;
+ (id)personPredicateWithNameLike:(id)a3 group:(void *)a4 source:(void *)a5 account:(id)a6 includeSourceInResults:(BOOL)a7 addressBook:(void *)a8;
+ (id)personPredicateWithNameLike:(id)a3 groups:(id)a4 sources:(id)a5 includeSourceInResults:(BOOL)a6 includePhotosInResults:(BOOL)a7 addressBook:(void *)a8;
+ (id)personPredicateWithNameOnly:(id)a3 account:(id)a4 addressBook:(void *)a5;
+ (id)personPredicateWithPhoneLike:(id)a3 countryHint:(id)a4 addressBook:(void *)a5;
+ (id)personPredicateWithSmartDialerStringLike:(id)a3 addressBook:(void *)a4;
+ (id)personPredicateWithValue:(id)a3 comparison:(int64_t)a4 forProperty:(int)a5;
+ (void)searchPeopleWithPredicate:(id)a3 sortOrder:(unsigned int)a4 ranked:(BOOL)a5 inAddressBook:(void *)a6 withDelegate:(id)a7;
- (ABPredicate)init;
- (id)_querySelectStringForPredicateIdentifier:(int)a3;
- (void)ab_addCallbackContextToArray:(id)a3;
- (void)bindString:(id)a3 toStatement:(CPSqliteStatement *)a4 withBindingOffset:(int *)a5;
- (void)dealloc;
@end

@implementation ABPredicate

+ (id)personPredicateWithNameLike:(id)a3 addressBook:(void *)a4
{
  v6 = objc_opt_new();
  [v6 setAddressBook:a4];
  [v6 setName:a3];
  if (([v6 isValid] & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

+ (id)personPredicateWithNameLike:(id)a3 group:(void *)a4 source:(void *)a5 account:(id)a6 includeSourceInResults:(BOOL)a7 addressBook:(void *)a8
{
  v9 = a7;
  if (a4)
  {
    v14 = [MEMORY[0x1E695DEC8] arrayWithObject:a4];
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if (a5)
    {
LABEL_3:
      v15 = [MEMORY[0x1E695DEC8] arrayWithObject:a5];
      if (!a6)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  v15 = 0;
  if (!a6)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!v14 && !v15)
  {
    v15 = ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier(a8, a6);
  }

LABEL_10:

  return [a1 personPredicateWithNameLike:a3 groups:v14 sources:v15 includeSourceInResults:v9 addressBook:a8];
}

+ (id)personPredicateWithNameLike:(id)a3 groups:(id)a4 sources:(id)a5 includeSourceInResults:(BOOL)a6 includePhotosInResults:(BOOL)a7 addressBook:(void *)a8
{
  v9 = a7;
  v10 = a6;
  if ([a5 count])
  {
    v15 = [a5 objectAtIndex:0];
  }

  else
  {
    if (![a4 count])
    {
      v16 = 0;
      goto LABEL_6;
    }

    v15 = ABGroupCopySource([a4 objectAtIndex:0]);
  }

  v16 = v15;
LABEL_6:
  if (!ABSourceIsRemote(v16) || (AccountForSource = ABAddressBookGetAccountForSource(a8, v16)) == 0 || (v18 = ABAccountCopyIdentifier(AccountForSource)) == 0)
  {
    v20 = 0;
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = v18;
  v20 = [[ABServerSearchPredicate alloc] initWithSearchString:a3 source:v16 account:v18 includeSourceInResults:v10 includePhotosInResults:v9];
  CFRelease(v19);
  if (v16)
  {
LABEL_12:
    CFRelease(v16);
  }

LABEL_13:
  if (!v20)
  {
    v20 = [a1 personPredicateWithNameLike:a3 addressBook:a8];
    [(ABServerSearchPredicate *)v20 setSources:a5];
    [(ABServerSearchPredicate *)v20 setGroups:a4];
  }

  return v20;
}

+ (id)personPredicateWithName:(id)a3 addressBook:(void *)a4
{
  v4 = [a1 personPredicateWithNameLike:a3 addressBook:a4];
  [v4 setMatchWholeWords:1];
  return v4;
}

+ (id)personPredicateWithNameOnly:(id)a3 account:(id)a4 addressBook:(void *)a5
{
  v6 = [a1 personPredicateWithNameLike:a3 addressBook:a5];
  [v6 setMatchWholeWords:1];
  [v6 setMatchPersonOrCompanyNamesExclusively:1];
  [v6 setMatchPreferredName:0];
  if (a4)
  {
    [v6 setAccountIdentifier:a4];
    if (![objc_msgSend(v6 "sources")])
    {
      return 0;
    }
  }

  return v6;
}

+ (id)personPredicateWithSmartDialerStringLike:(id)a3 addressBook:(void *)a4
{
  v4 = [a1 personPredicateWithNameLike:a3 addressBook:a4];
  [v4 setMatchSmartDialerFormatsExclusively:1];
  return v4;
}

+ (id)personPredicateWithValue:(id)a3 comparison:(int64_t)a4 forProperty:(int)a5
{
  v5 = *&a5;
  v8 = objc_opt_new();
  [v8 setValue:a3];
  [v8 setProperty:v5];
  [v8 setComparison:a4];
  if (([v8 isValid] & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

+ (id)personPredicateWithAnyValueForProperty:(int)a3
{
  v3 = *&a3;
  v4 = objc_opt_new();
  [v4 setProperty:v3];
  if (([v4 isValid] & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

+ (id)personPredicateWithPhoneLike:(id)a3 countryHint:(id)a4 addressBook:(void *)a5
{
  v7 = objc_opt_new();
  [v7 setCountry:a4];
  [v7 setPhoneNumber:a3];
  if (([v7 isValid] & 1) == 0)
  {

    v7 = 0;
  }

  return v7;
}

+ (id)personPredicateWithGroup:(void *)a3 source:(void *)a4 account:(id)a5
{
  v8 = objc_opt_new();
  [v8 setGroup:a3];
  [v8 setStore:a4];
  [v8 setAccountIdentifier:a5];
  if (([v8 isValid] & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

+ (id)newQueryWithProperties:(id)a3 joins:(id)a4 whereString:(id)a5 sortOrder:(unsigned int)a6 rankString:(id)a7 groupByProperties:(id)a8 addressBook:(void *)a9 propertyIndices:(const __CFDictionary *)a10
{
  v38 = *MEMORY[0x1E69E9840];
  ColumnListWithAliasAndExtraColumns = CPRecordStoreCreateColumnListWithAliasAndExtraColumns();
  v17 = ColumnListWithAliasAndExtraColumns;
  if (a3)
  {
    [ColumnListWithAliasAndExtraColumns appendString:a3];
  }

  [v17 appendString:@" FROM ABPerson abp "];
  if (a4)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = [a4 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(a4);
          }

          [v17 appendString:*(*(&v33 + 1) + 8 * i)];
          [v17 appendString:@" "];
        }

        v19 = [a4 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v19);
    }
  }

  if (a5)
  {
    [v17 appendString:@"WHERE "];
    [v17 appendString:a5];
  }

  v22 = [a8 count];
  if (v22 >= 1)
  {
    v23 = v22;
    objc_msgSend(v17, "appendString:", @" GROUP BY (");
    for (j = 0; j != v23; ++j)
    {
      v25 = [a8 objectAtIndex:j];
      if (j >= 2)
      {
        [v17 appendString:{@", "}];
      }

      [v17 appendString:v25];
    }

    [v17 appendString:@""]);
  }

  if (a6 != -1)
  {
    if (a6)
    {
      v26 = @" ORDER BY LastSortLanguageIndex, LastSortSection, LastSort";
    }

    else
    {
      v26 = @" ORDER BY FirstSortLanguageIndex, FirstSortSection, FirstSort";
    }

    [v17 appendString:v26];
  }

  if ([a7 length])
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

    [v17 insertString:objc_msgSend(MEMORY[0x1E696AEC0] atIndex:{"stringWithFormat:", @"%@%@ DESC %@", v31, a7, v30), v29}];
  }

  return v17;
}

+ (id)newQueryFromABPredicate:(id)a3 withSortOrder:(unsigned int)a4 ranked:(BOOL)a5 addressBook:(void *)a6 propertyIndices:(const __CFDictionary *)a7
{
  v9 = a5;
  v10 = *&a4;
  v13 = [a3 _querySelectStringForPredicateIdentifier:0];
  v14 = [a3 queryJoinsInCompound:0 predicateIdentifier:0];
  v15 = [a3 queryWhereStringForPredicateIdentifier:0];
  if (v9)
  {
    v16 = [a3 queryRankStringForPredicateIdentifier:0];
  }

  else
  {
    v16 = 0;
  }

  return [a1 newQueryWithProperties:v13 joins:v14 whereString:v15 sortOrder:v10 rankString:v16 groupByProperties:objc_msgSend(a3 addressBook:"queryGroupByProperties") propertyIndices:{a6, a7}];
}

+ (id)newQueryFromCompoundPredicate:(id)a3 withSortOrder:(unsigned int)a4 ranked:(BOOL)a5 addressBook:(void *)a6 propertyIndices:(const __CFDictionary *)a7
{
  v61 = a5;
  v105 = *MEMORY[0x1E69E9840];
  ColumnListWithAliasAndExtraColumns = CPRecordStoreCreateColumnListWithAliasAndExtraColumns();
  v9 = [a3 compoundPredicateType];
  v10 = @" OR ";
  v11 = @" AND ";
  if (v9 != 1)
  {
    v11 = 0;
  }

  v12 = v9 == 2 || v9 == 1;
  if (v9 != 2)
  {
    v10 = v11;
  }

  v63 = v10;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = [a3 subpredicates];
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

  if (v61)
  {
    v35 = [MEMORY[0x1E696AD60] string];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v36 = [obj countByEnumeratingWithState:&v78 objects:v100 count:16];
    v64 = v35;
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
              [v35 appendString:@" + "];
            }

            [v35 appendString:v43];
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

        v46 = [*(*(&v74 + 1) + 8 * ii) queryGroupByProperties];
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v47 = [v46 countByEnumeratingWithState:&v70 objects:v98 count:16];
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
                objc_enumerationMutation(v46);
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

            v48 = [v46 countByEnumeratingWithState:&v70 objects:v98 count:16];
          }

          while (v48);
        }
      }

      v68 = [obj countByEnumeratingWithState:&v74 objects:v99 count:16];
    }

    while (v68);
  }

  if (a4 != -1)
  {
    if (a4)
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

+ (void)searchPeopleWithPredicate:(id)a3 sortOrder:(unsigned int)a4 ranked:(BOOL)a5 inAddressBook:(void *)a6 withDelegate:(id)a7
{
  v9 = a5;
  v10 = *&a4;
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [ABPredicate searchPeopleWithPredicate:a2 sortOrder:a1 ranked:? inAddressBook:? withDelegate:?];
      }
    }
  }

  [a3 ab_runPredicateWithSortOrder:v10 ranked:v9 inAddressBook:a6 withDelegate:a7];
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

- (id)_querySelectStringForPredicateIdentifier:(int)a3
{
  v3 = [(ABPredicate *)self querySelectPropertiesForPredicateIdentifier:*&a3];
  result = [v3 count];
  if (result)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", objc_msgSend(v3, "componentsJoinedByString:", @", ")];
  }

  return result;
}

- (void)bindString:(id)a3 toStatement:(CPSqliteStatement *)a4 withBindingOffset:(int *)a5
{
  v7 = _CPCreateUTF8StringFromCFString();
  v8 = sqlite3_bind_text(a4->var1, *a5, v7, -1, MEMORY[0x1E69E9B38]);
  ++*a5;
  if (v8)
  {
    ABDiagnosticsEnabled();
    _ABLog2(3, "[ABPredicate bindString:toStatement:withBindingOffset:]", 581, 0, @"Binding error at index %d", v9, v10, v11, *a5);
  }
}

- (void)ab_addCallbackContextToArray:(id)a3
{
  v5 = [(ABPredicate *)self callbackContext];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  [a3 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithNonretainedObject:", self)}];

  [a3 addObject:v5];
}

+ (uint64_t)searchPeopleWithPredicate:(uint64_t)a1 sortOrder:(uint64_t)a2 ranked:inAddressBook:withDelegate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"ABPredicate.m" lineNumber:490 description:@"Only address book specific predicates and compound predicates are supported"];
}

@end