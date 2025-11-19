@interface AXSwitchControlSwitchResolutionResult
+ (id)confirmationRequiredWithSwitchControlSwitchToConfirm:(id)a3;
+ (id)disambiguationWithSwitchControlSwitchsToDisambiguate:(id)a3;
+ (id)successWithResolvedSwitchControlSwitch:(id)a3;
@end

@implementation AXSwitchControlSwitchResolutionResult

+ (id)successWithResolvedSwitchControlSwitch:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXSwitchControlSwitchResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a3);

  return v3;
}

+ (id)disambiguationWithSwitchControlSwitchsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXSwitchControlSwitchResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", a3);

  return v3;
}

+ (id)confirmationRequiredWithSwitchControlSwitchToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXSwitchControlSwitchResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", a3);

  return v3;
}

@end