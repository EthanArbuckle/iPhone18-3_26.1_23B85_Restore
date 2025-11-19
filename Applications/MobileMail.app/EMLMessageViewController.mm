@interface EMLMessageViewController
- (EMLMessageViewController)initWithScene:(id)a3 messageListItem:(id)a4 contactStore:(id)a5 avatarGenerator:(id)a6;
- (id)_defaultBarButtonItems;
- (id)_getCurrentlySelectedMessageContentForVisibleMessage;
- (id)_indexPathOfMessageViewControllerMessage:(id)a3;
- (id)_messageContentViewForVisibleMessage;
- (id)_persistentIDForEMMessageObjectID:(id)a3;
- (id)cellConfigurator:(id)a3 messageItemIDAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)messageItemIDAtIndexPath:(id)a3;
- (id)messageRepositoryForTriageInteraction:(id)a3;
- (id)presentingViewControllerForTriageInteraction:(id)a3;
- (id)targetMessageForBarButtonTriage;
- (id)targetMessageItemIDForBarButtonTriage;
- (void)_configureExpandedCell:(id)a3 atIndexPath:(id)a4 viewModel:(id)a5 collapseQuotedContent:(BOOL)a6;
- (void)_forwardCommandInvoked:(id)a3;
- (void)_printCommandInvoked:(id)a3;
- (void)_reloadDataSource;
- (void)_showSingleMessage:(id)a3 animationOffset:(CGPoint)a4 initialScrollOffset:(CGPoint)a5;
- (void)loadView;
- (void)replyButtonTapped:(id)a3;
@end

@implementation EMLMessageViewController

- (EMLMessageViewController)initWithScene:(id)a3 messageListItem:(id)a4 contactStore:(id)a5 avatarGenerator:(id)a6
{
  v11 = a4;
  v20.receiver = self;
  v20.super_class = EMLMessageViewController;
  v12 = [(ConversationViewControllerBase *)&v20 initWithScene:a3 contactStore:a5 avatarGenerator:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageListItem, a4);
    v14 = [v11 displayMessage];
    v15 = [v14 result];

    [(ConversationViewControllerBase *)v13 setReferenceMessageListItem:v15];
    v16 = [(ConversationViewControllerBase *)v13 collectionView];
    [v16 setDataSource:v13];

    v17 = [[MessageContentRepresentationRequest alloc] initWithMessage:v15];
    [(EMLMessageViewController *)v13 setContentRepresentationRequest:v17];

    v18 = [(EMLMessageViewController *)v13 contentRepresentationRequest];
    [v18 start];
  }

  return v13;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = EMLMessageViewController;
  [(ConversationViewControllerBase *)&v4 loadView];
  v3 = [(ConversationViewControllerBase *)self conversationLayout];
  [v3 setSwipeDelegate:0];
}

- (void)_reloadDataSource
{
  v2 = [(ConversationViewControllerBase *)self collectionView];
  [v2 reloadData];
}

- (id)messageItemIDAtIndexPath:(id)a3
{
  v3 = [(EMLMessageViewController *)self messageListItem];
  v4 = [v3 itemID];

  return v4;
}

- (void)_showSingleMessage:(id)a3 animationOffset:(CGPoint)a4 initialScrollOffset:(CGPoint)a5
{
  v5 = [(ConversationViewControllerBase *)self collectionView:a3];
  v6 = [v5 visibleCells];
  v12 = [v6 firstObject];

  v7 = v12;
  if (v12)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v12;
    if (isKindOfClass)
    {
      v9 = [v12 messageViewController];
      [v9 setAutomaticallyCollapseQuotedContent:0];

      v10 = [v12 messageViewController];
      v11 = [v10 messageContentView];
      [v11 reload];

      v7 = v12;
    }
  }
}

