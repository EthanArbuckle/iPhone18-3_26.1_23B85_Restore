@interface AVPlayerVolumeController
+ (id)volumeController;
- (AVPlayerVolumeController)init;
- (BOOL)currentRouteHasVolumeControl;
- (float)volume;
- (void)dealloc;
- (void)setTargetVolume:(float)a3;
@end

@implementation AVPlayerVolumeController

- (BOOL)currentRouteHasVolumeControl
{
  v2 = [(AVPlayerVolumeController *)self playerController];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)setTargetVolume:(float)a3
{
  v4 = [(AVPlayerVolumeController *)self playerController];
  [v4 setVolume:{fmin(fmax(a3, 0.0), 1.0)}];
}

- (float)volume
{
  v2 = [(AVPlayerVolumeController *)self playerController];
  [v2 volume];
  v4 = v3;

  return v4;
}

- (void)dealloc
{
  [(AVObservationController *)self->_keyValueObservationController stopAllObservation];
  v3.receiver = self;
  v3.super_class = AVPlayerVolumeController;
  [(AVPlayerVolumeController *)&v3 dealloc];
}

- (AVPlayerVolumeController)init
{
  v7.receiver = self;
  v7.super_class = AVPlayerVolumeController;
  v2 = [(AVPlayerVolumeController *)&v7 init];
  if (v2)
  {
    v3 = [[AVObservationController alloc] initWithOwner:v2];
    keyValueObservationController = v2->_keyValueObservationController;
    v2->_keyValueObservationController = v3;

    v5 = [(AVObservationController *)v2->_keyValueObservationController startObserving:v2 keyPath:@"playerController.volume" includeInitialValue:0 observationHandler:&__block_literal_global_17356];
  }

  return v2;
}

void __32__AVPlayerVolumeController_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD88];
  v3 = a2;
  v4 = [v2 defaultCenter];
  [v4 postNotificationName:@"AVVolumeControllerVolumeChangedNotification" object:v3];
}

+ (id)volumeController
{
  v2 = objc_alloc_init(a1);

  return v2;
}

@end