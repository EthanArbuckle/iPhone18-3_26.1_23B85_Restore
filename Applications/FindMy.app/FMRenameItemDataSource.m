@interface FMRenameItemDataSource
- (_TtC6FindMy22FMRenameItemDataSource)init;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)numberOfComponentsInPickerView:(id)a3;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation FMRenameItemDataSource

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_10010412C(a4, a5);
  v11 = v10;

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_100104290(a4, a5);
}

- (int64_t)numberOfComponentsInPickerView:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_beaconRoles);
  if (v3 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = self;
  v5 = *(self + OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_beaconRoles);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v12 = self;

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_5:
    v9 = [v8 roles];

    sub_10000905C(0, &unk_1006B20A0);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v10 >> 62))
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

      return v11;
    }

LABEL_10:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_7;
  }

  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a4)
  {
    v6 = *(v5 + 8 * a4 + 32);
    v7 = self;
    v8 = v6;
    goto LABEL_5;
  }

  __break(1u);
  return self;
}

- (_TtC6FindMy22FMRenameItemDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end