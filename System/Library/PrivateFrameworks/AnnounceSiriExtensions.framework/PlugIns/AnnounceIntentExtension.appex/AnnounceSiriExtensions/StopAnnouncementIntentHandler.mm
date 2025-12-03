@interface StopAnnouncementIntentHandler
- (_TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler)init;
- (void)handleStopAnnouncement:(id)announcement completion:(id)completion;
@end

@implementation StopAnnouncementIntentHandler

- (void)handleStopAnnouncement:(id)announcement completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  announcementCopy = announcement;
  selfCopy = self;
  sub_100001974(announcementCopy, sub_100002DA0, v7);
}

- (_TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC23AnnounceIntentExtension29StopAnnouncementIntentHandler_localPlaybackSession) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for StopAnnouncementIntentHandler();
  return [(StopAnnouncementIntentHandler *)&v3 init];
}

@end