@interface FBAForgetDeviceViewController
- (FBAForgetDeviceProtocol)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)didReceiveMemoryWarning;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation FBAForgetDeviceViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = FBAForgetDeviceViewController;
  [(FBAForgetDeviceViewController *)&v5 viewDidLoad];
  tableView = [(FBAForgetDeviceViewController *)self tableView];
  [tableView setEstimatedSectionHeaderHeight:0.0];

  tableView2 = [(FBAForgetDeviceViewController *)self tableView];
  [tableView2 setEstimatedSectionFooterHeight:0.0];

  [(FBAForgetDeviceViewController *)self setClearsSelectionOnViewWillAppear:0];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = FBAForgetDeviceViewController;
  [(FBAForgetDeviceViewController *)&v2 didReceiveMemoryWarning];
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [NSBundle mainBundle:view];
  v6 = [v5 localizedStringForKey:@"FORGET_DEVICE_INSTRUCTION" value:&stru_1000E2210 table:0];
  device = [(FBAForgetDeviceViewController *)self device];
  name = [device name];
  if ([name isEqualToString:&stru_1000E2210])
  {
    device2 = +[NSBundle mainBundle];
    [device2 localizedStringForKey:@"THIS_DEVICE" value:&stru_1000E2210 table:0];
  }

  else
  {
    device2 = [(FBAForgetDeviceViewController *)self device];
    [device2 name];
  }
  v10 = ;
  v11 = [NSString stringWithFormat:v6, v10];

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:@"ForgetDeviceCell" forIndexPath:path];
  v5 = +[iFBAConstants tintColor];
  textLabel = [v4 textLabel];
  [textLabel setTextColor:v5];

  accessibilityTraits = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:UIAccessibilityTraitButton | accessibilityTraits];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [(FBAForgetDeviceViewController *)self delegate:view];

  if (v5)
  {
    delegate = [(FBAForgetDeviceViewController *)self delegate];
    device = [(FBAForgetDeviceViewController *)self device];
    [delegate didTapForgetDevice:device];
  }

  navigationController = [(FBAForgetDeviceViewController *)self navigationController];
  v8 = [navigationController popViewControllerAnimated:1];
}

- (FBAForgetDeviceProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end