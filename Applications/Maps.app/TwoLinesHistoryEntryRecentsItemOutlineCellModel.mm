@interface TwoLinesHistoryEntryRecentsItemOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (TwoLinesHistoryEntryRecentsItemOutlineCellModel)initWithHistoryEntryRecentsItem:(id)item accessoryModels:(id)models backgroundModel:(id)model;
@end

@implementation TwoLinesHistoryEntryRecentsItemOutlineCellModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = TwoLinesHistoryEntryRecentsItemOutlineCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v13 isEqual:v6])
    {
      recentsItem = [(TwoLinesHistoryEntryRecentsItemOutlineCellModel *)v6 recentsItem];
      v8 = recentsItem;
      if (recentsItem == self->_recentsItem || [(HistoryEntryRecentsItem *)recentsItem isEqual:?])
      {
        accessoryModels = [(TwoLinesHistoryEntryRecentsItemOutlineCellModel *)v6 accessoryModels];
        v10 = accessoryModels;
        if (accessoryModels == self->_accessoryModels)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSArray *)accessoryModels isEqual:?];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (TwoLinesHistoryEntryRecentsItemOutlineCellModel)initWithHistoryEntryRecentsItem:(id)item accessoryModels:(id)models backgroundModel:(id)model
{
  itemCopy = item;
  modelsCopy = models;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100F940C8;
  v16[3] = &unk_10165F700;
  v11 = itemCopy;
  v17 = v11;
  v15.receiver = self;
  v15.super_class = TwoLinesHistoryEntryRecentsItemOutlineCellModel;
  v12 = [(TwoLinesBasicOutlineCellModel *)&v15 initWithBackgroundModel:model contentModelBlock:v16];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_recentsItem, item);
    objc_storeStrong(&v13->_accessoryModels, models);
  }

  return v13;
}

@end