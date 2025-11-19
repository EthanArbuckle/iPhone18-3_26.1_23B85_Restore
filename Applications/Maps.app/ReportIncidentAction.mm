@interface ReportIncidentAction
- (ReportIncidentAction)initWithIncidentIntent:(id)a3;
- (ReportIncidentAction)initWithIncidentType:(int)a3;
@end

@implementation ReportIncidentAction

- (ReportIncidentAction)initWithIncidentType:(int)a3
{
  v5.receiver = self;
  v5.super_class = ReportIncidentAction;
  result = [(ReportIncidentAction *)&v5 init];
  if (result)
  {
    result->_incidentType = a3;
  }

  return result;
}

- (ReportIncidentAction)initWithIncidentIntent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ReportIncidentAction;
  v6 = [(ReportIncidentAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_incidentIntent, a3);
  }

  return v7;
}

@end