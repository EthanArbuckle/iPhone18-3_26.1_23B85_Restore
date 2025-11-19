@interface VOTVisionOptions
- (VOTVisionOptions)init;
@end

@implementation VOTVisionOptions

- (VOTVisionOptions)init
{
  v4.receiver = self;
  v4.super_class = VOTVisionOptions;
  v2 = [(VOTVisionOptions *)&v4 init];
  [(VOTVisionOptions *)v2 setIncludeSceneDetection:1];
  return v2;
}

@end