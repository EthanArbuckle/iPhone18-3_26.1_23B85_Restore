uint64_t sub_185AF2AEC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_185AF2B78(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_185AF2B8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCFB0, &qword_185B6E8D0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_185AF2CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v8 = xpc_copy_entitlement_for_token();
  if (!v8)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v9 = v8;
  v10 = MEMORY[0x1865FE700]();
  if (v10 != sub_185B67BAC())
  {
    v11 = MEMORY[0x1865FE700](v9);
    if (v11 == sub_185B67B9C())
    {
      value = xpc_BOOL_get_value(v9);
      swift_unknownObjectRelease();
      result = value;
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  if (qword_1EA8CC3A8 != -1)
  {
    swift_once();
  }

  v18 = off_1EA8CCF68;
  if (*(off_1EA8CCF68 + 2) && (v19 = sub_185AC9F40(a5, a6), (v20 & 1) != 0))
  {
    v21 = *(v18[7] + 8 * v19);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v34 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = v21;
  *(v27 + 24) = &v34;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_185AF30A0;
  *(v28 + 24) = v27;
  aBlock[4] = sub_185AF30A8;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185AEECE8;
  aBlock[3] = &block_descriptor_5;
  v29 = _Block_copy(aBlock);

  xpc_array_apply(v9, v29);
  swift_unknownObjectRelease();
  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v34 == 1)
  {

    result = 1;
    goto LABEL_11;
  }

  v12 = sub_185AF30A0;
LABEL_6:
  v13 = xpc_copy_entitlement_for_token();
  if (!v13)
  {
LABEL_9:
    sub_185AE20B8(v12);
    goto LABEL_10;
  }

  v14 = v13;
  v15 = MEMORY[0x1865FE700]();
  if (v15 != sub_185B67BCC())
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v22 = swift_unknownObjectRetain();
  v23 = MEMORY[0x1865FE700](v22);
  if (v23 == sub_185B67BCC())
  {
    if (xpc_string_get_string_ptr(v14))
    {
      v24 = sub_185B67F1C();
      v26 = v25;
      swift_unknownObjectRelease();
      if (v24 == 0xD000000000000015 && 0x8000000185B743E0 == v26)
      {

        swift_unknownObjectRelease();
        sub_185AE20B8(v12);
        result = 1;
        goto LABEL_11;
      }

      v32 = sub_185B6859C();

      swift_unknownObjectRelease();
      sub_185AE20B8(v12);
      if (v32)
      {
        result = 1;
        goto LABEL_11;
      }

LABEL_10:
      result = 0;
LABEL_11:
      v17 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
  }

  result = sub_185B6842C();
  __break(1u);
  return result;
}

uint64_t sub_185AF30A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_185AF30D4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_185B6859C() & 1;
  }
}

uint64_t sub_185AF312C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0, 0);
}

void sub_185AF3180(uint64_t a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_185AEE9A4(a1, a2, *(v2 + 16));
}

uint64_t sub_185AF3194(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185B67C9C();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_185B67CDC();
  v47 = *(v49 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49, v11);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = dispatch_group_create();
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x1E69E7CC8];
  if (qword_1EA8CC3A8 != -1)
  {
    swift_once();
  }

  v15 = off_1EA8CCF68;
  v16 = [a1 bundleIdentifier];
  v17 = sub_185B67E4C();
  v19 = v18;

  if (v15[2])
  {
    v20 = sub_185AC9F40(v17, v19);
    v22 = v21;

    if (v22)
    {
      v23 = *(v15[7] + 8 * v20);

      goto LABEL_8;
    }
  }

  else
  {
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v24 = MEMORY[0x1E69E7CC0];
  v25 = *(v23 + 16);
  v26 = &off_185B6A000;
  if (v25)
  {
    v44 = a2;
    v45 = a3;
    v27 = objc_opt_self();
    v43 = v23;
    v28 = (v23 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;

      dispatch_group_enter(v13);
      v31 = [v27 sharedManager];
      v32 = sub_185B67E1C();
      v33 = swift_allocObject();
      v33[2] = v14;
      v33[3] = v29;
      v33[4] = v30;
      v33[5] = v13;
      v57 = sub_185AF36E4;
      v58 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = sub_185AF1458;
      v56 = &block_descriptor_52;
      v34 = _Block_copy(&aBlock);

      v35 = v13;

      [v31 accessingRecordsForTCCService:v32 completion:v34];
      _Block_release(v34);

      v28 += 2;
      --v25;
    }

    while (v25);

    a2 = v44;
    a3 = v45;
    v24 = MEMORY[0x1E69E7CC0];
    v26 = &off_185B6A000;
  }

  else
  {
  }

  sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  v36 = sub_185B680FC();
  v37 = swift_allocObject();
  v37[2] = v14;
  v37[3] = a2;
  v37[4] = a3;
  v57 = sub_185AF36F0;
  v58 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v54 = *(v26 + 482);
  v55 = sub_185ACA0E8;
  v56 = &block_descriptor_58_0;
  v38 = _Block_copy(&aBlock);

  v39 = v46;
  sub_185B67CBC();
  v52 = v24;
  sub_185AF3800(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  v40 = v48;
  v41 = v51;
  sub_185B682CC();
  sub_185B680CC();
  _Block_release(v38);

  (*(v50 + 8))(v40, v41);
  (*(v47 + 8))(v39, v49);
}

uint64_t sub_185AF371C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = a1;
    a1 = 0;
  }

  else
  {
    v5 = 0;
  }

  return v3(a1, v5);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_54Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_185AF3800(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_185AF38B0()
{
  type metadata accessor for APDeviceKeyBagManager();
  swift_allocObject();
  result = sub_185AF38EC();
  qword_1EA8D2300 = result;
  return result;
}

uint64_t sub_185AF38EC()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v30 = sub_185B680EC();
  v1 = *(v30 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v30, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_185B680DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v9 = sub_185B67CDC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCFB8, &unk_185B6C8C0);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v12;
  sub_185AC7294();
  sub_185B67CBC();
  aBlock[0] = v13;
  sub_185AE8448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AE84A0();
  v14 = v0;
  sub_185B682CC();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v30);
  v15 = sub_185B6813C();
  *(v14 + 24) = v15;
  out_token = 0;
  v16 = *MEMORY[0x1E69B1A70];
  aBlock[4] = sub_185ACEAE0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACEA8C;
  aBlock[3] = &block_descriptor_6;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  v19 = notify_register_dispatch(v16, &out_token, v18, v17);
  _Block_release(v17);

  if (!v19)
  {
    goto LABEL_9;
  }

  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v20 = sub_185B67B8C();
  __swift_project_value_buffer(v20, qword_1ED6F5130);
  v21 = sub_185B67B6C();
  v22 = sub_185B6809C();
  if (!os_log_type_enabled(v21, v22))
  {
LABEL_8:

LABEL_9:
    v28 = *MEMORY[0x1E69E9840];
    return v14;
  }

  v23 = swift_slowAlloc();
  result = swift_slowAlloc();
  aBlock[0] = result;
  *v23 = 136315394;
  if (v16)
  {
    v25 = result;
    result = MEMORY[0x1865FCF30](v16);
    if (v26)
    {
      v27 = sub_185ACB2C4(result, v26, aBlock);

      *(v23 + 4) = v27;
      *(v23 + 12) = 1024;
      *(v23 + 14) = v19;
      _os_log_impl(&dword_185AC1000, v21, v22, "could not register for %s: %u", v23, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x1865FE2F0](v25, -1, -1);
      MEMORY[0x1865FE2F0](v23, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_185AF3D6C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

char *sub_185AF3DD8()
{
  result = [objc_allocWithZone(type metadata accessor for APVisionOSDummyServer()) init];
  v1 = result;
  v2 = *&result[OBJC_IVAR___APVisionOSDummyServer_serviceInfo];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *&result[OBJC_IVAR___APVisionOSDummyServer_serviceQueue];
    v5 = (v2 + 56);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 4;

      v9 = v7;
      v10 = v8;
      [v9 _setQueue_];
      [v9 setDelegate_];
      [v9 resume];

      --v3;
    }

    while (v3);
  }

  qword_1EA8D2350 = v1;
  return result;
}

uint64_t sub_185AF3F24()
{
  v0 = APGetReadServiceName();
  v1 = sub_185B67E4C();
  v3 = v2;

  v48 = v1;
  v49 = v3;
  v50[0] = APGetReadServiceInterface();
  v4 = APGetWriteServiceName();
  v5 = sub_185B67E4C();
  v7 = v6;

  v50[1] = v5;
  v50[2] = v7;
  v50[3] = APGetWriteServiceInterface();
  v8 = APGetGuardServiceName();
  v9 = sub_185B67E4C();
  v11 = v10;

  v50[4] = v9;
  v50[5] = v11;
  v50[6] = APGetGuardServiceInterface();
  v12 = APGetMaintenanceServiceName();
  v13 = sub_185B67E4C();
  v15 = v14;

  v50[7] = v13;
  v50[8] = v15;
  v50[9] = APGetMaintenanceServiceInterface();
  v16 = APGetExtensionMonitorServiceName();
  v17 = sub_185B67E4C();
  v19 = v18;

  v50[10] = v17;
  v50[11] = v19;
  v50[12] = APGetExtensionMonitorServiceInterface();
  v20 = APGetExtensionInfoServiceName();
  v21 = sub_185B67E4C();
  v23 = v22;

  v50[13] = v21;
  v50[14] = v23;
  v50[15] = APGetExtensionInfoServiceInterface();
  v24 = APGetViewSubjectMonitorServiceName();
  v25 = sub_185B67E4C();
  v27 = v26;

  v50[16] = v25;
  v50[17] = v27;
  v50[18] = APGetViewSubjectMonitorServiceInterface();
  v28 = APGetViewSubjectInfoServiceName();
  v29 = sub_185B67E4C();
  v31 = v30;

  v50[19] = v29;
  v50[20] = v31;
  v50[21] = APGetViewSubjectInfoServiceInterface();
  v45 = MEMORY[0x1E69E7CC0];
  sub_185B4EA0C(0, 8, 0);
  v32 = v45;
  v33 = objc_opt_self();
  for (i = 0; i != 24; i += 3)
  {
    v36 = *&v47[i * 8 + 32];
    v35 = v50[i - 1];
    v37 = v50[i];

    v38 = v37;
    v39 = [v33 anonymousListener];
    v46 = v32;
    v41 = *(v32 + 16);
    v40 = *(v32 + 24);
    if (v41 >= v40 >> 1)
    {
      v43 = v39;
      sub_185B4EA0C((v40 > 1), v41 + 1, 1);
      v39 = v43;
      v32 = v46;
    }

    *(v32 + 16) = v41 + 1;
    v42 = (v32 + 32 * v41);
    v42[4] = v36;
    v42[5] = v35;
    v42[6] = v39;
    v42[7] = v38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFE0, &unk_185B6C990);
  swift_arrayDestroy();
  return v32;
}

uint64_t sub_185AF4204(uint64_t a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR___APVisionOSDummyServer_serviceInfo);
  v6 = (v5 + 56);
  v7 = *(v5 + 16) + 1;
  while (1)
  {
    if (!--v7)
    {
      return 0;
    }

    v8 = *(v6 - 3);
    v9 = *(v6 - 1);
    v10 = *v6;
    if (v8 == a1 && *(v6 - 2) == a2)
    {
      break;
    }

    v6 += 4;
    if (sub_185B6859C())
    {
      goto LABEL_11;
    }
  }

  v8 = a1;
LABEL_11:

  v12 = v9;
  v13 = v10;
  return v8;
}

void sub_185AF42D0()
{
  v1 = *(v0 + OBJC_IVAR___APVisionOSDummyServer_serviceInfo);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 56);
    while (v3 < *(v1 + 16))
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      sub_185ADF590(0, &qword_1EA8CB620, 0x1E69E58C0);

      v9 = v7;
      v10 = v8;
      if ((sub_185B6828C() & 1) == 0)
      {

        ++v3;
        v4 += 4;
        if (v2 != v3)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

BOOL sub_185AF4498(uint64_t a1, void *a2)
{
  sub_185AF42D0();
  v7 = v6;
  if (v6)
  {
    v8 = v4;
    v9 = v5;
    [a2 _setQueue_];
    [a2 setExportedObject_];
    [a2 setExportedInterface_];
    [a2 resume];
  }

  return v7 != 0;
}

id sub_185AF45AC()
{
  v1 = v0;
  v18 = sub_185B680EC();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v18, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_185B680DC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v10 = sub_185B67CDC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v17 = OBJC_IVAR___APVisionOSDummyServer_serviceQueue;
  sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  sub_185B67CBC();
  v20 = MEMORY[0x1E69E7CC0];
  sub_185AE8448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AE84A0();
  sub_185B682CC();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v18);
  *&v0[v17] = sub_185B6813C();
  v13 = OBJC_IVAR___APVisionOSDummyServer_serviceInfo;
  *&v1[v13] = sub_185AF3F24();
  v14 = type metadata accessor for APVisionOSDummyServer();
  v19.receiver = v1;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_185AF4820()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APVisionOSDummyServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_185AF4A5C(void *a1, int a2, int a3, int a4, void *aBlock, void (*a6)(void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a6(v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_185AF4D48(int a1, int a2, int a3, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);

  _Block_release(v4);
}

uint64_t sub_185AF4E90(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_185B67ADC();
  v11[2](v11, 0);
  _Block_release(v11);
  return (*(v6 + 8))(v10, v5);
}

void sub_185AF5054(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);

  _Block_release(v3);
}

uint64_t sub_185AF52E8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_185B67ADC();
  sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
  v12 = sub_185B6825C();
  v11[2](v11, v12, 0);
  _Block_release(v11);

  return (*(v6 + 8))(v10, v5);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_185AF5620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_185AF5668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_185AF56B8(uint64_t a1)
{
  v2 = *MEMORY[0x1E696A768];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v4 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 97;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 72) = v4;
  *(inited + 80) = 0x636E75465041;
  *(inited + 120) = v5;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD000000000000029;
  *(inited + 104) = 0x8000000185B755F0;
  v6 = v2;
  sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  v7 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v8 = sub_185B67D7C();

  v9 = [v7 initWithDomain:v6 code:-4 userInfo:v8];

  v10 = sub_185B6791C();
  (*(a1 + 16))(a1, v10);
}

void sub_185AF5858(uint64_t a1)
{
  v2 = *MEMORY[0x1E696A768];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v4 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 101;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 72) = v4;
  *(inited + 80) = 0x636E75465041;
  *(inited + 120) = v5;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD000000000000029;
  *(inited + 104) = 0x8000000185B755C0;
  v6 = v2;
  sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  v7 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v8 = sub_185B67D7C();

  v9 = [v7 initWithDomain:v6 code:-4 userInfo:v8];

  v10 = sub_185B6791C();
  (*(a1 + 16))(a1, v10);
}

void sub_185AF59F8(uint64_t a1)
{
  v2 = [objc_allocWithZone(APClientState) init];
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_185B530AC(MEMORY[0x1E69E7CC0]);
  v5 = objc_allocWithZone(APStateDump);
  v6 = _s17AccessListWrapperCMa();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCE13AppProtectionCSo11APStateDumpP33_08AD371E34EDC7245D13D99B4228357017AccessListWrapper_accesses] = v3;
  v14.receiver = v7;
  v14.super_class = v6;
  v8 = objc_msgSendSuper2(&v14, sel_init);
  v9 = _s19AssertionMapWrapperCMa();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtCE13AppProtectionCSo11APStateDumpP33_08AD371E34EDC7245D13D99B4228357019AssertionMapWrapper_authAssertions] = v4;
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  v12 = [v5 initWithState:v2 accesses:v8 authAssertions:v11 dtoEnabled:0];

  (*(a1 + 16))(a1, v12, 0);
}

void sub_185AF5EA8(void *a1, int a2, int a3, void *aBlock, void (*a5)(void))
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);
  v8 = a1;
  a5();
  _Block_release(v7);
  _Block_release(v7);
}

id sub_185AF5F24()
{
  result = APGetViewSubjectInfoServiceInterface();
  qword_1EA8D2358 = result;
  return result;
}

id sub_185AF6004()
{
  if (qword_1EA8CC3D0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2358;

  return v0;
}

id sub_185AF60A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_185AF6130@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APViewSubjectInfoService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection24APViewSubjectInfoService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

id sub_185AF61AC(void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for APViewSubjectInfoClient();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1EF467748;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_connection] = a1;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = a1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_185AF628C(uint64_t a1)
{
  result = sub_185AF62D0(&qword_1EA8CBAC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_185AF62D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for APViewSubjectInfoClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_185AF6310(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  v26 = a3;
  v27 = a4;
  v28 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v25 - v12;
  v14 = sub_185B67AFC();
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  v16 = *(a5 + OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_connection);
  _Block_copy(a6);
  LODWORD(v16) = [v16 processIdentifier];
  v17 = a5 + OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = *(v17 + 8);
  v20 = a1;
  v21 = v28;
  sub_185B1DEAC(v20, v28, v13, v16, Strong, v19, v33);
  swift_unknownObjectRelease();
  sub_185ACF5CC(v13, &unk_1EA8CD9A0, &unk_185B6C2C0);
  if (*(&v33[0] + 1))
  {
    v34[2] = v33[2];
    v34[3] = v33[3];
    v34[4] = v33[4];
    v34[5] = v33[5];
    v34[0] = v33[0];
    v34[1] = v33[1];
    v15(v13, 1, 1, v14);
    v22 = sub_185B1E6B4(v20, v21, v13, v26, v27);
    v24 = v23;
    sub_185ACF5CC(v13, &unk_1EA8CD9A0, &unk_185B6C2C0);
    memset(v29, 0, sizeof(v29));
    LOBYTE(v30) = -2;
    *(&v30 + 1) = v22;
    *&v31 = v24;
    WORD4(v31) = 1;
    v32 = v34[0];
    v35[2] = v30;
    v35[3] = v31;
    memset(v35, 0, 32);
    v35[4] = v34[0];
    _Block_copy(a6);

    sub_185AFFF40(v35, v34, a6);
    _Block_release(a6);
    sub_185AF6A24(v29);
    sub_185AF6A78(v34);
  }

  else
  {
    sub_185ACF5CC(v33, &qword_1EA8CD008, &unk_185B6CA30);
    a6[2](a6, 1, 0);
  }

  _Block_release(a6);
}

uint64_t sub_185AF65A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v11, ObjectType, v4);
    swift_unknownObjectRelease();
    sub_185AC66F8(v11, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v8 = (*(v7 + 64))(0xD000000000000013, 0x8000000185B75730, v6, v7);
    (*(a2 + 16))(a2, (v8 & 1) == 0, 0);
    return __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v10 = *(a2 + 16);

    return v10(a2, 1, 0);
  }
}

void sub_185AF66D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v7 = sub_185AD006C(0xD000000000000013, 0x8000000185B75730, 0);
  if (v7)
  {
    v13 = v7;
    v14 = [v7 localizedName];
    sub_185B67E4C();

    v15 = sub_185B67E1C();
    (*(a3 + 16))(a3);
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v8 = sub_185B67B8C();
    __swift_project_value_buffer(v8, qword_1EA8D2278);

    v9 = sub_185B67B6C();
    v10 = sub_185B680AC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_185ACB2C4(a1, a2, &v16);
      _os_log_impl(&dword_185AC1000, v9, v10, "no containing bundle record for viewSubject %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x1865FE2F0](v12, -1, -1);
      MEMORY[0x1865FE2F0](v11, -1, -1);
    }

    v15 = sub_185B67E1C();
    (*(a3 + 16))(a3);
  }
}

void sub_185AF6910(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC13AppProtection23APViewSubjectInfoClient_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v10, ObjectType, v4);
    swift_unknownObjectRelease();
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = (*(v7 + 24))(v6, v7);
    sub_185AC3A7C(0xD000000000000013, 0x8000000185B75730, v8);

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  v9 = sub_185B67FBC();
  (*(a2 + 16))(a2, v9, 0);
}

const char *AppProtectionFeatures.feature.getter()
{
  if (*v0)
  {
    return "no_passcode_fallback";
  }

  else
  {
    return "protected_apps";
  }
}

uint64_t AppProtectionFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_185B6866C();
  MEMORY[0x1865FD6D0](v1);
  return sub_185B686AC();
}

unint64_t sub_185AF6B9C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_185B682FC();

  return sub_185AF6F64(a1, v5);
}

unint64_t sub_185AF6BE0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_185B67E4C();
  sub_185B6866C();
  sub_185B67EEC();
  v4 = sub_185B686AC();

  return sub_185AF7088(a1, v4);
}

unint64_t sub_185AF6C74(char a1)
{
  v3 = *(v1 + 40);
  sub_185B6866C();
  MEMORY[0x1865FD6D0](a1 & 1);
  v4 = sub_185B686AC();

  return sub_185AF718C(a1 & 1, v4);
}

uint64_t getEnumTagSinglePayload for AppProtectionFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppProtectionFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_185AF6E20(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_185B67AFC();
  sub_185ACA328(&qword_1EA8CD490);
  v5 = sub_185B67DAC();

  return sub_185AF71FC(a1, v5);
}

unint64_t sub_185AF6EA4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_185B6866C();
  sub_185B6869C();
  sub_185B6869C();
  v4 = sub_185B686AC();

  return sub_185AF73A8(a1, v4);
}

unint64_t sub_185AF6F20(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_185B6865C();

  return sub_185AC9178(a1, v4);
}

