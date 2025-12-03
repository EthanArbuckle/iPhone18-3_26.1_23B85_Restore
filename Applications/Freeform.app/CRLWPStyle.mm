@interface CRLWPStyle
- (_TtC8Freeform10CRLWPStyle)init;
- (float)floatValueForProperty:(unint64_t)property;
- (id)boxedValueForProperty:(unint64_t)property;
- (id)valueForProperty:(unint64_t)property;
- (int)intValueForProperty:(unint64_t)property;
@end

@implementation CRLWPStyle

- (id)boxedValueForProperty:(unint64_t)property
{
  selfCopy = self;
  v4 = sub_100BE5D8C();
  swift_unknownObjectRetain();

  return v4;
}

- (id)valueForProperty:(unint64_t)property
{
  v4 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v6 = v4(property);

  return v6;
}

- (int)intValueForProperty:(unint64_t)property
{
  v4 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  if (!v4(property))
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_5:
    intValue = 0x80000000;
    goto LABEL_6;
  }

  intValue = [v6 intValue];
  swift_unknownObjectRelease();
LABEL_6:

  return intValue;
}

- (float)floatValueForProperty:(unint64_t)property
{
  v4 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  if (!v4(property))
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v8 = INFINITY;
    goto LABEL_6;
  }

  [v6 floatValue];
  v8 = v7;
  swift_unknownObjectRelease();
LABEL_6:

  return v8;
}

- (_TtC8Freeform10CRLWPStyle)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLWPStyle();
  return [(CRLWPStyle *)&v3 init];
}

@end