@interface SALocationManager
- (SALocationManager)init;
- (SALocationManagerProtocol)delegate;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)notifyLocation:(id)location;
- (void)startMonitoringLocation;
- (void)stopMonitoringLocation;
@end

@implementation SALocationManager

- (SALocationManager)init
{
  v7.receiver = self;
  v7.super_class = SALocationManager;
  v2 = [(SALocationManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBFC10]);
    v4 = +[SABundleManager locationBundle];
    v5 = [v3 initWithEffectiveBundle:v4 delegate:v2 onQueue:MEMORY[0x277D85CD0]];
    [(SALocationManager *)v2 setLocationManager:v5];

    [(CLLocationManager *)v2->_locationManager setDesiredAccuracy:10.0];
  }

  return v2;
}

- (void)notifyLocation:(id)location
{
  locationCopy = location;
  delegate = [(SALocationManager *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate locationManager:self didUpdateLocation:locationCopy];
  }

  else
  {
    v6 = sa_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SALocationManager notifyLocation:v6];
    }
  }
}

- (void)startMonitoringLocation
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = sa_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SALocationManager startMonitoringLocation]";
    _os_log_impl(&dword_23AA4D000, v3, OS_LOG_TYPE_DEFAULT, "%s, Starting location updates", &v7, 0xCu);
  }

  [(CLLocationManager *)self->_locationManager startUpdatingLocation];
  location = [(CLLocationManager *)self->_locationManager location];

  if (location)
  {
    location2 = [(CLLocationManager *)self->_locationManager location];
    [(SALocationManager *)self notifyLocation:location2];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringLocation
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SALocationManager stopMonitoringLocation]";
  _os_log_debug_impl(&dword_23AA4D000, log, OS_LOG_TYPE_DEBUG, "%s, Stopping location updates", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  v6 = sa_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SALocationManager locationManager:locationsCopy didUpdateLocations:v6];
  }

  firstObject = [locationsCopy firstObject];

  if (firstObject)
  {
    firstObject2 = [locationsCopy firstObject];
    [(SALocationManager *)self notifyLocation:firstObject2];
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = sa_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SALocationManager locationManager:errorCopy didFailWithError:v5];
  }
}

- (SALocationManagerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)notifyLocation:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "[SALocationManager notifyLocation:]";
  _os_log_error_impl(&dword_23AA4D000, log, OS_LOG_TYPE_ERROR, "%{public}s, Unable to deliver location updates", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(void *)a1 didUpdateLocations:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 firstObject];
  v5 = 136315395;
  v6 = "[SALocationManager locationManager:didUpdateLocations:]";
  v7 = 2117;
  v8 = v3;
  _os_log_debug_impl(&dword_23AA4D000, a2, OS_LOG_TYPE_DEBUG, "%s, Location update received, %{sensitive}@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(uint64_t)a1 didFailWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[SALocationManager locationManager:didFailWithError:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_23AA4D000, a2, OS_LOG_TYPE_ERROR, "%s, Location manager error, %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end