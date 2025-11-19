@interface StopAnnouncementIntentHandler
- (_TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler)init;
- (void)handleStopAnnouncement:(id)a3 completion:(id)a4;
@end

@implementation StopAnnouncementIntentHandler

- (void)handleStopAnnouncement:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100001974(v8, sub_100002DA0, v7);
}

- (_TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler_localPlaybackSession) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for StopAnnouncementIntentHandler();
  return [(StopAnnouncementIntentHandler *)&v3 init];
}

@end