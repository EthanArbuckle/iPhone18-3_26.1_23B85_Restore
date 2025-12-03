@interface BERenderingProcess
+ (void)renderingProcessWithBundleID:(id)d interruptionHandler:(id)handler completion:(id)completion;
+ (void)renderingProcessWithInterruptionHandler:(id)handler completion:(id)completion;
- (BERenderingProcess)init;
- (id)createVisibilityPropagationInteraction;
- (id)grantCapability:(id)capability error:(id *)error invalidationHandler:(id)handler;
@end

@implementation BERenderingProcess

+ (void)renderingProcessWithBundleID:(id)d interruptionHandler:(id)handler completion:(id)completion
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = _Block_copy(completion);
  if (d)
  {
    d = sub_19D51E28C();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = sub_19D51E37C();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = d;
  v19[5] = v15;
  v19[6] = sub_19D5196A8;
  v19[7] = v16;
  v19[8] = sub_19D5035C8;
  v19[9] = v17;
  sub_19D516AB4(0, 0, v11, &unk_19D521080, v19);
}

- (id)grantCapability:(id)capability error:(id *)error invalidationHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  capabilityCopy = capability;
  selfCopy = self;
  v11 = sub_19D504938(capabilityCopy, sub_19D505178, v8, &OBJC_IVAR___BERenderingProcess_inner, _s15_ProcessAdaptorVMa_4, &off_1F10D2F00, type metadata accessor for RenderingProcess);

  return v11;
}

+ (void)renderingProcessWithInterruptionHandler:(id)handler completion:(id)completion
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
  sub_19D516AB4(0, 0, v9, &unk_19D521088, v15);
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

- (BERenderingProcess)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end