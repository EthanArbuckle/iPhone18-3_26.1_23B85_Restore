@interface IntentDeviceResolutionResult
+ (id)confirmationRequiredWithIntentDeviceToConfirm:(id)confirm;
+ (id)disambiguationWithIntentDevicesToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedIntentDevice:(id)device;
@end

@implementation IntentDeviceResolutionResult

+ (id)successWithResolvedIntentDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___IntentDeviceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, device);

  return v3;
}

+ (id)disambiguationWithIntentDevicesToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___IntentDeviceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithIntentDeviceToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___IntentDeviceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, confirm);

  return v3;
}

@end