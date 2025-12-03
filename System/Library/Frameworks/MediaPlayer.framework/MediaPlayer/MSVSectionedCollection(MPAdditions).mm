@interface MSVSectionedCollection(MPAdditions)
- (MPChangeDetails)changeDetailsToSectionedCollection:()MPAdditions applyingUIKitWorkarounds:isEqualBlock:isUpdatedBlock:;
- (id)identifiersForItemAtIndexPath:()MPAdditions;
- (id)identifiersForSectionAtIndex:()MPAdditions;
- (id)indexPathForItemWithIdentifiersIntersectingSet:()MPAdditions;
- (void)enumerateItemIdentifiersInSectionAtIndex:()MPAdditions usingBlock:;
- (void)enumerateItemIdentifiersUsingBlock:()MPAdditions;
- (void)enumerateSectionIdentifiersUsingBlock:()MPAdditions;
@end

@implementation MSVSectionedCollection(MPAdditions)

- (id)indexPathForItemWithIdentifiersIntersectingSet:()MPAdditions
{
  v4 = a3;
  numberOfSections = [self numberOfSections];
  if (numberOfSections < 1)
  {
    v13 = 0;
  }

  else
  {
    v6 = numberOfSections;
    v7 = 0;
    do
    {
      v8 = [self numberOfItemsInSection:v7];
      if (v8 < 1)
      {
        v13 = 0;
      }

      else
      {
        v9 = v8;
        v10 = 1;
        do
        {
          v11 = [MEMORY[0x1E696AC88] indexPathForItem:v10 - 1 inSection:v7];
          v12 = [self identifiersForItemAtIndexPath:v11];
          if ([v12 intersectsSet:v4])
          {
            v13 = v11;
          }

          else
          {
            v13 = 0;
          }

          if (v10 >= v9)
          {
            break;
          }

          ++v10;
        }

        while (!v13);
      }

      ++v7;
    }

    while (v7 < v6 && !v13);
  }

  return v13;
}

- (id)identifiersForSectionAtIndex:()MPAdditions
{
  v1 = [self sectionAtIndex:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v1 identifiers];
    }

    else
    {
      +[MPIdentifierSet emptyIdentifierSet];
    }
    v2 = ;
  }

  v3 = v2;

  return v3;
}

- (id)identifiersForItemAtIndexPath:()MPAdditions
{
  v1 = [self itemAtIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v1 identifiers];
    }

    else
    {
      +[MPIdentifierSet emptyIdentifierSet];
    }
    v2 = ;
  }

  v3 = v2;

  return v3;
}

- (void)enumerateItemIdentifiersInSectionAtIndex:()MPAdditions usingBlock:
{
  v6 = a4;
  v12 = 0;
  v7 = [self numberOfItemsInSection:a3];
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = 1;
    do
    {
      v10 = [MEMORY[0x1E696AC88] indexPathForItem:v9 - 1 inSection:a3];
      v11 = [self identifiersForItemAtIndexPath:v10];
      if (v11)
      {
        v6[2](v6, v9 - 1, v11, &v12);
      }

      if (v9 >= v8)
      {
        break;
      }

      ++v9;
    }

    while ((v12 & 1) == 0);
  }
}

- (void)enumerateSectionIdentifiersUsingBlock:()MPAdditions
{
  v4 = a3;
  v9 = 0;
  numberOfSections = [self numberOfSections];
  if (numberOfSections >= 1)
  {
    v6 = numberOfSections;
    v7 = 1;
    do
    {
      v8 = [self identifiersForSectionAtIndex:v7 - 1];
      v4[2](v4, v7 - 1, v8, &v9);

      if (v7 >= v6)
      {
        break;
      }

      ++v7;
    }

    while ((v9 & 1) == 0);
  }
}

- (void)enumerateItemIdentifiersUsingBlock:()MPAdditions
{
  v4 = a3;
  v14 = 0;
  numberOfSections = [self numberOfSections];
  if (numberOfSections >= 1)
  {
    v6 = numberOfSections;
    v7 = 0;
    do
    {
      v8 = [self numberOfItemsInSection:v7];
      v9 = v14;
      if (v8 >= 1 && (v14 & 1) == 0)
      {
        v10 = v8;
        v11 = 1;
        do
        {
          v12 = [MEMORY[0x1E696AC88] indexPathForItem:v11 - 1 inSection:v7];
          v13 = [self identifiersForItemAtIndexPath:v12];
          if (v13)
          {
            v4[2](v4, v12, v13, &v14);
          }

          v9 = v14;
          if (v11 >= v10)
          {
            break;
          }

          ++v11;
        }

        while ((v14 & 1) == 0);
      }

      ++v7;
    }

    while (v7 < v6 && (v9 & 1) == 0);
  }
}

- (MPChangeDetails)changeDetailsToSectionedCollection:()MPAdditions applyingUIKitWorkarounds:isEqualBlock:isUpdatedBlock:
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [MPChangeDetails alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __127__MSVSectionedCollection_MPAdditions__changeDetailsToSectionedCollection_applyingUIKitWorkarounds_isEqualBlock_isUpdatedBlock___block_invoke;
  v21[3] = &unk_1E767D948;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = a4;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = [(MPChangeDetails *)v13 initWithBlock:v21];
  if ([(MPChangeDetails *)v17 hasChanges])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

@end