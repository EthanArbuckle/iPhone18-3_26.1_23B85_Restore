@interface TKSmartCardWithError
- (TKSmartCardWithError)initWithCard:(id)a3 error:(id)a4;
@end

@implementation TKSmartCardWithError

- (TKSmartCardWithError)initWithCard:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 slot];
  v12.receiver = self;
  v12.super_class = TKSmartCardWithError;
  v10 = [(TKSmartCard *)&v12 initWithSlot:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_parentCard, a3);
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

@end