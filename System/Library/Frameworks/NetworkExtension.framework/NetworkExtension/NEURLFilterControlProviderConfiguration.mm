@interface NEURLFilterControlProviderConfiguration
- (void)fetchPrefilterDataWithTag:(id)tag reply:(id)reply;
- (void)startWithReply:(id)reply;
- (void)stopWithStopReason:(int64_t)reason reply:(id)reply;
@end

@implementation NEURLFilterControlProviderConfiguration

- (void)startWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(reply);
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

- (void)stopWithStopReason:(int64_t)reason reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
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
  v15[5] = reason;
  v15[6] = sub_1BA85EC3C;
  v15[7] = v12;
  sub_1BA86F78C(0, 0, v10, &unk_1BAA4D358, v15);
}

- (void)fetchPrefilterDataWithTag:(id)tag reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = _Block_copy(reply);
  if (tag)
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