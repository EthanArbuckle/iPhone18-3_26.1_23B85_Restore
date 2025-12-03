@interface HNDButtonStateContainer
- (HNDButtonStateContainer)initWithUpButton:(id)button downButton:(id)downButton;
@end

@implementation HNDButtonStateContainer

- (HNDButtonStateContainer)initWithUpButton:(id)button downButton:(id)downButton
{
  buttonCopy = button;
  downButtonCopy = downButton;
  v12.receiver = self;
  v12.super_class = HNDButtonStateContainer;
  v9 = [(HNDButtonStateContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upButton, button);
    objc_storeStrong(&v10->_downButton, downButton);
  }

  return v10;
}

@end