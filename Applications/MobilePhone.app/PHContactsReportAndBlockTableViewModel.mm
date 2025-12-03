@interface PHContactsReportAndBlockTableViewModel
- (BOOL)shouldShowBlockAll;
- (BOOL)shouldShowBlockUnknown;
- (BOOL)shouldShowReportInitiator;
- (CHRecentCall)recentCall;
- (PHContactsReportAndBlockTableViewModel)init;
- (PHContactsReportAndBlockTableViewModel)initWithShouldShowBlockAll:(BOOL)all shouldShowReportInitiator:(BOOL)initiator shouldShowBlockUnknown:(BOOL)unknown recentCall:(id)call reportSpammer:(id)spammer;
- (_TtP11MobilePhone18ReportSpamManaging_)reportSpammer;
- (int64_t)numberOfSections;
- (void)blockContacts:(id)contacts safetyCheckPresenter:(id)presenter;
- (void)fetchSharing;
- (void)reportWithRecentCall:(id)call;
- (void)setRecentCall:(id)call;
- (void)setReportSpammer:(id)spammer;
- (void)setShouldShowBlockAll:(BOOL)all;
- (void)setShouldShowBlockUnknown:(BOOL)unknown;
- (void)setShouldShowReportInitiator:(BOOL)initiator;
@end

@implementation PHContactsReportAndBlockTableViewModel

- (BOOL)shouldShowBlockAll
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldShowBlockAll:(BOOL)all
{
  v5 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll;
  swift_beginAccess();
  *(&self->super.isa + v5) = all;
}

- (BOOL)shouldShowReportInitiator
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldShowReportInitiator:(BOOL)initiator
{
  v5 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator;
  swift_beginAccess();
  *(&self->super.isa + v5) = initiator;
}

- (BOOL)shouldShowBlockUnknown
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldShowBlockUnknown:(BOOL)unknown
{
  v5 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown;
  swift_beginAccess();
  *(&self->super.isa + v5) = unknown;
}

- (CHRecentCall)recentCall
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRecentCall:(id)call
{
  v5 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = call;
  callCopy = call;
}

- (_TtP11MobilePhone18ReportSpamManaging_)reportSpammer
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setReportSpammer:(id)spammer
{
  v5 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer;
  swift_beginAccess();
  *(&self->super.isa + v5) = spammer;
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

- (void)blockContacts:(id)contacts safetyCheckPresenter:(id)presenter
{
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  presenterCopy = presenter;
  selfCopy = self;
  specialized ContactsReportAndBlockTableViewModel.block(contacts:safetyCheckPresenter:)(v6, presenterCopy);
}

- (void)reportWithRecentCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  ContactsReportAndBlockTableViewModel.report(recentCall:)(callCopy);
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