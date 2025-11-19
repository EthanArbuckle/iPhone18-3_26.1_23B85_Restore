@interface ICIntentNoteResolutionResult
+ (id)confirmationRequiredWithIntentNoteToConfirm:(id)a3;
+ (id)disambiguationWithIntentNotesToDisambiguate:(id)a3;
+ (id)successWithResolvedIntentNote:(id)a3;
@end

@implementation ICIntentNoteResolutionResult

+ (id)successWithResolvedIntentNote:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ICIntentNoteResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a3);

  return v3;
}

+ (id)disambiguationWithIntentNotesToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ICIntentNoteResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", a3);

  return v3;
}

+ (id)confirmationRequiredWithIntentNoteToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ICIntentNoteResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", a3);

  return v3;
}

@end