@interface ABSQLPredicate
+ (id)_sqlListOfLength:(unint64_t)a3;
+ (id)_sqlValuesTableOfLength:(unint64_t)a3 columnCount:(unint64_t)a4;
+ (id)bindPlaceholderStringOfCount:(unint64_t)a3;
+ (id)predicateForAllContacts;
+ (id)predicateForContactsInContainerWithIdentifier:(id)a3;
+ (id)predicateForContactsInGroupWithIdentifier:(id)a3;
+ (id)predicateForContactsInRange:(_NSRange)a3 allowedStoreIdentifiers:(id)a4 sortOrder:(int)a5;
+ (id)predicateForContactsInRange:(_NSRange)a3 sortOrder:(int)a4;
+ (id)predicateForContactsMatchingMultivalueProperty:(int)a3 value:(id)a4;
+ (id)predicateForContactsMatchingMultivalueProperty:(int)a3 values:(id)a4 groupIdentifiers:(id)a5 containerIdentifiers:(id)a6 limitToOneResult:(BOOL)a7 map:(id)a8;
+ (id)predicateForContactsMatchingName:(id)a3 addressBook:(void *)a4;
+ (id)predicateForContactsMatchingOrganizationName:(id)a3;
+ (id)predicateForContactsMatchingPhoneNumber:(id)a3 country:(id)a4 homeCountryCode:(id)a5 prefixHint:(id)a6 groupIdentifiers:(id)a7 limitToOneResult:(BOOL)a8;
+ (id)predicateForContactsMatchingPhoneNumbers:(id)a3 containerIdentifiers:(id)a4 map:(id)a5;
+ (id)predicateForContactsMatchingPhoneNumbers:(id)a3 emailAddresses:(id)a4 containerIdentifiers:(id)a5 map:(id)a6;
+ (id)predicateForContactsMatchingPreferredChannel:(id)a3 limitOne:(BOOL)a4;
+ (id)predicateForContactsMatchingSmartDialerString:(id)a3 tokenizer:(__CFStringTokenizer *)a4 collator:(UCollator *)a5;
+ (id)predicateForContactsMatchingText:(id)a3 tokenizer:(__CFStringTokenizer *)a4 collator:(UCollator *)a5 matchNameFieldsOnly:(BOOL)a6;
+ (id)predicateForContactsMissingBackgroundColors;
+ (id)predicateForContactsWithExternalIdentifiers:(id)a3;
+ (id)predicateForContactsWithExternalUUIDs:(id)a3;
+ (id)predicateForContactsWithLegacyIdentifier:(int)a3;
+ (id)predicateForContactsWithUUIDs:(id)a3 ignoreUnifiedIdentifiers:(BOOL)a4;
+ (id)predicateForContactsWithWallpaperMetadata;
+ (id)predicateForMeContact;
+ (id)predicateForNoContacts;
+ (id)predicateForSingleContactMatchingMultivalueProperty:(int)a3 value:(id)a4;
+ (id)predicateUnioningPredicate:(id)a3 withPredicate:(id)a4;
- (void)dealloc;
@end

@implementation ABSQLPredicate

+ (id)predicateForMeContact
{
  v2 = objc_opt_new();
  [v2 setQuery:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT MeIdentifier from ABStore where ROWID = (SELECT value from _SqliteDatabaseProperties where key = '%@')", @"MeSourceID"}];

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ABSQLPredicate;
  [(ABSQLPredicate *)&v3 dealloc];
}

+ (id)predicateForAllContacts
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)bindPlaceholderStringOfCount:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD60] string];
  if (a3)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        v6 = @", ?";
      }

      else
      {
        v6 = @"?";
      }

      [v4 appendString:v6];
      ++v5;
    }

    while (a3 != v5);
  }

  return v4;
}

+ (id)predicateForNoContacts
{
  v2 = objc_opt_new();
  [v2 setQuery:@" "];
  [v2 setIsNullPredicate:1];

  return v2;
}

+ (id)predicateForContactsWithUUIDs:(id)a3 ignoreUnifiedIdentifiers:(BOOL)a4
{
  v4 = a4;
  v7 = objc_opt_new();
  v8 = [a1 bindPlaceholderStringOfCount:{objc_msgSend(a3, "count")}];
  if (v4)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT rowid FROM ABPerson WHERE guid IN(%@)", v8, v11];
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT rowid FROM(SELECT abp.ROWID FROM ABPerson abp LEFT JOIN ABPersonLink abpl ON abpl.rowid = abp.personlink WHERE abpl.guid IN(%@) UNION SELECT abp.ROWID FROM ABPerson abp  WHERE abp.guid IN(%@))", v8, v8];
  }

  [v7 setQuery:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__ABSQLPredicate_predicateForContactsWithUUIDs_ignoreUnifiedIdentifiers___block_invoke;
  v12[3] = &unk_1E7CCD1A8;
  v12[4] = a3;
  v13 = v4;
  [v7 setBindBlock:v12];
  return v7;
}

uint64_t __73__ABSQLPredicate_predicateForContactsWithUUIDs_ignoreUnifiedIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = *(a1 + 32);
  result = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = [a2 stringBinder];
        (*(v10 + 16))(v10, v9);
        ++v8;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      v6 = result;
    }

    while (result);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = *(a1 + 32);
    result = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (result)
    {
      v12 = result;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          v16 = [a2 stringBinder];
          (*(v16 + 16))(v16, v15);
          ++v14;
        }

        while (v12 != v14);
        result = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
        v12 = result;
      }

      while (result);
    }
  }

  return result;
}

