@interface NSKeyValueObservation.Helper
- (_TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper)init;
- (void)_swizzle_me_observeValueForKeyPath:(id)path of:(id)of change:(id)change context:(void *)context;
- (void)dealloc;
@end

@implementation NSKeyValueObservation.Helper

- (void)_swizzle_me_observeValueForKeyPath:(id)path of:(id)of change:(id)change context:(void *)context
{
  if (path)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)(path);
    if (of)
    {
      goto LABEL_3;
    }
  }

  else if (of)
  {
LABEL_3:
    swift_unknownObjectRetain();
    changeCopy = change;
    selfCopy = self;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (change)
    {
      goto LABEL_4;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  memset(v15, 0, sizeof(v15));
  changeCopy2 = change;
  selfCopy2 = self;
  if (!change)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = 0;
  _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo8NSStringC_ypTt1g5(change, &v14);
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
  selfCopy = self;
  NSKeyValueObservation.Helper.invalidate()();
  MEMORY[0x1865D2690](*(&selfCopy->super.isa + OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_lock), -1, -1);
  v3.receiver = selfCopy;
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