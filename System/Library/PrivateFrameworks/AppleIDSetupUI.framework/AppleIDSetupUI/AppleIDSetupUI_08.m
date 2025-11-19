unint64_t sub_2409F3EC4()
{
  result = qword_27E50EBA0;
  if (!qword_27E50EBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EAA8, &qword_240A37CE8);
    sub_2409F3828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EBA0);
  }

  return result;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409F3F78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240A2B4BC();
  *a1 = result;
  return result;
}

uint64_t sub_2409F3FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2409F4030(void *a1)
{
  v3 = *(type metadata accessor for PairingView() - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2409F0E50(a1, v5, v1 + v4, v6);
}

uint64_t sub_2409F40D0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PairingView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + v7);
  v9 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_2409F1030(a1, a2, v2 + v6, v8, v9);
}

uint64_t objectdestroy_3Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  v2 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_28Tm()
{
  v1 = (type metadata accessor for PairingView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58) + 32);
  v9 = sub_240A29EFC();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_240A29DBC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v13);

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v2 | 7);
}

uint64_t sub_2409F435C()
{
  v1 = *(type metadata accessor for PairingView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_2409F2794(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2409F43DC(char a1, uint64_t a2, unint64_t a3)
{
  v7 = *(type metadata accessor for PairingView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_2409F1678(a1, a2, a3, v8);
}

uint64_t sub_2409F4464(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_240A2C0BC();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_2409F4514(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for PairingView() - 8) + 80);

  return sub_2409F126C(a1, a2);
}

uint64_t objectdestroy_35Tm()
{
  v1 = (type metadata accessor for PairingView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58) + 32);
  v9 = sub_240A29EFC();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_240A29DBC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409F4710()
{
  v0 = *(*(type metadata accessor for PairingView() - 8) + 80);

  return sub_2409F1488();
}

unint64_t sub_2409F477C()
{
  result = qword_27E50EC00;
  if (!qword_27E50EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EC00);
  }

  return result;
}

unint64_t sub_2409F47D0()
{
  result = qword_27E50EC10;
  if (!qword_27E50EC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EC08, &qword_240A37DC0);
    sub_240946F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EC10);
  }

  return result;
}

unint64_t sub_2409F485C()
{
  result = qword_27E50EC18;
  if (!qword_27E50EC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EBF8, &qword_240A37DB8);
    sub_2409F4914();
    sub_24091CE28(&qword_27E50B838, &qword_27E50B7A8, &qword_240A311F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EC18);
  }

  return result;
}

unint64_t sub_2409F4914()
{
  result = qword_27E50EC20;
  if (!qword_27E50EC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EC28, &qword_240A37DC8);
    sub_2409F49CC();
    sub_24091CE28(&qword_27E50B8E8, &qword_27E50B790, &qword_240A311E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EC20);
  }

  return result;
}

unint64_t sub_2409F49CC()
{
  result = qword_27E50EC30;
  if (!qword_27E50EC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EC38, &qword_240A37DD0);
    sub_24091CE28(&qword_27E50EC40, &qword_27E50EC48, &qword_240A37DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EC30);
  }

  return result;
}

uint64_t sub_2409F4A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2409F4ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409F4B34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2409F4B94()
{
  result = qword_27E50EC98;
  if (!qword_27E50EC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EC60, &qword_240A37DE8);
    sub_240940614();
    sub_24091CE28(&qword_27E50ECA0, &qword_27E50EC90, &qword_240A37E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EC98);
  }

  return result;
}

uint64_t sub_2409F4C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C248, &qword_240A32308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2409F4CBC()
{
  result = qword_27E50ECB0;
  if (!qword_27E50ECB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50ECB8, &qword_240A37E58);
    sub_2409F38D8();
    sub_2409F3EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50ECB0);
  }

  return result;
}

uint64_t sub_2409F4DC0(uint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  v5 = sub_240A2B00C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_28528EAE0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_240A2AE9C();

    v11 = sub_240A2AFFC();
    v12 = sub_240A2C2BC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v3;
      v29 = v27;
      *v13 = 136315138;

      v14 = sub_240A2BF9C();
      v16 = sub_240925464(v14, v15, &v29);
      v26 = v11;
      v17 = v12;
      v18 = a1;
      v19 = v16;

      *(v13 + 4) = v19;
      a1 = v18;
      v20 = v26;
      _os_log_impl(&dword_2408FE000, v26, v17, "%s delegate is nil in setFinished", v13, 0xCu);
      v21 = v27;
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x245CCDDB0](v21, -1, -1);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v10, v5);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = v3[3];
    ObjectType = swift_getObjectType();
    (*(v23 + 40))(v3, a1, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t AISFlowStepAIDASignInError.hashValue.getter()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

unint64_t sub_2409F50F8()
{
  result = qword_27E50ECC0;
  if (!qword_27E50ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50ECC0);
  }

  return result;
}

uint64_t sub_2409F515C()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2409F5208;

  return sub_2409F5344();
}

uint64_t sub_2409F5208()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_24097BC50, v5, v4);
}

uint64_t sub_2409F5344()
{
  v1[13] = v0;
  v2 = sub_240A2B00C();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  sub_240A2C21C();
  v1[17] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v1[18] = v6;
  v1[19] = v5;

  return MEMORY[0x2822009F8](sub_2409F5438, v6, v5);
}

uint64_t sub_2409F5438()
{
  v43 = v0;
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_childAuthResponse;
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_childAuthResponse);
  v4 = sub_240A2ABFC();

  v5 = *MEMORY[0x277CEC698];
  v6 = sub_240A2BF4C();
  v8 = v7;
  v9 = *MEMORY[0x277CEFF40];
  type metadata accessor for AKAppleIDAuthenticationAppProvidedContext(0);
  *(v0 + 16) = v9;
  *(v0 + 40) = v10;
  sub_24091C780((v0 + 16), (v0 + 48));
  v11 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v4;
  sub_2409F6038((v0 + 48), v6, v8, isUniquelyReferenced_nonNull_native);

  v13 = objc_allocWithZone(sub_240A2AC6C());
  v14 = sub_240A2ABDC();
  v15 = *(v1 + v2);
  *(v1 + v2) = v14;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v17 = *(*(v0 + 104) + 24);
    ObjectType = swift_getObjectType();
    v19 = *(v1 + v2);
    sub_240A2ABFC();

    v20 = sub_240A2BE9C();
    *(v0 + 168) = v20;

    v21 = *(v17 + 32);
    v41 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v23[1] = sub_2409F5824;

    return v41(v20, ObjectType, v17);
  }

  else
  {
    v25 = *(v0 + 136);

    v26 = *(v0 + 128);
    sub_240A2AE9C();
    v27 = sub_240A2AFFC();
    v28 = sub_240A2C29C();
    v29 = os_log_type_enabled(v27, v28);
    v31 = *(v0 + 120);
    v30 = *(v0 + 128);
    v32 = *(v0 + 112);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42 = v34;
      *v33 = 136315138;
      *(v0 + 184) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ECE8, &unk_240A37F78);
      v35 = sub_240A2BF9C();
      v37 = sub_240925464(v35, v36, &v42);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2408FE000, v27, v28, "Done AIDA sign-in with result %s.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x245CCDDB0](v34, -1, -1);
      MEMORY[0x245CCDDB0](v33, -1, -1);
    }

    (*(v31 + 8))(v30, v32);
    v38 = *(v0 + 128);
    v39 = *(v0 + 104);
    sub_2409F4DC0(&off_285292198);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_2409F5824(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 185) = a1;

  swift_unknownObjectRelease();

  v6 = *(v2 + 152);
  v7 = *(v2 + 144);

  return MEMORY[0x2822009F8](sub_2409F5988, v7, v6);
}

uint64_t sub_2409F5988()
{
  v22 = v0;
  v1 = *(v0 + 185);
  v2 = *(v0 + 136);

  v3 = *(v0 + 128);
  sub_240A2AE9C();
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    *(v0 + 184) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ECE8, &unk_240A37F78);
    v11 = sub_240A2BF9C();
    v13 = sub_240925464(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2408FE000, v4, v5, "Done AIDA sign-in with result %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245CCDDB0](v10, -1, -1);
    MEMORY[0x245CCDDB0](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 128);
  v18 = *(v0 + 104);
  sub_2409F4DC0(&off_285292198);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2409F5B60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_settings) + 16);
  v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5 == 2)
  {
    v6 = MEMORY[0x277CEDAD8];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = MEMORY[0x277CEDAE0];
LABEL_5:
    v7 = *v6;
    v8 = sub_240A2A4AC();
    v9 = *(v8 - 8);
    (*(v9 + 104))(a1, v7, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  v11 = sub_240A2A4AC();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

uint64_t sub_2409F5CBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_guardianAuthResponse);
  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_childAuthResponse);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_settings);
  v4 = objc_allocWithZone(sub_240A2983C());
  v5 = v1;
  v6 = v2;

  v7 = [v4 init];
  v8 = type metadata accessor for AISFlowStepLocationSetup();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_locationServicesEnabled) = 0;
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_guardianAuthResponse) = v5;
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_childAuthResponse) = v6;
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_settings) = v3;
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_stepLoadTask) = v7;
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_240A2B0DC();
  *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v11;
}

uint64_t sub_2409F5E08()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_settings);
}

uint64_t sub_2409F5E58()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_guardianAuthResponse);

  v5 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_settings);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for AISFlowStepAIDASignIn()
{
  result = qword_27E50ECD8;
  if (!qword_27E50ECD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_UNKNOWN **sub_2409F600C()
{
  result = sub_2409F5CBC();
  if (v0)
  {
    return &protocol witness table for AISFlowStepBase;
  }

  return result;
}

_OWORD *sub_2409F6038(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_240925A1C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2409389C0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_240937D00(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_240925A1C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_240A2C68C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_24091C780(a1, v23);
  }

  else
  {
    sub_2409F6654(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_2409F6188(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_240925A1C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_240937FB8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_240925A1C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_240A2C68C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_240938B64();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_2409F6304(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_240A299DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_240925B68(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_240938CD4();
      goto LABEL_7;
    }

    sub_240938260(v19, a3 & 1);
    v30 = *v4;
    v31 = sub_240925B68(a2);
    if ((v20 & 1) == (v32 & 1))
    {
      v16 = v31;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_2409F66C0(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_240A2C68C();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = sub_240A2995C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 40);
  v27 = v24;
  v28 = v23 + *(v25 + 72) * v16;

  return v26(v28, a1, v27);
}

_OWORD *sub_2409F6508(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_240925A94(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_240939028();
      goto LABEL_7;
    }

    sub_240938708(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_240925A94(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24092702C(a2, v22);
      return sub_2409F67B4(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_240A2C68C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_24091C780(a1, v17);
}

_OWORD *sub_2409F6654(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24091C780(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2409F66C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_240A299DC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_240A2995C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_2409F67B4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_24091C780(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_2409F6830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_2409FC880(a3, v25 - v11);
  v13 = sub_240A2C24C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_240919300(v12, &unk_27E50B420, &qword_240A30800);
  }

  else
  {
    sub_240A2C23C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_240A2C1BC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_240A2BFBC() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_240919300(a3, &unk_27E50B420, &qword_240A30800);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_240919300(a3, &unk_27E50B420, &qword_240A30800);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2409F6ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_2409FC880(a3, v25 - v11);
  v13 = sub_240A2C24C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_240919300(v12, &unk_27E50B420, &qword_240A30800);
  }

  else
  {
    sub_240A2C23C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_240A2C1BC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a2;
      v21 = sub_240A2BFBC() + 32;
      sub_240A2ADCC();

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_240919300(a3, &unk_27E50B420, &qword_240A30800);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_240919300(a3, &unk_27E50B420, &qword_240A30800);
  sub_240A2ADCC();
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t AISChildSetupPresenter.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AISChildSetupPresenter.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___AISChildSetupPresenter_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_240966580;
}

uint64_t AISChildSetupPresenter.currentStepLoadTask.getter()
{
  if (!*(v0 + OBJC_IVAR___AISChildSetupPresenter_currentStep))
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = *(result + 16);
    v4 = result;
    swift_unknownObjectRetain();
    v5 = v3(ObjectType, v4);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

id AISChildSetupPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISChildSetupPresenter.init()()
{
  ObjectType = swift_getObjectType();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v28 - v3;
  v30 = swift_getObjectType();
  v5 = [objc_allocWithZone(sub_240A2AA0C()) init];
  v6 = sub_240A29B7C();
  v7 = sub_240A29B6C();
  v8 = sub_240A2AE4C();

  v9 = sub_240A2AE3C();
  v10 = sub_240A2A9FC();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = sub_240A2A9EC();
  v14 = sub_240A2AD3C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = sub_240A2AD2C();
  v34[3] = v6;
  v34[4] = MEMORY[0x277CED510];
  v34[0] = v7;
  v33[3] = v8;
  v33[4] = MEMORY[0x277CEDDE0];
  v33[0] = v9;
  v32[3] = v10;
  v32[4] = MEMORY[0x277CEDCC0];
  v32[0] = v13;
  v18 = ObjectType;
  v19 = objc_allocWithZone(ObjectType);
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR___AISChildSetupPresenter_presentationHandler] = 0;
  *&v19[OBJC_IVAR___AISChildSetupPresenter_settings] = 0;
  v20 = &v19[OBJC_IVAR___AISChildSetupPresenter_currentStep];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v19[OBJC_IVAR___AISChildSetupPresenter_childSetupStore] = v5;
  sub_240919A14(v34, &v19[OBJC_IVAR___AISChildSetupPresenter_analytics]);
  sub_240919A14(v33, &v19[OBJC_IVAR___AISChildSetupPresenter_biome]);
  *&v19[OBJC_IVAR___AISChildSetupPresenter_childSetupAnalyticsEvent] = v17;
  sub_240919A14(v32, &v19[OBJC_IVAR___AISChildSetupPresenter_familyCircleProvider]);
  v21 = v5;

  sub_240A2C22C();
  v22 = sub_240A2C24C();
  (*(*(v22 - 8) + 56))(v4, 0, 1, v22);
  sub_240A2C21C();
  v23 = sub_240A2C20C();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v21;
  sub_2409F6ACC(0, 0, v4, &unk_240A37F98, v24);

  v31.receiver = v19;
  v31.super_class = v18;
  v26 = objc_msgSendSuper2(&v31, sel_init);

  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v34);

  swift_deallocPartialClassInstance();
  return v26;
}

uint64_t sub_2409F7448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a4;
  sub_240A2C21C();
  v4[21] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v4[22] = v6;
  v4[23] = v5;

  return MEMORY[0x2822009F8](sub_2409F74E0, v6, v5);
}

uint64_t sub_2409F74E0()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2409F75FC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50EDD0, &qword_240A38170);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2409F78C4;
  v0[13] = &block_descriptor_53;
  v0[14] = v2;
  [v1 fetchMaxAgeForChildAccountWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2409F75FC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_2409F779C;
  }

  else
  {
    v6 = sub_2409F772C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2409F772C()
{
  v1 = v0[21];
  v2 = v0[19];

  *v2 = v0[18];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2409F779C()
{
  v1 = v0[24];
  v2 = v0[21];

  swift_willThrow();
  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_2409F7810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_2409F7448(a1, v4, v5, v6);
}

uint64_t sub_2409F78C4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

id AISChildSetupPresenter.startFlow(withViewControllerPresentationHandler:)(void *a1)
{
  swift_getObjectType();

  return sub_2409FC588(a1, v1);
}

id sub_2409F79DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v32[-v5];
  if (*&v0[OBJC_IVAR___AISChildSetupPresenter_settings])
  {
    v7 = *&v0[OBJC_IVAR___AISChildSetupPresenter_settings];
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for AISAppleIDSignInConfiguration()) init];
    type metadata accessor for AISSignInSettings();
    v7 = swift_allocObject();
    v7[2] = v8;
    v7[3] = nullsub_1;
    v7[4] = 0;
    v7[5] = 0;
    v7[6] = 0;
    v9 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
    swift_beginAccess();
    *&v8[v9] = 1;
  }

  v10 = *&v1[OBJC_IVAR___AISChildSetupPresenter_childSetupStore];

  v11 = [v10 cachedChildCutOffResponse];
  if (v11)
  {
    v12 = sub_240A2ADBC();
  }

  else
  {
    v12 = 0;
  }

  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v14 = result;
    v15 = v11 == 0;
    v34[3] = sub_2409194E8(0, &unk_27E50DD80, 0x277CF02F0);
    v34[4] = MEMORY[0x277CEDE68];
    v34[0] = v14;
    v16 = [objc_opt_self() sharedNetworkObserver];
    v33[3] = sub_2409194E8(0, &qword_27E50EE10, 0x277CF0278);
    v33[4] = MEMORY[0x277CEDE58];
    v33[0] = v16;
    v17 = [objc_opt_self() sharedInstance];
    v18 = type metadata accessor for AISFlowStepParentSignIn();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    *(v21 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_guardianAuthResponse) = 0;
    *(v21 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_hideCreationAndForgotPasswordButton) = 0;
    v22 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn__peerDeviceClass;
    *(v21 + v22) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    *(v21 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_settings) = v7;
    v23 = v21 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_childCutOffAge;
    *v23 = v12;
    *(v23 + 8) = v15;
    sub_240919A14(v33, v21 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_internetReachabilityProvider);
    sub_240919A14(v34, v21 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_urlBag);
    *(v21 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_accountManager) = v17;
    *(v21 + 24) = 0;
    swift_unknownObjectWeakInit();
    v32[7] = 0;

    sub_240A2B0DC();
    __swift_destroy_boxed_opaque_existential_0(v33);
    __swift_destroy_boxed_opaque_existential_0(v34);
    *(v21 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
    v24 = OBJC_IVAR___AISChildSetupPresenter_childSetupAnalyticsEvent;
    v25 = *&v1[OBJC_IVAR___AISChildSetupPresenter_childSetupAnalyticsEvent];
    v26 = v7[2];
    v27 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
    swift_beginAccess();
    v28 = *(v26 + v27);

    sub_240A2AD0C();

    v29 = *&v1[v24];

    sub_240A2961C();
    v30 = sub_240A2962C();
    (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
    sub_240A2AD1C();

    sub_2409FBC9C(v31, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AISChildSetupPresenter.present(step:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2409FC128(a1, v2, ObjectType, a2);
}

uint64_t sub_2409F7ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v8 = sub_240A2B00C();
  v7[21] = v8;
  v9 = *(v8 - 8);
  v7[22] = v9;
  v10 = *(v9 + 64) + 15;
  v7[23] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EDB0, &qword_240A38150) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v12 = sub_240A2A4AC();
  v7[26] = v12;
  v13 = *(v12 - 8);
  v7[27] = v13;
  v14 = *(v13 + 64) + 15;
  v7[28] = swift_task_alloc();
  sub_240A2C21C();
  v7[29] = sub_240A2C20C();
  v16 = sub_240A2C1BC();
  v7[30] = v16;
  v7[31] = v15;

  return MEMORY[0x2822009F8](sub_2409F8068, v16, v15);
}

uint64_t sub_2409F8068()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[17];
  v5 = v0[18];
  ObjectType = swift_getObjectType();
  (*(v5 + 56))(ObjectType, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_240919300(v0[25], &qword_27E50EDB0, &qword_240A38150);
  }

  else
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    v10 = v0[24];
    v11 = v0[19];
    (*(v8 + 32))(v7, v0[25], v9);
    v12 = *(v11 + OBJC_IVAR___AISChildSetupPresenter_childSetupAnalyticsEvent);
    (*(v8 + 16))(v10, v7, v9);
    (*(v8 + 56))(v10, 0, 1, v9);

    sub_240A2ACCC();

    (*(v8 + 8))(v7, v9);
  }

  v18 = (v0[18] + 88);
  v19 = (*v18 + **v18);
  v13 = (*v18)[1];
  v14 = swift_task_alloc();
  v0[32] = v14;
  *v14 = v0;
  v14[1] = sub_2409F82AC;
  v16 = v0[17];
  v15 = v0[18];

  return v19(ObjectType, v15);
}

uint64_t sub_2409F82AC()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_2409F87EC;
  }

  else
  {
    v7 = sub_2409F83E8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2409F83E8()
{
  *(v0 + 112) = *(v0 + 136);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC30, &qword_240A33CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EDB8, &qword_240A38158);
  if (swift_dynamicCast())
  {
    sub_24090C218((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
    v3 = *(v2 + 8);
    v14 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 272) = v5;
    *v5 = v0;
    v5[1] = sub_2409F8618;
    v6 = *(v0 + 160);

    return v14(v6, v1, v2);
  }

  else
  {
    v8 = *(v0 + 232);

    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_240919300(v0 + 56, &unk_27E50EDC0, &qword_240A38160);
    v9 = *(v0 + 224);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 184);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_2409F8618()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_2409F8AD0;
  }

  else
  {
    v7 = sub_2409F8754;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2409F8754()
{
  v1 = v0[29];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2409F87EC()
{
  v35 = v0;
  v1 = *(v0 + 232);

  v2 = *(v0 + 264);
  v3 = *(v0 + 136);
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    ObjectType = swift_getObjectType();
    [(*(v6 + 16))(ObjectType v6)];
    swift_unknownObjectRelease();
    v8 = *(v0 + 136);
  }

  v9 = *(v0 + 184);
  sub_240A2AE9C();
  swift_unknownObjectRetain();
  v10 = v2;
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C2AC();
  swift_unknownObjectRelease();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 176);
  v15 = *(v0 + 184);
  v16 = *(v0 + 168);
  if (v13)
  {
    v32 = *(v0 + 136);
    v33 = *(v0 + 184);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136315394;
    *(v0 + 96) = v32;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC30, &qword_240A33CE0);
    v19 = sub_240A2BF9C();
    v21 = sub_240925464(v19, v20, &v34);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v0 + 128) = v2;
    v22 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v23 = sub_240A2BF9C();
    v25 = sub_240925464(v23, v24, &v34);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_2408FE000, v11, v12, "AISChildSetupPresenter did not present step %s.\n%s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v18, -1, -1);
    MEMORY[0x245CCDDB0](v17, -1, -1);

    (*(v14 + 8))(v33, v16);
  }

  else
  {

    (*(v14 + 8))(v15, v16);
  }

  v26 = *(v0 + 224);
  v27 = *(v0 + 192);
  v28 = *(v0 + 200);
  v29 = *(v0 + 184);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2409F8AD0()
{
  v35 = v0;
  v1 = *(v0 + 232);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = *(v0 + 280);
  v3 = *(v0 + 136);
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    ObjectType = swift_getObjectType();
    [(*(v6 + 16))(ObjectType v6)];
    swift_unknownObjectRelease();
    v8 = *(v0 + 136);
  }

  v9 = *(v0 + 184);
  sub_240A2AE9C();
  swift_unknownObjectRetain();
  v10 = v2;
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C2AC();
  swift_unknownObjectRelease();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 176);
  v15 = *(v0 + 184);
  v16 = *(v0 + 168);
  if (v13)
  {
    v32 = *(v0 + 136);
    v33 = *(v0 + 184);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136315394;
    *(v0 + 96) = v32;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC30, &qword_240A33CE0);
    v19 = sub_240A2BF9C();
    v21 = sub_240925464(v19, v20, &v34);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v0 + 128) = v2;
    v22 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v23 = sub_240A2BF9C();
    v25 = sub_240925464(v23, v24, &v34);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_2408FE000, v11, v12, "AISChildSetupPresenter did not present step %s.\n%s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v18, -1, -1);
    MEMORY[0x245CCDDB0](v17, -1, -1);

    (*(v14 + 8))(v33, v16);
  }

  else
  {

    (*(v14 + 8))(v15, v16);
  }

  v26 = *(v0 + 224);
  v27 = *(v0 + 192);
  v28 = *(v0 + 200);
  v29 = *(v0 + 184);

  v30 = *(v0 + 8);

  return v30();
}

id AISChildSetupPresenter.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_240A2B00C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C29C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2408FE000, v9, v10, "AISChildSetupPresenter deinit", v11, 2u);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  (*(v4 + 8))(v8, v3);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t AISChildSetupPresenter.setupPasscode(for:nextTaskInfo:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_240A2B00C();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  sub_240A2C21C();
  v3[29] = sub_240A2C20C();
  v8 = sub_240A2C1BC();
  v3[30] = v8;
  v3[31] = v7;

  return MEMORY[0x2822009F8](sub_2409F90FC, v8, v7);
}

uint64_t sub_2409F90FC()
{
  v1 = v0[28];
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "AISChildSetupPresenter setupPasscode", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[24];

  v9 = *(v7 + 8);
  v9(v5, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v11 = Strong;
    v13 = v0[22];
    v12 = v0[23];
    v0[2] = v0;
    v0[7] = v0 + 33;
    v0[3] = sub_2409F93E8;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2409F972C;
    v0[13] = &block_descriptor_25;
    v0[14] = v14;
    [v11 setupPasscodeForAccount:v13 nextTaskInfo:v12 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v15 = v0[29];
    v16 = v0[27];

    sub_240A2AE9C();
    v17 = sub_240A2AFFC();
    v18 = sub_240A2C2BC();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[26];
    v20 = v0[27];
    v22 = v0[25];
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2408FE000, v17, v18, "AISChildSetupPresenter delegate is nil in setupPasscode", v23, 2u);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    v9(v20, v22);
    v25 = v0[27];
    v24 = v0[28];

    v26 = v0[1];

    return v26(0);
  }
}

uint64_t sub_2409F93E8()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2409F94F0, v2, v1);
}