+ (id)predicateForContactsWithLegacyIdentifier:(int)a3
{
  v4 = objc_opt_new();
  [v4 setQuery:@"SELECT rowid FROM ABPerson WHERE rowid = ?"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__ABSQLPredicate_predicateForContactsWithLegacyIdentifier___block_invoke;
  v6[3] = &__block_descriptor_36_e19_v16__0__ABBinders_8l;
  v7 = a3;
  [v4 setBindBlock:v6];
  return v4;
}

uint64_t __59__ABSQLPredicate_predicateForContactsWithLegacyIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *([a2 intBinder] + 16);

  return v2();
}

+ (id)predicateForContactsMatchingName:(id)a3 addressBook:(void *)a4
{
  SearchCollator = ABAddressBookGetSearchCollator(a4);
  WordTokenizer = ABAddressBookGetWordTokenizer(a4);
  v8 = 0;
  v15 = 0;
  if (SearchCollator && WordTokenizer)
  {
    v9 = ABCCreateArrayOfTokenizationsBySeparatingWordsInCompositeName(WordTokenizer, a3, 1);
    if (-[__CFArray count](v9, "count") && (v14 = 0, v10 = [MEMORY[0x1E696AD60] stringWithString:@"SELECT abp.ROWID FROM ABPersonSearchKey abs JOIN ABPerson abp ON abs.person_id = abp.ROWID WHERE "], appendTokenizations(a3, v9, SearchCollator, v10, &v14, &v15, 0, 0), v15 >= 1))
    {
      v11 = objc_opt_new();
      [v11 setTokenizationSortKeys:v14];
      v8 = objc_opt_new();
      [v8 setQuery:v10];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __63__ABSQLPredicate_predicateForContactsMatchingName_addressBook___block_invoke;
      v13[3] = &unk_1E7CCD1F0;
      v13[4] = v11;
      [v8 setBindBlock:v13];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

uint64_t __63__ABSQLPredicate_predicateForContactsMatchingName_addressBook___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) tokenizationSortKeys];
  result = CFArrayGetCount(v3);
  if (result >= 2)
  {
    v5 = 0;
    v6 = result / 2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, 2 * v5);
      result = CFArrayGetValueAtIndex(v3, (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL)) | 1);
      if (ValueAtIndex >= 1)
      {
        v8 = result;
        do
        {
          v9 = *v8++;
          v10 = [a2 blobBinder];
          v11 = strlen(v9);
          result = (*(v10 + 16))(v10, v9, v11);
          --ValueAtIndex;
        }

        while (ValueAtIndex);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

+ (id)predicateForContactsInGroupWithIdentifier:(id)a3
{
  v4 = objc_opt_new();
  [v4 setQuery:@"SELECT abp.rowid from ABPerson abp JOIN ABGroupMembers abgm ON abgm.member_id = abp.ROWID AND abgm.member_type = 0 JOIN ABGroup abg ON abgm.group_id = abg.ROWID WHERE abg.guid = ?"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__ABSQLPredicate_predicateForContactsInGroupWithIdentifier___block_invoke;
  v6[3] = &unk_1E7CCD1F0;
  v6[4] = a3;
  [v4 setBindBlock:v6];
  return v4;
}

uint64_t __60__ABSQLPredicate_predicateForContactsInGroupWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *([a2 stringBinder] + 16);

  return v2();
}

+ (id)predicateForContactsInContainerWithIdentifier:(id)a3
{
  v4 = objc_opt_new();
  [v4 setQuery:@"SELECT abp.rowid FROM ABPerson abp JOIN ABStore abs ON abp.storeid = abs.ROWID WHERE abs.guid = ?"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__ABSQLPredicate_predicateForContactsInContainerWithIdentifier___block_invoke;
  v6[3] = &unk_1E7CCD1F0;
  v6[4] = a3;
  [v4 setBindBlock:v6];
  return v4;
}

uint64_t __64__ABSQLPredicate_predicateForContactsInContainerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *([a2 stringBinder] + 16);

  return v2();
}

+ (id)predicateForContactsMatchingMultivalueProperty:(int)a3 value:(id)a4
{
  v6 = objc_opt_new();
  [v6 setQuery:@"SELECT abp.rowid FROM ABPerson abp WHERE abp.rowid IN (SELECT record_id FROM ABMultiValue WHERE property = ? AND value LIKE ?)"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__ABSQLPredicate_predicateForContactsMatchingMultivalueProperty_value___block_invoke;
  v8[3] = &unk_1E7CCD218;
  v9 = a3;
  v8[4] = a4;
  [v6 setBindBlock:v8];
  return v6;
}

uint64_t __71__ABSQLPredicate_predicateForContactsMatchingMultivalueProperty_value___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 intBinder];
  (*(v4 + 16))(v4, *(a1 + 40));
  v5 = *([a2 stringBinder] + 16);

  return v5();
}

