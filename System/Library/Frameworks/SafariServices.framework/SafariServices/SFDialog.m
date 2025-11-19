@interface SFDialog
@end

@implementation SFDialog

uint64_t __100__SFDialog_SafariServicesExtras__redirectDialogWithNavigationResult_promptPolicy_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return (*(v2 + 16))(v2, v3);
}

@end