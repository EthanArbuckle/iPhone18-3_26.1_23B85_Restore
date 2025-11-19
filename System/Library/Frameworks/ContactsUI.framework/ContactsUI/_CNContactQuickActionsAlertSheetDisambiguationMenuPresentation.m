@interface _CNContactQuickActionsAlertSheetDisambiguationMenuPresentation
- (id)viewControllerForPresentingActionsController:(id)a3 fromView:(id)a4 dismissDisambiguationMenuHandler:(id)a5;
@end

@implementation _CNContactQuickActionsAlertSheetDisambiguationMenuPresentation

- (id)viewControllerForPresentingActionsController:(id)a3 fromView:(id)a4 dismissDisambiguationMenuHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E69DC650];
  v11 = a3;
  v12 = [v10 alertControllerWithTitle:0 message:0 preferredStyle:0];
  v24.receiver = self;
  v24.super_class = _CNContactQuickActionsAlertSheetDisambiguationMenuPresentation;
  v13 = [(CNContactQuickActionsDisambiguationMenuPresentation *)&v24 viewControllerForPresentingActionsController:v11 fromView:v8 dismissDisambiguationMenuHandler:v9];

  [v12 setContentViewController:v13];
  v14 = MEMORY[0x1E69DC648];
  v15 = CNContactsUIBundle();
  v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __153___CNContactQuickActionsAlertSheetDisambiguationMenuPresentation_viewControllerForPresentingActionsController_fromView_dismissDisambiguationMenuHandler___block_invoke;
  v22[3] = &unk_1E74E5C98;
  v23 = v9;
  v17 = v9;
  v18 = [v14 actionWithTitle:v16 style:1 handler:v22];
  [v12 addAction:v18];

  v19 = [v12 popoverPresentationController];
  v20 = v19;
  if (v19)
  {
    [v19 setSourceView:v8];
    [v8 bounds];
    [v20 setSourceRect:?];
  }

  return v12;
}

@end