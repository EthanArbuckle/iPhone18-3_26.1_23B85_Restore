@interface AXBackgroundSoundResolutionResult
+ (id)confirmationRequiredWithBackgroundSoundToConfirm:(id)a3;
+ (id)disambiguationWithBackgroundSoundsToDisambiguate:(id)a3;
+ (id)successWithResolvedBackgroundSound:(id)a3;
@end

@implementation AXBackgroundSoundResolutionResult

+ (id)successWithResolvedBackgroundSound:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a3);

  return v3;
}

+ (id)disambiguationWithBackgroundSoundsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", a3);

  return v3;
}

+ (id)confirmationRequiredWithBackgroundSoundToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXBackgroundSoundResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", a3);

  return v3;
}

@end