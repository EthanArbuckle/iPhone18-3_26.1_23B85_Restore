@interface NTKSceneEngineSourceConfiguration
- (NTKSceneEngineSourceConfiguration)init;
@end

@implementation NTKSceneEngineSourceConfiguration

- (NTKSceneEngineSourceConfiguration)init
{
  *(&self->super.isa + OBJC_IVAR___NTKSceneEngineSourceConfiguration_sources) = MEMORY[0x277D84F90];
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneEngineSourceConfiguration();
  return [(NTKSceneEngineSourceConfiguration *)&v3 init];
}

@end