@interface LabelSlotTag
- (BOOL)isEqual:(id)a3;
- (_TtC19FamilyControlsAgent12LabelSlotTag)init;
- (int64_t)hash;
@end

@implementation LabelSlotTag

- (int64_t)hash
{
  v2 = self;
  v3 = sub_100011400();

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
    memset(v11, 0, sizeof(v11));
    v5 = self;
  }

  sub_1000129D0(v11, v9);
  if (!v10)
  {
    sub_10000D5C4(v9, &qword_10006BE28, qword_100056F60);
    goto LABEL_8;
  }

  type metadata accessor for LabelSlotTag();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = sub_100011D34(self, v8);

LABEL_9:
  sub_10000D5C4(v11, &qword_10006BE28, qword_100056F60);
  return v6;
}

- (_TtC19FamilyControlsAgent12LabelSlotTag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end