@interface WFBannerViewController
+ (id)requestIdentifierForContext:(id)a3;
- (BNPresentableContext)presentableContext;
- (BOOL)contentIsFullScreen;
- (BOOL)homeAffordanceDidCrossThreshold;
- (NSString)requestIdentifier;
- (UIEdgeInsets)bannerContentOutsets;
- (WFBannerViewController)initWithRunningContext:(id)a3;
- (WFBannerViewControllerDelegate)delegate;
- (double)_offsetFromPresentationEdge;
- (id)assertionReason;
- (id)layoutDescription;
- (void)acquireDismissalPreventionAssertion;
- (void)dealloc;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)releaseDismissalPreventionAssertionIfNecessary;
- (void)setPreferredContentSize:(CGSize)a3;
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
  v2 = [(WFBannerViewController *)self layoutDescription];
  [v2 offsetFromPresentationEdge];
  v4 = v3;

  return v4;
}

- (id)layoutDescription
{
  v2 = [(WFBannerViewController *)self bannerSource];
  v3 = [v2 layoutDescriptionWithError:0];

  return v3;
}

- (id)assertionReason
{
  v2 = [(WFBannerViewController *)self associatedRunningContext];
  v3 = [v2 identifier];
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"com.apple.shortcuts.WFBannerViewController.cid-%@.uid-%@", v3, v5];

  return v6;
}

- (void)releaseDismissalPreventionAssertionIfNecessary
{
  v3 = [(WFBannerViewController *)self dismissalPreventionAssertion];

  if (v3)
  {
    v4 = [(WFBannerViewController *)self dismissalPreventionAssertion];
    [v4 invalidate];

    [(WFBannerViewController *)self setDismissalPreventionAssertion:0];
  }
}

- (void)acquireDismissalPreventionAssertion
{
  [(WFBannerViewController *)self releaseDismissalPreventionAssertionIfNecessary];
  v3 = [(WFBannerViewController *)self presentableDismissalPreventionContext];
  v4 = [(WFBannerViewController *)self assertionReason];
  v5 = [v3 acquireTransitionDismissalPreventionAssertionForReason:v4];

  [(WFBannerViewController *)self setDismissalPreventionAssertion:v5];
}

- (BOOL)homeAffordanceDidCrossThreshold
{
  v3 = [(WFBannerViewController *)self keyboardIsVisible];
  v4 = [(WFBannerViewController *)self embeddedPlatter];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 view];
    [v6 endEditing:1];

LABEL_11:
    return 1;
  }

  if (v4)
  {
    v7 = [(WFBannerViewController *)self embeddedPlatter];
    if (objc_opt_respondsToSelector())
    {
      v8 = [(WFBannerViewController *)self embeddedPlatter];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [(WFBannerViewController *)self embeddedPlatter];
        v11 = [v10 hasCustomHomeGestureBehavior];

        if (v11)
        {
          v5 = [(WFBannerViewController *)self embeddedPlatter];
          [v5 homeGestureDidPassThreshold];
          goto LABEL_11;
        }
      }
    }

    else
    {
    }
  }

  v12 = [(WFBannerViewController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v5 = [(WFBannerViewController *)self delegate];
    [v5 bannerViewControllerHomeGestureDidPassThreshold:self];
    goto LABEL_11;
  }

  return 1;
}

- (void)updateHomeGestureOwnership
{
  v3 = [(WFBannerViewController *)self presentableHomeGestureContext];
  [v3 setWantsHomeGesture:{-[WFBannerViewController shouldOwnHomeGesture](self, "shouldOwnHomeGesture")}];
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  [(WFBannerViewController *)self releaseDismissalPreventionAssertionIfNecessary:a3];
  v5 = [(WFBannerViewController *)self presentableHomeGestureContext];
  [v5 setWantsHomeGesture:0];

  [(WFBannerViewController *)self stopObservingForPresentation];
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v8 = a4;
  v5 = [(WFBannerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFBannerViewController *)self delegate];
    [v7 bannerViewController:self willDismissWithReason:v8];
  }
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v11 = a3;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v11;
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
  v6 = [v5 view];
  v7 = [v6 window];
  v8 = [v7 _rootSheetPresentationController];
  [v8 _setShouldScaleDownBehindDescendantSheets:0];

  [(WFBannerViewController *)self updateHomeGestureOwnership];
  v9 = [(WFBannerViewController *)self delegate];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    v10 = [(WFBannerViewController *)self delegate];
    [v10 bannerViewController:self didPresentBanner:v11];
  }
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  v4 = [(WFBannerViewController *)self embeddedPlatter];

  if (v4)
  {
    [(WFBannerViewController *)self beginObservingForPresentation];
  }

  v5 = [(WFBannerViewController *)self view];
  v6 = [v5 window];

  [v6 makeKeyWindow];
  [(WFBannerViewController *)self acquireDismissalPreventionAssertion];
}

- (void)systemDismissedBanner
{
  v3 = [(WFBannerViewController *)self embeddedPlatter];

  if (v3)
  {
    v6 = [(WFBannerViewController *)self embeddedPlatter];
    [v6 systemDismissedBanner];
  }

  else
  {
    v4 = [(WFBannerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = [(WFBannerViewController *)self delegate];
    [v6 bannerViewControllerActionUserInterfaceNeedsDismissal:self];
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
    v10 = [(WFBannerViewController *)self layoutDescription];
    [v10 containerSize];
    v12 = v11;
    v14 = v13;

    [(WFBannerViewController *)self bannerSize];
    v16 = v15;
    v7 = (v12 - v17) * 0.5;
    v18 = [(WFBannerViewController *)self layoutDescription];
    [v18 offsetFromPresentationEdge];
    v5 = v19;

    v20 = [(WFBannerViewController *)self view];
    v21 = [v20 traitCollection];
    [v21 displayScale];
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
  v4 = [(WFBannerViewController *)self associatedRunningContext];
  v5 = [v3 requestIdentifierForContext:v4];

  return v5;
}

- (BOOL)contentIsFullScreen
{
  v3 = [(WFBannerViewController *)self embeddedPlatter];
  if (v3)
  {
    v4 = [(WFBannerViewController *)self presentedViewController];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(WFBannerViewController *)self viewWillAppearCalled])
  {
    v6 = [(WFBannerViewController *)self view];
    v7 = [v6 _screen];
    [v7 bounds];
    if (v9 == width && v8 == height)
    {
      v11 = [(WFBannerViewController *)self view];
      v12 = [v11 _screen];
      [v12 bounds];
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

    v21 = [(WFBannerViewController *)self presentableContext];
    [v21 setHostNeedsUpdate];

LABEL_10:
    v23.receiver = self;
    v23.super_class = WFBannerViewController;
    [(WFBannerViewController *)&v23 setPreferredContentSize:width, height];
    v22 = [(WFBannerViewController *)self presentableContext];
    [v22 setHostNeedsUpdate];
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

- (WFBannerViewController)initWithRunningContext:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = WFBannerViewController;
  v6 = [(WFBannerViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_associatedRunningContext, a3);
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

+ (id)requestIdentifierForContext:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 stringByAppendingString:@".WFBannerViewController"];

  return v4;
}

@end