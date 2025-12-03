@interface CRLWPCharacterStyle
- (BOOL)isEqual:(id)equal;
- (id)boxedValueForProperty:(unint64_t)property;
@end

@implementation CRLWPCharacterStyle

- (id)boxedValueForProperty:(unint64_t)property
{
  selfCopy = self;
  v5 = sub_100D661E4(property);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
  }

  sub_100601584(v11, v9);
  if (!v10)
  {
    sub_1005E09AC(v9);
    goto LABEL_8;
  }

  type metadata accessor for CRLWPCharacterStyle();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = sub_100D66A7C(self, v8);

LABEL_9:
  sub_1005E09AC(v11);
  return v6 & 1;
}

@end