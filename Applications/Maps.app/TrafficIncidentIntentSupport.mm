@interface TrafficIncidentIntentSupport
+ (id)localizedTitleForIncidentType:(int)a3;
+ (int)incidentTypeForINTrafficIncidentType:(int64_t)a3;
+ (int64_t)INTrafficIncidentTypeForincidentType:(int)a3;
+ (void)fetchTrafficIncidentsLayoutForLocation:(id)a3 completion:(id)a4;
@end

@implementation TrafficIncidentIntentSupport

+ (void)fetchTrafficIncidentsLayoutForLocation:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[TrafficIncidentLayoutStorage sharedInstance];
  v8 = [v7 cachedIncidentLayout];

  if (v8 && ([v8 shouldInvalidateLayoutForLocation:v5] & 1) == 0)
  {
    if (v6)
    {
      v6[2](v6, v8);
    }
  }

  else
  {
    v9 = objc_alloc_init(TrafficIncidentLayoutFetcher);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10095E6C4;
    v10[3] = &unk_10162F9E8;
    v11 = v6;
    [(TrafficIncidentLayoutFetcher *)v9 fetchTrafficIncidentsLayoutForLocation:v5 formType:7 isSiri:1 completion:v10];
  }
}

+ (id)localizedTitleForIncidentType:(int)a3
{
  v3 = [MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:*&a3];
  v4 = +[MKTrafficSupport sharedTrafficSupport];
  v5 = [v4 localizedTitleForIncidentType:v3 laneType:0 laneCount:0];

  return v5;
}

+ (int64_t)INTrafficIncidentTypeForincidentType:(int)a3
{
  if (a3 > 6)
  {
    if (a3 != 7)
    {
      if (a3 == 16)
      {
        return 3;
      }

      return 0;
    }

    return 5;
  }

  else
  {
    if (a3 != 5)
    {
      if (a3 == 6)
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }
}

+ (int)incidentTypeForINTrafficIncidentType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_101214EF0[a3 - 1];
  }
}

@end