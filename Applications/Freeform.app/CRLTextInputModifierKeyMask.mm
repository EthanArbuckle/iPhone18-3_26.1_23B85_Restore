@interface CRLTextInputModifierKeyMask
+ (id)fromKeyCommandFlags:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (_TtC8Freeform27CRLTextInputModifierKeyMask)init;
@end

@implementation CRLTextInputModifierKeyMask

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

  v6 = sub_100BE6F70(v8);

  sub_1005E09AC(v8);
  return v6;
}

- (_TtC8Freeform27CRLTextInputModifierKeyMask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)fromKeyCommandFlags:(int64_t)a3
{
  v3 = sub_100BE7968(a3);

  return v3;
}

@end