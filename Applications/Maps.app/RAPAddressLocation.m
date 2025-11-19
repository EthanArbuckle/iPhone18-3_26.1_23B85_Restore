@interface RAPAddressLocation
- (CLLocationCoordinate2D)coordinate;
- (RAPAddressLocation)initWithCoordinate:(CLLocationCoordinate2D)a3;
- (void)_invokeCompletionBlocksWithFinishedFlag:(BOOL)a3;
- (void)cancelProcessing;
- (void)processWithGeocoderIfNeededWithCompletion:(id)a3;
@end

@implementation RAPAddressLocation

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_invokeCompletionBlocksWithFinishedFlag:(BOOL)a3
{
  v4 = [(NSMutableArray *)self->_completionBlocks copy];
  completionBlocks = self->_completionBlocks;
  self->_completionBlocks = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)cancelProcessing
{
  [(CLGeocoder *)self->_geocoder cancelGeocode];
  geocoder = self->_geocoder;
  self->_geocoder = 0;

  [(RAPAddressLocation *)self _invokeCompletionBlocksWithFinishedFlag:0];
}

- (void)processWithGeocoderIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(RAPAddressLocation *)self placemark];

  if (v5)
  {
    if (v4)
    {
      v4[2](v4, self, 1);
    }
  }

  else
  {
    if (!self->_completionBlocks)
    {
      v6 = objc_alloc_init(NSMutableArray);
      completionBlocks = self->_completionBlocks;
      self->_completionBlocks = v6;
    }

    if (v4)
    {
      v8 = self->_completionBlocks;
      v9 = [v4 copy];
      [(NSMutableArray *)v8 addObject:v9];
    }

    if (!self->_geocoder)
    {
      v10 = objc_alloc_init(CLGeocoder);
      geocoder = self->_geocoder;
      self->_geocoder = v10;

      v12 = self->_geocoder;
      v13 = [CLLocation alloc];
      v14 = +[NSDate date];
      v15 = [v13 initWithCoordinate:v14 altitude:self->_coordinate.latitude horizontalAccuracy:self->_coordinate.longitude verticalAccuracy:0.0 timestamp:{0.0, 0.0}];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1005BE0BC;
      v16[3] = &unk_101660FB0;
      v16[4] = self;
      [(CLGeocoder *)v12 reverseGeocodeLocation:v15 completionHandler:v16];
    }
  }
}

- (RAPAddressLocation)initWithCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6.receiver = self;
  v6.super_class = RAPAddressLocation;
  result = [(RAPAddressLocation *)&v6 init];
  if (result)
  {
    result->_coordinate.latitude = latitude;
    result->_coordinate.longitude = longitude;
  }

  return result;
}

@end