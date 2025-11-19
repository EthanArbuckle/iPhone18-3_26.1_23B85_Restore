@interface SBCoverSheetPresentationManagerAccessibility
- (void)setCoverSheetPresented:(BOOL)a3 animated:(BOOL)a4 options:(unint64_t)a5 withCompletion:(id)a6;
@end

@implementation SBCoverSheetPresentationManagerAccessibility

- (void)setCoverSheetPresented:(BOOL)a3 animated:(BOOL)a4 options:(unint64_t)a5 withCompletion:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a6;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __103__SBCoverSheetPresentationManagerAccessibility_setCoverSheetPresented_animated_options_withCompletion___block_invoke;
  v13[3] = &unk_29F2FBE98;
  v14 = v10;
  v12.receiver = self;
  v12.super_class = SBCoverSheetPresentationManagerAccessibility;
  v11 = v10;
  [(SBCoverSheetPresentationManagerAccessibility *)&v12 setCoverSheetPresented:v8 animated:v7 options:a5 withCompletion:v13];
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