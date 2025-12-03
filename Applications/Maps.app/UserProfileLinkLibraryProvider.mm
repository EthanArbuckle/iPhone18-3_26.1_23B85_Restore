@interface UserProfileLinkLibraryProvider
+ (_TtC4Maps30UserProfileLinkLibraryProvider)sharedInstance;
- (_TtC4Maps30UserProfileLinkLibraryProvider)init;
- (id)createUserProfileLink;
- (id)retrieveSubtitleText;
- (void)libraryItemsCountManager:(id)manager didUpdateCounts:(id)counts;
- (void)notifyObservers;
@end

@implementation UserProfileLinkLibraryProvider

+ (_TtC4Maps30UserProfileLinkLibraryProvider)sharedInstance
{
  if (qword_1019068A0 != -1)
  {
    swift_once();
  }

  v3 = static UserProfileLinkLibraryProvider.shared;

  return v3;
}

- (id)createUserProfileLink
{
  selfCopy = self;
  UserProfileLinkLibraryProvider.createUserProfileLink()(v3);
  v5 = v4;

  return v5;
}

- (void)notifyObservers
{
  selfCopy = self;
  sub_10047DE88();
}

- (id)retrieveSubtitleText
{
  if ((*(&self->observers + OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_lastTotalCount) & 1) == 0)
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_lastTotalCount);
    sub_1000CE6B8(&unk_10190D5C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1011E1D30;
    *(v4 + 56) = &type metadata for Int;
    *(v4 + 64) = &protocol witness table for Int;
    *(v4 + 32) = v3;
    selfCopy = self;
    static String.localizedStringWithFormat(_:_:)();
  }

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (_TtC4Maps30UserProfileLinkLibraryProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)libraryItemsCountManager:(id)manager didUpdateCounts:(id)counts
{
  managerCopy = manager;
  countsCopy = counts;
  selfCopy = self;
  _s4Maps30UserProfileLinkLibraryProviderC24libraryItemsCountManager_15didUpdateCountsyAA0ehiJ0C_AA0ehI0CtF_0();
}

@end