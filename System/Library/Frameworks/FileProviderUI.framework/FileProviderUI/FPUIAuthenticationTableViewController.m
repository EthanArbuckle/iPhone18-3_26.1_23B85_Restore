@interface FPUIAuthenticationTableViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (FPUIAuthenticationDelegate)authenticationDelegate;
- (FPUIAuthenticationTableViewController)init;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_rowDescriptorForIndexPath:(id)a3;
- (id)_rowDescriptorsForSection:(int64_t)a3;
- (id)_tableView:(id)a3 viewOfType:(unint64_t)a4 inSection:(int64_t)a5;
- (id)_titleView;
- (id)defaultLeftBarButtonItem;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (uint64_t)_titleView;
- (void)_cancel:(id)a3;
- (void)_setState:(unint64_t)a3;
- (void)_stateDidChange;
- (void)authenticationDelegate:(id)a3 didEncounterError:(id)a4;
- (void)authenticationDelegate:(id)a3 didFinishWithError:(id)a4 completionHandler:(id)a5;
- (void)authenticationDelegate:(id)a3 didReceiveCredentialDescriptors:(id)a4;
- (void)authenticationDelegate:(id)a3 didReceiveVolumeMountRepresentations:(id)a4;
- (void)selectTextFieldAtIndexPath:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTransitioning:(BOOL)a3;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation FPUIAuthenticationTableViewController

- (FPUIAuthenticationTableViewController)init
{
  v3.receiver = self;
  v3.super_class = FPUIAuthenticationTableViewController;
  return [(FPUIAuthenticationTableViewController *)&v3 initWithStyle:2];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = FPUIAuthenticationTableViewController;
  [(FPUIAuthenticationTableViewController *)&v12 viewDidLoad];
  v3 = objc_opt_new();
  v4 = [(FPUIAuthenticationTableViewController *)self tableView];
  [v4 setTableFooterView:v3];

  v5 = *MEMORY[0x277D76F30];
  v6 = [(FPUIAuthenticationTableViewController *)self tableView];
  [v6 setRowHeight:v5];

  v7 = [(FPUIAuthenticationTableViewController *)self tableView];
  [v7 setEstimatedRowHeight:44.0];

  v8 = [(FPUIAuthenticationTableViewController *)self tableView];
  [v8 setSectionHeaderTopPadding:0.0];

  v9 = [(FPUIAuthenticationTableViewController *)self defaultLeftBarButtonItem];
  v10 = [(FPUIAuthenticationTableViewController *)self navigationItem];
  [v10 setLeftBarButtonItem:v9];

  [(FPUIAuthenticationTableViewController *)self _stateDidChange];
  v11 = [objc_opt_class() defaultTitle];
  [(FPUIAuthenticationTableViewController *)self setTitle:v11];

  [(FPUIAuthenticationTableViewController *)self setupTableViewSections];
}

- (void)setTransitioning:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  [(FPUIAuthenticationTableViewController *)self _setState:self->_state & 0xFFFFFFFFFFFFFFFDLL | v3];
}

- (void)_setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(FPUIAuthenticationTableViewController *)self _stateDidChange];
  }
}

- (void)_stateDidChange
{
  if ([(FPUIAuthenticationTableViewController *)self isTransitioning])
  {
    v3 = [(FPUIAuthenticationTableViewController *)self navigationItem];
    [v3 setRightBarButtonItem:0];
  }

  else
  {
    v4 = [(FPUIAuthenticationTableViewController *)self defaultRightBarButtonItem];
    v5 = [(FPUIAuthenticationTableViewController *)self navigationItem];
    [v5 setRightBarButtonItem:v4];

    v6 = [(FPUIAuthenticationTableViewController *)self canTransitionToNextStep];
    v3 = [(FPUIAuthenticationTableViewController *)self navigationItem];
    v7 = [v3 rightBarButtonItem];
    [v7 setEnabled:v6];
  }

  v8 = [(FPUIAuthenticationTableViewController *)self isTransitioning];
  v9 = [(FPUIAuthenticationTableViewController *)self tableView];
  [v9 setUserInteractionEnabled:!v8];
}

- (id)defaultLeftBarButtonItem
{
  v9 = FPUILoc(@"CANCEL_NAV_BAR_BUTTON_TITLE", a2, v2, v3, v4, v5, v6, v7, v12);
  v10 = FPNavBarButton(v9, 1, self, sel__cancel_);

  return v10;
}

- (void)setTitle:(id)a3
{
  v6.receiver = self;
  v6.super_class = FPUIAuthenticationTableViewController;
  v4 = a3;
  [(FPUIAuthenticationTableViewController *)&v6 setTitle:v4];
  v5 = [(FPUIAuthenticationTableViewController *)self _titleView:v6.receiver];
  [v5 setTitle:v4];
}

