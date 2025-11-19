@interface CursorInteractionDelegate
- (_TtC9RemindersP33_CB8DF1A557292041751C28CBB1A9D75525CursorInteractionDelegate)init;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
@end

@implementation CursorInteractionDelegate

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1001C6AB8(v6);

  return v9;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1001C7054(v8, v9);

  return v12;
}

- (_TtC9RemindersP33_CB8DF1A557292041751C28CBB1A9D75525CursorInteractionDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CursorInteractionDelegate *)&v3 init];
}

@end