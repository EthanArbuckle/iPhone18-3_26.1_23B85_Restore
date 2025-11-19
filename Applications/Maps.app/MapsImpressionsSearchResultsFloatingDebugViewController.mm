@interface MapsImpressionsSearchResultsFloatingDebugViewController
+ (MapsImpressionsSearchResultsFloatingDebugViewController)sharedInstance;
@end

@implementation MapsImpressionsSearchResultsFloatingDebugViewController

+ (MapsImpressionsSearchResultsFloatingDebugViewController)sharedInstance
{
  if (qword_10195F838 != -1)
  {
    dispatch_once(&qword_10195F838, &stru_10165EBE8);
  }

  v3 = qword_10195F830;

  return v3;
}

@end