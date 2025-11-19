@interface MKPlacePoisInlineMapViewController
+ (id)inlineMapWithMapItem:(id)a3 configuration:(id)a4;
- (id)geoCamera;
- (id)visibleMapItems;
- (void)_handleTapOnMap;
- (void)_updateMap;
- (void)fetchPoisForBrand;
- (void)loadView;
- (void)setLocation:(id)a3;
- (void)viewDidLoad;
@end

@implementation MKPlacePoisInlineMapViewController

- (void)_handleTapOnMap
{
  if ([(_MKPlacePoisInlineMapContentView *)self->_mapContentView visible])
  {
    v3 = [(MKPlaceInlineMapViewController *)self mapItem];
    [v3 _launchActivityForBrandItem];
  }
}

- (id)geoCamera
{
  v3 = objc_alloc_init(MEMORY[0x1E69A26B8]);
  v4 = [(MKPlaceInlineMapViewController *)self mapCamera];
  [v4 centerCoordinate];
  [v3 setLatitude:?];

  v5 = [(MKPlaceInlineMapViewController *)self mapCamera];
  [v5 centerCoordinate];
  [v3 setLongitude:v6];

  v7 = [(MKPlaceInlineMapViewController *)self mapCamera];
  [v7 heading];
  [v3 setHeading:?];

  v8 = [(MKPlaceInlineMapViewController *)self mapCamera];
  [v8 pitch];
  [v3 setPitch:?];

  v9 = [(MKPlaceInlineMapViewController *)self mapCamera];
  [v9 altitude];
  [v3 setAltitude:?];

  [v3 latitude];
  [v3 longitude];
  [v3 heading];
  [v3 pitch];
  [v3 altitude];

  return v3;
}

- (void)fetchPoisForBrand
{
  v3 = +[MKMapService sharedService];
  v4 = [v3 defaultTraits];

  if ([v4 hasDeviceLocation])
  {
    goto LABEL_4;
  }

  if (self->_location)
  {
    v5 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:self->_location];
    [v4 setDeviceLocation:v5];

LABEL_4:
    v6 = [(MKPlaceInlineMapViewController *)self mapItem];
    v7 = [v6 _muid];

    v8 = +[MKMapService sharedService];
    v9 = [v8 ticketForSearchPoisForBrandMUID:v7 traits:v4];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__MKPlacePoisInlineMapViewController_fetchPoisForBrand__block_invoke;
    v10[3] = &unk_1E76C71C8;
    v10[4] = self;
    [v9 submitWithHandler:v10 networkActivity:&__block_literal_global_180];
  }
}

void __55__MKPlacePoisInlineMapViewController_fetchPoisForBrand__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = v6;
  if (!a3)
  {
    v13 = v6;
    v8 = [v6 count];
    v7 = v13;
    if (v8)
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 postNotificationName:@"MKPlaceActionManagerBrandStoresEnableNotification" object:0];

      objc_storeStrong((*(a1 + 32) + 1072), a2);
      [*(a1 + 32) updateInlineMapWithRefinedMapItems];
      [*(*(a1 + 32) + 1080) setLocationsNumber:{objc_msgSend(*(*(a1 + 32) + 1072), "count")}];
      [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
      if (([*(*(a1 + 32) + 1080) visible] & 1) == 0)
      {
        [*(*(a1 + 32) + 1080) setVisible:1];
        v10 = [*(a1 + 32) view];
        [v10 invalidateIntrinsicContentSize];

        v11 = [*(a1 + 32) view];
        [v11 _mapkit_setNeedsLayout];

        v12 = [*(a1 + 32) view];
        [v12 _mapkit_layoutIfNeeded];
      }

      [MEMORY[0x1E69DD250] setAnimationsEnabled:1];
      v7 = v13;
    }
  }
}

- (void)setLocation:(id)a3
{
  v5 = a3;
  if (v5 && !self->_location)
  {
    v6 = v5;
    objc_storeStrong(&self->_location, a3);
    [(MKPlacePoisInlineMapViewController *)self fetchPoisForBrand];
    v5 = v6;
  }
}

- (void)_updateMap
{
  v3 = [(MKPlaceInlineMapViewController *)self mapItem];
  v4 = [v3 _isMapItemTypeBrand];

  if (v4)
  {

    [(MKPlacePoisInlineMapViewController *)self fetchPoisForBrand];
  }
}

- (id)visibleMapItems
{
  fetchedMapItems = self->_fetchedMapItems;
  if (fetchedMapItems)
  {
    v4 = fetchedMapItems;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MKPlacePoisInlineMapViewController;
  [(MKPlaceInlineMapViewController *)&v5 viewDidLoad];
  v3 = [(MKPlacePoisInlineMapViewController *)self view];
  mapContentView = self->_mapContentView;
  self->_mapContentView = v3;
}

- (void)loadView
{
  v3 = [_MKPlacePoisInlineMapContentView alloc];
  v4 = [(_MKPlacePoisInlineMapContentView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MKPlacePoisInlineMapViewController *)self setView:v4];
}

+ (id)inlineMapWithMapItem:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 _isMapItemTypeBrand] && (objc_msgSend(v5, "_isStandAloneBrand") & 1) == 0)
  {
    v7 = [(MKPlaceInlineMapViewController *)[MKPlacePoisInlineMapViewController alloc] initWithMKMapItem:v5 configuration:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end