unint64_t sub_185AF6F64(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_185AF702C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1865FD360](v9, a1);
      sub_185AD851C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_185AF7088(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_185B67E4C();
      v9 = v8;
      if (v7 == sub_185B67E4C() && v9 == v10)
      {
        break;
      }

      v12 = sub_185B6859C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_185AF718C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_185AF71FC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_185ACA328(&qword_1ED6F45C0);
      v17 = sub_185B67DEC();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_185AF73A8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v9 = *v7;
      v8 = v7[1];
      if (v9 == a1 && v8 == HIDWORD(a1))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_185AF7460(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v18 = a2;
  swift_unknownObjectWeakAssign();
  sub_185AF96B0(v17, v16);
  v4 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_33:
    v4 = sub_185B3C8BC(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_185B3C8BC((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v7;
  v8 = v4 + 4;
  sub_185AF970C(v16, &v4[2 * v6 + 4]);
  v9 = 0;
  *v2 = v4;
  v10 = (v4 + 6);
  while (1)
  {
    if (v7 == v9)
    {
      goto LABEL_10;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      break;
    }

    swift_unknownObjectRelease();
    v10 += 16;
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
LABEL_10:
      v9 = v4[2];
      v13 = v9;
LABEL_27:
      sub_185B56BB4(v9, v13);
      return sub_185AF9768(v17);
    }
  }

  v13 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v14 = v4[2];
    while (v13 != v14)
    {
      if (v13 >= v14)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      sub_185AF96B0(v10, v16);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        result = sub_185AF9768(v16);
        if (v13 != v9)
        {
          if (v9 < 0)
          {
            goto LABEL_29;
          }

          v15 = v4[2];
          if (v9 >= v15)
          {
            goto LABEL_30;
          }

          sub_185AF96B0(&v8[2 * v9], v16);
          if (v13 >= v15)
          {
            goto LABEL_31;
          }

          sub_185AF97BC(v10, &v8[2 * v9]);
          if (v13 >= v4[2])
          {
            goto LABEL_32;
          }

          result = sub_185AF9818(v16, v10);
          *v2 = v4;
        }

        ++v9;
      }

      else
      {
        result = sub_185AF9768(v16);
      }

      ++v13;
      v14 = v4[2];
      v10 += 16;
    }

    if (v13 >= v9)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_185AF767C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v18 = a2;
  swift_unknownObjectWeakAssign();
  sub_185ACEDC4(v17, v16);
  v4 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_33:
    v4 = sub_185B3CB40(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_185B3CB40((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v7;
  v8 = v4 + 4;
  sub_185AF959C(v16, &v4[2 * v6 + 4]);
  v9 = 0;
  *v2 = v4;
  v10 = (v4 + 6);
  while (1)
  {
    if (v7 == v9)
    {
      goto LABEL_10;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      break;
    }

    swift_unknownObjectRelease();
    v10 += 16;
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
LABEL_10:
      v9 = v4[2];
      v13 = v9;
LABEL_27:
      sub_185B56BE8(v9, v13);
      return sub_185ACED70(v17);
    }
  }

  v13 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v14 = v4[2];
    while (v13 != v14)
    {
      if (v13 >= v14)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      sub_185ACEDC4(v10, v16);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        result = sub_185ACED70(v16);
        if (v13 != v9)
        {
          if (v9 < 0)
          {
            goto LABEL_29;
          }

          v15 = v4[2];
          if (v9 >= v15)
          {
            goto LABEL_30;
          }

          sub_185ACEDC4(&v8[2 * v9], v16);
          if (v13 >= v15)
          {
            goto LABEL_31;
          }

          sub_185AF95F8(v10, &v8[2 * v9]);
          if (v13 >= v4[2])
          {
            goto LABEL_32;
          }

          result = sub_185AF9654(v16, v10);
          *v2 = v4;
        }

        ++v9;
      }

      else
      {
        result = sub_185ACED70(v16);
      }

      ++v13;
      v14 = v4[2];
      v10 += 16;
    }

    if (v13 >= v9)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_185AF7898(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v18 = a2;
  swift_unknownObjectWeakAssign();
  sub_185AF948C(v17, v16);
  v4 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_33:
    v4 = sub_185B3CC7C(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_185B3CC7C((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v7;
  v8 = v4 + 4;
  sub_185AF94F4(v16, &v4[2 * v6 + 4]);
  v9 = 0;
  *v2 = v4;
  v10 = (v4 + 6);
  while (1)
  {
    if (v7 == v9)
    {
      goto LABEL_10;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      break;
    }

    swift_unknownObjectRelease();
    v10 += 16;
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
LABEL_10:
      v9 = v4[2];
      v13 = v9;
LABEL_27:
      sub_185B56D04(v9, v13);
      return sub_185AF94C4(v17);
    }
  }

  v13 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v14 = v4[2];
    while (v13 != v14)
    {
      if (v13 >= v14)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      sub_185AF948C(v10, v16);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        result = sub_185AF94C4(v16);
        if (v13 != v9)
        {
          if (v9 < 0)
          {
            goto LABEL_29;
          }

          v15 = v4[2];
          if (v9 >= v15)
          {
            goto LABEL_30;
          }

          sub_185AF948C(&v8[2 * v9], v16);
          if (v13 >= v15)
          {
            goto LABEL_31;
          }

          sub_185AF952C(v10, &v8[2 * v9]);
          if (v13 >= v4[2])
          {
            goto LABEL_32;
          }

          result = sub_185AF9564(v16, v10);
          *v2 = v4;
        }

        ++v9;
      }

      else
      {
        result = sub_185AF94C4(v16);
      }

      ++v13;
      v14 = v4[2];
      v10 += 16;
    }

    if (v13 >= v9)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_185AF7AB4()
{
  sub_185B6836C();

  v0 = sub_185B6856C();
  MEMORY[0x1865FCF60](v0);

  MEMORY[0x1865FCF60](32, 0xE100000000000000);
  v1 = sub_185B6856C();
  MEMORY[0x1865FCF60](v1);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return 0x5668746957646950;
}

uint64_t sub_185AF7BE8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_185B6866C();
  sub_185B6869C();
  sub_185B6869C();
  return sub_185B686AC();
}

uint64_t sub_185AF7C44()
{
  v1 = *v0;
  v2 = v0[1];
  sub_185B6869C();
  return sub_185B6869C();
}

uint64_t sub_185AF7C80()
{
  v1 = *v0;
  v2 = v0[1];
  sub_185B6866C();
  sub_185B6869C();
  sub_185B6869C();
  return sub_185B686AC();
}

uint64_t sub_185AF7CD8(unint64_t a1, void *a2, uint64_t (**a3)(), uint64_t a4)
{
  v5 = v4;
  v45 = a2;
  v46 = a4;
  v6 = a1;
  v40 = HIDWORD(a1);
  v41 = a3;
  v44 = sub_185B67C9C();
  v48 = *(v44 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v44, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_185B67CDC();
  v47 = *(v43 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v43, v12);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_185B6817C();
  v15 = *(v14 - 8);
  v16 = v15;
  v17 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 48) = 0;
  v39 = sub_185ADF590(0, &qword_1EA8CB640, 0x1E69E9630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD028, &qword_185B6CCD0);
  v21 = *(v15 + 72);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_185B6BB70;
  sub_185B6816C();
  aBlock = v23;
  sub_185AF907C(&qword_1EA8CD030, MEMORY[0x1E69E80C0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD038, &unk_185B6CCD8);
  sub_185AC73B8(&unk_1EA8CD040, &qword_1EA8CD038, &unk_185B6CCD8);
  sub_185B682CC();
  v24 = sub_185B6819C();
  (*(v16 + 8))(v20, v14);
  *(v5 + 16) = v24;
  v26 = v40;
  v25 = v41;
  *(v5 + 24) = v6;
  *(v5 + 28) = v26;
  v27 = v46;
  *(v5 + 32) = v25;
  *(v5 + 40) = v27;
  swift_getObjectType();
  v28 = swift_allocObject();
  swift_weakInit();
  v53 = sub_185AF906C;
  v54 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v41 = &v51;
  v51 = sub_185ACA0E8;
  v52 = &block_descriptor_7;
  v29 = _Block_copy(&aBlock);

  v30 = v42;
  sub_185B67CBC();
  sub_185AF8640();
  sub_185B681BC();
  _Block_release(v29);
  v31 = *(v48 + 8);
  v48 += 8;
  v40 = v31;
  v32 = v44;
  v31(v10, v44);
  v33 = *(v47 + 8);
  v47 += 8;
  v39 = v33;
  v34 = v43;
  v33(v30, v43);

  v35 = *(v5 + 16);
  swift_getObjectType();
  v36 = swift_allocObject();
  swift_weakInit();

  v53 = sub_185AF9074;
  v54 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_185ACA0E8;
  v52 = &block_descriptor_37_0;
  v37 = _Block_copy(&aBlock);

  sub_185B67CBC();
  sub_185AF8640();
  sub_185B681AC();
  _Block_release(v37);

  v40(v10, v32);
  v39(v30, v34);

  return v5;
}

uint64_t sub_185AF8268()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v2 = sub_185B67B8C();
    __swift_project_value_buffer(v2, qword_1EA8D2278);

    v3 = sub_185B67B6C();
    v4 = sub_185B680AC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v7 = *(v1 + 24);
      v8 = sub_185AF7AB4();
      v10 = sub_185ACB2C4(v8, v9, &v12);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_185AC1000, v3, v4, "reg handler for %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      MEMORY[0x1865FE2F0](v6, -1, -1);
      MEMORY[0x1865FE2F0](v5, -1, -1);
    }

    if ((sub_185AF9188(*(v1 + 24)) & 1) == 0 && *(v1 + 48) == 1 && (*(v1 + 49) & 1) == 0)
    {
      *(v1 + 49) = 1;
      v11 = *(v1 + 40);
      (*(v1 + 32))(v1);
    }
  }

  return result;
}

uint64_t sub_185AF8428()
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v0 = sub_185B67B8C();
  __swift_project_value_buffer(v0, qword_1EA8D2278);

  v1 = sub_185B67B6C();
  v2 = sub_185B680AC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13[0] = v4;
    *v3 = 136315138;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v6 = Strong;
    if (Strong)
    {
      v7 = *(Strong + 24);
    }

    else
    {
      v7 = 0;
    }

    v13[1] = v7;
    v14 = v6 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD050, &unk_185B6CCE8);
    v8 = sub_185B67EBC();
    v10 = sub_185ACB2C4(v8, v9, v13);

    *(v3 + 4) = v10;
    _os_log_impl(&dword_185AC1000, v1, v2, "target died for %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x1865FE2F0](v4, -1, -1);
    MEMORY[0x1865FE2F0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 48) == 1 && (*(result + 49) & 1) == 0)
    {
      *(result + 49) = 1;
      v12 = *(result + 40);
      (*(result + 32))();
    }
  }

  return result;
}

uint64_t sub_185AF8640()
{
  sub_185B67C9C();
  sub_185AF907C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  return sub_185B682CC();
}

void sub_185AF8718()
{
  v1 = v0;
  *(v0 + 48) = 1;
  v2 = *(v0 + 16);
  swift_getObjectType();
  sub_185B681DC();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v3 = sub_185B67B8C();
  __swift_project_value_buffer(v3, qword_1EA8D2278);

  oslog = sub_185B67B6C();
  v4 = sub_185B680AC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 24);
    v8 = sub_185AF7AB4();
    v10 = sub_185ACB2C4(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_185AC1000, oslog, v4, "started watching for death %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x1865FE2F0](v6, -1, -1);
    MEMORY[0x1865FE2F0](v5, -1, -1);
  }
}

uint64_t sub_185AF8894()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_185B681CC();
  swift_unknownObjectRelease();
  if ((*(v1 + 48) & 1) == 0)
  {
    v3 = *(v1 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_185B681DC();
    swift_unknownObjectRelease();
  }

  v4 = *(v1 + 16);
  swift_unknownObjectRelease();
  v5 = *(v1 + 40);

  return MEMORY[0x1EEE6BDC0](v1, 50, 7);
}

void sub_185AF8998(unint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 8);
  sub_185AF8C64(&v3[4], a1, v1, &v19);
  os_unfair_lock_unlock(v3 + 8);
  if (v19)
  {
    sub_185AF8718();
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v4 = sub_185B67B8C();
    __swift_project_value_buffer(v4, qword_1EA8D2278);
    oslog = sub_185B67B6C();
    v5 = sub_185B680AC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      v8 = sub_185AF7AB4();
      v10 = sub_185ACB2C4(v8, v9, &v19);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_185AC1000, oslog, v5, "started monitoring %s for death", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x1865FE2F0](v7, -1, -1);
      MEMORY[0x1865FE2F0](v6, -1, -1);

      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v11 = sub_185B67B8C();
    __swift_project_value_buffer(v11, qword_1EA8D2278);
    oslog = sub_185B67B6C();
    v12 = sub_185B680AC();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v15 = sub_185AF7AB4();
      v17 = sub_185ACB2C4(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_185AC1000, oslog, v12, "already monitoring %s for death", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1865FE2F0](v14, -1, -1);
      MEMORY[0x1865FE2F0](v13, -1, -1);
      goto LABEL_10;
    }
  }

LABEL_10:
}

unint64_t sub_185AF8C64@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(*(a1 + 8) + 16) && (result = sub_185AF6EA4(a2), (v9 & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    v11 = *(a3 + 16);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a2;
    type metadata accessor for PidWatch();
    swift_allocObject();
    v10 = sub_185AF7CD8(a2, v11, sub_185AF9064, v13);

    v14 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(a1 + 8);
    result = sub_185B5222C(v10, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 8) = v16;
  }

  *a4 = v10;
  return result;
}

uint64_t sub_185AF8D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + 24);
    os_unfair_lock_lock((v6 + 32));
    v7 = sub_185ACEC50(*(v6 + 16), sub_185AF948C, sub_185AF94C4, sub_185B3CDC0);
    os_unfair_lock_unlock((v6 + 32));
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = type metadata accessor for DispatchDeathMonitor();
      v10 = (v7 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        ObjectType = swift_getObjectType();
        v15[3] = v9;
        v15[4] = &off_1EF4678E8;
        v15[0] = v5;
        v14 = *(v12 + 8);
        swift_unknownObjectRetain();

        v14(a3, v15, ObjectType, v12);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        v10 += 2;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_185AF8F04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for PidWithVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PidWithVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_185AF8FEC()
{
  result = qword_1EA8CD018;
  if (!qword_1EA8CD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD018);
  }

  return result;
}

uint64_t sub_185AF907C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_185AF90C4(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_185B6792C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_185AF9188(uint64_t a1)
{
  sub_185ADF590(0, &unk_1EA8CD390, 0x1E69C75D0);
  v2 = sub_185B6863C();
  v3 = sub_185AF90C4(v2);

  [v3 auditToken];
  if (audit_token_to_pidversion(&v9) == HIDWORD(a1))
  {

    return 1;
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v5 = sub_185B67B8C();
    __swift_project_value_buffer(v5, qword_1EA8D2278);
    v6 = sub_185B67B6C();
    v7 = sub_185B6808C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_185AC1000, v6, v7, "pid %d recycled when checking existence", v8, 8u);
      MEMORY[0x1865FE2F0](v8, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_185AF988C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v106 = a2;
  v107 = a3;
  v104 = a1;
  v109 = sub_185B67B5C();
  v5 = *(v109 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v109, v7);
  v102 = v9;
  v103 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v101 - v11;
  v13 = APDefaultAuthenticationLog();
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v14 = sub_185B67B8C();
  v15 = __swift_project_value_buffer(v14, qword_1EA8D2278);
  sub_185B03ED8(v3, &v124);
  sub_185B03ED8(v3, &v120);
  sub_185B03ED8(v3, v117);
  sub_185B03ED8(v3, v115);
  sub_185B03ED8(v3, v113);
  sub_185B03ED8(v3, v111);
  v16 = sub_185B67B6C();
  v17 = sub_185B680AC();
  v18 = os_log_type_enabled(v16, v17);
  v108 = v12;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v110 = v20;
    *v19 = 136447490;
    v101 = v15;
    v21 = v124;

    sub_185AF6A78(&v124);
    v22 = sub_185ACB2C4(v21, *(&v21 + 1), &v110);

    *(v19 + 4) = v22;
    *(v19 + 12) = 1024;
    v23 = v123 != 0;
    sub_185AF6A78(&v120);
    *(v19 + 14) = v23;
    v105 = v5;
    *(v19 + 18) = 2082;
    if (v119)
    {
      v24 = v118;
    }

    else
    {
      v24 = 0x676E6968746F6E28;
    }

    if (v119)
    {
      v25 = v119;
    }

    else
    {
      v25 = 0xE900000000000029;
    }

    sub_185AF6A78(v117);
    v26 = sub_185ACB2C4(v24, v25, &v110);

    *(v19 + 20) = v26;
    *(v19 + 28) = 1024;
    LODWORD(v26) = v116;
    sub_185AF6A78(v115);
    *(v19 + 30) = v26;
    *(v19 + 34) = 2082;
    if (v114)
    {
      v27 = 0xD000000000000024;
    }

    else
    {
      v27 = 0xD00000000000001FLL;
    }

    if (v114)
    {
      v28 = "ice";
    }

    else
    {
      v28 = ".afterAuthentication";
    }

    sub_185AF6A78(v113);
    v29 = sub_185ACB2C4(v27, v28 | 0x8000000000000000, &v110);

    *(v19 + 36) = v29;
    *(v19 + 44) = 2082;
    v5 = v105;
    if (v112)
    {
      v30 = 0xD000000000000023;
    }

    else
    {
      v30 = 0xD000000000000018;
    }

    if (v112)
    {
      v31 = "CompletionPolicy.afterShielding";
    }

    else
    {
      v31 = "y.effectivelyLocked";
    }

    sub_185AF6A78(v111);
    v32 = sub_185ACB2C4(v30, v31 | 0x8000000000000000, &v110);
    v12 = v108;

    *(v19 + 46) = v32;
    _os_log_impl(&dword_185AC1000, v16, v17, "Evaluating guard action checking %{public}s, shielding (%{BOOL}d) %{public}s, requested by %d, completionPolicy %{public}s, lockedCheckPolicy %{public}s", v19, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v20, -1, -1);
    MEMORY[0x1865FE2F0](v19, -1, -1);
  }

  else
  {
    sub_185AF6A78(v115);
    sub_185AF6A78(&v120);

    sub_185AF6A78(v111);
    sub_185AF6A78(v113);
    sub_185AF6A78(v117);
    sub_185AF6A78(&v124);
  }

  v33 = *(v4 + 89);
  v34 = *v4;
  v35 = *(v4 + 8);
  if (sub_185AFA92C(*v4, v35, (v4 + 48), v33) || (v36 = *(v4 + 24)) != 0 && sub_185AFA92C(*(v4 + 16), v36, (v4 + 48), v33))
  {
    v37 = *(v4 + 72);
    v38 = *(v4 + 80);
    __swift_project_boxed_opaque_existential_1((v4 + 48), v37);
    if ((*(v38 + 64))(v34, v35, v37, v38))
    {
      v39 = sub_185B67B6C();
      v40 = sub_185B680AC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_185AC1000, v39, v40, "have cached authentication.", v41, 2u);
        MEMORY[0x1865FE2F0](v41, -1, -1);
      }

      v42 = *(v4 + 40);
      if (!v42)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    sub_185B03ED8(v4, &v124);
    v51 = v104;
    sub_185B03F10(v104, &v120);
    v52 = sub_185B67B6C();
    v53 = sub_185B680AC();
    sub_185AF6A24(v51);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v113[0] = v55;
      *v54 = 136446466;
      if (BYTE8(v129))
      {
        v56 = 0xD000000000000024;
      }

      else
      {
        v56 = 0xD00000000000001FLL;
      }

      v105 = v5;
      if (BYTE8(v129))
      {
        v57 = "ice";
      }

      else
      {
        v57 = ".afterAuthentication";
      }

      sub_185AF6A78(&v124);
      v58 = sub_185ACB2C4(v56, v57 | 0x8000000000000000, v113);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2082;
      v59 = *(v51 + 16);
      v120 = *v51;
      v121 = v59;
      v122 = *(v51 + 32);
      v60 = *(v51 + 16);
      v117[0] = *v51;
      v117[1] = v60;
      LOBYTE(v118) = *(v51 + 32);
      sub_185AD04BC(&v120, v115, &qword_1EA8CD080, &unk_185B6CDF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD080, &unk_185B6CDF0);
      v61 = sub_185B67EBC();
      v63 = sub_185ACB2C4(v61, v62, v113);

      *(v54 + 14) = v63;
      v5 = v105;
      _os_log_impl(&dword_185AC1000, v52, v53, "Begin auth with completion policy %{public}s, bind target: %{public}s", v54, 0x16u);
      swift_arrayDestroy();
      v64 = v55;
      v12 = v108;
      MEMORY[0x1865FE2F0](v64, -1, -1);
      MEMORY[0x1865FE2F0](v54, -1, -1);

      if ((*(v4 + 88) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {

      sub_185AF6A78(&v124);
      if ((*(v4 + 88) & 1) == 0)
      {
LABEL_43:
        v65 = *(v4 + 40);
        if (v65)
        {
          v66 = *(v4 + 32);
          v67 = *(v4 + 72);
          v68 = *(v4 + 80);
          __swift_project_boxed_opaque_existential_1((v4 + 48), v67);
          (*(v68 + 152))(v66, v65, 1, v106, v107, v67, v68);
        }

        else
        {
          v106(0);
        }

        v88 = v103;
        v89 = v109;
        (*(v5 + 16))(v103, v12, v109);
        sub_185B03ED8(v4, &v124);
        v90 = (*(v5 + 80) + 16) & ~*(v5 + 80);
        v91 = (v102 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
        v75 = swift_allocObject();
        (*(v5 + 32))(v75 + v90, v88, v89);
        v92 = (v75 + v91);
        v93 = v127;
        v92[2] = v126;
        v92[3] = v93;
        v94 = v129;
        v92[4] = v128;
        v92[5] = v94;
        v95 = v125;
        *v92 = v124;
        v92[1] = v95;
        v83 = sub_185B0779C;
        goto LABEL_55;
      }
    }

    v69 = *(v5 + 16);
    v70 = v103;
    v71 = v5;
    v72 = v109;
    v69(v103, v12, v109);
    sub_185B03ED8(v4, &v124);
    v73 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v74 = (v102 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    v76 = v72;
    v5 = v71;
    (*(v71 + 32))(v75 + v73, v70, v76);
    v77 = (v75 + v74);
    v78 = v127;
    v77[2] = v126;
    v77[3] = v78;
    v79 = v129;
    v77[4] = v128;
    v77[5] = v79;
    v80 = v125;
    *v77 = v124;
    v77[1] = v80;
    v81 = (v75 + ((v74 + 103) & 0xFFFFFFFFFFFFFFF8));
    v82 = v107;
    *v81 = v106;
    v81[1] = v82;

    v83 = sub_185B07798;
LABEL_55:
    v96 = v83;

    sub_185B6820C();
    v97 = APDefaultAuthenticationLog();
    sub_185B67B3C();

    v98 = *(v4 + 72);
    v99 = *(v4 + 80);
    __swift_project_boxed_opaque_existential_1((v4 + 48), v98);
    (*(v99 + 72))(v104, v96, v75, v98, v99);

    return (*(v5 + 8))(v12, v109);
  }

  sub_185B03ED8(v4, &v124);
  sub_185B03ED8(v4, &v120);
  v43 = sub_185B67B6C();
  v44 = sub_185B680AC();
  if (os_log_type_enabled(v43, v44))
  {
    v105 = v5;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v115[0] = v46;
    *v45 = 136446466;
    v47 = v124;

    sub_185AF6A78(&v124);
    v48 = sub_185ACB2C4(v47, *(&v47 + 1), v115);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2082;
    if (*(&v121 + 1))
    {
      *&v117[0] = 1684955424;
      *(&v117[0] + 1) = 0xE400000000000000;
      MEMORY[0x1865FCF60](v121);

      MEMORY[0x1865FCF60](1701994784, 0xE400000000000000);

      v49 = *(&v117[0] + 1);
      v50 = *&v117[0];
    }

    else
    {
      v49 = 0xE200000000000000;
      v50 = 29545;
    }

    sub_185AF6A78(&v120);
    v84 = sub_185ACB2C4(v50, v49, v115);

    *(v45 + 14) = v84;
    _os_log_impl(&dword_185AC1000, v43, v44, "%{public}s %{public}s not locked. Unshielding.", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v46, -1, -1);
    MEMORY[0x1865FE2F0](v45, -1, -1);

    v5 = v105;
  }

  else
  {

    sub_185AF6A78(&v124);
    sub_185AF6A78(&v120);
  }

  v42 = *(v4 + 40);
  v12 = v108;
  if (!v42)
  {
    goto LABEL_52;
  }

LABEL_51:
  v85 = *(v4 + 32);
  v86 = *(v4 + 72);
  v87 = *(v4 + 80);
  __swift_project_boxed_opaque_existential_1((v4 + 48), v86);
  (*(v87 + 152))(v85, v42, 0, nullsub_1, 0, v86, v87);
LABEL_52:
  v106(0);
  return (*(v5 + 8))(v12, v109);
}

BOOL sub_185AFA488(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 == 0xD000000000000030 && 0x8000000185B75960 == a2 || (sub_185B6859C() & 1) != 0)
  {
    v6 = a3[3];
    v7 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v6);
    v8 = (*(v7 + 24))(v6, v7);
LABEL_5:
    v9 = *(v8 + 16);

    return v9 != 0;
  }

  if (a1 == 0xD000000000000030 && 0x8000000185B759A0 == a2 || (sub_185B6859C() & 1) != 0)
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    v8 = (*(v12 + 16))(v11, v12);
    goto LABEL_5;
  }

  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v16 = sub_185AC3A7C(a1, a2, v15);

  return v16 & 1;
}

id sub_185AFA60C()
{
  v1 = [v0 infoDictionary];
  v2 = sub_185B67E1C();
  sub_185ADF590(0, &qword_1EA8CD090, 0x1E695DEC8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_185ADF590(0, &qword_1EA8CD098, 0x1E696AEC0);
  v4 = [v1 objectForKey:v2 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];

  if (v4)
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = sub_185B67E1C();
      v6 = [v8 containsObject_];

      return v6;
    }
  }

  else
  {
    sub_185ACF5CC(v11, &qword_1EA8CC830, &unk_185B6BEB0);
  }

  return 0;
}

