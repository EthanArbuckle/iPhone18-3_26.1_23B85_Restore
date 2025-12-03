@interface CRLWPParagraphStyle
- (BOOL)isEqual:(id)equal;
- (id)boxedValueForProperty:(unint64_t)property;
@end

@implementation CRLWPParagraphStyle

- (id)boxedValueForProperty:(unint64_t)property
{
  selfCopy = self;
  v5 = sub_1012801E8(property);

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
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1012804DC(v8);

  sub_1005E09AC(v8);
  return v6 & 1;
}

@end