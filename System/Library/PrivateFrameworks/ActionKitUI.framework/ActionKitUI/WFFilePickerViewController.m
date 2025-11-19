@interface WFFilePickerViewController
- (BOOL)caseInsensitiveArray:(id)a3 isEqualToArray:(id)a4;
- (BOOL)fileListView:(id)a3 shouldDisplayCheckmarkForFile:(id)a4;
- (WFFilePickerViewController)initWithPath:(id)a3 selectedFiles:(id)a4 service:(id)a5 mode:(int64_t)a6 allowsMultipleSelection:(BOOL)a7 pickCompletionHandler:(id)a8 saveCompletionHandler:(id)a9;
- (WFRemoteFileListView)fileListView;
- (WFRemoteFileStatusView)statusView;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)cancel;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)didDismissSearchController:(id)a3;
- (void)didPresentSearchController:(id)a3;
- (void)fileListView:(id)a3 didSelectFile:(id)a4;
- (void)finish;
- (void)loadFiles;
- (void)loadView;
- (void)navigateToSubdirectoryAtPath:(id)a3;
- (void)setHideSearchBar:(BOOL)a3;
- (void)setStatusViewToEmpty;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateStatusViewAnimated:(BOOL)a3;
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

- (void)didDismissSearchController:(id)a3
{
  v4 = [a3 searchBar];
  [v4 setText:0];

  v5 = [(WFFilePickerViewController *)self view];
  [v5 setNeedsLayout];
}

