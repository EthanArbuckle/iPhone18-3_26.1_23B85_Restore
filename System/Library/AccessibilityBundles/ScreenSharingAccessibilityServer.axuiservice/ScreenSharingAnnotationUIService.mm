@interface ScreenSharingAnnotationUIService
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)identifier;
- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
@end

@implementation ScreenSharingAnnotationUIService

- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  if (message)
  {
    v8 = sub_57EC();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_581C();
  v11 = v10;
  selfCopy = self;
  ScreenSharingAnnotationUIService.processMessage(_:withIdentifier:fromClientWithIdentifier:)(v8, identifier, v9, v11);

  v13.super.isa = sub_57DC().super.isa;

  return v13.super.isa;
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)identifier
{
  _s32ScreenSharingAccessibilityServer0aB19AnnotationUIServiceC39requiredEntitlementForProcessingMessage14withIdentifierSSSgSi_tFZ_0();
  v3 = sub_580C();

  return v3;
}

@end