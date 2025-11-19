@interface NTKEsterbrookSourceConfiguration
- (NTKEsterbrookSourceConfiguration)init;
@end

@implementation NTKEsterbrookSourceConfiguration

- (NTKEsterbrookSourceConfiguration)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NTKSceneEngineSourceConfiguration *)&v3 init];
}

@end