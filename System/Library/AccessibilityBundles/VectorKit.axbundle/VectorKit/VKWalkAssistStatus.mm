@interface VKWalkAssistStatus
- (VKWalkAssistStatus)initWithArrivalRadius:(double)radius delegate:(id)delegate;
- (VKWalkAssistStatusDelegate)delegate;
- (void)_makeStatusAnnouncement;
- (void)dealloc;
- (void)updateAssistStatusWithCurrentDistance:(double)distance startRouteRoadName:(id)name isFacingStartLocation:(BOOL)location isStationary:(BOOL)stationary;
@end

@implementation VKWalkAssistStatus

- (VKWalkAssistStatus)initWithArrivalRadius:(double)radius delegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = VKWalkAssistStatus;
  v7 = [(VKWalkAssistStatus *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_lastCurrentDistance = 0.0;
    v7->_arrivalRadius = radius;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v9 = v8;
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VKWalkAssistStatus;
  [(VKWalkAssistStatus *)&v4 dealloc];
}

- (void)updateAssistStatusWithCurrentDistance:(double)distance startRouteRoadName:(id)name isFacingStartLocation:(BOOL)location isStationary:(BOOL)stationary
{
  stationaryCopy = stationary;
  locationCopy = location;
  nameCopy = name;
  [(VKWalkAssistStatus *)self setCurrentDistance:distance];
  lastCurrentDistance = self->_lastCurrentDistance;
  if (lastCurrentDistance == 0.0)
  {
    lastCurrentDistance = distance;
  }

  [(VKWalkAssistStatus *)self setLastCurrentDistance:lastCurrentDistance];
  [(VKWalkAssistStatus *)self setIsFacingStartLocation:locationCopy];
  [(VKWalkAssistStatus *)self setIsStationary:stationaryCopy];
  [(VKWalkAssistStatus *)self setStartRouteRoadName:nameCopy];
  [(VKWalkAssistStatus *)self _makeStatusAnnouncement];
}

- (void)_makeStatusAnnouncement
{
  [(VKWalkAssistStatus *)self currentDistance];
  v4 = v3;
  [(VKWalkAssistStatus *)self lastCurrentDistance];
  v6 = v5;
  startRouteRoadName = [(VKWalkAssistStatus *)self startRouteRoadName];
  if (startRouteRoadName)
  {
    [(VKWalkAssistStatus *)self startRouteRoadName];
  }

  else
  {
    AXVectorKitLocString(@"START_OF_ROUTE");
  }
  v23 = ;

  isFacingStartLocation = [(VKWalkAssistStatus *)self isFacingStartLocation];
  isStationary = [(VKWalkAssistStatus *)self isStationary];
  if (v4 <= self->_arrivalRadius)
  {
    delegate = [(VKWalkAssistStatus *)self delegate];
    [delegate didArrive:1];
  }

  else
  {
    if (vabdd_f64(v6, v4) <= 6.0)
    {
      goto LABEL_18;
    }

    v10 = isStationary;
    [(VKWalkAssistStatus *)self setLastCurrentDistance:v4];
    currentLocale = [MEMORY[0x29EDB8DE0] currentLocale];
    _navigation_distanceUsesMetricSystem = [currentLocale _navigation_distanceUsesMetricSystem];

    if (isFacingStartLocation)
    {
      v13 = @"APPROACHING_LOCATION_METERS";
      if (v10)
      {
        v13 = @"FACING_LOCATION_METERS";
      }

      v14 = v13;
      if ((_navigation_distanceUsesMetricSystem & 1) == 0)
      {
        v15 = @"APPROACHING_LOCATION_FEET";
        if (v10)
        {
          v15 = @"FACING_LOCATION_FEET";
        }

        v16 = v15;

        v14 = v16;
      }

      v17 = MEMORY[0x29EDBA0F8];
      v18 = AXVectorKitLocString(v14);
      v19 = AXFormatInteger();
      delegate = [v17 localizedStringWithFormat:v18, v23, v19];
    }

    else
    {
      v21 = MEMORY[0x29EDBA0F8];
      v14 = AXVectorKitLocString(@"MOVING_AWAY");
      delegate = [v21 localizedStringWithFormat:v14, v23];
    }

    delegate2 = [(VKWalkAssistStatus *)self delegate];
    [delegate2 didUpdateStatusWithAnnouncement:delegate];
  }

LABEL_18:
}

- (VKWalkAssistStatusDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end