@interface VKWalkAssistStatus
- (VKWalkAssistStatus)initWithArrivalRadius:(double)a3 delegate:(id)a4;
- (VKWalkAssistStatusDelegate)delegate;
- (void)_makeStatusAnnouncement;
- (void)dealloc;
- (void)updateAssistStatusWithCurrentDistance:(double)a3 startRouteRoadName:(id)a4 isFacingStartLocation:(BOOL)a5 isStationary:(BOOL)a6;
@end

@implementation VKWalkAssistStatus

- (VKWalkAssistStatus)initWithArrivalRadius:(double)a3 delegate:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = VKWalkAssistStatus;
  v7 = [(VKWalkAssistStatus *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_lastCurrentDistance = 0.0;
    v7->_arrivalRadius = a3;
    objc_storeWeak(&v7->_delegate, v6);
    v9 = v8;
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VKWalkAssistStatus;
  [(VKWalkAssistStatus *)&v4 dealloc];
}

- (void)updateAssistStatusWithCurrentDistance:(double)a3 startRouteRoadName:(id)a4 isFacingStartLocation:(BOOL)a5 isStationary:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = a4;
  [(VKWalkAssistStatus *)self setCurrentDistance:a3];
  lastCurrentDistance = self->_lastCurrentDistance;
  if (lastCurrentDistance == 0.0)
  {
    lastCurrentDistance = a3;
  }

  [(VKWalkAssistStatus *)self setLastCurrentDistance:lastCurrentDistance];
  [(VKWalkAssistStatus *)self setIsFacingStartLocation:v7];
  [(VKWalkAssistStatus *)self setIsStationary:v6];
  [(VKWalkAssistStatus *)self setStartRouteRoadName:v11];
  [(VKWalkAssistStatus *)self _makeStatusAnnouncement];
}

- (void)_makeStatusAnnouncement
{
  [(VKWalkAssistStatus *)self currentDistance];
  v4 = v3;
  [(VKWalkAssistStatus *)self lastCurrentDistance];
  v6 = v5;
  v7 = [(VKWalkAssistStatus *)self startRouteRoadName];
  if (v7)
  {
    [(VKWalkAssistStatus *)self startRouteRoadName];
  }

  else
  {
    AXVectorKitLocString(@"START_OF_ROUTE");
  }
  v23 = ;

  v8 = [(VKWalkAssistStatus *)self isFacingStartLocation];
  v9 = [(VKWalkAssistStatus *)self isStationary];
  if (v4 <= self->_arrivalRadius)
  {
    v20 = [(VKWalkAssistStatus *)self delegate];
    [v20 didArrive:1];
  }

  else
  {
    if (vabdd_f64(v6, v4) <= 6.0)
    {
      goto LABEL_18;
    }

    v10 = v9;
    [(VKWalkAssistStatus *)self setLastCurrentDistance:v4];
    v11 = [MEMORY[0x29EDB8DE0] currentLocale];
    v12 = [v11 _navigation_distanceUsesMetricSystem];

    if (v8)
    {
      v13 = @"APPROACHING_LOCATION_METERS";
      if (v10)
      {
        v13 = @"FACING_LOCATION_METERS";
      }

      v14 = v13;
      if ((v12 & 1) == 0)
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
      v20 = [v17 localizedStringWithFormat:v18, v23, v19];
    }

    else
    {
      v21 = MEMORY[0x29EDBA0F8];
      v14 = AXVectorKitLocString(@"MOVING_AWAY");
      v20 = [v21 localizedStringWithFormat:v14, v23];
    }

    v22 = [(VKWalkAssistStatus *)self delegate];
    [v22 didUpdateStatusWithAnnouncement:v20];
  }

LABEL_18:
}

- (VKWalkAssistStatusDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end