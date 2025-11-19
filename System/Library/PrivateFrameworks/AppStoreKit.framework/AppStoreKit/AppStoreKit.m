void ASKProcessLaunchTimeInitialize()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DF00] date];
  [v1 timeIntervalSince1970];
  ASKProcessLaunchTime = v2;

  objc_autoreleasePoolPop(v0);
}

void *sub_1E12FFECC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v4 = sub_1E1AF72CC();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = sub_1E130A34C(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 56);
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 8);
    v16 = *v11;

    v9 = sub_1E130A34C(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1300008()
{
  v0 = sub_1E1AF0FAC();
  __swift_allocate_value_buffer(v0, qword_1EE1F7BE8);
  __swift_project_value_buffer(v0, qword_1EE1F7BE8);
  if (qword_1EE1E0AC8 != -1)
  {
    swift_once();
  }

  return sub_1E1AF0F9C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t RenderPipelineDiagnostics.Recorder.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  v1 = [objc_opt_self() defaultCenter];
  v2 = qword_1EE1EAD00;

  if (v2 != -1)
  {
    swift_once();
  }

  [v1 addObserver:v0 selector:sel_recordNotification_ name:qword_1EE1EAD08 object:0];

  v3 = qword_1EE1EACE8;

  if (v3 != -1)
  {
    swift_once();
  }

  [v1 addObserver:v0 selector:sel_recordNotification_ name:qword_1EE1EACF0 object:0];

  return v0;
}

uint64_t sub_1E13002CC()
{
  result = sub_1E1AF5DBC();
  qword_1EE1EAD08 = result;
  return result;
}

uint64_t sub_1E1300304()
{
  result = sub_1E1AF5DBC();
  qword_1EE1EACF0 = result;
  return result;
}

id ASKBuildTypeGetCurrent()
{
  if (ASKBuildTypeGetCurrent_onceToken != -1)
  {
    ASKBuildTypeGetCurrent_cold_1();
  }

  v1 = ASKBuildTypeGetCurrent_buildType;

  return v1;
}

void __ASKBuildTypeGetCurrent_block_invoke()
{
  has_internal_content = os_variant_has_internal_content();
  v1 = @"production";
  v2 = ASKBuildTypeGetCurrent_buildType;
  if (has_internal_content)
  {
    v1 = @"internal";
  }

  ASKBuildTypeGetCurrent_buildType = v1;
}

uint64_t sub_1E1300408(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1300440()
{
  sub_1E1AF537C();
  if (v0 <= 0x3F)
  {
    sub_1E13005DC();
    if (v1 <= 0x3F)
    {
      sub_1E130062C();
      if (v2 <= 0x3F)
      {
        sub_1E1300690(319, &unk_1EE1D2978, &qword_1ECEB3D70);
        if (v3 <= 0x3F)
        {
          sub_1E1300690(319, &qword_1EE1D20F8, &qword_1ECEB9450);
          if (v4 <= 0x3F)
          {
            sub_1E13006E4(319, &qword_1EE1E3470);
            if (v5 <= 0x3F)
            {
              sub_1E1300784();
              if (v6 <= 0x3F)
              {
                sub_1E130072C();
                if (v7 <= 0x3F)
                {
                  sub_1E1300690(319, &unk_1EE1D29C0, &qword_1ECEB9458);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E13005DC()
{
  if (!qword_1EE1DF1C8[0])
  {
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE1DF1C8);
    }
  }
}

unint64_t sub_1E130062C()
{
  result = qword_1EE1E1370;
  if (!qword_1EE1E1370)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE1E1370);
  }

  return result;
}

void sub_1E1300690(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1E1AF6D9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E13006E4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1E130072C()
{
  if (!qword_1EE1FADD0)
  {
    sub_1E1AEFCCC();
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1FADD0);
    }
  }
}

unint64_t sub_1E1300784()
{
  result = qword_1EE1D2100;
  if (!qword_1EE1D2100)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE1D2100);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for BagOfflinePolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t ASKBootstrapV2.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = sub_1E1AF537C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00]();
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v35 = a2[1];
  v36 = v14;
  LODWORD(v14) = *(a2 + 16);
  v33 = *a4;
  v34 = v14;
  v15 = *(v11 + 16);
  v39 = a1;
  v15(v13, a1, v10);
  v38 = a3;
  sub_1E1300B24(a3, v40);
  if (qword_1EE1F44F8 != -1)
  {
    swift_once();
  }

  v16 = unk_1EE1F4508;
  v37 = qword_1EE1F4500;
  v17 = type metadata accessor for ASKBootstrapV2(0);
  v18 = v17[13];
  v19 = sub_1E1AEFCCC();
  (*(*(v19 - 8) + 56))(&a5[v18], 1, 1, v19);
  v20 = &a5[v17[14]];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = &a5[v17[8]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &a5[v17[9]];
  *v22 = 0;
  v22[1] = 0;
  v15(&a5[v17[5]], v13, v10);
  v23 = &a5[v17[6]];
  v24 = v35;
  *v23 = v36;
  *(v23 + 1) = v24;
  v23[16] = v34;
  *a5 = v33;
  sub_1E1300B24(v40, &a5[v17[7]]);
  v25 = objc_opt_self();

  v26 = [v25 currentProcess];
  v27 = sub_1E1AF5DBC();
  [v26 setTreatmentNamespace_];

  __swift_destroy_boxed_opaque_existential_1(v38);
  v28 = *(v11 + 8);
  v28(v39, v10);
  __swift_destroy_boxed_opaque_existential_1(v40);
  result = (v28)(v13, v10);
  *&a5[v17[10]] = v26;
  v30 = &a5[v17[11]];
  *v30 = &unk_1E1B32B60;
  v30[1] = 0;
  v31 = &a5[v17[12]];
  *v31 = v37;
  v31[1] = v16;
  return result;
}

uint64_t sub_1E1300B24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E1300B88()
{
  result = sub_1E1300BAC();
  qword_1EE1F4500 = result;
  unk_1EE1F4508 = v1;
  return result;
}

uint64_t sub_1E1300BAC()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = 0x65726F7473707061;
    v4 = sub_1E1AF5DFC();
    v6 = v5;

    if (v4 == 0xD000000000000027 && 0x80000001E1B75F50 == v6)
    {
      goto LABEL_14;
    }

    v8 = sub_1E1AF74AC();

    if (v8)
    {
      return v3;
    }
  }

  v9 = [v0 mainBundle];
  v10 = [v9 bundleIdentifier];

  if (!v10)
  {
    return 0x65726F7473707061;
  }

  v3 = 0xD00000000000001ALL;
  v11 = sub_1E1AF5DFC();
  v13 = v12;

  if (v11 == 0xD00000000000001ALL && 0x80000001E1B75F30 == v13)
  {
LABEL_14:

    return v3;
  }

  v15 = sub_1E1AF74AC();

  if ((v15 & 1) == 0)
  {
    return 0x65726F7473707061;
  }

  return v3;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t ASKBootstrapV2.withMetricsEventRecorderProducer(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E1300E44(v3, a3);
  v7 = (a3 + *(type metadata accessor for ASKBootstrapV2(0) + 36));
  v8 = *v7;
  sub_1E1300E34(a1);
  result = sub_1E1300EA8(v8);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t sub_1E1300E34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E1300E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASKBootstrapV2(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1300EA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t ASKBootstrapV2.start()()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  if (qword_1EE1E3598 != -1)
  {
    swift_once();
  }

  v4 = sub_1E1AF591C();
  __swift_project_value_buffer(v4, qword_1EE216110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  sub_1E1AF4F6C();
  if (qword_1EE1E3C70 != -1)
  {
    swift_once();
  }

  v5 = sub_1E1AF4F4C();
  sub_1E1AF4F5C();
  if (qword_1EE1ECA60 != -1)
  {
    swift_once();
  }

  UserEngagementManager.startDefaultTabRequest()();
  sub_1E1300E44(v0, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_1E1302440(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  v8 = sub_1E13024A4(sub_1E13031D8, 0, sub_1E1303BB0, v7);

  return v8;
}

uint64_t sub_1E13011D0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E1AF58EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_1EE2160F8);
  (*(v4 + 16))(v6, v8, v3);
  return sub_1E1AF590C();
}

uint64_t sub_1E1301320()
{
  v0 = sub_1E1AF58EC();
  __swift_allocate_value_buffer(v0, qword_1EE2160F8);
  __swift_project_value_buffer(v0, qword_1EE2160F8);
  if (qword_1EE1E31F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EE1E3200;
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1E1AF5DFC();
  }

  return sub_1E1AF58FC();
}

id sub_1E130143C(uint64_t a1, void *a2)
{
  type metadata accessor for ThisFramework();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a2 = result;
  return result;
}

uint64_t sub_1E13014B8()
{
  result = sub_1E1AF346C();
  qword_1EE216230 = result;
  return result;
}

uint64_t sub_1E13014DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) init];
  type metadata accessor for UserEngagementManager();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B21D30;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v1 + 16) = xmmword_1E1B21D30;
  result = sub_1E13017D4(v2, v3);
  *(v1 + 32) = v0;
  qword_1EE1ECA68 = v1;
  return result;
}

Swift::Void __swiftcall UserEngagementManager.startDefaultTabRequest()()
{
  v1 = sub_1E13017E4(&unk_1F5C2D8A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
  swift_arrayDestroy();
  v2 = *(v0 + 32);
  sub_1E1301A28(v1);

  v3 = sub_1E1AF5C6C();

  v4 = [v2 enqueueData_];

  v5 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1E1306C90;
  v13 = v5;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1E1306DC4;
  v11 = &block_descriptor_40;
  v6 = _Block_copy(&v8);

  [v4 addSuccessBlock_];
  _Block_release(v6);
  v12 = sub_1E164F890;
  v13 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1E164F7D4;
  v11 = &block_descriptor_3_0;
  v7 = _Block_copy(&v8);
  [v4 addErrorBlock_];
  _Block_release(v7);
}

uint64_t sub_1E130179C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E13017D4(uint64_t a1, unint64_t a2)
{
  if (a2 != 11)
  {
    return sub_1E14B175C(a1, a2);
  }

  return a1;
}

unint64_t sub_1E13017E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB60D0);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1E13018F8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E13018F8(uint64_t a1, uint64_t a2)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v4 = sub_1E1AF767C();

  return sub_1E1301970(a1, a2, v4);
}

unint64_t sub_1E1301970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E1AF74AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1E1301A28(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27B8);
    v2 = sub_1E1AF72CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1E1301CF0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1E1301CF0(v29, v30);
    result = sub_1E1AF6F2C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1E1301CF0(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

_OWORD *sub_1E1301CF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_96(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E1302440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASKBootstrapV2(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E13024A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v23 = a1;
  v5 = sub_1E1AF320C();
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF324C();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF321C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9460);
  v15 = sub_1E1AF588C();
  sub_1E13006E4(0, &qword_1EE1E3430);
  (*(v12 + 104))(v14, *MEMORY[0x1E69E7F98], v11);
  v16 = sub_1E1AF693C();
  (*(v12 + 8))(v14, v11);
  v17 = swift_allocObject();
  v18 = v24;
  v17[2] = v23;
  v17[3] = a2;
  v19 = v25;
  v17[4] = v18;
  v17[5] = v19;
  v17[6] = v15;
  aBlock[4] = sub_1E1302D40;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_69;
  v20 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1E1302B24(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v10, v7, v20);
  _Block_release(v20);

  (*(v28 + 8))(v7, v5);
  (*(v26 + 8))(v10, v27);

  return v15;
}

uint64_t sub_1E130289C()
{

  return swift_deallocObject();
}

uint64_t sub_1E13028E4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E130292C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302974(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E13029BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302A04(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302A4C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302A94(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302ADC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302B24(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302B6C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302BB4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302BFC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302C44(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302C8C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302CD4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1302D64(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1E1302DA8()
{
  v0 = sub_1E1AF0F7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (MEMORY[0x1EEE9AC00])();
  v4 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E698B4D8]) init];
  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v8 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (v7)
  {
    (*(v1 + 16))(v4, v6, v0);
    v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v10 = swift_allocObject();
    (*(v1 + 32))(v10 + v9, v4, v0);
    aBlock[4] = sub_1E1306FA0;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1306F24;
    aBlock[3] = &block_descriptor_66;
    v11 = _Block_copy(aBlock);
    v12 = v7;

    [v12 startWithCompletionBlock_];
    _Block_release(v11);
  }

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_1E1303008()
{
  v1 = sub_1E1AF0F7C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E1303090(uint64_t (*a1)(void), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = a1();
  a3(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E143F5AC;
  *(v8 + 24) = a5;
  v10[3] = sub_1E1AF470C();
  v10[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v10);
  swift_retain_n();
  sub_1E1AF46FC();
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1E130319C()
{

  return swift_deallocObject();
}

id sub_1E13031D8()
{
  v0 = sub_1E1AEFE6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1303388();
  sub_1E13036C4(v4);
  if (qword_1EE1F9658 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE1F9660;
  [qword_1EE1F9660 lock];
  if (qword_1EE1F9670 != -1)
  {
    swift_once();
  }

  v6 = off_1EE1E1910;
  if (off_1EE1E1910)
  {
    swift_beginAccess();
    if (*(v6 + 80) == 1)
    {

      sub_1E1AEFE5C();
      sub_1E1AEFE1C();
      v8 = v7;
      (*(v1 + 8))(v3, v0);
      v6[9] = v8;
      *(v6 + 80) = 0;
    }
  }

  return [v5 unlock];
}

uint64_t sub_1E1303388()
{
  v0 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B03760;
  *(v1 + 32) = @"debug";
  *(v1 + 40) = @"convergence";
  *(v1 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v2 = @"debug";
  v3 = @"convergence";
  v4 = @"internal";
  v5 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v0, v5);

  if (IsAnyOf)
  {
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = sub_1E1AF5DBC();
    v9 = [v7 BOOLForKey_];

    if (v9)
    {

      return 3;
    }
  }

  v11 = sub_1E1AF5DFC();
  v13 = v12;
  if (v11 == sub_1E1AF5DFC() && v13 == v14)
  {
    goto LABEL_10;
  }

  v16 = sub_1E1AF74AC();

  if (v16)
  {
LABEL_9:

    return 2;
  }

  v17 = sub_1E1AF5DFC();
  v19 = v18;
  if (v17 == sub_1E1AF5DFC() && v19 == v20)
  {
LABEL_10:

    return 2;
  }

  v21 = sub_1E1AF74AC();

  if (v21)
  {
    goto LABEL_9;
  }

  v22 = sub_1E1AF5DFC();
  v24 = v23;
  if (v22 == sub_1E1AF5DFC() && v24 == v25)
  {

    return 1;
  }

  else
  {
    v26 = sub_1E1AF74AC();

    return v26 & 1;
  }
}

void sub_1E130366C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_1E13036C4(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    v5 = 200;
    v3 = &selRef_setIncludeFullRequestInHARLogging_;
    v2 = &selRef_setIncludeFullResponseInHARLogging_;
    v1 = a1 == 2;
  }

  else
  {
    v1 = 0;
    v2 = &selRef_setIncludeFullRequestInHARLogging_;
    v3 = &selRef_setIncludeFullResponseInHARLogging_;
    if (!a1)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v5 = 50;
  }

  v4 = v1;
  v6 = objc_opt_self();
  v1 = 1;
  [v6 setHARLoggingEnabled_];
  [v6 setHARLoggingItemLimit_];
LABEL_7:
  v7 = objc_opt_self();
  [v7 *v3];
  v8 = *v2;

  return [v7 v8];
}

id sub_1E13037D8()
{
  result = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  qword_1EE1F9660 = result;
  return result;
}

void *sub_1E130380C()
{
  type metadata accessor for AppLaunchMetricsEvent();
  swift_allocObject();
  result = AppLaunchMetricsEvent.init()();
  off_1EE1E1910 = result;
  return result;
}

uint64_t AppLaunchMetricsEvent.init()()
{
  if (qword_1EE1F9088 != -1)
  {
    swift_once();
  }

  v1 = unk_1EE1F9098;
  *(v0 + 32) = qword_1EE1F9090;
  *(v0 + 40) = v1;
  v2 = objc_opt_self();

  v3 = [v2 processInfo];
  [v3 ask_launchTime];
  v5 = v4;

  *(v0 + 48) = v5;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 56) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  v6 = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = MEMORY[0x1E69E7CC0];
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = 513;
  *(v0 + 208) = 0;
  *(v0 + 16) = sub_1E1303A74(v6);
  *(v0 + 24) = &unk_1F5C2DA28;
  return v0;
}

uint64_t sub_1E1303994()
{
  v0 = sub_1E1AEFEAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFE9C();
  v4 = sub_1E1AEFE7C();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_1EE1F9090 = v4;
  unk_1EE1F9098 = v6;
  return result;
}

unint64_t sub_1E1303A74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37D0);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v4, &v13, &qword_1ECEB5F80);
      v5 = v13;
      v6 = v14;
      result = sub_1E13018F8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E1301CF0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E1303BC8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1E1303C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for ASKBootstrapV2(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E1300E44(a2, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_1E1302440(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9460);

  v12 = sub_1E1AF588C();
  v13 = sub_1E1AF649C();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1E1B32C60;
  v14[5] = v11;
  v14[6] = v12;

  sub_1E1974308(0, 0, v6, &unk_1E1B32C68, v14);

  return v12;
}

uint64_t sub_1E1303E64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t block_destroy_helper_16()
{
}

{
}

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3600);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for _JetTraceReporter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 8);

  v3 = v1[9];
  v4 = sub_1E1AF3EFC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocObject();
}

uint64_t objectdestroy_64Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);
  __swift_destroy_boxed_opaque_existential_1(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1(v0 + 248);
  __swift_destroy_boxed_opaque_existential_1(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1(v0 + 328);
  __swift_destroy_boxed_opaque_existential_1(v0 + 368);
  __swift_destroy_boxed_opaque_existential_1(v0 + 408);
  __swift_destroy_boxed_opaque_existential_1(v0 + 448);
  __swift_destroy_boxed_opaque_existential_1(v0 + 488);
  __swift_destroy_boxed_opaque_existential_1(v0 + 528);
  __swift_destroy_boxed_opaque_existential_1(v0 + 568);
  __swift_destroy_boxed_opaque_existential_1(v0 + 608);
  __swift_destroy_boxed_opaque_existential_1(v0 + 648);

  return swift_deallocObject();
}

uint64_t objectdestroy_39Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  v1 = sub_1E1AF39DC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  v1 = sub_1E1AEFCCC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  sub_1E166112C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = v1[5];
  v5 = sub_1E1AF537C();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[7]);
  v6 = v0 + v2 + v1[8];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  if (*(v3 + v1[9]))
  {
  }

  v7 = v1[13];
  v8 = sub_1E1AEFCCC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  v10 = v3 + v1[14];
  if (*(v10 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  v1 = sub_1E1AEF55C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{
  v1 = sub_1E1AF345C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1E1AF338C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + v8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  __swift_destroy_boxed_opaque_existential_1(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1(v0 + 312);
  __swift_destroy_boxed_opaque_existential_1(v0 + 352);
  __swift_destroy_boxed_opaque_existential_1(v0 + 392);
  __swift_destroy_boxed_opaque_existential_1(v0 + 432);
  __swift_destroy_boxed_opaque_existential_1(v0 + 472);
  __swift_destroy_boxed_opaque_existential_1(v0 + 512);
  if (*(v0 + 576))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 552);
  }

  if (*(v0 + 616))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 592);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 632);
  __swift_destroy_boxed_opaque_existential_1(v0 + 672);

  return swift_deallocObject();
}

uint64_t objectdestroy_32Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);
  __swift_destroy_boxed_opaque_existential_1(v0 + 336);
  __swift_destroy_boxed_opaque_existential_1(v0 + 376);
  __swift_destroy_boxed_opaque_existential_1(v0 + 416);
  __swift_destroy_boxed_opaque_existential_1(v0 + 456);
  __swift_destroy_boxed_opaque_existential_1(v0 + 496);
  __swift_destroy_boxed_opaque_existential_1(v0 + 536);
  __swift_destroy_boxed_opaque_existential_1(v0 + 576);
  __swift_destroy_boxed_opaque_existential_1(v0 + 616);
  __swift_destroy_boxed_opaque_existential_1(v0 + 656);
  __swift_destroy_boxed_opaque_existential_1(v0 + 696);
  __swift_destroy_boxed_opaque_existential_1(v0 + 736);
  __swift_destroy_boxed_opaque_existential_1(v0 + 776);
  __swift_destroy_boxed_opaque_existential_1(v0 + 816);

  return swift_deallocObject();
}

