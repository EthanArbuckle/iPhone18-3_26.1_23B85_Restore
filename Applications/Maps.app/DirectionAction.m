@interface DirectionAction
- (BOOL)isCompatibleWithNavigation;
- (DirectionAction)initWithDirectionItem:(id)a3 timePoint:(id)a4 source:(unint64_t)a5 navigationAutoLaunchDelay:(id)a6;
- (NSDictionary)userInfo;
@end

@implementation DirectionAction

- (BOOL)isCompatibleWithNavigation
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 navigationTransportType];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
      goto LABEL_9;
    }

    if (v3 != 6)
    {
      goto LABEL_7;
    }
  }

  else if (v3 != 1)
  {
    if (v3 == 2)
    {
      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
LABEL_9:
      v4 = IsEnabled_Maps420;
      goto LABEL_10;
    }

LABEL_7:
    IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
    goto LABEL_9;
  }

LABEL_10:

  return v4;
}

- (NSDictionary)userInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  timePoint = self->_timePoint;
  if (timePoint)
  {
    [v3 setObject:timePoint forKeyedSubscript:@"GEOURLTimePoint"];
  }

  if (self->_source == 1)
  {
    [v4 setObject:&off_1016E9FE0 forKeyedSubscript:@"RAPAuxiliaryControlsOrigin"];
  }

  else
  {
    v6 = [NSNumber numberWithInteger:0];
    [v4 setObject:v6 forKeyedSubscript:@"RAPAuxiliaryControlsOrigin"];
  }

  source = self->_source;
  if (source <= 3)
  {
    [v4 setObject:(&off_1016563B8)[source] forKeyedSubscript:@"DirectionsSourceKey"];
  }

  navigationAutoLaunchDelay = self->_navigationAutoLaunchDelay;
  if (navigationAutoLaunchDelay)
  {
    [v4 setObject:navigationAutoLaunchDelay forKeyedSubscript:@"DirectionsNavigationAutoLaunchDelayKey"];
  }

  v9 = [v4 copy];

  return v9;
}

- (DirectionAction)initWithDirectionItem:(id)a3 timePoint:(id)a4 source:(unint64_t)a5 navigationAutoLaunchDelay:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = DirectionAction;
  v14 = [(DirectionAction *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_directionItem, a3);
    objc_storeStrong(&v15->_timePoint, a4);
    v15->_source = a5;
    objc_storeStrong(&v15->_navigationAutoLaunchDelay, a6);
  }

  return v15;
}

@end