- (void)_configureExpandedCell:(id)a3 atIndexPath:(id)a4 viewModel:(id)a5 collapseQuotedContent:(BOOL)a6
{
  v6 = a6;
  v25 = a3;
  v9 = [a5 messageContentRequest];
  v10 = [v25 messageViewController];

  if (!v10)
  {
    v11 = [(ConversationViewControllerBase *)self messageViewControllerReuseQueue];
    v12 = [v11 dequeueMessageViewControllerForContentRequest:v9];
    [v25 setMessageViewController:v12];
  }

  v13 = [v25 messageViewController];
  [v13 setDelegate:self];
  v14 = [v13 messageContentView];
  [v14 setSuppressScrolling:0];

  v15 = [(ConversationViewControllerBase *)self contactStore];
  v16 = [v15 cnStore];
  v17 = [v13 participantHeaderForContactStore:v16];

  [v17 setDisplayOptions:{-[EMLMessageViewController _headerDisplayOptionsForCell:displayedAsSingleMessage:](self, "_headerDisplayOptionsForCell:displayedAsSingleMessage:", v25, 1)}];
  v18 = [v13 contentRequest];
  LOBYTE(v15) = [v18 isEqual:v9];

  if ((v15 & 1) == 0)
  {
    v19 = [NSMutableArray arrayWithObject:v17];
    v20 = [[MessageHeaderSubjectBlock alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [v19 addObject:v20];
    v21 = [v13 messageContentView];
    [v21 setHeaderViewSubjectBlock:v20];

    [(MessageHeaderSubjectBlock *)v20 setHidden:0];
    v22 = [v13 messageContentView];
    v23 = [v22 headerView];

    [v23 setHeaderBlocks:v19];
    [v13 setAutomaticallyCollapseQuotedContent:v6];
    [v13 setContentRequest:v9];
  }

  [v25 setConfiguredForSingleMessageDisplay:1];
  v24 = [v13 messageContentView];
  [v24 setShowMessageFooter:0];
}

- (id)cellConfigurator:(id)a3 messageItemIDAtIndexPath:(id)a4
{
  v4 = [(EMLMessageViewController *)self messageListItem:a3];
  v5 = [v4 itemID];

  return v5;
}

- (id)_persistentIDForEMMessageObjectID:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewControllerBase *)self scene];
  v6 = [v5 daemonInterface];
  v7 = [v6 messageRepository];
  v8 = [v7 persistentIDForMessageObjectID:v4];

  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ConversationViewControllerBase *)self cellConfigurator];
  v7 = [v6 unconfiguredCellForItemAtIndexPath:v5];
  v8 = [(EMLMessageViewController *)self contentRepresentationRequest];
  v9 = [v8 itemID];
  v10 = [v8 messageFuture];
  [v6 configureCell:v7 forItemAtIndexPath:v5 itemID:v9 messageFuture:v10 contentRequest:v8];

  return v7;
}

- (id)_messageContentViewForVisibleMessage
{
  v3 = [(ConversationViewControllerBase *)self collectionView];
  v4 = [(EMLMessageViewController *)self _currentlyVisibleIndexPath];
  v5 = [v3 cellForItemAtIndexPath:v4];

  v6 = [v5 messageViewController];
  v7 = [v6 messageContentView];

  return v7;
}

- (id)_getCurrentlySelectedMessageContentForVisibleMessage
{
  v2 = [(EMLMessageViewController *)self _messageContentViewForVisibleMessage];
  v3 = [v2 selectedHTML];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v2 selectedHTML];
    v7 = v5;
    v4 = [NSArray arrayWithObjects:&v7 count:1];
  }

  return v4;
}