uint64_t sub_1E1305374(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E143F344;

  return v6(a1);
}

uint64_t sub_1E130546C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E130B5D8;

  return sub_1E1305374(a1, v4);
}

uint64_t sub_1E1305524(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5DC;

  return sub_1E13057AC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E1305600(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E130B5D8;

  return sub_1E13056E4(a1, v6, v1 + v5);
}

uint64_t sub_1E13056E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v3[26] = v4;
  v3[27] = *(v4 + 64);
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E13058A0, 0, 0);
}

uint64_t sub_1E13057AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1E1973C94;

  return v9(v6 + 16);
}

uint64_t sub_1E13058A0()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  sub_1E1AF421C();
  sub_1E1AF41BC();
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  sub_1E1300E44(v3, v1);
  v5 = *(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  sub_1E1302440(v1, v6 + ((v5 + 24) & ~v5));

  sub_1E1AF4E1C();

  __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v0[10]);
  sub_1E1300E44(v3, v1);
  v7 = (v5 + 16) & ~v5;
  v8 = swift_allocObject();
  sub_1E1302440(v1, v8 + v7);
  sub_1E1AF4E1C();

  __swift_project_boxed_opaque_existential_1Tm(v0 + 12, v0[15]);
  sub_1E1300E44(v3, v1);
  v9 = swift_allocObject();
  sub_1E1302440(v1, v9 + v7);
  sub_1E1AF4E1C();

  v11 = v0[20];
  v10 = v0[21];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 17, v11);
  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_1E17AECBC;

  return MEMORY[0x1EEE17190](v11, v10);
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1E1305BA8(uint64_t a1)
{
  v2 = sub_1E1AF361C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF4F6C();
  v10[1] = a1;

  sub_1E1AF35FC();
  sub_1E1305D94();
  sub_1E1306784();
  sub_1E1AF421C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94C0);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;
  (*(v3 + 16))(v7 + v6, v5, v2);

  sub_1E1AF41AC();
  sub_1E1AF41EC();
  v8 = sub_1E1AF41EC();

  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t sub_1E1305D94()
{
  v1 = v0;
  v2 = type metadata accessor for ASKBootstrapV2(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF361C();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v31 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94A0);
  v16 = _s11AppStoreKit20NWPathNetworkInquiryCACycfC_0();
  v39 = type metadata accessor for NWPathNetworkInquiry();
  v40 = &protocol witness table for NWPathNetworkInquiry;
  v38 = v16;
  sub_1E1AF35FC();
  v17 = type metadata accessor for InitialBag(0);
  sub_1E1300E44(v0, v4);
  v18 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v19 = swift_allocObject();
  sub_1E1302440(v4, v19 + v18);
  MEMORY[0x1E68FC300](v17, &unk_1E1B32D00, v19, v17);
  v20 = sub_1E1AF539C();
  v21 = v32;
  MEMORY[0x1E68FC300](v20, &unk_1E1B32D08, 0, v20);
  v22 = type metadata accessor for ASKBagContract();
  sub_1E1300E44(v1, v4);
  v23 = swift_allocObject();
  sub_1E1302440(v4, v23 + v18);
  v24 = v34;
  MEMORY[0x1E68FC300](v22, &unk_1E1B32D18, v23, v22);
  sub_1E1AF421C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94C0);
  v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1E1B02CC0;
  v27 = v35;
  (*(v7 + 16))(v26 + v25, v37, v35);
  sub_1E1AF41AC();
  sub_1E1AF41CC();
  sub_1E1AF41CC();
  v28 = sub_1E1AF41CC();

  v29 = *(v7 + 8);
  v29(v24, v27);
  v29(v21, v27);
  v29(v14, v27);
  v29(v37, v27);
  return v28;
}

