@interface CursorInteractionDelegate
- (_TtC9RemindersP33_CB8DF1A557292041751C28CBB1A9D75525CursorInteractionDelegate)init;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
@end

@implementation CursorInteractionDelegate

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1001C6AB8(interactionCopy);

  return v9;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  selfCopy = self;
  v12 = sub_1001C7054(interactionCopy, requestCopy);

  return v12;
}

- (_TtC9RemindersP33_CB8DF1A557292041751C28CBB1A9D75525CursorInteractionDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CursorInteractionDelegate *)&v3 init];
}

@end