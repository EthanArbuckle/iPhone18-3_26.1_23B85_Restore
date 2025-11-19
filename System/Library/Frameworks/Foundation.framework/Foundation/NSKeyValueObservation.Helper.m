@interface NSKeyValueObservation.Helper
- (_TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper)init;
- (void)_swizzle_me_observeValueForKeyPath:(id)a3 of:(id)a4 change:(id)a5 context:(void *)a6;
- (void)dealloc;
@end

@implementation NSKeyValueObservation.Helper

- (void)_swizzle_me_observeValueForKeyPath:(id)a3 of:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else if (a4)
  {
LABEL_3:
    swift_unknownObjectRetain();
    v9 = a5;
    v10 = self;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  memset(v15, 0, sizeof(v15));
  v12 = a5;
  v13 = self;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = 0;
  _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo8NSStringC_ypTt1g5(a5, &v14);
  v11 = v14;
  if (v14)
  {

LABEL_9:
    specialized NSKeyValueObservation.Helper._swizzle_me_observeValue(forKeyPath:of:change:context:)(v15, v11);

    outlined destroy of TermOfAddress?(v15, &_sypSgMd);
    return;
  }

  __break(1u);
}

- (void)dealloc
{
  v2 = self;
  NSKeyValueObservation.Helper.invalidate()();
  MEMORY[0x1865D2690](*(&v2->super.isa + OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_lock), -1, -1);
  v3.receiver = v2;
  v3.super_class = type metadata accessor for NSKeyValueObservation.Helper();
  [(NSKeyValueObservation.Helper *)&v3 dealloc];
}

- (_TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end