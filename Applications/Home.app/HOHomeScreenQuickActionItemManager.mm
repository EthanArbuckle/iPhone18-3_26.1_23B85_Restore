@interface HOHomeScreenQuickActionItemManager
- (id)_buildItemProvidersForHome:(id)home;
- (id)_comparatorForSectionIdentifier:(id)identifier;
@end

@implementation HOHomeScreenQuickActionItemManager

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  if (homeCopy)
  {
    v5 = [[HFHomeItem alloc] initWithHome:homeCopy];
    [(HOHomeScreenQuickActionItemManager *)self setSourceItem:v5];
  }

  if ([homeCopy hf_shouldBlockCurrentUserFromHome])
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v7 = [[HUCCFavoriteActionSetItemProvider alloc] initWithHome:homeCopy actionSetItemStyle:0];
    [v7 setMaximumNumberOfItems:3];
    v9 = v7;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v6;
}

- (id)_comparatorForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sourceItem = [(HOHomeScreenQuickActionItemManager *)self sourceItem];
  latestResults = [sourceItem latestResults];
  v7 = [latestResults objectForKeyedSubscript:HFResultDisplayReorderableActionSetItemListKey];

  if (v7)
  {
    sortedHomeKitItemComparator = [v7 sortedHomeKitItemComparator];
  }

  else
  {
    sourceItem2 = [(HOHomeScreenQuickActionItemManager *)self sourceItem];
    latestResults2 = [sourceItem2 latestResults];

    if (latestResults2)
    {
      sourceItem3 = [(HOHomeScreenQuickActionItemManager *)self sourceItem];
      NSLog(@"No HFResultDisplayReorderableActionSetItemListKey in our sourceItem: %@", sourceItem3);
    }

    v14.receiver = self;
    v14.super_class = HOHomeScreenQuickActionItemManager;
    sortedHomeKitItemComparator = [(HOHomeScreenQuickActionItemManager *)&v14 _comparatorForSectionIdentifier:identifierCopy];
  }

  v12 = sortedHomeKitItemComparator;

  return v12;
}

@end