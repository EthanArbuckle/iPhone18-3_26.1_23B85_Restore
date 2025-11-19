@interface AVInfoTabCoordinator
- (AVInfoTabCoordinator)init;
- (AVInfoTabCoordinator)initWithPlayerItem:(id)a3 actions:(id)a4;
- (NSArray)actions;
- (void)setActions:(id)a3;
- (void)setInfoTabViewController:(id)a3;
- (void)setPlayerItem:(id)a3;
@end

@implementation AVInfoTabCoordinator

- (void)setInfoTabViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR___AVInfoTabCoordinator_infoTabViewController);
  *(self + OBJC_IVAR___AVInfoTabCoordinator_infoTabViewController) = a3;
  v3 = a3;
}

- (void)setPlayerItem:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18B4AC09C(a3);
}

- (NSArray)actions
{
  sub_18B4AC60C(0, &qword_1EA9C3980);
  sub_18B6C450C();
  v2 = sub_18B6C575C();

  return v2;
}

- (void)setActions:(id)a3
{
  sub_18B4AC60C(0, &qword_1EA9C3980);
  v4 = sub_18B6C576C();
  v5 = self;
  sub_18B4AC2FC(v4);
}

- (AVInfoTabCoordinator)initWithPlayerItem:(id)a3 actions:(id)a4
{
  sub_18B4AC60C(0, &qword_1EA9C3980);
  v5 = sub_18B6C576C();
  return sub_18B4AC3EC(a3, v5);
}

- (AVInfoTabCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end