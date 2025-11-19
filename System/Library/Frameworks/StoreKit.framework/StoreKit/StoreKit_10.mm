uint64_t sub_1B24FD6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_191();
  a29 = v31;
  a30 = v32;
  a28 = v30;
  v33 = v30[112];
  _s3__C4CodeOMa_0(0);
  v35 = v34;
  v30[81] = 504;
  v36 = v33;
  OUTLINED_FUNCTION_82_3();
  v39 = sub_1B2505150(v37, v38);
  OUTLINED_FUNCTION_12_18();
  v40 = sub_1B256CFDC();

  if (v40 & 1) != 0 || (v30[77] = 1052, v41 = v33, OUTLINED_FUNCTION_12_18(), sub_1B256CFDC(), OUTLINED_FUNCTION_129_1(), (v35) || (type metadata accessor for Code(0), OUTLINED_FUNCTION_195_0(), OUTLINED_FUNCTION_81_3(), sub_1B2505150(v42, v43), OUTLINED_FUNCTION_38_7(), v44 = v39, sub_1B256CFDC(), OUTLINED_FUNCTION_129_1(), (v39))
  {
    v45 = OUTLINED_FUNCTION_99_3();
    sub_1B24E313C(v45);

LABEL_5:
    v46 = OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_185_0(v46, v47, v48, v49);

    OUTLINED_FUNCTION_14_7();
    goto LABEL_6;
  }

  v59 = parseError(_:)(v33);
  v30[79] = v59;
  v60 = v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  type metadata accessor for StoreKitError();
  v62 = OUTLINED_FUNCTION_142_0();
  v63 = v30[89];
  if (v62)
  {
    OUTLINED_FUNCTION_121_2();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v68 = OUTLINED_FUNCTION_99_3();
      v69 = v30[89];
      sub_1B24E313C(v68);

      OUTLINED_FUNCTION_6_21();
      sub_1B2505A44(v69, v70);
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_6_21();
    sub_1B2505A44(v74, v75);
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v44);
    sub_1B243E88C(v63, &qword_1EB7D1E48);
  }

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v76 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v76, qword_1ED69A108);
  OUTLINED_FUNCTION_196_0();
  v77 = a18;
  v30[71] = a17;
  v30[72] = v77;
  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1B2749D50](0xD000000000000027);
  v30[80] = v33;
  sub_1B256E78C();
  v78 = v30[71];
  v79 = v30[72];
  v80 = v59;
  v81 = sub_1B256E0AC();
  v82 = sub_1B256D5CC();
  if (os_log_type_enabled(v82, v81))
  {
    v61 = OUTLINED_FUNCTION_21_3();
    v83 = OUTLINED_FUNCTION_20_4();
    a17 = v83;
    *v61 = 136446466;
    v85 = OUTLINED_FUNCTION_75_2(v83, v84, &a17);
    OUTLINED_FUNCTION_78_2(v85);
    *(v61 + 14) = sub_1B2519814(v78, v79, &a17);
    OUTLINED_FUNCTION_163_1(&dword_1B23EF000, v86, v81, "%{public}s%{public}s");
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_11_4();
  }

  OUTLINED_FUNCTION_150_1();
  a10 = v88;
  a11 = v87;
  a12 = v89;
  a13 = v30[93];
  a14 = v30[92];
  a15 = v30[91];
  a16 = v30[89];
  v90 = [objc_allocWithZone(type metadata accessor for SKTwoErrorEvent()) init];
  OUTLINED_FUNCTION_149_1();
  v91 = sub_1B256D0CC();
  OUTLINED_FUNCTION_200_0(v91, sel_setPrimaryError_);

  v92 = sub_1B256D0CC();
  OUTLINED_FUNCTION_200_0(v92, sel_setMappedError_);

  [v61 setUserAction_];
  OUTLINED_FUNCTION_27_2(OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context);
  v93 = sub_1B256D98C();
  [v61 setInAppPurchaseID_];

  [objc_opt_self() sendEvent_];

  swift_willThrow();
  sub_1B24E313C(v78);

  OUTLINED_FUNCTION_7_2();
LABEL_6:
  OUTLINED_FUNCTION_112();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1B24FDBB4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24FDC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_197_0();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_155();
  a16 = v18;
  sub_1B2498F24(v18[92], v18[91], &unk_1EB7D0DF0);
  OUTLINED_FUNCTION_38_7();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B243E88C(v18[91], &unk_1EB7D0DF0);
LABEL_4:

    sub_1B24E313C(v18[96]);
    OUTLINED_FUNCTION_23_8();
    v23 = OUTLINED_FUNCTION_41_1();
    sub_1B24E31B0(v23, v24);
    v25 = OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_185_0(v25, 0, v26, v27);

    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_168_0();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }

  v21 = v18[91];
  v22 = *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B8) + 48));
  OUTLINED_FUNCTION_23_8();
  if (v22)
  {
    goto LABEL_4;
  }

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v37 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v37, qword_1ED69A108);
  v38 = sub_1B256E0AC();
  v39 = sub_1B256D5CC();
  if (os_log_type_enabled(v39, v38))
  {
    v40 = OUTLINED_FUNCTION_21_3();
    v41 = OUTLINED_FUNCTION_20_4();
    a10 = v41;
    *v40 = 136446466;
    v43 = OUTLINED_FUNCTION_75_2(v41, v42, &a10);
    OUTLINED_FUNCTION_78_2(v43);
    *(v40 + 14) = sub_1B2519814(0xD00000000000002DLL, 0x80000001B258FB70, &a10);
    OUTLINED_FUNCTION_163_1(&dword_1B23EF000, v44, v38, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_11_4();
  }

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x1EEE6DFA0](v45, v46, v47);
}

uint64_t sub_1B24FDEE0()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_72_2();
  *(v1 + 16) = v2;
  *(v1 + 24) = sub_1B24FDF68;
  v3 = swift_continuation_init();
  sub_1B24EFF74(v3);

  return MEMORY[0x1EEE6DEC8](v0);
}

uint64_t sub_1B24FDF68()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24FE038()
{
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_24_5();

  sub_1B24E313C(*(v0 + 768));
  OUTLINED_FUNCTION_23_8();
  v1 = OUTLINED_FUNCTION_41_1();
  sub_1B24E31B0(v1, v2);
  v3 = OUTLINED_FUNCTION_8_24();
  OUTLINED_FUNCTION_185_0(v3, 0, v4, v5);

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_336();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1B24FE0F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B256D9EC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B256CEAC();
  swift_allocObject();
  sub_1B256CE9C();
  v23 = a1;
  v24 = a2;
  sub_1B250519C();
  v13 = sub_1B256CE8C();
  v15 = v14;

  sub_1B256D9DC();
  sub_1B256D9CC();
  if (v16)
  {
    sub_1B24D7B84();
    v18 = v17;
    v20 = v19;
    a1 = sub_1B256D20C();
    sub_1B2443AE4(v18, v20);
    sub_1B2443AE4(v13, v15);
  }

  else
  {
    sub_1B2443AE4(v13, v15);
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v5, qword_1ED69A108);
    if (qword_1EB7CDA50 != -1)
    {
      swift_once();
    }

    sub_1B256EE5C();
    v7 = v23;
    v6 = v24;
    v8 = sub_1B256E0AC();

    v9 = sub_1B256D5CC();

    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22[0] = v11;
      *v10 = 136446466;
      v23 = 91;
      v24 = 0xE100000000000000;
      MEMORY[0x1B2749D50](v7, v6);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v12 = sub_1B2519814(91, 0xE100000000000000, v22);

      *(v10 + 4) = v12;
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_1B2519814(0xD00000000000002FLL, 0x80000001B25911C0, v22);
      _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v11, -1, -1);
      MEMORY[0x1B274BFF0](v10, -1, -1);
    }
  }

  return a1;
}

void sub_1B24FE430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v10 = [objc_opt_self() defaultBroker];
  v11 = swift_allocObject();
  v12 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a2 + 32);
  *(v11 + 64) = *(a2 + 48);
  *(v11 + 72) = a1;
  aBlock[4] = sub_1B25050DC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B244BD28;
  aBlock[3] = &block_descriptor_48_0;
  v13 = _Block_copy(aBlock);
  sub_1B25050E8(a2, v31);

  v14 = [v10 storeKitServiceWithErrorHandler_];
  _Block_release(v13);

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B2578530;
    v16 = SKClientOverridesKeyClientAPIVersion;
    *(inited + 64) = MEMORY[0x1E69E6530];
    *(inited + 32) = v16;
    *(inited + 40) = 2;
    type metadata accessor for SKClientOverridesKey(0);
    sub_1B2505150(&qword_1EB7CFE48, type metadata accessor for SKClientOverridesKey);
    v17 = v16;
    sub_1B256D8AC();
    type metadata accessor for SKPaymentOption(0);
    sub_1B2505150(&qword_1EB7CFE58, type metadata accessor for SKPaymentOption);

    v18 = sub_1B256D86C();

    v19 = sub_1B256D86C();

    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    v31[4] = sub_1B2505194;
    v31[5] = v20;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 1107296256;
    v31[2] = sub_1B248A62C;
    v31[3] = &block_descriptor_54_0;
    v21 = _Block_copy(v31);

    [v14 processPayment:v18 forClient:v19 paymentDelegate:a4 reply:v21];
    _Block_release(v21);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v7, qword_1ED69A108);
    sub_1B25059E8(v22, v9, type metadata accessor for SKLogger);
    sub_1B25050E8(a2, v31);
    v23 = sub_1B256D5CC();
    v24 = sub_1B256D5EC();
    (*(*(v24 - 8) + 8))(v9, v24);
    v25 = sub_1B256E0AC();
    sub_1B2505120(a2);
    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1B2519814(*(a2 + 24), *(a2 + 32), v31);
      _os_log_impl(&dword_1B23EF000, v23, v25, "Failed to get XPC remote object to purchase product %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1B274BFF0](v27, -1, -1);
      MEMORY[0x1B274BFF0](v26, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B2505150(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
    v28 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v29 = v28;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B24FE9C8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v4, qword_1ED69A108);
  sub_1B25059E8(v7, v6, type metadata accessor for SKLogger);
  sub_1B25050E8(a2, v20);
  v8 = a1;
  v9 = sub_1B256D5CC();
  v10 = sub_1B256D5EC();
  (*(*(v10 - 8) + 8))(v6, v10);
  v11 = sub_1B256E0AC();
  sub_1B2505120(a2);

  if (os_log_type_enabled(v9, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v12 = 136446466;
    *(v12 + 4) = sub_1B2519814(*(a2 + 24), *(a2 + 32), v20);
    *(v12 + 12) = 2114;
    v15 = sub_1B256D0CC();
    *(v12 + 14) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1B23EF000, v9, v11, "Failed in XPC to purchase product %{public}s: %{public}@", v12, 0x16u);
    sub_1B243E88C(v13, &qword_1EB7D18E0);
    MEMORY[0x1B274BFF0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B274BFF0](v14, -1, -1);
    MEMORY[0x1B274BFF0](v12, -1, -1);
  }

  v16 = parseError(_:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  swift_allocError();
  *v17 = v16;
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1B24FEC60(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v4 = a2;
    v5 = a2;
LABEL_3:

    return swift_continuation_throwingResumeWithError();
  }

  if (!a1)
  {
    type metadata accessor for StoreKitError();
    sub_1B2505150(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
    v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v8 = v7;
    goto LABEL_3;
  }

  **(*(a3 + 64) + 40) = a1;

  return swift_continuation_throwingResume();
}

uint64_t AdvancedCommerceProduct.latestTransaction.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_16_7();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24FEDF0()
{
  OUTLINED_FUNCTION_21_5();
  v0[4] = *(v0[3] + 32);

  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[5] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_174_0(v1);

  return static Transaction.latest(for:)();
}

uint64_t sub_1B24FEEA4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t AdvancedCommerceProduct.allTransactions.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = 0;
  a1[1] = 0;
  return OUTLINED_FUNCTION_109_2(v2, a1);
}

uint64_t AdvancedCommerceProduct.currentEntitlements.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = xmmword_1B2580A90;
  return OUTLINED_FUNCTION_109_2(v2, a1);
}

uint64_t AdvancedCommerceProduct.debugDescription.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  sub_1B24472B8(*v0, v3, v4);
  BackingValue.debugDescription.getter();
  sub_1B24472E0(v2, v3, v4);
  return OUTLINED_FUNCTION_22_1();
}

uint64_t static AdvancedCommerceProduct.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v11 = *a1;
  v12 = v2;
  v13 = *(a1 + 16);
  v3 = *(a2 + 8);
  v8 = *a2;
  v9 = v3;
  v10 = *(a2 + 16);
  sub_1B24472B8(v11, v2, v13);
  v4 = OUTLINED_FUNCTION_22_1();
  sub_1B24472B8(v4, v5, v10);
  v6 = static BackingValue.== infix(_:_:)(&v11, &v8);
  sub_1B24472E0(v8, v9, v10);
  sub_1B24472E0(v11, v12, v13);
  return v6 & 1;
}

uint64_t AdvancedCommerceProduct.hash(into:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  sub_1B24472B8(*v0, v3, v4);
  BackingValue.hash(into:)();

  return sub_1B24472E0(v2, v3, v4);
}

uint64_t AdvancedCommerceProduct.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B256ED3C();
  v4 = OUTLINED_FUNCTION_41_1();
  sub_1B24472B8(v4, v5, v3);
  BackingValue.hash(into:)();
  sub_1B24472E0(v1, v2, v3);
  return sub_1B256ED7C();
}

uint64_t sub_1B24FF18C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B256ED3C();
  sub_1B24472B8(v1, v2, v3);
  BackingValue.hash(into:)();
  sub_1B24472E0(v1, v2, v3);
  return sub_1B256ED7C();
}

uint64_t sub_1B24FF230(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  OUTLINED_FUNCTION_172_0();
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22B0);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2580);
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22B8);
  v17 = OUTLINED_FUNCTION_2_2(v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v31 - v21;
  OUTLINED_FUNCTION_79_2();
  v33 = v3;
  sub_1B25059E8(v3, v2 + v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2570);
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_16_2();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v3);
  v35 = v22;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v4);
  sub_1B256DF6C();
  (*(v12 + 32))(v2 + qword_1EB7CD690, v15, v10);
  sub_1B2498F24(v22, v20, &qword_1EB7D22B8);
  result = __swift_getEnumTagSinglePayload(v20, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v3 - 8) + 32))(v2 + qword_1EB7CD698, v20, v3);
    sub_1B243E88C(v22, &qword_1EB7D22B8);
    v36.receiver = v2;
    v36.super_class = ObjectType;
    v29 = objc_msgSendSuper2(&v36, sel_init);
    OUTLINED_FUNCTION_5_26();
    sub_1B2505A44(v33, v30);
    return v29;
  }

  return result;
}

uint64_t sub_1B24FF538()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B256DDAC();
  OUTLINED_FUNCTION_16_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_123_1();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v8 = v0;
  OUTLINED_FUNCTION_130();
  sub_1B247DAA8();
}

uint64_t sub_1B24FF5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B24FF624, 0, 0);
}

uint64_t sub_1B24FF624()
{
  OUTLINED_FUNCTION_4_0();
  v0 = OUTLINED_FUNCTION_97_4();
  sub_1B24FF7F4(v0, v1, v2, v3, v4, &qword_1EB7D2298, sub_1B2447958, v5, sub_1B2504C80);
  OUTLINED_FUNCTION_7_2();

  return v6();
}

uint64_t sub_1B24FF6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B24FF6E0, 0, 0);
}

uint64_t sub_1B24FF6E0()
{
  OUTLINED_FUNCTION_4_0();
  v0 = OUTLINED_FUNCTION_97_4();
  sub_1B24FF7F4(v0, v1, v2, v3, v4, &qword_1EB7D2350, type metadata accessor for Product, v5, sub_1B2505A9C);
  OUTLINED_FUNCTION_7_2();

  return v6();
}

uint64_t sub_1B24FF770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B24FF79C, 0, 0);
}

uint64_t sub_1B24FF79C()
{
  OUTLINED_FUNCTION_4_0();
  v0 = OUTLINED_FUNCTION_97_4();
  sub_1B24FF91C(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_7_2();

  return v5();
}

uint64_t sub_1B24FF7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, void (*a7)(void)@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v23[0] = a8;
  v23[1] = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  OUTLINED_FUNCTION_1_1();
  v18 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v23 - v20;
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a3;
  v24 = v9;
  v25 = a4;
  v26 = a5;
  a7(0);
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8650], v16);
  return sub_1B256DE5C();
}

uint64_t sub_1B24FF91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2310);
  MEMORY[0x1EEE9AC00](v11);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = v5;
  v20 = a4;
  v21 = a5;
  (*(v13 + 104))(&v15[-v12], *MEMORY[0x1E69E8650]);
  return sub_1B256DE5C();
}

uint64_t sub_1B24FFA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a6;
  v36 = a7;
  v37 = a11;
  v33[1] = a10;
  v34 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a8);
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v33 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v21);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  sub_1B256DDAC();
  OUTLINED_FUNCTION_16_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  (*(v17 + 16))(v20, a1, v15);
  v27 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = v35;
  *(v28 + 4) = v34;
  *(v28 + 5) = a3;
  *(v28 + 6) = a4;
  *(v28 + 7) = a5;
  v30 = v36;
  *(v28 + 8) = v29;
  *(v28 + 9) = v30;
  (*(v17 + 32))(&v28[v27], v20, v15);

  v31 = a5;

  OUTLINED_FUNCTION_130();
  sub_1B247DAA8();
}

uint64_t sub_1B24FFC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B24FFC58, 0, 0);
}

uint64_t sub_1B24FFC58()
{
  OUTLINED_FUNCTION_21_5();
  v1 = OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_34_7(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 88) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_174_0(v2);
  OUTLINED_FUNCTION_30_9();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1B24FFD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B24FFD4C, 0, 0);
}

uint64_t sub_1B24FFD4C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_34_7(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 88) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_174_0(v2);
  OUTLINED_FUNCTION_30_9();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1B24FFE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B24FFE40, 0, 0);
}

uint64_t sub_1B24FFE40()
{
  OUTLINED_FUNCTION_21_5();
  v1 = OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_34_7(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 88) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_174_0(v2);
  OUTLINED_FUNCTION_30_9();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1B24FFF00()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B24FFFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a2;
  v8[11] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22A0);
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v8[18] = *(v10 + 64);
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2500124, 0, 0);
}

uint64_t sub_1B25004AC()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B2500590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a2;
  v8[11] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2358);
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v8[18] = *(v10 + 64);
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B25006B8, 0, 0);
}

uint64_t sub_1B2500A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a2;
  v8[11] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2318);
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v8[18] = *(v10 + 64);
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2500B68, 0, 0);
}

uint64_t sub_1B2500EF0()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B2500FD4()
{
  OUTLINED_FUNCTION_21_5();
  sub_1B256DDFC();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B2501054(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22A8);
  v8[9] = v11;
  v8[10] = *(v11 - 8);
  v8[11] = swift_task_alloc();
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v8[12] = v12;
  *v12 = v8;
  v12[1] = sub_1B25011C4;

  return (v14)(v8 + 4, a6);
}

uint64_t sub_1B25011C4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B25012BC()
{
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 32);
  *(v0 + 48) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22A0);
  sub_1B256DDEC();
  v3 = OUTLINED_FUNCTION_41_1();
  v4(v3);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_336();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1B250155C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2360);
  v8[7] = v11;
  v8[8] = *(v11 - 8);
  v8[9] = swift_task_alloc();
  type metadata accessor for Product();
  v8[10] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[11] = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[12] = v13;
  *v13 = v8;
  v13[1] = sub_1B250170C;

  return v15(v12, a6);
}

uint64_t sub_1B250170C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B2501804()
{
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_24_5();
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  OUTLINED_FUNCTION_84_3();
  sub_1B25059E8(v1, v2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2358);
  sub_1B256DDEC();
  (*(v4 + 8))(v3, v5);
  OUTLINED_FUNCTION_83_3();
  sub_1B2505A44(v1, v7);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_336();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1B2501AD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2320);
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v8[24] = v12;
  *v12 = v8;
  v12[1] = sub_1B2501C48;

  return (v14)(v8 + 2, a6);
}

uint64_t sub_1B2501C48()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B2501D40()
{
  OUTLINED_FUNCTION_155();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  v7 = *(v0 + 32);
  *(v0 + 88) = v7;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  sub_1B24472B8(v1, v2, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2318);
  sub_1B256DDEC();
  v8 = OUTLINED_FUNCTION_41_1();
  v9(v8);
  sub_1B24472E0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_7_2();

  return v10();
}

uint64_t sub_1B2502058()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_72_2();
  v2 = *(v1 + 88);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_128();
  sub_1B25025EC(v4, v2, &unk_1F29B88A8, sub_1B25060A8, &block_descriptor_19, &unk_1F29B88F8, sub_1B25060AC, &block_descriptor_39);

  return MEMORY[0x1EEE6DEC8](v0);
}

uint64_t sub_1B2502124()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 96) = v4;
  if (v4)
  {
    swift_willThrow();
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_134_0();

    return v8();
  }
}

uint64_t sub_1B250226C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_72_2();
  v2 = *(v1 + 88);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_128();
  sub_1B25025EC(v4, v2, &unk_1F29B8C18, sub_1B25060A8, &block_descriptor_133, &unk_1F29B8C68, sub_1B25060AC, &block_descriptor_139);

  return MEMORY[0x1EEE6DEC8](v0);
}

uint64_t sub_1B2502358()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_72_2();
  v2 = *(v1 + 88);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_128();
  sub_1B25025EC(v4, v2, &unk_1F29B8AB0, sub_1B2505828, &block_descriptor_88_0, &unk_1F29B8B00, sub_1B2505844, &block_descriptor_94);

  return MEMORY[0x1EEE6DEC8](v0);
}

uint64_t sub_1B2502424()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 96) = v4;
  if (v4)
  {
    swift_willThrow();
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_134_0();

    return v8();
  }
}

