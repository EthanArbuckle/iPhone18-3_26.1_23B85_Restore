@interface THGlossaryIndexSection
- (NSArray)entries;
- (THGlossaryIndexSection)initWithSectionTitle:(id)title andEntry:(id)entry;
- (id)entryAtIndex:(int64_t)index;
- (int64_t)compare:(id)compare;
- (int64_t)indexForEntry:(id)entry;
- (void)dealloc;
@end

@implementation THGlossaryIndexSection

- (THGlossaryIndexSection)initWithSectionTitle:(id)title andEntry:(id)entry
{
  v8.receiver = self;
  v8.super_class = THGlossaryIndexSection;
  v6 = [(THGlossaryIndexSection *)&v8 init];
  if (v6)
  {
    v6->mSectionTitle = [title copy];
    v6->mEntries = [[NSMutableArray alloc] initWithObjects:{entry, 0}];
    v6->mEntriesNeedSorting = 0;
  }

  return v6;
}

- (void)dealloc
{
  self->mSectionTitle = 0;

  self->mEntries = 0;
  v3.receiver = self;
  v3.super_class = THGlossaryIndexSection;
  [(THGlossaryIndexSection *)&v3 dealloc];
}

- (int64_t)compare:(id)compare
{
  mSectionTitle = self->mSectionTitle;
  sectionTitle = [compare sectionTitle];

  return [(NSString *)mSectionTitle localizedCaseInsensitiveCompare:sectionTitle];
}

- (id)entryAtIndex:(int64_t)index
{
  if (self->mEntriesNeedSorting)
  {
    [(NSMutableArray *)self->mEntries sortUsingFunction:sub_BDAA4 context:0];
    self->mEntriesNeedSorting = 0;
  }

  mEntries = self->mEntries;

  return [(NSMutableArray *)mEntries objectAtIndex:index];
}

- (int64_t)indexForEntry:(id)entry
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mEntries = self->mEntries;
  v5 = [(NSMutableArray *)mEntries countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  v10 = v7;
  v7 += v6;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(mEntries);
    }

    if (*(*(&v12 + 1) + 8 * v9) == entry)
    {
      return v10;
    }

    ++v10;
    if (v6 == ++v9)
    {
      v6 = [(NSMutableArray *)mEntries countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }
}

- (NSArray)entries
{
  if (self->mEntriesNeedSorting)
  {
    [(NSMutableArray *)self->mEntries sortUsingFunction:sub_BDAA4 context:0];
    self->mEntriesNeedSorting = 0;
  }

  mEntries = self->mEntries;

  return [NSArray arrayWithArray:mEntries];
}

@end