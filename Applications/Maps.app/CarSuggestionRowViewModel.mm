@interface CarSuggestionRowViewModel
- (_TtC4Maps25CarSuggestionRowViewModel)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation CarSuggestionRowViewModel

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel_suggestion);
  v5 = self;
  v6 = v4;
  v7 = String._bridgeToObjectiveC()();
  [v6 removeObserver:v5 forKeyPath:v7];

  v8.receiver = v5;
  v8.super_class = ObjectType;
  [(CarSuggestionRowViewModel *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v12 = self;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v11 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v8 == 0x656C746974627573 && v10 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100174598();
  }

LABEL_12:

  sub_100024F64(v13, &unk_101908380);
}

- (_TtC4Maps25CarSuggestionRowViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end