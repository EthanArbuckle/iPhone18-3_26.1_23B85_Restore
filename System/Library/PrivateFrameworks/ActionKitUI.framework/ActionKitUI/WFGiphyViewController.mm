@interface WFGiphyViewController
- (UICollectionView)collectionView;
- (UIView)emptyListView;
- (WFGiphyViewController)initWithQuery:(id)query selectMultiple:(BOOL)multiple;
- (WFGiphyViewControllerDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)cancel;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)done;
- (void)loadView;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)setObjects:(id)objects;
- (void)setQuery:(id)query;
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"WFGiphyCellReuseIdentifier" forIndexPath:pathCopy];
  objects = [(WFGiphyViewController *)self objects];
  item = [pathCopy item];

  v10 = [objects objectAtIndex:item];
  [v7 setObject:v10];

  return v7;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(WFGiphyViewController *)self objects:view];
  v5 = [v4 count];

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  if (![(WFGiphyViewController *)self selectMultiple:view])
  {

    [(WFGiphyViewController *)self done];
  }
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  text = [clickedCopy text];
  [(WFGiphyViewController *)self setQuery:text];

  [clickedCopy resignFirstResponder];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  if (![changeCopy length])
  {
    [(WFGiphyViewController *)self setQuery:changeCopy];
  }
}

