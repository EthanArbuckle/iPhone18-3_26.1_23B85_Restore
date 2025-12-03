@interface BEWebContentProcess
+ (void)webContentProcessWithBundleID:(id)d interruptionHandler:(id)handler completion:(id)completion;
+ (void)webContentProcessWithInterruptionHandler:(id)handler completion:(id)completion;
- (BEWebContentProcess)init;
- (id)createVisibilityPropagationInteraction;
- (id)grantCapability:(id)capability error:(id *)error invalidationHandler:(id)handler;
@end

@implementation BEWebContentProcess

+ (void)webContentProcessWithBundleID:(id)d interruptionHandler:(id)handler completion:(id)completion
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v19 - v9;
  v11 = _Block_copy(handler);
  v12 = _Block_copy(completion);
  if (d)
  {
    d = sub_19D51E28C();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = sub_19D51E37C();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = d;
  v18[5] = v14;
  v18[6] = sub_19D5196A8;
  v18[7] = v15;
  v18[8] = sub_19D519684;
  v18[9] = v16;
  sub_19D516AB4(0, 0, v10, &unk_19D521090, v18);
}

- (id)grantCapability:(id)capability error:(id *)error invalidationHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  capabilityCopy = capability;
  selfCopy = self;
  v11 = sub_19D504938(capabilityCopy, sub_19D505164, v8, &OBJC_IVAR___BEWebContentProcess_inner, _s15_ProcessAdaptorVMa_2, &off_1F10D2EC0, type metadata accessor for WebContentProcess);

  return v11;
}

- (id)createVisibilityPropagationInteraction
{
  v3 = sub_19D51E02C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_19D51E05C();
  sub_19D51E03C();
  v9 = sub_19D51DFFC();
  (*(v4 + 8))(v7, v3);
  v10 = sub_19D51E27C();
  v11 = [objc_opt_self() interactionWithPID:v9 environmentIdentifier:v10];

  return v11;
}

+ (void)webContentProcessWithInterruptionHandler:(id)handler completion:(id)completion
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = sub_19D51E37C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = sub_19D5196A8;
  v15[5] = v12;
  v15[6] = sub_19D519684;
  v15[7] = v13;
  sub_19D516AB4(0, 0, v9, &unk_19D521098, v15);
}

- (BEWebContentProcess)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end