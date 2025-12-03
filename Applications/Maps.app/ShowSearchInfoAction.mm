@interface ShowSearchInfoAction
- (BOOL)isCompatibleWithNavigation;
- (ShowSearchInfoAction)initWithSearchInfo:(id)info;
@end

@implementation ShowSearchInfoAction

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

- (ShowSearchInfoAction)initWithSearchInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = ShowSearchInfoAction;
  v6 = [(ShowSearchInfoAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchInfo, info);
  }

  return v7;
}

@end