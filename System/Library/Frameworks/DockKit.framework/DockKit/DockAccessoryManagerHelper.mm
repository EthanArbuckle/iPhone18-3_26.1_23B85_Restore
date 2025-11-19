@interface DockAccessoryManagerHelper
- (_TtC7DockKit26DockAccessoryManagerHelper)init;
- (void)xpcDisconnected;
@end

@implementation DockAccessoryManagerHelper

- (void)xpcDisconnected
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v9 - v4;
  v6 = sub_2381CA24C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  v8 = self;
  sub_23819DBD4(0, 0, v5, &unk_2381CB278, v7);
}

- (_TtC7DockKit26DockAccessoryManagerHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end