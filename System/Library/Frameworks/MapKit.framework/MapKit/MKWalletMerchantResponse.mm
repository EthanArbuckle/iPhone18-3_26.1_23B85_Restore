@interface MKWalletMerchantResponse
- (MKMapItem)mapItem;
- (MKWalletMerchantResponse)initWithGEOMapItem:(id)a3;
- (MKWalletMerchantResponse)initWithMerchantLookupResult:(id)a3;
- (MKWalletMerchantStylingInfo)placeStyling;
- (MKWalletMerchantStylingInfo)walletCategoryStyling;
- (NSString)heroImageProviderName;
- (NSString)localizedPlaceLanguage;
- (NSString)localizedPlaceName;
- (NSString)localizedWalletCategoryLanguage;
- (NSString)localizedWalletCategoryName;
- (NSString)mapsCategoryIdentifier;
- (NSString)walletCategoryIdentifier;
- (id)bestHeroImageForSize:(CGSize)a3 allowSmaller:(BOOL)a4;
@end

@implementation MKWalletMerchantResponse

- (NSString)heroImageProviderName
{
  v2 = _MKBestWalletHeroPhotoForGEOMapItem(self->_mapItem);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 attribution];
    v5 = [v4 providerName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)bestHeroImageForSize:(CGSize)a3 allowSmaller:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = _MKBestWalletHeroPhotoForGEOMapItem(self->_mapItem);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 bestPhotoForSize:v4 allowSmaller:{width, height}];
    v11 = [v10 url];

    if (v11)
    {
      v12 = [v10 url];

      goto LABEL_6;
    }
  }

  v12 = [(GEOMapItem *)self->_mapItem _bestHeroBrandIconURLForSize:v4 allowSmaller:width, height];
LABEL_6:

  return v12;
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
    v4 = [(GEOMapItem *)mapItem _walletCategoryIdentifier];
  }

  else
  {
    v5 = [(GEOPDMerchantLookupResult *)self->_merchantLookupResult categoryInfo];
    v4 = [v5 walletCategoryId];
  }

  return v4;
}

- (NSString)mapsCategoryIdentifier
{
  mapItem = self->_mapItem;
  if (mapItem)
  {
    v4 = [(GEOMapItem *)mapItem _walletMapsCategoryIdentifier];
  }

  else
  {
    v5 = [(GEOPDMerchantLookupResult *)self->_merchantLookupResult categoryInfo];
    v4 = [v5 mapsCategoryId];
  }

  return v4;
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
    v4 = [(GEOMapItem *)self->_mapItem _walletCategoryStyling];
    v5 = [(MKWalletMerchantStylingInfo *)v3 initWithStyleAttributes:v4];
  }

  else
  {
    v6 = [(GEOPDMerchantLookupResult *)self->_merchantLookupResult categoryInfo];
    v4 = [v6 walletCategoryId];

    v7 = +[MKMapService sharedService];
    v5 = [v7 stylingForWalletCategory:v4];
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
    v4 = [(GEOMapItem *)mapItem _walletPlaceLocalizedString];
  }

  else
  {
    v5 = [(GEOPDMerchantLookupResult *)self->_merchantLookupResult categoryInfo];
    v4 = [v5 mapsCategoryId];
  }

  return v4;
}

- (MKWalletMerchantStylingInfo)placeStyling
{
  mapItem = self->_mapItem;
  v4 = [MKWalletMerchantStylingInfo alloc];
  if (mapItem)
  {
    v5 = [(GEOMapItem *)self->_mapItem _walletPlaceStyling];
    v6 = [(MKWalletMerchantStylingInfo *)v4 initWithStyleAttributes:v5];
  }

  else
  {
    v5 = [(GEOPDMerchantLookupResult *)self->_merchantLookupResult categoryInfo];
    v7 = [v5 mapsCategoryStyleAttributes];
    v6 = [(MKWalletMerchantStylingInfo *)v4 initWithStyleAttributes:v7];
  }

  return v6;
}

- (MKWalletMerchantResponse)initWithMerchantLookupResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKWalletMerchantResponse;
  v6 = [(MKWalletMerchantResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_merchantLookupResult, a3);
  }

  return v7;
}

- (MKWalletMerchantResponse)initWithGEOMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKWalletMerchantResponse;
  v6 = [(MKWalletMerchantResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
  }

  return v7;
}

@end