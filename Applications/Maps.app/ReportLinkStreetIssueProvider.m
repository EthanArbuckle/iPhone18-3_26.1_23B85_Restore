@interface ReportLinkStreetIssueProvider
- (id)createReportLink;
@end

@implementation ReportLinkStreetIssueProvider

- (id)createReportLink
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Reports] Report Street Issue" value:@"localized string not found" table:0];

  v5 = [ReportLink alloc];
  v6 = [UIImage systemImageNamed:@"signpost.right"];
  v7 = [(ReportLink *)v5 initWithTitle:v4 icon:v6];

  [(ReportLink *)v7 setReportLinkType:[(ReportLinkStreetIssueProvider *)self reportLinkType]];

  return v7;
}

@end