uint64_t sub_2409F94F0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);

  v3 = *(v0 + 264);
  v4 = *(v2 + OBJC_IVAR___AISChildSetupPresenter_presentationHandler);
  if (v4 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v5 = *(v0 + 184);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    type metadata accessor for AISNavigationPushMonitor();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[3] = 0;
    swift_unknownObjectWeakAssign();
    v7[4] = sub_2409FC74C;
    v7[5] = v6;
    *(swift_allocObject() + 16) = v7;
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = *(v0 + 184);
    if (Strong)
    {
      *(v0 + 168) = Strong;
      v10 = Strong;
      swift_getKeyPath();
      swift_unknownObjectRetain();

      v11 = v4;

      v12 = sub_240A2955C();
    }

    else
    {
      v14 = *(v0 + 184);
      swift_unknownObjectRetain();

      v12 = 0;
    }

    v15 = *(v0 + 256);
    v16 = v7[3];
    v7[3] = v12;

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = *(v0 + 256);
    swift_unknownObjectRelease();
  }

  v18 = *(v0 + 216);
  v17 = *(v0 + 224);

  v19 = *(v0 + 8);

  return v19(v3);
}

uint64_t sub_2409F972C(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t AISChildSetupPresenter.setupLocationServices(nextTaskInfo:)(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_240A2B00C();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_240A2C21C();
  v2[28] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v2[29] = v7;
  v2[30] = v6;

  return MEMORY[0x2822009F8](sub_2409F9888, v7, v6);
}

uint64_t sub_2409F9888()
{
  v1 = v0[27];
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "AISChildSetupPresenter setupLocationServices", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[23];

  v9 = *(v7 + 8);
  v9(v5, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[31] = Strong;
  if (Strong)
  {
    v11 = Strong;
    v12 = v0[22];
    v0[2] = v0;
    v0[7] = v0 + 32;
    v0[3] = sub_2409F9B70;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2409F972C;
    v0[13] = &block_descriptor_10_0;
    v0[14] = v13;
    [v11 setupLocationServicesWithNextTaskInfo:v12 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v14 = v0[28];
    v15 = v0[26];

    sub_240A2AE9C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C2BC();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[25];
    v19 = v0[26];
    v21 = v0[24];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "AISChildSetupPresenter delegate is nil in setupLocationServices", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    v9(v19, v21);
    v24 = v0[26];
    v23 = v0[27];

    v25 = v0[1];

    return v25(0);
  }
}

uint64_t sub_2409F9B70()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2409F9C78, v2, v1);
}

uint64_t sub_2409F9C78()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);

  v3 = *(v0 + 256);
  v4 = *(v2 + OBJC_IVAR___AISChildSetupPresenter_presentationHandler);
  if (v4 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v5 = *(v0 + 176);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    type metadata accessor for AISNavigationPushMonitor();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[3] = 0;
    swift_unknownObjectWeakAssign();
    v7[4] = sub_2409FCA2C;
    v7[5] = v6;
    *(swift_allocObject() + 16) = v7;
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = *(v0 + 176);
    if (Strong)
    {
      *(v0 + 168) = Strong;
      v10 = Strong;
      swift_getKeyPath();
      swift_unknownObjectRetain();

      v11 = v4;

      v12 = sub_240A2955C();
    }

    else
    {
      v14 = *(v0 + 176);
      swift_unknownObjectRetain();

      v12 = 0;
    }

    v15 = *(v0 + 248);
    v16 = v7[3];
    v7[3] = v12;

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = *(v0 + 248);
    swift_unknownObjectRelease();
  }

  v18 = *(v0 + 208);
  v17 = *(v0 + 216);

  v19 = *(v0 + 8);

  return v19(v3);
}

uint64_t AISChildSetupPresenter.setupPerformAIDASignIn(with:)(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_240A2B00C();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_240A2C21C();
  v2[27] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v2[28] = v7;
  v2[29] = v6;

  return MEMORY[0x2822009F8](sub_2409F9FB4, v7, v6);
}

uint64_t sub_2409F9FB4()
{
  v1 = v0[26];
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "AISChildSetupPresenter performAIDASignIn", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];

  v9 = *(v7 + 8);
  v9(v5, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[30] = Strong;
  if (Strong)
  {
    v11 = Strong;
    v12 = v0[21];
    v0[2] = v0;
    v0[7] = v0 + 31;
    v0[3] = sub_2409FA29C;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2409F972C;
    v0[13] = &block_descriptor_18;
    v0[14] = v13;
    [v11 setupPerformAIDASignInWith:v12 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v14 = v0[27];
    v15 = v0[25];

    sub_240A2AE9C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C2BC();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "AISChildSetupPresenter delegate is nil in performAIDASignIn", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    v9(v19, v21);
    v24 = v0[25];
    v23 = v0[26];

    v25 = v0[1];

    return v25(0);
  }
}

uint64_t sub_2409FA29C()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2409FA3A4, v2, v1);
}

uint64_t sub_2409FA3A4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);

  swift_unknownObjectRelease();
  v3 = *(v0 + 248);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);

  v6 = *(v0 + 8);

  return v6(v3);
}

uint64_t AISChildSetupPresenter.stepDidFinish(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v42 = &v40 - v7;
  v8 = sub_240A2B00C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v40 - v14;
  sub_240A2AE9C();
  swift_unknownObjectRetain();
  v16 = sub_240A2AFFC();
  v17 = sub_240A2C2CC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = v8;
    v19 = v18;
    v40 = swift_slowAlloc();
    v47 = a2;
    v48 = v40;
    *v19 = 136315138;
    v46 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED48, &qword_240A38000);
    v20 = sub_240A2BF9C();
    v22 = sub_240925464(v20, v21, &v48);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_2408FE000, v16, v17, "AISChildSetupFlowController stepDidFinish %s", v19, 0xCu);
    v23 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x245CCDDB0](v23, -1, -1);
    v24 = v19;
    v8 = v41;
    MEMORY[0x245CCDDB0](v24, -1, -1);
  }

  (*(v9 + 8))(v15, v8);
  ObjectType = swift_getObjectType();
  v26 = (*(a2 + 16))(ObjectType, a2);
  v28 = v27;
  swift_getObjectType();
  v29 = swift_conformsToProtocol2();
  if (v29 && a1)
  {
    v30 = v29;
    v31 = swift_getObjectType();
    v32 = *(v30 + 16);
    swift_unknownObjectRetain();
    v33 = v32(v31, v30);
  }

  else
  {
    swift_unknownObjectRetain();
    v33 = 0;
  }

  swift_getObjectType();
  v34 = swift_conformsToProtocol2();
  if (v34 && v26)
  {
    if (v33)
    {
      v35 = v34;
      swift_getObjectType();
      v36 = swift_getObjectType();
      v37 = *(v35 + 16);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v37(v36, v35);
      sub_240A2ADDC();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  else if (v33)
  {
    [v33 complete];
  }

  v38 = swift_getObjectType();
  sub_2409FC128(v26, v45, v38, v28);
  swift_unknownObjectRelease_n();
  return swift_unknownObjectRelease();
}

uint64_t AISChildSetupPresenter.stepDidEndFlow(with:)(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v3 = sub_240A2B00C();
  v2[40] = v3;
  v4 = *(v3 - 8);
  v2[41] = v4;
  v5 = *(v4 + 64) + 15;
  v2[42] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20) - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = sub_240A2C21C();
  v2[46] = sub_240A2C20C();
  v9 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409FABA0, v9, v8);
}

uint64_t sub_2409FABA0()
{
  v57 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);

  v4 = OBJC_IVAR___AISChildSetupPresenter_childSetupAnalyticsEvent;
  v5 = *(v3 + OBJC_IVAR___AISChildSetupPresenter_childSetupAnalyticsEvent);

  v6 = sub_240A2AB1C();
  if (v6)
  {
  }

  v7 = *(v0 + 352);
  v8 = *(v0 + 336);
  v9 = *(v0 + 344);
  v10 = *(v0 + 312);
  v52 = *(v0 + 360);
  v54 = *(v0 + 304);
  sub_240A2AC9C();

  v11 = *(v3 + v4);

  sub_240A2961C();
  v12 = sub_240A2962C();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  sub_240A2ACEC();

  sub_240919A14(v10 + OBJC_IVAR___AISChildSetupPresenter_analytics, v0 + 16);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v14 = *(v3 + v4);
  v15 = sub_240A2AD3C();
  v16 = MEMORY[0x277CEDD40];
  *(v0 + 80) = v15;
  *(v0 + 88) = v16;
  *(v0 + 56) = v14;

  sub_240A2A9CC();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v17 = sub_240A2C24C();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_240919A14(v10 + OBJC_IVAR___AISChildSetupPresenter_biome, v0 + 96);
  sub_240919A14(v10 + OBJC_IVAR___AISChildSetupPresenter_familyCircleProvider, v0 + 136);
  v18 = *(v3 + v4);
  sub_240919A14(v0 + 96, v0 + 176);
  sub_240919A14(v0 + 136, v0 + 216);

  v19 = sub_240A2C20C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  sub_24090C218((v0 + 176), (v20 + 4));
  v20[9] = v18;
  sub_24090C218((v0 + 216), (v20 + 10));
  sub_2409230D4(0, 0, v9, &unk_240A38020, v20);

  sub_240A2AE9C();
  v22 = v54;
  v23 = sub_240A2AFFC();
  v24 = sub_240A2C2CC();

  v25 = os_log_type_enabled(v23, v24);
  v27 = *(v0 + 328);
  v26 = *(v0 + 336);
  v28 = *(v0 + 320);
  if (v25)
  {
    v55 = *(v0 + 336);
    v29 = *(v0 + 304);
    v53 = *(v0 + 320);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v56 = v31;
    *v30 = 136315138;
    v32 = v29;
    v33 = [v32 description];
    v34 = sub_240A2BF4C();
    v36 = v35;

    v37 = sub_240925464(v34, v36, &v56);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_2408FE000, v23, v24, "AISChildSetupPresenter stepDidEndFlow with result\n%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x245CCDDB0](v31, -1, -1);
    MEMORY[0x245CCDDB0](v30, -1, -1);

    (*(v27 + 8))(v55, v53);
  }

  else
  {

    (*(v27 + 8))(v26, v28);
  }

  v38 = *(v0 + 304);
  v39 = sub_240A2AB1C();
  v40 = *(v0 + 312);
  if (v39)
  {
    v41 = v39;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v43 = Strong;
      v44 = *(v0 + 312);
      v45 = sub_240A2952C();
      [v43 childSetupPresenter:v44 didFail:v45];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v46 = swift_unknownObjectWeakLoadStrong();
    if (v46)
    {
      [v46 childSetupPresenter:*(v0 + 312) didCompleteWithResult:*(v0 + 304)];
      swift_unknownObjectRelease();
    }
  }

  v48 = *(v0 + 344);
  v47 = *(v0 + 352);
  v49 = *(v0 + 336);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_2409FB090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_240A2C21C();
  v6[5] = sub_240A2C20C();
  v8 = sub_240A2C1BC();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_2409FB12C, v8, v7);
}

uint64_t sub_2409FB12C()
{
  v1 = v0[2];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v4 = *(MEMORY[0x277CED8A0] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2409FB1EC;
  v7 = v0[3];
  v6 = v0[4];

  return MEMORY[0x28213F6D0](v7, v6, v3, v2);
}

uint64_t sub_2409FB1EC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = a1;

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_2409FB314, v5, v4);
}

uint64_t sub_2409FB314()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_240A2A22C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2409FB3AC()
{
  if (!*(v0 + OBJC_IVAR___AISChildSetupPresenter_currentStep))
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = *(result + 16);
    v4 = result;
    swift_unknownObjectRetain();
    v5 = v3(ObjectType, v4);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

uint64_t sub_2409FB450(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24097E030;

  return AISChildSetupPresenter.setupPasscode(for:nextTaskInfo:)(a1, a2);
}

uint64_t sub_2409FB4F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24097EA24;

  return AISChildSetupPresenter.setupLocationServices(nextTaskInfo:)(a1);
}

uint64_t sub_2409FB588(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24097EA24;

  return AISChildSetupPresenter.setupPerformAIDASignIn(with:)(a1);
}

