@interface AVTViewSessionProvider
+ (CGSize)backingSizeForEnvironment:(id)environment;
+ (id)creatorForAVTRecordView;
+ (id)creatorForAVTView;
- (AVTViewSessionProvider)initWithAVTViewBackingSize:(CGSize)size viewCreator:(id)creator environment:(id)environment;
- (AVTViewSessionProviderDelegate)delegate;
- (CGSize)avtViewBackingSize;
- (id)sessionWithDidBecomeActiveHandler:(id)handler tearDownHandler:(id)downHandler;
- (void)activateNextSession;
- (void)createContainerAndViewIfNeeded;
- (void)dealloc;
- (void)didLosePrimaryStatusWithSessionToPause:(id)pause;
- (void)handleProviderReleasesPrimaryStatusNotification:(id)notification;
- (void)handleProviderTakesPrimaryStatusNotification:(id)notification;
- (void)recoverPrimaryStatus;
- (void)sessionDidTearDown:(id)down;
@end

@implementation AVTViewSessionProvider

+ (id)creatorForAVTView
{
  v2 = [&__block_literal_global_25 copy];

  return v2;
}

AVTFixedSizeViewContainer *__43__AVTViewSessionProvider_creatorForAVTView__block_invoke(double a1, double a2, uint64_t a3, void *a4, AVTFixedSizeViewContainer **a5)
{
  *a4 = [objc_alloc(MEMORY[0x1E698E2D8]) initWithFrame:{0.0, 0.0, a1, a2}];
  result = [[AVTFixedSizeViewContainer alloc] initWithFixedSizeView:*a4];
  *a5 = result;
  return result;
}

+ (id)creatorForAVTRecordView
{
  v2 = [&__block_literal_global_7 copy];

  return v2;
}

AVTFixedSizeViewContainer *__49__AVTViewSessionProvider_creatorForAVTRecordView__block_invoke(double a1, double a2, uint64_t a3, void *a4, AVTFixedSizeViewContainer **a5)
{
  *a4 = [objc_alloc(MEMORY[0x1E698E2B0]) initWithFrame:{0.0, 0.0, a1, a2}];
  result = [[AVTFixedSizeViewContainer alloc] initWithFixedSizeView:*a4];
  *a5 = result;
  return result;
}

