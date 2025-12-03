@interface TwoLinesCollectionOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (TwoLinesCollectionOutlineCellModel)initWithCollection:(id)collection accessoryModels:(id)models backgroundModel:(id)model actionModel:(id)actionModel;
@end

@implementation TwoLinesCollectionOutlineCellModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v15.receiver = self;
    v15.super_class = TwoLinesCollectionOutlineCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v15 isEqual:v6])
    {
      collection = [(TwoLinesCollectionOutlineCellModel *)v6 collection];
      v8 = collection;
      if (collection == self->_collection || [(CollectionHandler *)collection isEqual:?])
      {
        accessoryModels = [(TwoLinesCollectionOutlineCellModel *)v6 accessoryModels];
        v10 = accessoryModels;
        if (accessoryModels == self->_accessoryModels || [(NSArray *)accessoryModels isEqual:?])
        {
          actionModel = [(TwoLinesCollectionOutlineCellModel *)v6 actionModel];
          v12 = actionModel;
          if (actionModel == self->_actionModel)
          {
            v13 = 1;
          }

          else
          {
            v13 = [(TwoLinesOutlineCellActionModel *)actionModel isEqual:?];
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TwoLinesCollectionOutlineCellModel)initWithCollection:(id)collection accessoryModels:(id)models backgroundModel:(id)model actionModel:(id)actionModel
{
  collectionCopy = collection;
  modelsCopy = models;
  actionModelCopy = actionModel;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100F95220;
  v19[3] = &unk_10165F700;
  v14 = collectionCopy;
  v20 = v14;
  v18.receiver = self;
  v18.super_class = TwoLinesCollectionOutlineCellModel;
  v15 = [(TwoLinesBasicOutlineCellModel *)&v18 initWithBackgroundModel:model contentModelBlock:v19];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_collection, collection);
    objc_storeStrong(&v16->_accessoryModels, models);
    objc_storeStrong(&v16->_actionModel, actionModel);
  }

  return v16;
}

@end