@interface PHContactsReportAndBlockTableViewModel
- (PHContactsReportAndBlockTableViewModel)init;
- (PHContactsReportAndBlockTableViewModel)initWithShouldShowBlockAll:(BOOL)all shouldShowReportInitiator:(BOOL)initiator shouldShowBlockUnknown:(BOOL)unknown recentCall:(id)call reportSpammer:(id)spammer;
- (_TtP8FaceTime18ReportSpamManaging_)reportSpammer;
- (int64_t)numberOfSections;
- (void)blockContacts:(id)contacts safetyCheckPresenter:(id)presenter;
- (void)fetchSharing;
- (void)reportWithRecentCall:(id)call;
- (void)setRecentCall:(id)call;
- (void)setReportSpammer:(id)spammer;
@end

@implementation PHContactsReportAndBlockTableViewModel

- (void)setRecentCall:(id)call
{
  v4 = *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall);
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall) = call;
  callCopy = call;
}

- (_TtP8FaceTime18ReportSpamManaging_)reportSpammer
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setReportSpammer:(id)spammer
{
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer) = spammer;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (PHContactsReportAndBlockTableViewModel)initWithShouldShowBlockAll:(BOOL)all shouldShowReportInitiator:(BOOL)initiator shouldShowBlockUnknown:(BOOL)unknown recentCall:(id)call reportSpammer:(id)spammer
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll) = all;
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator) = initiator;
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown) = unknown;
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall) = call;
  *(&self->super.isa + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer) = spammer;
  v16.receiver = self;
  v16.super_class = ObjectType;
  callCopy = call;
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

- (void)blockContacts:(id)contacts safetyCheckPresenter:(id)presenter
{
  sub_100008BA0(0, &qword_1001243E0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  presenterCopy = presenter;
  selfCopy = self;
  sub_10005E0C0(v6, presenterCopy);
}

- (void)reportWithRecentCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_10005CD54(callCopy);
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