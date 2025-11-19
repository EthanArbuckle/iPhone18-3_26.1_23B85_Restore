@interface NTKTimelapseListingFactory
- (id)_initLibraryForDevice:(id)a3;
- (id)heroImageWithTheme:(unint64_t)a3 date:(id)a4 location:(CLLocationCoordinate2D)a5;
- (id)listingWithTheme:(unint64_t)a3 date:(id)a4 location:(CLLocationCoordinate2D)a5;
- (id)posterImageWithTheme:(unint64_t)a3;
- (void)discardAssets;
- (void)setTimelapseListingHasAssets:(id)a3;
@end

@implementation NTKTimelapseListingFactory

- (id)_initLibraryForDevice:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = NTKTimelapseListingFactory;
  v6 = [(NTKTimelapseListingFactory *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = objc_opt_new();
    assetListings = v7->_assetListings;
    v7->_assetListings = v8;

    v10 = v7;
  }

  return v7;
}

- (id)listingWithTheme:(unint64_t)a3 date:(id)a4 location:(CLLocationCoordinate2D)a5
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v9 = a4;
  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136316163;
    v16 = "[NTKTimelapseListingFactory listingWithTheme:date:location:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v9;
    v21 = 2049;
    v22 = latitude;
    v23 = 2049;
    v24 = longitude;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s theme:%lu date:%@ latitude:%{private}f longitude:%{private}f", &v15, 0x34u);
  }

  v11 = NTKVideoIndexForTimelapseTheme(a3, v9, latitude, longitude);
  v12 = NTKPhotoAnalysisForTimelapseVideo(a3, v11, [(CLKDevice *)self->_device sizeClass]);
  v13 = [[NTKTimelapseListing alloc] initForDevice:self->_device withTheme:a3 videoIndex:v11 photoAnalysis:v12];

  return v13;
}

- (id)heroImageWithTheme:(unint64_t)a3 date:(id)a4 location:(CLLocationCoordinate2D)a5
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v9 = a4;
  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316163;
    v18 = "[NTKTimelapseListingFactory heroImageWithTheme:date:location:]";
    v19 = 2048;
    v20 = a3;
    v21 = 2112;
    v22 = v9;
    v23 = 2049;
    v24 = latitude;
    v25 = 2049;
    v26 = longitude;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s theme:%lu date:%@ latitude:%{private}f longitude:%{private}f", buf, 0x34u);
  }

  v11 = NTKVideoIndexForTimelapseTheme(a3, v9, latitude, longitude);
  v12 = [NTKTimelapseThemeEditOption optionWithTimelapseTheme:a3 forDevice:self->_device];
  v13 = [v12 resourceBaseName];
  v14 = [NSString stringWithFormat:@"%@-%03d-hero", v13, v11];

  v15 = NTKImageNamedFromAssetsBundle();

  return v15;
}

- (id)posterImageWithTheme:(unint64_t)a3
{
  v3 = [NTKTimelapseThemeEditOption optionWithTimelapseTheme:a3 forDevice:self->_device];
  v4 = [v3 resourceBaseName];
  v5 = NTKImageNamedFromAssetsBundle();

  return v5;
}

- (void)setTimelapseListingHasAssets:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_assetListings containsObject:?]& 1) == 0)
  {
    [(NTKTimelapseListingFactory *)self discardAssets];
    [(NSMutableSet *)self->_assetListings addObject:v4];
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