+ (id)predicateForSingleContactMatchingMultivalueProperty:(int)a3 value:(id)a4
{
  v6 = objc_opt_new();
  [v6 setQuery:@"SELECT abp.rowid FROM ABPerson abp WHERE abp.rowid IN (SELECT record_id FROM ABMultiValue WHERE property = ? AND value COLLATE NOCASE = ? LIMIT 1)"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__ABSQLPredicate_predicateForSingleContactMatchingMultivalueProperty_value___block_invoke;
  v8[3] = &unk_1E7CCD218;
  v9 = a3;
  v8[4] = a4;
  [v6 setBindBlock:v8];
  return v6;
}

uint64_t __76__ABSQLPredicate_predicateForSingleContactMatchingMultivalueProperty_value___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 intBinder];
  (*(v4 + 16))(v4, *(a1 + 40));
  v5 = *([a2 stringBinder] + 16);

  return v5();
}

+ (id)predicateForContactsMatchingOrganizationName:(id)a3
{
  result = [a3 length];
  if (result)
  {
    v5 = objc_opt_new();
    [v5 setQuery:@"SELECT abp.rowid FROM ABPerson abp WHERE abp.Organization LIKE ?"];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__ABSQLPredicate_predicateForContactsMatchingOrganizationName___block_invoke;
    v6[3] = &unk_1E7CCD1F0;
    v6[4] = a3;
    [v5 setBindBlock:v6];
    return v5;
  }

  return result;
}

uint64_t __63__ABSQLPredicate_predicateForContactsMatchingOrganizationName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stringBinder];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%%%@%%", *(a1 + 32)];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

+ (id)predicateForContactsInRange:(_NSRange)a3 sortOrder:(int)a4
{
  length = a3.length;
  location = a3.location;
  v7 = objc_opt_new();
  v8 = @" ORDER BY LastSortLanguageIndex, LastSortSection, LastSort";
  if (!a4)
  {
    v8 = @" ORDER BY FirstSortLanguageIndex, FirstSortSection, FirstSort";
  }

  [v7 setQuery:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT abp.rowid FROM ABPerson abp WHERE abp.IsPreferredName = 1 %@ LIMIT ? OFFSET ?", v8)}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__ABSQLPredicate_predicateForContactsInRange_sortOrder___block_invoke;
  v10[3] = &__block_descriptor_48_e19_v16__0__ABBinders_8l;
  v10[4] = location;
  v10[5] = length;
  [v7 setBindBlock:v10];
  return v7;
}

uint64_t __56__ABSQLPredicate_predicateForContactsInRange_sortOrder___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 intBinder];
  (*(v4 + 16))(v4, *(a1 + 40));
  v5 = *([a2 intBinder] + 16);

  return v5();
}

+ (id)_sqlListOfLength:(unint64_t)a3
{
  v4 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
  if (a3)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        v6 = @",?";
      }

      else
      {
        v6 = @"?";
      }

      [v4 appendString:v6];
      ++v5;
    }

    while (a3 != v5);
  }

  [v4 appendString:@""]);
  return v4;
}

+ (id)_sqlValuesTableOfLength:(unint64_t)a3 columnCount:(unint64_t)a4
{
  if (!a3)
  {
    return @"SELECT 1 WHERE 1 = 0";
  }

  v7 = [MEMORY[0x1E696AD60] stringWithString:@"VALUES "];
  v8 = [a1 _sqlListOfLength:a4];
  v9 = 0;
  do
  {
    if (v9)
    {
      [v7 appendString:{@", "}];
    }

    [v7 appendString:v8];
    ++v9;
  }

  while (a3 != v9);
  return v7;
}

+ (id)predicateForContactsInRange:(_NSRange)a3 allowedStoreIdentifiers:(id)a4 sortOrder:(int)a5
{
  length = a3.length;
  location = a3.location;
  v10 = objc_opt_new();
  v11 = [a1 _sqlListOfLength:{objc_msgSend(a4, "count")}];
  v12 = @" ORDER BY FirstSortLanguageIndex, FirstSortSection, FirstSort";
  if (a5)
  {
    v12 = @" ORDER BY LastSortLanguageIndex, LastSortSection, LastSort";
  }

  v13 = [MEMORY[0x1E696AD60] stringWithFormat:@"SELECT rowid FROM ABPerson WHERE rowid IN (SELECT rowid FROM ABPerson WHERE personlink = -1 AND StoreID IN %@ UNION SELECT ab_allowed_preferred_contact(abp.rowid, abp.StoreID, abp.IsPreferredName, ?) FROM ABPerson abp JOIN ABPersonLink abpl ON abpl.rowid = abp.PersonLink WHERE abp.StoreID IN %@ GROUP BY abpl.rowid) %@ LIMIT ? OFFSET ? ", v11, v11, v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__ABSQLPredicate_predicateForContactsInRange_allowedStoreIdentifiers_sortOrder___block_invoke;
  v15[3] = &unk_1E7CCD288;
  v15[4] = a4;
  v15[5] = location;
  v15[6] = length;
  [v10 setBindBlock:v15];
  [v10 setQuery:v13];
  return v10;
}

uint64_t __80__ABSQLPredicate_predicateForContactsInRange_allowedStoreIdentifiers_sortOrder___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__ABSQLPredicate_predicateForContactsInRange_allowedStoreIdentifiers_sortOrder___block_invoke_2;
  v11[3] = &unk_1E7CCD260;
  v11[4] = a2;
  [v4 enumerateIndexesUsingBlock:v11];
  v5 = [a2 blobBinder];
  (*(v5 + 16))(v5, *(a1 + 32), 8);
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__ABSQLPredicate_predicateForContactsInRange_allowedStoreIdentifiers_sortOrder___block_invoke_3;
  v10[3] = &unk_1E7CCD260;
  v10[4] = a2;
  [v6 enumerateIndexesUsingBlock:v10];
  v7 = [a2 intBinder];
  (*(v7 + 16))(v7, *(a1 + 48));
  v8 = [a2 intBinder];
  return (*(v8 + 16))(v8, *(a1 + 40));
}

