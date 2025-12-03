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
  appleID = [v1 AppleID];
  childSetup = [appleID ChildSetup];
  source = [childSetup source];

  return source;
}

@end