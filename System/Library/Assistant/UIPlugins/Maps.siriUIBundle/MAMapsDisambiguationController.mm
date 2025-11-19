@interface MAMapsDisambiguationController
- (MAMapsDisambiguationController)initWithDisambiguationSnippet:(id)a3;
- (SALocalSearchDisambiguationMap)disambiguationSnippet;
- (double)desiredHeightForWidth:(double)a3;
- (id)_listSnippetView;
- (void)dealloc;
- (void)listView:(id)a3 didChooseMapItem:(id)a4 accessoryButtonTapped:(BOOL)a5;
- (void)loadView;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation MAMapsDisambiguationController

- (MAMapsDisambiguationController)initWithDisambiguationSnippet:(id)a3
{
  v6.receiver = self;
  v6.super_class = MAMapsDisambiguationController;
  v3 = [(MABaseSnippetViewController *)&v6 initWithSnippet:a3];
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
    v3 = [(MAMapsDisambiguationController *)self _listSnippetView];
    [v3 setDelegate:0];
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
  v3 = [(MAMapsDisambiguationController *)self disambiguationSnippet];
  v4 = [v3 items];

  v5 = [[MAListSnippetView alloc] initWithFrame:v4 mapItems:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MAListSnippetView *)v5 setDelegate:self];
  [(MAListSnippetView *)v5 setShouldDisplayLocationDetail:1];
  [(MAListSnippetView *)v5 _ma_updateSemanticContentAttribute];
  [(MAListSnippetView *)v5 _mapkit_setNeedsLayout];
  [(MAMapsDisambiguationController *)self setView:v5];
}

- (double)desiredHeightForWidth:(double)a3
{
  v3 = [(MAMapsDisambiguationController *)self _listSnippetView];
  [v3 desiredHeight];
  v5 = v4;

  return v5;
}

- (SALocalSearchDisambiguationMap)disambiguationSnippet
{
  v3 = [(MAMapsDisambiguationController *)self snippet];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MAMapsDisambiguationController *)self snippet];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_listSnippetView
{
  v3 = [(MAMapsDisambiguationController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MAMapsDisambiguationController *)self view];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)listView:(id)a3 didChooseMapItem:(id)a4 accessoryButtonTapped:(BOOL)a5
{
  v7 = a4;
  v8 = [a3 mapItems];
  v9 = [v8 indexOfObject:v7];

  v10 = [MKMapItem mapItemWithLocalSearchMapItem:v7];
  v14 = [GEOPlaceActionDetails actionDetailsWithMapItem:v10 timestamp:v9 resultIndex:0.0];

  v11 = [v7 placeData2];
  [(MABaseSnippetViewController *)self captureUserAction:2007 details:v14 resultIndex:v9 mapItemPlaceData:v11];

  v12 = [(MAMapsDisambiguationController *)self delegate];
  v13 = [v7 commands];

  [v12 siriViewController:self performAceCommands:v13];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = [a4 lastObject];
  v5 = [(MAMapsDisambiguationController *)self _listSnippetView];
  [v5 setUserLocation:v6];
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v7.receiver = self;
  v7.super_class = MAMapsDisambiguationController;
  v4 = a3;
  [(MABaseSnippetViewController *)&v7 locationManagerDidChangeAuthorization:v4];
  v5 = [v4 authorizationStatus];

  if (v5 == 2)
  {
    v6 = [(MAMapsDisambiguationController *)self _listSnippetView];
    [v6 setUserLocation:0];
  }
}

@end