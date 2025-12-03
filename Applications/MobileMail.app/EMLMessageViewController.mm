@interface EMLMessageViewController
- (EMLMessageViewController)initWithScene:(id)scene messageListItem:(id)item contactStore:(id)store avatarGenerator:(id)generator;
- (id)_defaultBarButtonItems;
- (id)_getCurrentlySelectedMessageContentForVisibleMessage;
- (id)_indexPathOfMessageViewControllerMessage:(id)message;
- (id)_messageContentViewForVisibleMessage;
- (id)_persistentIDForEMMessageObjectID:(id)d;
- (id)cellConfigurator:(id)configurator messageItemIDAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)messageItemIDAtIndexPath:(id)path;
- (id)messageRepositoryForTriageInteraction:(id)interaction;
- (id)presentingViewControllerForTriageInteraction:(id)interaction;
- (id)targetMessageForBarButtonTriage;
- (id)targetMessageItemIDForBarButtonTriage;
- (void)_configureExpandedCell:(id)cell atIndexPath:(id)path viewModel:(id)model collapseQuotedContent:(BOOL)content;
- (void)_forwardCommandInvoked:(id)invoked;
- (void)_printCommandInvoked:(id)invoked;
- (void)_reloadDataSource;
- (void)_showSingleMessage:(id)message animationOffset:(CGPoint)offset initialScrollOffset:(CGPoint)scrollOffset;
- (void)loadView;
- (void)replyButtonTapped:(id)tapped;
@end

@implementation EMLMessageViewController

- (EMLMessageViewController)initWithScene:(id)scene messageListItem:(id)item contactStore:(id)store avatarGenerator:(id)generator
{
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = EMLMessageViewController;
  v12 = [(ConversationViewControllerBase *)&v20 initWithScene:scene contactStore:store avatarGenerator:generator];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageListItem, item);
    displayMessage = [itemCopy displayMessage];
    result = [displayMessage result];

    [(ConversationViewControllerBase *)v13 setReferenceMessageListItem:result];
    collectionView = [(ConversationViewControllerBase *)v13 collectionView];
    [collectionView setDataSource:v13];

    v17 = [[MessageContentRepresentationRequest alloc] initWithMessage:result];
    [(EMLMessageViewController *)v13 setContentRepresentationRequest:v17];

    contentRepresentationRequest = [(EMLMessageViewController *)v13 contentRepresentationRequest];
    [contentRepresentationRequest start];
  }

  return v13;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = EMLMessageViewController;
  [(ConversationViewControllerBase *)&v4 loadView];
  conversationLayout = [(ConversationViewControllerBase *)self conversationLayout];
  [conversationLayout setSwipeDelegate:0];
}

- (void)_reloadDataSource
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [collectionView reloadData];
}

- (id)messageItemIDAtIndexPath:(id)path
{
  messageListItem = [(EMLMessageViewController *)self messageListItem];
  itemID = [messageListItem itemID];

  return itemID;
}

- (void)_showSingleMessage:(id)message animationOffset:(CGPoint)offset initialScrollOffset:(CGPoint)scrollOffset
{
  v5 = [(ConversationViewControllerBase *)self collectionView:message];
  visibleCells = [v5 visibleCells];
  firstObject = [visibleCells firstObject];

  v7 = firstObject;
  if (firstObject)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = firstObject;
    if (isKindOfClass)
    {
      messageViewController = [firstObject messageViewController];
      [messageViewController setAutomaticallyCollapseQuotedContent:0];

      messageViewController2 = [firstObject messageViewController];
      messageContentView = [messageViewController2 messageContentView];
      [messageContentView reload];

      v7 = firstObject;
    }
  }
}

