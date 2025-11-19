@interface HomeSearchStatusOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (HomeSearchStatusOutlineCellModel)initWithErrorString:(id)a3 enableStructuredRAPAffordance:(BOOL)a4 delegate:(id)a5;
@end

@implementation HomeSearchStatusOutlineCellModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(HomeSearchStatusOutlineCellModel *)v5 errorString];
    v7 = v6;
    if (v6 == self->_errorString)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(NSString *)v6 isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HomeSearchStatusOutlineCellModel)initWithErrorString:(id)a3 enableStructuredRAPAffordance:(BOOL)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HomeSearchStatusOutlineCellModel;
  v11 = [(HomeSearchStatusOutlineCellModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_errorString, a3);
    v12->_enableStructuredRAPAffordance = a4;
    objc_storeStrong(&v12->_delegate, a5);
  }

  return v12;
}

@end