id _s11AppStoreKit20NWPathNetworkInquiryCACycfC_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6B50);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13[-v2];
  result = [objc_opt_self() sharedDefaultEvaluator];
  if (result)
  {
    v5 = result;
    type metadata accessor for NWPathNetworkInquiry();
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    v7 = OBJC_IVAR____TtC11AppStoreKit20NWPathNetworkInquiry__isInternetOffline;
    v15 = 0;
    sub_1E1AF1FFC();
    (*(v1 + 32))(v6 + v7, v3, v0);
    *(v6 + 16) = v5;
    v14 = v5;
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v8 = v5;
    v9 = sub_1E1AEFB6C();

    v10 = *(v6 + 24);
    *(v6 + 24) = v9;

    v11 = [*(v6 + 16) path];
    v12 = [v11 status];

    swift_getKeyPath();
    swift_getKeyPath();
    v13[15] = (v12 & 0xFFFFFFFFFFFFFFFDLL) != 1;

    sub_1E1AF204C();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E1306410@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 path];
  *a2 = result;
  return result;
}

uint64_t sub_1E130644C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t type metadata accessor for NWPathNetworkInquiry()
{
  result = qword_1EE1ED768;
  if (!qword_1EE1ED768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E13064D8()
{
  sub_1E1306580();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E1306580()
{
  if (!qword_1EE1E3CA8)
  {
    v0 = sub_1E1AF205C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1E3CA8);
    }
  }
}

uint64_t sub_1E13065FC()
{
  result = sub_1E1AF539C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ASKBagContract()
{
  result = qword_1EE1F45C0;
  if (!qword_1EE1F45C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E13066E0()
{
  result = sub_1E1AF539C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E1306784()
{
  v1 = v0;
  v2 = type metadata accessor for ASKBootstrapV2(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v41 = v5;
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF361C();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = v45;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v42 = &v38 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v43 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94F0);
  sub_1E1300E44(v1, v6);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_1E1302440(v6, v19 + v18);
  v40 = v16;
  MEMORY[0x1E68FC300](v17, &unk_1E1B32CC0, v19, v17);
  v20 = type metadata accessor for JSInvalidSignatureReporter();
  MEMORY[0x1E68FC300](v20, &unk_1E1B32CC8, 0, v20);
  v21 = *(v3 + 64);
  v22 = type metadata accessor for AppStoreLocalizerFactory();
  v23 = v39;
  sub_1E134FD1C(v39 + v21, v47, &qword_1ECEB8230);
  v24 = swift_allocObject();
  v25 = v47[1];
  *(v24 + 16) = v47[0];
  *(v24 + 32) = v25;
  *(v24 + 48) = v48;
  v26 = v42;
  MEMORY[0x1E68FC300](v22, &unk_1E1B32CD8, v24, v22);
  v27 = sub_1E1AF496C();
  sub_1E1300E44(v23, v6);
  v28 = swift_allocObject();
  sub_1E1302440(v6, v28 + v18);
  v29 = v44;
  MEMORY[0x1E68FC300](v27, &unk_1E1B32CE8, v28, v27);
  sub_1E1AF421C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94C0);
  v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1E1B02CC0;
  v32 = v16;
  v33 = v46;
  (*(v8 + 16))(v31 + v30, v32, v46);
  sub_1E1AF41AC();
  v34 = v43;
  sub_1E1AF41CC();
  sub_1E1AF41CC();
  v35 = sub_1E1AF41CC();

  v36 = *(v8 + 8);
  v36(v29, v33);
  v36(v26, v33);
  v36(v34, v33);
  v36(v40, v33);
  return v35;
}

uint64_t sub_1E1306BFC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t type metadata accessor for AppStoreLocalizerFactory()
{
  result = qword_1EE1F88B8;
  if (!qword_1EE1F88B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1306C98()
{
  result = sub_1E1AF4D3C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E1306D58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1E1306DCC(void *a1)
{
  result = [a1 data];
  if (result)
  {
    v2 = result;
    v3 = sub_1E1AF5C7C();

    v4 = sub_1E14ACF0C(v3);

    if (v4)
    {
      if (*(v4 + 16) && (v5 = sub_1E13018F8(6447476, 0xE300000000000000), (v6 & 1) != 0))
      {
        v7 = (*(v4 + 56) + 16 * v5);
        v9 = *v7;
        v8 = v7[1];

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v11 = Strong;
          StoreTab.Identifier.init(rawValue:)(v9, v8, v16);
          v12 = v16[0];
          v13 = v16[1];
          swift_beginAccess();
          v14 = *(v11 + 16);
          v15 = *(v11 + 24);
          *(v11 + 16) = v12;
          *(v11 + 24) = v13;
          sub_1E13017D4(v14, v15);
        }
      }
    }
  }

  return result;
}

void sub_1E1306F24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1E1306FA0(void *a1)
{
  sub_1E1AF0F7C();

  sub_1E1307010(a1);
}

void sub_1E1307010(void *a1)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v2 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1E1B02CC0;
    v4 = a1;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD00000000000001FLL, 0x80000001E1B75970);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
    sub_1E1AF714C();
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    sub_1E1AF760C();
  }
}

uint64_t sub_1E1307178(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E130B5D8;

  return sub_1E1307254(a1, v1 + v5);
}

uint64_t sub_1E1307254(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_1E1AF539C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_1E1AF0F7C();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E130737C, 0, 0);
}

uint64_t sub_1E130737C()
{
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v1, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v2 = sub_1E1AF0F8C();
  v3 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v2, v3, v5, "CreateInitialBag", "", v4, 2u);
    MEMORY[0x1E6901640](v4, -1, -1);
  }

  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];

  (*(v9 + 16))(v6, v7, v8);
  sub_1E1AF0FEC();
  swift_allocObject();
  v0[16] = sub_1E1AF0FDC();
  (*(v9 + 8))(v7, v8);
  type metadata accessor for ASKBootstrapV2(0);
  v0[17] = sub_1E1AF528C();
  v10 = sub_1E13006E4(0, &qword_1EE1E3430);
  v11 = sub_1E1AF68EC();
  v12 = MEMORY[0x1E69AB720];
  v0[5] = v10;
  v0[6] = v12;
  v0[2] = v11;
  sub_1E1AF57FC();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_1E17B0738;
  v14 = v0[11];

  return MEMORY[0x1EEE179B8](v14);
}

