@interface CNPhotoPickerListDataSource
+ (CGSize)getSuggestionItemSize;
+ (id)symbolImageNameForAddItemType:(unint64_t)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (unint64_t)itemsPerRowForSection:(int64_t)a3;
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

+ (id)symbolImageNameForAddItemType:(unint64_t)a3
{
  if (a3 < 3)
  {
    return off_1E74E3B48[a3];
  }

  NSLog(&cfstr_Cnphotopickerl.isa, a2);
  return 0;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  if (a3 < 0)
  {
    return 0;
  }

  v5 = [(CNPhotoPickerDataSource *)self providerGroups];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(CNPhotoPickerDataSource *)self providerGroups];
  v8 = [v7 objectAtIndexedSubscript:a3];

  if ([v8 groupType] || objc_msgSend(v8, "numberOfItems") <= 0)
  {
    v9 = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
    v10 = [v9 count];

    if (v10 <= a3)
    {
      v14 = 0;
    }

    else
    {
      v11 = [(CNPhotoPickerDataSource *)self groupIsCollapsedState];
      v12 = [v11 objectAtIndexedSubscript:a3];
      v13 = [v12 BOOLValue];

      if (v13)
      {
        v14 = 2 * [(CNPhotoPickerListDataSource *)self itemsPerRowForSection:a3];
        v15 = [v8 numberOfItems];
        if (v14 >= v15)
        {
          v14 = v15;
        }
      }

      else
      {
        v14 = [v8 numberOfItems];
      }
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (unint64_t)itemsPerRowForSection:(int64_t)a3
{
  v4 = [(CNPhotoPickerDataSource *)self providerGroups];
  v5 = [v4 objectAtIndex:a3];

  v6 = [v5 itemsPerRow];
  return v6;
}

@end