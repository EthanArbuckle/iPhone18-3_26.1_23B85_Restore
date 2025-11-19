uint64_t sub_23AB6E744(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23AB73094();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23AB73084();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
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

void TranslationUIProviderSelectedTextScene.init(content:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFC66A0, &qword_23AB73790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  v9 = sub_23AB72FE4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = objc_allocWithZone(type metadata accessor for TranslationProviderContextImp());
  v11 = sub_23AB7168C(0, v8, 0);
  if (qword_27DFC6630 != -1)
  {
    swift_once();
  }

  v12 = sub_23AB73094();
  __swift_project_value_buffer(v12, qword_27DFC67C8);
  v13 = sub_23AB73074();
  v14 = sub_23AB73144();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_23AB6D000, v13, v14, "Scene init", v15, 2u);
    MEMORY[0x23EE964A0](v15, -1, -1);
  }

  *a3 = 0xD00000000000001DLL;
  a3[1] = 0x800000023AB73BC0;
  a3[2] = a1;
  a3[3] = a2;
  a3[4] = v11;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t TranslationUIProviderSelectedTextScene.body.getter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v3;
  v14 = *(v1 + 32);
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  v7 = *(v1 + 16);
  *(v4 + 32) = *v1;
  *(v4 + 48) = v7;
  *(v4 + 64) = *(v1 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v9 = *(v1 + 16);
  *(v8 + 32) = *v1;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(v1 + 32);
  v10 = *(*(a1 - 8) + 16);
  v10(v12, v13, a1);
  v10(v12, v13, a1);

  return sub_23AB73044();
}

uint64_t sub_23AB6EBD0@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20[-1] - v10;
  v13 = v9[2];
  v12 = v9[3];
  v14 = v9[4];
  v20[3] = type metadata accessor for TranslationProviderContextImp();
  v20[4] = sub_23AB6F0E4();
  v20[0] = v14;
  v15 = v14;
  v13(v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  v16 = v4[2];
  v16(v11, v8, a1);
  v17 = v4[1];
  v17(v8, a1);
  v16(a2, v11, a1);
  return (v17)(v11, a1);
}

uint64_t sub_23AB6ED40(void *a1, uint64_t a2)
{
  if (qword_27DFC6638 != -1)
  {
    swift_once();
  }

  v4 = sub_23AB73094();
  __swift_project_value_buffer(v4, qword_27DFC67E0);
  v5 = a1;
  v6 = sub_23AB73074();
  v7 = sub_23AB73144();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_23AB730B4();
    v14 = v13;

    v15 = sub_23AB728A8(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_23AB6D000, v6, v7, "Entering onConnection %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x23EE964A0](v9, -1, -1);
    MEMORY[0x23EE964A0](v8, -1, -1);
  }

  v16 = *(a2 + 32);
  return sub_23AB6F1BC(v5) & 1;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23AB6EF48(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_23AB6ED40(a1, v1 + 32);
}

uint64_t sub_23AB6EF54(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23AB6EFD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23AB6F030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23AB6F078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23AB6F0E4()
{
  result = qword_27DFC6728;
  if (!qword_27DFC6728)
  {
    type metadata accessor for TranslationProviderContextImp();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC6728);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23AB6F1BC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC67A0, &qword_23AB73A38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  if (qword_27DFC6638 != -1)
  {
    swift_once();
  }

  v8 = sub_23AB73094();
  __swift_project_value_buffer(v8, qword_27DFC67E0);
  v9 = sub_23AB73074();
  v10 = sub_23AB73144();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23AB6D000, v9, v10, "in shouldAccept(connection:)", v11, 2u);
    MEMORY[0x23EE964A0](v11, -1, -1);
  }

  [a1 setExportedObject_];
  v12 = objc_opt_self();
  v13 = [v12 interfaceWithProtocol_];
  [a1 setExportedInterface_];
  v14 = [v12 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 resume];
  v15 = sub_23AB73134();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_23AB73114();
  v16 = v2;
  v17 = a1;
  v18 = sub_23AB73104();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v16;
  v19[5] = v17;
  sub_23AB70208(0, 0, v7, &unk_23AB73A48, v19);

  return 1;
}

