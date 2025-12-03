@interface ProfileCharacteristicsViewControllerWithDoneButton
- (_TtC5HeartP33_D11295934EA630C16E68E651ADA1CA7C50ProfileCharacteristicsViewControllerWithDoneButton)initWithCoder:(id)coder;
- (_TtC5HeartP33_D11295934EA630C16E68E651ADA1CA7C50ProfileCharacteristicsViewControllerWithDoneButton)initWithHealthStore:(id)store;
- (void)dismissNavigationViewController;
- (void)viewDidLoad;
@end

@implementation ProfileCharacteristicsViewControllerWithDoneButton

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ProfileCharacteristicsViewControllerWithDoneButton();
  v2 = v6.receiver;
  [(ProfileCharacteristicsViewController *)&v6 viewDidLoad];
  v3 = objc_allocWithZone(MEMORY[0x29EDC7940]);
  v4 = [v3 initWithBarButtonSystemItem:0 target:v2 action:{sel_dismissNavigationViewController, v6.receiver, v6.super_class}];
  navigationItem = [v2 navigationItem];
  [navigationItem setLeftBarButtonItem_];
}

- (void)dismissNavigationViewController
{
  selfCopy = self;
  navigationController = [(ProfileCharacteristicsViewControllerWithDoneButton *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC5HeartP33_D11295934EA630C16E68E651ADA1CA7C50ProfileCharacteristicsViewControllerWithDoneButton)initWithHealthStore:(id)store
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ProfileCharacteristicsViewControllerWithDoneButton();
  return [(ProfileCharacteristicsViewController *)&v5 initWithHealthStore:store];
}

- (_TtC5HeartP33_D11295934EA630C16E68E651ADA1CA7C50ProfileCharacteristicsViewControllerWithDoneButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ProfileCharacteristicsViewControllerWithDoneButton();
  coderCopy = coder;
  v5 = [(ProfileCharacteristicsViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end