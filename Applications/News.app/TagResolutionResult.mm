@interface TagResolutionResult
+ (id)confirmationRequiredWithTagToConfirm:(id)confirm;
+ (id)disambiguationWithTagsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedTag:(id)tag;
@end

@implementation TagResolutionResult

+ (id)successWithResolvedTag:(id)tag
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TagResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", tag);

  return v3;
}

+ (id)disambiguationWithTagsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TagResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithTagToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TagResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", confirm);

  return v3;
}

@end