uint64_t sub_1B250254C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 96);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2570);
  sub_1B256DEFC();

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B25025EC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a6;
  v69 = a7;
  v72 = a4;
  v75 = a1;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v12 = type metadata accessor for SKLogger();
  v13 = __swift_project_value_buffer(v12, qword_1ED69A108);
  v14 = &a2[qword_1EB7EDF58];
  v73 = type metadata accessor for ProductRequest();
  v74 = v14;
  v15 = (v14 + *(v73 + 36));
  v16 = *v15;
  v17 = v15[1];
  sub_1B256E0CC();
  OUTLINED_FUNCTION_203_0();
  v71 = v13;
  sub_1B256D5CC();
  OUTLINED_FUNCTION_164_0();
  v70 = v16;
  if (OUTLINED_FUNCTION_202_0())
  {
    v66 = a5;
    v18 = OUTLINED_FUNCTION_21_3();
    v77 = OUTLINED_FUNCTION_20_4();
    *v18 = 136446466;
    OUTLINED_FUNCTION_39_2();
    aBlock = v19;
    v80 = v20;
    MEMORY[0x1B2749D50](v16, v17);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_155_0(v21, v22, v23, v24, v25, v26, v27, v28, v63, "Could not parse product: ", v66, a8, v68, v69, v16, v13, v72, v73, v14, v75, v76, v77, v78, aBlock, v80);
    OUTLINED_FUNCTION_172_0();

    *(v18 + 4) = v16;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1B2519814(0xD000000000000018, v64 | 0x8000000000000000, &v77);
    _os_log_impl(&dword_1B23EF000, v14, v8, "%{public}s%{public}s", v18, 0x16u);
    swift_arrayDestroy();
    a8 = v67;
    OUTLINED_FUNCTION_11_4();
    a5 = v65;
    OUTLINED_FUNCTION_11_4();
  }

  OUTLINED_FUNCTION_43_0();
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = v75;
  v30 = objc_opt_self();
  v31 = a2;
  v32 = [v30 defaultBroker];
  v83 = v72;
  v84 = v29;
  OUTLINED_FUNCTION_74_4();
  v80 = 1107296256;
  v81 = sub_1B244BD28;
  v82 = a5;
  v33 = _Block_copy(&aBlock);
  v34 = v84;

  v35 = [v32 productServiceWithErrorHandler_];
  v36 = OUTLINED_FUNCTION_147_1();
  _Block_release(v36);

  if (a5)
  {
    sub_1B256D03C();
    swift_allocObject();
    sub_1B256D02C();
    sub_1B2505150(&qword_1EB7CD768, type metadata accessor for ProductRequest);
    sub_1B256D01C();

    OUTLINED_FUNCTION_22_1();
    v53 = sub_1B256D1FC();
    OUTLINED_FUNCTION_43_0();
    v54 = swift_allocObject();
    *(v54 + 16) = v31;
    *(v54 + 24) = v75;
    v83 = v69;
    v84 = v54;
    OUTLINED_FUNCTION_74_4();
    v80 = 1107296256;
    v81 = sub_1B2515BBC;
    v82 = a8;
    v55 = _Block_copy(&aBlock);
    v56 = v31;

    [a5 productsWithRequest:v53 responseReceiver:v56 reply:v55];

    _Block_release(v55);
    swift_unknownObjectRelease();

    v57 = OUTLINED_FUNCTION_22_1();
    return sub_1B2443AE4(v57, v58);
  }

  else
  {
    aBlock = 0;
    v80 = 0xE000000000000000;
    sub_1B256E4FC();
    OUTLINED_FUNCTION_130_2();
    MEMORY[0x1B2749D50](v37 + 28, v38 | 0x8000000000000000);
    v39 = v74 + *(v73 + 20);
    v40 = *v39;
    LOBYTE(v39) = *(v39 + 8);
    v77 = v40;
    LOBYTE(v78) = v39;
    sub_1B256E78C();
    v42 = aBlock;
    v41 = v80;
    v43 = sub_1B256E0AC();

    sub_1B256D5CC();
    OUTLINED_FUNCTION_149_1();

    if (os_log_type_enabled(v34, v43))
    {
      v44 = OUTLINED_FUNCTION_21_3();
      v77 = OUTLINED_FUNCTION_20_4();
      *v44 = 136446466;
      OUTLINED_FUNCTION_39_2();
      OUTLINED_FUNCTION_194_0();
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_155_0(v45, v46, v47, v48, v49, v50, v51, v52, v63, v64, v65, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, aBlock, v80);
      OUTLINED_FUNCTION_169_0();
      *(v44 + 4) = v17;
      *(v44 + 12) = 2082;
      sub_1B2519814(v42, v41, &v77);
      OUTLINED_FUNCTION_120();

      *(v44 + 14) = &aBlock;
      _os_log_impl(&dword_1B23EF000, v34, v43, "%{public}s%{public}s", v44, 0x16u);
      OUTLINED_FUNCTION_110_2();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_63_0();
    }

    else
    {
    }

    sub_1B2467710();
    OUTLINED_FUNCTION_113_0();
    v60 = swift_allocError();
    *v61 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    OUTLINED_FUNCTION_113_0();
    swift_allocError();
    *v62 = v60;
    swift_continuation_throwingResumeWithError();
  }
}

void sub_1B2502D58(void *a1, uint64_t a2)
{
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v4 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v4, qword_1ED69A108);
  OUTLINED_FUNCTION_180_0();
  sub_1B256E4FC();
  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1B2749D50](0xD00000000000001ELL);
  v5 = a2 + qword_1EB7EDF58;
  v6 = type metadata accessor for ProductRequest();
  v21 = *(v5 + *(v6 + 20) + 8);
  sub_1B256E78C();
  MEMORY[0x1B2749D50](8250, 0xE200000000000000);
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  v7 = v22;
  v8 = v23;
  v9 = (v5 + *(v6 + 36));
  v10 = *v9;
  v11 = v9[1];
  v12 = sub_1B256E0AC();

  v13 = sub_1B256D5CC();

  if (os_log_type_enabled(v13, v12))
  {
    v14 = OUTLINED_FUNCTION_21_3();
    v20 = OUTLINED_FUNCTION_20_4();
    *v14 = 136446466;
    OUTLINED_FUNCTION_39_2();
    v22 = v15;
    v23 = v16;
    MEMORY[0x1B2749D50](v10, v11);
    OUTLINED_FUNCTION_94_0();
    v17 = v23;
    sub_1B2519814(v22, v23, &v20);
    OUTLINED_FUNCTION_120();

    *(v14 + 4) = &v22;
    *(v14 + 12) = 2082;
    sub_1B2519814(v7, v8, &v20);
    OUTLINED_FUNCTION_164_0();
    *(v14 + 14) = v17;
    _os_log_impl(&dword_1B23EF000, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_113_0();
  swift_allocError();
  *v18 = a1;
  v19 = a1;
  swift_continuation_throwingResumeWithError();
  OUTLINED_FUNCTION_186();
}

void sub_1B2503014(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v3 = type metadata accessor for SKLogger();
    v4 = __swift_project_value_buffer(v3, qword_1ED69A108);
    OUTLINED_FUNCTION_93_2();
    sub_1B256E4FC();
    OUTLINED_FUNCTION_130_2();
    MEMORY[0x1B2749D50](v5 + 12, v6 | 0x8000000000000000);
    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256E78C();
    type metadata accessor for ProductRequest();
    OUTLINED_FUNCTION_171_0();
    v7 = sub_1B256E0AC();

    v8 = v4;
    v9 = sub_1B256D5CC();

    if (os_log_type_enabled(v9, v7))
    {
      v10 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_20_4();
      *v10 = 136446466;
      OUTLINED_FUNCTION_39_2();
      OUTLINED_FUNCTION_162_1();
      OUTLINED_FUNCTION_23_3();
      sub_1B2519814(v18, v19, &v20);
      OUTLINED_FUNCTION_120();

      *(v10 + 4) = v8;
      *(v10 + 12) = 2082;
      sub_1B2519814(v18, v19, &v20);
      OUTLINED_FUNCTION_164_0();
      *(v10 + 14) = v19;
      _os_log_impl(&dword_1B23EF000, v9, v7, "%{public}s%{public}s", v10, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    else
    {
    }

    OUTLINED_FUNCTION_113_0();
    swift_allocError();
    *v17 = a1;
    swift_continuation_throwingResumeWithError();
    OUTLINED_FUNCTION_186();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v11 = type metadata accessor for SKLogger();
    v12 = __swift_project_value_buffer(v11, qword_1ED69A108);
    type metadata accessor for ProductRequest();
    OUTLINED_FUNCTION_171_0();
    v13 = sub_1B256E0CC();

    v14 = sub_1B256D5CC();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_20_4();
      *v15 = 136446466;
      OUTLINED_FUNCTION_39_2();
      OUTLINED_FUNCTION_162_1();
      OUTLINED_FUNCTION_23_3();
      sub_1B2519814(v18, v19, &v20);
      OUTLINED_FUNCTION_120();

      *(v15 + 4) = v12;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_1B2519814(0xD000000000000018, 0x80000001B2591150, &v20);
      _os_log_impl(&dword_1B23EF000, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_44_1();
    }

    OUTLINED_FUNCTION_186();

    swift_continuation_throwingResume();
  }
}

uint64_t sub_1B25033C0()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_47_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_175_0(v1);

  return v4(v3);
}

uint64_t sub_1B250346C()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_47_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_175_0(v1);

  return v4(v3);
}

