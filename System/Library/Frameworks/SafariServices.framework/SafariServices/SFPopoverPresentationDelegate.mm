@interface SFPopoverPresentationDelegate
@end

@implementation SFPopoverPresentationDelegate

uint64_t __55___SFPopoverPresentationDelegate_updatePopoverPosition__block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 32);
  v12 = a2;
  [v11 setSourceRect:{a3, a4, a5, a6}];
  [*(a1 + 32) setSourceView:v12];

  v13 = *(a1 + 32);

  return [v13 setBarButtonItem:0];
}

id __99___SFPopoverPresentationDelegate_popoverPresentationController_willRepositionPopoverToRect_inView___block_invoke(uint64_t a1, id a2, double a3, double a4, double a5, double a6)
{
  v8 = *(a1 + 32);
  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  result = a2;
  **(a1 + 40) = a2;
  return result;
}

void __99___SFPopoverPresentationDelegate_popoverPresentationController_willRepositionPopoverToRect_inView___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) presentedViewController];
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

@end