uint64_t __80__ABSQLPredicate_predicateForContactsInRange_allowedStoreIdentifiers_sortOrder___block_invoke_2(uint64_t a1)
{
  v1 = *([*(a1 + 32) intBinder] + 16);

  return v1();
}

uint64_t __80__ABSQLPredicate_predicateForContactsInRange_allowedStoreIdentifiers_sortOrder___block_invoke_3(uint64_t a1)
{
  v1 = *([*(a1 + 32) intBinder] + 16);

  return v1();
}

+ (id)predicateForContactsMatchingPhoneNumber:(id)a3 country:(id)a4 homeCountryCode:(id)a5 prefixHint:(id)a6 groupIdentifiers:(id)a7 limitToOneResult:(BOOL)a8
{
  if (!a3)
  {
    return 0;
  }

  v8 = a8;
  result = _PNCopyLastFourDigitsOfLocalNumber();
  if (result)
  {
    v16 = result;
    result = [result length];
    if (result)
    {
      v17 = objc_opt_new();
      v18 = &stru_1F2FE2718;
      if (v8)
      {
        v19 = @"LIMIT 1";
      }

      else
      {
        v19 = &stru_1F2FE2718;
      }

      v20 = 0x1E696A000uLL;
      if (a7)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AND groups.guid in %@", objc_msgSend(a1, "_sqlListOfLength:", objc_msgSend(a7, "count"))];
        v20 = 0x1E696A000;
        v18 = @"JOIN ABGroupMembers members ON members.member_id = abmv.record_id AND member_type = 0 JOIN ABGroup groups on groups.rowid = members.group_id";
      }

      else
      {
        v21 = &stru_1F2FE2718;
      }

      [v17 setQuery:{objc_msgSend(*(v20 + 3776), "stringWithFormat:", @"WITH PhoneRanked (personrow, phonescore) as (SELECT abmv.record_id, ab_compare_phone_numbers( ?, ?, abmv.value, ?) FROM ABMultivalue abmv %@ WHERE abmv.UID IN (SELECT multivalue_id FROM ABPhoneLastFour WHERE value = ?) %@) SELECT personrow FROM PhoneRanked WHERE phonescore %@ %@", v18, v21, @"= MAX(1, (SELECT max(phonescore) FROM PhoneRanked))", v19)}];
      v22 = -[ABPhoneNumber initWithPhoneNumberString:countryCode:]([ABPhoneNumber alloc], "initWithPhoneNumberString:countryCode:", a3, [a4 lowercaseString]);
      if (!a5)
      {
        v23 = CPPhoneNumberCopyHomeCountryCode();
        a5 = CFAutorelease(v23);
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __127__ABSQLPredicate_predicateForContactsMatchingPhoneNumber_country_homeCountryCode_prefixHint_groupIdentifiers_limitToOneResult___block_invoke;
      v24[3] = &unk_1E7CCD2D8;
      v24[4] = v22;
      v24[5] = a6;
      v24[6] = a5;
      v24[7] = v16;
      v24[8] = a7;
      [v17 setBindBlock:v24];

      return v17;
    }
  }

  return result;
}

uint64_t __127__ABSQLPredicate_predicateForContactsMatchingPhoneNumber_country_homeCountryCode_prefixHint_groupIdentifiers_limitToOneResult___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 pointerBinder];
  (*(v4 + 16))(v4, [*(a1 + 32) decomposedPhoneNumberPointer]);
  v5 = [a2 stringBinder];
  (*(v5 + 16))(v5, *(a1 + 40));
  v6 = [a2 blobBinder];
  (*(v6 + 16))(v6, *(a1 + 48), 8);
  v7 = [a2 stringBinder];
  (*(v7 + 16))(v7, *(a1 + 56));
  v8 = *(a1 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __127__ABSQLPredicate_predicateForContactsMatchingPhoneNumber_country_homeCountryCode_prefixHint_groupIdentifiers_limitToOneResult___block_invoke_2;
  v10[3] = &unk_1E7CCD2B0;
  v10[4] = a2;
  return [v8 enumerateObjectsUsingBlock:v10];
}

uint64_t __127__ABSQLPredicate_predicateForContactsMatchingPhoneNumber_country_homeCountryCode_prefixHint_groupIdentifiers_limitToOneResult___block_invoke_2(uint64_t a1)
{
  v1 = *([*(a1 + 32) stringBinder] + 16);

  return v1();
}

