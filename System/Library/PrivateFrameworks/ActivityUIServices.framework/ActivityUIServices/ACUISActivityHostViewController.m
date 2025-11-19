@interface ACUISActivityHostViewController
- (ACUISActivityHostViewController)activityHostViewControllerWithViewController:(id)a3 didReceiveAction:(id)a4;
- (ACUISActivityHostViewController)activityHostViewControllerWithViewController:(id)a3 requestsLaunchWithAction:(id)a4;
- (ACUISActivityHostViewController)initWithActivityHostViewController:(id)a3;
- (ACUISActivityHostViewControllerDelegate)delegate;
- (BOOL)handleHardwareButtonForType:(unint64_t)a3;
- (NSString)activityIdentifier;
- (int64_t)swiftHardwareButtonPressTypeForType:(unint64_t)a3;
- (unint64_t)presentationMode;
- (unsigned)swiftPresentationMode:(unint64_t)a3;
- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3;
- (void)activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChangeWithViewController:(id)a3;
- (void)activityHostViewControllerBackgroundTintColorDidChangeWithViewController:(id)a3;
- (void)activityHostViewControllerHostShouldCancelTouchesWithViewController:(id)a3;
- (void)activityHostViewControllerSignificantUserInteractionBeganWithViewController:(id)a3;
- (void)activityHostViewControllerSignificantUserInteractionEndedWithViewController:(id)a3;
- (void)activityHostViewControllerTextColorDidChangeWithViewController:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setPresentationMode:(unint64_t)a3;
- (void)setVisibility:(unint64_t)a3;
- (void)viewDidLoad;
@end

@implementation ACUISActivityHostViewController

- (ACUISActivityHostViewController)initWithActivityHostViewController:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = ACUISActivityHostViewController;
  v6 = [(ACUISActivityHostViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityHostViewController, a3);
    [(ActivityHostViewController *)v7->_activityHostViewController setDelegate:v7];
    v8 = [ACUISActivitySceneDescriptor alloc];
    v9 = [v5 activitySceneDescriptor];
    v10 = [v5 acActivityDescriptor];
    v11 = [(ACUISActivitySceneDescriptor *)v8 initWithActivitySceneDescriptor:v9 acActivityDescriptor:v10];
    activitySceneDescriptor = v7->_activitySceneDescriptor;
    v7->_activitySceneDescriptor = v11;

    if (v5)
    {
      [(ACUISActivitySceneDescriptor *)v7->_activitySceneDescriptor setUseFallbackMetrics:1];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(ACUISActivityHostViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = ACUISActivityHostViewController;
  [(ACUISActivityHostViewController *)&v3 dealloc];
}

- (NSString)activityIdentifier
{
  v2 = [(ACUISActivitySceneDescriptor *)self->_activitySceneDescriptor activityDescriptor];
  v3 = [v2 activityIdentifier];

  return v3;
}

- (void)setVisibility:(unint64_t)a3
{
  if (self->_visibility != a3)
  {
    self->_visibility = a3;
  }
}

- (unint64_t)presentationMode
{
  v2 = [(ActivityHostViewController *)self->_activityHostViewController presentationMode];
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (void)setPresentationMode:(unint64_t)a3
{
  v4 = [(ACUISActivityHostViewController *)self swiftPresentationMode:a3];
  activityHostViewController = self->_activityHostViewController;

  [(ActivityHostViewController *)activityHostViewController setPresentationMode:v4];
}

- (BOOL)handleHardwareButtonForType:(unint64_t)a3
{
  v4 = [(ACUISActivityHostViewController *)self swiftHardwareButtonPressTypeForType:a3];
  activityHostViewController = self->_activityHostViewController;

  return [(ActivityHostViewController *)activityHostViewController handleHardwareButtonForType:v4];
}

- (void)invalidate
{
  activityHostViewController = self->_activityHostViewController;
  if (activityHostViewController)
  {
    [(ActivityHostViewController *)activityHostViewController invalidate];
    [(ACUISActivityHostViewController *)self bs_removeChildViewController:self->_activityHostViewController];
    v4 = self->_activityHostViewController;
    self->_activityHostViewController = 0;
  }
}

- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3
{
  [(ActivityHostViewController *)self->_activityHostViewController preferredContentSize];

  [(ACUISActivityHostViewController *)self setPreferredContentSize:?];
}

- (void)viewDidLoad
{
  [(ACUISActivityHostViewController *)self bs_addChildViewController:self->_activityHostViewController];
  [(ActivityHostViewController *)self->_activityHostViewController preferredContentSize];
  [(ACUISActivityHostViewController *)self setPreferredContentSize:?];
  v3.receiver = self;
  v3.super_class = ACUISActivityHostViewController;
  [(ACUISActivityHostViewController *)&v3 viewDidLoad];
}

- (ACUISActivityHostViewController)activityHostViewControllerWithViewController:(id)a3 requestsLaunchWithAction:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewController:self requestsLaunchWithAction:v7];
  }

  return result;
}

- (void)activityHostViewControllerBackgroundTintColorDidChangeWithViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewControllerBackgroundTintColorDidChange:self];
  }
}

- (void)activityHostViewControllerTextColorDidChangeWithViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewControllerTextColorDidChange:self];
  }
}

- (void)activityHostViewControllerHostShouldCancelTouchesWithViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewControllerHostShouldCancelTouches:self];
  }
}

- (void)activityHostViewControllerSignificantUserInteractionBeganWithViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewControllerSignificantUserInteractionBegan:self];
  }
}

- (void)activityHostViewControllerSignificantUserInteractionEndedWithViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewControllerSignificantUserInteractionEnded:self];
  }
}

- (void)activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChangeWithViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChange:self];
  }
}

- (ACUISActivityHostViewController)activityHostViewControllerWithViewController:(id)a3 didReceiveAction:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained activityHostViewController:self didReceiveAction:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unsigned)swiftPresentationMode:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (int64_t)swiftHardwareButtonPressTypeForType:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (ACUISActivityHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end