@interface _CNChangeHistoryContactRefillStrategy
- (id)initWithKeysToFetch:(char)fetch unifyResults:(void *)results contactStore:;
- (id)objectsRepresentedByBatch:(id)batch;
- (id)updateChanges:(void *)changes withFetchedContacts:;
- (void)fetchContactsWithIdentifiers:(void *)identifiers;
@end

@implementation _CNChangeHistoryContactRefillStrategy

- (id)objectsRepresentedByBatch:(id)batch
{
  batchCopy = batch;
  v5 = [batchCopy _cn_map:&__block_literal_global_40_1];
  v6 = [v5 _cn_filter:*MEMORY[0x1E6996570]];
  _cn_distinctObjects = [v6 _cn_distinctObjects];

  v8 = [(_CNChangeHistoryContactRefillStrategy *)self fetchContactsWithIdentifiers:_cn_distinctObjects];
  v9 = [(_CNChangeHistoryContactRefillStrategy *)self updateChanges:batchCopy withFetchedContacts:v8];

  return v9;
}

- (id)initWithKeysToFetch:(char)fetch unifyResults:(void *)results contactStore:
{
  v7 = a2;
  resultsCopy = results;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = _CNChangeHistoryContactRefillStrategy;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v9 = [v7 copy];
      v10 = self[2];
      self[2] = v9;

      *(self + 8) = fetch;
      objc_storeStrong(self + 3, results);
    }
  }

  return self;
}

- (void)fetchContactsWithIdentifiers:(void *)identifiers
{
  v3 = a2;
  if (identifiers)
  {
    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      identifiers = MEMORY[0x1E695E0F8];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __70___CNChangeHistoryContactRefillStrategy_fetchContactsWithIdentifiers___block_invoke;
      aBlock[3] = &unk_1E7414AA8;
      v5 = v4;
      v16 = v5;
      v6 = _Block_copy(aBlock);
      v7 = [[CNContactFetchRequest alloc] initWithKeysToFetch:identifiers[2]];
      v8 = [CNContact predicateForContactsWithIdentifiers:v3];
      [(CNContactFetchRequest *)v7 setPredicate:v8];

      [(CNContactFetchRequest *)v7 setUnifyResults:*(identifiers + 8)];
      v9 = identifiers[3];
      v14 = 0;
      v10 = v9;
      v11 = [v10 enumerateContactsWithFetchRequest:v7 error:&v14 usingBlock:v6];
      v12 = v14;

      if (v11)
      {
        identifiers = v5;
      }

      else
      {
        NSLog(&cfstr_FailedToFetchC.isa, v12);
        identifiers = 0;
      }
    }
  }

  return identifiers;
}

- (id)updateChanges:(void *)changes withFetchedContacts:
{
  v5 = a2;
  changesCopy = changes;
  v8 = changesCopy;
  if (self)
  {
    v9 = OUTLINED_FUNCTION_0_13(changesCopy, v7);
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0];
      v12 = *MEMORY[0x1E6996570];
      do
      {
        v13 = 0;
        do
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(8 * v13);
          v9 = sIsChangeDelete_block_invoke(v9, v14);
          if ((v9 & 1) == 0)
          {
            contactIdentifier = [v14 contactIdentifier];
            v17 = (*(v12 + 16))(v12, contactIdentifier);

            if (v17)
            {
              contactIdentifier2 = [v14 contactIdentifier];
              v19 = [v8 objectForKeyedSubscript:contactIdentifier2];
              [v14 setContact:v19];

              contact = [v14 contact];

              if (!contact)
              {
                v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "changeType")}];
                contactIdentifier3 = [v14 contactIdentifier];
                NSLog(&cfstr_CouldNotFetchC.isa, v21, contactIdentifier3);

                v9 = [v14 setChangeType:2];
              }
            }
          }

          ++v13;
        }

        while (v10 != v13);
        v9 = OUTLINED_FUNCTION_0_13(v9, v15);
        v10 = v9;
      }

      while (v9);
    }

    self = v5;
  }

  return self;
}

@end