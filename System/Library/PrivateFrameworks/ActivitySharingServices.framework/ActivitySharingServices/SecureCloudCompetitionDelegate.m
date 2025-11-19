@interface SecureCloudCompetitionDelegate
- (_TtC23ActivitySharingServices30SecureCloudCompetitionDelegate)init;
- (void)competitionManager:(ASCompetitionManager *)a3 deleteCompetitionLists:(NSSet *)a4 group:(CKOperationGroup *)a5 completion:(id)a6;
- (void)competitionManager:(ASCompetitionManager *)a3 saveCompetitionLists:(NSSet *)a4 group:(CKOperationGroup *)a5 completion:(id)a6;
- (void)competitionManager:(ASCompetitionManager *)a3 saveCurrentCompetitionList:(ASCompetitionList *)a4 archivedCompetitionList:(ASCompetitionList *)a5 contact:(ASContact *)a6 group:(CKOperationGroup *)a7 completion:(id)a8;
@end

@implementation SecureCloudCompetitionDelegate

- (_TtC23ActivitySharingServices30SecureCloudCompetitionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)competitionManager:(ASCompetitionManager *)a3 saveCurrentCompetitionList:(ASCompetitionList *)a4 archivedCompetitionList:(ASCompetitionList *)a5 contact:(ASContact *)a6 group:(CKOperationGroup *)a7 completion:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
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
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = self;
  sub_221FB26AC(0, 0, v18, &unk_221FB9BB0, v23);
}

- (void)competitionManager:(ASCompetitionManager *)a3 saveCompetitionLists:(NSSet *)a4 group:(CKOperationGroup *)a5 completion:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_221FB26AC(0, 0, v14, &unk_221FB9B90, v19);
}

- (void)competitionManager:(ASCompetitionManager *)a3 deleteCompetitionLists:(NSSet *)a4 group:(CKOperationGroup *)a5 completion:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_221FB26AC(0, 0, v14, &unk_221FB9B70, v19);
}

@end