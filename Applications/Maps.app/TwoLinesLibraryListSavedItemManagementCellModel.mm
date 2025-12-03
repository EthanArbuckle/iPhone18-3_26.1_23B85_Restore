@interface TwoLinesLibraryListSavedItemManagementCellModel
- (BOOL)isEqual:(id)equal;
- (TwoLinesLibraryListSavedItemManagementCellModel)initWithItem:(id)item;
@end

@implementation TwoLinesLibraryListSavedItemManagementCellModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v11.receiver = self;
    v11.super_class = TwoLinesLibraryListSavedItemManagementCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v11 isEqual:v6])
    {
      item = [(TwoLinesLibraryListSavedItemManagementCellModel *)v6 item];
      v8 = item;
      if (item == self->_item)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(LibraryListSavedItemManagementItem *)item isEqual:?];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TwoLinesLibraryListSavedItemManagementCellModel)initWithItem:(id)item
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100F95B38;
  v10[3] = &unk_10165F700;
  itemCopy = item;
  v11 = itemCopy;
  v9.receiver = self;
  v9.super_class = TwoLinesLibraryListSavedItemManagementCellModel;
  v6 = [(TwoLinesBasicOutlineCellModel *)&v9 initWithBackgroundModel:0 contentModelBlock:v10];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
  }

  return v7;
}

@end