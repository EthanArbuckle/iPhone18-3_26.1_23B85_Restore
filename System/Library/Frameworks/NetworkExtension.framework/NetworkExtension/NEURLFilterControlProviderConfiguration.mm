@interface NEURLFilterControlProviderConfiguration
- (void)fetchPrefilterDataWithTag:(id)a3 reply:(id)a4;
- (void)startWithReply:(id)a3;
- (void)stopWithStopReason:(int64_t)a3 reply:(id)a4;
@end

@implementation NEURLFilterControlProviderConfiguration

- (void)startWithReply:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_1BAA39EFC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_1BAA39EDC();
  swift_retain_n();

  v12 = sub_1BAA39ECC();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = self;
  v13[5] = sub_1BA85EDE0;
  v13[6] = v10;
  sub_1BA86F78C(0, 0, v8, &unk_1BAA4D368, v13);
}

- (void)stopWithStopReason:(int64_t)a3 reply:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_1BAA39EFC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_1BAA39EDC();
  swift_retain_n();

  v14 = sub_1BAA39ECC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = self;
  v15[5] = a3;
  v15[6] = sub_1BA85EC3C;
  v15[7] = v12;
  sub_1BA86F78C(0, 0, v10, &unk_1BAA4D358, v15);
}

- (void)fetchPrefilterDataWithTag:(id)a3 reply:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = _Block_copy(a4);
  if (a3)
  {
    v12 = sub_1BAA39D9C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = sub_1BAA39EFC();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_1BAA39EDC();
  swift_retain_n();

  v17 = sub_1BAA39ECC();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = self;
  v18[5] = v12;
  v18[6] = v14;
  v18[7] = sub_1BA85E9FC;
  v18[8] = v15;
  sub_1BA86F78C(0, 0, v10, &unk_1BAA4D330, v18);
}

@end