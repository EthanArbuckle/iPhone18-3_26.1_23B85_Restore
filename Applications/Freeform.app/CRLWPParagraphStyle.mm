@interface CRLWPParagraphStyle
- (BOOL)isEqual:(id)a3;
- (id)boxedValueForProperty:(unint64_t)a3;
@end

@implementation CRLWPParagraphStyle

- (id)boxedValueForProperty:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1012801E8(a3);

  return v5;
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

  v6 = sub_1012804DC(v8);

  sub_1005E09AC(v8);
  return v6 & 1;
}

@end