id sub_185AFA79C()
{
  v1 = [v0 entitlements];
  v2 = sub_185B67E1C();
  sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_185AD093C(v9, &v10);
    swift_dynamicCast();
    v4 = [v6 BOOLValue];
  }

  else
  {
    sub_185ACF5CC(v9, &qword_1EA8CC830, &unk_185B6BEB0);
    return 0;
  }

  return v4;
}

unint64_t sub_185AFA8F0()
{
  if (*v0)
  {
    result = 0xD000000000000024;
  }

  else
  {
    result = 0xD00000000000001FLL;
  }

  *v0;
  return result;
}

BOOL sub_185AFA92C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a1 == 0xD000000000000030 && 0x8000000185B75960 == a2 || (sub_185B6859C() & 1) != 0)
  {
    v8 = a3[3];
    v9 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v8);
    v10 = (*(v9 + 24))(v8, v9);
LABEL_5:
    v11 = *(v10 + 16);

    return v11 != 0;
  }

  if (a1 == 0xD000000000000030 && 0x8000000185B759A0 == a2 || (sub_185B6859C() & 1) != 0)
  {
    v13 = a3[3];
    v14 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v13);
    v10 = (*(v14 + 16))(v13, v14);
    goto LABEL_5;
  }

  v15 = a3[3];
  v16 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v15);
  v17 = (*(v16 + 32))(v15, v16);
  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  v20 = (*(v19 + 40))(v18, v19);
  v21 = sub_185ACB848(v20, v17);
  if ((a4 & 1) == 0)
  {

    v22 = a3[3];
    v23 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v22);
    v21 = (*(v23 + 24))(v22, v23);
  }

  v24 = sub_185AC3A7C(a1, a2, v21);

  return v24 & 1;
}

unint64_t sub_185AFAB30()
{
  if (*v0)
  {
    result = 0xD000000000000023;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

void sub_185AFAB6C(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_185B681FC();
  v6 = APDefaultAuthenticationLog();
  sub_185B67B3C();

  v7 = a4[5];
  if (a1)
  {
    if (v7)
    {
      v8 = a4[4];
      v9 = a4[9];
      v10 = a4[10];
      __swift_project_boxed_opaque_existential_1(a4 + 6, v9);
      (*(v10 + 152))(v8, v7, 0, nullsub_1, 0, v9, v10);
    }
  }

  else if (v7)
  {
    v11 = a4[4];
    v12 = a4[9];
    v13 = a4[10];
    __swift_project_boxed_opaque_existential_1(a4 + 6, v12);
    (*(v13 + 160))(v11, v7, 1, nullsub_1, 0, v12, v13);
  }
}

uint64_t sub_185AFACB4(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  sub_185B681FC();
  v9 = APDefaultAuthenticationLog();
  sub_185B67B3C();

  v10 = a4[5];
  if (a1)
  {
    if (v10)
    {
      v11 = a4[4];
      v12 = a4[9];
      v13 = a4[10];
      __swift_project_boxed_opaque_existential_1(a4 + 6, v12);
      (*(v13 + 152))(v11, v10, 0, nullsub_1, 0, v12, v13);
    }

    a2 = 0;
  }

  else if (v10)
  {
    v14 = a4[4];
    v15 = a4[9];
    v16 = a4[10];
    __swift_project_boxed_opaque_existential_1(a4 + 6, v15);
    (*(v16 + 160))(v14, v10, 1, nullsub_1, 0, v15, v16);
  }

  return a5(a2);
}

uint64_t sub_185AFAE1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = HIDWORD(a3);
  v92 = HIDWORD(a4);
  v91 = HIDWORD(a5);
  v95 = HIDWORD(a6);
  sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v99 = a6;
  v16 = sub_185B2EC58(a3, a4, a5, a6);
  v34 = v16;
  if (v16)
  {
    v88 = v15;
    v35 = a8[3];
    v36 = a8[4];
    __swift_project_boxed_opaque_existential_1(a8, v35);
    if (((*(v36 + 96))(a3, a4, v98, v99, a1, a2, v35, v36) & 1) == 0)
    {
      v27 = v95;
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v45 = sub_185B67B8C();
      __swift_project_value_buffer(v45, qword_1EA8D2278);

      v46 = sub_185B67B6C();
      v47 = sub_185B680AC();

      if (os_log_type_enabled(v46, v47))
      {
        v15 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v104[0] = v48;
        *v15 = 67109378;
        atoken.val[0] = v96;
        atoken.val[1] = v88;
        atoken.val[2] = v97;
        atoken.val[3] = v92;
        atoken.val[4] = v98;
        atoken.val[5] = v91;
        atoken.val[6] = v99;
        atoken.val[7] = v95;
        *(v15 + 4) = audit_token_to_pid(&atoken);
        *(v15 + 8) = 2080;
        v49 = sub_185ACB2C4(a1, a2, v104);

        *(v15 + 10) = v49;
        v27 = v95;
        _os_log_impl(&dword_185AC1000, v46, v47, "Should not guard and track %d; access allowed to %s by entitlement", v15, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        MEMORY[0x1865FE2F0](v48, -1, -1);
        v50 = v15;
        LODWORD(v15) = v88;
        MEMORY[0x1865FE2F0](v50, -1, -1);

        v23 = v92;
        v22 = v91;
LABEL_30:
        v28 = 0uLL;
        v29 = 0uLL;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        goto LABEL_57;
      }

      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      LODWORD(v15) = v88;
LABEL_56:
      v22 = v91;
      v23 = v92;
      goto LABEL_57;
    }

    objc_opt_self();
    v27 = v95;
    if (swift_dynamicCastObjCClass())
    {
      v37 = v34;
      LODWORD(v15) = v88;
      log = v37;
      if (sub_185AFA60C())
      {

        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v38 = sub_185B67B8C();
        __swift_project_value_buffer(v38, qword_1EA8D2278);

        v39 = sub_185B67B6C();
        v40 = sub_185B680AC();

        if (os_log_type_enabled(v39, v40))
        {
          v15 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v104[0] = v41;
          *v15 = 67109378;
          atoken.val[0] = v96;
          atoken.val[1] = v88;
          v42 = v91;
          v23 = v92;
          atoken.val[2] = v97;
          atoken.val[3] = v92;
          atoken.val[4] = v98;
          atoken.val[5] = v91;
          atoken.val[6] = v99;
          atoken.val[7] = v95;
          *(v15 + 4) = audit_token_to_pid(&atoken);
          *(v15 + 8) = 2082;
          v43 = sub_185ACB2C4(a1, a2, v104);

          *(v15 + 10) = v43;
          v27 = v95;
          v44 = "Pid %d is a bundled executable but looks hidden, will allow access to %{public}s";
LABEL_29:
          _os_log_impl(&dword_185AC1000, v39, v40, v44, v15, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          MEMORY[0x1865FE2F0](v41, -1, -1);
          v59 = v15;
          LODWORD(v15) = v88;
          MEMORY[0x1865FE2F0](v59, -1, -1);

          v22 = v42;
          goto LABEL_30;
        }

LABEL_31:

        v28 = 0uLL;
        v29 = 0uLL;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        goto LABEL_56;
      }

      if (sub_185AFA79C())
      {

        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v57 = sub_185B67B8C();
        __swift_project_value_buffer(v57, qword_1EA8D2278);

        v39 = sub_185B67B6C();
        v40 = sub_185B680AC();

        if (os_log_type_enabled(v39, v40))
        {
          v15 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v104[0] = v41;
          *v15 = 67109378;
          atoken.val[0] = v96;
          atoken.val[1] = v88;
          v42 = v91;
          v23 = v92;
          atoken.val[2] = v97;
          atoken.val[3] = v92;
          atoken.val[4] = v98;
          atoken.val[5] = v91;
          atoken.val[6] = v99;
          atoken.val[7] = v95;
          *(v15 + 4) = audit_token_to_pid(&atoken);
          *(v15 + 8) = 2082;
          v58 = sub_185ACB2C4(a1, a2, v104);

          *(v15 + 10) = v58;
          v27 = v95;
          v44 = "Pid %d is a system shell, will allow access to %{public}s";
          goto LABEL_29;
        }

        goto LABEL_31;
      }

      v60 = [v37 bundleIdentifier];
      v61 = v37;
      v62 = v60;

      if (v62)
      {
        v84 = sub_185B67E4C();
        v55 = v63;

        sub_185ADF8F0(a8, v104);
        if (v55)
        {

          v56 = 0;
LABEL_54:
          *atoken.val = a1;
          *&atoken.val[2] = a2;
          *&atoken.val[4] = 0;
          *&atoken.val[6] = 0;
          v77 = v84;
          goto LABEL_55;
        }
      }

      else
      {
        sub_185ADF8F0(a8, v104);
        v84 = 0;
      }

      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v78 = sub_185B67B8C();
      __swift_project_value_buffer(v78, qword_1EA8D2278);
      v79 = sub_185B67B6C();
      v80 = sub_185B6809C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_185AC1000, v79, v80, "can't complete after shielding when we're not shielding; setting completionPolicy to afterAuthentication", v81, 2u);
        v82 = v81;
        v27 = v95;
        MEMORY[0x1865FE2F0](v82, -1, -1);
      }

      v55 = 0;
      v56 = 1;
      goto LABEL_54;
    }

    objc_opt_self();
    v51 = swift_dynamicCastObjCClass();
    LODWORD(v15) = v88;
    if (v51)
    {
      v52 = [v51 bundleIdentifier];
      if (v52)
      {
        v53 = v52;
        loga = sub_185B67E4C();
        v55 = v54;

        sub_185ADF8F0(a8, v104);
        if (v55)
        {

          v56 = 0;
LABEL_45:
          v27 = v95;
          *atoken.val = a1;
          *&atoken.val[2] = a2;
          *&atoken.val[4] = 0;
          *&atoken.val[6] = 0;
          v77 = loga;
LABEL_55:
          *&v101 = v77;
          *(&v101 + 1) = v55;
          sub_185AC66F8(v104, v102);
          WORD4(v103) = v56;
          HIDWORD(v103) = a7;
          v28 = *atoken.val;
          v29 = *&atoken.val[4];
          v30 = v101;
          v31 = v102[0];
          v32 = v102[1];
          v33 = v103;
          goto LABEL_56;
        }
      }

      else
      {
        sub_185ADF8F0(a8, v104);
        loga = 0;
      }

      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v73 = sub_185B67B8C();
      __swift_project_value_buffer(v73, qword_1EA8D2278);
      v74 = sub_185B67B6C();
      v75 = sub_185B6809C();
      if (os_log_type_enabled(v74, v75))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_185AC1000, v74, v75, "can't complete after shielding when we're not shielding; setting completionPolicy to afterAuthentication", v15, 2u);
        v76 = v15;
        LODWORD(v15) = v88;
        MEMORY[0x1865FE2F0](v76, -1, -1);
      }

      v55 = 0;
      v56 = 1;
      goto LABEL_45;
    }

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v64 = sub_185B67B8C();
    __swift_project_value_buffer(v64, qword_1EA8D2278);

    v65 = v34;
    v66 = sub_185B67B6C();
    v67 = sub_185B6808C();

    logb = v66;
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *atoken.val = v70;
      *v68 = 138412546;
      *(v68 + 4) = v65;
      *v69 = v34;
      *(v68 + 12) = 2082;
      v71 = v65;
      v72 = sub_185ACB2C4(a1, a2, &atoken);

      *(v68 + 14) = v72;
      _os_log_impl(&dword_185AC1000, logb, v67, "Record: %@ is neither an application nor extension. This should not be possible. Will allow access to %{public}s", v68, 0x16u);
      sub_185ACF5CC(v69, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v69, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      MEMORY[0x1865FE2F0](v70, -1, -1);
      MEMORY[0x1865FE2F0](v68, -1, -1);
    }

    else
    {
    }

    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v25 = a8;
    v27 = v95;
    LODWORD(v15) = v88;
    v22 = v91;
    v23 = v92;
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v17 = sub_185B67B8C();
    __swift_project_value_buffer(v17, qword_1EA8D2278);

    v18 = sub_185B67B6C();
    v19 = sub_185B680AC();

    if (!os_log_type_enabled(v18, v19))
    {

      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v22 = v91;
      v23 = v92;
      v27 = v95;
LABEL_57:
      v25 = a8;
      goto LABEL_58;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v104[0] = v21;
    *v20 = 67109378;
    atoken.val[0] = v96;
    atoken.val[1] = v15;
    v22 = v91;
    v23 = v92;
    atoken.val[2] = v97;
    atoken.val[3] = v92;
    atoken.val[4] = v98;
    atoken.val[5] = v91;
    atoken.val[6] = v99;
    atoken.val[7] = v95;
    *(v20 + 4) = audit_token_to_pid(&atoken);
    *(v20 + 8) = 2082;
    v24 = sub_185ACB2C4(a1, a2, v104);

    *(v20 + 10) = v24;
    v25 = a8;
    _os_log_impl(&dword_185AC1000, v18, v19, "Pid %d is not a bundled executable that we recognize, will allow access to %{public}s", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x1865FE2F0](v21, -1, -1);
    v26 = v20;
    v27 = v95;
    MEMORY[0x1865FE2F0](v26, -1, -1);

    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
  }

LABEL_58:
  *a9 = v28;
  *(a9 + 16) = v29;
  *(a9 + 32) = v30;
  *(a9 + 48) = v31;
  *(a9 + 64) = v32;
  *(a9 + 80) = v33;
  *(a9 + 96) = a10;
  *(a9 + 104) = v96;
  *(a9 + 108) = v15;
  *(a9 + 112) = v97;
  *(a9 + 116) = v23;
  *(a9 + 120) = v98;
  *(a9 + 124) = v22;
  *(a9 + 128) = v99;
  *(a9 + 132) = v27;
  return __swift_destroy_boxed_opaque_existential_0Tm(v25);
}

void sub_185AFBA68(int a1, uint64_t a2, unint64_t a3, void *a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, void *a9, void (*a10)(void), uint64_t a11, __int16 a12, void (*a13)(void), uint64_t a14)
{
  v74 = a8;
  v75 = a7;
  v76 = a6;
  v70 = a1;
  v18 = sub_185B67B1C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v69[1] = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_185B67E0C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v69[0] = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v73 = a11;
  v72 = a10;
  v71 = a9;
  v26 = sub_185B67B8C();
  v27 = __swift_project_value_buffer(v26, qword_1EA8D2278);
  sub_185B06EF0(a4, v82);

  v28 = sub_185B67B6C();
  v29 = sub_185B680AC();

  v30 = os_log_type_enabled(v28, v29);
  v69[2] = a2;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v69[3] = v27;
    v32 = v31;
    v33 = swift_slowAlloc();
    *&v81[0] = v33;
    *v32 = 67109890;
    *(v32 + 4) = v70;
    *(v32 + 8) = 2082;
    *(v32 + 10) = sub_185ACB2C4(a2, a3, v81);
    *(v32 + 18) = 2080;
    v34 = APDataSetAccessGrantReason.description.getter(v83);
    v36 = v35;
    sub_185B06EBC(v82);
    v37 = sub_185ACB2C4(v34, v36, v81);

    *(v32 + 20) = v37;
    *(v32 + 28) = 1024;
    *(v32 + 30) = a5;
    _os_log_impl(&dword_185AC1000, v28, v29, "mark %d as accessing %{public}s for reason %s monitoring %d", v32, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v33, -1, -1);
    MEMORY[0x1865FE2F0](v32, -1, -1);
  }

  else
  {

    sub_185B06EBC(v82);
  }

  v38 = v76;
  v39 = v76[9];
  v40 = v76[10];
  __swift_project_boxed_opaque_existential_1(v76 + 6, v39);
  v42 = *v38;
  v41 = v38[1];
  (*(v40 + 104))(a4[13], a4[14], a4[15], a4[16], v42, v41, a4[12], v75, v74, v71, v72, v73, v39, v40, v69[0]);
  v74 = v42;
  v75 = v41;
  v73 = a14;
  v72 = a13;
  v43 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v44 = sub_185AD006C(v42, v41, 0);
  if (v44)
  {
    v59 = v44;
    sub_185B67DFC();
    type metadata accessor for APSettingsManager(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v61 = [objc_opt_self() bundleForClass_];
    sub_185B67B0C();
    sub_185B67EAC();
    if (sub_185B67EFC() > 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_185B6BB70;
      v71 = v59;
      v63 = [v59 localizedName];
      v64 = sub_185B67E4C();
      v66 = v65;

      *(v62 + 56) = MEMORY[0x1E69E6158];
      *(v62 + 64) = sub_185B06CBC();
      *(v62 + 32) = v64;
      *(v62 + 40) = v66;
      v51 = sub_185B67E7C();
      v52 = v67;

      goto LABEL_11;
    }
  }

  else
  {
    sub_185B03ED8(v76, v81);
    v45 = sub_185B67B6C();
    v46 = sub_185B6808C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v77[0] = v48;
      *v47 = 136446210;
      v49 = v81[0];

      sub_185AF6A78(v81);
      v50 = sub_185ACB2C4(v49, *(&v49 + 1), v77);

      *(v47 + 4) = v50;
      _os_log_impl(&dword_185AC1000, v45, v46, "could not fetch bundle record for %{public}s to generate authentication description", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x1865FE2F0](v48, -1, -1);
      MEMORY[0x1865FE2F0](v47, -1, -1);
    }

    else
    {

      sub_185AF6A78(v81);
    }
  }

  v51 = 0;
  v52 = 0;
LABEL_11:
  sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);
  v68 = sub_185B2EC58(a4[13], a4[14], a4[15], a4[16]);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v72(0);
  }

  else
  {
    v71 = v52;

    v53 = v76[9];
    v54 = v76[10];
    __swift_project_boxed_opaque_existential_1(v76 + 6, v53);
    v55 = (*(v54 + 16))(v53, v54);
    v57 = v74;
    v56 = v75;
    LOBYTE(v53) = sub_185AC3A7C(v74, v75, v55);

    v58 = *(a4 + 15);
    v77[0] = *(a4 + 13);
    v77[1] = v58;
    LOBYTE(v78) = v53 & 1;
    *(&v78 + 1) = v51;
    *&v79 = v71;
    WORD4(v79) = a12 & 0x101;
    *&v80 = v57;
    *(&v80 + 1) = v56;
    v81[3] = v79;
    v81[4] = v80;
    v81[1] = v58;
    v81[2] = v78;
    v81[0] = v77[0];

    sub_185AF988C(v81, v72, v73);
    sub_185AF6A24(v77);
  }
}

uint64_t sub_185AFC30C(void *a1, char a2, int a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *), uint64_t a7, uint64_t (*a8)(void))
{
  if (a2)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v13 = sub_185B67B8C();
    __swift_project_value_buffer(v13, qword_1EA8D2278);

    sub_185B06F30(a1, 1);
    v14 = sub_185B67B6C();
    v15 = sub_185B6808C();

    sub_185B06F3C(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = a4;
      v20 = v18;
      v36 = v18;
      *v16 = 67109634;
      *(v16 + 4) = a3;
      *(v16 + 8) = 2082;
      *(v16 + 10) = sub_185ACB2C4(v19, a5, &v36);
      *(v16 + 18) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 20) = v22;
      *v17 = v22;
      _os_log_impl(&dword_185AC1000, v14, v15, "could not check if %d was entitled to access %{public}s: %@", v16, 0x1Cu);
      sub_185ACF5CC(v17, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1865FE2F0](v20, -1, -1);
      MEMORY[0x1865FE2F0](v16, -1, -1);
    }

    v23 = a1;
    return a6(v23);
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v31 = sub_185B67B8C();
    __swift_project_value_buffer(v31, qword_1EA8D2278);

    v32 = sub_185B67B6C();
    v33 = sub_185B680AC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v34 = 67109378;
      *(v34 + 4) = a3;
      *(v34 + 8) = 2082;
      *(v34 + 10) = sub_185ACB2C4(a4, a5, &v36);
      _os_log_impl(&dword_185AC1000, v32, v33, "%d was not entitled to access %{public}s -> no auth necessary. ", v34, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x1865FE2F0](v35, -1, -1);
      MEMORY[0x1865FE2F0](v34, -1, -1);
    }

    v23 = 0;
    return a6(v23);
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v25 = sub_185B67B8C();
  __swift_project_value_buffer(v25, qword_1EA8D2278);

  v26 = sub_185B67B6C();
  v27 = sub_185B680AC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36 = v29;
    *v28 = 67109378;
    *(v28 + 4) = a3;
    *(v28 + 8) = 2082;
    *(v28 + 10) = sub_185ACB2C4(a4, a5, &v36);
    _os_log_impl(&dword_185AC1000, v26, v27, "%d was entitled to access %{public}s -> do auth", v28, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x1865FE2F0](v29, -1, -1);
    MEMORY[0x1865FE2F0](v28, -1, -1);
  }

  return a8();
}

id sub_185AFC74C()
{
  result = APGetGuardServiceInterface();
  qword_1EA8D2320 = result;
  return result;
}

void sub_185AFC774(void (*a1)(id), uint64_t a2, void (*a3)(uint64_t *))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection14APGuardService_policy, v18);
    swift_unknownObjectRelease();
    sub_185AC66F8(v18, v19);
    a3(v19);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v6 = sub_185B67B8C();
    __swift_project_value_buffer(v6, qword_1EA8D2278);
    v7 = sub_185B67B6C();
    v8 = sub_185B6808C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_185AC1000, v7, v8, "No policy for guard!", v9, 2u);
      MEMORY[0x1865FE2F0](v9, -1, -1);
    }

    v10 = *MEMORY[0x1E696A798];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6BB60;
    *(inited + 32) = 0x656E694C5041;
    v12 = MEMORY[0x1E69E6530];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 328;
    v13 = MEMORY[0x1E69E6158];
    *(inited + 72) = v12;
    *(inited + 80) = 0x636E75465041;
    *(inited + 120) = v13;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = 0xD000000000000019;
    *(inited + 104) = 0x8000000185B75A00;
    v14 = v10;
    sub_185AD038C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
    swift_arrayDestroy();
    v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v16 = sub_185B67D7C();

    v17 = [v15 initWithDomain:v14 code:6 userInfo:v16];

    a1(v17);
  }
}

uint64_t sub_185AFCA24(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, void (*a5)(void), uint64_t a6)
{
  v38 = a6;
  v37 = a5;
  v36 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v34 - v12;
  v14 = *&a4[OBJC_IVAR____TtC13AppProtection13APGuardClient_connection];

  [v14 auditToken];
  v15 = v40[0];
  v16 = v40[1];
  v18 = v40[2];
  v17 = v40[3];
  v19 = [v14 processIdentifier];
  sub_185ADF8F0(v36, v39);
  v36 = a2;
  sub_185AFAE1C(a2, a3, v15, v16, v18, v17, v19, v39, v40, 0x7FFFFFFFFFFFFFFFLL);
  [v14 auditToken];
  v35 = v39[0];
  v20 = v39[2];
  v34 = v39[1];
  v21 = v39[3];
  v22 = sub_185B67AFC();
  v23 = 1;
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v24 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v25 = *&a4[v24];
  if (*(v25 + 16))
  {
    v26 = *&a4[v24];

    v27 = v36;
    v28 = sub_185AC9F40(v36, a3);
    if (v29)
    {
      v30 = *(*(v25 + 56) + 8 * v28);

      v23 = v30 < 1;
    }

    else
    {
    }
  }

  else
  {
    v27 = v36;
  }

  v31 = a4;
  v32 = v38;

  sub_185B0410C(v35, v34, v20, v21, v13, 1, v23, v40, v31, v27, a3, v37, v32, qword_1EF468088, &unk_1EF4680B0, sub_185B07788, &unk_1EF4680D8, sub_185B07778, sub_185B077A0, sub_185B00C18);

  sub_185ACF5CC(v13, &unk_1EA8CD9A0, &unk_185B6C2C0);
  return sub_185B06EBC(v40);
}

