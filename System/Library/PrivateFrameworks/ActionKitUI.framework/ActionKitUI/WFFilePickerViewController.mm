@interface WFFilePickerViewController
- (BOOL)caseInsensitiveArray:(id)array isEqualToArray:(id)toArray;
- (BOOL)fileListView:(id)view shouldDisplayCheckmarkForFile:(id)file;
- (WFFilePickerViewController)initWithPath:(id)path selectedFiles:(id)files service:(id)service mode:(int64_t)mode allowsMultipleSelection:(BOOL)selection pickCompletionHandler:(id)handler saveCompletionHandler:(id)completionHandler;
- (WFRemoteFileListView)fileListView;
- (WFRemoteFileStatusView)statusView;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)cancel;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)didDismissSearchController:(id)controller;
- (void)didPresentSearchController:(id)controller;
- (void)fileListView:(id)view didSelectFile:(id)file;
- (void)finish;
- (void)loadFiles;
- (void)loadView;
- (void)navigateToSubdirectoryAtPath:(id)path;
- (void)setHideSearchBar:(BOOL)bar;
- (void)setStatusViewToEmpty;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateStatusViewAnimated:(BOOL)animated;
- (void)updateToolbar;
- (void)viewWillLayoutSubviews;
@end

@implementation WFFilePickerViewController

- (WFRemoteFileStatusView)statusView
{
  WeakRetained = objc_loadWeakRetained(&self->_statusView);

  return WeakRetained;
}

- (WFRemoteFileListView)fileListView
{
  WeakRetained = objc_loadWeakRetained(&self->_fileListView);

  return WeakRetained;
}

- (void)didDismissSearchController:(id)controller
{
  searchBar = [controller searchBar];
  [searchBar setText:0];

  view = [(WFFilePickerViewController *)self view];
  [view setNeedsLayout];
}

- (void)didPresentSearchController:(id)controller
{
  view = [(WFFilePickerViewController *)self view];
  [view setNeedsLayout];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  searchBar = [controllerCopy searchBar];
  text = [searchBar text];
  searchResultsController = [controllerCopy searchResultsController];

  if ([text length])
  {
    service = [(WFFilePickerViewController *)self service];
    path = [(WFFilePickerViewController *)self path];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__WFFilePickerViewController_updateSearchResultsForSearchController___block_invoke;
    v11[3] = &unk_278C36848;
    v12 = service;
    v13 = searchBar;
    v14 = text;
    v15 = searchResultsController;
    v10 = service;
    [v10 searchFiles:v14 inPath:path completionHandler:v11];
  }

  else
  {
    [searchResultsController setFiles:0];
  }
}

void __69__WFFilePickerViewController_updateSearchResultsForSearchController___block_invoke(id *a1, void *a2)
{
  v3 = MEMORY[0x277CFC238];
  v4 = a1[4];
  v5 = a2;
  v6 = [v4 associatedAppDescriptor];
  v7 = [v3 locationWithAppDescriptor:v6];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[4];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v14 = v13;
  v15 = v12;
  WFContentCollectionFromStorageServiceResult();
}

void __69__WFFilePickerViewController_updateSearchResultsForSearchController___block_invoke_2(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__WFFilePickerViewController_updateSearchResultsForSearchController___block_invoke_3;
  v6[3] = &unk_278C367F8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = a2;
  [v5 getObjectRepresentations:v6 forClass:{objc_msgSend(v4, "objectRepresentationClass")}];
}