uint64_t sub_2409FB620(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240915E50;

  return AISChildSetupPresenter.stepDidEndFlow(with:)(a1);
}

void sub_2409FB6B8(void *a1)
{
  v3 = sub_240A2B00C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v32 - v11;
  v13 = [a1 viewControllers];
  sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
  v14 = sub_240A2C16C();

  if (v14 >> 62)
  {
    v15 = sub_240A2C59C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(v1 + OBJC_IVAR___AISChildSetupPresenter_currentStep))
  {
    type metadata accessor for AISFlowStepChildCreate();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = __OFSUB__(v15, 2);
  v18 = v15 - 2;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    sub_240A2AE9C();
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C29C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32[0] = v4;
      v22 = a1;
      v23 = v21;
      *v21 = 67109120;
      *(v21 + 4) = v16 != 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "AISChildSetupPresenter: Current step is child create step: %{BOOL}d", v21, 8u);
      v24 = v23;
      a1 = v22;
      v4 = v32[0];
      MEMORY[0x245CCDDB0](v24, -1, -1);
    }

    v25 = *(v4 + 8);
    v25(v12, v3);
    if (v16)
    {

      if (v18 >= 1)
      {
        sub_240A2AE9C();
        v26 = sub_240A2AFFC();
        v27 = sub_240A2C29C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 134217984;
          *(v28 + 4) = v18;
          _os_log_impl(&dword_2408FE000, v26, v27, "AISChildSetupPresenter: Removing previous view controller: %ld", v28, 0xCu);
          MEMORY[0x245CCDDB0](v28, -1, -1);
        }

        v25(v9, v3);
        v29 = [a1 viewControllers];
        v30 = sub_240A2C16C();

        v32[1] = v30;
        v31 = sub_240A2C15C();

        [a1 setViewControllers_];
      }
    }
  }
}

uint64_t sub_2409FBAB8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2409FBC38(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_2409FBB48(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 viewControllers];
  sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
  v4 = sub_240A2C16C();

  *a2 = v4;
}

void sub_2409FBBBC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
  v4 = sub_240A2C15C();
  [v3 setViewControllers_];
}

uint64_t sub_2409FBC38(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_240A2C59C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_240A2C49C();
}

void sub_2409FBC9C(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v45 - v7;
  v9 = sub_240A2B00C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v45 - v17;
  v19 = *&a2[OBJC_IVAR___AISChildSetupPresenter_presentationHandler];
  if (v19)
  {
    swift_beginAccess();
    *(a1 + 24) = &protocol witness table for AISChildSetupPresenter;
    swift_unknownObjectWeakAssign();
    v20 = *&a2[OBJC_IVAR___AISChildSetupPresenter_childSetupAnalyticsEvent];
    v21 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
    swift_beginAccess();
    v22 = *(a1 + v21);
    *(a1 + v21) = v20;
    v23 = v19;

    v24 = &a2[OBJC_IVAR___AISChildSetupPresenter_currentStep];
    v25 = *&a2[OBJC_IVAR___AISChildSetupPresenter_currentStep];
    *v24 = a1;
    *(v24 + 1) = &protocol witness table for AISFlowStepBase;
    swift_unknownObjectRelease();

    sub_240A2AE9C();

    v26 = sub_240A2AFFC();
    v27 = sub_240A2C2CC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v46 = v9;
      v29 = v28;
      v30 = swift_slowAlloc();
      v47 = v8;
      v48 = a1;
      v45 = v10;
      v31 = v30;
      v49 = &protocol witness table for AISFlowStepBase;
      v50 = v30;
      *v29 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC30, &qword_240A33CE0);
      v32 = sub_240A2BF9C();
      v34 = v23;
      v35 = sub_240925464(v32, v33, &v50);

      *(v29 + 4) = v35;
      v23 = v34;
      _os_log_impl(&dword_2408FE000, v26, v27, "AISChildSetupPresenter present step %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x245CCDDB0](v31, -1, -1);
      MEMORY[0x245CCDDB0](v29, -1, -1);

      (*(v45 + 8))(v18, v46);
      v8 = v47;
    }

    else
    {

      (*(v10 + 8))(v18, v9);
    }

    v39 = sub_240A2C24C();
    (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
    sub_240A2C21C();
    v40 = v23;

    v41 = a2;
    v42 = sub_240A2C20C();
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    v43[2] = v42;
    v43[3] = v44;
    v43[4] = a1;
    v43[5] = &protocol witness table for AISFlowStepBase;
    v43[6] = v41;
    v43[7] = v40;
    sub_2409230D4(0, 0, v8, &unk_240A38140, v43);
  }

  else
  {
    sub_240A2AE9C();
    v36 = sub_240A2AFFC();
    v37 = sub_240A2C2AC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2408FE000, v36, v37, "AISChildSetupPresenter: Missing presenting view controller. ", v38, 2u);
      MEMORY[0x245CCDDB0](v38, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
  }
}

void sub_2409FC128(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_240A2B00C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v49 - v21;
  v23 = *&a2[OBJC_IVAR___AISChildSetupPresenter_presentationHandler];
  if (v23)
  {
    v50 = v14;
    v53 = v13;
    v24 = *(a4 + 16);
    v52 = v23;
    v25 = a2;
    v24(a2, &protocol witness table for AISChildSetupPresenter, a3, a4);
    v26 = *&v25[OBJC_IVAR___AISChildSetupPresenter_childSetupAnalyticsEvent];
    v27 = *(a4 + 72);

    v27(v28, a3, a4);
    v51 = v25;
    v29 = &v25[OBJC_IVAR___AISChildSetupPresenter_currentStep];
    v30 = *&v25[OBJC_IVAR___AISChildSetupPresenter_currentStep];
    *v29 = a1;
    *(v29 + 1) = a4;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    sub_240A2AE9C();
    swift_unknownObjectRetain();
    v31 = sub_240A2AFFC();
    v32 = sub_240A2C2CC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = v12;
      v35 = v34;
      v55 = a4;
      v56 = v34;
      *v33 = 136315138;
      v54 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC30, &qword_240A33CE0);
      v36 = sub_240A2BF9C();
      v38 = sub_240925464(v36, v37, &v56);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_2408FE000, v31, v32, "AISChildSetupPresenter present step %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      v39 = v35;
      v12 = v49;
      MEMORY[0x245CCDDB0](v39, -1, -1);
      MEMORY[0x245CCDDB0](v33, -1, -1);
    }

    (*(v50 + 8))(v22, v53);
    v40 = sub_240A2C24C();
    (*(*(v40 - 8) + 56))(v12, 1, 1, v40);
    sub_240A2C21C();
    v41 = v52;
    v42 = v51;
    swift_unknownObjectRetain();
    v43 = sub_240A2C20C();
    v44 = swift_allocObject();
    v45 = MEMORY[0x277D85700];
    v44[2] = v43;
    v44[3] = v45;
    v44[4] = a1;
    v44[5] = a4;
    v44[6] = v42;
    v44[7] = v41;
    sub_2409230D4(0, 0, v12, &unk_240A38168, v44);
  }

  else
  {
    sub_240A2AE9C();
    v46 = sub_240A2AFFC();
    v47 = sub_240A2C2AC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2408FE000, v46, v47, "AISChildSetupPresenter: Missing presenting view controller. ", v48, 2u);
      MEMORY[0x245CCDDB0](v48, -1, -1);
    }

    (*(v14 + 8))(v19, v13);
  }
}

id sub_2409FC588(void *a1, uint64_t a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + OBJC_IVAR___AISChildSetupPresenter_presentationHandler);
  *(a2 + OBJC_IVAR___AISChildSetupPresenter_presentationHandler) = a1;

  v11 = [a1 navigationController];
  if (v11)
  {
    v12 = v11;
    sub_240A2AE9C();
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C2CC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "AISChildSetupPresenter will handle navigation delegate callbacks", v15, 2u);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    [v12 setDelegate_];
  }

  return sub_2409F79DC();
}

uint64_t sub_2409FC770(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_2409FB090(a1, v4, v5, (v1 + 4), v6, (v1 + 10));
}

uint64_t sub_2409FC880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409FC8F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_240916360;

  return sub_2409F7ED0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_36Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t String.wiFiLocalizedKey.getter()
{
  v0 = sub_240A2BF1C();
  v1 = SFLocalizableWAPIStringKeyForKey();

  v2 = sub_240A2BF4C();
  return v2;
}

id sub_2409FCA94()
{
  if (qword_27E50AFA8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E516348;
  qword_27E516340 = qword_27E516348;

  return v1;
}

id sub_2409FCB1C()
{
  type metadata accessor for AISUIBundleSharedAsset();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E516348 = result;
  return result;
}

uint64_t sub_2409FCB70()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50EDE0);
  __swift_project_value_buffer(v0, qword_27E50EDE0);
  return sub_240A2AE6C();
}

uint64_t sub_2409FCCBC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2409FCD1C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___AISSafetySettingsFlowPresenter_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_240966580;
}

id SafetySettingsFlowPresenter.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___AISSafetySettingsFlowPresenter_context] = a1;
  *&v3[OBJC_IVAR___AISSafetySettingsFlowPresenter_configuration] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SafetySettingsFlowPresenter.init(with:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___AISSafetySettingsFlowPresenter_context] = a1;
  *&v1[OBJC_IVAR___AISSafetySettingsFlowPresenter_configuration] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SafetySettingsFlowPresenter();
  return objc_msgSendSuper2(&v4, sel_init);
}

id SafetySettingsFlowPresenter.__allocating_init(with:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___AISSafetySettingsFlowPresenter_context] = a1;
  *&v5[OBJC_IVAR___AISSafetySettingsFlowPresenter_configuration] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SafetySettingsFlowPresenter.init(with:configuration:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___AISSafetySettingsFlowPresenter_context] = a1;
  *&v2[OBJC_IVAR___AISSafetySettingsFlowPresenter_configuration] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for SafetySettingsFlowPresenter();
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_2409FD030(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v29 - v8;
  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v10 = sub_240A2B00C();
  __swift_project_value_buffer(v10, qword_27E50EDE0);
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C29C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2408FE000, v11, v12, "Starting to present safety settings...", v13, 2u);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  v14 = a2;
  v15 = sub_240A2AFFC();
  v16 = sub_240A2C29C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_2408FE000, v15, v16, "navController: %@", v17, 0xCu);
    sub_240919300(v18, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v18, -1, -1);
    MEMORY[0x245CCDDB0](v17, -1, -1);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
  [v20 setPresentationType_];
  v21 = sub_2409FD690();
  v22 = sub_240A2C24C();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  sub_240A2C21C();
  v23 = v3;
  v24 = v20;
  v25 = v21;
  v26 = sub_240A2C20C();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v23;
  v27[5] = v24;
  v27[6] = v25;
  sub_2409230D4(0, 0, v9, &unk_240A381B0, v27);
}

uint64_t sub_2409FD344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = sub_240A2C21C();
  v6[4] = sub_240A2C20C();
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_2409FD418;

  return sub_2409FE7CC(a5, a6);
}

uint64_t sub_2409FD418(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 48) = a1;

  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409FD55C, v6, v5);
}

uint64_t sub_2409FD55C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  if ([v1 success])
  {
    v3 = *(v0 + 16);
    sub_2409FDE48(1);
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = [*(v0 + 48) error];
    sub_2409FDFB4(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

id sub_2409FD690()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v1 = sub_2409FDB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  *(inited + 32) = 0x5265674172657375;
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 40) = 0xEC00000065676E61;
  *(inited + 48) = v1;
  sub_240926374(inited);
  swift_setDeallocating();
  sub_240919300(v3, &qword_27E50BB00, &unk_240A38260);
  v4 = MEMORY[0x277D837D0];
  v5 = sub_240A2BE9C();

  [v0 setAdditionalParameters_];

  v6 = [v0 additionalParameters];
  if (v6)
  {
    v7 = v6;
    v8 = sub_240A2BEBC();

    sub_240A2AA1C();
    v27 = v4;
    *&v26 = sub_240A2AADC();
    *(&v26 + 1) = v9;
    sub_24091C780(&v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2409F6038(v25, 0x6574736575716572, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
    if (v8)
    {
      v11 = sub_240A2BE9C();
    }

    else
    {
      v11 = 0;
    }

    [v0 setAdditionalParameters_];
  }

  else
  {
    [v0 setAdditionalParameters_];
  }

  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v12 = sub_240A2B00C();
  __swift_project_value_buffer(v12, qword_27E50EDE0);
  v13 = v0;
  v14 = sub_240A2AFFC();
  v15 = sub_240A2C29C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v26 = v17;
    *v16 = 136315138;
    v18 = [v13 additionalParameters];
    if (v18)
    {
      v19 = v18;
      v20 = sub_240A2BEBC();
    }

    else
    {
      v20 = 0;
    }

    *&v25[0] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C980, &unk_240A33640);
    v21 = sub_240A2BF9C();
    v23 = sub_240925464(v21, v22, &v26);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_2408FE000, v14, v15, "Created circle context with parameters: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x245CCDDB0](v17, -1, -1);
    MEMORY[0x245CCDDB0](v16, -1, -1);
  }

  return v13;
}

uint64_t sub_2409FDA44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240916360;

  return sub_2409FD344(a1, v4, v5, v6, v7, v8);
}

id sub_2409FDB0C()
{
  v1 = *(v0 + OBJC_IVAR___AISSafetySettingsFlowPresenter_configuration);
  if (v1 && (v2 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *&v1[v2]))
  {
    v3 = qword_27E50AFB0;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_240A2B00C();
    __swift_project_value_buffer(v5, qword_27E50EDE0);
    v6 = v4;
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C29C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *&v1[v2];

      _os_log_impl(&dword_2408FE000, v7, v8, "Using userAgeRange from configuration: %lu", v9, 0xCu);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    else
    {

      v7 = v6;
    }

    v12 = *&v1[v2];
  }

  else
  {
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 primaryAuthKitAccount];
    if (v11)
    {
      v6 = v11;
      v12 = [v10 userAgeRangeForAccount:v11];
      if (qword_27E50AFB0 != -1)
      {
        swift_once();
      }

      v13 = sub_240A2B00C();
      __swift_project_value_buffer(v13, qword_27E50EDE0);
      v14 = sub_240A2AFFC();
      v15 = sub_240A2C29C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = v12;
        _os_log_impl(&dword_2408FE000, v14, v15, "Fetched userAgeRange from primary account: %lu", v16, 0xCu);
        MEMORY[0x245CCDDB0](v16, -1, -1);
      }
    }

    else
    {
      if (qword_27E50AFB0 != -1)
      {
        swift_once();
      }

      v17 = sub_240A2B00C();
      __swift_project_value_buffer(v17, qword_27E50EDE0);
      v18 = sub_240A2AFFC();
      v19 = sub_240A2C29C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2408FE000, v18, v19, "No primary account found for age range", v20, 2u);
        MEMORY[0x245CCDDB0](v20, -1, -1);
      }

      v12 = 0;
      v6 = v10;
    }
  }

  return v12;
}

void sub_2409FDE48(char a1)
{
  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50EDE0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Successfully configured safety settings", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  sub_2409FEC40();
  v6 = [objc_allocWithZone(MEMORY[0x277CEDE78]) initWithIsSafetySettingsApplied_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong safetySettingsDidFinishWithResult:v6 viewControllersToRemove:0 error:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_2409FDFB4(void *a1)
{
  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50EDE0);
  v3 = a1;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = a1;
    v16 = v7;
    *v6 = 136315138;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v9 = sub_240A2BF9C();
    v11 = sub_240925464(v9, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2408FE000, v4, v5, "Failed to configure safety settings with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245CCDDB0](v7, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CEDE78]) initWithIsSafetySettingsApplied_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a1)
    {
      a1 = sub_240A2952C();
    }

    [v14 safetySettingsDidFinishWithResult:v12 viewControllersToRemove:0 error:{a1, v15, v16}];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_2409FE1C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240968780;

  return sub_2409FFF14(a1);
}

uint64_t sub_2409FE3F4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2409FE4C8;

  return sub_2409FFF14(v6);
}

uint64_t sub_2409FE4C8(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = sub_240A2952C();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v13 = *(v10 + 8);

  return v13();
}

id SafetySettingsFlowPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetySettingsFlowPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetySettingsFlowPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2409FE79C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2409FE7CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_2409FE7EC, 0, 0);
}

uint64_t sub_2409FE7EC()
{
  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_240A2B00C();
  v0[21] = __swift_project_value_buffer(v2, qword_27E50EDE0);
  v3 = v1;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_2408FE000, v4, v5, "Performing circle request with context: %@", v7, 0xCu);
    sub_240919300(v8, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  v11 = v0[19];
  v10 = v0[20];

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2409FEA28;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A271E4;
  v0[13] = &block_descriptor_26;
  v0[14] = v12;
  [v11 performWithContext:v10 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2409FEA28()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2409FEB08, 0, 0);
}

uint64_t sub_2409FEB08()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_2408FE000, v3, v4, "Finished performing circle request with response: %@", v5, 0xCu);
    sub_240919300(v6, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v6, -1, -1);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8(v2);
}

void sub_2409FEC40()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 primaryAuthKitAccount];

  if (v1)
  {
    oslog = [objc_allocWithZone(MEMORY[0x277CF02D0]) init];
    [oslog markSafetyScreenSeenForAccount:v1];
    if (qword_27E50AFB0 != -1)
    {
      swift_once();
    }

    v2 = sub_240A2B00C();
    __swift_project_value_buffer(v2, qword_27E50EDE0);
    v3 = sub_240A2AFFC();
    v4 = sub_240A2C29C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2408FE000, v3, v4, "Successfully marked safety screen as seen for account", v5, 2u);
      MEMORY[0x245CCDDB0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AFB0 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50EDE0);
    oslog = sub_240A2AFFC();
    v7 = sub_240A2C2AC();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2408FE000, oslog, v7, "No primary account found to mark safety screen as seen", v8, 2u);
      MEMORY[0x245CCDDB0](v8, -1, -1);
    }
  }
}