- (id)_defaultBarButtonItems
{
  v3 = [(ConversationViewControllerBase *)self barItemsManager];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [v3 destructiveButtonItem];
  [v5 setEnabled:0];
  v6 = [v3 moveButtonItem];
  [v6 setEnabled:0];
  v19[0] = v5;
  v19[1] = v6;
  v7 = [NSArray arrayWithObjects:v19 count:2];
  [v4 addObjectsFromArray:v7];

  v8 = +[EFDevice currentDevice];
  if ([v8 isPad])
  {
  }

  else
  {
    v9 = +[EFDevice currentDevice];
    v10 = [v9 isRealityDevice];

    if (!v10)
    {
      goto LABEL_5;
    }
  }

  v11 = [v3 replyButtonItem];
  [v11 setEnabled:0];

LABEL_5:
  v12 = [(EMLMessageViewController *)self traitCollection];
  v13 = [v12 mf_hasCompactDimension];

  if (v13)
  {
    v14 = [v3 replyButtonItem];
    [v4 addObject:v14];
  }

  v15 = [v3 composeButtonItem];

  if (v15)
  {
    v16 = [v3 composeButtonItem];
    [v4 addObject:v16];
  }

  v17 = [v4 copy];

  return v17;
}

- (void)replyButtonTapped:(id)a3
{
  v16 = a3;
  v17 = [(ConversationViewControllerBase *)self scene];
  v4 = [(EMLMessageViewController *)self contentRepresentationRequest];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A5980;
  v18[3] = &unk_10064D720;
  v18[4] = self;
  v5 = objc_retainBlock(v18);
  v6 = [UIAlertController mf_actionSheetWithTitle:0 cancellationHandler:0];
  v7 = [(EMLMessageViewController *)self _getCurrentlySelectedMessageContentForVisibleMessage];
  v8 = sub_1000A59F4(self, 0, v7);
  v9 = [v8 alertActionWithCompletion:v5];
  [v6 addAction:v9];

  v10 = sub_1000A59F4(self, 1, v7);
  v11 = [v10 alertActionWithCompletion:v5];
  [v6 addAction:v11];

  v12 = sub_1000A5B30(self, v7);
  v13 = [v12 alertActionWithCompletion:v5];
  [v6 addAction:v13];

  v14 = [MFPrintTriageInteraction interactionWithContentRequest:v4 scene:v17 delegate:self];
  [v14 setDelegate:self];
  v15 = [v14 alertActionWithCompletion:v5];
  [v6 addAction:v15];

  [v6 mf_presentFromViewController:self withSource:v16];
}

- (id)_indexPathOfMessageViewControllerMessage:(id)a3
{
  v3 = [NSIndexPath indexPathForRow:0 inSection:0];

  return v3;
}

- (id)targetMessageItemIDForBarButtonTriage
{
  v2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v3 = [v2 displayMessageItemID];

  return v3;
}

- (id)targetMessageForBarButtonTriage
{
  v2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v3 = [v2 displayMessage];
  v4 = [v3 result];

  return v4;
}

- (id)presentingViewControllerForTriageInteraction:(id)a3
{
  v4 = [(EMLMessageViewController *)self presentingViewController];

  if (v4)
  {
    v5 = self;
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v6 = [(EMLMessageViewController *)self presentedViewController];

  if (v6)
  {
    v5 = [(EMLMessageViewController *)self presentedViewController];
    goto LABEL_5;
  }

  v9 = [(ConversationViewControllerBase *)self scene];
  v7 = [v9 mf_rootViewController];

LABEL_6:

  return v7;
}

- (id)messageRepositoryForTriageInteraction:(id)a3
{
  v3 = [(ConversationViewControllerBase *)self scene];
  v4 = [v3 daemonInterface];
  v5 = [v4 messageRepository];

  return v5;
}

- (void)_printCommandInvoked:(id)a3
{
  v4 = [(EMLMessageViewController *)self contentRepresentationRequest];
  v5 = [(ConversationViewControllerBase *)self scene];
  v6 = [MFPrintTriageInteraction interactionWithContentRequest:v4 scene:v5 delegate:self];

  [v6 setDelegate:self];
  sub_1000A609C(self, v6);
}

- (void)_forwardCommandInvoked:(id)a3
{
  v4 = [(EMLMessageViewController *)self _getCurrentlySelectedMessageContentForVisibleMessage];
  v5 = sub_1000A5B30(self, v4);

  sub_1000A609C(self, v5);
}

@end