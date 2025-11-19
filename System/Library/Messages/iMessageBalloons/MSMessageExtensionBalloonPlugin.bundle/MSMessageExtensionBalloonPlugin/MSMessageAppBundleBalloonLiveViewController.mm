@interface MSMessageAppBundleBalloonLiveViewController
- (CGSize)liveView:(id)a3 sizeThatFits:(CGSize)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MSMessageAppBundleBalloonLiveViewController)initWithDataSource:(id)a3 fromMe:(BOOL)a4 conversationID:(id)a5 recipients:(id)a6;
- (id)messageTintColor;
- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)a3;
- (void)_requestResize;
- (void)dealloc;
- (void)didChangeBackgroundLuminance:(double)a3;
- (void)fetchInternalMessageStateForDraft:(BOOL)a3 completion:(id)a4;
- (void)loadView;
- (void)pluginPayloadDidChangeForLiveView:(id)a3;
- (void)refreshConversationState;
- (void)setShouldPerformSendAnimationOnAppear;
- (void)viewDidLoad;
@end

@implementation MSMessageAppBundleBalloonLiveViewController

- (MSMessageAppBundleBalloonLiveViewController)initWithDataSource:(id)a3 fromMe:(BOOL)a4 conversationID:(id)a5 recipients:(id)a6
{
  v8 = a4;
  v10 = a3;
  v28.receiver = self;
  v28.super_class = MSMessageAppBundleBalloonLiveViewController;
  v11 = [(MSMessageBalloonLiveViewController *)&v28 initWithDataSource:v10 fromMe:v8 conversationID:a5 recipients:a6];
  if (v11)
  {
    v12 = [v10 pluginPayload];
    v13 = [v12 pluginBundleID];

    v14 = +[IMBalloonPluginManager sharedInstance];
    v15 = [v14 balloonPluginForBundleID:v13];

    v16 = [v15 appBundle];
    v17 = objc_alloc_init([v16 principalClass]);

    v18 = [[_MSMessageAppBundleHostContext alloc] initWithAppContext:0];
    [v18 setDelegate:v11];
    v19 = [[_MSMessageAppBundleContext alloc] initWithViewController:v17 wantsLiveView:1];
    context = v11->_context;
    v11->_context = v19;

    [(_MSMessageAppBundleContext *)v11->_context setHostContext:v18];
    [(_MSMessageAppBundleContext *)v11->_context setBecomeActiveShouldDispatchAsyncMainQueue:0];
    v21 = [[_MSMessageAppContext alloc] initWithAppContext:v11->_context];
    [(MSMessagesAppViewController *)v17 setAppContext:v21];

    v22 = [(MSMessagesAppViewController *)v17 appContext];
    [v22 setBecomeActiveShouldDispatchAsyncMainQueue:0];

    appViewController = v11->_appViewController;
    v11->_appViewController = v17;
    v24 = v17;

    v25 = [(MSMessagesAppViewController *)v24 messageTintColor];
    lastKnownMessageTintColor = v11->_lastKnownMessageTintColor;
    v11->_lastKnownMessageTintColor = v25;
  }

  return v11;
}

- (void)dealloc
{
  [(_MSMessageAppBundleContext *)self->_context _resignActive];
  v3.receiver = self;
  v3.super_class = MSMessageAppBundleBalloonLiveViewController;
  [(MSMessageAppBundleBalloonLiveViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = [MSMessageExtensionBalloonLiveView alloc];
  v4 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v9 = [(MSMessageExtensionBalloonLiveView *)v3 initWithFrame:v4 dataSource:[(MSMessageBalloonLiveViewController *)self isFromMe] fromMe:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  [(MSMessageExtensionBalloonLiveView *)v9 setDelegate:self];
  v5 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  [(MSMessageAppBundleBalloonLiveViewController *)self addChildViewController:v5];

  v6 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  v7 = [v6 view];
  [(MSMessageExtensionBalloonLiveView *)v9 setRemoteBalloonView:v7];

  v8 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  [v8 didMoveToParentViewController:self];

  [(MSMessageAppBundleBalloonLiveViewController *)self setView:v9];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = MSMessageAppBundleBalloonLiveViewController;
  [(MSMessageAppBundleBalloonLiveViewController *)&v12 viewDidLoad];
  v3 = objc_alloc_init(_MSPresentationState);
  v4 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v5 = [v4 pluginPayload];
  if ([v5 liveEditableInEntryView])
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  [v3 setPresentationStyle:v6];

  if ([(MSMessageAppBundleBalloonLiveViewController *)self shouldPerformSendAnimationOnAppear])
  {
    v7 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
    [v7 setShouldPerformSendAnimationOnAppear];
  }

  v8 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  v9 = [v8 appContext];
  v10 = [(MSMessageBalloonLiveViewController *)self conversationStateFactory];
  v11 = [v10 conversationState];
  [v9 _becomeActiveWithConversationState:v11 presentationState:v3];
}

- (void)refreshConversationState
{
  v3 = [(MSMessageBalloonLiveViewController *)self conversationStateFactory];
  v7 = [v3 conversationState];

  v4 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  v5 = [v4 appContext];
  v6 = [v7 activeMessage];
  [v5 _didUpdateMessage:v6 conversationState:v7];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  [v5 contentSizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)messageTintColor
{
  v2 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  v3 = [v2 messageTintColor];

  return v3;
}

- (void)pluginPayloadDidChangeForLiveView:(id)a3
{
  v9 = a3;
  v4 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v5 = [v4 pluginPayload];
  v6 = [v9 dataSource];
  v7 = [v6 pluginPayload];

  if (v5 != v7)
  {
    v8 = [v9 dataSource];
    [(MSMessageBalloonLiveViewController *)self setDataSource:v8];

    [(MSMessageAppBundleBalloonLiveViewController *)self refreshConversationState];
  }
}

- (void)fetchInternalMessageStateForDraft:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_ED28;
  v9[3] = &unk_4D378;
  v10 = v6;
  v8 = v6;
  [v7 fetchInternalMessageStateForDraft:v4 completion:v9];
}

- (void)setShouldPerformSendAnimationOnAppear
{
  [(MSMessageAppBundleBalloonLiveViewController *)self setShouldPerformSendAnimationOnAppear:1];
  v3 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  [v3 setShouldPerformSendAnimationOnAppear];
}

- (void)didChangeBackgroundLuminance:(double)a3
{
  [(MSMessageAppBundleBalloonLiveViewController *)self setBackgroundLuminance:a3];
  v4 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  [(MSMessageAppBundleBalloonLiveViewController *)self backgroundLuminance];
  [v4 didChangeBackgroundLuminance:?];
}

- (CGSize)liveView:(id)a3 sizeThatFits:(CGSize)a4
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)a3
{
  [(MSMessageAppBundleBalloonLiveViewController *)self setLastKnownMessageTintColor:a3];
  v4 = [(MSMessageBalloonLiveViewController *)self tintColorDelegate];
  [v4 liveViewControllerDidUpdateMessageTintColor:self];
}

- (void)_requestResize
{
  v2 = [(MSMessageBalloonLiveViewController *)self dataSource];
  [v2 needsResize];
}

@end