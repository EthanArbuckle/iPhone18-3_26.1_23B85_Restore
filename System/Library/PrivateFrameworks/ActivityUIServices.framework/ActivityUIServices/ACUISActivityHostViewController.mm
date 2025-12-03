@interface ACUISActivityHostViewController
- (ACUISActivityHostViewController)activityHostViewControllerWithViewController:(id)controller didReceiveAction:(id)action;
- (ACUISActivityHostViewController)activityHostViewControllerWithViewController:(id)controller requestsLaunchWithAction:(id)action;
- (ACUISActivityHostViewController)initWithActivityHostViewController:(id)controller;
- (ACUISActivityHostViewControllerDelegate)delegate;
- (BOOL)handleHardwareButtonForType:(unint64_t)type;
- (NSString)activityIdentifier;
- (int64_t)swiftHardwareButtonPressTypeForType:(unint64_t)type;
- (unint64_t)presentationMode;
- (unsigned)swiftPresentationMode:(unint64_t)mode;
- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller;
- (void)activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChangeWithViewController:(id)controller;
- (void)activityHostViewControllerBackgroundTintColorDidChangeWithViewController:(id)controller;
- (void)activityHostViewControllerHostShouldCancelTouchesWithViewController:(id)controller;
- (void)activityHostViewControllerSignificantUserInteractionBeganWithViewController:(id)controller;
- (void)activityHostViewControllerSignificantUserInteractionEndedWithViewController:(id)controller;
- (void)activityHostViewControllerTextColorDidChangeWithViewController:(id)controller;
- (void)dealloc;
- (void)invalidate;
- (void)setPresentationMode:(unint64_t)mode;
- (void)setVisibility:(unint64_t)visibility;
- (void)viewDidLoad;
@end

@implementation ACUISActivityHostViewController

- (ACUISActivityHostViewController)initWithActivityHostViewController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = ACUISActivityHostViewController;
  v6 = [(ACUISActivityHostViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityHostViewController, controller);
    [(ActivityHostViewController *)v7->_activityHostViewController setDelegate:v7];
    v8 = [ACUISActivitySceneDescriptor alloc];
    activitySceneDescriptor = [controllerCopy activitySceneDescriptor];
    acActivityDescriptor = [controllerCopy acActivityDescriptor];
    v11 = [(ACUISActivitySceneDescriptor *)v8 initWithActivitySceneDescriptor:activitySceneDescriptor acActivityDescriptor:acActivityDescriptor];
    activitySceneDescriptor = v7->_activitySceneDescriptor;
    v7->_activitySceneDescriptor = v11;

    if (controllerCopy)
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
  activityDescriptor = [(ACUISActivitySceneDescriptor *)self->_activitySceneDescriptor activityDescriptor];
  activityIdentifier = [activityDescriptor activityIdentifier];

  return activityIdentifier;
}

- (void)setVisibility:(unint64_t)visibility
{
  if (self->_visibility != visibility)
  {
    self->_visibility = visibility;
  }
}

- (unint64_t)presentationMode
{
  presentationMode = [(ActivityHostViewController *)self->_activityHostViewController presentationMode];
  if (presentationMode == 2)
  {
    return 2;
  }

  else
  {
    return presentationMode == 1;
  }
}

- (void)setPresentationMode:(unint64_t)mode
{
  v4 = [(ACUISActivityHostViewController *)self swiftPresentationMode:mode];
  activityHostViewController = self->_activityHostViewController;

  [(ActivityHostViewController *)activityHostViewController setPresentationMode:v4];
}

- (BOOL)handleHardwareButtonForType:(unint64_t)type
{
  v4 = [(ACUISActivityHostViewController *)self swiftHardwareButtonPressTypeForType:type];
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

- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller
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

- (ACUISActivityHostViewController)activityHostViewControllerWithViewController:(id)controller requestsLaunchWithAction:(id)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewController:self requestsLaunchWithAction:actionCopy];
  }

  return result;
}

- (void)activityHostViewControllerBackgroundTintColorDidChangeWithViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewControllerBackgroundTintColorDidChange:self];
  }
}

- (void)activityHostViewControllerTextColorDidChangeWithViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewControllerTextColorDidChange:self];
  }
}

- (void)activityHostViewControllerHostShouldCancelTouchesWithViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewControllerHostShouldCancelTouches:self];
  }
}

- (void)activityHostViewControllerSignificantUserInteractionBeganWithViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewControllerSignificantUserInteractionBegan:self];
  }
}

- (void)activityHostViewControllerSignificantUserInteractionEndedWithViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewControllerSignificantUserInteractionEnded:self];
  }
}

- (void)activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChangeWithViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChange:self];
  }
}

- (ACUISActivityHostViewController)activityHostViewControllerWithViewController:(id)controller didReceiveAction:(id)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained activityHostViewController:self didReceiveAction:actionCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unsigned)swiftPresentationMode:(unint64_t)mode
{
  if (mode == 2)
  {
    return 2;
  }

  else
  {
    return mode == 1;
  }
}

- (int64_t)swiftHardwareButtonPressTypeForType:(unint64_t)type
{
  if (type - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (ACUISActivityHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end