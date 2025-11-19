@interface MCDBrowseContentManager
- (id)allSectionsOfType:(int64_t)a3;
- (unint64_t)cellTypeAtIndexPath:(id)a3;
@end

@implementation MCDBrowseContentManager

- (id)allSectionsOfType:(int64_t)a3
{
  v5 = [(MCDFuseContentManager *)self contentResults];

  if (v5)
  {
    [(MCDFuseContentManager *)self contentResults];
  }

  v6 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v7 = [v6 results];

  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v7 allSections];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 sectionType] == a3)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (unint64_t)cellTypeAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDGroupingsContentManager *)self itemAtIndexPath:v4];
  if ([v5 sectionType] == 15)
  {
    v6 = [(MCDBrowseContentManager *)self allSectionsOfType:15];
    v7 = [v6 firstObject];

    if (v5 == v7)
    {
      v8 = 4;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MCDBrowseContentManager;
    v8 = [(MCDGroupingsContentManager *)&v10 cellTypeAtIndexPath:v4];
  }

  return v8;
}

@end