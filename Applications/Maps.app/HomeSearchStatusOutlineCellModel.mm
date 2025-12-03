@interface HomeSearchStatusOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (HomeSearchStatusOutlineCellModel)initWithErrorString:(id)string enableStructuredRAPAffordance:(BOOL)affordance delegate:(id)delegate;
@end

@implementation HomeSearchStatusOutlineCellModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    errorString = [(HomeSearchStatusOutlineCellModel *)v5 errorString];
    v7 = errorString;
    if (errorString == self->_errorString)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(NSString *)errorString isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HomeSearchStatusOutlineCellModel)initWithErrorString:(id)string enableStructuredRAPAffordance:(BOOL)affordance delegate:(id)delegate
{
  stringCopy = string;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = HomeSearchStatusOutlineCellModel;
  v11 = [(HomeSearchStatusOutlineCellModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_errorString, string);
    v12->_enableStructuredRAPAffordance = affordance;
    objc_storeStrong(&v12->_delegate, delegate);
  }

  return v12;
}

@end