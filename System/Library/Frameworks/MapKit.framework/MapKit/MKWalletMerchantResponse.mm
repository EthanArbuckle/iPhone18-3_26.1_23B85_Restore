@interface MKWalletMerchantResponse
- (MKMapItem)mapItem;
- (MKWalletMerchantResponse)initWithGEOMapItem:(id)item;
- (MKWalletMerchantResponse)initWithMerchantLookupResult:(id)result;
- (MKWalletMerchantStylingInfo)placeStyling;
- (MKWalletMerchantStylingInfo)walletCategoryStyling;
- (NSString)heroImageProviderName;
- (NSString)localizedPlaceLanguage;
- (NSString)localizedPlaceName;
- (NSString)localizedWalletCategoryLanguage;
- (NSString)localizedWalletCategoryName;
- (NSString)mapsCategoryIdentifier;
- (NSString)walletCategoryIdentifier;
- (id)bestHeroImageForSize:(CGSize)size allowSmaller:(BOOL)smaller;
@end

@implementation MKWalletMerchantResponse

- (NSString)heroImageProviderName
{
  v2 = _MKBestWalletHeroPhotoForGEOMapItem(self->_mapItem);
  v3 = v2;
  if (v2)
  {
    attribution = [v2 attribution];
    providerName = [attribution providerName];
  }

  else
  {
    providerName = 0;
  }

  return providerName;
}

- (id)bestHeroImageForSize:(CGSize)size allowSmaller:(BOOL)smaller
{
  smallerCopy = smaller;
  height = size.height;
  width = size.width;
  v8 = _MKBestWalletHeroPhotoForGEOMapItem(self->_mapItem);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 bestPhotoForSize:smallerCopy allowSmaller:{width, height}];
    v11 = [v10 url];

    if (v11)
    {
      height = [v10 url];

      goto LABEL_6;
    }
  }

  height = [(GEOMapItem *)self->_mapItem _bestHeroBrandIconURLForSize:smallerCopy allowSmaller:width, height];
LABEL_6:

  return height;
}

- (MKMapItem)mapItem
{
  if (self->_mapItem)
  {
    v3 = [MKMapItem _itemWithGeoMapItem:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)walletCategoryIdentifier
{
  mapItem = self->_mapItem;
  if (mapItem)
  {
    _walletCategoryIdentifier = [(GEOMapItem *)mapItem _walletCategoryIdentifier];
  }

  else
  {
    categoryInfo = [(GEOPDMerchantLookupResult *)self->_merchantLookupResult categoryInfo];
    _walletCategoryIdentifier = [categoryInfo walletCategoryId];
  }

  return _walletCategoryIdentifier;
}

- (NSString)mapsCategoryIdentifier
{
  mapItem = self->_mapItem;
  if (mapItem)
  {
    _walletMapsCategoryIdentifier = [(GEOMapItem *)mapItem _walletMapsCategoryIdentifier];
  }

  else
  {
    categoryInfo = [(GEOPDMerchantLookupResult *)self->_merchantLookupResult categoryInfo];
    _walletMapsCategoryIdentifier = [categoryInfo mapsCategoryId];
  }

  return _walletMapsCategoryIdentifier;
}

- (NSString)localizedWalletCategoryLanguage
{
  mapItem = self->_mapItem;
  if (mapItem)
  {
    mapItem = [mapItem _walletCategoryLocalizedStringLocale];
    v2 = vars8;
  }

  return mapItem;
}

- (NSString)localizedWalletCategoryName
{
  mapItem = self->_mapItem;
  if (mapItem)
  {
    mapItem = [mapItem _walletCategoryLocalizedString];
    v2 = vars8;
  }

  return mapItem;
}

- (MKWalletMerchantStylingInfo)walletCategoryStyling
{
  if (self->_mapItem)
  {
    v3 = [MKWalletMerchantStylingInfo alloc];
    _walletCategoryStyling = [(GEOMapItem *)self->_mapItem _walletCategoryStyling];
    v5 = [(MKWalletMerchantStylingInfo *)v3 initWithStyleAttributes:_walletCategoryStyling];
  }

  else
  {
    categoryInfo = [(GEOPDMerchantLookupResult *)self->_merchantLookupResult categoryInfo];
    _walletCategoryStyling = [categoryInfo walletCategoryId];

    v7 = +[MKMapService sharedService];
    v5 = [v7 stylingForWalletCategory:_walletCategoryStyling];
  }

  return v5;
}

- (NSString)localizedPlaceLanguage
{
  mapItem = self->_mapItem;
  if (mapItem)
  {
    mapItem = [mapItem _walletPlaceLocalizedStringLocale];
    v2 = vars8;
  }

  return mapItem;
}

- (NSString)localizedPlaceName
{
  mapItem = self->_mapItem;
  if (mapItem)
  {
    _walletPlaceLocalizedString = [(GEOMapItem *)mapItem _walletPlaceLocalizedString];
  }

  else
  {
    categoryInfo = [(GEOPDMerchantLookupResult *)self->_merchantLookupResult categoryInfo];
    _walletPlaceLocalizedString = [categoryInfo mapsCategoryId];
  }

  return _walletPlaceLocalizedString;
}

- (MKWalletMerchantStylingInfo)placeStyling
{
  mapItem = self->_mapItem;
  v4 = [MKWalletMerchantStylingInfo alloc];
  if (mapItem)
  {
    _walletPlaceStyling = [(GEOMapItem *)self->_mapItem _walletPlaceStyling];
    v6 = [(MKWalletMerchantStylingInfo *)v4 initWithStyleAttributes:_walletPlaceStyling];
  }

  else
  {
    _walletPlaceStyling = [(GEOPDMerchantLookupResult *)self->_merchantLookupResult categoryInfo];
    mapsCategoryStyleAttributes = [_walletPlaceStyling mapsCategoryStyleAttributes];
    v6 = [(MKWalletMerchantStylingInfo *)v4 initWithStyleAttributes:mapsCategoryStyleAttributes];
  }

  return v6;
}

- (MKWalletMerchantResponse)initWithMerchantLookupResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = MKWalletMerchantResponse;
  v6 = [(MKWalletMerchantResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_merchantLookupResult, result);
  }

  return v7;
}

- (MKWalletMerchantResponse)initWithGEOMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = MKWalletMerchantResponse;
  v6 = [(MKWalletMerchantResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end