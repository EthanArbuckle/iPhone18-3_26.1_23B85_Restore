@interface NWCComplicationGeocoder
+ (NWCComplicationGeocoder)sharedGeocoder;
- (NWCComplicationGeocoder)init;
- (id)cachedPlacemarkForLocation:(id)location;
- (void)_handlePlacemarks:(id)placemarks fromLocation:(id)location error:(id)error;
- (void)placemarkForLocation:(id)location handler:(id)handler;
@end

@implementation NWCComplicationGeocoder

+ (NWCComplicationGeocoder)sharedGeocoder
{
  if (qword_27E1C78F0 != -1)
  {
    sub_23BDD8740();
  }

  v3 = qword_27E1C78E8;

  return v3;
}

- (NWCComplicationGeocoder)init
{
  v8.receiver = self;
  v8.super_class = NWCComplicationGeocoder;
  v2 = [(NWCComplicationGeocoder *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBFBE8]);
    geocoder = v2->_geocoder;
    v2->_geocoder = v3;

    array = [MEMORY[0x277CBEB18] array];
    handlers = v2->_handlers;
    v2->_handlers = array;
  }

  return v2;
}

- (id)cachedPlacemarkForLocation:(id)location
{
  locationCopy = location;
  v5 = locationCopy;
  if (self->_cachedLocation && self->_cachedPlacemark && [locationCopy isEqual:?])
  {
    v6 = self->_cachedPlacemark;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)placemarkForLocation:(id)location handler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  v9 = [(NWCComplicationGeocoder *)self cachedPlacemarkForLocation:locationCopy];
  if (v9)
  {
    v10 = NTALogForCategory(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = locationCopy;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_23BDCF000, v10, OS_LOG_TYPE_DEFAULT, "Hitting cached placemark for location: %@ %@", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BDD483C;
    block[3] = &unk_278B99A48;
    v27 = handlerCopy;
    v26 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if ([(CLLocation *)self->_cachedLocation isEqual:locationCopy])
  {
    v11 = NTALogForCategory(6uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = locationCopy;
      _os_log_impl(&dword_23BDCF000, v11, OS_LOG_TYPE_DEFAULT, "Requesting the placemark for the same location. %@", buf, 0xCu);
    }

    handlers = self->_handlers;
    v13 = [handlerCopy copy];
    v14 = MEMORY[0x23EEBDCB0]();
    [(NSMutableArray *)handlers addObject:v14];
  }

  else
  {
    if ([(CLGeocoder *)self->_geocoder isGeocoding])
    {
      v15 = NTALogForCategory(6uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = locationCopy;
        _os_log_impl(&dword_23BDCF000, v15, OS_LOG_TYPE_DEFAULT, "Canceling the previous geocode request. %@", buf, 0xCu);
      }

      [(CLGeocoder *)self->_geocoder cancelGeocode];
    }

    objc_storeStrong(&self->_cachedLocation, location);
    [(NSMutableArray *)self->_handlers removeAllObjects];
    v16 = self->_handlers;
    v17 = [handlerCopy copy];
    v18 = MEMORY[0x23EEBDCB0]();
    [(NSMutableArray *)v16 addObject:v18];

    v19 = NTALogForCategory(6uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = locationCopy;
      _os_log_impl(&dword_23BDCF000, v19, OS_LOG_TYPE_DEFAULT, "Sending geocode request for location %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    geocoder = self->_geocoder;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_23BDD4854;
    v22[3] = &unk_278B99A70;
    objc_copyWeak(&v24, buf);
    v23 = locationCopy;
    [(CLGeocoder *)geocoder reverseGeocodeLocation:v23 completionHandler:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handlePlacemarks:(id)placemarks fromLocation:(id)location error:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  placemarksCopy = placemarks;
  locationCopy = location;
  errorCopy = error;
  if ([errorCopy code] != 10)
  {
    if (errorCopy)
    {
      v12 = NTALogForCategory(6uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = locationCopy;
        v23 = 2112;
        v24 = errorCopy;
        _os_log_impl(&dword_23BDCF000, v12, OS_LOG_TYPE_DEFAULT, "Reverse geocide with error: %@ %@.", buf, 0x16u);
      }

      firstObject = 0;
    }

    else
    {
      firstObject = [placemarksCopy firstObject];
      if (!firstObject)
      {
        goto LABEL_9;
      }

      objc_storeStrong(&self->_cachedPlacemark, firstObject);
      v12 = NTALogForCategory(6uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = locationCopy;
        v23 = 2112;
        v24 = firstObject;
        _os_log_impl(&dword_23BDCF000, v12, OS_LOG_TYPE_DEFAULT, "Updated the cached placemark for location %@-%@.", buf, 0x16u);
      }
    }

LABEL_9:
    v14 = [(NSMutableArray *)self->_handlers copy];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BDD4B54;
    block[3] = &unk_278B99A98;
    v18 = v14;
    v19 = firstObject;
    v20 = errorCopy;
    v15 = firstObject;
    v11 = v14;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [(NSMutableArray *)self->_handlers removeAllObjects];

    goto LABEL_10;
  }

  v11 = NTALogForCategory(6uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = locationCopy;
    _os_log_impl(&dword_23BDCF000, v11, OS_LOG_TYPE_DEFAULT, "Reverse geocode request is cancelled. %@", buf, 0xCu);
  }

LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
}

@end