@interface ICBrowseAttachmentsCollectionController
- (BOOL)browseAttachmentsCell:(id)a3 didSelectAttachment:(id)a4;
- (BOOL)useImagesAndMoviesScrollViewAtIndexPath:(id)a3;
- (BOOL)useImagesAndMoviesScrollViewForSection:(signed __int16)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (ICBrowseAttachmentsCollectionController)initWithAttachmentSection:(signed __int16)a3;
- (ICNAEventReporter)eventReporter;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UISegmentedControl)segmentedControl;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (double)estimatedHeightForAXLargerTextSizesForSection:(unint64_t)a3;
- (double)leadingMargin;
- (double)trailingMargin;
- (id)attachmentAtIndexPath:(id)a3;
- (id)attachmentPresenter:(id)a3 transitionViewForAttachment:(id)a4;
- (id)attachmentsToPreviewWhenSelectingAttachment:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewIndexPathFromFetchedResultsControllerIndexPath:(id)a3;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)emptyTextForAttachmentSection:(signed __int16)a3;
- (id)nonScrollingCellIdentifierForAttachmentType:(signed __int16)a3;
- (id)titleForAttachmentSection:(signed __int16)a3;
- (id)viewControllerForAttachmentSection:(signed __int16)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfItemsToDisplayInSection:(int64_t)a3 withTraitCollection:(id)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (unint64_t)cellsPerRow;
- (void)accountsDidChange;
- (void)accountsWillChange;
- (void)adjustContentInsetOfImageScroller:(id)a3;
- (void)applyAccessibilityInfo;
- (void)browseAttachmentsCell:(id)a3 shouldInspectAttachment:(id)a4;
- (void)browseAttachmentsCell:(id)a3 shouldShareAttachment:(id)a4;
- (void)browseAttachmentsCollectionView:(id)a3 cell:(id)a4 shouldShareAttachment:(id)a5;
- (void)browseAttachmentsCollectionView:(id)a3 didSelectAttachment:(id)a4 indexPath:(id)a5;
- (void)browseAttachmentsCollectionView:(id)a3 shouldInspectAttachment:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)contentSizeCategoryDidChange;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)controllerDidChangeContent:(id)a3;
- (void)dealloc;
- (void)doneAction:(id)a3;
- (void)eventReporterLostSession:(id)a3;
- (void)notesContextRefreshNotification:(id)a3;
- (void)reload;
- (void)respondToTapGesture:(id)a3;
- (void)segmentedControlValueDidChange:(id)a3;
- (void)showAllForAttachmentSection:(signed __int16)a3;
- (void)sortFetchedResultsSections;
- (void)updateEmptyView;
- (void)updateEmptyViewFonts;
- (void)updateHeaderViewMargins;
- (void)updateImagesAndMoviesScrollViewContentInset;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ICBrowseAttachmentsCollectionController