void __69__WFFilePickerViewController_updateSearchResultsForSearchController___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__WFFilePickerViewController_updateSearchResultsForSearchController___block_invoke_4;
  v5[3] = &unk_278C37690;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __69__WFFilePickerViewController_updateSearchResultsForSearchController___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) text];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    [v4 setFiles:v5];
  }
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  identifier = [configuration identifier];
  if (identifier)
  {
    v17 = identifier;
    if ([identifier conformsToProtocol:&unk_2850EAAD0])
    {
      v7 = [WFFilePickerViewController alloc];
      wfPath = [v17 wfPath];
      selectedFiles = [(WFFilePickerViewController *)self selectedFiles];
      service = [(WFFilePickerViewController *)self service];
      mode = [(WFFilePickerViewController *)self mode];
      allowsMultipleSelection = [(WFFilePickerViewController *)self allowsMultipleSelection];
      pickCompletionHandler = [(WFFilePickerViewController *)self pickCompletionHandler];
      saveCompletionHandler = [(WFFilePickerViewController *)self saveCompletionHandler];
      v15 = [(WFFilePickerViewController *)v7 initWithPath:wfPath selectedFiles:selectedFiles service:service mode:mode allowsMultipleSelection:allowsMultipleSelection pickCompletionHandler:pickCompletionHandler saveCompletionHandler:saveCompletionHandler];

      navigationController = [(WFFilePickerViewController *)self navigationController];
      [navigationController pushViewController:v15 animated:0];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  fileListView = [(WFFilePickerViewController *)self fileListView];
  v8 = [fileListView fileAtPoint:{x, y}];
  v9 = MEMORY[0x277D753B0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__WFFilePickerViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v13[3] = &unk_278C367B0;
  v14 = v8;
  selfCopy = self;
  v10 = v8;
  v11 = [v9 configurationWithIdentifier:v10 previewProvider:v13 actionProvider:&__block_literal_global_237];

  return v11;
}

WFFilePickerViewController *__84__WFFilePickerViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) wfIsDirectory])
  {
    v2 = [WFFilePickerViewController alloc];
    v3 = [*(a1 + 32) wfPath];
    v4 = [*(a1 + 40) selectedFiles];
    v5 = [*(a1 + 40) service];
    v6 = [*(a1 + 40) mode];
    v7 = [*(a1 + 40) allowsMultipleSelection];
    v8 = [*(a1 + 40) pickCompletionHandler];
    v9 = [*(a1 + 40) saveCompletionHandler];
    v10 = [(WFFilePickerViewController *)v2 initWithPath:v3 selectedFiles:v4 service:v5 mode:v6 allowsMultipleSelection:v7 pickCompletionHandler:v8 saveCompletionHandler:v9];

    [(WFFilePickerViewController *)v10 setHideSearchBar:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)fileListView:(id)view shouldDisplayCheckmarkForFile:(id)file
{
  v18 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selectedFiles = [(WFFilePickerViewController *)self selectedFiles];
  v7 = [selectedFiles copy];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v13 + 1) + 8 * i) wfIsEqualToFile:fileCopy])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)fileListView:(id)view didSelectFile:(id)file
{
  v25 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  fileCopy = file;
  if ([fileCopy wfIsDirectory])
  {
    searchController = [(WFFilePickerViewController *)self searchController];
    [searchController setActive:0];

    wfPath = [fileCopy wfPath];
    [(WFFilePickerViewController *)self navigateToSubdirectoryAtPath:wfPath];
  }

  else if ([(WFFilePickerViewController *)self mode]!= 1)
  {
    if ([(WFFilePickerViewController *)self allowsMultipleSelection])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      selectedFiles = [(WFFilePickerViewController *)self selectedFiles];
      selectedFiles3 = [selectedFiles copy];

      v12 = [selectedFiles3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(selectedFiles3);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            if ([v16 wfIsEqualToFile:fileCopy])
            {
              selectedFiles2 = [(WFFilePickerViewController *)self selectedFiles];
              [selectedFiles2 removeObject:v16];

              goto LABEL_16;
            }
          }

          v13 = [selectedFiles3 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      selectedFiles3 = [(WFFilePickerViewController *)self selectedFiles];
      [selectedFiles3 addObject:fileCopy];
LABEL_16:

      [viewCopy updateCheckmarkForFile:fileCopy];
      [(WFFilePickerViewController *)self updateToolbar];
    }

    else
    {
      selectedFiles4 = [(WFFilePickerViewController *)self selectedFiles];
      [selectedFiles4 addObject:fileCopy];

      [(WFFilePickerViewController *)self finish];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)navigateToSubdirectoryAtPath:(id)path
{
  pathCopy = path;
  navigationController = [(WFFilePickerViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  if (!navigationController)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFilePickerViewController.m" lineNumber:308 description:@"View controller must be part of a navigation stack"];
  }

  path = [topViewController path];
  pathComponents = [path pathComponents];
  stringByStandardizingPath = [pathCopy stringByStandardizingPath];
  pathComponents2 = [stringByStandardizingPath pathComponents];

  v11 = [pathComponents count];
  if (v11 <= [pathComponents2 count])
  {
    v12 = [pathComponents2 subarrayWithRange:{0, objc_msgSend(pathComponents, "count")}];
    v13 = [(WFFilePickerViewController *)self caseInsensitiveArray:v12 isEqualToArray:pathComponents];

    if (v13)
    {
      v32 = path;
      v33 = topViewController;
      v34 = navigationController;
      v14 = objc_opt_new();
      v31 = pathComponents;
      v15 = [pathComponents count];
      if (v15 < [pathComponents2 count])
      {
        v36 = v14;
        do
        {
          v16 = MEMORY[0x277CCACA8];
          v17 = [pathComponents2 subarrayWithRange:{0, ++v15}];
          v37 = [v16 pathWithComponents:v17];

          v18 = [WFFilePickerViewController alloc];
          selectedFiles = [(WFFilePickerViewController *)self selectedFiles];
          service = [(WFFilePickerViewController *)self service];
          mode = [(WFFilePickerViewController *)self mode];
          allowsMultipleSelection = [(WFFilePickerViewController *)self allowsMultipleSelection];
          pickCompletionHandler = [(WFFilePickerViewController *)self pickCompletionHandler];
          [(WFFilePickerViewController *)self saveCompletionHandler];
          selfCopy = self;
          v26 = v25 = pathComponents2;
          v27 = [(WFFilePickerViewController *)v18 initWithPath:v37 selectedFiles:selectedFiles service:service mode:mode allowsMultipleSelection:allowsMultipleSelection pickCompletionHandler:pickCompletionHandler saveCompletionHandler:v26];

          pathComponents2 = v25;
          self = selfCopy;

          v14 = v36;
          [v36 addObject:v27];
        }

        while (v15 < [pathComponents2 count]);
      }

      if ([v14 count] == 1)
      {
        firstObject = [v14 firstObject];
        navigationController = v34;
        [v34 pushViewController:firstObject animated:1];
      }

      else
      {
        navigationController = v34;
        firstObject = [v34 viewControllers];
        v29 = [firstObject arrayByAddingObjectsFromArray:v14];
        [v34 setViewControllers:v29 animated:0];
      }

      path = v32;
      topViewController = v33;

      pathComponents = v31;
    }
  }
}

- (BOOL)caseInsensitiveArray:(id)array isEqualToArray:(id)toArray
{
  arrayCopy = array;
  toArrayCopy = toArray;
  v7 = [arrayCopy count];
  if (v7 == [toArrayCopy count])
  {
    if ([arrayCopy count])
    {
      v8 = 0;
      while (1)
      {
        v9 = [arrayCopy objectAtIndex:v8];
        v10 = [toArrayCopy objectAtIndex:v8];
        v11 = [v9 localizedStandardCompare:v10];
        v12 = v11 == 0;

        if (v11)
        {
          break;
        }

        if (++v8 >= [arrayCopy count])
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)updateToolbar
{
  v18[3] = *MEMORY[0x277D85DE8];
  mode = [(WFFilePickerViewController *)self mode];
  if (mode || [(WFFilePickerViewController *)self allowsMultipleSelection])
  {
    navigationController = [(WFFilePickerViewController *)self navigationController];
    isToolbarHidden = [navigationController isToolbarHidden];

    if (isToolbarHidden)
    {
      navigationController2 = [(WFFilePickerViewController *)self navigationController];
      [navigationController2 setToolbarHidden:0 animated:0];
    }

    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:self action:0];
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:0 style:0 target:self action:sel_finish];
    v9 = [MEMORY[0x277D75348] colorWithRed:0.063 green:0.478 blue:0.969 alpha:1.0];
    [v8 setTintColor:v9];

    if (mode)
    {
      v10 = @"Save Here";
    }

    else
    {
      selectedFiles = [(WFFilePickerViewController *)self selectedFiles];
      v12 = [selectedFiles count];

      [v8 setEnabled:v12 != 0];
      if (v12 != 1)
      {
        v16 = MEMORY[0x277CCACA8];
        v13 = WFLocalizedString(@"Get Selected Files (%lu)");
        v17 = [v16 localizedStringWithFormat:v13, v12];
        [v8 setTitle:v17];

        goto LABEL_10;
      }

      v10 = @"Get Selected File (1)";
    }

    v13 = WFLocalizedString(v10);
    [v8 setTitle:v13];
LABEL_10:

    v18[0] = v7;
    v18[1] = v8;
    v18[2] = v7;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    [(WFFilePickerViewController *)self setToolbarItems:v14 animated:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setStatusViewToEmpty
{
  v3 = [(WFFilePickerViewController *)self mode]== 0;
  statusView = [(WFFilePickerViewController *)self statusView];
  [statusView setEmptyWithLabel:v3];
}

- (void)updateStatusViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  error = [(WFFilePickerViewController *)self error];
  files = [(WFFilePickerViewController *)self files];
  statusView = [(WFFilePickerViewController *)self statusView];
  fileListView = [(WFFilePickerViewController *)self fileListView];
  v9 = [files count];
  v10 = v9 == 0;
  isHidden = [statusView isHidden];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__WFFilePickerViewController_updateStatusViewAnimated___block_invoke;
  aBlock[3] = &unk_278C37690;
  v12 = error;
  v28 = v12;
  v13 = statusView;
  v29 = v13;
  selfCopy = self;
  v14 = files;
  v31 = v14;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (((v9 != 0) ^ isHidden))
  {
    if (animatedCopy)
    {
      v17 = MEMORY[0x277D75D18];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __55__WFFilePickerViewController_updateStatusViewAnimated___block_invoke_2;
      v24[3] = &unk_278C375A0;
      v25 = v13;
      v26 = fileListView;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __55__WFFilePickerViewController_updateStatusViewAnimated___block_invoke_3;
      v19[3] = &unk_278C36788;
      v20 = v25;
      v23 = v9 == 0;
      v21 = v26;
      v22 = v16;
      [v17 animateWithDuration:v24 animations:v19 completion:0.15];
    }

    else
    {
      (*(v15 + 2))(v15);
      [v13 setAlpha:v10];
      v18 = 0.0;
      if (v9)
      {
        v18 = 1.0;
      }

      [fileListView setAlpha:v18];
      [v13 setHidden:v9 != 0];
      [fileListView setHidden:v10];
    }
  }

  else
  {
    (*(v15 + 2))(v15);
  }
}

uint64_t __55__WFFilePickerViewController_updateStatusViewAnimated___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    return [v2 setError:?];
  }

  else if ([*(a1 + 48) loading])
  {
    v4 = *(a1 + 40);

    return [v4 setLoading];
  }

  else
  {
    result = [*(a1 + 56) count];
    if (!result)
    {
      v5 = *(a1 + 48);

      return [v5 setStatusViewToEmpty];
    }
  }

  return result;
}

uint64_t __55__WFFilePickerViewController_updateStatusViewAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

void __55__WFFilePickerViewController_updateStatusViewAnimated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setHidden:(*(a1 + 56) & 1) == 0];
  [*(a1 + 40) setHidden:*(a1 + 56)];
  (*(*(a1 + 48) + 16))();
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__WFFilePickerViewController_updateStatusViewAnimated___block_invoke_4;
  v3[3] = &unk_278C37408;
  v4 = *(a1 + 32);
  v6 = *(a1 + 56);
  v5 = *(a1 + 40);
  [v2 animateWithDuration:v3 animations:0.15];
}

uint64_t __55__WFFilePickerViewController_updateStatusViewAnimated___block_invoke_4(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 48);
  [*(a1 + 32) setAlpha:*&a2];
  v3 = (*(a1 + 48) ^ 1u);
  v4 = *(a1 + 40);

  return [v4 setAlpha:v3];
}

- (void)loadFiles
{
  if (![(WFFilePickerViewController *)self loading])
  {
    files = [(WFFilePickerViewController *)self files];

    if (!files)
    {
      [(WFFilePickerViewController *)self setLoading:1];
      [(WFFilePickerViewController *)self setError:0];
      [(WFFilePickerViewController *)self updateStatusViewAnimated:0];
      service = [(WFFilePickerViewController *)self service];
      path = [(WFFilePickerViewController *)self path];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __39__WFFilePickerViewController_loadFiles__block_invoke;
      v7[3] = &unk_278C37008;
      v8 = service;
      selfCopy = self;
      v6 = service;
      [v6 retrieveFilesAtPath:path options:1 progress:0 completionHandler:v7];
    }
  }
}

void __39__WFFilePickerViewController_loadFiles__block_invoke(int8x16_t *a1, void *a2)
{
  v3 = MEMORY[0x277CFC238];
  v4 = a1[2].i64[0];
  v5 = a2;
  v6 = [v4 associatedAppDescriptor];
  v7 = [v3 locationWithAppDescriptor:v6];
  v9 = a1[2];
  v8 = v9.i64[0];
  WFContentCollectionFromStorageServiceResult();
}

void __39__WFFilePickerViewController_loadFiles__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__WFFilePickerViewController_loadFiles__block_invoke_4;
    v9[3] = &unk_278C36738;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    [v5 getObjectRepresentations:v9 forClass:{objc_msgSend(v8, "objectRepresentationClass")}];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__WFFilePickerViewController_loadFiles__block_invoke_3;
    block[3] = &unk_278C375A0;
    block[4] = *(a1 + 32);
    v11 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __39__WFFilePickerViewController_loadFiles__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setLoading:0];
  [*(a1 + 32) setError:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateStatusViewAnimated:0];
}