void sub_1B2503518()
{
  OUTLINED_FUNCTION_187_0();
  v1 = v0;
  if (*(v0 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2328), OUTLINED_FUNCTION_122_2(), v2 = sub_1B256E4AC(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      sub_1B256ED3C();
      sub_1B256DA7C();
      v7 = sub_1B256ED7C() & ~(-1 << *(v3 + 32));
      v8 = v7 >> 6;
      v9 = *(v6 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if ((v10 & v9) == 0)
      {
        *(v6 + 8 * v8) = v10 | v9;
        v11 = *(v3 + 16);
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          goto LABEL_11;
        }

        *(v3 + 16) = v13;
      }

      if (v4 == ++v5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:

    OUTLINED_FUNCTION_188_0();
  }
}

unint64_t sub_1B2503634()
{
  result = qword_1EB7D2278;
  if (!qword_1EB7D2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2278);
  }

  return result;
}

uint64_t sub_1B2503688(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B25036C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B2503724()
{
  OUTLINED_FUNCTION_187_0();
  v1 = v0;
  if (*(v0 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22C0), OUTLINED_FUNCTION_122_2(), v2 = sub_1B256E4AC(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = *(v1 + 32 + v5++);
      sub_1B256ED3C();
      MEMORY[0x1B274AFC0](v7);
      v8 = sub_1B256ED7C();
      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v6 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        if (v7 == *(*(v3 + 48) + v10))
        {
          goto LABEL_11;
        }

        v8 = v10 + 1;
      }

      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + v10) = v7;
      v14 = *(v3 + 16);
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_14;
      }

      *(v3 + 16) = v16;
LABEL_11:
      if (v5 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_188_0();
  }
}

uint64_t sub_1B2503854(uint64_t a1)
{
  v2 = a1;
  if (!*(a1 + 16))
  {
    v4 = MEMORY[0x1E69E7CD0];
    goto LABEL_170;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22D0);
  OUTLINED_FUNCTION_120();
  result = sub_1B256E4AC();
  v4 = result;
  v436 = *(v2 + 16);
  if (!v436)
  {
LABEL_170:

    return v4;
  }

  v5 = 0;
  v434 = v2;
  v435 = v2 + 32;
  v430 = result;
  v443 = result + 56;
  while (2)
  {
    if (v5 >= *(v2 + 16))
    {
      goto LABEL_175;
    }

    v6 = v435 + 40 * v5;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = *(v6 + 32);
    ++v5;
    sub_1B256ED3C();

    sub_1B24472B8(v9, v10, v11);
    v451 = v7;
    v452 = v8;
    sub_1B256DA7C();
    switch(v11)
    {
      case 1:
        MEMORY[0x1B274AFC0](1);
        if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v12 = v9;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_13;
      case 2:
        MEMORY[0x1B274AFC0](2);
        v12 = v9;
LABEL_13:
        MEMORY[0x1B274AFE0](v12);
        break;
      case 3:
        MEMORY[0x1B274AFC0](3);
        sub_1B256ED5C();
        break;
      case 4:
        MEMORY[0x1B274AFC0](4);
        sub_1B2457170();
        break;
      case 5:
        MEMORY[0x1B274AFC0](5);
        sub_1B2457918();
        break;
      case 6:
        MEMORY[0x1B274AFC0](6);
        break;
      default:
        MEMORY[0x1B274AFC0](0);
        sub_1B256DA7C();
        break;
    }

    result = sub_1B256ED7C();
    v13 = -1 << *(v4 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    v16 = v443;
    v17 = *(v443 + 8 * (v14 >> 6));
    v18 = 1 << v14;
    if (((1 << v14) & v17) == 0)
    {
LABEL_160:
      *(v16 + 8 * v15) = v17 | v18;
      v384 = *(v4 + 48) + 40 * v14;
      *v384 = v451;
      *(v384 + 8) = v452;
      *(v384 + 16) = v9;
      *(v384 + 24) = v10;
      *(v384 + 32) = v11;
      v385 = *(v4 + 16);
      v386 = __OFADD__(v385, 1);
      v387 = v385 + 1;
      if (v386)
      {
        goto LABEL_176;
      }

      *(v4 + 16) = v387;
      goto LABEL_162;
    }

    v437 = v5;
    v449 = v10;
    v450 = ~v13;
    v20 = v11 == 6 && (v10 | v9) == 0;
    HIDWORD(v442) = v20;
    v447 = v9 + 32;
    v448 = v11;
    v21 = *&v9;
LABEL_24:
    v22 = v16;
    v23 = *(v4 + 48) + 40 * v14;
    v24 = *(v23 + 8);
    v25 = *(v23 + 24);
    v453 = *(v23 + 16);
    v26 = *(v23 + 32);
    if (*v23 != v451 || v24 != v452)
    {
      result = sub_1B256EB5C();
      if ((result & 1) == 0)
      {
        goto LABEL_140;
      }
    }

    switch(v26)
    {
      case 1:
        OUTLINED_FUNCTION_87_3();
        if (v4 != 1)
        {
          v273 = OUTLINED_FUNCTION_22_10();
          v262 = OUTLINED_FUNCTION_125_1(v273, v274, v275, v276, v277, v278, v279, v280, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453);
          v264 = 1;
          goto LABEL_130;
        }

        sub_1B24472E0(v453, v24, 1);
        v219 = OUTLINED_FUNCTION_76_3();
        result = sub_1B24472E0(v219, v220, 1);
        v4 = v25;
        if (*&v453 != v21)
        {
          goto LABEL_140;
        }

        v401 = OUTLINED_FUNCTION_76_3();
        v403 = 1;
        goto LABEL_168;
      case 2:
        OUTLINED_FUNCTION_87_3();
        if (v4 != 2)
        {
          v254 = OUTLINED_FUNCTION_22_10();
          v262 = OUTLINED_FUNCTION_125_1(v254, v255, v256, v257, v258, v259, v260, v261, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453);
          v264 = 2;
LABEL_130:
          sub_1B24472E0(v262, v263, v264);
          v281 = OUTLINED_FUNCTION_60_4();
          result = sub_1B24472E0(v281, v282, v283);
          v4 = v25;
          goto LABEL_140;
        }

        sub_1B24472E0(v453, v24, 2);
        v215 = OUTLINED_FUNCTION_76_3();
        result = sub_1B24472E0(v215, v216, 2);
        v4 = v25;
        if (v453 != v9)
        {
          goto LABEL_140;
        }

        v401 = OUTLINED_FUNCTION_76_3();
        v403 = 2;
        goto LABEL_168;
      case 3:
        OUTLINED_FUNCTION_87_3();
        if (v4 != 3)
        {
          v265 = OUTLINED_FUNCTION_22_10();
          v262 = OUTLINED_FUNCTION_125_1(v265, v266, v267, v268, v269, v270, v271, v272, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453);
          v264 = 3;
          goto LABEL_130;
        }

        sub_1B24472E0(v453, v24, 3);
        v217 = OUTLINED_FUNCTION_76_3();
        result = sub_1B24472E0(v217, v218, 3);
        v4 = v25;
        if ((v453 ^ v9))
        {
          goto LABEL_140;
        }

        v401 = OUTLINED_FUNCTION_76_3();
        v403 = 3;
LABEL_168:
        result = sub_1B24472E0(v401, v402, v403);
        v5 = v437;
LABEL_162:
        v2 = v434;
LABEL_163:
        if (v5 == v436)
        {
          goto LABEL_170;
        }

        continue;
      case 4:
        v445 = v25;
        if (v448 != 4)
        {
          v248 = OUTLINED_FUNCTION_22_10();
          sub_1B24472B8(v248, v249, v448);
          v250 = OUTLINED_FUNCTION_50_4(v453, v25);
          sub_1B24472E0(v250, v25, 4);
          v251 = OUTLINED_FUNCTION_60_4();
LABEL_139:
          result = sub_1B24472E0(v251, v252, v253);
          goto LABEL_140;
        }

        v39 = *(v453 + 16);
        if (v39 != *(v9 + 16))
        {
          v307 = OUTLINED_FUNCTION_22_10();
          v309 = OUTLINED_FUNCTION_50_4(v307, v308);
          v310 = OUTLINED_FUNCTION_50_4(v309, v25);
          sub_1B24472E0(v310, v25, 4);
          OUTLINED_FUNCTION_49_5();
          goto LABEL_139;
        }

        if (!v39 || v453 == v9)
        {
          v419 = OUTLINED_FUNCTION_22_10();
          sub_1B24472B8(v419, v420, 4);
          OUTLINED_FUNCTION_17_2();
          sub_1B24472B8(v421, v422, v423);
          OUTLINED_FUNCTION_17_2();
          sub_1B24472E0(v424, v425, v426);
          OUTLINED_FUNCTION_49_5();
          sub_1B24472E0(v427, v428, v429);

          OUTLINED_FUNCTION_49_5();
          goto LABEL_168;
        }

        v446 = v453 + 32;
        v40 = OUTLINED_FUNCTION_76_3();
        OUTLINED_FUNCTION_50_4(v40, v41);
        OUTLINED_FUNCTION_17_2();
        sub_1B24472B8(v42, v43, v44);

        OUTLINED_FUNCTION_17_2();
        result = sub_1B24472B8(v45, v46, v47);
        v48 = v453;
        v49 = 0;
        v438 = v39;
LABEL_37:
        if (v49 < *(v48 + 16))
        {
          v50 = v49;
          if (v49 >= *(v9 + 16))
          {
            goto LABEL_172;
          }

          ++v49;
          v51 = 24 * v50;
          v52 = v446 + 24 * v50;
          v53 = *v52;
          v54 = *(v52 + 8);
          v55 = *(v447 + v51);
          v56 = *(v447 + v51 + 8);
          v57 = *(v447 + v51 + 16);
          switch(*(v52 + 16))
          {
            case 1:
              OUTLINED_FUNCTION_182_0();
              if (v57 == 1)
              {
                v94 = *&v92;
                sub_1B24472E0(v92, v93, 1);
                v95 = OUTLINED_FUNCTION_27_0();
                result = sub_1B24472E0(v95, v96, 1);
                v86 = v94 == *&v55;
                goto LABEL_62;
              }

              v341 = OUTLINED_FUNCTION_27_9(v92);
              v343 = 1;
              goto LABEL_150;
            case 2:
              OUTLINED_FUNCTION_182_0();
              if (v57 != 2)
              {
                v341 = OUTLINED_FUNCTION_27_9(v81);
                v343 = 2;
                goto LABEL_150;
              }

              v83 = v81;
              sub_1B24472E0(v81, v82, 2);
              v84 = OUTLINED_FUNCTION_27_0();
              result = sub_1B24472E0(v84, v85, 2);
              v86 = v83 == v55;
LABEL_62:
              v48 = v9;
              v9 = v1;
              if (v86)
              {
                goto LABEL_76;
              }

              goto LABEL_142;
            case 3:
              OUTLINED_FUNCTION_182_0();
              if (v57 != 3)
              {
                v341 = OUTLINED_FUNCTION_27_9(v87);
                v343 = 3;
                goto LABEL_150;
              }

              v89 = v87;
              sub_1B24472E0(v87, v88, 3);
              v90 = OUTLINED_FUNCTION_27_0();
              result = sub_1B24472E0(v90, v91, 3);
              v48 = v9;
              v9 = v1;
              if (((v55 ^ v89) & 1) == 0)
              {
                goto LABEL_76;
              }

              goto LABEL_142;
            case 4:
              v440 = v49;
              v444 = *(v447 + v51);
              if (v57 == 4)
              {
                v1 = *(v53 + 16);
                if (v1 == *(v55 + 16))
                {
                  v433 = *(v52 + 8);
                  if (v1)
                  {
                    v67 = v53 == v55;
                  }

                  else
                  {
                    v67 = 1;
                  }

                  v68 = *v52;
                  if (v67)
                  {
                    v69 = OUTLINED_FUNCTION_39_8();
                    OUTLINED_FUNCTION_77_4(v69, v70, v71);
                    OUTLINED_FUNCTION_49_5();
                    OUTLINED_FUNCTION_77_4(v72, v73, v74);
                    OUTLINED_FUNCTION_49_5();
                    sub_1B24472E0(v75, v76, v77);
                    v78 = OUTLINED_FUNCTION_39_8();
LABEL_74:
                    result = sub_1B24472E0(v78, v79, v80);
                    v48 = v453;
                    goto LABEL_75;
                  }

                  v431 = v9;
                  v128 = OUTLINED_FUNCTION_39_8();
                  OUTLINED_FUNCTION_77_4(v128, v129, v130);
                  OUTLINED_FUNCTION_49_5();
                  sub_1B24472B8(v131, v132, v133);
                  v134 = OUTLINED_FUNCTION_39_8();
                  OUTLINED_FUNCTION_77_4(v134, v135, v136);
                  OUTLINED_FUNCTION_49_5();
                  result = sub_1B24472B8(v137, v138, v139);
                  v140 = 0;
                  v141 = (v55 + 48);
                  v142 = (v68 + 48);
                  v441 = v56;
                  v439 = v1;
                  while (1)
                  {
                    if (v140 >= *(v68 + 16))
                    {
                      goto LABEL_173;
                    }

                    if (v140 >= *(v55 + 16))
                    {
                      goto LABEL_174;
                    }

                    ++v140;
                    v144 = *(v142 - 2);
                    v143 = *(v142 - 1);
                    v1 = *v142;
                    v146 = *(v141 - 2);
                    v145 = *(v141 - 1);
                    v147 = *v141;
                    switch(*v142)
                    {
                      case 1:
                        if (v147 != 1)
                        {
                          goto LABEL_157;
                        }

                        sub_1B24472E0(*(v142 - 2), v143, 1);
                        v176 = OUTLINED_FUNCTION_41_0();
                        result = sub_1B24472E0(v176, v177, 1);
                        v173 = *&v144 == *&v146;
                        goto LABEL_96;
                      case 2:
                        if (v147 != 2)
                        {
                          goto LABEL_157;
                        }

                        sub_1B24472E0(*(v142 - 2), v143, 2);
                        v171 = OUTLINED_FUNCTION_41_0();
                        result = sub_1B24472E0(v171, v172, 2);
                        v173 = v144 == v146;
LABEL_96:
                        v1 = v439;
                        if (!v173)
                        {
                          goto LABEL_158;
                        }

                        goto LABEL_110;
                      case 3:
                        if (v147 != 3)
                        {
                          goto LABEL_157;
                        }

                        sub_1B24472E0(*(v142 - 2), v143, 3);
                        v174 = OUTLINED_FUNCTION_41_0();
                        result = sub_1B24472E0(v174, v175, 3);
                        v1 = v439;
                        if ((v146 ^ v144))
                        {
                          goto LABEL_158;
                        }

                        goto LABEL_110;
                      case 4:
                        if (v147 != 4)
                        {
                          goto LABEL_152;
                        }

                        sub_1B24472B8(*(v142 - 2), v143, 4);
                        v158 = OUTLINED_FUNCTION_41_0();
                        sub_1B24472B8(v158, v159, 4);
                        v160 = OUTLINED_FUNCTION_50_0();
                        sub_1B24472B8(v160, v161, 4);
                        v162 = OUTLINED_FUNCTION_41_0();
                        sub_1B24472B8(v162, v163, 4);
                        sub_1B2451EA0();
                        HIDWORD(v432) = v164;
                        v165 = OUTLINED_FUNCTION_50_0();
                        sub_1B24472E0(v165, v166, 4);
                        v167 = OUTLINED_FUNCTION_41_0();
                        sub_1B24472E0(v167, v168, 4);
                        v169 = OUTLINED_FUNCTION_41_0();
                        sub_1B24472E0(v169, v170, 4);
                        v155 = OUTLINED_FUNCTION_50_0();
                        v157 = 4;
                        goto LABEL_100;
                      case 5:
                        if (v147 != 5)
                        {
LABEL_152:
                          v352 = *(v141 - 1);
LABEL_156:
                          v367 = v143;
                          sub_1B24472B8(v144, v143, v1);

                          v143 = v367;
                          v145 = v352;
LABEL_157:
                          v368 = v143;
                          v369 = v145;
                          sub_1B24472B8(v146, v145, v147);
                          sub_1B24472E0(v144, v368, v1);
                          sub_1B24472E0(v146, v369, v147);
                          sub_1B24472E0(v144, v368, v1);
LABEL_158:
                          sub_1B24472E0(v68, v433, 4);
                          OUTLINED_FUNCTION_49_5();
                          sub_1B24472E0(v370, v371, v372);
                          OUTLINED_FUNCTION_49_5();
                          sub_1B24472E0(v373, v374, v375);
                          sub_1B24472E0(v68, v433, 4);
                          OUTLINED_FUNCTION_49_5();
                          sub_1B24472E0(v376, v377, v378);
                          v9 = v431;
                          v379 = OUTLINED_FUNCTION_76_3();
                          OUTLINED_FUNCTION_146_1(v379, v380);
                          OUTLINED_FUNCTION_49_5();
                          result = sub_1B24472E0(v381, v382, v383);
                          v4 = v430;
LABEL_159:
                          v22 = v443;
LABEL_140:
                          v14 = (v14 + 1) & v450;
                          v15 = v14 >> 6;
                          v16 = v22;
                          v17 = *(v22 + 8 * (v14 >> 6));
                          v18 = 1 << v14;
                          if ((v17 & (1 << v14)) == 0)
                          {
                            v5 = v437;
                            LOBYTE(v11) = v448;
                            v10 = v449;
                            goto LABEL_160;
                          }

                          goto LABEL_24;
                        }

                        sub_1B24472B8(*(v142 - 2), v143, 5);
                        v178 = OUTLINED_FUNCTION_41_0();
                        sub_1B24472B8(v178, v179, 5);
                        v180 = OUTLINED_FUNCTION_50_0();
                        sub_1B24472B8(v180, v181, 5);
                        v182 = OUTLINED_FUNCTION_41_0();
                        sub_1B24472B8(v182, v183, 5);
                        sub_1B2452914();
                        HIDWORD(v432) = v184;
                        v185 = OUTLINED_FUNCTION_50_0();
                        sub_1B24472E0(v185, v186, 5);
                        v187 = OUTLINED_FUNCTION_41_0();
                        sub_1B24472E0(v187, v188, 5);
                        v189 = OUTLINED_FUNCTION_41_0();
                        sub_1B24472E0(v189, v190, 5);
                        v155 = OUTLINED_FUNCTION_50_0();
                        v157 = 5;
LABEL_100:
                        result = sub_1B24472E0(v155, v156, v157);
                        v1 = v439;
                        if ((v432 & 0x100000000) == 0)
                        {
                          goto LABEL_158;
                        }

LABEL_110:
                        v141 += 3;
                        v142 += 3;
                        v55 = v444;
                        if (v1 == v140)
                        {
                          OUTLINED_FUNCTION_17_2();
                          v202 = v201;
                          sub_1B24472E0(v203, v204, v205);
                          v206 = OUTLINED_FUNCTION_39_8();
                          sub_1B24472E0(v206, v207, v208);
                          v209 = OUTLINED_FUNCTION_39_8();
                          sub_1B24472E0(v209, v210, v211);
                          OUTLINED_FUNCTION_17_2();
                          result = sub_1B24472E0(v212, v213, v214);
                          v48 = v202;
                          v4 = v430;
                          v9 = v431;
LABEL_75:
                          v39 = v438;
                          v49 = v440;
LABEL_76:
                          if (v49 == v39)
                          {
                            OUTLINED_FUNCTION_17_2();
                            sub_1B24472E0(v388, v389, v390);
                            v391 = OUTLINED_FUNCTION_22_10();
                            OUTLINED_FUNCTION_146_1(v391, v392);
                            OUTLINED_FUNCTION_17_2();
                            sub_1B24472E0(v393, v394, v395);

                            OUTLINED_FUNCTION_49_5();
                            result = sub_1B24472E0(v396, v397, v398);
                            v5 = v437;
                            v2 = v434;
                            goto LABEL_163;
                          }

                          goto LABEL_37;
                        }

                        break;
                      case 6:
                        if (v147 != 6 || (v145 | v146) != 0)
                        {
                          goto LABEL_157;
                        }

                        sub_1B24472E0(*(v142 - 2), v143, 6);
                        v192 = OUTLINED_FUNCTION_130();
                        v194 = 6;
                        goto LABEL_109;
                      default:
                        if (*v141)
                        {
                          v352 = *(v141 - 1);
                          goto LABEL_156;
                        }

                        if (v144 != v146 || v143 != v145)
                        {
                          HIDWORD(v432) = sub_1B256EB5C();
                          v149 = OUTLINED_FUNCTION_50_0();
                          sub_1B24472B8(v149, v150, 0);
                          v151 = OUTLINED_FUNCTION_41_0();
                          sub_1B24472B8(v151, v152, 0);
                          v153 = OUTLINED_FUNCTION_50_0();
                          sub_1B24472E0(v153, v154, 0);
                          v155 = OUTLINED_FUNCTION_41_0();
                          v157 = 0;
                          goto LABEL_100;
                        }

                        sub_1B24472B8(*(v142 - 2), v143, 0);
                        OUTLINED_FUNCTION_89_0();
                        sub_1B24472B8(v195, v196, v197);
                        OUTLINED_FUNCTION_89_0();
                        sub_1B24472E0(v198, v199, v200);
                        OUTLINED_FUNCTION_89_0();
LABEL_109:
                        result = sub_1B24472E0(v192, v193, v194);
                        v1 = v439;
                        goto LABEL_110;
                    }
                  }
                }

                v1 = *(v447 + v51 + 8);
                v22 = v443;
                v353 = OUTLINED_FUNCTION_147_1();
                OUTLINED_FUNCTION_50_4(v353, v1);
                OUTLINED_FUNCTION_49_5();
                OUTLINED_FUNCTION_77_4(v354, v355, v356);
                OUTLINED_FUNCTION_49_5();
                sub_1B24472E0(v357, v358, v359);
                v338 = v55;
                v339 = v1;
                v340 = 4;
              }

              else
              {
                v1 = *(v447 + v51 + 8);
                v22 = v443;
                v331 = OUTLINED_FUNCTION_73_3(v55, v1, v57);
                v333 = OUTLINED_FUNCTION_73_3(v331, v332, 4);
                v335 = 4;
LABEL_149:
                sub_1B24472E0(v333, v334, v335);
                v338 = v444;
                v339 = v1;
                v340 = v57;
              }

              sub_1B24472E0(v338, v339, v340);
              OUTLINED_FUNCTION_17_2();
              sub_1B24472E0(v360, v361, v362);
              v363 = OUTLINED_FUNCTION_76_3();
              OUTLINED_FUNCTION_146_1(v363, v364);
              v365 = OUTLINED_FUNCTION_22_1();
              result = sub_1B24472E0(v365, v366, 4);
              goto LABEL_140;
            case 5:
              v1 = v49;
              v97 = OUTLINED_FUNCTION_27_0();
              if (v57 != 5)
              {
                sub_1B24472B8(v97, v98, v57);
                v319 = OUTLINED_FUNCTION_43_5();
                sub_1B24472B8(v319, v320, v321);
                v322 = OUTLINED_FUNCTION_43_5();
                sub_1B24472E0(v322, v323, v324);
                v325 = OUTLINED_FUNCTION_27_0();
                sub_1B24472E0(v325, v326, v57);
                OUTLINED_FUNCTION_49_5();
                sub_1B24472E0(v327, v328, v329);
                v330 = v9;
                goto LABEL_151;
              }

              sub_1B24472B8(v97, v98, 5);
              v99 = OUTLINED_FUNCTION_43_5();
              sub_1B24472B8(v99, v100, v101);
              v102 = OUTLINED_FUNCTION_27_0();
              sub_1B24472B8(v102, v103, 5);
              v104 = OUTLINED_FUNCTION_43_5();
              OUTLINED_FUNCTION_77_4(v104, v105, v106);
              sub_1B2452914();
              v108 = v107;
              v109 = OUTLINED_FUNCTION_43_5();
              sub_1B24472E0(v109, v110, v111);
              v112 = OUTLINED_FUNCTION_116_0();
              sub_1B24472E0(v112, v113, 5);
              v114 = OUTLINED_FUNCTION_116_0();
              sub_1B24472E0(v114, v115, 5);
              v116 = OUTLINED_FUNCTION_43_5();
              result = sub_1B24472E0(v116, v117, v118);
              v39 = v438;
              v48 = v453;
              if (v108)
              {
                goto LABEL_76;
              }

              goto LABEL_142;
            case 6:
              OUTLINED_FUNCTION_182_0();
              if (v57 == 6 && (v56 | v55) == 0)
              {
                sub_1B24472E0(v119, v120, 6);
                v122 = OUTLINED_FUNCTION_130();
                result = sub_1B24472E0(v122, v123, 6);
                v48 = v9;
                v9 = v1;
                goto LABEL_76;
              }

              v341 = OUTLINED_FUNCTION_27_9(v119);
              v343 = 6;
LABEL_150:
              sub_1B24472E0(v341, v342, v343);
              v344 = OUTLINED_FUNCTION_27_0();
              sub_1B24472E0(v344, v345, v57);
              OUTLINED_FUNCTION_49_5();
              sub_1B24472E0(v346, v347, v348);
              v9 = v1;
              v330 = v1;
LABEL_151:
              OUTLINED_FUNCTION_146_1(v330, v449);
              OUTLINED_FUNCTION_49_5();
              result = sub_1B24472E0(v349, v350, v351);
              v22 = v443;
              goto LABEL_140;
            default:
              v440 = v49;
              if (*(v447 + v51 + 16))
              {
                v1 = *(v447 + v51 + 8);
                v22 = v443;
                v444 = *(v447 + v51);
                v336 = OUTLINED_FUNCTION_73_3(v55, v1, v57);
                v333 = OUTLINED_FUNCTION_73_3(v336, v337, 0);
                v335 = 0;
                goto LABEL_149;
              }

              if (v53 == v55 && v54 == v56)
              {
                sub_1B24472B8(v53, v54, 0);
                v124 = OUTLINED_FUNCTION_38_7();
                sub_1B24472B8(v124, v125, 0);
                v126 = OUTLINED_FUNCTION_38_7();
                sub_1B24472E0(v126, v127, 0);
                v78 = OUTLINED_FUNCTION_38_7();
                v80 = 0;
                goto LABEL_74;
              }

              v59 = *(v52 + 8);
              v60 = sub_1B256EB5C();
              v61 = OUTLINED_FUNCTION_116_0();
              v63 = OUTLINED_FUNCTION_77_4(v61, v62, 0);
              v64 = OUTLINED_FUNCTION_77_4(v63, v59, 0);
              sub_1B24472E0(v64, v59, 0);
              v65 = OUTLINED_FUNCTION_116_0();
              result = sub_1B24472E0(v65, v66, 0);
              v48 = v453;
              v39 = v438;
              if (v60)
              {
                goto LABEL_76;
              }

LABEL_142:
              OUTLINED_FUNCTION_49_5();
              sub_1B24472E0(v311, v312, v313);
              v314 = OUTLINED_FUNCTION_76_3();
              OUTLINED_FUNCTION_146_1(v314, v315);
              OUTLINED_FUNCTION_49_5();
              result = sub_1B24472E0(v316, v317, v318);
              goto LABEL_159;
          }
        }

        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
        return result;
      case 5:
        if (v448 != 5)
        {
          sub_1B24472B8(v9, v449, v448);
          v284 = OUTLINED_FUNCTION_44_6();
          sub_1B24472B8(v284, v285, v286);
          v287 = OUTLINED_FUNCTION_44_6();
          sub_1B24472E0(v287, v288, v289);
          v290 = OUTLINED_FUNCTION_60_4();
          result = sub_1B24472E0(v290, v291, v292);
          goto LABEL_140;
        }

        v1 = v449;
        sub_1B24472B8(v9, v449, 5);
        v221 = OUTLINED_FUNCTION_44_6();
        sub_1B24472B8(v221, v222, v223);

        v224 = OUTLINED_FUNCTION_44_6();
        OUTLINED_FUNCTION_77_4(v224, v225, v226);
        sub_1B2452914();
        v228 = v227;
        v229 = OUTLINED_FUNCTION_44_6();
        sub_1B24472E0(v229, v230, v231);
        sub_1B24472E0(v9, v449, 5);

        v232 = OUTLINED_FUNCTION_44_6();
        result = sub_1B24472E0(v232, v233, v234);
        if ((v228 & 1) == 0)
        {
          goto LABEL_140;
        }

        v401 = OUTLINED_FUNCTION_76_3();
        v403 = 5;
        goto LABEL_168;
      case 6:
        if ((v442 & 0x100000000) == 0)
        {
          OUTLINED_FUNCTION_22_10();
          OUTLINED_FUNCTION_87_3();
          v243 = OUTLINED_FUNCTION_125_1(v235, v236, v237, v238, v239, v240, v241, v242, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453);
          sub_1B24472E0(v243, v244, 6);
          v245 = OUTLINED_FUNCTION_60_4();
          v4 = v25;
          result = sub_1B24472E0(v245, v246, v247);
          goto LABEL_140;
        }

        sub_1B24472E0(v453, v25, 6);
        v399 = OUTLINED_FUNCTION_130();
        sub_1B24472E0(v399, v400, 6);

        v401 = OUTLINED_FUNCTION_130();
        v403 = 6;
        goto LABEL_168;
      default:
        if (v448)
        {
          v28 = OUTLINED_FUNCTION_22_10();
          sub_1B24472B8(v28, v29, v448);
          OUTLINED_FUNCTION_89_0();
          OUTLINED_FUNCTION_77_4(v30, v31, v32);
          OUTLINED_FUNCTION_89_0();
          sub_1B24472E0(v33, v34, v35);
          v36 = OUTLINED_FUNCTION_60_4();
          result = sub_1B24472E0(v36, v37, v38);
          goto LABEL_140;
        }

        if (v453 == v9 && v25 == v449)
        {
          v404 = OUTLINED_FUNCTION_33_7();
          sub_1B24472B8(v404, v405, v406);
          v407 = OUTLINED_FUNCTION_33_7();
          sub_1B24472B8(v407, v408, v409);
          v410 = OUTLINED_FUNCTION_33_7();
          sub_1B24472E0(v410, v411, v412);
          v413 = OUTLINED_FUNCTION_33_7();
          sub_1B24472E0(v413, v414, v415);

          v416 = OUTLINED_FUNCTION_33_7();
          result = sub_1B24472E0(v416, v417, v418);
          v5 = v437;
          v2 = v434;
          goto LABEL_163;
        }

        v294 = sub_1B256EB5C();
        v295 = OUTLINED_FUNCTION_33_7();
        OUTLINED_FUNCTION_77_4(v295, v296, v297);
        OUTLINED_FUNCTION_89_0();
        OUTLINED_FUNCTION_77_4(v298, v299, v300);
        OUTLINED_FUNCTION_89_0();
        sub_1B24472E0(v301, v302, v303);
        v304 = OUTLINED_FUNCTION_33_7();
        result = sub_1B24472E0(v304, v305, v306);
        if ((v294 & 1) == 0)
        {
          goto LABEL_140;
        }

        v401 = OUTLINED_FUNCTION_76_3();
        v403 = 0;
        goto LABEL_168;
    }
  }
}

void sub_1B250498C()
{
  OUTLINED_FUNCTION_187_0();
  v1 = v0;
  if (*(v0 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22C8), OUTLINED_FUNCTION_122_2(), v2 = sub_1B256E4AC(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = (v1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      sub_1B256ED3C();

      sub_1B256DA7C();
      v10 = sub_1B256ED7C();
      v11 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = *(v6 + 8 * v13);
        v15 = 1 << (v10 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        v16 = (*(v3 + 48) + 16 * v12);
        v17 = *v16 == v9 && v16[1] == v8;
        if (v17 || (sub_1B256EB5C() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v12 + 1;
      }

      *(v6 + 8 * v13) = v15 | v14;
      v18 = (*(v3 + 48) + 16 * v12);
      *v18 = v9;
      v18[1] = v8;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v21;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_188_0();
  }
}

uint64_t sub_1B2504B00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B24741E0;

  return sub_1B24FF5F8(a1, v10, v11, v12, a3, a4, a5);
}

uint64_t sub_1B2504BDC()
{
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_45_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_336();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B2504CB0()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_126();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22A0);
  OUTLINED_FUNCTION_2_2(v0);
  OUTLINED_FUNCTION_32_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v2[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_115();

  return sub_1B24FFC24(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B2504D90()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_141_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_115();

  return sub_1B24FFFFC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B2504E38()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_126();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22A0);
  OUTLINED_FUNCTION_26_7(v0);
  OUTLINED_FUNCTION_35_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_128_1(v1);
  *v2 = v3;
  v2[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_115();

  return sub_1B2501054(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B2504F34()
{
  OUTLINED_FUNCTION_21_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return v4(v3);
}

uint64_t sub_1B2504FC8()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v2[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_212();

  return sub_1B2502038(v4, v5, v6, v0);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B2505150(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_122_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B250519C()
{
  result = qword_1EB7D22D8;
  if (!qword_1EB7D22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D22D8);
  }

  return result;
}

uint64_t sub_1B25051F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B24741E0;

  return sub_1B24FF6B4(a1, v10, v11, v12, a3, a4, a5);
}

uint64_t sub_1B25052CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B2445514;

  return sub_1B24FF770(a1, v10, v11, v12, a3, a4, a5);
}

uint64_t sub_1B25053A8()
{
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_45_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_336();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B250544C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1B24472E0(result, a2, a3);
  }

  return result;
}

uint64_t sub_1B250550C()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_126();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2318);
  OUTLINED_FUNCTION_2_2(v0);
  OUTLINED_FUNCTION_32_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v2[1] = sub_1B2445514;
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_115();

  return sub_1B24FFE0C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B25055EC()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_141_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_115();

  return sub_1B2500A40(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B2505694()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_126();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2318);
  OUTLINED_FUNCTION_26_7(v0);
  OUTLINED_FUNCTION_35_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_128_1(v1);
  *v2 = v3;
  v2[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_115();

  return sub_1B2501AD8(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B2505790()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v2[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_212();

  return sub_1B2502338(v4, v5, v6, v0);
}

uint64_t objectdestroyTm_1()
{

  OUTLINED_FUNCTION_123_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B250589C()
{
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_45_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_336();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B2505940(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_122_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B2505984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Product();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B25059E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return a2;
}

uint64_t sub_1B2505A44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_11Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 80) & ~v5;
  v8 = *(v7 + 64);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + v8, v5 | 7);
}

uint64_t sub_1B2505BA0()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_126();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2358);
  OUTLINED_FUNCTION_2_2(v0);
  OUTLINED_FUNCTION_32_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v2[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_115();

  return sub_1B24FFD18(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B2505C80()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_141_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_115();

  return sub_1B2500590(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_17Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 56) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v1, v8 + 8, v5 | 7);
}

uint64_t sub_1B2505E00()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_126();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2358);
  OUTLINED_FUNCTION_26_7(v0);
  OUTLINED_FUNCTION_35_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_128_1(v1);
  *v2 = v3;
  v2[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_115();

  return sub_1B250155C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B2505EFC()
{
  OUTLINED_FUNCTION_21_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return v4(v3);
}

uint64_t objectdestroy_28Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_123_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B2505FCC()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v2[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_212();

  return sub_1B250224C(v4, v5, v6, v0);
}

uint64_t OUTLINED_FUNCTION_1_34(unint64_t *a1, uint64_t *a2)
{

  return sub_1B2505940(a1, a2);
}

uint64_t OUTLINED_FUNCTION_12_20()
{
  *(v3 - 104) = v2;
  v4 = *(v1 + 152);
  __swift_storeEnumTagSinglePayload(*(v1 + 168), 1, 1, v0);
  return v4;
}

uint64_t OUTLINED_FUNCTION_16_17()
{

  return sub_1B256DDAC();
}

uint64_t OUTLINED_FUNCTION_17_13(unint64_t *a1)
{

  return sub_1B2505940(a1, v1);
}

void *OUTLINED_FUNCTION_21_12(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v19;
  result[5] = a18;
  result[6] = v18;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return sub_1B2505A44(v0, type metadata accessor for Transaction);
}

void OUTLINED_FUNCTION_24_11()
{
  *(v2 - 88) = 0x20676E6973726150;
  *(v2 - 80) = 0xE800000000000000;
  *(v1 + 72) = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_26_9(unint64_t *a1, uint64_t *a2)
{

  return sub_1B2505940(a1, a2);
}

uint64_t OUTLINED_FUNCTION_28_9(unint64_t *a1, uint64_t *a2)
{

  return sub_1B2505940(a1, a2);
}

__n128 OUTLINED_FUNCTION_34_7(uint64_t a1)
{
  *(v3 + 80) = a1;
  result = *(v3 + 40);
  v6 = *(v3 + 56);
  *(a1 + 16) = v4;
  *(a1 + 24) = v2;
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  *(a1 + 64) = v1;
  return result;
}

void OUTLINED_FUNCTION_40_8(uint64_t a1, float a2)
{
  *v2 = a2;
  *(v3 - 96) = a1;
  *(v3 - 88) = 91;
  *(v3 - 80) = 0xE100000000000000;

  JUMPOUT(0x1B2749D50);
}

void OUTLINED_FUNCTION_42_5(float a1)
{
  *v1 = a1;

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_54_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 880) = a1;

  return type metadata accessor for StoreKitPaymentDelegate();
}

uint64_t OUTLINED_FUNCTION_55_4()
{

  return MEMORY[0x1EEE6DD50](v4, v0, v5, v3, v2, v1);
}

void OUTLINED_FUNCTION_62_3(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = 1;
  v8[7] = a1;
  v8[8] = a8;
}

unint64_t OUTLINED_FUNCTION_70_3()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2082;
  v5 = *(v3 - 104);

  return sub_1B2519814(v5, v0, (v3 - 96));
}

unint64_t OUTLINED_FUNCTION_71_3(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v4 + 4) = v3;
  *(v4 + 12) = 2082;

  return sub_1B2519814(a2, v2, va);
}

uint64_t OUTLINED_FUNCTION_72_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v23 + v21) = a20;

  return sub_1B2498F24(a19, a21, v22);
}

uint64_t OUTLINED_FUNCTION_94_2()
{
  *(v0 - 88) = 0;
  *(v0 - 80) = 0xE000000000000000;

  return sub_1B256E4FC();
}

uint64_t OUTLINED_FUNCTION_95_3()
{

  return sub_1B243E88C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_109_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = v2;
  *(a2 + 24) = a1;
}

uint64_t OUTLINED_FUNCTION_111_1()
{
  __swift_getEnumTagSinglePayload(v1, 1, v0);
}

void OUTLINED_FUNCTION_115_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_117_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_129_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  *a11 = 0;
  a11[1] = 0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v13;
}

uint64_t OUTLINED_FUNCTION_135_1()
{
}

uint64_t OUTLINED_FUNCTION_142_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_146_1(uint64_t a1, uint64_t a2)
{
  sub_1B24472E0(a1, a2, 4);
}

unint64_t OUTLINED_FUNCTION_155_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25)
{
  v26 = a24;
  v27 = a25;

  return sub_1B2519814(v26, v27, &a22);
}

