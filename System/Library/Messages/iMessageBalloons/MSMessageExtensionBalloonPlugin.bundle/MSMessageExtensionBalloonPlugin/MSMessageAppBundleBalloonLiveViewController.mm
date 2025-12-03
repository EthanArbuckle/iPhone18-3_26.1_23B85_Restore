@interface MSMessageAppBundleBalloonLiveViewController
- (CGSize)liveView:(id)view sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MSMessageAppBundleBalloonLiveViewController)initWithDataSource:(id)source fromMe:(BOOL)me conversationID:(id)d recipients:(id)recipients;
- (id)messageTintColor;
- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)color;
- (void)_requestResize;
- (void)dealloc;
- (void)didChangeBackgroundLuminance:(double)luminance;
- (void)fetchInternalMessageStateForDraft:(BOOL)draft completion:(id)completion;
- (void)loadView;
- (void)pluginPayloadDidChangeForLiveView:(id)view;
- (void)refreshConversationState;
- (void)setShouldPerformSendAnimationOnAppear;
- (void)viewDidLoad;
@end

@implementation MSMessageAppBundleBalloonLiveViewController

- (MSMessageAppBundleBalloonLiveViewController)initWithDataSource:(id)source fromMe:(BOOL)me conversationID:(id)d recipients:(id)recipients
{
  meCopy = me;
  sourceCopy = source;
  v28.receiver = self;
  v28.super_class = MSMessageAppBundleBalloonLiveViewController;
  v11 = [(MSMessageBalloonLiveViewController *)&v28 initWithDataSource:sourceCopy fromMe:meCopy conversationID:d recipients:recipients];
  if (v11)
  {
    pluginPayload = [sourceCopy pluginPayload];
    pluginBundleID = [pluginPayload pluginBundleID];

    v14 = +[IMBalloonPluginManager sharedInstance];
    v15 = [v14 balloonPluginForBundleID:pluginBundleID];

    appBundle = [v15 appBundle];
    v17 = objc_alloc_init([appBundle principalClass]);

    v18 = [[_MSMessageAppBundleHostContext alloc] initWithAppContext:0];
    [v18 setDelegate:v11];
    v19 = [[_MSMessageAppBundleContext alloc] initWithViewController:v17 wantsLiveView:1];
    context = v11->_context;
    v11->_context = v19;

    [(_MSMessageAppBundleContext *)v11->_context setHostContext:v18];
    [(_MSMessageAppBundleContext *)v11->_context setBecomeActiveShouldDispatchAsyncMainQueue:0];
    v21 = [[_MSMessageAppContext alloc] initWithAppContext:v11->_context];
    [(MSMessagesAppViewController *)v17 setAppContext:v21];

    appContext = [(MSMessagesAppViewController *)v17 appContext];
    [appContext setBecomeActiveShouldDispatchAsyncMainQueue:0];

    appViewController = v11->_appViewController;
    v11->_appViewController = v17;
    v24 = v17;

    messageTintColor = [(MSMessagesAppViewController *)v24 messageTintColor];
    lastKnownMessageTintColor = v11->_lastKnownMessageTintColor;
    v11->_lastKnownMessageTintColor = messageTintColor;
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
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  v9 = [(MSMessageExtensionBalloonLiveView *)v3 initWithFrame:dataSource dataSource:[(MSMessageBalloonLiveViewController *)self isFromMe] fromMe:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  [(MSMessageExtensionBalloonLiveView *)v9 setDelegate:self];
  appViewController = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  [(MSMessageAppBundleBalloonLiveViewController *)self addChildViewController:appViewController];

  appViewController2 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  view = [appViewController2 view];
  [(MSMessageExtensionBalloonLiveView *)v9 setRemoteBalloonView:view];

  appViewController3 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  [appViewController3 didMoveToParentViewController:self];

  [(MSMessageAppBundleBalloonLiveViewController *)self setView:v9];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = MSMessageAppBundleBalloonLiveViewController;
  [(MSMessageAppBundleBalloonLiveViewController *)&v12 viewDidLoad];
  v3 = objc_alloc_init(_MSPresentationState);
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  pluginPayload = [dataSource pluginPayload];
  if ([pluginPayload liveEditableInEntryView])
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
    appViewController = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
    [appViewController setShouldPerformSendAnimationOnAppear];
  }

  appViewController2 = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  appContext = [appViewController2 appContext];
  conversationStateFactory = [(MSMessageBalloonLiveViewController *)self conversationStateFactory];
  conversationState = [conversationStateFactory conversationState];
  [appContext _becomeActiveWithConversationState:conversationState presentationState:v3];
}

- (void)refreshConversationState
{
  conversationStateFactory = [(MSMessageBalloonLiveViewController *)self conversationStateFactory];
  conversationState = [conversationStateFactory conversationState];

  appViewController = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  appContext = [appViewController appContext];
  activeMessage = [conversationState activeMessage];
  [appContext _didUpdateMessage:activeMessage conversationState:conversationState];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  appViewController = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  [appViewController contentSizeThatFits:{width, height}];
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
  appViewController = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  messageTintColor = [appViewController messageTintColor];

  return messageTintColor;
}

- (void)pluginPayloadDidChangeForLiveView:(id)view
{
  viewCopy = view;
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  pluginPayload = [dataSource pluginPayload];
  dataSource2 = [viewCopy dataSource];
  pluginPayload2 = [dataSource2 pluginPayload];

  if (pluginPayload != pluginPayload2)
  {
    dataSource3 = [viewCopy dataSource];
    [(MSMessageBalloonLiveViewController *)self setDataSource:dataSource3];

    [(MSMessageAppBundleBalloonLiveViewController *)self refreshConversationState];
  }
}

- (void)fetchInternalMessageStateForDraft:(BOOL)draft completion:(id)completion
{
  draftCopy = draft;
  completionCopy = completion;
  appViewController = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_ED28;
  v9[3] = &unk_4D378;
  v10 = completionCopy;
  v8 = completionCopy;
  [appViewController fetchInternalMessageStateForDraft:draftCopy completion:v9];
}

- (void)setShouldPerformSendAnimationOnAppear
{
  [(MSMessageAppBundleBalloonLiveViewController *)self setShouldPerformSendAnimationOnAppear:1];
  appViewController = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  [appViewController setShouldPerformSendAnimationOnAppear];
}

- (void)didChangeBackgroundLuminance:(double)luminance
{
  [(MSMessageAppBundleBalloonLiveViewController *)self setBackgroundLuminance:luminance];
  appViewController = [(MSMessageAppBundleBalloonLiveViewController *)self appViewController];
  [(MSMessageAppBundleBalloonLiveViewController *)self backgroundLuminance];
  [appViewController didChangeBackgroundLuminance:?];
}

- (CGSize)liveView:(id)view sizeThatFits:(CGSize)fits
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_remoteViewDidInvalidateMessageTintColorWithUpdatedColor:(id)color
{
  [(MSMessageAppBundleBalloonLiveViewController *)self setLastKnownMessageTintColor:color];
  tintColorDelegate = [(MSMessageBalloonLiveViewController *)self tintColorDelegate];
  [tintColorDelegate liveViewControllerDidUpdateMessageTintColor:self];
}

- (void)_requestResize
{
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  [dataSource needsResize];
}

@end