void *sub_23AB6F45C()
{
  swift_getKeyPath();
  sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
  sub_23AB73014();

  v1 = *(v0 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__xpcConnection);
  v2 = v1;
  return v1;
}

id sub_23AB6F50C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
  sub_23AB73014();

  v4 = *(v3 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__xpcConnection);
  *a2 = v4;

  return v4;
}

void sub_23AB6F5CC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__xpcConnection;
  v5 = *(v1 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__xpcConnection);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
    sub_23AB73004();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_23AB71644(0, &qword_27DFC6788, 0x277CCAE80);
  v6 = v5;
  v7 = a1;
  v8 = sub_23AB73174();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t TranslationProviderContextImp.inputText.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
  sub_23AB73014();

  v3 = OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__inputText;
  swift_beginAccess();
  return sub_23AB71F1C(v5 + v3, a1, qword_27DFC66A0, &qword_23AB73790);
}

uint64_t sub_23AB6F83C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
  sub_23AB73014();

  v4 = OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__inputText;
  swift_beginAccess();
  return sub_23AB71F1C(v3 + v4, a2, qword_27DFC66A0, &qword_23AB73790);
}

uint64_t sub_23AB6F918(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFC66A0, &qword_23AB73790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_23AB71F1C(a1, &v10 - v6, qword_27DFC66A0, &qword_23AB73790);
  v8 = *a2;
  return sub_23AB6FA14(v7);
}

uint64_t type metadata accessor for TranslationProviderContextImp()
{
  result = qword_27DFC6760;
  if (!qword_27DFC6760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23AB6FA14(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFC66A0, &qword_23AB73790);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__inputText;
  swift_beginAccess();
  sub_23AB71F1C(v1 + v7, v6, qword_27DFC66A0, &qword_23AB73790);
  v8 = sub_23AB7192C(v6, a1);
  sub_23AB71F84(v6, qword_27DFC66A0, &qword_23AB73790);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
    sub_23AB73004();
  }

  else
  {
    swift_beginAccess();
    sub_23AB71C4C(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_23AB71F84(a1, qword_27DFC66A0, &qword_23AB73790);
}

uint64_t sub_23AB6FC00(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__inputText;
  swift_beginAccess();
  sub_23AB71C4C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t TranslationProviderContextImp.allowsReplacement.getter()
{
  swift_getKeyPath();
  sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
  sub_23AB73014();

  return *(v0 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__allowsReplacement);
}

uint64_t sub_23AB6FD14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
  sub_23AB73014();

  *a2 = *(v3 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__allowsReplacement);
  return result;
}

uint64_t sub_23AB6FE18(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__allowsReplacement) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__allowsReplacement) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
    sub_23AB73004();
  }

  return result;
}

uint64_t sub_23AB6FF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_23AB73114();
  v5[5] = sub_23AB73104();
  v7 = sub_23AB730F4();

  return MEMORY[0x2822009F8](sub_23AB6FFC8, v7, v6);
}

