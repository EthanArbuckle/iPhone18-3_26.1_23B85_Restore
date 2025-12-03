@interface ReportIncidentAction
- (ReportIncidentAction)initWithIncidentIntent:(id)intent;
- (ReportIncidentAction)initWithIncidentType:(int)type;
@end

@implementation ReportIncidentAction

- (ReportIncidentAction)initWithIncidentType:(int)type
{
  v5.receiver = self;
  v5.super_class = ReportIncidentAction;
  result = [(ReportIncidentAction *)&v5 init];
  if (result)
  {
    result->_incidentType = type;
  }

  return result;
}

- (ReportIncidentAction)initWithIncidentIntent:(id)intent
{
  intentCopy = intent;
  v9.receiver = self;
  v9.super_class = ReportIncidentAction;
  v6 = [(ReportIncidentAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_incidentIntent, intent);
  }

  return v7;
}

@end