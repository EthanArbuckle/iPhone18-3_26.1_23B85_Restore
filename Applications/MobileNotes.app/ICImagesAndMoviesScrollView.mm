@interface ICImagesAndMoviesScrollView
- (BOOL)browseAttachmentsCell:(id)a3 didSelectAttachment:(id)a4;
- (BOOL)collectionView:(id)a3 canPerformAction:(SEL)a4 forItemAtIndexPath:(id)a5 withSender:(id)a6;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (ICBrowseAttachmentsCollectionDelegate)delegate;
- (ICImagesAndMoviesScrollView)initWithFrame:(CGRect)a3 forAttachmentSection:(signed __int16)a4;
- (NSArray)attachments;
- (UICollectionViewFlowLayout)collectionViewFlowLayout;
- (UIViewController)viewController;
- (id)attachmentPresenter:(id)a3 transitionViewForAttachment:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)initForAttachmentSection:(signed __int16)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (int64_t)scrollDirection;
- (unint64_t)thumbnailLayout;
- (void)accountsDidChange:(id)a3;
- (void)browseAttachmentsCell:(id)a3 shouldInspectAttachment:(id)a4;
- (void)browseAttachmentsCell:(id)a3 shouldShareAttachment:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)commonInitForAttachmentSection:(signed __int16)a3;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)notesContextRefreshNotification:(id)a3;
- (void)recreateFetchedResultsController;
- (void)registerForTraitChanges;
- (void)respondToTapGesture:(id)a3;
- (void)setAttachmentSection:(signed __int16)a3;
- (void)setBackground;
- (void)setScrollDirection:(int64_t)a3;
- (void)updateCollectionViewItemSizeAndFrame;
@end

@implementation ICImagesAndMoviesScrollView

- (void)commonInitForAttachmentSection:(signed __int16)a3
{
  v5 = +[UIColor clearColor];
  [(ICImagesAndMoviesScrollView *)self setBackgroundColor:v5];

  v29 = objc_alloc_init(UICollectionViewFlowLayout);
  [v29 setScrollDirection:1];
  v6 = [UICollectionView alloc];
  [(ICImagesAndMoviesScrollView *)self bounds];
  v7 = [v6 initWithFrame:v29 collectionViewLayout:?];
  [(ICImagesAndMoviesScrollView *)self setCollectionView:v7];

  v8 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v8 setAutoresizingMask:18];

  v9 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v9 setDataSource:self];

  v10 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v10 setDelegate:self];

  v11 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v11 setShowsHorizontalScrollIndicator:0];

  v12 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v12 setShowsVerticalScrollIndicator:0];

  v13 = +[UIColor clearColor];
  v14 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v14 setBackgroundColor:v13];

  v15 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v15 setClipsToBounds:0];

  v16 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v16 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Image"];

  v17 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v17 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Movie"];

  v18 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v18 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Drawing"];

  v19 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [(ICImagesAndMoviesScrollView *)self addSubview:v19];

  v20 = +[NSMutableArray array];
  [(ICImagesAndMoviesScrollView *)self setChangesFromFetchedResultsController:v20];

  self->_attachmentSection = a3;
  [(ICImagesAndMoviesScrollView *)self recreateFetchedResultsController];
  v21 = +[NSNotificationCenter defaultCenter];
  [v21 addObserver:self selector:"notesContextRefreshNotification:" name:ICNotesContextRefreshNotification object:0];
  [v21 addObserver:self selector:"accountsDidChange:" name:ICAccountsDidChangeNotification object:0];
  v22 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"respondToTapGesture:"];
  v23 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v23 addGestureRecognizer:v22];

  v24 = +[ICBrowseAttachmentsDragAndDropDelegate sharedInstance];
  v25 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v25 setDragDelegate:v24];

  v26 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
  [(ICImagesAndMoviesScrollView *)self setContextInteraction:v26];

  v27 = [(ICImagesAndMoviesScrollView *)self collectionView];
  v28 = [(ICImagesAndMoviesScrollView *)self contextInteraction];
  [v27 addInteraction:v28];

  [(ICImagesAndMoviesScrollView *)self registerForTraitChanges];
}

