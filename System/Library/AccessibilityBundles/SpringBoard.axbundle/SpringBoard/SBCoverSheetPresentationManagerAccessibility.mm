@interface SBCoverSheetPresentationManagerAccessibility
- (void)setCoverSheetPresented:(BOOL)presented animated:(BOOL)animated options:(unint64_t)options withCompletion:(id)completion;
@end

@implementation SBCoverSheetPresentationManagerAccessibility

- (void)setCoverSheetPresented:(BOOL)presented animated:(BOOL)animated options:(unint64_t)options withCompletion:(id)completion
{
  animatedCopy = animated;
  presentedCopy = presented;
  completionCopy = completion;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __103__SBCoverSheetPresentationManagerAccessibility_setCoverSheetPresented_animated_options_withCompletion___block_invoke;
  v13[3] = &unk_29F2FBE98;
  v14 = completionCopy;
  v12.receiver = self;
  v12.super_class = SBCoverSheetPresentationManagerAccessibility;
  v11 = completionCopy;
  [(SBCoverSheetPresentationManagerAccessibility *)&v12 setCoverSheetPresented:presentedCopy animated:animatedCopy options:options withCompletion:v13];
}

uint64_t __103__SBCoverSheetPresentationManagerAccessibility_setCoverSheetPresented_animated_options_withCompletion___block_invoke(uint64_t a1)
{
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end