uint64_t sub_185AFCD8C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, char *a5, unint64_t a6, void (*a7)(void), uint64_t a8)
{
  v46 = a8;
  v45 = a7;
  v44 = a6;
  v43 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v42 - v15;
  v17 = *a4;
  v18 = a4[1];
  v19 = a4[2];
  v20 = a4[3];
  v21 = *&a5[OBJC_IVAR____TtC13AppProtection13APGuardClient_connection];

  LODWORD(v21) = [v21 processIdentifier];
  sub_185ADF8F0(v43, v47);
  v43 = a2;
  v22 = a2;
  v23 = a3;
  v24 = v21;
  v25 = v16;
  sub_185AFAE1C(v22, a3, v17, v18, v19, v20, v24, v47, v48, v44);
  v26 = a4[1];
  v44 = *a4;
  v28 = a4[2];
  v27 = a4[3];
  v29 = sub_185B67AFC();
  v30 = 1;
  (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
  v31 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v32 = *&a5[v31];
  if (*(v32 + 16))
  {
    v33 = *&a5[v31];

    v34 = v43;
    v35 = sub_185AC9F40(v43, v23);
    if (v36)
    {
      v37 = *(*(v32 + 56) + 8 * v35);

      v30 = v37 < 1;
    }

    else
    {
    }
  }

  else
  {
    v34 = v43;
  }

  v38 = v23;
  v39 = a5;
  v40 = v46;

  sub_185B0410C(v44, v26, v28, v27, v25, 1, v30, v48, v39, v34, v38, v45, v40, qword_1EF467F48, &unk_1EF467F70, sub_185B07788, &unk_1EF467F98, sub_185B07778, sub_185B077A0, sub_185B018B8);

  sub_185ACF5CC(v25, &unk_1EA8CD9A0, &unk_185B6C2C0);
  return sub_185B06EBC(v48);
}

void sub_185AFD150(void *a1, void (*a2)(id, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_185AFA488(a4, a5, a1))
  {
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    v11 = (*(v10 + 64))(a4, a5, v9, v10) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  a2(v12, 0);
}

uint64_t sub_185AFD258(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, char *a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v46 = a8;
  v42 = a7;
  v45 = a6;
  v44 = a1;
  v47 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v41 - v16;
  v19 = *a4;
  v18 = a4[1];
  v20 = a4[2];
  v21 = a4[3];
  v22 = *&a5[OBJC_IVAR____TtC13AppProtection13APGuardClient_connection];

  v23 = [v22 processIdentifier];
  sub_185ADF8F0(v44, v48);
  v43 = a2;
  v24 = a2;
  v25 = a3;
  sub_185AFAE1C(v24, a3, v19, v18, v20, v21, v23, v48, v49, v45);
  [v22 auditToken];
  v45 = v48[0];
  v26 = v48[2];
  v44 = v48[1];
  v27 = v48[3];
  v28 = sub_185B67AFC();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v17, v42, v28);
  v30 = 1;
  (*(v29 + 56))(v17, 0, 1, v28);
  v31 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v32 = *&a5[v31];
  if (*(v32 + 16))
  {
    v33 = *&a5[v31];

    v34 = v43;
    v35 = sub_185AC9F40(v43, v25);
    if (v36)
    {
      v37 = *(*(v32 + 56) + 8 * v35);

      v30 = v37 < 1;
    }

    else
    {
    }
  }

  else
  {
    v34 = v43;
  }

  v38 = a5;
  v39 = v47;

  sub_185B0410C(v45, v44, v26, v27, v17, 0, v30, v49, v38, v34, v25, v46, v39, qword_1EF467E08, &unk_1EF467E30, sub_185B06EEC, &unk_1EF467E58, sub_185B06F28, sub_185B06F2C, sub_185B02558);

  sub_185ACF5CC(v17, &unk_1EA8CD9A0, &unk_185B6C2C0);
  return sub_185B06EBC(v49);
}

uint64_t sub_185AFD5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a1)
  {
    sub_185AFECAC(a3, a4);
  }

  else
  {
    sub_185AFEE10(a3, a4);
  }

  return a5(a1);
}

uint64_t sub_185AFD794(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v34 = a5;
  v9 = sub_185B67AFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v15 = sub_185B67B8C();
  __swift_project_value_buffer(v15, qword_1EA8D2278);
  v16 = *(v10 + 16);
  v33 = a3;
  v16(v14, a3, v9);
  v17 = a2;
  v18 = sub_185B67B6C();
  v19 = sub_185B680AC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v35 = v22;
    *v21 = 67109378;
    *(v21 + 4) = [*&v17[OBJC_IVAR____TtC13AppProtection13APGuardClient_connection] processIdentifier];

    *(v21 + 8) = 2082;
    v23 = sub_185B67AAC();
    v25 = v24;
    (*(v10 + 8))(v14, v9);
    v26 = sub_185ACB2C4(v23, v25, &v35);

    *(v21 + 10) = v26;
    _os_log_impl(&dword_185AC1000, v18, v19, "pid %d ending transaction with uuid %{public}s", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x1865FE2F0](v22, -1, -1);
    v27 = v21;
    a4 = v32;
    MEMORY[0x1865FE2F0](v27, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  (*(v29 + 112))(v33, v28, v29);
  return a4(0);
}

uint64_t sub_185AFDC10(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v35 = a5;
  v34 = a4;
  v33 = a3;
  v8 = sub_185B67B5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v33 - v15;
  v17 = APDefaultAuthenticationLog();
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v18 = sub_185B67B8C();
  __swift_project_value_buffer(v18, qword_1EA8D2278);
  v19 = a2;
  v20 = sub_185B67B6C();
  v21 = sub_185B680AC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = [*(&v19->isa + OBJC_IVAR____TtC13AppProtection13APGuardClient_connection) processIdentifier];

    _os_log_impl(&dword_185AC1000, v20, v21, "pid %d authenticating unconditionally", v22, 8u);
    MEMORY[0x1865FE2F0](v22, -1, -1);
  }

  else
  {

    v20 = v19;
  }

  (*(v9 + 16))(v13, v16, v8);
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v23, v13, v8);
  v26 = (v25 + v24);
  v27 = v34;
  *v26 = v33;
  v26[1] = v27;

  sub_185B6820C();
  v28 = APDefaultAuthenticationLog();
  sub_185B67B3C();

  memset(v37, 0, sizeof(v37));
  LOBYTE(v38) = -2;
  *(&v38 + 1) = v35;
  *&v39 = v36;
  WORD4(v39) = 0;
  v40 = 0uLL;
  v41[2] = v38;
  v41[3] = v39;
  v41[4] = 0uLL;
  memset(v41, 0, 32);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = *(v30 + 72);

  v31(v41, sub_185B06DCC, v25, v29, v30);
  sub_185AF6A24(v37);

  return (*(v9 + 8))(v16, v8);
}

uint64_t sub_185AFDFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_185B681FC();
  v7 = APDefaultAuthenticationLog();
  sub_185B67B3C();

  return a4(a1, a2);
}

uint64_t sub_185AFE0F4(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v12 = sub_185AD006C(a2, a3, 1);
  v35 = a6;
  if (!v12)
  {
    goto LABEL_2;
  }

  v27 = v12;
  v28 = [v12 identities];

  sub_185ADF590(0, &qword_1EA8CD088, 0x1E69635D8);
  v29 = sub_185B67F6C();

  if (v29 >> 62)
  {
    result = sub_185B6844C();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_20:

LABEL_2:
    v13 = 0;
    goto LABEL_3;
  }

LABEL_9:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x1865FD3E0](0, v29);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v31 = *(v29 + 32);
  }

  v13 = v31;

LABEL_3:
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v17 = sub_185AC3A7C(a2, a3, v16);

  v18 = *&a4[OBJC_IVAR____TtC13AppProtection13APGuardClient_connection];
  v19 = v13;
  LODWORD(v18) = [v18 processIdentifier];
  sub_185ADF8F0(a1, v46);
  v43[0] = a2;
  v43[1] = a3;
  v44 = 0u;
  v45 = 0u;
  v46[20] = 257;
  v47 = v18;
  v20 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v21 = *&a4[v20];
  v22 = *(v21 + 16);

  if (!v22)
  {
LABEL_14:
    v26 = 1;
    goto LABEL_15;
  }

  v23 = sub_185AC9F40(a2, a3);
  if ((v24 & 1) == 0)
  {

    goto LABEL_14;
  }

  v25 = *(*(v21 + 56) + 8 * v23);

  v26 = v25 < 1;
LABEL_15:
  *&v38[0] = v13;
  *(&v38[0] + 1) = (v13 != 0) & v17;
  if (v13)
  {
    v32 = 0x80;
  }

  else
  {
    v32 = -2;
  }

  v38[1] = 0uLL;
  LOBYTE(v39) = v32;
  v40 = 0;
  *&v41 = 0;
  BYTE8(v41) = 1;
  BYTE9(v41) = v26;
  *&v42 = a2;
  *(&v42 + 1) = a3;
  v48[3] = v41;
  v48[4] = v42;
  v48[1] = 0uLL;
  v48[2] = v39;
  v48[0] = v38[0];
  sub_185ADF8F0(a1, v37);
  v33 = swift_allocObject();
  sub_185AC66F8(v37, (v33 + 2));
  v33[7] = a2;
  v33[8] = a3;
  v33[9] = a4;
  v33[10] = a5;
  v33[11] = v35;
  swift_bridgeObjectRetain_n();
  v34 = a4;

  sub_185AF988C(v48, sub_185B06C90, v33);

  sub_185AF6A24(v38);

  return sub_185AF6A78(v43);
}

uint64_t sub_185AFE474(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_185B67E4C();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_185AFE5BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v64 = a8;
  v65 = a6;
  v66 = a7;
  v14 = *a5;
  v60 = a5[1];
  v61 = v14;
  v15 = sub_185B67B1C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v58 = &v57.i8[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_185B67E0C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v63.i64[0] = a4;
  LODWORD(a4) = [*(a4 + OBJC_IVAR____TtC13AppProtection13APGuardClient_connection) processIdentifier];
  sub_185ADF8F0(a1, v75);
  v72[0] = a2;
  v72[1] = a3;
  v73 = 0u;
  v74 = 0u;
  v75[20] = 1;
  v76 = a4;
  v23 = a1[3];
  v22 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v24 = *(v22 + 16);

  v25 = v23;
  v26 = a2;
  v27 = v24(v25, v22);
  v28 = sub_185AC3A7C(a2, a3, v27);

  v29 = (a5[2].i8[0] & 1) == 0;
  if (a5[2].i8[0])
  {
    v30 = -2;
  }

  else
  {
    v30 = v28 & 1;
  }

  v59 = v30;
  if (v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = -1;
  }

  v32 = vdupq_n_s64(v31);
  if (v66)
  {
    v33 = v66;
    v34 = v63.i64[0];
  }

  else
  {
    v57 = v32;
    sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);

    v35 = a3;
    v36 = sub_185B245BC(a2, a3, 1);
    v34 = v63.i64[0];
    if (v36)
    {
      v37 = v36;
      sub_185B67DFC();
      type metadata accessor for APSettingsManager(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v39 = [objc_opt_self() bundleForClass_];
      sub_185B67B0C();
      v65 = sub_185B67EAC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_185B6BB70;
      v41 = [v37 localizedName];
      v42 = sub_185B67E4C();
      v44 = v43;

      *(v40 + 56) = MEMORY[0x1E69E6158];
      *(v40 + 64) = sub_185B06CBC();
      *(v40 + 32) = v42;
      *(v40 + 40) = v44;
      v26 = a2;
      v65 = sub_185B67E7C();
      v33 = v45;
    }

    else
    {
      v33 = 0;
    }

    v32 = v57;
    a3 = v35;
  }

  v63 = vbicq_s8(v60, v32);
  v61 = vbicq_s8(v61, v32);
  v46 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v47 = *&v34[v46];
  v48 = *(v47 + 16);

  if (!v48)
  {
    goto LABEL_17;
  }

  v49 = sub_185AC9F40(v26, a3);
  if ((v50 & 1) == 0)
  {

LABEL_17:
    v52 = 1;
    goto LABEL_18;
  }

  v51 = *(*(v47 + 56) + 8 * v49);

  v52 = v51 < 1;
LABEL_18:
  v68[0] = v61;
  v68[1] = v63;
  v69.i8[0] = v59;
  v69.i64[1] = v65;
  v70.i64[0] = v33;
  v70.i8[8] = 0;
  v70.i8[9] = v52;
  v71.i64[0] = v26;
  v71.i64[1] = a3;
  v77[2] = v69;
  v77[3] = v70;
  v77[4] = v71;
  v77[0] = v61;
  v77[1] = v63;
  sub_185ADF8F0(v62, v67);
  v53 = swift_allocObject();
  sub_185AC66F8(v67, (v53 + 2));
  v53[7] = v26;
  v53[8] = a3;
  v54 = v64;
  v53[9] = v34;
  v53[10] = v54;
  v53[11] = a9;
  swift_bridgeObjectRetain_n();
  v55 = v34;

  sub_185AF988C(v77, sub_185B06C90, v53);

  sub_185AF6A24(v68);
  return sub_185AF6A78(v72);
}

uint64_t sub_185AFEA9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  if (a1)
  {
    (*(v15 + 160))(a3, a4, 1, a9, 0, v14, v15);
    sub_185AFECAC(a3, a4);
  }

  else
  {
    (*(v15 + 152))(a3, a4, 0, a8, 0, v14, v15);
    sub_185AFEE10(a3, a4);
  }

  return a6(a1);
}

uint64_t sub_185AFEBA8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t sub_185AFECAC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v8 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v7);
  v23 = v10;
  *(v4 + v7) = 0x8000000000000000;
  v11 = sub_185AC9F40(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v12;
  if (v10[3] < v16)
  {
    sub_185B4F8E8(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_185AC9F40(a1, a2);
    if ((v3 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_185B685DC();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(v4 + v7) = v10;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  v4 = v11;
  sub_185B50B70(v11, a1, a2, 0, v10);

  v11 = v4;
LABEL_8:
  while (1)
  {
    v18 = v10[7];
    v19 = *(v18 + 8 * v11);
    v15 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v15)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v22 = v11;
    sub_185B51254();
    v11 = v22;
    v10 = v23;
    *(v4 + v7) = v23;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v18 + 8 * v11) = v20;
  return swift_endAccess();
}

uint64_t sub_185AFEE10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = sub_185AC9F40(a1, a2);
  if (v9)
  {
    v10 = v8;
    v11 = *(v3 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_185B51254();
    }

    v14 = *(*(v13 + 48) + 16 * v10 + 8);

    sub_185B3D81C(v10, v13);
    *(v3 + v6) = v13;
  }

  return swift_endAccess();
}

uint64_t sub_185AFEED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  swift_beginAccess();
  sub_185B3E1A0(a3, a4);
  swift_endAccess();
  return a5(0);
}

uint64_t sub_185AFF048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  return (*(v14 + 168))(a2, a3, [*(a4 + OBJC_IVAR____TtC13AppProtection13APGuardClient_connection) processIdentifier], a5, a6, a7, v13, v14);
}

uint64_t sub_185AFF280(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v9 = sub_185B67AFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a3, v9);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v10 + 32))(v16 + v14, v13, v9);
  v17 = (v16 + v15);
  *v17 = v23;
  v17[1] = a5;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = *(v19 + 176);

  v20(a3, sub_185B05BFC, v16, v18, v19);
}

uint64_t sub_185AFF434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = sub_185B2ED60(a3);
    swift_endAccess();
    sub_185AE20B8(v9);
  }

  return a4(a1);
}

void sub_185AFF688(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if ((*(v10 + 200))(a2, v9, v10))
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_185B05BBC;
    *(v12 + 24) = v11;
    v13 = OBJC_IVAR____TtC13AppProtection13APGuardClient_uuidToInvalidationBlockMap;
    swift_beginAccess();

    v14 = *(a3 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a3 + v13);
    *(a3 + v13) = 0x8000000000000000;
    sub_185B526C4(sub_185B05BC4, v12, a2, isUniquelyReferenced_nonNull_native);
    *(a3 + v13) = v17;
    swift_endAccess();
  }

  else
  {
    v16 = sub_185AD0148(0xFuLL, 0xD000000000000031, 0x8000000185B75A40, 601, 0xD00000000000002BLL, 0x8000000185B75A80);
    a4();
  }
}

void sub_185AFF9A0()
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v0 = sub_185B67B8C();
  __swift_project_value_buffer(v0, qword_1EA8D2278);
  oslog = sub_185B67B6C();
  v1 = sub_185B6808C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_185AC1000, oslog, v1, "Couldn't cleanup assertions with policy", v2, 2u);
    MEMORY[0x1865FE2F0](v2, -1, -1);
  }
}

uint64_t sub_185AFFA88(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 192))([*(a2 + OBJC_IVAR____TtC13AppProtection13APGuardClient_connection) processIdentifier], v3, v4);
}

id sub_185AFFC20()
{
  if (qword_1EA8CBEA0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2320;

  return v0;
}

id sub_185AFFCC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_185AFFD80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APGuardService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection14APGuardService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

id sub_185AFFDFC(void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for APGuardClient();
  v5 = objc_allocWithZone(v4);
  v6 = MEMORY[0x1E69E7CC8];
  *&v5[OBJC_IVAR____TtC13AppProtection13APGuardClient_bundleIDToFailedAuthAttemptMap] = MEMORY[0x1E69E7CC8];
  *&v5[OBJC_IVAR____TtC13AppProtection13APGuardClient_uuidToInvalidationBlockMap] = v6;
  *&v5[OBJC_IVAR____TtC13AppProtection13APGuardClient_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1EF467A50;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC13AppProtection13APGuardClient_connection] = a1;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = a1;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_185AFFEB4(uint64_t a1)
{
  result = sub_185AFFEF8(&qword_1EA8CBE88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_185AFFEF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for APGuardClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_185AFFF40(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v115 = sub_185B67B5C();
  v117 = *(v115 - 8);
  v6 = *(v117 + 64);
  v8 = MEMORY[0x1EEE9AC00](v115, v7);
  v108 = v9;
  v109 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v107 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_185ACA0F0;
  *(v14 + 24) = v13;
  v116 = v14;
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  v114 = v13;

  v15 = APDefaultAuthenticationLog();
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v16 = sub_185B67B8C();
  v17 = __swift_project_value_buffer(v16, qword_1EA8D2278);
  sub_185B03ED8(a2, &v132);
  sub_185B03ED8(a2, &v128);
  sub_185B03ED8(a2, v125);
  sub_185B03ED8(a2, v123);
  sub_185B03ED8(a2, v121);
  sub_185B03ED8(a2, v119);
  v113 = v17;
  v18 = sub_185B67B6C();
  v19 = sub_185B680AC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v112 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v118 = v22;
    *v21 = 136447490;
    v23 = v132;

    sub_185AF6A78(&v132);
    v24 = sub_185ACB2C4(v23, *(&v23 + 1), &v118);

    *(v21 + 4) = v24;
    v110 = a3;
    v111 = v12;
    *(v21 + 12) = 1024;
    v25 = v131 != 0;
    sub_185AF6A78(&v128);
    *(v21 + 14) = v25;
    *(v21 + 18) = 2082;
    if (v127)
    {
      v26 = v126;
    }

    else
    {
      v26 = 0x676E6968746F6E28;
    }

    if (v127)
    {
      v27 = v127;
    }

    else
    {
      v27 = 0xE900000000000029;
    }

    sub_185AF6A78(v125);
    v28 = sub_185ACB2C4(v26, v27, &v118);

    *(v21 + 20) = v28;
    *(v21 + 28) = 1024;
    LODWORD(v28) = v124;
    sub_185AF6A78(v123);
    *(v21 + 30) = v28;
    *(v21 + 34) = 2082;
    if (v122)
    {
      v29 = 0xD000000000000024;
    }

    else
    {
      v29 = 0xD00000000000001FLL;
    }

    if (v122)
    {
      v30 = "ice";
    }

    else
    {
      v30 = ".afterAuthentication";
    }

    sub_185AF6A78(v121);
    v31 = sub_185ACB2C4(v29, v30 | 0x8000000000000000, &v118);
    a3 = v110;

    *(v21 + 36) = v31;
    *(v21 + 44) = 2082;
    if (v120)
    {
      v32 = 0xD000000000000023;
    }

    else
    {
      v32 = 0xD000000000000018;
    }

    if (v120)
    {
      v33 = "CompletionPolicy.afterShielding";
    }

    else
    {
      v33 = "y.effectivelyLocked";
    }

    sub_185AF6A78(v119);
    v34 = sub_185ACB2C4(v32, v33 | 0x8000000000000000, &v118);
    v12 = v111;

    *(v21 + 46) = v34;
    _os_log_impl(&dword_185AC1000, v18, v19, "Evaluating guard action checking %{public}s, shielding (%{BOOL}d) %{public}s, requested by %d, completionPolicy %{public}s, lockedCheckPolicy %{public}s", v21, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v22, -1, -1);
    v35 = v21;
    a1 = v112;
    MEMORY[0x1865FE2F0](v35, -1, -1);
  }

  else
  {
    sub_185AF6A78(v123);
    sub_185AF6A78(&v128);

    sub_185AF6A78(v119);
    sub_185AF6A78(v121);
    sub_185AF6A78(v125);
    sub_185AF6A78(&v132);
  }

  v36 = *(a2 + 89);
  v37 = *a2;
  v38 = *(a2 + 8);
  if (!sub_185AFA92C(*a2, v38, (a2 + 48), v36))
  {
    v39 = *(a2 + 24);
    if (!v39 || !sub_185AFA92C(*(a2 + 16), v39, (a2 + 48), v36))
    {
      sub_185B03ED8(a2, &v132);
      sub_185B03ED8(a2, &v128);
      v48 = sub_185B67B6C();
      v49 = sub_185B680AC();
      if (os_log_type_enabled(v48, v49))
      {
        v111 = v12;
        v50 = a3;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v123[0] = v52;
        *v51 = 136446466;
        v53 = v132;

        sub_185AF6A78(&v132);
        v54 = sub_185ACB2C4(v53, *(&v53 + 1), v123);

        *(v51 + 4) = v54;
        *(v51 + 12) = 2082;
        if (*(&v129 + 1))
        {
          *&v125[0] = 1684955424;
          *(&v125[0] + 1) = 0xE400000000000000;
          MEMORY[0x1865FCF60](v129);

          MEMORY[0x1865FCF60](1701994784, 0xE400000000000000);

          v55 = *(&v125[0] + 1);
          v56 = *&v125[0];
        }

        else
        {
          v55 = 0xE200000000000000;
          v56 = 29545;
        }

        sub_185AF6A78(&v128);
        v91 = sub_185ACB2C4(v56, v55, v123);

        *(v51 + 14) = v91;
        _os_log_impl(&dword_185AC1000, v48, v49, "%{public}s %{public}s not locked. Unshielding.", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v52, -1, -1);
        MEMORY[0x1865FE2F0](v51, -1, -1);

        a3 = v50;
        v12 = v111;
      }

      else
      {

        sub_185AF6A78(&v132);
        sub_185AF6A78(&v128);
      }

      v47 = *(a2 + 40);
      v45 = v115;
      if (!v47)
      {
        goto LABEL_53;
      }

LABEL_52:
      v92 = *(a2 + 32);
      v93 = *(a2 + 72);
      v94 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v93);
      (*(v94 + 152))(v92, v47, 0, nullsub_1, 0, v93, v94);
LABEL_53:
      a3[2](a3, 1, 0);
      goto LABEL_57;
    }
  }

  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v40);
  if ((*(v41 + 64))(v37, v38, v40, v41))
  {
    v42 = sub_185B67B6C();
    v43 = sub_185B680AC();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v115;
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_185AC1000, v42, v43, "have cached authentication.", v46, 2u);
      MEMORY[0x1865FE2F0](v46, -1, -1);
    }

    v47 = *(a2 + 40);
    if (!v47)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  sub_185B03ED8(a2, &v132);
  sub_185B03F10(a1, &v128);
  v57 = sub_185B67B6C();
  v58 = sub_185B680AC();
  sub_185AF6A24(a1);
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v110 = a3;
    v113 = v60;
    v121[0] = v60;
    *v59 = 136446466;
    if (BYTE8(v137))
    {
      v61 = 0xD000000000000024;
    }

    else
    {
      v61 = 0xD00000000000001FLL;
    }

    v62 = v12;
    if (BYTE8(v137))
    {
      v63 = "ice";
    }

    else
    {
      v63 = ".afterAuthentication";
    }

    sub_185AF6A78(&v132);
    v64 = sub_185ACB2C4(v61, v63 | 0x8000000000000000, v121);
    v12 = v62;

    *(v59 + 4) = v64;
    *(v59 + 12) = 2082;
    v65 = *(a1 + 16);
    v128 = *a1;
    v129 = v65;
    v130 = *(a1 + 32);
    v66 = *(a1 + 16);
    v125[0] = *a1;
    v125[1] = v66;
    LOBYTE(v126) = *(a1 + 32);
    sub_185AD04BC(&v128, v123, &qword_1EA8CD080, &unk_185B6CDF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD080, &unk_185B6CDF0);
    v67 = sub_185B67EBC();
    v69 = sub_185ACB2C4(v67, v68, v121);

    *(v59 + 14) = v69;
    _os_log_impl(&dword_185AC1000, v57, v58, "Begin auth with completion policy %{public}s, bind target: %{public}s", v59, 0x16u);
    v70 = v113;
    swift_arrayDestroy();
    a3 = v110;
    MEMORY[0x1865FE2F0](v70, -1, -1);
    MEMORY[0x1865FE2F0](v59, -1, -1);
  }

  else
  {

    sub_185AF6A78(&v132);
  }

  v45 = v115;
  v71 = *(a2 + 88);
  v112 = a1;
  if (v71)
  {
    v72 = v117;
    v73 = v109;
    (*(v117 + 16))(v109, v12, v115);
    sub_185B03ED8(a2, &v132);
    v74 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v75 = v12;
    v76 = (v108 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    v78 = v73;
    v79 = v75;
    v45 = v115;
    (*(v72 + 32))(v77 + v74, v78, v115);
    v80 = (v77 + v76);
    v81 = v135;
    v80[2] = v134;
    v80[3] = v81;
    v82 = v137;
    v80[4] = v136;
    v80[5] = v82;
    v83 = v133;
    *v80 = v132;
    v80[1] = v83;
    v84 = (v77 + ((v76 + 103) & 0xFFFFFFFFFFFFFFF8));
    v85 = v116;
    *v84 = sub_185B03ED0;
    v84[1] = v85;

    v86 = sub_185B07798;
  }

  else
  {
    v87 = *(a2 + 40);
    if (v87)
    {
      v88 = *(a2 + 32);
      v89 = *(a2 + 72);
      v90 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v89);
      (*(v90 + 152))(v88, v87, 1, sub_185B03ED0, v116, v89, v90);
    }

    else
    {
      a3[2](a3, 1, 0);
    }

    v95 = v117;
    v96 = v109;
    (*(v117 + 16))(v109, v12, v45);
    sub_185B03ED8(a2, &v132);
    v97 = (*(v95 + 80) + 16) & ~*(v95 + 80);
    v79 = v12;
    v98 = (v108 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    (*(v95 + 32))(v77 + v97, v96, v45);
    v99 = (v77 + v98);
    v100 = v135;
    v99[2] = v134;
    v99[3] = v100;
    v101 = v137;
    v99[4] = v136;
    v99[5] = v101;
    v102 = v133;
    *v99 = v132;
    v99[1] = v102;
    v86 = sub_185B0779C;
  }

  v103 = v86;

  sub_185B6820C();
  v104 = APDefaultAuthenticationLog();
  sub_185B67B3C();

  v105 = *(a2 + 72);
  v106 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v105);
  (*(v106 + 72))(v112, v103, v77, v105, v106);

  v12 = v79;
