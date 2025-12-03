@interface ATXCurrentLocationDataSource
- (ATXCurrentLocationDataSource)initWithDevice:(id)device;
- (void)obtainOneTimeLocationWithCallback:(id)callback;
@end

@implementation ATXCurrentLocationDataSource

- (ATXCurrentLocationDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXCurrentLocationDataSource;
  v6 = [(ATXCurrentLocationDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)obtainOneTimeLocationWithCallback:(id)callback
{
  v18[2] = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA308))
  {
    locationManager = [(ATXHeuristicDevice *)self->_device locationManager];

    if (locationManager)
    {
      locationManager2 = [(ATXHeuristicDevice *)self->_device locationManager];
      getCurrentLocation = [locationManager2 getCurrentLocation];

      if (getCurrentLocation)
      {
        v17[0] = @"lat";
        v8 = MEMORY[0x277CCABB0];
        [getCurrentLocation coordinate];
        v9 = [v8 numberWithDouble:?];
        v17[1] = @"lon";
        v18[0] = v9;
        v10 = MEMORY[0x277CCABB0];
        [getCurrentLocation coordinate];
        v12 = [v10 numberWithDouble:v11];
        v18[1] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

        callbackCopy[2](callbackCopy, v13, 0);
      }

      else
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBFCF0] code:0 userInfo:0];
        (callbackCopy)[2](callbackCopy, 0, v15);
      }
    }

    else
    {
      v14 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [ATXCurrentLocationDataSource obtainOneTimeLocationWithCallback:v14];
      }

      getCurrentLocation = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
      (callbackCopy)[2](callbackCopy, MEMORY[0x277CBEC10], getCurrentLocation);
    }
  }

  else
  {
    callbackCopy[2](callbackCopy, MEMORY[0x277CBEC10], 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end