uint64_t sub_1E1307604(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v5 + 296) = a3;
  *(v5 + 304) = a5;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  v7 = sub_1E1AF539C();
  *(v5 + 312) = v7;
  *(v5 + 320) = *(v7 - 8);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  sub_1E1AF389C();
  *(v5 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  *(v5 + 352) = swift_task_alloc();
  v8 = sub_1E1AEFCCC();
  *(v5 + 360) = v8;
  *(v5 + 368) = *(v8 - 8);
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1E13077B8, 0, 0);
}

uint64_t sub_1E13077B8()
{
  v48 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  sub_1E1307FE8(*(v0 + 304), v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 400);
  if (v4 == 1)
  {
    v6 = *(v0 + 288);
    v7 = *(v0 + 296);
    sub_1E1308058(*(v0 + 352), &unk_1ECEB4B60);
    v46 = v5;
    sub_1E13080B8(&v46, v6, v7, (v0 + 56));
    if (!*(v0 + 80))
    {
      sub_1E1308058(v0 + 56, &qword_1ECEB7B90);
      sub_1E1AF56FC();
      sub_1E1308E74(&qword_1EE1D2810, MEMORY[0x1E69AB618]);
      swift_allocError();
      sub_1E1AF569C();
      swift_willThrow();

      v33 = *(v0 + 8);
      goto LABEL_11;
    }

    v8 = v0 + 16;
    sub_1E1308EC0((v0 + 56), v0 + 16);
    if (qword_1EE1E3598 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 320);
    v10 = *(v0 + 328);
    v42 = *(v0 + 312);
    v44 = *(v0 + 296);
    v40 = *(v0 + 288);
    v11 = sub_1E1AF591C();
    __swift_project_value_buffer(v11, qword_1EE216110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = *(v0 + 40);
    v13 = __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v12);
    *(v0 + 240) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 216));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v13, v12);
    sub_1E1AF385C();
    sub_1E1308058(v0 + 216, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    sub_1E1300B24(v0 + 16, v0 + 96);
    (*(v9 + 16))(v10, v40, v42);
    v15 = type metadata accessor for JSJetpackFetcher();
    swift_allocObject();
    v16 = sub_1E1309168(v0 + 96, v44, v10);
    v35 = *(v0 + 280);
    v35[3] = v15;
    v35[4] = &off_1F5C58770;
    *v35 = v16;
  }

  else
  {
    v17 = *(v0 + 384);
    v18 = *(v0 + 392);
    v19 = *(v0 + 368);
    v20 = *(v0 + 376);
    v21 = *(v0 + 360);
    v22 = *(v0 + 296);
    (*(v19 + 32))(v18, *(v0 + 352), v21);
    v47[0] = v5;
    sub_1E130BB1C(v18, v47, v17);
    *(swift_allocObject() + 16) = v22;
    *(v0 + 160) = sub_1E1AF33CC();
    *(v0 + 168) = sub_1E1308E74(&qword_1EE1E3C78, MEMORY[0x1E69AAE58]);
    v45 = (v0 + 136);
    __swift_allocate_boxed_opaque_existential_0((v0 + 136));
    (*(v19 + 16))(v20, v17, v21);
    v23 = v22;
    sub_1E1AF33EC();
    v43 = *(v19 + 8);
    v43(v17, v21);
    if (qword_1EE1E3598 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 320);
    v38 = *(v0 + 336);
    v39 = *(v0 + 312);
    v41 = *(v0 + 296);
    v37 = *(v0 + 288);
    v25 = sub_1E1AF591C();
    __swift_project_value_buffer(v25, qword_1EE216110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v26 = *(v0 + 160);
    v8 = v0 + 136;
    v27 = __swift_project_boxed_opaque_existential_1Tm(v45, v26);
    *(v0 + 272) = v26;
    v28 = __swift_allocate_boxed_opaque_existential_0((v0 + 248));
    (*(*(v26 - 8) + 16))(v28, v27, v26);
    sub_1E1AF385C();
    sub_1E1308058(v0 + 248, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    sub_1E1300B24(v45, v0 + 176);
    (*(v24 + 16))(v38, v37, v39);
    v29 = type metadata accessor for JSJetpackFetcher();
    swift_allocObject();
    v30 = sub_1E1309168(v0 + 176, v41, v38);
    v31 = *(v0 + 392);
    v32 = *(v0 + 360);
    v34 = *(v0 + 280);
    v34[3] = v29;
    v34[4] = &off_1F5C58770;
    *v34 = v30;
    v43(v31, v32);
  }

  __swift_destroy_boxed_opaque_existential_1(v8);

  v33 = *(v0 + 8);
LABEL_11:

  return v33();
}

uint64_t sub_1E1307FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1308058(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E13080B8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v77 = a4;
  v78 = a3;
  v68[1] = a2;
  v5 = sub_1E1AF353C();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v70 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v68 - v13;
  v15 = sub_1E1AEFCCC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v75 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v69 = v68 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v79 = v68 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v74 = v68 - v23;
  v76 = *a1;
  v24 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1E1B03760;
  *(v25 + 32) = @"debug";
  *(v25 + 40) = @"convergence";
  *(v25 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v26 = @"debug";
  v27 = @"convergence";
  v28 = @"internal";
  v29 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v24, v29);

  if (IsAnyOf)
  {
    sub_1E1308B38(v14);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v47 = v74;
      (*(v16 + 32))(v74, v14, v15);
      v75 = v15;
      if (qword_1EE1E3598 != -1)
      {
        swift_once();
      }

      v48 = sub_1E1AF591C();
      __swift_project_value_buffer(v48, qword_1EE216110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();

      v80 = v76;
      v49 = v79;
      sub_1E130BB1C(v47, &v80, v79);
      v51 = v71;
      v50 = v72;
      v52 = v73;
      (*(v72 + 104))(v71, *MEMORY[0x1E69AAEB0], v73);
      v53 = swift_allocObject();
      v54 = v78;
      *(v53 + 16) = v78;
      v55 = sub_1E1AF33CC();
      v56 = v77;
      v77[3] = v55;
      v56[4] = sub_1E1308E74(&qword_1EE1E3C78, MEMORY[0x1E69AAE58]);
      __swift_allocate_boxed_opaque_existential_0(v56);
      v57 = v49;
      v58 = v75;
      (*(v16 + 16))(v69, v57, v75);
      (*(v50 + 16))(v70, v51, v52);
      v59 = v54;
      sub_1E1AF33DC();
      (*(v50 + 8))(v51, v52);
      v60 = *(v16 + 8);
      v60(v79, v58);
      return (v60)(v74, v58);
    }

    sub_1E1308058(v14, &unk_1ECEB4B60);
  }

  v31 = ASKBuildTypeGetCurrent();
  v32 = sub_1E1AF5DFC();
  v34 = v33;
  if (v32 == sub_1E1AF5DFC() && v34 == v35)
  {

    v36 = v15;
LABEL_8:
    if (qword_1EE1E3598 != -1)
    {
      swift_once();
    }

    v38 = sub_1E1AF591C();
    __swift_project_value_buffer(v38, qword_1EE216110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    sub_1E1AEFCAC();
    result = (*(v16 + 48))(v11, 1, v36);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v81 = v76;
      v40 = v75;
      sub_1E130BB1C(v11, &v81, v75);
      v41 = *(v16 + 8);
      v41(v11, v36);
      v42 = swift_allocObject();
      v43 = v78;
      *(v42 + 16) = v78;
      v44 = sub_1E1AF33CC();
      v45 = v77;
      v77[3] = v44;
      v45[4] = sub_1E1308E74(&qword_1EE1E3C78, MEMORY[0x1E69AAE58]);
      __swift_allocate_boxed_opaque_existential_0(v45);
      (*(v16 + 16))(v79, v40, v36);
      v46 = v43;
      sub_1E1AF33EC();
      return (v41)(v40, v36);
    }

    return result;
  }

  v37 = sub_1E1AF74AC();

  v36 = v15;
  if (v37)
  {
    goto LABEL_8;
  }

  if (qword_1EE1D2278 != -1)
  {
    swift_once();
  }

  v61 = qword_1EE1E3140;
  sub_1E1AF527C();
  *(swift_allocObject() + 16) = v76;
  v62 = swift_allocObject();
  v63 = v78;
  *(v62 + 16) = v78;
  v64 = sub_1E1AF340C();
  v65 = v77;
  v77[3] = v64;
  v65[4] = sub_1E1308E74(&qword_1EE1D2A70, MEMORY[0x1E69AAE70]);
  __swift_allocate_boxed_opaque_existential_0(v65);
  v66 = v63;
  v67 = v61;
  return sub_1E1AF341C();
}

uint64_t sub_1E1308AD8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1308B38@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_1E1AEFCCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1F1278 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  __swift_project_value_buffer(v9, qword_1EE1F1280);
  sub_1E1AF3C8C();

  if (v12[1])
  {
    sub_1E1AEFCAC();

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v8, v4, v5);
      LOBYTE(v12[0]) = 0;
      sub_1E130BB1C(v8, v12, a1);
      (*(v6 + 8))(v8, v5);
      v10 = 0;
      return (*(v6 + 56))(a1, v10, 1, v5);
    }

    sub_1E1308058(v4, &unk_1ECEB4B60);
  }

  v10 = 1;
  return (*(v6 + 56))(a1, v10, 1, v5);
}

