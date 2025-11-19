@interface ReportLinkIncidentProvider
- (id)createReportLink;
@end

@implementation ReportLinkIncidentProvider

- (id)createReportLink
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Reports] Report an Incident" value:@"localized string not found" table:0];

  v5 = [ReportLink alloc];
  v6 = [UIImage systemImageNamed:@"exclamationmark.triangle"];
  v7 = [(ReportLink *)v5 initWithTitle:v4 icon:v6];

  [(ReportLink *)v7 setReportLinkType:[(ReportLinkIncidentProvider *)self reportLinkType]];

  return v7;
}

@end