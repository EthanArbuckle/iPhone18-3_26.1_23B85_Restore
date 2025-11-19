@interface TwoLinesCollectionOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (TwoLinesCollectionOutlineCellModel)initWithCollection:(id)a3 accessoryModels:(id)a4 backgroundModel:(id)a5 actionModel:(id)a6;
@end

@implementation TwoLinesCollectionOutlineCellModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v15.receiver = self;
    v15.super_class = TwoLinesCollectionOutlineCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v15 isEqual:v6])
    {
      v7 = [(TwoLinesCollectionOutlineCellModel *)v6 collection];
      v8 = v7;
      if (v7 == self->_collection || [(CollectionHandler *)v7 isEqual:?])
      {
        v9 = [(TwoLinesCollectionOutlineCellModel *)v6 accessoryModels];
        v10 = v9;
        if (v9 == self->_accessoryModels || [(NSArray *)v9 isEqual:?])
        {
          v11 = [(TwoLinesCollectionOutlineCellModel *)v6 actionModel];
          v12 = v11;
          if (v11 == self->_actionModel)
          {
            v13 = 1;
          }

          else
          {
            v13 = [(TwoLinesOutlineCellActionModel *)v11 isEqual:?];
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

- (TwoLinesCollectionOutlineCellModel)initWithCollection:(id)a3 accessoryModels:(id)a4 backgroundModel:(id)a5 actionModel:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100F95220;
  v19[3] = &unk_10165F700;
  v14 = v11;
  v20 = v14;
  v18.receiver = self;
  v18.super_class = TwoLinesCollectionOutlineCellModel;
  v15 = [(TwoLinesBasicOutlineCellModel *)&v18 initWithBackgroundModel:a5 contentModelBlock:v19];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_collection, a3);
    objc_storeStrong(&v16->_accessoryModels, a4);
    objc_storeStrong(&v16->_actionModel, a6);
  }

  return v16;
}

@end