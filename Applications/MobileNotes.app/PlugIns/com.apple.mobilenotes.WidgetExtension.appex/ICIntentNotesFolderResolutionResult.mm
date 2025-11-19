@interface ICIntentNotesFolderResolutionResult
+ (id)confirmationRequiredWithIntentNotesFolderToConfirm:(id)a3;
+ (id)disambiguationWithIntentNotesFoldersToDisambiguate:(id)a3;
+ (id)successWithResolvedIntentNotesFolder:(id)a3;
@end

@implementation ICIntentNotesFolderResolutionResult

+ (id)successWithResolvedIntentNotesFolder:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ICIntentNotesFolderResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a3);

  return v3;
}

+ (id)disambiguationWithIntentNotesFoldersToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ICIntentNotesFolderResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", a3);

  return v3;
}

+ (id)confirmationRequiredWithIntentNotesFolderToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ICIntentNotesFolderResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", a3);

  return v3;
}

@end