uint64_t sub_2409FEE7C()
{
  v1 = *(v0 + 48);
  if (sub_240A2A9DC())
  {
    if (qword_27E50AFB0 != -1)
    {
      swift_once();
    }

    v2 = sub_240A2B00C();
    __swift_project_value_buffer(v2, qword_27E50EDE0);
    v3 = sub_240A2AFFC();
    v4 = sub_240A2C29C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2408FE000, v3, v4, "Safety settings already enabled - not showing safety settings", v5, 2u);
      MEMORY[0x245CCDDB0](v5, -1, -1);
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_2409FF10C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    if (qword_27E50AFB0 != -1)
    {
      swift_once();
    }

    v16 = sub_240A2B00C();
    __swift_project_value_buffer(v16, qword_27E50EDE0);
    v5 = sub_240A2AFFC();
    v17 = sub_240A2C29C();
    if (os_log_type_enabled(v5, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v5, v17, "No account manager provided - not eligible for any flow", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    goto LABEL_23;
  }

  v5 = a3;
  v6 = [v5 userAgeRangeForAccount:a2];
  if (!a1 || a1 == 2)
  {
    if (v6 != 2 && v6 != 1)
    {
      v7 = v6;
      if (qword_27E50AFB0 != -1)
      {
        swift_once();
      }

      v8 = sub_240A2B00C();
      __swift_project_value_buffer(v8, qword_27E50EDE0);
      v9 = sub_240A2AFFC();
      v10 = sub_240A2C29C();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_22;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 134218242;
      *(v11 + 4) = v7;
      *(v11 + 12) = 2080;
      v13 = sub_240A2AADC();
      v15 = sub_240925464(v13, v14, &v23);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_2408FE000, v9, v10, "Age range %lu not eligible for %s flow - not showing safety settings", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x245CCDDB0](v12, -1, -1);
LABEL_21:
      MEMORY[0x245CCDDB0](v11, -1, -1);
LABEL_22:

LABEL_23:
      return 0;
    }

    goto LABEL_16;
  }

  if (a1 == 1)
  {
    if (v6 != 2)
    {
      v20 = v6;
      if (qword_27E50AFB0 != -1)
      {
        swift_once();
      }

      v21 = sub_240A2B00C();
      __swift_project_value_buffer(v21, qword_27E50EDE0);
      v9 = sub_240A2AFFC();
      v22 = sub_240A2C29C();
      if (!os_log_type_enabled(v9, v22))
      {
        goto LABEL_22;
      }

      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v20;
      _os_log_impl(&dword_2408FE000, v9, v22, "Age range %lu not eligible for mini-buddy flow - not showing safety settings", v11, 0xCu);
      goto LABEL_21;
    }

LABEL_16:

    return 1;
  }

  result = sub_240A2C67C();
  __break(1u);
  return result;
}

uint64_t sub_2409FF454(void *a1)
{
  v2 = sub_240A2BF1C();
  v3 = [a1 accountPropertyForKey_];

  if (v3)
  {
    sub_240A2C3DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_240919300(v14, &qword_27E50C6D0, &unk_240A33620);
    goto LABEL_13;
  }

  sub_2409194E8(0, &unk_27E50C960, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  v4 = v11;
  if (![v11 BOOLValue])
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v5 = sub_240A2B00C();
  __swift_project_value_buffer(v5, qword_27E50EDE0);
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "User has already seen safety screen - not showing safety settings", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v9 = 1;
LABEL_15:

  return v9;
}

uint64_t sub_2409FF634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_240A2974C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2409FF6FC, 0, 0);
}

uint64_t sub_2409FF6FC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  (*(v2 + 104))(v1, *MEMORY[0x277CED210], v4);
  v6 = sub_240A2AACC();
  (*(v2 + 8))(v1, v4);
  if ((v6 & 1) == 0)
  {
    if (qword_27E50AFB0 != -1)
    {
      swift_once();
    }

    v14 = sub_240A2B00C();
    __swift_project_value_buffer(v14, qword_27E50EDE0);
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C29C();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_26;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "ageBasedAccountRestrictions is not enabled - not showing safety settings";
    goto LABEL_25;
  }

  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 16);
  v8 = sub_240A2B00C();
  *(v0 + 80) = __swift_project_value_buffer(v8, qword_27E50EDE0);
  v9 = v7;
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 16);
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    sub_240A2AA1C();
    *(v13 + 4) = sub_240A2AAEC();

    _os_log_impl(&dword_2408FE000, v10, v11, "Starting shouldPresentSafetySettings checks for flow type: %ld", v13, 0xCu);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  else
  {

    v10 = *(v0 + 16);
  }

  v19 = *(v0 + 40);

  v20 = v19[4];
  __swift_project_boxed_opaque_existential_0(v19, v19[3]);
  LOBYTE(v20) = sub_240A2AD6C();
  v15 = sub_240A2AFFC();
  v16 = sub_240A2C29C();
  v21 = os_log_type_enabled(v15, v16);
  if (v20)
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v15, v16, "Network reachability check passed", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    v23 = *(v0 + 24);

    if (v23)
    {
      v24 = [*(v0 + 24) primaryAuthKitAccount];
      *(v0 + 88) = v24;
      if (v24)
      {
        v25 = sub_240A2AFFC();
        v26 = sub_240A2C29C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_2408FE000, v25, v26, "Primary account check passed", v27, 2u);
          MEMORY[0x245CCDDB0](v27, -1, -1);
        }

        v28 = swift_task_alloc();
        *(v0 + 96) = v28;
        *v28 = v0;
        v28[1] = sub_2409FFB98;
        v29 = *(v0 + 32);

        return sub_2409FEE5C(v29);
      }
    }

    v15 = sub_240A2AFFC();
    v16 = sub_240A2C29C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "No primary account found - not showing safety settings";
      goto LABEL_25;
    }
  }

  else if (v21)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Network is not reachable - not showing safety settings";
LABEL_25:
    _os_log_impl(&dword_2408FE000, v15, v16, v18, v17, 2u);
    MEMORY[0x245CCDDB0](v17, -1, -1);
  }

LABEL_26:

  v31 = *(v0 + 72);

  v32 = *(v0 + 8);

  return v32(0);
}

uint64_t sub_2409FFB98(char a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_2409FFC98, 0, 0);
}

uint64_t sub_2409FFC98()
{
  if (*(v0 + 104))
  {
    goto LABEL_8;
  }

  v1 = *(v0 + 80);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "ScreenTime settings check passed", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  v8 = sub_240A2AA1C();
  if ((sub_2409FF10C(v8, v5, v7) & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(v0 + 80);
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2408FE000, v10, v11, "Age eligibility check passed", v12, 2u);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  v13 = *(v0 + 88);

  if (sub_2409FF454(v13))
  {
LABEL_8:
    v14 = 0;
    v15 = *(v0 + 88);
  }

  else
  {
    v19 = *(v0 + 80);
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C29C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v20, v21, "Safety screen seen check passed", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    v23 = *(v0 + 80);

    v24 = sub_240A2AFFC();
    v25 = sub_240A2C29C();
    v26 = os_log_type_enabled(v24, v25);
    v15 = *(v0 + 88);
    if (v26)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2408FE000, v24, v25, "All checks passed - showing safety settings", v27, 2u);
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    v14 = 1;
  }

  v16 = *(v0 + 72);

  v17 = *(v0 + 8);

  return v17(v14);
}

uint64_t sub_2409FFF34()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 144) = v1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v2 = [objc_opt_self() sharedNetworkObserver];
  v3 = sub_2409194E8(0, &qword_27E50EE10, 0x277CF0278);
  v4 = MEMORY[0x277CEDE58];
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 56) = v2;
  v5 = sub_240A2A12C();
  v6 = sub_240A2A11C();
  v7 = MEMORY[0x277CED7C0];
  *(v0 + 96) = v6;
  *(v0 + 120) = v5;
  *(v0 + 128) = v7;
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_240A000AC;
  v9 = *(v0 + 136);

  return sub_2409FF634(v9, v1, v0 + 16, v0 + 56, v0 + 96);
}

uint64_t sub_240A000AC(char a1)
{
  v4 = *(*v2 + 152);
  v5 = *v2;
  v5[20] = v1;

  if (v1)
  {
    v6 = v5[18];
    sub_240919300((v5 + 2), &unk_27E50C950, &qword_240A38240);

    return MEMORY[0x2822009F8](sub_240A00248, 0, 0);
  }

  else
  {
    v7 = v5[18];
    sub_240919300((v5 + 2), &unk_27E50C950, &qword_240A38240);

    __swift_destroy_boxed_opaque_existential_0(v5 + 12);
    __swift_destroy_boxed_opaque_existential_0(v5 + 7);
    v8 = v5[1];

    return v8(a1 & 1);
  }
}

uint64_t sub_240A00248()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[1];
  v2 = v0[20];

  return v1(0);
}

uint64_t dispatch thunk of SafetySettingsFlowPresenter.shouldPresentSafetySettings(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xD8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24096AC20;

  return v8(a1);
}

uint64_t sub_240A004F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240915E50;

  return sub_2409FE3F4(v2, v3, v4);
}

uint64_t sub_240A00620()
{
  v1 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_240A006B8(char a1)
{
  v3 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_240A00768(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR_____AISRepairViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_240A007C8()
{
  v1 = OBJC_IVAR_____AISRepairViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_240A00814(uint64_t a1)
{
  v3 = OBJC_IVAR_____AISRepairViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *RepairViewController.init(contextBuilder:reportHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a1;
  v57 = a2;
  v7 = sub_240A29A9C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C058, &qword_240A31F50);
  v11 = *(*(v54 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v54, v12);
  v52 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v50 - v21;
  v23 = type metadata accessor for RepairView();
  v24 = (v23 - 8);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = (&v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss] = 0;
  *&v4[OBJC_IVAR_____AISRepairViewController_hostingController] = 0;
  v29 = type metadata accessor for RepairViewController();
  v62.receiver = v4;
  v62.super_class = v29;
  v30 = objc_msgSendSuper2(&v62, sel_initWithNibName_bundle_, 0, 0);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = a3;
  v53 = a4;
  v32[4] = a4;
  sub_240A2A27C();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  v33 = v30;

  sub_240A2C32C();
  v34 = sub_240A2B01C();
  (*(*(v34 - 8) + 56))(v22, 1, 1, v34);
  v51 = sub_240A2A25C();
  v35 = v24[10];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
  sub_240919298(v17, v52, &qword_27E50C058, &qword_240A31F50);
  sub_240A2BC4C();
  sub_240919300(v17, &qword_27E50C058, &qword_240A31F50);
  v37 = v28 + v24[11];
  v58 = 0;
  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C070, &qword_240A31F68);
  sub_240A2BC4C();
  v38 = v61;
  *v37 = v60;
  *(v37 + 2) = v38;
  v39 = v24[12];
  *(v28 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  sub_240A29A4C();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C078, &qword_240A31FA8);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v58 = sub_240A29CDC();
  sub_240A2BC4C();

  v43 = *(&v60 + 1);
  v28[5] = v60;
  v28[6] = v43;
  v44 = v57;
  *v28 = v56;
  v28[1] = v44;
  v28[2] = sub_240A010B0;
  v28[3] = v32;
  v28[4] = v51;
  v45 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C080, qword_240A31FB0));
  v46 = sub_240A2B5EC();

  v47 = OBJC_IVAR_____AISRepairViewController_hostingController;
  swift_beginAccess();
  v48 = *&v33[v47];
  *&v33[v47] = v46;

  return v33;
}

void sub_240A00E1C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v26 - v11;
  v13 = sub_240A2B00C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    sub_240919298(a1, v12, &qword_27E50C088, &unk_240A32000);
    v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    sub_24093BCB8(v12, v22 + v21);

    sub_240A0231C(1, sub_24093BE40, v22);
  }

  else
  {
    sub_240A2AEAC();
    v23 = sub_240A2AFFC();
    v24 = sub_240A2C2AC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2408FE000, v23, v24, "RepairViewContoller report handler called but RepairViewController is nil!", v25, 2u);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }

    (*(v14 + 8))(v18, v13);
    a3(a1);
  }
}

char *RepairViewController.__allocating_init(context:reportHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = objc_allocWithZone(type metadata accessor for RepairViewController());
  v11 = RepairViewController.init(contextBuilder:reportHandler:)(sub_240A01574, v8, sub_240A01AA8, v9);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

char *RepairViewController.init(context:reportHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = objc_allocWithZone(type metadata accessor for RepairViewController());
  v9 = RepairViewController.init(contextBuilder:reportHandler:)(sub_240A02C90, v6, sub_240A02C94, v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

void sub_240A01278(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_240A29D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2B00C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v7 + 16))(v11, a1, v6);
    v18 = a2;
    sub_240A29D3C();

    (*(v7 + 8))(a1, v6);
  }

  else
  {
    sub_240A2AEAC();
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C2BC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v26[1] = a3;
      v22 = v21;
      *v21 = 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "Client passed in a nil objc context, this is a fatal error.", v21, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
    (*(v7 + 16))(v11, a1, v6);
    v23 = sub_240A29A1C();
    sub_240A02C38();
    v24 = swift_allocError();
    *v25 = 0xD000000000000020;
    v25[1] = 0x8000000240A3F260;
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277CED440], v23);
    sub_240A29D0C();
    (*(v7 + 8))(a1, v6);
  }
}

void sub_240A0157C(uint64_t a1, void (*a2)(void *, void *), uint64_t a3)
{
  v62 = a3;
  v63 = a2;
  v4 = sub_240A2B00C();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v59 = &v56 - v11;
  v64 = sub_240A29B9C();
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v64, v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v56 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v56 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25, v27);
  v29 = (&v56 - v28);
  sub_240919298(a1, &v56 - v28, &qword_27E50C088, &unk_240A32000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v29;
    sub_240A2AEAC();
    v31 = v30;
    v32 = sub_240A2AFFC();
    v33 = sub_240A2C2AC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v30;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_2408FE000, v32, v33, "Returning repair error from vc: %@", v34, 0xCu);
      sub_240919300(v35, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v35, -1, -1);
      MEMORY[0x245CCDDB0](v34, -1, -1);
    }

    (*(v60 + 8))(v9, v61);
    v38 = v30;
    v63(0, v30);
  }

  else
  {
    v39 = v29;
    v40 = v64;
    (*(v12 + 32))(v24, v39, v64);
    sub_240A2AEAC();
    v41 = *(v12 + 16);
    v41(v21, v24, v40);
    v42 = sub_240A2AFFC();
    v43 = sub_240A2C28C();
    v44 = v24;
    if (os_log_type_enabled(v42, v43))
    {
      v45 = swift_slowAlloc();
      v58 = v24;
      v46 = v45;
      v57 = swift_slowAlloc();
      v65 = v57;
      *v46 = 136315138;
      v47 = v64;
      v41(v17, v21, v64);
      v48 = sub_240A2BF9C();
      v50 = v49;
      v51 = v47;
      v52 = *(v12 + 8);
      v52(v21, v51);
      v53 = sub_240925464(v48, v50, &v65);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_2408FE000, v42, v43, "Returning repair report from vc converted into objc: %s", v46, 0xCu);
      v54 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x245CCDDB0](v54, -1, -1);
      v44 = v58;
      MEMORY[0x245CCDDB0](v46, -1, -1);
    }

    else
    {

      v52 = *(v12 + 8);
      v52(v21, v64);
    }

    (*(v60 + 8))(v59, v61);
    v55 = sub_240A29B8C();
    v63(v55, 0);

    v52(v44, v64);
  }
}

id RepairViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void RepairViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss) = 0;
  *(v0 + OBJC_IVAR_____AISRepairViewController_hostingController) = 0;
  sub_240A2C58C();
  __break(1u);
}

void sub_240A01CCC()
{
  v1 = v0;
  v2 = sub_240A2B80C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v65.receiver = v0;
  v65.super_class = type metadata accessor for RepairViewController();
  objc_msgSendSuper2(&v65, sel_viewDidLoad);
  v5 = OBJC_IVAR_____AISRepairViewController_hostingController;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (!v6)
  {
    __break(1u);
    goto LABEL_28;
  }

  v7 = v6;
  sub_240A2B7FC();
  sub_240A2B5AC();

  v8 = *&v0[v5];
  if (!v8)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = v8;
  v10 = sub_240A2B3BC();
  v12 = sub_240A2B5BC();
  if ((*v11 & v10) != 0)
  {
    *v11 &= ~v10;
  }

  v12(v64, 0);

  v13 = *&v1[v5];
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = [v13 view];
  if (!v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v16 = *&v1[v5];
  if (!v16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v16 willMoveToParentViewController_];
  if (!*&v1[v5])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v1 addChildViewController_];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v18 = v17;
  v19 = *&v1[v5];
  if (!v19)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v20 = [v19 view];
  if (!v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v21 = v20;
  [v18 addSubview_];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_240A318E0;
  v25 = *&v1[v5];
  if (!v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = [v25 view];
  if (!v26)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v23 topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v24 + 32) = v30;
  v31 = *&v1[v5];
  if (!v31)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v32 = [v31 view];
  if (!v32)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v23 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v24 + 40) = v36;
  v37 = *&v1[v5];
  if (!v37)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v38 = [v37 view];
  if (!v38)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v23 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v24 + 48) = v42;
  v43 = *&v1[v5];
  if (!v43)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v44 = [v43 view];
  if (!v44)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v45 = v44;
  v46 = [v44 trailingAnchor];

  v47 = [v23 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v24 + 56) = v48;
  v49 = *&v1[v5];
  if (!v49)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v50 = [v49 view];
  if (!v50)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v51 = v50;
  v52 = [v50 centerXAnchor];

  v53 = [v23 centerXAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v24 + 64) = v54;
  v55 = *&v1[v5];
  if (!v55)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v56 = [v55 view];
  if (!v56)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v57 = v56;
  v58 = objc_opt_self();
  v59 = [v57 centerYAnchor];

  v60 = [v23 centerYAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v24 + 72) = v61;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v62 = sub_240A2C15C();

  [v58 activateConstraints_];

  v63 = *&v1[v5];
  if (v63)
  {
    [v63 didMoveToParentViewController_];

    return;
  }

LABEL_49:
  __break(1u);
}

uint64_t sub_240A0231C(int a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v43 - v10;
  v12 = sub_240A2B00C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v43 - v20;
  v22 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  swift_beginAccess();
  if (*(v3 + v22) == 1)
  {
    v45 = a1;
    sub_240A2AEAC();
    v23 = v3;
    v24 = sub_240A2AFFC();
    v25 = sub_240A2C29C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v44 = a3;
      v27 = v26;
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v23;
      *v28 = v23;
      v29 = v23;
      _os_log_impl(&dword_2408FE000, v24, v25, "Auto dismiss is enabled, dismissing view controller: %@", v27, 0xCu);
      sub_240919300(v28, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v28, -1, -1);
      v30 = v27;
      a3 = v44;
      MEMORY[0x245CCDDB0](v30, -1, -1);
    }

    (*(v13 + 8))(v21, v12);
    v31 = sub_240A2C24C();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    sub_240A2C21C();
    v32 = v23;
    sub_240964BBC(a2, a3);
    v33 = sub_240A2C20C();
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D85700];
    *(v34 + 16) = v33;
    *(v34 + 24) = v35;
    *(v34 + 32) = v32;
    *(v34 + 40) = v45 & 1;
    *(v34 + 48) = a2;
    *(v34 + 56) = a3;
    sub_2409230D4(0, 0, v11, &unk_240A382E0, v34);
  }

  else
  {
    sub_240A2AEAC();
    v37 = v3;
    v38 = sub_240A2AFFC();
    v39 = sub_240A2C29C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&dword_2408FE000, v38, v39, "Auto dismiss is disabled, leaving view controller up: %@", v40, 0xCu);
      sub_240919300(v41, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v41, -1, -1);
      MEMORY[0x245CCDDB0](v40, -1, -1);
    }

    result = (*(v13 + 8))(v18, v12);
    if (a2)
    {
      return a2(result);
    }
  }

  return result;
}

