@interface SceneDelegate
- (_TtC7PreviewP33_DAFF9A41E5ADE6EBFD072F745B69EC2013SceneDelegate)init;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation SceneDelegate

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = j___Block_copy(handler);
  v8 = qword_100206060;
  itemCopy = item;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = itemCopy;

  sub_100083890(itemCopy);

  v7[2](v7, 1);

  j___Block_release(v7);
}

- (_TtC7PreviewP33_DAFF9A41E5ADE6EBFD072F745B69EC2013SceneDelegate)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  v4 = [(SceneDelegate *)&v6 init];

  return v4;
}

@end