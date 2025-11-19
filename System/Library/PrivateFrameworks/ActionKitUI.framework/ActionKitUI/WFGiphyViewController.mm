@interface WFGiphyViewController
- (UICollectionView)collectionView;
- (UIView)emptyListView;
- (WFGiphyViewController)initWithQuery:(id)a3 selectMultiple:(BOOL)a4;
- (WFGiphyViewControllerDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)cancel;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)done;
- (void)loadView;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)setObjects:(id)a3;
- (void)setQuery:(id)a3;
- (void)updateResults;
@end

@implementation WFGiphyViewController

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (UIView)emptyListView
{
  WeakRetained = objc_loadWeakRetained(&self->_emptyListView);

  return WeakRetained;
}

- (WFGiphyViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"WFGiphyCellReuseIdentifier" forIndexPath:v6];
  v8 = [(WFGiphyViewController *)self objects];
  v9 = [v6 item];

  v10 = [v8 objectAtIndex:v9];
  [v7 setObject:v10];

  return v7;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(WFGiphyViewController *)self objects:a3];
  v5 = [v4 count];

  return v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  if (![(WFGiphyViewController *)self selectMultiple:a3])
  {

    [(WFGiphyViewController *)self done];
  }
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v5 = a3;
  v4 = [v5 text];
  [(WFGiphyViewController *)self setQuery:v4];

  [v5 resignFirstResponder];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  if (![v5 length])
  {
    [(WFGiphyViewController *)self setQuery:v5];
  }
}

- (void)cancel
{
  v3 = [(WFGiphyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFGiphyViewController *)self delegate];
    [v5 giphyViewControllerDidCancel:self];
  }
}

- (void)done
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(WFGiphyViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 addIndex:{objc_msgSend(*(*(&v16 + 1) + 8 * v9++), "item")}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v10 = [(WFGiphyViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(WFGiphyViewController *)self delegate];
    v13 = [(WFGiphyViewController *)self objects];
    v14 = [v13 objectsAtIndexes:v3];
    [v12 giphyViewController:self didSelectObjects:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateResults
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__WFGiphyViewController_updateResults__block_invoke;
  aBlock[3] = &unk_278C376E0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(WFGiphyViewController *)self query];
  v5 = [v4 length];

  v6 = [(WFGiphyViewController *)self sessionManager];
  v7 = v6;
  if (v5)
  {
    v8 = [(WFGiphyViewController *)self query];
    [v7 search:v8 limit:100 completion:v3];
  }

  else
  {
    [v6 trendingWithLimit:100 completion:v3];
  }
}

void __38__WFGiphyViewController_updateResults__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) query];
  v4 = [*(a1 + 32) query];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    [*(a1 + 32) setObjects:v6];
  }
}

