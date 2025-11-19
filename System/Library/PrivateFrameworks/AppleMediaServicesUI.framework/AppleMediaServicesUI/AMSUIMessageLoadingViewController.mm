@interface AMSUIMessageLoadingViewController
+ (id)placeholderStyleLoadingControllerWithMessage:(id)a3;
- (AMSUIMessageLoadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)removeMessage;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIMessageLoadingViewController

+ (id)placeholderStyleLoadingControllerWithMessage:(id)a3
{
  if (a3)
  {
    sub_1BB1DD378();
  }

  v3 = static MessageLoadingViewController.placeholderStyleLoadingController(message:)();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BB1741C4();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1BB174260();
}

- (void)removeMessage
{
  v2 = self;
  sub_1BB174388();
}

- (AMSUIMessageLoadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1BB1DD378();
  }

  v5 = a4;
  MessageLoadingViewController.init(nibName:bundle:)();
}

@end