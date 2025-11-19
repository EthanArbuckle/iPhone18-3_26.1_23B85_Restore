@interface FPUIAuthenticationServerInfoViewController
- (BOOL)tableView:(id)a3 shouldShowMenuForRowAtIndexPath:(id)a4;
- (FPUIAuthenticationServerInfoDelegate)serverInfoDelegate;
- (FPUIAuthenticationServerInfoViewController)initWithServerRepresentation:(id)a3;
- (void)removeButtonTapped:(id)a3;
- (void)setupTableViewSections;
- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
- (void)viewDidLoad;
@end

@implementation FPUIAuthenticationServerInfoViewController

- (FPUIAuthenticationServerInfoViewController)initWithServerRepresentation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FPUIAuthenticationServerInfoViewController;
  v6 = [(FPUIAuthenticationTableViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverRepresentation, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = FPUIAuthenticationServerInfoViewController;
  [(FPUIAuthenticationTableViewController *)&v4 viewDidLoad];
  v3 = [(FPUIAuthenticationServerRepresentation *)self->_serverRepresentation displayName];
  [(FPUIAuthenticationTableViewController *)self setTitle:v3];
}

- (void)setupTableViewSections
{
  v27[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = FPUILoc(@"SERVER", v4, v5, v6, v7, v8, v9, v10, v20);
  [v3 setHeaderTitle:v11];

  [v3 setHeaderHeight:*MEMORY[0x277D76F30]];
  v12 = objc_opt_new();
  [v12 setCellReuseIdentifier:@"ServerAddress"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __68__FPUIAuthenticationServerInfoViewController_setupTableViewSections__block_invoke;
  v22[3] = &unk_278A514D8;
  v22[4] = self;
  [v12 setCellCustomizationHandler:v22];
  v13 = objc_opt_new();
  [v13 setHeaderHeight:36.0];
  v14 = objc_opt_new();
  [v14 setCellReuseIdentifier:@"Button"];
  [v14 setCellClass:objc_opt_class()];
  [v14 setCellSelectionStyle:2];
  [v14 setCellCustomizationHandler:&__block_literal_global_2];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__FPUIAuthenticationServerInfoViewController_setupTableViewSections__block_invoke_3;
  v21[3] = &unk_278A51520;
  v21[4] = self;
  [v14 setSelectionHandler:v21];
  [v14 setShouldHighlight:1.0];
  v27[0] = v3;
  v27[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  [(FPUIAuthenticationTableViewController *)self setSectionDescriptors:v15];

  v24 = v12;
  v25[0] = &unk_284B1D620;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v25[1] = &unk_284B1D638;
  v26[0] = v16;
  v23 = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v26[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  [(FPUIAuthenticationTableViewController *)self setRowDescriptors:v18];

  v19 = *MEMORY[0x277D85DE8];
}

void __68__FPUIAuthenticationServerInfoViewController_setupTableViewSections__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1072);
  v3 = a2;
  v4 = [v2 displayName];
  v5 = [v3 textLabel];
  [v5 setText:v4];

  v7 = FPUITableCellServerIcon();
  v6 = [v3 imageView];

  [v6 setImage:v7];
}

void __68__FPUIAuthenticationServerInfoViewController_setupTableViewSections__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = FPUILoc(@"REMOVE", v3, v4, v5, v6, v7, v8, v9, v13);
  v11 = [v2 label];
  [v11 setText:v10];

  v14 = [MEMORY[0x277D75348] redColor];
  v12 = [v2 label];

  [v12 setTextColor:v14];
}

void __68__FPUIAuthenticationServerInfoViewController_setupTableViewSections__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 tableView];
  v4 = [v5 cellForRowAtIndexPath:v3];

  [v2 removeButtonTapped:v4];
}

- (void)removeButtonTapped:(id)a3
{
  v9 = MEMORY[0x277D75110];
  v10 = FPUILoc(@"REMOVE_SERVER", a2, a3, v3, v4, v5, v6, v7, v40[0]);
  v18 = FPUILoc(@"REMOVE_SERVER_ALERT_MESSAGE", v11, v12, v13, v14, v15, v16, v17, v40[0]);
  v19 = [v9 alertControllerWithTitle:v10 message:v18 preferredStyle:1];

  v20 = MEMORY[0x277D750F8];
  v28 = FPUILoc(@"CANCEL_ALERT_OPTION", v21, v22, v23, v24, v25, v26, v27, v40[0]);
  v29 = [v20 actionWithTitle:v28 style:1 handler:0];

  v30 = MEMORY[0x277D750F8];
  v38 = FPUILoc(@"REMOVE", v31, v32, v33, v34, v35, v36, v37, v40[0]);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __65__FPUIAuthenticationServerInfoViewController_removeButtonTapped___block_invoke;
  v41[3] = &unk_278A51548;
  v41[4] = self;
  v39 = [v30 actionWithTitle:v38 style:2 handler:v41];

  [v19 addAction:v29];
  [v19 addAction:v39];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __65__FPUIAuthenticationServerInfoViewController_removeButtonTapped___block_invoke_3;
  v40[3] = &unk_278A51370;
  v40[4] = self;
  [(FPUIAuthenticationServerInfoViewController *)self presentViewController:v19 animated:1 completion:v40];
}

void __65__FPUIAuthenticationServerInfoViewController_removeButtonTapped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authenticationDelegate];
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 32);
  v5 = [v4 authenticationDelegate];
  v6 = v5;
  if (v3)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 1072);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__FPUIAuthenticationServerInfoViewController_removeButtonTapped___block_invoke_2;
    v11[3] = &unk_278A512F8;
    v11[4] = v7;
    [v5 removeRecentServerWithRepresentation:v8 completion:v11];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    v10.receiver = v4;
    v10.super_class = FPUIAuthenticationServerInfoViewController;
    objc_msgSendSuper2(&v10, sel_authenticationDelegate_didEncounterError_, v6, v9);
  }
}

void __65__FPUIAuthenticationServerInfoViewController_removeButtonTapped___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 32) authenticationDelegate];
    v8.receiver = v4;
    v8.super_class = FPUIAuthenticationServerInfoViewController;
    objc_msgSendSuper2(&v8, sel_authenticationDelegate_didEncounterError_, v5, v3);
  }

  else
  {
    v6 = [*(a1 + 32) serverInfoDelegate];
    [v6 removeServerWithRepresentation:*(*(a1 + 32) + 1072)];

    v5 = [*(a1 + 32) navigationController];
    v7 = [v5 popViewControllerAnimated:1];
  }
}

void __65__FPUIAuthenticationServerInfoViewController_removeButtonTapped___block_invoke_3(uint64_t a1)
{
  v4 = [*(a1 + 32) tableView];
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 indexPathForSelectedRow];
  [v4 deselectRowAtIndexPath:v3 animated:1];
}

- (BOOL)tableView:(id)a3 shouldShowMenuForRowAtIndexPath:(id)a4
{
  v4 = [a3 cellForRowAtIndexPath:a4];
  v5 = [v4 reuseIdentifier];
  v6 = [@"ServerAddress" isEqualToString:v5];

  return v6;
}

- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6
{
  if (sel_copy_ == a4)
  {
    v8 = [(FPUIAuthenticationServerRepresentation *)self->_serverRepresentation displayName];
    v7 = [MEMORY[0x277D75810] generalPasteboard];
    [v7 setString:v8];
  }
}

- (FPUIAuthenticationServerInfoDelegate)serverInfoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serverInfoDelegate);

  return WeakRetained;
}

@end