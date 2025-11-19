@interface BENetworkingProcess
+ (void)networkProcessWithBundleID:(id)a3 interruptionHandler:(id)a4 completion:(id)a5;
+ (void)networkProcessWithInterruptionHandler:(id)a3 completion:(id)a4;
- (BENetworkingProcess)init;
- (id)grantCapability:(id)a3 error:(id *)a4 invalidationHandler:(id)a5;
@end

@implementation BENetworkingProcess

+ (void)networkProcessWithBundleID:(id)a3 interruptionHandler:(id)a4 completion:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a4);
  v13 = _Block_copy(a5);
  if (a3)
  {
    a3 = sub_19D51E28C();
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
  v19[4] = a3;
  v19[5] = v15;
  v19[6] = sub_19D505170;
  v19[7] = v16;
  v19[8] = sub_19D519684;
  v19[9] = v17;
  sub_19D516AB4(0, 0, v11, &unk_19D521070, v19);
}

- (id)grantCapability:(id)a3 error:(id *)a4 invalidationHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a3;
  v10 = self;
  v11 = sub_19D504938(v9, sub_19D505164, v8, &OBJC_IVAR___BENetworkingProcess_inner, _s15_ProcessAdaptorVMa_3, &off_1F10D2EE0, type metadata accessor for NetworkingProcess);

  return v11;
}

+ (void)networkProcessWithInterruptionHandler:(id)a3 completion:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = _Block_copy(a4);
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
  sub_19D516AB4(0, 0, v9, &unk_19D521078, v15);
}

- (BENetworkingProcess)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end