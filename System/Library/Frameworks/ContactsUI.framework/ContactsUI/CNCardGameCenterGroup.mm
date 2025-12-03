@interface CNCardGameCenterGroup
+ (BOOL)relationshipResultsContainsFriend:(id)friend;
+ (BOOL)shouldShowAddFriendActionForRelationshipResults:(id)results;
+ (id)actionForRelationshipResults:(id)results forContact:(id)contact;
- (CNCardGameCenterGroup)initWithContact:(id)contact relationshipResults:(id)results;
- (id)displayItems;
@end

@implementation CNCardGameCenterGroup

- (id)displayItems
{
  relationshipResults = [(CNCardGameCenterGroup *)self relationshipResults];
  v3 = [relationshipResults _cn_compactMap:&__block_literal_global_3];

  return v3;
}

CNCardGameCenterGroupItem *__37__CNCardGameCenterGroup_displayItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 relationship] == 2)
  {
    v3 = [[CNCardGameCenterGroupItem alloc] initWithRelationshipResult:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNCardGameCenterGroup)initWithContact:(id)contact relationshipResults:(id)results
{
  resultsCopy = results;
  v12.receiver = self;
  v12.super_class = CNCardGameCenterGroup;
  v8 = [(CNCardGroup *)&v12 initWithContact:contact];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_relationshipResults, results);
    v10 = v9;
  }

  return v9;
}

+ (id)actionForRelationshipResults:(id)results forContact:(id)contact
{
  contactCopy = contact;
  resultsCopy = results;
  v7 = [objc_opt_class() shouldShowAddFriendActionForRelationshipResults:resultsCopy];

  if (v7)
  {
    v8 = [[CNGameCenterAddFriendAction alloc] initWithContact:contactCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)shouldShowAddFriendActionForRelationshipResults:(id)results
{
  v17 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if ([resultsCopy count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = resultsCopy;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v13;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if ([v10 relationship] == 2)
        {
          break;
        }

        v7 |= [v10 relationship] == 1;
        if (v6 == ++v9)
        {
          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }
    }

    v7 = 0;
LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

+ (BOOL)relationshipResultsContainsFriend:(id)friend
{
  v3 = [friend _cn_firstObjectPassingTest:&__block_literal_global_3681];
  v4 = v3 != 0;

  return v4;
}

@end