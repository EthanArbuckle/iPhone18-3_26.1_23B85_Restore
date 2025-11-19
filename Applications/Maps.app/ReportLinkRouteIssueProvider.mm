@interface ReportLinkRouteIssueProvider
- (id)createReportLink;
@end

@implementation ReportLinkRouteIssueProvider

- (id)createReportLink
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Reports] Report Route Issue" value:@"localized string not found" table:0];

  v5 = [ReportLink alloc];
  v6 = [UIImage systemImageNamed:@"point.topleft.down.curvedto.point.filled.bottomright.up"];
  v7 = [(ReportLink *)v5 initWithTitle:v4 icon:v6];

  [(ReportLink *)v7 setReportLinkType:[(ReportLinkRouteIssueProvider *)self reportLinkType]];

  return v7;
}

@end