LABEL_57:
  (*(v117 + 8))(v12, v45);

  _Block_release(a3);
  _Block_release(a3);
}

uint64_t sub_185B00C18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v109 = a1;
  v13 = sub_185B67B5C();
  v115 = *(v13 - 8);
  v14 = *(v115 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v107 = v17;
  v108 = v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v106 - v19;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v111 = a4;
  v21[4] = a5;
  v21[5] = a6;
  v114 = a6;
  v21[6] = a7;
  v110 = a3;
  v112 = a5;

  v113 = a7;

  v22 = APDefaultAuthenticationLog();
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v23 = sub_185B67B8C();
  v24 = __swift_project_value_buffer(v23, qword_1EA8D2278);
  sub_185B03ED8(a2, &v132);
  sub_185B03ED8(a2, &v128);
  sub_185B03ED8(a2, v125);
  sub_185B03ED8(a2, v123);
  sub_185B03ED8(a2, v121);
  sub_185B03ED8(a2, v119);
  v25 = sub_185B67B6C();
  v26 = sub_185B680AC();
  v27 = os_log_type_enabled(v25, v26);
  v116 = v21;
  v117 = v20;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v106[0] = swift_slowAlloc();
    v118 = v106[0];
    *v28 = 136447490;
    v29 = v132;

    sub_185AF6A78(&v132);
    v30 = sub_185ACB2C4(v29, *(&v29 + 1), &v118);

    *(v28 + 4) = v30;
    v106[1] = v24;
    *(v28 + 12) = 1024;
    v31 = v131 != 0;
    sub_185AF6A78(&v128);
    *(v28 + 14) = v31;
    *(v28 + 18) = 2082;
    if (v127)
    {
      v32 = v126;
    }

    else
    {
      v32 = 0x676E6968746F6E28;
    }

    if (v127)
    {
      v33 = v127;
    }

    else
    {
      v33 = 0xE900000000000029;
    }

    sub_185AF6A78(v125);
    v34 = sub_185ACB2C4(v32, v33, &v118);

    *(v28 + 20) = v34;
    *(v28 + 28) = 1024;
    LODWORD(v34) = v124;
    sub_185AF6A78(v123);
    *(v28 + 30) = v34;
    *(v28 + 34) = 2082;
    if (v122)
    {
      v35 = 0xD000000000000024;
    }

    else
    {
      v35 = 0xD00000000000001FLL;
    }

    if (v122)
    {
      v36 = "ice";
    }

    else
    {
      v36 = ".afterAuthentication";
    }

    sub_185AF6A78(v121);
    v37 = sub_185ACB2C4(v35, v36 | 0x8000000000000000, &v118);

    *(v28 + 36) = v37;
    *(v28 + 44) = 2082;
    if (v120)
    {
      v38 = 0xD000000000000023;
    }

    else
    {
      v38 = 0xD000000000000018;
    }

    if (v120)
    {
      v39 = "CompletionPolicy.afterShielding";
    }

    else
    {
      v39 = "y.effectivelyLocked";
    }

    sub_185AF6A78(v119);
    v40 = sub_185ACB2C4(v38, v39 | 0x8000000000000000, &v118);

    *(v28 + 46) = v40;
    _os_log_impl(&dword_185AC1000, v25, v26, "Evaluating guard action checking %{public}s, shielding (%{BOOL}d) %{public}s, requested by %d, completionPolicy %{public}s, lockedCheckPolicy %{public}s", v28, 0x36u);
    v41 = v106[0];
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v41, -1, -1);
    MEMORY[0x1865FE2F0](v28, -1, -1);
  }

  else
  {
    sub_185AF6A78(v123);
    sub_185AF6A78(&v128);

    sub_185AF6A78(v119);
    sub_185AF6A78(v121);
    sub_185AF6A78(v125);
    sub_185AF6A78(&v132);
  }

  v42 = *(a2 + 89);
  v43 = *a2;
  v44 = *(a2 + 8);
  if (!sub_185AFA92C(*a2, v44, (a2 + 48), v42))
  {
    v45 = *(a2 + 24);
    if (!v45 || !sub_185AFA92C(*(a2 + 16), v45, (a2 + 48), v42))
    {
      sub_185B03ED8(a2, &v132);
      sub_185B03ED8(a2, &v128);
      v55 = sub_185B67B6C();
      v56 = sub_185B680AC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v123[0] = v58;
        *v57 = 136446466;
        v59 = v132;

        sub_185AF6A78(&v132);
        v60 = sub_185ACB2C4(v59, *(&v59 + 1), v123);

        *(v57 + 4) = v60;
        *(v57 + 12) = 2082;
        if (*(&v129 + 1))
        {
          *&v125[0] = 1684955424;
          *(&v125[0] + 1) = 0xE400000000000000;
          MEMORY[0x1865FCF60](v129);

          MEMORY[0x1865FCF60](1701994784, 0xE400000000000000);

          v61 = *(&v125[0] + 1);
          v62 = *&v125[0];
        }

        else
        {
          v61 = 0xE200000000000000;
          v62 = 29545;
        }

        sub_185AF6A78(&v128);
        v91 = sub_185ACB2C4(v62, v61, v123);

        *(v57 + 14) = v91;
        _os_log_impl(&dword_185AC1000, v55, v56, "%{public}s %{public}s not locked. Unshielding.", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v58, -1, -1);
        MEMORY[0x1865FE2F0](v57, -1, -1);
      }

      else
      {

        sub_185AF6A78(&v132);
        sub_185AF6A78(&v128);
      }

      v53 = *(a2 + 40);
      v54 = v115;
      v51 = v117;
      if (!v53)
      {
        goto LABEL_53;
      }

LABEL_52:
      v92 = *(a2 + 32);
      v93 = *(a2 + 72);
      v94 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v93);
      (*(v94 + 152))(v92, v53, 0, nullsub_1, 0, v93, v94);
LABEL_53:
      sub_185AFEE10(v111, v112);
      v114(0);
      goto LABEL_57;
    }
  }

  v46 = *(a2 + 72);
  v47 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v46);
  if ((*(v47 + 64))(v43, v44, v46, v47))
  {
    v48 = sub_185B67B6C();
    v49 = sub_185B680AC();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v117;
    if (v50)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_185AC1000, v48, v49, "have cached authentication.", v52, 2u);
      MEMORY[0x1865FE2F0](v52, -1, -1);
    }

    v53 = *(a2 + 40);
    v54 = v115;
    if (!v53)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  sub_185B03ED8(a2, &v132);
  v63 = v109;
  sub_185B03F10(v109, &v128);
  v64 = sub_185B67B6C();
  v65 = sub_185B680AC();
  sub_185AF6A24(v63);
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v121[0] = v67;
    *v66 = 136446466;
    if (BYTE8(v137))
    {
      v68 = 0xD000000000000024;
    }

    else
    {
      v68 = 0xD00000000000001FLL;
    }

    if (BYTE8(v137))
    {
      v69 = "ice";
    }

    else
    {
      v69 = ".afterAuthentication";
    }

    sub_185AF6A78(&v132);
    v70 = sub_185ACB2C4(v68, v69 | 0x8000000000000000, v121);

    *(v66 + 4) = v70;
    *(v66 + 12) = 2082;
    v71 = *(v63 + 16);
    v128 = *v63;
    v129 = v71;
    v130 = *(v63 + 32);
    v72 = *(v63 + 16);
    v125[0] = *v63;
    v125[1] = v72;
    LOBYTE(v126) = *(v63 + 32);
    sub_185AD04BC(&v128, v123, &qword_1EA8CD080, &unk_185B6CDF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD080, &unk_185B6CDF0);
    v73 = sub_185B67EBC();
    v75 = sub_185ACB2C4(v73, v74, v121);

    *(v66 + 14) = v75;
    _os_log_impl(&dword_185AC1000, v64, v65, "Begin auth with completion policy %{public}s, bind target: %{public}s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v67, -1, -1);
    MEMORY[0x1865FE2F0](v66, -1, -1);
  }

  else
  {

    sub_185AF6A78(&v132);
  }

  v54 = v115;
  v51 = v117;
  if (*(a2 + 88))
  {
    v76 = v108;
    (*(v115 + 16))(v108, v117, v13);
    sub_185B03ED8(a2, &v132);
    v77 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v78 = (v107 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    (*(v54 + 32))(v79 + v77, v76, v13);
    v80 = (v79 + v78);
    v81 = v135;
    v80[2] = v134;
    v80[3] = v81;
    v82 = v137;
    v80[4] = v136;
    v80[5] = v82;
    v83 = v133;
    v84 = v116;
    v51 = v117;
    *v80 = v132;
    v80[1] = v83;
    v85 = (v79 + ((v78 + 103) & 0xFFFFFFFFFFFFFFF8));
    *v85 = sub_185B07788;
    v85[1] = v84;

    v86 = sub_185B07798;
  }

  else
  {
    v87 = *(a2 + 40);
    if (v87)
    {
      v88 = *(a2 + 32);
      v89 = *(a2 + 72);
      v90 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v89);
      (*(v90 + 152))(v88, v87, 1, sub_185B07788, v116, v89, v90);
    }

    else
    {
      sub_185AFEE10(v111, v112);
      v114(0);
    }

    v95 = v108;
    (*(v54 + 16))(v108, v51, v13);
    sub_185B03ED8(a2, &v132);
    v96 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v97 = (v107 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    (*(v54 + 32))(v79 + v96, v95, v13);
    v98 = (v79 + v97);
    v99 = v135;
    v98[2] = v134;
    v98[3] = v99;
    v100 = v137;
    v98[4] = v136;
    v98[5] = v100;
    v101 = v133;
    *v98 = v132;
    v98[1] = v101;
    v86 = sub_185B0779C;
  }

  sub_185B6820C();
  v102 = APDefaultAuthenticationLog();
  sub_185B67B3C();

  v103 = *(a2 + 72);
  v104 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v103);
  (*(v104 + 72))(v109, v86, v79, v103, v104);

LABEL_57:
  (*(v54 + 8))(v51, v13);
}

uint64_t sub_185B018B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v109 = a1;
  v13 = sub_185B67B5C();
  v115 = *(v13 - 8);
  v14 = *(v115 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v107 = v17;
  v108 = v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v106 - v19;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v111 = a4;
  v21[4] = a5;
  v21[5] = a6;
  v114 = a6;
  v21[6] = a7;
  v110 = a3;
  v112 = a5;

  v113 = a7;

  v22 = APDefaultAuthenticationLog();
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v23 = sub_185B67B8C();
  v24 = __swift_project_value_buffer(v23, qword_1EA8D2278);
  sub_185B03ED8(a2, &v132);
  sub_185B03ED8(a2, &v128);
  sub_185B03ED8(a2, v125);
  sub_185B03ED8(a2, v123);
  sub_185B03ED8(a2, v121);
  sub_185B03ED8(a2, v119);
  v25 = sub_185B67B6C();
  v26 = sub_185B680AC();
  v27 = os_log_type_enabled(v25, v26);
  v116 = v21;
  v117 = v20;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v106[0] = swift_slowAlloc();
    v118 = v106[0];
    *v28 = 136447490;
    v29 = v132;

    sub_185AF6A78(&v132);
    v30 = sub_185ACB2C4(v29, *(&v29 + 1), &v118);

    *(v28 + 4) = v30;
    v106[1] = v24;
    *(v28 + 12) = 1024;
    v31 = v131 != 0;
    sub_185AF6A78(&v128);
    *(v28 + 14) = v31;
    *(v28 + 18) = 2082;
    if (v127)
    {
      v32 = v126;
    }

    else
    {
      v32 = 0x676E6968746F6E28;
    }

    if (v127)
    {
      v33 = v127;
    }

    else
    {
      v33 = 0xE900000000000029;
    }

    sub_185AF6A78(v125);
    v34 = sub_185ACB2C4(v32, v33, &v118);

    *(v28 + 20) = v34;
    *(v28 + 28) = 1024;
    LODWORD(v34) = v124;
    sub_185AF6A78(v123);
    *(v28 + 30) = v34;
    *(v28 + 34) = 2082;
    if (v122)
    {
      v35 = 0xD000000000000024;
    }

    else
    {
      v35 = 0xD00000000000001FLL;
    }

    if (v122)
    {
      v36 = "ice";
    }

    else
    {
      v36 = ".afterAuthentication";
    }

    sub_185AF6A78(v121);
    v37 = sub_185ACB2C4(v35, v36 | 0x8000000000000000, &v118);

    *(v28 + 36) = v37;
    *(v28 + 44) = 2082;
    if (v120)
    {
      v38 = 0xD000000000000023;
    }

    else
    {
      v38 = 0xD000000000000018;
    }

    if (v120)
    {
      v39 = "CompletionPolicy.afterShielding";
    }

    else
    {
      v39 = "y.effectivelyLocked";
    }

    sub_185AF6A78(v119);
    v40 = sub_185ACB2C4(v38, v39 | 0x8000000000000000, &v118);

    *(v28 + 46) = v40;
    _os_log_impl(&dword_185AC1000, v25, v26, "Evaluating guard action checking %{public}s, shielding (%{BOOL}d) %{public}s, requested by %d, completionPolicy %{public}s, lockedCheckPolicy %{public}s", v28, 0x36u);
    v41 = v106[0];
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v41, -1, -1);
    MEMORY[0x1865FE2F0](v28, -1, -1);
  }

  else
  {
    sub_185AF6A78(v123);
    sub_185AF6A78(&v128);

    sub_185AF6A78(v119);
    sub_185AF6A78(v121);
    sub_185AF6A78(v125);
    sub_185AF6A78(&v132);
  }

  v42 = *(a2 + 89);
  v43 = *a2;
  v44 = *(a2 + 8);
  if (!sub_185AFA92C(*a2, v44, (a2 + 48), v42))
  {
    v45 = *(a2 + 24);
    if (!v45 || !sub_185AFA92C(*(a2 + 16), v45, (a2 + 48), v42))
    {
      sub_185B03ED8(a2, &v132);
      sub_185B03ED8(a2, &v128);
      v55 = sub_185B67B6C();
      v56 = sub_185B680AC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v123[0] = v58;
        *v57 = 136446466;
        v59 = v132;

        sub_185AF6A78(&v132);
        v60 = sub_185ACB2C4(v59, *(&v59 + 1), v123);

        *(v57 + 4) = v60;
        *(v57 + 12) = 2082;
        if (*(&v129 + 1))
        {
          *&v125[0] = 1684955424;
          *(&v125[0] + 1) = 0xE400000000000000;
          MEMORY[0x1865FCF60](v129);

          MEMORY[0x1865FCF60](1701994784, 0xE400000000000000);

          v61 = *(&v125[0] + 1);
          v62 = *&v125[0];
        }

        else
        {
          v61 = 0xE200000000000000;
          v62 = 29545;
        }

        sub_185AF6A78(&v128);
        v91 = sub_185ACB2C4(v62, v61, v123);

        *(v57 + 14) = v91;
        _os_log_impl(&dword_185AC1000, v55, v56, "%{public}s %{public}s not locked. Unshielding.", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v58, -1, -1);
        MEMORY[0x1865FE2F0](v57, -1, -1);
      }

      else
      {

        sub_185AF6A78(&v132);
        sub_185AF6A78(&v128);
      }

      v53 = *(a2 + 40);
      v54 = v115;
      v51 = v117;
      if (!v53)
      {
        goto LABEL_53;
      }

LABEL_52:
      v92 = *(a2 + 32);
      v93 = *(a2 + 72);
      v94 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v93);
      (*(v94 + 152))(v92, v53, 0, nullsub_1, 0, v93, v94);
LABEL_53:
      sub_185AFEE10(v111, v112);
      v114(0);
      goto LABEL_57;
    }
  }

  v46 = *(a2 + 72);
  v47 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v46);
  if ((*(v47 + 64))(v43, v44, v46, v47))
  {
    v48 = sub_185B67B6C();
    v49 = sub_185B680AC();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v117;
    if (v50)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_185AC1000, v48, v49, "have cached authentication.", v52, 2u);
      MEMORY[0x1865FE2F0](v52, -1, -1);
    }

    v53 = *(a2 + 40);
    v54 = v115;
    if (!v53)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  sub_185B03ED8(a2, &v132);
  v63 = v109;
  sub_185B03F10(v109, &v128);
  v64 = sub_185B67B6C();
  v65 = sub_185B680AC();
  sub_185AF6A24(v63);
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v121[0] = v67;
    *v66 = 136446466;
    if (BYTE8(v137))
    {
      v68 = 0xD000000000000024;
    }

    else
    {
      v68 = 0xD00000000000001FLL;
    }

    if (BYTE8(v137))
    {
      v69 = "ice";
    }

    else
    {
      v69 = ".afterAuthentication";
    }

    sub_185AF6A78(&v132);
    v70 = sub_185ACB2C4(v68, v69 | 0x8000000000000000, v121);

    *(v66 + 4) = v70;
    *(v66 + 12) = 2082;
    v71 = *(v63 + 16);
    v128 = *v63;
    v129 = v71;
    v130 = *(v63 + 32);
    v72 = *(v63 + 16);
    v125[0] = *v63;
    v125[1] = v72;
    LOBYTE(v126) = *(v63 + 32);
    sub_185AD04BC(&v128, v123, &qword_1EA8CD080, &unk_185B6CDF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD080, &unk_185B6CDF0);
    v73 = sub_185B67EBC();
    v75 = sub_185ACB2C4(v73, v74, v121);

    *(v66 + 14) = v75;
    _os_log_impl(&dword_185AC1000, v64, v65, "Begin auth with completion policy %{public}s, bind target: %{public}s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v67, -1, -1);
    MEMORY[0x1865FE2F0](v66, -1, -1);
  }

  else
  {

    sub_185AF6A78(&v132);
  }

  v54 = v115;
  v51 = v117;
  if (*(a2 + 88))
  {
    v76 = v108;
    (*(v115 + 16))(v108, v117, v13);
    sub_185B03ED8(a2, &v132);
    v77 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v78 = (v107 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    (*(v54 + 32))(v79 + v77, v76, v13);
    v80 = (v79 + v78);
    v81 = v135;
    v80[2] = v134;
    v80[3] = v81;
    v82 = v137;
    v80[4] = v136;
    v80[5] = v82;
    v83 = v133;
    v84 = v116;
    v51 = v117;
    *v80 = v132;
    v80[1] = v83;
    v85 = (v79 + ((v78 + 103) & 0xFFFFFFFFFFFFFFF8));
    *v85 = sub_185B07788;
    v85[1] = v84;

    v86 = sub_185B07798;
  }

  else
  {
    v87 = *(a2 + 40);
    if (v87)
    {
      v88 = *(a2 + 32);
      v89 = *(a2 + 72);
      v90 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v89);
      (*(v90 + 152))(v88, v87, 1, sub_185B07788, v116, v89, v90);
    }

    else
    {
      sub_185AFEE10(v111, v112);
      v114(0);
    }

    v95 = v108;
    (*(v54 + 16))(v108, v51, v13);
    sub_185B03ED8(a2, &v132);
    v96 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v97 = (v107 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    (*(v54 + 32))(v79 + v96, v95, v13);
    v98 = (v79 + v97);
    v99 = v135;
    v98[2] = v134;
    v98[3] = v99;
    v100 = v137;
    v98[4] = v136;
    v98[5] = v100;
    v101 = v133;
    *v98 = v132;
    v98[1] = v101;
    v86 = sub_185B0779C;
  }

  sub_185B6820C();
  v102 = APDefaultAuthenticationLog();
  sub_185B67B3C();

  v103 = *(a2 + 72);
  v104 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v103);
  (*(v104 + 72))(v109, v86, v79, v103, v104);

LABEL_57:
  (*(v54 + 8))(v51, v13);
}

