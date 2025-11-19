@interface _CNChangeHistoryContactRefillStrategy
- (id)initWithKeysToFetch:(char)a3 unifyResults:(void *)a4 contactStore:;
- (id)objectsRepresentedByBatch:(id)a3;
- (id)updateChanges:(void *)a3 withFetchedContacts:;
- (void)fetchContactsWithIdentifiers:(void *)a1;
@end

@implementation _CNChangeHistoryContactRefillStrategy

- (id)objectsRepresentedByBatch:(id)a3
{
  v4 = a3;
  v5 = [v4 _cn_map:&__block_literal_global_40_1];
  v6 = [v5 _cn_filter:*MEMORY[0x1E6996570]];
  v7 = [v6 _cn_distinctObjects];

  v8 = [(_CNChangeHistoryContactRefillStrategy *)self fetchContactsWithIdentifiers:v7];
  v9 = [(_CNChangeHistoryContactRefillStrategy *)self updateChanges:v4 withFetchedContacts:v8];

  return v9;
}

- (id)initWithKeysToFetch:(char)a3 unifyResults:(void *)a4 contactStore:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = _CNChangeHistoryContactRefillStrategy;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v9 = [v7 copy];
      v10 = a1[2];
      a1[2] = v9;

      *(a1 + 8) = a3;
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

- (void)fetchContactsWithIdentifiers:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      a1 = MEMORY[0x1E695E0F8];
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
      v7 = [[CNContactFetchRequest alloc] initWithKeysToFetch:a1[2]];
      v8 = [CNContact predicateForContactsWithIdentifiers:v3];
      [(CNContactFetchRequest *)v7 setPredicate:v8];

      [(CNContactFetchRequest *)v7 setUnifyResults:*(a1 + 8)];
      v9 = a1[3];
      v14 = 0;
      v10 = v9;
      v11 = [v10 enumerateContactsWithFetchRequest:v7 error:&v14 usingBlock:v6];
      v12 = v14;

      if (v11)
      {
        a1 = v5;
      }

      else
      {
        NSLog(&cfstr_FailedToFetchC.isa, v12);
        a1 = 0;
      }
    }
  }

  return a1;
}

- (id)updateChanges:(void *)a3 withFetchedContacts:
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (a1)
  {
    v9 = OUTLINED_FUNCTION_0_13(v6, v7);
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
            v16 = [v14 contactIdentifier];
            v17 = (*(v12 + 16))(v12, v16);

            if (v17)
            {
              v18 = [v14 contactIdentifier];
              v19 = [v8 objectForKeyedSubscript:v18];
              [v14 setContact:v19];

              v20 = [v14 contact];

              if (!v20)
              {
                v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "changeType")}];
                v22 = [v14 contactIdentifier];
                NSLog(&cfstr_CouldNotFetchC.isa, v21, v22);

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

    a1 = v5;
  }

  return a1;
}

@end