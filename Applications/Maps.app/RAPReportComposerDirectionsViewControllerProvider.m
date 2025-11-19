@interface RAPReportComposerDirectionsViewControllerProvider
- (id)rapViewControllerWithReport:(id)a3 completion:(id)a4;
@end

@implementation RAPReportComposerDirectionsViewControllerProvider

- (id)rapViewControllerWithReport:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _context];
  v8 = [v7 directionsHistory];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v5 _context];
    v11 = [v10 directionsHistory];
    v12 = [v11 firstObject];
    v17 = v12;
    v13 = [NSArray arrayWithObjects:&v17 count:1];

    v14 = [[RAPDirectionsWhichOneQuestion alloc] initWithReport:v5 parentQuestion:0 selectableDirectionRequests:v13];
    [v5 setInitialQuestion:v14];
    v15 = [[RAPReportComposerDirectionsViewController alloc] initWithReport:v5 question:v14 completion:v6];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end