- (ICBrowseAttachmentsCollectionController)initWithAttachmentSection:(signed __int16)a3
{
  v5 = objc_alloc_init(ICBrowseAttachmentsCollectionViewLayout);
  v10.receiver = self;
  v10.super_class = ICBrowseAttachmentsCollectionController;
  v6 = [(ICBrowseAttachmentsCollectionController *)&v10 initWithCollectionViewLayout:v5];

  if (v6)
  {
    v6->_attachmentSection = a3;
    v7 = [(ICBrowseAttachmentsCollectionController *)v6 collectionView];
    [v7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICBrowseAttachmentsImagesAndMoviesCell"];

    v8 = [(ICBrowseAttachmentsCollectionController *)v6 collectionView];
    [v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICBrowseAttachmentsScannedPagesCell"];
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
  v3 = [(ICBrowseAttachmentsCollectionController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 setPrefersLargeTitles:1];

  if ([(ICBrowseAttachmentsCollectionController *)self displayAllSections])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
  [v6 setLargeTitleDisplayMode:v5];

  if (+[UIDevice ic_isVision])
  {
    v7 = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
    [v7 setStyle:0];

    v8 = [(ICBrowseAttachmentsCollectionController *)self segmentedControl];
    v9 = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
    [v9 setTitleView:v8];
  }

  v10 = +[UIColor ICBackgroundColor];
  v11 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v11 setBackgroundColor:v10];

  v12 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v12 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICBrowseAttachmentsImagesAndMoviesCell"];

  v13 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v13 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICBrowseAttachmentsScannedPagesCell"];

  v14 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v14 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ICBrowseAttachmentsBrickCell"];

  v15 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v15 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kICBrowseAttachmentsImageCell"];

  v16 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v16 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kICBrowseAttachmentsMovieCell"];

  v17 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v17 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kICBrowseAttachmentsDrawingCell"];

  v18 = [[ICBrowseAttachmentsBrickCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  defaultSizingBrickCell = self->_defaultSizingBrickCell;
  self->_defaultSizingBrickCell = v18;

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [UINib nibWithNibName:v21 bundle:v22];

  v24 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v24 registerNib:v23 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ICBrowseAttachmentsHeaderView"];

  v25 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneAction:"];
  v36 = v25;
  v26 = [NSArray arrayWithObjects:&v36 count:1];
  v27 = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
  [v27 setRightBarButtonItems:v26];

  v28 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"respondToTapGesture:"];
  v29 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v29 addGestureRecognizer:v28];

  v30 = +[ICBrowseAttachmentsDragAndDropDelegate sharedInstance];
  v31 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v31 setDragDelegate:v30];

  v32 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
  [(ICBrowseAttachmentsCollectionController *)self setContextInteraction:v32];

  v33 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v34 = [(ICBrowseAttachmentsCollectionController *)self contextInteraction];
  [v33 addInteraction:v34];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v14 viewWillLayoutSubviews];
  v3 = [(ICBrowseAttachmentsCollectionController *)self view];
  [v3 directionalLayoutMargins];
  v5 = v4;
  v7 = v6;

  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    v8 = 32.0;
  }

  else
  {
    v9 = [(ICBrowseAttachmentsCollectionController *)self view];
    v10 = [v9 traitCollection];
    v11 = [v10 horizontalSizeClass];

    if (v11 == 2)
    {
      v8 = 28.0;
    }

    else
    {
      v8 = 16.0;
    }
  }

  v12 = [(ICBrowseAttachmentsCollectionController *)self view];
  [v12 setDirectionalLayoutMargins:{v5, v8, v7, v8}];

  v13 = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
  [v13 setLargeTitleInsets:{0.0, v8, 0.0, v8}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v8 viewWillAppear:a3];
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

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v3 viewDidAppear:a3];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v8 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:ICNotesContextRefreshNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:ICAccountsWillChangeNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:ICAccountsDidChangeNotification object:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v7 viewDidDisappear:a3];
  v4 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  [v4 setDelegate:0];

  [(ICBrowseAttachmentsCollectionController *)self setFetchedResultsController:0];
  v5 = [(ICBrowseAttachmentsCollectionController *)self browserDidCloseHandler];

  if (v5)
  {
    v6 = [(ICBrowseAttachmentsCollectionController *)self browserDidCloseHandler];
    v6[2](v6, 0);
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(ICBrowseAttachmentsCollectionController *)self collectionViewLayout];
  [v8 invalidateLayout];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100143D98;
  v10[3] = &unk_100645E08;
  v10[4] = self;
  [v7 animateAlongsideTransition:v10 completion:0];
  v9.receiver = self;
  v9.super_class = ICBrowseAttachmentsCollectionController;
  [(ICBrowseAttachmentsCollectionController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
      v8 = [NSPredicate predicateWithFormat:@"typeUTI == %@", ICAttachmentUTTypePaperDocumentScan];
      v34[1] = v8;
      v9 = [NSArray arrayWithObjects:v34 count:2];
      v10 = [NSCompoundPredicate orPredicateWithSubpredicates:v9];

      v7 = v10;
    }

    v33[0] = v7;
    v11 = +[ICNoteContext sharedContext];
    v12 = [v11 managedObjectContext];
    v13 = [ICAttachment predicateForAttachmentBrowserWithContext:v12];
    v33[1] = v13;
    v14 = [NSArray arrayWithObjects:v33 count:2];

    v15 = [[NSCompoundPredicate alloc] initWithType:1 subpredicates:v14];
  }

  else
  {
    v16 = [NSPredicate predicateWithFormat:@"section != %d", 0];
    v32[0] = v16;
    v17 = +[ICNoteContext sharedContext];
    v18 = [v17 managedObjectContext];
    v19 = [ICAttachment predicateForAttachmentBrowserWithContext:v18];
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

  v23 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  [v23 setDelegate:self];

  [(ICBrowseAttachmentsCollectionController *)self sortFetchedResultsSections];
  if ([(ICBrowseAttachmentsCollectionController *)self displayAllSections])
  {
    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"Attachments" value:&stru_100661CF0 table:0];
    v26 = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
    [v26 setTitle:v25];
  }

  else
  {
    v24 = [(ICBrowseAttachmentsCollectionController *)self titleForAttachmentSection:[(ICBrowseAttachmentsCollectionController *)self attachmentSection]];
    v25 = [(ICBrowseAttachmentsCollectionController *)self navigationItem];
    [v25 setTitle:v24];
  }

  v27 = +[ICAttachment attachmentSectionSortOrder];
  v28 = [NSNumber numberWithShort:[(ICBrowseAttachmentsCollectionController *)self attachmentSection]];
  v29 = [v27 indexOfObject:v28];
  v30 = [(ICBrowseAttachmentsCollectionController *)self segmentedControl];
  [v30 setSelectedSegmentIndex:v29];

  [(ICBrowseAttachmentsCollectionController *)self updateEmptyView];
  v31 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  [(ICBrowseAttachmentsCollectionController *)self controllerDidChangeContent:v31];

  [(ICBrowseAttachmentsCollectionController *)self applyAccessibilityInfo];
}

- (id)attachmentAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];

  if (!v5)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v6 = [v4 section];
  v7 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1004E1A6C(v4, self);
    }

    goto LABEL_12;
  }

  v9 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

  v11 = [v4 row];
  v12 = [v10 objects];
  v13 = [v12 count];

  if (v11 >= v13)
  {
    v17 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1004E1A6C(v4, self);
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  v14 = [v10 objects];
  v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  v16 = ICCheckedDynamicCast();

LABEL_13:
LABEL_14:

  return v16;
}

