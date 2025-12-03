@interface CarPinnedRowViewModel
- (_TtC4Maps21CarPinnedRowViewModel)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation CarPinnedRowViewModel

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel_favoriteItem);
  selfCopy = self;
  v6 = v4;
  v7 = String._bridgeToObjectiveC()();
  [v6 removeObserver:selfCopy forKeyPath:v7];

  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(CarPinnedRowViewModel *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    selfCopy = self;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v8 = 0;
  v10 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v8 == 0x656C746974627573 && v10 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_1003D22A8();
  }

LABEL_12:

  sub_100024F64(v13, &unk_101908380);
}

- (_TtC4Maps21CarPinnedRowViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end