uint64_t sub_185B02558(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v109 = a1;
  v13 = sub_185B67B5C();
  v115 = *(v13 - 8);
  v14 = *(v115 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v107 = v17;
  v108 = v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v106 - v19;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v111 = a4;
  v21[4] = a5;
  v21[5] = a6;
  v114 = a6;
  v21[6] = a7;
  v110 = a3;
  v112 = a5;

  v113 = a7;

  v22 = APDefaultAuthenticationLog();
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v23 = sub_185B67B8C();
  v24 = __swift_project_value_buffer(v23, qword_1EA8D2278);
  sub_185B03ED8(a2, &v132);
  sub_185B03ED8(a2, &v128);
  sub_185B03ED8(a2, v125);
  sub_185B03ED8(a2, v123);
  sub_185B03ED8(a2, v121);
  sub_185B03ED8(a2, v119);
  v25 = sub_185B67B6C();
  v26 = sub_185B680AC();
  v27 = os_log_type_enabled(v25, v26);
  v116 = v21;
  v117 = v20;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v106[0] = swift_slowAlloc();
    v118 = v106[0];
    *v28 = 136447490;
    v29 = v132;

    sub_185AF6A78(&v132);
    v30 = sub_185ACB2C4(v29, *(&v29 + 1), &v118);

    *(v28 + 4) = v30;
    v106[1] = v24;
    *(v28 + 12) = 1024;
    v31 = v131 != 0;
    sub_185AF6A78(&v128);
    *(v28 + 14) = v31;
    *(v28 + 18) = 2082;
    if (v127)
    {
      v32 = v126;
    }

    else
    {
      v32 = 0x676E6968746F6E28;
    }

    if (v127)
    {
      v33 = v127;
    }

    else
    {
      v33 = 0xE900000000000029;
    }

    sub_185AF6A78(v125);
    v34 = sub_185ACB2C4(v32, v33, &v118);

    *(v28 + 20) = v34;
    *(v28 + 28) = 1024;
    LODWORD(v34) = v124;
    sub_185AF6A78(v123);
    *(v28 + 30) = v34;
    *(v28 + 34) = 2082;
    if (v122)
    {
      v35 = 0xD000000000000024;
    }

    else
    {
      v35 = 0xD00000000000001FLL;
    }

    if (v122)
    {
      v36 = "ice";
    }

    else
    {
      v36 = ".afterAuthentication";
    }

    sub_185AF6A78(v121);
    v37 = sub_185ACB2C4(v35, v36 | 0x8000000000000000, &v118);

    *(v28 + 36) = v37;
    *(v28 + 44) = 2082;
    if (v120)
    {
      v38 = 0xD000000000000023;
    }

    else
    {
      v38 = 0xD000000000000018;
    }

    if (v120)
    {
      v39 = "CompletionPolicy.afterShielding";
    }

    else
    {
      v39 = "y.effectivelyLocked";
    }

    sub_185AF6A78(v119);
    v40 = sub_185ACB2C4(v38, v39 | 0x8000000000000000, &v118);

    *(v28 + 46) = v40;
    _os_log_impl(&dword_185AC1000, v25, v26, "Evaluating guard action checking %{public}s, shielding (%{BOOL}d) %{public}s, requested by %d, completionPolicy %{public}s, lockedCheckPolicy %{public}s", v28, 0x36u);
    v41 = v106[0];
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v41, -1, -1);
    MEMORY[0x1865FE2F0](v28, -1, -1);
  }

  else
  {
    sub_185AF6A78(v123);
    sub_185AF6A78(&v128);

    sub_185AF6A78(v119);
    sub_185AF6A78(v121);
    sub_185AF6A78(v125);
    sub_185AF6A78(&v132);
  }

  v42 = *(a2 + 89);
  v43 = *a2;
  v44 = *(a2 + 8);
  if (!sub_185AFA92C(*a2, v44, (a2 + 48), v42))
  {
    v45 = *(a2 + 24);
    if (!v45 || !sub_185AFA92C(*(a2 + 16), v45, (a2 + 48), v42))
    {
      sub_185B03ED8(a2, &v132);
      sub_185B03ED8(a2, &v128);
      v55 = sub_185B67B6C();
      v56 = sub_185B680AC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v123[0] = v58;
        *v57 = 136446466;
        v59 = v132;

        sub_185AF6A78(&v132);
        v60 = sub_185ACB2C4(v59, *(&v59 + 1), v123);

        *(v57 + 4) = v60;
        *(v57 + 12) = 2082;
        if (*(&v129 + 1))
        {
          *&v125[0] = 1684955424;
          *(&v125[0] + 1) = 0xE400000000000000;
          MEMORY[0x1865FCF60](v129);

          MEMORY[0x1865FCF60](1701994784, 0xE400000000000000);

          v61 = *(&v125[0] + 1);
          v62 = *&v125[0];
        }

        else
        {
          v61 = 0xE200000000000000;
          v62 = 29545;
        }

        sub_185AF6A78(&v128);
        v91 = sub_185ACB2C4(v62, v61, v123);

        *(v57 + 14) = v91;
        _os_log_impl(&dword_185AC1000, v55, v56, "%{public}s %{public}s not locked. Unshielding.", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v58, -1, -1);
        MEMORY[0x1865FE2F0](v57, -1, -1);
      }

      else
      {

        sub_185AF6A78(&v132);
        sub_185AF6A78(&v128);
      }

      v53 = *(a2 + 40);
      v54 = v115;
      v51 = v117;
      if (!v53)
      {
        goto LABEL_53;
      }

LABEL_52:
      v92 = *(a2 + 32);
      v93 = *(a2 + 72);
      v94 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v93);
      (*(v94 + 152))(v92, v53, 0, nullsub_1, 0, v93, v94);
LABEL_53:
      sub_185AFEE10(v111, v112);
      v114(0);
      goto LABEL_57;
    }
  }

  v46 = *(a2 + 72);
  v47 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v46);
  if ((*(v47 + 64))(v43, v44, v46, v47))
  {
    v48 = sub_185B67B6C();
    v49 = sub_185B680AC();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v117;
    if (v50)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_185AC1000, v48, v49, "have cached authentication.", v52, 2u);
      MEMORY[0x1865FE2F0](v52, -1, -1);
    }

    v53 = *(a2 + 40);
    v54 = v115;
    if (!v53)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  sub_185B03ED8(a2, &v132);
  v63 = v109;
  sub_185B03F10(v109, &v128);
  v64 = sub_185B67B6C();
  v65 = sub_185B680AC();
  sub_185AF6A24(v63);
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v121[0] = v67;
    *v66 = 136446466;
    if (BYTE8(v137))
    {
      v68 = 0xD000000000000024;
    }

    else
    {
      v68 = 0xD00000000000001FLL;
    }

    if (BYTE8(v137))
    {
      v69 = "ice";
    }

    else
    {
      v69 = ".afterAuthentication";
    }

    sub_185AF6A78(&v132);
    v70 = sub_185ACB2C4(v68, v69 | 0x8000000000000000, v121);

    *(v66 + 4) = v70;
    *(v66 + 12) = 2082;
    v71 = *(v63 + 16);
    v128 = *v63;
    v129 = v71;
    v130 = *(v63 + 32);
    v72 = *(v63 + 16);
    v125[0] = *v63;
    v125[1] = v72;
    LOBYTE(v126) = *(v63 + 32);
    sub_185AD04BC(&v128, v123, &qword_1EA8CD080, &unk_185B6CDF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD080, &unk_185B6CDF0);
    v73 = sub_185B67EBC();
    v75 = sub_185ACB2C4(v73, v74, v121);

    *(v66 + 14) = v75;
    _os_log_impl(&dword_185AC1000, v64, v65, "Begin auth with completion policy %{public}s, bind target: %{public}s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v67, -1, -1);
    MEMORY[0x1865FE2F0](v66, -1, -1);
  }

  else
  {

    sub_185AF6A78(&v132);
  }

  v54 = v115;
  v51 = v117;
  if (*(a2 + 88))
  {
    v76 = v108;
    (*(v115 + 16))(v108, v117, v13);
    sub_185B03ED8(a2, &v132);
    v77 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v78 = (v107 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    (*(v54 + 32))(v79 + v77, v76, v13);
    v80 = (v79 + v78);
    v81 = v135;
    v80[2] = v134;
    v80[3] = v81;
    v82 = v137;
    v80[4] = v136;
    v80[5] = v82;
    v83 = v133;
    v84 = v116;
    v51 = v117;
    *v80 = v132;
    v80[1] = v83;
    v85 = (v79 + ((v78 + 103) & 0xFFFFFFFFFFFFFFF8));
    *v85 = sub_185B07788;
    v85[1] = v84;

    v86 = sub_185B07798;
  }

  else
  {
    v87 = *(a2 + 40);
    if (v87)
    {
      v88 = *(a2 + 32);
      v89 = *(a2 + 72);
      v90 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v89);
      (*(v90 + 152))(v88, v87, 1, sub_185B07788, v116, v89, v90);
    }

    else
    {
      sub_185AFEE10(v111, v112);
      v114(0);
    }

    v95 = v108;
    (*(v54 + 16))(v108, v51, v13);
    sub_185B03ED8(a2, &v132);
    v96 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v97 = (v107 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    (*(v54 + 32))(v79 + v96, v95, v13);
    v98 = (v79 + v97);
    v99 = v135;
    v98[2] = v134;
    v98[3] = v99;
    v100 = v137;
    v98[4] = v136;
    v98[5] = v100;
    v101 = v133;
    *v98 = v132;
    v98[1] = v101;
    v86 = sub_185B0779C;
  }

  sub_185B6820C();
  v102 = APDefaultAuthenticationLog();
  sub_185B67B3C();

  v103 = *(a2 + 72);
  v104 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v103);
  (*(v104 + 72))(v109, v86, v79, v103, v104);

LABEL_57:
  (*(v54 + 8))(v51, v13);
}

void sub_185B031F8(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v115 = sub_185B67B5C();
  v117 = *(v115 - 8);
  v6 = *(v117 + 64);
  v8 = MEMORY[0x1EEE9AC00](v115, v7);
  v108 = v9;
  v109 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v107 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_185ACA0F4;
  *(v14 + 24) = v13;
  v116 = v14;
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  v114 = v13;

  v15 = APDefaultAuthenticationLog();
  sub_185B67B4C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v16 = sub_185B67B8C();
  v17 = __swift_project_value_buffer(v16, qword_1EA8D2278);
  sub_185B03ED8(a2, &v132);
  sub_185B03ED8(a2, &v128);
  sub_185B03ED8(a2, v125);
  sub_185B03ED8(a2, v123);
  sub_185B03ED8(a2, v121);
  sub_185B03ED8(a2, v119);
  v113 = v17;
  v18 = sub_185B67B6C();
  v19 = sub_185B680AC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v112 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v118 = v22;
    *v21 = 136447490;
    v23 = v132;

    sub_185AF6A78(&v132);
    v24 = sub_185ACB2C4(v23, *(&v23 + 1), &v118);

    *(v21 + 4) = v24;
    v110 = a3;
    v111 = v12;
    *(v21 + 12) = 1024;
    v25 = v131 != 0;
    sub_185AF6A78(&v128);
    *(v21 + 14) = v25;
    *(v21 + 18) = 2082;
    if (v127)
    {
      v26 = v126;
    }

    else
    {
      v26 = 0x676E6968746F6E28;
    }

    if (v127)
    {
      v27 = v127;
    }

    else
    {
      v27 = 0xE900000000000029;
    }

    sub_185AF6A78(v125);
    v28 = sub_185ACB2C4(v26, v27, &v118);

    *(v21 + 20) = v28;
    *(v21 + 28) = 1024;
    LODWORD(v28) = v124;
    sub_185AF6A78(v123);
    *(v21 + 30) = v28;
    *(v21 + 34) = 2082;
    if (v122)
    {
      v29 = 0xD000000000000024;
    }

    else
    {
      v29 = 0xD00000000000001FLL;
    }

    if (v122)
    {
      v30 = "ice";
    }

    else
    {
      v30 = ".afterAuthentication";
    }

    sub_185AF6A78(v121);
    v31 = sub_185ACB2C4(v29, v30 | 0x8000000000000000, &v118);
    a3 = v110;

    *(v21 + 36) = v31;
    *(v21 + 44) = 2082;
    if (v120)
    {
      v32 = 0xD000000000000023;
    }

    else
    {
      v32 = 0xD000000000000018;
    }

    if (v120)
    {
      v33 = "CompletionPolicy.afterShielding";
    }

    else
    {
      v33 = "y.effectivelyLocked";
    }

    sub_185AF6A78(v119);
    v34 = sub_185ACB2C4(v32, v33 | 0x8000000000000000, &v118);
    v12 = v111;

    *(v21 + 46) = v34;
    _os_log_impl(&dword_185AC1000, v18, v19, "Evaluating guard action checking %{public}s, shielding (%{BOOL}d) %{public}s, requested by %d, completionPolicy %{public}s, lockedCheckPolicy %{public}s", v21, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v22, -1, -1);
    v35 = v21;
    a1 = v112;
    MEMORY[0x1865FE2F0](v35, -1, -1);
  }

  else
  {
    sub_185AF6A78(v123);
    sub_185AF6A78(&v128);

    sub_185AF6A78(v119);
    sub_185AF6A78(v121);
    sub_185AF6A78(v125);
    sub_185AF6A78(&v132);
  }

  v36 = *(a2 + 89);
  v37 = *a2;
  v38 = *(a2 + 8);
  if (!sub_185AFA92C(*a2, v38, (a2 + 48), v36))
  {
    v39 = *(a2 + 24);
    if (!v39 || !sub_185AFA92C(*(a2 + 16), v39, (a2 + 48), v36))
    {
      sub_185B03ED8(a2, &v132);
      sub_185B03ED8(a2, &v128);
      v48 = sub_185B67B6C();
      v49 = sub_185B680AC();
      if (os_log_type_enabled(v48, v49))
      {
        v111 = v12;
        v50 = a3;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v123[0] = v52;
        *v51 = 136446466;
        v53 = v132;

        sub_185AF6A78(&v132);
        v54 = sub_185ACB2C4(v53, *(&v53 + 1), v123);

        *(v51 + 4) = v54;
        *(v51 + 12) = 2082;
        if (*(&v129 + 1))
        {
          *&v125[0] = 1684955424;
          *(&v125[0] + 1) = 0xE400000000000000;
          MEMORY[0x1865FCF60](v129);

          MEMORY[0x1865FCF60](1701994784, 0xE400000000000000);

          v55 = *(&v125[0] + 1);
          v56 = *&v125[0];
        }

        else
        {
          v55 = 0xE200000000000000;
          v56 = 29545;
        }

        sub_185AF6A78(&v128);
        v91 = sub_185ACB2C4(v56, v55, v123);

        *(v51 + 14) = v91;
        _os_log_impl(&dword_185AC1000, v48, v49, "%{public}s %{public}s not locked. Unshielding.", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v52, -1, -1);
        MEMORY[0x1865FE2F0](v51, -1, -1);

        a3 = v50;
        v12 = v111;
      }

      else
      {

        sub_185AF6A78(&v132);
        sub_185AF6A78(&v128);
      }

      v47 = *(a2 + 40);
      v45 = v115;
      if (!v47)
      {
        goto LABEL_53;
      }

LABEL_52:
      v92 = *(a2 + 32);
      v93 = *(a2 + 72);
      v94 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v93);
      (*(v94 + 152))(v92, v47, 0, nullsub_1, 0, v93, v94);
LABEL_53:
      a3[2](a3, 1, 0);
      goto LABEL_57;
    }
  }

  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v40);
  if ((*(v41 + 64))(v37, v38, v40, v41))
  {
    v42 = sub_185B67B6C();
    v43 = sub_185B680AC();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v115;
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_185AC1000, v42, v43, "have cached authentication.", v46, 2u);
      MEMORY[0x1865FE2F0](v46, -1, -1);
    }

    v47 = *(a2 + 40);
    if (!v47)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  sub_185B03ED8(a2, &v132);
  sub_185B03F10(a1, &v128);
  v57 = sub_185B67B6C();
  v58 = sub_185B680AC();
  sub_185AF6A24(a1);
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v110 = a3;
    v113 = v60;
    v121[0] = v60;
    *v59 = 136446466;
    if (BYTE8(v137))
    {
      v61 = 0xD000000000000024;
    }

    else
    {
      v61 = 0xD00000000000001FLL;
    }

    v62 = v12;
    if (BYTE8(v137))
    {
      v63 = "ice";
    }

    else
    {
      v63 = ".afterAuthentication";
    }

    sub_185AF6A78(&v132);
    v64 = sub_185ACB2C4(v61, v63 | 0x8000000000000000, v121);
    v12 = v62;

    *(v59 + 4) = v64;
    *(v59 + 12) = 2082;
    v65 = *(a1 + 16);
    v128 = *a1;
    v129 = v65;
    v130 = *(a1 + 32);
    v66 = *(a1 + 16);
    v125[0] = *a1;
    v125[1] = v66;
    LOBYTE(v126) = *(a1 + 32);
    sub_185AD04BC(&v128, v123, &qword_1EA8CD080, &unk_185B6CDF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD080, &unk_185B6CDF0);
    v67 = sub_185B67EBC();
    v69 = sub_185ACB2C4(v67, v68, v121);

    *(v59 + 14) = v69;
    _os_log_impl(&dword_185AC1000, v57, v58, "Begin auth with completion policy %{public}s, bind target: %{public}s", v59, 0x16u);
    v70 = v113;
    swift_arrayDestroy();
    a3 = v110;
    MEMORY[0x1865FE2F0](v70, -1, -1);
    MEMORY[0x1865FE2F0](v59, -1, -1);
  }

  else
  {

    sub_185AF6A78(&v132);
  }

  v45 = v115;
  v71 = *(a2 + 88);
  v112 = a1;
  if (v71)
  {
    v72 = v117;
    v73 = v109;
    (*(v117 + 16))(v109, v12, v115);
    sub_185B03ED8(a2, &v132);
    v74 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v75 = v12;
    v76 = (v108 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    v78 = v73;
    v79 = v75;
    v45 = v115;
    (*(v72 + 32))(v77 + v74, v78, v115);
    v80 = (v77 + v76);
    v81 = v135;
    v80[2] = v134;
    v80[3] = v81;
    v82 = v137;
    v80[4] = v136;
    v80[5] = v82;
    v83 = v133;
    *v80 = v132;
    v80[1] = v83;
    v84 = (v77 + ((v76 + 103) & 0xFFFFFFFFFFFFFFF8));
    v85 = v116;
    *v84 = sub_185B03ED0;
    v84[1] = v85;

    v86 = sub_185B03F6C;
  }

  else
  {
    v87 = *(a2 + 40);
    if (v87)
    {
      v88 = *(a2 + 32);
      v89 = *(a2 + 72);
      v90 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v89);
      (*(v90 + 152))(v88, v87, 1, sub_185B03ED0, v116, v89, v90);
    }

    else
    {
      a3[2](a3, 1, 0);
    }

    v95 = v117;
    v96 = v109;
    (*(v117 + 16))(v109, v12, v45);
    sub_185B03ED8(a2, &v132);
    v97 = (*(v95 + 80) + 16) & ~*(v95 + 80);
    v79 = v12;
    v98 = (v108 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    (*(v95 + 32))(v77 + v97, v96, v45);
    v99 = (v77 + v98);
    v100 = v135;
    v99[2] = v134;
    v99[3] = v100;
    v101 = v137;
    v99[4] = v136;
    v99[5] = v101;
    v102 = v133;
    *v99 = v132;
    v99[1] = v102;
    v86 = sub_185B03F70;
  }

  v103 = v86;

  sub_185B6820C();
  v104 = APDefaultAuthenticationLog();
  sub_185B67B3C();

  v105 = *(a2 + 72);
  v106 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v105);
  (*(v106 + 72))(v112, v103, v77, v105, v106);

  v12 = v79;
LABEL_57:
  (*(v117 + 8))(v12, v45);

  _Block_release(a3);
  _Block_release(a3);
}

uint64_t objectdestroy_43Tm()
{
  v1 = sub_185B67B5C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 103) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = (v0 + v4);
  v7 = v6[1];

  v8 = v6[3];

  v9 = v6[5];

  __swift_destroy_boxed_opaque_existential_0Tm(v6 + 6);
  v10 = *(v0 + v5 + 8);

  return swift_deallocObject();
}

uint64_t objectdestroy_46Tm()
{
  v1 = sub_185B67B5C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  v6 = *(v0 + v4 + 24);

  v7 = *(v0 + v4 + 40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v4 + 48));

  return swift_deallocObject();
}

