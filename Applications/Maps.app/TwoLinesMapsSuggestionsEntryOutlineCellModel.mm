@interface TwoLinesMapsSuggestionsEntryOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (TwoLinesMapsSuggestionsEntryOutlineCellModel)initWithMapsSuggestionsEntry:(id)entry accessoryModels:(id)models backgroundModel:(id)model;
@end

@implementation TwoLinesMapsSuggestionsEntryOutlineCellModel

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
    v13.super_class = TwoLinesMapsSuggestionsEntryOutlineCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v13 isEqual:v6])
    {
      entry = [(TwoLinesMapsSuggestionsEntryOutlineCellModel *)v6 entry];
      v8 = entry;
      if (entry == self->_entry || [(MapsSuggestionsEntry *)entry isEqual:?])
      {
        accessoryModels = [(TwoLinesMapsSuggestionsEntryOutlineCellModel *)v6 accessoryModels];
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

- (TwoLinesMapsSuggestionsEntryOutlineCellModel)initWithMapsSuggestionsEntry:(id)entry accessoryModels:(id)models backgroundModel:(id)model
{
  entryCopy = entry;
  modelsCopy = models;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100F9486C;
  v16[3] = &unk_10165F700;
  v11 = entryCopy;
  v17 = v11;
  v15.receiver = self;
  v15.super_class = TwoLinesMapsSuggestionsEntryOutlineCellModel;
  v12 = [(TwoLinesBasicOutlineCellModel *)&v15 initWithBackgroundModel:model contentModelBlock:v16];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entry, entry);
    objc_storeStrong(&v13->_accessoryModels, models);
  }

  return v13;
}

@end