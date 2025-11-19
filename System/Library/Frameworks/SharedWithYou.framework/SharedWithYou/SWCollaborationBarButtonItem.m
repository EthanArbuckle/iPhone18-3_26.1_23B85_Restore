@interface SWCollaborationBarButtonItem
@end

@implementation SWCollaborationBarButtonItem

void __65___SWCollaborationBarButtonItem_initWithCollaborationButtonView___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69DCAB8];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v6 = [v4 systemImageNamed:@"person.crop.circle.badge.checkmark" withConfiguration:v5];

  v7 = MEMORY[0x1E69DC628];
  v8 = SWFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"COLLABORATION" value:&stru_1F3ABB850 table:@"SharedWithYou"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __65___SWCollaborationBarButtonItem_initWithCollaborationButtonView___block_invoke_2;
  v16 = &unk_1E7FDDDB8;
  v17 = *(a1 + 32);
  objc_copyWeak(&v18, (a1 + 40));
  v10 = [v7 actionWithTitle:v9 image:v6 identifier:0 handler:&v13];

  v19[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{1, v13, v14, v15, v16}];
  v3[2](v3, v11);

  objc_destroyWeak(&v18);
  v12 = *MEMORY[0x1E69E9840];
}

void __65___SWCollaborationBarButtonItem_initWithCollaborationButtonView___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_SWCollaborationDetailViewController alloc];
  v5 = [*(a1 + 32) buttonView];
  v6 = [v5 itemProvider];
  v15 = [(_SWCollaborationDetailViewController *)v4 initWithItemProvider_impl:v6];

  [(_SWCollaborationDetailViewController *)v15 setModalPresentationStyle:7];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [(_SWCollaborationDetailViewController *)v15 popoverPresentationController];
  [v8 setDelegate:WeakRetained];

  v9 = [v3 presentationSourceItem];
  v10 = [v3 presentationSourceItem];

  v11 = [(_SWCollaborationDetailViewController *)v15 popoverPresentationController];
  [v11 setSourceItem:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = MEMORY[0x1E69DD258];
    v13 = [v9 view];
    v14 = [v12 _viewControllerForFullScreenPresentationFromView:v13];

    [v14 presentViewController:v15 animated:1 completion:0];
  }
}

@end