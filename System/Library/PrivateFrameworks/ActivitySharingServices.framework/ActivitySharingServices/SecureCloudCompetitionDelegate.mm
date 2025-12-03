@interface SecureCloudCompetitionDelegate
- (_TtC23ActivitySharingServices30SecureCloudCompetitionDelegate)init;
- (void)competitionManager:(ASCompetitionManager *)manager deleteCompetitionLists:(NSSet *)lists group:(CKOperationGroup *)group completion:(id)completion;
- (void)competitionManager:(ASCompetitionManager *)manager saveCompetitionLists:(NSSet *)lists group:(CKOperationGroup *)group completion:(id)completion;
- (void)competitionManager:(ASCompetitionManager *)manager saveCurrentCompetitionList:(ASCompetitionList *)list archivedCompetitionList:(ASCompetitionList *)competitionList contact:(ASContact *)contact group:(CKOperationGroup *)group completion:(id)completion;
@end

@implementation SecureCloudCompetitionDelegate

- (_TtC23ActivitySharingServices30SecureCloudCompetitionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)competitionManager:(ASCompetitionManager *)manager saveCurrentCompetitionList:(ASCompetitionList *)list archivedCompetitionList:(ASCompetitionList *)competitionList contact:(ASContact *)contact group:(CKOperationGroup *)group completion:(id)completion
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - v17;
  v19 = _Block_copy(completion);
  v20 = swift_allocObject();
  v20[2] = manager;
  v20[3] = list;
  v20[4] = competitionList;
  v20[5] = contact;
  v20[6] = group;
  v20[7] = v19;
  v20[8] = self;
  v21 = sub_221FB64C8();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_221FB9BA0;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_221FB9BA8;
  v23[5] = v22;
  managerCopy = manager;
  listCopy = list;
  competitionListCopy = competitionList;
  contactCopy = contact;
  groupCopy = group;
  selfCopy = self;
  sub_221FB26AC(0, 0, v18, &unk_221FB9BB0, v23);
}

- (void)competitionManager:(ASCompetitionManager *)manager saveCompetitionLists:(NSSet *)lists group:(CKOperationGroup *)group completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = manager;
  v16[3] = lists;
  v16[4] = group;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_221FB64C8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_221FB9B80;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_221FB9B88;
  v19[5] = v18;
  managerCopy = manager;
  listsCopy = lists;
  groupCopy = group;
  selfCopy = self;
  sub_221FB26AC(0, 0, v14, &unk_221FB9B90, v19);
}

- (void)competitionManager:(ASCompetitionManager *)manager deleteCompetitionLists:(NSSet *)lists group:(CKOperationGroup *)group completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = manager;
  v16[3] = lists;
  v16[4] = group;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_221FB64C8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_221FB9B60;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_221FC0690;
  v19[5] = v18;
  managerCopy = manager;
  listsCopy = lists;
  groupCopy = group;
  selfCopy = self;
  sub_221FB26AC(0, 0, v14, &unk_221FB9B70, v19);
}

@end