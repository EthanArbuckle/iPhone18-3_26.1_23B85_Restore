@interface ProfileCharacteristicsViewControllerWithDoneButton
- (_TtC5HeartP33_D11295934EA630C16E68E651ADA1CA7C50ProfileCharacteristicsViewControllerWithDoneButton)initWithCoder:(id)a3;
- (_TtC5HeartP33_D11295934EA630C16E68E651ADA1CA7C50ProfileCharacteristicsViewControllerWithDoneButton)initWithHealthStore:(id)a3;
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
  v5 = [v2 navigationItem];
  [v5 setLeftBarButtonItem_];
}

- (void)dismissNavigationViewController
{
  v4 = self;
  v2 = [(ProfileCharacteristicsViewControllerWithDoneButton *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC5HeartP33_D11295934EA630C16E68E651ADA1CA7C50ProfileCharacteristicsViewControllerWithDoneButton)initWithHealthStore:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ProfileCharacteristicsViewControllerWithDoneButton();
  return [(ProfileCharacteristicsViewController *)&v5 initWithHealthStore:a3];
}

- (_TtC5HeartP33_D11295934EA630C16E68E651ADA1CA7C50ProfileCharacteristicsViewControllerWithDoneButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ProfileCharacteristicsViewControllerWithDoneButton();
  v4 = a3;
  v5 = [(ProfileCharacteristicsViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end