- (BOOL)useImagesAndMoviesScrollViewForSection:(signed __int16)a3
{
  v3 = a3;
  v4 = +[UIDevice ic_isVision];
  v6 = v3 == 1 || v3 == 7;
  return (v4 & 1) == 0 && v6;
}

- (BOOL)useImagesAndMoviesScrollViewAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v6 = [v4 section];

  v7 = [v5 objectAtIndexedSubscript:v6];

  v8 = [v7 name];
  LOWORD(v6) = [v8 intValue];

  LOBYTE(self) = [(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewForSection:v6];
  return self;
}

- (UISegmentedControl)segmentedControl
{
  segmentedControl = self->_segmentedControl;
  if (!segmentedControl)
  {
    v4 = +[ICAttachment attachmentSectionSortOrder];
    v5 = [v4 array];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001446B4;
    v10[3] = &unk_10064B078;
    v10[4] = self;
    v6 = [v5 ic_compactMap:v10];

    v7 = [[UISegmentedControl alloc] initWithItems:v6];
    v8 = self->_segmentedControl;
    self->_segmentedControl = v7;

    [(UISegmentedControl *)self->_segmentedControl setApportionsSegmentWidthsByContent:1];
    [(UISegmentedControl *)self->_segmentedControl addTarget:self action:"segmentedControlValueDidChange:" forControlEvents:4096];

    segmentedControl = self->_segmentedControl;
  }

  return segmentedControl;
}

- (void)segmentedControlValueDidChange:(id)a3
{
  v4 = a3;
  v7 = +[ICAttachment attachmentSectionSortOrder];
  v5 = [v4 selectedSegmentIndex];

  v6 = [v7 objectAtIndexedSubscript:v5];
  -[ICBrowseAttachmentsCollectionController setAttachmentSection:](self, "setAttachmentSection:", [v6 integerValue]);
}