uint64_t sub_240A02730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 96) = a5;
  *(v7 + 64) = a4;
  sub_240A2C21C();
  *(v7 + 88) = sub_240A2C20C();
  v9 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A027D0, v9, v8);
}

uint64_t sub_240A027D0()
{
  v1 = v0[11];
  v2 = v0[9];

  if (v2)
  {
    v3 = v0[10];
    v0[6] = v0[9];
    v0[7] = v3;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2409EC704;
    v0[5] = &block_descriptor_27;
    v2 = _Block_copy(v0 + 2);
    v4 = v0[7];
  }

  [v0[8] dismissViewControllerAnimated:*(v0 + 96) completion:v2];
  _Block_release(v2);
  v5 = v0[1];

  return v5();
}

id RepairViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_240A2BF1C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id RepairViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RepairViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_240A02B48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_240915E50;

  return sub_240A02730(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_240A02C38()
{
  result = qword_27E50EE28;
  if (!qword_27E50EE28)
  {
    sub_240A29A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EE28);
  }

  return result;
}

uint64_t sub_240A02C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = sub_240A2B00C();
  v5[30] = v6;
  v7 = *(v6 - 8);
  v5[31] = v7;
  v8 = *(v7 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240A02D6C, 0, 0);
}

uint64_t sub_240A02D6C()
{
  v39 = v0;
  v1 = v0[33];
  v2 = v0[25];
  v3 = v0[26];
  sub_240A2AE9C();
  v4 = v2;
  v5 = v3;
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[33];
  v11 = v0[30];
  v10 = v0[31];
  if (v8)
  {
    v35 = v0[26];
    v37 = v0[33];
    v12 = v0[25];
    v36 = v0[30];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136315394;
    v15 = v12;
    v16 = [v15 description];
    v17 = sub_240A2BF4C();
    v19 = v18;

    v20 = sub_240925464(v17, v19, &v38);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    v21 = v35;
    v22 = [v21 description];
    v23 = sub_240A2BF4C();
    v25 = v24;

    v26 = sub_240925464(v23, v25, &v38);

    *(v13 + 14) = v26;
    _os_log_impl(&dword_2408FE000, v6, v7, "NotifyParentForServicesSetup with context=%s, navigationController=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v14, -1, -1);
    MEMORY[0x245CCDDB0](v13, -1, -1);

    (*(v10 + 8))(v37, v36);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v27 = v0[29];
  v28 = v0[25];
  v29 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
  v0[34] = v29;
  [v29 setPresentationType_];
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  v0[22] = sub_240A086E4;
  v0[23] = v30;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2409EC704;
  v0[21] = &block_descriptor_136;
  v31 = _Block_copy(v0 + 18);
  v32 = v0[23];

  [v29 setPresentationHandler_];
  _Block_release(v31);
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_240A03148;
  v33 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A271E4;
  v0[13] = &block_descriptor_139;
  v0[14] = v33;
  [v29 performWithContext:v28 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240A03148()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240A03228, 0, 0);
}

uint64_t sub_240A03228()
{
  v1 = v0[32];
  v2 = v0[24];
  v0[35] = v2;
  sub_240A2AE9C();
  v3 = v2;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 141558274;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_2408FE000, v4, v5, "NotifyParentForServicesSetup got response %{mask.hash}@", v6, 0x16u);
    sub_240919300(v7, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v7, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[30];

  (*(v10 + 8))(v9, v11);
  sub_240A2C21C();
  v0[36] = sub_240A2C20C();
  v13 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A033D8, v13, v12);
}

uint64_t sub_240A033D8()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[27];
  v3 = v0[28];

  sub_240A0350C(v2, v4);

  return MEMORY[0x2822009F8](sub_240A0348C, 0, 0);
}

uint64_t sub_240A0348C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);

  v4 = *(v0 + 8);

  return v4();
}

void sub_240A0350C(void *a1, void (*a2)(id, id))
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v33[-4] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v33[-4] - v12;
  v14 = [a1 userInfo];
  if (!v14)
  {
    v35 = 0u;
    v36 = 0u;
    goto LABEL_12;
  }

  v37 = v13;
  v15 = v14;
  v16 = sub_240A2BEBC();

  strcpy(v33, "userCancelled");
  v33[7] = -4864;
  sub_240A2C44C();
  if (!*(v16 + 16) || (v17 = sub_240925A94(v34), (v18 & 1) == 0))
  {

    sub_2409266D4(v34);
    v35 = 0u;
    v36 = 0u;
    goto LABEL_12;
  }

  sub_240913DC0(*(v16 + 56) + 32 * v17, &v35);
  sub_2409266D4(v34);

  if (!*(&v36 + 1))
  {
LABEL_12:
    sub_240919300(&v35, &qword_27E50C6D0, &unk_240A33620);
    goto LABEL_13;
  }

  if (swift_dynamicCast() && (v34[0] & 1) != 0)
  {
    v19 = v37;
    sub_240A2AE9C();
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C2AC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v20, v21, "FACircleStateController user did tap back", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    (*(v5 + 8))(v19, v4);
    sub_240915CF8();
    v23 = swift_allocError();
    *v24 = xmmword_240A382F0;
    v25 = 1;
    goto LABEL_18;
  }

LABEL_13:
  if ([a1 loadSuccess])
  {
    v26 = [a1 success];
    v27 = [a1 error];
    a2(v26, v27);

    return;
  }

  sub_240A2AE9C();
  v28 = sub_240A2AFFC();
  v29 = sub_240A2C2AC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2408FE000, v28, v29, "NotifyParentForServicesSetup response: load fail", v30, 2u);
    MEMORY[0x245CCDDB0](v30, -1, -1);
  }

  (*(v5 + 8))(v10, v4);
  sub_240915CF8();
  v23 = swift_allocError();
  *v31 = 0xD000000000000038;
  v31[1] = 0x8000000240A3F3B0;
  v25 = 0;
LABEL_18:
  a2(v25, v23);
}

uint64_t sub_240A03A68(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_240A2B00C();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240A03B34, 0, 0);
}

uint64_t sub_240A03B34()
{
  v1 = v0[23];
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2408FE000, v2, v3, "ShieldSetup proximitySetupSelectedAccount accountType %ld", v5, 0xCu);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[19];

  v10 = *(v8 + 8);
  v10(v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v12 = Strong;
    v13 = v0[18];
    v0[2] = v0;
    v0[7] = v0 + 25;
    v0[3] = sub_240A03E0C;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2409F972C;
    v0[13] = &block_descriptor_130_0;
    v0[14] = v14;
    [v12 shieldSetupSelectedAccount:v13 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v15 = v0[22];
    sub_240A2AE9C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C2AC();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[22];
    v20 = v0[20];
    if (v18)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "ShieldSetup proximitySetupSelectedAccount failed because there is no delegate", v21, 2u);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    v10(v19, v20);
    v23 = v0[22];
    v22 = v0[23];

    v24 = v0[1];

    return v24(0);
  }
}

uint64_t sub_240A03E0C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240A03EEC, 0, 0);
}

uint64_t sub_240A03EEC()
{
  v1 = *(v0 + 192);
  swift_unknownObjectRelease();
  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_240A040E8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_240A041A4;

  return sub_240A03A68(a1);
}

uint64_t sub_240A041A4(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_240A042EC()
{
  v1[18] = v0;
  v2 = sub_240A2B00C();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240A043B8, 0, 0);
}

uint64_t sub_240A043B8()
{
  v1 = v0[22];
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "ShieldSetup setupPasscodeAndBiometric", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[18];

  v9 = *(v7 + 8);
  v9(v5, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v11 = Strong;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = sub_240A0467C;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2409F972C;
    v0[13] = &block_descriptor_112;
    v0[14] = v12;
    [v11 setupPasscodeAndBiometricWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v13 = v0[21];
    sub_240A2AE9C();
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C2AC();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[20];
    v17 = v0[21];
    v19 = v0[19];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "ShieldSetup setupPasscodeAndBiometric failed because there is no delegate", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    v9(v17, v19);
    v22 = v0[21];
    v21 = v0[22];

    v23 = v0[1];

    return v23(0);
  }
}

uint64_t sub_240A0467C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240A0475C, 0, 0);
}

uint64_t sub_240A0475C()
{
  v1 = *(v0 + 184);
  swift_unknownObjectRelease();
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_240A04948(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_240A08730;

  return sub_240A042EC();
}

uint64_t sub_240A049F0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_240A2B00C();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240A04ABC, 0, 0);
}

uint64_t sub_240A04ABC()
{
  v35 = v0;
  v1 = v0[23];
  v2 = v0[18];
  sub_240A2AE9C();

  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2CC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[21];
  if (v5)
  {
    v9 = v0[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    v12 = sub_240A2BECC();
    v14 = sub_240925464(v12, v13, &v34);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2408FE000, v3, v4, "ShieldSetup setupPerformAIDASignIn with authResults %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x245CCDDB0](v11, -1, -1);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  v15 = *(v8 + 8);
  v15(v6, v7);
  v16 = v0[19];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v18 = Strong;
    v19 = v0[18];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    v20 = sub_240A2BE9C();
    v0[25] = v20;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_240A04E64;
    v21 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2409F972C;
    v0[13] = &block_descriptor_94;
    v0[14] = v21;
    [v18 performAIDASignInWith:v20 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v22 = v0[22];
    sub_240A2AE9C();
    v23 = sub_240A2AFFC();
    v24 = sub_240A2C2AC();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[21];
    v26 = v0[22];
    v28 = v0[20];
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2408FE000, v23, v24, "ShieldSetup setupPerformAIDASignIn failed because there is no delegate", v29, 2u);
      MEMORY[0x245CCDDB0](v29, -1, -1);
    }

    v15(v26, v28);
    v31 = v0[22];
    v30 = v0[23];

    v32 = v0[1];

    return v32(0);
  }
}

uint64_t sub_240A04E64()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240A04F44, 0, 0);
}

uint64_t sub_240A04F44()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  swift_unknownObjectRelease();
  v3 = *(v0 + 208);

  v5 = *(v0 + 176);
  v4 = *(v0 + 184);

  v6 = *(v0 + 8);

  return v6(v3);
}

uint64_t sub_240A05148(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
  v5 = sub_240A2BEBC();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_240914ED8;

  return sub_240A049F0(v5);
}

void sub_240A0523C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v46 - v14;
  sub_240A2AE9C();

  v16 = a2;
  v17 = sub_240A2AFFC();
  v18 = sub_240A2C2CC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v46[1] = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v49 = a1;
    v50 = v21;
    *v20 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50EEE0, &qword_240A38398);
    v22 = sub_240A2BF9C();
    v47 = v12;
    v24 = sub_240925464(v22, v23, &v50);
    v48 = a1;
    v25 = v6;
    v26 = v7;
    v27 = v24;

    *(v20 + 4) = v27;
    *(v20 + 12) = 2080;
    v49 = a2;
    v28 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v29 = sub_240A2BF9C();
    v31 = sub_240925464(v29, v30, &v50);
    v7 = v26;
    v6 = v25;
    a1 = v48;

    *(v20 + 14) = v31;
    v12 = v47;
    _os_log_impl(&dword_2408FE000, v17, v18, "ShieldSetup proximitySetupCompleted withResult %s, error %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v21, -1, -1);
    MEMORY[0x245CCDDB0](v20, -1, -1);
  }

  v32 = *(v7 + 8);
  v32(v15, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    if (a2)
    {
      v35 = [Strong respondsToSelector_];
      v36 = a2;
      if ((v35 & 1) == 0)
      {
        v45 = sub_240A2952C();
        [v34 shieldSetupDidFinishWithResult:0 error:v45];

        if (a1)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }

      v37 = a2;
      swift_unknownObjectRetain();
      v38 = sub_240A2952C();
      [v34 shieldSetupDidFinishWithResult:0 viewControllersToRemove:0 error:v38];
      swift_unknownObjectRelease();
    }

    if (a1)
    {
LABEL_8:
      v39 = objc_allocWithZone(MEMORY[0x277CEDE80]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
      v40 = sub_240A2BE9C();
      v41 = [v39 initWithAuthResults_];

      if ([v34 respondsToSelector_])
      {
        [v34 shieldSetupDidFinishWithResult:v41 viewControllersToRemove:0 error:0];
      }

      else
      {
        [v34 shieldSetupDidFinishWithResult:v41 error:0];
      }

      swift_unknownObjectRelease();

      return;
    }

LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  sub_240A2AE9C();
  v42 = sub_240A2AFFC();
  v43 = sub_240A2C2AC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2408FE000, v42, v43, "ShieldSetup proximitySetupCompleted failed because there is no delegate", v44, 2u);
    MEMORY[0x245CCDDB0](v44, -1, -1);
  }

  v32(v12, v6);
}

id sub_240A057DC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_240A05884(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_240A2B00C();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_240A2C21C();
  v2[25] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v2[26] = v7;
  v2[27] = v6;

  return MEMORY[0x2822009F8](sub_240A05990, v7, v6);
}

uint64_t sub_240A05990()
{
  v1 = v0[24];
  v2 = v0[18];
  sub_240A2AE9C();
  v3 = v2;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_2408FE000, v4, v5, "ChildSetup setupPerformAIDASignIn with authResults %@", v7, 0xCu);
    sub_240919300(v8, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  v10 = v0[24];
  v11 = v0[20];
  v12 = v0[21];
  v13 = v0[19];

  v14 = *(v12 + 8);
  v14(v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v16 = v0[18];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    sub_240A2BEAC();
    v27 = v0[25];
    v28 = v0[23];

    sub_240A2AE9C();
    v29 = sub_240A2AFFC();
    v30 = sub_240A2C2AC();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[23];
    v33 = v0[20];
    if (v31)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2408FE000, v29, v30, "ChildSetup setupPerformAIDASignIn failed. Unexpected auth response type", v34, 2u);
      MEMORY[0x245CCDDB0](v34, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v25 = v32;
    v26 = v33;
  }

  else
  {
    v17 = v0[25];
    v18 = v0[22];

    sub_240A2AE9C();
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C2AC();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[22];
    v23 = v0[20];
    if (v21)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "ChildSetup setupPerformAIDASignIn failed because there is no delegate", v24, 2u);
      MEMORY[0x245CCDDB0](v24, -1, -1);
    }

    v25 = v22;
    v26 = v23;
  }

  v14(v25, v26);
  v36 = v0[23];
  v35 = v0[24];
  v37 = v0[22];

  v38 = v0[1];

  return v38(0);
}

uint64_t sub_240A05DF4()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240A05EFC, v2, v1);
}

uint64_t sub_240A05EFC()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 200);

  swift_unknownObjectRelease();
  v4 = *(v0 + 240);

  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 176);

  v8 = *(v0 + 8);

  return v8(v4);
}

uint64_t sub_240A06120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_240A2C21C();
  v3[5] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A061BC, v5, v4);
}

uint64_t sub_240A061BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_240A06280;
  v8 = v0[4];
  v9 = v0[2];

  return sub_240A05884(v9);
}

uint64_t sub_240A06280(char a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_240A0656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_240A2C21C();
  v3[5] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A06608, v5, v4);
}

uint64_t sub_240A06608()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v4);
  swift_unknownObjectRetain();
  v5 = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_240A066C8;
  v7 = v0[4];

  return sub_240A07194();
}

uint64_t sub_240A066C8(char a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v9 = *v1;

  swift_unknownObjectRelease();
  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_240A069C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_240A2C21C();
  v4[6] = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A06A5C, v6, v5);
}

uint64_t sub_240A06A5C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v4);
  v6 = v5;
  swift_unknownObjectRetain();
  v7 = v2;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_240A06B24;
  v9 = v0[5];

  return sub_240A07644();
}

uint64_t sub_240A06B24(char a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  swift_unknownObjectRelease();
  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_240A06D90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_240A06DC0()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC14AppleIDSetupUIP33_C3572E3C1D8DC9EF23BF6901B87D7EFD10ChildSetup_childFlowPresenter] = [objc_allocWithZone(type metadata accessor for AISChildSetupPresenter()) init];
  swift_unknownObjectWeakAssign();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ChildSetup();
  v1 = objc_msgSendSuper2(&v4, sel_init);
  v2 = *&v1[OBJC_IVAR____TtC14AppleIDSetupUIP33_C3572E3C1D8DC9EF23BF6901B87D7EFD10ChildSetup_childFlowPresenter];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v1;
}

id sub_240A06E90(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_authContext] = 0;
  v6 = &v3[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_childSetup];
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_childSetup] = 0;
  v7 = &v3[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_childSetupController];
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_childSetupController] = 0;
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_signInOptionsAuthController] = a1;
  v8 = OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_context;
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_context] = a2;
  swift_unknownObjectWeakAssign();
  v9 = *&v3[v8];
  v10 = a1;
  v11 = a2;
  v12 = [v9 signInFlowType];
  if (v12 == 1)
  {
    v20 = objc_allocWithZone(type metadata accessor for ChildSetup());
    swift_unknownObjectRetain();
    v19 = sub_240A06DC0();
    swift_unknownObjectRelease();
    v7 = v6;
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_7:
    v22.receiver = v3;
    v22.super_class = type metadata accessor for ShieldSetup();
    return objc_msgSendSuper2(&v22, sel_init);
  }

  v13 = *&v10[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings];
  v14 = objc_opt_self();

  result = [v14 defaultStore];
  if (result)
  {
    v16 = result;
    v17 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v18 = objc_allocWithZone(type metadata accessor for SignInOptionChildSetupController());
    v19 = sub_240A0B5C4(v13, v17, 0);

LABEL_6:
    v21 = *v7;
    *v7 = v19;

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_240A07060()
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "NotifyParentView familyCirclePresentationHandler", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_240A07194()
{
  v1[18] = v0;
  v2 = sub_240A2B00C();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  sub_240A2C21C();
  v1[22] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v1[23] = v6;
  v1[24] = v5;

  return MEMORY[0x2822009F8](sub_240A07288, v6, v5);
}

uint64_t sub_240A07288()
{
  v1 = v0[18];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if ([Strong respondsToSelector_])
    {
      v0[2] = v0;
      v0[7] = v0 + 26;
      v0[3] = sub_240A074C0;
      v4 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2409F972C;
      v0[13] = &block_descriptor_58;
      v0[14] = v4;
      [v3 setupLocationServicesWithCompletion_];

      return MEMORY[0x282200938](v0 + 2);
    }

    swift_unknownObjectRelease();
  }

  v6 = v0[21];
  v5 = v0[22];

  sub_240A2AE9C();
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C2CC();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];
  if (v9)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2408FE000, v7, v8, "ChildSetup skip location services setup", v13, 2u);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v14 = v0[21];

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_240A074C0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240A075C8, v2, v1);
}

