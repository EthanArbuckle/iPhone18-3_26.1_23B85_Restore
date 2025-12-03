@interface NavTrayWaypointRow
+ (id)waypointRowsFromNavigationService:(id)service withWaypoints:(id)waypoints;
- (NSString)etaString;
- (void)setEtaInfo:(id)info;
@end

@implementation NavTrayWaypointRow

- (NSString)etaString
{
  if (!self->_hasSetETA)
  {
    etaInfo = self->_etaInfo;
    if (etaInfo)
    {
      v4 = [GuidanceETA etaStringFromEtaLegInfo:etaInfo includingAMPMSymbols:0];
    }

    else
    {
      v4 = 0;
    }

    etaString = self->_etaString;
    self->_etaString = v4;

    self->_hasSetETA = 1;
  }

  v6 = self->_etaString;

  return v6;
}

- (void)setEtaInfo:(id)info
{
  infoCopy = info;
  v6 = self->_etaInfo;
  v7 = infoCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_etaInfo, info);
      v7 = v9;
      self->_hasSetETA = 0;
    }
  }
}

+ (id)waypointRowsFromNavigationService:(id)service withWaypoints:(id)waypoints
{
  serviceCopy = service;
  waypointsCopy = waypoints;
  if ([waypointsCopy count])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100C9220C;
    v9[3] = &unk_10164FCA8;
    targetLegIndex = [serviceCopy targetLegIndex];
    v10 = serviceCopy;
    v7 = sub_100021DB0(waypointsCopy, v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end