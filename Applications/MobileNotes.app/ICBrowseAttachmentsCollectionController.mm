@interface ICBrowseAttachmentsCollectionController
- (BOOL)browseAttachmentsCell:(id)cell didSelectAttachment:(id)attachment;
- (BOOL)useImagesAndMoviesScrollViewAtIndexPath:(id)path;
- (BOOL)useImagesAndMoviesScrollViewForSection:(signed __int16)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (ICBrowseAttachmentsCollectionController)initWithAttachmentSection:(signed __int16)section;
- (ICNAEventReporter)eventReporter;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UISegmentedControl)segmentedControl;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (double)estimatedHeightForAXLargerTextSizesForSection:(unint64_t)section;
- (double)leadingMargin;
- (double)trailingMargin;
- (id)attachmentAtIndexPath:(id)path;
- (id)attachmentPresenter:(id)presenter transitionViewForAttachment:(id)attachment;
- (id)attachmentsToPreviewWhenSelectingAttachment:(id)attachment;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)collectionViewIndexPathFromFetchedResultsControllerIndexPath:(id)path;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)emptyTextForAttachmentSection:(signed __int16)section;
- (id)nonScrollingCellIdentifierForAttachmentType:(signed __int16)type;
- (id)titleForAttachmentSection:(signed __int16)section;
- (id)viewControllerForAttachmentSection:(signed __int16)section;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfItemsToDisplayInSection:(int64_t)section withTraitCollection:(id)collection;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (unint64_t)cellsPerRow;
- (void)accountsDidChange;
- (void)accountsWillChange;
- (void)adjustContentInsetOfImageScroller:(id)scroller;
- (void)applyAccessibilityInfo;
- (void)browseAttachmentsCell:(id)cell shouldInspectAttachment:(id)attachment;
- (void)browseAttachmentsCell:(id)cell shouldShareAttachment:(id)attachment;
- (void)browseAttachmentsCollectionView:(id)view cell:(id)cell shouldShareAttachment:(id)attachment;
- (void)browseAttachmentsCollectionView:(id)view didSelectAttachment:(id)attachment indexPath:(id)path;
- (void)browseAttachmentsCollectionView:(id)view shouldInspectAttachment:(id)attachment;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)contentSizeCategoryDidChange;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)controllerDidChangeContent:(id)content;
- (void)dealloc;
- (void)doneAction:(id)action;
- (void)eventReporterLostSession:(id)session;
- (void)notesContextRefreshNotification:(id)notification;
- (void)reload;
- (void)respondToTapGesture:(id)gesture;
- (void)segmentedControlValueDidChange:(id)change;
- (void)showAllForAttachmentSection:(signed __int16)section;
- (void)sortFetchedResultsSections;
- (void)updateEmptyView;
- (void)updateEmptyViewFonts;
- (void)updateHeaderViewMargins;
- (void)updateImagesAndMoviesScrollViewContentInset;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICBrowseAttachmentsCollectionController

