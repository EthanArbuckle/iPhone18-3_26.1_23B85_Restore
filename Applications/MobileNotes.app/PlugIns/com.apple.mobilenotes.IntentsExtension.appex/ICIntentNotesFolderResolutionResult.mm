@interface ICIntentNotesFolderResolutionResult
+ (id)confirmationRequiredWithIntentNotesFolderToConfirm:(id)confirm;
+ (id)disambiguationWithIntentNotesFoldersToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedIntentNotesFolder:(id)folder;
@end

@implementation ICIntentNotesFolderResolutionResult

+ (id)successWithResolvedIntentNotesFolder:(id)folder
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ICIntentNotesFolderResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", folder);

  return v3;
}

+ (id)disambiguationWithIntentNotesFoldersToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ICIntentNotesFolderResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithIntentNotesFolderToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ICIntentNotesFolderResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", confirm);

  return v3;
}

@end