uint64_t sub_185B0410C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void (*a12)(void), uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void (*a20)(_OWORD *, uint64_t *, id, uint64_t, uint64_t, void (*)(void), uint64_t))
{
  v192 = a8;
  v180 = a6;
  v181 = a7;
  v200 = a5;
  v198 = a4;
  v193 = a9;
  v196 = HIDWORD(a2);
  v197 = HIDWORD(a1);
  v201 = a14;
  v194 = HIDWORD(a4);
  v195 = HIDWORD(a3);
  v23 = sub_185B67B1C();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v172[2] = v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_185B67E0C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v172[1] = v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v177 = *(v174 - 8);
  v31 = *(v177 + 64);
  v33 = MEMORY[0x1EEE9AC00](v174, v32);
  v173 = v172 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v175 = v172 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v199 = (v172 - v40);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v179 = v172 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v176 = v172 - v46;
  v178 = v47;
  MEMORY[0x1EEE9AC00](v45, v48);
  v50 = v172 - v49;
  v51 = swift_allocObject();
  v52 = v193;
  v51[2] = v193;
  v51[3] = a10;
  v182 = a10;
  v183 = a12;
  v53 = v192;
  v51[4] = a11;
  v51[5] = a12;
  v201 = v51;
  v51[6] = a13;
  atoken = *(v53 + 104);
  v54 = v52;
  v187 = a11;
  swift_bridgeObjectRetain_n();
  v189 = a13;
  swift_retain_n();
  v188 = v54;
  LODWORD(v193) = audit_token_to_pid(&atoken);
  v185 = a2;
  v186 = a1;
  atoken.val[0] = a1;
  atoken.val[1] = v197;
  atoken.val[2] = a2;
  atoken.val[3] = v196;
  v184 = a3;
  atoken.val[4] = a3;
  atoken.val[5] = v195;
  atoken.val[6] = v198;
  atoken.val[7] = v194;
  v191 = audit_token_to_pid(&atoken);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v55 = sub_185B67B8C();
  v56 = __swift_project_value_buffer(v55, qword_1EA8D2278);
  sub_185B06EF0(v53, &atoken);
  sub_185B06EF0(v53, v220);
  sub_185AD04BC(v200, v50, &unk_1EA8CD9A0, &unk_185B6C2C0);
  v190 = v56;
  v57 = sub_185B67B6C();
  v58 = sub_185B680AC();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v172[0] = swift_slowAlloc();
    *v215.val = v172[0];
    *v59 = 67110146;
    sub_185AD04BC(&atoken, v207, &qword_1EA8CD008, &unk_185B6CA30);
    v60 = v207[1] != 0;
    sub_185ACF5CC(v207, &qword_1EA8CD008, &unk_185B6CA30);
    sub_185B06EBC(&atoken);
    *(v59 + 4) = v60;
    *(v59 + 8) = 2080;
    v61 = APDataSetAccessGrantReason.description.getter(v221);
    v63 = v62;
    sub_185B06EBC(v220);
    v64 = sub_185ACB2C4(v61, v63, &v215);

    *(v59 + 10) = v64;
    *(v59 + 18) = 1024;
    *(v59 + 20) = v193;
    *(v59 + 24) = 1024;
    *(v59 + 26) = v191;
    *(v59 + 30) = 2082;
    v65 = v176;
    sub_185AD04BC(v50, v176, &unk_1EA8CD9A0, &unk_185B6C2C0);
    v66 = sub_185B67AFC();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v65, 1, v66) == 1)
    {
      sub_185ACF5CC(v65, &unk_1EA8CD9A0, &unk_185B6C2C0);
      v68 = 0xE600000000000000;
      v69 = 0x29656E6F6E28;
    }

    else
    {
      v70 = v58;
      v71 = v65;
      v69 = sub_185B67AAC();
      v68 = v72;
      v73 = v71;
      v58 = v70;
      (*(v67 + 8))(v73, v66);
    }

    sub_185ACF5CC(v50, &unk_1EA8CD9A0, &unk_185B6C2C0);
    v74 = sub_185ACB2C4(v69, v68, &v215);

    *(v59 + 32) = v74;
    _os_log_impl(&dword_185AC1000, v57, v58, "Checking guard for tracking action with base action %{BOOL}d, grant reason %s, accessor %d, tracker %d, uuid %{public}s", v59, 0x28u);
    v75 = v172[0];
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v75, -1, -1);
    MEMORY[0x1865FE2F0](v59, -1, -1);

    v53 = v192;
  }

  else
  {
    sub_185B06EBC(&atoken);

    sub_185ACF5CC(v50, &unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185B06EBC(v220);
  }

  sub_185AD04BC(v53, &atoken, &qword_1EA8CD008, &unk_185B6CA30);
  v76 = v199;
  if (*&atoken.val[2])
  {
    v176 = a16;
    v216 = v225;
    v217 = v226;
    v218 = v227;
    v219 = v228;
    v215 = atoken;
    v77 = *&atoken.val[2];
    v192 = *atoken.val;
    sub_185B06EF0(v53, &atoken);
    sub_185B03ED8(&v215, v214);
    v78 = v179;
    sub_185AD04BC(v200, v179, &unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185B06EF0(&atoken, v220);
    sub_185B03ED8(v214, &v209);
    sub_185AD04BC(v78, v76, &unk_1EA8CD9A0, &unk_185B6C2C0);
    v79 = (*(v177 + 80) + 312) & ~*(v177 + 80);
    v80 = v79 + v178;
    v81 = (v79 + v178 + 9) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    *(v82 + 120) = v228;
    *(v82 + 136) = v229;
    *(v82 + 152) = v230;
    *(v82 + 56) = *&atoken.val[4];
    *(v82 + 72) = v225;
    *(v82 + 88) = v226;
    *(v82 + 104) = v227;
    *(v82 + 40) = *atoken.val;
    v83 = v214[3];
    *(v82 + 216) = v214[2];
    *(v82 + 232) = v83;
    v84 = v214[5];
    *(v82 + 248) = v214[4];
    *(v82 + 264) = v84;
    v85 = v214[1];
    *(v82 + 184) = v214[0];
    v86 = v193;
    *(v82 + 16) = v193;
    *(v82 + 24) = v192;
    *(v82 + 32) = v77;
    v200 = v77;
    *(v82 + 168) = v231;
    *(v82 + 176) = v191;
    *(v82 + 200) = v85;
    *(v82 + 280) = v186;
    *(v82 + 284) = v197;
    *(v82 + 288) = v185;
    *(v82 + 292) = v196;
    *(v82 + 296) = v184;
    *(v82 + 300) = v195;
    *(v82 + 304) = v198;
    *(v82 + 308) = v194;
    v87 = v78;
    v88 = v176;
    sub_185AE301C(v87, v82 + v79);
    v89 = (v82 + v80);
    v90 = v181;
    v91 = v180 & 1;
    *v89 = v180 & 1;
    v92 = v90 & 1;
    v89[1] = v92;
    v93 = (v82 + v81);
    v94 = v201;
    *v93 = v88;
    v93[1] = v94;
    if (*(v53 + 96) == 1)
    {
      v198 = a19;
      v197 = a18;
      v95 = v200;

      sub_185ACF5CC(v199, &unk_1EA8CD9A0, &unk_185B6C2C0);
      sub_185AF6A78(&v209);
      sub_185B06EBC(v220);
      v96 = *(&v218 + 1);
      v97 = v219;
      v199 = __swift_project_boxed_opaque_existential_1(&v217, *(&v218 + 1));
      v98 = *(v53 + 104);
      v195 = *(v53 + 112);
      v196 = v98;
      v99 = *(v53 + 120);
      v194 = *(v53 + 128);
      v100 = swift_allocObject();
      *(v100 + 16) = v86;
      v101 = v192;
      *(v100 + 24) = v192;
      *(v100 + 32) = v95;
      v102 = v201;
      *(v100 + 40) = v88;
      *(v100 + 48) = v102;
      *(v100 + 56) = v197;
      *(v100 + 64) = v82;
      v103 = *(v97 + 88);

      v103(v196, v195, v99, v194, v101, v95, v198, v100, v96, v97);

LABEL_34:
      sub_185AF6A78(&v215);
    }

    v113 = v86;
    v114 = v82;
    LODWORD(v195) = v92;
    LODWORD(v196) = v91;
    sub_185B06EF0(v53, v207);
    v115 = v200;
    swift_bridgeObjectRetain_n();

    v116 = sub_185B67B6C();
    v117 = sub_185B680AC();

    v118 = os_log_type_enabled(v116, v117);
    v178 = v114;
    if (v118)
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *&v206[0] = v120;
      *v119 = 67109634;
      *(v119 + 4) = v113;
      *(v119 + 8) = 2082;
      v121 = v192;
      *(v119 + 10) = sub_185ACB2C4(v192, v115, v206);
      *(v119 + 18) = 2080;
      v122 = APDataSetAccessGrantReason.description.getter(v208);
      v124 = v123;
      sub_185B06EBC(v207);
      v125 = sub_185ACB2C4(v122, v124, v206);
      v115 = v200;

      *(v119 + 20) = v125;
      _os_log_impl(&dword_185AC1000, v116, v117, "%d is not accessing %{public}s via TCC (access reason is %s -> do auth", v119, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v120, -1, -1);
      MEMORY[0x1865FE2F0](v119, -1, -1);

      v126 = v187;
    }

    else
    {

      sub_185B06EBC(v207);
      v126 = v187;
      v121 = v192;
    }

    sub_185B06EF0(v220, v207);
    v128 = v188;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v129 = v128;

    v130 = sub_185B67B6C();
    v131 = sub_185B680AC();

    v132 = os_log_type_enabled(v130, v131);
    v197 = v129;
    if (v132)
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *&v206[0] = v134;
      *v133 = 67109890;
      *(v133 + 4) = v193;
      *(v133 + 8) = 2082;
      *(v133 + 10) = sub_185ACB2C4(v121, v115, v206);
      *(v133 + 18) = 2080;
      v135 = APDataSetAccessGrantReason.description.getter(v208);
      v137 = v136;
      sub_185B06EBC(v207);
      v138 = sub_185ACB2C4(v135, v137, v206);

      *(v133 + 20) = v138;
      *(v133 + 28) = 1024;
      *(v133 + 30) = v191;
      _os_log_impl(&dword_185AC1000, v130, v131, "mark %d as accessing %{public}s for reason %s monitoring %d", v133, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v134, -1, -1);
      MEMORY[0x1865FE2F0](v133, -1, -1);
    }

    else
    {

      sub_185B06EBC(v207);
    }

    v139 = v212;
    v140 = v213;
    __swift_project_boxed_opaque_existential_1(v211, v212);
    v142 = v209;
    v141 = v210;
    (*(v140 + 104))(v222, *(&v222 + 1), v223, *(&v223 + 1), v209, v210, v221, v186, v185, v184, v198, v199, v139, v140);
    v198 = v141;
    v143 = objc_allocWithZone(MEMORY[0x1E69635F8]);

    v144 = sub_185AD006C(v142, v141, 0);
    if (v144)
    {
      v160 = v144;
      sub_185B67DFC();
      type metadata accessor for APSettingsManager(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v162 = [objc_opt_self() bundleForClass_];
      sub_185B67B0C();
      sub_185B67EAC();
      if (sub_185B67EFC() > 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
        v163 = swift_allocObject();
        *(v163 + 16) = xmmword_185B6BB70;
        v164 = [v160 localizedName];
        v165 = sub_185B67E4C();
        v167 = v166;

        *(v163 + 56) = MEMORY[0x1E69E6158];
        *(v163 + 64) = sub_185B06CBC();
        *(v163 + 32) = v165;
        *(v163 + 40) = v167;
        v126 = v187;
        v152 = sub_185B67E7C();
        v153 = v168;

LABEL_27:
        sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);
        v169 = sub_185B2EC58(v222, *(&v222 + 1), v223, *(&v223 + 1));
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v170 = v197;
          sub_185AFEE10(v182, v126);
          v183(0);
        }

        else
        {

          v154 = v212;
          v155 = v213;
          __swift_project_boxed_opaque_existential_1(v211, v212);
          v156 = (*(v155 + 16))(v154, v155);
          v157 = v198;
          LOBYTE(v154) = sub_185AC3A7C(v142, v198, v156);

          v202[0] = v222;
          v202[1] = v223;
          LOBYTE(v203) = v154 & 1;
          *(&v203 + 1) = v152;
          *&v204 = v153;
          BYTE8(v204) = v196;
          BYTE9(v204) = v195;
          *&v205 = v142;
          *(&v205 + 1) = v157;
          v206[3] = v204;
          v206[4] = v205;
          v206[1] = v223;
          v206[2] = v203;
          v206[0] = v222;
          v170 = v197;
          v158 = v197;

          v159 = v189;

          a20(v206, &v209, v158, v182, v126, v183, v159);

          sub_185AF6A24(v202);
        }

        sub_185ACF5CC(v199, &unk_1EA8CD9A0, &unk_185B6C2C0);
        sub_185AF6A78(&v209);
        sub_185B06EBC(v220);
        goto LABEL_34;
      }
    }

    else
    {
      sub_185B03ED8(&v209, v206);
      v145 = sub_185B67B6C();
      v146 = sub_185B6808C();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        *&v202[0] = v148;
        *v147 = 136446210;
        v150 = *(&v206[0] + 1);
        v149 = *&v206[0];

        sub_185AF6A78(v206);
        v151 = sub_185ACB2C4(v149, v150, v202);
        v126 = v187;

        *(v147 + 4) = v151;
        _os_log_impl(&dword_185AC1000, v145, v146, "could not fetch bundle record for %{public}s to generate authentication description", v147, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v148);
        MEMORY[0x1865FE2F0](v148, -1, -1);
        MEMORY[0x1865FE2F0](v147, -1, -1);
      }

      else
      {

        sub_185AF6A78(v206);
      }
    }

    v152 = 0;
    v153 = 0;
    goto LABEL_27;
  }

  sub_185ACF5CC(&atoken, &qword_1EA8CD008, &unk_185B6CA30);
  v104 = v175;
  sub_185AD04BC(v200, v175, &unk_1EA8CD9A0, &unk_185B6C2C0);
  v105 = sub_185B67B6C();
  v106 = sub_185B680AC();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *atoken.val = v108;
    *v107 = 136446722;
    sub_185AD04BC(v104, v173, &unk_1EA8CD9A0, &unk_185B6C2C0);
    v109 = sub_185B67EBC();
    v111 = v110;
    sub_185ACF5CC(v104, &unk_1EA8CD9A0, &unk_185B6C2C0);
    v112 = sub_185ACB2C4(v109, v111, &atoken);

    *(v107 + 4) = v112;
    *(v107 + 12) = 1024;
    *(v107 + 14) = v193;
    *(v107 + 18) = 1024;
    *(v107 + 20) = v191;
    _os_log_impl(&dword_185AC1000, v105, v106, "guard with uuid %{public}s trivial check for %d (will not track %d)", v107, 0x18u);
    __swift_destroy_boxed_opaque_existential_0Tm(v108);
    MEMORY[0x1865FE2F0](v108, -1, -1);
    MEMORY[0x1865FE2F0](v107, -1, -1);
  }

  else
  {

    sub_185ACF5CC(v104, &unk_1EA8CD9A0, &unk_185B6C2C0);
  }

  v127 = v188;
  sub_185AFEE10(v182, v187);
  v183(0);
}

void sub_185B0562C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection14APGuardService_policy, v20);
    _Block_copy(a4);
    swift_unknownObjectRelease();
    sub_185AC66F8(v20, v21);
    a1(v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  else
  {
    _Block_copy(a4);
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v7 = sub_185B67B8C();
    __swift_project_value_buffer(v7, qword_1EA8D2278);
    v8 = sub_185B67B6C();
    v9 = sub_185B6808C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_185AC1000, v8, v9, "No policy for guard!", v10, 2u);
      MEMORY[0x1865FE2F0](v10, -1, -1);
    }

    v11 = *MEMORY[0x1E696A798];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6BB60;
    *(inited + 32) = 0x656E694C5041;
    v13 = MEMORY[0x1E69E6530];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 328;
    v14 = MEMORY[0x1E69E6158];
    *(inited + 72) = v13;
    *(inited + 80) = 0x636E75465041;
    *(inited + 120) = v14;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = 0xD000000000000019;
    *(inited + 104) = 0x8000000185B75A00;
    v15 = v11;
    sub_185AD038C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
    swift_arrayDestroy();
    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_185B67D7C();

    v18 = [v16 initWithDomain:v15 code:6 userInfo:v17];

    _Block_copy(a4);
    v19 = sub_185B6791C();
    (a4)[2](a4, v19);

    _Block_release(a4);
  }

  _Block_release(a4);
}

void sub_185B05910(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(id))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection14APGuardService_policy, v19);
    swift_unknownObjectRelease();
    sub_185AC66F8(v19, v20);
    a1(v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v7 = sub_185B67B8C();
    __swift_project_value_buffer(v7, qword_1EA8D2278);
    v8 = sub_185B67B6C();
    v9 = sub_185B6808C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_185AC1000, v8, v9, "No policy for guard!", v10, 2u);
      MEMORY[0x1865FE2F0](v10, -1, -1);
    }

    v11 = *MEMORY[0x1E696A798];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6BB60;
    *(inited + 32) = 0x656E694C5041;
    v13 = MEMORY[0x1E69E6530];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 328;
    v14 = MEMORY[0x1E69E6158];
    *(inited + 72) = v13;
    *(inited + 80) = 0x636E75465041;
    *(inited + 120) = v14;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = 0xD000000000000019;
    *(inited + 104) = 0x8000000185B75A00;
    v15 = v11;
    sub_185AD038C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
    swift_arrayDestroy();
    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_185B67D7C();

    v18 = [v16 initWithDomain:v15 code:6 userInfo:v17];

    a4(v18);
  }
}

uint64_t sub_185B05BC4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_185B05BFC(uint64_t a1)
{
  v3 = *(sub_185B67AFC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_185AFF434(a1, v5, v1 + v4, v7);
}

void sub_185B05CC8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a4;
  v13 = 0;
  _Block_copy(a4);
  v6 = AppProtectionFeatures.enabled.getter();
  if (v6)
  {
    v8 = MEMORY[0x1EEE9AC00](v6, v7);
    v11[2] = sub_185B077AC;
    v11[3] = v5;
    MEMORY[0x1EEE9AC00](v8, v11);
    sub_185AFC774(sub_185B077A8, v9, sub_185B07174);
  }

  else
  {
    v10 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 351, 0xD00000000000003ALL, 0x8000000185B75DA0);
    v12 = sub_185B6791C();
    (a4)[2](a4, v12);
  }
}

void sub_185B05E7C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 1;
  v13 = 0;
  _Block_copy(a4);
  v6 = AppProtectionFeatures.enabled.getter();
  if (v6)
  {
    v8 = MEMORY[0x1EEE9AC00](v6, v7);
    v11[2] = sub_185B077AC;
    v11[3] = v5;
    MEMORY[0x1EEE9AC00](v8, v11);
    sub_185AFC774(sub_185B077A8, v9, sub_185B0778C);
  }

  else
  {
    v10 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 543, 0xD000000000000057, 0x8000000185B75AD0);
    v12 = sub_185B6791C();
    (a4)[2](a4, v12);
  }
}

void sub_185B0604C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a6;
  v15 = 0;
  _Block_copy(a6);
  v8 = AppProtectionFeatures.enabled.getter();
  if (v8)
  {
    v10 = MEMORY[0x1EEE9AC00](v8, v9);
    v13[2] = sub_185B077AC;
    v13[3] = v7;
    MEMORY[0x1EEE9AC00](v10, v13);
    sub_185AFC774(sub_185B077A8, v11, sub_185B06FB0);
  }

  else
  {
    v12 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 382, 0xD00000000000006CLL, 0x8000000185B75D30);
    v14 = sub_185B6791C();
    (a6)[2](a6, v14);
  }
}

void sub_185B06218(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a4;
  v13 = 0;
  _Block_copy(a4);
  v6 = AppProtectionFeatures.enabled.getter();
  if (v6)
  {
    v8 = MEMORY[0x1EEE9AC00](v6, v7);
    v11[2] = sub_185B06F6C;
    v11[3] = v5;
    MEMORY[0x1EEE9AC00](v8, v11);
    sub_185AFC774(sub_185B06F74, v9, sub_185B06FA4);
  }

  else
  {
    v10 = sub_185AD0148(2uLL, 0, 0, 392, 0xD000000000000036, 0x8000000185B75CF0);
    v12 = sub_185B6791C();
    (a4)[2](a4, 0, v12);
  }
}

void sub_185B063B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void))
{
  v14 = swift_allocObject();
  *(v14 + 16) = a7;
  v20 = 0;
  _Block_copy(a7);
  _Block_copy(a7);
  v15 = AppProtectionFeatures.enabled.getter();
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15, v16);
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v19[5] = a6;
    v19[6] = a4;
    v19[7] = a5;
    v19[8] = sub_185B077AC;
    v19[9] = v14;
    _Block_copy(a7);

    sub_185B0562C(sub_185B06E88, v19, a6, a7);
    _Block_release(a7);

    _Block_release(a7);
  }

  else
  {
    v17 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 419, 0xD000000000000071, 0x8000000185B75C20);
    v18 = sub_185B6791C();
    (a7)[2](a7, v18);

    _Block_release(a7);
  }
}

void sub_185B06590(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v12 = 0;
  _Block_copy(a3);
  _Block_copy(a3);
  v7 = AppProtectionFeatures.enabled.getter();
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7, v8);
    v11[2] = a2;
    v11[3] = a1;
    v11[4] = sub_185B077AC;
    v11[5] = v6;
    _Block_copy(a3);

    sub_185B0562C(sub_185B06E7C, v11, a2, a3);
    _Block_release(a3);

    _Block_release(a3);
  }

  else
  {
    v9 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 436, 0xD000000000000020, 0x8000000185B75BF0);
    v10 = sub_185B6791C();
    (a3)[2](a3, v10);

    _Block_release(a3);
  }
}

void sub_185B06738(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a4;
  v13 = 0;
  _Block_copy(a4);
  v6 = AppProtectionFeatures.enabled.getter();
  if (v6)
  {
    v8 = MEMORY[0x1EEE9AC00](v6, v7);
    v11[2] = sub_185ACA0F0;
    v11[3] = v5;
    MEMORY[0x1EEE9AC00](v8, v11);
    sub_185AFC774(sub_185AE7948, v9, sub_185B06DB4);
  }

  else
  {
    v10 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 464, 0xD000000000000033, 0x8000000185B75B90);
    v12 = sub_185B6791C();
    (a4)[2](a4, 0, v12);
  }
}

void sub_185B068F0(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a4;
  v13 = 0;
  _Block_copy(a4);
  v6 = AppProtectionFeatures.enabled.getter();
  if (v6)
  {
    v8 = MEMORY[0x1EEE9AC00](v6, v7);
    v11[2] = sub_185B077AC;
    v11[3] = v5;
    MEMORY[0x1EEE9AC00](v8, v11);
    sub_185AFC774(sub_185B077A8, v9, sub_185B06D10);
  }

  else
  {
    v10 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 496, 0xD000000000000031, 0x8000000185B75B50);
    v12 = sub_185B6791C();
    (a4)[2](a4, v12);
  }
}

void sub_185B06AA4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, void (**a5)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a5;
  if (a3)
  {
    v8 = *a3;
    v9 = a3[1];
  }

  else
  {
    v8 = 0uLL;
    v9 = 0uLL;
  }

  v18 = v8;
  v19 = v9;
  v20 = a3 == 0;
  v17 = 0;
  _Block_copy(a5);
  v10 = AppProtectionFeatures.enabled.getter();
  if (v10)
  {
    v12 = MEMORY[0x1EEE9AC00](v10, v11);
    v15[2] = sub_185B077AC;
    v15[3] = v7;
    MEMORY[0x1EEE9AC00](v12, v15);
    sub_185AFC774(sub_185B077A8, v13, sub_185B06C8C);
  }

  else
  {
    v14 = sub_185AD0148(2uLL, 0xD000000000000016, 0x8000000185B75AB0, 543, 0xD000000000000057, 0x8000000185B75AD0);
    v16 = sub_185B6791C();
    (a5)[2](a5, v16);
  }
}

unint64_t sub_185B06CBC()
{
  result = qword_1EA8CB6D0;
  if (!qword_1EA8CB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB6D0);
  }

  return result;
}

uint64_t objectdestroy_95Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 64);

  v2 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_185B06DCC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_185B67B5C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_185AFDFB8(a1, a2, v2 + v6, v8);
}

