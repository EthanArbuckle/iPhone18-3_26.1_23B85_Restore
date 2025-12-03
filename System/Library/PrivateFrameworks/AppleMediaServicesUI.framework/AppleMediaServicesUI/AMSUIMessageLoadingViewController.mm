@interface AMSUIMessageLoadingViewController
+ (id)placeholderStyleLoadingControllerWithMessage:(id)message;
- (AMSUIMessageLoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)removeMessage;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIMessageLoadingViewController

+ (id)placeholderStyleLoadingControllerWithMessage:(id)message
{
  if (message)
  {
    sub_1BB1DD378();
  }

  v3 = static MessageLoadingViewController.placeholderStyleLoadingController(message:)();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BB1741C4();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1BB174260();
}

- (void)removeMessage
{
  selfCopy = self;
  sub_1BB174388();
}

- (AMSUIMessageLoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1BB1DD378();
  }

  bundleCopy = bundle;
  MessageLoadingViewController.init(nibName:bundle:)();
}

@end