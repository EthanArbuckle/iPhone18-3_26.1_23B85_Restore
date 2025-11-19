@interface CarSearchResultsViewModel
- (void)quickRouteManager:(id)a3 didUpdateETA:(id)a4 error:(id)a5 animated:(BOOL)a6;
@end

@implementation CarSearchResultsViewModel

- (void)quickRouteManager:(id)a3 didUpdateETA:(id)a4 error:(id)a5 animated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  v13 = a5;
  sub_100559840(a3, a4);
}

@end