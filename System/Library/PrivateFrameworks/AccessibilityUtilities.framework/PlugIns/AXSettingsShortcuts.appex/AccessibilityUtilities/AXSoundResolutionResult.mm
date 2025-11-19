@interface AXSoundResolutionResult
+ (id)confirmationRequiredWithSoundToConfirm:(id)a3;
+ (id)disambiguationWithSoundsToDisambiguate:(id)a3;
+ (id)successWithResolvedSound:(id)a3;
@end

@implementation AXSoundResolutionResult

+ (id)successWithResolvedSound:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXSoundResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a3);

  return v3;
}

+ (id)disambiguationWithSoundsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXSoundResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", a3);

  return v3;
}

+ (id)confirmationRequiredWithSoundToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AXSoundResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", a3);

  return v3;
}

@end