uint64_t sub_240A075C8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);

  swift_unknownObjectRelease();
  v3 = *(v0 + 208);
  v4 = *(v0 + 168);

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_240A07644()
{
  v1[18] = v0;
  v2 = sub_240A2B00C();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  sub_240A2C21C();
  v1[23] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v1[24] = v6;
  v1[25] = v5;

  return MEMORY[0x2822009F8](sub_240A07744, v6, v5);
}

uint64_t sub_240A07744()
{
  v1 = v0[22];
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "ChildSetup setupPasscodeAndBiometric", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[18];

  v9 = *(v7 + 8);
  v9(v5, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v11 = Strong;
    v0[2] = v0;
    v0[7] = v0 + 27;
    v0[3] = sub_240A07A10;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2409F972C;
    v0[13] = &block_descriptor_28;
    v0[14] = v12;
    [v11 setupPasscodeAndBiometricWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v13 = v0[23];
    v14 = v0[21];

    sub_240A2AE9C();
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C2AC();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[20];
    v18 = v0[21];
    v20 = v0[19];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2408FE000, v15, v16, "ChildSetup setupPasscodeAndBiometric failed because there is no delegate", v21, 2u);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    v9(v18, v20);
    v23 = v0[21];
    v22 = v0[22];

    v24 = v0[1];

    return v24(0);
  }
}

uint64_t sub_240A07A10()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240A07B18, v2, v1);
}

uint64_t sub_240A07B18()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);

  swift_unknownObjectRelease();
  v3 = *(v0 + 216);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);

  v6 = *(v0 + 8);

  return v6(v3);
}

void sub_240A07B9C(void *a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v53 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = v53 - v16;
  sub_240A2AE9C();
  v18 = a1;
  v19 = sub_240A2AFFC();
  v20 = sub_240A2C2CC();

  v21 = os_log_type_enabled(v19, v20);
  v56 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v55 = v14;
    v23 = v22;
    v53[0] = swift_slowAlloc();
    v57 = v53[0];
    *v23 = 136315138;
    v24 = v18;
    v53[1] = v2;
    v25 = v24;
    v26 = [v24 description];
    v27 = sub_240A2BF4C();
    v54 = v10;
    v28 = v27;
    v29 = v5;
    v30 = v4;
    v32 = v31;

    v33 = sub_240925464(v28, v32, &v57);
    v4 = v30;
    v5 = v29;

    *(v23 + 4) = v33;
    v10 = v54;
    _os_log_impl(&dword_2408FE000, v19, v20, "ChildSetup completed withResult %s", v23, 0xCu);
    v34 = v53[0];
    __swift_destroy_boxed_opaque_existential_0(v53[0]);
    MEMORY[0x245CCDDB0](v34, -1, -1);
    v35 = v23;
    v14 = v55;
    MEMORY[0x245CCDDB0](v35, -1, -1);
  }

  v36 = *(v5 + 8);
  v36(v17, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_240A2AE9C();
    v45 = sub_240A2AFFC();
    v46 = sub_240A2C2AC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v10;
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2408FE000, v45, v46, "ChildSetup failed because there is no delegate", v48, 2u);
      MEMORY[0x245CCDDB0](v48, -1, -1);

      v49 = v47;
    }

    else
    {

      v49 = v10;
    }

LABEL_16:
    v36(v49, v4);
    return;
  }

  v38 = Strong;
  v39 = sub_240A2AAFC();
  v40 = sub_240A2ABFC();

  v41 = sub_240A09534(v40);

  if (!v41)
  {
    sub_240A2AE9C();
    v50 = sub_240A2AFFC();
    v51 = sub_240A2C2AC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2408FE000, v50, v51, "ChildSetup setupPerformAIDASignIn failed. Unexpected auth response type", v52, 2u);
      MEMORY[0x245CCDDB0](v52, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v49 = v14;
    goto LABEL_16;
  }

  v42 = objc_allocWithZone(MEMORY[0x277CEDE80]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
  v43 = sub_240A2BE9C();

  v44 = [v42 initWithAuthResults_];

  if ([v38 respondsToSelector_])
  {
    [v38 shieldSetupDidFinishWithResult:v44 viewControllersToRemove:0 error:0];
  }

  else
  {
    [v38 shieldSetupDidFinishWithResult:v44 error:0];
  }

  swift_unknownObjectRelease();
}

void sub_240A08044()
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([Strong respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v13 = sub_240A2952C();
      [v7 shieldSetupDidFinishWithResult:0 viewControllersToRemove:0 error:v13];
      swift_unknownObjectRelease_n();
    }

    else
    {
      v13 = sub_240A2952C();
      [v7 shieldSetupDidFinishWithResult:0 error:v13];
      swift_unknownObjectRelease();
    }

    v11 = v13;
  }

  else
  {
    sub_240A2AE9C();
    v8 = sub_240A2AFFC();
    v9 = sub_240A2C2AC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2408FE000, v8, v9, "ChildSetup failed because there is no delegate", v10, 2u);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
  }
}

uint64_t sub_240A08248()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_240915E50;

  return sub_240A069C0(v2, v3, v5, v4);
}

uint64_t sub_240A08320()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_240A0656C(v2, v3, v4);
}

uint64_t sub_240A083D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_240A06120(v2, v3, v4);
}

uint64_t objectdestroy_60Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240A084D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_240A05148(v2, v3, v4);
}

uint64_t sub_240A08584()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240916360;

  return sub_240A04948(v2, v3);
}

uint64_t sub_240A08630()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_240A040E8(v2, v3, v4);
}

uint64_t block_copy_helper_134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240A0874C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240A0883C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240A087B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240A0883C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_240A08814()
{
  sub_240A0883C();
  sub_240A2B7CC();
  __break(1u);
}

unint64_t sub_240A0883C()
{
  result = qword_27E50EF00;
  if (!qword_27E50EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EF00);
  }

  return result;
}

void sub_240A08890()
{
  v0 = sub_240A2B52C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A29DBC();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF08, qword_240A38538);
  sub_240A2B82C();
  sub_2409989F4();
  sub_240A2B53C();
  (*(v1 + 8))(v5, v0);
  v11 = [objc_allocWithZone(MEMORY[0x277CF03C0]) initWithType_];
  sub_240A2BFCC();
  v12 = sub_240A2BF1C();

  [v11 setTitleText_];

  sub_240A2C02C();
  v13 = sub_240A2BF1C();

  [v11 setDetailedText_];

  [v11 setShowHeaderView_];
  v14 = [objc_allocWithZone(MEMORY[0x277CF03B8]) initWithViewModel_];
  v15 = [v14 view];
  if (v15)
  {
    v16 = v15;
    [v15 layoutIfNeeded];

    v17 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    v18 = v14;
    v19 = [v18 contentView];
    [v19 addSubview_];

    v35 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_240A38420;
    v21 = [v18 contentView];
    v22 = [v21 heightAnchor];

    [v18 availableContentViewHeight];
    v23 = [v22 constraintEqualToConstant_];

    *(v20 + 32) = v23;
    v24 = [v17 topAnchor];
    v25 = [v18 contentView];
    v26 = [v25 topAnchor];

    v27 = [v24 constraintEqualToAnchor_];
    *(v20 + 40) = v27;
    v28 = [v17 centerXAnchor];

    v29 = [v18 contentView];
    v30 = [v29 centerXAnchor];

    v31 = [v28 constraintEqualToAnchor_];
    *(v20 + 48) = v31;
    sub_24092F234();
    v32 = sub_240A2C15C();

    [v35 activateConstraints_];

    [v17 startAnimating];
    v33 = [v18 view];

    if (v33)
    {
      [v33 layoutIfNeeded];

      (*(v36 + 8))(v10, v37);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_240A08E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF10, &qword_240A385C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF18, &qword_240A385C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v26 - v12;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 1)
  {
    v26[0] = swift_getKeyPath();
    v16 = &v13[*(v9 + 36)];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF40, &qword_240A385D8);
    v26[1] = a2;
    v18 = *(v17 + 28);
    v19 = *MEMORY[0x277CE0560];
    v20 = sub_240A2B73C();
    v21 = a1;
    v22 = *(v20 - 8);
    (*(v22 + 104))(&v16[v18], v19, v20);
    (*(v22 + 56))(&v16[v18], 0, 1, v20);
    *v16 = v26[0];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF20, &qword_240A385D0);
    (*(*(v23 - 8) + 16))(v13, v21, v23);
    sub_240A09298(v13, v8);
    swift_storeEnumTagMultiPayload();
    sub_240A091B4();
    sub_24091CE28(&qword_27E50EF30, &qword_27E50EF20, &qword_240A385D0);
    sub_240A2B6EC();
    return sub_240A09308(v13);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF20, &qword_240A385D0);
    (*(*(v25 - 8) + 16))(v8, a1, v25);
    swift_storeEnumTagMultiPayload();
    sub_240A091B4();
    sub_24091CE28(&qword_27E50EF30, &qword_27E50EF20, &qword_240A385D0);
    return sub_240A2B6EC();
  }
}

unint64_t sub_240A091B4()
{
  result = qword_27E50EF28;
  if (!qword_27E50EF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EF18, &qword_240A385C8);
    sub_24091CE28(&qword_27E50EF30, &qword_27E50EF20, &qword_240A385D0);
    sub_24091CE28(&qword_27E50EF38, &qword_27E50EF40, &qword_240A385D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EF28);
  }

  return result;
}

uint64_t sub_240A09298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF18, &qword_240A385C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240A09308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF18, &qword_240A385C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240A09370()
{
  result = qword_27E50EF48;
  if (!qword_27E50EF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50EF50, &qword_240A38610);
    sub_240A091B4();
    sub_24091CE28(&qword_27E50EF30, &qword_27E50EF20, &qword_240A385D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EF48);
  }

  return result;
}

void sub_240A09428(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_navController);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_navController) = a1;

  v4 = objc_allocWithZone(MEMORY[0x277CFDAE0]);
  v5 = a1;
  v6 = [v4 initWithPresentingViewController_];
  v7 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_cdpUIController);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_cdpUIController) = v6;

  sub_240A0B390(v5, *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_childFlowPresenter));
  v8 = [objc_opt_self() sharedApplication];
  v9 = sub_240A2BF1C();
  [v8 _setIdleTimerDisabled_forReason_];
}

unint64_t sub_240A09534(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BB20, qword_240A39260);
    v2 = sub_240A2C5CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_240913DC0(*(a1 + 56) + 32 * v15, v28);
        *&v27 = v17;
        *(&v27 + 1) = v18;
        v25[2] = v27;
        v26[0] = v28[0];
        v26[1] = v28[1];
        v19 = v27;
        sub_24091C780(v26, v25);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_240925A1C(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v24;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_240A09798()
{
  ObjectType = swift_getObjectType();
  v0 = sub_240A2BE4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A2BE6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240979B08();
  v12 = sub_240A2C32C();
  aBlock[4] = sub_240A0B52C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409EC704;
  aBlock[3] = &block_descriptor_29;
  v13 = _Block_copy(aBlock);
  sub_240A2BE5C();
  v19 = MEMORY[0x277D84F90];
  sub_240A0C0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF90, &unk_240A30E50);
  sub_24098546C();
  sub_240A2C3FC();
  MEMORY[0x245CCD000](0, v11, v5, v13);
  _Block_release(v13);

  (*(v1 + 8))(v5, v0);
  (*(v7 + 8))(v11, v6);

  v18.receiver = v17;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

uint64_t sub_240A09B28(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_240A2974C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_240A2B00C();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_240A2C21C();
  v2[18] = sub_240A2C20C();
  v10 = sub_240A2C1BC();
  v2[19] = v10;
  v2[20] = v9;

  return MEMORY[0x2822009F8](sub_240A09C9C, v10, v9);
}

uint64_t sub_240A09C9C()
{
  v1 = v0[17];
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "ChildSetupController: Begin AIDA sign-in.", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[17];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[7];

  v9 = *(v7 + 8);
  v9(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
  sub_240A2BEAC();
  v0[21] = 0;
  v10 = v0[18];
  v11 = v0[14];

  sub_240A2AE9C();
  v12 = sub_240A2AFFC();
  v13 = sub_240A2C28C();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  if (v14)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2408FE000, v12, v13, "AIDA sign-in missing authResponse.", v18, 2u);
    MEMORY[0x245CCDDB0](v18, -1, -1);
  }

  v9(v15, v17);
  v20 = v0[16];
  v19 = v0[17];
  v22 = v0[14];
  v21 = v0[15];
  v23 = v0[11];

  v24 = v0[1];

  return v24(0);
}

uint64_t sub_240A0A1D8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 168);
  v8 = *v1;
  *(*v1 + 200) = a1;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);

  return MEMORY[0x2822009F8](sub_240A0A324, v6, v5);
}

uint64_t sub_240A0A324()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);

  v4 = *(v0 + 200);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v0 + 88);

  v10 = *(v0 + 8);

  return v10(v4);
}

uint64_t sub_240A0A560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_240A2C21C();
  v3[5] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0A5FC, v5, v4);
}

uint64_t sub_240A0A5FC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_240A06280;
  v8 = v0[4];
  v9 = v0[2];

  return sub_240A09B28(v9);
}

uint64_t sub_240A0A854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = sub_240A2C21C();
  v3[4] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0A8F0, v5, v4);
}

uint64_t sub_240A0A8F0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v0[6] = sub_240A2C20C();
  v0[7] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0A998, v5, v4);
}

uint64_t sub_240A0A998()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0AA1C, v5, v4);
}

uint64_t sub_240A0AA1C()
{
  v2 = v0[5];
  v1 = v0[6];

  v2[2](v2, 1);
  _Block_release(v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_240A0AC24(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = sub_240A2C21C();
  v2[4] = sub_240A2C20C();
  v4 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0ACC0, v4, v3);
}

uint64_t sub_240A0ACC0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v0[6] = sub_240A2C20C();
  v0[7] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0AD68, v5, v4);
}

uint64_t sub_240A0AD68()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0C12C, v5, v4);
}

uint64_t sub_240A0AED4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_240916360;

  return v7();
}

uint64_t sub_240A0AFBC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_240915E50;

  return v8();
}

uint64_t sub_240A0B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v26 - v12;
  sub_2409FC880(a3, v26 - v12);
  v14 = sub_240A2C24C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_240919300(v13, &unk_27E50B420, &qword_240A30800);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_240A2C23C();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_240A2C1BC();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_240A2BFBC() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_240919300(a3, &unk_27E50B420, &qword_240A30800);

    return v24;
  }

LABEL_8:
  sub_240919300(a3, &unk_27E50B420, &qword_240A30800);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id sub_240A0B390(void *a1, uint64_t a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + OBJC_IVAR___AISChildSetupPresenter_presentationHandler);
  *(a2 + OBJC_IVAR___AISChildSetupPresenter_presentationHandler) = a1;

  v11 = [a1 navigationController];
  if (v11)
  {
    v12 = v11;
    sub_240A2AE9C();
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C2CC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "AISChildSetupPresenter will handle navigation delegate callbacks", v15, 2u);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    [v12 setDelegate_];
  }

  return sub_2409F79DC();
}

void sub_240A0B52C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_240A2BF1C();
  [v0 _setIdleTimerDisabled_forReason_];
}

char *sub_240A0B5C4(uint64_t a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_aidaSignInController;
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_aidaSignInController] = 0;
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_cdpUIController] = 0;
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_navController] = 0;
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_signInSettings] = a1;
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_aidaOwnersManager] = a2;
  *&v3[v8] = a3;
  v9 = objc_allocWithZone(type metadata accessor for AISChildSetupPresenter());
  v10 = a3;

  v11 = a2;
  v12 = [v9 init];
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_childFlowPresenter] = v12;
  v13 = *&v12[OBJC_IVAR___AISChildSetupPresenter_settings];
  *&v12[OBJC_IVAR___AISChildSetupPresenter_settings] = a1;

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = *&v14[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_childFlowPresenter];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v14;
}

uint64_t sub_240A0B708()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v40 - v10;
  v12 = [objc_opt_self() sharedApplication];
  v13 = sub_240A2BF1C();
  [v12 _setIdleTimerDisabled_forReason_];

  v14 = sub_240A2AAFC();
  v15 = sub_240A2ABFC();

  v16 = sub_240A09534(v15);

  if (v16)
  {
    sub_240A2AE9C();

    v17 = sub_240A2AFFC();
    v18 = sub_240A2C29C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v1;
      v41 = v20;
      v21 = v20;
      *v19 = 136642819;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
      v22 = sub_240A2BECC();
      v24 = sub_240925464(v22, v23, &v41);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2408FE000, v17, v18, "ChildSetupController: Child setup complete with  result: %{sensitive}s.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v25 = v21;
      v1 = v40;
      MEMORY[0x245CCDDB0](v25, -1, -1);
      MEMORY[0x245CCDDB0](v19, -1, -1);
    }

    (*(v3 + 8))(v11, v2);
    v26 = objc_allocWithZone(sub_240A2AA9C());
    v27 = sub_240A2AA7C();
    v28 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_signInSettings);
    v29 = *(v28 + 24);
    v30 = *(v28 + 32);

    v29(v27, 0);
  }

  else
  {
    sub_240A2AE9C();
    v31 = sub_240A2AFFC();
    v32 = sub_240A2C2AC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2408FE000, v31, v32, "Missing auth results for the child auth.", v33, 2u);
      MEMORY[0x245CCDDB0](v33, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v34 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_signInSettings);
    v36 = *(v34 + 24);
    v35 = *(v34 + 32);
    sub_240977EF8();
    v37 = swift_allocError();
    *v38 = 1;

    v36(v37, 1);
  }
}

uint64_t sub_240A0BADC(void *a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedApplication];
  v11 = sub_240A2BF1C();
  [v10 _setIdleTimerDisabled_forReason_];

  sub_240A2AE9C();
  v12 = a1;
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C2AC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = a1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_2408FE000, v13, v14, "Failed child setup with error: %@", v15, 0xCu);
    sub_240919300(v16, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v16, -1, -1);
    MEMORY[0x245CCDDB0](v15, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v19 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_signInSettings);
  v21 = *(v19 + 24);
  v20 = *(v19 + 32);

  v21(a1, 1);
}

uint64_t sub_240A0BD24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_240A0AC24(v2, v3);
}

uint64_t sub_240A0BDD8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240916360;

  return sub_2409251F0(a1, v5);
}

uint64_t sub_240A0BE90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240915E50;

  return sub_2409251F0(a1, v5);
}

uint64_t sub_240A0BF48()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_240916360;

  return sub_240A0A854(v2, v3, v5);
}

uint64_t sub_240A0C008()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240915E50;

  return sub_240A0A560(v2, v3, v4);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_240A0C0D4()
{
  result = qword_27E50CF10;
  if (!qword_27E50CF10)
  {
    sub_240A2BE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CF10);
  }

  return result;
}

