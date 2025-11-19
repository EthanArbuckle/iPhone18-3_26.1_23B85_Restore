@interface SecureCloudActivationObserver
- (_TtC23ActivitySharingServices29SecureCloudActivationObserver)init;
- (void)activitySharingManagerActivated:(id)a3;
- (void)activitySharingManagerDeactivated:(id)a3;
@end

@implementation SecureCloudActivationObserver

- (void)activitySharingManagerActivated:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_221FB64C8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = a3;
  v11 = a3;
  v12 = self;
  sub_221FA7A78(0, 0, v8, &unk_221FBCBB8, v10);
}

- (void)activitySharingManagerDeactivated:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_221FB64C8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v10 = self;
  sub_221FA7A78(0, 0, v7, &unk_221FBCBA0, v9);
}

- (_TtC23ActivitySharingServices29SecureCloudActivationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end