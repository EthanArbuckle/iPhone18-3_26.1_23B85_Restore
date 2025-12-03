@interface CarSearchResultsViewModel
- (void)quickRouteManager:(id)manager didUpdateETA:(id)a error:(id)error animated:(BOOL)animated;
@end

@implementation CarSearchResultsViewModel

- (void)quickRouteManager:(id)manager didUpdateETA:(id)a error:(id)error animated:(BOOL)animated
{
  managerCopy = manager;
  aCopy = a;
  selfCopy = self;
  errorCopy = error;
  sub_100559840(manager, a);
}

@end