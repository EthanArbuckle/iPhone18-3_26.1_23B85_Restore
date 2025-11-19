@interface ReportLinkPlaceIssueProvider
- (id)createReportLink;
@end

@implementation ReportLinkPlaceIssueProvider

- (id)createReportLink
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Reports] Report Place Issue" value:@"localized string not found" table:0];

  v5 = [ReportLink alloc];
  v6 = [UIImage systemImageNamed:@"mappin.and.ellipse"];
  v7 = [(ReportLink *)v5 initWithTitle:v4 icon:v6];

  [(ReportLink *)v7 setReportLinkType:[(ReportLinkPlaceIssueProvider *)self reportLinkType]];

  return v7;
}

@end