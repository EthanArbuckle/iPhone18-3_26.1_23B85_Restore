@interface ICImagesAndMoviesScrollView
- (BOOL)browseAttachmentsCell:(id)cell didSelectAttachment:(id)attachment;
- (BOOL)collectionView:(id)view canPerformAction:(SEL)action forItemAtIndexPath:(id)path withSender:(id)sender;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (ICBrowseAttachmentsCollectionDelegate)delegate;
- (ICImagesAndMoviesScrollView)initWithFrame:(CGRect)frame forAttachmentSection:(signed __int16)section;
- (NSArray)attachments;
- (UICollectionViewFlowLayout)collectionViewFlowLayout;
- (UIViewController)viewController;
- (id)attachmentPresenter:(id)presenter transitionViewForAttachment:(id)attachment;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)initForAttachmentSection:(signed __int16)section;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (int64_t)scrollDirection;
- (unint64_t)thumbnailLayout;
- (void)accountsDidChange:(id)change;
- (void)browseAttachmentsCell:(id)cell shouldInspectAttachment:(id)attachment;
- (void)browseAttachmentsCell:(id)cell shouldShareAttachment:(id)attachment;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)commonInitForAttachmentSection:(signed __int16)section;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)dealloc;
- (void)layoutSubviews;
- (void)notesContextRefreshNotification:(id)notification;
- (void)recreateFetchedResultsController;
- (void)registerForTraitChanges;
- (void)respondToTapGesture:(id)gesture;
- (void)setAttachmentSection:(signed __int16)section;
- (void)setBackground;
- (void)setScrollDirection:(int64_t)direction;
- (void)updateCollectionViewItemSizeAndFrame;
@end

@implementation ICImagesAndMoviesScrollView

- (void)commonInitForAttachmentSection:(signed __int16)section
{
  v5 = +[UIColor clearColor];
  [(ICImagesAndMoviesScrollView *)self setBackgroundColor:v5];

  v29 = objc_alloc_init(UICollectionViewFlowLayout);
  [v29 setScrollDirection:1];
  v6 = [UICollectionView alloc];
  [(ICImagesAndMoviesScrollView *)self bounds];
  v7 = [v6 initWithFrame:v29 collectionViewLayout:?];
  [(ICImagesAndMoviesScrollView *)self setCollectionView:v7];

  collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView setAutoresizingMask:18];

  collectionView2 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView2 setDataSource:self];

  collectionView3 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView3 setDelegate:self];

  collectionView4 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView4 setShowsHorizontalScrollIndicator:0];

  collectionView5 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView5 setShowsVerticalScrollIndicator:0];

  v13 = +[UIColor clearColor];
  collectionView6 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView6 setBackgroundColor:v13];

  collectionView7 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView7 setClipsToBounds:0];

  collectionView8 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Image"];

  collectionView9 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView9 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Movie"];

  collectionView10 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView10 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Drawing"];

  collectionView11 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [(ICImagesAndMoviesScrollView *)self addSubview:collectionView11];

  v20 = +[NSMutableArray array];
  [(ICImagesAndMoviesScrollView *)self setChangesFromFetchedResultsController:v20];

  self->_attachmentSection = section;
  [(ICImagesAndMoviesScrollView *)self recreateFetchedResultsController];
  v21 = +[NSNotificationCenter defaultCenter];
  [v21 addObserver:self selector:"notesContextRefreshNotification:" name:ICNotesContextRefreshNotification object:0];
  [v21 addObserver:self selector:"accountsDidChange:" name:ICAccountsDidChangeNotification object:0];
  v22 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"respondToTapGesture:"];
  collectionView12 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView12 addGestureRecognizer:v22];

  v24 = +[ICBrowseAttachmentsDragAndDropDelegate sharedInstance];
  collectionView13 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView13 setDragDelegate:v24];

  v26 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
  [(ICImagesAndMoviesScrollView *)self setContextInteraction:v26];

  collectionView14 = [(ICImagesAndMoviesScrollView *)self collectionView];
  contextInteraction = [(ICImagesAndMoviesScrollView *)self contextInteraction];
  [collectionView14 addInteraction:contextInteraction];

  [(ICImagesAndMoviesScrollView *)self registerForTraitChanges];
}

- (id)initForAttachmentSection:(signed __int16)section
{
  sectionCopy = section;
  v7.receiver = self;
  v7.super_class = ICImagesAndMoviesScrollView;
  v4 = [(ICImagesAndMoviesScrollView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ICImagesAndMoviesScrollView *)v4 commonInitForAttachmentSection:sectionCopy];
  }

  return v5;
}

