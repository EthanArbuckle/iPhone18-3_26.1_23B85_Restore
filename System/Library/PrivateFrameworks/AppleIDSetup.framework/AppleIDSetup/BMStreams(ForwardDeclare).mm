@interface BMStreams(ForwardDeclare)
+ (id)ais_appleIDChildSetupSource;
@end

@implementation BMStreams(ForwardDeclare)

+ (id)ais_appleIDChildSetupSource
{
  v0 = +[AISChildSetupBiomeEventFactory log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    +[(BMStreams(ForwardDeclare) *)v0];
  }

  v1 = BiomeLibrary();
  v2 = [v1 AppleID];
  v3 = [v2 ChildSetup];
  v4 = [v3 source];

  return v4;
}

@end