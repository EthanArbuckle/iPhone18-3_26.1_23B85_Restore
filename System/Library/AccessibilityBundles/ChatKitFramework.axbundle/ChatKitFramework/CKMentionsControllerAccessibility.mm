@interface CKMentionsControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setShowMentionSuggestions:(BOOL)suggestions animated:(BOOL)animated completion:(id)completion;
@end

@implementation CKMentionsControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKMentionsController" hasInstanceMethod:@"setShowMentionSuggestions:animated:completion:" withFullSignature:{"v", "B", "B", "@?", 0}];
  [validationsCopy validateClass:@"CKMentionsController" hasInstanceMethod:@"paddleOverlayView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMentionsController" hasInstanceMethod:@"currentMentionSuggestions" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMentionsController" hasInstanceMethod:@"mentionSuggestionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMentionSuggestionView" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMentionsController" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
}

- (void)setShowMentionSuggestions:(BOOL)suggestions animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  suggestionsCopy = suggestions;
  completionCopy = completion;
  v20.receiver = self;
  v20.super_class = CKMentionsControllerAccessibility;
  [(CKMentionsControllerAccessibility *)&v20 setShowMentionSuggestions:suggestionsCopy animated:animatedCopy completion:completionCopy];
  v9 = [(CKMentionsControllerAccessibility *)self safeArrayForKey:@"currentMentionSuggestions"];
  if ([v9 count])
  {
    LOBYTE(location) = 0;
    objc_opt_class();
    v10 = [(CKMentionsControllerAccessibility *)self safeValueForKey:@"mentionSuggestionView"];
    v11 = [v10 safeValueForKey:@"collectionView"];
    v12 = __UIAccessibilityCastAsClass();

    if ([v12 numberOfSections] >= 1 && objc_msgSend(v12, "numberOfItemsInSection:", 0) >= 1)
    {
      v13 = [MEMORY[0x29EDB9FE0] indexPathForItem:0 inSection:0];
      v14 = [v12 cellForItemAtIndexPath:v13];

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v14);
    }
  }

  v15 = [(CKMentionsControllerAccessibility *)self safeUIViewForKey:@"textView"];
  v16 = v15;
  if (suggestionsCopy)
  {
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __83__CKMentionsControllerAccessibility_setShowMentionSuggestions_animated_completion___block_invoke;
    v17[3] = &unk_29F2B0868;
    objc_copyWeak(&v18, &location);
    [v16 _setAccessibilityPerformEscapeBlock:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    [v15 _setAccessibilityPerformEscapeBlock:0];
  }
}

uint64_t __83__CKMentionsControllerAccessibility_setShowMentionSuggestions_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:@"paddleOverlayView"];
  v3 = __UIAccessibilitySafeClass();

  [v3 dismiss];
  return 1;
}

@end