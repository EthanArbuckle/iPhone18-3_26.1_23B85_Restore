@interface CNContactQuickActionsModalDisambiguationMenuPresentation
@end

@implementation CNContactQuickActionsModalDisambiguationMenuPresentation

uint64_t __148___CNContactQuickActionsModalDisambiguationMenuPresentation_viewControllerForPresentingActionsController_fromView_dismissDisambiguationMenuHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained presentingViewController];

  if (v2)
  {
    v3 = [WeakRetained presentingViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];
LABEL_3:

    v4 = WeakRetained;
    goto LABEL_4;
  }

  v6 = [WeakRetained navigationController];
  v4 = WeakRetained;
  if (v6)
  {
    v7 = v6;
    v8 = [WeakRetained navigationController];
    v9 = [v8 topViewController];

    v4 = WeakRetained;
    if (v9 == WeakRetained)
    {
      v3 = [WeakRetained navigationController];
      v10 = [v3 popViewControllerAnimated:1];
      goto LABEL_3;
    }
  }

LABEL_4:
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v4);
    v4 = WeakRetained;
  }

  return MEMORY[0x1EEE66BB8](v5, v4);
}

@end