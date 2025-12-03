@interface CarTestCoordinator
- (BOOL)pptTestCanUpdateTrayLayout;
- (MKMapView)mapViewForPPTTest;
- (UIScrollView)pptTestScrollView;
- (void)pptSelectKeyboardInteractionModel;
- (void)pptTestAutocompleteSearchForFieldItem:(id)item;
- (void)pptTestEndNavigation;
- (void)pptTestEnterSearchMode;
- (void)pptTestOpenRecents;
- (void)pptTestSearchEndEditing;
- (void)pptTestSearchForFieldItem:(id)item;
- (void)pptTestSearchNearbyCategoryWithIndex:(unint64_t)index;
- (void)pptTestStartNavigation;
- (void)pptTestUpdateTrayLayout:(unint64_t)layout animated:(BOOL)animated;
- (void)setChromeHidden:(BOOL)hidden;
@end

@implementation CarTestCoordinator

- (UIScrollView)pptTestScrollView
{
  v2 = +[CarDisplayController sharedInstance];
  chromeViewController = [v2 chromeViewController];
  topContext = [chromeViewController topContext];

  if (objc_opt_respondsToSelector())
  {
    pptTestScrollView = [topContext pptTestScrollView];
  }

  else
  {
    pptTestScrollView = 0;
  }

  return pptTestScrollView;
}

- (void)pptTestUpdateTrayLayout:(unint64_t)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = +[CarDisplayController sharedInstance];
  chromeViewController = [v6 chromeViewController];
  topContext = [chromeViewController topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topContext setTrayExpanded:layout != 0 animated:animatedCopy];
  }
}

- (BOOL)pptTestCanUpdateTrayLayout
{
  v2 = +[CarDisplayController sharedInstance];
  chromeViewController = [v2 chromeViewController];
  topContext = [chromeViewController topContext];

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
  chromeViewController = [v2 chromeViewController];
  topContext = [chromeViewController topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topContext endNavigation];
  }
}

- (void)pptTestStartNavigation
{
  v2 = +[CarDisplayController sharedInstance];
  chromeViewController = [v2 chromeViewController];
  topContext = [chromeViewController topContext];

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
  chromeViewController = [v2 chromeViewController];
  topContext = [chromeViewController topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topContext _ppt_selectKeyboardMode];
  }
}

- (void)pptTestSearchForFieldItem:(id)item
{
  itemCopy = item;
  v3 = +[CarDisplayController sharedInstance];
  chromeViewController = [v3 chromeViewController];
  topContext = [chromeViewController topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = topContext;
    searchString = [itemCopy searchString];
    [v6 pptInvokeSearch:searchString];
  }
}

- (void)pptTestSearchEndEditing
{
  v2 = +[CarDisplayController sharedInstance];
  chromeViewController = [v2 chromeViewController];
  topContext = [chromeViewController topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topContext pptEndEditing];
  }
}

- (void)pptTestAutocompleteSearchForFieldItem:(id)item
{
  itemCopy = item;
  v3 = +[CarDisplayController sharedInstance];
  chromeViewController = [v3 chromeViewController];
  topContext = [chromeViewController topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = topContext;
    searchString = [itemCopy searchString];
    [v6 pptHandleTextChange:searchString];
  }
}

- (void)pptTestSearchNearbyCategoryWithIndex:(unint64_t)index
{
  v3 = +[CarDisplayController sharedInstance];
  chromeViewController = [v3 chromeViewController];
  topContext = [chromeViewController topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topContext _ppt_selectFirstCarplayBrowseCategory];
  }
}

- (void)setChromeHidden:(BOOL)hidden
{
  if (hidden)
  {
    forcedAutohideToken = [(CarTestCoordinator *)self forcedAutohideToken];

    if (!forcedAutohideToken)
    {
      v5 = +[CarDisplayController sharedInstance];
      chromeViewController = [v5 chromeViewController];

      v6 = [chromeViewController acquireForcedAutohideBehaviourTokenWithBehaviour:1];
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
  chromeViewController = [v2 chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

@end