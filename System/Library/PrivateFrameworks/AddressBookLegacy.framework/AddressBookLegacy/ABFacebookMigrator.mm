@interface ABFacebookMigrator
+ (BOOL)_performQuery:(id)query withStoreID:(int)d connection:(CPSqliteConnection *)connection;
+ (BOOL)isSourceFacebook:(void *)facebook;
+ (BOOL)mayHaveFacebookContacts:(void *)contacts;
+ (BOOL)removeFacebookSensitiveInformation:(CPSqliteConnection *)information;
+ (int)_findFacebookStoreID:(CPSqliteConnection *)d;
- (ABFacebookMigrator)initWithAddressBook:(void *)book;
- (ABFacebookMigrator)initWithAddressBook:(void *)book accountStore:(id)store;
- (BOOL)_mergeContactsFromAccount:(void *)account toDestinationSourceID:(int)d;
- (BOOL)canMergeFacebookContacts;
- (int)findBestMergeDestinationSourceID;
- (void)_detectFacebookSource;
- (void)_startDatabaseDoctorToPerformAction:(id)action;
- (void)dealloc;
- (void)performPendingMergeOrDeleteAction;
- (void)setCheckDone:(BOOL)done;
@end

@implementation ABFacebookMigrator

- (ABFacebookMigrator)initWithAddressBook:(void *)book
{
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v6 = [(ABFacebookMigrator *)self initWithAddressBook:book accountStore:defaultStore];

  return v6;
}

- (ABFacebookMigrator)initWithAddressBook:(void *)book accountStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = ABFacebookMigrator;
  v8 = [(ABFacebookMigrator *)&v12 init];
  if (v8)
  {
    if (book)
    {
      v9 = CFRetain(book);
    }

    else
    {
      v9 = 0;
    }

    v8->_addressBook = v9;
    objc_storeStrong(&v8->_accountStore, store);
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

+ (BOOL)isSourceFacebook:(void *)facebook
{
  v4 = ABAccountStoreGetAccountTypeForSource(0, facebook);
  LOBYTE(self) = [self isAccountTypeFacebook:v4];

  return self;
}

+ (BOOL)mayHaveFacebookContacts:(void *)contacts
{
  v3 = [[ABFacebookMigrator alloc] initWithAddressBook:contacts];
  [(ABFacebookMigrator *)v3 _detectFacebookSource];
  if ([(ABFacebookMigrator *)v3 facebookSource])
  {
    mayHaveFacebookSource = 1;
  }

  else
  {
    mayHaveFacebookSource = [(ABFacebookMigrator *)v3 mayHaveFacebookSource];
  }

  return mayHaveFacebookSource;
}

- (void)setCheckDone:(BOOL)done
{
  addressBook = [(ABFacebookMigrator *)self addressBook];

  ABAddressBookSetIntegerProperty(addressBook, @"FacebookCheckDone", 1, v4, v5, v6, v7, v8, v10);
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
            accountStore = [(ABFacebookMigrator *)self accountStore];
            v10 = ABAccountStoreGetAccountTypeForSource(accountStore, v8);

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
      addressBook = [(ABFacebookMigrator *)self addressBook];
      accountStore = [(ABFacebookMigrator *)self accountStore];
      v15 = [(ABAccountScorer *)v12 initWithAddressBook:addressBook accountStore:accountStore account:v11 defaultSourceID:RecordID];

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
    sourceID = ABRecordGetRecordID(v32);
    CFRelease(v32);
    v8 = 0;
    goto LABEL_18;
  }

  sourceID = [(ABAccountScorer *)v8 sourceID];
  accountType = [(ABAccountScorer *)v8 accountType];
  accountType2 = [(ABAccountScorer *)v7 accountType];
  v27 = [accountType isEqualToString:accountType2];

  if (v27)
  {
    v28 = MEMORY[0x1E696AEC0];
    accountTypeDescription = [(ABAccountScorer *)v8 accountTypeDescription];
    accountDisambiguationDescription = [(ABAccountScorer *)v8 accountDisambiguationDescription];
    v31 = [v28 stringWithFormat:@"%@ - %@", accountTypeDescription, accountDisambiguationDescription];
    [(ABFacebookMigrator *)self setDestinationDescription:v31];
  }

  else
  {
    accountTypeDescription2 = [(ABAccountScorer *)v8 accountTypeDescription];
    [(ABFacebookMigrator *)self setDestinationDescription:accountTypeDescription2];
  }

LABEL_18:

  return sourceID;
}