unint64_t OUTLINED_FUNCTION_156_1()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 80);

  return sub_1B2519814(v2, v3, (v0 - 96));
}

uint64_t OUTLINED_FUNCTION_158_1()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_159_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_161_1()
{

  return type metadata accessor for SKLogger();
}

void OUTLINED_FUNCTION_162_1()
{

  JUMPOUT(0x1B2749D50);
}

void OUTLINED_FUNCTION_163_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_164_0()
{
}

id OUTLINED_FUNCTION_166_1(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v3;

  return v1;
}

uint64_t OUTLINED_FUNCTION_169_0()
{
}

uint64_t OUTLINED_FUNCTION_185_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 2, a4);
}

void OUTLINED_FUNCTION_194_0()
{

  JUMPOUT(0x1B2749D50);
}

id OUTLINED_FUNCTION_195_0()
{
  *v1 = 3038;

  return v0;
}

uint64_t OUTLINED_FUNCTION_196_0()
{

  return sub_1B256E4FC();
}

id OUTLINED_FUNCTION_199(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_200_0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

BOOL OUTLINED_FUNCTION_202_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_203_0()
{
}

id sub_1B2506E48()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SKRemoteEngagementContainerViewController();
  v1 = objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
  [v1 setModalPresentationStyle_];
  [v1 setModalTransitionStyle_];

  return v1;
}

uint64_t sub_1B2506EF0(void *a1)
{
  type metadata accessor for SKRemoteEngagementContainerViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1B2506F50()
{
  v1 = type metadata accessor for SKRemoteEngagementContainerViewController();
  v10.receiver = v0;
  v10.super_class = v1;
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];

    v9[3] = v1;
    v9[0] = v0;
    objc_allocWithZone(MEMORY[0x1E69DD060]);
    v5 = v0;
    v6 = sub_1B25071E8(v9, sel_didTapView_);
    v7 = [v5 view];
    if (v7)
    {
      v8 = v7;
      [v7 addGestureRecognizer_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1B2507190()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SKRemoteEngagementContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B25071E8(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_1B256EB3C();
    (*(v7 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

BOOL sub_1B250732C(uint64_t a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v19 - v2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0A88);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Product.SubscriptionInfo.Status(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2368);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v20 = &v19 - v10;
  v11 = 0;
  v12 = *(a1 + 16);
  v23 = a1;
  v24 = v12;
  while (1)
  {
    if (v24 == v11)
    {
      v15 = 1;
      v16 = v20;
      goto LABEL_12;
    }

    sub_1B25142C4();
    sub_1B24731D0(&v8[*(v6 + 24)], v5, &qword_1EB7D0A88);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B243E88C(v5, &qword_1EB7D0A88);
    }

    else
    {
      v13 = v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D20F0) + 48)];
      sub_1B2512F84(v5, type metadata accessor for Product.SubscriptionInfo.RenewalInfo);
      if (!v13)
      {
        break;
      }
    }

    sub_1B24731D0(&v8[*(v6 + 20)], v3, &unk_1EB7D0DF0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B243E88C(v3, &unk_1EB7D0DF0);
      goto LABEL_9;
    }

    v14 = v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B8) + 48)];
    sub_1B2512F84(v3, type metadata accessor for Transaction);
    if (!v14)
    {
      break;
    }

LABEL_9:
    sub_1B2512F84(v8, type metadata accessor for Product.SubscriptionInfo.Status);
    ++v11;
  }

  v16 = v20;
  sub_1B251302C();
  v15 = 0;
LABEL_12:
  v17 = v24 != v11;
  __swift_storeEnumTagSinglePayload(v16, v15, 1, v6);
  sub_1B243E88C(v16, &qword_1EB7D2368);
  return v17;
}

uint64_t sub_1B25076E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2440);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CB0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2498);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24A0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2CA0);
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v4 + 16))(v6, v21, v3);
  v23 = v16;
  sub_1B256DE5C();
  (*(v8 + 16))(v22, v10, v7);
  sub_1B24731D0(v16, v14, &qword_1EB7D2498);
  result = __swift_getEnumTagSinglePayload(v14, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    (*(*(v17 - 8) + 32))(v20, v14, v17);
    return sub_1B243E88C(v16, &qword_1EB7D2498);
  }

  return result;
}

void sub_1B25079E8()
{
  sub_1B24ABF10();
  if (v0)
  {
    v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0BD8);
    if (OUTLINED_FUNCTION_83_4())
    {
      if (!v6)
      {
        sub_1B23F4EC8(v2, v3, v4, v5, 0);

        return;
      }

      sub_1B23F4EC8(v2, v3, v4, v5, v6);
    }

    swift_willThrow();
  }
}

void sub_1B2507B6C(uint64_t a1@<X8>)
{
  sub_1B24B4F84();
  if (v1)
  {
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1860);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:

      swift_willThrow();
      return;
    }

    if (v10)
    {
      sub_1B23F4EC8(v6, v7, v8, v9, v10);
      goto LABEL_5;
    }

    sub_1B23F4EC8(v6, v7, v8, v9, 0);

    v5 = sub_1B256D3CC();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  }

  else
  {
    v4 = sub_1B256D3CC();
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
  }
}

uint64_t sub_1B2507CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t a7, void (*a8)())
{
  result = a5();
  if (v8)
  {
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    __swift_instantiateConcreteTypeFromMangledNameV2(a6);
    if (swift_dynamicCast())
    {
      if (!v13)
      {
        a8();

        return 0;
      }

      a8();
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B2507DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transaction(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24B0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v60 - v17;
  v19 = &v60 + *(v16 + 56) - v17;
  sub_1B24731D0(a1, &v60 - v17, &unk_1EB7D0DF0);
  sub_1B24731D0(a2, v19, &unk_1EB7D0DF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B24731D0(v18, v12, &unk_1EB7D0DF0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = sub_1B251302C();
      v21 = *(v12 + 2);
      if (v21[2] >= 2uLL)
      {
        v22 = v21[8];
        v23 = v21[9];
        v24 = v21[10];
        v25 = v21[11];

        MEMORY[0x1B2749CC0](v22, v23, v24, v25);

        sub_1B246314C();

        result = sub_1B256D1AC();
        if (v26 >> 60 == 15)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v27 = result;
        v28 = v26;

        v29 = *(v7 + 2);
        if (v29[2] >= 2uLL)
        {
          v30 = v29[8];
          v31 = v29[9];
          v32 = v29[10];
          v33 = v29[11];

          MEMORY[0x1B2749CC0](v30, v31, v32, v33);

          sub_1B246314C();

          result = sub_1B256D1AC();
          if (v34 >> 60 != 15)
          {
            v35 = result;
            v36 = v34;

            v37 = MEMORY[0x1B2749490](v27, v28, v35, v36);
            sub_1B2443AD0(v35, v36);
            sub_1B2443AD0(v27, v28);
            sub_1B2512F84(v7, type metadata accessor for Transaction);
            sub_1B2512F84(v12, type metadata accessor for Transaction);
LABEL_15:
            sub_1B243E88C(v18, &unk_1EB7D0DF0);
            return v37 & 1;
          }

          goto LABEL_27;
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v14 = v12;
    goto LABEL_17;
  }

  sub_1B24731D0(v18, v14, &unk_1EB7D0DF0);
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B8) + 48);
  v39 = v14[v38];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_17:
    sub_1B2512F84(v14, type metadata accessor for Transaction);
    v59 = &qword_1EB7D24B0;
    goto LABEL_18;
  }

  v40 = v19[v38];
  v41 = v61;
  result = sub_1B251302C();
  v42 = *(v14 + 2);
  if (v42[2] < 2uLL)
  {
    goto LABEL_22;
  }

  v43 = v42[8];
  v44 = v42[9];
  v45 = v42[10];
  v46 = v42[11];

  MEMORY[0x1B2749CC0](v43, v44, v45, v46);

  sub_1B246314C();

  result = sub_1B256D1AC();
  if (v47 >> 60 == 15)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v48 = result;
  v49 = v47;

  v50 = *(v41 + 16);
  if (v50[2] < 2uLL)
  {
    goto LABEL_24;
  }

  v51 = v50[8];
  v52 = v50[9];
  v53 = v50[10];
  v54 = v50[11];

  MEMORY[0x1B2749CC0](v51, v52, v53, v54);

  sub_1B246314C();

  result = sub_1B256D1AC();
  if (v55 >> 60 != 15)
  {
    v56 = result;
    v57 = v55;

    v58 = MEMORY[0x1B2749490](v48, v49, v56, v57);
    sub_1B2443AD0(v56, v57);
    sub_1B2443AD0(v48, v49);
    sub_1B2512F84(v61, type metadata accessor for Transaction);
    sub_1B2512F84(v14, type metadata accessor for Transaction);
    if (v58)
    {
      v37 = v39 == v40;
      goto LABEL_15;
    }

    v59 = &unk_1EB7D0DF0;
LABEL_18:
    sub_1B243E88C(v18, v59);
    v37 = 0;
    return v37 & 1;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B25083BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0A88);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24A8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v60 - v17;
  v19 = &v60 + *(v16 + 56) - v17;
  sub_1B24731D0(a1, &v60 - v17, &qword_1EB7D0A88);
  sub_1B24731D0(a2, v19, &qword_1EB7D0A88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B24731D0(v18, v12, &qword_1EB7D0A88);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = sub_1B251302C();
      v21 = *(v12 + 2);
      if (v21[2] >= 2uLL)
      {
        v22 = v21[8];
        v23 = v21[9];
        v24 = v21[10];
        v25 = v21[11];

        MEMORY[0x1B2749CC0](v22, v23, v24, v25);

        sub_1B246314C();

        result = sub_1B256D1AC();
        if (v26 >> 60 == 15)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v27 = result;
        v28 = v26;

        v29 = *(v7 + 2);
        if (v29[2] >= 2uLL)
        {
          v30 = v29[8];
          v31 = v29[9];
          v32 = v29[10];
          v33 = v29[11];

          MEMORY[0x1B2749CC0](v30, v31, v32, v33);

          sub_1B246314C();

          result = sub_1B256D1AC();
          if (v34 >> 60 != 15)
          {
            v35 = result;
            v36 = v34;

            v37 = MEMORY[0x1B2749490](v27, v28, v35, v36);
            sub_1B2443AD0(v35, v36);
            sub_1B2443AD0(v27, v28);
            sub_1B2512F84(v7, type metadata accessor for Product.SubscriptionInfo.RenewalInfo);
            sub_1B2512F84(v12, type metadata accessor for Product.SubscriptionInfo.RenewalInfo);
LABEL_15:
            sub_1B243E88C(v18, &qword_1EB7D0A88);
            return v37 & 1;
          }

          goto LABEL_27;
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v14 = v12;
    goto LABEL_17;
  }

  sub_1B24731D0(v18, v14, &qword_1EB7D0A88);
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D20F0) + 48);
  v39 = v14[v38];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_17:
    sub_1B2512F84(v14, type metadata accessor for Product.SubscriptionInfo.RenewalInfo);
    v59 = &qword_1EB7D24A8;
    goto LABEL_18;
  }

  v40 = v19[v38];
  v41 = v61;
  result = sub_1B251302C();
  v42 = *(v14 + 2);
  if (v42[2] < 2uLL)
  {
    goto LABEL_22;
  }

  v43 = v42[8];
  v44 = v42[9];
  v45 = v42[10];
  v46 = v42[11];

  MEMORY[0x1B2749CC0](v43, v44, v45, v46);

  sub_1B246314C();

  result = sub_1B256D1AC();
  if (v47 >> 60 == 15)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v48 = result;
  v49 = v47;

  v50 = *(v41 + 16);
  if (v50[2] < 2uLL)
  {
    goto LABEL_24;
  }

  v51 = v50[8];
  v52 = v50[9];
  v53 = v50[10];
  v54 = v50[11];

  MEMORY[0x1B2749CC0](v51, v52, v53, v54);

  sub_1B246314C();

  result = sub_1B256D1AC();
  if (v55 >> 60 != 15)
  {
    v56 = result;
    v57 = v55;

    v58 = MEMORY[0x1B2749490](v48, v49, v56, v57);
    sub_1B2443AD0(v56, v57);
    sub_1B2443AD0(v48, v49);
    sub_1B2512F84(v61, type metadata accessor for Product.SubscriptionInfo.RenewalInfo);
    sub_1B2512F84(v14, type metadata accessor for Product.SubscriptionInfo.RenewalInfo);
    if (v58)
    {
      v37 = v39 == v40;
      goto LABEL_15;
    }

    v59 = &qword_1EB7D0A88;
LABEL_18:
    sub_1B243E88C(v18, v59);
    v37 = 0;
    return v37 & 1;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B25089BC(unint64_t a1, uint64_t a2, char a3, void (*a4)(void))
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = sub_1B2515A0C(a1, a2, a3);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  a4();
  os_activity_scope_leave(&state);
  return swift_unknownObjectRelease();
}

uint64_t static Product.SubscriptionInfo.status(for:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2368);
  OUTLINED_FUNCTION_2_2(v3);
  v0[4] = OUTLINED_FUNCTION_250();
  v4 = type metadata accessor for Product.SubscriptionInfo.Status(0);
  v0[5] = v4;
  v0[6] = *(v4 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v5 = type metadata accessor for Product.SubscriptionInfo.Status.Statuses.AsyncIterator(0);
  OUTLINED_FUNCTION_2_2(v5);
  v0[9] = OUTLINED_FUNCTION_250();
  v6 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B2508B74()
{
  OUTLINED_FUNCTION_21_5();

  v1 = OUTLINED_FUNCTION_24();
  sub_1B250DDD8(v1, v2, 0, v3);
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E80);
  OUTLINED_FUNCTION_63_3();
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_23_9();

  return MEMORY[0x1EEE6D9D0](v6, v7);
}

uint64_t sub_1B2508C2C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B2508D10()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  v1 = v0[4];
  v2 = OUTLINED_FUNCTION_59_1();
  if (__swift_getEnumTagSinglePayload(v2, v3, v4) == 1)
  {
    v5 = v0[9];
    OUTLINED_FUNCTION_34_8();
    sub_1B2512F84(v5, v6);
    sub_1B243E88C(v1, &qword_1EB7D2368);

    OUTLINED_FUNCTION_141();
    OUTLINED_FUNCTION_42_4();

    return v9(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_2_32();
    OUTLINED_FUNCTION_18_1();
    sub_1B251302C();
    OUTLINED_FUNCTION_1_35();
    OUTLINED_FUNCTION_24();
    sub_1B25142C4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v0[10];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_79_3();
      v17 = v24;
    }

    v18 = *(v17 + 16);
    if (v18 >= *(v17 + 24) >> 1)
    {
      OUTLINED_FUNCTION_77_5();
      v17 = v25;
    }

    OUTLINED_FUNCTION_41_9(v0[8]);
    *(v17 + 16) = v18 + 1;
    OUTLINED_FUNCTION_2_32();
    sub_1B251302C();
    v0[10] = v17;
    v19 = swift_task_alloc();
    v0[11] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E80);
    OUTLINED_FUNCTION_63_3();
    *v19 = v20;
    OUTLINED_FUNCTION_23_9();
    OUTLINED_FUNCTION_42_4();

    return MEMORY[0x1EEE6D9D0](v21, v22);
  }
}

uint64_t Product.SubscriptionInfo.Status.transaction.getter()
{
  v0 = OUTLINED_FUNCTION_25_13();
  v1 = type metadata accessor for Product.SubscriptionInfo.Status(v0);
  return OUTLINED_FUNCTION_76_4(&unk_1EB7D0DF0, *(v1 + 20));
}

uint64_t sub_1B2508EFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1B256D87C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1B2508FA8()
{
  v0 = sub_1B256EC4C();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

void sub_1B2508FFC(char a1)
{
  switch(a1)
  {
    case 1:
    case 7:
      OUTLINED_FUNCTION_75_0();
      break;
    case 3:
    case 4:
    case 5:
    case 8:
    case 9:
    case 11:
    case 18:
    case 19:
      OUTLINED_FUNCTION_113_2();
      break;
    case 10:
      OUTLINED_FUNCTION_60_5(5);
      break;
    case 15:
      OUTLINED_FUNCTION_60_5(11);
      break;
    default:
      return;
  }
}

uint64_t sub_1B2509254@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2508FA8();
  *a1 = result;
  return result;
}

void sub_1B2509284(void *a1@<X8>)
{
  sub_1B2508FFC(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t Product.SubscriptionInfo.RenewalInfo.PriceIncreaseStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](a1);
  return sub_1B256ED7C();
}

uint64_t sub_1B250939C()
{
  v1 = *v0;
  sub_1B256ED3C();
  Product.SubscriptionInfo.RenewalInfo.PriceIncreaseStatus.hash(into:)(v3, v1);
  return sub_1B256ED7C();
}

uint64_t Product.SubscriptionInfo.RenewalInfo.backing.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_1B24472B8(v2, v3, v4);
}

void Product.SubscriptionInfo.RenewalInfo.jsonRepresentation.getter()
{
  OUTLINED_FUNCTION_44_7();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_1();
    MEMORY[0x1B2749CC0](v1);
    OUTLINED_FUNCTION_8_15();

    OUTLINED_FUNCTION_22_1();
    sub_1B246314C();

    OUTLINED_FUNCTION_24();
    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!(!v2 & v0))
    {

      OUTLINED_FUNCTION_18_1();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void Product.SubscriptionInfo.RenewalInfo.expirationReason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
}

uint64_t Product.SubscriptionInfo.RenewalInfo.gracePeriodExpirationDate.getter()
{
  v0 = OUTLINED_FUNCTION_25_13();
  v1 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v0);
  return OUTLINED_FUNCTION_76_4(&qword_1EB7D0088, *(v1 + 52));
}

uint64_t Product.SubscriptionInfo.RenewalInfo.offer.getter()
{
  v2 = OUTLINED_FUNCTION_25_13();
  v3 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v2);
  v4 = OUTLINED_FUNCTION_311(v1 + *(v3 + 56));
  *v0 = v4;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v9;
  v0[6] = v10;

  return sub_1B24C421C(v4, v5);
}

uint64_t Product.SubscriptionInfo.RenewalInfo.offerID.getter()
{
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
  OUTLINED_FUNCTION_101_3();
  if (v1[1] != 1)
  {
    v0 = *v1;
  }

  return v0;
}

uint64_t Product.SubscriptionInfo.RenewalInfo.offerType.getter()
{
  v2 = OUTLINED_FUNCTION_25_13();
  result = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v2);
  v4 = 0;
  v5 = v1 + *(result + 56);
  v6 = *(v5 + 8);
  if (v6 != 1)
  {
    v4 = *(v5 + 16);
  }

  *v0 = v4;
  *(v0 + 8) = v6 == 1;
  return result;
}

uint64_t Product.SubscriptionInfo.RenewalInfo.offerPaymentModeStringRepresentation.getter()
{
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
  OUTLINED_FUNCTION_101_3();
  if (v1[1] != 1 && v1[4] != 0)
  {
    v0 = v1[3];
  }

  return v0;
}

uint64_t Product.SubscriptionInfo.RenewalInfo.offerPeriodStringRepresentation.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B2578530;
  *(inited + 32) = 0x726550726566666FLL;
  *(inited + 40) = 0xEB00000000646F69;
  v4 = OUTLINED_FUNCTION_275();
  sub_1B24472B8(v4, v5, v2);
  if (v2 != 5)
  {
    v18 = OUTLINED_FUNCTION_275();
    v20 = v2;
    goto LABEL_12;
  }

  if (!*(v1 + 16) || (, OUTLINED_FUNCTION_103_0(), v6 = sub_1B2455488(), v8 = v7, , (v8 & 1) == 0))
  {
    v18 = OUTLINED_FUNCTION_275();
    v20 = 5;
    goto LABEL_12;
  }

  v9 = *(v1 + 56) + 24 * v6;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = OUTLINED_FUNCTION_89();
  sub_1B24472B8(v13, v14, v12);
  v15 = OUTLINED_FUNCTION_275();
  sub_1B24472E0(v15, v16, 5);
  v17 = v12 == 6 && (v11 | v10) == 0;
  if (!v17 && v12)
  {
    v18 = OUTLINED_FUNCTION_89();
    v20 = v12;
LABEL_12:
    sub_1B24472E0(v18, v19, v20);
  }

  swift_setDeallocating();
  sub_1B24C3D7C();
  return OUTLINED_FUNCTION_89();
}

uint64_t Product.SubscriptionInfo.RenewalInfo.environment.getter()
{
  v2 = OUTLINED_FUNCTION_25_13();
  v3 = (v1 + *(type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v2) + 60));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t Product.SubscriptionInfo.RenewalInfo.environmentStringRepresentation.getter()
{
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);

  return OUTLINED_FUNCTION_22_1();
}

uint64_t sub_1B250986C()
{
  v0 = OUTLINED_FUNCTION_25_13();
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v0);
  sub_1B256D36C();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_6_14();

  return v2(v1);
}

uint64_t sub_1B25098D8()
{
  v0 = OUTLINED_FUNCTION_25_13();
  v1 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v0);
  return OUTLINED_FUNCTION_76_4(&qword_1EB7D0088, *(v1 + 68));
}

uint64_t sub_1B2509960()
{
  v0 = OUTLINED_FUNCTION_25_13();
  v1 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v0);
  return OUTLINED_FUNCTION_76_4(&unk_1EB7D1780, *(v1 + 76));
}

uint64_t Product.SubscriptionInfo.RenewalInfo.currencyCode.getter()
{
  v2 = OUTLINED_FUNCTION_41_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_5_5();
  v6 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v5);
  sub_1B24731D0(v0 + *(v6 + 76), v1, &unk_1EB7D1780);
  sub_1B256D45C();
  v7 = OUTLINED_FUNCTION_94_3();
  if (__swift_getEnumTagSinglePayload(v7, 1, &unk_1EB7D1780) == 1)
  {
    sub_1B243E88C(v1, &unk_1EB7D1780);
  }

  else
  {
    sub_1B256D43C();
    OUTLINED_FUNCTION_95_4();
    (*(qword_1EB7D1778 + 8))(v1, &unk_1EB7D1780);
  }

  return OUTLINED_FUNCTION_27_0();
}

uint64_t Product.SubscriptionInfo.RenewalInfo.eligibleWinBackOfferIDs.getter()
{
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
}

uint64_t Product.SubscriptionInfo.RenewalInfo.deviceVerification.getter()
{
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
  v0 = OUTLINED_FUNCTION_22_1();
  sub_1B244784C(v0, v1);
  return OUTLINED_FUNCTION_22_1();
}

uint64_t Product.SubscriptionInfo.RenewalInfo.deviceVerificationNonce.getter()
{
  v0 = OUTLINED_FUNCTION_25_13();
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v0);
  sub_1B256D3CC();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_6_14();

  return v2(v1);
}

uint64_t Product.SubscriptionInfo.RenewalInfo.signedDate.getter()
{
  v0 = OUTLINED_FUNCTION_25_13();
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v0);
  sub_1B256D36C();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_6_14();

  return v2(v1);
}

uint64_t Product.SubscriptionInfo.RenewalInfo.advancedCommerceInfo.getter()
{
  v2 = OUTLINED_FUNCTION_25_13();
  v3 = *(type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v2) + 96);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x68uLL);
  return sub_1B24731D0(__dst, &v5, &unk_1EB7D1870);
}

uint64_t sub_1B2509C64()
{
  v0 = OUTLINED_FUNCTION_25_13();
  v1 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v0);
  return OUTLINED_FUNCTION_76_4(&qword_1EB7D1770, *(v1 + 100));
}

