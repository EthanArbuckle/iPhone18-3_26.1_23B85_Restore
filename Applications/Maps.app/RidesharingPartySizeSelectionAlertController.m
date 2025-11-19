@interface RidesharingPartySizeSelectionAlertController
+ (id)ridesharingPartySizeSelectionAlertControllerWithRequestRideStatus:(id)a3;
@end

@implementation RidesharingPartySizeSelectionAlertController

+ (id)ridesharingPartySizeSelectionAlertControllerWithRequestRideStatus:(id)a3
{
  v5 = a3;
  v6 = [v5 rideOption];
  v7 = [v6 partySizeSelectionPrompt];
  v8 = [a1 alertControllerWithTitle:0 message:v7 preferredStyle:0];

  objc_storeStrong(v8 + 2, a3);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100C0A858;
  v12[3] = &unk_10164DAE8;
  v13 = v5;
  v9 = v5;
  v10 = objc_retainBlock(v12);
  (v10[2])(v10, v8);

  return v8;
}

@end