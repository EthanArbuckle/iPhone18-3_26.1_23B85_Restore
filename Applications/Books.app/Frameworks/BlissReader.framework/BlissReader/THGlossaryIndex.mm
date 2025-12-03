@interface THGlossaryIndex
+ (id)alphabeticalIndexForEntries:(id)entries;
+ (id)alphabeticalIndexForGlossary:(id)glossary withPrefix:(id)prefix;
- (BOOL)isEqual:(id)equal;
- (id)entryAtIndex:(unint64_t)index;
- (id)entryForRowAtIndexPath:(id)path;
- (id)indexPathForEntry:(id)entry;
- (id)p_sectionAtIndex:(unint64_t)index;
- (id)p_sectionForSectionTitle:(id)title;
- (id)titleForHeaderInSection:(int64_t)section;
- (int64_t)indexForEntry:(id)entry;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (int64_t)sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (void)dealloc;
- (void)p_buildAlphabeticalIndexForGlossaryEntries:(id)entries;
- (void)p_releaseData;
@end

@implementation THGlossaryIndex

- (void)p_releaseData
{
  self->mSortedEntries = 0;

  self->mEntryToIndexMap = 0;
  self->mSections = 0;

  self->mSectionTitleToSectionMap = 0;
  self->mSectionIndexTitles = 0;
}

- (id)p_sectionForSectionTitle:(id)title
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mSections = self->mSections;
  v5 = [(NSMutableArray *)mSections countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(mSections);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if (![objc_msgSend(v9 "sectionTitle")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)mSections countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)p_buildAlphabeticalIndexForGlossaryEntries:(id)entries
{
  v5 = [entries count];
  self->mSections = objc_alloc_init(NSMutableArray);
  self->mSectionTitleToSectionMap = objc_alloc_init(NSMutableDictionary);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = [entries countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(entries);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        v11 = sub_BE208(v10);
        v12 = [(NSMutableDictionary *)self->mSectionTitleToSectionMap objectForKey:v11];
        if (v12)
        {
          [v12 addEntry:v10];
        }

        else
        {
          v13 = [[THGlossaryIndexSection alloc] initWithSectionTitle:v11 andEntry:v10];
          [(NSMutableDictionary *)self->mSectionTitleToSectionMap setObject:v13 forKey:v11];
          [(NSMutableArray *)self->mSections addObject:v13];
        }
      }

      v7 = [entries countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->mSections sortUsingSelector:"compare:"];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  mSections = self->mSections;
  v15 = [(NSMutableArray *)mSections countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v46;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(mSections);
        }

        [*(*(&v45 + 1) + 8 * j) setSectionIndex:v17++];
      }

      v16 = [(NSMutableArray *)mSections countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v16);
  }

  self->mEntryToIndexMap = [[TSUPointerKeyDictionary alloc] initWithCapacity:v5];
  self->mSortedEntries = [[NSMutableArray alloc] initWithCapacity:v5];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->mSections;
  v20 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v42;
    do
    {
      for (k = 0; k != v21; k = k + 1)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v41 + 1) + 8 * k);
        if ([v25 entryCount] >= 1)
        {
          v26 = 0;
          do
          {
            v27 = [v25 entryAtIndex:v26];
            [(NSMutableArray *)self->mSortedEntries addObject:v27];
            [(TSUPointerKeyDictionary *)self->mEntryToIndexMap setObject:[NSNumber forUncopiedKey:"numberWithInteger:" numberWithInteger:?], v27];
          }

          while ([v25 entryCount] > v26);
          v22 += v26;
        }
      }

      v21 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v21);
  }

  self->mSectionIndexTitles = -[NSArray copy]([+[UILocalizedIndexedCollation currentCollation](UILocalizedIndexedCollation sectionTitles], "copy");
  if ([(NSMutableArray *)self->mSections count])
  {
    v28 = [(NSMutableArray *)self->mSections objectAtIndex:0];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    mSectionIndexTitles = self->mSectionIndexTitles;
    v30 = [(NSArray *)mSectionIndexTitles countByEnumeratingWithState:&v37 objects:v53 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v38;
      do
      {
        v33 = 0;
        v34 = v28;
        do
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(mSectionIndexTitles);
          }

          v35 = *(*(&v37 + 1) + 8 * v33);
          v28 = [(NSMutableDictionary *)self->mSectionTitleToSectionMap objectForKey:v35];
          if (!v28)
          {
            [(NSMutableDictionary *)self->mSectionTitleToSectionMap setObject:v34 forKey:v35];
            v28 = v34;
          }

          v33 = v33 + 1;
          v34 = v28;
        }

        while (v31 != v33);
        v31 = [(NSArray *)mSectionIndexTitles countByEnumeratingWithState:&v37 objects:v53 count:16];
      }

      while (v31);
    }
  }
}