uint64_t sub_23AB6FFC8()
{
  v21 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = v2;
  sub_23AB6F5CC(v2);
  if (qword_27DFC6638 != -1)
  {
    swift_once();
  }

  v5 = v0[3];
  v6 = sub_23AB73094();
  __swift_project_value_buffer(v6, qword_27DFC67E0);
  v7 = v5;
  v8 = sub_23AB73074();
  v9 = sub_23AB73144();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    swift_getKeyPath();
    v0[2] = v10;
    sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
    sub_23AB73014();

    v13 = *(v10 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__xpcConnection);
    v0[2] = v13;
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC67A8, &qword_23AB73A68);
    v15 = sub_23AB730C4();
    v17 = sub_23AB728A8(v15, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_23AB6D000, v8, v9, "Remote Connection established %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x23EE964A0](v12, -1, -1);
    MEMORY[0x23EE964A0](v11, -1, -1);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_23AB70208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC67A0, &qword_23AB73A38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23AB71F1C(a3, v27 - v11, &qword_27DFC67A0, &qword_23AB73A38);
  v13 = sub_23AB73134();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23AB71F84(v12, &qword_27DFC67A0, &qword_23AB73A38);
  }

  else
  {
    sub_23AB73124();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23AB730F4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23AB730D4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_23AB71F84(a3, &qword_27DFC67A0, &qword_23AB73A38);

      return v25;
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

  sub_23AB71F84(a3, &qword_27DFC67A0, &qword_23AB73A38);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23AB70508()
{
  swift_getKeyPath();
  v29[0] = v0;
  sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
  sub_23AB73014();

  v1 = *(v0 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__xpcConnection);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 remoteObjectProxy];
    sub_23AB73194();
    swift_unknownObjectRelease();
    if (qword_27DFC6638 != -1)
    {
      swift_once();
    }

    v4 = sub_23AB73094();
    __swift_project_value_buffer(v4, qword_27DFC67E0);
    sub_23AB713B8(v29, v28);
    v5 = sub_23AB73074();
    v6 = sub_23AB73144();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27 = v8;
      *v7 = 136315138;
      sub_23AB713B8(v28, v26);
      v9 = sub_23AB730C4();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      v12 = sub_23AB728A8(v9, v11, &v27);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_23AB6D000, v5, v6, "Remote interface: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x23EE964A0](v8, -1, -1);
      MEMORY[0x23EE964A0](v7, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    sub_23AB713B8(v29, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC6778, &qword_23AB73A20);
    if (swift_dynamicCast())
    {
      v17 = v26[0];
    }

    else
    {
      v17 = 0;
    }

    swift_unknownObjectRetain();
    v18 = sub_23AB73074();
    v19 = sub_23AB73144();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      v26[0] = v17;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC6780, &qword_23AB73A28);
      v22 = sub_23AB730C4();
      v24 = sub_23AB728A8(v22, v23, v28);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_23AB6D000, v18, v19, "Remote proxy: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x23EE964A0](v21, -1, -1);
      MEMORY[0x23EE964A0](v20, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  else
  {
    if (qword_27DFC6638 != -1)
    {
      swift_once();
    }

    v13 = sub_23AB73094();
    __swift_project_value_buffer(v13, qword_27DFC67E0);
    v14 = sub_23AB73074();
    v15 = sub_23AB73154();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23AB6D000, v14, v15, "XPC connection has disappeared", v16, 2u);
      MEMORY[0x23EE964A0](v16, -1, -1);
    }

    return 0;
  }

  return v17;
}

Swift::Void __swiftcall TranslationProviderContextImp.translate(text:replacementAllowed:)(NSAttributedString text, Swift::Bool replacementAllowed)
{
  v4 = replacementAllowed;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFC66A0, &qword_23AB73790);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v12 - v7;
  v9 = text.super.isa;
  sub_23AB72FF4();
  v10 = sub_23AB72FE4();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_23AB6FA14(v8);
  if (*(v2 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__allowsReplacement) == v4)
  {
    *(v2 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__allowsReplacement) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12[-2] = v2;
    LOBYTE(v12[-1]) = v4;
    v12[1] = v2;
    sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
    sub_23AB73004();
  }
}

