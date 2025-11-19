@interface JournalSpotlightManager
- (_TtC7Journal23JournalSpotlightManager)init;
@end

@implementation JournalSpotlightManager

- (_TtC7Journal23JournalSpotlightManager)init
{
  swift_defaultActor_initialize();
  *self->searchQuery = 0;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  *self->context = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v4.receiver = self;
  v4.super_class = type metadata accessor for JournalSpotlightManager();
  return [(JournalSpotlightManager *)&v4 init];
}

@end