@interface PHContactsReportAndBlockTableViewModel
- (PHContactsReportAndBlockTableViewModel)init;
- (PHContactsReportAndBlockTableViewModel)initWithShouldShowBlockAll:(BOOL)a3 shouldShowReportInitiator:(BOOL)a4 shouldShowBlockUnknown:(BOOL)a5 recentCall:(id)a6 reportSpammer:(id)a7;
- (_TtP8FaceTime18ReportSpamManaging_)reportSpammer;
- (int64_t)numberOfSections;
- (void)blockContacts:(id)a3 safetyCheckPresenter:(id)a4;
- (void)fetchSharing;
- (void)reportWithRecentCall:(id)a3;
- (void)setRecentCall:(id)a3;
- (void)setReportSpammer:(id)a3;
@end

@implementation PHContactsReportAndBlockTableViewModel

- (void)setRecentCall:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall);
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall) = a3;
  v3 = a3;
}

- (_TtP8FaceTime18ReportSpamManaging_)reportSpammer
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setReportSpammer:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (PHContactsReportAndBlockTableViewModel)initWithShouldShowBlockAll:(BOOL)a3 shouldShowReportInitiator:(BOOL)a4 shouldShowBlockUnknown:(BOOL)a5 recentCall:(id)a6 reportSpammer:(id)a7
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll) = a3;
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator) = a4;
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown) = a5;
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall) = a6;
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer) = a7;
  v16.receiver = self;
  v16.super_class = ObjectType;
  v14 = a6;
  swift_unknownObjectRetain();
  return [(PHContactsReportAndBlockTableViewModel *)&v16 init];
}

- (int64_t)numberOfSections
{
  if ((*(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll) & 1) != 0 || *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown) == 1)
  {
    return 2;
  }

  if (*(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator))
  {
    return 2;
  }

  return 1;
}

- (void)blockContacts:(id)a3 safetyCheckPresenter:(id)a4
{
  sub_100008BA0(0, &qword_1001243E0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_10005E0C0(v6, v7);
}

- (void)reportWithRecentCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10005CD54(v4);
}

- (void)fetchSharing
{
  type metadata accessor for SafetyCheckManager();
  v2 = static SafetyCheckManager.shared.getter();
  SafetyCheckManager.fetchSharing()();
}

- (PHContactsReportAndBlockTableViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end