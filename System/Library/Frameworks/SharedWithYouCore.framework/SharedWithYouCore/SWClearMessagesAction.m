@interface SWClearMessagesAction
- (NSString)collaborationIdentifier;
- (_TtC17SharedWithYouCore21SWClearMessagesAction)init;
- (_TtC17SharedWithYouCore21SWClearMessagesAction)initWithCollaborationIdentifier:(id)a3;
@end

@implementation SWClearMessagesAction

- (NSString)collaborationIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC17SharedWithYouCore21SWClearMessagesAction_collaborationIdentifier);
  v3 = *(self + OBJC_IVAR____TtC17SharedWithYouCore21SWClearMessagesAction_collaborationIdentifier + 8);

  v4 = sub_1D2C307A8();

  return v4;
}

- (_TtC17SharedWithYouCore21SWClearMessagesAction)initWithCollaborationIdentifier:(id)a3
{
  v4 = sub_1D2C307C8();
  v5 = (self + OBJC_IVAR____TtC17SharedWithYouCore21SWClearMessagesAction_collaborationIdentifier);
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SWClearMessagesAction();
  return [(SWAction *)&v8 init];
}

- (_TtC17SharedWithYouCore21SWClearMessagesAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end