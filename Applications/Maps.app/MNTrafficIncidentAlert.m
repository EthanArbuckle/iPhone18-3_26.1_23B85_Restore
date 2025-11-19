@interface MNTrafficIncidentAlert
- (NSString)primaryString;
- (NSString)secondaryString;
- (id)alternateRouteToDisplay;
@end

@implementation MNTrafficIncidentAlert

- (NSString)secondaryString
{
  v2 = [(MNTrafficIncidentAlert *)self alertDescriptions];
  v3 = [v2 firstObject];

  return v3;
}

- (NSString)primaryString
{
  v2 = [(MNTrafficIncidentAlert *)self alertTitles];
  v3 = [v2 firstObject];

  return v3;
}

- (id)alternateRouteToDisplay
{
  v3 = [(MNTrafficIncidentAlert *)self alertType];
  if ((v3 - 3) >= 2)
  {
    if (v3 == 1)
    {
      v4 = [(MNTrafficIncidentAlert *)self originalRoute];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = [(MNTrafficIncidentAlert *)self alternateRoute];
  }

  return v4;
}

@end