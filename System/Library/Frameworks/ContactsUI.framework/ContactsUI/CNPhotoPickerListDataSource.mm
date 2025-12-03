@interface CNPhotoPickerListDataSource
+ (CGSize)getSuggestionItemSize;
+ (id)symbolImageNameForAddItemType:(unint64_t)type;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (unint64_t)itemsPerRowForSection:(int64_t)section;
@end

@implementation CNPhotoPickerListDataSource

+ (CGSize)getSuggestionItemSize
{
  v2 = 86.0;
  v3 = 86.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)symbolImageNameForAddItemType:(unint64_t)type
{
  if (type < 3)
  {
    return off_1E74E3B48[type];
  }

  NSLog(&cfstr_Cnphotopickerl.isa, a2);
  return 0;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if (section < 0)
  {
    return 0;
  }

  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v6 = [providerGroups count];

  if (v6 <= section)
  {
    return 0;
  }

  providerGroups2 = [(CNPhotoPickerDataSource *)self providerGroups];
  v8 = [providerGroups2 objectAtIndexedSubscript:section];

  if ([v8 groupType] || objc_msgSend(v8, "numberOfItems") <= 0)
  {
    groupIsCollapsedState = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
    v10 = [groupIsCollapsedState count];

    if (v10 <= section)
    {
      numberOfItems2 = 0;
    }

    else
    {
      groupIsCollapsedState2 = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
      v12 = [groupIsCollapsedState2 objectAtIndexedSubscript:section];
      bOOLValue = [v12 BOOLValue];

      if (bOOLValue)
      {
        numberOfItems2 = 2 * [(CNPhotoPickerListDataSource *)self itemsPerRowForSection:section];
        numberOfItems = [v8 numberOfItems];
        if (numberOfItems2 >= numberOfItems)
        {
          numberOfItems2 = numberOfItems;
        }
      }

      else
      {
        numberOfItems2 = [v8 numberOfItems];
      }
    }
  }

  else
  {
    numberOfItems2 = 1;
  }

  return numberOfItems2;
}

- (unint64_t)itemsPerRowForSection:(int64_t)section
{
  providerGroups = [(CNPhotoPickerDataSource *)self providerGroups];
  v5 = [providerGroups objectAtIndex:section];

  itemsPerRow = [v5 itemsPerRow];
  return itemsPerRow;
}

@end