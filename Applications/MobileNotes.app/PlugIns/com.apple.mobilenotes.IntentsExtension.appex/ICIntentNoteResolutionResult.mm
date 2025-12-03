@interface ICIntentNoteResolutionResult
+ (id)confirmationRequiredWithIntentNoteToConfirm:(id)confirm;
+ (id)disambiguationWithIntentNotesToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedIntentNote:(id)note;
@end

@implementation ICIntentNoteResolutionResult

+ (id)successWithResolvedIntentNote:(id)note
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ICIntentNoteResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", note);

  return v3;
}

+ (id)disambiguationWithIntentNotesToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ICIntentNoteResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithIntentNoteToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ICIntentNoteResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", confirm);

  return v3;
}

@end