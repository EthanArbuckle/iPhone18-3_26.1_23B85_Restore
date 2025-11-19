@interface AMSPair
- (AMSPair)initWithFirst:(id)a3 second:(id)a4;
@end

@implementation AMSPair

- (AMSPair)initWithFirst:(id)a3 second:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSPair;
  v9 = [(AMSPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, a3);
    objc_storeStrong(&v10->_second, a4);
  }

  return v10;
}

@end