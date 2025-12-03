@interface MCDBrowseContentManager
- (id)allSectionsOfType:(int64_t)type;
- (unint64_t)cellTypeAtIndexPath:(id)path;
@end

@implementation MCDBrowseContentManager

- (id)allSectionsOfType:(int64_t)type
{
  contentResults = [(MCDFuseContentManager *)self contentResults];

  if (contentResults)
  {
    [(MCDFuseContentManager *)self contentResults];
  }

  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];

  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allSections = [results allSections];
  v10 = [allSections countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allSections);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 sectionType] == type)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [allSections countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (unint64_t)cellTypeAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(MCDGroupingsContentManager *)self itemAtIndexPath:pathCopy];
  if ([v5 sectionType] == 15)
  {
    v6 = [(MCDBrowseContentManager *)self allSectionsOfType:15];
    firstObject = [v6 firstObject];

    if (v5 == firstObject)
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
    v8 = [(MCDGroupingsContentManager *)&v10 cellTypeAtIndexPath:pathCopy];
  }

  return v8;
}

@end