uint64_t ProxCardView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getFunctionTypeMetadata1();
  *(a2 + 8) = sub_240A2C18C();
  result = sub_240A2BD3C();
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *a2 = a1;
  return result;
}

id static ProxCardViewController.newSignInSetupImageCardViewControllerForOOB(deviceModel:)(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SetupStartViewController();
  v5 = objc_allocWithZone(started);
  v6 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = started;

  return objc_msgSendSuper2(&v8, sel_initWithContentView_, 0);
}

__n128 ProxCardView.activityIndicator(withStatus:)@<Q0>(__n128 *a1@<X8>)
{
  v3 = v1[1].n128_u64[0];
  v4 = v1[1].n128_u64[1];
  v5 = v1[2].n128_u8[0];
  v9 = *v1;
  v6 = v1->n128_u64[0];
  v7 = sub_240A2BF1C();
  [v6 showActivityIndicatorWithStatus_];

  result = v9;
  *a1 = v9;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v4;
  a1[2].n128_u8[0] = v5;
  return result;
}

uint64_t ProxCardView<>.init(contentView:title:subtitle:dismissalType:isPrimaryButtonEnabled:)@<X0>(void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, char a6)
{
  *(a5 + 8) = MEMORY[0x277D84F90];
  sub_240A2BD3C();
  *(a5 + 16) = v15;
  *(a5 + 24) = v16;
  *(a5 + 32) = v17;
  v9 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
  *a5 = v9;
  [v9 setDismissalType_];
  v10 = sub_240A2BF1C();

  [v9 setTitle_];

  v11 = sub_240A2BF1C();

  [v9 setSubtitle_];

  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  return result;
}

__n128 ProxCardView.action(withTitle:style:_:)@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, __n128 *a5@<X8>)
{
  v21 = v5[1].n128_u64[1];
  v22 = v5[1].n128_u64[0];
  v20 = v5[2].n128_u8[0];
  v10 = swift_allocObject();
  v19 = *v5;
  v11 = v5->n128_u64[0];
  swift_unknownObjectUnownedInit();
  v12 = swift_allocObject();
  v12[2] = *(a4 + 16);
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = v10;
  v13 = v11;

  v14 = sub_240A2BF1C();
  aBlock[4] = sub_240A0DFA0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409DFF20;
  aBlock[3] = &block_descriptor_30;
  v15 = _Block_copy(aBlock);
  v16 = [objc_opt_self() actionWithTitle:v14 style:a1 handler:v15];

  _Block_release(v15);

  result = v19;
  *a5 = v19;
  a5[1].n128_u64[0] = v22;
  a5[1].n128_u64[1] = v21;
  a5[2].n128_u8[0] = v20;
  return result;
}

uint64_t ProxCardView<>.init(title:subtitle:dismissalType:isPrimaryButtonEnabled:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, char a4@<W7>, uint64_t a5@<X8>)
{
  sub_240A2BD3C();
  v8 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
  [v8 setDismissalType_];
  v9 = sub_240A2BF1C();

  [v8 setTitle_];

  v10 = sub_240A2BF1C();

  [v8 setSubtitle_];

  v12 = MEMORY[0x277D84F90];
  *a5 = v8;
  *(a5 + 8) = v12;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

id static ProxCardViewController.newSignInSetupIOSUpdateNeededViewController()()
{
  v0 = [objc_opt_self() labelColor];
  v1 = type metadata accessor for ProxCardViewController();
  v2 = objc_allocWithZone(v1);
  v12[0] = 0xD00000000000001CLL;
  v12[1] = 0x8000000240A3F570;
  v12[2] = 0;
  v13 = 0;
  v3 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v4 = sub_2409E0A0C(v12);
  v5 = *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v0;
  v6 = v0;

  [*&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v11.receiver = v2;
  v11.super_class = v1;
  v7 = objc_msgSendSuper2(&v11, sel_initWithContentView_, v4);
  [v7 setDismissalType_];
  v8 = sub_240A2BF1C();
  [v7 setTitle_];

  v9 = sub_240A2BF1C();
  [v7 setSubtitle_];

  return v7;
}

id ProxCardViewController.__allocating_init(title:subtitle:imageDefiniton:imageTintColor:dismissalType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v12 = objc_allocWithZone(v8);
  v13 = *(a5 + 2);
  v14 = *(a5 + 24);
  v24 = *a5;
  v25 = v13;
  v26 = v14;
  v15 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v16 = sub_2409E0A0C(&v24);
  v17 = *&v16[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v16[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = a6;
  v18 = a6;

  [*&v16[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v23.receiver = v12;
  v23.super_class = v8;
  v19 = objc_msgSendSuper2(&v23, sel_initWithContentView_, v16);
  [v19 setDismissalType_];
  v20 = sub_240A2BF1C();

  [v19 setTitle_];

  v21 = sub_240A2BF1C();

  [v19 setSubtitle_];

  return v19;
}

uint64_t ProxCardView.subtitle.getter()
{
  v1 = [*v0 subtitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_240A2BF4C();

  return v3;
}

uint64_t sub_240A0CB9C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 32);
  result = ProxCardView.subtitle.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_240A0CBE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ProxCardView.subtitle.setter(v1, v2);
}

void ProxCardView.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_240A2BF1C();
  }

  else
  {
    v4 = 0;
  }

  [v3 setSubtitle_];
}

void (*ProxCardView.subtitle.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  v6 = *v2;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  *a1 = ProxCardView.subtitle.getter();
  a1[1] = v4;
  return sub_240A0CD04;
}

void sub_240A0CD04(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  if (a2)
  {
    v5 = a1[1];

    ProxCardView.subtitle.setter(v3, v2);
  }

  else
  {
    ProxCardView.subtitle.setter(*a1, v2);
  }
}

uint64_t ProxCardView.isPrimaryButtonEnabled.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v1;
}

uint64_t ProxCardView.isPrimaryButtonEnabled.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 16);

  v8 = *(v3 + 24);

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

id ProxCardView.makeUIViewController(context:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_240A0EC08(a2);

  return v2;
}

id sub_240A0CE60(uint64_t a1, uint64_t a2)
{
  v2 = sub_240A0EC08(a2);

  return v2;
}

uint64_t sub_240A0CE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_240A0CF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_240A0CF90()
{
  swift_getWitnessTable();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t AuthenticateAccountsStartViewController.init(connect:listAccounts:flowKind:deviceClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v7 = v6;
  v6[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_started] = 0;
  v9 = &v6[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_connect];
  *v9 = a1;
  v9[1] = a2;
  v10 = &v6[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_listAccounts];
  *v10 = a3;
  v10[1] = a4;
  v11 = "AGEMIGRATION_PAIRED_PARENT";
  if (a5 <= 1u)
  {
    if (a5)
    {
      v11 = "CLIENT_REPAIR_DESCRIPTION";
      v12 = 0xD000000000000012;
    }

    else
    {
      v12 = 0xD000000000000022;
    }

    v50 = v12;
    goto LABEL_8;
  }

  if (a5 == 3)
  {
    v50 = 0xD000000000000022;
LABEL_8:

    sub_240A2C05C();
    v51 = a6;
    v13 = sub_240A2C06C();
    v48 = v14;
    v49 = v13;

    sub_240A2C05C();
    v15 = sub_240A2C06C();
    v17 = v16;

    v18 = v11 | 0x8000000000000000;
    v19 = sub_240A2C06C();
    v21 = v20;
    v22 = sub_240A2C06C();
    v24 = v23;
    v25 = sub_240A2C06C();
    v27 = v26;
    v28 = [objc_opt_self() labelColor];
    v29 = &v7[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel];
    *v29 = v49;
    *(v29 + 1) = v48;
    *(v29 + 2) = v15;
    *(v29 + 3) = v17;
    *(v29 + 4) = v50;
    *(v29 + 5) = v18;
    *(v29 + 6) = 0;
    v29[56] = 0;
    *(v29 + 8) = v28;
    *(v29 + 72) = xmmword_240A35900;
    v29[88] = 0;
    *(v29 + 12) = v19;
    *(v29 + 13) = v21;
    *(v29 + 14) = v22;
    *(v29 + 15) = v24;
    *(v29 + 16) = v25;
    *(v29 + 17) = v27;
    v30 = *&v7[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 40];
    v31 = *&v7[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 48];
    LOBYTE(v25) = v7[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 56];
    v53[0] = *&v7[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 32];
    v53[1] = v30;
    v53[2] = v31;
    v54 = v25;
    objc_allocWithZone(type metadata accessor for ImageCardContentView());
    sub_2409E12F0(v53[0], v30, v31, v25);
    v32 = sub_2409E0A0C(v53);
    v52.receiver = v7;
    v52.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
    v33 = objc_msgSendSuper2(&v52, sel_initWithContentView_, v32);
    v34 = &v33[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel];
    v35 = *&v33[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 72];
    v36 = v33;
    [v36 setDismissalType_];
    v37 = *v34;
    v38 = *(v34 + 1);

    v39 = sub_240A2BF1C();

    [v36 setTitle_];

    v40 = *(v34 + 2);
    v41 = *(v34 + 3);

    v42 = sub_240A2BF1C();

    [v36 setSubtitle_];

    v43 = *(v34 + 8);
    v44 = *&v32[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
    *&v32[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v43;
    v45 = v43;

    [*&v32[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];

    v46 = sub_240A29DBC();
    (*(*(v46 - 8) + 8))(v51, v46);

    return v36;
  }

  result = sub_240A2C58C();
  __break(1u);
  return result;
}

void sub_240A0D474()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v1 = &v0[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel];
  v2 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 96];
  v3 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 104];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_240A2BF1C();
  v19 = sub_240A0EE6C;
  v20 = v4;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2409DFF20;
  v18 = &block_descriptor_9_0;
  v6 = _Block_copy(&v15);
  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v9 = *(v1 + 16);
  v10 = *(v1 + 17);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = sub_240A2BF1C();
  v19 = sub_240A0EE74;
  v20 = v11;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2409DFF20;
  v18 = &block_descriptor_13;
  v13 = _Block_copy(&v15);
  v14 = [v7 actionWithTitle:v12 style:1 handler:v13];

  _Block_release(v13);
}

void sub_240A0D6FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((Strong[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_started] & 1) == 0)
    {
      Strong[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_started] = 1;
      v2 = &Strong[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel];
      [Strong setDismissalType_];
      v3 = *(v2 + 14);
      v4 = *(v2 + 15);
      v5 = sub_240A2BF1C();
      [v1 showActivityIndicatorWithStatus_];

      v6 = *&v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_connect + 8];
      (*&v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_connect])();
    }
  }
}

uint64_t sub_240A0D7C0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_listAccounts);
    v2 = *(result + OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_listAccounts + 8);
    v3 = result;

    v1();
  }

  return result;
}

id sub_240A0D888(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
  result = objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v4 = &v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel];
  if (v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 88] == 1 && (v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_started] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_started] = 1;
    [v1 setDismissalType_];
    v5 = *(v4 + 14);
    v6 = *(v4 + 15);
    v7 = sub_240A2BF1C();
    [v1 showActivityIndicatorWithStatus_];

    v8 = *&v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_connect];
    v9 = *&v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_connect + 8];
    return v8();
  }

  return result;
}

id sub_240A0D9A0(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
  return objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1 & 1);
}