+ (CGSize)backingSizeForEnvironment:(id)environment
{
  deviceIsPad = [environment deviceIsPad];
  v4 = 380.0;
  if (deviceIsPad)
  {
    v4 = 512.0;
  }

  v5 = 285.0;
  if (deviceIsPad)
  {
    v5 = 384.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (AVTViewSessionProvider)initWithAVTViewBackingSize:(CGSize)size viewCreator:(id)creator environment:(id)environment
{
  height = size.height;
  width = size.width;
  creatorCopy = creator;
  environmentCopy = environment;
  v18.receiver = self;
  v18.super_class = AVTViewSessionProvider;
  v11 = [(AVTViewSessionProvider *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_avtViewBackingSize.width = width;
    v11->_avtViewBackingSize.height = height;
    v13 = [creatorCopy copy];
    viewCreator = v12->_viewCreator;
    v12->_viewCreator = v13;

    objc_storeStrong(&v12->_environment, environment);
    notificationCenter = [environmentCopy notificationCenter];
    notificationCenter = v12->_notificationCenter;
    v12->_notificationCenter = notificationCenter;

    [(NSNotificationCenter *)v12->_notificationCenter addObserver:v12 selector:sel_handleProviderTakesPrimaryStatusNotification_ name:@"AVTViewSessionProviderTakePrimaryStatusNotification" object:0];
    [(NSNotificationCenter *)v12->_notificationCenter addObserver:v12 selector:sel_handleProviderReleasesPrimaryStatusNotification_ name:@"AVTViewSessionProviderReleasePrimaryStatusNotification" object:0];
  }

  return v12;
}

- (void)dealloc
{
  [(NSNotificationCenter *)self->_notificationCenter removeObserver:self];
  v3.receiver = self;
  v3.super_class = AVTViewSessionProvider;
  [(AVTViewSessionProvider *)&v3 dealloc];
}

- (id)sessionWithDidBecomeActiveHandler:(id)handler tearDownHandler:(id)downHandler
{
  downHandlerCopy = downHandler;
  handlerCopy = handler;
  v8 = [AVTViewSession alloc];
  [(AVTViewSessionProvider *)self avtViewBackingSize];
  v9 = [(AVTViewSession *)v8 initWithBecomeActiveHandler:handlerCopy tearDownHandler:downHandlerCopy aspectRatio:?];

  [(AVTViewSession *)v9 setDelegate:self];
  [(AVTViewSessionProvider *)self setPendingSession:v9];
  activeSession = [(AVTViewSessionProvider *)self activeSession];
  LODWORD(downHandlerCopy) = [activeSession isActive];

  activeSession2 = [(AVTViewSessionProvider *)self activeSession];
  v12 = activeSession2;
  if (downHandlerCopy)
  {
    [activeSession2 tearDownWithCompletionHandler:0];
  }

  else
  {

    if (!v12)
    {
      delegate = [(AVTViewSessionProvider *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        delegate2 = [(AVTViewSessionProvider *)self delegate];
        [delegate2 sessionProviderWillStartCameraSession:self];
      }

      [(AVTViewSessionProvider *)self activateNextSession];
    }
  }

  return v9;
}

- (void)activateNextSession
{
  pendingSession = [(AVTViewSessionProvider *)self pendingSession];

  notificationCenter = [(AVTViewSessionProvider *)self notificationCenter];
  v5 = notificationCenter;
  if (pendingSession)
  {
    [notificationCenter postNotificationName:@"AVTViewSessionProviderTakePrimaryStatusNotification" object:self];

    [(AVTViewSessionProvider *)self createContainerAndViewIfNeeded];
    pendingSession2 = [(AVTViewSessionProvider *)self pendingSession];
    [(AVTViewSessionProvider *)self setActiveSession:pendingSession2];

    [(AVTViewSessionProvider *)self setPendingSession:0];
    activeSession = [(AVTViewSessionProvider *)self activeSession];
    avtView = [(AVTViewSessionProvider *)self avtView];
    avtViewContainer = [(AVTViewSessionProvider *)self avtViewContainer];
    avtViewUpdater = [(AVTViewSessionProvider *)self avtViewUpdater];
    [activeSession activateWithAVTView:avtView container:avtViewContainer updater:avtViewUpdater];
  }

  else
  {
    [notificationCenter postNotificationName:@"AVTViewSessionProviderReleasePrimaryStatusNotification" object:self];

    delegate = [(AVTViewSessionProvider *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      return;
    }

    activeSession = [(AVTViewSessionProvider *)self delegate];
    [activeSession sessionProviderDidEndCameraSession:self];
  }
}

- (void)createContainerAndViewIfNeeded
{
  avtViewContainer = [(AVTViewSessionProvider *)self avtViewContainer];

  if (!avtViewContainer)
  {
    viewCreator = [(AVTViewSessionProvider *)self viewCreator];
    [(AVTViewSessionProvider *)self avtViewBackingSize];
    v15 = 0;
    v16 = 0;
    (viewCreator)[2](viewCreator, &v16, &v15);
    v5 = v16;
    v6 = v15;

    [(AVTViewSessionProvider *)self setAvtViewContainer:v6];
    [(AVTViewSessionProvider *)self setAvtView:v5];
    v7 = [AVTViewUpdater alloc];
    avtView = [(AVTViewSessionProvider *)self avtView];
    environment = [(AVTViewSessionProvider *)self environment];
    logger = [environment logger];
    v11 = [(AVTViewUpdater *)v7 initWithAVTView:avtView logger:logger];
    [(AVTViewSessionProvider *)self setAvtViewUpdater:v11];

    v12 = [AVTFaceTrackingManager alloc];
    environment2 = [(AVTViewSessionProvider *)self environment];
    v14 = [(AVTFaceTrackingManager *)v12 initWithAvatarView:v5 environment:environment2];

    [(AVTViewSessionProvider *)self setFaceTrackingManager:v14];
  }
}

- (void)handleProviderTakesPrimaryStatusNotification:(id)notification
{
  object = [notification object];

  if (object != self)
  {
    activeSession = [(AVTViewSessionProvider *)self activeSession];
    [(AVTViewSessionProvider *)self didLosePrimaryStatusWithSessionToPause:activeSession];
  }
}

- (void)didLosePrimaryStatusWithSessionToPause:(id)pause
{
  pauseCopy = pause;
  avtView = [pauseCopy avtView];
  enableFaceTracking = [avtView enableFaceTracking];

  if (enableFaceTracking)
  {
    avtView2 = [pauseCopy avtView];
    [avtView2 setEnableFaceTracking:0];

    [(AVTViewSessionProvider *)self setPausedTrackingSession:pauseCopy];
  }
}

- (void)handleProviderReleasesPrimaryStatusNotification:(id)notification
{
  object = [notification object];

  if (object != self)
  {
    pausedTrackingSession = [(AVTViewSessionProvider *)self pausedTrackingSession];

    if (pausedTrackingSession)
    {

      [(AVTViewSessionProvider *)self recoverPrimaryStatus];
    }
  }
}

- (void)recoverPrimaryStatus
{
  pausedTrackingSession = [(AVTViewSessionProvider *)self pausedTrackingSession];
  avtView = [pausedTrackingSession avtView];
  [avtView setEnableFaceTracking:1];

  [(AVTViewSessionProvider *)self setPausedTrackingSession:0];
}

- (void)sessionDidTearDown:(id)down
{
  downCopy = down;
  pendingSession = [(AVTViewSessionProvider *)self pendingSession];

  if (pendingSession == downCopy)
  {
    [(AVTViewSessionProvider *)self setPendingSession:0];
  }

  else
  {
    activeSession = [(AVTViewSessionProvider *)self activeSession];

    if (activeSession != downCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This method can only be called if the session was known to the provider"];
    }

    [(AVTViewSessionProvider *)self setActiveSession:0];
    [(AVTViewSessionProvider *)self activateNextSession];
  }
}

- (CGSize)avtViewBackingSize
{
  width = self->_avtViewBackingSize.width;
  height = self->_avtViewBackingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (AVTViewSessionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end