- (void)_configureExpandedCell:(id)cell atIndexPath:(id)path viewModel:(id)model collapseQuotedContent:(BOOL)content
{
  contentCopy = content;
  cellCopy = cell;
  messageContentRequest = [model messageContentRequest];
  messageViewController = [cellCopy messageViewController];

  if (!messageViewController)
  {
    messageViewControllerReuseQueue = [(ConversationViewControllerBase *)self messageViewControllerReuseQueue];
    v12 = [messageViewControllerReuseQueue dequeueMessageViewControllerForContentRequest:messageContentRequest];
    [cellCopy setMessageViewController:v12];
  }

  messageViewController2 = [cellCopy messageViewController];
  [messageViewController2 setDelegate:self];
  messageContentView = [messageViewController2 messageContentView];
  [messageContentView setSuppressScrolling:0];

  contactStore = [(ConversationViewControllerBase *)self contactStore];
  cnStore = [contactStore cnStore];
  v17 = [messageViewController2 participantHeaderForContactStore:cnStore];

  [v17 setDisplayOptions:{-[EMLMessageViewController _headerDisplayOptionsForCell:displayedAsSingleMessage:](self, "_headerDisplayOptionsForCell:displayedAsSingleMessage:", cellCopy, 1)}];
  contentRequest = [messageViewController2 contentRequest];
  LOBYTE(contactStore) = [contentRequest isEqual:messageContentRequest];

  if ((contactStore & 1) == 0)
  {
    v19 = [NSMutableArray arrayWithObject:v17];
    v20 = [[MessageHeaderSubjectBlock alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [v19 addObject:v20];
    messageContentView2 = [messageViewController2 messageContentView];
    [messageContentView2 setHeaderViewSubjectBlock:v20];

    [(MessageHeaderSubjectBlock *)v20 setHidden:0];
    messageContentView3 = [messageViewController2 messageContentView];
    headerView = [messageContentView3 headerView];

    [headerView setHeaderBlocks:v19];
    [messageViewController2 setAutomaticallyCollapseQuotedContent:contentCopy];
    [messageViewController2 setContentRequest:messageContentRequest];
  }

  [cellCopy setConfiguredForSingleMessageDisplay:1];
  messageContentView4 = [messageViewController2 messageContentView];
  [messageContentView4 setShowMessageFooter:0];
}

- (id)cellConfigurator:(id)configurator messageItemIDAtIndexPath:(id)path
{
  v4 = [(EMLMessageViewController *)self messageListItem:configurator];
  itemID = [v4 itemID];

  return itemID;
}

- (id)_persistentIDForEMMessageObjectID:(id)d
{
  dCopy = d;
  scene = [(ConversationViewControllerBase *)self scene];
  daemonInterface = [scene daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  v8 = [messageRepository persistentIDForMessageObjectID:dCopy];

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  v7 = [cellConfigurator unconfiguredCellForItemAtIndexPath:pathCopy];
  contentRepresentationRequest = [(EMLMessageViewController *)self contentRepresentationRequest];
  itemID = [contentRepresentationRequest itemID];
  messageFuture = [contentRepresentationRequest messageFuture];
  [cellConfigurator configureCell:v7 forItemAtIndexPath:pathCopy itemID:itemID messageFuture:messageFuture contentRequest:contentRepresentationRequest];

  return v7;
}

- (id)_messageContentViewForVisibleMessage
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  _currentlyVisibleIndexPath = [(EMLMessageViewController *)self _currentlyVisibleIndexPath];
  v5 = [collectionView cellForItemAtIndexPath:_currentlyVisibleIndexPath];

  messageViewController = [v5 messageViewController];
  messageContentView = [messageViewController messageContentView];

  return messageContentView;
}

- (id)_getCurrentlySelectedMessageContentForVisibleMessage
{
  _messageContentViewForVisibleMessage = [(EMLMessageViewController *)self _messageContentViewForVisibleMessage];
  selectedHTML = [_messageContentViewForVisibleMessage selectedHTML];
  v4 = [selectedHTML length];

  if (v4)
  {
    selectedHTML2 = [_messageContentViewForVisibleMessage selectedHTML];
    v7 = selectedHTML2;
    v4 = [NSArray arrayWithObjects:&v7 count:1];
  }

  return v4;
}

- (id)_defaultBarButtonItems
{
  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  v4 = objc_alloc_init(NSMutableArray);
  destructiveButtonItem = [barItemsManager destructiveButtonItem];
  [destructiveButtonItem setEnabled:0];
  moveButtonItem = [barItemsManager moveButtonItem];
  [moveButtonItem setEnabled:0];
  v19[0] = destructiveButtonItem;
  v19[1] = moveButtonItem;
  v7 = [NSArray arrayWithObjects:v19 count:2];
  [v4 addObjectsFromArray:v7];

  v8 = +[EFDevice currentDevice];
  if ([v8 isPad])
  {
  }

  else
  {
    v9 = +[EFDevice currentDevice];
    isRealityDevice = [v9 isRealityDevice];

    if (!isRealityDevice)
    {
      goto LABEL_5;
    }
  }

  replyButtonItem = [barItemsManager replyButtonItem];
  [replyButtonItem setEnabled:0];

LABEL_5:
  traitCollection = [(EMLMessageViewController *)self traitCollection];
  mf_hasCompactDimension = [traitCollection mf_hasCompactDimension];

  if (mf_hasCompactDimension)
  {
    replyButtonItem2 = [barItemsManager replyButtonItem];
    [v4 addObject:replyButtonItem2];
  }

  composeButtonItem = [barItemsManager composeButtonItem];

  if (composeButtonItem)
  {
    composeButtonItem2 = [barItemsManager composeButtonItem];
    [v4 addObject:composeButtonItem2];
  }

  v17 = [v4 copy];

  return v17;
}

- (void)replyButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  scene = [(ConversationViewControllerBase *)self scene];
  contentRepresentationRequest = [(EMLMessageViewController *)self contentRepresentationRequest];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A5980;
  v18[3] = &unk_10064D720;
  v18[4] = self;
  v5 = objc_retainBlock(v18);
  v6 = [UIAlertController mf_actionSheetWithTitle:0 cancellationHandler:0];
  _getCurrentlySelectedMessageContentForVisibleMessage = [(EMLMessageViewController *)self _getCurrentlySelectedMessageContentForVisibleMessage];
  v8 = sub_1000A59F4(self, 0, _getCurrentlySelectedMessageContentForVisibleMessage);
  v9 = [v8 alertActionWithCompletion:v5];
  [v6 addAction:v9];

  v10 = sub_1000A59F4(self, 1, _getCurrentlySelectedMessageContentForVisibleMessage);
  v11 = [v10 alertActionWithCompletion:v5];
  [v6 addAction:v11];

  v12 = sub_1000A5B30(self, _getCurrentlySelectedMessageContentForVisibleMessage);
  v13 = [v12 alertActionWithCompletion:v5];
  [v6 addAction:v13];

  v14 = [MFPrintTriageInteraction interactionWithContentRequest:contentRepresentationRequest scene:scene delegate:self];
  [v14 setDelegate:self];
  v15 = [v14 alertActionWithCompletion:v5];
  [v6 addAction:v15];

  [v6 mf_presentFromViewController:self withSource:tappedCopy];
}

- (id)_indexPathOfMessageViewControllerMessage:(id)message
{
  v3 = [NSIndexPath indexPathForRow:0 inSection:0];

  return v3;
}

- (id)targetMessageItemIDForBarButtonTriage
{
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  displayMessageItemID = [referenceMessageListItem displayMessageItemID];

  return displayMessageItemID;
}

- (id)targetMessageForBarButtonTriage
{
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  displayMessage = [referenceMessageListItem displayMessage];
  result = [displayMessage result];

  return result;
}

- (id)presentingViewControllerForTriageInteraction:(id)interaction
{
  presentingViewController = [(EMLMessageViewController *)self presentingViewController];

  if (presentingViewController)
  {
    selfCopy = self;
LABEL_5:
    mf_rootViewController = selfCopy;
    goto LABEL_6;
  }

  presentedViewController = [(EMLMessageViewController *)self presentedViewController];

  if (presentedViewController)
  {
    selfCopy = [(EMLMessageViewController *)self presentedViewController];
    goto LABEL_5;
  }

  scene = [(ConversationViewControllerBase *)self scene];
  mf_rootViewController = [scene mf_rootViewController];

LABEL_6:

  return mf_rootViewController;
}

- (id)messageRepositoryForTriageInteraction:(id)interaction
{
  scene = [(ConversationViewControllerBase *)self scene];
  daemonInterface = [scene daemonInterface];
  messageRepository = [daemonInterface messageRepository];

  return messageRepository;
}

- (void)_printCommandInvoked:(id)invoked
{
  contentRepresentationRequest = [(EMLMessageViewController *)self contentRepresentationRequest];
  scene = [(ConversationViewControllerBase *)self scene];
  v6 = [MFPrintTriageInteraction interactionWithContentRequest:contentRepresentationRequest scene:scene delegate:self];

  [v6 setDelegate:self];
  sub_1000A609C(self, v6);
}

- (void)_forwardCommandInvoked:(id)invoked
{
  _getCurrentlySelectedMessageContentForVisibleMessage = [(EMLMessageViewController *)self _getCurrentlySelectedMessageContentForVisibleMessage];
  v5 = sub_1000A5B30(self, _getCurrentlySelectedMessageContentForVisibleMessage);

  sub_1000A609C(self, v5);
}

@end