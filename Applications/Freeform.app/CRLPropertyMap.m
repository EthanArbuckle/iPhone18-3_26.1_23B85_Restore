@interface CRLPropertyMap
- (BOOL)containsProperty:(unint64_t)a3;
- (BOOL)isEmpty;
- (_TtC8Freeform14CRLPropertyMap)init;
- (int64_t)count;
- (void)enumeratePropertiesUsingBlock:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(unint64_t)a4;
- (void)setProperty:(unint64_t)a3 value:(id)a4;
@end

@implementation CRLPropertyMap

- (void)setProperty:(unint64_t)a3 value:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = self;
  }

  sub_100601584(v9, v8);
  swift_beginAccess();
  sub_100BC1F00(v8, a3);
  swift_endAccess();

  sub_10000CAAC(v9, &unk_1019F4D00);
}

- (BOOL)containsProperty:(unint64_t)a3
{
  v3 = self;
  v4 = sub_100BE4E9C();

  return v4 & 1;
}

- (BOOL)isEmpty
{
  v3 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2] == 0;
}

- (int64_t)count
{
  v3 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2];
}

- (void)setObject:(id)a3 forKeyedSubscript:(unint64_t)a4
{
  if (a3)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = self;
  }

  sub_100601584(v9, v8);
  swift_beginAccess();
  sub_100BC1F00(v8, a4);
  swift_endAccess();

  sub_10000CAAC(v9, &unk_1019F4D00);
}

- (void)enumeratePropertiesUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100BE5598(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC8Freeform14CRLPropertyMap)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end