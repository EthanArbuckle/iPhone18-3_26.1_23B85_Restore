@interface FPUIAuthenticationVolumeMountViewController
- (FPUIAuthenticationVolumeMountViewController)initWithVolumes:(id)a3 mountedVolumeIdentifiers:(id)a4;
- (id)defaultRightBarButtonItem;
- (id)tableCellCheckmarkImageDisabled;
- (void)_done:(id)a3;
- (void)selectedVolumesIndexesDidChange;
- (void)setupTableViewSections;
- (void)viewDidLoad;
@end

@implementation FPUIAuthenticationVolumeMountViewController

- (FPUIAuthenticationVolumeMountViewController)initWithVolumes:(id)a3 mountedVolumeIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = FPUIAuthenticationVolumeMountViewController;
  v8 = [(FPUIAuthenticationTableViewController *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    allVolumeRepresentations = v8->_allVolumeRepresentations;
    v8->_allVolumeRepresentations = v9;

    v11 = [v7 copy];
    mountedVolumeIdentifiers = v8->_mountedVolumeIdentifiers;
    v8->_mountedVolumeIdentifiers = v11;

    v13 = objc_opt_new();
    selectedVolumesIndexes = v8->_selectedVolumesIndexes;
    v8->_selectedVolumesIndexes = v13;
  }

  return v8;
}

- (id)defaultRightBarButtonItem
{
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v11 = FPUILoc(@"DONE_NAV_BAR_BUTTON_TITLE", v4, v5, v6, v7, v8, v9, v10, v14);
  v12 = [v3 initWithTitle:v11 style:2 target:self action:sel__done_];

  return v12;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = FPUIAuthenticationVolumeMountViewController;
  [(FPUIAuthenticationTableViewController *)&v3 viewDidLoad];
  [(FPUIAuthenticationTableViewController *)self setCanTransitionToNextStep:[(FPUIAuthenticationVolumeMountViewController *)self _canMoveToNextStep]];
}

- (void)_done:(id)a3
{
  [(FPUIAuthenticationTableViewController *)self setNavBarActivityIndicatorHidden:0];
  v4 = [MEMORY[0x277CBEB18] array];
  selectedVolumesIndexes = self->_selectedVolumesIndexes;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __53__FPUIAuthenticationVolumeMountViewController__done___block_invoke;
  v11 = &unk_278A513C0;
  v12 = self;
  v13 = v4;
  v6 = v4;
  [(NSMutableIndexSet *)selectedVolumesIndexes enumerateIndexesUsingBlock:&v8];
  [(FPUIAuthenticationTableViewController *)self setTransitioning:1, v8, v9, v10, v11, v12];
  v7 = [(FPUIAuthenticationTableViewController *)self authenticationDelegate];
  [v7 connectionFlowDelegate:self didPickVolumeMountIdentifiers:v6];
}

void __53__FPUIAuthenticationVolumeMountViewController__done___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(*(a1 + 32) + 1072) objectAtIndexedSubscript:a2];
  v3 = *(a1 + 40);
  v4 = [v5 identifier];
  [v3 addObject:v4];
}

- (void)setupTableViewSections
{
  v36 = *MEMORY[0x277D85DE8];
  v22 = objc_opt_new();
  v10 = FPUILoc(@"SELECT_VOLUMES_TO_MOUNT", v3, v4, v5, v6, v7, v8, v9, v21);
  [v22 setHeaderTitle:v10];

  [v22 setHeaderHeight:*MEMORY[0x277D76F30]];
  v11 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_allVolumeRepresentations;
  v12 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v12)
  {
    v13 = *v29;
    v14 = MEMORY[0x277D85DD0];
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        v17 = objc_opt_new();
        v27[0] = v14;
        v27[1] = 3221225472;
        v27[2] = __69__FPUIAuthenticationVolumeMountViewController_setupTableViewSections__block_invoke;
        v27[3] = &unk_278A513E8;
        v27[4] = v16;
        v27[5] = self;
        [v17 setCellCustomizationHandler:v27];
        objc_initWeak(&location, self);
        v24[0] = v14;
        v24[1] = 3221225472;
        v24[2] = __69__FPUIAuthenticationVolumeMountViewController_setupTableViewSections__block_invoke_2;
        v24[3] = &unk_278A51410;
        objc_copyWeak(&v25, &location);
        v24[4] = self;
        [v17 setSelectionHandler:v24];
        [v11 addObject:v17];
        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);

        ++v15;
      }

      while (v12 != v15);
      v12 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v12);
  }

  v34 = v22;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [(FPUIAuthenticationTableViewController *)self setSectionDescriptors:v18];

  v32 = &unk_284B1D608;
  v33 = v11;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  [(FPUIAuthenticationTableViewController *)self setRowDescriptors:v19];

  v20 = *MEMORY[0x277D85DE8];
}

void __69__FPUIAuthenticationVolumeMountViewController_setupTableViewSections__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) displayName];
  v7 = [v15 textLabel];
  [v7 setText:v6];

  v8 = *(*(a1 + 40) + 1080);
  v9 = [*(a1 + 32) identifier];
  v10 = [v8 containsObject:v9] ^ 1;

  v11 = [v15 textLabel];
  [v11 setEnabled:v10];

  [v15 setUserInteractionEnabled:v10];
  if ((v10 & 1) == 0)
  {
    [v15 setAccessoryType:3];
    v12 = objc_alloc(MEMORY[0x277D755E8]);
    v13 = [*(a1 + 40) tableCellCheckmarkImageDisabled];
    v14 = [v12 initWithImage:v13];
    [v15 setAccessoryView:v14];
  }

  if ([*(*(a1 + 40) + 1088) containsIndex:{objc_msgSend(v5, "row")}])
  {
    [v15 setAccessoryType:3];
  }
}

void __69__FPUIAuthenticationVolumeMountViewController_setupTableViewSections__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained tableView];
  v11 = [v5 cellForRowAtIndexPath:v3];

  v6 = [v3 row];
  v7 = [*(*(a1 + 32) + 1088) containsIndex:v6];
  v8 = *(*(a1 + 32) + 1088);
  if (v7)
  {
    [v8 removeIndex:v6];
    v9 = 0;
  }

  else
  {
    [v8 addIndex:v6];
    v9 = 3;
  }

  [v11 setAccessoryType:v9];
  v10 = objc_loadWeakRetained((a1 + 40));
  [v10 selectedVolumesIndexesDidChange];
}

- (id)tableCellCheckmarkImageDisabled
{
  v2 = tableCellCheckmarkImageDisabled_sTintedImage;
  if (!tableCellCheckmarkImageDisabled_sTintedImage)
  {
    v3 = [MEMORY[0x277D755B8] kitImageNamed:@"UIPreferencesBlueCheck.png"];
    v4 = [MEMORY[0x277D75348] colorWithRed:0.698039216 green:0.698039216 blue:0.698039216 alpha:1.0];
    v5 = [v3 _flatImageWithColor:v4];
    v6 = tableCellCheckmarkImageDisabled_sTintedImage;
    tableCellCheckmarkImageDisabled_sTintedImage = v5;

    v2 = tableCellCheckmarkImageDisabled_sTintedImage;
  }

  return v2;
}

- (void)selectedVolumesIndexesDidChange
{
  v3 = [(FPUIAuthenticationVolumeMountViewController *)self _canMoveToNextStep];

  [(FPUIAuthenticationTableViewController *)self setCanTransitionToNextStep:v3];
}

@end