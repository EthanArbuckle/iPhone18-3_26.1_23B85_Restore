@interface CHSharingImageWorkoutConfiguration
- (CHSharingImageWorkoutConfiguration)initWithIconImage:(id)a3 routeImage:(id)a4 metricTitleAndValueInfo:(id)a5;
@end

@implementation CHSharingImageWorkoutConfiguration

- (CHSharingImageWorkoutConfiguration)initWithIconImage:(id)a3 routeImage:(id)a4 metricTitleAndValueInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CHSharingImageWorkoutConfiguration;
  v12 = [(CHSharingImageWorkoutConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_iconImage, a3);
    objc_storeStrong(&v13->_routeImage, a4);
    objc_storeStrong(&v13->_metricTitleAndValueInfo, a5);
  }

  return v13;
}

@end