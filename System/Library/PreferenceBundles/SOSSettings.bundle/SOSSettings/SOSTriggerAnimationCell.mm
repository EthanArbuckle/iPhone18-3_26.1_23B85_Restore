@interface SOSTriggerAnimationCell
- (SOSTriggerAnimationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)dealloc;
- (void)loadTriggerImageViewWithCompletion:(id)completion;
- (void)updateAssets;
@end

@implementation SOSTriggerAnimationCell

- (SOSTriggerAnimationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = SOSTriggerAnimationCell;
  v5 = [(SOSSettingsAssetCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(SOSTriggerAnimationCell *)v5 loadTriggerImageViewWithCompletion:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_263C, @"SOSTriggerMechanismChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = SOSTriggerAnimationCell;
  [(SOSTriggerAnimationCell *)&v4 dealloc];
}

- (void)loadTriggerImageViewWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2730;
  v4[3] = &unk_20DE0;
  v4[4] = self;
  completionCopy = completion;
  v3 = completionCopy;
  [SOSUtilities getAssetViewForPhoneWithCompletion:v4];
}

- (void)updateAssets
{
  if ((+[SOSUtilities canTriggerSOSWithVolumeLockHold]& 1) == 0)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_2894;
    v4[3] = &unk_20E08;
    v4[4] = self;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_28AC;
    v3[3] = &unk_20E58;
    v3[4] = self;
    [UIView animateWithDuration:v4 animations:v3 completion:0.25];
  }
}

@end