uint64_t TranslationProviderContextImp.finish(translation:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFC66A0, &qword_23AB73790);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_23AB72FE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  result = sub_23AB70508();
  if (result)
  {
    v15 = result;
    sub_23AB71F1C(a1, v5, qword_27DFC66A0, &qword_23AB73790);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_23AB71F84(v5, qword_27DFC66A0, &qword_23AB73790);
      v16 = 0;
    }

    else
    {
      (*(v7 + 32))(v13, v5, v6);
      sub_23AB71644(0, &qword_27DFC6750, 0x277CCA898);
      (*(v7 + 16))(v11, v13, v6);
      v16 = sub_23AB73164();
      (*(v7 + 8))(v13, v6);
    }

    [v15 finishWith:v16 error:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TranslationProviderContextImp.expandSheet()()
{
  v0 = sub_23AB70508();
  if (v0)
  {
    [v0 expandSheet];

    swift_unknownObjectRelease();
  }
}

id TranslationProviderContextImp.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranslationProviderContextImp.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23AB70F88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
  sub_23AB73014();

  v4 = OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__inputText;
  swift_beginAccess();
  return sub_23AB71F1C(v3 + v4, a1, qword_27DFC66A0, &qword_23AB73790);
}

uint64_t sub_23AB71060()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
  sub_23AB73014();

  return *(v1 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__allowsReplacement);
}

void *sub_23AB7112C()
{
  v1 = *v0;
  result = sub_23AB70508();
  if (result)
  {
    [result expandSheet];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AB71184(uint64_t a1)
{
  result = sub_23AB71CD8(&qword_27DFC6738, type metadata accessor for TranslationProviderContextImp);
  *(a1 + 8) = result;
  return result;
}

void sub_23AB71234()
{
  sub_23AB7132C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_23AB73034();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23AB7132C()
{
  if (!qword_27DFC6770)
  {
    sub_23AB72FE4();
    v0 = sub_23AB73184();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFC6770);
    }
  }
}

void sub_23AB71388(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_23AB6F5CC(v2);
}

uint64_t sub_23AB713B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23AB71414(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23AB7150C;

  return v7(a1);
}

uint64_t sub_23AB7150C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_23AB71604()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__xpcConnection);
  *(v1 + OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__xpcConnection) = v2;
  v4 = v2;
}

uint64_t sub_23AB71644(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_23AB7168C(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFC66A0, &qword_23AB73790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v30 - v9;
  v11 = OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__xpcConnection;
  *&v3[OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__xpcConnection] = 0;
  v12 = OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__inputText;
  v13 = sub_23AB72FE4();
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  v14(&v4[v12], 1, 1, v13);
  v15 = OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__allowsReplacement;
  v4[OBJC_IVAR____TtC21TranslationUIProvider29TranslationProviderContextImp__allowsReplacement] = 0;
  sub_23AB73024();
  if (qword_27DFC6638 != -1)
  {
    swift_once();
  }

  v16 = sub_23AB73094();
  __swift_project_value_buffer(v16, qword_27DFC67E0);
  v17 = sub_23AB73074();
  v18 = sub_23AB73144();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = v10;
    v20 = v15;
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_23AB6D000, v17, v18, "in TranslationProviderContextImp init", v19, 2u);
    v25 = v24;
    a3 = v23;
    a2 = v22;
    a1 = v21;
    v15 = v20;
    v10 = v30;
    MEMORY[0x23EE964A0](v25, -1, -1);
  }

  v26 = *&v4[v11];
  v27 = a1;

  *&v4[v11] = a1;
  sub_23AB71F1C(a2, v10, qword_27DFC66A0, &qword_23AB73790);
  sub_23AB71F84(&v4[v12], qword_27DFC66A0, &qword_23AB73790);
  sub_23AB7218C(v10, &v4[v12]);
  v4[v15] = a3 & 1;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v32, sel_init);
  sub_23AB71F84(a2, qword_27DFC66A0, &qword_23AB73790);
  return v28;
}

uint64_t sub_23AB7192C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AB72FE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFC66A0, &qword_23AB73790);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC6790, &qword_23AB73A30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23AB71F1C(a1, &v24 - v16, qword_27DFC66A0, &qword_23AB73790);
  sub_23AB71F1C(a2, &v17[v18], qword_27DFC66A0, &qword_23AB73790);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_23AB71F1C(v17, v12, qword_27DFC66A0, &qword_23AB73790);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_23AB71CD8(&qword_27DFC6798, MEMORY[0x277CC8C40]);
      v21 = sub_23AB730A4();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_23AB71F84(v17, qword_27DFC66A0, &qword_23AB73790);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_23AB71F84(v17, &qword_27DFC6790, &qword_23AB73A30);
    v20 = 1;
    return v20 & 1;
  }

  sub_23AB71F84(v17, qword_27DFC66A0, &qword_23AB73790);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_23AB71C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFC66A0, &qword_23AB73790);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23AB71CD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23AB71D20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23AB71D68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23AB71E28;

  return sub_23AB6FF30(a1, v4, v5, v7, v6);
}

