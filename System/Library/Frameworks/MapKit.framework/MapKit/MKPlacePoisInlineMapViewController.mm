@interface MKPlacePoisInlineMapViewController
+ (id)inlineMapWithMapItem:(id)item configuration:(id)configuration;
- (id)geoCamera;
- (id)visibleMapItems;
- (void)_handleTapOnMap;
- (void)_updateMap;
- (void)fetchPoisForBrand;
- (void)loadView;
- (void)setLocation:(id)location;
- (void)viewDidLoad;
@end

@implementation MKPlacePoisInlineMapViewController

- (void)_handleTapOnMap
{
  if ([(_MKPlacePoisInlineMapContentView *)self->_mapContentView visible])
  {
    mapItem = [(MKPlaceInlineMapViewController *)self mapItem];
    [mapItem _launchActivityForBrandItem];
  }
}

- (id)geoCamera
{
  v3 = objc_alloc_init(MEMORY[0x1E69A26B8]);
  mapCamera = [(MKPlaceInlineMapViewController *)self mapCamera];
  [mapCamera centerCoordinate];
  [v3 setLatitude:?];

  mapCamera2 = [(MKPlaceInlineMapViewController *)self mapCamera];
  [mapCamera2 centerCoordinate];
  [v3 setLongitude:v6];

  mapCamera3 = [(MKPlaceInlineMapViewController *)self mapCamera];
  [mapCamera3 heading];
  [v3 setHeading:?];

  mapCamera4 = [(MKPlaceInlineMapViewController *)self mapCamera];
  [mapCamera4 pitch];
  [v3 setPitch:?];

  mapCamera5 = [(MKPlaceInlineMapViewController *)self mapCamera];
  [mapCamera5 altitude];
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
  defaultTraits = [v3 defaultTraits];

  if ([defaultTraits hasDeviceLocation])
  {
    goto LABEL_4;
  }

  if (self->_location)
  {
    v5 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:self->_location];
    [defaultTraits setDeviceLocation:v5];

LABEL_4:
    mapItem = [(MKPlaceInlineMapViewController *)self mapItem];
    _muid = [mapItem _muid];

    v8 = +[MKMapService sharedService];
    v9 = [v8 ticketForSearchPoisForBrandMUID:_muid traits:defaultTraits];

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

- (void)setLocation:(id)location
{
  locationCopy = location;
  if (locationCopy && !self->_location)
  {
    v6 = locationCopy;
    objc_storeStrong(&self->_location, location);
    [(MKPlacePoisInlineMapViewController *)self fetchPoisForBrand];
    locationCopy = v6;
  }
}

- (void)_updateMap
{
  mapItem = [(MKPlaceInlineMapViewController *)self mapItem];
  _isMapItemTypeBrand = [mapItem _isMapItemTypeBrand];

  if (_isMapItemTypeBrand)
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
  view = [(MKPlacePoisInlineMapViewController *)self view];
  mapContentView = self->_mapContentView;
  self->_mapContentView = view;
}

- (void)loadView
{
  v3 = [_MKPlacePoisInlineMapContentView alloc];
  v4 = [(_MKPlacePoisInlineMapContentView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MKPlacePoisInlineMapViewController *)self setView:v4];
}

+ (id)inlineMapWithMapItem:(id)item configuration:(id)configuration
{
  itemCopy = item;
  configurationCopy = configuration;
  if ([itemCopy _isMapItemTypeBrand] && (objc_msgSend(itemCopy, "_isStandAloneBrand") & 1) == 0)
  {
    v7 = [(MKPlaceInlineMapViewController *)[MKPlacePoisInlineMapViewController alloc] initWithMKMapItem:itemCopy configuration:configurationCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end