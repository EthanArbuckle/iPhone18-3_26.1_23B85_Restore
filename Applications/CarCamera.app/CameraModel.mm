@interface CameraModel
- (_TtC9CarCamera11CameraModel)init;
- (void)cameraButtonService:(id)a3 didUpdateChildrenIdentifiers:(id)a4;
- (void)cameraButtonService:(id)a3 didUpdateHidden:(BOOL)a4;
- (void)cameraButtonService:(id)a3 didUpdateSelectedEntryIndex:(unsigned __int8)a4;
- (void)cameraButtonService:(id)a3 didUpdateSortOrder:(unsigned __int8)a4;
- (void)cameraGeneralService:(id)a3 didUpdateOn:(BOOL)a4;
- (void)cameraGeneralService:(id)a3 didUpdateUserDismissible:(BOOL)a4;
- (void)carDidUpdateAccessories:(id)a3;
@end

@implementation CameraModel

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100011000();
}

- (void)cameraGeneralService:(id)a3 didUpdateOn:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1000111B0(v6, a4);
}

- (void)cameraGeneralService:(id)a3 didUpdateUserDismissible:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10000C744(v6, a4);
}

- (void)cameraButtonService:(id)a3 didUpdateSortOrder:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  sub_10001131C(a4);
}

- (void)cameraButtonService:(id)a3 didUpdateHidden:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10000CBCC(v6, a4);
}

- (void)cameraButtonService:(id)a3 didUpdateChildrenIdentifiers:(id)a4
{
  if (a4)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_10000CDB4(v7, v6);
}

- (void)cameraButtonService:(id)a3 didUpdateSelectedEntryIndex:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  sub_10000D578(v6, a4);
}

- (_TtC9CarCamera11CameraModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end