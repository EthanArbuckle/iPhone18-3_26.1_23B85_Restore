@interface AVTViewSessionProvider
+ (CGSize)backingSizeForEnvironment:(id)a3;
+ (id)creatorForAVTRecordView;
+ (id)creatorForAVTView;
- (AVTViewSessionProvider)initWithAVTViewBackingSize:(CGSize)a3 viewCreator:(id)a4 environment:(id)a5;
- (AVTViewSessionProviderDelegate)delegate;
- (CGSize)avtViewBackingSize;
- (id)sessionWithDidBecomeActiveHandler:(id)a3 tearDownHandler:(id)a4;
- (void)activateNextSession;
- (void)createContainerAndViewIfNeeded;
- (void)dealloc;
- (void)didLosePrimaryStatusWithSessionToPause:(id)a3;
- (void)handleProviderReleasesPrimaryStatusNotification:(id)a3;
- (void)handleProviderTakesPrimaryStatusNotification:(id)a3;
- (void)recoverPrimaryStatus;
- (void)sessionDidTearDown:(id)a3;
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

+ (CGSize)backingSizeForEnvironment:(id)a3
{
  v3 = [a3 deviceIsPad];
  v4 = 380.0;
  if (v3)
  {
    v4 = 512.0;
  }

  v5 = 285.0;
  if (v3)
  {
    v5 = 384.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (AVTViewSessionProvider)initWithAVTViewBackingSize:(CGSize)a3 viewCreator:(id)a4 environment:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = AVTViewSessionProvider;
  v11 = [(AVTViewSessionProvider *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_avtViewBackingSize.width = width;
    v11->_avtViewBackingSize.height = height;
    v13 = [v9 copy];
    viewCreator = v12->_viewCreator;
    v12->_viewCreator = v13;

    objc_storeStrong(&v12->_environment, a5);
    v15 = [v10 notificationCenter];
    notificationCenter = v12->_notificationCenter;
    v12->_notificationCenter = v15;

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

- (id)sessionWithDidBecomeActiveHandler:(id)a3 tearDownHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [AVTViewSession alloc];
  [(AVTViewSessionProvider *)self avtViewBackingSize];
  v9 = [(AVTViewSession *)v8 initWithBecomeActiveHandler:v7 tearDownHandler:v6 aspectRatio:?];

  [(AVTViewSession *)v9 setDelegate:self];
  [(AVTViewSessionProvider *)self setPendingSession:v9];
  v10 = [(AVTViewSessionProvider *)self activeSession];
  LODWORD(v6) = [v10 isActive];

  v11 = [(AVTViewSessionProvider *)self activeSession];
  v12 = v11;
  if (v6)
  {
    [v11 tearDownWithCompletionHandler:0];
  }

  else
  {

    if (!v12)
    {
      v13 = [(AVTViewSessionProvider *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = [(AVTViewSessionProvider *)self delegate];
        [v15 sessionProviderWillStartCameraSession:self];
      }

      [(AVTViewSessionProvider *)self activateNextSession];
    }
  }

  return v9;
}

- (void)activateNextSession
{
  v3 = [(AVTViewSessionProvider *)self pendingSession];

  v4 = [(AVTViewSessionProvider *)self notificationCenter];
  v5 = v4;
  if (v3)
  {
    [v4 postNotificationName:@"AVTViewSessionProviderTakePrimaryStatusNotification" object:self];

    [(AVTViewSessionProvider *)self createContainerAndViewIfNeeded];
    v6 = [(AVTViewSessionProvider *)self pendingSession];
    [(AVTViewSessionProvider *)self setActiveSession:v6];

    [(AVTViewSessionProvider *)self setPendingSession:0];
    v12 = [(AVTViewSessionProvider *)self activeSession];
    v7 = [(AVTViewSessionProvider *)self avtView];
    v8 = [(AVTViewSessionProvider *)self avtViewContainer];
    v9 = [(AVTViewSessionProvider *)self avtViewUpdater];
    [v12 activateWithAVTView:v7 container:v8 updater:v9];
  }

  else
  {
    [v4 postNotificationName:@"AVTViewSessionProviderReleasePrimaryStatusNotification" object:self];

    v10 = [(AVTViewSessionProvider *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      return;
    }

    v12 = [(AVTViewSessionProvider *)self delegate];
    [v12 sessionProviderDidEndCameraSession:self];
  }
}

- (void)createContainerAndViewIfNeeded
{
  v3 = [(AVTViewSessionProvider *)self avtViewContainer];

  if (!v3)
  {
    v4 = [(AVTViewSessionProvider *)self viewCreator];
    [(AVTViewSessionProvider *)self avtViewBackingSize];
    v15 = 0;
    v16 = 0;
    (v4)[2](v4, &v16, &v15);
    v5 = v16;
    v6 = v15;

    [(AVTViewSessionProvider *)self setAvtViewContainer:v6];
    [(AVTViewSessionProvider *)self setAvtView:v5];
    v7 = [AVTViewUpdater alloc];
    v8 = [(AVTViewSessionProvider *)self avtView];
    v9 = [(AVTViewSessionProvider *)self environment];
    v10 = [v9 logger];
    v11 = [(AVTViewUpdater *)v7 initWithAVTView:v8 logger:v10];
    [(AVTViewSessionProvider *)self setAvtViewUpdater:v11];

    v12 = [AVTFaceTrackingManager alloc];
    v13 = [(AVTViewSessionProvider *)self environment];
    v14 = [(AVTFaceTrackingManager *)v12 initWithAvatarView:v5 environment:v13];

    [(AVTViewSessionProvider *)self setFaceTrackingManager:v14];
  }
}

- (void)handleProviderTakesPrimaryStatusNotification:(id)a3
{
  v4 = [a3 object];

  if (v4 != self)
  {
    v5 = [(AVTViewSessionProvider *)self activeSession];
    [(AVTViewSessionProvider *)self didLosePrimaryStatusWithSessionToPause:v5];
  }
}

- (void)didLosePrimaryStatusWithSessionToPause:(id)a3
{
  v7 = a3;
  v4 = [v7 avtView];
  v5 = [v4 enableFaceTracking];

  if (v5)
  {
    v6 = [v7 avtView];
    [v6 setEnableFaceTracking:0];

    [(AVTViewSessionProvider *)self setPausedTrackingSession:v7];
  }
}

- (void)handleProviderReleasesPrimaryStatusNotification:(id)a3
{
  v4 = [a3 object];

  if (v4 != self)
  {
    v5 = [(AVTViewSessionProvider *)self pausedTrackingSession];

    if (v5)
    {

      [(AVTViewSessionProvider *)self recoverPrimaryStatus];
    }
  }
}

- (void)recoverPrimaryStatus
{
  v3 = [(AVTViewSessionProvider *)self pausedTrackingSession];
  v4 = [v3 avtView];
  [v4 setEnableFaceTracking:1];

  [(AVTViewSessionProvider *)self setPausedTrackingSession:0];
}

- (void)sessionDidTearDown:(id)a3
{
  v6 = a3;
  v4 = [(AVTViewSessionProvider *)self pendingSession];

  if (v4 == v6)
  {
    [(AVTViewSessionProvider *)self setPendingSession:0];
  }

  else
  {
    v5 = [(AVTViewSessionProvider *)self activeSession];

    if (v5 != v6)
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