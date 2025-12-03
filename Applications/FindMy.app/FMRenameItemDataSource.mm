@interface FMRenameItemDataSource
- (_TtC6FindMy22FMRenameItemDataSource)init;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)numberOfComponentsInPickerView:(id)view;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation FMRenameItemDataSource

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_10010412C(row, component);
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

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_100104290(row, component);
}

- (int64_t)numberOfComponentsInPickerView:(id)view
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

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  selfCopy = self;
  v5 = *(self + OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_beaconRoles);
  if ((v5 & 0xC000000000000001) != 0)
  {
    selfCopy2 = self;

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_5:
    roles = [v8 roles];

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

  if (component < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > component)
  {
    v6 = *(v5 + 8 * component + 32);
    selfCopy3 = self;
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