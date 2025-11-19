@interface ICBrowseAttachmentsBaseCell
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (ICBrowseAttachmentsCellDelegate)delegate;
- (ICBrowseAttachmentsCollectionController)collectionController;
- (ICNAEventReporter)eventReporter;
- (NSString)itemNumberAccessibilityString;
- (UICollectionView)collectionView;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)dragItemForAttachment;
- (id)previewActionsForViewControllerManager:(id)a3 fromView:(id)a4;
- (int64_t)countOfItemsInSection;
- (int64_t)indexInSection;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)eventReporterLostSession:(id)a3;
- (void)openAttachment:(id)a3;
- (void)openAttachmentInspector:(id)a3;
- (void)prepareForReuse;
- (void)setDragging:(BOOL)a3;
- (void)shareAttachment:(id)a3;
- (void)showInNote:(id)a3;
- (void)updateFocusEffect;
@end

@implementation ICBrowseAttachmentsBaseCell

- (id)accessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"attachment" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)accessibilityHint
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Double tap to view attachment" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)accessibilityCustomActions
{
  v3 = [UIAccessibilityCustomAction alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Show in Note" value:&stru_100661CF0 table:0];
  v6 = [v3 initWithName:v5 target:self selector:"showInNote:"];

  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICBrowseAttachmentsBaseCell;
  [(ICBrowseAttachmentsBaseCell *)&v4 dealloc];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = ICBrowseAttachmentsBaseCell;
  [(ICBrowseAttachmentsBaseCell *)&v4 prepareForReuse];
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if ("showInNote:" == a3 || "openAttachment:" == a3)
  {
    return 1;
  }

  result = ICDebugModeEnabled();
  if ("openAttachmentInspector:" != a3)
  {
    return 0;
  }

  return result;
}

- (void)showInNote:(id)a3
{
  v7 = [(ICBrowseAttachmentsBaseCell *)self attachment];
  v4 = [(ICBrowseAttachmentsBaseCell *)self ic_viewControllerManager];
  v5 = [v7 objectID];
  [v4 selectAttachmentWithObjectID:v5 animated:1];

  v6 = [(ICBrowseAttachmentsBaseCell *)self eventReporter];
  [v6 submitAttachmentBrowserActionEventForType:3];
}

- (void)openAttachment:(id)a3
{
  v5 = [(ICBrowseAttachmentsBaseCell *)self delegate];
  v4 = [(ICBrowseAttachmentsBaseCell *)self attachment];
  [v5 browseAttachmentsCell:self didSelectAttachment:v4];
}

- (void)shareAttachment:(id)a3
{
  v5 = [(ICBrowseAttachmentsBaseCell *)self delegate];
  v4 = [(ICBrowseAttachmentsBaseCell *)self attachment];
  [v5 browseAttachmentsCell:self shouldShareAttachment:v4];
}

- (void)openAttachmentInspector:(id)a3
{
  v4 = [(ICBrowseAttachmentsBaseCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(ICBrowseAttachmentsBaseCell *)self delegate];
    v6 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [v7 browseAttachmentsCell:self shouldInspectAttachment:v6];
  }
}

- (UICollectionView)collectionView
{
  v2 = [(ICBrowseAttachmentsBaseCell *)self collectionController];
  v3 = [v2 collectionView];

  return v3;
}

- (int64_t)indexInSection
{
  v3 = [(ICBrowseAttachmentsBaseCell *)self collectionView];
  v4 = [v3 indexPathForCell:self];
  v5 = [v4 item];

  return v5;
}

- (int64_t)countOfItemsInSection
{
  v3 = [(ICBrowseAttachmentsBaseCell *)self collectionView];
  v4 = [v3 indexPathForCell:self];

  v5 = [(ICBrowseAttachmentsBaseCell *)self collectionView];
  v6 = [v5 dataSource];
  v7 = [(ICBrowseAttachmentsBaseCell *)self collectionView];
  v8 = [v6 collectionView:v7 numberOfItemsInSection:{objc_msgSend(v4, "section")}];

  return v8;
}

- (NSString)itemNumberAccessibilityString
{
  v3 = [(ICBrowseAttachmentsBaseCell *)self collectionView];

  if (v3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"%ld of %ld" value:&stru_100661CF0 table:0];

    v6 = [NSString localizedStringWithFormat:v5, [(ICBrowseAttachmentsBaseCell *)self indexInSection]+ 1, [(ICBrowseAttachmentsBaseCell *)self countOfItemsInSection]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDragging:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICBrowseAttachmentsBaseCell *)self isDragging];
  v6.receiver = self;
  v6.super_class = ICBrowseAttachmentsBaseCell;
  [(ICBrowseAttachmentsBaseCell *)&v6 setDragging:v3];
  if (v5 != v3)
  {
    [(ICBrowseAttachmentsBaseCell *)self updateAppearanceForDragging:v3];
  }
}