id ProxCardViewController.init(title:subtitle:imageDefiniton:imageTintColor:dismissalType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v11 = *(a5 + 2);
  v12 = *(a5 + 24);
  v22 = *a5;
  v23 = v11;
  v24 = v12;
  v13 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v14 = sub_2409E0A0C(&v22);
  v15 = *&v14[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v14[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = a6;
  v16 = a6;

  [*&v14[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v21.receiver = v8;
  v21.super_class = type metadata accessor for ProxCardViewController();
  v17 = objc_msgSendSuper2(&v21, sel_initWithContentView_, v14);
  [v17 setDismissalType_];
  v18 = sub_240A2BF1C();

  [v17 setTitle_];

  v19 = sub_240A2BF1C();

  [v17 setSubtitle_];

  return v17;
}

id ProxCardViewController.__allocating_init(contentView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContentView_];

  return v3;
}

id sub_240A0DD74(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0()
{
  sub_240A2C06C();
  sub_240A2C06C();
  v0 = [objc_opt_self() labelColor];
  v1 = type metadata accessor for ProxCardViewController();
  v2 = objc_allocWithZone(v1);
  v12[0] = 0xD000000000000022;
  v12[1] = 0x8000000240A3B260;
  v12[2] = 0;
  v13 = 0;
  v3 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v4 = sub_2409E0A0C(v12);
  v5 = *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v0;
  v6 = v0;

  [*&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v11.receiver = v2;
  v11.super_class = v1;
  v7 = objc_msgSendSuper2(&v11, sel_initWithContentView_, v4);
  [v7 setDismissalType_];
  v8 = sub_240A2BF1C();

  [v7 setTitle_];

  v9 = sub_240A2BF1C();

  [v7 setSubtitle_];

  return v7;
}

void sub_240A0DFA0(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4(Strong, a1);
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id _s14AppleIDSetupUI22ProxCardViewControllerC037newAuthenticationFailedMissingAccountefG0ACyFZ_0()
{
  sub_240A2C06C();
  sub_240A2C06C();
  v0 = [objc_opt_self() systemRedColor];
  v1 = type metadata accessor for ProxCardViewController();
  v2 = objc_allocWithZone(v1);
  v12[0] = 0xD00000000000002DLL;
  v12[1] = 0x8000000240A3D770;
  v12[2] = 0;
  v13 = 0;
  v3 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v4 = sub_2409E0A0C(v12);
  v5 = *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v0;
  v6 = v0;

  [*&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v11.receiver = v2;
  v11.super_class = v1;
  v7 = objc_msgSendSuper2(&v11, sel_initWithContentView_, v4);
  [v7 setDismissalType_];
  v8 = sub_240A2BF1C();

  [v7 setTitle_];

  v9 = sub_240A2BF1C();

  [v7 setSubtitle_];

  return v7;
}

id _s14AppleIDSetupUI22ProxCardViewControllerC014newSetupFailedefG011deviceClassAC0aB009AISDeviceL0O_tFZ_0()
{
  sub_240A2C06C();
  sub_240A2C06C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_240A305D0;
  v1 = sub_240A29D9C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_240913AEC();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_240A2BF6C();

  v4 = [objc_opt_self() systemRedColor];
  v5 = type metadata accessor for ProxCardViewController();
  v6 = objc_allocWithZone(v5);
  v16[0] = 0xD00000000000002DLL;
  v16[1] = 0x8000000240A3D770;
  v16[2] = 0;
  v17 = 0;
  v7 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v8 = sub_2409E0A0C(v16);
  v9 = *&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v4;
  v10 = v4;

  [*&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v15.receiver = v6;
  v15.super_class = v5;
  v11 = objc_msgSendSuper2(&v15, sel_initWithContentView_, v8);
  [v11 setDismissalType_];
  v12 = sub_240A2BF1C();

  [v11 setTitle_];

  v13 = sub_240A2BF1C();

  [v11 setSubtitle_];

  return v11;
}

id _s14AppleIDSetupUI22ProxCardViewControllerC024newRepairAccountCompleteefG0ACyFZ_0()
{
  v0 = sub_240A29DBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2C06C();
  (*(v1 + 104))(v5, *MEMORY[0x277CED640], v0);
  sub_240A2C05C();
  (*(v1 + 8))(v5, v0);
  sub_240A2C06C();

  v6 = [objc_opt_self() systemBlueColor];
  v7 = type metadata accessor for ProxCardViewController();
  v8 = objc_allocWithZone(v7);
  v18[0] = 0xD000000000000014;
  v18[1] = 0x8000000240A3F930;
  v18[2] = 0;
  v19 = 0;
  v9 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v10 = sub_2409E0A0C(v18);
  v11 = *&v10[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v10[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v6;
  v12 = v6;

  [*&v10[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v17.receiver = v8;
  v17.super_class = v7;
  v13 = objc_msgSendSuper2(&v17, sel_initWithContentView_, v10);
  [v13 setDismissalType_];
  v14 = sub_240A2BF1C();

  [v13 setTitle_];

  v15 = sub_240A2BF1C();

  [v13 setSubtitle_];

  return v13;
}

id _s14AppleIDSetupUI22ProxCardViewControllerC022newRepairAccountFailedefG0ACyFZ_0()
{
  sub_240A2C06C();
  sub_240A2C06C();
  v0 = [objc_opt_self() systemRedColor];
  v1 = type metadata accessor for ProxCardViewController();
  v2 = objc_allocWithZone(v1);
  v12[0] = 0xD00000000000002DLL;
  v12[1] = 0x8000000240A3D770;
  v12[2] = 0;
  v13 = 0;
  v3 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v4 = sub_2409E0A0C(v12);
  v5 = *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v0;
  v6 = v0;

  [*&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v11.receiver = v2;
  v11.super_class = v1;
  v7 = objc_msgSendSuper2(&v11, sel_initWithContentView_, v4);
  [v7 setDismissalType_];
  v8 = sub_240A2BF1C();

  [v7 setTitle_];

  v9 = sub_240A2BF1C();

  [v7 setSubtitle_];

  return v7;
}

id _s14AppleIDSetupUI22ProxCardViewControllerC026newRepairAccountInProgressefG0ACyFZ_0()
{
  v0 = sub_240A29DBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2C06C();
  (*(v1 + 104))(v5, *MEMORY[0x277CED640], v0);
  sub_240A2C05C();
  (*(v1 + 8))(v5, v0);
  sub_240A2C06C();

  v6 = [objc_opt_self() labelColor];
  v7 = type metadata accessor for ProxCardViewController();
  v8 = objc_allocWithZone(v7);
  v18 = xmmword_240A386F0;
  v19 = 0;
  v20 = 0;
  v9 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v10 = sub_2409E0A0C(&v18);
  v11 = *&v10[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v10[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v6;
  v12 = v6;

  [*&v10[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v17.receiver = v8;
  v17.super_class = v7;
  v13 = objc_msgSendSuper2(&v17, sel_initWithContentView_, v10);
  [v13 setDismissalType_];
  v14 = sub_240A2BF1C();

  [v13 setTitle_];

  v15 = sub_240A2BF1C();

  [v13 setSubtitle_];

  return v13;
}

uint64_t sub_240A0EC08(uint64_t a1)
{
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 32);
  v8 = *(v1 + 1);
  v4 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  v2 = sub_240A2C1AC();

  swift_getWitnessTable();
  sub_240A2C12C();
  (*(*(v2 - 8) + 8))(&v8, v2);
  return v5;
}

void sub_240A0ED08(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = [a1 actions];
  sub_240A0F0FC();
  v6 = sub_240A2C16C();

  if (v6 >> 62)
  {
    if (sub_240A2C59C())
    {
      goto LABEL_3;
    }

LABEL_8:

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x245CCD150](0, v6);
    goto LABEL_6;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_6:
    v8 = v7;

    v11 = v2;
    v12 = v3;
    v13 = v4;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
    MEMORY[0x245CCC9B0](&v10, v9);
    [v8 setEnabled_];

    return;
  }

  __break(1u);
}

uint64_t sub_240A0EE98()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_240A0EEE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240A0EF30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_240A0F010(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_240A0F058(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_240A0F0FC()
{
  result = qword_27E50BF78;
  if (!qword_27E50BF78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50BF78);
  }

  return result;
}

uint64_t sub_240A0F148(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *v2;
  return v3(&v6);
}

id sub_240A0F1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView] = v9;
  if (a3)
  {
    v10 = sub_240A2BF1C();
  }

  else
  {
    v10 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for SignInOptionCell();
  v11 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_, a1, v10);

  v12 = v11;
  sub_240A0F370();
  sub_240A0F4A8();

  return v12;
}

void sub_240A0F370()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView;
  [*&v0[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView] addSubview_];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title;
  [*&v0[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title] setTextAlignment_];
  [*&v0[v2] setNumberOfLines_];
  [*&v0[v2] setLineBreakMode_];
  [*&v0[v1] addSubview_];
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle;
  [*&v0[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle] setTextAlignment_];
  [*&v0[v3] setNumberOfLines_];
  [*&v0[v3] setLineBreakMode_];
  [*&v0[v1] addSubview_];
  v4 = [v0 contentView];
  [v4 addSubview_];
}

void sub_240A0F4A8()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon;
  [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon) setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title;
  [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title) setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle;
  v52 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle;
  [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle) setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView;
  [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView) setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1144750080;
  [*(v0 + v3) setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1144750080;
  [*(v0 + v2) setContentHuggingPriority:1 forAxis:v6];
  v51 = [v0 contentView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_240A389D0;
  v8 = [*(v0 + v4) topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 &selRef_tableView_targetIndexPathForMoveFromRowAtIndexPath_toProposedIndexPath_];

  v11 = [v8 constraintEqualToAnchor:v10 constant:15.0];
  *(v7 + 32) = v11;
  v12 = [*(v0 + v4) bottomAnchor];
  v13 = [v0 contentView];
  v14 = [v13 0x278CB2D25];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-15.0];
  *(v7 + 40) = v15;
  v16 = [*(v0 + v4) leadingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 &selRef_remoteUIRequestComplete_error_ + 1];

  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  *(v7 + 48) = v19;
  v20 = [*(v0 + v4) trailingAnchor];
  v21 = [v0 contentView];
  v22 = [v21 &selRef_tableView_previewForHighlightingContextMenuWithConfiguration_ + 4];

  v23 = [v20 constraintEqualToAnchor:v22 constant:16.0];
  *(v7 + 56) = v23;
  v24 = [*(v0 + v4) heightAnchor];
  v25 = [v24 constraintGreaterThanOrEqualToConstant_];

  *(v7 + 64) = v25;
  v26 = [*(v0 + v1) widthAnchor];
  v27 = [v26 constraintEqualToConstant_];

  *(v7 + 72) = v27;
  v28 = [*(v0 + v1) heightAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v7 + 80) = v29;
  v30 = [*(v0 + v1) leadingAnchor];
  v31 = [*(v0 + v4) leadingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:0.0];

  *(v7 + 88) = v32;
  v33 = [*(v0 + v1) trailingAnchor];
  v34 = [*(v0 + v2) leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:-10.0];

  *(v7 + 96) = v35;
  v36 = [*(v0 + v2) topAnchor];
  v37 = [*(v0 + v4) topAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v7 + 104) = v38;
  v39 = [*(v0 + v2) trailingAnchor];
  v40 = [*(v0 + v4) trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-14.0];

  *(v7 + 112) = v41;
  v42 = [*&v52[v0] topAnchor];
  v43 = [*(v0 + v2) bottomAnchor];
  v44 = [v42 &selRef:v43 addConstraint:2.0 + 6];

  *(v7 + 120) = v44;
  v45 = [*&v52[v0] trailingAnchor];
  v46 = [*(v0 + v4) trailingAnchor];
  v47 = [v45 &selRef:v46 addConstraint:-14.0 + 6];

  *(v7 + 128) = v47;
  v48 = [*&v52[v0] leadingAnchor];
  v49 = [*(v0 + v2) leadingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v7 + 136) = v50;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v53 = sub_240A2C15C();

  [v51 addConstraints_];
}

void sub_240A0FBB4(int a1)
{
  v2 = v1;
  v4 = sub_240A2974C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x277CED220];
  v11 = v5[13];
  v11(v9, v10, v4);
  v12 = sub_240A2973C();
  v13 = v5[1];
  v13(v9, v4);
  if (v12)
  {
    v30 = [v2 contentView];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v14 = swift_allocObject();
    v28 = a1;
    v15 = v14;
    *(v14 + 16) = xmmword_240A32D10;
    v29 = [*&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon] topAnchor];
    v16 = [*&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title] topAnchor];
    v17 = 0.0;
    if (v28)
    {
      (v11)(v9, v10, v4, 0.0);
      v18 = sub_240A2973C();
      v13(v9, v4);
      v17 = 0.0;
      if (v18)
      {
        v17 = -8.0;
      }
    }

    v19 = v29;
    v20 = [v29 constraintEqualToAnchor:v16 constant:v17];

    *(v15 + 32) = v20;
    sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
    v21 = sub_240A2C15C();

    v22 = v30;
    [v30 addConstraints_];
  }

  else
  {
    v22 = [v2 contentView];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_240A32D10;
    v24 = [*&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon] centerYAnchor];
    v25 = [*&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView] centerYAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v23 + 32) = v26;
    sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
    v21 = sub_240A2C15C();

    [v22 addConstraints_];
  }
}

void sub_240A0FF20(int a1)
{
  v2 = v1;
  v46 = sub_240A2974C();
  v45 = *(v46 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v46, v5);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = *MEMORY[0x277D76988];
  v9 = [v7 _preferredFontForTextStyle_weight_];
  if (!v9)
  {
    v9 = [v7 preferredFontForTextStyle_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE98, &unk_240A345E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = sub_2409194E8(0, &unk_27E50CEA0, 0x277D74300);
  *(inited + 64) = v12;
  *(inited + 40) = v9;
  v13 = v11;
  v51 = v9;
  sub_240926DE0(inited);
  swift_setDeallocating();
  sub_240A10984(inited + 32);
  v52 = a1;
  v47 = a1 & 1;
  sub_240A2C06C();
  v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v15 = sub_240A2BF1C();

  type metadata accessor for Key(0);
  v17 = v16;
  sub_240A109EC();
  v48 = v17;
  v18 = sub_240A2BE9C();

  v19 = [v14 initWithString:v15 attributes:v18];

  v20 = *&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title];
  v50 = v19;
  [v20 setAttributedText_];
  v21 = [v7 preferredFontForTextStyle_];
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_240A32540;
  *(v22 + 32) = v13;
  *(v22 + 40) = v21;
  v23 = *MEMORY[0x277D740C0];
  *(v22 + 64) = v12;
  *(v22 + 72) = v23;
  v24 = objc_opt_self();
  v49 = v21;
  v25 = v23;
  v26 = [v24 secondaryLabelColor];
  *(v22 + 104) = sub_2409194E8(0, &unk_27E50CEB8, 0x277D75348);
  *(v22 + 80) = v26;
  sub_240926DE0(v22);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB18, &unk_240A316A0);
  swift_arrayDestroy();
  if (!v47)
  {
    v27 = v45;
    v28 = v44;
    v29 = v46;
    (*(v45 + 104))(v44, *MEMORY[0x277CED220], v46);
    sub_240A2973C();
    (*(v27 + 8))(v28, v29);
  }

  sub_240A2C06C();
  v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v31 = sub_240A2BF1C();

  v32 = sub_240A2BE9C();

  v33 = [v30 initWithString:v31 attributes:v32];

  [*&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle] setAttributedText_];
  v34 = v52;
  v35 = sub_2409E693C(v52 & 1);
  if (v35)
  {
    v36 = v35;
    v37 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon;
    v38 = *&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon];
    v39 = [v24 systemBlueColor];
    v40 = [v36 imageWithTintColor_];

    [v38 setImage_];
    v41 = *&v2[v37];
    [v41 setContentMode_];
  }

  sub_240A0FBB4(v34 & 1);
  sub_240A1059C();
  v42 = sub_240A2BF1C();

  [v2 setAccessibilityIdentifier_];
}

void sub_240A1059C()
{
  [v0 layoutIfNeeded];
  [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title) bounds];
  Height = CGRectGetHeight(v23);
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle;
  [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle) bounds];
  v3 = Height + CGRectGetHeight(v24) + 2.0 + 4.0;
  if (v3 <= 90.0)
  {
    return;
  }

  v20 = v2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView;
  v5 = [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView) constraints];
  v19 = sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v6 = sub_240A2C16C();

  if (v6 >> 62)
  {
    v7 = sub_240A2C59C();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_4:
      if (v7 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x245CCD150](i, v6);
        }

        else
        {
          v9 = *(v6 + 8 * i + 32);
        }

        v10 = v9;
        if ([v9 firstAttribute] == 8)
        {
          v11 = *(v0 + v4);
          [v11 removeConstraint_];
        }
      }
    }
  }

  v12 = [v0 contentView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_240A308E0;
  v14 = [*(v0 + v4) heightAnchor];
  v15 = [v14 constraintGreaterThanOrEqualToConstant_];

  *(v13 + 32) = v15;
  v16 = [*&v20[v0] bottomAnchor];
  v17 = [*(v0 + v4) bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v13 + 40) = v18;
  v21 = sub_240A2C15C();

  [v12 addConstraints_];
}

id sub_240A108C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInOptionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_240A10984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB18, &unk_240A316A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240A109EC()
{
  result = qword_27E50CEB0;
  if (!qword_27E50CEB0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CEB0);
  }

  return result;
}

uint64_t AISFlowStepFamilyPicker.__allocating_init(guardianAuthResponse:settings:stepLoadTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  swift_getObjectType();

  return sub_240A13138(a1, a2, a3, v9);
}

uint64_t AISFlowStepFamilyPicker.stepLoadTask.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t AISFlowStepFamilyPicker.stepLoadTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id AISFlowStepFamilyPicker.guardianAuthResponse.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_guardianAuthResponse;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t AISFlowStepFamilyPicker.selectedFamilyOption.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption;
  swift_beginAccess();
  return sub_240A132A0(v1 + v3, a1);
}

uint64_t AISFlowStepFamilyPicker.init(guardianAuthResponse:settings:stepLoadTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_240A13138(a1, a2, a3, v3);
}

uint64_t AISFlowStepFamilyPicker.analyticsScreenType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDAB0];
  v3 = sub_240A2A4AC();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t AISFlowStepFamilyPicker.nextStep()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_240A2B00C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v66 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v66 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v66 - v19;
  v21 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption;
  swift_beginAccess();
  sub_240A132A0(v1 + v21, &v67);
  if (!v68)
  {
    sub_240919300(&v67, &qword_27E50F058, &qword_240A38A10);
    sub_240A2AE9C();
    v37 = sub_240A2AFFC();
    v38 = sub_240A2C2AC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2408FE000, v37, v38, "AISFlowStepFamilyPicker.nextStep selectedFamilyOption is nil", v39, 2u);
      MEMORY[0x245CCDDB0](v39, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    sub_240A13310();
    v40 = swift_allocError();
    *v41 = 1;
    v42 = type metadata accessor for AISFlowStepChildSetupError();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    v36 = swift_allocObject();
    *(v36 + OBJC_IVAR____TtC14AppleIDSetupUI26AISFlowStepChildSetupError_error) = v40;
    *(v36 + 24) = 0;
    swift_unknownObjectWeakInit();
    LOBYTE(v69[0]) = 0;
    sub_240A2B0DC();
    *(v36 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
    return v36;
  }

  sub_24090C218(&v67, v69);
  v22 = v70;
  v23 = v71;
  __swift_project_boxed_opaque_existential_0(v69, v70);
  if ((AISFamilyPickerSelectionProtocol.isValid.getter(v22, v23) & 1) == 0)
  {
    sub_240A2AE9C();
    v45 = sub_240A2AFFC();
    v46 = sub_240A2C2AC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2408FE000, v45, v46, "AISFlowStepFamilyPicker.nextStep invalid selection", v47, 2u);
      MEMORY[0x245CCDDB0](v47, -1, -1);
    }

    (*(v4 + 8))(v13, v3);
    sub_240A13310();
    v48 = swift_allocError();
    *v49 = 1;
    v50 = type metadata accessor for AISFlowStepChildSetupError();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    v36 = swift_allocObject();
    *(v36 + OBJC_IVAR____TtC14AppleIDSetupUI26AISFlowStepChildSetupError_error) = v48;
    *(v36 + 24) = 0;
    swift_unknownObjectWeakInit();
    LOBYTE(v67) = 0;
    sub_240A2B0DC();
    *(v36 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
    goto LABEL_17;
  }

  v24 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings);
  v25 = *(v24 + 16);
  v26 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  swift_beginAccess();
  v27 = *(v25 + v26);
  if (!v27)
  {
    sub_240A2AE9C();
    v28 = sub_240A2AFFC();
    v29 = sub_240A2C2CC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2408FE000, v28, v29, "AISFlowStepFamilyPicker: Interactive auth is successful. Starting next account step while in settings context.", v30, 2u);
      MEMORY[0x245CCDDB0](v30, -1, -1);
    }

    (*(v4 + 8))(v17, v3);
    v31 = v70;
    v32 = v71;
    v33 = __swift_project_boxed_opaque_existential_0(v69, v70);
    v34 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_guardianAuthResponse;
    swift_beginAccess();
    v35 = *(v1 + v34);
    v36 = sub_240A114FC(v33, v24, v35, v31, v32);

    __swift_destroy_boxed_opaque_existential_0(v69);
    return v36;
  }

  if (v27 == 1)
  {
    sub_240A2AE9C();
    v53 = sub_240A2AFFC();
    v54 = sub_240A2C2CC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2408FE000, v53, v54, "AISFlowStepFamilyPicker: Interactive auth is successful. Starting passcode step while in buddy.", v55, 2u);
      MEMORY[0x245CCDDB0](v55, -1, -1);
    }

    (*(v4 + 8))(v20, v3);
    v56 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_guardianAuthResponse;
    swift_beginAccess();
    v57 = *(v1 + v56);
    sub_240919A14(v69, &v67);
    v58 = type metadata accessor for AISFlowStepPasscodeSetup();
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    v61 = v57;

    v36 = sub_2409751A0(v61, &v67, v24);
    v62 = (v36 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride);
    v63 = *(v36 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride);
    v64 = *(v36 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride + 8);
    *v62 = sub_240A11464;
    v62[1] = 0;
    sub_24090C1A0(v63);
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0(v69);
    return v36;
  }

  result = sub_240A2C58C();
  __break(1u);
  return result;
}

uint64_t sub_240A11464(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption);
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_0(v2, v3);
  type metadata accessor for AISFlowStepFamilyPicker();
  return sub_240A114FC(v5, *(a1 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_settings), *(a1 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_guardianAuthResponse), v3, v4);
}

uint64_t sub_240A114FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v85 = a3;
  v86 = a2;
  v7 = sub_240A2B00C();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = *(v83 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v82 = &v82 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v82 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v82 - v21;
  v23 = sub_240A2974C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v28, *MEMORY[0x277CED208], v23);
  v29 = sub_240A2973C();
  v30 = v23;
  v31 = a4;
  (*(v24 + 8))(v28, v30);
  if (v29 & 1) != 0 && (a5[3](a4, a5))
  {
    sub_240A2AE9C();
    v32 = sub_240A2AFFC();
    v33 = sub_240A2C2CC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2408FE000, v32, v33, "AISFlowStepPasscodeSetup.nextStep with addExistingTeen", v34, 2u);
      MEMORY[0x245CCDDB0](v34, -1, -1);
    }

    (*(v83 + 8))(v22, v84);
    v35 = type metadata accessor for AISFlowStepChildSignIn();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = v85;
    v39 = v86;

    v40 = 0;
    v41 = v38;
    v42 = v39;
    return sub_240911894(v40, v41, v42);
  }

  if (a5[1](a4, a5))
  {
    sub_240A2AE9C();
    v43 = sub_240A2AFFC();
    v44 = sub_240A2C2CC();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v85;
    if (v45)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2408FE000, v43, v44, "AISFlowStepFamilyPicker: Interactive auth is successful. Starting child create step.", v47, 2u);
      MEMORY[0x245CCDDB0](v47, -1, -1);
    }

    (*(v83 + 8))(v19, v84);
    v48 = [objc_allocWithZone(sub_240A2983C()) init];
    v49 = type metadata accessor for AISFlowStepChildCreate();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    v52 = swift_allocObject();
    v53 = v46;
    v54 = v86;

    return sub_240976868(v53, v54, v48, v52);
  }

  v56 = a5[2];
  v57 = v56(a4, a5);
  v58 = v85;
  if (!v57)
  {
LABEL_16:
    sub_240A2AE9C();
    v71 = sub_240A2AFFC();
    v72 = sub_240A2C2CC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = v31;
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2408FE000, v71, v72, "AISFlowStepFamilyPicker: Interactive auth is successful. Starting child sign step.", v74, 2u);
      v75 = v74;
      v31 = v73;
      MEMORY[0x245CCDDB0](v75, -1, -1);
    }

    (*(v83 + 8))(v12, v84);
    v76 = v56(v31, a5);
    v77 = type metadata accessor for AISFlowStepChildSignIn();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    v80 = v58;
    v81 = v86;

    v40 = v76;
    v41 = v80;
    v42 = v81;
    return sub_240911894(v40, v41, v42);
  }

  v59 = v57;
  sub_240A2AC0C();
  if (!v60)
  {

    goto LABEL_16;
  }

  v61 = v82;
  sub_240A2AE9C();
  v62 = sub_240A2AFFC();
  v63 = sub_240A2C2CC();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_2408FE000, v62, v63, "AISFlowStepFamilyPicker: Interactive auth is successful. Starting child silent sign step.", v64, 2u);
    MEMORY[0x245CCDDB0](v64, -1, -1);
  }

  (*(v83 + 8))(v61, v84);
  v65 = [objc_allocWithZone(sub_240A2983C()) init];
  v66 = type metadata accessor for AISFlowStepSilentChildSignIn();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  v69 = swift_allocObject();
  *(v69 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_silentAuthResponse) = 0;
  *(v69 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_guardianAuthResponse) = v58;
  *(v69 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_selectedMember) = v59;
  *(v69 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_settings) = v86;
  *(v69 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask) = v65;
  *(v69 + 24) = 0;
  swift_unknownObjectWeakInit();
  v87 = 0;
  v70 = v58;

  sub_240A2B0DC();
  result = v69;
  *(v69 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return result;
}