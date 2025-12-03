@interface RAPReportComposerDirectionsViewControllerProvider
- (id)rapViewControllerWithReport:(id)report completion:(id)completion;
@end

@implementation RAPReportComposerDirectionsViewControllerProvider

- (id)rapViewControllerWithReport:(id)report completion:(id)completion
{
  reportCopy = report;
  completionCopy = completion;
  _context = [reportCopy _context];
  directionsHistory = [_context directionsHistory];
  v9 = [directionsHistory count];

  if (v9)
  {
    _context2 = [reportCopy _context];
    directionsHistory2 = [_context2 directionsHistory];
    firstObject = [directionsHistory2 firstObject];
    v17 = firstObject;
    v13 = [NSArray arrayWithObjects:&v17 count:1];

    v14 = [[RAPDirectionsWhichOneQuestion alloc] initWithReport:reportCopy parentQuestion:0 selectableDirectionRequests:v13];
    [reportCopy setInitialQuestion:v14];
    v15 = [[RAPReportComposerDirectionsViewController alloc] initWithReport:reportCopy question:v14 completion:completionCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end