@interface ABFacebookMigrator
+ (BOOL)_performQuery:(id)a3 withStoreID:(int)a4 connection:(CPSqliteConnection *)a5;
+ (BOOL)isSourceFacebook:(void *)a3;
+ (BOOL)mayHaveFacebookContacts:(void *)a3;
+ (BOOL)removeFacebookSensitiveInformation:(CPSqliteConnection *)a3;
+ (int)_findFacebookStoreID:(CPSqliteConnection *)a3;
- (ABFacebookMigrator)initWithAddressBook:(void *)a3;
- (ABFacebookMigrator)initWithAddressBook:(void *)a3 accountStore:(id)a4;
- (BOOL)_mergeContactsFromAccount:(void *)a3 toDestinationSourceID:(int)a4;
- (BOOL)canMergeFacebookContacts;
- (int)findBestMergeDestinationSourceID;
- (void)_detectFacebookSource;
- (void)_startDatabaseDoctorToPerformAction:(id)a3;
- (void)dealloc;
- (void)performPendingMergeOrDeleteAction;
- (void)setCheckDone:(BOOL)a3;
@end

@implementation ABFacebookMigrator

- (ABFacebookMigrator)initWithAddressBook:(void *)a3
{
  v5 = [MEMORY[0x1E6959A48] defaultStore];
  v6 = [(ABFacebookMigrator *)self initWithAddressBook:a3 accountStore:v5];

  return v6;
}

- (ABFacebookMigrator)initWithAddressBook:(void *)a3 accountStore:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ABFacebookMigrator;
  v8 = [(ABFacebookMigrator *)&v12 init];
  if (v8)
  {
    if (a3)
    {
      v9 = CFRetain(a3);
    }

    else
    {
      v9 = 0;
    }

    v8->_addressBook = v9;
    objc_storeStrong(&v8->_accountStore, a4);
    v8->_facebookSource = 0;
    v8->_mayHaveFacebookSource = 0;
    v10 = v8;
  }

  return v8;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  facebookSource = self->_facebookSource;
  if (facebookSource)
  {
    CFRelease(facebookSource);
  }

  v5.receiver = self;
  v5.super_class = ABFacebookMigrator;
  [(ABFacebookMigrator *)&v5 dealloc];
}

+ (BOOL)isSourceFacebook:(void *)a3
{
  v4 = ABAccountStoreGetAccountTypeForSource(0, a3);
  LOBYTE(a1) = [a1 isAccountTypeFacebook:v4];

  return a1;
}

+ (BOOL)mayHaveFacebookContacts:(void *)a3
{
  v3 = [[ABFacebookMigrator alloc] initWithAddressBook:a3];
  [(ABFacebookMigrator *)v3 _detectFacebookSource];
  if ([(ABFacebookMigrator *)v3 facebookSource])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(ABFacebookMigrator *)v3 mayHaveFacebookSource];
  }

  return v4;
}

- (void)setCheckDone:(BOOL)a3
{
  v3 = [(ABFacebookMigrator *)self addressBook];

  ABAddressBookSetIntegerProperty(v3, @"FacebookCheckDone", 1, v4, v5, v6, v7, v8, v10);
}

- (BOOL)canMergeFacebookContacts
{
  if ([(ABFacebookMigrator *)self isCheckDone])
  {
    return 0;
  }

  [(ABFacebookMigrator *)self _detectFacebookSource];
  if (![(ABFacebookMigrator *)self facebookSource])
  {
    if (![(ABFacebookMigrator *)self mayHaveFacebookSource])
    {
      [(ABFacebookMigrator *)self setCheckDone:1];
    }

    return 0;
  }

  if (![(ABFacebookMigrator *)self facebookContactsCount])
  {
    [(ABFacebookMigrator *)self deleteFacebookContacts];
    return 0;
  }

  [(ABFacebookMigrator *)self setMergeDestinationSourceID:[(ABFacebookMigrator *)self findBestMergeDestinationSourceID]];
  return 1;
}

- (void)_detectFacebookSource
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(ABFacebookMigrator *)self isCheckDone])
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources([(ABFacebookMigrator *)self addressBook], 1);
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v11 = 0;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          if (ABRecordGetIntValue(v8, kABSourceTypeProperty))
          {
            v9 = [(ABFacebookMigrator *)self accountStore];
            v10 = ABAccountStoreGetAccountTypeForSource(v9, v8);

            if (v10)
            {
              if ([ABFacebookMigrator isAccountTypeFacebook:v10])
              {
                [(ABFacebookMigrator *)self setFacebookSource:CFRetain(v8)];

                goto LABEL_17;
              }
            }

            else
            {
              v11 = 1;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    else
    {
      v11 = 0;
    }

LABEL_17:

    if ([(ABFacebookMigrator *)self facebookSource])
    {
      [(ABFacebookMigrator *)self setFacebookContactsCount:ABAddressBookGetPersonCountInSource([(ABFacebookMigrator *)self addressBook], [(ABFacebookMigrator *)self facebookSource])];
    }

    else
    {
      [(ABFacebookMigrator *)self setMayHaveFacebookSource:v11 & 1];
    }
  }
}