+ (id)predicateForContactsMatchingPhoneNumbers:(id)a3 containerIdentifiers:(id)a4 map:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  result = [a3 count];
  if (result)
  {
    v26 = a5;
    cf = CPPhoneNumberCopyHomeCountryCode();
    v10 = [cf lowercaseString];
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a3, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [a3 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(a3);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [[ABPhoneNumber alloc] initWithPhoneNumberString:v16 countryCode:v10];
          if (v17)
          {
            v18 = v17;
            [v11 setObject:v17 forKey:v16];
          }
        }

        v13 = [a3 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    v19 = objc_opt_new();
    if (v26)
    {
      v20 = @"ab_collect_value_row_map(?, ABQuery.term, abmv.record_id)";
    }

    else
    {
      v20 = @"abmv.record_id";
    }

    if (a4)
    {
      v21 = a1;
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AND store.guid in %@", objc_msgSend(a1, "_sqlListOfLength:", objc_msgSend(a4, "count"))];
      v23 = @"JOIN ABPerson person ON person.ROWID = abmv.record_id JOIN ABStore store ON store.ROWID = person.storeID";
    }

    else
    {
      v22 = &stru_1F2FE2718;
      v23 = &stru_1F2FE2718;
      v21 = a1;
    }

    v24 = [v21 _sqlValuesTableOfLength:objc_msgSend(v11 columnCount:{"count"), 3}];
    [v19 setQuery:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"WITH ABQuery(term, termlastfour, termdecomposed) AS(%@) SELECT %@ FROM ABPhoneLastFour four JOIN ABQuery on ABQuery.termlastfour = four.value JOIN ABMultiValue abmv on abmv.rowid = four.multivalue_id %@ where ab_compare_phone_numbers(ABQuery.termdecomposed, null, abmv.value, ?) %@", v24, v20, v23, v22)}];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __84__ABSQLPredicate_predicateForContactsMatchingPhoneNumbers_containerIdentifiers_map___block_invoke;
    v27[3] = &unk_1E7CCD328;
    v27[4] = v11;
    v27[5] = v26;
    v27[6] = v10;
    v27[7] = a4;
    [v19 setBindBlock:v27];
    if (cf)
    {
      CFRelease(cf);
    }

    return v19;
  }

  return result;
}

uint64_t __84__ABSQLPredicate_predicateForContactsMatchingPhoneNumbers_containerIdentifiers_map___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__ABSQLPredicate_predicateForContactsMatchingPhoneNumbers_containerIdentifiers_map___block_invoke_2;
  v18[3] = &unk_1E7CCD300;
  v18[4] = a2;
  [v4 enumerateKeysAndObjectsUsingBlock:v18];
  if (a1[5])
  {
    v5 = [a2 blobBinder];
    (*(v5 + 16))(v5, a1[5], 8);
  }

  v6 = [a2 blobBinder];
  (*(v6 + 16))(v6, a1[6], 8);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = a1[7];
  result = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [a2 stringBinder];
        (*(v13 + 16))(v13, v12);
        ++v11;
      }

      while (v9 != v11);
      result = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      v9 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __84__ABSQLPredicate_predicateForContactsMatchingPhoneNumbers_containerIdentifiers_map___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [*(a1 + 32) stringBinder];
  (*(v6 + 16))(v6, a2);
  v7 = [*(a1 + 32) stringBinder];
  (*(v7 + 16))(v7, [a3 lastFour]);
  v8 = [*(a1 + 32) pointerBinder];
  v9 = [a3 decomposedPhoneNumberPointer];
  v10 = *(v8 + 16);

  return v10(v8, v9);
}

+ (id)predicateForContactsMatchingMultivalueProperty:(int)a3 values:(id)a4 groupIdentifiers:(id)a5 containerIdentifiers:(id)a6 limitToOneResult:(BOOL)a7 map:(id)a8
{
  v8 = a7;
  v13 = objc_opt_new();
  v14 = [a1 _sqlValuesTableOfLength:objc_msgSend(a4 columnCount:{"count"), 1}];
  v15 = 0x1E696A000uLL;
  if (a5)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AND groups.guid in %@", objc_msgSend(a1, "_sqlListOfLength:", objc_msgSend(a5, "count"))];
    v17 = @"JOIN ABGroupMembers members ON members.member_id = abmv.record_id AND member_type = 0 JOIN ABGroup groups on groups.rowid = members.group_id";
  }

  else
  {
    v17 = &stru_1F2FE2718;
    v16 = &stru_1F2FE2718;
  }

  v18 = &stru_1F2FE2718;
  if (a6)
  {
    v19 = v13;
    v20 = a5;
    v21 = v14;
    v22 = a4;
    v23 = v8;
    v24 = MEMORY[0x1E696AEC0];
    v25 = v17;
    v32 = [a1 _sqlListOfLength:{objc_msgSend(a6, "count")}];
    v26 = v24;
    v8 = v23;
    a4 = v22;
    v14 = v21;
    a5 = v20;
    v13 = v19;
    v15 = 0x1E696A000;
    v27 = [v26 stringWithFormat:@"AND store.guid in %@", v32];
    v18 = &stru_1F2FE2718;
    v17 = v25;
    v28 = @"JOIN ABPerson person ON person.ROWID = abmv.record_id JOIN ABStore store ON store.ROWID = person.storeID";
  }

  else
  {
    v28 = &stru_1F2FE2718;
    v27 = &stru_1F2FE2718;
  }

  v29 = @"ab_collect_value_row_map(?, ABQuery.term, abmv.record_id)";
  if (v8)
  {
    v18 = @"LIMIT 1";
  }

  if (!a8)
  {
    v29 = @"abmv.record_id";
  }

  v30 = [*(v15 + 3776) stringWithFormat:@"WITH ABQuery(term) AS(%@) SELECT %@ FROM ABMultivalue abmv JOIN ABQuery ON term = value collate nocase %@ %@ WHERE property = ? %@ %@ %@", v14, v29, v17, v28, v16, v27, v18];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __131__ABSQLPredicate_predicateForContactsMatchingMultivalueProperty_values_groupIdentifiers_containerIdentifiers_limitToOneResult_map___block_invoke;
  v35[3] = &unk_1E7CCD350;
  v35[4] = a4;
  v35[5] = a8;
  v36 = a3;
  v35[6] = a5;
  v35[7] = a6;
  [v13 setBindBlock:v35];
  [v13 setQuery:v30];
  return v13;
}