- (ICBrowseAttachmentsCollectionController)initWithAttachmentSection:(signed __int16)section
{
  v5 = objc_alloc_init(ICBrowseAttachmentsCollectionViewLayout);
  v10.receiver = self;
  v10.super_class = ICBrowseAttachmentsCollectionController;
  v6 = [(ICBrowseAttachmentsCollectionController *)&v10 initWithCollectionViewLayout:v5];

  if (v6)
  {
    v6->_attachmentSection = section;
    collectionView = [(ICBrowseAttachmentsCollectionController *)v6 collectionView];
    [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICBrowseAttachmentsImagesAndMoviesCell"];

    collectionView2 = [(ICBrowseAttachmentsCollectionController *)v6 collectionView];
    [collectionView2 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICBrowseAttachmentsScannedPagesCell"];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v35 viewDidLoad];
  navigationController = [(ICBrowseAttachmentsCollectionController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  if ([(ICBrowseAttachmentsCollectionController *)self displayAllSections])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  navigationItem = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:v5];

  if (+[UIDevice ic_isVision])
  {
    navigationItem2 = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
    [navigationItem2 setStyle:0];

    segmentedControl = [(ICBrowseAttachmentsCollectionController *)self segmentedControl];
    navigationItem3 = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
    [navigationItem3 setTitleView:segmentedControl];
  }

  v10 = +[UIColor ICBackgroundColor];
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView setBackgroundColor:v10];

  collectionView2 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView2 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICBrowseAttachmentsImagesAndMoviesCell"];

  collectionView3 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICBrowseAttachmentsScannedPagesCell"];

  collectionView4 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICBrowseAttachmentsBrickCell"];

  collectionView5 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kICBrowseAttachmentsImageCell"];

  collectionView6 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kICBrowseAttachmentsMovieCell"];

  collectionView7 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kICBrowseAttachmentsDrawingCell"];

  v18 = [[ICBrowseAttachmentsBrickCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  defaultSizingBrickCell = self->_defaultSizingBrickCell;
  self->_defaultSizingBrickCell = v18;

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [UINib nibWithNibName:v21 bundle:v22];

  collectionView8 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView8 registerNib:v23 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ICBrowseAttachmentsHeaderView"];

  v25 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneAction:"];
  v36 = v25;
  v26 = [NSArray arrayWithObjects:&v36 count:1];
  navigationItem4 = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
  [navigationItem4 setRightBarButtonItems:v26];

  v28 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"respondToTapGesture:"];
  collectionView9 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView9 addGestureRecognizer:v28];

  v30 = +[ICBrowseAttachmentsDragAndDropDelegate sharedInstance];
  collectionView10 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView10 setDragDelegate:v30];

  v32 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
  [(ICBrowseAttachmentsCollectionController *)self setContextInteraction:v32];

  collectionView11 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  contextInteraction = [(ICBrowseAttachmentsCollectionController *)self contextInteraction];
  [collectionView11 addInteraction:contextInteraction];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v14 viewWillLayoutSubviews];
  view = [(ICBrowseAttachmentsCollectionController *)self view];
  [view directionalLayoutMargins];
  v5 = v4;
  v7 = v6;

  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    v8 = 32.0;
  }

  else
  {
    view2 = [(ICBrowseAttachmentsCollectionController *)self view];
    traitCollection = [view2 traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == 2)
    {
      v8 = 28.0;
    }

    else
    {
      v8 = 16.0;
    }
  }

  view3 = [(ICBrowseAttachmentsCollectionController *)self view];
  [view3 setDirectionalLayoutMargins:{v5, v8, v7, v8}];

  navigationItem = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
  [navigationItem setLargeTitleInsets:{0.0, v8, 0.0, v8}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v8 viewWillAppear:appear];
  [(ICBrowseAttachmentsCollectionController *)self reload];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"notesContextRefreshNotification:" name:ICNotesContextRefreshNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"accountsWillChange" name:ICAccountsWillChangeNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"accountsDidChange" name:ICAccountsDidChangeNotification object:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v3 viewDidAppear:appear];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v8 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:ICNotesContextRefreshNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:ICAccountsWillChangeNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:ICAccountsDidChangeNotification object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v7 viewDidDisappear:disappear];
  fetchedResultsController = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  [fetchedResultsController setDelegate:0];

  [(ICBrowseAttachmentsCollectionController *)self setFetchedResultsController:0];
  browserDidCloseHandler = [(ICBrowseAttachmentsCollectionController *)self browserDidCloseHandler];

  if (browserDidCloseHandler)
  {
    browserDidCloseHandler2 = [(ICBrowseAttachmentsCollectionController *)self browserDidCloseHandler];
    browserDidCloseHandler2[2](browserDidCloseHandler2, 0);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  collectionViewLayout = [(ICBrowseAttachmentsCollectionController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100143D98;
  v10[3] = &unk_100645E08;
  v10[4] = self;
  [coordinatorCopy animateAlongsideTransition:v10 completion:0];
  v9.receiver = self;
  v9.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)reload
{
  v3 = +[ICAttachment newFetchRequestForAttachments];
  v4 = [[NSSortDescriptor alloc] initWithKey:@"section" ascending:1];
  v35[0] = v4;
  v5 = [[NSSortDescriptor alloc] initWithKey:@"modificationDate" ascending:0];
  v35[1] = v5;
  v6 = [NSArray arrayWithObjects:v35 count:2];
  [v3 setSortDescriptors:v6];

  if ([(ICBrowseAttachmentsCollectionController *)self attachmentSection])
  {
    v7 = [NSPredicate predicateWithFormat:@"section == %d", [(ICBrowseAttachmentsCollectionController *)self attachmentSection]];
    if ([(ICBrowseAttachmentsCollectionController *)self attachmentSection]== 6)
    {
      v34[0] = v7;
      iCAttachmentUTTypePaperDocumentScan = [NSPredicate predicateWithFormat:@"typeUTI == %@", ICAttachmentUTTypePaperDocumentScan];
      v34[1] = iCAttachmentUTTypePaperDocumentScan;
      v9 = [NSArray arrayWithObjects:v34 count:2];
      v10 = [NSCompoundPredicate orPredicateWithSubpredicates:v9];

      v7 = v10;
    }

    v33[0] = v7;
    v11 = +[ICNoteContext sharedContext];
    managedObjectContext = [v11 managedObjectContext];
    v13 = [ICAttachment predicateForAttachmentBrowserWithContext:managedObjectContext];
    v33[1] = v13;
    v14 = [NSArray arrayWithObjects:v33 count:2];

    v15 = [[NSCompoundPredicate alloc] initWithType:1 subpredicates:v14];
  }

  else
  {
    v16 = [NSPredicate predicateWithFormat:@"section != %d", 0];
    v32[0] = v16;
    v17 = +[ICNoteContext sharedContext];
    managedObjectContext2 = [v17 managedObjectContext];
    v19 = [ICAttachment predicateForAttachmentBrowserWithContext:managedObjectContext2];
    v32[1] = v19;
    v7 = [NSArray arrayWithObjects:v32 count:2];

    v15 = [[NSCompoundPredicate alloc] initWithType:1 subpredicates:v7];
  }

  [v3 setPredicate:v15];
  v20 = +[ICNoteContext sharedContext];
  v21 = [v20 fetchedResultsControllerForFetchRequest:v3 sectionNameKeyPath:@"section"];
  [(ICBrowseAttachmentsCollectionController *)self setFetchedResultsController:v21];

  v22 = +[NSArray array];
  [(ICBrowseAttachmentsCollectionController *)self setSortedSections:v22];

  fetchedResultsController = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  [fetchedResultsController setDelegate:self];

  [(ICBrowseAttachmentsCollectionController *)self sortFetchedResultsSections];
  if ([(ICBrowseAttachmentsCollectionController *)self displayAllSections])
  {
    v24 = +[NSBundle mainBundle];
    navigationItem2 = [v24 localizedStringForKey:@"Attachments" value:&stru_100661CF0 table:0];
    navigationItem = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
    [navigationItem setTitle:navigationItem2];
  }

  else
  {
    v24 = [(ICBrowseAttachmentsCollectionController *)self titleForAttachmentSection:[(ICBrowseAttachmentsCollectionController *)self attachmentSection]];
    navigationItem2 = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
    [navigationItem2 setTitle:v24];
  }

  v27 = +[ICAttachment attachmentSectionSortOrder];
  v28 = [NSNumber numberWithShort:[(ICBrowseAttachmentsCollectionController *)self attachmentSection]];
  v29 = [v27 indexOfObject:v28];
  segmentedControl = [(ICBrowseAttachmentsCollectionController *)self segmentedControl];
  [segmentedControl setSelectedSegmentIndex:v29];

  [(ICBrowseAttachmentsCollectionController *)self updateEmptyView];
  fetchedResultsController2 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  [(ICBrowseAttachmentsCollectionController *)self controllerDidChangeContent:fetchedResultsController2];

  [(ICBrowseAttachmentsCollectionController *)self applyAccessibilityInfo];
}

- (id)attachmentAtIndexPath:(id)path
{
  pathCopy = path;
  fetchedResultsController = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];

  if (!fetchedResultsController)
  {
    v16 = 0;
    goto LABEL_14;
  }

  section = [pathCopy section];
  sortedSections = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v8 = [sortedSections count];

  if (section >= v8)
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1004E1A6C(pathCopy, self);
    }

    goto LABEL_12;
  }

  sortedSections2 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v10 = [sortedSections2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v11 = [pathCopy row];
  objects = [v10 objects];
  v13 = [objects count];

  if (v11 >= v13)
  {
    v17 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1004E1A6C(pathCopy, self);
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  objects2 = [v10 objects];
  v15 = [objects2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  v16 = ICCheckedDynamicCast();

LABEL_13:
LABEL_14:

  return v16;
}

- (BOOL)useImagesAndMoviesScrollViewForSection:(signed __int16)section
{
  sectionCopy = section;
  v4 = +[UIDevice ic_isVision];
  v6 = sectionCopy == 1 || sectionCopy == 7;
  return (v4 & 1) == 0 && v6;
}

- (BOOL)useImagesAndMoviesScrollViewAtIndexPath:(id)path
{
  pathCopy = path;
  sortedSections = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  section = [pathCopy section];

  v7 = [sortedSections objectAtIndexedSubscript:section];

  name = [v7 name];
  LOWORD(section) = [name intValue];

  LOBYTE(self) = [(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewForSection:section];
  return self;
}

- (UISegmentedControl)segmentedControl
{
  segmentedControl = self->_segmentedControl;
  if (!segmentedControl)
  {
    v4 = +[ICAttachment attachmentSectionSortOrder];
    array = [v4 array];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001446B4;
    v10[3] = &unk_10064B078;
    v10[4] = self;
    v6 = [array ic_compactMap:v10];

    v7 = [[UISegmentedControl alloc] initWithItems:v6];
    v8 = self->_segmentedControl;
    self->_segmentedControl = v7;

    [(UISegmentedControl *)self->_segmentedControl setApportionsSegmentWidthsByContent:1];
    [(UISegmentedControl *)self->_segmentedControl addTarget:self action:"segmentedControlValueDidChange:" forControlEvents:4096];

    segmentedControl = self->_segmentedControl;
  }

  return segmentedControl;
}

- (void)segmentedControlValueDidChange:(id)change
{
  changeCopy = change;
  v7 = +[ICAttachment attachmentSectionSortOrder];
  selectedSegmentIndex = [changeCopy selectedSegmentIndex];

  v6 = [v7 objectAtIndexedSubscript:selectedSegmentIndex];
  -[ICBrowseAttachmentsCollectionController setAttachmentSection:](self, "setAttachmentSection:", [v6 integerValue]);
}

- (void)doneAction:(id)action
{
  browserDidCloseHandler = [(ICBrowseAttachmentsCollectionController *)self browserDidCloseHandler];
  v5 = [browserDidCloseHandler copy];

  [(ICBrowseAttachmentsCollectionController *)self setBrowserDidCloseHandler:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10014486C;
  v8[3] = &unk_100645CC8;
  v9 = v5;
  v6 = v5;
  [(ICBrowseAttachmentsCollectionController *)self dismissViewControllerAnimated:1 completion:v8];
  eventReporter = [(ICBrowseAttachmentsCollectionController *)self eventReporter];
  [eventReporter submitAttachmentBrowserActionEventForType:1];
}

- (void)respondToTapGesture:(id)gesture
{
  gestureCopy = gesture;
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [gestureCopy locationInView:collectionView];
  v7 = v6;
  v9 = v8;

  collectionView2 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v13 = [collectionView2 indexPathForItemAtPoint:{v7, v9}];

  if (v13)
  {
    v11 = [(ICBrowseAttachmentsCollectionController *)self attachmentAtIndexPath:v13];
    collectionView3 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
    [(ICBrowseAttachmentsCollectionController *)self browseAttachmentsCollectionView:collectionView3 didSelectAttachment:v11 indexPath:v13];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  if ([(ICBrowseAttachmentsCollectionController *)self updatingAccounts])
  {
    return 0;
  }

  sortedSections = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v6 = [sortedSections count];

  return v6;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  traitCollection = [collectionView traitCollection];
  v8 = [(ICBrowseAttachmentsCollectionController *)self numberOfItemsToDisplayInSection:section withTraitCollection:traitCollection];

  return v8;
}

- (id)nonScrollingCellIdentifierForAttachmentType:(signed __int16)type
{
  if (type <= 5)
  {
    if (type >= 3 && type != 4)
    {
      if (type == 5)
      {
        v3 = @"kICBrowseAttachmentsMovieCell";
      }

      else
      {
        v3 = @"kICBrowseAttachmentsImageCell";
      }

      goto LABEL_12;
    }

LABEL_11:
    v3 = @"ICBrowseAttachmentsBrickCell";
    goto LABEL_12;
  }

  if (type > 0xF)
  {
    v3 = @"kICBrowseAttachmentsImageCell";
    goto LABEL_12;
  }

  if (((1 << type) & 0x59C0) != 0)
  {
    goto LABEL_11;
  }

  if (((1 << type) & 0x2600) != 0)
  {
    v3 = @"kICBrowseAttachmentsDrawingCell";
  }

  else
  {
    v3 = @"kICBrowseAttachmentsImageCell";
    if (type == 15)
    {
      v3 = @"ICBrowseAttachmentsBrickCell";
      if (+[UIDevice ic_isVision])
      {
        if ([(ICBrowseAttachmentsCollectionController *)self attachmentSection]== 7)
        {
          v6 = @"kICBrowseAttachmentsImageCell";
        }

        else
        {
          v6 = @"ICBrowseAttachmentsBrickCell";
        }

        v3 = v6;
      }
    }
  }

LABEL_12:

  return v3;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sortedSections = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v9 = [sortedSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  name = [v9 name];
  intValue = [name intValue];

  v12 = [(ICBrowseAttachmentsCollectionController *)self attachmentAtIndexPath:pathCopy];
  if ([(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewAtIndexPath:pathCopy])
  {
    v13 = intValue;
    v32 = viewCopy;
    if (intValue == 1)
    {
      v14 = @"ICBrowseAttachmentsImagesAndMoviesCell";
    }

    else if (v13 == 7)
    {
      v14 = @"ICBrowseAttachmentsScannedPagesCell";
    }

    else
    {
      [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICBrowseAttachmentsCollectionController collectionView:cellForItemAtIndexPath:]" simulateCrash:1 showAlert:0 format:@"Unhandled cell key case"];
      v14 = &stru_100661CF0;
    }

    collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
    v16 = [collectionView dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:pathCopy];

    contentView = [v16 contentView];
    subviews = [contentView subviews];
    v20 = [subviews count];

    if (v20)
    {
      objc_opt_class();
      contentView2 = [v16 contentView];
      subviews2 = [contentView2 subviews];
      firstObject = [subviews2 firstObject];
      v15 = ICCheckedDynamicCast();

      [(ICImagesAndMoviesScrollView *)v15 setAttachmentSection:v13];
    }

    else
    {
      v24 = [ICImagesAndMoviesScrollView alloc];
      contentView3 = [v16 contentView];
      [contentView3 bounds];
      v15 = [(ICImagesAndMoviesScrollView *)v24 initWithFrame:v13 forAttachmentSection:?];

      [(ICImagesAndMoviesScrollView *)v15 setViewController:self];
      [(ICImagesAndMoviesScrollView *)v15 setDelegate:self];
      [(ICImagesAndMoviesScrollView *)v15 setAutoresizingMask:18];
      collectionView2 = [(ICImagesAndMoviesScrollView *)v15 collectionView];
      [collectionView2 setContentInsetAdjustmentBehavior:2];

      collectionView3 = [(ICImagesAndMoviesScrollView *)v15 collectionView];
      [v16 setInnerCollectionView:collectionView3];

      contentView4 = [v16 contentView];
      [contentView4 addSubview:v15];
    }

    [(ICBrowseAttachmentsCollectionController *)self adjustContentInsetOfImageScroller:v15];
    viewCopy = v32;
  }

  else
  {
    v15 = -[ICBrowseAttachmentsCollectionController nonScrollingCellIdentifierForAttachmentType:](self, "nonScrollingCellIdentifierForAttachmentType:", [v12 attachmentType]);
    v16 = [viewCopy dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:pathCopy];
  }

  objc_opt_class();
  v29 = ICDynamicCast();
  [v29 setAttachment:v12];
  [v29 setDelegate:self];
  [v29 setCollectionController:self];
  objc_opt_class();
  v30 = ICDynamicCast();
  [v30 setThumbnailLayout:2];

  return v16;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  kindCopy = kind;
  sortedSections = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v12 = [sortedSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  name = [v12 name];
  intValue = [name intValue];

  v15 = [kindCopy isEqualToString:UICollectionElementKindSectionHeader];
  if (v15)
  {
    v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ICBrowseAttachmentsHeaderView" forIndexPath:pathCopy];
    v17 = intValue;
    v18 = [(ICBrowseAttachmentsCollectionController *)self titleForAttachmentSection:v17];
    sectionLabel = [v16 sectionLabel];
    [sectionLabel setText:v18];

    view = [(ICBrowseAttachmentsCollectionController *)self view];
    [view directionalLayoutMargins];
    [v16 setLeadingMargin:v21];

    view2 = [(ICBrowseAttachmentsCollectionController *)self view];
    [view2 directionalLayoutMargins];
    [v16 setTrailingMargin:v23];

    [v16 setAttachmentSection:v17];
    [v16 setDelegate:self];
    [v16 contentSizeCategoryDidChange];
  }

  else
  {
    v16 = objc_alloc_init(UICollectionReusableView);
  }

  return v16;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v8 = [viewCopy cellForItemAtIndexPath:pathCopy];

  v10 = ICDynamicCast();

  v9 = v10;
  if (v10)
  {
    [v10 openAttachment:self];
    v9 = v10;
  }
}

- (unint64_t)cellsPerRow
{
  if (+[UIDevice ic_isVision])
  {
    attachmentSection = [(ICBrowseAttachmentsCollectionController *)self attachmentSection];
    if (attachmentSection < 8)
    {
      return qword_100531DD0[attachmentSection];
    }
  }

  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  traitCollection = [collectionView traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass == 1)
  {
    return 2;
  }

  collectionView2 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView2 frame];
  v10 = v9;
  [(ICBrowseAttachmentsCollectionController *)self leadingMargin];
  v12 = v10 - v11;
  [(ICBrowseAttachmentsCollectionController *)self trailingMargin];
  v4 = vcvtmd_u64_f64((v12 - v13) / 310.0);

  return v4;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy frame];
  v10 = v9;
  if ([(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewAtIndexPath:pathCopy])
  {
    *&v11 = 128.0;
  }

  else
  {
    v12 = [(ICBrowseAttachmentsCollectionController *)self attachmentAtIndexPath:pathCopy];
    traitCollection = [viewCopy traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == 1 && (+[ICDeviceSupport isLargerCompactHorizontalWidthDevice]& 1) == 0)
    {
      [(ICBrowseAttachmentsCollectionController *)self leadingMargin];
      v23 = v10 - v22;
      [(ICBrowseAttachmentsCollectionController *)self trailingMargin];
      v10 = v23 - v24;
    }

    else
    {
      cellsPerRow = [(ICBrowseAttachmentsCollectionController *)self cellsPerRow];
      v16 = +[UIDevice ic_isVision];
      v17 = -28.0;
      if (v16)
      {
        v17 = -20.0;
      }

      v18 = v10 + v17 * (cellsPerRow + -1.0);
      [(ICBrowseAttachmentsCollectionController *)self leadingMargin];
      v20 = v18 - v19;
      [(ICBrowseAttachmentsCollectionController *)self trailingMargin];
      v10 = floor((v20 - v21) / cellsPerRow);
    }

    v25 = -[ICBrowseAttachmentsCollectionController nonScrollingCellIdentifierForAttachmentType:](self, "nonScrollingCellIdentifierForAttachmentType:", [v12 attachmentType]);
    *&v11 = v10;
    if ([v25 isEqual:@"ICBrowseAttachmentsBrickCell"])
    {
      v26 = [(ICBrowseAttachmentsCollectionController *)self attachmentAtIndexPath:pathCopy];
      [(ICBrowseAttachmentsBrickCell *)self->_defaultSizingBrickCell setAttachment:v26];

      attachmentBrickView = [(ICBrowseAttachmentsBrickCell *)self->_defaultSizingBrickCell attachmentBrickView];
      [attachmentBrickView computedSize];
      v11 = v28;
    }
  }

  v29 = v10;
  v30 = *&v11;
  result.height = v30;
  result.width = v29;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  sortedSections = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v9 = [sortedSections objectAtIndexedSubscript:index];

  name = [v9 name];
  intValue = [name intValue];

  traitCollection = [viewCopy traitCollection];

  horizontalSizeClass = [traitCollection horizontalSizeClass];
  if ([(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewForSection:intValue])
  {
    if (horizontalSizeClass == 1)
    {
      v14 = 16.0;
    }

    else
    {
      v14 = 19.0;
    }

    v15 = 0.0;
    v16 = 0.0;
  }

  else
  {
    [(ICBrowseAttachmentsCollectionController *)self leadingMargin];
    v15 = v17;
    if (horizontalSizeClass == 1)
    {
      v14 = 16.0;
    }

    else
    {
      v14 = 19.0;
    }

    [(ICBrowseAttachmentsCollectionController *)self trailingMargin];
    v16 = v18;
  }

  view = [(ICBrowseAttachmentsCollectionController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v21 = v15;
  }

  else
  {
    v21 = v16;
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v15 = v16;
  }

  v22 = 15.0;
  v23 = v15;
  v24 = v14;
  v25 = v21;
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  v5 = [UIDevice ic_isVision:view];
  result = 16.0;
  if (v5)
  {
    return 20.0;
  }

  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(ICBrowseAttachmentsCollectionController *)self displayAllSections])
  {
    v8 = +[UIFont ic_attachmentBrowserTitleFont];
    [v8 lineHeight];
    v10 = round(v9);

    window = [viewCopy window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    traitCollection = [viewCopy traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (ICAccessibilityAccessibilityLargerTextSizesEnabled() && (interfaceOrientation - 3) >= 0xFFFFFFFFFFFFFFFELL && horizontalSizeClass == 1)
    {
      [(ICBrowseAttachmentsCollectionController *)self estimatedHeightForAXLargerTextSizesForSection:section];
      v10 = v10 + v16;
    }

    v17 = 15.0;
    if (section > 0)
    {
      v17 = 14.0;
    }

    height = v17 + v10;
    width = 0.0;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v20 = width;
  v21 = height;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)sortFetchedResultsSections
{
  fetchedResultsController = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  sections = [fetchedResultsController sections];
  v5 = [sections mutableCopy];

  +[NSMutableSet set];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100145970;
  v6 = v16[3] = &unk_10064B0A0;
  v17 = v6;
  v18 = &v20;
  v19 = &v24;
  [v5 enumerateObjectsUsingBlock:v16];
  if (![v6 count] || -[ICBrowseAttachmentsCollectionController attachmentSection](self, "attachmentSection") == 7)
  {
    goto LABEL_16;
  }

  v7 = [ICBrowseAttachmentsSectionInfo alloc];
  v8 = v25[3];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v5 objectAtIndexedSubscript:v25[3]];
    if (v25[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
      stringValue = 0;
      goto LABEL_8;
    }
  }

  stringValue = [&off_10066E160 stringValue];
  v11 = 1;
LABEL_8:
  v12 = [NSSortDescriptor sortDescriptorWithKey:@"modificationDate" ascending:0];
  v28 = v12;
  v13 = [NSArray arrayWithObjects:&v28 count:1];
  v14 = [(ICBrowseAttachmentsSectionInfo *)v7 initWithSectionInfo:v9 name:stringValue additionalObjects:v6 sortDescriptors:v13];

  if (v11)
  {
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  if (v25[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 addObject:v14];
  }

  else
  {
    [v5 setObject:v14 atIndexedSubscript:?];
  }

LABEL_16:
  if ([(ICBrowseAttachmentsCollectionController *)self attachmentSection]== 6 && v21[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removeObjectAtIndex:?];
  }

  [v5 sortUsingComparator:&stru_10064B0E0];
  v15 = [v5 copy];
  [(ICBrowseAttachmentsCollectionController *)self setSortedSections:v15];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

- (void)controllerDidChangeContent:(id)content
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100145D20;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)notesContextRefreshNotification:(id)notification
{
  fetchedResultsController = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  [fetchedResultsController performFetch:0];
}

- (void)accountsWillChange
{
  [(ICBrowseAttachmentsCollectionController *)self setUpdatingAccounts:1];
  view = [(ICBrowseAttachmentsCollectionController *)self view];
  [view setUserInteractionEnabled:0];

  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView reloadData];

  collectionViewLayout = [(ICBrowseAttachmentsCollectionController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  [(ICBrowseAttachmentsCollectionController *)self updateEmptyView];
}

- (void)accountsDidChange
{
  [(ICBrowseAttachmentsCollectionController *)self setUpdatingAccounts:0];
  view = [(ICBrowseAttachmentsCollectionController *)self view];
  [view setUserInteractionEnabled:1];

  fetchedResultsController = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  [fetchedResultsController performFetch:0];

  [(ICBrowseAttachmentsCollectionController *)self sortFetchedResultsSections];
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [collectionView reloadData];

  collectionViewLayout = [(ICBrowseAttachmentsCollectionController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  [(ICBrowseAttachmentsCollectionController *)self updateEmptyView];
}

- (id)viewControllerForAttachmentSection:(signed __int16)section
{
  sectionCopy = section;
  v4 = [(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewForSection:?];
  v5 = off_10063FFA0;
  if (!v4)
  {
    v5 = off_10063FF80;
  }

  v6 = [objc_alloc(*v5) initWithAttachmentSection:sectionCopy];

  return v6;
}

- (void)showAllForAttachmentSection:(signed __int16)section
{
  sectionCopy = section;
  v9 = [(ICBrowseAttachmentsCollectionController *)self viewControllerForAttachmentSection:?];
  v5 = [(ICBrowseAttachmentsCollectionController *)self titleForAttachmentSection:sectionCopy];
  navigationItem = [v9 navigationItem];
  [navigationItem setTitle:v5];

  navigationController = [(ICBrowseAttachmentsCollectionController *)self navigationController];
  [navigationController showViewController:v9 sender:self];

  eventReporter = [(ICBrowseAttachmentsCollectionController *)self eventReporter];
  [eventReporter submitAttachmentBrowserActionEventForType:2];
}

- (BOOL)browseAttachmentsCell:(id)cell didSelectAttachment:(id)attachment
{
  attachmentCopy = attachment;
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [(ICBrowseAttachmentsCollectionController *)self browseAttachmentsCollectionView:collectionView didSelectAttachment:attachmentCopy indexPath:0];

  return 1;
}

- (void)browseAttachmentsCell:(id)cell shouldShareAttachment:(id)attachment
{
  attachmentCopy = attachment;
  cellCopy = cell;
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [(ICBrowseAttachmentsCollectionController *)self browseAttachmentsCollectionView:collectionView cell:cellCopy shouldShareAttachment:attachmentCopy];
}

- (void)browseAttachmentsCell:(id)cell shouldInspectAttachment:(id)attachment
{
  attachmentCopy = attachment;
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [(ICBrowseAttachmentsCollectionController *)self browseAttachmentsCollectionView:collectionView shouldInspectAttachment:attachmentCopy];
}

- (void)browseAttachmentsCollectionView:(id)view didSelectAttachment:(id)attachment indexPath:(id)path
{
  attachmentCopy = attachment;
  [(ICBrowseAttachmentsCollectionController *)self setSelectedIndexPath:path];
  v8 = [(ICBrowseAttachmentsCollectionController *)self attachmentsToPreviewWhenSelectingAttachment:attachmentCopy];
  v9 = [v8 indexOfObject:attachmentCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      shortLoggingDescription = [attachmentCopy shortLoggingDescription];
      *buf = 138412290;
      v18 = shortLoggingDescription;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Could not find attachment %@ in list of attachments in attachment browser. Falling back to single attachment", buf, 0xCu);
    }

    v16 = attachmentCopy;
    v12 = [NSArray arrayWithObjects:&v16 count:1];

    v13 = 0;
    v8 = v12;
  }

  else
  {
    v13 = v9;
  }

  eventReporter = [(ICBrowseAttachmentsCollectionController *)self eventReporter];
  [eventReporter submitAttachmentBrowserActionEventForType:4];

  ic_viewControllerManager = [(ICBrowseAttachmentsCollectionController *)self ic_viewControllerManager];
  [ic_viewControllerManager presentAttachments:v8 startingAtIndex:v13 delegate:self displayShowInNote:1 editable:0 selectedSubAttachment:0 presentingViewController:self];
}

- (void)browseAttachmentsCollectionView:(id)view cell:(id)cell shouldShareAttachment:(id)attachment
{
  cellCopy = cell;
  v9 = [ICAttachmentActivityViewController makeWithAttachment:attachment quickLookItemDelegate:0 completion:0];
  popoverPresentationController = [v9 popoverPresentationController];
  [popoverPresentationController setSourceView:cellCopy];

  [(ICBrowseAttachmentsCollectionController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)browseAttachmentsCollectionView:(id)view shouldInspectAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v7 = [[ICAttachmentInspectorViewController alloc] initWithAttachment:attachmentCopy];

  ic_embedInNavigationControllerForModalPresentation = [(ICAttachmentInspectorViewController *)v7 ic_embedInNavigationControllerForModalPresentation];
  [(ICBrowseAttachmentsCollectionController *)self presentViewController:ic_embedInNavigationControllerForModalPresentation animated:1 completion:0];
}

- (id)attachmentPresenter:(id)presenter transitionViewForAttachment:(id)attachment
{
  presenterCopy = presenter;
  attachmentCopy = attachment;
  selectedIndexPath = [(ICBrowseAttachmentsCollectionController *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    selectedIndexPath2 = [(ICBrowseAttachmentsCollectionController *)self selectedIndexPath];
  }

  else
  {
    fetchedResultsController = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
    v11 = [fetchedResultsController indexPathForObject:attachmentCopy];

    selectedIndexPath2 = [(ICBrowseAttachmentsCollectionController *)self collectionViewIndexPathFromFetchedResultsControllerIndexPath:v11];
    if (!selectedIndexPath2)
    {
      selectedIndexPath2 = v11;
    }
  }

  if ([selectedIndexPath2 item] >= 1 && (-[ICBrowseAttachmentsCollectionController collectionView](self, "collectionView"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "numberOfItemsInSection:", objc_msgSend(selectedIndexPath2, "section")), v12, v13 == 1))
  {
    collectionView2 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", 0, [selectedIndexPath2 section]);
    collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
    v16 = [collectionView cellForItemAtIndexPath:collectionView2];
  }

  else
  {
    collectionView2 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
    v16 = [collectionView2 cellForItemAtIndexPath:selectedIndexPath2];
  }

  contentView = [v16 contentView];
  subviews = [contentView subviews];
  firstObject = [subviews firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [firstObject attachmentPresenter:presenterCopy transitionViewForAttachment:attachmentCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v21 = ICDynamicCast();
      attachmentBrickView = [v21 attachmentBrickView];
      quickLookTransitionView = [attachmentBrickView quickLookTransitionView];

      goto LABEL_16;
    }

    view = [(ICBrowseAttachmentsCollectionController *)self view];
  }

  quickLookTransitionView = view;
LABEL_16:

  return quickLookTransitionView;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  collectionView2 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [interactionCopy locationInView:collectionView2];
  v9 = v8;
  v11 = v10;

  v12 = [collectionView ic_cellAtLocation:{v9, v11}];

  if (v12 && [v12 conformsToProtocol:&OBJC_PROTOCOL___ICNotePreviewingActions])
  {
    v13 = v12;
    objc_opt_class();
    v14 = ICDynamicCast();
    attachment = [v14 attachment];
    if ([attachment attachmentType] == 11)
    {
      objc_opt_class();
      attachmentModel = [attachment attachmentModel];
      v17 = ICDynamicCast();

      if (v17)
      {
        firstSubAttachment = [v17 firstSubAttachment];

        attachment = firstSubAttachment;
      }
    }

    if (attachment)
    {
      ic_viewControllerManager = [(ICBrowseAttachmentsCollectionController *)self ic_viewControllerManager];
      v31 = attachment;
      v20 = [NSArray arrayWithObjects:&v31 count:1];
      v21 = [ICAttachmentPresenter previewViewControllerWithViewControllerManager:ic_viewControllerManager attachments:v20 startingAtIndex:0 delegate:0 editable:0 isFromAttachmentBrowser:1];
    }

    else
    {
      v21 = 0;
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001469B4;
    v29[3] = &unk_100649EB8;
    v30 = v21;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001469BC;
    v26[3] = &unk_10064B108;
    v27 = v13;
    selfCopy = self;
    v23 = v13;
    v24 = v21;
    v22 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:v29 actionProvider:v26];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  collectionView2 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [interactionCopy locationInView:collectionView2];
  v10 = v9;
  v12 = v11;

  v13 = [collectionView ic_cellAtLocation:{v10, v12}];

  contentView = [v13 contentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v15 = ICDynamicCast();
    attachmentBrickView = [v15 attachmentBrickView];

    contentView = attachmentBrickView;
  }

  if (contentView)
  {
    v17 = [[UITargetedPreview alloc] initWithView:contentView];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  interactionCopy = interaction;
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  collectionView2 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [interactionCopy locationInView:collectionView2];
  v12 = v11;
  v14 = v13;

  v15 = [collectionView indexPathForItemAtPoint:{v12, v14}];

  v16 = [(ICBrowseAttachmentsCollectionController *)self attachmentAtIndexPath:v15];
  [animatorCopy setPreferredCommitStyle:1];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100146CE4;
  v19[3] = &unk_100645D40;
  v19[4] = self;
  v20 = v16;
  v21 = v15;
  v17 = v15;
  v18 = v16;
  [animatorCopy addCompletion:v19];
}

- (id)collectionViewIndexPathFromFetchedResultsControllerIndexPath:(id)path
{
  pathCopy = path;
  fetchedResultsController = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  sections = [fetchedResultsController sections];
  v7 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  sortedSections = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v9 = [sortedSections count];

  if (v9)
  {
    v10 = 0;
    while (1)
    {
      sortedSections2 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
      v12 = [sortedSections2 objectAtIndexedSubscript:v10];

      name = [v12 name];
      name2 = [v7 name];
      v15 = [name isEqual:name2];

      if (v15)
      {
        break;
      }

      ++v10;
      sortedSections3 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
      v17 = [sortedSections3 count];

      if (v10 >= v17)
      {
        goto LABEL_5;
      }
    }

    v18 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [pathCopy item], v10);
  }

  else
  {
LABEL_5:
    v18 = 0;
  }

  return v18;
}

- (int64_t)numberOfItemsToDisplayInSection:(int64_t)section withTraitCollection:(id)collection
{
  collectionCopy = collection;
  sortedSections = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v8 = [sortedSections objectAtIndexedSubscript:section];

  name = [v8 name];
  intValue = [name intValue];

  if ([(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewForSection:intValue])
  {
    numberOfObjects = 1;
  }

  else
  {
    numberOfObjects = [v8 numberOfObjects];
    if ([(ICBrowseAttachmentsCollectionController *)self displayAllSections])
    {
      horizontalSizeClass = [collectionCopy horizontalSizeClass];
      verticalSizeClass = [collectionCopy verticalSizeClass];
      v14 = 6;
      if (numberOfObjects < 6)
      {
        v14 = numberOfObjects;
      }

      v15 = 4;
      if (numberOfObjects < 4)
      {
        v15 = numberOfObjects;
      }

      if (verticalSizeClass == 1)
      {
        v14 = v15;
      }

      v16 = 3;
      if (numberOfObjects == 4)
      {
        v16 = 4;
      }

      if (numberOfObjects < 4)
      {
        v16 = numberOfObjects;
      }

      if (horizontalSizeClass == 1)
      {
        numberOfObjects = v16;
      }

      else
      {
        numberOfObjects = v14;
      }
    }
  }

  return numberOfObjects;
}

- (id)titleForAttachmentSection:(signed __int16)section
{
  if (section - 1) <= 6 && ((0x7Du >> (section - 1)))
  {
    v3 = off_10064B128[(section - 1)];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_100661CF0 table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)contentSizeCategoryDidChange
{
  self->_brickCellSize = CGSizeZero;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v4 = [collectionView _visibleSupplementaryViewsOfKind:UICollectionElementKindSectionHeader];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 contentSizeCategoryDidChange];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  collectionViewLayout = [(ICBrowseAttachmentsCollectionController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  [(ICBrowseAttachmentsCollectionController *)self updateEmptyViewFonts];
}

- (void)updateHeaderViewMargins
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(ICBrowseAttachmentsCollectionController *)self collectionView:0];
  v4 = [v3 _visibleSupplementaryViewsOfKind:UICollectionElementKindSectionHeader];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        v9 = ICDynamicCast();
        if (v9)
        {
          view = [(ICBrowseAttachmentsCollectionController *)self view];
          [view directionalLayoutMargins];
          [v9 setLeadingMargin:v11];

          view2 = [(ICBrowseAttachmentsCollectionController *)self view];
          [view2 directionalLayoutMargins];
          [v9 setTrailingMargin:v13];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)updateImagesAndMoviesScrollViewContentInset
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewAtIndexPath:v9])
        {
          collectionView2 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
          v11 = [collectionView2 cellForItemAtIndexPath:v9];

          objc_opt_class();
          contentView = [v11 contentView];
          subviews = [contentView subviews];
          firstObject = [subviews firstObject];
          v15 = ICCheckedDynamicCast();

          [(ICBrowseAttachmentsCollectionController *)self adjustContentInsetOfImageScroller:v15];
        }
      }

      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (id)emptyTextForAttachmentSection:(signed __int16)section
{
  if (section <= 7)
  {
    v4 = off_10064B160[section];
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:&stru_100661CF0 table:0];
  }

  return v3;
}

- (void)updateEmptyView
{
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v4 = [(ICBrowseAttachmentsCollectionController *)self numberOfSectionsInCollectionView:collectionView];

  emptyView = [(ICBrowseAttachmentsCollectionController *)self emptyView];
  v26 = emptyView;
  if (v4)
  {
    [emptyView removeFromSuperview];
  }

  else
  {

    if (!v26)
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [UINib nibWithNibName:@"ICBrowseAttachmentsEmpty" bundle:v6];

      v8 = [v7 instantiateWithOwner:self options:0];
      emptyView2 = [(ICBrowseAttachmentsCollectionController *)self emptyView];
      [emptyView2 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    v10 = objc_alloc_init(NSMutableParagraphStyle);
    [v10 setLineSpacing:2.0];
    [v10 setParagraphSpacing:2.0];
    [v10 setAlignment:1];
    v29 = NSParagraphStyleAttributeName;
    v30 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v12 = [NSAttributedString alloc];
    v13 = [(ICBrowseAttachmentsCollectionController *)self emptyTextForAttachmentSection:[(ICBrowseAttachmentsCollectionController *)self attachmentSection]];
    v14 = [v12 initWithString:v13 attributes:v11];
    emptyDetailsLabel = [(ICBrowseAttachmentsCollectionController *)self emptyDetailsLabel];
    [emptyDetailsLabel setAttributedText:v14];

    emptyView3 = [(ICBrowseAttachmentsCollectionController *)self emptyView];
    superview = [emptyView3 superview];

    if (!superview)
    {
      view = [(ICBrowseAttachmentsCollectionController *)self view];
      emptyView4 = [(ICBrowseAttachmentsCollectionController *)self emptyView];
      [view addSubview:emptyView4];

      v27 = @"emptyView";
      emptyView5 = [(ICBrowseAttachmentsCollectionController *)self emptyView];
      v28 = emptyView5;
      v21 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];

      view2 = [(ICBrowseAttachmentsCollectionController *)self view];
      v23 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[emptyView]|" options:0 metrics:0 views:v21];
      [view2 addConstraints:v23];

      view3 = [(ICBrowseAttachmentsCollectionController *)self view];
      v25 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[emptyView]|" options:0 metrics:0 views:v21];
      [view3 addConstraints:v25];
    }

    [(ICBrowseAttachmentsCollectionController *)self updateEmptyViewFonts];
  }
}

- (id)attachmentsToPreviewWhenSelectingAttachment:(id)attachment
{
  attachmentCopy = attachment;
  fetchedResultsController = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  v6 = [fetchedResultsController indexPathForObject:attachmentCopy];

  v7 = [(ICBrowseAttachmentsCollectionController *)self collectionViewIndexPathFromFetchedResultsControllerIndexPath:v6];
  if (!v7)
  {
    v7 = v6;
  }

  v8 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", 0, [v7 section]);
  collectionView = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v10 = [collectionView cellForItemAtIndexPath:v8];

  contentView = [v10 contentView];
  subviews = [contentView subviews];
  firstObject = [subviews firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attachments = [firstObject attachments];
  }

  else
  {
    fetchedResultsController2 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
    sections = [fetchedResultsController2 sections];
    v17 = [sections objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

    attachments = [v17 objects];
  }

  return attachments;
}

- (double)leadingMargin
{
  view = [(ICBrowseAttachmentsCollectionController *)self view];
  [view directionalLayoutMargins];
  v4 = v3;

  return v4;
}

- (double)trailingMargin
{
  view = [(ICBrowseAttachmentsCollectionController *)self view];
  [view directionalLayoutMargins];
  v4 = v3;

  return v4;
}

- (void)adjustContentInsetOfImageScroller:(id)scroller
{
  scrollerCopy = scroller;
  v4 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v4 userInterfaceLayoutDirection];

  collectionView = [scrollerCopy collectionView];
  [collectionView contentInset];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  collectionView2 = [scrollerCopy collectionView];
  [collectionView2 contentOffset];
  v17 = v16;
  v19 = v18;

  v20 = -v17;
  if (userInterfaceLayoutDirection == 1)
  {
    v21 = v14;
  }

  else
  {
    v21 = v10;
  }

  v22 = v21 == v20 || vabdd_f64(v20, v21) < fabs(v21 * 0.000000999999997);
  if (userInterfaceLayoutDirection == 1)
  {
    [(ICBrowseAttachmentsCollectionController *)self trailingMargin];
    v24 = v23;
    [(ICBrowseAttachmentsCollectionController *)self leadingMargin];
    v26 = v25;
    v27 = v25;
  }

  else
  {
    [(ICBrowseAttachmentsCollectionController *)self leadingMargin];
    v24 = v28;
    [(ICBrowseAttachmentsCollectionController *)self trailingMargin];
    v27 = v29;
    v26 = v24;
  }

  collectionView3 = [scrollerCopy collectionView];
  [collectionView3 setContentInset:{v8, v24, v12, v27}];

  if (v22)
  {
    collectionView4 = [scrollerCopy collectionView];
    [collectionView4 setContentOffset:{-v26, v19}];
  }
}

- (void)applyAccessibilityInfo
{
  noAttachmentsLabel = [(ICBrowseAttachmentsCollectionController *)self noAttachmentsLabel];
  accessibilityTraits = [noAttachmentsLabel accessibilityTraits];
  [noAttachmentsLabel setAccessibilityTraits:UIAccessibilityTraitHeader | accessibilityTraits];
}

- (double)estimatedHeightForAXLargerTextSizesForSection:(unint64_t)section
{
  sortedSections = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v6 = [sortedSections objectAtIndexedSubscript:section];

  name = [v6 name];
  intValue = [name intValue];

  v9 = [(ICBrowseAttachmentsCollectionController *)self titleForAttachmentSection:intValue];
  v10 = +[UIFont ic_attachmentBrowserTitleFont];
  if (UIAccessibilityIsBoldTextEnabled())
  {
    [v10 pointSize];
    *&v11 = v11 * 1.1;
    v12 = [UIFont systemFontOfSize:roundf(*&v11) weight:UIFontWeightHeavy];
    ic_fontWithSingleLineA = [v12 ic_fontWithSingleLineA];

    v10 = ic_fontWithSingleLineA;
  }

  view = [(ICBrowseAttachmentsCollectionController *)self view];
  [view frame];
  v16 = v15;
  v21 = NSFontAttributeName;
  v22 = v10;
  v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  [v9 boundingRectWithSize:3 options:v17 attributes:0 context:{v16, 1.79769313e308}];
  v19 = v18;

  return v19;
}

- (void)updateEmptyViewFonts
{
  emptyView = [(ICBrowseAttachmentsCollectionController *)self emptyView];

  if (emptyView)
  {
    v4 = [UIFont ic_preferredFontForTextStyle:UIFontTextStyleBody adjustedForDefaultSize:28.0 maxSize:53.0];
    noAttachmentsLabel = [(ICBrowseAttachmentsCollectionController *)self noAttachmentsLabel];
    [noAttachmentsLabel setFont:v4];

    v6 = [UIFont ic_preferredFontForTextStyle:UIFontTextStyleBody adjustedForDefaultSize:17.0 maxSize:44.0];
    emptyDetailsLabel = [(ICBrowseAttachmentsCollectionController *)self emptyDetailsLabel];
    [emptyDetailsLabel setFont:v6];

    noAttachmentsLabel2 = [(ICBrowseAttachmentsCollectionController *)self noAttachmentsLabel];
    font = [noAttachmentsLabel2 font];
    emptyDetailsLabel2 = [(ICBrowseAttachmentsCollectionController *)self emptyDetailsLabel];
    font2 = [emptyDetailsLabel2 font];
    NSLog(@"Setting fonts:\n\t%@\n\t%@", font, font2);

    v16 = [UIColor colorWithWhite:0.6 alpha:1.0];
    if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
    {
      emptyDetailsLabel4 = [UIColor ic_darkerAccessibilityColorForColor:v16];
      noAttachmentsLabel3 = [(ICBrowseAttachmentsCollectionController *)self noAttachmentsLabel];
      [noAttachmentsLabel3 setTextColor:emptyDetailsLabel4];

      emptyDetailsLabel3 = [(ICBrowseAttachmentsCollectionController *)self emptyDetailsLabel];
      [emptyDetailsLabel3 setTextColor:emptyDetailsLabel4];
    }

    else
    {
      noAttachmentsLabel4 = [(ICBrowseAttachmentsCollectionController *)self noAttachmentsLabel];
      [noAttachmentsLabel4 setTextColor:v16];

      emptyDetailsLabel4 = [(ICBrowseAttachmentsCollectionController *)self emptyDetailsLabel];
      [emptyDetailsLabel4 setTextColor:v16];
    }
  }
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter)
  {
    if (+[ICNAEventReporter isOptedInForAnalytics])
    {
      viewIfLoaded = [(ICBrowseAttachmentsCollectionController *)self viewIfLoaded];

      if (viewIfLoaded)
      {
        v4 = [ICNAEventReporter alloc];
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        view = [(ICBrowseAttachmentsCollectionController *)self view];
        v8 = [v4 initWithSubTrackerName:v6 view:view];
        eventReporter = self->_eventReporter;
        self->_eventReporter = v8;

        v10 = +[NSNotificationCenter defaultCenter];
        [v10 addObserver:self selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:self->_eventReporter];
      }
    }
  }

  v11 = self->_eventReporter;

  return v11;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = ICNAEventReporterLostSessionNotification;
  object = [sessionCopy object];

  [v8 removeObserver:self name:v6 object:object];
}

@end