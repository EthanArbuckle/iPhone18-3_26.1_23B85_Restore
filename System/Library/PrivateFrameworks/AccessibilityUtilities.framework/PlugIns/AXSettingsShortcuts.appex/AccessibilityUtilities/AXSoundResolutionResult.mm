@interface AXSoundResolutionResult
+ (id)confirmationRequiredWithSoundToConfirm:(id)confirm;
+ (id)disambiguationWithSoundsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedSound:(id)sound;
@end

@implementation AXSoundResolutionResult

+ (id)successWithResolvedSound:(id)sound
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXSoundResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", sound);

  return v3;
}

+ (id)disambiguationWithSoundsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXSoundResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithSoundToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXSoundResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", confirm);

  return v3;
}

@end