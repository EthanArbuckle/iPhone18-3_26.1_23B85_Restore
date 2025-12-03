@interface CameraModel
- (_TtC9CarCamera11CameraModel)init;
- (void)cameraButtonService:(id)service didUpdateChildrenIdentifiers:(id)identifiers;
- (void)cameraButtonService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)cameraButtonService:(id)service didUpdateSelectedEntryIndex:(unsigned __int8)index;
- (void)cameraButtonService:(id)service didUpdateSortOrder:(unsigned __int8)order;
- (void)cameraGeneralService:(id)service didUpdateOn:(BOOL)on;
- (void)cameraGeneralService:(id)service didUpdateUserDismissible:(BOOL)dismissible;
- (void)carDidUpdateAccessories:(id)accessories;
@end

@implementation CameraModel

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  sub_100011000();
}

- (void)cameraGeneralService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  sub_1000111B0(serviceCopy, on);
}

- (void)cameraGeneralService:(id)service didUpdateUserDismissible:(BOOL)dismissible
{
  serviceCopy = service;
  selfCopy = self;
  sub_10000C744(serviceCopy, dismissible);
}

- (void)cameraButtonService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  serviceCopy = service;
  selfCopy = self;
  sub_10001131C(order);
}

- (void)cameraButtonService:(id)service didUpdateHidden:(BOOL)hidden
{
  serviceCopy = service;
  selfCopy = self;
  sub_10000CBCC(serviceCopy, hidden);
}

- (void)cameraButtonService:(id)service didUpdateChildrenIdentifiers:(id)identifiers
{
  if (identifiers)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  sub_10000CDB4(serviceCopy, v6);
}

- (void)cameraButtonService:(id)service didUpdateSelectedEntryIndex:(unsigned __int8)index
{
  serviceCopy = service;
  selfCopy = self;
  sub_10000D578(serviceCopy, index);
}

- (_TtC9CarCamera11CameraModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end