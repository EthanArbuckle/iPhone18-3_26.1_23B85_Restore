@interface JSObject
- (BOOL)isEqual:(id)a3;
- (_TtC11MusicJSCore8JSObject)init;
- (int64_t)hash;
- (void)dealloc;
@end

@implementation JSObject

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly) == 1)
  {
    v3 = self;
  }

  else
  {
    v4 = qword_1011BDB08;
    v5 = self;
    if (v4 != -1)
    {
      v11 = v5;
      swift_once();
      v5 = v11;
    }

    v6 = static JSBridge.shared;
    v8 = *(&v5->super.isa + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v7 = *&v5->nativeBridgeIdentifier[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
    sub_100027010();
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v8;
    v9[4] = v7;

    v10 = v6;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D357A8, v9);
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for JSObject();
  [(JSObject *)&v12 dealloc];
}

- (int64_t)hash
{
  v2 = self;
  v3 = String.hashValue.getter();

  return v3;
}

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

  v6 = JSObject.isEqual(_:)(v8);

  sub_100011DF0(v8);
  return v6 & 1;
}

- (_TtC11MusicJSCore8JSObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end