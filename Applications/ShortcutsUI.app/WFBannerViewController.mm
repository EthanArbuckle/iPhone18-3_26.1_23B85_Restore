@interface WFBannerViewController
+ (id)requestIdentifierForContext:(id)context;
- (BNPresentableContext)presentableContext;
- (BOOL)contentIsFullScreen;
- (BOOL)homeAffordanceDidCrossThreshold;
- (NSString)requestIdentifier;
- (UIEdgeInsets)bannerContentOutsets;
- (WFBannerViewController)initWithRunningContext:(id)context;
- (WFBannerViewControllerDelegate)delegate;
- (double)_offsetFromPresentationEdge;
- (id)assertionReason;
- (id)layoutDescription;
- (void)acquireDismissalPreventionAssertion;
- (void)dealloc;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)releaseDismissalPreventionAssertionIfNecessary;
- (void)setPreferredContentSize:(CGSize)size;
- (void)systemDismissedBanner;
- (void)updateHomeGestureOwnership;
@end

@implementation WFBannerViewController

- (WFBannerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BNPresentableContext)presentableContext
{
  WeakRetained = objc_loadWeakRetained(&self->_presentableContext);

  return WeakRetained;
}

- (double)_offsetFromPresentationEdge
{
  layoutDescription = [(WFBannerViewController *)self layoutDescription];
  [layoutDescription offsetFromPresentationEdge];
  v4 = v3;

  return v4;
}

- (id)layoutDescription
{
  bannerSource = [(WFBannerViewController *)self bannerSource];
  v3 = [bannerSource layoutDescriptionWithError:0];

  return v3;
}

- (id)assertionReason
{
  associatedRunningContext = [(WFBannerViewController *)self associatedRunningContext];
  identifier = [associatedRunningContext identifier];
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"com.apple.shortcuts.WFBannerViewController.cid-%@.uid-%@", identifier, uUIDString];

  return v6;
}

- (void)releaseDismissalPreventionAssertionIfNecessary
{
  dismissalPreventionAssertion = [(WFBannerViewController *)self dismissalPreventionAssertion];

  if (dismissalPreventionAssertion)
  {
    dismissalPreventionAssertion2 = [(WFBannerViewController *)self dismissalPreventionAssertion];
    [dismissalPreventionAssertion2 invalidate];

    [(WFBannerViewController *)self setDismissalPreventionAssertion:0];
  }
}

- (void)acquireDismissalPreventionAssertion
{
  [(WFBannerViewController *)self releaseDismissalPreventionAssertionIfNecessary];
  presentableDismissalPreventionContext = [(WFBannerViewController *)self presentableDismissalPreventionContext];
  assertionReason = [(WFBannerViewController *)self assertionReason];
  v5 = [presentableDismissalPreventionContext acquireTransitionDismissalPreventionAssertionForReason:assertionReason];

  [(WFBannerViewController *)self setDismissalPreventionAssertion:v5];
}

- (BOOL)homeAffordanceDidCrossThreshold
{
  keyboardIsVisible = [(WFBannerViewController *)self keyboardIsVisible];
  embeddedPlatter = [(WFBannerViewController *)self embeddedPlatter];
  embeddedPlatter5 = embeddedPlatter;
  if (keyboardIsVisible)
  {
    view = [embeddedPlatter view];
    [view endEditing:1];

LABEL_11:
    return 1;
  }

  if (embeddedPlatter)
  {
    embeddedPlatter2 = [(WFBannerViewController *)self embeddedPlatter];
    if (objc_opt_respondsToSelector())
    {
      embeddedPlatter3 = [(WFBannerViewController *)self embeddedPlatter];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        embeddedPlatter4 = [(WFBannerViewController *)self embeddedPlatter];
        hasCustomHomeGestureBehavior = [embeddedPlatter4 hasCustomHomeGestureBehavior];

        if (hasCustomHomeGestureBehavior)
        {
          embeddedPlatter5 = [(WFBannerViewController *)self embeddedPlatter];
          [embeddedPlatter5 homeGestureDidPassThreshold];
          goto LABEL_11;
        }
      }
    }

    else
    {
    }
  }

  delegate = [(WFBannerViewController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    embeddedPlatter5 = [(WFBannerViewController *)self delegate];
    [embeddedPlatter5 bannerViewControllerHomeGestureDidPassThreshold:self];
    goto LABEL_11;
  }

  return 1;
}

