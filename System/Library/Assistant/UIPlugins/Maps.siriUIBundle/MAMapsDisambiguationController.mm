@interface MAMapsDisambiguationController
- (MAMapsDisambiguationController)initWithDisambiguationSnippet:(id)snippet;
- (SALocalSearchDisambiguationMap)disambiguationSnippet;
- (double)desiredHeightForWidth:(double)width;
- (id)_listSnippetView;
- (void)dealloc;
- (void)listView:(id)view didChooseMapItem:(id)item accessoryButtonTapped:(BOOL)tapped;
- (void)loadView;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation MAMapsDisambiguationController

- (MAMapsDisambiguationController)initWithDisambiguationSnippet:(id)snippet
{
  v6.receiver = self;
  v6.super_class = MAMapsDisambiguationController;
  v3 = [(MABaseSnippetViewController *)&v6 initWithSnippet:snippet];
  v4 = v3;
  if (v3)
  {
    [(MAMapsDisambiguationController *)v3 setWantsConfirmationInsets:0];
  }

  return v4;
}

- (void)dealloc
{
  if ([(MAMapsDisambiguationController *)self isViewLoaded])
  {
    _listSnippetView = [(MAMapsDisambiguationController *)self _listSnippetView];
    [_listSnippetView setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = MAMapsDisambiguationController;
  [(MABaseSnippetViewController *)&v4 dealloc];
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = MAMapsDisambiguationController;
  [(MAMapsDisambiguationController *)&v6 loadView];
  disambiguationSnippet = [(MAMapsDisambiguationController *)self disambiguationSnippet];
  items = [disambiguationSnippet items];

  v5 = [[MAListSnippetView alloc] initWithFrame:items mapItems:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MAListSnippetView *)v5 setDelegate:self];
  [(MAListSnippetView *)v5 setShouldDisplayLocationDetail:1];
  [(MAListSnippetView *)v5 _ma_updateSemanticContentAttribute];
  [(MAListSnippetView *)v5 _mapkit_setNeedsLayout];
  [(MAMapsDisambiguationController *)self setView:v5];
}

- (double)desiredHeightForWidth:(double)width
{
  _listSnippetView = [(MAMapsDisambiguationController *)self _listSnippetView];
  [_listSnippetView desiredHeight];
  v5 = v4;

  return v5;
}

- (SALocalSearchDisambiguationMap)disambiguationSnippet
{
  snippet = [(MAMapsDisambiguationController *)self snippet];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    snippet2 = [(MAMapsDisambiguationController *)self snippet];
  }

  else
  {
    snippet2 = 0;
  }

  return snippet2;
}

- (id)_listSnippetView
{
  view = [(MAMapsDisambiguationController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view2 = [(MAMapsDisambiguationController *)self view];
  }

  else
  {
    view2 = 0;
  }

  return view2;
}

- (void)listView:(id)view didChooseMapItem:(id)item accessoryButtonTapped:(BOOL)tapped
{
  itemCopy = item;
  mapItems = [view mapItems];
  v9 = [mapItems indexOfObject:itemCopy];

  v10 = [MKMapItem mapItemWithLocalSearchMapItem:itemCopy];
  v14 = [GEOPlaceActionDetails actionDetailsWithMapItem:v10 timestamp:v9 resultIndex:0.0];

  placeData2 = [itemCopy placeData2];
  [(MABaseSnippetViewController *)self captureUserAction:2007 details:v14 resultIndex:v9 mapItemPlaceData:placeData2];

  delegate = [(MAMapsDisambiguationController *)self delegate];
  commands = [itemCopy commands];

  [delegate siriViewController:self performAceCommands:commands];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  lastObject = [locations lastObject];
  _listSnippetView = [(MAMapsDisambiguationController *)self _listSnippetView];
  [_listSnippetView setUserLocation:lastObject];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v7.receiver = self;
  v7.super_class = MAMapsDisambiguationController;
  authorizationCopy = authorization;
  [(MABaseSnippetViewController *)&v7 locationManagerDidChangeAuthorization:authorizationCopy];
  authorizationStatus = [authorizationCopy authorizationStatus];

  if (authorizationStatus == 2)
  {
    _listSnippetView = [(MAMapsDisambiguationController *)self _listSnippetView];
    [_listSnippetView setUserLocation:0];
  }
}

@end