id sub_185B06F30(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_185B06F3C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_185B06F74(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t objectdestroy_124Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0) - 8);
  v2 = (*(v1 + 80) + 312) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0[4];

  if (v0[6])
  {

    v5 = v0[8];

    v6 = v0[10];

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  }

  v7 = v0[24];

  v8 = v0[26];

  v9 = v0[28];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 29);
  v10 = sub_185B67AFC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v2, 1, v10))
  {
    (*(v11 + 8))(v0 + v2, v10);
  }

  v12 = *(v0 + ((v3 + v2 + 9) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

void sub_185B071A4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0) - 8);
  v2 = (*(v1 + 80) + 312) & ~*(v1 + 80);
  sub_185AFBA68(*(v0 + 16), *(v0 + 24), *(v0 + 32), (v0 + 40), *(v0 + 176), (v0 + 184), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), v0 + v2, *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64) + 9) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + *(v1 + 64) + 9) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_127Tm()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t objectdestroy_121Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_185B07340(char a1, uint64_t a2)
{
  v5 = *(sub_185B67B5C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2 + ((v7 + 103) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_185AFACB4(a1, a2, v2 + v6, (v2 + v7), v9);
}

void sub_185B073FC(char a1, uint64_t a2)
{
  v5 = *(sub_185B67B5C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_185AFAB6C(a1, a2, v2 + v6, v7);
}

uint64_t get_enum_tag_for_layout_string_13AppProtection13APGuardActionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_185B074F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_185B07550(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_185B075F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_185B07638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_185B076C4()
{
  result = qword_1EA8CD0A0;
  if (!qword_1EA8CD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD0A0);
  }

  return result;
}

unint64_t sub_185B0771C()
{
  result = qword_1EA8CD0A8;
  if (!qword_1EA8CD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD0A8);
  }

  return result;
}

uint64_t sub_185B077B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_185AE7A7C(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        sub_185AE7AD8(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_185B0B2D4(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_185B4E9EC(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_185B4E9EC((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_185B0B2D4(v15, v9 + 16 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = sub_185AE7AD8(v16);
      }

      ++v7;
      v8 += 16;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_185B07A64()
{
  v1 = v0[4];
  v3 = *v0;

  os_unfair_lock_lock((v1 + 32));
  sub_185B0B330((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

void *sub_185B07AEC(void *a1)
{
  v2 = sub_185B67AFC();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v30 - v9;
  result = MEMORY[0x1EEE9AC00](v8, v11);
  v15 = &v30 - v14;
  v34 = a1;
  v16 = *a1;
  v17 = *(v16 + 16);
  if (!v17)
  {
    return result;
  }

  v18 = 0;
  v19 = v16 + 32;
  v35 = (v13 + 8);
  v36 = (v13 + 32);
  v31 = v17;
  v32 = v16;
  while (v18 < *(v16 + 16))
  {
    sub_185AE7A7C(v19, v37);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_5;
    }

    v20 = v38;
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(ObjectType, v20);
    swift_unknownObjectRelease();
    (*v36)(v15, v10, v2);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_4;
    }

    swift_getObjectType();
    v22 = swift_conformsToProtocol2();
    if (!v22)
    {
      swift_unknownObjectRelease();
LABEL_4:
      (*v35)(v15, v2);
      goto LABEL_5;
    }

    v23 = v22;
    result = v34[1];
    if (!result)
    {
      goto LABEL_14;
    }

    v24 = v10;
    v25 = [result remoteObjectProxy];
    sub_185B682AC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD118, &qword_185B6D110);
    swift_dynamicCast();
    v26 = v39;
    v27 = swift_getObjectType();
    v28 = v33;
    (*(v23 + 16))(v27, v23);
    sub_185B0AB28(v26, v28, v15);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v29 = *v35;
    (*v35)(v28, v2);
    v29(v15, v2);
    v10 = v24;
    v17 = v31;
    v16 = v32;
LABEL_5:
    ++v18;
    result = sub_185AE7AD8(v37);
    v19 += 16;
    if (v17 == v18)
    {
      return result;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_185B07E0C(uint64_t *a1, char a2)
{
  v3 = v2;
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v12 = sub_185B67B8C();
  __swift_project_value_buffer(v12, qword_1ED6F5130);
  (*(v7 + 16))(v11, a1, v6);
  v13 = sub_185B67B6C();
  v14 = sub_185B680AC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v15 = 136446466;
    sub_185AC7328(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
    v16 = sub_185B6856C();
    v33 = v3;
    v18 = v17;
    (*(v7 + 8))(v11, v6);
    v19 = sub_185ACB2C4(v16, v18, &v34);
    v3 = v33;

    *(v15 + 4) = v19;
    *(v15 + 12) = 1024;
    *(v15 + 14) = a2 & 1;
    _os_log_impl(&dword_185AC1000, v13, v14, "monitor %{public}s locked status update %{BOOL}d", v15, 0x12u);
    v20 = v32;
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x1865FE2F0](v20, -1, -1);
    MEMORY[0x1865FE2F0](v15, -1, -1);
  }

  else
  {

    v21 = (*(v7 + 8))(v11, v6);
  }

  v23 = *(v3 + 32);
  MEMORY[0x1EEE9AC00](v21, v22);
  *(&v32 - 2) = a1;

  os_unfair_lock_lock((v23 + 32));
  sub_185B0B298((v23 + 16), &v34);
  os_unfair_lock_unlock((v23 + 32));
  v24 = v34;

  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = (v24 + 40);
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      ObjectType = swift_getObjectType();
      v30 = *(v28 + 24);
      swift_unknownObjectRetain();
      v30(a1, a2 & 1, ObjectType, v28);
      swift_unknownObjectRelease();
      v26 += 2;
      --v25;
    }

    while (v25);
  }
}

uint64_t sub_185B08164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v16[2] = a2;

  v5 = sub_185B077B0(sub_185B0B2B4, v16, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v18 = a3;
    v7 = v5 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_185AE7A7C(v7, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_185AE7AD8(v17);
      if (Strong)
      {
        swift_getObjectType();
        v10 = swift_conformsToProtocol2();
        if (v10)
        {
          v11 = v10;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_185B3CDE4(0, v8[2] + 1, 1, v8);
          }

          v13 = v8[2];
          v12 = v8[3];
          if (v13 >= v12 >> 1)
          {
            v8 = sub_185B3CDE4((v12 > 1), v13 + 1, 1, v8);
          }

          v8[2] = v13 + 1;
          v14 = &v8[2 * v13];
          v14[4] = Strong;
          v14[5] = v11;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v7 += 16;
      --v6;
    }

    while (v6);

    a3 = v18;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v8;
  return result;
}

uint64_t sub_185B082F4(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = sub_185B67AFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE70, &unk_185B6C5A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v40 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v38 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v38 - v23;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(a1 + 8);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(ObjectType, v25);
    swift_unknownObjectRelease();
    v27 = *(v4 + 56);
    v27(v24, 0, 1, v3);
  }

  else
  {
    v27 = *(v4 + 56);
    v27(v24, 1, 1, v3);
  }

  (*(v4 + 16))(v21, v41, v3);
  v27(v21, 0, 1, v3);
  v28 = *(v8 + 48);
  sub_185AE7B2C(v24, v12);
  sub_185AE7B2C(v21, &v12[v28]);
  v29 = v4;
  v30 = *(v4 + 48);
  if (v30(v12, 1, v3) != 1)
  {
    v32 = v40;
    sub_185AE7B2C(v12, v40);
    if (v30(&v12[v28], 1, v3) != 1)
    {
      v33 = v29;
      v34 = &v12[v28];
      v35 = v39;
      (*(v29 + 32))(v39, v34, v3);
      sub_185AC7328(&qword_1ED6F45C0, MEMORY[0x1E69695A8]);
      v31 = sub_185B67DEC();
      v36 = *(v33 + 8);
      v36(v35, v3);
      sub_185ACF5CC(v21, &unk_1EA8CD9A0, &unk_185B6C2C0);
      sub_185ACF5CC(v24, &unk_1EA8CD9A0, &unk_185B6C2C0);
      v36(v40, v3);
      sub_185ACF5CC(v12, &unk_1EA8CD9A0, &unk_185B6C2C0);
      return v31 & 1;
    }

    sub_185ACF5CC(v21, &unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185ACF5CC(v24, &unk_1EA8CD9A0, &unk_185B6C2C0);
    (*(v29 + 8))(v32, v3);
    goto LABEL_9;
  }

  sub_185ACF5CC(v21, &unk_1EA8CD9A0, &unk_185B6C2C0);
  sub_185ACF5CC(v24, &unk_1EA8CD9A0, &unk_185B6C2C0);
  if (v30(&v12[v28], 1, v3) != 1)
  {
LABEL_9:
    sub_185ACF5CC(v12, &qword_1EA8CCE70, &unk_185B6C5A0);
    v31 = 0;
    return v31 & 1;
  }

  sub_185ACF5CC(v12, &unk_1EA8CD9A0, &unk_185B6C2C0);
  v31 = 1;
  return v31 & 1;
}

id sub_185B087A0(uint64_t a1)
{
  v2 = v1;
  v4 = APGetExtensionMonitorServiceName();
  if (!v4)
  {
    sub_185B67E4C();
    v4 = sub_185B67E1C();
  }

  v5 = APGetExtensionMonitorServiceInterface();
  v6 = APGetClientExtensionMonitorInterface();
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = *(a1 + 8);
  if (v10)
  {
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x1E696B0B8]);

    v10 = [v11 initWithMachServiceName:v4 options:0];

    [v10 setRemoteObjectInterface_];
    [v10 setExportedInterface_];
    [v10 setExportedObject_];
    [v10 _setQueue_];
    v16[4] = sub_185B0B290;
    v16[5] = v9;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_185ACA0E8;
    v16[3] = &block_descriptor_78;
    v12 = _Block_copy(v16);

    [v10 setInterruptionHandler_];
    _Block_release(v12);
    v13 = [v10 _xpcConnection];
    xpc_connection_set_non_launching();
    swift_unknownObjectRelease();
    *(a1 + 8) = v10;
    [v10 resume];
  }

  v14 = v10;

  return v14;
}

uint64_t sub_185B089EC()
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v0 = sub_185B67B8C();
  __swift_project_value_buffer(v0, qword_1ED6F5130);
  v1 = sub_185B67B6C();
  v2 = sub_185B680AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_185AC1000, v1, v2, "connection to daemon in extension monitor registry interrupted", v3, 2u);
    MEMORY[0x1865FE2F0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185B07A64();
  }

  return result;
}

uint64_t sub_185B08B00(void **a1, uint64_t a2, uint64_t a3)
{
  v23[0] = sub_185B67AFC();
  v6 = *(v23[0] - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v23[0], v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v23 - v13;
  ObjectType = swift_getObjectType();
  v16 = *(a3 + 8);
  sub_185B1F4B4(a2, a1, ObjectType, v16);
  v17 = sub_185B087A0(a1);
  v18 = [v17 remoteObjectProxy];
  sub_185B682AC();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD118, &qword_185B6D110);
  swift_dynamicCast();
  v19 = v23[7];
  (*(a3 + 16))(ObjectType, a3);
  (*(v16 + 8))(ObjectType, v16);
  sub_185B0AB28(v19, v14, v11);
  swift_unknownObjectRelease();
  v20 = *(v6 + 8);
  v21 = v23[0];
  v20(v11, v23[0]);
  return v20(v14, v21);
}

void sub_185B08D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v7 = sub_185B67AFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v14 = *(a3 + 8);
  v34 = a1;
  sub_185B1F588(a2, a1);
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v15 = sub_185B67B8C();
  __swift_project_value_buffer(v15, qword_1ED6F5130);
  swift_unknownObjectRetain();
  v16 = sub_185B67B6C();
  v17 = sub_185B680AC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v18;
    v33 = swift_slowAlloc();
    v36[0] = v33;
    *v18 = 136315138;
    v19 = *(v14 + 8);
    v32 = v17;
    v19(ObjectType, v14);
    sub_185AC7328(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
    v20 = sub_185B6856C();
    v22 = v21;
    (*(v8 + 8))(v12, v7);
    v23 = sub_185ACB2C4(v20, v22, v36);

    v24 = v31;
    *(v31 + 1) = v23;
    v25 = v24;
    _os_log_impl(&dword_185AC1000, v16, v32, "end monitoring %s", v24, 0xCu);
    v26 = v33;
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x1865FE2F0](v26, -1, -1);
    MEMORY[0x1865FE2F0](v25, -1, -1);
  }

  v27 = sub_185B087A0(v34);
  v28 = [v27 remoteObjectProxy];
  sub_185B682AC();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD118, &qword_185B6D110);
  swift_dynamicCast();
  v29 = v36[5];
  (*(v14 + 8))(ObjectType, v14);
  v30 = sub_185B67ABC();
  (*(v8 + 8))(v12, v7);
  [v29 endMonitoringForMonitorUUID_];
  swift_unknownObjectRelease();
}

id sub_185B09168(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_185B09314@<X0>(void *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  swift_unknownObjectWeakInit();
  sub_185ACF448(v16, v15);
  v6 = type metadata accessor for APExtensionSubjectMonitorSubscription();
  v7 = objc_allocWithZone(v6);
  sub_185ACF448(v15, &v7[OBJC_IVAR____TtC13AppProtection37APExtensionSubjectMonitorSubscription_monitorRef]);
  *&v7[OBJC_IVAR____TtC13AppProtection37APExtensionSubjectMonitorSubscription_registry] = a2;
  v14.receiver = v7;
  v14.super_class = v6;
  v8 = a2;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  sub_185ACF3F4(v15);
  v10 = v9;
  MEMORY[0x1865FCFA0](v10, v11);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_185B67F8C();
  }

  sub_185B67FAC();
  result = sub_185ACF3F4(v16);
  *a3 = v10;
  return result;
}

void sub_185B094D4(unint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = sub_185AE7520(a1, v3);

  v5 = *a1;
  if (*a1 >> 62)
  {
    if (v5 < 0)
    {
      v7 = *a1;
    }

    v6 = sub_185B6844C();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
LABEL_3:
      sub_185B56F84(v4, v6);
      return;
    }
  }

  __break(1u);
}

void sub_185B0956C()
{
  v1 = *&v0[OBJC_IVAR___APExtensionSubjectMonitorRegistry_state];

  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  *(v1 + 25) = 1;
  os_unfair_lock_unlock((v1 + 28));

  if (v2)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v4 = sub_185B67B8C();
    __swift_project_value_buffer(v4, qword_1ED6F5130);
    v5 = v0;
    oslog = sub_185B67B6C();
    v6 = sub_185B6809C();

    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    v10 = "cannot resume invalidated monitor %@";
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    sub_185ADF8F0(*&v0[OBJC_IVAR___APExtensionSubjectMonitorRegistry_extensionSubject] + OBJC_IVAR___APSubject_clientArenaStorage, v17);
    v14 = __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v15 = __swift_project_boxed_opaque_existential_1(v14 + 12, v14[15]);
    sub_185B0AA94(v0, *v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    return;
  }

  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v11 = sub_185B67B8C();
  __swift_project_value_buffer(v11, qword_1ED6F5130);
  v12 = v0;
  oslog = sub_185B67B6C();
  v6 = sub_185B6809C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v12;
    *v8 = v12;
    v13 = v12;
    v10 = "double-resumption of %@";
LABEL_11:
    _os_log_impl(&dword_185AC1000, oslog, v6, v10, v7, 0xCu);
    sub_185ACF5CC(v8, &unk_1EA8CC820, &unk_185B6B2A0);
    MEMORY[0x1865FE2F0](v8, -1, -1);
    MEMORY[0x1865FE2F0](v7, -1, -1);
  }

LABEL_12:
}

uint64_t sub_185B09868()
{
  sub_185ADF8F0(*(v0 + OBJC_IVAR___APExtensionSubjectMonitorRegistry_extensionSubject) + OBJC_IVAR___APSubject_clientArenaStorage, v6);
  v1 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_185ADF8F0((v1 + 12), v5);
  v2 = *(*__swift_project_boxed_opaque_existential_1(v5, v5[3]) + 32);

  os_unfair_lock_lock(v2 + 8);
  sub_185B0B218(&v2[4]);
  os_unfair_lock_unlock(v2 + 8);

  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  v3 = *(v0 + OBJC_IVAR___APExtensionSubjectMonitorRegistry_state);

  os_unfair_lock_lock((v3 + 28));
  sub_185AE79CC((v3 + 16));
  os_unfair_lock_unlock((v3 + 28));
}

void __swiftcall APExtensionSubjectMonitorRegistry.init()(APExtensionSubjectMonitorRegistry *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_185B09A60(uint64_t a1, int a2)
{
  v3 = a2 & 1;
  v4 = OBJC_IVAR___APExtensionSubjectMonitorRegistry_lastLockedState;
  v5 = *(v2 + OBJC_IVAR___APExtensionSubjectMonitorRegistry_lastLockedState);
  if (v5 != 2 && ((v5 ^ a2) & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = *(v2 + OBJC_IVAR___APExtensionSubjectMonitorRegistry_extensionSubject);
  v6[OBJC_IVAR___APExtension_forcedLockedValue] = v3;
  v7 = *(v2 + OBJC_IVAR___APExtensionSubjectMonitorRegistry_state);

  os_unfair_lock_lock((v7 + 28));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 28));

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_16:

LABEL_17:
    v6[OBJC_IVAR___APExtension_forcedLockedValue] = 2;
LABEL_18:
    *(v2 + v4) = v3;
    return;
  }

  v9 = sub_185B6844C();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v9 >= 1)
  {
    v18 = v3;
    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1865FD3E0](i, v8);
      }

      else
      {
        v15 = *(v8 + 8 * i + 32);
      }

      v16 = v15;
      sub_185ACF448(v15 + OBJC_IVAR____TtC13AppProtection37APExtensionSubjectMonitorSubscription_monitorRef, v19);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_185ACF3F4(v19);
      if (Strong)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE78, &qword_185B6C5B0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_185B6C470;
        *(v11 + 32) = v6;
        type metadata accessor for APSubject(0);
        v12 = v6;
        v13 = sub_185B67F5C();

        v14 = v16;
        [Strong appProtectionSubjectsChanged:v13 forSubscription:v14];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v3 = v18;
    goto LABEL_17;
  }

  __break(1u);
}

void sub_185B09D04(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v34 = a2;
  ObjectType = swift_getObjectType();
  v37 = sub_185B67AFC();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_185B67C9C();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_185B67CDC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isEffectivelyLocked])
  {
    v24 = swift_allocObject();
    v36 = a4;
    v24[2] = a4;
    v24[3] = a5;
    v24[4] = ObjectType;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_185B0B20C;
    *(v25 + 24) = v24;
    v44 = sub_185AE7948;
    v45 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_185B6657C;
    v43 = &block_descriptor_55_0;
    v26 = _Block_copy(&aBlock);

    v27 = APGetAsyncExtensionInfoProxy(v26);
    _Block_release(v26);
    v28 = *&a1[OBJC_IVAR___APExtension_extensionUUIDStorage];
    sub_185B67ADC();
    v29 = sub_185B67ABC();
    (*(v8 + 8))(v12, v37);
    if (v38)
    {
      v30 = sub_185B67E1C();
    }

    else
    {
      v30 = 0;
    }

    v44 = v36;
    v45 = a5;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_185AC53EC;
    v43 = &block_descriptor_58_1;
    v33 = _Block_copy(&aBlock);

    [v27 authenticateForExtensionWithUUID:v29 reasonDescription:v30 completion:v33];
    _Block_release(v33);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EA8CC098 != -1)
    {
      swift_once();
    }

    v38 = qword_1EA8D2348;
    v31 = swift_allocObject();
    *(v31 + 16) = a4;
    *(v31 + 24) = a5;
    v44 = sub_185ACA0B8;
    v45 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_185ACA0E8;
    v43 = &block_descriptor_46_0;
    v32 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v39 = MEMORY[0x1E69E7CC0];
    sub_185AC7328(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v23, v17, v32);
    _Block_release(v32);
    (*(v36 + 8))(v17, v13);
    (*(v19 + 8))(v23, v18);
  }
}

uint64_t sub_185B0A424(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EA8CC098 != -1)
  {
    swift_once();
  }

  v8 = qword_1EA8D2348;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a1 & 1;
  *(v9 + 40) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_185AE7978;
  *(v10 + 24) = v9;
  v15[4] = sub_185AE7C88;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_185AD94F4;
  v15[3] = &block_descriptor_68_0;
  v11 = _Block_copy(v15);

  v12 = a2;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_185B0A5D4(void *a1)
{
  if (a1)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v2 = sub_185B67B8C();
    __swift_project_value_buffer(v2, qword_1ED6F5130);
    v3 = a1;
    oslog = sub_185B67B6C();
    v4 = sub_185B6808C();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = a1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_185AC1000, oslog, v4, "Could not fetch extension info proxy for extensionRequiresAuthentication %@", v5, 0xCu);
      sub_185ACF5CC(v6, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v6, -1, -1);
      MEMORY[0x1865FE2F0](v5, -1, -1);
    }
  }
}

uint64_t sub_185B0A738(void *a1)
{
  if (qword_1EA8CC098 != -1)
  {
    swift_once();
  }

  v2 = qword_1EA8D2348;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_185B0B204;
  *(v4 + 24) = v3;
  v9[4] = sub_185AE7934;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_185AD94F4;
  v9[3] = &block_descriptor_37_1;
  v5 = _Block_copy(v9);
  v6 = a1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_185B0A8C0(char a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v6 = sub_185B67B8C();
    __swift_project_value_buffer(v6, qword_1ED6F5130);
    v7 = a2;
    v8 = sub_185B67B6C();
    v9 = sub_185B6808C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_185AC1000, v8, v9, "Could not check extensionRequiresAuthentication %@", v10, 0xCu);
      sub_185ACF5CC(v11, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v11, -1, -1);
      MEMORY[0x1865FE2F0](v10, -1, -1);
    }
  }

  result = swift_beginAccess();
  *(a3 + 16) = a1 & 1;
  return result;
}

uint64_t sub_185B0AA94(uint64_t a1, uint64_t *a2)
{
  v2 = a2[4];
  v4 = *a2;

  os_unfair_lock_lock((v2 + 32));
  sub_185B0B238((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
}

void sub_185B0AB28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v36[-v14];
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v16 = sub_185B67B8C();
  __swift_project_value_buffer(v16, qword_1ED6F5130);
  v17 = v7[2];
  v41 = a2;
  v17(v15, a2, v6);
  v17(v12, a3, v6);
  v18 = sub_185B67B6C();
  v19 = sub_185B680AC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = a1;
    v21 = v20;
    v38 = swift_slowAlloc();
    v42 = v38;
    *v21 = 136446466;
    sub_185AC7328(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
    v37 = v19;
    v22 = sub_185B6856C();
    v24 = v23;
    v39 = a3;
    v25 = v7[1];
    v25(v15, v6);
    v26 = sub_185ACB2C4(v22, v24, &v42);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2082;
    v27 = sub_185B6856C();
    v29 = v28;
    v25(v12, v6);
    v30 = sub_185ACB2C4(v27, v29, &v42);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_185AC1000, v18, v37, "begin monitoring extension %{public}s monitor %{public}s", v21, 0x16u);
    v31 = v38;
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v31, -1, -1);
    v32 = v21;
    a1 = v40;
    MEMORY[0x1865FE2F0](v32, -1, -1);
  }

  else
  {

    v33 = v7[1];
    v33(v12, v6);
    v33(v15, v6);
  }

  v34 = sub_185B67ABC();
  v35 = sub_185B67ABC();
  [a1 beginMonitoringForExtensionUUID:v34 monitorUUID:v35];
}

id sub_185B0AEA8(void *a1)
{
  v1[OBJC_IVAR___APExtensionSubjectMonitorRegistry_lastLockedState] = 2;
  *&v1[OBJC_IVAR___APExtensionSubjectMonitorRegistry_extensionSubject] = a1;
  v3 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v4 = a1;
  v5 = [v3 init];
  *&v1[OBJC_IVAR___APExtensionSubjectMonitorRegistry_nsuuid] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD128, &unk_185B6D118);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 28) = 0;
  *(v6 + 16) = v7;
  *&v1[OBJC_IVAR___APExtensionSubjectMonitorRegistry_state] = v6;
  *(v6 + 24) = 0;
  v9.receiver = v1;
  v9.super_class = APExtensionSubjectMonitorRegistry;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_185B0AF7C(char *a1)
{
  v2 = sub_185B67AFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 isEffectivelyLocked])
  {
    return 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  v20 = sub_185B0A738;
  v21 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_185B6657C;
  v19 = &block_descriptor_8;
  v9 = _Block_copy(&aBlock);

  v10 = APGetSyncExtensionInfoProxy(v9);
  _Block_release(v9);
  v11 = *&a1[OBJC_IVAR___APExtension_extensionUUIDStorage];
  sub_185B67ADC();
  v12 = sub_185B67ABC();
  (*(v3 + 8))(v7, v2);
  v20 = sub_185B0B1FC;
  v21 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_185AC53EC;
  v19 = &block_descriptor_28_1;
  v13 = _Block_copy(&aBlock);

  [v10 extensionRequiresAuthentication:v12 completion:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v14 = *(v8 + 16);

  return v14;
}

uint64_t sub_185B0B238(void **a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_185B08B00(a1, v1[2], v1[3]);
}

void *sub_185B0B330(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_185B07AEC(a1);
}

id NotificationReceiverObjCShim.__allocating_init(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC13AppProtection28NotificationReceiverObjCShim_callback];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id NotificationReceiverObjCShim.init(callback:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC13AppProtection28NotificationReceiverObjCShim_callback];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_185B0B47C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_185B6781C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v10 = sub_185B67B8C();
  __swift_project_value_buffer(v10, qword_1EA8D2278);
  (*(v5 + 16))(v9, a1, v4);
  v11 = sub_185B67B6C();
  v12 = sub_185B680AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    sub_185B0C288(&qword_1EA8CC000, MEMORY[0x1E6968160]);
    v16 = sub_185B6856C();
    v18 = v17;
    (*(v5 + 8))(v9, v4);
    v19 = sub_185ACB2C4(v16, v18, &v24);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_185AC1000, v11, v12, "received note: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1865FE2F0](v15, -1, -1);
    v20 = v14;
    v2 = v23;
    MEMORY[0x1865FE2F0](v20, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v21 = *(v2 + OBJC_IVAR____TtC13AppProtection28NotificationReceiverObjCShim_callback + 8);
  return (*(v2 + OBJC_IVAR____TtC13AppProtection28NotificationReceiverObjCShim_callback))(a1);
}

id NotificationReceiverObjCShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationReceiverObjCShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}