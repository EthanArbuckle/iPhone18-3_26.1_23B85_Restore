@interface TwoLinesRecentContactOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (TwoLinesRecentContactOutlineCellModel)initWithRecentContact:(id)a3 backgroundModel:(id)a4;
@end

@implementation TwoLinesRecentContactOutlineCellModel

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
    v11.super_class = TwoLinesRecentContactOutlineCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v11 isEqual:v6])
    {
      v7 = [(TwoLinesRecentContactOutlineCellModel *)v6 recentContact];
      v8 = v7;
      if (v7 == self->_recentContact)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(CRRecentContact *)v7 isEqual:?];
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

- (TwoLinesRecentContactOutlineCellModel)initWithRecentContact:(id)a3 backgroundModel:(id)a4
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100F942D8;
  v12[3] = &unk_10165F700;
  v7 = a3;
  v13 = v7;
  v11.receiver = self;
  v11.super_class = TwoLinesRecentContactOutlineCellModel;
  v8 = [(TwoLinesBasicOutlineCellModel *)&v11 initWithBackgroundModel:a4 contentModelBlock:v12];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recentContact, a3);
  }

  return v9;
}

@end