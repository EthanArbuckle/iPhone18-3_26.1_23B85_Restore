@interface _EXNSExtensionUIShimExtension
- (void)prepareForSceneConnectionWithConfiguration:(id)configuration;
@end

@implementation _EXNSExtensionUIShimExtension

- (void)prepareForSceneConnectionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy setSceneClass:objc_opt_class()];
}

@end