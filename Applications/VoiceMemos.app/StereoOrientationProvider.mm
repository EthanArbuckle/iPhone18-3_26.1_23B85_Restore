@interface StereoOrientationProvider
- (id)preferredDataSourceOrientation;
- (int64_t)preferredInputOrientationFor:(id)a3;
- (void)deviceOrientationDidUpdate:(id)a3;
@end

@implementation StereoOrientationProvider

- (void)deviceOrientationDidUpdate:(id)a3
{
  v4 = objc_opt_self();
  v7 = self;
  v5 = [v4 currentDevice];
  v6 = [v5 orientation];

  *(&v7->super.isa + OBJC_IVAR____TtC10VoiceMemos25StereoOrientationProvider_deviceOrientation) = v6;
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

- (int64_t)preferredInputOrientationFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100176A38(v4);

  return v6;
}

@end