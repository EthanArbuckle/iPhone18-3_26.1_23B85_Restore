@interface HOOnboardingSegmentViewController
+ (id)_buildPocketViewControllerWithOptions:(unint64_t)options target:(id)target action:(SEL)action;
- (BOOL)showPocket;
- (HOOnboardingChildViewControllerDelegate)delegate;
- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate;
- (HOOnboardingSegmentViewController)initWithContentViewController:(id)controller delegate:(id)delegate;
- (unint64_t)_numberOfPocketButtons;
- (void)_buttonActivated:(id)activated;
- (void)setShowPocket:(BOOL)pocket;
- (void)viewDidLoad;
@end

@implementation HOOnboardingSegmentViewController

+ (id)_buildPocketViewControllerWithOptions:(unint64_t)options target:(id)target action:(SEL)action
{
  targetCopy = target;
  if (options)
  {
    v8 = objc_opt_new();
    if ((options & 8) != 0)
    {
      v13 = sub_100008E30(@"HOOnboardingGetStarted");
      v14 = [HUPocketButtonDescriptor descriptorWithTitle:v13 style:0 target:targetCopy action:action userInfo:&off_1000CB668];
      [v8 addObject:v14];

      if ((options & 4) == 0)
      {
LABEL_4:
        if ((options & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((options & 4) == 0)
    {
      goto LABEL_4;
    }

    v15 = sub_100008E30(@"HOOnboardingSetUpLater");
    v16 = [HUPocketButtonDescriptor descriptorWithTitle:v15 style:1 target:targetCopy action:action userInfo:&off_1000CB680];
    [v8 addObject:v16];

    if ((options & 1) == 0)
    {
LABEL_5:
      if ((options & 2) == 0)
      {
LABEL_7:
        v11 = [[HUPocketButtonViewController alloc] initWithButtonDescriptors:v8];

        goto LABEL_9;
      }

LABEL_6:
      v9 = sub_100008E30(@"HODoneButtonTitle");
      v10 = [HUPocketButtonDescriptor descriptorWithTitle:v9 style:0 target:targetCopy action:action userInfo:&off_1000CB6B0];
      [v8 addObject:v10];

      goto LABEL_7;
    }

LABEL_14:
    v17 = HULocalizedString();
    v18 = [HUPocketButtonDescriptor descriptorWithTitle:v17 style:0 target:targetCopy action:action userInfo:&off_1000CB698];
    [v8 addObject:v18];

    if ((options & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (HOOnboardingSegmentViewController)initWithContentViewController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    sub_10007FAA0(a2, self);
  }

  v9 = objc_opt_class();
  v10 = [v9 _buildPocketViewControllerWithOptions:objc_msgSend(objc_opt_class() target:"pocketOptions") action:{self, "_buttonActivated:"}];
  v14.receiver = self;
  v14.super_class = HOOnboardingSegmentViewController;
  v11 = [(HOOnboardingSegmentViewController *)&v14 initWithContentViewController:controllerCopy pocketViewController:v10];
  v12 = v11;
  if (v11)
  {
    [(HOOnboardingSegmentViewController *)v11 setDelegate:delegateCopy];
  }

  return v12;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HOOnboardingSegmentViewController;
  [(HOOnboardingSegmentViewController *)&v5 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(HOOnboardingSegmentViewController *)self view];
  [view setBackgroundColor:v3];
}

- (BOOL)showPocket
{
  pocketViewController = [(HOOnboardingSegmentViewController *)self pocketViewController];
  v3 = pocketViewController != 0;

  return v3;
}

- (void)setShowPocket:(BOOL)pocket
{
  if (pocket)
  {
    pocketOptions = [objc_opt_class() pocketOptions];
    v5 = [objc_opt_class() _buildPocketViewControllerWithOptions:pocketOptions target:self action:"_buttonActivated:"];
    if (v5)
    {
      [(HOOnboardingSegmentViewController *)self setPocketViewController:v5];
    }

    _objc_release_x1();
  }

  else
  {

    [(HOOnboardingSegmentViewController *)self setPocketViewController:0];
  }
}

- (void)_buttonActivated:(id)activated
{
  activatedCopy = activated;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [activatedCopy userInfo];
    v10 = 138412290;
    v11 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HOOnboardingSegmentViewController-_buttonActivated] User tapped button (%@)", &v10, 0xCu);
  }

  userInfo2 = [activatedCopy userInfo];
  unsignedIntegerValue = [userInfo2 unsignedIntegerValue];

  if ((unsignedIntegerValue - 1) < 2)
  {
    goto LABEL_6;
  }

  if (unsignedIntegerValue == 4)
  {
    delegate = [(HOOnboardingSegmentViewController *)self delegate];
    [delegate childViewControllerDidFinish:self shouldSkipRelatedChildren:1];
    goto LABEL_8;
  }

  if (unsignedIntegerValue == 8)
  {
LABEL_6:
    delegate = [(HOOnboardingSegmentViewController *)self delegate];
    [delegate childViewControllerDidFinish:self];
LABEL_8:
  }
}

- (unint64_t)_numberOfPocketButtons
{
  objc_opt_class();
  pocketViewController = [(HOOnboardingSegmentViewController *)self pocketViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = pocketViewController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  descriptors = [v5 descriptors];

  v7 = [descriptors count];
  return v7;
}

- (HOOnboardingChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBarDelegate);

  return WeakRetained;
}

@end