+ (id)alphabeticalIndexForEntries:(id)entries
{
  v4 = objc_alloc_init(THGlossaryIndex);
  [(THGlossaryIndex *)v4 p_buildAlphabeticalIndexForGlossaryEntries:entries];
  return v4;
}

+ (id)alphabeticalIndexForGlossary:(id)glossary withPrefix:(id)prefix
{
  v6 = objc_alloc_init(THGlossaryIndex);
  entryCount = [glossary entryCount];
  v8 = [[NSMutableArray alloc] initWithCapacity:entryCount];
  if ([prefix length])
  {
    normalizedStringForSearch = [prefix normalizedStringForSearch];
    if (entryCount >= 1)
    {
      v10 = normalizedStringForSearch;
      for (i = 0; i != entryCount; ++i)
      {
        v12 = [glossary entryAtIndex:i];
        if ([v12 containsPrefix:v10])
        {
          [v8 addObject:v12];
        }
      }
    }
  }

  else if (entryCount >= 1)
  {
    for (j = 0; j != entryCount; ++j)
    {
      v14 = [glossary entryAtIndex:j];
      if ([objc_msgSend(v14 "term")])
      {
        [v8 addObject:v14];
      }

      else if (![objc_msgSend(v14 "term")])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }
  }

  [(THGlossaryIndex *)v6 p_buildAlphabeticalIndexForGlossaryEntries:v8];
  return v6;
}

- (void)dealloc
{
  [(THGlossaryIndex *)self p_releaseData];
  v3.receiver = self;
  v3.super_class = THGlossaryIndex;
  [(THGlossaryIndex *)&v3 dealloc];
}

- (id)p_sectionAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->mSections count]<= index)
  {
    return 0;
  }

  mSections = self->mSections;

  return [(NSMutableArray *)mSections objectAtIndex:index];
}

- (id)entryForRowAtIndexPath:(id)path
{
  if (!path)
  {
    return 0;
  }

  v4 = -[THGlossaryIndex p_sectionAtIndex:](self, "p_sectionAtIndex:", [path section]);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [path row];
  if (v6 >= [v5 entryCount] || (objc_msgSend(path, "row") & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v7 = [path row];

  return [v5 entryAtIndex:v7];
}

- (id)indexPathForEntry:(id)entry
{
  v4 = [(NSMutableDictionary *)self->mSectionTitleToSectionMap objectForKey:sub_BE208(entry)];
  if (v4 && (v5 = v4, v6 = [v4 indexForEntry:entry], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = v6;
    sectionIndex = [v5 sectionIndex];
    v7 = v9;
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v7 = 0;
    sectionIndex = 0;
  }

  return [NSIndexPath indexPathForRow:v7 inSection:sectionIndex];
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  v3 = [(THGlossaryIndex *)self p_sectionAtIndex:section];

  return [v3 entryCount];
}

- (int64_t)sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  index = [(NSMutableDictionary *)self->mSectionTitleToSectionMap objectForKey:title, index];

  return [index sectionIndex];
}

- (id)titleForHeaderInSection:(int64_t)section
{
  v3 = [(THGlossaryIndex *)self p_sectionAtIndex:section];

  return [v3 sectionTitle];
}

- (id)entryAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->mSortedEntries count]<= index)
  {
    return 0;
  }

  mSortedEntries = self->mSortedEntries;

  return [(NSMutableArray *)mSortedEntries objectAtIndex:index];
}

- (int64_t)indexForEntry:(id)entry
{
  if (!entry)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(TSUPointerKeyDictionary *)self->mEntryToIndexMap objectForKey:?];
  if (v3)
  {
    return [v3 intValue];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = *(v4 + 8);
    mSortedEntries = self->mSortedEntries;

    LOBYTE(v4) = [(NSMutableArray *)mSortedEntries isEqual:v5];
  }

  return v4;
}

@end