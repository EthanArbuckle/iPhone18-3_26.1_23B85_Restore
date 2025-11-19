@interface HOOnboardingSegmentViewController
+ (id)_buildPocketViewControllerWithOptions:(unint64_t)a3 target:(id)a4 action:(SEL)a5;
- (BOOL)showPocket;
- (HOOnboardingChildViewControllerDelegate)delegate;
- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate;
- (HOOnboardingSegmentViewController)initWithContentViewController:(id)a3 delegate:(id)a4;
- (unint64_t)_numberOfPocketButtons;
- (void)_buttonActivated:(id)a3;
- (void)setShowPocket:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HOOnboardingSegmentViewController

+ (id)_buildPocketViewControllerWithOptions:(unint64_t)a3 target:(id)a4 action:(SEL)a5
{
  v7 = a4;
  if (a3)
  {
    v8 = objc_opt_new();
    if ((a3 & 8) != 0)
    {
      v13 = sub_100008E30(@"HOOnboardingGetStarted");
      v14 = [HUPocketButtonDescriptor descriptorWithTitle:v13 style:0 target:v7 action:a5 userInfo:&off_1000CB668];
      [v8 addObject:v14];

      if ((a3 & 4) == 0)
      {
LABEL_4:
        if ((a3 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((a3 & 4) == 0)
    {
      goto LABEL_4;
    }

    v15 = sub_100008E30(@"HOOnboardingSetUpLater");
    v16 = [HUPocketButtonDescriptor descriptorWithTitle:v15 style:1 target:v7 action:a5 userInfo:&off_1000CB680];
    [v8 addObject:v16];

    if ((a3 & 1) == 0)
    {
LABEL_5:
      if ((a3 & 2) == 0)
      {
LABEL_7:
        v11 = [[HUPocketButtonViewController alloc] initWithButtonDescriptors:v8];

        goto LABEL_9;
      }

LABEL_6:
      v9 = sub_100008E30(@"HODoneButtonTitle");
      v10 = [HUPocketButtonDescriptor descriptorWithTitle:v9 style:0 target:v7 action:a5 userInfo:&off_1000CB6B0];
      [v8 addObject:v10];

      goto LABEL_7;
    }

LABEL_14:
    v17 = HULocalizedString();
    v18 = [HUPocketButtonDescriptor descriptorWithTitle:v17 style:0 target:v7 action:a5 userInfo:&off_1000CB698];
    [v8 addObject:v18];

    if ((a3 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (HOOnboardingSegmentViewController)initWithContentViewController:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    sub_10007FAA0(a2, self);
  }

  v9 = objc_opt_class();
  v10 = [v9 _buildPocketViewControllerWithOptions:objc_msgSend(objc_opt_class() target:"pocketOptions") action:{self, "_buttonActivated:"}];
  v14.receiver = self;
  v14.super_class = HOOnboardingSegmentViewController;
  v11 = [(HOOnboardingSegmentViewController *)&v14 initWithContentViewController:v7 pocketViewController:v10];
  v12 = v11;
  if (v11)
  {
    [(HOOnboardingSegmentViewController *)v11 setDelegate:v8];
  }

  return v12;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HOOnboardingSegmentViewController;
  [(HOOnboardingSegmentViewController *)&v5 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(HOOnboardingSegmentViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (BOOL)showPocket
{
  v2 = [(HOOnboardingSegmentViewController *)self pocketViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)setShowPocket:(BOOL)a3
{
  if (a3)
  {
    v4 = [objc_opt_class() pocketOptions];
    v5 = [objc_opt_class() _buildPocketViewControllerWithOptions:v4 target:self action:"_buttonActivated:"];
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

- (void)_buttonActivated:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 userInfo];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HOOnboardingSegmentViewController-_buttonActivated] User tapped button (%@)", &v10, 0xCu);
  }

  v7 = [v4 userInfo];
  v8 = [v7 unsignedIntegerValue];

  if ((v8 - 1) < 2)
  {
    goto LABEL_6;
  }

  if (v8 == 4)
  {
    v9 = [(HOOnboardingSegmentViewController *)self delegate];
    [v9 childViewControllerDidFinish:self shouldSkipRelatedChildren:1];
    goto LABEL_8;
  }

  if (v8 == 8)
  {
LABEL_6:
    v9 = [(HOOnboardingSegmentViewController *)self delegate];
    [v9 childViewControllerDidFinish:self];
LABEL_8:
  }
}

- (unint64_t)_numberOfPocketButtons
{
  objc_opt_class();
  v3 = [(HOOnboardingSegmentViewController *)self pocketViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 descriptors];

  v7 = [v6 count];
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