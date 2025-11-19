@interface HOHomeScreenQuickActionItemManager
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_comparatorForSectionIdentifier:(id)a3;
@end

@implementation HOHomeScreenQuickActionItemManager

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[HFHomeItem alloc] initWithHome:v4];
    [(HOHomeScreenQuickActionItemManager *)self setSourceItem:v5];
  }

  if ([v4 hf_shouldBlockCurrentUserFromHome])
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v7 = [[HUCCFavoriteActionSetItemProvider alloc] initWithHome:v4 actionSetItemStyle:0];
    [v7 setMaximumNumberOfItems:3];
    v9 = v7;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v6;
}

- (id)_comparatorForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HOHomeScreenQuickActionItemManager *)self sourceItem];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:HFResultDisplayReorderableActionSetItemListKey];

  if (v7)
  {
    v8 = [v7 sortedHomeKitItemComparator];
  }

  else
  {
    v9 = [(HOHomeScreenQuickActionItemManager *)self sourceItem];
    v10 = [v9 latestResults];

    if (v10)
    {
      v11 = [(HOHomeScreenQuickActionItemManager *)self sourceItem];
      NSLog(@"No HFResultDisplayReorderableActionSetItemListKey in our sourceItem: %@", v11);
    }

    v14.receiver = self;
    v14.super_class = HOHomeScreenQuickActionItemManager;
    v8 = [(HOHomeScreenQuickActionItemManager *)&v14 _comparatorForSectionIdentifier:v4];
  }

  v12 = v8;

  return v12;
}

@end