uint64_t sub_1E1308DC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  __swift_allocate_value_buffer(v0, qword_1EE1F1280);
  __swift_project_value_buffer(v0, qword_1EE1F1280);
  return sub_1E1AF3F9C();
}

uint64_t sub_1E1308E3C()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3140 = result;
  return result;
}

uint64_t sub_1E1308E74(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1308EC0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for JSJetpackFetcher()
{
  result = qword_1EE1F2B08;
  if (!qword_1EE1F2B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1308F24()
{
  sub_1E1AF338C();
  if (v0 <= 0x3F)
  {
    sub_1E1309104(319, &qword_1EE1E3AF0, &qword_1ECEBB648, &unk_1E1B46D20, MEMORY[0x1E69AB0C0]);
    if (v1 <= 0x3F)
    {
      sub_1E1309104(319, &qword_1EE1E3AD8, &unk_1ECEB3DD8, &unk_1E1B09E50, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E1309104(319, &qword_1EE1E3AE8, &qword_1ECEB3DD0, &unk_1E1B09E48, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1E1309104(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_1E1309168(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v75 = a3;
  v69 = a2;
  v80 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB698);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v64 = v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB6A0);
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v71 = v54 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB650);
  v65 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v63 = v54 - v10;
  v57 = sub_1E1AF34CC();
  v11 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E1AF338C();
  v14 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v60 = v15;
  v56 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF345C();
  v72 = *(v16 - 8);
  v73 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v70 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v76 = v54 - v19;
  v20 = sub_1E1AF349C();
  MEMORY[0x1EEE9AC00](v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB6A8);
  swift_allocObject();
  *(v3 + 16) = sub_1E1AF3CAC();
  result = [objc_allocWithZone(MEMORY[0x1E696EB60]) init];
  if (result)
  {
    *(v3 + OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher_virtualMachine) = result;
    v23 = OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher____lazy_storage___indexPipeline;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3DD8);
    (*(*(v24 - 8) + 56))(v5 + v23, 1, 1, v24);
    v25 = OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher____lazy_storage___sourceDataPipeline;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3DD0);
    v27 = *(*(v26 - 8) + 56);
    v74 = v5;
    v27(v5 + v25, 1, 1, v26);
    v78 = &type metadata for Feature;
    v79 = sub_1E1309EB0();
    LOBYTE(v77) = 16;
    LOBYTE(v25) = sub_1E1AF056C();
    __swift_destroy_boxed_opaque_existential_1(&v77);
    if (v25)
    {
      v28 = v14;
      v55 = v4;
      sub_1E1AF348C();
    }

    else
    {
      v29 = sub_1E1AF34EC();
      v30 = sub_1E1AF34DC();
      if (v4)
      {

        v31 = sub_1E1AF539C();
        (*(*(v31 - 8) + 8))(v75, v31);
        __swift_destroy_boxed_opaque_existential_1(v80);
        v32 = v74;

        sub_1E1308058(v32 + OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher____lazy_storage___indexPipeline, &qword_1ECEBB678);
        sub_1E1308058(v32 + OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher____lazy_storage___sourceDataPipeline, &qword_1ECEBB660);
        type metadata accessor for JSJetpackFetcher();
        swift_deallocPartialClassInstance();
        return v32;
      }

      v28 = v14;
      v55 = 0;
      v78 = v29;
      v79 = MEMORY[0x1E69AAE98];
      *&v77 = v30;
      sub_1E1AF347C();
    }

    sub_1E1AF34BC();
    swift_allocObject();
    v33 = sub_1E1AF34AC();
    sub_1E1300B24(v80, &v77);
    v54[1] = v33;

    sub_1E1AF527C();
    sub_1E1AF344C();
    (*(v11 + 104))(v13, *MEMORY[0x1E69AAE90], v57);
    v78 = sub_1E1AF351C();
    v79 = MEMORY[0x1E69AAEA8];
    __swift_allocate_boxed_opaque_existential_0(&v77);
    sub_1E1AF350C();
    v34 = v56;
    sub_1E1AF336C();
    v35 = OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher_jetpackLoader;
    v57 = *(v28 + 32);
    v36 = v74;
    v37 = v58;
    v57(v74 + OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher_jetpackLoader, v34, v58);
    v38 = *(v28 + 16);
    v38(v34, v36 + v35, v37);
    sub_1E1AF592C();
    v39 = v28 + 8;
    (*(v28 + 8))(v34, v37);
    v40 = v72;
    (*(v72 + 16))(v70, v76, v73);
    v38(v34, v36 + v35, v37);
    sub_1E1300B24(v80, &v77);
    v41 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v42 = (v59 + *(v39 + 72) + v41) & ~*(v39 + 72);
    v43 = (v60 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = v73;
    (*(v40 + 32))(v44 + v41, v70, v73);
    v57(v44 + v42, v34, v37);
    sub_1E1308EC0(&v77, v44 + v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB648);
    sub_1E1302CD4(&qword_1EE1E39E8, &qword_1ECEBB6A0);
    v46 = v62;
    v47 = v71;
    v48 = sub_1E1AF3D6C();

    (*(v61 + 8))(v47, v46);
    *&v77 = v48;
    v49 = v64;
    sub_1E1AF3F7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB6B0);
    sub_1E1302CD4(&qword_1EE1E3AB8, &qword_1ECEBB6B0);
    v50 = sub_1E1AF3D9C();
    (*(v66 + 8))(v49, v67);

    *&v77 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB6B8);
    sub_1E1302CD4(&qword_1EE1E3AC0, &qword_1ECEBB6B8);
    v51 = v63;
    sub_1E1AF3D5C();

    v52 = v51;
    v32 = v74;
    (*(v65 + 32))(v74 + OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher_bundlePipeline, v52, v68);
    sub_1E1AF412C();

    v53 = sub_1E1AF539C();
    (*(*(v53 - 8) + 8))(v75, v53);
    __swift_destroy_boxed_opaque_existential_1(v80);
    (*(v72 + 8))(v76, v45);
    return v32;
  }

  __break(1u);
  return result;
}

uint64_t BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  if (a3)
  {

    return sub_1E1484D38(a4, a5, a6 & 1, a7, a8);
  }

  else
  {
    v15 = v8;
    v17 = *a1;
    swift_beginAccess();
    v18 = *(v8 + 16);
    if (*(v18 + 16) && (v19 = sub_1E130A768(v17), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v21 = MEMORY[0x1E69E7CC0];
    }

    v22 = swift_allocObject();
    *(v22 + 16) = a7;
    *(v22 + 24) = a8;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1E1309F04(0, v21[2] + 1, 1, v21);
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1E1309F04((v23 > 1), v24 + 1, 1, v21);
    }

    v21[2] = v24 + 1;
    v25 = &v21[6 * v24];
    v25[4] = sub_1E1402014;
    v25[5] = v22;
    v25[6] = a2;
    v25[7] = a4;
    v25[8] = a5;
    *(v25 + 72) = a6 & 1;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v15 + 16);
    *(v15 + 16) = 0x8000000000000000;
    sub_1E130A07C(v21, v17, isUniquelyReferenced_nonNull_native);
    *(v15 + 16) = v27;
    return swift_endAccess();
  }
}

uint64_t sub_1E1309E78()
{

  return swift_deallocObject();
}

unint64_t sub_1E1309EB0()
{
  result = qword_1EE1E4A10;
  if (!qword_1EE1E4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4A10);
  }

  return result;
}