- (int)findBestMergeDestinationSourceID
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = ABAddressBookCopyDefaultSource([(ABFacebookMigrator *)self addressBook]);
  RecordID = ABRecordGetRecordID(v3);
  CFRelease(v3);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = ABAddressBookCopyArrayOfAllAccounts([(ABFacebookMigrator *)self addressBook]);
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v5)
  {

    v7 = 0;
    goto LABEL_16;
  }

  v6 = v5;
  obj = v4;
  v7 = 0;
  v8 = 0;
  v9 = *v38;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v38 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v37 + 1) + 8 * i);
      v12 = [ABAccountScorer alloc];
      v13 = [(ABFacebookMigrator *)self addressBook];
      v14 = [(ABFacebookMigrator *)self accountStore];
      v15 = [(ABAccountScorer *)v12 initWithAddressBook:v13 accountStore:v14 account:v11 defaultSourceID:RecordID];

      [(ABAccountScorer *)v15 calculateScore];
      [(ABAccountScorer *)v15 score];
      v17 = v16;
      [(ABAccountScorer *)v8 score];
      if (v17 <= v18)
      {
        [(ABAccountScorer *)v15 score];
        v21 = v20;
        [(ABAccountScorer *)v7 score];
        v19 = v15;
        if (v21 <= v22)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v19 = v8;

        v7 = v19;
        v8 = v15;
      }

      v23 = v15;

      v7 = v19;
LABEL_10:
    }

    v6 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v6);
  v4 = obj;

  if (!v8)
  {
LABEL_16:
    v32 = ABAddressBookCopyLocalSource([(ABFacebookMigrator *)self addressBook]);
    v24 = ABRecordGetRecordID(v32);
    CFRelease(v32);
    v8 = 0;
    goto LABEL_18;
  }

  v24 = [(ABAccountScorer *)v8 sourceID];
  v25 = [(ABAccountScorer *)v8 accountType];
  v26 = [(ABAccountScorer *)v7 accountType];
  v27 = [v25 isEqualToString:v26];

  if (v27)
  {
    v28 = MEMORY[0x1E696AEC0];
    v29 = [(ABAccountScorer *)v8 accountTypeDescription];
    v30 = [(ABAccountScorer *)v8 accountDisambiguationDescription];
    v31 = [v28 stringWithFormat:@"%@ - %@", v29, v30];
    [(ABFacebookMigrator *)self setDestinationDescription:v31];
  }

  else
  {
    v33 = [(ABAccountScorer *)v8 accountTypeDescription];
    [(ABFacebookMigrator *)self setDestinationDescription:v33];
  }

LABEL_18:

  return v24;
}

- (void)_startDatabaseDoctorToPerformAction:(id)a3
{
  v22 = a3;
  AccountForSource = ABAddressBookGetAccountForSource([(ABFacebookMigrator *)self addressBook], [(ABFacebookMigrator *)self facebookSource]);
  if (AccountForSource)
  {
    v5 = ABAccountCopyIdentifier(AccountForSource);
    if (v5)
    {
      v6 = v5;
      v7 = [(ABFacebookMigrator *)self addressBook];
      ABAddressBookSetValueForProperty(v7, v22, v6, v8, v9, v10, v11, v12, v20);
      CFRelease(v6);
      if ([v22 isEqualToString:@"MergeFacebookContacts"])
      {
        v13 = [(ABFacebookMigrator *)self addressBook];
        v14 = [(ABFacebookMigrator *)self mergeDestinationSourceID];
        ABAddressBookSetIntegerProperty(v13, @"MergeFacebookContactsToSourceID", v14, v15, v16, v17, v18, v19, v21);
      }

      ABStartDatabaseDoctor([(ABFacebookMigrator *)self addressBook]);
    }
  }
}