- (id)initForAttachmentSection:(signed __int16)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = ICImagesAndMoviesScrollView;
  v4 = [(ICImagesAndMoviesScrollView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ICImagesAndMoviesScrollView *)v4 commonInitForAttachmentSection:v3];
  }

  return v5;
}

- (ICImagesAndMoviesScrollView)initWithFrame:(CGRect)a3 forAttachmentSection:(signed __int16)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = ICImagesAndMoviesScrollView;
  v5 = [(ICImagesAndMoviesScrollView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(ICImagesAndMoviesScrollView *)v5 commonInitForAttachmentSection:v4];
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
  v3 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v3 setBackgroundColor:v4];
}

- (void)respondToTapGesture:(id)a3
{
  v4 = a3;
  v5 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(ICImagesAndMoviesScrollView *)self collectionView];
  v15 = [v10 indexPathForItemAtPoint:{v7, v9}];

  if (v15)
  {
    v11 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
    v12 = [v11 objectAtIndexPath:v15];

    v13 = [(ICImagesAndMoviesScrollView *)self delegate];
    v14 = [(ICImagesAndMoviesScrollView *)self collectionView];
    [v13 browseAttachmentsCollectionView:v14 didSelectAttachment:v12 indexPath:0];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  v4 = [v3 sections];
  v5 = [v4 count];

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  v6 = [v5 sections];
  v7 = [v6 objectAtIndexedSubscript:a4];

  v8 = [v7 numberOfObjects];
  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  v9 = [v8 objectAtIndexPath:v7];

  v10 = [v9 attachmentType];
  if (v10 != 3)
  {
    if (v10 == 9)
    {
      v11 = @"Drawing";
      goto LABEL_10;
    }

    if (v10 == 5)
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
  v13 = [v6 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v7];
  [v13 setAttachment:v9];
  [v13 setThumbnailLayout:{-[ICImagesAndMoviesScrollView thumbnailLayout](self, "thumbnailLayout")}];
  objc_opt_class();
  v14 = [(ICImagesAndMoviesScrollView *)self viewController];
  v15 = ICDynamicCast();
  [v13 setCollectionController:v15];

  [v13 setScrollView:self];
  [v13 setDelegate:self];

  return v13;
}

- (BOOL)collectionView:(id)a3 canPerformAction:(SEL)a4 forItemAtIndexPath:(id)a5 withSender:(id)a6
{
  v9 = a6;
  v10 = [a3 cellForItemAtIndexPath:a5];
  LOBYTE(a4) = [v10 canPerformAction:a4 withSender:v9];

  return a4;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(ICImagesAndMoviesScrollView *)self scrollDirection]== 1)
  {
    v9 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
    v10 = [v9 objectAtIndexPath:v8];

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
    [v7 itemSize];
    v17 = v18;
    v16 = v19;
  }

  v20 = v17;
  v21 = v16;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = [v7 cellForItemAtIndexPath:v6];

  v9 = ICDynamicCast();

  [v9 openAttachment:self];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(ICImagesAndMoviesScrollView *)self collectionView];
  v8 = [v7 ic_cellAtLocation:{x, y}];

  if (v8 && [v8 conformsToProtocol:&OBJC_PROTOCOL___ICNotePreviewingActions])
  {
    v9 = v8;
    v10 = [(ICImagesAndMoviesScrollView *)self ic_viewControllerManager];
    v11 = [v9 previewActionsForViewControllerManager:v10 fromView:self];

    objc_opt_class();
    v12 = ICDynamicCast();
    v13 = v12;
    if (v12 && ([v12 attachment], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      v15 = [(ICImagesAndMoviesScrollView *)self ic_viewControllerManager];
      v16 = [v13 attachment];
      v27 = v16;
      v17 = [NSArray arrayWithObjects:&v27 count:1];
      v18 = [ICAttachmentPresenter previewViewControllerWithViewControllerManager:v15 attachments:v17 startingAtIndex:0 delegate:0 editable:0 isFromAttachmentBrowser:0];
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

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v6 = a3;
  v7 = [(ICImagesAndMoviesScrollView *)self collectionView];
  v8 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v6 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [v7 ic_cellAtLocation:{v10, v12}];

  v14 = ICProtocolCast();
  v15 = [v14 contextMenuInteractionPreview];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
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

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(ICImagesAndMoviesScrollView *)self collectionView];
  v10 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v8 locationInView:v10];
  v12 = v11;
  v14 = v13;

  v15 = [v9 indexPathForItemAtPoint:{v12, v14}];

  v16 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  v17 = [v16 objectAtIndexPath:v15];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000FB040;
  v20[3] = &unk_100645D40;
  v20[4] = self;
  v21 = v17;
  v22 = v15;
  v18 = v15;
  v19 = v17;
  [v7 addCompletion:v20];
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v15 = objc_alloc_init(ICFetchedResultsControllerChange);
  [(ICFetchedResultsControllerChange *)v15 setType:a6];
  [(ICFetchedResultsControllerChange *)v15 setObject:v13];

  [(ICFetchedResultsControllerChange *)v15 setIndexPath:v12];
  [(ICFetchedResultsControllerChange *)v15 setTheNewIndexPath:v11];

  v14 = [(ICImagesAndMoviesScrollView *)self changesFromFetchedResultsController];
  [v14 addObject:v15];
}

