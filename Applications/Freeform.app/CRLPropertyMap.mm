@interface CRLPropertyMap
- (BOOL)containsProperty:(unint64_t)property;
- (BOOL)isEmpty;
- (_TtC8Freeform14CRLPropertyMap)init;
- (int64_t)count;
- (void)enumeratePropertiesUsingBlock:(id)block;
- (void)setObject:(id)object forKeyedSubscript:(unint64_t)subscript;
- (void)setProperty:(unint64_t)property value:(id)value;
@end

@implementation CRLPropertyMap

- (void)setProperty:(unint64_t)property value:(id)value
{
  if (value)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  sub_100601584(v9, v8);
  swift_beginAccess();
  sub_100BC1F00(v8, property);
  swift_endAccess();

  sub_10000CAAC(v9, &unk_1019F4D00);
}

- (BOOL)containsProperty:(unint64_t)property
{
  selfCopy = self;
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

- (void)setObject:(id)object forKeyedSubscript:(unint64_t)subscript
{
  if (object)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  sub_100601584(v9, v8);
  swift_beginAccess();
  sub_100BC1F00(v8, subscript);
  swift_endAccess();

  sub_10000CAAC(v9, &unk_1019F4D00);
}

- (void)enumeratePropertiesUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_100BE5598(selfCopy, v4);
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