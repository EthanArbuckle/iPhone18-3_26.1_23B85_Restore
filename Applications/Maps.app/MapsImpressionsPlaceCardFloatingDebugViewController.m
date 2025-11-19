@interface MapsImpressionsPlaceCardFloatingDebugViewController
+ (MapsImpressionsPlaceCardFloatingDebugViewController)sharedInstance;
@end

@implementation MapsImpressionsPlaceCardFloatingDebugViewController

+ (MapsImpressionsPlaceCardFloatingDebugViewController)sharedInstance
{
  if (qword_10195F828 != -1)
  {
    dispatch_once(&qword_10195F828, &stru_10165EBC8);
  }

  v3 = qword_10195F820;

  return v3;
}

@end