void *sub_1E1309F04(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2778);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E130A07C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E130A34C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1E1417798();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1E130A428(v14, a3 & 1);
    v9 = sub_1E130A34C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_1E130A71C(v9, a2, a1, v19);
  }
}

const char *Feature.feature.getter()
{
  result = "age_ratings_assurance_2025A";
  switch(*v0)
  {
    case 1:
      result = "annotations_update_2025A";
      break;
    case 2:
      result = "aligned_region_artwork_2025A";
      break;
    case 3:
      result = "coming_soon_enhancements";
      break;
    case 4:
      result = "hide_arcade_header_on_arcade_tab";
      break;
    case 5:
      result = "measurement_with_labelplaceholder";
      break;
    case 6:
      result = "store_personalization_onboarding";
      break;
    case 7:
      result = "shelves_2_0_product";
      break;
    case 8:
      result = "shelf_header";
      break;
    case 9:
      result = "game_center_shelf_header";
      break;
    case 0xA:
      result = "search_tags";
      break;
    case 0xB:
      result = "product_capability_update_2024E";
      break;
    case 0xC:
      result = "open_in_story_share_sheet";
      break;
    case 0xD:
      result = "product_accessibility_support_2025A";
      break;
    case 0xE:
      result = "pause_resume_offer_button_label_2025E";
      break;
    case 0xF:
      result = "voyager_bundles_2025A";
      break;
    case 0x10:
      result = "jetpackassetd";
      break;
    case 0x11:
      result = "glass_offer_button_2025A";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E130A34C(unsigned __int8 a1)
{
  sub_1E1AF762C();
  MEMORY[0x1E6900360](a1);
  v2 = sub_1E1AF767C();
  return sub_1E130A3B4(a1, v2);
}

unint64_t sub_1E130A3B4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1E130A428(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6040);
  v30 = a2;
  result = sub_1E1AF72AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1E1AF762C();
      MEMORY[0x1E6900360](v20);
      result = sub_1E1AF767C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1E130A6BC()
{
  result = qword_1EE1F4238;
  if (!qword_1EE1F4238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F4238);
  }

  return result;
}

unint64_t sub_1E130A724(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1E130A770(uint64_t a1)
{
  v3 = *(sub_1E1AF345C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1E1AF338C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  return sub_1E130A878(a1, v1 + v4, v1 + v7, v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E130A878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = &v23 - v6;
  v7 = sub_1E1AF338C();
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = sub_1E1AF345C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10, v13);
  (*(v8 + 16))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v7);
  sub_1E1300B24(v26, v28);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v15, v14, v10);
  (*(v8 + 32))(v17 + v16, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  sub_1E1308EC0(v28, v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB6C0);
  v18 = sub_1E1AF588C();
  v19 = sub_1E1AF649C();
  v20 = v27;
  (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1E1B460B8;
  v21[5] = v17;
  v21[6] = v18;

  sub_1E1974308(0, 0, v20, &unk_1E1B460C8, v21);

  return v18;
}

uint64_t sub_1E130ABCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E130AC3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5DC;

  return sub_1E130AD18(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E130AD18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB648);
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1E1973E84;

  return v11(v8);
}

id static PersonalizedMediaTokenService.mediaTokenAccountDidChangeNotification.getter()
{
  if (qword_1EE1D6330 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1D6340;

  return v1;
}

uint64_t sub_1E130AEB0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E1AF345C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E1AF338C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E130B5D8;

  return sub_1E130B058(a1, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1E130B020()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D6340 = result;
  return result;
}

uint64_t sub_1E130B058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E1AEFCCC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB6C8);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E130B6D0, 0, 0);
}

void sub_1E130B320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1E130B348(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1E1AF0FBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF0F7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v10, qword_1EE1F7BE8);
  v11 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v12 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1E6901640](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E130B5DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E130B6D0()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_1E1AF33AC();
  *v3 = v0;
  v3[1] = sub_1E19595E8;
  v5 = v0[11];
  v6 = MEMORY[0x1E69AAE48];

  return MEMORY[0x1EEE15D70](v5, &unk_1E1B460E0, v2, v4, v6);
}

uint64_t objectdestroy_44Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_44Tm_0()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[5];
  v4 = sub_1E1AF537C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);
  v5 = v2 + v1[8];
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (*(v2 + v1[9]))
  {
  }

  v6 = v1[13];
  v7 = sub_1E1AEFCCC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v9 = v2 + v1[14];
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1E130B9E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB650);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  sub_1E1302CD4(&qword_1EE1E3AF8, &qword_1ECEBB650);
  sub_1E1AF3D7C();
  v4 = sub_1E1AF429C();

  return v4;
}

uint64_t sub_1E130BB1C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a2;
  if (sub_1E1AEFBCC() == 0x6B63617074656ALL && v8 == 0xE700000000000000)
  {

LABEL_5:
    v10 = sub_1E1AEFCCC();
    v11 = *(*(v10 - 8) + 16);

    return v11(a3, a1, v10);
  }

  v9 = sub_1E1AF74AC();

  if (v9)
  {
    goto LABEL_5;
  }

  v13 = sub_1E1AEFCCC();
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  LOBYTE(v19[0]) = v7;
  v14 = sub_1E130BE6C();
  v15 = sub_1E130C178(7565161, 0xE300000000000000, v19, v14 & 1, 1);
  v17 = v16;
  if (qword_1EE1E3598 != -1)
  {
    swift_once();
  }

  v18 = sub_1E1AF591C();
  __swift_project_value_buffer(v18, qword_1EE216110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v19[3] = MEMORY[0x1E69E6158];
  v19[0] = v15;
  v19[1] = v17;

  sub_1E1AF385C();
  sub_1E1308058(v19, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  sub_1E1AEFBFC();
}

uint64_t sub_1E130BE6C()
{
  v0 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B03760;
  *(v1 + 32) = @"debug";
  *(v1 + 40) = @"convergence";
  *(v1 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v2 = @"debug";
  v3 = @"convergence";
  v4 = @"internal";
  v5 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v0, v5);

  if (IsAnyOf)
  {
    sub_1E1AF44CC();
    sub_1E1AF44BC();
    if (qword_1EE1F1268 != -1)
    {
      swift_once();
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
    __swift_project_value_buffer(v7, qword_1EE216CA8);
    sub_1E1AF3C8C();

    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1E130BFF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_allocate_value_buffer(v0, qword_1EE216CA8);
  __swift_project_value_buffer(v0, qword_1EE216CA8);
  return sub_1E1AF3F9C();
}

char *sub_1E130C06C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E130C178(uint64_t a1, uint64_t a2, char *a3, char a4, char a5)
{
  v6 = *a3;
  v7 = qword_1E1B28AD0[v6];
  v8 = qword_1E1B28AE8[v6];
  v25 = a1;
  v26 = a2;
  v27 = xmmword_1E1B28AB0;
  v28 = v7;
  v29 = v8;
  v9 = 0x6C616E7265746E69;
  if ((a4 & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 0xE800000000000000;
  if ((a4 & 1) == 0)
  {
    v10 = 0;
  }

  v30 = v9;
  v31 = v10;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
LABEL_6:
  if (v12 <= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 + 1;
  v16 = 16 * v12 + 40;
  while (v12 != 4)
  {
    if (v15 == ++v12)
    {
      __break(1u);
      return result;
    }

    v17 = v16 + 16;
    v18 = *&v24[v16];
    v16 += 16;
    if (v18)
    {
      v19 = *&v24[v17 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E130C06C(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1E130C06C((v20 > 1), v21 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v21 + 1;
      v22 = v13 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v18;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  sub_1E130C384();
  v23 = sub_1E1AF5D6C();

  if (a5)
  {
    MEMORY[0x1E68FECA0](0x6B63617074656A2ELL, 0xE800000000000000);
  }

  return v23;
}

unint64_t sub_1E130C384()
{
  result = qword_1EE1E34E0;
  if (!qword_1EE1E34E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB2D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E34E0);
  }

  return result;
}

uint64_t sub_1E130C3E8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E130B5DC;

  return sub_1E130C498(a1, a2, v6);
}

uint64_t sub_1E130C498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E130C4BC, 0, 0);
}

uint64_t sub_1E130C4BC()
{
  sub_1E1AF358C();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1E130C568;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE15D10](v2, v0 + 16);
}

uint64_t sub_1E130C568()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E1959AD0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1E130C6C4(uint64_t *a1@<X8>)
{
  v2 = 0x68636E75616CLL;
  if (*v1)
  {
    v2 = 0x746977536B736174;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006863;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL sub_1E130C7FC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1E130C82C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1E130C858@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1E130C944@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1E130C988@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1AF5DFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E130C9D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1E134FCE4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1E130CA40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E130CA60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BagOfflinePolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E130CB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AEFCCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E130CC34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AEFCCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E130CCD8()
{

  return swift_deallocObject();
}

id sub_1E130CD18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_placeholderColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

__n128 sub_1E130CDAC@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_imageSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id sub_1E130CE6C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_clipImageToBounds;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsLayout];
}

uint64_t sub_1E130CEE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_style;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1E130CF3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_artworkTintColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1E130CFB4(void *a1, void *a2)
{
  v2 = *a1;
  [*(*a2 + OBJC_IVAR____TtC11AppStoreKit11ArtworkView_imageView) setPreferredSymbolConfiguration_];
  sub_1E1351A6C(v2);
}

id sub_1E130CFFC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC11AppStoreKit11ArtworkView_imageView) isHidden];
  *a2 = result;
  return result;
}

void sub_1E130D06C(Class *a1, uint64_t a2, Swift::Bool a3)
{
  v3.value.super.isa = *a1;
  v3.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v3, a3);
}

uint64_t sub_1E130D09C@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.seeAllAction.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1E130D110()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E130D148()
{

  return swift_deallocObject();
}

uint64_t sub_1E130D188(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_1E130D1C4@<X0>(void *a1@<X8>)
{
  v2 = sub_1E135FE00();
  *a1 = v2;

  return v2;
}

__n128 sub_1E130D238(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1E130D2EC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E13607E4();
}

uint64_t sub_1E130D360()
{

  return swift_deallocObject();
}

uint64_t sub_1E130D398()
{

  return swift_deallocObject();
}

uint64_t sub_1E130D3F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E130D430@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1362EF0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E130D4A4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E137A53C();
}

uint64_t sub_1E130D52C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E137A580(&qword_1EE2157E8);
  a1[1] = v2;
}

uint64_t sub_1E130D574(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1E1363B54(v1, v2);
}

uint64_t sub_1E130D5C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1363BB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E130D624()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E130D6E0()
{

  return swift_deallocObject();
}

uint64_t sub_1E130D718()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2870);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E130D83C()
{

  return swift_deallocObject();
}

