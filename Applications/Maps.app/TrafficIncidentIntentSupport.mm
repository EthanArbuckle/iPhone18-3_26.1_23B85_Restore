@interface TrafficIncidentIntentSupport
+ (id)localizedTitleForIncidentType:(int)type;
+ (int)incidentTypeForINTrafficIncidentType:(int64_t)type;
+ (int64_t)INTrafficIncidentTypeForincidentType:(int)type;
+ (void)fetchTrafficIncidentsLayoutForLocation:(id)location completion:(id)completion;
@end

@implementation TrafficIncidentIntentSupport

+ (void)fetchTrafficIncidentsLayoutForLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  v7 = +[TrafficIncidentLayoutStorage sharedInstance];
  cachedIncidentLayout = [v7 cachedIncidentLayout];

  if (cachedIncidentLayout && ([cachedIncidentLayout shouldInvalidateLayoutForLocation:locationCopy] & 1) == 0)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, cachedIncidentLayout);
    }
  }

  else
  {
    v9 = objc_alloc_init(TrafficIncidentLayoutFetcher);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10095E6C4;
    v10[3] = &unk_10162F9E8;
    v11 = completionCopy;
    [(TrafficIncidentLayoutFetcher *)v9 fetchTrafficIncidentsLayoutForLocation:locationCopy formType:7 isSiri:1 completion:v10];
  }
}

+ (id)localizedTitleForIncidentType:(int)type
{
  v3 = [MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:*&type];
  v4 = +[MKTrafficSupport sharedTrafficSupport];
  v5 = [v4 localizedTitleForIncidentType:v3 laneType:0 laneCount:0];

  return v5;
}

+ (int64_t)INTrafficIncidentTypeForincidentType:(int)type
{
  if (type > 6)
  {
    if (type != 7)
    {
      if (type == 16)
      {
        return 3;
      }

      return 0;
    }

    return 5;
  }

  else
  {
    if (type != 5)
    {
      if (type == 6)
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }
}

+ (int)incidentTypeForINTrafficIncidentType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_101214EF0[type - 1];
  }
}

@end