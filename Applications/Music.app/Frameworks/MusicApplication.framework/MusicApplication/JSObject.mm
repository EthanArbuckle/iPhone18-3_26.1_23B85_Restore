@interface JSObject
- (BOOL)isEqual:(id)equal;
- (_TtC11MusicJSCore8JSObject)init;
- (int64_t)hash;
- (void)dealloc;
@end

@implementation JSObject

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly) == 1)
  {
    selfCopy = self;
  }

  else
  {
    v4 = qword_E23F48;
    selfCopy2 = self;
    if (v4 != -1)
    {
      v11 = selfCopy2;
      swift_once();
      selfCopy2 = v11;
    }

    v6 = static JSBridge.shared;
    v8 = *(&selfCopy2->super.isa + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v7 = *&selfCopy2->nativeBridgeIdentifier[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
    sub_60044();
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v8;
    v9[4] = v7;

    v10 = v6;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F0B7C, v9);
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for JSObject();
  [(JSObject *)&v12 dealloc];
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_AB9540();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = JSObject.isEqual(_:)(v8);

  sub_9BC10(v8);
  return v6 & 1;
}

- (_TtC11MusicJSCore8JSObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end