@interface RidesharingPartySizeSelectionAlertController
+ (id)ridesharingPartySizeSelectionAlertControllerWithRequestRideStatus:(id)status;
@end

@implementation RidesharingPartySizeSelectionAlertController

+ (id)ridesharingPartySizeSelectionAlertControllerWithRequestRideStatus:(id)status
{
  statusCopy = status;
  rideOption = [statusCopy rideOption];
  partySizeSelectionPrompt = [rideOption partySizeSelectionPrompt];
  v8 = [self alertControllerWithTitle:0 message:partySizeSelectionPrompt preferredStyle:0];

  objc_storeStrong(v8 + 2, status);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100C0A858;
  v12[3] = &unk_10164DAE8;
  v13 = statusCopy;
  v9 = statusCopy;
  v10 = objc_retainBlock(v12);
  (v10[2])(v10, v8);

  return v8;
}

@end