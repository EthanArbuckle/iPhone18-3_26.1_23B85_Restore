@interface GAXSBMainDisplaySystemGestureManagerOverride
- (void)_gaxDeviceWasUnlocked:(id)unlocked;
- (void)_gaxInitializeOverride;
- (void)dealloc;
@end

@implementation GAXSBMainDisplaySystemGestureManagerOverride

- (void)_gaxDeviceWasUnlocked:(id)unlocked
{
  v4 = +[GAXSpringboard sharedInstance];
  isActive = [v4 isActive];

  if (isActive)
  {

    [(GAXSBMainDisplaySystemGestureManagerOverride *)self setSystemGesturesDisabledForAccessibility:1];
  }
}

- (void)_gaxInitializeOverride
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_gaxDeviceWasLocked:" name:@"GAXDeviceWasLockedOrRelockedNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_gaxDeviceWasUnlocked:" name:@"GAXDeviceWasUnlockedNotification" object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"GAXDeviceWasUnlockedNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"GAXDeviceWasLockedOrRelockedNotification" object:0];

  v5.receiver = self;
  v5.super_class = GAXSBMainDisplaySystemGestureManagerOverride;
  [(GAXSBMainDisplaySystemGestureManagerOverride *)&v5 dealloc];
}

@end