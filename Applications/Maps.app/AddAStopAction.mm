@interface AddAStopAction
- (AddAStopAction)initWithMapItem:(id)item;
- (BOOL)isCompatibleWithNavigation;
@end

@implementation AddAStopAction

- (BOOL)isCompatibleWithNavigation
{
  v2 = +[MNNavigationService sharedService];
  navigationTransportType = [v2 navigationTransportType];
  v4 = 0;
  if (navigationTransportType > 2)
  {
    if (navigationTransportType == 3)
    {
      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
      goto LABEL_9;
    }

    if (navigationTransportType != 6)
    {
      goto LABEL_7;
    }
  }

  else if (navigationTransportType != 1)
  {
    if (navigationTransportType == 2)
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

- (AddAStopAction)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = AddAStopAction;
  v6 = [(AddAStopAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end