- (id)_titleView
{
  v4 = [(FPUIAuthenticationTableViewController *)self navigationItem];
  v5 = [v4 titleView];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    [(FPUIAuthenticationTableViewController *)a2 _titleView];
    v6 = v8;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = [(FPUIAuthenticationTableViewController *)self navigationItem];
    [v6 setTitleView:v5];
  }

LABEL_6:

  return v5;
}

- (void)selectTextFieldAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(FPUIAuthenticationTableViewController *)self tableView];
  v7 = [v5 cellForRowAtIndexPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v7 textField];
    [v6 becomeFirstResponder];
  }
}

- (void)_cancel:(id)a3
{
  v3 = [(FPUIAuthenticationTableViewController *)self authenticationDelegate];
  [v3 cancelAuthenticationSession];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:a4];
  v7 = [v6 isActive];

  if (!v7)
  {
    return 0;
  }

  v8 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorsForSection:a4];
  v9 = [v8 count];

  return v9;
}

- (id)_rowDescriptorsForSection:(int64_t)a3
{
  rowDescriptors = self->_rowDescriptors;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSDictionary *)rowDescriptors objectForKeyedSubscript:v4];

  if (!v5)
  {
    [FPUIAuthenticationTableViewController _rowDescriptorsForSection:];
  }

  return v5;
}

- (id)_rowDescriptorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[FPUIAuthenticationTableViewController _rowDescriptorsForSection:](self, "_rowDescriptorsForSection:", [v4 section]);
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];
  if (!v5)
  {
    [FPUIAuthenticationTableViewController _rowDescriptorForIndexPath:];
  }

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorForIndexPath:a4];
  [v4 rowHeight];
  v6 = v5;

  return v6;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[NSArray objectAtIndexedSubscript:](self->_sectionDescriptors, "objectAtIndexedSubscript:", [v5 section]);
  if ([v6 shouldHighlightRows])
  {
    v7 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorForIndexPath:v5];
    [v7 shouldHighlight];
    v9 = v8 != 0.0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:a4];
  v7 = 0.0;
  if ([v6 isActive])
  {
    v8 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:a4];
    [v8 headerHeight];
    v7 = v9;
  }

  return v7;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:a4];
  v6 = [(NSArray *)self->_sectionDescriptors lastObject];
  v7 = v6;
  if (v5 == v6)
  {
    [v5 footerHeight];
    v11 = v10;

    if (v11 == 0.0)
    {
      v8 = 35.0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = 0.0;
  if ([v5 isActive])
  {
    [v5 footerHeight];
    v8 = v9;
  }

LABEL_7:

  return v8;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v8 = a4;
  v5 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorForIndexPath:?];
  v6 = [v5 accessoryButtonTapHandler];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  v5 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorForIndexPath:?];
  v6 = [v5 selectionHandler];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:a4];
  if ([v4 isActive])
  {
    v5 = [v4 headerTitle];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:a4];
  if ([v4 isActive])
  {
    v5 = [v4 footerTitle];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_tableView:(id)a3 viewOfType:(unint64_t)a4 inSection:(int64_t)a5
{
  v8 = a3;
  v9 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:a5];
  if (![v9 isActive])
  {
    v10 = 0;
    goto LABEL_14;
  }

  if (a4)
  {
    v10 = [v9 footerViewClass];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = [v9 footerViewReuseIdentifier];
  }

  else
  {
    v10 = [v9 headerViewClass];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = [v9 headerViewReuseIdentifier];
  }

  v12 = v11;
  [v8 registerClass:v10 forHeaderFooterViewReuseIdentifier:v11];
  v10 = [v8 dequeueReusableHeaderFooterViewWithIdentifier:v12];
  if (a4)
  {
    [v9 footerViewCustomizationBlock];
  }

  else
  {
    [v9 headerViewCustomizationBlock];
  }
  v13 = ;
  v14 = MEMORY[0x2383F1490]();

  if (v14)
  {
    (v14)[2](v14, v10);
  }

  v15 = [v8 backgroundColor];
  v16 = [v10 contentView];
  [v16 setBackgroundColor:v15];

LABEL_14:

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  sectionDescriptors = self->_sectionDescriptors;
  v8 = a3;
  v9 = -[NSArray objectAtIndexedSubscript:](sectionDescriptors, "objectAtIndexedSubscript:", [v6 section]);
  v10 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorForIndexPath:v6];
  v11 = [v9 rowCellClass];
  if (v11)
  {
    v12 = v11;
    v13 = [v9 rowCellReuseIdentifier];
    if (v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = [v10 cellClass];
    v14 = [v10 cellReuseIdentifier];
    v13 = v14;
    if (v12)
    {
      if (v14)
      {
        goto LABEL_6;
      }
    }

    else
    {
      [FPUIAuthenticationTableViewController tableView:cellForRowAtIndexPath:];
      if (v13)
      {
        goto LABEL_6;
      }
    }
  }

  [FPUIAuthenticationTableViewController tableView:cellForRowAtIndexPath:];
LABEL_6:
  [v8 registerClass:v12 forCellReuseIdentifier:v13];
  v15 = [v8 dequeueReusableCellWithIdentifier:v13 forIndexPath:v6];

  [v15 setSelectionStyle:{objc_msgSend(v10, "cellSelectionStyle")}];
  v16 = [v10 cellCustomizationHandler];
  v17 = v16;
  if (v16)
  {
    (*(v16 + 16))(v16, v15, v6);
  }

  return v15;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorForIndexPath:v7];
  v9 = [v8 cellWillDisplayHandler];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v11, v7);
  }
}

