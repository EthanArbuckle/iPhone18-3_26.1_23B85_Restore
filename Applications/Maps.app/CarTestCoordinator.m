@interface CarTestCoordinator
- (BOOL)pptTestCanUpdateTrayLayout;
- (MKMapView)mapViewForPPTTest;
- (UIScrollView)pptTestScrollView;
- (void)pptSelectKeyboardInteractionModel;
- (void)pptTestAutocompleteSearchForFieldItem:(id)a3;
- (void)pptTestEndNavigation;
- (void)pptTestEnterSearchMode;
- (void)pptTestOpenRecents;
- (void)pptTestSearchEndEditing;
- (void)pptTestSearchForFieldItem:(id)a3;
- (void)pptTestSearchNearbyCategoryWithIndex:(unint64_t)a3;
- (void)pptTestStartNavigation;
- (void)pptTestUpdateTrayLayout:(unint64_t)a3 animated:(BOOL)a4;
- (void)setChromeHidden:(BOOL)a3;
@end

@implementation CarTestCoordinator

- (UIScrollView)pptTestScrollView
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 chromeViewController];
  v4 = [v3 topContext];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 pptTestScrollView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)pptTestUpdateTrayLayout:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = +[CarDisplayController sharedInstance];
  v7 = [v6 chromeViewController];
  v8 = [v7 topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setTrayExpanded:a3 != 0 animated:v4];
  }
}

- (BOOL)pptTestCanUpdateTrayLayout
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 chromeViewController];
  v4 = [v3 topContext];

  objc_opt_class();
  LOBYTE(v2) = objc_opt_isKindOfClass();

  return v2 & 1;
}

- (void)pptTestOpenRecents
{
  v2 = +[CarChromeModeCoordinator sharedInstance];
  [v2 displayDestinations];
}

- (void)pptTestEndNavigation
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 chromeViewController];
  v4 = [v3 topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 endNavigation];
  }
}

- (void)pptTestStartNavigation
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 chromeViewController];
  v4 = [v3 topContext];

  objc_opt_class();
  objc_opt_isKindOfClass();
}

- (void)pptTestEnterSearchMode
{
  v2 = +[CarChromeModeCoordinator sharedInstance];
  [v2 displayMapBrowsing];

  v3 = +[CarChromeModeCoordinator sharedInstance];
  [v3 displaySearchCategories];
}

- (void)pptSelectKeyboardInteractionModel
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 chromeViewController];
  v4 = [v3 topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 _ppt_selectKeyboardMode];
  }
}

- (void)pptTestSearchForFieldItem:(id)a3
{
  v8 = a3;
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 chromeViewController];
  v5 = [v4 topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v8 searchString];
    [v6 pptInvokeSearch:v7];
  }
}

- (void)pptTestSearchEndEditing
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 chromeViewController];
  v4 = [v3 topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 pptEndEditing];
  }
}

- (void)pptTestAutocompleteSearchForFieldItem:(id)a3
{
  v8 = a3;
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 chromeViewController];
  v5 = [v4 topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v8 searchString];
    [v6 pptHandleTextChange:v7];
  }
}

- (void)pptTestSearchNearbyCategoryWithIndex:(unint64_t)a3
{
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 chromeViewController];
  v5 = [v4 topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 _ppt_selectFirstCarplayBrowseCategory];
  }
}

- (void)setChromeHidden:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CarTestCoordinator *)self forcedAutohideToken];

    if (!v4)
    {
      v5 = +[CarDisplayController sharedInstance];
      v7 = [v5 chromeViewController];

      v6 = [v7 acquireForcedAutohideBehaviourTokenWithBehaviour:1];
      [(CarTestCoordinator *)self setForcedAutohideToken:v6];
    }
  }

  else
  {

    [(CarTestCoordinator *)self setForcedAutohideToken:0];
  }
}

- (MKMapView)mapViewForPPTTest
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 chromeViewController];
  v4 = [v3 mapView];

  return v4;
}

@end