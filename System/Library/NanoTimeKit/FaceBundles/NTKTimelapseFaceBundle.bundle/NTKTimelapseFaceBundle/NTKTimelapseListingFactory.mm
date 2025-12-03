@interface NTKTimelapseListingFactory
- (id)_initLibraryForDevice:(id)device;
- (id)heroImageWithTheme:(unint64_t)theme date:(id)date location:(CLLocationCoordinate2D)location;
- (id)listingWithTheme:(unint64_t)theme date:(id)date location:(CLLocationCoordinate2D)location;
- (id)posterImageWithTheme:(unint64_t)theme;
- (void)discardAssets;
- (void)setTimelapseListingHasAssets:(id)assets;
@end

@implementation NTKTimelapseListingFactory

- (id)_initLibraryForDevice:(id)device
{
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = NTKTimelapseListingFactory;
  v6 = [(NTKTimelapseListingFactory *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = objc_opt_new();
    assetListings = v7->_assetListings;
    v7->_assetListings = v8;

    v10 = v7;
  }

  return v7;
}

- (id)listingWithTheme:(unint64_t)theme date:(id)date location:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  dateCopy = date;
  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136316163;
    v16 = "[NTKTimelapseListingFactory listingWithTheme:date:location:]";
    v17 = 2048;
    themeCopy = theme;
    v19 = 2112;
    v20 = dateCopy;
    v21 = 2049;
    v22 = latitude;
    v23 = 2049;
    v24 = longitude;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s theme:%lu date:%@ latitude:%{private}f longitude:%{private}f", &v15, 0x34u);
  }

  v11 = NTKVideoIndexForTimelapseTheme(theme, dateCopy, latitude, longitude);
  v12 = NTKPhotoAnalysisForTimelapseVideo(theme, v11, [(CLKDevice *)self->_device sizeClass]);
  v13 = [[NTKTimelapseListing alloc] initForDevice:self->_device withTheme:theme videoIndex:v11 photoAnalysis:v12];

  return v13;
}

- (id)heroImageWithTheme:(unint64_t)theme date:(id)date location:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  dateCopy = date;
  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316163;
    v18 = "[NTKTimelapseListingFactory heroImageWithTheme:date:location:]";
    v19 = 2048;
    themeCopy = theme;
    v21 = 2112;
    v22 = dateCopy;
    v23 = 2049;
    v24 = latitude;
    v25 = 2049;
    v26 = longitude;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s theme:%lu date:%@ latitude:%{private}f longitude:%{private}f", buf, 0x34u);
  }

  v11 = NTKVideoIndexForTimelapseTheme(theme, dateCopy, latitude, longitude);
  v12 = [NTKTimelapseThemeEditOption optionWithTimelapseTheme:theme forDevice:self->_device];
  resourceBaseName = [v12 resourceBaseName];
  v14 = [NSString stringWithFormat:@"%@-%03d-hero", resourceBaseName, v11];

  v15 = NTKImageNamedFromAssetsBundle();

  return v15;
}

- (id)posterImageWithTheme:(unint64_t)theme
{
  v3 = [NTKTimelapseThemeEditOption optionWithTimelapseTheme:theme forDevice:self->_device];
  resourceBaseName = [v3 resourceBaseName];
  v5 = NTKImageNamedFromAssetsBundle();

  return v5;
}

- (void)setTimelapseListingHasAssets:(id)assets
{
  assetsCopy = assets;
  if (([(NSMutableSet *)self->_assetListings containsObject:?]& 1) == 0)
  {
    [(NTKTimelapseListingFactory *)self discardAssets];
    [(NSMutableSet *)self->_assetListings addObject:assetsCopy];
  }
}

- (void)discardAssets
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_assetListings;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) discardAssets];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_assetListings removeAllObjects];
}

@end