uint64_t __131__ABSQLPredicate_predicateForContactsMatchingMultivalueProperty_values_groupIdentifiers_containerIdentifiers_limitToOneResult_map___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __131__ABSQLPredicate_predicateForContactsMatchingMultivalueProperty_values_groupIdentifiers_containerIdentifiers_limitToOneResult_map___block_invoke_2;
  v12[3] = &unk_1E7CCD2B0;
  v12[4] = a2;
  [v4 enumerateObjectsUsingBlock:v12];
  if (*(a1 + 40))
  {
    v5 = [a2 blobBinder];
    (*(v5 + 16))(v5, *(a1 + 40), 8);
  }

  v6 = [a2 intBinder];
  (*(v6 + 16))(v6, *(a1 + 64));
  v7 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __131__ABSQLPredicate_predicateForContactsMatchingMultivalueProperty_values_groupIdentifiers_containerIdentifiers_limitToOneResult_map___block_invoke_3;
  v11[3] = &unk_1E7CCD2B0;
  v11[4] = a2;
  [v7 enumerateObjectsUsingBlock:v11];
  v8 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __131__ABSQLPredicate_predicateForContactsMatchingMultivalueProperty_values_groupIdentifiers_containerIdentifiers_limitToOneResult_map___block_invoke_4;
  v10[3] = &unk_1E7CCD2B0;
  v10[4] = a2;
  return [v8 enumerateObjectsUsingBlock:v10];
}

uint64_t __131__ABSQLPredicate_predicateForContactsMatchingMultivalueProperty_values_groupIdentifiers_containerIdentifiers_limitToOneResult_map___block_invoke_2(uint64_t a1)
{
  v1 = *([*(a1 + 32) stringBinder] + 16);

  return v1();
}

uint64_t __131__ABSQLPredicate_predicateForContactsMatchingMultivalueProperty_values_groupIdentifiers_containerIdentifiers_limitToOneResult_map___block_invoke_3(uint64_t a1)
{
  v1 = *([*(a1 + 32) stringBinder] + 16);

  return v1();
}

uint64_t __131__ABSQLPredicate_predicateForContactsMatchingMultivalueProperty_values_groupIdentifiers_containerIdentifiers_limitToOneResult_map___block_invoke_4(uint64_t a1)
{
  v1 = *([*(a1 + 32) stringBinder] + 16);

  return v1();
}

+ (id)predicateForContactsMatchingPreferredChannel:(id)a3 limitOne:(BOOL)a4
{
  v4 = a4;
  v6 = objc_opt_new();
  v7 = &stru_1F2FE2718;
  if (v4)
  {
    v7 = @"LIMIT 1";
  }

  [v6 setQuery:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT abp.rowid FROM ABPerson abp WHERE abp.PreferredChannel = ? %@", v7)}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__ABSQLPredicate_predicateForContactsMatchingPreferredChannel_limitOne___block_invoke;
  v9[3] = &unk_1E7CCD1F0;
  v9[4] = a3;
  [v6 setBindBlock:v9];
  return v6;
}

uint64_t __72__ABSQLPredicate_predicateForContactsMatchingPreferredChannel_limitOne___block_invoke(uint64_t a1, void *a2)
{
  v2 = *([a2 stringBinder] + 16);

  return v2();
}

+ (id)predicateForContactsMatchingPhoneNumbers:(id)a3 emailAddresses:(id)a4 containerIdentifiers:(id)a5 map:(id)a6
{
  if ([a3 count] || (result = objc_msgSend(a4, "count")) != 0)
  {
    v12 = objc_opt_new();
    if ([a3 count])
    {
      v13 = [a1 predicateForContactsMatchingPhoneNumbers:a3 containerIdentifiers:a5 map:a6];
      if (![a4 count])
      {
        v14 = 0;
LABEL_10:
        if (v13)
        {
          v16 = [v13 query];
          goto LABEL_12;
        }

LABEL_13:
        v17 = [v14 query];
        v13 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      if (![a4 count])
      {
        goto LABEL_13;
      }
    }

    v15 = [a1 predicateForContactsMatchingMultivalueProperty:kABPersonEmailProperty values:a4 groupIdentifiers:0 containerIdentifiers:a5 limitToOneResult:0 map:a6];
    v14 = v15;
    if (v13 && v15)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT * FROM (%@) UNION SELECT * FROM  (%@)", objc_msgSend(v13, "query"), objc_msgSend(v15, "query")];
LABEL_12:
      v17 = v16;
LABEL_14:
      [v12 setQuery:v17];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __99__ABSQLPredicate_predicateForContactsMatchingPhoneNumbers_emailAddresses_containerIdentifiers_map___block_invoke;
      v19[3] = &unk_1E7CCD378;
      v19[4] = v13;
      v19[5] = v14;
      [v12 setBindBlock:v19];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __99__ABSQLPredicate_predicateForContactsMatchingPhoneNumbers_emailAddresses_containerIdentifiers_map___block_invoke_2;
      v18[3] = &unk_1E7CCD3A0;
      v18[4] = a6;
      [v12 setMatchInfoProvider:v18];
      return v12;
    }

    goto LABEL_10;
  }

  return result;
}

void *__99__ABSQLPredicate_predicateForContactsMatchingPhoneNumbers_emailAddresses_containerIdentifiers_map___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 bindBlock];
    (*(v5 + 16))(v5, a2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *([result bindBlock] + 16);

    return v7();
  }

  return result;
}

