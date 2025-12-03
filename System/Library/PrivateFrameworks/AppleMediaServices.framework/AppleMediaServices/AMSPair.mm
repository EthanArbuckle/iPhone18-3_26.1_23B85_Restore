@interface AMSPair
- (AMSPair)initWithFirst:(id)first second:(id)second;
@end

@implementation AMSPair

- (AMSPair)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v12.receiver = self;
  v12.super_class = AMSPair;
  v9 = [(AMSPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, first);
    objc_storeStrong(&v10->_second, second);
  }

  return v10;
}

@end