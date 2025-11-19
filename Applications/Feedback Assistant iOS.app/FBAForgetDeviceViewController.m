@interface FBAForgetDeviceViewController
- (FBAForgetDeviceProtocol)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (void)didReceiveMemoryWarning;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation FBAForgetDeviceViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = FBAForgetDeviceViewController;
  [(FBAForgetDeviceViewController *)&v5 viewDidLoad];
  v3 = [(FBAForgetDeviceViewController *)self tableView];
  [v3 setEstimatedSectionHeaderHeight:0.0];

  v4 = [(FBAForgetDeviceViewController *)self tableView];
  [v4 setEstimatedSectionFooterHeight:0.0];

  [(FBAForgetDeviceViewController *)self setClearsSelectionOnViewWillAppear:0];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = FBAForgetDeviceViewController;
  [(FBAForgetDeviceViewController *)&v2 didReceiveMemoryWarning];
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [NSBundle mainBundle:a3];
  v6 = [v5 localizedStringForKey:@"FORGET_DEVICE_INSTRUCTION" value:&stru_1000E2210 table:0];
  v7 = [(FBAForgetDeviceViewController *)self device];
  v8 = [v7 name];
  if ([v8 isEqualToString:&stru_1000E2210])
  {
    v9 = +[NSBundle mainBundle];
    [v9 localizedStringForKey:@"THIS_DEVICE" value:&stru_1000E2210 table:0];
  }

  else
  {
    v9 = [(FBAForgetDeviceViewController *)self device];
    [v9 name];
  }
  v10 = ;
  v11 = [NSString stringWithFormat:v6, v10];

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"ForgetDeviceCell" forIndexPath:a4];
  v5 = +[iFBAConstants tintColor];
  v6 = [v4 textLabel];
  [v6 setTextColor:v5];

  v7 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:UIAccessibilityTraitButton | v7];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [(FBAForgetDeviceViewController *)self delegate:a3];

  if (v5)
  {
    v6 = [(FBAForgetDeviceViewController *)self delegate];
    v7 = [(FBAForgetDeviceViewController *)self device];
    [v6 didTapForgetDevice:v7];
  }

  v9 = [(FBAForgetDeviceViewController *)self navigationController];
  v8 = [v9 popViewControllerAnimated:1];
}

- (FBAForgetDeviceProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end