@interface CLGeocoder
+ (void)hydrateGeoMapItemLocallyFromHandle:(id)handle completionHandler:(id)handler;
- (CLGeocoder)init;
- (void)_notifyCancel;
- (void)_notifyError:(id)error;
- (void)_notifyNoResult;
- (void)_notifyPartialResult:(id)result;
- (void)_notifyResult:(id)result error:(id)error;
- (void)_ticket:(id)_ticket didReturnError:(id)error partialResultForLocation:(id)location;
- (void)_ticket:(id)_ticket didReturnGeoMapItems:(id)items;
- (void)cancelGeocode;
- (void)dealloc;
- (void)geocodeAddressDictionary:(id)dictionary preferredLocale:(id)locale completionHandler:(id)handler;
- (void)geocodeAddressString:(NSString *)addressString inRegion:(CLRegion *)region preferredLocale:(NSLocale *)locale completionHandler:(CLGeocodeCompletionHandler)completionHandler;
- (void)geocodeAddressString:(id)string inRegionCenteredAt:(CLLocationCoordinate2D)at inRegionRadius:(double)radius preferredLocale:(id)locale completionHandler:(id)handler;
- (void)geocodePostalAddress:(CNPostalAddress *)postalAddress preferredLocale:(NSLocale *)locale completionHandler:(CLGeocodeCompletionHandler)completionHandler;
- (void)reverseGeocodeLocation:(id)location preferredLocale:(id)locale heading:(double)heading localResultsOnly:(BOOL)only completionHandler:(id)handler;
@end

@implementation CLGeocoder

- (CLGeocoder)init
{
  v18 = *MEMORY[0x1E69E9840];
  if (!objc_opt_class())
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "[GEOMapService class]";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Do not use CLGeocoder when GeoServices is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
      }
    }

    v7 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "[GEOMapService class]";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Do not use CLGeocoder when GeoServices is missing", "{msg%{public}.0s:Do not use CLGeocoder when GeoServices is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
      }
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "[GEOMapService class]";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Do not use CLGeocoder when GeoServices is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v9.receiver = self;
  v9.super_class = CLGeocoder;
  v3 = [(CLGeocoder *)&v9 init];
  if (v3)
  {
    v3->_internal = objc_alloc_init(CLGeocoderInternal);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLGeocoder;
  [(CLGeocoder *)&v3 dealloc];
}

- (void)reverseGeocodeLocation:(id)location preferredLocale:(id)locale heading:(double)heading localResultsOnly:(BOOL)only completionHandler:(id)handler
{
  queue = self->_internal->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B996888;
  v8[3] = &unk_1E753E1F8;
  v8[4] = self;
  v8[5] = location;
  v8[6] = locale;
  v8[7] = handler;
  *&v8[8] = heading;
  onlyCopy = only;
  dispatch_async(queue, v8);
}

- (void)geocodeAddressDictionary:(id)dictionary preferredLocale:(id)locale completionHandler:(id)handler
{
  queue = self->_internal->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B996DAC;
  v6[3] = &unk_1E753E248;
  v6[4] = self;
  v6[5] = dictionary;
  v6[6] = locale;
  v6[7] = handler;
  dispatch_async(queue, v6);
}

- (void)geocodeAddressString:(id)string inRegionCenteredAt:(CLLocationCoordinate2D)at inRegionRadius:(double)radius preferredLocale:(id)locale completionHandler:(id)handler
{
  -[CLCircularRegion initWithCenter:radius:identifier:]([CLCircularRegion alloc], "initWithCenter:radius:identifier:", [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.CoreLocation.geocodeAddressStringRegion-%@", objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString")], at.latitude, at.longitude, radius);

  MEMORY[0x1EEE66B58](self, sel_geocodeAddressString_inRegion_preferredLocale_completionHandler_);
}

- (void)geocodeAddressString:(NSString *)addressString inRegion:(CLRegion *)region preferredLocale:(NSLocale *)locale completionHandler:(CLGeocodeCompletionHandler)completionHandler
{
  queue = self->_internal->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B99715C;
  block[3] = &unk_1E753E270;
  block[4] = region;
  block[5] = self;
  block[7] = locale;
  block[8] = completionHandler;
  block[6] = addressString;
  dispatch_async(queue, block);
}

