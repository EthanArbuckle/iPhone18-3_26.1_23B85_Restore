@interface PHContactsReportAndBlockTableViewModel
- (BOOL)shouldShowBlockAll;
- (BOOL)shouldShowBlockUnknown;
- (BOOL)shouldShowReportInitiator;
- (CHRecentCall)recentCall;
- (PHContactsReportAndBlockTableViewModel)init;
- (PHContactsReportAndBlockTableViewModel)initWithShouldShowBlockAll:(BOOL)a3 shouldShowReportInitiator:(BOOL)a4 shouldShowBlockUnknown:(BOOL)a5 recentCall:(id)a6 reportSpammer:(id)a7;
- (_TtP11MobilePhone18ReportSpamManaging_)reportSpammer;
- (int64_t)numberOfSections;
- (void)blockContacts:(id)a3 safetyCheckPresenter:(id)a4;
- (void)fetchSharing;
- (void)reportWithRecentCall:(id)a3;
- (void)setRecentCall:(id)a3;
- (void)setReportSpammer:(id)a3;
- (void)setShouldShowBlockAll:(BOOL)a3;
- (void)setShouldShowBlockUnknown:(BOOL)a3;
- (void)setShouldShowReportInitiator:(BOOL)a3;
@end

@implementation PHContactsReportAndBlockTableViewModel

- (BOOL)shouldShowBlockAll
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldShowBlockAll:(BOOL)a3
{
  v5 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)shouldShowReportInitiator
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldShowReportInitiator:(BOOL)a3
{
  v5 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)shouldShowBlockUnknown
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldShowBlockUnknown:(BOOL)a3
{
  v5 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (CHRecentCall)recentCall
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRecentCall:(id)a3
{
  v5 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtP11MobilePhone18ReportSpamManaging_)reportSpammer
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setReportSpammer:(id)a3
{
  v5 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
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
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll;
  swift_beginAccess();
  if (*(&self->super.isa + v3))
  {
    return 2;
  }

  v4 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown;
  swift_beginAccess();
  if (*(&self->super.isa + v4) == 1)
  {
    return 2;
  }

  v6 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator;
  swift_beginAccess();
  if (*(&self->super.isa + v6))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)blockContacts:(id)a3 safetyCheckPresenter:(id)a4
{
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  specialized ContactsReportAndBlockTableViewModel.block(contacts:safetyCheckPresenter:)(v6, v7);
}

- (void)reportWithRecentCall:(id)a3
{
  v4 = a3;
  v5 = self;
  ContactsReportAndBlockTableViewModel.report(recentCall:)(v4);
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