- (void)_startDatabaseDoctorToPerformAction:(id)action
{
  actionCopy = action;
  AccountForSource = ABAddressBookGetAccountForSource([(ABFacebookMigrator *)self addressBook], [(ABFacebookMigrator *)self facebookSource]);
  if (AccountForSource)
  {
    v5 = ABAccountCopyIdentifier(AccountForSource);
    if (v5)
    {
      v6 = v5;
      addressBook = [(ABFacebookMigrator *)self addressBook];
      ABAddressBookSetValueForProperty(addressBook, actionCopy, v6, v8, v9, v10, v11, v12, v20);
      CFRelease(v6);
      if ([actionCopy isEqualToString:@"MergeFacebookContacts"])
      {
        addressBook2 = [(ABFacebookMigrator *)self addressBook];
        mergeDestinationSourceID = [(ABFacebookMigrator *)self mergeDestinationSourceID];
        ABAddressBookSetIntegerProperty(addressBook2, @"MergeFacebookContactsToSourceID", mergeDestinationSourceID, v15, v16, v17, v18, v19, v21);
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
            addressBook = [(ABFacebookMigrator *)self addressBook];
            ABAddressBookSetValueForProperty(addressBook, @"MergeFacebookContacts", 0, v9, v10, v11, v12, v13, v24);
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
          addressBook2 = [(ABFacebookMigrator *)self addressBook];
          ABAddressBookSetValueForProperty(addressBook2, @"DeleteFacebookContacts", 0, v19, v20, v21, v22, v23, v24);

          [(ABFacebookMigrator *)self setCheckDone:1];
        }
      }
    }
  }
}

- (BOOL)_mergeContactsFromAccount:(void *)account toDestinationSourceID:(int)d
{
  v21 = *MEMORY[0x1E69E9840];
  SourceWithRecordID = ABAddressBookGetSourceWithRecordID([(ABFacebookMigrator *)self addressBook], d);
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
    v9 = ABAddressBookCopyArrayOfAllSourcesInAccount([(ABFacebookMigrator *)self addressBook], account);
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

+ (BOOL)removeFacebookSensitiveInformation:(CPSqliteConnection *)information
{
  v5 = [self _findFacebookStoreID:?];
  if (v5 == -1)
  {
    return 1;
  }

  v6 = v5;
  v7 = [self _performQuery:@"delete from ABMultiValue where     record_id in (select ROWID from ABPerson where storeid = ?)     and property = 22     and value like %.facebook.com%;" withStoreID:v5 connection:information];
  v8 = v7 & [self _performQuery:@"delete from ABMultiValueEntry where parent_id in     (select abmv.UID from ABMultiValue as abmv join ABMultiValueEntry as abmve on abmv.UID = abmve.parent_id where         abmv.record_id in (select ROWID from ABPerson where StoreID = ?)         and abmv.property = 46         and abmve.key in (select ROWID from ABMultiValueEntryKey where value like \"service\"" withStoreID:v6 connection:information];
  return v8 & [self _performQuery:@"delete from ABMultiValue where     record_id in (select ROWID from ABPerson where storeid = ?)     and property = 46     and UID not in (select parent_id from ABMultiValueEntry);" withStoreID:v6 connection:information];
}

+ (int)_findFacebookStoreID:(CPSqliteConnection *)d
{
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  if (CPSqliteConnectionStatementForSQL())
  {
    CPSqliteStatementSendResults();
    CPSqliteStatementReset();
  }

  return -1;
}

+ (BOOL)_performQuery:(id)query withStoreID:(int)d connection:(CPSqliteConnection *)connection
{
  v6 = CPSqliteConnectionStatementForSQL();
  if (v6)
  {
    sqlite3_bind_int(*(v6 + 8), 1, d);
    v7 = CPSqliteStatementPerform();
    CPSqliteStatementReset();
    LOBYTE(v6) = v7 == 101;
  }

  return v6;
}

@end