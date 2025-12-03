@interface TwoLinesRecentContactOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (TwoLinesRecentContactOutlineCellModel)initWithRecentContact:(id)contact backgroundModel:(id)model;
@end

@implementation TwoLinesRecentContactOutlineCellModel

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
    v11.super_class = TwoLinesRecentContactOutlineCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v11 isEqual:v6])
    {
      recentContact = [(TwoLinesRecentContactOutlineCellModel *)v6 recentContact];
      v8 = recentContact;
      if (recentContact == self->_recentContact)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(CRRecentContact *)recentContact isEqual:?];
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

- (TwoLinesRecentContactOutlineCellModel)initWithRecentContact:(id)contact backgroundModel:(id)model
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100F942D8;
  v12[3] = &unk_10165F700;
  contactCopy = contact;
  v13 = contactCopy;
  v11.receiver = self;
  v11.super_class = TwoLinesRecentContactOutlineCellModel;
  v8 = [(TwoLinesBasicOutlineCellModel *)&v11 initWithBackgroundModel:model contentModelBlock:v12];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recentContact, contact);
  }

  return v9;
}

@end