- (void)performPendingMergeOrDeleteAction
{
  if (![(ABFacebookMigrator *)self isCheckDone])
  {
    v3 = ABAddressBookCopyValueForProperty([(ABFacebookMigrator *)self addressBook]);
    if (v3)
    {
      v4 = v3;
      v5 = ABAddressBookCopyAccountWithIdentifier([(ABFacebookMigrator *)self addressBook], v3);
      CFRelease(v4);
      IntegerProperty = ABAddressBookGetIntegerProperty([(ABFacebookMigrator *)self addressBook]);
      if (v5)
      {
        if ([(ABFacebookMigrator *)self _mergeContactsFromAccount:v5 toDestinationSourceID:IntegerProperty])
        {
          v7 = [(ABFacebookMigrator *)self _removeContactsAccount:v5];
          CFRelease(v5);
          if (v7)
          {
            v8 = [(ABFacebookMigrator *)self addressBook];
            ABAddressBookSetValueForProperty(v8, @"MergeFacebookContacts", 0, v9, v10, v11, v12, v13, v24);
            [(ABFacebookMigrator *)self setCheckDone:1];
          }
        }

        else
        {
          CFRelease(v5);
        }
      }
    }

    v14 = ABAddressBookCopyValueForProperty([(ABFacebookMigrator *)self addressBook]);
    if (v14)
    {
      v15 = v14;
      v16 = ABAddressBookCopyAccountWithIdentifier([(ABFacebookMigrator *)self addressBook], v14);
      CFRelease(v15);
      if (v16)
      {
        v17 = [(ABFacebookMigrator *)self _removeContactsAccount:v16];
        CFRelease(v16);
        if (v17)
        {
          v18 = [(ABFacebookMigrator *)self addressBook];
          ABAddressBookSetValueForProperty(v18, @"DeleteFacebookContacts", 0, v19, v20, v21, v22, v23, v24);

          [(ABFacebookMigrator *)self setCheckDone:1];
        }
      }
    }
  }
}

- (BOOL)_mergeContactsFromAccount:(void *)a3 toDestinationSourceID:(int)a4
{
  v21 = *MEMORY[0x1E69E9840];
  SourceWithRecordID = ABAddressBookGetSourceWithRecordID([(ABFacebookMigrator *)self addressBook], a4);
  if (SourceWithRecordID)
  {
    v7 = SourceWithRecordID;
    if (!ABRecordGetIntValue(SourceWithRecordID, kABSourceTypeProperty))
    {
      v8 = kABSourceEnabledProperty;
      if (!ABRecordGetIntValue(v7, kABSourceEnabledProperty))
      {
        ABRecordSetValue(v7, v8, *MEMORY[0x1E695E4D0], 0);
      }
    }

    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = ABAddressBookCopyArrayOfAllSourcesInAccount([(ABFacebookMigrator *)self addressBook], a3);
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v12 |= ABAddressBookMergeRecordsInSourceIntoSource([(ABFacebookMigrator *)self addressBook], *(*(&v16 + 1) + 8 * i), v7);
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

+ (BOOL)removeFacebookSensitiveInformation:(CPSqliteConnection *)a3
{
  v5 = [a1 _findFacebookStoreID:?];
  if (v5 == -1)
  {
    return 1;
  }

  v6 = v5;
  v7 = [a1 _performQuery:@"delete from ABMultiValue where     record_id in (select ROWID from ABPerson where storeid = ?)     and property = 22     and value like %.facebook.com%;" withStoreID:v5 connection:a3];
  v8 = v7 & [a1 _performQuery:@"delete from ABMultiValueEntry where parent_id in     (select abmv.UID from ABMultiValue as abmv join ABMultiValueEntry as abmve on abmv.UID = abmve.parent_id where         abmv.record_id in (select ROWID from ABPerson where StoreID = ?)         and abmv.property = 46         and abmve.key in (select ROWID from ABMultiValueEntryKey where value like \"service\"" withStoreID:v6 connection:a3];
  return v8 & [a1 _performQuery:@"delete from ABMultiValue where     record_id in (select ROWID from ABPerson where storeid = ?)     and property = 46     and UID not in (select parent_id from ABMultiValueEntry);" withStoreID:v6 connection:a3];
}

+ (int)_findFacebookStoreID:(CPSqliteConnection *)a3
{
  v3 = [MEMORY[0x1E6959A48] defaultStore];
  if (CPSqliteConnectionStatementForSQL())
  {
    CPSqliteStatementSendResults();
    CPSqliteStatementReset();
  }

  return -1;
}

+ (BOOL)_performQuery:(id)a3 withStoreID:(int)a4 connection:(CPSqliteConnection *)a5
{
  v6 = CPSqliteConnectionStatementForSQL();
  if (v6)
  {
    sqlite3_bind_int(*(v6 + 8), 1, a4);
    v7 = CPSqliteStatementPerform();
    CPSqliteStatementReset();
    LOBYTE(v6) = v7 == 101;
  }

  return v6;
}

@end