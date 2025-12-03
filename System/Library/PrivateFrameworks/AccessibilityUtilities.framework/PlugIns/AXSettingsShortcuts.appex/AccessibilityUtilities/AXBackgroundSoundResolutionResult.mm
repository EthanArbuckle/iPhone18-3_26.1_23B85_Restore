@interface AXBackgroundSoundResolutionResult
+ (id)confirmationRequiredWithBackgroundSoundToConfirm:(id)confirm;
+ (id)disambiguationWithBackgroundSoundsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedBackgroundSound:(id)sound;
@end

@implementation AXBackgroundSoundResolutionResult

+ (id)successWithResolvedBackgroundSound:(id)sound
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", sound);

  return v3;
}

+ (id)disambiguationWithBackgroundSoundsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithBackgroundSoundToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", confirm);

  return v3;
}

@end