- (id)dragItemForAttachment
{
  v3 = [(ICBrowseAttachmentsBaseCell *)self attachment];
  v4 = [v3 attachmentModel];
  v5 = [v4 itemProvider];

  if (v5)
  {
    v6 = [[UIDragItem alloc] initWithItemProvider:v5];
    v7 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    v8 = [v7 isChildOfDocumentGallery];

    if ((v8 & 1) == 0)
    {
      v9 = [(ICBrowseAttachmentsBaseCell *)self attachment];
      v10 = [v9 attachmentModel];
      [v6 setLocalObject:v10];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];
  v6 = [v5 isEqual:self];

  if (v6)
  {

    [(ICBrowseAttachmentsBaseCell *)self updateFocusEffect];
  }
}

- (void)updateFocusEffect
{
  [(ICBrowseAttachmentsBaseCell *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v13 = [(ICBrowseAttachmentsBaseCell *)self layer];
  [v13 cornerRadius];
  v12 = [UIFocusHaloEffect effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v4 curve:v6, v8, v10, v11];
  [(ICBrowseAttachmentsBaseCell *)self setFocusEffect:v12];
}

- (id)previewActionsForViewControllerManager:(id)a3 fromView:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(location, self);
  v8 = +[NSMutableArray array];
  v9 = [ICAttachmentView alloc];
  v10 = [(ICBrowseAttachmentsBaseCell *)self attachment];
  v11 = [(ICBrowseAttachmentsBaseCell *)self window];
  v12 = [v9 initWithAttachment:v10 textContainer:0 actionWindow:v11];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Copy" value:&stru_100661CF0 table:0];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000DE600;
  v37[3] = &unk_100649438;
  objc_copyWeak(&v39, location);
  v15 = v12;
  v38 = v15;
  v16 = [UIAction ic_actionWithTitle:v14 imageName:@"doc.on.doc" handler:v37];

  [v8 addObject:v16];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Share" value:&stru_100661CF0 table:0];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000DE654;
  v35[3] = &unk_100647A30;
  objc_copyWeak(&v36, location);
  v19 = [UIAction ic_actionWithTitle:v18 imageName:@"square.and.arrow.up" handler:v35];
  v26 = v7;

  [v8 addObject:v19];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Show in Note" value:&stru_100661CF0 table:0];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000DE698;
  v33[3] = &unk_100647A30;
  objc_copyWeak(&v34, location);
  v22 = [UIAction ic_actionWithTitle:v21 imageName:@"arrow.up.backward" handler:v33];

  [v8 addObject:v22];
  if (ICDebugModeEnabled())
  {
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_1000DE6DC;
    v31 = &unk_100647A30;
    objc_copyWeak(&v32, location);
    v23 = [UIAction ic_actionWithTitle:@"Inspect Attachment" imageName:@"magnifyingglass" handler:&v28, v7];
    [v8 addObject:v23];

    objc_destroyWeak(&v32);
  }

  v24 = [v8 copy];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);

  objc_destroyWeak(&v39);
  objc_destroyWeak(location);

  return v24;
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && +[ICNAEventReporter isOptedInForAnalytics])
  {
    v3 = [ICNAEventReporter alloc];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 initWithSubTrackerName:v5 view:self];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:self->_eventReporter];
  }

  v9 = self->_eventReporter;

  return v9;
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

- (ICBrowseAttachmentsCollectionController)collectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionController);

  return WeakRetained;
}

- (ICBrowseAttachmentsCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end