- (void)controllerDidChangeContent:(id)a3
{
  [(ICImagesAndMoviesScrollView *)self setPerformingBatchUpdatesFromFetchedResultsController:1];
  v4 = [(ICImagesAndMoviesScrollView *)self collectionView];
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
  [v4 performBatchUpdates:v6 completion:v5];
}

- (void)notesContextRefreshNotification:(id)a3
{
  if ([(ICImagesAndMoviesScrollView *)self performingBatchUpdatesFromFetchedResultsController])
  {

    [(ICImagesAndMoviesScrollView *)self setReloadDataAfterBatchUpdates:1];
  }

  else
  {
    v4 = [(ICImagesAndMoviesScrollView *)self collectionView];
    [v4 reloadData];
  }
}

- (void)accountsDidChange:(id)a3
{
  v4 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  if (v4)
  {
    v5 = v4;
    v6 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
    v10 = 0;
    v7 = [v6 performFetch:&v10];
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
  v3 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  [v3 setDelegate:0];

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
  v10 = [v9 managedObjectContext];
  v11 = [ICAttachment predicateForAttachmentBrowserWithContext:v10];
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

  v27 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  [v27 setDelegate:self];
}

- (void)updateCollectionViewItemSizeAndFrame
{
  v19 = [(ICImagesAndMoviesScrollView *)self collectionViewFlowLayout];
  [(ICImagesAndMoviesScrollView *)self bounds];
  if (v3 > 0.0)
  {
    v4 = v3;
    if ([(ICImagesAndMoviesScrollView *)self scrollDirection]== 1)
    {
      [(ICImagesAndMoviesScrollView *)self frame];
      Height = CGRectGetHeight(v21);
      [v19 setItemSize:{Height, Height}];
      v6 = [(ICImagesAndMoviesScrollView *)self traitCollection];
      v7 = 4.0;
      if ([v6 horizontalSizeClass] != 1)
      {
        v8 = [(ICImagesAndMoviesScrollView *)self traitCollection];
        if ([v8 verticalSizeClass] == 1)
        {
          v7 = 4.0;
        }

        else
        {
          v7 = 12.0;
        }
      }

      [v19 setMinimumInteritemSpacing:v7];
      [v19 setMinimumLineSpacing:4.0];
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      goto LABEL_19;
    }

    v13 = [(ICImagesAndMoviesScrollView *)self traitCollection];
    if ([v13 horizontalSizeClass] == 1)
    {
    }

    else
    {
      v14 = [(ICImagesAndMoviesScrollView *)self traitCollection];
      v15 = [v14 verticalSizeClass];

      if (v15 != 1)
      {
        [v19 setItemSize:{128.0, 128.0}];
        top = 12.0;
        [v19 setMinimumInteritemSpacing:12.0];
        [v19 setMinimumLineSpacing:12.0];
        left = 28.0;
        bottom = 0.0;
        right = 28.0;
LABEL_19:
        [v19 setSectionInset:{top, left, bottom, right}];
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

      [v19 setItemSize:{*(v17 - 1), *(v17 - 1)}];
      [v19 setMinimumInteritemSpacing:*v17];
      [v19 setMinimumLineSpacing:v17[1]];
      top = 0.0;
      left = 0.0;
      bottom = 0.0;
      right = 0.0;
    }

    else
    {
LABEL_16:
      v18 = floor((v4 + -2.0 + -10.0) / 6.0);
      [v19 setItemSize:{v18, v18}];
      [v19 setMinimumInteritemSpacing:2.0];
      [v19 setMinimumLineSpacing:2.0];
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
  v2 = [(ICImagesAndMoviesScrollView *)self collectionView];
  v3 = [v2 collectionViewLayout];

  return v3;
}

- (void)setAttachmentSection:(signed __int16)a3
{
  if (self->_attachmentSection != a3)
  {
    self->_attachmentSection = a3;
    [(ICImagesAndMoviesScrollView *)self recreateFetchedResultsController];
    v5 = [(ICImagesAndMoviesScrollView *)self collectionView];
    [v5 reloadData];
  }
}

- (void)setScrollDirection:(int64_t)a3
{
  v5 = [(ICImagesAndMoviesScrollView *)self collectionViewFlowLayout];
  [v5 setScrollDirection:a3];

  [(ICImagesAndMoviesScrollView *)self updateCollectionViewItemSizeAndFrame];
}

- (int64_t)scrollDirection
{
  v2 = [(ICImagesAndMoviesScrollView *)self collectionViewFlowLayout];
  v3 = [v2 scrollDirection];

  return v3;
}

- (unint64_t)thumbnailLayout
{
  if ([(ICImagesAndMoviesScrollView *)self scrollDirection])
  {
    return 1;
  }

  v4 = [(ICImagesAndMoviesScrollView *)self traitCollection];
  if ([v4 horizontalSizeClass] == 1)
  {

    return 0;
  }

  v5 = [(ICImagesAndMoviesScrollView *)self traitCollection];
  v6 = [v5 verticalSizeClass];

  if (v6 == 1)
  {
    return 0;
  }

  return 2;
}

- (NSArray)attachments
{
  v2 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  v3 = [v2 fetchedObjects];

  return v3;
}

- (id)attachmentPresenter:(id)a3 transitionViewForAttachment:(id)a4
{
  v5 = a4;
  v6 = [(ICImagesAndMoviesScrollView *)self fetchedResultsController];
  v7 = [v6 indexPathForObject:v5];

  v8 = [(ICImagesAndMoviesScrollView *)self collectionView];
  v9 = [v8 cellForItemAtIndexPath:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(ICImagesAndMoviesScrollView *)v9 thumbnailView];
  }

  else
  {
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = self;
    }

    v10 = v11;
  }

  v12 = v10;

  return v12;
}

- (BOOL)browseAttachmentsCell:(id)a3 didSelectAttachment:(id)a4
{
  v5 = a4;
  v6 = [(ICImagesAndMoviesScrollView *)self delegate];

  if (v6)
  {
    v7 = [(ICImagesAndMoviesScrollView *)self delegate];
    v8 = [(ICImagesAndMoviesScrollView *)self collectionView];
    [v7 browseAttachmentsCollectionView:v8 didSelectAttachment:v5 indexPath:0];
  }

  return v6 != 0;
}

- (void)browseAttachmentsCell:(id)a3 shouldShareAttachment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(ICImagesAndMoviesScrollView *)self delegate];
  v8 = [(ICImagesAndMoviesScrollView *)self collectionView];
  [v9 browseAttachmentsCollectionView:v8 cell:v7 shouldShareAttachment:v6];
}

- (void)browseAttachmentsCell:(id)a3 shouldInspectAttachment:(id)a4
{
  v9 = a4;
  v5 = [(ICImagesAndMoviesScrollView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ICImagesAndMoviesScrollView *)self delegate];
    v8 = [(ICImagesAndMoviesScrollView *)self collectionView];
    [v7 browseAttachmentsCollectionView:v8 shouldInspectAttachment:v9];
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