- (ICImagesAndMoviesScrollView)initWithFrame:(CGRect)frame forAttachmentSection:(signed __int16)section
{
  sectionCopy = section;
  v8.receiver = self;
  v8.super_class = ICImagesAndMoviesScrollView;
  v5 = [(ICImagesAndMoviesScrollView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(ICImagesAndMoviesScrollView *)v5 commonInitForAttachmentSection:sectionCopy];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:ICNotesContextRefreshNotification object:0];
  [v3 removeObserver:self name:ICAccountsDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = ICImagesAndMoviesScrollView;
  [(ICImagesAndMoviesScrollView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICImagesAndMoviesScrollView;
  [(ICImagesAndMoviesScrollView *)&v3 layoutSubviews];
  [(ICImagesAndMoviesScrollView *)self updateCollectionViewItemSizeAndFrame];
}

- (void)setBackground
{
  v4 = +[UIColor ICBackgroundColor];
  collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
  [collectionView setBackgroundColor:v4];
}

- (void)respondToTapGesture:(id)gesture
{
  gestureCopy = gesture;
  collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
  [gestureCopy locationInView:collectionView];
  v7 = v6;
  v9 = v8;

  collectionView2 = [(ICImagesAndMoviesScrollView *)self collectionView];
  v15 = [collectionView2 indexPathForItemAtPoint:{v7, v9}];

  if (v15)
  {
    fetchedResultsController = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
    v12 = [fetchedResultsController objectAtIndexPath:v15];

    delegate = [(ICImagesAndMoviesScrollView *)self delegate];
    collectionView3 = [(ICImagesAndMoviesScrollView *)self collectionView];
    [delegate browseAttachmentsCollectionView:collectionView3 didSelectAttachment:v12 indexPath:0];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  fetchedResultsController = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  sections = [fetchedResultsController sections];
  v5 = [sections count];

  return v5;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  fetchedResultsController = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  sections = [fetchedResultsController sections];
  v7 = [sections objectAtIndexedSubscript:section];

  numberOfObjects = [v7 numberOfObjects];
  return numberOfObjects;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  fetchedResultsController = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  v9 = [fetchedResultsController objectAtIndexPath:pathCopy];

  attachmentType = [v9 attachmentType];
  if (attachmentType != 3)
  {
    if (attachmentType == 9)
    {
      v11 = @"Drawing";
      goto LABEL_10;
    }

    if (attachmentType == 5)
    {
      v11 = @"Movie";
      goto LABEL_10;
    }

    v12 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1004DFA38(v9, v12);
    }
  }

  v11 = @"Image";
LABEL_10:
  v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];
  [v13 setAttachment:v9];
  [v13 setThumbnailLayout:{-[ICImagesAndMoviesScrollView thumbnailLayout](self, "thumbnailLayout")}];
  objc_opt_class();
  viewController = [(ICImagesAndMoviesScrollView *)self viewController];
  v15 = ICDynamicCast();
  [v13 setCollectionController:v15];

  [v13 setScrollView:self];
  [v13 setDelegate:self];

  return v13;
}

- (BOOL)collectionView:(id)view canPerformAction:(SEL)action forItemAtIndexPath:(id)path withSender:(id)sender
{
  senderCopy = sender;
  v10 = [view cellForItemAtIndexPath:path];
  LOBYTE(action) = [v10 canPerformAction:action withSender:senderCopy];

  return action;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  if ([(ICImagesAndMoviesScrollView *)self scrollDirection]== 1)
  {
    fetchedResultsController = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
    v10 = [fetchedResultsController objectAtIndexPath:pathCopy];

    [v10 intrinsicContentSize];
    v12 = v11;
    v14 = v13;
    [(ICImagesAndMoviesScrollView *)self bounds];
    v16 = v15;
    v17 = v15;
    if (v12 > 0.0)
    {
      v17 = v15;
      if (v14 > 0.0)
      {
        v17 = ceil(v12 / v14 * v15);
      }
    }
  }

  else
  {
    [layoutCopy itemSize];
    v17 = v18;
    v16 = v19;
  }

  v20 = v17;
  v21 = v16;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v8 = [viewCopy cellForItemAtIndexPath:pathCopy];

  v9 = ICDynamicCast();

  [v9 openAttachment:self];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
  v8 = [collectionView ic_cellAtLocation:{x, y}];

  if (v8 && [v8 conformsToProtocol:&OBJC_PROTOCOL___ICNotePreviewingActions])
  {
    v9 = v8;
    ic_viewControllerManager = [(ICImagesAndMoviesScrollView *)self ic_viewControllerManager];
    v11 = [v9 previewActionsForViewControllerManager:ic_viewControllerManager fromView:self];

    objc_opt_class();
    v12 = ICDynamicCast();
    v13 = v12;
    if (v12 && ([v12 attachment], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      ic_viewControllerManager2 = [(ICImagesAndMoviesScrollView *)self ic_viewControllerManager];
      attachment = [v13 attachment];
      v27 = attachment;
      v17 = [NSArray arrayWithObjects:&v27 count:1];
      v18 = [ICAttachmentPresenter previewViewControllerWithViewControllerManager:ic_viewControllerManager2 attachments:v17 startingAtIndex:0 delegate:0 editable:0 isFromAttachmentBrowser:0];
    }

    else
    {
      v18 = 0;
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000FADB0;
    v25[3] = &unk_100649EB8;
    v26 = v18;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000FADB8;
    v23[3] = &unk_100649EE0;
    v24 = v11;
    v20 = v11;
    v21 = v18;
    v19 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:v25 actionProvider:v23];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
  collectionView2 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [interactionCopy locationInView:collectionView2];
  v10 = v9;
  v12 = v11;

  v13 = [collectionView ic_cellAtLocation:{v10, v12}];

  v14 = ICProtocolCast();
  contextMenuInteractionPreview = [v14 contextMenuInteractionPreview];
  v16 = contextMenuInteractionPreview;
  if (contextMenuInteractionPreview)
  {
    v17 = contextMenuInteractionPreview;
  }

  else
  {
    v17 = v13;
  }

  v18 = v17;

  if (v18)
  {
    v19 = [[UITargetedPreview alloc] initWithView:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  interactionCopy = interaction;
  collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
  collectionView2 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [interactionCopy locationInView:collectionView2];
  v12 = v11;
  v14 = v13;

  v15 = [collectionView indexPathForItemAtPoint:{v12, v14}];

  fetchedResultsController = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  v17 = [fetchedResultsController objectAtIndexPath:v15];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000FB040;
  v20[3] = &unk_100645D40;
  v20[4] = self;
  v21 = v17;
  v22 = v15;
  v18 = v15;
  v19 = v17;
  [animatorCopy addCompletion:v20];
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  objectCopy = object;
  v15 = objc_alloc_init(ICFetchedResultsControllerChange);
  [(ICFetchedResultsControllerChange *)v15 setType:type];
  [(ICFetchedResultsControllerChange *)v15 setObject:objectCopy];

  [(ICFetchedResultsControllerChange *)v15 setIndexPath:pathCopy];
  [(ICFetchedResultsControllerChange *)v15 setTheNewIndexPath:indexPathCopy];

  changesFromFetchedResultsController = [(ICImagesAndMoviesScrollView *)self changesFromFetchedResultsController];
  [changesFromFetchedResultsController addObject:v15];
}

- (void)controllerDidChangeContent:(id)content
{
  [(ICImagesAndMoviesScrollView *)self setPerformingBatchUpdatesFromFetchedResultsController:1];
  collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000FB260;
  v6[3] = &unk_100645E30;
  v6[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FB4DC;
  v5[3] = &unk_1006469F0;
  v5[4] = self;
  [collectionView performBatchUpdates:v6 completion:v5];
}

- (void)notesContextRefreshNotification:(id)notification
{
  if ([(ICImagesAndMoviesScrollView *)self performingBatchUpdatesFromFetchedResultsController])
  {

    [(ICImagesAndMoviesScrollView *)self setReloadDataAfterBatchUpdates:1];
  }

  else
  {
    collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)accountsDidChange:(id)change
{
  fetchedResultsController = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  if (fetchedResultsController)
  {
    v5 = fetchedResultsController;
    fetchedResultsController2 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
    v10 = 0;
    v7 = [fetchedResultsController2 performFetch:&v10];
    v8 = v10;

    if ((v7 & 1) == 0)
    {
      v9 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1004DFAD0(self, v8, v9);
      }
    }
  }

  else
  {
    v8 = 0;
  }
}

- (void)recreateFetchedResultsController
{
  fetchedResultsController = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  [fetchedResultsController setDelegate:0];

  [(ICImagesAndMoviesScrollView *)self setFetchedResultsController:0];
  v4 = +[ICAttachment newFetchRequestForAttachments];
  v5 = [[NSSortDescriptor alloc] initWithKey:@"modificationDate" ascending:0];
  v30 = v5;
  v6 = [NSArray arrayWithObjects:&v30 count:1];
  [v4 setSortDescriptors:v6];

  v7 = [NSPredicate predicateWithFormat:@"%K == %d", @"section", [(ICImagesAndMoviesScrollView *)self attachmentSection]];
  v29[0] = v7;
  v8 = [NSPredicate predicateWithFormat:@"%K.@count > 0", @"previewImages"];
  v29[1] = v8;
  v9 = +[ICNoteContext sharedContext];
  managedObjectContext = [v9 managedObjectContext];
  v11 = [ICAttachment predicateForAttachmentBrowserWithContext:managedObjectContext];
  v29[2] = v11;
  v12 = [NSArray arrayWithObjects:v29 count:3];
  v13 = [NSMutableArray arrayWithArray:v12];

  if ([(ICImagesAndMoviesScrollView *)self attachmentSection]== 1)
  {
    v14 = [NSPredicate predicateWithFormat:@"%K >= %d", @"sizeWidth", 50];
    v28[0] = v14;
    v15 = [NSPredicate predicateWithFormat:@"%K >= %d", @"sizeHeight", 50];
    v28[1] = v15;
    v16 = [NSArray arrayWithObjects:v28 count:2];
    [v13 addObjectsFromArray:v16];
  }

  v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v13];
  [v4 setPredicate:v17];

  [(ICImagesAndMoviesScrollView *)self bounds];
  if (v18 > 0.0)
  {
    [(ICImagesAndMoviesScrollView *)self bounds];
    if (v19 > 0.0)
    {
      [(ICImagesAndMoviesScrollView *)self bounds];
      v21 = v20 * 0.0078125;
      v22 = vcvtps_u32_f32(v21);
      if ([(ICImagesAndMoviesScrollView *)self scrollDirection]!= 1)
      {
        [(ICImagesAndMoviesScrollView *)self bounds];
        v24 = v23 * 0.0078125;
        v22 *= vcvtps_u32_f32(v24);
      }

      [v4 setFetchBatchSize:v22];
    }
  }

  v25 = +[ICNoteContext sharedContext];
  v26 = [v25 fetchedResultsControllerForFetchRequest:v4 sectionNameKeyPath:0];
  [(ICImagesAndMoviesScrollView *)self setFetchedResultsController:v26];

  fetchedResultsController2 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  [fetchedResultsController2 setDelegate:self];
}

- (void)updateCollectionViewItemSizeAndFrame
{
  collectionViewFlowLayout = [(ICImagesAndMoviesScrollView *)self collectionViewFlowLayout];
  [(ICImagesAndMoviesScrollView *)self bounds];
  if (v3 > 0.0)
  {
    v4 = v3;
    if ([(ICImagesAndMoviesScrollView *)self scrollDirection]== 1)
    {
      [(ICImagesAndMoviesScrollView *)self frame];
      Height = CGRectGetHeight(v21);
      [collectionViewFlowLayout setItemSize:{Height, Height}];
      traitCollection = [(ICImagesAndMoviesScrollView *)self traitCollection];
      v7 = 4.0;
      if ([traitCollection horizontalSizeClass] != 1)
      {
        traitCollection2 = [(ICImagesAndMoviesScrollView *)self traitCollection];
        if ([traitCollection2 verticalSizeClass] == 1)
        {
          v7 = 4.0;
        }

        else
        {
          v7 = 12.0;
        }
      }

      [collectionViewFlowLayout setMinimumInteritemSpacing:v7];
      [collectionViewFlowLayout setMinimumLineSpacing:4.0];
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      goto LABEL_19;
    }

    traitCollection3 = [(ICImagesAndMoviesScrollView *)self traitCollection];
    if ([traitCollection3 horizontalSizeClass] == 1)
    {
    }

    else
    {
      traitCollection4 = [(ICImagesAndMoviesScrollView *)self traitCollection];
      verticalSizeClass = [traitCollection4 verticalSizeClass];

      if (verticalSizeClass != 1)
      {
        [collectionViewFlowLayout setItemSize:{128.0, 128.0}];
        top = 12.0;
        [collectionViewFlowLayout setMinimumInteritemSpacing:12.0];
        [collectionViewFlowLayout setMinimumLineSpacing:12.0];
        left = 28.0;
        bottom = 0.0;
        right = 28.0;
LABEL_19:
        [collectionViewFlowLayout setSectionInset:{top, left, bottom, right}];
        goto LABEL_20;
      }
    }

    v16 = dword_1006BB730;
    if (dword_1006BB730)
    {
      v17 = &qword_100531C60;
      while (*(v17 - 2) != v4)
      {
        v17 += 4;
        if (!--v16)
        {
          goto LABEL_16;
        }
      }

      [collectionViewFlowLayout setItemSize:{*(v17 - 1), *(v17 - 1)}];
      [collectionViewFlowLayout setMinimumInteritemSpacing:*v17];
      [collectionViewFlowLayout setMinimumLineSpacing:v17[1]];
      top = 0.0;
      left = 0.0;
      bottom = 0.0;
      right = 0.0;
    }

    else
    {
LABEL_16:
      v18 = floor((v4 + -2.0 + -10.0) / 6.0);
      [collectionViewFlowLayout setItemSize:{v18, v18}];
      [collectionViewFlowLayout setMinimumInteritemSpacing:2.0];
      [collectionViewFlowLayout setMinimumLineSpacing:2.0];
      left = 1.0;
      top = 0.0;
      bottom = 0.0;
      right = 1.0;
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)registerForTraitChanges
{
  objc_initWeak(&location, self);
  v8 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FBDB8;
  v5[3] = &unk_100646240;
  objc_copyWeak(&v6, &location);
  v4 = [(ICImagesAndMoviesScrollView *)self registerForTraitChanges:v3 withHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (UICollectionViewFlowLayout)collectionViewFlowLayout
{
  collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  return collectionViewLayout;
}

- (void)setAttachmentSection:(signed __int16)section
{
  if (self->_attachmentSection != section)
  {
    self->_attachmentSection = section;
    [(ICImagesAndMoviesScrollView *)self recreateFetchedResultsController];
    collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)setScrollDirection:(int64_t)direction
{
  collectionViewFlowLayout = [(ICImagesAndMoviesScrollView *)self collectionViewFlowLayout];
  [collectionViewFlowLayout setScrollDirection:direction];

  [(ICImagesAndMoviesScrollView *)self updateCollectionViewItemSizeAndFrame];
}

- (int64_t)scrollDirection
{
  collectionViewFlowLayout = [(ICImagesAndMoviesScrollView *)self collectionViewFlowLayout];
  scrollDirection = [collectionViewFlowLayout scrollDirection];

  return scrollDirection;
}

- (unint64_t)thumbnailLayout
{
  if ([(ICImagesAndMoviesScrollView *)self scrollDirection])
  {
    return 1;
  }

  traitCollection = [(ICImagesAndMoviesScrollView *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {

    return 0;
  }

  traitCollection2 = [(ICImagesAndMoviesScrollView *)self traitCollection];
  verticalSizeClass = [traitCollection2 verticalSizeClass];

  if (verticalSizeClass == 1)
  {
    return 0;
  }

  return 2;
}

- (NSArray)attachments
{
  fetchedResultsController = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];

  return fetchedObjects;
}

- (id)attachmentPresenter:(id)presenter transitionViewForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  fetchedResultsController = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  v7 = [fetchedResultsController indexPathForObject:attachmentCopy];

  collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
  v9 = [collectionView cellForItemAtIndexPath:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    thumbnailView = [(ICImagesAndMoviesScrollView *)v9 thumbnailView];
  }

  else
  {
    if (v9)
    {
      selfCopy = v9;
    }

    else
    {
      selfCopy = self;
    }

    thumbnailView = selfCopy;
  }

  v12 = thumbnailView;

  return v12;
}

- (BOOL)browseAttachmentsCell:(id)cell didSelectAttachment:(id)attachment
{
  attachmentCopy = attachment;
  delegate = [(ICImagesAndMoviesScrollView *)self delegate];

  if (delegate)
  {
    delegate2 = [(ICImagesAndMoviesScrollView *)self delegate];
    collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
    [delegate2 browseAttachmentsCollectionView:collectionView didSelectAttachment:attachmentCopy indexPath:0];
  }

  return delegate != 0;
}

- (void)browseAttachmentsCell:(id)cell shouldShareAttachment:(id)attachment
{
  attachmentCopy = attachment;
  cellCopy = cell;
  delegate = [(ICImagesAndMoviesScrollView *)self delegate];
  collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
  [delegate browseAttachmentsCollectionView:collectionView cell:cellCopy shouldShareAttachment:attachmentCopy];
}

- (void)browseAttachmentsCell:(id)cell shouldInspectAttachment:(id)attachment
{
  attachmentCopy = attachment;
  delegate = [(ICImagesAndMoviesScrollView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(ICImagesAndMoviesScrollView *)self delegate];
    collectionView = [(ICImagesAndMoviesScrollView *)self collectionView];
    [delegate2 browseAttachmentsCollectionView:collectionView shouldInspectAttachment:attachmentCopy];
  }
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (ICBrowseAttachmentsCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end