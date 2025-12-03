@interface FPUIAuthenticationTableViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (FPUIAuthenticationDelegate)authenticationDelegate;
- (FPUIAuthenticationTableViewController)init;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_rowDescriptorForIndexPath:(id)path;
- (id)_rowDescriptorsForSection:(int64_t)section;
- (id)_tableView:(id)view viewOfType:(unint64_t)type inSection:(int64_t)section;
- (id)_titleView;
- (id)defaultLeftBarButtonItem;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (uint64_t)_titleView;
- (void)_cancel:(id)_cancel;
- (void)_setState:(unint64_t)state;
- (void)_stateDidChange;
- (void)authenticationDelegate:(id)delegate didEncounterError:(id)error;
- (void)authenticationDelegate:(id)delegate didFinishWithError:(id)error completionHandler:(id)handler;
- (void)authenticationDelegate:(id)delegate didReceiveCredentialDescriptors:(id)descriptors;
- (void)authenticationDelegate:(id)delegate didReceiveVolumeMountRepresentations:(id)representations;
- (void)selectTextFieldAtIndexPath:(id)path;
- (void)setTitle:(id)title;
- (void)setTransitioning:(BOOL)transitioning;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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
  tableView = [(FPUIAuthenticationTableViewController *)self tableView];
  [tableView setTableFooterView:v3];

  v5 = *MEMORY[0x277D76F30];
  tableView2 = [(FPUIAuthenticationTableViewController *)self tableView];
  [tableView2 setRowHeight:v5];

  tableView3 = [(FPUIAuthenticationTableViewController *)self tableView];
  [tableView3 setEstimatedRowHeight:44.0];

  tableView4 = [(FPUIAuthenticationTableViewController *)self tableView];
  [tableView4 setSectionHeaderTopPadding:0.0];

  defaultLeftBarButtonItem = [(FPUIAuthenticationTableViewController *)self defaultLeftBarButtonItem];
  navigationItem = [(FPUIAuthenticationTableViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:defaultLeftBarButtonItem];

  [(FPUIAuthenticationTableViewController *)self _stateDidChange];
  defaultTitle = [objc_opt_class() defaultTitle];
  [(FPUIAuthenticationTableViewController *)self setTitle:defaultTitle];

  [(FPUIAuthenticationTableViewController *)self setupTableViewSections];
}

- (void)setTransitioning:(BOOL)transitioning
{
  v3 = 2;
  if (!transitioning)
  {
    v3 = 0;
  }

  [(FPUIAuthenticationTableViewController *)self _setState:self->_state & 0xFFFFFFFFFFFFFFFDLL | v3];
}

- (void)_setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(FPUIAuthenticationTableViewController *)self _stateDidChange];
  }
}

- (void)_stateDidChange
{
  if ([(FPUIAuthenticationTableViewController *)self isTransitioning])
  {
    navigationItem = [(FPUIAuthenticationTableViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];
  }

  else
  {
    defaultRightBarButtonItem = [(FPUIAuthenticationTableViewController *)self defaultRightBarButtonItem];
    navigationItem2 = [(FPUIAuthenticationTableViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:defaultRightBarButtonItem];

    canTransitionToNextStep = [(FPUIAuthenticationTableViewController *)self canTransitionToNextStep];
    navigationItem = [(FPUIAuthenticationTableViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:canTransitionToNextStep];
  }

  isTransitioning = [(FPUIAuthenticationTableViewController *)self isTransitioning];
  tableView = [(FPUIAuthenticationTableViewController *)self tableView];
  [tableView setUserInteractionEnabled:!isTransitioning];
}

- (id)defaultLeftBarButtonItem
{
  v9 = FPUILoc(@"CANCEL_NAV_BAR_BUTTON_TITLE", a2, v2, v3, v4, v5, v6, v7, v12);
  v10 = FPNavBarButton(v9, 1, self, sel__cancel_);

  return v10;
}

- (void)setTitle:(id)title
{
  v6.receiver = self;
  v6.super_class = FPUIAuthenticationTableViewController;
  titleCopy = title;
  [(FPUIAuthenticationTableViewController *)&v6 setTitle:titleCopy];
  v5 = [(FPUIAuthenticationTableViewController *)self _titleView:v6.receiver];
  [v5 setTitle:titleCopy];
}

- (id)_titleView
{
  navigationItem = [(FPUIAuthenticationTableViewController *)self navigationItem];
  titleView = [navigationItem titleView];

  if (titleView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    [(FPUIAuthenticationTableViewController *)a2 _titleView];
    navigationItem2 = v8;
  }

  else
  {
    titleView = objc_opt_new();
    navigationItem2 = [(FPUIAuthenticationTableViewController *)self navigationItem];
    [navigationItem2 setTitleView:titleView];
  }

LABEL_6:

  return titleView;
}

- (void)selectTextFieldAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(FPUIAuthenticationTableViewController *)self tableView];
  v7 = [tableView cellForRowAtIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textField = [v7 textField];
    [textField becomeFirstResponder];
  }
}

- (void)_cancel:(id)_cancel
{
  authenticationDelegate = [(FPUIAuthenticationTableViewController *)self authenticationDelegate];
  [authenticationDelegate cancelAuthenticationSession];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v6 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:section];
  isActive = [v6 isActive];

  if (!isActive)
  {
    return 0;
  }

  v8 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorsForSection:section];
  v9 = [v8 count];

  return v9;
}