- (void)didPresentSearchController:(id)a3
{
  v3 = [(WFFilePickerViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = [v4 searchBar];
  v6 = [v5 text];
  v7 = [v4 searchResultsController];

  if ([v6 length])
  {
    v8 = [(WFFilePickerViewController *)self service];
    v9 = [(WFFilePickerViewController *)self path];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__WFFilePickerViewController_updateSearchResultsForSearchController___block_invoke;
    v11[3] = &unk_278C36848;
    v12 = v8;
    v13 = v5;
    v14 = v6;
    v15 = v7;
    v10 = v8;
    [v10 searchFiles:v14 inPath:v9 completionHandler:v11];
  }

  else
  {
    [v7 setFiles:0];
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

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = [a4 identifier];
  if (v6)
  {
    v17 = v6;
    if ([v6 conformsToProtocol:&unk_2850EAAD0])
    {
      v7 = [WFFilePickerViewController alloc];
      v8 = [v17 wfPath];
      v9 = [(WFFilePickerViewController *)self selectedFiles];
      v10 = [(WFFilePickerViewController *)self service];
      v11 = [(WFFilePickerViewController *)self mode];
      v12 = [(WFFilePickerViewController *)self allowsMultipleSelection];
      v13 = [(WFFilePickerViewController *)self pickCompletionHandler];
      v14 = [(WFFilePickerViewController *)self saveCompletionHandler];
      v15 = [(WFFilePickerViewController *)v7 initWithPath:v8 selectedFiles:v9 service:v10 mode:v11 allowsMultipleSelection:v12 pickCompletionHandler:v13 saveCompletionHandler:v14];

      v16 = [(WFFilePickerViewController *)self navigationController];
      [v16 pushViewController:v15 animated:0];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(WFFilePickerViewController *)self fileListView];
  v8 = [v7 fileAtPoint:{x, y}];
  v9 = MEMORY[0x277D753B0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__WFFilePickerViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v13[3] = &unk_278C367B0;
  v14 = v8;
  v15 = self;
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

- (BOOL)fileListView:(id)a3 shouldDisplayCheckmarkForFile:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(WFFilePickerViewController *)self selectedFiles];
  v7 = [v6 copy];

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

        if ([*(*(&v13 + 1) + 8 * i) wfIsEqualToFile:v5])
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

- (void)fileListView:(id)a3 didSelectFile:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 wfIsDirectory])
  {
    v8 = [(WFFilePickerViewController *)self searchController];
    [v8 setActive:0];

    v9 = [v7 wfPath];
    [(WFFilePickerViewController *)self navigateToSubdirectoryAtPath:v9];
  }

  else if ([(WFFilePickerViewController *)self mode]!= 1)
  {
    if ([(WFFilePickerViewController *)self allowsMultipleSelection])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = [(WFFilePickerViewController *)self selectedFiles];
      v11 = [v10 copy];

      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            if ([v16 wfIsEqualToFile:v7])
            {
              v18 = [(WFFilePickerViewController *)self selectedFiles];
              [v18 removeObject:v16];

              goto LABEL_16;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v11 = [(WFFilePickerViewController *)self selectedFiles];
      [v11 addObject:v7];
LABEL_16:

      [v6 updateCheckmarkForFile:v7];
      [(WFFilePickerViewController *)self updateToolbar];
    }

    else
    {
      v17 = [(WFFilePickerViewController *)self selectedFiles];
      [v17 addObject:v7];

      [(WFFilePickerViewController *)self finish];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)navigateToSubdirectoryAtPath:(id)a3
{
  v35 = a3;
  v5 = [(WFFilePickerViewController *)self navigationController];
  v6 = [v5 topViewController];
  if (!v5)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"WFFilePickerViewController.m" lineNumber:308 description:@"View controller must be part of a navigation stack"];
  }

  v7 = [v6 path];
  v8 = [v7 pathComponents];
  v9 = [v35 stringByStandardizingPath];
  v10 = [v9 pathComponents];

  v11 = [v8 count];
  if (v11 <= [v10 count])
  {
    v12 = [v10 subarrayWithRange:{0, objc_msgSend(v8, "count")}];
    v13 = [(WFFilePickerViewController *)self caseInsensitiveArray:v12 isEqualToArray:v8];

    if (v13)
    {
      v32 = v7;
      v33 = v6;
      v34 = v5;
      v14 = objc_opt_new();
      v31 = v8;
      v15 = [v8 count];
      if (v15 < [v10 count])
      {
        v36 = v14;
        do
        {
          v16 = MEMORY[0x277CCACA8];
          v17 = [v10 subarrayWithRange:{0, ++v15}];
          v37 = [v16 pathWithComponents:v17];

          v18 = [WFFilePickerViewController alloc];
          v19 = [(WFFilePickerViewController *)self selectedFiles];
          v20 = [(WFFilePickerViewController *)self service];
          v21 = [(WFFilePickerViewController *)self mode];
          v22 = [(WFFilePickerViewController *)self allowsMultipleSelection];
          v23 = [(WFFilePickerViewController *)self pickCompletionHandler];
          [(WFFilePickerViewController *)self saveCompletionHandler];
          v24 = self;
          v26 = v25 = v10;
          v27 = [(WFFilePickerViewController *)v18 initWithPath:v37 selectedFiles:v19 service:v20 mode:v21 allowsMultipleSelection:v22 pickCompletionHandler:v23 saveCompletionHandler:v26];

          v10 = v25;
          self = v24;

          v14 = v36;
          [v36 addObject:v27];
        }

        while (v15 < [v10 count]);
      }

      if ([v14 count] == 1)
      {
        v28 = [v14 firstObject];
        v5 = v34;
        [v34 pushViewController:v28 animated:1];
      }

      else
      {
        v5 = v34;
        v28 = [v34 viewControllers];
        v29 = [v28 arrayByAddingObjectsFromArray:v14];
        [v34 setViewControllers:v29 animated:0];
      }

      v7 = v32;
      v6 = v33;

      v8 = v31;
    }
  }
}

- (BOOL)caseInsensitiveArray:(id)a3 isEqualToArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    if ([v5 count])
    {
      v8 = 0;
      while (1)
      {
        v9 = [v5 objectAtIndex:v8];
        v10 = [v6 objectAtIndex:v8];
        v11 = [v9 localizedStandardCompare:v10];
        v12 = v11 == 0;

        if (v11)
        {
          break;
        }

        if (++v8 >= [v5 count])
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
  v3 = [(WFFilePickerViewController *)self mode];
  if (v3 || [(WFFilePickerViewController *)self allowsMultipleSelection])
  {
    v4 = [(WFFilePickerViewController *)self navigationController];
    v5 = [v4 isToolbarHidden];

    if (v5)
    {
      v6 = [(WFFilePickerViewController *)self navigationController];
      [v6 setToolbarHidden:0 animated:0];
    }

    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:self action:0];
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:0 style:0 target:self action:sel_finish];
    v9 = [MEMORY[0x277D75348] colorWithRed:0.063 green:0.478 blue:0.969 alpha:1.0];
    [v8 setTintColor:v9];

    if (v3)
    {
      v10 = @"Save Here";
    }

    else
    {
      v11 = [(WFFilePickerViewController *)self selectedFiles];
      v12 = [v11 count];

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
  v4 = [(WFFilePickerViewController *)self statusView];
  [v4 setEmptyWithLabel:v3];
}

- (void)updateStatusViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFFilePickerViewController *)self error];
  v6 = [(WFFilePickerViewController *)self files];
  v7 = [(WFFilePickerViewController *)self statusView];
  v8 = [(WFFilePickerViewController *)self fileListView];
  v9 = [v6 count];
  v10 = v9 == 0;
  v11 = [v7 isHidden];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__WFFilePickerViewController_updateStatusViewAnimated___block_invoke;
  aBlock[3] = &unk_278C37690;
  v12 = v5;
  v28 = v12;
  v13 = v7;
  v29 = v13;
  v30 = self;
  v14 = v6;
  v31 = v14;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (((v9 != 0) ^ v11))
  {
    if (v3)
    {
      v17 = MEMORY[0x277D75D18];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __55__WFFilePickerViewController_updateStatusViewAnimated___block_invoke_2;
      v24[3] = &unk_278C375A0;
      v25 = v13;
      v26 = v8;
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

      [v8 setAlpha:v18];
      [v13 setHidden:v9 != 0];
      [v8 setHidden:v10];
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
    v3 = [(WFFilePickerViewController *)self files];

    if (!v3)
    {
      [(WFFilePickerViewController *)self setLoading:1];
      [(WFFilePickerViewController *)self setError:0];
      [(WFFilePickerViewController *)self updateStatusViewAnimated:0];
      v4 = [(WFFilePickerViewController *)self service];
      v5 = [(WFFilePickerViewController *)self path];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __39__WFFilePickerViewController_loadFiles__block_invoke;
      v7[3] = &unk_278C37008;
      v8 = v4;
      v9 = self;
      v6 = v4;
      [v6 retrieveFilesAtPath:v5 options:1 progress:0 completionHandler:v7];
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
    v3 = [(WFFilePickerViewController *)self saveCompletionHandler];
    if (!v3)
    {
      goto LABEL_7;
    }

    v4 = [(WFFilePickerViewController *)self path];
    (v3)[2](v3, v4);
  }

  else
  {
    v3 = [(WFFilePickerViewController *)self pickCompletionHandler];
    if (!v3)
    {
      goto LABEL_7;
    }

    v4 = [(WFFilePickerViewController *)self selectedFiles];
    v5 = [v4 array];
    (v3)[2](v3, v5);
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

- (void)setHideSearchBar:(BOOL)a3
{
  hideSearchBar = self->_hideSearchBar;
  self->_hideSearchBar = a3;
  if (hideSearchBar != a3 && [(WFFilePickerViewController *)self isViewLoaded])
  {
    v5 = [(WFFilePickerViewController *)self view];
    [v5 setNeedsLayout];
  }
}

- (void)viewWillLayoutSubviews
{
  v27.receiver = self;
  v27.super_class = WFFilePickerViewController;
  [(WFFilePickerViewController *)&v27 viewWillLayoutSubviews];
  v3 = [(WFFilePickerViewController *)self hideSearchBar];
  v4 = [(WFFilePickerViewController *)self view];
  [v4 safeAreaInsets];
  v6 = v5;

  v7 = [(WFFilePickerViewController *)self searchController];
  v8 = [v7 searchBar];
  [v8 setHidden:v3];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v8 superview];
  v16 = [(WFFilePickerViewController *)self view];
  Height = 0.0;
  if (![v15 isEqual:v16])
  {
    v6 = 0.0;
  }

  v18 = MEMORY[0x277D75D18];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__WFFilePickerViewController_viewWillLayoutSubviews__block_invoke;
  v21[3] = &unk_278C366F0;
  v22 = v8;
  v23 = v10;
  v24 = v6;
  v25 = v12;
  v26 = v14;
  v19 = v8;
  [v18 performWithoutAnimation:v21];
  if (!v3)
  {
    v28.origin.x = v10;
    v28.origin.y = v6;
    v28.size.width = v12;
    v28.size.height = v14;
    Height = CGRectGetHeight(v28);
  }

  v20 = [(WFFilePickerViewController *)self fileListView];
  [v20 setContentInset:{Height, 0.0, 0.0, 0.0}];
  [v20 setVerticalScrollIndicatorInsets:{Height, 0.0, 0.0, 0.0}];
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = WFFilePickerViewController;
  [(WFFilePickerViewController *)&v21 loadView];
  v3 = [(WFFilePickerViewController *)self view];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(WFFilePickerViewController *)self files];
  v14 = [WFRemoteFileListView alloc];
  v15 = [MEMORY[0x277D75700] currentCollation];
  v16 = [(WFRemoteFileListView *)v14 initWithFrame:v15 collation:v6, v8, v10, v12];

  [(WFRemoteFileListView *)v16 setAutoresizingMask:18];
  [(WFRemoteFileListView *)v16 setDelegate:self];
  [(WFRemoteFileListView *)v16 setHidden:1];
  [(WFRemoteFileListView *)v16 setFiles:v13];
  [v3 addSubview:v16];
  objc_storeWeak(&self->_fileListView, v16);
  v17 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:self];
  [(WFRemoteFileListView *)v16 addInteraction:v17];
  v18 = [[WFRemoteFileStatusView alloc] initWithFrame:v6, v8, v10, v12];
  [(WFRemoteFileStatusView *)v18 setDelegate:self];
  [(WFRemoteFileStatusView *)v18 setAutoresizingMask:18];
  [v3 addSubview:v18];
  objc_storeWeak(&self->_statusView, v18);
  v19 = [(WFFilePickerViewController *)self searchController];
  v20 = [v19 searchBar];

  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  [v20 setFrame:{0.0, 0.0, CGRectGetWidth(v22), 56.0}];
  [v20 setAutoresizingMask:2];
  [v3 addSubview:v20];
  [(WFFilePickerViewController *)self loadFiles];
  [(WFFilePickerViewController *)self updateStatusViewAnimated:0];
  [(WFFilePickerViewController *)self updateToolbar];
}

- (WFFilePickerViewController)initWithPath:(id)a3 selectedFiles:(id)a4 service:(id)a5 mode:(int64_t)a6 allowsMultipleSelection:(BOOL)a7 pickCompletionHandler:(id)a8 saveCompletionHandler:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  if (!v18)
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"WFFilePickerViewController.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"service"}];
  }

  v38.receiver = self;
  v38.super_class = WFFilePickerViewController;
  v21 = [(WFFilePickerViewController *)&v38 initWithNibName:0 bundle:0];
  v22 = v21;
  if (v21)
  {
    if (v16)
    {
      v23 = v16;
    }

    else
    {
      v23 = @"/";
    }

    objc_storeStrong(&v21->_path, v23);
    objc_storeStrong(&v22->_service, a5);
    v22->_mode = a6;
    v22->_allowsMultipleSelection = a7;
    v24 = v17;
    if (!v17)
    {
      v24 = objc_opt_new();
    }

    objc_storeStrong(&v22->_selectedFiles, v24);
    if (!v17)
    {
    }

    v25 = _Block_copy(v19);
    pickCompletionHandler = v22->_pickCompletionHandler;
    v22->_pickCompletionHandler = v25;

    v27 = _Block_copy(v20);
    saveCompletionHandler = v22->_saveCompletionHandler;
    v22->_saveCompletionHandler = v27;

    v29 = [[WFFilePickerResultsViewController alloc] initWithFileListDelegate:v22];
    v30 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:v29];
    [v30 setSearchResultsUpdater:v22];
    objc_storeStrong(&v22->_searchController, v30);
    if ([(NSString *)v22->_path isEqualToString:@"/"])
    {
      v31 = [(WFFilePickerViewController *)v22 service];
      [objc_opt_class() serviceName];
    }

    else
    {
      v31 = [(WFFilePickerViewController *)v22 path];
      [v31 lastPathComponent];
    }
    v32 = ;
    [(WFFilePickerViewController *)v22 setTitle:v32];

    v33 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v22 action:sel_cancel];
    v34 = [(WFFilePickerViewController *)v22 navigationItem];
    [v34 setRightBarButtonItem:v33];

    v35 = v22;
  }

  return v22;
}

@end