@interface AVInfoTabCoordinator
- (AVInfoTabCoordinator)init;
- (AVInfoTabCoordinator)initWithPlayerItem:(id)item actions:(id)actions;
- (NSArray)actions;
- (void)setActions:(id)actions;
- (void)setInfoTabViewController:(id)controller;
- (void)setPlayerItem:(id)item;
@end

@implementation AVInfoTabCoordinator

- (void)setInfoTabViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR___AVInfoTabCoordinator_infoTabViewController);
  *(self + OBJC_IVAR___AVInfoTabCoordinator_infoTabViewController) = controller;
  controllerCopy = controller;
}

- (void)setPlayerItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_18B4AC09C(item);
}

- (NSArray)actions
{
  sub_18B4AC60C(0, &qword_1EA9C3980);
  sub_18B6C450C();
  v2 = sub_18B6C575C();

  return v2;
}

- (void)setActions:(id)actions
{
  sub_18B4AC60C(0, &qword_1EA9C3980);
  v4 = sub_18B6C576C();
  selfCopy = self;
  sub_18B4AC2FC(v4);
}

- (AVInfoTabCoordinator)initWithPlayerItem:(id)item actions:(id)actions
{
  sub_18B4AC60C(0, &qword_1EA9C3980);
  v5 = sub_18B6C576C();
  return sub_18B4AC3EC(item, v5);
}

- (AVInfoTabCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end