- (void)authenticationDelegate:(id)a3 didReceiveCredentialDescriptors:(id)a4
{
  v5 = a4;
  v8 = [[FPUIAuthenticationCredentialsViewController alloc] initWithCredentialDescriptors:v5];

  v6 = [(FPUIAuthenticationTableViewController *)self authenticationDelegate];
  [(FPUIAuthenticationTableViewController *)v8 setAuthenticationDelegate:v6];

  v7 = [(FPUIAuthenticationTableViewController *)self navigationController];
  [v7 pushViewController:v8 animated:1];

  [(FPUIAuthenticationTableViewController *)self setNavBarActivityIndicatorHidden:1];
}

- (void)authenticationDelegate:(id)a3 didReceiveVolumeMountRepresentations:(id)a4
{
  v5 = a4;
  v6 = [(FPUIAuthenticationTableViewController *)self authenticationDelegate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__FPUIAuthenticationTableViewController_authenticationDelegate_didReceiveVolumeMountRepresentations___block_invoke;
  v8[3] = &unk_278A516E8;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [v6 mountedVolumeIdentifiersWithCompletionHandler:v8];
}

void __101__FPUIAuthenticationTableViewController_authenticationDelegate_didReceiveVolumeMountRepresentations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__FPUIAuthenticationTableViewController_authenticationDelegate_didReceiveVolumeMountRepresentations___block_invoke_2;
  block[3] = &unk_278A514B0;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __101__FPUIAuthenticationTableViewController_authenticationDelegate_didReceiveVolumeMountRepresentations___block_invoke_2(uint64_t a1)
{
  v4 = [[FPUIAuthenticationVolumeMountViewController alloc] initWithVolumes:*(a1 + 32) mountedVolumeIdentifiers:*(a1 + 40)];
  v2 = [*(a1 + 48) authenticationDelegate];
  [(FPUIAuthenticationTableViewController *)v4 setAuthenticationDelegate:v2];

  v3 = [*(a1 + 48) navigationController];
  [v3 pushViewController:v4 animated:1];

  [*(a1 + 48) setNavBarActivityIndicatorHidden:1];
}

- (void)authenticationDelegate:(id)a3 didEncounterError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [FPUIAuthenticationTableViewController authenticationDelegate:didEncounterError:];
  }

  [v6 didEncounterError:v7 completionHandler:&__block_literal_global_6];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__FPUIAuthenticationTableViewController_authenticationDelegate_didEncounterError___block_invoke_2;
  block[3] = &unk_278A51370;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __82__FPUIAuthenticationTableViewController_authenticationDelegate_didEncounterError___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNavBarActivityIndicatorHidden:1];
  v2 = *(a1 + 32);

  return [v2 setTransitioning:0];
}

- (void)authenticationDelegate:(id)a3 didFinishWithError:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__FPUIAuthenticationTableViewController_authenticationDelegate_didFinishWithError_completionHandler___block_invoke;
  block[3] = &unk_278A51398;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __101__FPUIAuthenticationTableViewController_authenticationDelegate_didFinishWithError_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNavBarActivityIndicatorHidden:1];
  [*(a1 + 32) setTransitioning:0];
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) authenticationDelegate];
    [v3 didEncounterError:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }
}

- (FPUIAuthenticationDelegate)authenticationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticationDelegate);

  return WeakRetained;
}

- (uint64_t)_titleView
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;

  return [v6 handleFailureInMethod:a1 object:a2 file:@"FPUIAuthenticationTableViewController.m" lineNumber:141 description:@"bad titleView type"];
}

- (void)_rowDescriptorsForSection:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_rowDescriptorForIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)tableView:cellForRowAtIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)tableView:cellForRowAtIndexPath:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)authenticationDelegate:didEncounterError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end