@interface ReadAnnouncementsIntentPerformer
- (_TtC8Announce32ReadAnnouncementsIntentPerformer)init;
@end

@implementation ReadAnnouncementsIntentPerformer

- (_TtC8Announce32ReadAnnouncementsIntentPerformer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_playbackOptions) = 0;
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_endpointIdentifier);
  AnnouncementsIntentPerformer = type metadata accessor for ReadAnnouncementsIntentPerformer();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = AnnouncementsIntentPerformer;
  return [(IntentPerformer *)&v6 init];
}

@end