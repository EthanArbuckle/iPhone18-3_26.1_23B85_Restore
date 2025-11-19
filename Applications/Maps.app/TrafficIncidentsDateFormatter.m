@interface TrafficIncidentsDateFormatter
- (TrafficIncidentsDateFormatter)init;
- (id)lastUpdatedUIStringForDate:(id)a3;
@end

@implementation TrafficIncidentsDateFormatter

- (id)lastUpdatedUIStringForDate:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"TrafficIncidentLastUpdateDate" value:@"localized string not found" table:0];

  v7 = [(TrafficIncidentsDateFormatter *)self dateStringForDate:v4];
  v8 = [(TrafficIncidentsDateFormatter *)self timeStringForDate:v4];

  v9 = [NSString localizedStringWithFormat:v6, v7, v8];

  return v9;
}

- (TrafficIncidentsDateFormatter)init
{
  v5.receiver = self;
  v5.super_class = TrafficIncidentsDateFormatter;
  v2 = [(TrafficIncidentsDateFormatter *)&v5 init];
  if (v2)
  {
    if (qword_10195D010 != -1)
    {
      dispatch_once(&qword_10195D010, &stru_101627320);
    }

    v3 = v2;
  }

  return v2;
}

@end