- (void)updateHomeGestureOwnership
{
  presentableHomeGestureContext = [(WFBannerViewController *)self presentableHomeGestureContext];
  [presentableHomeGestureContext setWantsHomeGesture:{-[WFBannerViewController shouldOwnHomeGesture](self, "shouldOwnHomeGesture")}];
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  [(WFBannerViewController *)self releaseDismissalPreventionAssertionIfNecessary:banner];
  presentableHomeGestureContext = [(WFBannerViewController *)self presentableHomeGestureContext];
  [presentableHomeGestureContext setWantsHomeGesture:0];

  [(WFBannerViewController *)self stopObservingForPresentation];
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  reasonCopy = reason;
  delegate = [(WFBannerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WFBannerViewController *)self delegate];
    [delegate2 bannerViewController:self willDismissWithReason:reasonCopy];
  }
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  if (bannerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = bannerCopy;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  view = [v5 view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  [(WFBannerViewController *)self updateHomeGestureOwnership];
  delegate = [(WFBannerViewController *)self delegate];
  LOBYTE(window) = objc_opt_respondsToSelector();

  if (window)
  {
    delegate2 = [(WFBannerViewController *)self delegate];
    [delegate2 bannerViewController:self didPresentBanner:bannerCopy];
  }
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  embeddedPlatter = [(WFBannerViewController *)self embeddedPlatter];

  if (embeddedPlatter)
  {
    [(WFBannerViewController *)self beginObservingForPresentation];
  }

  view = [(WFBannerViewController *)self view];
  window = [view window];

  [window makeKeyWindow];
  [(WFBannerViewController *)self acquireDismissalPreventionAssertion];
}

- (void)systemDismissedBanner
{
  embeddedPlatter = [(WFBannerViewController *)self embeddedPlatter];

  if (embeddedPlatter)
  {
    embeddedPlatter2 = [(WFBannerViewController *)self embeddedPlatter];
    [embeddedPlatter2 systemDismissedBanner];
  }

  else
  {
    delegate = [(WFBannerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    embeddedPlatter2 = [(WFBannerViewController *)self delegate];
    [embeddedPlatter2 bannerViewControllerActionUserInterfaceNeedsDismissal:self];
  }
}

- (UIEdgeInsets)bannerContentOutsets
{
  if ([(WFBannerViewController *)self contentIsFullScreen])
  {
    v26.receiver = self;
    v26.super_class = WFBannerViewController;
    [(WFBannerViewController *)&v26 bannerContentOutsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
  }

  else
  {
    layoutDescription = [(WFBannerViewController *)self layoutDescription];
    [layoutDescription containerSize];
    v12 = v11;
    v14 = v13;

    [(WFBannerViewController *)self bannerSize];
    v16 = v15;
    v7 = (v12 - v17) * 0.5;
    layoutDescription2 = [(WFBannerViewController *)self layoutDescription];
    [layoutDescription2 offsetFromPresentationEdge];
    v5 = v19;

    view = [(WFBannerViewController *)self view];
    traitCollection = [view traitCollection];
    [traitCollection displayScale];
    v9 = v14 - v16 + 6.0 / v22;

    v3 = v7;
  }

  v23 = v5;
  v24 = v7;
  v25 = v9;
  result.right = v3;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

- (NSString)requestIdentifier
{
  v3 = objc_opt_class();
  associatedRunningContext = [(WFBannerViewController *)self associatedRunningContext];
  v5 = [v3 requestIdentifierForContext:associatedRunningContext];

  return v5;
}

- (BOOL)contentIsFullScreen
{
  embeddedPlatter = [(WFBannerViewController *)self embeddedPlatter];
  if (embeddedPlatter)
  {
    presentedViewController = [(WFBannerViewController *)self presentedViewController];
    v5 = presentedViewController != 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(WFBannerViewController *)self viewWillAppearCalled])
  {
    view = [(WFBannerViewController *)self view];
    _screen = [view _screen];
    [_screen bounds];
    if (v9 == width && v8 == height)
    {
      view2 = [(WFBannerViewController *)self view];
      _screen2 = [view2 _screen];
      [_screen2 bounds];
      v14 = v13;
      v16 = v15;
      [(WFBannerViewController *)self preferredContentSize];
      v18 = v17;
      v20 = v19;

      if (v14 != v18 || v16 != v20)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    presentableContext = [(WFBannerViewController *)self presentableContext];
    [presentableContext setHostNeedsUpdate];

LABEL_10:
    v23.receiver = self;
    v23.super_class = WFBannerViewController;
    [(WFBannerViewController *)&v23 setPreferredContentSize:width, height];
    presentableContext2 = [(WFBannerViewController *)self presentableContext];
    [presentableContext2 setHostNeedsUpdate];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:WFBannerShouldUpdateHomeGestureOwnershipNotification object:0];

  v4.receiver = self;
  v4.super_class = WFBannerViewController;
  [(WFBannerViewController *)&v4 dealloc];
}

- (WFBannerViewController)initWithRunningContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = WFBannerViewController;
  v6 = [(WFBannerViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_associatedRunningContext, context);
    v8 = [BNBannerSource bannerSourceForDestination:0 forRequesterIdentifier:VCBundleIdentifierShortcutsUI];
    bannerSource = v7->_bannerSource;
    v7->_bannerSource = v8;

    [(BNBannerSource *)v7->_bannerSource setDelegate:v7];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v7 selector:"updateHomeGestureOwnership" name:WFBannerShouldUpdateHomeGestureOwnershipNotification object:0];

    v11 = v7;
  }

  return v7;
}

+ (id)requestIdentifierForContext:(id)context
{
  identifier = [context identifier];
  v4 = [identifier stringByAppendingString:@".WFBannerViewController"];

  return v4;
}

@end