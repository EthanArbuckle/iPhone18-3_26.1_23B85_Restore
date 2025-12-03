@interface MCDPlaybackManager
- (MCDPlayableDelegate)delegate;
- (MCDPlaybackManager)initWithDelegate:(id)delegate;
- (void)performPlaybackRequestWithCommand:(id)command;
- (void)setupPlaybackRequestWithCompletion:(id)completion;
@end

@implementation MCDPlaybackManager

- (MCDPlaybackManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MCDPlaybackManager;
  v5 = [(MCDPlaybackManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)setupPlaybackRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(MPCPlayerRequest);
  v5 = +[MPAVRoutingController systemRoute];
  v6 = [MPCPlayerPath systemMusicPathWithRoute:v5 playerID:@"Music"];
  [v4 setPlayerPath:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100102008;
  v9[3] = &unk_1010986E8;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [v4 performWithCompletion:v9];
}

- (void)performPlaybackRequestWithCommand:(id)command
{
  commandCopy = command;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001020FC;
  v5[3] = &unk_101098710;
  objc_copyWeak(&v6, &location);
  [MPCPlayerChangeRequest performRequest:commandCopy completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (MCDPlayableDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end