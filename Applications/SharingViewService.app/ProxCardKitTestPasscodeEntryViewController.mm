@interface ProxCardKitTestPasscodeEntryViewController
- (ProxCardKitTestPasscodeEntryViewController)initWithContentView:(id)view;
- (void)didCompleteTextEntry:(id)entry;
@end

@implementation ProxCardKitTestPasscodeEntryViewController

- (void)didCompleteTextEntry:(id)entry
{
  [(ProxCardKitTestPasscodeEntryViewController *)self showActivityIndicatorWithStatus:@"Waiting"];
  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001188C0;
  block[3] = &unk_100195AC0;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (ProxCardKitTestPasscodeEntryViewController)initWithContentView:(id)view
{
  v7.receiver = self;
  v7.super_class = ProxCardKitTestPasscodeEntryViewController;
  v3 = [(ProxCardKitTestPasscodeEntryViewController *)&v7 initWithContentView:view];
  v4 = v3;
  if (v3)
  {
    [(ProxCardKitTestPasscodeEntryViewController *)v3 setTitle:@"Enter PIN"];
    [(ProxCardKitTestPasscodeEntryViewController *)v4 setSubtitle:@"Enter your four-digit PIN"];
    [(ProxCardKitTestPasscodeEntryViewController *)v4 setDismissalType:1];
    v5 = v4;
  }

  return v4;
}

@end