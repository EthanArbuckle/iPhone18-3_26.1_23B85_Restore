@interface ICBrowseAttachmentsBaseCell
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (ICBrowseAttachmentsCellDelegate)delegate;
- (ICBrowseAttachmentsCollectionController)collectionController;
- (ICNAEventReporter)eventReporter;
- (NSString)itemNumberAccessibilityString;
- (UICollectionView)collectionView;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)dragItemForAttachment;
- (id)previewActionsForViewControllerManager:(id)manager fromView:(id)view;
- (int64_t)countOfItemsInSection;
- (int64_t)indexInSection;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)eventReporterLostSession:(id)session;
- (void)openAttachment:(id)attachment;
- (void)openAttachmentInspector:(id)inspector;
- (void)prepareForReuse;
- (void)setDragging:(BOOL)dragging;
- (void)shareAttachment:(id)attachment;
- (void)showInNote:(id)note;
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if ("showInNote:" == action || "openAttachment:" == action)
  {
    return 1;
  }

  result = ICDebugModeEnabled();
  if ("openAttachmentInspector:" != action)
  {
    return 0;
  }

  return result;
}

- (void)showInNote:(id)note
{
  attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];
  ic_viewControllerManager = [(ICBrowseAttachmentsBaseCell *)self ic_viewControllerManager];
  objectID = [attachment objectID];
  [ic_viewControllerManager selectAttachmentWithObjectID:objectID animated:1];

  eventReporter = [(ICBrowseAttachmentsBaseCell *)self eventReporter];
  [eventReporter submitAttachmentBrowserActionEventForType:3];
}

- (void)openAttachment:(id)attachment
{
  delegate = [(ICBrowseAttachmentsBaseCell *)self delegate];
  attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];
  [delegate browseAttachmentsCell:self didSelectAttachment:attachment];
}

- (void)shareAttachment:(id)attachment
{
  delegate = [(ICBrowseAttachmentsBaseCell *)self delegate];
  attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];
  [delegate browseAttachmentsCell:self shouldShareAttachment:attachment];
}

- (void)openAttachmentInspector:(id)inspector
{
  delegate = [(ICBrowseAttachmentsBaseCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICBrowseAttachmentsBaseCell *)self delegate];
    attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [delegate2 browseAttachmentsCell:self shouldInspectAttachment:attachment];
  }
}

- (UICollectionView)collectionView
{
  collectionController = [(ICBrowseAttachmentsBaseCell *)self collectionController];
  collectionView = [collectionController collectionView];

  return collectionView;
}

- (int64_t)indexInSection
{
  collectionView = [(ICBrowseAttachmentsBaseCell *)self collectionView];
  v4 = [collectionView indexPathForCell:self];
  item = [v4 item];

  return item;
}

- (int64_t)countOfItemsInSection
{
  collectionView = [(ICBrowseAttachmentsBaseCell *)self collectionView];
  v4 = [collectionView indexPathForCell:self];

  collectionView2 = [(ICBrowseAttachmentsBaseCell *)self collectionView];
  dataSource = [collectionView2 dataSource];
  collectionView3 = [(ICBrowseAttachmentsBaseCell *)self collectionView];
  v8 = [dataSource collectionView:collectionView3 numberOfItemsInSection:{objc_msgSend(v4, "section")}];

  return v8;
}

- (NSString)itemNumberAccessibilityString
{
  collectionView = [(ICBrowseAttachmentsBaseCell *)self collectionView];

  if (collectionView)
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

- (void)setDragging:(BOOL)dragging
{
  draggingCopy = dragging;
  isDragging = [(ICBrowseAttachmentsBaseCell *)self isDragging];
  v6.receiver = self;
  v6.super_class = ICBrowseAttachmentsBaseCell;
  [(ICBrowseAttachmentsBaseCell *)&v6 setDragging:draggingCopy];
  if (isDragging != draggingCopy)
  {
    [(ICBrowseAttachmentsBaseCell *)self updateAppearanceForDragging:draggingCopy];
  }
}

- (id)dragItemForAttachment
{
  attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];
  attachmentModel = [attachment attachmentModel];
  itemProvider = [attachmentModel itemProvider];

  if (itemProvider)
  {
    v6 = [[UIDragItem alloc] initWithItemProvider:itemProvider];
    attachment2 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    isChildOfDocumentGallery = [attachment2 isChildOfDocumentGallery];

    if ((isChildOfDocumentGallery & 1) == 0)
    {
      attachment3 = [(ICBrowseAttachmentsBaseCell *)self attachment];
      attachmentModel2 = [attachment3 attachmentModel];
      [v6 setLocalObject:attachmentModel2];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  v6 = [nextFocusedItem isEqual:self];

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
  layer = [(ICBrowseAttachmentsBaseCell *)self layer];
  [layer cornerRadius];
  v12 = [UIFocusHaloEffect effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v4 curve:v6, v8, v10, v11];
  [(ICBrowseAttachmentsBaseCell *)self setFocusEffect:v12];
}

- (id)previewActionsForViewControllerManager:(id)manager fromView:(id)view
{
  managerCopy = manager;
  viewCopy = view;
  objc_initWeak(location, self);
  v8 = +[NSMutableArray array];
  v9 = [ICAttachmentView alloc];
  attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];
  window = [(ICBrowseAttachmentsBaseCell *)self window];
  v12 = [v9 initWithAttachment:attachment textContainer:0 actionWindow:window];

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
  v26 = viewCopy;

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
    viewCopy = [UIAction ic_actionWithTitle:@"Inspect Attachment" imageName:@"magnifyingglass" handler:&v28, viewCopy];
    [v8 addObject:viewCopy];

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