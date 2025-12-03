@interface LiveActivitiesAutoLaunchModel
- (void)dataSourceDidUpdate:(id)update;
- (void)dealloc;
- (void)twoWaySyncSettingDidUpdate:(id)update;
@end

@implementation LiveActivitiesAutoLaunchModel

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for LiveActivitiesAutoLaunchModel();
  [(LiveActivitiesAutoLaunchModel *)&v5 dealloc];
}

- (void)dataSourceDidUpdate:(id)update
{
  v3 = *&stru_108.segname[(swift_isaMask & self->super.isa) + 16];
  selfCopy = self;
  v4 = v3();
  globalSettings = [v4 globalSettings];

  sub_F63C(globalSettings);
  swift_unknownObjectRelease();
}

- (void)twoWaySyncSettingDidUpdate:(id)update
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_12718(&qword_262A0, v4, type metadata accessor for LiveActivitiesAutoLaunchModel);
  selfCopy = self;
  sub_1628C();
  sub_1629C();
}

@end