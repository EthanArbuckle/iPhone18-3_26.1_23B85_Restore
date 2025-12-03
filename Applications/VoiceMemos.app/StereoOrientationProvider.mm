@interface StereoOrientationProvider
- (id)preferredDataSourceOrientation;
- (int64_t)preferredInputOrientationFor:(id)for;
- (void)deviceOrientationDidUpdate:(id)update;
@end

@implementation StereoOrientationProvider

- (void)deviceOrientationDidUpdate:(id)update
{
  v4 = objc_opt_self();
  selfCopy = self;
  currentDevice = [v4 currentDevice];
  orientation = [currentDevice orientation];

  *(&selfCopy->super.isa + OBJC_IVAR____TtC10VoiceMemos25StereoOrientationProvider_deviceOrientation) = orientation;
}

- (id)preferredDataSourceOrientation
{
  if (*(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos25StereoOrientationProvider_deviceOrientation) == 6)
  {
    v2 = &AVAudioSessionOrientationBack;
  }

  else
  {
    v2 = &AVAudioSessionOrientationFront;
  }

  return *v2;
}

- (int64_t)preferredInputOrientationFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_100176A38(forCopy);

  return v6;
}

@end