uint64_t sub_1B2509CA4()
{
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);

  return OUTLINED_FUNCTION_22_1();
}

void sub_1B2509CE0(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v151 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v139 = &v135 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1780);
  OUTLINED_FUNCTION_2_2(v10);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v140 = &v135 - v12;
  v13 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_0_5();
  v141 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  *&v143 = &v135 - v20;
  sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  v145 = v22;
  v146 = v21;
  MEMORY[0x1EEE9AC00](v21);
  *(&v143 + 1) = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  v25 = OUTLINED_FUNCTION_2_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_0_5();
  v142 = v26 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v144 = (&v135 - v29);
  sub_1B256D75C();
  OUTLINED_FUNCTION_1_1();
  v148 = v31;
  v149 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v135 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&__dst[0] = 46;
  *(&__dst[0] + 1) = 0xE100000000000000;
  v153 = __dst;

  sub_1B24C3E54(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B248C788, v152, a1, a2, v34, v35, v135, v136, v137, v138, v139, v140, v141, v142, v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, a1, v151, v152[0], v152[1], v153, v154);
  v37 = v36;
  if (*(v36 + 16) == 3)
  {
    v137 = v13;
    v138 = v3;
    v147 = a2;
    v136 = v15;
    v38 = 0;
    v39 = (v36 + 56);
    v40 = 1;
    while (1)
    {
      if (v38 == 3)
      {
        if ((v40 & 1) == 0)
        {

          sub_1B24A231C();
          swift_allocError();
          *v57 = 7;
          goto LABEL_17;
        }

        if (v37[2] < 3uLL)
        {
          __break(1u);
          goto LABEL_44;
        }

        v47 = v37[12];
        v46 = v37[13];
        v48 = v37[14];
        v49 = v37[15];

        MEMORY[0x1B2749CC0](v47, v46, v48, v49);

        OUTLINED_FUNCTION_103_0();
        sub_1B246314C();

        sub_1B256D1AC();
        OUTLINED_FUNCTION_35_1();
        if (!v53 & v52)
        {
          __break(1u);
        }

        else
        {
          v54 = v50;
          v55 = v51;

          *&__dst[0] = v54;
          *(&__dst[0] + 1) = v55;
          sub_1B246352C();
          v56 = v138;
          sub_1B256D74C();
          if (v56)
          {

            return;
          }

          (*(v148 + 8))(v33, v149);
          v58 = v151;
          v59 = v147;
          *v151 = v150;
          *(v58 + 8) = v59;
          *(v58 + 16) = v37;
          sub_1B256CE7C();
          swift_allocObject();

          sub_1B256CE6C();
          if (v37[2] < 2uLL)
          {
            __break(1u);
            goto LABEL_47;
          }

          v60 = OUTLINED_FUNCTION_89();
          MEMORY[0x1B2749CC0](v60);

          OUTLINED_FUNCTION_89();
          sub_1B246314C();

          sub_1B256D1AC();
          OUTLINED_FUNCTION_35_1();
          if (!(!v53 & v52))
          {
            v63 = v61;
            v33 = v62;

            sub_1B244A000();
            sub_1B256CE5C();
            sub_1B2443AD0(v63, v33);

            a2 = *(&__dst[0] + 1);
            v4 = *&__dst[0];
            v13 = LOBYTE(__dst[1]);
            a1 = v151;
            *(v151 + 24) = __dst[0];
            *(a1 + 40) = v13;
            OUTLINED_FUNCTION_10_19();
            v3 = 0;
            sub_1B24B4020();
            LODWORD(v33) = v147;
            *(a1 + 48) = v64;
            OUTLINED_FUNCTION_6_22();
            sub_1B24B43B8();
            *(a1 + 56) = v73;
            *(a1 + 64) = v74;
            OUTLINED_FUNCTION_6_22();
            LOBYTE(v36) = sub_1B24B47C0();
            goto LABEL_37;
          }
        }

        __break(1u);
        return;
      }

      if (v38 >= v37[2])
      {
        break;
      }

      if ((v40 & 1) != 0 && (v3 = *(v39 - 1), a2 = *v39, v42 = *(v39 - 3), v41 = *(v39 - 2), , MEMORY[0x1B2749CC0](v42, v41, v3, a2), sub_1B246314C(), v13 = v43, , OUTLINED_FUNCTION_96_5(), v4 = sub_1B256D1AC(), a1 = v44, , LOBYTE(v36) = , a1 >> 60 != 15))
      {
        LOBYTE(v36) = sub_1B2443AD0(v4, a1);
        v40 = 1;
      }

      else
      {
        v40 = 0;
      }

      v39 += 8;
      ++v38;
    }

    __break(1u);
LABEL_37:
    *(a1 + 72) = v36 & 1;
    OUTLINED_FUNCTION_6_22();
    sub_1B24B43B8();
    if (v3)
    {

      v75 = 0;
      v76 = 0;
    }

    *(a1 + 80) = v75;
    *(a1 + 88) = v76;
    OUTLINED_FUNCTION_10_19();
    if (sub_1B24B47C0())
    {
      v77 = 2;
    }

    else
    {
      v77 = 1;
    }

    *(a1 + 105) = v77;
    OUTLINED_FUNCTION_10_19();
    *(a1 + 106) = sub_1B24B47C0() & 1;
    v150 = a2;
    sub_1B24B67AC();
    v78 = v144;
    sub_1B256D31C();
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v137);
    v149 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
    sub_1B25141EC(v78, a1 + v149[13], &qword_1EB7D0088);
    v3 = 0;
    sub_1B24B4B70(&unk_1F29B0E80, v4, v150, v13, v79, v80, v81, v82, v135);
    *(a1 + v149[21]) = __dst[0];
    v83 = *(&v143 + 1);
    OUTLINED_FUNCTION_6_22();
    sub_1B24B4F84();
    (*(v145 + 4))(a1 + v149[22], v83, v146);
    OUTLINED_FUNCTION_6_22();
    sub_1B24B67AC();
    v84 = v143;
    sub_1B256D31C();
    v85 = *(v136 + 32);
    v86 = a1 + v149[23];
    v148 = v136 + 32;
    v144 = v85;
    (v85)(v86, v84, v137);
    OUTLINED_FUNCTION_6_22();
    sub_1B24B5414(v87, v88, v89, v90, v91, v92, v93, v94, v135, v136, v137, v138, v139, v140, v141, v142, v143, *(&v143 + 1), v144, v145, v146, v147);
LABEL_44:
    v95 = *(&__dst[0] + 1);
    v39 = v149;
    v96 = (a1 + v149[15]);
    *v96 = *&__dst[0];
    v96[1] = v95;
    OUTLINED_FUNCTION_6_22();
    sub_1B24B67AC();
    if (v3)
    {

      LODWORD(v148) = 0;
      OUTLINED_FUNCTION_5_27();
      LODWORD(v147) = 1;
      sub_1B24472E0(*(v151 + 24), *(v151 + 32), *(v151 + 40));
      if (v33)
      {
      }

      v65 = v151;
      if (v37)
      {

        v66 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
        sub_1B243E88C(v65 + *(v66 + 52), &qword_1EB7D0088);
      }

      type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);

      v67 = v137;
      if (v148)
      {
        type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
      }

      v72 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
      sub_1B2443AE4(*(v65 + *(v72 + 84)), *(v65 + *(v72 + 84) + 8));
      v68 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
      (*(v145 + 1))(v65 + *(v68 + 88), v146);
      if (v147)
      {
        v69 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
        (*(v136 + 8))(v65 + *(v69 + 92), v67);
      }

      if (v149)
      {
        v70 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
        memcpy(__dst, (v65 + *(v70 + 96)), 0x68uLL);
        sub_1B243E88C(__dst, &unk_1EB7D1870);
      }

      if (v150)
      {
        v71 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
        sub_1B243E88C(v65 + *(v71 + 100), &qword_1EB7D1770);
      }

      return;
    }

LABEL_47:
    v97 = v141;
    sub_1B256D31C();
    (v144)(v151 + v39[16], v97, v137);
    OUTLINED_FUNCTION_6_22();
    sub_1B24B67AC();
    sub_1B256D31C();
    v98 = v142;
    __swift_storeEnumTagSinglePayload(v142, 0, 1, v137);
    v99 = v151;
    sub_1B25141EC(v98, v151 + MEMORY[0x44], &qword_1EB7D0088);
    v100 = *(v99 + 32);
    v101 = *(v99 + 40);
    v156[0] = *(v99 + 24);
    v156[1] = v100;
    v157 = v101;
    sub_1B24472B8(v156[0], v100, v101);
    sub_1B24BB794(v156, v102, v103, v104, v105, v106, v107, v108, v135, v136, v137, v138, v139, v140, v141, v142, v143);
    v109 = *&__dst[3];
    v110 = v151 + v39[14];
    v111 = __dst[1];
    *v110 = __dst[0];
    *(v110 + 16) = v111;
    *(v110 + 32) = __dst[2];
    *(v110 + 48) = v109;
    OUTLINED_FUNCTION_29_10();
    v112 = sub_1B24B57F8();
    v113 = v151;
    *(v151 + 96) = v112;
    *(v113 + 104) = 0;
    sub_1B24B581C(__dst);
    MEMORY[0x1B274A4D0](1000);
    v114 = sub_1B256E26C();
    v115 = v151 + v39[18];
    *v115 = v114;
    *(v115 + 8) = v116;
    *(v115 + 16) = v117;
    *(v115 + 20) = 0;
    OUTLINED_FUNCTION_92_2();
    sub_1B24B5BDC();
    v118 = sub_1B256D45C();
    v119 = v140;
    __swift_storeEnumTagSinglePayload(v140, 0, 1, v118);
    sub_1B25141EC(v119, v151 + v39[19], &unk_1EB7D1780);
    OUTLINED_FUNCTION_92_2();
    v128 = sub_1B2507CCC(v120, v121, v122, v123, v124, v125, v126, v127);
    v129 = MEMORY[0x1E69E7CC0];
    if (v128)
    {
      v129 = v128;
    }

    *(v151 + v39[20]) = v129;
    OUTLINED_FUNCTION_29_10();
    sub_1B24B605C(v130);
    memcpy((v151 + v39[24]), v155, 0x68uLL);
    OUTLINED_FUNCTION_29_10();
    sub_1B2507B6C(v131);
    sub_1B25141EC(v139, v151 + v39[25], &qword_1EB7D1770);
    OUTLINED_FUNCTION_29_10();
    sub_1B24B43B8();
    v132 = (v151 + v39[26]);
    *v132 = v133;
    v132[1] = v134;
  }

  else
  {

    sub_1B24A231C();
    swift_allocError();
    *v45 = 0;
LABEL_17:
    swift_willThrow();
  }
}

void sub_1B250AE50(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_75_0();
      break;
    case 2:
      return;
    case 3:
      OUTLINED_FUNCTION_60_5(5);
      break;
    case 4:
      OUTLINED_FUNCTION_113_2();
      break;
    default:
      OUTLINED_FUNCTION_60_5(11);
      break;
  }
}

uint64_t Product.SubscriptionInfo.Status.renewalInfo.getter()
{
  v0 = OUTLINED_FUNCTION_25_13();
  v1 = type metadata accessor for Product.SubscriptionInfo.Status(v0);
  return OUTLINED_FUNCTION_76_4(&qword_1EB7D0A88, *(v1 + 24));
}

uint64_t static Product.SubscriptionInfo.Status.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_62_4();
  v5 = type metadata accessor for Product.SubscriptionInfo.Status(v4);
  if ((sub_1B2507DBC(v3 + *(v5 + 20), v2 + *(v5 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);

  return sub_1B25083BC(v3 + v6, v2 + v6);
}

void Product.SubscriptionInfo.Status.hash(into:)()
{
  v2 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
  v3 = OUTLINED_FUNCTION_2_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_0_5();
  v44 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v43 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0A88);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_5_5();
  v10 = type metadata accessor for Transaction(v9);
  v11 = OUTLINED_FUNCTION_2_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_0_5();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  MEMORY[0x1B274AFC0](*v0);
  v21 = type metadata accessor for Product.SubscriptionInfo.Status(0);
  sub_1B24731D0(v0 + *(v21 + 20), v20, &unk_1EB7D0DF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_28_10();
    sub_1B251302C();
    MEMORY[0x1B274AFC0](1);
    OUTLINED_FUNCTION_44_7();
    if (!v22)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v23 = OUTLINED_FUNCTION_41_1();
    MEMORY[0x1B2749CC0](v23);

    OUTLINED_FUNCTION_41_1();
    sub_1B246314C();

    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!v26 & v22)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v27 = v24;
    v28 = v25;

    OUTLINED_FUNCTION_18_1();
    sub_1B256D23C();
    sub_1B2443AD0(v27, v28);
    v17 = v14;
  }

  else
  {
    v29 = v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B8) + 48)];
    OUTLINED_FUNCTION_28_10();
    sub_1B251302C();
    MEMORY[0x1B274AFC0](0);
    OUTLINED_FUNCTION_44_7();
    if (!v22)
    {
      goto LABEL_20;
    }

    v43 = v29;

    v30 = OUTLINED_FUNCTION_41_1();
    MEMORY[0x1B2749CC0](v30);

    OUTLINED_FUNCTION_41_1();
    sub_1B246314C();

    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!v26 & v22)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v33 = v31;
    v34 = v32;

    OUTLINED_FUNCTION_18_1();
    sub_1B256D23C();
    sub_1B2443AD0(v33, v34);
    MEMORY[0x1B274AFC0](v43);
  }

  sub_1B2512F84(v17, type metadata accessor for Transaction);
  sub_1B24731D0(v0 + *(v21 + 24), v1, &qword_1EB7D0A88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_27_10();
    v35 = v44;
    sub_1B251302C();
    MEMORY[0x1B274AFC0](1);
    OUTLINED_FUNCTION_44_7();
    if (!v22)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_91_3();
    MEMORY[0x1B2749CC0]();

    OUTLINED_FUNCTION_41_1();
    sub_1B246314C();

    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!v26 & v22)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_95_4();

    OUTLINED_FUNCTION_18_1();
    sub_1B256D23C();
    v36 = OUTLINED_FUNCTION_27_0();
    sub_1B2443AD0(v36, v37);
LABEL_19:
    sub_1B2512F84(v35, type metadata accessor for Product.SubscriptionInfo.RenewalInfo);
    return;
  }

  v38 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D20F0) + 48));
  OUTLINED_FUNCTION_27_10();
  v35 = v45;
  sub_1B251302C();
  MEMORY[0x1B274AFC0](0);
  OUTLINED_FUNCTION_44_7();
  if (!v22)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_54_6();
  MEMORY[0x1B2749CC0]();

  sub_1B246314C();

  sub_1B256D1AC();
  OUTLINED_FUNCTION_35_1();
  if (!(!v26 & v22))
  {
    v41 = v39;
    v42 = v40;

    OUTLINED_FUNCTION_103_0();
    sub_1B256D23C();
    sub_1B2443AD0(v41, v42);
    MEMORY[0x1B274AFC0](v38);
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
}

uint64_t Product.SubscriptionInfo.Status.hashValue.getter()
{
  sub_1B256ED3C();
  Product.SubscriptionInfo.Status.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t sub_1B250B558()
{
  sub_1B256ED3C();
  Product.SubscriptionInfo.Status.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t sub_1B250B5AC()
{
  OUTLINED_FUNCTION_21_5();
  v0[3] = *(v0[2] + 136);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1B250B65C;

  return static Product.SubscriptionInfo.status(for:)();
}

uint64_t sub_1B250B65C()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_3_10();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B250B7A0, 0, 0);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9(v3);
  }
}

uint64_t sub_1B250B7A0()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t static Product.SubscriptionInfo.status(transactionID:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for Product.SubscriptionInfo.Status(0);
  v0[4] = v3;
  OUTLINED_FUNCTION_2_2(v3);
  v0[5] = OUTLINED_FUNCTION_250();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2368);
  OUTLINED_FUNCTION_2_2(v4);
  v0[6] = OUTLINED_FUNCTION_250();
  v5 = type metadata accessor for Product.SubscriptionInfo.Status.Statuses.AsyncIterator(0);
  OUTLINED_FUNCTION_2_2(v5);
  v0[7] = OUTLINED_FUNCTION_250();
  v6 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B250B8C4()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B250DDD8(v0[3], 0, 1, v0[7]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E80);
  OUTLINED_FUNCTION_63_3();
  *v1 = v3;
  v1[1] = sub_1B250B97C;
  v4 = v0[6];

  return MEMORY[0x1EEE6D9D0](v4, v2);
}

uint64_t sub_1B250B97C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B250BA60()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0[6], 1, v0[4]);
  v2 = v0[7];
  if (EnumTagSinglePayload == 1)
  {
    sub_1B2512F84(v0[7], type metadata accessor for Product.SubscriptionInfo.Status.Statuses.AsyncIterator);
    v3 = 1;
  }

  else
  {
    sub_1B251302C();
    OUTLINED_FUNCTION_34_8();
    sub_1B2512F84(v2, v4);
    sub_1B251302C();
    v3 = 0;
  }

  __swift_storeEnumTagSinglePayload(v0[2], v3, 1, v0[4]);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_42_4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1B250BB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return OUTLINED_FUNCTION_3_11(sub_1B250BB94);
}

uint64_t sub_1B250BB94()
{
  sub_1B247A514(*(v1 + 64), (v1 + 16));
  if (*(v1 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0AC0);
    if (swift_dynamicCast())
    {
      v3 = *(v1 + 72);
      v2 = *(v1 + 80);
      v4 = *(v1 + 48);
      *(v1 + 88) = v4;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2368);
      v6 = swift_task_alloc();
      *(v1 + 96) = v6;
      v6[2] = v4;
      v6[3] = v3;
      v6[4] = v2;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2460);
      swift_task_alloc();
      OUTLINED_FUNCTION_8_2();
      *(v1 + 104) = v8;
      *v8 = v9;
      v8[1] = sub_1B250BEB4;

      return MEMORY[0x1EEE6DBF8](v1 + 56, v5, v7, 0, 0, &unk_1B2584418, v6, v5);
    }
  }

  else
  {
    sub_1B243E88C(v1 + 16, &qword_1EB7D05F0);
  }

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v10 = *(v1 + 80);
  v11 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v11, qword_1ED69A108);
  v12 = sub_1B256E09C();

  sub_1B256D5CC();
  OUTLINED_FUNCTION_94_3();

  if (os_log_type_enabled(v0, v12))
  {
    v14 = *(v1 + 72);
    v13 = *(v1 + 80);
    OUTLINED_FUNCTION_21_3();
    v25 = OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_65_2(4.8752e-34);
    v22 = v15;
    v23 = v16;
    MEMORY[0x1B2749D50](v14, v13);
    OUTLINED_FUNCTION_94_0();
    sub_1B2519814(v22, v23, &v25);

    OUTLINED_FUNCTION_64_3();
    *(v10 + 14) = sub_1B2519814(0xD00000000000002FLL, 0x80000001B2591450, &v25);
    OUTLINED_FUNCTION_52_3(&dword_1B23EF000, v17, v18, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  OUTLINED_FUNCTION_141();
  v20 = MEMORY[0x1E69E7CC0];

  return v19(v20);
}

uint64_t sub_1B250BEB4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B250BFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2368);
  v5[35] = swift_task_alloc();
  v6 = type metadata accessor for Product.SubscriptionInfo.Status(0);
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2468);
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2470);
  v5[43] = v8;
  v5[44] = *(v8 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B250C224, 0, 0);
}

uint64_t sub_1B250C224()
{
  v67 = v0;
  v1 = v0;
  v2 = v0[29];
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_34:
    v1[25] = *v1[28];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2478);
    sub_1B248D0F8(&qword_1EB7D2480, &qword_1EB7D2478);
    sub_1B256EA9C();
    v48 = OUTLINED_FUNCTION_103_0();
    v49(v48);
    sub_1B248D0F8(&qword_1EB7D2488, &qword_1EB7D2470);
    sub_1B256DECC();
    v1[47] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_47_6(&qword_1EB7D2490, &qword_1EB7D2468);
    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    v1[48] = v50;
    *v50 = v51;
    v52 = OUTLINED_FUNCTION_21_13(v50);

    return MEMORY[0x1EEE6D8C8](v52, v53, v54);
  }

  v4 = (v2 + 32);
  v62 = v0 + 14;
  v5 = 0x1ED699000uLL;
  v63 = v0;
  while (1)
  {
    v6 = *v4;
    if (!*(*v4 + 16))
    {
      goto LABEL_16;
    }

    v7 = sub_1B2455488();
    if ((v8 & 1) == 0 || (sub_1B2456DAC(*(v6 + 56) + 32 * v7, (v1 + 2)), (swift_dynamicCast() & 1) == 0) || !*(v6 + 16) || (v9 = v1[26], v10 = sub_1B2455488(), (v11 & 1) == 0) || (sub_1B2456DAC(*(v6 + 56) + 32 * v10, (v1 + 6)), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_16;
    }

    v12 = v1;
    v13 = v1[22];
    if (!*(v6 + 16) || (v14 = v12[21], v15 = sub_1B2455488(), (v16 & 1) == 0))
    {

LABEL_24:

      v1 = v12;
LABEL_16:
      if (*(v5 + 3712) != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v30, qword_1ED69A108);
      v31 = sub_1B256E0CC();

      v32 = sub_1B256D5CC();

      if (os_log_type_enabled(v32, v31))
      {
        v33 = v4;
        v34 = v3;
        v35 = v5;
        v37 = v1[30];
        v36 = v1[31];
        v38 = OUTLINED_FUNCTION_21_3();
        v64 = swift_slowAlloc();
        *v38 = 136446466;
        v65 = 91;
        v66 = 0xE100000000000000;
        v39 = v37;
        v5 = v35;
        v3 = v34;
        v4 = v33;
        MEMORY[0x1B2749D50](v39, v36);
        OUTLINED_FUNCTION_94_0();
        v40 = sub_1B2519814(v65, v66, &v64);

        *(v38 + 4) = v40;
        *(v38 + 12) = 2082;
        *(v38 + 14) = sub_1B2519814(0xD000000000000037, 0x80000001B2591480, &v64);
        _os_log_impl(&dword_1B23EF000, v32, v31, "%{public}s%{public}s", v38, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11_4();
        v1 = v63;
        OUTLINED_FUNCTION_11_4();
      }

      goto LABEL_21;
    }

    sub_1B2456DAC(*(v6 + 56) + 32 * v15, (v12 + 10));

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

    v60 = v12[28];
    v61 = v12[31];
    v58 = v12[23];
    v59 = v12[30];
    v57 = v12[24];
    v17 = sub_1B256DDAC();
    v18 = OUTLINED_FUNCTION_59_1();
    __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v14;
    v20[5] = v13;
    v20[6] = v58;
    v20[7] = v57;
    v20[8] = v9;
    v20[9] = v59;
    v20[10] = v61;
    v21 = *v60;

    v22 = swift_taskGroup_addPending();
    v23 = v12[33];
    if ((v22 & 1) == 0)
    {
      break;
    }

    sub_1B24731D0(v23, v12[32], &qword_1EB7D1910);
    v24 = OUTLINED_FUNCTION_59_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, v25, v17);
    v27 = v12[32];
    if (EnumTagSinglePayload == 1)
    {
      v28 = OUTLINED_FUNCTION_18_1();
      sub_1B243E88C(v28, v29);
    }

    else
    {
      sub_1B256DD9C();
      (*(*(v17 - 8) + 8))(v27, v17);
    }

    if (v20[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v41 = sub_1B256DCEC();
      v43 = v42;
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v5 = 0x1ED699000;
    OUTLINED_FUNCTION_43_0();
    v44 = swift_allocObject();
    *(v44 + 16) = &unk_1B2584450;
    *(v44 + 24) = v20;

    if (v43 | v41)
    {
      v45 = v62;
      *v62 = 0;
      v62[1] = 0;
      v46 = v63;
      v63[16] = v41;
      v63[17] = v43;
    }

    else
    {
      v45 = 0;
      v46 = v63;
    }

    v47 = v46[33];
    v46[18] = 1;
    v46[19] = v45;
    v46[20] = v21;
    swift_task_create();

    sub_1B243E88C(v47, &qword_1EB7D1910);
    v1 = v46;
LABEL_21:
    ++v4;
    if (!--v3)
    {
      goto LABEL_34;
    }
  }

  sub_1B243E88C(v23, &qword_1EB7D1910);

  OUTLINED_FUNCTION_100_3();
  *v12[27] = MEMORY[0x1E69E7CC0];

  OUTLINED_FUNCTION_7_2();

  return v55();
}

uint64_t sub_1B250C9F8()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_3_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;

  if (v0)
  {
    v8 = v3[41];
    v7 = v3[42];
    v9 = v3[40];

    (*(v8 + 8))(v7, v9);
  }

  OUTLINED_FUNCTION_42_4();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B250CB30()
{
  v1 = *(v0 + 280);
  v2 = OUTLINED_FUNCTION_59_1();
  if (__swift_getEnumTagSinglePayload(v2, v3, v4) == 1)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    v5 = OUTLINED_FUNCTION_41_1();
    v6(v5);
    sub_1B243E88C(v1, &qword_1EB7D2368);
    OUTLINED_FUNCTION_100_3();
    **(v0 + 216) = v7;

    OUTLINED_FUNCTION_7_2();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_2_32();
    OUTLINED_FUNCTION_18_1();
    sub_1B251302C();
    OUTLINED_FUNCTION_1_35();
    sub_1B25142C4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v0 + 376);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_79_3();
      v11 = v18;
    }

    v12 = *(v11 + 16);
    if (v12 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_77_5();
      v11 = v19;
    }

    OUTLINED_FUNCTION_41_9(*(v0 + 312));
    *(v11 + 16) = v12 + 1;
    OUTLINED_FUNCTION_2_32();
    sub_1B251302C();
    *(v0 + 376) = v11;
    OUTLINED_FUNCTION_47_6(&qword_1EB7D2490, &qword_1EB7D2468);
    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    *(v0 + 384) = v13;
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_21_13();

    return MEMORY[0x1EEE6D8C8](v15, v16, v17);
  }
}

