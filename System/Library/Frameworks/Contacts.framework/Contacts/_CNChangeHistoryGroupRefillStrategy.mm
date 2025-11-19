@interface _CNChangeHistoryGroupRefillStrategy
- (_CNChangeHistoryGroupRefillStrategy)initWithContactStore:(id)a3;
- (id)fetchGroupsWithIdentifiers:(id)a3;
- (id)objectsRepresentedByBatch:(id)a3;
- (id)updateChanges:(id)a3 withFetchedGroups:(id)a4;
@end

@implementation _CNChangeHistoryGroupRefillStrategy

- (_CNChangeHistoryGroupRefillStrategy)initWithContactStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNChangeHistoryGroupRefillStrategy;
  v6 = [(_CNChangeHistoryGroupRefillStrategy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
    v8 = v7;
  }

  return v7;
}

- (id)objectsRepresentedByBatch:(id)a3
{
  v4 = a3;
  v5 = [v4 _cn_filter:&__block_literal_global_68_0];
  v6 = [v5 _cn_map:&__block_literal_global_71_0];

  v7 = [(_CNChangeHistoryGroupRefillStrategy *)self fetchGroupsWithIdentifiers:v6];
  v8 = [(_CNChangeHistoryGroupRefillStrategy *)self updateChanges:v4 withFetchedGroups:v7];

  return v8;
}

- (id)fetchGroupsWithIdentifiers:(id)a3
{
  v4 = a3;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v6 = [CNGroup predicateForGroupsWithIdentifiers:v4];
    v7 = [(_CNChangeHistoryGroupRefillStrategy *)self contactStore];
    v11 = 0;
    v8 = [v7 groupsMatchingPredicate:v6 error:&v11];
    v9 = v11;

    if (v8)
    {
      v5 = [v8 _cn_indexBy:&__block_literal_global_74_0];
    }

    else
    {
      NSLog(&cfstr_FailedToFetchG.isa, v9);
      v5 = 0;
    }
  }

  return v5;
}

- (id)updateChanges:(id)a3 withFetchedGroups:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 groupIdentifier];
        v13 = [v6 objectForKeyedSubscript:v12];
        [v11 setGroup:v13];

        v14 = [v11 group];
        if (v14)
        {
        }

        else if ([v11 changeType] != 2)
        {
          v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "changeType")}];
          v16 = [v11 groupIdentifier];
          NSLog(&cfstr_CouldNotFetchG.isa, v15, v16);

          [v11 setChangeType:2];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

@end