@interface FRFeedPickerSection
+ (id)feedPickerSectionWithTags:(id)a3 sorter:(id)a4 popularTagIDs:(id)a5 transformBlock:(id)a6;
- (BOOL)containsTag:(id)a3;
- (NSArray)tags;
- (id)_tagsForSortOrder:(unint64_t)a3;
- (id)feedDescriptorsForSort:(unint64_t)a3;
- (int64_t)indexOfTag:(id)a3 withSortOrder:(unint64_t)a4;
- (int64_t)numberOfTags;
- (void)_buildSortedArrays;
- (void)addTag:(id)a3;
- (void)addTags:(id)a3;
- (void)removeTag:(id)a3;
@end

@implementation FRFeedPickerSection

+ (id)feedPickerSectionWithTags:(id)a3 sorter:(id)a4 popularTagIDs:(id)a5 transformBlock:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = objc_alloc_init(FRFeedPickerSection);
  if (v9)
  {
    [NSMutableSet setWithArray:v9];
  }

  else
  {
    +[NSMutableSet set];
  }
  v14 = ;
  [(FRFeedPickerSection *)v13 setMutableTags:v14];

  [(FRFeedPickerSection *)v13 setSorter:v12];
  [(FRFeedPickerSection *)v13 setPopularTagIDs:v11];

  [(FRFeedPickerSection *)v13 setTransformBlock:v10];
  [(FRFeedPickerSection *)v13 _buildSortedArrays];

  return v13;
}

- (NSArray)tags
{
  v2 = [(FRFeedPickerSection *)self mutableTags];
  v3 = [v2 copy];
  v4 = [v3 allObjects];

  return v4;
}

- (void)addTag:(id)a3
{
  v4 = a3;
  v5 = [(FRFeedPickerSection *)self mutableTags];
  [v5 addObject:v4];

  [(FRFeedPickerSection *)self _buildSortedArrays];
}

- (void)addTags:(id)a3
{
  v4 = a3;
  v5 = [(FRFeedPickerSection *)self mutableTags];
  [v5 addObjectsFromArray:v4];

  [(FRFeedPickerSection *)self _buildSortedArrays];
}

- (void)removeTag:(id)a3
{
  v4 = a3;
  v5 = [(FRFeedPickerSection *)self mutableTags];
  [v5 removeObject:v4];

  [(FRFeedPickerSection *)self _buildSortedArrays];
}

- (int64_t)indexOfTag:(id)a3 withSortOrder:(unint64_t)a4
{
  v6 = a3;
  v7 = [(FRFeedPickerSection *)self _tagsForSortOrder:a4];
  v8 = [v7 indexOfObject:v6];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006DFD0();
  }

  return v8;
}

- (BOOL)containsTag:(id)a3
{
  v4 = a3;
  v5 = [(FRFeedPickerSection *)self tags];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (int64_t)numberOfTags
{
  v3 = [(FRFeedPickerSection *)self alphabeticalTags];
  v4 = [v3 count];

  v5 = [(FRFeedPickerSection *)self recentlyOpenedTags];
  v6 = [v5 count];

  if (v4 != v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E09C();
  }

  v7 = [(FRFeedPickerSection *)self mostFrequentlyVisitedTags];
  v8 = [v7 count];

  if (v4 != v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E168();
  }

  return v4;
}

- (id)feedDescriptorsForSort:(unint64_t)a3
{
  v4 = [(FRFeedPickerSection *)self _tagsForSortOrder:a3];
  v5 = [(FRFeedPickerSection *)self transformBlock];
  v6 = [v4 fc_arrayByTransformingWithBlock:v5];

  return v6;
}

- (id)_tagsForSortOrder:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(FRFeedPickerSection *)self mostFrequentlyVisitedTags];
  }

  else if (a3 == 1)
  {
    v3 = [(FRFeedPickerSection *)self recentlyOpenedTags];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(FRFeedPickerSection *)self alphabeticalTags];
  }

  return v3;
}

- (void)_buildSortedArrays
{
  v3 = [(FRFeedPickerSection *)self sorter];
  v4 = [(FRFeedPickerSection *)self tags];
  v5 = [v3 sortSubscriptionsAlphabetically:v4];
  [(FRFeedPickerSection *)self setAlphabeticalTags:v5];

  v6 = [(FRFeedPickerSection *)self sorter];
  v7 = [(FRFeedPickerSection *)self tags];
  v8 = [(FRFeedPickerSection *)self popularTagIDs];
  v9 = [v6 sortSubscriptionsByRecency:v7 sortedPopularTagIDs:v8];
  [(FRFeedPickerSection *)self setRecentlyOpenedTags:v9];

  v13 = [(FRFeedPickerSection *)self tags];
  v10 = [(FRFeedPickerSection *)self popularTagIDs];
  v11 = [(FRFeedPickerSection *)self sorter];
  v12 = tagsSortedByMostFrequentlyVisited(v13, v10, v11);
  [(FRFeedPickerSection *)self setMostFrequentlyVisitedTags:v12];
}

@end