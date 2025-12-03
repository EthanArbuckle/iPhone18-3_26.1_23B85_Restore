@interface FRFeedPickerSection
+ (id)feedPickerSectionWithTags:(id)tags sorter:(id)sorter popularTagIDs:(id)ds transformBlock:(id)block;
- (BOOL)containsTag:(id)tag;
- (NSArray)tags;
- (id)_tagsForSortOrder:(unint64_t)order;
- (id)feedDescriptorsForSort:(unint64_t)sort;
- (int64_t)indexOfTag:(id)tag withSortOrder:(unint64_t)order;
- (int64_t)numberOfTags;
- (void)_buildSortedArrays;
- (void)addTag:(id)tag;
- (void)addTags:(id)tags;
- (void)removeTag:(id)tag;
@end

@implementation FRFeedPickerSection

+ (id)feedPickerSectionWithTags:(id)tags sorter:(id)sorter popularTagIDs:(id)ds transformBlock:(id)block
{
  tagsCopy = tags;
  blockCopy = block;
  dsCopy = ds;
  sorterCopy = sorter;
  v13 = objc_alloc_init(FRFeedPickerSection);
  if (tagsCopy)
  {
    [NSMutableSet setWithArray:tagsCopy];
  }

  else
  {
    +[NSMutableSet set];
  }
  v14 = ;
  [(FRFeedPickerSection *)v13 setMutableTags:v14];

  [(FRFeedPickerSection *)v13 setSorter:sorterCopy];
  [(FRFeedPickerSection *)v13 setPopularTagIDs:dsCopy];

  [(FRFeedPickerSection *)v13 setTransformBlock:blockCopy];
  [(FRFeedPickerSection *)v13 _buildSortedArrays];

  return v13;
}

- (NSArray)tags
{
  mutableTags = [(FRFeedPickerSection *)self mutableTags];
  v3 = [mutableTags copy];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)addTag:(id)tag
{
  tagCopy = tag;
  mutableTags = [(FRFeedPickerSection *)self mutableTags];
  [mutableTags addObject:tagCopy];

  [(FRFeedPickerSection *)self _buildSortedArrays];
}

- (void)addTags:(id)tags
{
  tagsCopy = tags;
  mutableTags = [(FRFeedPickerSection *)self mutableTags];
  [mutableTags addObjectsFromArray:tagsCopy];

  [(FRFeedPickerSection *)self _buildSortedArrays];
}

- (void)removeTag:(id)tag
{
  tagCopy = tag;
  mutableTags = [(FRFeedPickerSection *)self mutableTags];
  [mutableTags removeObject:tagCopy];

  [(FRFeedPickerSection *)self _buildSortedArrays];
}

- (int64_t)indexOfTag:(id)tag withSortOrder:(unint64_t)order
{
  tagCopy = tag;
  v7 = [(FRFeedPickerSection *)self _tagsForSortOrder:order];
  v8 = [v7 indexOfObject:tagCopy];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DFD0();
  }

  return v8;
}

- (BOOL)containsTag:(id)tag
{
  tagCopy = tag;
  tags = [(FRFeedPickerSection *)self tags];
  v6 = [tags containsObject:tagCopy];

  return v6;
}

- (int64_t)numberOfTags
{
  alphabeticalTags = [(FRFeedPickerSection *)self alphabeticalTags];
  v4 = [alphabeticalTags count];

  recentlyOpenedTags = [(FRFeedPickerSection *)self recentlyOpenedTags];
  v6 = [recentlyOpenedTags count];

  if (v4 != v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E09C();
  }

  mostFrequentlyVisitedTags = [(FRFeedPickerSection *)self mostFrequentlyVisitedTags];
  v8 = [mostFrequentlyVisitedTags count];

  if (v4 != v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E168();
  }

  return v4;
}

- (id)feedDescriptorsForSort:(unint64_t)sort
{
  v4 = [(FRFeedPickerSection *)self _tagsForSortOrder:sort];
  transformBlock = [(FRFeedPickerSection *)self transformBlock];
  v6 = [v4 fc_arrayByTransformingWithBlock:transformBlock];

  return v6;
}

- (id)_tagsForSortOrder:(unint64_t)order
{
  if (order == 2)
  {
    mostFrequentlyVisitedTags = [(FRFeedPickerSection *)self mostFrequentlyVisitedTags];
  }

  else if (order == 1)
  {
    mostFrequentlyVisitedTags = [(FRFeedPickerSection *)self recentlyOpenedTags];
  }

  else if (order)
  {
    mostFrequentlyVisitedTags = 0;
  }

  else
  {
    mostFrequentlyVisitedTags = [(FRFeedPickerSection *)self alphabeticalTags];
  }

  return mostFrequentlyVisitedTags;
}

- (void)_buildSortedArrays
{
  sorter = [(FRFeedPickerSection *)self sorter];
  tags = [(FRFeedPickerSection *)self tags];
  v5 = [sorter sortSubscriptionsAlphabetically:tags];
  [(FRFeedPickerSection *)self setAlphabeticalTags:v5];

  sorter2 = [(FRFeedPickerSection *)self sorter];
  tags2 = [(FRFeedPickerSection *)self tags];
  popularTagIDs = [(FRFeedPickerSection *)self popularTagIDs];
  v9 = [sorter2 sortSubscriptionsByRecency:tags2 sortedPopularTagIDs:popularTagIDs];
  [(FRFeedPickerSection *)self setRecentlyOpenedTags:v9];

  tags3 = [(FRFeedPickerSection *)self tags];
  popularTagIDs2 = [(FRFeedPickerSection *)self popularTagIDs];
  sorter3 = [(FRFeedPickerSection *)self sorter];
  v12 = tagsSortedByMostFrequentlyVisited(tags3, popularTagIDs2, sorter3);
  [(FRFeedPickerSection *)self setMostFrequentlyVisitedTags:v12];
}

@end