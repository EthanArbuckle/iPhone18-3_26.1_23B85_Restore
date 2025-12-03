@interface SRSystemAssistantExperienceRootViewController
- (BOOL)_canShowWhileLocked;
- (SRSystemAssistantExperienceRootViewController)initWithContainerView:(id)view;
- (void)loadView;
@end

@implementation SRSystemAssistantExperienceRootViewController

- (SRSystemAssistantExperienceRootViewController)initWithContainerView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = SRSystemAssistantExperienceRootViewController;
  v6 = [(SRSystemAssistantExperienceRootViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerView, view);
  }

  return v7;
}

- (void)loadView
{
  v5 = [[AFUITouchPassThroughView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  containerView = self->_containerView;
  [v5 bounds];
  [(SiriSharedUISystemAssistantExperienceContainerView *)containerView setFrame:?];
  [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView setAutoresizingMask:18];
  [v5 addSubview:self->_containerView];
  v4 = +[UIColor clearColor];
  [v5 setBackgroundColor:v4];

  [v5 setOpaque:0];
  [(SRSystemAssistantExperienceRootViewController *)self setView:v5];
}

- (BOOL)_canShowWhileLocked
{
  v2 = +[SRUIFCachedPreferences sharedInstance];
  isSiriSafeForLockScreen = [v2 isSiriSafeForLockScreen];

  return isSiriSafeForLockScreen;
}

@end