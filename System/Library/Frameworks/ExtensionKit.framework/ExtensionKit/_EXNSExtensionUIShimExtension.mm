@interface _EXNSExtensionUIShimExtension
- (void)prepareForSceneConnectionWithConfiguration:(id)a3;
@end

@implementation _EXNSExtensionUIShimExtension

- (void)prepareForSceneConnectionWithConfiguration:(id)a3
{
  v3 = a3;
  [v3 setSceneClass:objc_opt_class()];
}

@end