+ (void)hydrateGeoMapItemLocallyFromHandle:(id)handle completionHandler:(id)handler
{
  if (handler)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_19B997568;
    v4[3] = &unk_1E753D688;
    v4[4] = handle;
    v4[5] = handler;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

- (void)cancelGeocode
{
  queue = self->_internal->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B997758;
  block[3] = &unk_1E753CC90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_ticket:(id)_ticket didReturnGeoMapItems:(id)items
{
  queue = self->_internal->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B99784C;
  block[3] = &unk_1E753D098;
  block[4] = self;
  block[5] = _ticket;
  block[6] = items;
  dispatch_async(queue, block);
}

- (void)_ticket:(id)_ticket didReturnError:(id)error partialResultForLocation:(id)location
{
  queue = self->_internal->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B997A2C;
  block[3] = &unk_1E753D098;
  block[4] = self;
  block[5] = _ticket;
  block[6] = error;
  dispatch_async(queue, block);
}

- (void)_notifyResult:(id)result error:(id)error
{
  internal = self->_internal;
  geocodeCompletionHandler = internal->_geocodeCompletionHandler;
  internal->_geocodeCompletionHandler = 0;
  if (geocodeCompletionHandler)
  {
    responseSilo = [(CLGeocoderInternal *)self->_internal responseSilo];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B997D24;
    v9[3] = &unk_1E753CD30;
    v9[5] = error;
    v9[6] = geocodeCompletionHandler;
    v9[4] = result;
    [(CLSilo *)responseSilo async:v9];
  }
}

- (void)_notifyPartialResult:(id)result
{
  [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:9 userInfo:0];

  MEMORY[0x1EEE66B58](self, sel__notifyResult_error_);
}

- (void)_notifyNoResult
{
  [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:8 userInfo:0];

  MEMORY[0x1EEE66B58](self, sel__notifyResult_error_);
}

- (void)_notifyCancel
{
  [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:10 userInfo:0];

  MEMORY[0x1EEE66B58](self, sel__notifyResult_error_);
}

- (void)_notifyError:(id)error
{
  [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:2 userInfo:0];

  MEMORY[0x1EEE66B58](self, sel__notifyResult_error_);
}

- (void)geocodePostalAddress:(CNPostalAddress *)postalAddress preferredLocale:(NSLocale *)locale completionHandler:(CLGeocodeCompletionHandler)completionHandler
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NSString *)[(CNPostalAddress *)postalAddress street] length])
  {
    [v9 setObject:-[CNPostalAddress street](postalAddress forKey:{"street"), @"Thoroughfare"}];
  }

  if ([(NSString *)[(CNPostalAddress *)postalAddress subLocality] length])
  {
    [v9 setObject:-[CNPostalAddress subLocality](postalAddress forKey:{"subLocality"), @"SubLocality"}];
  }

  if ([(NSString *)[(CNPostalAddress *)postalAddress city] length])
  {
    [v9 setObject:-[CNPostalAddress city](postalAddress forKey:{"city"), @"City"}];
  }

  if ([(NSString *)[(CNPostalAddress *)postalAddress subAdministrativeArea] length])
  {
    [v9 setObject:-[CNPostalAddress subAdministrativeArea](postalAddress forKey:{"subAdministrativeArea"), @"SubAdministrativeArea"}];
  }

  if ([(NSString *)[(CNPostalAddress *)postalAddress state] length])
  {
    [v9 setObject:-[CNPostalAddress state](postalAddress forKey:{"state"), @"State"}];
  }

  if ([(NSString *)[(CNPostalAddress *)postalAddress postalCode] length])
  {
    [v9 setObject:-[CNPostalAddress postalCode](postalAddress forKey:{"postalCode"), @"ZIP"}];
  }

  if ([(NSString *)[(CNPostalAddress *)postalAddress country] length])
  {
    [v9 setObject:-[CNPostalAddress country](postalAddress forKey:{"country"), @"Country"}];
  }

  if ([(NSString *)[(CNPostalAddress *)postalAddress ISOCountryCode] length])
  {
    [v9 setObject:-[CNPostalAddress ISOCountryCode](postalAddress forKey:{"ISOCountryCode"), @"CountryCode"}];
  }

  [(CLGeocoder *)self geocodeAddressDictionary:v9 preferredLocale:locale completionHandler:completionHandler];
}

@end