uint64_t sub_1B250CD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[209] = v12;
  v8[203] = v11;
  v8[197] = a8;
  v8[191] = a7;
  v8[185] = a6;
  v8[179] = a5;
  v8[173] = a4;
  v8[167] = a1;
  v8[210] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  v8[211] = swift_task_alloc();
  v8[212] = swift_task_alloc();
  v8[213] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0A88);
  v8[214] = swift_task_alloc();
  v8[215] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B250CE70, 0, 0);
}

uint64_t sub_1B250CE70()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_126();
  v1 = v0[191];
  v2 = v0[185];
  v3 = v0[179];
  v4 = v0[173];
  OUTLINED_FUNCTION_43_0();
  v5 = swift_allocObject();
  v0[216] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  swift_asyncLet_begin();
  OUTLINED_FUNCTION_43_0();
  v6 = swift_allocObject();
  v0[217] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;

  swift_asyncLet_begin();
  OUTLINED_FUNCTION_115();

  return MEMORY[0x1EEE6DEC0](v7, v8, v9, v10);
}

uint64_t sub_1B250CF98()
{
  OUTLINED_FUNCTION_4_0();
  v1[218] = v0;
  if (v0)
  {
    v2 = v1[212];

    return MEMORY[0x1EEE6DEB0](v1 + 82, v2, sub_1B250D2B4, v1 + 168);
  }

  else
  {
    sub_1B24731D0(v1[215], v1[214], &qword_1EB7D0A88);
    v3 = v1[212];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v3, sub_1B250D058, v1 + 180);
  }
}

uint64_t sub_1B250D058()
{
  OUTLINED_FUNCTION_4_0();
  *(v1 + 1752) = v0;
  if (v0)
  {
    sub_1B243E88C(*(v1 + 1712), &qword_1EB7D0A88);
    v2 = sub_1B250D554;
  }

  else
  {
    v2 = sub_1B250D0E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B250D0E4()
{
  v1 = v0[214];
  v2 = v0[197];
  v3 = v0[167];
  OUTLINED_FUNCTION_54_6();
  sub_1B24731D0(v4, v5, v6);
  v7 = type metadata accessor for Product.SubscriptionInfo.Status(0);
  sub_1B25141EC(v1, v3 + *(v7 + 24), &qword_1EB7D0A88);
  *v3 = v2;
  OUTLINED_FUNCTION_54_6();
  sub_1B25141EC(v8, v9, v10);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
  v11 = v0[212];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v11, sub_1B250D1E8, v0 + 198);
}

uint64_t sub_1B250D230()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_26_10();

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_42_4();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1B250D2FC()
{
  v22 = v0;
  v1 = *(v0 + 1744);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  OUTLINED_FUNCTION_80_4();

  v3 = OUTLINED_FUNCTION_66_3();
  v4 = [v3 description];
  v5 = sub_1B256D9BC();
  v7 = v6;

  MEMORY[0x1B2749D50](v5, v7);

  LOBYTE(v5) = sub_1B256E0AC();

  v8 = sub_1B256D5CC();

  if (os_log_type_enabled(v8, v5))
  {
    v9 = OUTLINED_FUNCTION_78_3();
    swift_slowAlloc();
    OUTLINED_FUNCTION_51_4(4.8752e-34);
    OUTLINED_FUNCTION_94_0();
    sub_1B2519814(v21[1], v21[2], v21);

    v12 = OUTLINED_FUNCTION_67_3(v10, v11);

    *(v9 + 14) = v12;
    OUTLINED_FUNCTION_10_4(&dword_1B23EF000, v13, v14, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  type metadata accessor for Product.SubscriptionInfo.Status(0);
  v15 = OUTLINED_FUNCTION_59_1();
  __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  OUTLINED_FUNCTION_26_10();

  OUTLINED_FUNCTION_7_2();

  return v18();
}

uint64_t sub_1B250D5BC()
{
  v22 = v0;
  v1 = *(v0 + 1752);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  OUTLINED_FUNCTION_80_4();

  v3 = OUTLINED_FUNCTION_66_3();
  v4 = [v3 description];
  v5 = sub_1B256D9BC();
  v7 = v6;

  MEMORY[0x1B2749D50](v5, v7);

  LOBYTE(v5) = sub_1B256E0AC();

  v8 = sub_1B256D5CC();

  if (os_log_type_enabled(v8, v5))
  {
    v9 = OUTLINED_FUNCTION_78_3();
    swift_slowAlloc();
    OUTLINED_FUNCTION_51_4(4.8752e-34);
    OUTLINED_FUNCTION_94_0();
    sub_1B2519814(v21[1], v21[2], v21);

    v12 = OUTLINED_FUNCTION_67_3(v10, v11);

    *(v9 + 14) = v12;
    OUTLINED_FUNCTION_10_4(&dword_1B23EF000, v13, v14, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  type metadata accessor for Product.SubscriptionInfo.Status(0);
  v15 = OUTLINED_FUNCTION_59_1();
  __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  OUTLINED_FUNCTION_26_10();

  OUTLINED_FUNCTION_7_2();

  return v18();
}

uint64_t sub_1B250D814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B250D8A8, 0, 0);
}

uint64_t sub_1B250D8A8()
{
  OUTLINED_FUNCTION_24_5();

  v1 = OUTLINED_FUNCTION_24();
  sub_1B2509CE0(v1, v2, v3);
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 48) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_69_2(v4);

  return v7(v6);
}

uint64_t sub_1B250D994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for Transaction(0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B250DA28, 0, 0);
}

uint64_t sub_1B250DA28()
{
  OUTLINED_FUNCTION_24_5();

  v1 = OUTLINED_FUNCTION_24();
  Transaction.init(receipt:)(v1, v2, v3);
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 48) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_69_2(v4);

  return v7(v6);
}

uint64_t sub_1B250DB14()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B250DC14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B250DC34, 0, 0);
}

uint64_t sub_1B250DC34()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B24731D0(*(v0 + 24), *(v0 + 16), &qword_1EB7D2368);
  OUTLINED_FUNCTION_7_2();

  return v1();
}

unint64_t sub_1B250DC9C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1B256E4FC();

    v7 = 0xD000000000000016;
    MEMORY[0x1B2749D50](a1, a2);
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_1B256E4FC();

    v7 = 0xD00000000000001CLL;
    v4 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v4);

LABEL_5:
    MEMORY[0x1B2749D50](41, 0xE100000000000000);
    return v7;
  }

  return 0xD000000000000015;
}

uint64_t sub_1B250DDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v24 = a1;
  v25 = a2;
  v29 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24C0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24C8);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  type metadata accessor for Product.SubscriptionInfo.Status(0);
  v28 = v14;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8650], v5);
  v16 = type metadata accessor for Product.SubscriptionInfo.Status.Statuses.AsyncIterator(0);
  sub_1B256DE5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D23F0);
  sub_1B256DE1C();
  sub_1B24731D0(v14, v12, &qword_1EB7D24C0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v15) == 1)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24D0);
  swift_allocObject();
  v17 = sub_1B25103C0(v12);
  *(a4 + *(v16 + 20)) = v17;
  v18 = qword_1EB7CFC68;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = _os_activity_create(&dword_1B23EF000, "StoreKit/SubscriptionStatusQuery", qword_1EB7EDFB8, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v19, &state);
  v21 = v24;
  v20 = v25;
  v22 = v26;
  sub_1B250E1D8(v24, v25, v26, v17, a4, v14);
  os_activity_scope_leave(&state);
  swift_unknownObjectRelease();
  sub_1B25142B0(v21, v20, v22);

  return sub_1B243E88C(v14, &qword_1EB7D24C0);
}

uint64_t sub_1B250E13C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  sub_1B243E88C(a2, a3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_7_0();
  v8 = OUTLINED_FUNCTION_27_0();
  v9(v8);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v7);
}

void sub_1B250E1D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a4;
  v53 = a6;
  v51 = a5;
  v9 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v9);
  v50 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24C8);
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = v47 - v11;
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v9, qword_1ED69A108);
  aBlock = 0;
  v56 = 0xE000000000000000;
  sub_1B256E4FC();

  aBlock = 0xD00000000000002ELL;
  v56 = 0x80000001B25914F0;
  v61 = a1;
  v13 = a2;
  v14 = sub_1B250DC9C(a1, a2, a3);
  MEMORY[0x1B2749D50](v14);

  MEMORY[0x1B2749D50](46, 0xE100000000000000);
  v15 = aBlock;
  v16 = v56;
  v17 = sub_1B256E0CC();

  v47[1] = v12;
  v18 = sub_1B256D5CC();

  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1B2519814(0, 0xE000000000000000, &aBlock);
    *(v19 + 12) = 2082;
    v21 = sub_1B2519814(v15, v16, &aBlock);

    *(v19 + 14) = v21;
    _os_log_impl(&dword_1B23EF000, v18, v17, "%{public}s%{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v20, -1, -1);
    MEMORY[0x1B274BFF0](v19, -1, -1);
  }

  else
  {
  }

  v22 = v61;
  if (a3 != 2 || v13 | v61)
  {
    v27 = v54;
    v28 = sub_1B250E94C(v61, v13, a3, v54);
    if (v28)
    {
      v29 = v28;
      if (a3)
      {
        if (a3 != 1)
        {
          swift_unknownObjectRelease();
          return;
        }

        aBlock = v22;
        sub_1B256EAAC();
        v30 = sub_1B256D98C();

        v31 = swift_allocObject();
        *(v31 + 16) = v22;
        *(v31 + 24) = v27;
        v59 = sub_1B2514318;
        v60 = v31;
        aBlock = MEMORY[0x1E69E9820];
        v56 = 1107296256;
        v57 = sub_1B2508EFC;
        v58 = &block_descriptor_126_0;
        v32 = _Block_copy(&aBlock);

        [v29 statusForClient:0 transactionID:v30 skipStatusSync:0 reply:v32];
        _Block_release(v32);
        swift_unknownObjectRelease();
      }

      else
      {

        v30 = sub_1B256D98C();
        v45 = swift_allocObject();
        v45[2] = v22;
        v45[3] = v13;
        v45[4] = v27;
        v59 = sub_1B2514320;
        v60 = v45;
        aBlock = MEMORY[0x1E69E9820];
        v56 = 1107296256;
        v57 = sub_1B2508EFC;
        v58 = &block_descriptor_132_0;
        v46 = _Block_copy(&aBlock);

        [v29 statusForClient:0 subscriptionGroupID:v30 skipStatusSync:0 reply:v46];
        swift_unknownObjectRelease();
        _Block_release(v46);
      }

      return;
    }

    v33 = v50;
    sub_1B25142C4();
    sub_1B2513080(v22, v13, a3);
    v34 = sub_1B256D5CC();
    v35 = sub_1B256D5EC();
    (*(*(v35 - 8) + 8))(v33, v35);
    v36 = sub_1B256E0AC();
    sub_1B25142B0(v22, v13, a3);
    if (os_log_type_enabled(v34, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136446210;
      v39 = sub_1B250DC9C(v22, v13, a3);
      v41 = sub_1B2519814(v39, v40, &aBlock);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1B23EF000, v34, v36, "Failed to get XPC remote object to enumerate statuses for %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1B274BFF0](v38, -1, -1);
      MEMORY[0x1B274BFF0](v37, -1, -1);
    }

    sub_1B2512D1C(0);
  }

  else
  {
    v23 = type metadata accessor for Product.SubscriptionInfo.Status.Statuses.AsyncIterator(0);
    v24 = v52;
    v25 = *(v51 + *(v23 + 20));
    v26 = v53;
    if (__swift_getEnumTagSinglePayload(v53, 1, v52))
    {
    }

    else
    {
      v43 = v48;
      v42 = v49;
      (*(v49 + 16))(v48, v26, v24);
      swift_retain_n();
      sub_1B256DDBC();
      (*(v42 + 8))(v43, v24);
    }

    v44 = [objc_opt_self() defaultBroker];
    [v44 registerSubscriptionStatusListener_];
  }
}

id sub_1B250E94C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = [objc_opt_self() defaultBroker];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  v13[4] = sub_1B2514334;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B244BD28;
  v13[3] = &block_descriptor_138_0;
  v10 = _Block_copy(v13);
  sub_1B2513080(a1, a2, a3);

  v11 = [v8 storeKitServiceWithErrorHandler_];
  _Block_release(v10);

  return v11;
}

uint64_t sub_1B250EA94(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_1ED69A108);
  sub_1B25142C4();
  sub_1B2513080(a2, a3, a4);
  v11 = a1;
  v12 = sub_1B256D5CC();
  v13 = sub_1B256D5EC();
  (*(*(v13 - 8) + 8))(v10, v13);
  v14 = sub_1B256E0AC();
  sub_1B25142B0(a2, a3, a4);

  if (os_log_type_enabled(v12, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v15 = 136446466;
    v18 = sub_1B250DC9C(a2, a3, a4);
    v20 = sub_1B2519814(v18, v19, &v24);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2114;
    v21 = sub_1B256D0CC();
    *(v15 + 14) = v21;
    *v16 = v21;
    _os_log_impl(&dword_1B23EF000, v12, v14, "Failed in XPC to get status for %{public}s: %{public}@", v15, 0x16u);
    sub_1B243E88C(v16, &qword_1EB7D18E0);
    MEMORY[0x1B274BFF0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1B274BFF0](v17, -1, -1);
    MEMORY[0x1B274BFF0](v15, -1, -1);
  }

  return sub_1B2512D1C(0);
}

void sub_1B250ED28(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultBroker];
  [v3 unregisterSubscriptionStatusListener_];
}

uint64_t sub_1B250ED98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = sub_1B256D0CC();
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_1ED69A108);
    sub_1B25142C4();

    v12 = v11;
    v13 = sub_1B256D5CC();
    v14 = sub_1B256D5EC();
    (*(*(v14 - 8) + 8))(v10, v14);
    v15 = sub_1B256E0AC();

    if (!os_log_type_enabled(v13, v15))
    {

      if (!a1)
      {
        return sub_1B2512D1C(0);
      }

      goto LABEL_7;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v16 = 136446466;
    *(v16 + 4) = sub_1B2519814(a3, a4, &v23);
    *(v16 + 12) = 2114;
    *(v16 + 14) = v12;
    *v17 = v12;
    v19 = v12;
    _os_log_impl(&dword_1B23EF000, v13, v15, "Error getting status for %{public}s: %{public}@", v16, 0x16u);
    sub_1B243E88C(v17, &qword_1EB7D18E0);
    MEMORY[0x1B274BFF0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1B274BFF0](v18, -1, -1);
    MEMORY[0x1B274BFF0](v16, -1, -1);
  }

  if (a1)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24D8);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1B2578530;
    *(v20 + 32) = a1;

    sub_1B2512D1C(v20);
  }

  return sub_1B2512D1C(0);
}

uint64_t sub_1B250F078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = sub_1B256D0CC();
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_1ED69A108);
    sub_1B25142C4();
    v10 = v9;
    v11 = sub_1B256D5CC();
    v12 = sub_1B256D5EC();
    (*(*(v12 - 8) + 8))(v8, v12);
    v13 = sub_1B256E0AC();

    if (os_log_type_enabled(v11, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 134283779;
      *(v14 + 4) = a3;
      *(v14 + 12) = 2114;
      *(v14 + 14) = v10;
      *v15 = v10;
      v16 = v10;
      _os_log_impl(&dword_1B23EF000, v11, v13, "Error getting status for %{private}llu: %{public}@", v14, 0x16u);
      sub_1B243E88C(v15, &qword_1EB7D18E0);
      MEMORY[0x1B274BFF0](v15, -1, -1);
      MEMORY[0x1B274BFF0](v14, -1, -1);
      v10 = v11;
      v11 = v16;
    }
  }

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24D8);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B2578530;
    *(v17 + 32) = a1;

    sub_1B2512D1C(v17);
  }

  return sub_1B2512D1C(0);
}

uint64_t Product.SubscriptionInfo.Status.Statuses.AsyncIterator.next()()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E80);
  *v3 = v0;
  v3[1] = sub_1B2445514;

  return MEMORY[0x1EEE6D9D0](v2, v4);
}

uint64_t sub_1B250F3AC()
{
  OUTLINED_FUNCTION_4_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B2445684;

  return Product.SubscriptionInfo.Status.Statuses.AsyncIterator.next()();
}

uint64_t sub_1B250F478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1B2445834;

  return (sub_1B247E924)(a1, a2, a3, v3 + 16);
}

uint64_t Product.SubscriptionInfo.Status.Statuses.makeAsyncIterator()()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_27_0();
  sub_1B2513080(v2, v3, v1);
  v4 = OUTLINED_FUNCTION_27_0();

  return sub_1B250DDD8(v4, v5, v1, v6);
}

uint64_t sub_1B250F59C()
{
  Product.SubscriptionInfo.Status.Statuses.makeAsyncIterator()();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  return sub_1B25142B0(v1, v2, v3);
}

void static Product.SubscriptionInfo.Status.updates.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t static Product.SubscriptionInfo.Status.all.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2370);
  OUTLINED_FUNCTION_1_1();
  v2 = v1;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2378);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8650], v0);
  return sub_1B256DE5C();
}

uint64_t sub_1B250F740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2428);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v6, qword_1ED69A108);
  v7 = sub_1B256E0CC();
  v8 = sub_1B256D5CC();
  if (os_log_type_enabled(v8, v7))
  {
    v18 = v2;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_1B2519814(0, 0xE000000000000000, &aBlock);
    *(v9 + 12) = 2082;
    v2 = v18;
    *(v9 + 14) = sub_1B2519814(0xD000000000000024, 0x80000001B2591380, &aBlock);
    _os_log_impl(&dword_1B23EF000, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v10, -1, -1);
    MEMORY[0x1B274BFF0](v9, -1, -1);
  }

  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2430);
  swift_allocObject();
  v11 = sub_1B2510884(v5);
  v12 = [objc_opt_self() defaultBroker];
  v23 = sub_1B2513B58;
  v24 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B244BD28;
  v22 = &block_descriptor_20;
  v13 = _Block_copy(&aBlock);

  v14 = [v12 storeKitServiceWithErrorHandler_];
  _Block_release(v13);

  if (v14)
  {
    v23 = sub_1B250FDB8;
    v24 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1B2515BBC;
    v22 = &block_descriptor_60;
    v15 = _Block_copy(&aBlock);

    [swift_unknownObjectRetain() enumerateSubscriptionStatusesForClient:0 withReceiver:v11 skipStatusSync:0 reply:v15];
    _Block_release(v15);
    swift_unknownObjectRelease_n();
  }

  else
  {
    sub_1B256DDFC();
  }
}

uint64_t sub_1B250FB30(uint64_t a1, uint64_t a2)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v3, qword_1ED69A108);
  sub_1B256E4FC();

  v19 = 0xD00000000000002ALL;
  v20 = 0x80000001B25913E0;
  v4 = sub_1B256D0CC();
  v5 = [v4 description];
  v6 = sub_1B256D9BC();
  v8 = v7;

  MEMORY[0x1B2749D50](v6, v8);

  v9 = *(a2 + 112);
  v10 = *(a2 + 120);
  v11 = sub_1B256E0AC();

  v12 = sub_1B256D5CC();

  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136446466;
    v18 = v14;
    v19 = 91;
    v20 = 0xE100000000000000;
    MEMORY[0x1B2749D50](v9, v10);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v15 = sub_1B2519814(91, 0xE100000000000000, &v18);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2082;
    v16 = sub_1B2519814(0xD00000000000002ALL, 0x80000001B25913E0, &v18);

    *(v13 + 14) = v16;
    _os_log_impl(&dword_1B23EF000, v12, v11, "%{public}s%{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v14, -1, -1);
    MEMORY[0x1B274BFF0](v13, -1, -1);
  }

  else
  {
  }

  return sub_1B2512D1C(0);
}

void sub_1B250FDB8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v3, qword_1ED69A108);
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD000000000000027, 0x80000001B25913B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256E78C();
    v4 = sub_1B256E0AC();
    v5 = sub_1B256D5CC();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11[0] = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_1B2519814(0, 0xE000000000000000, v11);
      *(v6 + 12) = 2082;
      *(v6 + 14) = sub_1B2519814(0, 0xE000000000000000, v11);
      _os_log_impl(&dword_1B23EF000, v5, v4, "%{public}s%{public}s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v7, -1, -1);
      MEMORY[0x1B274BFF0](v6, -1, -1);
    }

    v8 = [objc_allocWithZone(type metadata accessor for SKTwoErrorEvent()) init];
    v9 = sub_1B256D0CC();
    [v8 setPrimaryError_];

    [v8 setMappedError_];
    [v8 setUserAction_];
    v10 = &v8[OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context];
    *v10 = 0;
    v10[8] = 1;
    [v8 setInAppPurchaseID_];

    [objc_opt_self() sendEvent_];
  }
}

