@interface LAPSPasscodeOptionsPresentationController
- (void)_presentPasscodeOptionsAlert:(id)a3 completion:(id)a4;
- (void)_presentPasscodeOptionsPopOverWithContentVC:(id)a3 request:(id)a4 completion:(id)a5;
- (void)_presentPasscodeOptionsPopover:(id)a3 completion:(id)a4;
- (void)_presentPasscodeOptionsSheet:(id)a3 completion:(id)a4;
- (void)presentPasscodeOptions:(id)a3 completion:(id)a4;
@end

@implementation LAPSPasscodeOptionsPresentationController

- (void)presentPasscodeOptions:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v8 presentationStyle];
  switch(v7)
  {
    case 2:
      [(LAPSPasscodeOptionsPresentationController *)self _presentPasscodeOptionsSheet:v8 completion:v6];
      break;
    case 1:
      [(LAPSPasscodeOptionsPresentationController *)self _presentPasscodeOptionsPopover:v8 completion:v6];
      break;
    case 0:
      [(LAPSPasscodeOptionsPresentationController *)self _presentPasscodeOptionsAlert:v8 completion:v6];
      break;
  }
}

- (void)_presentPasscodeOptionsSheet:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 sourceViewController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__LAPSPasscodeOptionsPresentationController__presentPasscodeOptionsSheet_completion___block_invoke;
  v10[3] = &unk_278A65AC0;
  v11 = v5;
  v8 = v5;
  v9 = __85__LAPSPasscodeOptionsPresentationController__presentPasscodeOptionsSheet_completion___block_invoke(v10);
  [v7 presentViewController:v9 animated:objc_msgSend(v8 completion:{"animated"), v6}];
}

LAPSPasscodeOptionsSheetViewController *__85__LAPSPasscodeOptionsPresentationController__presentPasscodeOptionsSheet_completion___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [LAPSPasscodeOptionsSheetViewController alloc];
  v3 = [*(a1 + 32) config];
  v4 = [(LAPSPasscodeOptionsSheetViewController *)v2 initWithConfiguration:v3];

  [(LAPSPasscodeOptionsSheetViewController *)v4 setModalPresentationStyle:2];
  v5 = [(LAPSPasscodeOptionsSheetViewController *)v4 sheetPresentationController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__LAPSPasscodeOptionsPresentationController__presentPasscodeOptionsSheet_completion___block_invoke_2;
  v12[3] = &unk_278A65A98;
  v6 = v4;
  v13 = v6;
  v7 = __85__LAPSPasscodeOptionsPresentationController__presentPasscodeOptionsSheet_completion___block_invoke_2(v12);
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v5 setDetents:v8];

  [v5 setPreferredCornerRadius:12.0];
  v9 = [*(a1 + 32) delegate];
  [(LAPSPasscodeOptionsSheetViewController *)v6 setDelegate:v9];

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

id __85__LAPSPasscodeOptionsPresentationController__presentPasscodeOptionsSheet_completion___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277D75A28];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__LAPSPasscodeOptionsPresentationController__presentPasscodeOptionsSheet_completion___block_invoke_3;
  v4[3] = &unk_278A65A70;
  v5 = *(a1 + 32);
  v2 = [v1 customDetentWithIdentifier:@"Small" resolver:v4];

  return v2;
}

- (void)_presentPasscodeOptionsAlert:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 config];
  v8 = [[LAPSPasscodeOptionsAlertViewController alloc] initWithConfiguration:v9];
  [(LAPSPasscodeOptionsPresentationController *)self _presentPasscodeOptionsPopOverWithContentVC:v8 request:v7 completion:v6];
}

- (void)_presentPasscodeOptionsPopover:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 config];
  v8 = [[LAPSPasscodeOptionsSheetViewController alloc] initWithConfiguration:v9 style:1];
  [(LAPSPasscodeOptionsPresentationController *)self _presentPasscodeOptionsPopOverWithContentVC:v8 request:v7 completion:v6];
}

- (void)_presentPasscodeOptionsPopOverWithContentVC:(id)a3 request:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 sourceViewController];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __108__LAPSPasscodeOptionsPresentationController__presentPasscodeOptionsPopOverWithContentVC_request_completion___block_invoke;
  v17 = &unk_278A65AE8;
  v18 = v8;
  v19 = v7;
  v11 = v7;
  v12 = v8;
  v13 = __108__LAPSPasscodeOptionsPresentationController__presentPasscodeOptionsPopOverWithContentVC_request_completion___block_invoke(&v14);
  [v10 presentViewController:v13 animated:objc_msgSend(v12 completion:{"animated", v14, v15, v16, v17), v9}];
}

id __108__LAPSPasscodeOptionsPresentationController__presentPasscodeOptionsPopOverWithContentVC_request_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sourceView];
  if (v2)
  {
  }

  else
  {
    v3 = [*(a1 + 32) sourceItem];

    if (!v3)
    {
      [*(a1 + 40) setModalPresentationStyle:6];
      goto LABEL_9;
    }
  }

  [*(a1 + 40) setModalPresentationStyle:7];
  v4 = [*(a1 + 40) popoverPresentationController];
  v5 = [*(a1 + 32) sourceView];

  if (v5)
  {
    v6 = [*(a1 + 32) sourceView];
    [v4 setSourceView:v6];

    v7 = [*(a1 + 32) sourceView];
    [v7 bounds];
    [v4 setSourceRect:?];
  }

  v8 = [*(a1 + 32) sourceItem];

  if (v8)
  {
    v9 = [*(a1 + 32) sourceItem];
    [v4 setSourceItem:v9];

    [v4 setPermittedArrowDirections:1];
  }

LABEL_9:
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) delegate];
  [v10 setDelegate:v11];

  v12 = *(a1 + 40);

  return v12;
}

@end