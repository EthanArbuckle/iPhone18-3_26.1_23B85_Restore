@interface AVTViewUpdater
- (AVTViewUpdater)initWithAVTView:(id)view callbackQueue:(id)queue logger:(id)logger;
- (BOOL)willUpdateViewForRecord:(id)record avatar:(id)avatar;
- (void)addAvatarPresentedOnScreenCallbackWithQueue:(id)queue forTimestamp:(double)timestamp;
- (void)setAvatarRecord:(id)record avatar:(id)avatar completionHandler:(id)handler;
- (void)setStickerConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation AVTViewUpdater

- (AVTViewUpdater)initWithAVTView:(id)view callbackQueue:(id)queue logger:(id)logger
{
  viewCopy = view;
  queueCopy = queue;
  loggerCopy = logger;
  v15.receiver = self;
  v15.super_class = AVTViewUpdater;
  v12 = [(AVTViewUpdater *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_logger, logger);
    objc_storeStrong(&v13->_avtView, view);
    objc_storeStrong(&v13->_callbackQueue, queue);
    v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (void)setStickerConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_lock);
  v7 = CACurrentMediaTime();
  self->_lastUpdateTimestamp = v7;
  os_unfair_lock_unlock(&self->_lock);
  avtView = [(AVTViewUpdater *)self avtView];
  [avtView transitionToStickerConfiguration:configurationCopy duration:0 completionHandler:0.0];

  [(AVTViewUpdater *)self addAvatarPresentedOnScreenCallbackWithQueue:handlerCopy forTimestamp:v7];
}

- (void)setAvatarRecord:(id)record avatar:(id)avatar completionHandler:(id)handler
{
  recordCopy = record;
  avatarCopy = avatar;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v10 = CACurrentMediaTime();
  self->_lastUpdateTimestamp = v10;
  os_unfair_lock_unlock(&self->_lock);
  v11 = [(AVTViewUpdater *)self willUpdateViewForRecord:recordCopy avatar:avatarCopy];
  [(AVTViewUpdater *)self setAvatarRecord:recordCopy];
  if (v11)
  {
    v12 = avatarCopy;
    if (!v12)
    {
      v12 = [MEMORY[0x1E698E328] avatarForRecord:recordCopy];
    }

    [(AVTViewUpdater *)self setCurrentAvatar:v12];
    logger = [(AVTViewUpdater *)self logger];
    v14 = [v12 description];
    [logger logAVTViewSetAvatar:v14];

    avtView = [(AVTViewUpdater *)self avtView];
    avatar = [avtView avatar];
    pose = [avatar pose];

    avtView2 = [(AVTViewUpdater *)self avtView];
    LOBYTE(avatar) = [avtView2 enableFaceTracking];

    if ((avatar & 1) == 0 && !pose)
    {
      pose = [MEMORY[0x1E698E288] friendlyPose];
    }

    avtView3 = [(AVTViewUpdater *)self avtView];
    [avtView3 setAvatar:v12];

    avtView4 = [(AVTViewUpdater *)self avtView];
    enableFaceTracking = [avtView4 enableFaceTracking];

    if ((enableFaceTracking & 1) == 0)
    {
      avtView5 = [(AVTViewUpdater *)self avtView];
      [avtView5 transitionToPose:pose duration:0 completionHandler:0.0];
    }
  }

  [(AVTViewUpdater *)self addAvatarPresentedOnScreenCallbackWithQueue:handlerCopy forTimestamp:v10];
}

- (BOOL)willUpdateViewForRecord:(id)record avatar:(id)avatar
{
  recordCopy = record;
  avatarCopy = avatar;
  avatarRecord = [(AVTViewUpdater *)self avatarRecord];
  if (recordCopy | avatarRecord)
  {
    avatarRecord2 = [(AVTViewUpdater *)self avatarRecord];
    v10 = [avatarRecord2 isEqual:recordCopy];
    LOBYTE(v11) = v10 ^ 1;
    if (!avatarCopy || (v10 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!avatarCopy)
  {
    LOBYTE(v11) = 0;
    goto LABEL_9;
  }

  currentAvatar = [(AVTViewUpdater *)self currentAvatar];
  currentAvatar2 = [(AVTViewUpdater *)self currentAvatar];
  v11 = [currentAvatar2 isEqual:avatarCopy] ^ 1;

  if (recordCopy | avatarRecord)
  {
LABEL_7:
  }

LABEL_9:

  return v11;
}

- (void)addAvatarPresentedOnScreenCallbackWithQueue:(id)queue forTimestamp:(double)timestamp
{
  queueCopy = queue;
  if (queueCopy)
  {
    objc_initWeak(&location, self);
    avtView = [(AVTViewUpdater *)self avtView];
    callbackQueue = [(AVTViewUpdater *)self callbackQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__AVTViewUpdater_addAvatarPresentedOnScreenCallbackWithQueue_forTimestamp___block_invoke;
    v9[3] = &unk_1E7F3AD38;
    objc_copyWeak(v11, &location);
    v11[1] = *&timestamp;
    v10 = queueCopy;
    [avtView addAvatarPresentedOnScreenCallbackWithQueue:callbackQueue block:v9];

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

void __75__AVTViewUpdater_addAvatarPresentedOnScreenCallbackWithQueue_forTimestamp___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 2);
    os_unfair_lock_unlock(v3 + 2);
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

@end