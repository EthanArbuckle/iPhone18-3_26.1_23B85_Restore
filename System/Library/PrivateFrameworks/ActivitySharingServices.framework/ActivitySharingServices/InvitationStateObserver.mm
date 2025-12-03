@interface InvitationStateObserver
- (_TtC23ActivitySharingServices23InvitationStateObserver)init;
- (void)cloudKitManager:(id)manager didHandleServerPushWithCloudKitGroup:(id)group;
- (void)cloudKitManager:(id)manager didUpdateAccountStatus:(int64_t)status;
- (void)friendListDidUpdate:(id)update;
@end

@implementation InvitationStateObserver

- (_TtC23ActivitySharingServices23InvitationStateObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cloudKitManager:(id)manager didUpdateAccountStatus:(int64_t)status
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_221FB64C8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  selfCopy = self;
  sub_221FA7A78(0, 0, v8, &unk_221FB9140, v10);
}

- (void)cloudKitManager:(id)manager didHandleServerPushWithCloudKitGroup:(id)group
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = qword_281307080;
  groupCopy = group;
  selfCopy = self;
  if (v10 != -1)
  {
    swift_once();
  }

  v13 = sub_221FB61D8();
  __swift_project_value_buffer(v13, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000088, 0x8000000221FC1390, 0xD000000000000038, 0x8000000221FC1440);
  v14 = sub_221FB64C8();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = selfCopy;
  v15[5] = groupCopy;
  sub_221FA7A78(0, 0, v9, &unk_221FB9120, v15);
}

- (void)friendListDidUpdate:(id)update
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
  selfCopy = self;
  sub_221FA7A78(0, 0, v7, &unk_221FB90F0, v9);
}

@end