- (id)_rowDescriptorsForSection:(int64_t)section
{
  rowDescriptors = self->_rowDescriptors;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:section];
  v5 = [(NSDictionary *)rowDescriptors objectForKeyedSubscript:v4];

  if (!v5)
  {
    [FPUIAuthenticationTableViewController _rowDescriptorsForSection:];
  }

  return v5;
}

- (id)_rowDescriptorForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[FPUIAuthenticationTableViewController _rowDescriptorsForSection:](self, "_rowDescriptorsForSection:", [pathCopy section]);
  v6 = [pathCopy row];

  v7 = [v5 objectAtIndexedSubscript:v6];
  if (!v5)
  {
    [FPUIAuthenticationTableViewController _rowDescriptorForIndexPath:];
  }

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorForIndexPath:path];
  [v4 rowHeight];
  v6 = v5;

  return v6;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[NSArray objectAtIndexedSubscript:](self->_sectionDescriptors, "objectAtIndexedSubscript:", [pathCopy section]);
  if ([v6 shouldHighlightRows])
  {
    v7 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorForIndexPath:pathCopy];
    [v7 shouldHighlight];
    v9 = v8 != 0.0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v6 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:section];
  v7 = 0.0;
  if ([v6 isActive])
  {
    v8 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:section];
    [v8 headerHeight];
    v7 = v9;
  }

  return v7;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v5 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:section];
  lastObject = [(NSArray *)self->_sectionDescriptors lastObject];
  v7 = lastObject;
  if (v5 == lastObject)
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

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorForIndexPath:?];
  accessoryButtonTapHandler = [v5 accessoryButtonTapHandler];
  v7 = accessoryButtonTapHandler;
  if (accessoryButtonTapHandler)
  {
    (*(accessoryButtonTapHandler + 16))(accessoryButtonTapHandler, pathCopy);
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorForIndexPath:?];
  selectionHandler = [v5 selectionHandler];
  v7 = selectionHandler;
  if (selectionHandler)
  {
    (*(selectionHandler + 16))(selectionHandler, pathCopy);
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:section];
  if ([v4 isActive])
  {
    headerTitle = [v4 headerTitle];
  }

  else
  {
    headerTitle = 0;
  }

  return headerTitle;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:section];
  if ([v4 isActive])
  {
    footerTitle = [v4 footerTitle];
  }

  else
  {
    footerTitle = 0;
  }

  return footerTitle;
}

- (id)_tableView:(id)view viewOfType:(unint64_t)type inSection:(int64_t)section
{
  viewCopy = view;
  v9 = [(NSArray *)self->_sectionDescriptors objectAtIndexedSubscript:section];
  if (![v9 isActive])
  {
    footerViewClass = 0;
    goto LABEL_14;
  }

  if (type)
  {
    footerViewClass = [v9 footerViewClass];
    if (!footerViewClass)
    {
      goto LABEL_14;
    }

    footerViewReuseIdentifier = [v9 footerViewReuseIdentifier];
  }

  else
  {
    footerViewClass = [v9 headerViewClass];
    if (!footerViewClass)
    {
      goto LABEL_14;
    }

    footerViewReuseIdentifier = [v9 headerViewReuseIdentifier];
  }

  v12 = footerViewReuseIdentifier;
  [viewCopy registerClass:footerViewClass forHeaderFooterViewReuseIdentifier:footerViewReuseIdentifier];
  footerViewClass = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v12];
  if (type)
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
    (v14)[2](v14, footerViewClass);
  }

  backgroundColor = [viewCopy backgroundColor];
  contentView = [footerViewClass contentView];
  [contentView setBackgroundColor:backgroundColor];

