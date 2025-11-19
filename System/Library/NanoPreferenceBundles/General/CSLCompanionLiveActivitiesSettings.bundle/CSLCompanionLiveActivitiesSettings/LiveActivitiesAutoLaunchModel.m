@interface LiveActivitiesAutoLaunchModel
- (void)dataSourceDidUpdate:(id)a3;
- (void)dealloc;
- (void)twoWaySyncSettingDidUpdate:(id)a3;
@end

@implementation LiveActivitiesAutoLaunchModel

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for LiveActivitiesAutoLaunchModel();
  [(LiveActivitiesAutoLaunchModel *)&v5 dealloc];
}

- (void)dataSourceDidUpdate:(id)a3
{
  v3 = *&stru_108.segname[(swift_isaMask & self->super.isa) + 16];
  v6 = self;
  v4 = v3();
  v5 = [v4 globalSettings];

  sub_F63C(v5);
  swift_unknownObjectRelease();
}

- (void)twoWaySyncSettingDidUpdate:(id)a3
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_12718(&qword_262A0, v4, type metadata accessor for LiveActivitiesAutoLaunchModel);
  v5 = self;
  sub_1628C();
  sub_1629C();
}

@end