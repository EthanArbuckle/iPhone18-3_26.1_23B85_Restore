@interface MNTrafficIncidentAlert
- (NSString)primaryString;
- (NSString)secondaryString;
- (id)alternateRouteToDisplay;
@end

@implementation MNTrafficIncidentAlert

- (NSString)secondaryString
{
  alertDescriptions = [(MNTrafficIncidentAlert *)self alertDescriptions];
  firstObject = [alertDescriptions firstObject];

  return firstObject;
}

- (NSString)primaryString
{
  alertTitles = [(MNTrafficIncidentAlert *)self alertTitles];
  firstObject = [alertTitles firstObject];

  return firstObject;
}

- (id)alternateRouteToDisplay
{
  alertType = [(MNTrafficIncidentAlert *)self alertType];
  if ((alertType - 3) >= 2)
  {
    if (alertType == 1)
    {
      originalRoute = [(MNTrafficIncidentAlert *)self originalRoute];
    }

    else
    {
      originalRoute = 0;
    }
  }

  else
  {
    originalRoute = [(MNTrafficIncidentAlert *)self alternateRoute];
  }

  return originalRoute;
}

@end