void __39__WFFilePickerViewController_loadFiles__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([*(a1 + 32) mode] == 1)
  {
    v8 = [v6 if_objectsPassingTest:&__block_literal_global_1586];

    v6 = v8;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WFFilePickerViewController_loadFiles__block_invoke_6;
  block[3] = &unk_278C37058;
  block[4] = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __39__WFFilePickerViewController_loadFiles__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setLoading:0];
  [*(a1 + 32) setFiles:*(a1 + 40)];
  [*(a1 + 32) setError:*(a1 + 48)];
  v2 = [*(a1 + 32) fileListView];
  [v2 setFiles:*(a1 + 40)];

  v3 = [*(a1 + 32) view];
  [v3 setNeedsLayout];

  v4 = *(a1 + 32);

  return [v4 updateStatusViewAnimated:1];
}

- (void)finish
{
  if ([(WFFilePickerViewController *)self mode])
  {
    saveCompletionHandler = [(WFFilePickerViewController *)self saveCompletionHandler];
    if (!saveCompletionHandler)
    {
      goto LABEL_7;
    }

    path = [(WFFilePickerViewController *)self path];
    (saveCompletionHandler)[2](saveCompletionHandler, path);
  }

  else
  {
    saveCompletionHandler = [(WFFilePickerViewController *)self pickCompletionHandler];
    if (!saveCompletionHandler)
    {
      goto LABEL_7;
    }

    path = [(WFFilePickerViewController *)self selectedFiles];
    array = [path array];
    (saveCompletionHandler)[2](saveCompletionHandler, array);
  }

LABEL_7:

  [(WFFilePickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)cancel
{
  if ([(WFFilePickerViewController *)self mode])
  {
    [(WFFilePickerViewController *)self saveCompletionHandler];
  }

  else
  {
    [(WFFilePickerViewController *)self pickCompletionHandler];
  }
  v3 = ;
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  [(WFFilePickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)setHideSearchBar:(BOOL)bar
{
  hideSearchBar = self->_hideSearchBar;
  self->_hideSearchBar = bar;
  if (hideSearchBar != bar && [(WFFilePickerViewController *)self isViewLoaded])
  {
    view = [(WFFilePickerViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)viewWillLayoutSubviews
{
  v27.receiver = self;
  v27.super_class = WFFilePickerViewController;
  [(WFFilePickerViewController *)&v27 viewWillLayoutSubviews];
  hideSearchBar = [(WFFilePickerViewController *)self hideSearchBar];
  view = [(WFFilePickerViewController *)self view];
  [view safeAreaInsets];
  v6 = v5;

  searchController = [(WFFilePickerViewController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar setHidden:hideSearchBar];
  [searchBar frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  superview = [searchBar superview];
  view2 = [(WFFilePickerViewController *)self view];
  Height = 0.0;
  if (![superview isEqual:view2])
  {
    v6 = 0.0;
  }

  v18 = MEMORY[0x277D75D18];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__WFFilePickerViewController_viewWillLayoutSubviews__block_invoke;
  v21[3] = &unk_278C366F0;
  v22 = searchBar;
  v23 = v10;
  v24 = v6;
  v25 = v12;
  v26 = v14;
  v19 = searchBar;
  [v18 performWithoutAnimation:v21];
  if (!hideSearchBar)
  {
    v28.origin.x = v10;
    v28.origin.y = v6;
    v28.size.width = v12;
    v28.size.height = v14;
    Height = CGRectGetHeight(v28);
  }

  fileListView = [(WFFilePickerViewController *)self fileListView];
  [fileListView setContentInset:{Height, 0.0, 0.0, 0.0}];
  [fileListView setVerticalScrollIndicatorInsets:{Height, 0.0, 0.0, 0.0}];
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = WFFilePickerViewController;
  [(WFFilePickerViewController *)&v21 loadView];
  view = [(WFFilePickerViewController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  files = [(WFFilePickerViewController *)self files];
  v14 = [WFRemoteFileListView alloc];
  currentCollation = [MEMORY[0x277D75700] currentCollation];
  v16 = [(WFRemoteFileListView *)v14 initWithFrame:currentCollation collation:v6, v8, v10, v12];

  [(WFRemoteFileListView *)v16 setAutoresizingMask:18];
  [(WFRemoteFileListView *)v16 setDelegate:self];
  [(WFRemoteFileListView *)v16 setHidden:1];
  [(WFRemoteFileListView *)v16 setFiles:files];
  [view addSubview:v16];
  objc_storeWeak(&self->_fileListView, v16);
  v17 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:self];
  [(WFRemoteFileListView *)v16 addInteraction:v17];
  v18 = [[WFRemoteFileStatusView alloc] initWithFrame:v6, v8, v10, v12];
  [(WFRemoteFileStatusView *)v18 setDelegate:self];
  [(WFRemoteFileStatusView *)v18 setAutoresizingMask:18];
  [view addSubview:v18];
  objc_storeWeak(&self->_statusView, v18);
  searchController = [(WFFilePickerViewController *)self searchController];
  searchBar = [searchController searchBar];

  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  [searchBar setFrame:{0.0, 0.0, CGRectGetWidth(v22), 56.0}];
  [searchBar setAutoresizingMask:2];
  [view addSubview:searchBar];
  [(WFFilePickerViewController *)self loadFiles];
  [(WFFilePickerViewController *)self updateStatusViewAnimated:0];
  [(WFFilePickerViewController *)self updateToolbar];
}

- (WFFilePickerViewController)initWithPath:(id)path selectedFiles:(id)files service:(id)service mode:(int64_t)mode allowsMultipleSelection:(BOOL)selection pickCompletionHandler:(id)handler saveCompletionHandler:(id)completionHandler
{
  pathCopy = path;
  filesCopy = files;
  serviceCopy = service;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (!serviceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFilePickerViewController.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"service"}];
  }

  v38.receiver = self;
  v38.super_class = WFFilePickerViewController;
  v21 = [(WFFilePickerViewController *)&v38 initWithNibName:0 bundle:0];
  v22 = v21;
  if (v21)
  {
    if (pathCopy)
    {
      v23 = pathCopy;
    }

    else
    {
      v23 = @"/";
    }

    objc_storeStrong(&v21->_path, v23);
    objc_storeStrong(&v22->_service, service);
    v22->_mode = mode;
    v22->_allowsMultipleSelection = selection;
    v24 = filesCopy;
    if (!filesCopy)
    {
      v24 = objc_opt_new();
    }

    objc_storeStrong(&v22->_selectedFiles, v24);
    if (!filesCopy)
    {
    }

    v25 = _Block_copy(handlerCopy);
    pickCompletionHandler = v22->_pickCompletionHandler;
    v22->_pickCompletionHandler = v25;

    v27 = _Block_copy(completionHandlerCopy);
    saveCompletionHandler = v22->_saveCompletionHandler;
    v22->_saveCompletionHandler = v27;

    v29 = [[WFFilePickerResultsViewController alloc] initWithFileListDelegate:v22];
    v30 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:v29];
    [v30 setSearchResultsUpdater:v22];
    objc_storeStrong(&v22->_searchController, v30);
    if ([(NSString *)v22->_path isEqualToString:@"/"])
    {
      service = [(WFFilePickerViewController *)v22 service];
      [objc_opt_class() serviceName];
    }

    else
    {
      service = [(WFFilePickerViewController *)v22 path];
      [service lastPathComponent];
    }
    v32 = ;
    [(WFFilePickerViewController *)v22 setTitle:v32];

    v33 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v22 action:sel_cancel];
    navigationItem = [(WFFilePickerViewController *)v22 navigationItem];
    [navigationItem setRightBarButtonItem:v33];

    v35 = v22;
  }

  return v22;
}

@end