@interface HNDButtonStateContainer
- (HNDButtonStateContainer)initWithUpButton:(id)a3 downButton:(id)a4;
@end

@implementation HNDButtonStateContainer

- (HNDButtonStateContainer)initWithUpButton:(id)a3 downButton:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HNDButtonStateContainer;
  v9 = [(HNDButtonStateContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upButton, a3);
    objc_storeStrong(&v10->_downButton, a4);
  }

  return v10;
}

@end