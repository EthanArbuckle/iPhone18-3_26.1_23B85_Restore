@interface CHSharingImageWorkoutConfiguration
- (CHSharingImageWorkoutConfiguration)initWithIconImage:(id)image routeImage:(id)routeImage metricTitleAndValueInfo:(id)info;
@end

@implementation CHSharingImageWorkoutConfiguration

- (CHSharingImageWorkoutConfiguration)initWithIconImage:(id)image routeImage:(id)routeImage metricTitleAndValueInfo:(id)info
{
  imageCopy = image;
  routeImageCopy = routeImage;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = CHSharingImageWorkoutConfiguration;
  v12 = [(CHSharingImageWorkoutConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_iconImage, image);
    objc_storeStrong(&v13->_routeImage, routeImage);
    objc_storeStrong(&v13->_metricTitleAndValueInfo, info);
  }

  return v13;
}

@end