- (void)cancel
{
  delegate = [(WFGiphyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFGiphyViewController *)self delegate];
    [delegate2 giphyViewControllerDidCancel:self];
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
  collectionView = [(WFGiphyViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [v3 addIndex:{objc_msgSend(*(*(&v16 + 1) + 8 * v9++), "item")}];
      }

      while (v7 != v9);
      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  delegate = [(WFGiphyViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(WFGiphyViewController *)self delegate];
    objects = [(WFGiphyViewController *)self objects];
    v14 = [objects objectsAtIndexes:v3];
    [delegate2 giphyViewController:self didSelectObjects:v14];
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
  query = [(WFGiphyViewController *)self query];
  v5 = [query length];

  sessionManager = [(WFGiphyViewController *)self sessionManager];
  v7 = sessionManager;
  if (v5)
  {
    query2 = [(WFGiphyViewController *)self query];
    [v7 search:query2 limit:100 completion:v3];
  }

  else
  {
    [sessionManager trendingWithLimit:100 completion:v3];
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

- (void)setQuery:(id)query
{
  queryCopy = query;
  v4 = [(NSString *)self->_query isEqualToString:queryCopy];
  v5 = [queryCopy copy];
  query = self->_query;
  self->_query = v5;

  if ([queryCopy length])
  {
    [(WFGiphyViewController *)self setTitle:queryCopy];
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

- (void)setObjects:(id)objects
{
  objectsCopy = objects;
  v4 = [(NSArray *)self->_objects isEqualToArray:objectsCopy];
  v5 = [objectsCopy copy];
  objects = self->_objects;
  self->_objects = v5;

  if (!v4)
  {
    v7 = [objectsCopy count] != 0;
    emptyListView = [(WFGiphyViewController *)self emptyListView];
    [emptyListView setHidden:v7];

    collectionView = [(WFGiphyViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)loadView
{
  v79[14] = *MEMORY[0x277D85DE8];
  v78.receiver = self;
  v78.super_class = WFGiphyViewController;
  [(WFGiphyViewController *)&v78 loadView];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(WFGiphyViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = objc_alloc(MEMORY[0x277D752A0]);
  collectionViewLayout = [(WFGiphyViewController *)self collectionViewLayout];
  v7 = [v5 initWithFrame:collectionViewLayout collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:clearColor];

  [v7 setDataSource:self];
  [v7 setDelegate:self];
  [v7 setAllowsMultipleSelection:{-[WFGiphyViewController selectMultiple](self, "selectMultiple")}];
  [v7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"WFGiphyCellReuseIdentifier"];
  view2 = [(WFGiphyViewController *)self view];
  [view2 addSubview:v7];

  objc_storeWeak(&self->_collectionView, v7);
  v10 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setHidden:1];
  view3 = [(WFGiphyViewController *)self view];
  [view3 addSubview:v10];

  selfCopy = self;
  objc_storeWeak(&self->_emptyListView, v10);
  v12 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  [v12 setTextColor:lightGrayColor];

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
  lightGrayColor2 = [MEMORY[0x277D75348] lightGrayColor];
  [v16 setTextColor:lightGrayColor2];

  v19 = WFLocalizedString(@"Clear the search bar to view trending GIFs.");
  [v16 setText:v19];

  [v16 setNumberOfLines:0];
  [v16 setTextAlignment:1];
  [v10 addSubview:v16];
  view4 = [(WFGiphyViewController *)self view];
  v55 = MEMORY[0x277CCAAD0];
  widthAnchor = [v10 widthAnchor];
  widthAnchor2 = [view4 widthAnchor];
  v74 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-60.0];
  v79[0] = v74;
  centerXAnchor = [v10 centerXAnchor];
  centerXAnchor2 = [view4 centerXAnchor];
  v70 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v79[1] = v70;
  centerYAnchor = [v10 centerYAnchor];
  centerYAnchor2 = [view4 centerYAnchor];
  v67 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v79[2] = v67;
  topAnchor = [v12 topAnchor];
  topAnchor2 = [v10 topAnchor];
  v63 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v79[3] = v63;
  leadingAnchor = [v12 leadingAnchor];
  leadingAnchor2 = [v10 leadingAnchor];
  v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v79[4] = v60;
  v71 = v12;
  trailingAnchor = [v12 trailingAnchor];
  trailingAnchor2 = [v10 trailingAnchor];
  v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v79[5] = v56;
  topAnchor3 = [v16 topAnchor];
  bottomAnchor = [v12 bottomAnchor];
  v51 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
  v79[6] = v51;
  leadingAnchor3 = [v16 leadingAnchor];
  leadingAnchor4 = [v10 leadingAnchor];
  v48 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v79[7] = v48;
  v64 = v16;
  trailingAnchor3 = [v16 trailingAnchor];
  trailingAnchor4 = [v10 trailingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v79[8] = v45;
  bottomAnchor2 = [v16 bottomAnchor];
  bottomAnchor3 = [v10 bottomAnchor];
  v42 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v79[9] = v42;
  topAnchor4 = [v7 topAnchor];
  v21 = view4;
  topAnchor5 = [view4 topAnchor];
  v39 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v79[10] = v39;
  v22 = v7;
  leadingAnchor5 = [v7 leadingAnchor];
  leadingAnchor6 = [view4 leadingAnchor];
  v24 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v79[11] = v24;
  v58 = v22;
  bottomAnchor4 = [v22 bottomAnchor];
  v26 = v21;
  v54 = v21;
  bottomAnchor5 = [v21 bottomAnchor];
  v28 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v79[12] = v28;
  trailingAnchor5 = [v22 trailingAnchor];
  trailingAnchor6 = [v26 trailingAnchor];
  v31 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v79[13] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:14];
  [v55 activateConstraints:v32];

  query = [(WFGiphyViewController *)selfCopy query];
  navigationItem = [(WFGiphyViewController *)selfCopy navigationItem];
  searchController = [navigationItem searchController];
  searchBar = [searchController searchBar];
  [searchBar setText:query];

  [(WFGiphyViewController *)selfCopy updateResults];
  v37 = *MEMORY[0x277D85DE8];
}

- (WFGiphyViewController)initWithQuery:(id)query selectMultiple:(BOOL)multiple
{
  multipleCopy = multiple;
  queryCopy = query;
  if (!queryCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFGiphyViewController.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"query"}];
  }

  v32.receiver = self;
  v32.super_class = WFGiphyViewController;
  v9 = [(WFGiphyViewController *)&v32 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_query, query);
    v10->_selectMultiple = multipleCopy;
    v11 = objc_opt_new();
    sessionManager = v10->_sessionManager;
    v10->_sessionManager = v11;

    [(WFGiphySessionManager *)v10->_sessionManager setApiKey:*MEMORY[0x277CE88B0]];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
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
    searchBar = [v19 searchBar];
    [searchBar setPlaceholder:v20];

    searchBar2 = [v19 searchBar];
    [searchBar2 setShowsCancelButton:0];

    searchBar3 = [v19 searchBar];
    [searchBar3 setDelegate:v10];

    searchBar4 = [v19 searchBar];
    [searchBar4 setText:queryCopy];

    navigationItem = [(WFGiphyViewController *)v10 navigationItem];
    [navigationItem setSearchController:v19];

    navigationItem2 = [(WFGiphyViewController *)v10 navigationItem];
    [navigationItem2 setHidesSearchBarWhenScrolling:0];

    v27 = objc_alloc(MEMORY[0x277D751E0]);
    if (multipleCopy)
    {
      v28 = [v27 initWithBarButtonSystemItem:0 target:v10 action:sel_done];
      [v28 setStyle:2];
    }

    else
    {
      v28 = [v27 initWithBarButtonSystemItem:1 target:v10 action:sel_cancel];
    }

    navigationItem3 = [(WFGiphyViewController *)v10 navigationItem];
    [navigationItem3 setRightBarButtonItem:v28];
  }

  return v10;
}

@end