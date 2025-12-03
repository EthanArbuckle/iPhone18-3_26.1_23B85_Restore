@interface MFConversationCurrentVisibleMessageStrategy
- (ConversationViewControllerBase)viewController;
- (MFConversationCurrentVisibleMessageStrategy)initWithConversationViewController:(id)controller;
- (MessageContentRepresentationRequest)currentVisibleMessageContentRequest;
- (id)persistentIDForEMMessageObjectID:(id)d;
@end

@implementation MFConversationCurrentVisibleMessageStrategy

- (MFConversationCurrentVisibleMessageStrategy)initWithConversationViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MFConversationCurrentVisibleMessageStrategy.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];
  }

  v10.receiver = self;
  v10.super_class = MFConversationCurrentVisibleMessageStrategy;
  v6 = [(MFConversationCurrentVisibleMessageStrategy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_viewController, controllerCopy);
  }

  return v7;
}

- (id)persistentIDForEMMessageObjectID:(id)d
{
  dCopy = d;
  viewController = [(MFConversationCurrentVisibleMessageStrategy *)self viewController];
  v6 = [viewController _persistentIDForEMMessageObjectID:dCopy];

  return v6;
}

- (MessageContentRepresentationRequest)currentVisibleMessageContentRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  collectionView = [WeakRetained collectionView];
  [collectionView mf_visibleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  conversationSortOrder = [WeakRetained conversationSortOrder];
  visibleCells = [collectionView visibleCells];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1001BA634;
  v26[3] = &unk_100653B10;
  v27 = conversationSortOrder != 1;
  v14 = [visibleCells sortedArrayUsingComparator:v26];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1001BA6D8;
  v24 = sub_1001BA6E8;
  v25 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001BA6F0;
  v18[3] = &unk_100653B38;
  v18[6] = v5;
  v18[7] = v7;
  v18[8] = v9;
  v18[9] = v11;
  v18[4] = v19;
  v18[5] = &v20;
  [v14 enumerateObjectsUsingBlock:v18];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewModel = [v21[5] viewModel];
    messageContentRequest = [viewModel messageContentRequest];
  }

  else
  {
    messageContentRequest = 0;
  }

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v20, 8);

  return messageContentRequest;
}

- (ConversationViewControllerBase)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end