- (void)setQuery:(id)a3
{
  v8 = a3;
  v4 = [(NSString *)self->_query isEqualToString:v8];
  v5 = [v8 copy];
  query = self->_query;
  self->_query = v5;

  if ([v8 length])
  {
    [(WFGiphyViewController *)self setTitle:v8];
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = WFLocalizedString(@"Trending");
  [(WFGiphyViewController *)self setTitle:v7];

  if (!v4)
  {
LABEL_3:
    [(WFGiphyViewController *)self updateResults];
  }

LABEL_4:
}

- (void)setObjects:(id)a3
{
  v10 = a3;
  v4 = [(NSArray *)self->_objects isEqualToArray:v10];
  v5 = [v10 copy];
  objects = self->_objects;
  self->_objects = v5;

  if (!v4)
  {
    v7 = [v10 count] != 0;
    v8 = [(WFGiphyViewController *)self emptyListView];
    [v8 setHidden:v7];

    v9 = [(WFGiphyViewController *)self collectionView];
    [v9 reloadData];
  }
}

- (void)loadView
{
  v79[14] = *MEMORY[0x277D85DE8];
  v78.receiver = self;
  v78.super_class = WFGiphyViewController;
  [(WFGiphyViewController *)&v78 loadView];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(WFGiphyViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc(MEMORY[0x277D752A0]);
  v6 = [(WFGiphyViewController *)self collectionViewLayout];
  v7 = [v5 initWithFrame:v6 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setDataSource:self];
  [v7 setDelegate:self];
  [v7 setAllowsMultipleSelection:{-[WFGiphyViewController selectMultiple](self, "selectMultiple")}];
  [v7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"WFGiphyCellReuseIdentifier"];
  v9 = [(WFGiphyViewController *)self view];
  [v9 addSubview:v7];

  objc_storeWeak(&self->_collectionView, v7);
  v10 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setHidden:1];
  v11 = [(WFGiphyViewController *)self view];
  [v11 addSubview:v10];

  v77 = self;
  objc_storeWeak(&self->_emptyListView, v10);
  v12 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x277D75348] lightGrayColor];
  [v12 setTextColor:v13];

  v14 = WFLocalizedString(@"No Results Found");
  [v12 setText:v14];

  [v12 setTextAlignment:1];
  v15 = [MEMORY[0x277D74300] systemFontOfSize:28.0];
  [v12 setFont:v15];

  [v10 addSubview:v12];
  v16 = objc_alloc_init(MEMORY[0x277D756B8]);
  v17 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
  [v16 setFont:v17];

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [MEMORY[0x277D75348] lightGrayColor];
  [v16 setTextColor:v18];

  v19 = WFLocalizedString(@"Clear the search bar to view trending GIFs.");
  [v16 setText:v19];

  [v16 setNumberOfLines:0];
  [v16 setTextAlignment:1];
  [v10 addSubview:v16];
  v20 = [(WFGiphyViewController *)self view];
  v55 = MEMORY[0x277CCAAD0];
  v76 = [v10 widthAnchor];
  v75 = [v20 widthAnchor];
  v74 = [v76 constraintEqualToAnchor:v75 constant:-60.0];
  v79[0] = v74;
  v73 = [v10 centerXAnchor];
  v72 = [v20 centerXAnchor];
  v70 = [v73 constraintEqualToAnchor:v72];
  v79[1] = v70;
  v69 = [v10 centerYAnchor];
  v68 = [v20 centerYAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v79[2] = v67;
  v66 = [v12 topAnchor];
  v65 = [v10 topAnchor];
  v63 = [v66 constraintEqualToAnchor:v65];
  v79[3] = v63;
  v62 = [v12 leadingAnchor];
  v61 = [v10 leadingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v79[4] = v60;
  v71 = v12;
  v59 = [v12 trailingAnchor];
  v57 = [v10 trailingAnchor];
  v56 = [v59 constraintEqualToAnchor:v57];
  v79[5] = v56;
  v53 = [v16 topAnchor];
  v52 = [v12 bottomAnchor];
  v51 = [v53 constraintEqualToAnchor:v52 constant:10.0];
  v79[6] = v51;
  v50 = [v16 leadingAnchor];
  v49 = [v10 leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v79[7] = v48;
  v64 = v16;
  v47 = [v16 trailingAnchor];
  v46 = [v10 trailingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v79[8] = v45;
  v44 = [v16 bottomAnchor];
  v43 = [v10 bottomAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v79[9] = v42;
  v41 = [v7 topAnchor];
  v21 = v20;
  v40 = [v20 topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v79[10] = v39;
  v22 = v7;
  v38 = [v7 leadingAnchor];
  v23 = [v20 leadingAnchor];
  v24 = [v38 constraintEqualToAnchor:v23];
  v79[11] = v24;
  v58 = v22;
  v25 = [v22 bottomAnchor];
  v26 = v21;
  v54 = v21;
  v27 = [v21 bottomAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  v79[12] = v28;
  v29 = [v22 trailingAnchor];
  v30 = [v26 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v79[13] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:14];
  [v55 activateConstraints:v32];

  v33 = [(WFGiphyViewController *)v77 query];
  v34 = [(WFGiphyViewController *)v77 navigationItem];
  v35 = [v34 searchController];
  v36 = [v35 searchBar];
  [v36 setText:v33];

  [(WFGiphyViewController *)v77 updateResults];
  v37 = *MEMORY[0x277D85DE8];
}

- (WFGiphyViewController)initWithQuery:(id)a3 selectMultiple:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (!v8)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"WFGiphyViewController.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"query"}];
  }

  v32.receiver = self;
  v32.super_class = WFGiphyViewController;
  v9 = [(WFGiphyViewController *)&v32 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_query, a3);
    v10->_selectMultiple = v4;
    v11 = objc_opt_new();
    sessionManager = v10->_sessionManager;
    v10->_sessionManager = v11;

    [(WFGiphySessionManager *)v10->_sessionManager setApiKey:*MEMORY[0x277CE88B0]];
    v13 = [MEMORY[0x277D759A0] mainScreen];
    [v13 scale];
    v15 = 1.0 / v14;

    v16 = objc_opt_new();
    collectionViewLayout = v10->_collectionViewLayout;
    v10->_collectionViewLayout = v16;

    [(UICollectionViewFlowLayout *)v10->_collectionViewLayout setMinimumInteritemSpacing:v15];
    [(UICollectionViewFlowLayout *)v10->_collectionViewLayout setMinimumLineSpacing:v15];
    [(UICollectionViewFlowLayout *)v10->_collectionViewLayout setSectionInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(UICollectionViewFlowLayout *)v10->_collectionViewLayout setHeaderReferenceSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v18 = WFLocalizedString(@"Giphy");
    [(WFGiphyViewController *)v10 setTitle:v18];

    v19 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
    [v19 setObscuresBackgroundDuringPresentation:0];
    [v19 setHidesNavigationBarDuringPresentation:0];
    v20 = WFLocalizedString(@"Search Giphy");
    v21 = [v19 searchBar];
    [v21 setPlaceholder:v20];

    v22 = [v19 searchBar];
    [v22 setShowsCancelButton:0];

    v23 = [v19 searchBar];
    [v23 setDelegate:v10];

    v24 = [v19 searchBar];
    [v24 setText:v8];

    v25 = [(WFGiphyViewController *)v10 navigationItem];
    [v25 setSearchController:v19];

    v26 = [(WFGiphyViewController *)v10 navigationItem];
    [v26 setHidesSearchBarWhenScrolling:0];

    v27 = objc_alloc(MEMORY[0x277D751E0]);
    if (v4)
    {
      v28 = [v27 initWithBarButtonSystemItem:0 target:v10 action:sel_done];
      [v28 setStyle:2];
    }

    else
    {
      v28 = [v27 initWithBarButtonSystemItem:1 target:v10 action:sel_cancel];
    }

    v29 = [(WFGiphyViewController *)v10 navigationItem];
    [v29 setRightBarButtonItem:v28];
  }

  return v10;
}

@end