void static Product.SubscriptionInfo.RenewalInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_44_7();
  if (!v0)
  {
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_91_3();
  MEMORY[0x1B2749CC0]();
  OUTLINED_FUNCTION_8_15();

  OUTLINED_FUNCTION_22_1();
  sub_1B246314C();

  sub_1B256D1AC();
  OUTLINED_FUNCTION_35_1();
  if (!v1 & v0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_15();

  OUTLINED_FUNCTION_44_7();
  if (!v0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_54_6();
  MEMORY[0x1B2749CC0]();
  OUTLINED_FUNCTION_95_4();

  OUTLINED_FUNCTION_27_0();
  sub_1B246314C();

  sub_1B256D1AC();
  OUTLINED_FUNCTION_35_1();
  if (!(!v1 & v0))
  {

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_91_3();
    MEMORY[0x1B2749490]();
    v2 = OUTLINED_FUNCTION_89();
    sub_1B2443AD0(v2, v3);
    v4 = OUTLINED_FUNCTION_22_1();
    sub_1B2443AD0(v4, v5);
    return;
  }

LABEL_10:
  __break(1u);
}

void Product.SubscriptionInfo.RenewalInfo.hash(into:)()
{
  OUTLINED_FUNCTION_44_7();
  if (!v0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_91_3();
  MEMORY[0x1B2749CC0]();

  OUTLINED_FUNCTION_18_1();
  sub_1B246314C();

  OUTLINED_FUNCTION_96_5();
  sub_1B256D1AC();
  OUTLINED_FUNCTION_35_1();
  if (!v1 & v0)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_95_4();

  OUTLINED_FUNCTION_41_1();
  sub_1B256D23C();
  v2 = OUTLINED_FUNCTION_27_0();

  sub_1B2443AD0(v2, v3);
}

void Product.SubscriptionInfo.RenewalInfo.hashValue.getter()
{
  sub_1B256ED3C();
  OUTLINED_FUNCTION_44_7();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_1();
    MEMORY[0x1B2749CC0](v1);
    OUTLINED_FUNCTION_8_15();

    OUTLINED_FUNCTION_22_1();
    sub_1B246314C();

    OUTLINED_FUNCTION_24();
    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!(!v2 & v0))
    {

      sub_1B256D23C();
      v3 = OUTLINED_FUNCTION_18_1();
      sub_1B2443AD0(v3, v4);
      sub_1B256ED7C();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t Product.SubscriptionInfo.RenewalInfo.debugDescription.getter()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1B24472B8(v2, v3, v4);
  BackingValue.debugDescription.getter();
  OUTLINED_FUNCTION_8_15();
  sub_1B24472E0(v2, v3, v4);
  return OUTLINED_FUNCTION_22_1();
}

id sub_1B25103C0(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v28 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2440);
  v5 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2CA0);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CB0);
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v28 - v12;
  swift_defaultActor_initialize();
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v14, qword_1ED69A108);
  *(v1 + 14) = sub_1B24D3E10();
  *(v1 + 15) = v15;
  v16 = MEMORY[0x1E69E7D40];
  v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x78)] = 0;
  v17 = *((*v16 & *v1) + 0x70);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24C8);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v2[v17], v33, v18);
  v20 = v31;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8650], v31);
  sub_1B25076E0(v13, v10, v7);
  (*(v5 + 8))(v7, v20);
  (*(v11 + 32))(&v2[*((*v16 & *v2) + 0x80)], v13, v28);
  (*(v29 + 32))(&v2[*((*v16 & *v2) + 0x88)], v10, v30);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24D0);
  v34.receiver = v2;
  v34.super_class = v21;
  v22 = objc_msgSendSuper2(&v34, sel_init);
  v23 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v23);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v24;
  v26 = v22;
  sub_1B247DCE8();

  (*(v19 + 8))(v33, v18);
  return v26;
}

id sub_1B2510884(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v28 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2440);
  v5 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2CA0);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CB0);
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v28 - v12;
  swift_defaultActor_initialize();
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v14, qword_1ED69A108);
  *(v1 + 14) = sub_1B24D3E10();
  *(v1 + 15) = v15;
  v16 = MEMORY[0x1E69E7D40];
  v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x78)] = 0;
  v17 = *((*v16 & *v1) + 0x70);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2428);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v2[v17], v33, v18);
  v20 = v31;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8650], v31);
  sub_1B25076E0(v13, v10, v7);
  (*(v5 + 8))(v7, v20);
  (*(v11 + 32))(&v2[*((*v16 & *v2) + 0x80)], v13, v28);
  (*(v29 + 32))(&v2[*((*v16 & *v2) + 0x88)], v10, v30);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2430);
  v34.receiver = v2;
  v34.super_class = v21;
  v22 = objc_msgSendSuper2(&v34, sel_init);
  v23 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v23);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v24;
  v26 = v22;
  sub_1B247DCE8();

  (*(v19 + 8))(v33, v18);
  return v26;
}

uint64_t sub_1B2510D68()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_84_4();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1B2514600;

    return sub_1B251102C();
  }

  else
  {
    OUTLINED_FUNCTION_141();

    return v4(1);
  }
}

uint64_t sub_1B2510E58()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_84_4();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1B2510F28;

    return sub_1B2511540();
  }

  else
  {
    OUTLINED_FUNCTION_141();

    return v4(1);
  }
}

uint64_t sub_1B2510F28()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;

  OUTLINED_FUNCTION_141();

  return v6();
}

uint64_t sub_1B251102C()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2448);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B25110F8, v0, 0);
}

uint64_t sub_1B25110F8()
{
  OUTLINED_FUNCTION_21_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CB0);
  sub_1B256DE1C();
  *(v0 + 56) = OUTLINED_FUNCTION_46_5(&qword_1EB7D24E0, &qword_1EB7D24D0);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 64) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_32_8(v1);
  v3 = OUTLINED_FUNCTION_59_6();

  return MEMORY[0x1EEE6D9C8](v3);
}

uint64_t sub_1B25111E8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_96_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B25112E4()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0[2];
  v0[9] = v1;
  if (v1 == 1)
  {
    v2 = OUTLINED_FUNCTION_99_4();
    v3(v2);

    OUTLINED_FUNCTION_7_2();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_86_1(v6);

    return sub_1B2511A54(v7);
  }
}

uint64_t sub_1B25113BC()
{
  OUTLINED_FUNCTION_24_5();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v3 = v2;
  v4 = *(v1 + 72);
  v5 = *v0;
  *v3 = *v0;

  sub_1B2513E84(v4);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  *v6 = v5;
  OUTLINED_FUNCTION_32_8();
  v7 = OUTLINED_FUNCTION_98_3();

  return MEMORY[0x1EEE6D9C8](v7);
}

uint64_t sub_1B2511540()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2448);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B251160C, v0, 0);
}

uint64_t sub_1B251160C()
{
  OUTLINED_FUNCTION_21_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CB0);
  sub_1B256DE1C();
  *(v0 + 56) = OUTLINED_FUNCTION_46_5(&qword_1EB7D2450, &qword_1EB7D2430);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 64) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_31_9(v1);
  v3 = OUTLINED_FUNCTION_59_6();

  return MEMORY[0x1EEE6D9C8](v3);
}

uint64_t sub_1B25116FC()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_96_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B25117F8()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0[2];
  v0[9] = v1;
  if (v1 == 1)
  {
    v2 = OUTLINED_FUNCTION_99_4();
    v3(v2);

    OUTLINED_FUNCTION_7_2();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_86_1(v6);

    return sub_1B25123C0(v7);
  }
}

uint64_t sub_1B25118D0()
{
  OUTLINED_FUNCTION_24_5();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v3 = v2;
  v4 = *(v1 + 72);
  v5 = *v0;
  *v3 = *v0;

  sub_1B2513E84(v4);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  *v6 = v5;
  OUTLINED_FUNCTION_31_9();
  v7 = OUTLINED_FUNCTION_98_3();

  return MEMORY[0x1EEE6D9C8](v7);
}

uint64_t sub_1B2511A54(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24E8);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = *(type metadata accessor for Product.SubscriptionInfo.Status(0) - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2511B78, v1, 0);
}

uint64_t sub_1B2511B78()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[12];
  if (v1)
  {
    v2 = *(v1 + 16);
    v0[19] = v2;
    if (v2)
    {
      OUTLINED_FUNCTION_97_5();
      v0[20] = *(v3 + 120);
      OUTLINED_FUNCTION_97_5();
      v0[21] = *(v4 + 112);
      v0[22] = *(v5 + 112);
      v0[23] = *(v5 + 120);
      v0[24] = 0;
      v0[25] = *(v6 + 32);

      v7 = swift_task_alloc();
      v0[26] = v7;
      *v7 = v0;
      v8 = OUTLINED_FUNCTION_8_25(v7);

      return sub_1B250BB78(v8, v9, v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24C8);
    sub_1B256DDFC();
    OUTLINED_FUNCTION_43_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2CA0);
    sub_1B256DDFC();
  }

  OUTLINED_FUNCTION_7_2();

  return v12();
}

uint64_t sub_1B2511D10()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_10();
  *v2 = v1;
  v4 = *(v3 + 104);
  v5 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v8 + 216) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B2511E30, v4, 0);
}

uint64_t sub_1B2511E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_158();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_126();
  a18 = v21;
  if ((*(v21[13] + v21[20]) & 1) != 0 || !sub_1B250732C(v21[27]))
  {
    v38 = *(v21[27] + 16);
    if (v38)
    {
      OUTLINED_FUNCTION_55_5();
      do
      {
        v39 = v21[15];
        v40 = v21[16];
        v41 = v21[14];
        OUTLINED_FUNCTION_1_35();
        sub_1B25142C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24C8);
        OUTLINED_FUNCTION_109_3();
        (*(v39 + 8))(v40, v41);
        v20 = (v20 + v22);
        --v38;
      }

      while (v38);
    }

    OUTLINED_FUNCTION_89_1();
    if (v43)
    {

      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_115();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_71_4(v42);

      v52 = swift_task_alloc();
      v21[26] = v52;
      *v52 = v21;
      OUTLINED_FUNCTION_8_25();
      OUTLINED_FUNCTION_115();

      return sub_1B250BB78(v53, v54, v55);
    }
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v25 = v21[23];
    v26 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v26, qword_1ED69A108);
    v27 = sub_1B256E0AC();

    sub_1B256D5CC();
    OUTLINED_FUNCTION_94_3();

    if (os_log_type_enabled(v20, v27))
    {
      v29 = v21[22];
      v28 = v21[23];
      OUTLINED_FUNCTION_21_3();
      a9 = OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_65_2(4.8752e-34);
      v21[10] = v30;
      v21[11] = v31;
      MEMORY[0x1B2749D50](v29, v28);
      OUTLINED_FUNCTION_94_0();
      sub_1B2519814(v21[10], v21[11], &a9);

      OUTLINED_FUNCTION_64_3();
      *(v25 + 14) = sub_1B2519814(0xD000000000000030, 0x80000001B2591410, &a9);
      OUTLINED_FUNCTION_52_3(&dword_1B23EF000, v32, v33, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_115();

    return MEMORY[0x1EEE6DFA0](v34, v35, v36);
  }
}

uint64_t sub_1B25120F4()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B2512180;
  v1 = swift_continuation_init();
  sub_1B24EFF74(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B2512180()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v3 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B2512264, v2, 0);
}

uint64_t sub_1B2512264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_126();
  *(v13[13] + v13[20]) = 1;
  v15 = *(v13[27] + 16);
  if (v15)
  {
    OUTLINED_FUNCTION_55_5();
    do
    {
      v16 = v13[15];
      v17 = v13[16];
      v18 = v13[14];
      OUTLINED_FUNCTION_1_35();
      sub_1B25142C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D24C8);
      OUTLINED_FUNCTION_109_3();
      (*(v16 + 8))(v17, v18);
      v12 += v14;
      --v15;
    }

    while (v15);
  }

  OUTLINED_FUNCTION_89_1();
  if (v20)
  {

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_115();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_71_4(v19);

    v30 = swift_task_alloc();
    v13[26] = v30;
    *v30 = v13;
    OUTLINED_FUNCTION_8_25();
    OUTLINED_FUNCTION_115();

    return sub_1B250BB78(v31, v32, v33);
  }
}

uint64_t sub_1B25123C0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2458);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B251248C, v1, 0);
}

uint64_t sub_1B251248C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[19];
  if (v1)
  {
    v2 = *(v1 + 16);
    v0[24] = v2;
    if (v2)
    {
      OUTLINED_FUNCTION_97_5();
      v0[25] = *(v3 + 120);
      OUTLINED_FUNCTION_97_5();
      v0[26] = *(v4 + 112);
      v0[27] = *(v5 + 112);
      v0[28] = *(v5 + 120);
      v0[29] = 0;
      v0[30] = *(v6 + 32);

      v7 = swift_task_alloc();
      v0[31] = v7;
      *v7 = v0;
      v8 = OUTLINED_FUNCTION_7_22(v7);

      return sub_1B253C96C(v8, v9, v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2428);
    sub_1B256DDFC();
    OUTLINED_FUNCTION_43_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2CA0);
    sub_1B256DDFC();
  }

  OUTLINED_FUNCTION_7_2();

  return v12();
}

uint64_t sub_1B2512618()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_10();
  *v2 = v1;
  v1[10] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[13] = v5;
  v7 = *(v6 + 160);
  v8 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v9 = v8;
  *(v12 + 256) = v10;
  *(v12 + 264) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B2512740, v7, 0);
}

uint64_t sub_1B2512740()
{
  OUTLINED_FUNCTION_126();
  v34 = v0;
  v1 = v0[33];
  if (v1)
  {
    v2 = v0[13];
    v3 = v0[25];
    v4 = v0[20];
    v0[34] = v2;
    if ((*(v4 + v3) & 1) == 0)
    {

      v6 = sub_1B250732C(v5);

      if (v6)
      {
        if (qword_1ED699E80 != -1)
        {
          OUTLINED_FUNCTION_0_17();
        }

        v7 = v0[28];
        v8 = type metadata accessor for SKLogger();
        __swift_project_value_buffer(v8, qword_1ED69A108);
        v9 = sub_1B256E0AC();

        sub_1B256D5CC();
        OUTLINED_FUNCTION_94_3();

        if (os_log_type_enabled(v2, v9))
        {
          v11 = v0[27];
          v10 = v0[28];
          OUTLINED_FUNCTION_21_3();
          v33 = OUTLINED_FUNCTION_46_1();
          OUTLINED_FUNCTION_65_2(4.8752e-34);
          v0[17] = v12;
          v0[18] = v13;
          MEMORY[0x1B2749D50](v11, v10);
          OUTLINED_FUNCTION_94_0();
          sub_1B2519814(v0[17], v0[18], &v33);

          OUTLINED_FUNCTION_64_3();
          *(v7 + 14) = sub_1B2519814(0xD000000000000030, 0x80000001B2591410, &v33);
          OUTLINED_FUNCTION_52_3(&dword_1B23EF000, v14, v15, "%{public}s%{public}s");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_11_4();
          OUTLINED_FUNCTION_11_4();
        }

        OUTLINED_FUNCTION_16_7();
        OUTLINED_FUNCTION_104_0();

        return MEMORY[0x1EEE6DFA0](v16, v17, v18);
      }

      v1 = v0[33];
      v2 = v0[34];
    }

    v21 = v0[22];
    v20 = v0[23];
    v22 = v0[21];
    v0[14] = v0[32];
    v0[15] = v1;
    v0[16] = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2428);
    sub_1B256DDEC();
    (*(v21 + 8))(v20, v22);
  }

  OUTLINED_FUNCTION_89_1();
  if (v24)
  {

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_104_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_70_4(v23);

  v27 = swift_task_alloc();
  v0[31] = v27;
  *v27 = v0;
  OUTLINED_FUNCTION_7_22();
  OUTLINED_FUNCTION_104_0();

  return sub_1B253C96C(v28, v29, v30);
}

uint64_t sub_1B2512A30()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B2512ABC;
  v1 = swift_continuation_init();
  sub_1B24EFF74(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B2512ABC()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v3 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B2512BA0, v2, 0);
}

uint64_t sub_1B2512BA0()
{
  *(v0[20] + v0[25]) = 1;
  v0[14] = v0[32];
  v1 = v0[34];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v0[15] = v0[33];
  v0[16] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2428);
  sub_1B256DDEC();
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_89_1();
  if (v6)
  {

    OUTLINED_FUNCTION_7_2();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_70_4(v5);

    v9 = swift_task_alloc();
    v0[31] = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_7_22();

    return sub_1B253C96C(v10, v11, v12);
  }
}

uint64_t sub_1B2512D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2438);
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v9 - v6;
  v9[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2CA0);
  sub_1B256DDEC();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1B2512E34(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD000000000000043, 0x80000001B2591300);
  MEMORY[0x1B2749D50](0x6E69727473627553, 0xE900000000000067);
  MEMORY[0x1B2749D50](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_1B256EE7C();
  MEMORY[0x1B2749D50](v4);

  result = sub_1B256E84C();
  __break(1u);
  return result;
}

uint64_t sub_1B2512F84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B2512FFC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B251302C()
{
  v1 = OUTLINED_FUNCTION_62_4();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  v3 = OUTLINED_FUNCTION_22_1();
  v4(v3);
  return v0;
}

uint64_t sub_1B2513080(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

unint64_t sub_1B2513098()
{
  result = qword_1EB7D2380;
  if (!qword_1EB7D2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2380);
  }

  return result;
}

unint64_t sub_1B25130F0()
{
  result = qword_1EB7D2388;
  if (!qword_1EB7D2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2388);
  }

  return result;
}

unint64_t sub_1B2513148()
{
  result = qword_1EB7D2390;
  if (!qword_1EB7D2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2390);
  }

  return result;
}

