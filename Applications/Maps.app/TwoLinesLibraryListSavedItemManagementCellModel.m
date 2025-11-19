@interface TwoLinesLibraryListSavedItemManagementCellModel
- (BOOL)isEqual:(id)a3;
- (TwoLinesLibraryListSavedItemManagementCellModel)initWithItem:(id)a3;
@end

@implementation TwoLinesLibraryListSavedItemManagementCellModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v11.receiver = self;
    v11.super_class = TwoLinesLibraryListSavedItemManagementCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v11 isEqual:v6])
    {
      v7 = [(TwoLinesLibraryListSavedItemManagementCellModel *)v6 item];
      v8 = v7;
      if (v7 == self->_item)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(LibraryListSavedItemManagementItem *)v7 isEqual:?];
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

- (TwoLinesLibraryListSavedItemManagementCellModel)initWithItem:(id)a3
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100F95B38;
  v10[3] = &unk_10165F700;
  v5 = a3;
  v11 = v5;
  v9.receiver = self;
  v9.super_class = TwoLinesLibraryListSavedItemManagementCellModel;
  v6 = [(TwoLinesBasicOutlineCellModel *)&v9 initWithBackgroundModel:0 contentModelBlock:v10];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

@end