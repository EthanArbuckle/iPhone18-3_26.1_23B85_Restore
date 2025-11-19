@interface DraftGestureHelper
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (ComposeCapable)scene;
- (ConversationViewController)conversationViewController;
- (DraftGestureHelper)initWithConversationViewController:(id)a3 scene:(id)a4;
- (void)_tapRecognized:(id)a3;
- (void)enableGesture:(BOOL)a3;
@end

@implementation DraftGestureHelper

- (DraftGestureHelper)initWithConversationViewController:(id)a3 scene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = DraftGestureHelper;
  v8 = [(DraftGestureHelper *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_conversationViewController, v6);
    v10 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:"_tapRecognized:"];
    draftTapGesture = v9->_draftTapGesture;
    v9->_draftTapGesture = v10;

    [(UITapGestureRecognizer *)v9->_draftTapGesture setDelegate:v9];
    objc_storeWeak(&v9->_scene, v7);
  }

  return v9;
}

- (void)enableGesture:(BOOL)a3
{
  v3 = a3;
  v5 = [(DraftGestureHelper *)self conversationViewController];
  v7 = [v5 view];

  v6 = [(DraftGestureHelper *)self draftTapGesture];
  if (v3)
  {
    [v7 addGestureRecognizer:v6];
  }

  else
  {
    [v7 removeGestureRecognizer:v6];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v4 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_tapRecognized:(id)a3
{
  v21 = [(DraftGestureHelper *)self conversationViewController];
  v4 = [v21 collectionView];
  v5 = [v4 isDecelerating];

  if ((v5 & 1) == 0)
  {
    v6 = [v21 referenceMessageListItem];
    v7 = [v6 displayMessage];
    v8 = [v7 result];

    v9 = +[UIApplication sharedApplication];
    v10 = [v9 mailboxProvider];
    v11 = [v8 mailboxObjectIDs];
    v12 = [v11 firstObject];
    v13 = [v10 legacyMailboxForObjectID:v12];
    v14 = [MFComposeMailMessage legacyMessageWithMessage:v8 mailboxUid:v13];

    v15 = [v8 mailboxes];
    v16 = [v15 firstObject];
    v17 = [v16 type];

    if (v17 == 5)
    {
      v18 = [[_MFMailCompositionContext alloc] initDraftRestoreOfMessage:v8 legacyMessage:v14];
    }

    else
    {
      v18 = [[_MFMailCompositionContext alloc] initOutboxRestoreOfMessage:v8 legacyMessage:v14];
    }

    v19 = v18;
    v20 = [(DraftGestureHelper *)self scene];
    [v20 showComposeWithContext:v19 animated:1 initialTitle:0 presentationSource:0 completionBlock:0];
  }
}

- (ConversationViewController)conversationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_conversationViewController);

  return WeakRetained;
}

- (ComposeCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end