@interface TwoLinesMapsFavoriteItemOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (TwoLinesMapsFavoriteItemOutlineCellModel)initWithMapsFavoriteItem:(id)a3 accessoryModels:(id)a4 backgroundModel:(id)a5;
@end

@implementation TwoLinesMapsFavoriteItemOutlineCellModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = TwoLinesMapsFavoriteItemOutlineCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v13 isEqual:v6])
    {
      v7 = [(TwoLinesMapsFavoriteItemOutlineCellModel *)v6 item];
      v8 = v7;
      if (v7 == self->_item || [(MapsFavoriteItem *)v7 isEqual:?])
      {
        v9 = [(TwoLinesMapsFavoriteItemOutlineCellModel *)v6 accessoryModels];
        v10 = v9;
        if (v9 == self->_accessoryModels)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSArray *)v9 isEqual:?];
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

- (TwoLinesMapsFavoriteItemOutlineCellModel)initWithMapsFavoriteItem:(id)a3 accessoryModels:(id)a4 backgroundModel:(id)a5
{
  v9 = a3;
  v10 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100F94B40;
  v16[3] = &unk_10165F700;
  v11 = v9;
  v17 = v11;
  v15.receiver = self;
  v15.super_class = TwoLinesMapsFavoriteItemOutlineCellModel;
  v12 = [(TwoLinesBasicOutlineCellModel *)&v15 initWithBackgroundModel:a5 contentModelBlock:v16];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_item, a3);
    objc_storeStrong(&v13->_accessoryModels, a4);
  }

  return v13;
}

@end