- (void)doneAction:(id)a3
{
  v4 = [(ICBrowseAttachmentsCollectionController *)self browserDidCloseHandler];
  v5 = [v4 copy];

  [(ICBrowseAttachmentsCollectionController *)self setBrowserDidCloseHandler:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10014486C;
  v8[3] = &unk_100645CC8;
  v9 = v5;
  v6 = v5;
  [(ICBrowseAttachmentsCollectionController *)self dismissViewControllerAnimated:1 completion:v8];
  v7 = [(ICBrowseAttachmentsCollectionController *)self eventReporter];
  [v7 submitAttachmentBrowserActionEventForType:1];
}

- (void)respondToTapGesture:(id)a3
{
  v4 = a3;
  v5 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v13 = [v10 indexPathForItemAtPoint:{v7, v9}];

  if (v13)
  {
    v11 = [(ICBrowseAttachmentsCollectionController *)self attachmentAtIndexPath:v13];
    v12 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
    [(ICBrowseAttachmentsCollectionController *)self browseAttachmentsCollectionView:v12 didSelectAttachment:v11 indexPath:v13];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  if ([(ICBrowseAttachmentsCollectionController *)self updatingAccounts])
  {
    return 0;
  }

  v5 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v6 = [v5 count];

  return v6;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v7 = [v6 traitCollection];
  v8 = [(ICBrowseAttachmentsCollectionController *)self numberOfItemsToDisplayInSection:a4 withTraitCollection:v7];

  return v8;
}

- (id)nonScrollingCellIdentifierForAttachmentType:(signed __int16)a3
{
  if (a3 <= 5)
  {
    if (a3 >= 3 && a3 != 4)
    {
      if (a3 == 5)
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

  if (a3 > 0xF)
  {
    v3 = @"kICBrowseAttachmentsImageCell";
    goto LABEL_12;
  }

  if (((1 << a3) & 0x59C0) != 0)
  {
    goto LABEL_11;
  }

  if (((1 << a3) & 0x2600) != 0)
  {
    v3 = @"kICBrowseAttachmentsDrawingCell";
  }

  else
  {
    v3 = @"kICBrowseAttachmentsImageCell";
    if (a3 == 15)
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

  v10 = [v9 name];
  v11 = [v10 intValue];

  v12 = [(ICBrowseAttachmentsCollectionController *)self attachmentAtIndexPath:v7];
  if ([(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewAtIndexPath:v7])
  {
    v13 = v11;
    v32 = v6;
    if (v11 == 1)
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

    v17 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
    v16 = [v17 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v7];

    v18 = [v16 contentView];
    v19 = [v18 subviews];
    v20 = [v19 count];

    if (v20)
    {
      objc_opt_class();
      v21 = [v16 contentView];
      v22 = [v21 subviews];
      v23 = [v22 firstObject];
      v15 = ICCheckedDynamicCast();

      [(ICImagesAndMoviesScrollView *)v15 setAttachmentSection:v13];
    }

    else
    {
      v24 = [ICImagesAndMoviesScrollView alloc];
      v25 = [v16 contentView];
      [v25 bounds];
      v15 = [(ICImagesAndMoviesScrollView *)v24 initWithFrame:v13 forAttachmentSection:?];

      [(ICImagesAndMoviesScrollView *)v15 setViewController:self];
      [(ICImagesAndMoviesScrollView *)v15 setDelegate:self];
      [(ICImagesAndMoviesScrollView *)v15 setAutoresizingMask:18];
      v26 = [(ICImagesAndMoviesScrollView *)v15 collectionView];
      [v26 setContentInsetAdjustmentBehavior:2];

      v27 = [(ICImagesAndMoviesScrollView *)v15 collectionView];
      [v16 setInnerCollectionView:v27];

      v28 = [v16 contentView];
      [v28 addSubview:v15];
    }

    [(ICBrowseAttachmentsCollectionController *)self adjustContentInsetOfImageScroller:v15];
    v6 = v32;
  }

  else
  {
    v15 = -[ICBrowseAttachmentsCollectionController nonScrollingCellIdentifierForAttachmentType:](self, "nonScrollingCellIdentifierForAttachmentType:", [v12 attachmentType]);
    v16 = [v6 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v7];
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

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v9, "section")}];

  v13 = [v12 name];
  v14 = [v13 intValue];

  v15 = [v10 isEqualToString:UICollectionElementKindSectionHeader];
  if (v15)
  {
    v16 = [v8 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ICBrowseAttachmentsHeaderView" forIndexPath:v9];
    v17 = v14;
    v18 = [(ICBrowseAttachmentsCollectionController *)self titleForAttachmentSection:v17];
    v19 = [v16 sectionLabel];
    [v19 setText:v18];

    v20 = [(ICBrowseAttachmentsCollectionController *)self view];
    [v20 directionalLayoutMargins];
    [v16 setLeadingMargin:v21];

    v22 = [(ICBrowseAttachmentsCollectionController *)self view];
    [v22 directionalLayoutMargins];
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = [v7 cellForItemAtIndexPath:v6];

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
    v3 = [(ICBrowseAttachmentsCollectionController *)self attachmentSection];
    if (v3 < 8)
    {
      return qword_100531DD0[v3];
    }
  }

  v5 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v6 = [v5 traitCollection];
  v7 = [v6 verticalSizeClass];

  if (v7 == 1)
  {
    return 2;
  }

  v8 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v8 frame];
  v10 = v9;
  [(ICBrowseAttachmentsCollectionController *)self leadingMargin];
  v12 = v10 - v11;
  [(ICBrowseAttachmentsCollectionController *)self trailingMargin];
  v4 = vcvtmd_u64_f64((v12 - v13) / 310.0);

  return v4;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  [v7 frame];
  v10 = v9;
  if ([(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewAtIndexPath:v8])
  {
    *&v11 = 128.0;
  }

  else
  {
    v12 = [(ICBrowseAttachmentsCollectionController *)self attachmentAtIndexPath:v8];
    v13 = [v7 traitCollection];
    v14 = [v13 horizontalSizeClass];

    if (v14 == 1 && (+[ICDeviceSupport isLargerCompactHorizontalWidthDevice]& 1) == 0)
    {
      [(ICBrowseAttachmentsCollectionController *)self leadingMargin];
      v23 = v10 - v22;
      [(ICBrowseAttachmentsCollectionController *)self trailingMargin];
      v10 = v23 - v24;
    }

    else
    {
      v15 = [(ICBrowseAttachmentsCollectionController *)self cellsPerRow];
      v16 = +[UIDevice ic_isVision];
      v17 = -28.0;
      if (v16)
      {
        v17 = -20.0;
      }

      v18 = v10 + v17 * (v15 + -1.0);
      [(ICBrowseAttachmentsCollectionController *)self leadingMargin];
      v20 = v18 - v19;
      [(ICBrowseAttachmentsCollectionController *)self trailingMargin];
      v10 = floor((v20 - v21) / v15);
    }

    v25 = -[ICBrowseAttachmentsCollectionController nonScrollingCellIdentifierForAttachmentType:](self, "nonScrollingCellIdentifierForAttachmentType:", [v12 attachmentType]);
    *&v11 = v10;
    if ([v25 isEqual:@"ICBrowseAttachmentsBrickCell"])
    {
      v26 = [(ICBrowseAttachmentsCollectionController *)self attachmentAtIndexPath:v8];
      [(ICBrowseAttachmentsBrickCell *)self->_defaultSizingBrickCell setAttachment:v26];

      v27 = [(ICBrowseAttachmentsBrickCell *)self->_defaultSizingBrickCell attachmentBrickView];
      [v27 computedSize];
      v11 = v28;
    }
  }

  v29 = v10;
  v30 = *&v11;
  result.height = v30;
  result.width = v29;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = a3;
  v8 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v9 = [v8 objectAtIndexedSubscript:a5];

  v10 = [v9 name];
  v11 = [v10 intValue];

  v12 = [v7 traitCollection];

  v13 = [v12 horizontalSizeClass];
  if ([(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewForSection:v11])
  {
    if (v13 == 1)
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
    if (v13 == 1)
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

  v19 = [(ICBrowseAttachmentsCollectionController *)self view];
  v20 = [v19 effectiveUserInterfaceLayoutDirection];

  if (v20 == 1)
  {
    v21 = v15;
  }

  else
  {
    v21 = v16;
  }

  if (v20 == 1)
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

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  v5 = [UIDevice ic_isVision:a3];
  result = 16.0;
  if (v5)
  {
    return 20.0;
  }

  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v7 = a3;
  if ([(ICBrowseAttachmentsCollectionController *)self displayAllSections])
  {
    v8 = +[UIFont ic_attachmentBrowserTitleFont];
    [v8 lineHeight];
    v10 = round(v9);

    v11 = [v7 window];
    v12 = [v11 windowScene];
    v13 = [v12 interfaceOrientation];

    v14 = [v7 traitCollection];
    v15 = [v14 horizontalSizeClass];

    if (ICAccessibilityAccessibilityLargerTextSizesEnabled() && (v13 - 3) >= 0xFFFFFFFFFFFFFFFELL && v15 == 1)
    {
      [(ICBrowseAttachmentsCollectionController *)self estimatedHeightForAXLargerTextSizesForSection:a5];
      v10 = v10 + v16;
    }

    v17 = 15.0;
    if (a5 > 0)
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
  v3 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  v4 = [v3 sections];
  v5 = [v4 mutableCopy];

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
      v10 = 0;
      goto LABEL_8;
    }
  }

  v10 = [&off_10066E160 stringValue];
  v11 = 1;
LABEL_8:
  v12 = [NSSortDescriptor sortDescriptorWithKey:@"modificationDate" ascending:0];
  v28 = v12;
  v13 = [NSArray arrayWithObjects:&v28 count:1];
  v14 = [(ICBrowseAttachmentsSectionInfo *)v7 initWithSectionInfo:v9 name:v10 additionalObjects:v6 sortDescriptors:v13];

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

- (void)controllerDidChangeContent:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100145D20;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)notesContextRefreshNotification:(id)a3
{
  v3 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  [v3 performFetch:0];
}

- (void)accountsWillChange
{
  [(ICBrowseAttachmentsCollectionController *)self setUpdatingAccounts:1];
  v3 = [(ICBrowseAttachmentsCollectionController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v4 reloadData];

  v5 = [(ICBrowseAttachmentsCollectionController *)self collectionViewLayout];
  [v5 invalidateLayout];

  [(ICBrowseAttachmentsCollectionController *)self updateEmptyView];
}

- (void)accountsDidChange
{
  [(ICBrowseAttachmentsCollectionController *)self setUpdatingAccounts:0];
  v3 = [(ICBrowseAttachmentsCollectionController *)self view];
  [v3 setUserInteractionEnabled:1];

  v4 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  [v4 performFetch:0];

  [(ICBrowseAttachmentsCollectionController *)self sortFetchedResultsSections];
  v5 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v5 reloadData];

  v6 = [(ICBrowseAttachmentsCollectionController *)self collectionViewLayout];
  [v6 invalidateLayout];

  [(ICBrowseAttachmentsCollectionController *)self updateEmptyView];
}

- (id)viewControllerForAttachmentSection:(signed __int16)a3
{
  v3 = a3;
  v4 = [(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewForSection:?];
  v5 = off_10063FFA0;
  if (!v4)
  {
    v5 = off_10063FF80;
  }

  v6 = [objc_alloc(*v5) initWithAttachmentSection:v3];

  return v6;
}

- (void)showAllForAttachmentSection:(signed __int16)a3
{
  v3 = a3;
  v9 = [(ICBrowseAttachmentsCollectionController *)self viewControllerForAttachmentSection:?];
  v5 = [(ICBrowseAttachmentsCollectionController *)self titleForAttachmentSection:v3];
  v6 = [v9 navigationItem];
  [v6 setTitle:v5];

  v7 = [(ICBrowseAttachmentsCollectionController *)self navigationController];
  [v7 showViewController:v9 sender:self];

  v8 = [(ICBrowseAttachmentsCollectionController *)self eventReporter];
  [v8 submitAttachmentBrowserActionEventForType:2];
}

- (BOOL)browseAttachmentsCell:(id)a3 didSelectAttachment:(id)a4
{
  v5 = a4;
  v6 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [(ICBrowseAttachmentsCollectionController *)self browseAttachmentsCollectionView:v6 didSelectAttachment:v5 indexPath:0];

  return 1;
}

- (void)browseAttachmentsCell:(id)a3 shouldShareAttachment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [(ICBrowseAttachmentsCollectionController *)self browseAttachmentsCollectionView:v8 cell:v7 shouldShareAttachment:v6];
}

- (void)browseAttachmentsCell:(id)a3 shouldInspectAttachment:(id)a4
{
  v5 = a4;
  v6 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [(ICBrowseAttachmentsCollectionController *)self browseAttachmentsCollectionView:v6 shouldInspectAttachment:v5];
}

- (void)browseAttachmentsCollectionView:(id)a3 didSelectAttachment:(id)a4 indexPath:(id)a5
{
  v7 = a4;
  [(ICBrowseAttachmentsCollectionController *)self setSelectedIndexPath:a5];
  v8 = [(ICBrowseAttachmentsCollectionController *)self attachmentsToPreviewWhenSelectingAttachment:v7];
  v9 = [v8 indexOfObject:v7];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v7 shortLoggingDescription];
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Could not find attachment %@ in list of attachments in attachment browser. Falling back to single attachment", buf, 0xCu);
    }

    v16 = v7;
    v12 = [NSArray arrayWithObjects:&v16 count:1];

    v13 = 0;
    v8 = v12;
  }

  else
  {
    v13 = v9;
  }

  v14 = [(ICBrowseAttachmentsCollectionController *)self eventReporter];
  [v14 submitAttachmentBrowserActionEventForType:4];

  v15 = [(ICBrowseAttachmentsCollectionController *)self ic_viewControllerManager];
  [v15 presentAttachments:v8 startingAtIndex:v13 delegate:self displayShowInNote:1 editable:0 selectedSubAttachment:0 presentingViewController:self];
}

- (void)browseAttachmentsCollectionView:(id)a3 cell:(id)a4 shouldShareAttachment:(id)a5
{
  v7 = a4;
  v9 = [ICAttachmentActivityViewController makeWithAttachment:a5 quickLookItemDelegate:0 completion:0];
  v8 = [v9 popoverPresentationController];
  [v8 setSourceView:v7];

  [(ICBrowseAttachmentsCollectionController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)browseAttachmentsCollectionView:(id)a3 shouldInspectAttachment:(id)a4
{
  v5 = a4;
  v7 = [[ICAttachmentInspectorViewController alloc] initWithAttachment:v5];

  v6 = [(ICAttachmentInspectorViewController *)v7 ic_embedInNavigationControllerForModalPresentation];
  [(ICBrowseAttachmentsCollectionController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)attachmentPresenter:(id)a3 transitionViewForAttachment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICBrowseAttachmentsCollectionController *)self selectedIndexPath];

  if (v8)
  {
    v9 = [(ICBrowseAttachmentsCollectionController *)self selectedIndexPath];
  }

  else
  {
    v10 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
    v11 = [v10 indexPathForObject:v7];

    v9 = [(ICBrowseAttachmentsCollectionController *)self collectionViewIndexPathFromFetchedResultsControllerIndexPath:v11];
    if (!v9)
    {
      v9 = v11;
    }
  }

  if ([v9 item] >= 1 && (-[ICBrowseAttachmentsCollectionController collectionView](self, "collectionView"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "numberOfItemsInSection:", objc_msgSend(v9, "section")), v12, v13 == 1))
  {
    v14 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", 0, [v9 section]);
    v15 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
    v16 = [v15 cellForItemAtIndexPath:v14];
  }

  else
  {
    v14 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
    v16 = [v14 cellForItemAtIndexPath:v9];
  }

  v17 = [v16 contentView];
  v18 = [v17 subviews];
  v19 = [v18 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v19 attachmentPresenter:v6 transitionViewForAttachment:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v21 = ICDynamicCast();
      v22 = [v21 attachmentBrickView];
      v23 = [v22 quickLookTransitionView];

      goto LABEL_16;
    }

    v20 = [(ICBrowseAttachmentsCollectionController *)self view];
  }

  v23 = v20;
LABEL_16:

  return v23;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v7 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v5 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [v6 ic_cellAtLocation:{v9, v11}];

  if (v12 && [v12 conformsToProtocol:&OBJC_PROTOCOL___ICNotePreviewingActions])
  {
    v13 = v12;
    objc_opt_class();
    v14 = ICDynamicCast();
    v15 = [v14 attachment];
    if ([v15 attachmentType] == 11)
    {
      objc_opt_class();
      v16 = [v15 attachmentModel];
      v17 = ICDynamicCast();

      if (v17)
      {
        v18 = [v17 firstSubAttachment];

        v15 = v18;
      }
    }

    if (v15)
    {
      v19 = [(ICBrowseAttachmentsCollectionController *)self ic_viewControllerManager];
      v31 = v15;
      v20 = [NSArray arrayWithObjects:&v31 count:1];
      v21 = [ICAttachmentPresenter previewViewControllerWithViewControllerManager:v19 attachments:v20 startingAtIndex:0 delegate:0 editable:0 isFromAttachmentBrowser:1];
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
    v28 = self;
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

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v6 = a3;
  v7 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v8 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v6 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [v7 ic_cellAtLocation:{v10, v12}];

  v14 = [v13 contentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v15 = ICDynamicCast();
    v16 = [v15 attachmentBrickView];

    v14 = v16;
  }

  if (v14)
  {
    v17 = [[UITargetedPreview alloc] initWithView:v14];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v10 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  [v8 locationInView:v10];
  v12 = v11;
  v14 = v13;

  v15 = [v9 indexPathForItemAtPoint:{v12, v14}];

  v16 = [(ICBrowseAttachmentsCollectionController *)self attachmentAtIndexPath:v15];
  [v7 setPreferredCommitStyle:1];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100146CE4;
  v19[3] = &unk_100645D40;
  v19[4] = self;
  v20 = v16;
  v21 = v15;
  v17 = v15;
  v18 = v16;
  [v7 addCompletion:v19];
}

- (id)collectionViewIndexPathFromFetchedResultsControllerIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  v6 = [v5 sections];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

  v8 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
      v12 = [v11 objectAtIndexedSubscript:v10];

      v13 = [v12 name];
      v14 = [v7 name];
      v15 = [v13 isEqual:v14];

      if (v15)
      {
        break;
      }

      ++v10;
      v16 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
      v17 = [v16 count];

      if (v10 >= v17)
      {
        goto LABEL_5;
      }
    }

    v18 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [v4 item], v10);
  }

  else
  {
LABEL_5:
    v18 = 0;
  }

  return v18;
}

- (int64_t)numberOfItemsToDisplayInSection:(int64_t)a3 withTraitCollection:(id)a4
{
  v6 = a4;
  v7 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v8 = [v7 objectAtIndexedSubscript:a3];

  v9 = [v8 name];
  v10 = [v9 intValue];

  if ([(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewForSection:v10])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v8 numberOfObjects];
    if ([(ICBrowseAttachmentsCollectionController *)self displayAllSections])
    {
      v12 = [v6 horizontalSizeClass];
      v13 = [v6 verticalSizeClass];
      v14 = 6;
      if (v11 < 6)
      {
        v14 = v11;
      }

      v15 = 4;
      if (v11 < 4)
      {
        v15 = v11;
      }

      if (v13 == 1)
      {
        v14 = v15;
      }

      v16 = 3;
      if (v11 == 4)
      {
        v16 = 4;
      }

      if (v11 < 4)
      {
        v16 = v11;
      }

      if (v12 == 1)
      {
        v11 = v16;
      }

      else
      {
        v11 = v14;
      }
    }
  }

  return v11;
}

- (id)titleForAttachmentSection:(signed __int16)a3
{
  if (a3 - 1) <= 6 && ((0x7Du >> (a3 - 1)))
  {
    v3 = off_10064B128[(a3 - 1)];
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
  v3 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v4 = [v3 _visibleSupplementaryViewsOfKind:UICollectionElementKindSectionHeader];

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

  v10 = [(ICBrowseAttachmentsCollectionController *)self collectionViewLayout];
  [v10 invalidateLayout];

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
          v10 = [(ICBrowseAttachmentsCollectionController *)self view];
          [v10 directionalLayoutMargins];
          [v9 setLeadingMargin:v11];

          v12 = [(ICBrowseAttachmentsCollectionController *)self view];
          [v12 directionalLayoutMargins];
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
  v3 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([(ICBrowseAttachmentsCollectionController *)self useImagesAndMoviesScrollViewAtIndexPath:v9])
        {
          v10 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
          v11 = [v10 cellForItemAtIndexPath:v9];

          objc_opt_class();
          v12 = [v11 contentView];
          v13 = [v12 subviews];
          v14 = [v13 firstObject];
          v15 = ICCheckedDynamicCast();

          [(ICBrowseAttachmentsCollectionController *)self adjustContentInsetOfImageScroller:v15];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (id)emptyTextForAttachmentSection:(signed __int16)a3
{
  if (a3 <= 7)
  {
    v4 = off_10064B160[a3];
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:&stru_100661CF0 table:0];
  }

  return v3;
}

- (void)updateEmptyView
{
  v3 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v4 = [(ICBrowseAttachmentsCollectionController *)self numberOfSectionsInCollectionView:v3];

  v5 = [(ICBrowseAttachmentsCollectionController *)self emptyView];
  v26 = v5;
  if (v4)
  {
    [v5 removeFromSuperview];
  }

  else
  {

    if (!v26)
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [UINib nibWithNibName:@"ICBrowseAttachmentsEmpty" bundle:v6];

      v8 = [v7 instantiateWithOwner:self options:0];
      v9 = [(ICBrowseAttachmentsCollectionController *)self emptyView];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
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
    v15 = [(ICBrowseAttachmentsCollectionController *)self emptyDetailsLabel];
    [v15 setAttributedText:v14];

    v16 = [(ICBrowseAttachmentsCollectionController *)self emptyView];
    v17 = [v16 superview];

    if (!v17)
    {
      v18 = [(ICBrowseAttachmentsCollectionController *)self view];
      v19 = [(ICBrowseAttachmentsCollectionController *)self emptyView];
      [v18 addSubview:v19];

      v27 = @"emptyView";
      v20 = [(ICBrowseAttachmentsCollectionController *)self emptyView];
      v28 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];

      v22 = [(ICBrowseAttachmentsCollectionController *)self view];
      v23 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[emptyView]|" options:0 metrics:0 views:v21];
      [v22 addConstraints:v23];

      v24 = [(ICBrowseAttachmentsCollectionController *)self view];
      v25 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[emptyView]|" options:0 metrics:0 views:v21];
      [v24 addConstraints:v25];
    }

    [(ICBrowseAttachmentsCollectionController *)self updateEmptyViewFonts];
  }
}

- (id)attachmentsToPreviewWhenSelectingAttachment:(id)a3
{
  v4 = a3;
  v5 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
  v6 = [v5 indexPathForObject:v4];

  v7 = [(ICBrowseAttachmentsCollectionController *)self collectionViewIndexPathFromFetchedResultsControllerIndexPath:v6];
  if (!v7)
  {
    v7 = v6;
  }

  v8 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", 0, [v7 section]);
  v9 = [(ICBrowseAttachmentsCollectionController *)self collectionView];
  v10 = [v9 cellForItemAtIndexPath:v8];

  v11 = [v10 contentView];
  v12 = [v11 subviews];
  v13 = [v12 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 attachments];
  }

  else
  {
    v15 = [(ICBrowseAttachmentsCollectionController *)self fetchedResultsController];
    v16 = [v15 sections];
    v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

    v14 = [v17 objects];
  }

  return v14;
}

- (double)leadingMargin
{
  v2 = [(ICBrowseAttachmentsCollectionController *)self view];
  [v2 directionalLayoutMargins];
  v4 = v3;

  return v4;
}

- (double)trailingMargin
{
  v2 = [(ICBrowseAttachmentsCollectionController *)self view];
  [v2 directionalLayoutMargins];
  v4 = v3;

  return v4;
}

- (void)adjustContentInsetOfImageScroller:(id)a3
{
  v32 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 userInterfaceLayoutDirection];

  v6 = [v32 collectionView];
  [v6 contentInset];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v32 collectionView];
  [v15 contentOffset];
  v17 = v16;
  v19 = v18;

  v20 = -v17;
  if (v5 == 1)
  {
    v21 = v14;
  }

  else
  {
    v21 = v10;
  }

  v22 = v21 == v20 || vabdd_f64(v20, v21) < fabs(v21 * 0.000000999999997);
  if (v5 == 1)
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

  v30 = [v32 collectionView];
  [v30 setContentInset:{v8, v24, v12, v27}];

  if (v22)
  {
    v31 = [v32 collectionView];
    [v31 setContentOffset:{-v26, v19}];
  }
}

