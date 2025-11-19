@interface AVTViewUpdater
- (AVTViewUpdater)initWithAVTView:(id)a3 callbackQueue:(id)a4 logger:(id)a5;
- (BOOL)willUpdateViewForRecord:(id)a3 avatar:(id)a4;
- (void)addAvatarPresentedOnScreenCallbackWithQueue:(id)a3 forTimestamp:(double)a4;
- (void)setAvatarRecord:(id)a3 avatar:(id)a4 completionHandler:(id)a5;
- (void)setStickerConfiguration:(id)a3 completionHandler:(id)a4;
@end

@implementation AVTViewUpdater

- (AVTViewUpdater)initWithAVTView:(id)a3 callbackQueue:(id)a4 logger:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AVTViewUpdater;
  v12 = [(AVTViewUpdater *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_logger, a5);
    objc_storeStrong(&v13->_avtView, a3);
    objc_storeStrong(&v13->_callbackQueue, a4);
    v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (void)setStickerConfiguration:(id)a3 completionHandler:(id)a4
{
  v9 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = CACurrentMediaTime();
  self->_lastUpdateTimestamp = v7;
  os_unfair_lock_unlock(&self->_lock);
  v8 = [(AVTViewUpdater *)self avtView];
  [v8 transitionToStickerConfiguration:v6 duration:0 completionHandler:0.0];

  [(AVTViewUpdater *)self addAvatarPresentedOnScreenCallbackWithQueue:v9 forTimestamp:v7];
}

- (void)setAvatarRecord:(id)a3 avatar:(id)a4 completionHandler:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  v10 = CACurrentMediaTime();
  self->_lastUpdateTimestamp = v10;
  os_unfair_lock_unlock(&self->_lock);
  v11 = [(AVTViewUpdater *)self willUpdateViewForRecord:v23 avatar:v8];
  [(AVTViewUpdater *)self setAvatarRecord:v23];
  if (v11)
  {
    v12 = v8;
    if (!v12)
    {
      v12 = [MEMORY[0x1E698E328] avatarForRecord:v23];
    }

    [(AVTViewUpdater *)self setCurrentAvatar:v12];
    v13 = [(AVTViewUpdater *)self logger];
    v14 = [v12 description];
    [v13 logAVTViewSetAvatar:v14];

    v15 = [(AVTViewUpdater *)self avtView];
    v16 = [v15 avatar];
    v17 = [v16 pose];

    v18 = [(AVTViewUpdater *)self avtView];
    LOBYTE(v16) = [v18 enableFaceTracking];

    if ((v16 & 1) == 0 && !v17)
    {
      v17 = [MEMORY[0x1E698E288] friendlyPose];
    }

    v19 = [(AVTViewUpdater *)self avtView];
    [v19 setAvatar:v12];

    v20 = [(AVTViewUpdater *)self avtView];
    v21 = [v20 enableFaceTracking];

    if ((v21 & 1) == 0)
    {
      v22 = [(AVTViewUpdater *)self avtView];
      [v22 transitionToPose:v17 duration:0 completionHandler:0.0];
    }
  }

  [(AVTViewUpdater *)self addAvatarPresentedOnScreenCallbackWithQueue:v9 forTimestamp:v10];
}

- (BOOL)willUpdateViewForRecord:(id)a3 avatar:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(AVTViewUpdater *)self avatarRecord];
  if (v7 | v9)
  {
    v4 = [(AVTViewUpdater *)self avatarRecord];
    v10 = [v4 isEqual:v7];
    LOBYTE(v11) = v10 ^ 1;
    if (!v8 || (v10 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v8)
  {
    LOBYTE(v11) = 0;
    goto LABEL_9;
  }

  v12 = [(AVTViewUpdater *)self currentAvatar];
  v13 = [(AVTViewUpdater *)self currentAvatar];
  v11 = [v13 isEqual:v8] ^ 1;

  if (v7 | v9)
  {
LABEL_7:
  }

LABEL_9:

  return v11;
}

- (void)addAvatarPresentedOnScreenCallbackWithQueue:(id)a3 forTimestamp:(double)a4
{
  v6 = a3;
  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [(AVTViewUpdater *)self avtView];
    v8 = [(AVTViewUpdater *)self callbackQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__AVTViewUpdater_addAvatarPresentedOnScreenCallbackWithQueue_forTimestamp___block_invoke;
    v9[3] = &unk_1E7F3AD38;
    objc_copyWeak(v11, &location);
    v11[1] = *&a4;
    v10 = v6;
    [v7 addAvatarPresentedOnScreenCallbackWithQueue:v8 block:v9];

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