LABEL_14:

  return footerViewClass;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  sectionDescriptors = self->_sectionDescriptors;
  viewCopy = view;
  v9 = -[NSArray objectAtIndexedSubscript:](sectionDescriptors, "objectAtIndexedSubscript:", [pathCopy section]);
  v10 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorForIndexPath:pathCopy];
  rowCellClass = [v9 rowCellClass];
  if (rowCellClass)
  {
    cellClass = rowCellClass;
    rowCellReuseIdentifier = [v9 rowCellReuseIdentifier];
    if (rowCellReuseIdentifier)
    {
      goto LABEL_6;
    }
  }

  else
  {
    cellClass = [v10 cellClass];
    cellReuseIdentifier = [v10 cellReuseIdentifier];
    rowCellReuseIdentifier = cellReuseIdentifier;
    if (cellClass)
    {
      if (cellReuseIdentifier)
      {
        goto LABEL_6;
      }
    }

    else
    {
      [FPUIAuthenticationTableViewController tableView:cellForRowAtIndexPath:];
      if (rowCellReuseIdentifier)
      {
        goto LABEL_6;
      }
    }
  }

  [FPUIAuthenticationTableViewController tableView:cellForRowAtIndexPath:];
LABEL_6:
  [viewCopy registerClass:cellClass forCellReuseIdentifier:rowCellReuseIdentifier];
  v15 = [viewCopy dequeueReusableCellWithIdentifier:rowCellReuseIdentifier forIndexPath:pathCopy];

  [v15 setSelectionStyle:{objc_msgSend(v10, "cellSelectionStyle")}];
  cellCustomizationHandler = [v10 cellCustomizationHandler];
  v17 = cellCustomizationHandler;
  if (cellCustomizationHandler)
  {
    (*(cellCustomizationHandler + 16))(cellCustomizationHandler, v15, pathCopy);
  }

  return v15;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v8 = [(FPUIAuthenticationTableViewController *)self _rowDescriptorForIndexPath:pathCopy];
  cellWillDisplayHandler = [v8 cellWillDisplayHandler];
  v10 = cellWillDisplayHandler;
  if (cellWillDisplayHandler)
  {
    (*(cellWillDisplayHandler + 16))(cellWillDisplayHandler, cellCopy, pathCopy);
  }
}

- (void)authenticationDelegate:(id)delegate didReceiveCredentialDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v8 = [[FPUIAuthenticationCredentialsViewController alloc] initWithCredentialDescriptors:descriptorsCopy];

  authenticationDelegate = [(FPUIAuthenticationTableViewController *)self authenticationDelegate];
  [(FPUIAuthenticationTableViewController *)v8 setAuthenticationDelegate:authenticationDelegate];

  navigationController = [(FPUIAuthenticationTableViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];

  [(FPUIAuthenticationTableViewController *)self setNavBarActivityIndicatorHidden:1];
}

- (void)authenticationDelegate:(id)delegate didReceiveVolumeMountRepresentations:(id)representations
{
  representationsCopy = representations;
  authenticationDelegate = [(FPUIAuthenticationTableViewController *)self authenticationDelegate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__FPUIAuthenticationTableViewController_authenticationDelegate_didReceiveVolumeMountRepresentations___block_invoke;
  v8[3] = &unk_278A516E8;
  v9 = representationsCopy;
  selfCopy = self;
  v7 = representationsCopy;
  [authenticationDelegate mountedVolumeIdentifiersWithCompletionHandler:v8];
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

- (void)authenticationDelegate:(id)delegate didEncounterError:(id)error
{
  delegateCopy = delegate;
  errorCopy = error;
  if (!errorCopy)
  {
    [FPUIAuthenticationTableViewController authenticationDelegate:didEncounterError:];
  }

  [delegateCopy didEncounterError:errorCopy completionHandler:&__block_literal_global_6];
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

- (void)authenticationDelegate:(id)delegate didFinishWithError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__FPUIAuthenticationTableViewController_authenticationDelegate_didFinishWithError_completionHandler___block_invoke;
  block[3] = &unk_278A51398;
  block[4] = self;
  v12 = errorCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = errorCopy;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  *a3 = currentHandler;

  return [currentHandler handleFailureInMethod:self object:a2 file:@"FPUIAuthenticationTableViewController.m" lineNumber:141 description:@"bad titleView type"];
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