void *__99__ABSQLPredicate_predicateForContactsMatchingPhoneNumbers_emailAddresses_containerIdentifiers_map___block_invoke_2(uint64_t a1, int a2)
{
  result = NSMapGet(*(a1 + 32), a2);
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E695DF20];

    return [v4 dictionaryWithObject:v3 forKey:@"matchedTerms"];
  }

  return result;
}

+ (id)predicateForContactsMatchingText:(id)a3 tokenizer:(__CFStringTokenizer *)a4 collator:(UCollator *)a5 matchNameFieldsOnly:(BOOL)a6
{
  v6 = a6;
  v10 = objc_opt_new();
  v11 = ABTokenListCreate();
  ABTokenListPopulateFromString(v11, a4, a5, a3, 0, 1, 0);
  v12 = [MEMORY[0x1E695DF70] array];
  Count = ABTokenListGetCount(v11);
  v14 = [@"SELECT rowid from ABPersonFullTextSearch WHERE ABPersonFullTextSearch MATCH " mutableCopy];
  [v10 setQuery:v14];

  if (Count < 1)
  {
    if (v6)
    {
      v18 = @"'";
      [v14 appendString:@"'"];
      goto LABEL_18;
    }

LABEL_17:
    v18 = @"?";
    goto LABEL_18;
  }

  for (i = 0; i != Count; ++i)
  {
    [v12 addObject:{ABTokenListGetTokenAtIndex(v11, i)}];
  }

  if (!v6)
  {
    goto LABEL_17;
  }

  [v14 appendString:@"'"];
  v20 = v6;
  v21 = v10;
  for (j = 0; j != Count; ++j)
  {
    if (j)
    {
      [v14 appendString:@" AND "];
    }

    objc_msgSend(v14, "appendString:", @"(");
    v17 = 0;
    while (1)
    {
      do
      {
        [v14 appendString:FTSearchNameOnlyProperties[v17]];
        [v14 appendString:@":' || ? || '"];
        ++v17;
      }

      while (!v17);
      if (v17 == 15)
      {
        break;
      }

      [v14 appendString:@" OR "];
    }

    [v14 appendString:@""]);
  }

  v10 = v21;
  LOBYTE(v6) = v20;
  v18 = @"'";
LABEL_18:
  [v14 appendString:v18];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90__ABSQLPredicate_predicateForContactsMatchingText_tokenizer_collator_matchNameFieldsOnly___block_invoke;
  v22[3] = &unk_1E7CCD1A8;
  v23 = v6;
  v22[4] = v12;
  [v10 setBindBlock:v22];
  CFRelease(v11);
  return v10;
}

uint64_t __90__ABSQLPredicate_predicateForContactsMatchingText_tokenizer_collator_matchNameFieldsOnly___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = *(a1 + 32);
    result = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [MEMORY[0x1E696AD60] stringWithFormat:@"##&%@* ", *(*(&v19 + 1) + 8 * v8)];
          v10 = 15;
          do
          {
            v11 = [a2 stringBinder];
            (*(v11 + 16))(v11, v9);
            --v10;
          }

          while (v10);
          ++v8;
        }

        while (v8 != v6);
        result = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AD60] string];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = *(a1 + 32);
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v12 appendFormat:@"##&%@* ", *(*(&v23 + 1) + 8 * i)];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    v18 = [a2 stringBinder];
    return (*(v18 + 16))(v18, v12);
  }

  return result;
}

