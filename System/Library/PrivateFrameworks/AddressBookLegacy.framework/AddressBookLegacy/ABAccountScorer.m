@interface ABAccountScorer
- (ABAccountScorer)initWithAddressBook:(void *)a3 accountStore:(id)a4 account:(void *)a5 defaultSourceID:(int)a6;
- (NSString)accountDisambiguationDescription;
- (NSString)accountTypeDescription;
- (int)_findBestSourceID;
- (void)calculateScore;
- (void)dealloc;
@end

@implementation ABAccountScorer

- (ABAccountScorer)initWithAddressBook:(void *)a3 accountStore:(id)a4 account:(void *)a5 defaultSourceID:(int)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = ABAccountScorer;
  v12 = [(ABAccountScorer *)&v15 init];
  if (v12)
  {
    v12->_addressBook = CFRetain(a3);
    objc_storeStrong(&v12->_accountStore, a4);
    v12->_account = CFRetain(a5);
    v12->_score = 0.0;
    v12->_sourceID = -1;
    v12->_defaultSourceID = a6;
    v13 = v12;
  }

  return v12;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  account = self->_account;
  if (account)
  {
    CFRelease(account);
  }

  v5.receiver = self;
  v5.super_class = ABAccountScorer;
  [(ABAccountScorer *)&v5 dealloc];
}

- (NSString)accountTypeDescription
{
  v3 = ABAccountCopyIdentifier([(ABAccountScorer *)self account]);
  v4 = [(ABAccountScorer *)self accountStore];
  v5 = [v4 accountWithIdentifier:v3];
  v6 = [v5 displayAccount];

  v7 = [v6 accountType];
  v8 = [v7 accountTypeDescription];

  return v8;
}

- (NSString)accountDisambiguationDescription
{
  v3 = ABAccountCopyIdentifier([(ABAccountScorer *)self account]);
  v4 = [(ABAccountScorer *)self accountStore];
  v5 = [v4 accountWithIdentifier:v3];
  v6 = [v5 displayAccount];

  v7 = [v6 username];

  return v7;
}

- (void)calculateScore
{
  v16[6] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6959868];
  v15[0] = *MEMORY[0x1E69597F8];
  v15[1] = v3;
  v16[0] = &unk_1F2FF47F8;
  v16[1] = &unk_1F2FF4808;
  v4 = *MEMORY[0x1E6959820];
  v15[2] = *MEMORY[0x1E6959918];
  v15[3] = v4;
  v16[2] = &unk_1F2FF4818;
  v16[3] = &unk_1F2FF4828;
  v5 = *MEMORY[0x1E6959840];
  v15[4] = *MEMORY[0x1E6959878];
  v15[5] = v5;
  v16[4] = &unk_1F2FF4838;
  v16[5] = &unk_1F2FF4848;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];
  v7 = [(ABAccountScorer *)self accountStore];
  v8 = ABAccountStoreGetAccountTypeForAccount(v7, [(ABAccountScorer *)self account]);
  [(ABAccountScorer *)self setAccountType:v8];

  v9 = [(ABAccountScorer *)self accountType];
  LOBYTE(v7) = [ABFacebookMigrator isAccountTypeFacebook:v9];

  if ((v7 & 1) == 0)
  {
    [(ABAccountScorer *)self setSourceID:[(ABAccountScorer *)self _findBestSourceID]];
    if ([(ABAccountScorer *)self sourceID]!= -1)
    {
      v10 = [(ABAccountScorer *)self accountType];
      v11 = [v6 objectForKeyedSubscript:v10];

      if (v11)
      {
        [v11 doubleValue];
      }

      else
      {
        v12 = 1.0;
      }

      [(ABAccountScorer *)self setScore:v12];
      v13 = [(ABAccountScorer *)self sourceID];
      if (v13 == [(ABAccountScorer *)self defaultSourceID])
      {
        [(ABAccountScorer *)self score];
        [(ABAccountScorer *)self setScore:v14 + 0.5];
      }
    }
  }
}

- (int)_findBestSourceID
{
  v17 = *MEMORY[0x1E69E9840];
  DefaultSourceForAccount = ABAddressBookGetDefaultSourceForAccount([(ABAccountScorer *)self addressBook], [(ABAccountScorer *)self account]);
  if (DefaultSourceForAccount)
  {

    return ABRecordGetRecordID(DefaultSourceForAccount);
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = ABAddressBookCopyArrayOfAllSourcesInAccount([(ABAccountScorer *)self addressBook], [(ABAccountScorer *)self account]);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (!ABSourceIsContentReadonly(v10))
          {
            RecordID = ABRecordGetRecordID(v10);
            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    RecordID = -1;
LABEL_15:

    return RecordID;
  }
}

@end