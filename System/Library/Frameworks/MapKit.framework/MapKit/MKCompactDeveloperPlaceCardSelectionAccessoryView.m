@interface MKCompactDeveloperPlaceCardSelectionAccessoryView
- (id)_createErrorView;
- (id)_createLoadingView;
- (id)_createMapItemViewController:(id)a3;
@end

@implementation MKCompactDeveloperPlaceCardSelectionAccessoryView

- (id)_createErrorView
{
  v2 = objc_alloc_init(MKCompactDeveloperPlaceCardErrorView);

  return v2;
}

- (id)_createMapItemViewController:(id)a3
{
  v3 = a3;
  v4 = [[MKCompactDeveloperPlaceCardRemoteUIHostViewController alloc] initWithMapItem:v3];

  return v4;
}

- (id)_createLoadingView
{
  v2 = objc_alloc_init(MKCompactDeveloperPlaceCardLoadingView);

  return v2;
}

@end