uint64_t sub_23AB71E28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23AB71F1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23AB71F84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23AB71FE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23AB7201C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23AB72218;

  return sub_23AB71414(a1, v5);
}

uint64_t sub_23AB720D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23AB71E28;

  return sub_23AB71414(a1, v5);
}

uint64_t sub_23AB7218C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFC66A0, &qword_23AB73790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TranslationUIProviderExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v19[1] = a3;
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  if (qword_27DFC6638 != -1)
  {
    swift_once();
  }

  v9 = sub_23AB73094();
  __swift_project_value_buffer(v9, qword_27DFC67E0);
  v10 = sub_23AB73074();
  v11 = sub_23AB73144();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23AB6D000, v10, v11, "Providing the extension configuration", v12, 2u);
    MEMORY[0x23EE964A0](v12, -1, -1);
  }

  v13 = *(v7 + 16);
  v13(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a1);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  (*(v7 + 32))(v15 + v14, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v21 = a1;
  v22 = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  v13(boxed_opaque_existential_1, v4, a1);
  TranslationProviderUIExtensionConfiguration.init(_:)(&v20, v23);
  swift_getAssociatedTypeWitness();
  v17 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_23AB727D0();
  return sub_23AB73054();
}

uint64_t sub_23AB724D4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23AB72554()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 32))();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t TranslationProviderUIExtensionConfiguration.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27DFC6638 != -1)
  {
    swift_once();
  }

  v4 = sub_23AB73094();
  __swift_project_value_buffer(v4, qword_27DFC67E0);
  sub_23AB7282C(a1, v16);
  v5 = sub_23AB73074();
  v6 = sub_23AB73144();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    sub_23AB7282C(v16, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC67B8, &qword_23AB73A70);
    v9 = sub_23AB730C4();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v12 = sub_23AB728A8(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_23AB6D000, v5, v6, "configuration init with extension: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23EE964A0](v8, -1, -1);
    MEMORY[0x23EE964A0](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  return sub_23AB72890(a1, a2);
}

unint64_t sub_23AB727D0()
{
  result = qword_27DFC67B0;
  if (!qword_27DFC67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC67B0);
  }

  return result;
}

uint64_t sub_23AB7282C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23AB72890(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23AB728A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23AB72974(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23AB713B8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_23AB72974(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23AB72A80(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23AB731B4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23AB72A80(uint64_t a1, unint64_t a2)
{
  v4 = sub_23AB72ACC(a1, a2);
  sub_23AB72BFC(&unk_284DC9D68);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23AB72ACC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23AB72CE8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23AB731B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23AB730E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23AB72CE8(v10, 0);
        result = sub_23AB731A4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23AB72BFC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23AB72D5C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23AB72CE8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC67C0, &unk_23AB73B30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23AB72D5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC67C0, &unk_23AB73B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t _s21TranslationUIProvider0A32ProviderUIExtensionConfigurationV6accept10connectionSbSo15NSXPCConnectionC_tF_0()
{
  if (qword_27DFC6638 != -1)
  {
    swift_once();
  }

  v0 = sub_23AB73094();
  __swift_project_value_buffer(v0, qword_27DFC67E0);
  v1 = sub_23AB73074();
  v2 = sub_23AB73144();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23AB6D000, v1, v2, "entering accept(connection:)", v3, 2u);
    MEMORY[0x23EE964A0](v3, -1, -1);
  }

  return 1;
}

uint64_t sub_23AB72F40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23AB72F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}