@interface DraftGestureHelper
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (ComposeCapable)scene;
- (ConversationViewController)conversationViewController;
- (DraftGestureHelper)initWithConversationViewController:(id)controller scene:(id)scene;
- (void)_tapRecognized:(id)recognized;
- (void)enableGesture:(BOOL)gesture;
@end

@implementation DraftGestureHelper

- (DraftGestureHelper)initWithConversationViewController:(id)controller scene:(id)scene
{
  controllerCopy = controller;
  sceneCopy = scene;
  v13.receiver = self;
  v13.super_class = DraftGestureHelper;
  v8 = [(DraftGestureHelper *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_conversationViewController, controllerCopy);
    v10 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:"_tapRecognized:"];
    draftTapGesture = v9->_draftTapGesture;
    v9->_draftTapGesture = v10;

    [(UITapGestureRecognizer *)v9->_draftTapGesture setDelegate:v9];
    objc_storeWeak(&v9->_scene, sceneCopy);
  }

  return v9;
}

- (void)enableGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  conversationViewController = [(DraftGestureHelper *)self conversationViewController];
  view = [conversationViewController view];

  draftTapGesture = [(DraftGestureHelper *)self draftTapGesture];
  if (gestureCopy)
  {
    [view addGestureRecognizer:draftTapGesture];
  }

  else
  {
    [view removeGestureRecognizer:draftTapGesture];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_tapRecognized:(id)recognized
{
  conversationViewController = [(DraftGestureHelper *)self conversationViewController];
  collectionView = [conversationViewController collectionView];
  isDecelerating = [collectionView isDecelerating];

  if ((isDecelerating & 1) == 0)
  {
    referenceMessageListItem = [conversationViewController referenceMessageListItem];
    displayMessage = [referenceMessageListItem displayMessage];
    result = [displayMessage result];

    v9 = +[UIApplication sharedApplication];
    mailboxProvider = [v9 mailboxProvider];
    mailboxObjectIDs = [result mailboxObjectIDs];
    firstObject = [mailboxObjectIDs firstObject];
    v13 = [mailboxProvider legacyMailboxForObjectID:firstObject];
    v14 = [MFComposeMailMessage legacyMessageWithMessage:result mailboxUid:v13];

    mailboxes = [result mailboxes];
    firstObject2 = [mailboxes firstObject];
    type = [firstObject2 type];

    if (type == 5)
    {
      v18 = [[_MFMailCompositionContext alloc] initDraftRestoreOfMessage:result legacyMessage:v14];
    }

    else
    {
      v18 = [[_MFMailCompositionContext alloc] initOutboxRestoreOfMessage:result legacyMessage:v14];
    }

    v19 = v18;
    scene = [(DraftGestureHelper *)self scene];
    [scene showComposeWithContext:v19 animated:1 initialTitle:0 presentationSource:0 completionBlock:0];
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