uint64_t sub_1E130D920()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E130D990()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E130D9FC()
{
  v1 = (type metadata accessor for MSOPageIntent() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E130DB44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E130DBA0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1E130DC40()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1E130DCC4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E130DD3C()
{
  v1 = (type metadata accessor for ArticlePageIntent() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  __swift_destroy_boxed_opaque_existential_1(v3);
  v4 = v1[7];
  v5 = sub_1E1AEFCCC();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1E130DE98()
{
  v1 = (type metadata accessor for TodayPageIntent() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  __swift_destroy_boxed_opaque_existential_1(v3);
  v4 = v1[7];
  v5 = sub_1E1AEFCCC();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1E130DFD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E130E154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E130E1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E130E230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1E130E280@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1E130E2D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E130E378@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 40, a2, &qword_1ECEB2588);
}

uint64_t sub_1E130E40C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_pageEnterGate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E130E588()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E130E5C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_shouldDisplayMedia;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E130E618(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_shouldDisplayMedia;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 sub_1E130E684(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E130E690(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for ShelfLayoutContext();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1E130E7C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for ShelfLayoutContext();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1E130E960()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E130E99C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E130E9F0()
{
  v1 = sub_1E1AF330C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E130EACC()
{

  return swift_deallocObject();
}

uint64_t sub_1E130EB08()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E130EB44()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E130EB94()
{

  return swift_deallocObject();
}

uint64_t sub_1E130EBE0()
{

  return swift_deallocObject();
}

uint64_t sub_1E130EC18()
{
  v1 = sub_1E1AF09CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E130ECC8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E130ED00()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50) - 8);
  v2 = (*(*v1 + 80) + 168) & ~*(*v1 + 80);

  v3 = v1[14];
  v4 = sub_1E1AEFEAC();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E130EE80()
{

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  return swift_deallocObject();
}

uint64_t sub_1E130EEE0()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E130EF38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1E130EFF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1E130F030()
{

  return swift_deallocObject();
}

uint64_t sub_1E130F068@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_uber;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E130F0C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E130F124(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E130F188@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_pageTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E130F1E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E130F23C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_5JetUI12AnyDimension_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E130F2A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E130F2E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E130F33C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E130F3A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E130F430()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E130F46C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E130F4A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE2155E8;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E130F4FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EE2155E8;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E130F550@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE2155E0;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E130F5B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE2155D8;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E130F618@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_1EE2155D0);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E130F674@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE2155B0;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E130F6CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EE2155B0;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E130F7A4()
{

  return swift_deallocObject();
}

uint64_t sub_1E130F7F0()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E130F828()
{

  if (*(v0 + 160) != 1)
  {

    sub_1E137B778(*(v0 + 184), *(v0 + 192));
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E130F8EC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E130FAE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 72);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E130FB30(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
  return swift_unknownObjectWeakAssign();
}

void sub_1E130FBA0(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69ABBA8];
  a1[3] = MEMORY[0x1E69E63B0];
  a1[4] = v1;
  *a1 = 0;
}

uint64_t sub_1E130FBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AEFCCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E130FC68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AEFCCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E130FD0C()
{

  return swift_deallocObject();
}

uint64_t sub_1E130FD50()
{

  return swift_deallocObject();
}

uint64_t sub_1E130FD90()
{

  return swift_deallocObject();
}

uint64_t sub_1E130FDE0()
{

  return swift_deallocObject();
}

uint64_t sub_1E130FE1C@<X0>(uint64_t *a1@<X8>)
{
  result = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  *a1 = result;
  return result;
}

void sub_1E130FE48(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1E1AF5DBC();
  [v3 setInteger:v2 forKey:v4];
}

uint64_t sub_1E130FEC0@<X0>(uint64_t *a1@<X8>)
{
  result = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();
  *a1 = result;
  return result;
}

void sub_1E130FEEC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1E1AF5DBC();
  [v3 setInteger:v2 forKey:v4];
}

uint64_t sub_1E130FF64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF12AC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E130FFD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF12AC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E1310040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1E1310088(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1E13100CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E1310144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E13101C0()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E13101F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E1310254@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoUrl;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a2, &unk_1ECEB4B60);
}

id sub_1E13102C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playerItem;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1E131032C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E13FE504(v1);
}

uint64_t sub_1E13103AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1310408(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E131046C()
{

  return swift_deallocObject();
}

uint64_t sub_1E13104AC()
{

  return swift_deallocObject();
}

uint64_t sub_1E13104E4()
{

  return swift_deallocObject();
}

uint64_t sub_1E131052C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1310574()
{

  return swift_deallocObject();
}

uint64_t sub_1E13105B0()
{
  v1 = sub_1E1AEFCCC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1310674@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1E13106C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 72, a2, &qword_1ECEB2DF0);
}

uint64_t sub_1E1310728()
{

  return swift_deallocObject();
}

uint64_t sub_1E131076C()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E13107A4()
{

  return swift_deallocObject();
}

uint64_t sub_1E13107E4()
{

  return swift_deallocObject();
}

uint64_t sub_1E131081C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E131085C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_1EE2156B8);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E13108B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE2156C0;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E1310918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE2156C8;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E1310970(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EE2156C8;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E13109E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF524C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E1310A94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF524C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1310B94()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1310BCC()
{

  return swift_deallocObject();
}

uint64_t sub_1E1310C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E1310CB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1310D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF127C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E1310E18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AF127C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E1310ED4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1310F14()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1310F64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1310FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFCCC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E1311064(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AEFCCC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E1311124(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF3EFC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1E13111D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF3EFC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1311278()
{

  return swift_deallocObject();
}

uint64_t sub_1E13112B0()
{
  v1 = sub_1E1AF539C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E13113A0()
{

  return swift_deallocObject();
}

uint64_t sub_1E13113F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ScaledSpaceMetric();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1E13114A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ScaledSpaceMetric();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E131154C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF242C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E131157C(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BB8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for ScaledSpaceMetric();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

char *sub_1E1311700(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BB8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for ScaledSpaceMetric();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E1311888@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1AF244C();
  *a1 = result;
  return result;
}

uint64_t sub_1E13118E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3C00);
  sub_1E1302CD4(&qword_1ECEB3C08, &qword_1ECEB3C00);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E1311978()
{
  sub_1E1AF2C6C();
  sub_1E1AF2C4C();
  sub_1E1AF25AC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E1311A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E1311B68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E1311C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF12AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1E1311D58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AF12AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1E1311E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_1E1311E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_1E1311F10()
{

  return swift_deallocObject();
}

uint64_t sub_1E1311F58()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1311F90()
{

  return swift_deallocObject();
}

uint64_t sub_1E1311FD4()
{
  v1 = sub_1E1AF539C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + v5);

  return swift_deallocObject();
}

uint64_t sub_1E131217C()
{

  return swift_deallocObject();
}

uint64_t sub_1E13121B4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1312204()
{
  v1 = sub_1E1AF539C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 176) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E13123C4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1312410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AEFCCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E13124BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AEFCCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1312560()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1312598()
{
  sub_1E143F44C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1E13125DC()
{

  return swift_deallocObject();
}

uint64_t sub_1E131262C()
{
  v1 = sub_1E1AF0F7C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E13126B4()
{

  return swift_deallocObject();
}

uint64_t sub_1E13126EC()
{

  return swift_deallocObject();
}

uint64_t sub_1E131272C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1312788()
{

  return swift_deallocObject();
}

uint64_t sub_1E13127D0()
{

  return swift_deallocObject();
}

uint64_t sub_1E1312808()
{

  return swift_deallocObject();
}

uint64_t sub_1E1312840()
{

  return swift_deallocObject();
}

uint64_t sub_1E1312888()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E13128C0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1E1312A0C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1312A4C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1312A84()
{

  return swift_deallocObject();
}

uint64_t sub_1E1312ABC()
{

  return swift_deallocObject();
}

uint64_t sub_1E1312B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChartOrCategoryBrickContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1E1312BF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChartOrCategoryBrickContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_1E1312CB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E1312D70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1E1312E30(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E1312EF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1E1312F48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1E1312F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF0D1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E1AF0D4C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E1313094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E1AF0D1C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E1AF0D4C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E13131A8()
{

  return swift_deallocObject();
}

uint64_t sub_1E13131E0()
{
  v1 = type metadata accessor for AlertActionImplementation();
  v2 = *(*(v1 - 8) + 80);

  if (*(v0 + 48))
  {
  }

  v3 = v0 + ((v2 + 64) & ~v2);
  v4 = sub_1E1AF0D1C();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(v1 + 28);
  v6 = sub_1E1AF0D4C();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1E131333C()
{
  v1 = (type metadata accessor for AlertActionImplementation() - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));
  v3 = sub_1E1AF0D1C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[9];
  v5 = sub_1E1AF0D4C();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1E13134B4()
{

  return swift_deallocObject();
}

uint64_t sub_1E13134EC()
{
  v1 = sub_1E1AF539C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E13135EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  a2[3] = a1;
  *a2 = v3;
}

uint64_t sub_1E1313604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1E1383E78(v3 + 48, a2);
}

uint64_t sub_1E1313654@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E13136B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1313714@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationOpportunities;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E131376C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationOpportunities;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E13137C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E131383C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1313874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E13138E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E1313958(uint64_t a1)
{
  v2 = sub_1E1AF523C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4790);
    v9 = sub_1E1AF6F9C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E1498AA4(&unk_1EE1E3670, MEMORY[0x1E69AB4C0]);
      v16 = sub_1E1AF5D0C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1E1498AA4(&unk_1EE1D2818, MEMORY[0x1E69AB4C0]);
          v23 = sub_1E1AF5DAC();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E1313C90(void *a1, uint64_t a2)
{
  *(*a2 + 88) = *a1;
}

uint64_t sub_1E1313CD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  }

  return swift_deallocObject();
}

__n128 sub_1E1313D34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E1313D54@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1E1313DEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1E1313E3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1E1313E90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1E1313EDC()
{

  return swift_deallocObject();
}

uint64_t sub_1E1313F18()
{

  return swift_deallocObject();
}

uint64_t sub_1E1313F50()
{

  return swift_deallocObject();
}

uint64_t sub_1E1313F94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1313FF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1314054@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1E13140A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF524C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1E1314150(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF524C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E13141F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E14A65C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E1314220(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1E1314270()
{

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_1E13142C0()
{

  return swift_deallocObject();
}

uint64_t sub_1E1314300@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1E1314350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 72, a2, &qword_1ECEB2DF0);
}

uint64_t sub_1E13143CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF105C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E1314438(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF105C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E13144A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E13144E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFCCC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E131459C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AEFCCC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E1314654()
{

  return swift_deallocObject();
}

uint64_t sub_1E13146AC()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1314788()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1314838()
{

  return swift_deallocObject();
}

uint64_t sub_1E1314878()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E13148B8()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1E13149AC()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1314AAC()
{

  return swift_deallocObject();
}

uint64_t sub_1E1314AEC()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1314BE8()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1314CDC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1314D1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1314D84()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1314E50()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E1314E90()
{

  return swift_deallocObject();
}

uint64_t sub_1E1314EC8()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1E1AF364C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E1315018()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1E1AF364C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = (*(v6 + 64) + v7 + v8) & ~v7;

  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v6 + 8);
  v10(v0 + v8, v5);
  v10(v0 + v9, v5);

  return swift_deallocObject();
}

uint64_t sub_1E13151F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1E1315244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E13152B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E1315320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AEFCCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E13153CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AEFCCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E13155D8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1315634()
{

  return swift_deallocObject();
}

uint64_t sub_1E131566C()
{

  return swift_deallocObject();
}

uint64_t sub_1E13156B4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1315704()
{

  return swift_deallocObject();
}

uint64_t sub_1E1315744()
{

  return swift_deallocObject();
}

uint64_t sub_1E131578C()
{

  return swift_deallocObject();
}

uint64_t sub_1E13157EC()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1315844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E13158C8()
{
  swift_getWitnessTable();

  return sub_1E1AF65FC();
}

uint64_t sub_1E131594C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E13159C0()
{
  v1 = sub_1E1AEF55C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1315A84@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E14DAE54();
}

__n128 sub_1E1315AF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E1315B64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E14D8404();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E1315BC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E14D8624();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E1315C58(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1AEFE6C();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1E1315CFC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1E1AEFE6C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1315E10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1315E60(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1315EB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E1315F18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1315F74(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1315FD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1316010@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_pageTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E131606C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E13160C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1316124(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1316188@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v4 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

__n128 sub_1E1316254(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1E13162E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E134FD1C(a1 + 112, v5, &qword_1ECEB4EA8);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1E1316340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArcadeWelcomeContentLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E1316400(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArcadeWelcomeContentLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E13164BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF105C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E1316568(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF105C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E131660C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1316668(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E13166D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_cornerRadius;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E131672C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_cornerStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E1316784(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_cornerStyle;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E13167D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

id sub_1E131688C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1E13168F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E150E388(v1);
}

id sub_1E1316924@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1E131699C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderWidth;
  v5 = swift_beginAccess();
  *(v3 + v4) = v2;
  return (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE8))(v5);
}

uint64_t sub_1E1316AA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5008);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1316B7C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1316BBC()
{

  return swift_deallocObject();
}

uint64_t sub_1E1316BF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_touchMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E1316C4C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_touchMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E1316CB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1316D14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1316D78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_card;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E1316DF8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1316E30()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1316E80()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1E1316F04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E13171C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E13171F8()
{

  return swift_deallocObject();
}

uint64_t sub_1E131725C()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1317294@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = VideoViewProviding.someVideoView.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_1E13172DC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E13172F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF524C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E131739C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF524C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1317444()
{
  swift_unknownObjectRelease();
  sub_1E1360914(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1E1317498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BrickLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E1317544(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BrickLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E13175E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF127C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB52F0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1E1317728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AF127C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB52F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E131785C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit10RateAction_rating;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1E13178B8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC11AppStoreKit10RateAction_rating;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1E1317918(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5310);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5318);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1E1317A90(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5310);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5318);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E1317C14()
{
  v1 = type metadata accessor for AccessibilityFeaturesCardView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5368);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1E1AF209C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E1AF227C();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E1AF25CC();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v3 + v7, 1, v8))
    {
      (*(v9 + 8))(v3 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E1317E74(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5310);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ScaledSpaceMetric();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[11]];

  return v15(v16, a2, v14);
}

char *sub_1E1317FF8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5310);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ScaledSpaceMetric();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[11]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E1318188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF23FC();
  *a1 = result;
  return result;
}

uint64_t sub_1E13181DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5408);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E1318318(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5408);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E131845C()
{
  v1 = type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1E1AF227C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5408);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1E13185DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BB8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ScaledSpaceMetric();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E131870C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BB8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ScaledSpaceMetric();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E131883C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5478);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB54F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5470);
  sub_1E153C764();
  swift_getOpaqueTypeConformance2();
  sub_1E153C8DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E13189A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E1318A08()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E1AEFCCC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  sub_1E1361A60(*(v0 + ((v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

uint64_t sub_1E1318B7C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1318BBC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1318BF4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1318C2C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1318C64()
{
  v1 = sub_1E1AEFCCC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E1318D48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5590);
  sub_1E15443F0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E1318DB4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1318DF0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1318E28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1318E68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1318EC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1318F28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_page;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E1318F88()
{

  return swift_deallocObject();
}

uint64_t sub_1E1318FDC()
{

  return swift_deallocObject();
}

uint64_t sub_1E1319024()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E131905C()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1319094()
{

  return swift_deallocObject();
}

uint64_t sub_1E13190DC()
{

  return swift_deallocObject();
}

uint64_t sub_1E1319114()
{

  return swift_deallocObject();
}

uint64_t sub_1E131915C()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E13191A4()
{

  return swift_deallocObject();
}

uint64_t sub_1E13191FC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E1319244()
{

  return swift_deallocObject();
}

uint64_t sub_1E131927C()
{

  return swift_deallocObject();
}

uint64_t sub_1E13192C4()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E13192FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E1319334@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1319390(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E13193F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_reasonForNoInternet;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1E1319484@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_error;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return v5;
}

void sub_1E13194E0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  ErrorPresenter.error.setter(v1);
}

uint64_t sub_1E1319514()
{

  return swift_deallocObject();
}

uint64_t sub_1E131955C()
{
  sub_1E1AF5F0C();
}

void sub_1E13195D0(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E69;
  if (*v1)
  {
    v2 = 0x657263736C6C7566;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006E65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1E1319610@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1E1319658(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_1E13196B4()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E13196EC()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E13197A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E131986C()
{

  return swift_deallocObject();
}

uint64_t sub_1E13198AC()
{

  return swift_deallocObject();
}

void sub_1E1319954(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 textContainer];
  v4 = [v3 maximumNumberOfLines];

  *a2 = v4;
}

void sub_1E13199D0(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 textContainer];
  v4 = [v3 lineBreakMode];

  *a2 = v4;
}

uint64_t sub_1E1319A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a2, &qword_1ECEB34E0);
}

uint64_t sub_1E1319AC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a2, &qword_1ECEB5A88);
}

uint64_t sub_1E1319BF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1E1319C50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1E1579EB0();
}

void *sub_1E1319CA8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E8))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1E1319D1C(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1F0))(&v4);
}

uint64_t sub_1E1319D8C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1319DEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  return sub_1E13E4A9C(v3 + v4, a2);
}

uint64_t sub_1E1319E4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1E1319EA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1E1319F1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a2, &qword_1ECEB34E0);
}