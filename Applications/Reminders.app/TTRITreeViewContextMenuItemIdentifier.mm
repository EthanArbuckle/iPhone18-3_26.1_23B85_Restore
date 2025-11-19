@interface TTRITreeViewContextMenuItemIdentifier
- (BOOL)isEqual:(id)a3;
- (_TtC9Reminders37TTRITreeViewContextMenuItemIdentifier)init;
- (int64_t)hash;
@end

@implementation TTRITreeViewContextMenuItemIdentifier

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_10056C570(v8);

  sub_10000B070(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = AnyHashable.hashValue.getter();

  return v3;
}

- (_TtC9Reminders37TTRITreeViewContextMenuItemIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end