- (void)applyAccessibilityInfo
{
  v3 = [(ICBrowseAttachmentsCollectionController *)self noAttachmentsLabel];
  v2 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:UIAccessibilityTraitHeader | v2];
}

- (double)estimatedHeightForAXLargerTextSizesForSection:(unint64_t)a3
{
  v5 = [(ICBrowseAttachmentsCollectionController *)self sortedSections];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [v6 name];
  v8 = [v7 intValue];

  v9 = [(ICBrowseAttachmentsCollectionController *)self titleForAttachmentSection:v8];
  v10 = +[UIFont ic_attachmentBrowserTitleFont];
  if (UIAccessibilityIsBoldTextEnabled())
  {
    [v10 pointSize];
    *&v11 = v11 * 1.1;
    v12 = [UIFont systemFontOfSize:roundf(*&v11) weight:UIFontWeightHeavy];
    v13 = [v12 ic_fontWithSingleLineA];

    v10 = v13;
  }

  v14 = [(ICBrowseAttachmentsCollectionController *)self view];
  [v14 frame];
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
  v3 = [(ICBrowseAttachmentsCollectionController *)self emptyView];

  if (v3)
  {
    v4 = [UIFont ic_preferredFontForTextStyle:UIFontTextStyleBody adjustedForDefaultSize:28.0 maxSize:53.0];
    v5 = [(ICBrowseAttachmentsCollectionController *)self noAttachmentsLabel];
    [v5 setFont:v4];

    v6 = [UIFont ic_preferredFontForTextStyle:UIFontTextStyleBody adjustedForDefaultSize:17.0 maxSize:44.0];
    v7 = [(ICBrowseAttachmentsCollectionController *)self emptyDetailsLabel];
    [v7 setFont:v6];

    v8 = [(ICBrowseAttachmentsCollectionController *)self noAttachmentsLabel];
    v9 = [v8 font];
    v10 = [(ICBrowseAttachmentsCollectionController *)self emptyDetailsLabel];
    v11 = [v10 font];
    NSLog(@"Setting fonts:\n\t%@\n\t%@", v9, v11);

    v16 = [UIColor colorWithWhite:0.6 alpha:1.0];
    if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
    {
      v12 = [UIColor ic_darkerAccessibilityColorForColor:v16];
      v13 = [(ICBrowseAttachmentsCollectionController *)self noAttachmentsLabel];
      [v13 setTextColor:v12];

      v14 = [(ICBrowseAttachmentsCollectionController *)self emptyDetailsLabel];
      [v14 setTextColor:v12];
    }

    else
    {
      v15 = [(ICBrowseAttachmentsCollectionController *)self noAttachmentsLabel];
      [v15 setTextColor:v16];

      v12 = [(ICBrowseAttachmentsCollectionController *)self emptyDetailsLabel];
      [v12 setTextColor:v16];
    }
  }
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter)
  {
    if (+[ICNAEventReporter isOptedInForAnalytics])
    {
      v3 = [(ICBrowseAttachmentsCollectionController *)self viewIfLoaded];

      if (v3)
      {
        v4 = [ICNAEventReporter alloc];
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = [(ICBrowseAttachmentsCollectionController *)self view];
        v8 = [v4 initWithSubTrackerName:v6 view:v7];
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

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = ICNAEventReporterLostSessionNotification;
  v7 = [v5 object];

  [v8 removeObserver:self name:v6 object:v7];
}

@end