uint64_t sub_1B251322C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B25132F4()
{
  sub_1B25136D4(319, &qword_1ED699E38, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1B25136D4(319, &qword_1EB7D23C0, &type metadata for Product.SubscriptionInfo.RenewalInfo.ExpirationReason, MEMORY[0x1E69E6720]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1B2513670(319, &qword_1EB7CD4E0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1B25136D4(319, &qword_1EB7CD478, &type metadata for Transaction.Offer, MEMORY[0x1E69E6720]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          v9 = sub_1B256D36C();
          if (v10 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_1B2513670(319, &qword_1EB7CD2A0, type metadata accessor for Decimal, MEMORY[0x1E69E6720]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_1B2513670(319, &qword_1EB7CD4D8, MEMORY[0x1E6969718], MEMORY[0x1E69E6720]);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_1B25136D4(319, &qword_1EB7D23C8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  v1 = sub_1B256D3CC();
                  if (v17 <= 0x3F)
                  {
                    sub_1B25136D4(319, &qword_1EB7D23D0, &type metadata for Product.SubscriptionInfo.RenewalInfo.AdvancedCommerceInfo, MEMORY[0x1E69E6720]);
                    v1 = v18;
                    if (v19 <= 0x3F)
                    {
                      sub_1B2513670(319, &qword_1ED699FE0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
                      v1 = v20;
                      if (v21 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                        return 0;
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
  }

  return v1;
}

void sub_1B2513670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B25136D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *_s11RenewalInfoV19PriceIncreaseStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1B2513838()
{
  sub_1B2513670(319, &qword_1EB7D1DE8, type metadata accessor for Transaction, type metadata accessor for VerificationResult);
  if (v0 <= 0x3F)
  {
    sub_1B2513670(319, &qword_1EB7D23E8, type metadata accessor for Product.SubscriptionInfo.RenewalInfo, type metadata accessor for VerificationResult);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8StoreKit7ProductV16SubscriptionInfoV6StatusV8StatusesV13IterationType33_B0247F39AD093CD7778EBB3C923746A2LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_1B2513980()
{
  sub_1B2513670(319, &qword_1EB7D2408, type metadata accessor for Product.SubscriptionInfo.Status, MEMORY[0x1E69E8688]);
  if (v0 <= 0x3F)
  {
    sub_1B2513A7C();
    if (v1 <= 0x3F)
    {
      sub_1B2513670(319, &qword_1EB7D2420, type metadata accessor for Product.SubscriptionInfo.Status, MEMORY[0x1E69E8698]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B2513A7C()
{
  if (!qword_1EB7D2410)
  {
    sub_1B2513AD8();
    v0 = _s14StatusReceiverCMa();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7D2410);
    }
  }
}

unint64_t sub_1B2513AD8()
{
  result = qword_1EB7D2418;
  if (!qword_1EB7D2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2418);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B2513B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1B25145E4;

  return sub_1B2510D48(a2, a3, a4);
}

uint64_t sub_1B2513C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1B2513CD8;

  return sub_1B2510E38(a2, a3, a4);
}

uint64_t sub_1B2513CD8()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;

  *v4 = v2 & 1;
  OUTLINED_FUNCTION_7_2();

  return v7();
}

uint64_t sub_1B2513DD8()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_42_4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B2513E84(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1B2513E94()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_54_6();
  OUTLINED_FUNCTION_42_4();

  return sub_1B250BFF4(v3, v4, v5, v6, v7);
}

uint64_t sub_1B2513F40()
{
  OUTLINED_FUNCTION_126();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B2445514;
  OUTLINED_FUNCTION_54_6();
  OUTLINED_FUNCTION_115();

  return sub_1B250CD58(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B2514018()
{
  OUTLINED_FUNCTION_21_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  v3 = OUTLINED_FUNCTION_11_10();

  return v4(v3);
}

uint64_t sub_1B25140BC()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  v3[1] = sub_1B24741E0;
  v5 = OUTLINED_FUNCTION_11_10();

  return sub_1B250D814(v5, v6, v1);
}

uint64_t sub_1B2514154()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  v3[1] = sub_1B2445514;
  v5 = OUTLINED_FUNCTION_11_10();

  return sub_1B250D994(v5, v6, v1);
}

uint64_t sub_1B25141EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20_1(a1, a2, a3);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return v3;
}

uint64_t sub_1B25142B0(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1B25142C4()
{
  v1 = OUTLINED_FUNCTION_62_4();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  v3 = OUTLINED_FUNCTION_22_1();
  v4(v3);
  return v0;
}

uint64_t sub_1B2514344()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_42_4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t _s11RenewalInfoV3KeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11RenewalInfoV3KeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B2514558()
{
  result = qword_1EB7D24F0;
  if (!qword_1EB7D24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D24F0);
  }

  return result;
}

void OUTLINED_FUNCTION_18_13()
{
  v0[26] = 0;
  v0[30] = 0;
  v0[32] = 0;
}

uint64_t OUTLINED_FUNCTION_26_10()
{
}

uint64_t OUTLINED_FUNCTION_41_9(uint64_t a1)
{

  return sub_1B2512F84(a1, type metadata accessor for Product.SubscriptionInfo.Status);
}

uint64_t OUTLINED_FUNCTION_46_5(unint64_t *a1, uint64_t *a2)
{

  return sub_1B248D0F8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_47_6(unint64_t *a1, uint64_t *a2)
{

  return sub_1B248D0F8(a1, a2);
}

void OUTLINED_FUNCTION_51_4(float a1)
{
  *v1 = a1;

  JUMPOUT(0x1B2749D50);
}

void OUTLINED_FUNCTION_52_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_66_3()
{

  return sub_1B256D0CC();
}

unint64_t OUTLINED_FUNCTION_67_3(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v5 + 4) = v2;
  *(v5 + 12) = 2082;

  return sub_1B2519814(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_76_4@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{

  return sub_1B24731D0(v3 + a2, v2, a1);
}

void OUTLINED_FUNCTION_77_5()
{

  sub_1B244941C();
}

uint64_t OUTLINED_FUNCTION_78_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_79_3()
{

  sub_1B244941C();
}

uint64_t OUTLINED_FUNCTION_80_4()
{

  return sub_1B256E4FC();
}

uint64_t OUTLINED_FUNCTION_83_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_84_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_106_3()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_109_3()
{

  return sub_1B256DDEC();
}

void sub_1B2514C94()
{
  type metadata accessor for ProductRequest();
  if (v0 <= 0x3F)
  {
    sub_1B25157F8(319, &unk_1EB7CD5D0, MEMORY[0x1E69E87C8]);
    if (v1 <= 0x3F)
    {
      sub_1B25157F8(319, &qword_1EB7CD5E0, MEMORY[0x1E69E87A0]);
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1B2514DD0(uint64_t a1, uint64_t a2)
{
  sub_1B25158C8(a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2570);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_1B2514E68(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2568);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - v8;
  v10 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    __swift_project_value_buffer(v10, qword_1ED69A108);
    v14 = &v3[qword_1EB7EDF58];
    v15 = &v14[*(type metadata accessor for ProductRequest() + 36)];
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = sub_1B256E09C();

    v19 = sub_1B256D5CC();

    if (os_log_type_enabled(v19, v18))
    {
      v20 = OUTLINED_FUNCTION_21_3();
      v59 = OUTLINED_FUNCTION_20_4();
      *v20 = 136446466;
      OUTLINED_FUNCTION_2_33();
      MEMORY[0x1B2749D50](v16, v17);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v21 = OUTLINED_FUNCTION_4_23();

      *(v20 + 4) = v21;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_1B2519814(0xD00000000000001CLL, 0x80000001B2591590, &v59);
      _os_log_impl(&dword_1B23EF000, v19, v18, "%{public}s%{public}s", v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    v56 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2570);
    return sub_1B256DEFC();
  }

  else
  {
    v49 = v9;
    v50 = v7;
    v51 = v6;
    sub_1B244784C(a1, a2);
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v23 = __swift_project_value_buffer(v10, qword_1ED69A108);
    v24 = &v3[qword_1EB7EDF58];
    v25 = &v24[*(type metadata accessor for ProductRequest() + 36)];
    v26 = *v25;
    v27 = v25[1];
    v28 = sub_1B256E09C();

    v52 = v23;
    v29 = sub_1B256D5CC();

    v30 = os_log_type_enabled(v29, v28);
    v54 = a2;
    v55 = a1;
    v53 = v27;
    if (v30)
    {
      v48 = "Finished receiving responses";
      v31 = OUTLINED_FUNCTION_21_3();
      v59 = OUTLINED_FUNCTION_20_4();
      *v31 = 136446466;
      OUTLINED_FUNCTION_2_33();
      MEMORY[0x1B2749D50](v26, v27);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v32 = v3;
      v33 = OUTLINED_FUNCTION_4_23();

      *(v31 + 4) = v33;
      v3 = v32;
      *(v31 + 12) = 2082;
      *(v31 + 14) = sub_1B2519814(0xD000000000000019, v48 | 0x8000000000000000, &v59);
      _os_log_impl(&dword_1B23EF000, v29, v28, "%{public}s%{public}s", v31, 0x16u);
      swift_arrayDestroy();
      a2 = v54;
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    sub_1B256D00C();
    swift_allocObject();
    sub_1B256CFFC();
    sub_1B2515874();
    sub_1B256CFEC();
    v34 = v57;
    v48 = v56;
    v35 = v58;
    sub_1B244CC80(v52, v13);

    v36 = v3;
    v37 = sub_1B256D5CC();
    sub_1B256D5EC();
    OUTLINED_FUNCTION_7_0();
    (*(v38 + 8))(v13);
    v39 = sub_1B256E0CC();
    v52 = v35;

    v40 = os_log_type_enabled(v37, v39);
    v41 = v53;
    if (v40)
    {
      v42 = OUTLINED_FUNCTION_21_3();
      v56 = OUTLINED_FUNCTION_20_4();
      *v42 = 136446467;
      *(v42 + 4) = sub_1B2519814(v26, v41, &v56);
      *(v42 + 12) = 2081;
      if (v34)
      {
        v43 = v48;
      }

      else
      {
        v43 = 0xD000000000000011;
      }

      if (v34)
      {
        v44 = v34;
      }

      else
      {
        v44 = 0x80000001B25915F0;
      }

      v45 = sub_1B2519814(v43, v44, &v56);

      *(v42 + 14) = v45;
      _os_log_impl(&dword_1B23EF000, v37, v39, "[%{public}s] Decoded product response (%{private}s)", v42, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      a2 = v54;
      OUTLINED_FUNCTION_11_4();
    }

    v56 = v48;
    v57 = v34;
    v58 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2570);
    v46 = v49;
    sub_1B256DEEC();

    sub_1B2443AD0(v55, a2);
    return (*(v50 + 8))(v46, v51);
  }
}

void sub_1B2515610(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a3)
  {
    v4 = a1;
    v5 = v3;
    v3 = sub_1B256D22C();
    v7 = v6;
  }

  else
  {
    v8 = a1;
    v7 = 0xF000000000000000;
  }

  sub_1B2514E68(v3, v7);
  sub_1B2443AD0(v3, v7);
}

id sub_1B25156E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B251571C(uint64_t a1)
{
  sub_1B24A8CBC(a1 + qword_1EB7EDF58);
  v2 = qword_1EB7CD690;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2580);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1 + v2);
  v4 = qword_1EB7CD698;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2570);
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 8);

  return v6(a1 + v4);
}

void sub_1B25157F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7CFF40);
    v7 = a3(a1, &unk_1F29B3208, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B2515874()
{
  result = qword_1EB7CD6A8;
  if (!qword_1EB7CD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD6A8);
  }

  return result;
}

uint64_t sub_1B25158C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t OUTLINED_FUNCTION_4_23()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return sub_1B2519814(v2, v3, (v0 - 88));
}

uint64_t sub_1B2515960()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2588);
  swift_allocObject();
  result = sub_1B256EE4C();
  qword_1EB7EDF60 = result;
  return result;
}

uint64_t sub_1B25159D0()
{
  qword_1EB7EDFB8 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

unint64_t sub_1B2515A0C(unint64_t description, uint64_t a2, char a3)
{
  v3 = description;
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (qword_1EB7CFC68 == -1)
      {
LABEL_4:
        v4 = qword_1EB7EDFB8;

        return _os_activity_create(&dword_1B23EF000, v3, v4, OS_ACTIVITY_FLAG_DEFAULT);
      }

LABEL_17:
      OUTLINED_FUNCTION_0_37();
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(description))
  {
    goto LABEL_16;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return description;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v6 = (description & 0x3F) << 8;
    v7 = (description >> 6) + v6 + 33217;
    v8 = (v6 | (description >> 6) & 0x3F) << 8;
    v9 = (description >> 18) + ((v8 | (description >> 12) & 0x3F) << 8) - 2122219023;
    v10 = (description >> 12) + v8 + 8487393;
    if (description >> 16)
    {
      v5 = v9;
    }

    else
    {
      v5 = v10;
    }

    if (description < 0x800)
    {
      v5 = v7;
    }

    goto LABEL_12;
  }

  if (description > 0x7F)
  {
    goto LABEL_19;
  }

  v5 = description + 1;
LABEL_12:
  *descriptiona = (v5 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v5) & 0x18)));
  if (qword_1EB7CFC68 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  return _os_activity_create(&dword_1B23EF000, descriptiona, qword_1EB7EDFB8, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_0_37()
{

  return swift_once();
}

void sub_1B2515BBC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_1B2515C28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 1) == 0)
  {

    a1 = 0;
    a2 = 0;
  }

  v8 = &v5[OBJC_IVAR___SKInstallSheetStatusUpdateRequest_bundleID];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v5[OBJC_IVAR___SKInstallSheetStatusUpdateRequest_completionHandler];
  *v9 = a4;
  *(v9 + 1) = a5;
  v11.receiver = v5;
  v11.super_class = SKInstallSheetStatusUpdateRequest;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_1B2515D50(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B256D0CC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1B2515DB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v29 - v3;
  v4 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v4, qword_1ED69A108);
  v8 = sub_1B24D3E10();
  v10 = v9;
  sub_1B244CC80(v7, v6);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1B256E4FC();

  v33 = 0xD000000000000024;
  v34 = 0x80000001B25916E0;
  if (*&v1[OBJC_IVAR___SKInstallSheetStatusUpdateRequest_bundleID + 8])
  {
    v11 = *&v1[OBJC_IVAR___SKInstallSheetStatusUpdateRequest_bundleID];
    v12 = *&v1[OBJC_IVAR___SKInstallSheetStatusUpdateRequest_bundleID + 8];
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x1B2749D50](v11, v12);

  MEMORY[0x1B2749D50](41, 0xE100000000000000);
  v13 = v33;
  v14 = v34;

  v15 = sub_1B256E0CC();
  v16 = sub_1B256D5CC();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v30 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v13;
    v20 = v19;
    *v18 = 136446466;
    v32 = v19;
    v33 = 91;
    v34 = 0xE100000000000000;
    v21 = v8;
    MEMORY[0x1B2749D50](v8, v10);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v22 = sub_1B2519814(v33, v34, &v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = sub_1B2519814(v29, v14, &v32);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_1B23EF000, v16, v15, "%{public}s%{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v20, -1, -1);
    v24 = v18;
    v1 = v30;
    MEMORY[0x1B274BFF0](v24, -1, -1);

    sub_1B2516EB8(v6);
  }

  else
  {

    sub_1B2516EB8(v6);
    v21 = v8;
  }

  v25 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v1;
  v26[5] = v21;
  v26[6] = v10;
  v27 = v1;
  sub_1B247DAA8();
}

uint64_t sub_1B2516160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B2516184, 0, 0);
}

uint64_t sub_1B2516184()
{
  v1 = (v0[2] + OBJC_IVAR___SKInstallSheetStatusUpdateRequest_bundleID);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B251623C;
  v5 = v0[3];
  v6 = v0[4];

  return sub_1B251646C(v3, v2, v5, v6);
}

uint64_t sub_1B251623C()
{
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    v7 = sub_1B25163C8;
  }

  else
  {
    v7 = sub_1B2516348;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B2516348()
{
  v1 = (*(v0 + 16) + OBJC_IVAR___SKInstallSheetStatusUpdateRequest_completionHandler);
  if (*v1)
  {
    (*v1)(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B25163C8()
{
  v1 = *(v0[2] + OBJC_IVAR___SKInstallSheetStatusUpdateRequest_completionHandler);
  v2 = v0[6];
  if (v1)
  {
    v3 = v2;
    v1(v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B251646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B2516490, 0, 0);
}

uint64_t sub_1B2516490()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[3] = sub_1B2516548;
  v5 = swift_continuation_init();
  sub_1B2516694(v5, v2, v1, v4, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B2516548()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3_10();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

void sub_1B2516694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v10 = objc_opt_self();

  v11 = [v10 defaultBroker];
  v29 = sub_1B24477D4;
  v30 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1B244BD28;
  v28 = &block_descriptor_21;
  v12 = _Block_copy(&aBlock);

  v13 = [v11 purchaseIntentServiceWithErrorHandler_];
  _Block_release(v12);

  if (v13)
  {
    if (a5)
    {
      a5 = sub_1B256D98C();
    }

    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a1;
    v29 = sub_1B25170E4;
    v30 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1B2515BBC;
    v28 = &block_descriptor_13;
    v15 = _Block_copy(&aBlock);

    [v13 setAppInstallSheetBundleID:a5 reply:v15];
    _Block_release(v15);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v16, qword_1ED69A108);
    v17 = sub_1B256E0AC();

    v18 = sub_1B256D5CC();

    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 136446466;
      v24 = v20;
      aBlock = 91;
      v26 = 0xE100000000000000;
      MEMORY[0x1B2749D50](a2, a3);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v21 = sub_1B2519814(aBlock, v26, &v24);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_1B2519814(0xD00000000000001FLL, 0x80000001B258E5E0, &v24);
      _os_log_impl(&dword_1B23EF000, v18, v17, "%{public}s%{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v20, -1, -1);
      MEMORY[0x1B274BFF0](v19, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B243A51C();
    v22 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v23 = v22;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B2516AC4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v7, qword_1ED69A108);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD000000000000029, 0x80000001B2591710);
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256E78C();
    v8 = sub_1B256E0AC();

    v9 = sub_1B256D5CC();

    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136446466;
      v16 = v11;
      v17 = 91;
      v18 = 0xE100000000000000;
      MEMORY[0x1B2749D50](a2, a3);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v12 = sub_1B2519814(91, 0xE100000000000000, &v16);

      *(v10 + 4) = v12;
      *(v10 + 12) = 2082;
      v13 = sub_1B2519814(0, 0xE000000000000000, &v16);

      *(v10 + 14) = v13;
      _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v11, -1, -1);
      MEMORY[0x1B274BFF0](v10, -1, -1);
    }

    else
    {
    }

    swift_allocError();
    *v15 = a1;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

void __swiftcall SKInstallSheetStatusUpdateRequest.init()(SKInstallSheetStatusUpdateRequest *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for SKInstallSheetStatusUpdateRequest()
{
  result = qword_1EB7D25A0[0];
  if (!qword_1EB7D25A0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB7D25A0);
  }

  return result;
}

uint64_t sub_1B2516EB8(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2516F14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B2516FDC;

  return sub_1B2516160(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B2516FDC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3_10();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B251715C()
{
  MEMORY[0x1B274C0F0](v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B251718C()
{
  sub_1B251715C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B25171D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

char *parseError(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E48);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v113 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0058);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v113 - v7;
  v9 = sub_1B256D56C();
  v117 = *(v9 - 8);
  v118 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B256D55C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v119 = type metadata accessor for StoreKitError();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_0_5();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_14();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v113 - v19;
  OUTLINED_FUNCTION_28_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  OUTLINED_FUNCTION_17_14();
  v21 = swift_dynamicCast();

  if (v21)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_17_14();
  v22 = swift_dynamicCast();

  if (v22)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_28_11();
  if (swift_dynamicCast())
  {
    sub_1B2519D88(v20);

LABEL_5:
    v23 = a1;
    return a1;
  }

  v114 = v1;

  v116 = sub_1B256D0CC();
  v25 = [v116 domain];
  v26 = sub_1B256D9BC();
  v28 = v27;

  v29 = v28;
  if (v26 == 0x726F727245534D41 && v28 == 0xEE006E69616D6F44)
  {

    v33 = v116;
    goto LABEL_14;
  }

  v31 = v26;
  v115 = v29;
  v32 = sub_1B256EB5C();
  v33 = v116;
  if (v32)
  {

LABEL_14:
    v34 = [v33 code];
    if (v34 != 6 && v34 != 508)
    {
      if (v34 == 203)
      {
        OUTLINED_FUNCTION_0_38();
        sub_1B2519E38(v44, v45);
        a1 = OUTLINED_FUNCTION_5();
        sub_1B256D51C();
        goto LABEL_36;
      }

      if (v34 != 206)
      {
        if (v34 != 100)
        {
          goto LABEL_19;
        }

        goto LABEL_85;
      }

LABEL_34:
      OUTLINED_FUNCTION_0_38();
      sub_1B2519E38(v42, v43);
      a1 = OUTLINED_FUNCTION_5();
      sub_1B256D52C();
LABEL_36:
      sub_1B25195E0(MEMORY[0x1E69E7CC0]);
      sub_1B2519E38(&unk_1EB7CD4C8, MEMORY[0x1E6969C20]);
      sub_1B256D0BC();
      swift_storeEnumTagMultiPayload();

      return a1;
    }

LABEL_85:
    OUTLINED_FUNCTION_0_38();
    sub_1B2519E38(v86, v87);
    v88 = OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_9_21(v88, v89);
    swift_storeEnumTagMultiPayload();
LABEL_86:

    return a1;
  }

  v40 = v31 == OUTLINED_FUNCTION_22_11() && v115 == 0xEE006E69616D6F44;
  if (v40 || (sub_1B256EB5C() & 1) != 0)
  {

    v41 = [v33 code];
    if ((v41 - 907) < 2)
    {
      goto LABEL_85;
    }

    if ((v41 - 1050) < 2)
    {
LABEL_104:
      sub_1B24E314C();
      a1 = OUTLINED_FUNCTION_5();
      v75 = 2;
      goto LABEL_105;
    }

    if (v41 == 505)
    {
      goto LABEL_85;
    }

    if (v41 == 511)
    {
      goto LABEL_34;
    }

    if (v41 != 512)
    {
      if (v41 == 537)
      {
        OUTLINED_FUNCTION_0_38();
        sub_1B2519E38(v79, v80);
        a1 = OUTLINED_FUNCTION_3_34();
        *v81 = v33;
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (v41 != 1054)
      {
        goto LABEL_19;
      }

      goto LABEL_85;
    }

LABEL_87:
    sub_1B24E314C();
    a1 = OUTLINED_FUNCTION_5();
    v75 = 1;
LABEL_105:
    *v74 = v75;
    goto LABEL_86;
  }

  v62 = v31 == 0xD000000000000014 && 0x80000001B2591750 == v115;
  if (v62 || (OUTLINED_FUNCTION_7_23() & 1) != 0 || ((OUTLINED_FUNCTION_5_28(), v66 = v65 + 5, v31 == v65 + 5) ? (v67 = v63 == v64) : (v67 = 0), v67 || (OUTLINED_FUNCTION_7_23() & 1) != 0 || ((OUTLINED_FUNCTION_5_28(), v31 == v70) ? (v71 = v68 == v69) : (v71 = 0), v71 || (OUTLINED_FUNCTION_7_23() & 1) != 0)))
  {

    v72 = sub_1B2529C10([v33 code]);
    if (v73)
    {
      goto LABEL_19;
    }

    switch(v72)
    {
      case 3900:
        sub_1B24E314C();
        a1 = OUTLINED_FUNCTION_5();
        v75 = 4;
        goto LABEL_105;
      case 3901:
        sub_1B24E314C();
        a1 = OUTLINED_FUNCTION_5();
        v75 = 5;
        goto LABEL_105;
      case 3902:
        sub_1B24E314C();
        a1 = OUTLINED_FUNCTION_5();
        v75 = 7;
        goto LABEL_105;
      case 3903:
        sub_1B24E314C();
        a1 = OUTLINED_FUNCTION_5();
        v75 = 6;
        goto LABEL_105;
      case 3904:
        sub_1B24E314C();
        a1 = OUTLINED_FUNCTION_5();
        v75 = 3;
        goto LABEL_105;
      default:
        if (v72 == 3504)
        {
          goto LABEL_87;
        }

        if (v72 != 3513)
        {
          goto LABEL_19;
        }

        sub_1B24E314C();
        a1 = OUTLINED_FUNCTION_5();
        *v82 = 0;
        break;
    }

    goto LABEL_86;
  }

  if (v31 != v66 || 0x80000001B25917B0 != v115)
  {
    v84 = OUTLINED_FUNCTION_7_23();
    v48 = v115;
    if ((v84 & 1) == 0)
    {
      goto LABEL_89;
    }
  }

  v85 = [v33 code];
  if (v85 == 1002)
  {
    goto LABEL_87;
  }

  if (v85 == 600)
  {
    goto LABEL_85;
  }

  while (1)
  {
LABEL_19:
    OUTLINED_FUNCTION_28_11();
    v35 = v118;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v35);
      v36 = v117;
      (*(v117 + 32))(v11, v8, v35);
      OUTLINED_FUNCTION_0_38();
      sub_1B2519E38(v37, v38);
      a1 = OUTLINED_FUNCTION_5();
      (*(v36 + 16))(v39, v11, v35);
      swift_storeEnumTagMultiPayload();

      (*(v36 + 8))(v11, v35);
      return a1;
    }

    __swift_storeEnumTagSinglePayload(v8, 1, 1, v35);
    sub_1B243E88C(v8, &qword_1EB7D0058);
    v46 = [v33 underlyingErrors];
    v47 = sub_1B256DC5C();

    v49 = *(v47 + 16);
    v8 = v119;
    v50 = v114;
    if (!v49)
    {
      break;
    }

    v31 = 0;
    while (v31 < *(v47 + 16))
    {
      v51 = *(v47 + 8 * v31 + 32);
      v52 = v51;
      v11 = parseError(_:)(v51);

      v121 = v11;
      v53 = v11;
      v8 = v119;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
        sub_1B2519D24(v5, v50);
        sub_1B2519D24(v50, v16);
        if (swift_getEnumCaseMultiPayload() != 2)
        {

          sub_1B2519D88(v16);
          return v11;
        }

        sub_1B2519D88(v16);
      }

      else
      {

        __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
        sub_1B243E88C(v5, &qword_1EB7D1E48);
      }

      if (v49 == ++v31)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_89:
    v90 = v48;
    if (sub_1B256D9BC() == v31 && v91 == v90)
    {

LABEL_96:

      v33 = v116;
      if (([v116 code] & 0xFFFFFFFFFFFFFF80) == 0x1000)
      {
        OUTLINED_FUNCTION_0_38();
        sub_1B2519E38(v94, v95);
        v96 = OUTLINED_FUNCTION_5();
        *v97 = a1;
        swift_storeEnumTagMultiPayload();
        v98 = a1;

        return v96;
      }
    }

    else
    {
      v93 = OUTLINED_FUNCTION_7_23();

      if (v93)
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_5_28();
      v101 = v31 == v100 + 1 && v99 == v115;
      if (v101 || (OUTLINED_FUNCTION_7_23() & 1) != 0)
      {

        v33 = v116;
        switch(sub_1B2529C00([v116 code]))
        {
          case 1u:
          case 2u:
          case 3u:
          case 0xBu:
            goto LABEL_85;
          case 5u:
            goto LABEL_104;
          default:
            continue;
        }
      }

      OUTLINED_FUNCTION_5_28();
      if (v31 == v103 + 13 && v102 == v115)
      {

        v33 = v116;
LABEL_114:
        v106 = [v33 code];
        v107 = v33;
        v108 = [v33 localizedDescription];
        v109 = sub_1B256D9BC();
        v111 = v110;

        sub_1B2519DE4();
        a1 = OUTLINED_FUNCTION_5();
        *v112 = v106;
        v112[1] = v109;
        v112[2] = v111;
        return a1;
      }

      v105 = sub_1B256EB5C();

      v33 = v116;
      if (v105)
      {
        goto LABEL_114;
      }
    }
  }

LABEL_45:

  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v54, qword_1ED69A108);
  v121 = 0;
  v122 = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD000000000000042, 0x80000001B2591820);
  v120 = a1;
  OUTLINED_FUNCTION_17_14();
  sub_1B256E78C();
  v56 = v121;
  v55 = v122;
  v57 = sub_1B256E0AC();

  v58 = sub_1B256D5CC();

  if (os_log_type_enabled(v58, v57))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v121 = v60;
    *v59 = 136446466;
    *(v59 + 4) = sub_1B2519814(0, 0xE000000000000000, &v121);
    *(v59 + 12) = 2082;
    v61 = sub_1B2519814(v56, v55, &v121);

    *(v59 + 14) = v61;
    _os_log_impl(&dword_1B23EF000, v58, v57, "%{public}s%{public}s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v60, -1, -1);
    MEMORY[0x1B274BFF0](v59, -1, -1);
  }

  else
  {
  }

  v76 = v116;
  OUTLINED_FUNCTION_0_38();
  sub_1B2519E38(v77, v78);
  a1 = OUTLINED_FUNCTION_5();
  swift_storeEnumTagMultiPayload();

  return a1;
}