+ (id)predicateForContactsMatchingSmartDialerString:(id)a3 tokenizer:(__CFStringTokenizer *)a4 collator:(UCollator *)a5
{
  v8 = objc_opt_new();
  v9 = ABTokenListCreate();
  ABTokenListPopulateFromString(v9, a4, a5, a3, 0, 1, 0);
  v10 = [MEMORY[0x1E695DF70] array];
  Count = ABTokenListGetCount(v9);
  v12 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
  v13 = @"ab_cf_tokenizer_sd_match_collect(?, matchinfo(ABPersonSmartDialerFullTextSearch), ?, rowid)";
  v14 = @"rowid";
  if (v12)
  {
    v14 = @"ab_cf_tokenizer_match_collect(?, matchinfo(ABPersonFullTextSearch), ?, rowid)";
  }

  else
  {
    v13 = @"rowid";
  }

  [v8 setQuery:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT %@ from ABPersonSmartDialerFullTextSearch WHERE ABPersonSmartDialerFullTextSearch MATCH ? UNION SELECT %@ from ABPersonFullTextSearch WHERE ABPersonFullTextSearch.Phone MATCH ? ", v13, v14)}];
  v15 = [MEMORY[0x1E696AD60] string];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      TokenAtIndex = ABTokenListGetTokenAtIndex(v9, i);
      [v15 appendFormat:@"##&%@* ", TokenAtIndex];
      [v10 addObject:TokenAtIndex];
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__ABSQLPredicate_predicateForContactsMatchingSmartDialerString_tokenizer_collator___block_invoke;
  v20[3] = &unk_1E7CCD448;
  v20[4] = v12;
  v20[5] = v10;
  v20[6] = v15;
  [v8 setBindBlock:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__ABSQLPredicate_predicateForContactsMatchingSmartDialerString_tokenizer_collator___block_invoke_2;
  v19[3] = &unk_1E7CCD3A0;
  v19[4] = v12;
  [v8 setMatchInfoProvider:v19];
  CFRelease(v9);
  return v8;
}

uint64_t __83__ABSQLPredicate_predicateForContactsMatchingSmartDialerString_tokenizer_collator___block_invoke(void *a1, void *a2)
{
  v4 = [a2 blobBinder];
  (*(v4 + 16))(v4, a1[4], 8);
  v5 = [a2 blobBinder];
  (*(v5 + 16))(v5, a1[5], 8);
  v6 = [a2 stringBinder];
  (*(v6 + 16))(v6, a1[6]);
  v7 = [a2 blobBinder];
  (*(v7 + 16))(v7, a1[4], 8);
  v8 = [a2 blobBinder];
  (*(v8 + 16))(v8, a1[5], 8);
  v9 = *([a2 stringBinder] + 16);

  return v9();
}

void *__83__ABSQLPredicate_predicateForContactsMatchingSmartDialerString_tokenizer_collator___block_invoke_2(uint64_t a1, int a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  result = NSMapGet(*(a1 + 32), a2);
  if (result)
  {
    v3 = @"matchedProperties";
    v4[0] = result;
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  }

  return result;
}

+ (id)predicateForContactsWithExternalUUIDs:(id)a3
{
  v5 = objc_opt_new();
  v6 = [a1 bindPlaceholderStringOfCount:{objc_msgSend(a3, "count")}];
  [v5 setQuery:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT rowid FROM ABPerson WHERE ExternalUUID IN(%@)", v6)}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ABSQLPredicate_predicateForContactsWithExternalUUIDs___block_invoke;
  v8[3] = &unk_1E7CCD1F0;
  v8[4] = a3;
  [v5 setBindBlock:v8];
  return v5;
}

uint64_t __56__ABSQLPredicate_predicateForContactsWithExternalUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  result = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [a2 stringBinder];
        (*(v9 + 16))(v9, v8);
        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

+ (id)predicateForContactsWithExternalIdentifiers:(id)a3
{
  v5 = objc_opt_new();
  v6 = [a1 bindPlaceholderStringOfCount:{objc_msgSend(a3, "count")}];
  [v5 setQuery:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT rowid FROM ABPerson WHERE ExternalIdentifier IN(%@)", v6)}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__ABSQLPredicate_predicateForContactsWithExternalIdentifiers___block_invoke;
  v8[3] = &unk_1E7CCD1F0;
  v8[4] = a3;
  [v5 setBindBlock:v8];
  return v5;
}

uint64_t __62__ABSQLPredicate_predicateForContactsWithExternalIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  result = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [a2 stringBinder];
        (*(v9 + 16))(v9, v8);
        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

+ (id)predicateForContactsMissingBackgroundColors
{
  v2 = objc_opt_new();
  [v2 setQuery:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT rowid FROM ABPerson WHERE ImageType is NOT NULL and ImageBackgroundColorsData is NULL"}];

  return v2;
}

+ (id)predicateForContactsWithWallpaperMetadata
{
  v2 = objc_opt_new();
  [v2 setQuery:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT rowid FROM ABPerson WHERE WallpaperMetadata is NOT NULL"}];

  return v2;
}

+ (id)predicateUnioningPredicate:(id)a3 withPredicate:(id)a4
{
  v6 = objc_opt_new();
  [v6 setQuery:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT * FROM (%@) UNION SELECT * FROM  (%@)", objc_msgSend(a3, "query"), objc_msgSend(a4, "query"))}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__ABSQLPredicate_predicateUnioningPredicate_withPredicate___block_invoke;
  v8[3] = &unk_1E7CCD378;
  v8[4] = a3;
  v8[5] = a4;
  [v6 setBindBlock:v8];
  return v6;
}

uint64_t __59__ABSQLPredicate_predicateUnioningPredicate_withPredicate___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) bindBlock];
  (*(v4 + 16))(v4, a2);
  v5 = *([*(a1 + 40) bindBlock] + 16);

  return v5();
}

@end