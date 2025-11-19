@interface ScreenSharingAnnotationUIService
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)a3;
- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
@end

@implementation ScreenSharingAnnotationUIService

- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  if (a3)
  {
    v8 = sub_57EC();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_581C();
  v11 = v10;
  v12 = self;
  ScreenSharingAnnotationUIService.processMessage(_:withIdentifier:fromClientWithIdentifier:)(v8, a4, v9, v11);

  v13.super.isa = sub_57DC().super.isa;

  return v13.super.isa;
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)a3
{
  _s32ScreenSharingAccessibilityServer0aB19AnnotationUIServiceC39requiredEntitlementForProcessingMessage14withIdentifierSSSgSi_tFZ_0();
  v3 = sub_580C();

  return v3;
}

@end