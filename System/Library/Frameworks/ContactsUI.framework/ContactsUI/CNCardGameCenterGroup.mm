@interface CNCardGameCenterGroup
+ (BOOL)relationshipResultsContainsFriend:(id)a3;
+ (BOOL)shouldShowAddFriendActionForRelationshipResults:(id)a3;
+ (id)actionForRelationshipResults:(id)a3 forContact:(id)a4;
- (CNCardGameCenterGroup)initWithContact:(id)a3 relationshipResults:(id)a4;
- (id)displayItems;
@end

@implementation CNCardGameCenterGroup

- (id)displayItems
{
  v2 = [(CNCardGameCenterGroup *)self relationshipResults];
  v3 = [v2 _cn_compactMap:&__block_literal_global_3];

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

- (CNCardGameCenterGroup)initWithContact:(id)a3 relationshipResults:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CNCardGameCenterGroup;
  v8 = [(CNCardGroup *)&v12 initWithContact:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_relationshipResults, a4);
    v10 = v9;
  }

  return v9;
}

+ (id)actionForRelationshipResults:(id)a3 forContact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() shouldShowAddFriendActionForRelationshipResults:v6];

  if (v7)
  {
    v8 = [[CNGameCenterAddFriendAction alloc] initWithContact:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)shouldShowAddFriendActionForRelationshipResults:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
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

+ (BOOL)relationshipResultsContainsFriend:(id)a3
{
  v3 = [a3 _cn_firstObjectPassingTest:&__block_literal_global_3681];
  v4 = v3 != 0;

  return v4;
}

@end