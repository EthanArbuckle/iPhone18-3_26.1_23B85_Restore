@interface AXSwitchControlSwitchResolutionResult
+ (id)confirmationRequiredWithSwitchControlSwitchToConfirm:(id)confirm;
+ (id)disambiguationWithSwitchControlSwitchsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedSwitchControlSwitch:(id)switch;
@end

@implementation AXSwitchControlSwitchResolutionResult

+ (id)successWithResolvedSwitchControlSwitch:(id)switch
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXSwitchControlSwitchResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", switch);

  return v3;
}

+ (id)disambiguationWithSwitchControlSwitchsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXSwitchControlSwitchResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithSwitchControlSwitchToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXSwitchControlSwitchResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", confirm);

  return v3;
}

@end