@interface TagResolutionResult
+ (id)confirmationRequiredWithTagToConfirm:(id)a3;
+ (id)disambiguationWithTagsToDisambiguate:(id)a3;
+ (id)successWithResolvedTag:(id)a3;
@end

@implementation TagResolutionResult

+ (id)successWithResolvedTag:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TagResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a3);

  return v3;
}

+ (id)disambiguationWithTagsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TagResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", a3);

  return v3;
}

+ (id)confirmationRequiredWithTagToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TagResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", a3);

  return v3;
}

@end