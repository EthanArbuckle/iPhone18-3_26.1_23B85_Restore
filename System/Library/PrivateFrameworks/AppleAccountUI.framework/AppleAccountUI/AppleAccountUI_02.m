unint64_t sub_1C5429D08()
{
  v2 = qword_1EC15C148;
  if (!qword_1EC15C148)
  {
    sub_1C5594E24();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5429D88()
{
  v2 = qword_1EC15C158;
  if (!qword_1EC15C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C150);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5429E3C()
{
  v2 = qword_1EC15C160;
  if (!qword_1EC15C160)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C160);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5429EA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C5594924();
  v6 = *(*(v5 - 8) + 32);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C118);
  (v6)(a2 + *(v2 + 36), a1 + *(v2 + 36), v5);
  return a2;
}

unint64_t sub_1C5429F54()
{
  v2 = qword_1EC15C168;
  if (!qword_1EC15C168)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C168);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C5429FB8()
{
  v2 = qword_1EC15C170;
  if (!qword_1EC15C170)
  {
    sub_1C5429F54();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C542A064()
{
  v2 = qword_1EC15C180;
  if (!qword_1EC15C180)
  {
    sub_1C5594924();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C180);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C542A0E4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C5594924();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C178);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t sub_1C542A198(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C5594924();
  v6 = *(*(v5 - 8) + 32);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C178);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t sub_1C542A24C(uint64_t a1)
{
  v3 = sub_1C5594924();
  v4 = *(*(v3 - 8) + 8);
  v4(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C118);
  (v4)(a1 + *(v1 + 36), v3);
  return a1;
}

uint64_t sub_1C542A2F0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C54245FC(a1, v6, v7, v8);
}

unint64_t sub_1C542A3D0()
{
  v2 = qword_1EC15C188;
  if (!qword_1EC15C188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E450);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C542A458()
{
  v2 = qword_1EC15C190;
  if (!qword_1EC15C190)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C542A64C()
{
  v2 = qword_1EC15C198;
  if (!qword_1EC15C198)
  {
    sub_1C5594A64();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C198);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C542A6CC()
{
  v2 = qword_1EC15C1A0;
  if (!qword_1EC15C1A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C1A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C542A760()
{
  v2 = qword_1EC15C1A8;
  if (!qword_1EC15C1A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C1A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C542A7F8()
{
  updated = sub_1C5594924();
  if (v0 <= 0x3F)
  {
    updated = sub_1C542AA7C();
    if (v1 <= 0x3F)
    {
      updated = sub_1C542AB18();
      if (v2 <= 0x3F)
      {
        updated = sub_1C5594B24();
        if (v3 <= 0x3F)
        {
          updated = swift_updateClassMetadata2();
          if (!updated)
          {
            return 0;
          }
        }
      }
    }
  }

  return updated;
}

uint64_t sub_1C542AA7C()
{
  v4 = qword_1EC15C1B0;
  if (!qword_1EC15C1B0)
  {
    sub_1C5594924();
    v3 = sub_1C5596A94();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15C1B0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C542AB18()
{
  v4 = qword_1EC15C1B8;
  if (!qword_1EC15C1B8)
  {
    sub_1C5594924();
    sub_1C542A064();
    v3 = sub_1C55964C4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15C1B8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C542AC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v4, a1);
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1C542ACEC(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + ((v9 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5425874(a1, v7, v8, v1 + v9, v10);
}

uint64_t static ReviewCustodianListViewFactory.create(accountManager:repairHelper:)(void *a1, void *a2)
{
  v11 = a1;
  v12 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v10 = sub_1C5594994();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v6 - v6;
  v18 = MEMORY[0x1EEE9AC00](v11);
  v17 = v2;
  v16 = v3;
  sub_1C5594984();
  v13 = sub_1C5594944();
  v14 = v4;
  (*(v7 + 8))(v9, v10);
  v15 = static ReviewCustodianListViewFactory.create(accountManager:repairHelper:telemetryFlowID:)(v11, v12, v13, v14);

  return v15;
}

uint64_t static ReviewCustodianListViewFactory.create(accountManager:repairHelper:telemetryFlowID:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v40 = a3;
  v43 = a2;
  v42 = a1;
  v53 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v35 = 0;
  v36 = *(*(type metadata accessor for ReviewCustodianListView() - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](0);
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = (&v17 - v38);
  MEMORY[0x1EEE9AC00](v4);
  v39 = (&v17 - v38);
  v68 = &v17 - v38;
  v50 = sub_1C5594C74();
  v44 = v50;
  v45 = *(v50 - 8);
  v49 = v45;
  v46 = v45;
  v47 = *(v45 + 64);
  v5 = MEMORY[0x1EEE9AC00](v42);
  v6 = &v17 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v6;
  v67 = v5;
  v66 = v7;
  v64 = v8;
  v65 = v9;
  v63 = v10;
  v11 = sub_1C54B05F8();
  (*(v49 + 16))(v6, v11, v50);
  v55 = sub_1C5594C54();
  v51 = v55;
  v54 = sub_1C5596944();
  v52 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v56 = sub_1C5596E04();
  if (os_log_type_enabled(v55, v54))
  {
    v12 = v35;
    v26 = sub_1C5596A74();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v24 = 0;
    v27 = sub_1C5419DC0(0);
    v25 = v27;
    v28 = sub_1C5419DC0(v24);
    v60 = v26;
    v59 = v27;
    v58 = v28;
    v29 = 0;
    v30 = &v60;
    sub_1C5419E14(0, &v60);
    sub_1C5419E14(v29, v30);
    v57 = v56;
    v31 = &v17;
    MEMORY[0x1EEE9AC00](&v17);
    v32 = &v17 - 6;
    *(&v17 - 4) = v13;
    *(&v17 - 3) = &v59;
    *(&v17 - 2) = &v58;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v34 = v12;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v51, v52, "ReviewCustodianListViewFactory initiated", v22, 2u);
      v20 = 0;
      sub_1C5419E74(v25);
      sub_1C5419E74(v28);
      sub_1C5596A54();

      v21 = v34;
    }
  }

  else
  {

    v21 = v35;
  }

  (*(v46 + 8))(v48, v44);
  type metadata accessor for ReviewCustodianListViewModel();
  v14 = v42;
  v15 = v43;
  sub_1C5594CF4();
  v18 = sub_1C55823FC(v42, v43, v40, v41);
  v62 = v18;

  sub_1C546DF88(v18, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D0);
  sub_1C542B834(v39, v37);
  v19 = sub_1C5595484();
  v61 = v19;
  sub_1C542B9AC(v39);

  return v19;
}

id ReviewCustodianListViewFactory.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for ReviewCustodianListViewFactory();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id ReviewCustodianListViewFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewCustodianListViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C542B834(void *a1, void *a2)
{
  *a2 = *a1;
  v9 = a1[1];
  sub_1C5594CF4();
  a2[1] = v9;
  v10 = type metadata accessor for ReviewCustodianListView();
  v11 = *(v10 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v7 = *(a1 + v11);

    *(a2 + v11) = v7;
  }

  swift_storeEnumTagMultiPayload();
  v3 = *(v10 + 24);
  v5 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v6 = *(a1 + v3 + 8);

  result = a2;
  *(v5 + 1) = v6;
  return result;
}

uint64_t sub_1C542B9AC(uint64_t a1)
{

  v3 = *(type metadata accessor for ReviewCustodianListView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(a1 + v3);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1C542BAB8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return sub_1C5402CCC(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t sub_1C542BAFC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1 & 1;
}

uint64_t sub_1C542BB9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 104))(v2) & 1;
}

uint64_t sub_1C542BC20(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 112))(v4 & 1);
}

uint64_t sub_1C542BCA0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1C5594E94();
}

void (*sub_1C542BD34(void *a1))(void (***a1)(void, void))
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

void sub_1C542BE14(void (***a1)(void, void))
{
  v1 = *a1;
  v1[7](v1, 0);

  free(v1);
}

uint64_t sub_1C542BEF0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C542BF6C(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E8);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_1C542C0C0(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_1C542BEF0();
  return sub_1C542C1E4;
}

void sub_1C542C1E4(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C542BF6C(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C542BF6C(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C542C2E0@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__hasSoftwareUpdates;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C542C378(uint64_t a1)
{
  v10 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__hasSoftwareUpdates;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1C542C4C4()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1 & 1;
}

uint64_t sub_1C542C564@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 152))(v2) & 1;
}

uint64_t sub_1C542C5E8(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 160))(v4 & 1);
}

uint64_t sub_1C542C668()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1C5594E94();
}

void (*sub_1C542C6FC(void *a1))(void (***a1)(void, void))
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

uint64_t sub_1C542C7DC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C542C858(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E8);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_1C542C9AC(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_1C542C7DC();
  return sub_1C542CAD0;
}

void sub_1C542CAD0(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C542C858(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C542C858(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C542CBCC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__isLoading;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C542CC64(uint64_t a1)
{
  v10 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__isLoading;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1C542CDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8[2] = a1;
  v8[3] = a2;
  sub_1C5594CF4();
  v8[0] = a1;
  v8[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F0);
  sub_1C5402CCC(v8, v3, a3);
}

uint64_t sub_1C542CE38()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1;
}

uint64_t sub_1C542CEE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 200))(v2);
  a2[1] = v3;
}

uint64_t sub_1C542CF64(void *a1, uint64_t *a2)
{
  sub_1C5402BDC(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 208))(v4, v6);
}

uint64_t sub_1C542CFFC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594CF4();
  sub_1C5594E94();
}

void (*sub_1C542D0B4(void *a1))(void (***a1)(void, void))
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

uint64_t sub_1C542D194()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F8);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C542D210(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C200);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F8);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_1C542D364(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C200);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_1C542D194();
  return sub_1C542D488;
}

void sub_1C542D488(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C542D210(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C542D210(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C542D584@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__buildName;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F8);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C542D61C(uint64_t a1)
{
  v10 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F8);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__buildName;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1C542D768()
{
  v3 = OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__hasSoftwareUpdates;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3);
  (v5)(v0 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__isLoading, v4);
  v6 = OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__buildName;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F8);
  (*(*(v1 - 8) + 8))(v0 + v6);
  return v7;
}

uint64_t sub_1C542D90C()
{
  v19 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F8);
  v13 = *(v17 - 8);
  v14 = v17 - 8;
  v2 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v16 = &v2 - v2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0);
  v4 = *(v10 - 8);
  v5 = v10 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v19 = v0;
  v6 = OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__hasSoftwareUpdates;
  v7 = 1;
  sub_1C542BAB8(0, &v2 - v3);
  v12 = *(v4 + 32);
  v11 = v4 + 32;
  v12(v0 + v6, v9, v10);
  v8 = OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__isLoading;
  sub_1C542BAB8(v7 & 1, v9);
  v12(v0 + v8, v9, v10);
  v15 = OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__buildName;
  sub_1C542CDB0(0, 0, v16);
  (*(v13 + 32))(v0 + v15, v16, v17);
  return v18;
}

uint64_t sub_1C542DB04@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SoftwareUpdateProgress();
  result = sub_1C5594E34();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for SoftwareUpdateProgress()
{
  v1 = qword_1EC160960;
  if (!qword_1EC160960)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C542DC14()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement() + 20));
  sub_1C5594CF4();
  return v2;
}

uint64_t type metadata accessor for SoftwareUpdateRowElement()
{
  v1 = qword_1EC160970;
  if (!qword_1EC160970)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C542DCD0()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement() + 24));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C542DD18()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement() + 28));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C542DD60()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement() + 32));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C542DDA8()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement() + 36));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C542DDF0()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement() + 40));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C542DE38()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement() + 44));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C542DE80()
{
  type metadata accessor for SoftwareUpdateProgress();
  sub_1C542DEC8();
  return sub_1C5595184();
}

unint64_t sub_1C542DEC8()
{
  v2 = qword_1EC15C208;
  if (!qword_1EC15C208)
  {
    type metadata accessor for SoftwareUpdateProgress();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C542DF48()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement() + 48) + 8);

  return v2;
}

uint64_t sub_1C542DF8C(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SoftwareUpdateRowElement() + 48) + 8) = a1;
}

uint64_t sub_1C542E080()
{
  type metadata accessor for SoftwareUpdateRowElement();

  type metadata accessor for SoftwareUpdateProgress();
  sub_1C542DEC8();
  v1 = sub_1C5595194();

  return v1;
}

uint64_t sub_1C542E104()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement() + 48));

  return v2;
}

uint64_t sub_1C542E14C(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SoftwareUpdateRowElement() + 48));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C542E1A8()
{
  type metadata accessor for SoftwareUpdateRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C542E240()
{
  type metadata accessor for SoftwareUpdateRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
}

void (*sub_1C542E304(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for SoftwareUpdateRowElement() + 52));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

void sub_1C542E3F0(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = *(v8 + 48);
    v2 = *(v8 + 67);
    v3 = *(v8 + 64);

    *(v8 + 16) = v2;
    *(v8 + 24) = v4;
    *(v8 + 65) = v3;
  }

  else
  {
    v7 = *(v8 + 48);
    v5 = *(v8 + 67);
    v6 = *(v8 + 64);

    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
    *(v8 + 66) = v6;
  }

  sub_1C5595F94();
  sub_1C5373718();

  free(v8);
}

uint64_t sub_1C542E504()
{
  type metadata accessor for SoftwareUpdateRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C542E5B4()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement() + 52));

  return v2 & 1;
}

uint64_t sub_1C542E600(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for SoftwareUpdateRowElement() + 52);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C542E65C@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v8 = sub_1C542FB68;
  v25 = 0;
  v24 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C210);
  v4 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v3 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C218);
  v6 = *(*(v18 - 8) + 64);
  v5 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v3 - v5;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v3 - v5);
  v21 = &v3 - v7;
  v25 = &v3 - v7;
  v24 = v1;
  v9 = &v22;
  v23 = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C220);
  v11 = sub_1C543046C();
  sub_1C5412C88();
  v12 = 0;
  v13 = 1;
  sub_1C5596024();
  v15 = sub_1C5430D28();
  sub_1C5411148();
  sub_1C5595D84();
  sub_1C53593BC(v16);
  v19 = sub_1C5430DB0();
  sub_1C540EFD8(v20, v18, v21);
  sub_1C53593BC(v20);
  sub_1C535992C(v21, v20);
  sub_1C540EFD8(v20, v18, v17);
  sub_1C53593BC(v20);
  return sub_1C53593BC(v21);
}

uint64_t sub_1C542E8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = v191;
  v98 = a1;
  v99 = a2;
  v127 = 0;
  v212 = 0;
  v211 = 0;
  v210 = 0;
  v209 = 0;
  v208 = 0;
  v207 = 0;
  v206 = 0;
  v205 = 0;
  v204 = 0;
  v203 = 0;
  v202 = 0;
  v201 = 0;
  v199 = 0;
  memset(v198, 0, sizeof(v198));
  v190 = 0;
  v189 = 0;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v172 = 0;
  v171 = 0;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C2E0);
  v102 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100 - 8);
  v104 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  v101 = (&v47 - v104);
  v3 = MEMORY[0x1EEE9AC00](&v47 - v104);
  v103 = (&v47 - v104);
  MEMORY[0x1EEE9AC00](v3);
  v105 = (&v47 - v104);
  v212 = &v47 - v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C2D0);
  v107 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106 - 8);
  v109 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = &v47 - v109;
  MEMORY[0x1EEE9AC00](&v47 - v109);
  v110 = &v47 - v109;
  v211 = &v47 - v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C2C0);
  v113 = *(*(v111 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v127);
  v115 = (v113 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = (&v47 - v115);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v114 = (&v47 - v115);
  MEMORY[0x1EEE9AC00](v5);
  v116 = (&v47 - v115);
  v210 = &v47 - v115;
  v117 = sub_1C5596384();
  v118 = *(v117 - 8);
  v119 = v118;
  MEMORY[0x1EEE9AC00](v117 - 8);
  v120 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258);
  v123 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121 - 8);
  v125 = (v123 + 15) & 0xFFFFFFFFFFFFFFF0;
  v122 = &v47 - v125;
  v7 = MEMORY[0x1EEE9AC00](&v47 - v125);
  v124 = &v47 - v125;
  MEMORY[0x1EEE9AC00](v7);
  v126 = &v47 - v125;
  v209 = &v47 - v125;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C248);
  v129 = *(*(v128 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v127);
  v131 = (v129 + 15) & 0xFFFFFFFFFFFFFFF0;
  v130 = &v47 - v131;
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v47 - v131;
  v208 = &v47 - v131;
  v133 = sub_1C5594FC4();
  v134 = *(v133 - 8);
  v135 = v134;
  MEMORY[0x1EEE9AC00](v133 - 8);
  v136 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
  v138 = *(v137 - 8);
  v139 = v138;
  v140 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v137 - 8);
  v141 = &v47 - v140;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328);
  v143 = *(*(v142 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v142 - 8);
  v145 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  v144 = &v47 - v145;
  MEMORY[0x1EEE9AC00](v10);
  v146 = &v47 - v145;
  v207 = &v47 - v145;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C238);
  v149 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147 - 8);
  v151 = (v149 + 15) & 0xFFFFFFFFFFFFFFF0;
  v148 = &v47 - v151;
  v11 = MEMORY[0x1EEE9AC00](&v47 - v151);
  v150 = &v47 - v151;
  MEMORY[0x1EEE9AC00](v11);
  v152 = &v47 - v151;
  v206 = &v47 - v151;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C220);
  v154 = *(*(v153 - 8) + 64);
  MEMORY[0x1EEE9AC00](v153 - 8);
  v156 = (v154 + 15) & 0xFFFFFFFFFFFFFFF0;
  v155 = (&v47 - v156);
  MEMORY[0x1EEE9AC00](&v47 - v156);
  v157 = (&v47 - v156);
  v205 = &v47 - v156;
  v204 = a1;
  v158 = sub_1C542DF48();
  v159 = (*(*v158 + 104))(v158);

  if (v159)
  {
    v95 = sub_1C542DF48();
    v96 = (*(*v95 + 152))(v95);

    if (v96)
    {
      v90 = 0;
      v89 = 1;
      v173 = sub_1C5596044();
      v174 = v12 & 1;
      v91 = MEMORY[0x1E6981840];
      v92 = MEMORY[0x1E6981838];
      sub_1C540EFD8(&v173, MEMORY[0x1E6981840], &v175);
      sub_1C55950B4();
      (*(v135 + 104))(v136, *MEMORY[0x1E697DC28], v133);
      sub_1C5435714();
      sub_1C5595AE4();
      (*(v135 + 8))(v136, v133);
      (*(v139 + 8))(v141, v137);
      v93 = sub_1C543579C();
      sub_1C540EFD8(v144, v142, v146);
      sub_1C54358CC(v144);
      v169 = sub_1C5596044();
      v170 = v13 & 1;
      sub_1C540EFD8(&v169, v91, &v171);
      v167 = v176;
      v166 = v175;
      v168[0] = &v166;
      sub_1C5435B68(v146, v144);
      v168[1] = v144;
      v165 = v172;
      v164 = v171;
      v168[2] = &v164;
      v163[0] = v91;
      v163[1] = v142;
      v163[2] = v91;
      v160 = v92;
      v161 = v93;
      v162 = v92;
      sub_1C540F5A0(v168, 3uLL, v163, v132);
      sub_1C54358CC(v144);
      sub_1C54362F0(v132, v130);
      v94 = sub_1C54305BC();
      v14 = sub_1C5430644();
      sub_1C540FD1C(v130, v128, v121, v94, v14, v150);
      sub_1C543649C(v130);
      sub_1C535BE64(v150, v152);
      sub_1C543649C(v132);
      sub_1C54358CC(v146);
    }

    else
    {
      v15 = v98;
      updated = type metadata accessor for SoftwareUpdateRowElement();
      v16 = (v15 + updated[6]);
      v79 = *v16;
      v87 = v16[1];
      sub_1C5594CF4();
      v72 = sub_1C542DF48();
      v17 = (*(*v72 + 200))(v72);
      v18 = v98;
      v76 = v17;
      v86 = v19;

      v20 = (v18 + updated[9]);
      v77 = *v20;
      v85 = v20[1];
      sub_1C5594CF4();
      v21 = (v18 + updated[10]);
      v78 = *v21;
      v84 = v21[1];
      sub_1C5594CF4();
      v22 = (v18 + updated[11]);
      v75 = *v22;
      v83 = v22[1];
      sub_1C5594CF4();
      (*(v119 + 16))(v120, v18, v117);
      v81 = sub_1C542E504();
      v82 = v23;
      v74 = v24;
      v25 = sub_1C5433964();
      v80 = &v45;
      v46[3] = v25;
      sub_1C5452AB8(v79, v87, v76, v86, v77, v85, v78, v84, v124, v75, v83, v120, v81, v82, v74 & 1, updated);

      (*(v119 + 8))(v120, v117);

      v88 = sub_1C5430644();
      sub_1C540EFD8(v124, v121, v126);
      sub_1C535BC24(v124);
      v178 = v124;
      sub_1C535BD04(v126, v122);
      sub_1C540EFD8(v122, v121, v124);
      sub_1C535BC24(v122);
      sub_1C535BD04(v124, v122);
      v26 = sub_1C54305BC();
      sub_1C54108A0(v122, v128, v121, v26, v88, v150);
      sub_1C535BC24(v122);
      sub_1C535BE64(v150, v152);
      sub_1C535BC24(v124);
      sub_1C535BC24(v126);
    }

    v177 = v150;
    sub_1C535C108(v152, v148);
    v71 = sub_1C5430514();
    sub_1C540EFD8(v148, v147, v150);
    sub_1C535C430(v148);
    sub_1C535C108(v150, v148);
    v27 = sub_1C5430ACC();
    sub_1C540FD1C(v148, v147, v111, v71, v27, v155);
    sub_1C535C430(v148);
    sub_1C535A790(v155, v157);
    sub_1C535C430(v150);
    sub_1C535C430(v152);
  }

  else
  {
    v69 = sub_1C542DF48();
    v70 = (*(*v69 + 152))(v69);

    if (v70)
    {
      v201 = v146;
      sub_1C55950B4();
      (*(v135 + 104))(v136, *MEMORY[0x1E697DC28], v133);
      sub_1C5435714();
      sub_1C5595AE4();
      (*(v135 + 8))(v136, v133);
      (*(v139 + 8))(v141, v137);
      v63 = sub_1C543579C();
      sub_1C540EFD8(v144, v142, v146);
      sub_1C54358CC(v144);
      v56 = sub_1C5595434();
      v57 = &v47;
      MEMORY[0x1EEE9AC00](&v47);
      v54 = v46;
      v46[2] = v28;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C428);
      sub_1C54359C8();
      v60 = 0;
      v59 = 1;
      sub_1C5596064();
      v29 = v97;
      v30 = v192;
      *(v97 + 18) = v193;
      v29[17] = v30;
      v31 = v194;
      v32 = v195;
      v200 = v197;
      v29[21] = v196;
      v29[20] = v32;
      v29[19] = v31;
      v33 = v29[17];
      v29[1] = v29[18];
      *v29 = v33;
      v34 = v29[19];
      v35 = v29[20];
      v36 = v29[21];
      v191[10] = v200;
      v29[4] = v36;
      v29[3] = v35;
      v29[2] = v34;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C438);
      v65 = sub_1C5435A50();
      v68 = v198;
      v58 = v191;
      sub_1C540EFD8(v191, v61, v198);
      sub_1C5435AD8(v58);
      v187 = sub_1C5596044();
      v188 = v37 & 1;
      v62 = MEMORY[0x1E6981840];
      v64 = MEMORY[0x1E6981838];
      sub_1C540EFD8(&v187, MEMORY[0x1E6981840], &v189);
      sub_1C5435B68(v146, v144);
      v186[0] = v144;
      v66 = v185;
      sub_1C5435C9C(v68, v185);
      v186[1] = v66;
      v184 = v190;
      v183 = v189;
      v186[2] = &v183;
      v182[0] = v142;
      v182[1] = v61;
      v182[2] = v62;
      v179 = v63;
      v180 = v65;
      v181 = v64;
      sub_1C540F5A0(v186, 3uLL, v182, v110);
      sub_1C5435AD8(v66);
      sub_1C54358CC(v144);
      sub_1C5435DF8(v110, v108);
      v67 = sub_1C5430B74();
      v38 = sub_1C5430BFC();
      sub_1C540FD1C(v108, v106, v100, v67, v38, v114);
      sub_1C5436140(v108);
      sub_1C5434AB8(v114, v116);
      sub_1C5436140(v110);
      sub_1C5435AD8(v68);
      sub_1C54358CC(v146);
    }

    else
    {
      v39 = v98;
      v49 = type metadata accessor for SoftwareUpdateRowElement();
      v40 = (v39 + *(v49 + 24));
      v50 = *v40;
      v52 = v40[1];
      sub_1C5594CF4();
      v41 = (v39 + *(v49 + 32));
      v48 = *v41;
      v51 = v41[1];
      sub_1C5594CF4();
      sub_1C5433964();
      sub_1C5450D48(v50, v52, v48, v51, v49, v103);

      v53 = sub_1C5430BFC();
      sub_1C540EFD8(v103, v100, v105);
      sub_1C543465C(v103);
      v203 = v103;
      sub_1C54347C8(v105, v101);
      sub_1C540EFD8(v101, v100, v103);
      sub_1C543465C(v101);
      sub_1C54347C8(v103, v101);
      v42 = sub_1C5430B74();
      sub_1C54108A0(v101, v106, v100, v42, v53, v114);
      sub_1C543465C(v101);
      sub_1C5434AB8(v114, v116);
      sub_1C543465C(v103);
      sub_1C543465C(v105);
    }

    v202 = v114;
    sub_1C5434E2C(v116, v112);
    v47 = sub_1C5430ACC();
    sub_1C540EFD8(v112, v111, v114);
    sub_1C5435418(v112);
    sub_1C5434E2C(v114, v112);
    v43 = sub_1C5430514();
    sub_1C54108A0(v112, v147, v111, v43, v47, v155);
    sub_1C5435418(v112);
    sub_1C535A790(v155, v157);
    sub_1C5435418(v114);
    sub_1C5435418(v116);
  }

  sub_1C535ADD8(v157, v155);
  sub_1C543046C();
  sub_1C540EFD8(v155, v153, v99);
  sub_1C535B71C(v155);
  return sub_1C535B71C(v157);
}

uint64_t sub_1C542FB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = 0;
  v139 = 0;
  v136 = 0u;
  v137 = 0u;
  v107 = 0u;
  v108 = 0u;
  v95 = 0;
  v96 = 0;
  v93 = 0u;
  v94 = 0u;
  v84 = 0u;
  v85 = 0u;
  v164 = a1;
  updated = type metadata accessor for SoftwareUpdateRowElement();
  v2 = (a1 + *(updated + 24));
  v72 = *v2;
  v73 = v2[1];
  sub_1C5594CF4();
  if (v73)
  {
    v95 = v72;
    v96 = v73;
    sub_1C5594CF4();
    v89 = sub_1C55959D4();
    v90 = v3;
    v91 = v4;
    v92 = v5;
    v86[0] = v89;
    v86[1] = v3;
    v87 = v4 & 1;
    v88 = v5;
    v56 = MEMORY[0x1E6981148];
    sub_1C540EFD8(v86, MEMORY[0x1E6981148], &v93);
    sub_1C5414260(v86);
    v50 = v93;
    v51 = v94;
    v52 = *(&v94 + 1);
    sub_1C54130AC(v93, *(&v93 + 1), v94 & 1);
    sub_1C5594CF4();
    v81 = v50;
    v82 = v51 & 1;
    v83 = v52;
    sub_1C540EFD8(&v81, v56, &v84);
    sub_1C5414260(&v81);
    v54 = v84;
    v53 = v85;
    v55 = *(&v85 + 1);
    sub_1C54130AC(v84, *(&v84 + 1), v85 & 1);
    sub_1C5594CF4();
    v74 = v54;
    v75 = v53 & 1;
    v76 = v55;
    sub_1C540F554(&v74, v56, &v77);
    sub_1C54366A4(&v74);
    v57 = v77;
    v58 = v78;
    v59 = v79;
    v60 = v80;
    sub_1C54365B4(v77, v78, v79, v80);
    v160 = v57;
    v161 = v58;
    v162 = v59;
    v163 = v60;
    sub_1C5414260(&v84);
    sub_1C5414260(&v93);

    v65 = v57;
    v66 = v58;
    v67 = v59;
    v68 = v60;
  }

  else
  {
    memset(v155, 0, sizeof(v155));
    sub_1C540F554(v155, MEMORY[0x1E6981148], &v156);
    v61 = v156;
    v62 = v157;
    v63 = v158;
    v64 = v159;
    sub_1C54365B4(v156, v157, v158, v159);
    v160 = v61;
    v161 = v62;
    v162 = v63;
    v163 = v64;
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v68 = v64;
  }

  v6 = (a1 + *(updated + 28));
  v48 = *v6;
  v49 = v6[1];
  sub_1C5594CF4();
  if (v49)
  {
    v138 = v48;
    v139 = v49;
    sub_1C5594CF4();
    sub_1C55953C4();
    v133 = 0;
    v134 = 0;
    v135 = 256;
    v129 = sub_1C55959E4();
    v130 = v7;
    v131 = v8;
    v132 = v9;
    v18 = v129;
    v19 = v7;
    v17 = v8;
    v20 = v9;
    v128 = sub_1C5430454();
    v124 = v18;
    v125 = v19;
    v126 = v17 & 1;
    v127 = v20;
    v120 = sub_1C5595994();
    v121 = v10;
    v122 = v11;
    v123 = v12;
    v21 = v120;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    sub_1C5412EA0(v18, v19, v17 & 1);

    sub_1C5595814();
    v116 = v21;
    v117 = v22;
    v118 = v23 & 1;
    v119 = v24;
    v112 = sub_1C55959C4();
    v113 = v13;
    v114 = v14;
    v115 = v15;
    v25 = v112;
    v26 = v13;
    v27 = v14;
    v28 = v15;

    sub_1C5412EA0(v21, v22, v23 & 1);

    v109[0] = v25;
    v109[1] = v26;
    v110 = v27 & 1;
    v111 = v28;
    v35 = MEMORY[0x1E6981148];
    sub_1C540EFD8(v109, MEMORY[0x1E6981148], &v136);
    sub_1C5414260(v109);
    v29 = v136;
    v30 = v137;
    v31 = *(&v137 + 1);
    sub_1C54130AC(v136, *(&v136 + 1), v137 & 1);
    sub_1C5594CF4();
    v104 = v29;
    v105 = v30 & 1;
    v106 = v31;
    sub_1C540EFD8(&v104, v35, &v107);
    sub_1C5414260(&v104);
    v33 = v107;
    v32 = v108;
    v34 = *(&v108 + 1);
    sub_1C54130AC(v107, *(&v107 + 1), v108 & 1);
    sub_1C5594CF4();
    v97 = v33;
    v98 = v32 & 1;
    v99 = v34;
    sub_1C540F554(&v97, v35, &v100);
    sub_1C54366A4(&v97);
    v36 = v100;
    v37 = v101;
    v38 = v102;
    v39 = v103;
    sub_1C54365B4(v100, v101, v102, v103);
    v151 = v36;
    v152 = v37;
    v153 = v38;
    v154 = v39;
    sub_1C5414260(&v107);
    sub_1C5414260(&v136);

    v44 = v36;
    v45 = v37;
    v46 = v38;
    v47 = v39;
  }

  else
  {
    memset(v146, 0, sizeof(v146));
    sub_1C540F554(v146, MEMORY[0x1E6981148], &v147);
    v40 = v147;
    v41 = v148;
    v42 = v149;
    v43 = v150;
    sub_1C54365B4(v147, v148, v149, v150);
    v151 = v40;
    v152 = v41;
    v153 = v42;
    v154 = v43;
    v44 = v40;
    v45 = v41;
    v46 = v42;
    v47 = v43;
  }

  v144[0] = v65;
  v144[1] = v66;
  v144[2] = v67;
  v144[3] = v68;
  v145[0] = v144;
  v143[0] = v44;
  v143[1] = v45;
  v143[2] = v46;
  v143[3] = v47;
  v145[1] = v143;
  v142[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C448);
  v142[1] = v142[0];
  v140 = sub_1C5436610();
  v141 = v140;
  sub_1C540F5A0(v145, 2uLL, v142, a2);
  sub_1C54366A4(v143);
  sub_1C54366A4(v144);
  sub_1C54366A4(&v151);
  return sub_1C54366A4(&v160);
}

unint64_t sub_1C543046C()
{
  v2 = qword_1EC15C228;
  if (!qword_1EC15C228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C220);
    sub_1C5430514();
    sub_1C5430ACC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430514()
{
  v2 = qword_1EC15C230;
  if (!qword_1EC15C230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C238);
    sub_1C54305BC();
    sub_1C5430644();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54305BC()
{
  v2 = qword_1EC15C240;
  if (!qword_1EC15C240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C248);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430644()
{
  v2 = qword_1EC15C250;
  if (!qword_1EC15C250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C258);
    sub_1C54306EC();
    sub_1C5430A44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54306EC()
{
  v2 = qword_1EC15C260;
  if (!qword_1EC15C260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C270);
    sub_1C5595564();
    sub_1C543080C();
    sub_1C54309C4();
    swift_getOpaqueTypeConformance2();
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C260);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543080C()
{
  v2 = qword_1EC15C278;
  if (!qword_1EC15C278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C270);
    sub_1C54308B4();
    sub_1C543093C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C278);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54308B4()
{
  v2 = qword_1EC15C280;
  if (!qword_1EC15C280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C288);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543093C()
{
  v2 = qword_1EC15C290;
  if (!qword_1EC15C290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C298);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54309C4()
{
  v2 = qword_1EC15C2A0;
  if (!qword_1EC15C2A0)
  {
    sub_1C5595564();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430A44()
{
  v2 = qword_1EC15C2A8;
  if (!qword_1EC15C2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C2B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430ACC()
{
  v2 = qword_1EC15C2B8;
  if (!qword_1EC15C2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C2C0);
    sub_1C5430B74();
    sub_1C5430BFC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430B74()
{
  v2 = qword_1EC15C2C8;
  if (!qword_1EC15C2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C2D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430BFC()
{
  v2 = qword_1EC15C2D8;
  if (!qword_1EC15C2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C2E0);
    sub_1C5430CA0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430CA0()
{
  v2 = qword_1EC15C2E8;
  if (!qword_1EC15C2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C2F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430D28()
{
  v2 = qword_1EC15C2F8;
  if (!qword_1EC15C2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C210);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430DB0()
{
  v2 = qword_1EC15C370;
  if (!qword_1EC15C370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C218);
    sub_1C5430D28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C370);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5430E54()
{
  sub_1C5596E04();
  *v0 = "label";
  *(v0 + 8) = 5;
  *(v0 + 16) = 2;
  *(v0 + 24) = "subLabel";
  *(v0 + 32) = 8;
  *(v0 + 40) = 2;
  *(v0 + 48) = "systemImage";
  *(v0 + 56) = 11;
  *(v0 + 64) = 2;
  *(v0 + 72) = "accessorySystemImage";
  *(v0 + 80) = 20;
  *(v0 + 88) = 2;
  *(v0 + 96) = "checkListSubLabel";
  *(v0 + 104) = 17;
  *(v0 + 112) = 2;
  *(v0 + 120) = "subLabelAccessorySystemImage";
  *(v0 + 128) = 28;
  *(v0 + 136) = 2;
  sub_1C540FCD8();
  v4 = sub_1C5596D64();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_14:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_14;
    case 2:
      v3 = 2;
      goto LABEL_14;
    case 3:
      v3 = 3;
      goto LABEL_14;
    case 4:
      v3 = 4;
      goto LABEL_14;
    case 5:
      v3 = 5;
      goto LABEL_14;
  }

  return 6;
}

uint64_t sub_1C54310AC()
{
  sub_1C5594CF4();
  v2 = sub_1C5430E54();

  if (v2 == 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C543136C()
{
  v2 = qword_1EC15C378;
  if (!qword_1EC15C378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C378);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54314B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5430E54();
  *a1 = result;
  return result;
}

uint64_t sub_1C54314F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5431178();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C5431540@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C54310AC();
  *a1 = result;
  return result;
}

uint64_t sub_1C543158C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5431144();
  *a1 = result;
  return result;
}

unint64_t sub_1C54315E8()
{
  v2 = qword_1EC15C380;
  if (!qword_1EC15C380)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C380);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5431694@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v106 = a1;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v122 = 0;
  v121 = 0;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C388);
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v86);
  v90 = &v42 - v89;
  v132 = &v42 - v89;
  v96 = 0;
  v91 = sub_1C5596384();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v42 - v94;
  updated = type metadata accessor for SoftwareUpdateRowElement();
  v98 = *(*(updated - 1) + 64);
  v97 = (v98 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v96);
  v99 = &v42 - v97;
  v100 = (v98 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v105 = &v42 - v100;
  v131 = &v42 - v100;
  v130 = v106;
  v101 = *(v3 + 48);
  type metadata accessor for SoftwareUpdateProgress();
  sub_1C542D8D0();
  v4 = sub_1C542DE80();
  v5 = updated;
  v6 = (v105 + v101);
  *v6 = v4;
  v6[1] = v7;
  v104 = v5[13];
  v103 = 1;
  v8 = sub_1C5409594();
  v9 = v106;
  v10 = v105 + v104;
  *v10 = v8 & v103;
  *(v10 + 8) = v11;
  v109 = v9[3];
  v107 = v9[4];
  __swift_project_boxed_opaque_existential_0(v9, v109);
  v12 = v108;
  v13 = sub_1C5596F04();
  v110 = v12;
  v111 = v13;
  v112 = v14;
  v113 = v12;
  if (v12)
  {
    v44 = v113;
    v45 = 768;
  }

  else
  {
    v15 = v106;
    v16 = v112;
    v17 = (v105 + updated[5]);
    *v17 = v111;
    v17[1] = v16;
    v82 = v129;
    sub_1C5432498(v15, v129);
    v18 = v110;
    sub_1C5596374();
    v83 = v18;
    v84 = v18;
    if (v18)
    {
      v44 = v84;
      v45 = 770;
    }

    else
    {
      (*(v92 + 32))(v105, v95, v91);
      v78 = v106[3];
      v79 = v106[4];
      __swift_project_boxed_opaque_existential_0(v106, v78);
      sub_1C54315E8();
      v19 = v83;
      sub_1C5596F24();
      v80 = v19;
      v81 = v19;
      if (!v19)
      {
        v128 = 0;
        v20 = sub_1C5596D74();
        v74 = 0;
        v75 = v20;
        v76 = v21;
        v77 = 0;
        v22 = (v105 + updated[6]);
        *v22 = v20;
        v22[1] = v21;
        v127 = 1;
        v23 = sub_1C5596D74();
        v70 = 0;
        v71 = v23;
        v72 = v24;
        v73 = 0;
        v25 = (v105 + updated[7]);
        *v25 = v23;
        v25[1] = v24;
        v126 = 4;
        v26 = sub_1C5596D74();
        v66 = 0;
        v67 = v26;
        v68 = v27;
        v69 = 0;
        v28 = (v105 + updated[8]);
        *v28 = v26;
        v28[1] = v27;
        v125 = 2;
        v29 = sub_1C5596D74();
        v62 = 0;
        v63 = v29;
        v64 = v30;
        v65 = 0;
        v31 = (v105 + updated[9]);
        *v31 = v29;
        v31[1] = v30;
        v124 = 3;
        v32 = sub_1C5596D74();
        v58 = 0;
        v59 = v32;
        v60 = v33;
        v61 = 0;
        v34 = (v105 + updated[10]);
        *v34 = v32;
        v34[1] = v33;
        v123 = 5;
        v35 = sub_1C5596D74();
        v54 = 0;
        v55 = v35;
        v56 = v36;
        v57 = 0;
        v37 = (v105 + updated[11]);
        *v37 = v35;
        v37[1] = v36;
        v51 = 0;
        sub_1C5432504(v38);
        v53 = sub_1C5432568();
        v122 = v53;
        sub_1C54325B0(v39);
        v52 = sub_1C5404B48();
        v121 = v52;
        MEMORY[0x1E69E5928](v53);
        if (v53)
        {
          v50 = v53;
          v49 = v53;
          MEMORY[0x1E69E5928](v52);
          sub_1C5432614(v105, v99);
          v46 = sub_1C5432A0C(v99);
          v47 = v40;
          sub_1C54328C8(v99);
          v119 = v46;
          v120 = v47;
          aBlock = MEMORY[0x1E69E9820];
          v115 = 1107296256;
          v116 = 0;
          v117 = sub_1C5433348;
          v118 = &block_descriptor_2;
          v48 = _Block_copy(&aBlock);

          [v49 scanForUpdates:v52 withScanResults:v48];
          _Block_release(v48);
          MEMORY[0x1E69E5920](v52);
          MEMORY[0x1E69E5920](v49);
        }

        MEMORY[0x1E69E5920](v52);
        MEMORY[0x1E69E5920](v53);
        (*(v87 + 8))(v90, v86);
        sub_1C5432614(v105, v85);
        __swift_destroy_boxed_opaque_existential_0(v106);
        return sub_1C54328C8(v105);
      }

      v44 = v81;
      v45 = 771;
    }
  }

  v43 = v45;
  v42 = v44;
  __swift_destroy_boxed_opaque_existential_0(v106);
  if (v43)
  {
    (*(v92 + 8))(v105, v91);
  }

  if ((v43 & 2) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v43 & 4) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v43 & 8) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v43 & 0x10) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v43 & 0x20) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v43 & 0x40) != 0)
  {
    sub_1C5401ECC();
  }

  sub_1C5373718();
  result = v105 + updated[13];
  sub_1C5373718();
  return result;
}

uint64_t sub_1C5432498(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t sub_1C5432504(double a1)
{
  v3 = qword_1EC15C390;
  if (!qword_1EC15C390)
  {
    gotLoadHelper_x8__OBJC_CLASS___SUManagerClient(a1);
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C390);
    return ObjCClassMetadata;
  }

  return v3;
}

unint64_t sub_1C54325B0(double a1)
{
  v3 = qword_1EC15C398;
  if (!qword_1EC15C398)
  {
    gotLoadHelper_x8__OBJC_CLASS___SUScanOptions(a1);
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C398);
    return ObjCClassMetadata;
  }

  return v3;
}

uint64_t sub_1C5432614(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 16))(a2, a1);
  updated = type metadata accessor for SoftwareUpdateRowElement();
  v3 = (a1 + updated[5]);
  v13 = (a2 + updated[5]);
  *v13 = *v3;
  v14 = v3[1];
  sub_1C5594CF4();
  v13[1] = v14;
  v4 = updated[6];
  v15 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v16 = *(a1 + v4 + 8);
  sub_1C5594CF4();
  *(v15 + 8) = v16;
  v5 = updated[7];
  v17 = a2 + v5;
  *(a2 + v5) = *(a1 + v5);
  v18 = *(a1 + v5 + 8);
  sub_1C5594CF4();
  *(v17 + 8) = v18;
  v6 = updated[8];
  v19 = a2 + v6;
  *(a2 + v6) = *(a1 + v6);
  v20 = *(a1 + v6 + 8);
  sub_1C5594CF4();
  *(v19 + 8) = v20;
  v7 = updated[9];
  v21 = a2 + v7;
  *(a2 + v7) = *(a1 + v7);
  v22 = *(a1 + v7 + 8);
  sub_1C5594CF4();
  *(v21 + 8) = v22;
  v8 = updated[10];
  v23 = a2 + v8;
  *(a2 + v8) = *(a1 + v8);
  v24 = *(a1 + v8 + 8);
  sub_1C5594CF4();
  *(v23 + 8) = v24;
  v9 = updated[11];
  v25 = a2 + v9;
  *(a2 + v9) = *(a1 + v9);
  v26 = *(a1 + v9 + 8);
  sub_1C5594CF4();
  *(v25 + 8) = v26;
  v10 = updated[12];
  v28 = a2 + v10;
  *(a2 + v10) = *(a1 + v10);
  v29 = *(a1 + v10 + 8);

  *(v28 + 8) = v29;
  v11 = updated[13];
  v32 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v33 = *(a1 + v11 + 8);

  result = a2;
  *(v32 + 8) = v33;
  return result;
}

uint64_t sub_1C54328C8(uint64_t a1)
{
  v1 = sub_1C5596384();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for SoftwareUpdateRowElement();

  return a1;
}

uint64_t (*sub_1C5432A0C(uint64_t a1))(void *a1, void *a2)
{
  v2 = a1;
  v10 = sub_1C54345DC;
  v11 = 0;
  v3 = *(type metadata accessor for SoftwareUpdateRowElement() - 8);
  v5 = v3;
  v6 = *(v3 + 64);
  v4 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v2 - v4;
  v11 = MEMORY[0x1EEE9AC00](v2);
  sub_1C5432614(v11, &v2 - v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1C54344D4(v8, v9 + v7);
  return v10;
}

uint64_t sub_1C5432B80(void *a1, void *a2)
{
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v73 = 0;
  v47 = 0;
  v78 = a1;
  v77 = a2;
  MEMORY[0x1E69E5928](a1);
  if (a1)
  {
    v47 = a1;
    v42 = sub_1C542DF48();
    v46 = [a1 preferredDescriptor];
    if (v46)
    {
      v40 = v46;
      MEMORY[0x1E69E5928](v46);
      sub_1C5401EF8(&v46);
      v41 = humanReadableUpdateName_delayInitStub(v2);
      MEMORY[0x1E69E5920](v40);
      if (v41)
      {
        v36 = sub_1C5596574();
        v37 = v3;
        MEMORY[0x1E69E5920](v41);
        v38 = v36;
        v39 = v37;
      }

      else
      {
        v38 = 0;
        v39 = 0;
      }

      v34 = v38;
      v35 = v39;
    }

    else
    {
      sub_1C5401EF8(&v46);
      v34 = 0;
      v35 = 0;
    }

    (*(*v42 + 208))(v34, v35);

    v33 = sub_1C542DF48();
    (*(*v33 + 112))(1);

    MEMORY[0x1E69E5920](a1);
  }

  else
  {
    v4 = a2;
    if (a2)
    {
      v75 = a2;
      v5 = a2;
      v27 = sub_1C5594864();
      v74 = v27;

      v31 = [v27 domain];
      v28 = sub_1C5596574();
      v30 = v6;
      gotLoadHelper_x8__SUErrorDomain(v7);
      v29 = **(v8 + 2216);
      MEMORY[0x1E69E5928](v29);
      v9 = sub_1C5596574();
      v32 = MEMORY[0x1C69471A0](v28, v30, v9);

      MEMORY[0x1E69E5920](v29);

      MEMORY[0x1E69E5920](v31);
      if (v32)
      {
        [v27 code];
        sub_1C5418E3C();
        v25 = v10;
        v26 = v11;
        v72 = v10;
        v73 = v11 & 1;
        v68 = v10;
        v69 = v11 & 1;
        v70 = 3;
        v71 = 0;
        if (v11)
        {
          v24 = 0;
        }

        else
        {
          v50 = v10;
          v51 = v11 & 1;
          v49 = v10;
          v48 = v70;
          type metadata accessor for SUErrorCode();
          sub_1C5433510();
          v24 = sub_1C55964D4();
        }

        if (v24)
        {
          v23 = 1;
        }

        else
        {
          v64 = v25;
          v65 = v26 & 1;
          v66 = 63;
          v67 = 0;
          if (v26)
          {
            v22 = 0;
          }

          else
          {
            v54 = v25;
            v55 = v26 & 1;
            v53 = v25;
            v52 = v66;
            type metadata accessor for SUErrorCode();
            sub_1C5433510();
            v22 = sub_1C55964D4();
          }

          v23 = v22;
        }

        if (v23)
        {
          v21 = 1;
        }

        else
        {
          v60 = v25;
          v61 = v26 & 1;
          v62 = 55;
          v63 = 0;
          if (v26)
          {
            v20 = 0;
          }

          else
          {
            v58 = v25;
            v59 = v26 & 1;
            v57 = v25;
            v56 = v62;
            type metadata accessor for SUErrorCode();
            sub_1C5433510();
            v20 = sub_1C55964D4();
          }

          v21 = v20;
        }

        if (v21)
        {
          v19 = sub_1C542DF48();
          (*(*v19 + 112))(0);
        }
      }

      else
      {
        v15 = sub_1C542DF48();
        (*(*v15 + 112))(1);

        v18 = sub_1C542DF48();
        v12 = (v44 + *(type metadata accessor for SoftwareUpdateRowElement() + 28));
        v16 = *v12;
        v17 = v12[1];
        sub_1C5594CF4();
        (*(*v18 + 208))(v16, v17);
      }

      MEMORY[0x1E69E5920](v27);
    }
  }

  v14 = sub_1C542DF48();
  (*(*v14 + 160))(0);
}

uint64_t sub_1C5433348(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v5(a2);

  MEMORY[0x1E69E5920](a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t type metadata accessor for SUErrorCode()
{
  v4 = qword_1EC15C400;
  if (!qword_1EC15C400)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15C400);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C5433510()
{
  v2 = qword_1EC15C3A0;
  if (!qword_1EC15C3A0)
  {
    type metadata accessor for SUErrorCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54335FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C542DC14();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1C5433644()
{
  v2 = qword_1EC15C3A8;
  if (!qword_1EC15C3A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54336D8()
{
  v2 = qword_1EC15C3B0;
  if (!qword_1EC15C3B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543376C()
{
  v2 = qword_1EC15C3B8;
  if (!qword_1EC15C3B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5433834()
{
  v2 = qword_1EC15C3C0;
  if (!qword_1EC15C3C0)
  {
    type metadata accessor for SoftwareUpdateRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54338CC()
{
  v2 = qword_1EC15C3C8;
  if (!qword_1EC15C3C8)
  {
    type metadata accessor for SoftwareUpdateRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5433964()
{
  v2 = qword_1EC15C3D0;
  if (!qword_1EC15C3D0)
  {
    type metadata accessor for SoftwareUpdateRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5433A0C()
{
  updated = sub_1C5433B4C();
  if (v0 <= 0x3F)
  {
    updated = sub_1C5433BE0();
    if (v1 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

uint64_t sub_1C5433B4C()
{
  v4 = qword_1EC15C3D8;
  if (!qword_1EC15C3D8)
  {
    v3 = sub_1C5594EA4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15C3D8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C5433BE0()
{
  v4 = qword_1EC15C3E0;
  if (!qword_1EC15C3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C1F0);
    v3 = sub_1C5594EA4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15C3E0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C5433CD4()
{
  v5 = sub_1C5596384();
  if (v0 <= 0x3F)
  {
    v5 = sub_1C5433E58();
    if (v1 <= 0x3F)
    {
      v5 = sub_1C5433EEC();
      if (v2 <= 0x3F)
      {
        v5 = sub_1C5433F94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1C5433E58()
{
  v4 = qword_1EC15C3E8;
  if (!qword_1EC15C3E8)
  {
    v3 = sub_1C5596A94();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15C3E8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C5433EEC()
{
  v4 = qword_1EC15C3F0;
  if (!qword_1EC15C3F0)
  {
    type metadata accessor for SoftwareUpdateProgress();
    sub_1C542DEC8();
    v3 = sub_1C55951B4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15C3F0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C5433F94()
{
  v4 = qword_1EC15C3F8;
  if (!qword_1EC15C3F8)
  {
    v3 = sub_1C5595FB4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15C3F8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C5434034(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C543419C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

id sub_1C54343BC()
{
  v2 = [v0 initWithDelegate_clientType_];
  swift_unknownObjectRelease();
  return v2;
}

unint64_t sub_1C5434454()
{
  v2 = qword_1EC15C408;
  if (!qword_1EC15C408)
  {
    type metadata accessor for SUErrorCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C408);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1C54344D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 32))(a2, a1);
  updated = type metadata accessor for SoftwareUpdateRowElement();
  *(a2 + updated[5]) = *(a1 + updated[5]);
  *(a2 + updated[6]) = *(a1 + updated[6]);
  *(a2 + updated[7]) = *(a1 + updated[7]);
  *(a2 + updated[8]) = *(a1 + updated[8]);
  *(a2 + updated[9]) = *(a1 + updated[9]);
  *(a2 + updated[10]) = *(a1 + updated[10]);
  *(a2 + updated[11]) = *(a1 + updated[11]);
  *(a2 + updated[12]) = *(a1 + updated[12]);
  result = *(a1 + updated[13]);
  *(a2 + updated[13]) = result;
  return result;
}

uint64_t sub_1C54345DC(void *a1, void *a2)
{
  type metadata accessor for SoftwareUpdateRowElement();

  return sub_1C5432B38(a1, a2);
}

uint64_t sub_1C543465C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350);
  if (!swift_getEnumCaseMultiPayload())
  {

    v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358) + 36);

    v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360) + 28);
    v1 = sub_1C5595F34();
    (*(*(v1 - 8) + 8))(v4);
    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368) + 48);
    sub_1C5412EA0(*(v5 + 24), *(v5 + 32), *(v5 + 40) & 1);

    if (*(v5 + 80))
    {
      sub_1C5412EA0(*(v5 + 56), *(v5 + 64), *(v5 + 72) & 1);
    }
  }

  return a1;
}

void *sub_1C54347C8(uint64_t *a1, void *a2)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v28 - 8) + 64));
  }

  else
  {
    v12 = *a1;

    *a2 = v12;
    v13 = a1[1];

    a2[1] = v13;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358);
    v15 = (a2 + *(v2 + 36));
    v16 = (a1 + *(v2 + 36));
    v14 = *v16;

    *v15 = v14;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360);
    v18 = v15 + *(v3 + 28);
    v17 = v16 + *(v3 + 28);
    v4 = sub_1C5595F34();
    (*(*(v4 - 8) + 16))(v18, v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368);
    v23 = a2 + *(v19 + 48);
    v25 = a1 + *(v19 + 48);
    *v23 = *v25;
    v23[16] = v25[16];
    v20 = *(v25 + 3);
    v21 = *(v25 + 4);
    v22 = v25[40];
    sub_1C54130AC(v20, v21, v22 & 1);
    *(v23 + 3) = v20;
    *(v23 + 4) = v21;
    v23[40] = v22 & 1;
    v24 = *(v25 + 6);
    sub_1C5594CF4();
    *(v23 + 6) = v24;
    if (*(v25 + 10))
    {
      v8 = *(v25 + 7);
      v9 = *(v25 + 8);
      v10 = v25[72];
      sub_1C54130AC(v8, v9, v10 & 1);
      *(v23 + 7) = v8;
      *(v23 + 8) = v9;
      v23[72] = v10 & 1;
      v11 = *(v25 + 10);
      sub_1C5594CF4();
      *(v23 + 10) = v11;
    }

    else
    {
      *(v23 + 56) = *(v25 + 56);
      *(v23 + 72) = *(v25 + 72);
    }

    v5 = *(v19 + 64);
    v6 = a2 + v5;
    *v6 = *(a1 + v5);
    v6[8] = *(a1 + v5 + 8);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

_OWORD *sub_1C5434AB8(_OWORD *a1, _OWORD *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v19 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358);
      v14 = (a2 + *(v8 + 36));
      v15 = (a1 + *(v8 + 36));
      *v14 = *v15;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360);
      v17 = v14 + *(v9 + 28);
      v16 = v15 + *(v9 + 28);
      v10 = sub_1C5595F34();
      (*(*(v10 - 8) + 32))(v17, v16);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368);
      memcpy(a2 + *(v18 + 48), a1 + *(v18 + 48), 0x58uLL);
      v11 = a2 + *(v18 + 64);
      v12 = a1 + *(v18 + 64);
      *v11 = *v12;
      v11[8] = v12[8];
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328);
    v20 = (a2 + *(v3 + 36));
    v21 = (a1 + *(v3 + 36));
    *v20 = *v21;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330);
    v23 = v20 + *(v4 + 28);
    v22 = v21 + *(v4 + 28);
    v5 = sub_1C5594FC4();
    (*(*(v5 - 8) + 32))(v23, v22);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348);
    memcpy(a2 + *(v24 + 48), a1 + *(v24 + 48), 0x58uLL);
    v6 = *(v24 + 64);
    v7 = a2 + v6;
    *v7 = *(a1 + v6);
    v7[8] = *(a1 + v6 + 8);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_1C5434E2C(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v32 - 8) + 64));
    }

    else
    {
      v18 = *a1;

      *a2 = v18;
      v19 = a1[1];

      a2[1] = v19;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358);
      v21 = (a2 + *(v8 + 36));
      v22 = (a1 + *(v8 + 36));
      v20 = *v22;

      *v21 = v20;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360);
      v24 = v21 + *(v9 + 28);
      v23 = v22 + *(v9 + 28);
      v10 = sub_1C5595F34();
      (*(*(v10 - 8) + 16))(v24, v23);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368);
      v29 = a2 + *(v25 + 48);
      v31 = a1 + *(v25 + 48);
      *v29 = *v31;
      v29[16] = v31[16];
      v26 = *(v31 + 3);
      v27 = *(v31 + 4);
      v28 = v31[40];
      sub_1C54130AC(v26, v27, v28 & 1);
      *(v29 + 3) = v26;
      *(v29 + 4) = v27;
      v29[40] = v28 & 1;
      v30 = *(v31 + 6);
      sub_1C5594CF4();
      *(v29 + 6) = v30;
      if (*(v31 + 10))
      {
        v14 = *(v31 + 7);
        v15 = *(v31 + 8);
        v16 = v31[72];
        sub_1C54130AC(v14, v15, v16 & 1);
        *(v29 + 7) = v14;
        *(v29 + 8) = v15;
        v29[72] = v16 & 1;
        v17 = *(v31 + 10);
        sub_1C5594CF4();
        *(v29 + 10) = v17;
      }

      else
      {
        *(v29 + 56) = *(v31 + 56);
        *(v29 + 72) = *(v31 + 72);
      }

      v11 = a2 + *(v25 + 64);
      v12 = a1 + *(v25 + 64);
      *v11 = *v12;
      v11[8] = v12[8];
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328);
    v42 = (a2 + *(v3 + 36));
    v43 = (a1 + *(v3 + 36));
    v41 = *v43;

    *v42 = v41;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330);
    v45 = v42 + *(v4 + 28);
    v44 = v43 + *(v4 + 28);
    v5 = sub_1C5594FC4();
    (*(*(v5 - 8) + 16))(v45, v44);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348);
    v47 = a2 + *(v46 + 48);
    v48 = a1 + *(v46 + 48);
    *v47 = *v48;
    v47[16] = v48[16];
    if (*(v48 + 6))
    {
      v37 = *(v48 + 3);
      v38 = *(v48 + 4);
      v39 = v48[40];
      sub_1C54130AC(v37, v38, v39 & 1);
      *(v47 + 3) = v37;
      *(v47 + 4) = v38;
      v47[40] = v39 & 1;
      v40 = *(v48 + 6);
      sub_1C5594CF4();
      *(v47 + 6) = v40;
    }

    else
    {
      *(v47 + 24) = *(v48 + 24);
      *(v47 + 40) = *(v48 + 40);
    }

    if (*(v48 + 10))
    {
      v33 = *(v48 + 7);
      v34 = *(v48 + 8);
      v35 = v48[72];
      sub_1C54130AC(v33, v34, v35 & 1);
      *(v47 + 7) = v33;
      *(v47 + 8) = v34;
      v47[72] = v35 & 1;
      v36 = *(v48 + 10);
      sub_1C5594CF4();
      *(v47 + 10) = v36;
    }

    else
    {
      *(v47 + 56) = *(v48 + 56);
      *(v47 + 72) = *(v48 + 72);
    }

    v6 = *(v46 + 64);
    v7 = a2 + v6;
    *v7 = *(a1 + v6);
    v7[8] = *(a1 + v6 + 8);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1C5435418(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350);
    if (!swift_getEnumCaseMultiPayload())
    {

      v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358) + 36);

      v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360) + 28);
      v3 = sub_1C5595F34();
      (*(*(v3 - 8) + 8))(v6);
      v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368) + 48);
      sub_1C5412EA0(*(v7 + 24), *(v7 + 32), *(v7 + 40) & 1);

      if (*(v7 + 80))
      {
        sub_1C5412EA0(*(v7 + 56), *(v7 + 64), *(v7 + 72) & 1);
      }
    }
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
    (*(*(v1 - 8) + 8))(a1);
    v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328) + 36);

    v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
    v2 = sub_1C5594FC4();
    (*(*(v2 - 8) + 8))(v9);
    v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348) + 48);
    if (*(v10 + 48))
    {
      sub_1C5412EA0(*(v10 + 24), *(v10 + 32), *(v10 + 40) & 1);
    }

    if (*(v10 + 80))
    {
      sub_1C5412EA0(*(v10 + 56), *(v10 + 64), *(v10 + 72) & 1);
    }
  }

  return a1;
}

unint64_t sub_1C5435714()
{
  v2 = qword_1EC15C410;
  if (!qword_1EC15C410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C320);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543579C()
{
  v2 = qword_1EC15C418;
  if (!qword_1EC15C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C328);
    sub_1C5435714();
    sub_1C5435844();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5435844()
{
  v2 = qword_1EC15C420;
  if (!qword_1EC15C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C330);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C420);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54358CC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
  v2 = sub_1C5594FC4();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

unint64_t sub_1C54359C8()
{
  v2 = qword_1EC15C430;
  if (!qword_1EC15C430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C428);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5435A50()
{
  v2 = qword_1EC15C440;
  if (!qword_1EC15C440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C438);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C440);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5435AD8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);
  }

  if (*(a1 + 80))
  {
    sub_1C5412EA0(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);
  }

  return a1;
}

uint64_t sub_1C5435B68(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328) + 36);
  v7 = *(a1 + v6);

  *(a2 + v6) = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
  v3 = sub_1C5594FC4();
  (*(*(v3 - 8) + 16))(a2 + v6 + v8, a1 + v6 + v8);
  return a2;
}

uint64_t sub_1C5435C9C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  if (*(a1 + 48))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    sub_1C54130AC(v7, v8, v9 & 1);
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = v9 & 1;
    v10 = *(a1 + 48);
    sub_1C5594CF4();
    *(a2 + 48) = v10;
  }

  else
  {
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
  }

  if (*(a1 + 80))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    sub_1C54130AC(v3, v4, v5 & 1);
    *(a2 + 56) = v3;
    *(a2 + 64) = v4;
    *(a2 + 72) = v5 & 1;
    v6 = *(a1 + 80);
    sub_1C5594CF4();
    *(a2 + 80) = v6;
  }

  else
  {
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 72) = *(a1 + 72);
  }

  return a2;
}

uint64_t sub_1C5435DF8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
  (*(*(v2 - 8) + 16))(a2, a1);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328) + 36);
  v22 = *(a1 + v21);

  *(a2 + v21) = v22;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
  v3 = sub_1C5594FC4();
  (*(*(v3 - 8) + 16))(a2 + v21 + v23, a1 + v21 + v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348);
  v27 = *(v26 + 48);
  v4 = a2 + v27;
  *v4 = *(a1 + v27);
  *(v4 + 16) = *(a1 + v27 + 16);
  if (*(a1 + v27 + 48))
  {
    v16 = *(a1 + v27 + 24);
    v17 = *(a1 + v27 + 32);
    v18 = *(a1 + v27 + 40);
    sub_1C54130AC(v16, v17, v18 & 1);
    v19 = a2 + v27;
    *(v19 + 24) = v16;
    *(v19 + 32) = v17;
    *(v19 + 40) = v18 & 1;
    v20 = *(a1 + v27 + 48);
    sub_1C5594CF4();
    *(v19 + 48) = v20;
  }

  else
  {
    v5 = a2 + v27;
    *(v5 + 24) = *(a1 + v27 + 24);
    *(v5 + 40) = *(a1 + v27 + 40);
  }

  v14 = a2 + v27;
  v15 = a1 + v27;
  if (*(a1 + v27 + 80))
  {
    v9 = *(v15 + 56);
    v10 = *(a1 + v27 + 64);
    v11 = *(a1 + v27 + 72);
    sub_1C54130AC(v9, v10, v11 & 1);
    *(v14 + 56) = v9;
    v12 = a2 + v27;
    *(v12 + 64) = v10;
    *(v12 + 72) = v11 & 1;
    v13 = *(a1 + v27 + 80);
    sub_1C5594CF4();
    *(v12 + 80) = v13;
  }

  else
  {
    *(v14 + 56) = *(v15 + 56);
    *(a2 + v27 + 72) = *(a1 + v27 + 72);
  }

  result = a2;
  v7 = a2 + *(v26 + 64);
  v8 = a1 + *(v26 + 64);
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return result;
}

uint64_t sub_1C5436140(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
  v2 = sub_1C5594FC4();
  (*(*(v2 - 8) + 8))(v4 + v5);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348) + 48);
  if (*(a1 + v7 + 48))
  {
    sub_1C5412EA0(*(a1 + v7 + 24), *(a1 + v7 + 32), *(a1 + v7 + 40) & 1);
  }

  if (*(a1 + v7 + 80))
  {
    sub_1C5412EA0(*(a1 + v7 + 56), *(a1 + v7 + 64), *(a1 + v7 + 72) & 1);
  }

  return a1;
}

uint64_t sub_1C54362F0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C318);
  v8 = *(v14 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
  (*(*(v2 - 8) + 16))();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328) + 36);
  v13 = (a1 + v8 + v9);
  v10 = *v13;

  v11 = (a2 + v8 + v9);
  *v11 = v10;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
  v3 = sub_1C5594FC4();
  (*(*(v3 - 8) + 16))(&v11[v12], &v13[v12]);
  result = a2;
  v5 = *(v14 + 64);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v7 = *v6;
  *(v7 + 8) = *(v6 + 8);
  return result;
}

uint64_t sub_1C543649C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C318) + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
  (*(*(v1 - 8) + 8))();
  v5 = a1 + v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328) + 36);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
  v2 = sub_1C5594FC4();
  (*(*(v2 - 8) + 8))(v5 + v6);
  return a1;
}

uint64_t sub_1C54365B4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C54130AC(result, a2, a3 & 1);
    return sub_1C5594CF4();
  }

  return result;
}

unint64_t sub_1C5436610()
{
  v2 = qword_1EC159FE0;
  if (!qword_1EC159FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C448);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54366A4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  return a1;
}

uint64_t sub_1C54366FC@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v7 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v2 - v3;
  v7 = MEMORY[0x1EEE9AC00](v2);
  sub_1C54367BC(v7, (&v2 - v3));
  sub_1C5595004();
  return sub_1C5436890(v6);
}

void *sub_1C54367BC(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C5436890(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1C5436960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = sub_1C5595104();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = v3 - v4;
  v14 = sub_1C5595324();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  sub_1C5595314();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_1C5436B10(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v5);
  v4 = v3 - v3[0];
  sub_1C54367BC(v1, (v3 - v3[0]));
  sub_1C5436BB4(v4, v3[1]);
  return sub_1C5436890(v5);
}

void *sub_1C5436BB4(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1C5436890(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1C5595104();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_1C5436CA0()
{
  v2 = *(v0 + *(type metadata accessor for SharedNameView() + 20));
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t type metadata accessor for SharedNameView()
{
  v1 = qword_1EC160B10;
  if (!qword_1EC160B10)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C5436D54()
{

  type metadata accessor for NameAndPhotoSharingViewModel();
  sub_1C5595F74();

  return v1;
}

uint64_t sub_1C5436DCC()
{
  type metadata accessor for SharedNameView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595F84();

  return v1;
}

uint64_t sub_1C5436E70()
{
  type metadata accessor for SharedNameView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595F94();
  sub_1C5436F54();
}

void (*sub_1C5436F8C(void *a1))(void **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for SharedNameView() + 24));
  v5 = *v2;
  v1[9] = *v2;
  v6 = v2[1];
  v1[10] = v6;

  *v1 = v5;
  v1[1] = v6;
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595F84();
  return sub_1C5437078;
}

void sub_1C5437078(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[10];
    v3 = v8[9];
    v2 = v8[6];

    v8[2] = v3;
    v8[3] = v4;
    v8[7] = v2;
    sub_1C5595F94();
    sub_1C5436F54();
  }

  else
  {
    v7 = v8[10];
    v6 = v8[9];
    v5 = v8[6];

    v8[4] = v6;
    v8[5] = v7;
    v8[8] = v5;
    sub_1C5595F94();
    sub_1C5436F54();
  }

  free(v8);
}

uint64_t sub_1C54371C0()
{
  type metadata accessor for SharedNameView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C543727C()
{
  v2 = *(v0 + *(type metadata accessor for SharedNameView() + 24));

  return v2;
}

uint64_t sub_1C54372CC(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SharedNameView() + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C5437344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v15 = a3;
  v17 = a1;
  v16 = a2;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v13 = type metadata accessor for SharedNameView();
  v12 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = (&v11 - v12);
  v21 = &v11 - v12;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v19 = v3;
  swift_getKeyPath();
  sub_1C5595024();
  MEMORY[0x1E69E5928](v16);
  *(v18 + *(v13 + 20)) = v16;

  v14 = *(v13 + 24);
  v4 = sub_1C5436D54();
  v5 = v18;
  v7 = v6;
  v8 = v15;
  v9 = (v18 + v14);
  *v9 = v4;
  v9[1] = v7;
  sub_1C5437488(v5, v8);
  MEMORY[0x1E69E5920](v16);

  return sub_1C54375F0(v18);
}

void *sub_1C5437488(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v11 = *a1;

    *a2 = v11;
  }

  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SharedNameView();
  v4 = *(v6 + 20);
  v5 = *(a1 + v4);
  MEMORY[0x1E69E5928](v5);
  *(a2 + v4) = v5;
  v9 = (a2 + *(v6 + 24));
  v8 = (a1 + *(v6 + 24));
  v7 = *v8;

  *v9 = v7;
  v10 = v8[1];

  result = a2;
  v9[1] = v10;
  return result;
}

uint64_t sub_1C54375F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v3 = type metadata accessor for SharedNameView();
  MEMORY[0x1E69E5920](*(a1 + *(v3 + 20)));

  return a1;
}

uint64_t sub_1C54376D8@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v22 = sub_1C5438A78;
  v27 = sub_1C5439284;
  v49 = MEMORY[0x1E697CFD8];
  v60 = MEMORY[0x1E697D448];
  v62 = MEMORY[0x1E697C790];
  v64 = sub_1C5439BF8;
  v72 = MEMORY[0x1E697D5A0];
  v101 = 0;
  v100 = 0;
  v34 = 0;
  v53 = sub_1C5595334();
  v50 = *(v53 - 8);
  v51 = v53 - 8;
  v10 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v52 = &v9 - v10;
  v1 = type metadata accessor for SharedNameView();
  v11 = *(v1 - 8);
  v23 = v11;
  v24 = *(v11 + 64);
  v12 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v26 = &v9 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C450);
  v29 = *(v32 - 8);
  v30 = v32 - 8;
  v13 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v9 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C458);
  v14 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v9 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C460);
  v54 = *(v58 - 8);
  v55 = v58 - 8;
  v15 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v9 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C468);
  v65 = *(v68 - 8);
  v66 = v68 - 8;
  v16 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v9 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C470);
  v74 = *(v80 - 8);
  v75 = v80 - 8;
  v18 = *(v74 + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v9 - v17;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v9 - v17);
  v79 = &v9 - v19;
  v101 = &v9 - v19;
  v100 = v2;
  v20 = &v85;
  v86 = v2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C478);
  sub_1C5438A80();
  sub_1C5595964();
  sub_1C5437488(v57, v26);
  v25 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = swift_allocObject();
  sub_1C5439180(v26, (v28 + v25));
  sub_1C54392E8();
  sub_1C5595DC4();
  sub_1C5411348(v27);
  (*(v29 + 8))(v31, v32);
  v33 = 1;
  v36 = sub_1C55965F4();
  v40 = v3;
  sub_1C5439370();
  v39 = sub_1C5576C44();
  v35 = sub_1C55965F4();
  v38 = v4;
  sub_1C54398B0();
  v37 = v5;
  v41 = sub_1C55947B4();
  v42 = v6;

  MEMORY[0x1E69E5920](v39);

  v43 = v99;
  v99[0] = v41;
  v99[1] = v42;
  v47 = sub_1C54398DC();
  v48 = sub_1C54141E8();
  v46 = MEMORY[0x1E69E6158];
  sub_1C5595BC4();
  sub_1C5401ECC();
  sub_1C535C7AC(v44);
  (*(v50 + 104))(v52, *MEMORY[0x1E697C438], v53);
  v95 = v45;
  v96 = v46;
  v97 = v47;
  v98 = v48;
  v73 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5595CC4();
  (*(v50 + 8))(v52, v53);
  (*(v54 + 8))(v56, v58);
  v63 = &v83;
  v84 = v57;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C498);
  v93 = v58;
  v94 = OpaqueTypeConformance2;
  v70 = swift_getOpaqueTypeConformance2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4A0);
  v7 = sub_1C5439C00();
  v91 = v61;
  v92 = v7;
  v71 = swift_getOpaqueTypeConformance2();
  sub_1C5595D94();
  (*(v65 + 8))(v67, v68);
  v87 = v68;
  v88 = v69;
  v89 = v70;
  v90 = v71;
  v77 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v78, v80, v79);
  v82 = *(v74 + 8);
  v81 = v74 + 8;
  v82(v78, v80);
  (*(v74 + 16))(v78, v79, v80);
  sub_1C540EFD8(v78, v80, v76);
  v82(v78, v80);
  return (v82)(v79, v80);
}

uint64_t sub_1C5438288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v39 = a1;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v52 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F0);
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v10 - v23;
  v25 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v23);
  v26 = &v10 - v25;
  v27 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v25);
  v28 = &v10 - v27;
  v61 = &v10 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C620);
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v10 - v30;
  v32 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v30);
  v33 = &v10 - v32;
  v34 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v32);
  v35 = &v10 - v34;
  v60 = &v10 - v34;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4B0);
  v42 = *(v45 - 8);
  v43 = v45 - 8;
  v37 = *(v42 + 64);
  v36 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v10 - v36;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v10 - v38;
  v59 = &v10 - v38;
  v58 = a1;
  sub_1C5438B08(v8);
  v41 = sub_1C543B644();
  sub_1C540EFD8(v44, v45, v40);
  v46 = *(v42 + 8);
  v47 = v42 + 8;
  v46(v44, v45);
  v48 = sub_1C5436DCC();
  v49 = (*(*v48 + 488))(v48);

  v51 = &v57;
  v57 = v49 & 1;
  v50 = &v56;
  v56 = 1;
  sub_1C543F61C();
  if (sub_1C5596E24())
  {
    sub_1C5438D58(v26);
    v16 = sub_1C543BFB4();
    sub_1C540EFD8(v26, v20, v28);
    v17 = *(v21 + 8);
    v18 = v21 + 8;
    v17(v26, v20);
    v52 = v26;
    v15 = *(v21 + 16);
    v14 = v21 + 16;
    v15(v24, v28, v20);
    sub_1C540EFD8(v24, v20, v26);
    v17(v24, v20);
    v15(v31, v26, v20);
    (*(v21 + 56))(v31, 0, 1, v20);
    sub_1C540F554(v31, v20, v33);
    sub_1C543FD84(v31);
    sub_1C543FE38(v33, v35);
    v17(v26, v20);
    v17(v28, v20);
  }

  else
  {
    (*(v21 + 56))(v31, 1, 1, v20);
    sub_1C543BFB4();
    sub_1C540F554(v31, v20, v33);
    sub_1C543FD84(v31);
    sub_1C543FE38(v33, v35);
  }

  (*(v42 + 16))(v44, v40, v45);
  v13 = v55;
  v55[0] = v44;
  sub_1C543FF6C(v35, v33);
  v55[1] = v33;
  v11 = v54;
  v54[0] = v45;
  v54[1] = v29;
  v12 = v53;
  v53[0] = v41;
  v53[1] = sub_1C54400A0();
  sub_1C540F5A0(v13, 2uLL, v11, v19);
  sub_1C543FD84(v33);
  v46(v44, v45);
  sub_1C543FD84(v35);
  return (v46)(v40, v45);
}

unint64_t sub_1C5438A80()
{
  v2 = qword_1EC15C480;
  if (!qword_1EC15C480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C478);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C480);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5438B08@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v13 = sub_1C543A3D0;
  v8 = sub_1C543B35C;
  v28 = 0;
  v27 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4B0);
  v14 = *(v20 - 8);
  v15 = v20 - 8;
  v5 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v18 = &v5 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v5 - v5);
  v19 = &v5 - v6;
  v28 = &v5 - v6;
  v27 = v1;
  v7 = &v25;
  v26 = v1;
  v9 = &v23;
  v24 = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4B8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C448);
  v12 = sub_1C543B42C();
  v3 = sub_1C5436610();
  sub_1C543B364(v13, v7, v10, v11, v12, v3, v18);
  v17 = sub_1C543B644();
  sub_1C540EFD8(v18, v20, v19);
  v22 = *(v14 + 8);
  v21 = v14 + 8;
  v22(v18, v20);
  (*(v14 + 16))(v18, v19, v20);
  sub_1C540EFD8(v18, v20, v16);
  v22(v18, v20);
  return (v22)(v19, v20);
}

uint64_t sub_1C5438D58@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v8 = sub_1C543BE84;
  v21 = 0;
  v20 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F0);
  v9 = *(v15 - 8);
  v10 = v15 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v13 = &v4 - v4;
  v5 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v4);
  v14 = &v4 - v5;
  v21 = &v4 - v5;
  v20 = v1;
  v6 = &v18;
  v19 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F8);
  sub_1C543BE8C();
  sub_1C5596164();
  v12 = sub_1C543BFB4();
  sub_1C540EFD8(v13, v15, v14);
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v13, v15);
  (*(v9 + 16))(v13, v14, v15);
  sub_1C540EFD8(v13, v15, v11);
  v17(v13, v15);
  return (v17)(v14, v15);
}

uint64_t sub_1C5438F54(uint64_t *a1)
{
  v14 = a1;
  v18 = MEMORY[0x1E69E85E0];
  v23 = &unk_1C55AEEA0;
  v25 = 0;
  v21 = 0;
  v1 = type metadata accessor for SharedNameView();
  v11 = *(v1 - 8);
  v15 = v11;
  v16 = *(v11 + 64);
  v12 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v20 = &v10 - v12;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v22 = &v10 - v13;
  v25 = v2;
  v3 = sub_1C5596814();
  (*(*(v3 - 8) + 56))(v22, 1);
  sub_1C5437488(v14, v20);
  sub_1C55967E4();
  v17 = sub_1C55967D4();
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v19;
  v7 = v4;
  v8 = v20;
  v24 = v7;
  *(v7 + 16) = v17;
  *(v7 + 24) = v5;
  sub_1C5439180(v8, (v7 + v6));
  sub_1C54061EC(v21, v21, v22, v23, v24, MEMORY[0x1E69E7CA8] + 8);
}

__n128 sub_1C5439180(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  v3 = type metadata accessor for SharedNameView();
  *&a2[*(v3 + 20)] = *&a1[*(v3 + 20)];
  result = *&a1[*(v3 + 24)];
  *&a2[*(v3 + 24)] = result;
  return result;
}

uint64_t sub_1C5439284()
{
  v1 = *(type metadata accessor for SharedNameView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1C5438F54(v2);
}

unint64_t sub_1C54392E8()
{
  v2 = qword_1EC15C488;
  if (!qword_1EC15C488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C450);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5439370()
{
  v2 = qword_1EC15E200;
  if (!qword_1EC15E200)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E200);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C54393D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_1C55967E4();
  v4[5] = sub_1C55967D4();
  v7 = sub_1C55967A4();
  v4[6] = v7;
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C5439490, v7, v5);
}

uint64_t sub_1C5439490()
{
  v5 = v0[4];
  v0[2] = v0;
  v1 = sub_1C5436DCC();
  v0[8] = v1;
  v2 = type metadata accessor for SharedNameView();
  v0[9] = v2;
  v8 = *(v5 + *(v2 + 20));
  v0[10] = v8;
  MEMORY[0x1E69E5928](v8);
  v7 = (*(*v1 + 560) + **(*v1 + 560));
  v3 = swift_task_alloc();
  *(v6 + 88) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_1C5439614;

  return v7(v8);
}

uint64_t sub_1C5439614()
{
  v5 = *v0;
  v4 = *(*v0 + 80);
  *(*v0 + 16) = *v0;

  v1 = *(v5 + 56);
  v2 = *(v5 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C5439794, v2, v1);
}

uint64_t sub_1C5439794()
{
  v3 = v0[9];
  v4 = v0[4];
  v0[2] = v0;
  v6 = sub_1C5436DCC();
  v5 = *(v4 + *(v3 + 20));
  MEMORY[0x1E69E5928](v5);
  (*(*v6 + 608))(v5);
  MEMORY[0x1E69E5920](v5);

  v1 = *(v0[2] + 8);

  return v1();
}

unint64_t sub_1C54398DC()
{
  v2 = qword_1EC15C490;
  if (!qword_1EC15C490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C458);
    sub_1C54392E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C490);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5439980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v9 = a1;
  v10 = sub_1C543FC68;
  v26 = 0;
  v25 = 0;
  v3 = sub_1C5595544();
  v5 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v13 = &v5 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4A0);
  v14 = *(v20 - 8);
  v15 = v20 - 8;
  v7 = *(v14 + 64);
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v18 = &v5 - v6;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v5 - v6);
  v19 = &v5 - v8;
  v26 = &v5 - v8;
  v25 = a1;
  sub_1C5439C88();
  v11 = &v23;
  v24 = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C560);
  sub_1C543DAE4();
  sub_1C55950A4();
  v17 = sub_1C5439C00();
  sub_1C540EFD8(v18, v20, v19);
  v22 = *(v14 + 8);
  v21 = v14 + 8;
  v22(v18, v20);
  (*(v14 + 16))(v18, v19, v20);
  MEMORY[0x1C6946140](v18, v20, v17);
  v22(v18, v20);
  return (v22)(v19, v20);
}

unint64_t sub_1C5439C00()
{
  v2 = qword_1EC15C4A8;
  if (!qword_1EC15C4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C4A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5439CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v19 = 0;
  v18 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C560);
  v9 = *(v15 - 8);
  v10 = v15 - 8;
  v7 = *(v9 + 64);
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v15);
  v13 = &v6 - v6;
  v8 = v6;
  MEMORY[0x1EEE9AC00](v3);
  v14 = &v6 - v8;
  v19 = &v6 - v8;
  v18 = a1;
  sub_1C5439E70(v4);
  v12 = sub_1C543DAE4();
  sub_1C540EFD8(v13, v15, v14);
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v13, v15);
  (*(v9 + 16))(v13, v14, v15);
  sub_1C540EFD8(v13, v15, v11);
  v17(v13, v15);
  return (v17)(v14, v15);
}

uint64_t sub_1C5439E70@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15 = sub_1C543D10C;
  v18 = 0;
  v5 = 0;
  v6 = *(type metadata accessor for SharedNameView() - 8);
  v10 = v6;
  v11 = *(v6 + 64);
  v7 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = &v5 - v7;
  v2 = sub_1C5594F34();
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v17 = &v5 - v8;
  v18 = v1;
  sub_1C5594F24();
  sub_1C5437488(v9, v13);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v3 = sub_1C5439180(v13, (v16 + v12));
  return MEMORY[0x1C6946B80](v17, v15, v16, v3);
}

uint64_t sub_1C543A008@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v13 = a1;
  v19 = MEMORY[0x1E6981218];
  v21 = sub_1C543F694;
  v41 = 0;
  v40 = 0;
  v2 = type metadata accessor for SharedNameView();
  v9 = *(v2 - 8);
  v14 = v9;
  v15 = *(v9 + 64);
  v10 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v17 = &v9 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4B8);
  v28 = *(v34 - 8);
  v29 = v34 - 8;
  v11 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13);
  v32 = &v9 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v33 = &v9 - v12;
  v41 = &v9 - v12;
  v40 = v5;
  v6 = sub_1C554E52C();
  v27 = &v39;
  v39 = v6;
  KeyPath = swift_getKeyPath();
  sub_1C5437488(v13, v17);
  v16 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = swift_allocObject();
  sub_1C5439180(v17, (v22 + v16));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5C8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5D0);
  v25 = sub_1C543F714();
  v26 = sub_1C543F79C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4C8);
  v7 = sub_1C543B514();
  v37 = v18;
  v38 = v7;
  swift_getOpaqueTypeConformance2();
  sub_1C5596104();
  v31 = sub_1C543B42C();
  sub_1C540EFD8(v32, v34, v33);
  v36 = *(v28 + 8);
  v35 = v28 + 8;
  v36(v32, v34);
  (*(v28 + 16))(v32, v33, v34);
  sub_1C540EFD8(v32, v34, v30);
  v36(v32, v34);
  return (v36)(v33, v34);
}

uint64_t sub_1C543A3D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v11 = a1;
  v31 = a2;
  v16 = sub_1C543F814;
  v38 = sub_1C543F9A4;
  v43 = MEMORY[0x1E6981218];
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v14 = 0;
  v3 = type metadata accessor for SharedNameView();
  v9 = *(v3 - 8);
  v32 = v9;
  v33 = *(v9 + 64);
  v10 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v9 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5D0);
  v45 = *(v51 - 8);
  v46 = v51 - 8;
  v12 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v11);
  v49 = &v9 - v12;
  v13 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v50 = &v9 - v13;
  v64 = &v9 - v13;
  v37 = *v6;
  v15 = 1;
  v63 = v37 & 1;
  v62 = v7;
  v17 = v54;
  v54[16] = v37;
  v55 = v7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5E8);
  v19 = sub_1C543F824();
  sub_1C5412C88();
  v20 = &v60;
  sub_1C5596024();
  v21 = __dst;
  v22 = 96;
  memcpy(__dst, v20, sizeof(__dst));
  v27 = v59;
  memcpy(v59, __dst, sizeof(v59));
  sub_1C5596244();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4E0);
  v25 = sub_1C543B5BC();
  v26 = sub_1C543F8AC();
  v24 = MEMORY[0x1E6981EF8];
  sub_1C543AE1C();
  v28 = &v61;
  sub_1C5595B24();
  sub_1C543F924(v27);
  v29 = v66;
  v30 = 97;
  memcpy(v66, v28, 0x61uLL);
  v40 = v58;
  memcpy(v58, v66, 0x61uLL);
  sub_1C5437488(v31, v35);
  v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v36 = v34 + v33;
  v44 = 1;
  v39 = swift_allocObject();
  sub_1C5439180(v35, (v39 + v34));
  *(v39 + v36) = v37;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4C8);
  v42 = sub_1C543B514();
  sub_1C543AECC();
  sub_1C5595B44();

  sub_1C543F924(v40);
  v56 = v41;
  v57 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v49, v51, v50);
  v53 = *(v45 + 8);
  v52 = v45 + 8;
  v53(v49, v51);
  (*(v45 + 16))(v49, v50, v51);
  sub_1C540EFD8(v49, v51, v47);
  v53(v49, v51);
  return (v53)(v50, v51);
}

uint64_t sub_1C543A8C8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(v59, 0, sizeof(v59));
  v50 = 0;
  v51 = 0;
  v61 = a1 & 1;
  v60 = a2;
  v55 = sub_1C554E224();
  v56 = v3;
  v57 = v4;
  v58 = v5;
  v52[0] = v55;
  v52[1] = v3;
  v53 = v4 & 1;
  v54 = v5;
  sub_1C540EFD8(v52, MEMORY[0x1E6981148], v59);
  sub_1C5414260(v52);
  v48 = sub_1C5596044();
  v49 = v6 & 1;
  sub_1C540EFD8(&v48, MEMORY[0x1E6981840], &v50);
  v44 = a1 & 1;
  v27 = sub_1C5436DCC();
  v28 = (*(*v27 + 488))(v27);

  v43 = v28 & 1;
  sub_1C543F61C();
  if (sub_1C5596E24())
  {
    sub_1C55965F4();
    v33[3] = sub_1C5595EF4();
    sub_1C5595E54();
    sub_1C5595B94();

    sub_1C5410D10();
    v33[0] = v33[4];
    v33[1] = v33[5];
    v33[2] = v33[6];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C600);
    sub_1C543FA44();
    sub_1C540EFD8(v33, v18, v34);
    sub_1C543FC24();
    v12 = v34[0];
    v13 = v34[1];
    v14 = v34[2];

    v31[0] = v12;
    v31[1] = v13;
    v31[2] = v14;
    sub_1C540EFD8(v31, v18, v32);
    sub_1C543FC24();
    v15 = v32[0];
    v16 = v32[1];
    v17 = v32[2];

    v29[0] = v15;
    v29[1] = v16;
    v29[2] = v17;
    sub_1C540F554(v29, v18, v30);
    sub_1C543FBCC(v29);
    v19 = v30[0];
    v20 = v30[1];
    v21 = v30[2];
    sub_1C543FAE8(v30[0]);
    v45 = v19;
    v46 = v20;
    v47 = v21;
    sub_1C543FC24();
    sub_1C543FC24();
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    memset(v41, 0, sizeof(v41));
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C600);
    sub_1C543FA44();
    sub_1C540F554(v41, v8, v42);
    v9 = v42[0];
    v10 = v42[1];
    v11 = v42[2];
    sub_1C543FAE8(v42[0]);
    v45 = v9;
    v46 = v10;
    v47 = v11;
    v22 = v9;
    v23 = v10;
    v24 = v11;
  }

  sub_1C54142A8(v59, v39);
  v40[0] = v39;
  v37 = v50;
  v38 = v51;
  v40[1] = &v37;
  v36[0] = v22;
  v36[1] = v23;
  v36[2] = v24;
  v40[2] = v36;
  v35[0] = MEMORY[0x1E6981148];
  v35[1] = MEMORY[0x1E6981840];
  v35[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C610);
  v34[3] = MEMORY[0x1E6981138];
  v34[4] = MEMORY[0x1E6981838];
  v34[5] = sub_1C543FB34();
  sub_1C540F5A0(v40, 3uLL, v35, a3);
  sub_1C543FBCC(v36);
  sub_1C5414260(v39);
  sub_1C543FBCC(&v45);
  return sub_1C5414260(v59);
}

uint64_t sub_1C543AE38(uint64_t a1, char a2)
{
  v4 = sub_1C5436DCC();
  (*(*v4 + 496))(a2 & 1);
}

uint64_t sub_1C543AEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = 0u;
  v57 = 0u;
  v45 = 0u;
  v46 = 0u;
  v70 = a1;
  v33 = sub_1C5436DCC();
  v34 = (*(*v33 + 488))(v33);

  v65 = v34 & 1;
  v64 = 0;
  sub_1C543F61C();
  if (sub_1C5596E24())
  {
    v13 = sub_1C5436DCC();
    v12 = *(a1 + *(type metadata accessor for SharedNameView() + 20));
    MEMORY[0x1E69E5928](v12);
    v14 = (*(*v13 + 624))(v12);
    v15 = v2;
    MEMORY[0x1E69E5920](v12);

    v54 = v14;
    v55 = v15;
    sub_1C54141E8();
    v50 = sub_1C5595A04();
    v51 = v3;
    v52 = v4;
    v53 = v5;
    v47[0] = v50;
    v47[1] = v3;
    v48 = v4 & 1;
    v49 = v5;
    v22 = MEMORY[0x1E6981148];
    sub_1C540EFD8(v47, MEMORY[0x1E6981148], &v56);
    sub_1C5414260(v47);
    v16 = v56;
    v17 = v57;
    v18 = *(&v57 + 1);
    sub_1C54130AC(v56, *(&v56 + 1), v57 & 1);
    sub_1C5594CF4();
    v42 = v16;
    v43 = v17 & 1;
    v44 = v18;
    sub_1C540EFD8(&v42, v22, &v45);
    sub_1C5414260(&v42);
    v20 = v45;
    v19 = v46;
    v21 = *(&v46 + 1);
    sub_1C54130AC(v45, *(&v45 + 1), v46 & 1);
    sub_1C5594CF4();
    v35 = v20;
    v36 = v19 & 1;
    v37 = v21;
    sub_1C540F554(&v35, v22, &v38);
    sub_1C54366A4(&v35);
    v23 = v38;
    v24 = v39;
    v25 = v40;
    v26 = v41;
    sub_1C54365B4(v38, v39, v40, v41);
    v66 = v23;
    v67 = v24;
    v68 = v25;
    v69 = v26;
    sub_1C5414260(&v45);
    sub_1C5414260(&v56);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
  }

  else
  {
    memset(v59, 0, sizeof(v59));
    sub_1C540F554(v59, MEMORY[0x1E6981148], &v60);
    v8 = v60;
    v9 = v61;
    v10 = v62;
    v11 = v63;
    sub_1C54365B4(v60, v61, v62, v63);
    v66 = v8;
    v67 = v9;
    v68 = v10;
    v69 = v11;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    v30 = v11;
  }

  v58[0] = v27;
  v58[1] = v28;
  v58[2] = v29;
  v58[3] = v30;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C448);
  sub_1C5436610();
  sub_1C540EFD8(v58, v7, a2);
  sub_1C54366A4(v58);
  return sub_1C54366A4(&v66);
}

uint64_t sub_1C543B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = a7;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v21 = a3;
  v20 = a4;
  v11 = (*(*(a4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v10 - v11;
  v8(v7);
  return sub_1C5596174();
}

unint64_t sub_1C543B42C()
{
  v2 = qword_1EC15C4C0;
  if (!qword_1EC15C4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4C8);
    sub_1C543B514();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C4C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543B514()
{
  v2 = qword_1EC15C4D0;
  if (!qword_1EC15C4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4C8);
    sub_1C543B5BC();
    sub_1C543093C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543B5BC()
{
  v2 = qword_1EC15C4D8;
  if (!qword_1EC15C4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C4D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543B644()
{
  v2 = qword_1EC15C4E8;
  if (!qword_1EC15C4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4B0);
    sub_1C543B42C();
    sub_1C5436610();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C4E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543B6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v16 = a1;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v45 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C510);
  v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v11 - v18;
  v20 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v18);
  v21 = &v11 - v20;
  v58 = &v11 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C550);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v11 - v23;
  v25 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v23);
  v26 = &v11 - v25;
  v27 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v25);
  v28 = &v11 - v27;
  v29 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v27);
  v30 = &v11 - v29;
  v57 = &v11 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F8);
  v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v11 - v32;
  v34 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v32);
  v35 = &v11 - v34;
  v56 = &v11 - v34;
  v55 = a1;
  v36 = sub_1C5436DCC();
  v37 = (*(*v36 + 512))(v36);

  v40 = &v54;
  v54 = v37;
  v38 = &v53;
  v53 = 2;
  v39 = type metadata accessor for CNContactDisplayNameOrder();
  sub_1C543E028();
  if (sub_1C5596E24())
  {
    sub_1C543C060();
    v14 = sub_1C543DA5C();
    sub_1C540EFD8(v28, v22, v30);
    sub_1C543E0A8(v28);
    v45 = v28;
    sub_1C543C0F8();
    sub_1C540EFD8(v26, v22, v28);
    sub_1C543E0A8(v26);
    sub_1C543E1A4(v30, v26);
    v13 = v44;
    v44[0] = v26;
    sub_1C543E1A4(v28, v24);
    v44[1] = v24;
    v43[0] = v22;
    v43[1] = v22;
    v41 = v14;
    v42 = v14;
    sub_1C540F5A0(v13, 2uLL, v43, v21);
    sub_1C543E0A8(v24);
    sub_1C543E0A8(v26);
    sub_1C543E354(v21, v19);
    v8 = sub_1C543BF2C();
    sub_1C540FD1C(v19, v17, v17, v8, v8, v33);
  }

  else
  {
    v52 = v30;
    sub_1C543C0F8();
    v12 = sub_1C543DA5C();
    sub_1C540EFD8(v28, v22, v30);
    sub_1C543E0A8(v28);
    v51 = v28;
    sub_1C543C060();
    sub_1C540EFD8(v26, v22, v28);
    sub_1C543E0A8(v26);
    v50 = v21;
    sub_1C543E1A4(v30, v26);
    v11 = v49;
    v49[0] = v26;
    sub_1C543E1A4(v28, v24);
    v49[1] = v24;
    v48[0] = v22;
    v48[1] = v22;
    v46 = v12;
    v47 = v12;
    sub_1C540F5A0(v11, 2uLL, v48, v21);
    sub_1C543E0A8(v24);
    sub_1C543E0A8(v26);
    sub_1C543E354(v21, v19);
    v9 = sub_1C543BF2C();
    sub_1C54108A0(v19, v17, v17, v9, v9, v33);
  }

  sub_1C543E678(v19);
  sub_1C543E820(v33, v35);
  sub_1C543E678(v21);
  sub_1C543E0A8(v28);
  sub_1C543E0A8(v30);
  sub_1C543EC80(v35, v33);
  sub_1C543BE8C();
  sub_1C540EFD8(v33, v31, v15);
  sub_1C543F2CC(v33);
  return sub_1C543F2CC(v35);
}

unint64_t sub_1C543BE8C()
{
  v2 = qword_1EC15C500;
  if (!qword_1EC15C500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4F8);
    sub_1C543BF2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543BF2C()
{
  v2 = qword_1EC15C508;
  if (!qword_1EC15C508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C510);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543BFB4()
{
  v2 = qword_1EC15C518;
  if (!qword_1EC15C518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4F0);
    sub_1C543BE8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C518);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543C060()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C520);
  sub_1C543D178();
  sub_1C5412C88();
  return sub_1C5596024();
}

uint64_t sub_1C543C0F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C520);
  sub_1C543D178();
  sub_1C5412C88();
  return sub_1C5596024();
}

uint64_t sub_1C543C190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v27 = a1;
  v72 = 0;
  v71 = 0;
  v53 = v70;
  memset(v70, 0, sizeof(v70));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568);
  v40 = *(v43 - 8);
  v41 = v43 - 8;
  v17 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v17 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570);
  v18 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v27);
  v50 = &v17 - v18;
  v19 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v52 = &v17 - v19;
  v72 = &v17 - v19;
  v71 = v4;
  *&v25[1] = 1;
  sub_1C55965F4();
  v24 = sub_1C55953C4();
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = 0;
  sub_1C5439370();
  sub_1C5576C44();
  v67 = 0;
  v68 = 0;
  v69 = *v25 & 0x100;
  v63 = sub_1C55959E4();
  v64 = v8;
  v65 = v9;
  v66 = v10;
  v26 = v60;
  v60[0] = v63;
  v60[1] = v8;
  v61 = v9 & 1 & v25[1];
  v62 = v10;
  v44 = MEMORY[0x1E6981148];
  v46 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v60, MEMORY[0x1E6981148], v53);
  sub_1C5414260(v26);
  v28 = sub_1C5436DCC();
  v29 = (*(*v28 + 632))(v28);
  v30 = v11;

  v38 = v59;
  v59[0] = v29;
  v59[1] = v30;
  v31 = sub_1C54371C0();
  v32 = v12;
  v33 = v13;
  KeyPath = swift_getKeyPath();
  v58[6] = v31;
  v58[7] = v32;
  v58[8] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C578);
  sub_1C55960B4();
  v14 = v42;
  v34 = v58[2];
  v35 = v58[3];
  v36 = v58[4];
  v37 = v58[5];

  v15 = sub_1C54141E8();
  sub_1C543C780(v38, v34, v35, v36, v37, MEMORY[0x1E69E6158], v15, v14);

  sub_1C543DB6C();
  sub_1C5595C54();
  (*(v40 + 8))(v42, v43);
  v47 = sub_1C543DBF4();
  sub_1C540EFD8(v50, v45, v52);
  sub_1C543DD24(v50);
  v51 = v57;
  sub_1C54142A8(v53, v57);
  v49 = v58;
  v58[0] = v51;
  sub_1C543DDB4(v52, v50);
  v58[1] = v50;
  v56[0] = v44;
  v56[1] = v45;
  v54 = v46;
  v55 = v47;
  sub_1C540F5A0(v49, 2uLL, v56, v48);
  sub_1C543DD24(v50);
  sub_1C5414260(v51);
  sub_1C543DD24(v52);
  return sub_1C5414260(v53);
}

uint64_t sub_1C543C654@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 392))(v2);
  a2[1] = v3;
}

uint64_t sub_1C543C6E0(void *a1, uint64_t *a2)
{
  sub_1C5402BDC(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 400))(v4, v6);
}

uint64_t sub_1C543C780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9[2] = a8;
  v12 = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;
  v13 = a6;
  v9[1] = a7;
  v9[8] = 0;
  v9[7] = nullsub_1;
  v9[9] = nullsub_1;
  v14 = a6;
  v10 = *(a6 - 8);
  v11 = a6 - 8;
  v9[0] = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a2);
  v9[10] = v9 - v9[0];
  (*(v10 + 16))();
  sub_1C5596254();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C543C8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v27 = a1;
  v72 = 0;
  v71 = 0;
  v53 = v70;
  memset(v70, 0, sizeof(v70));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568);
  v40 = *(v43 - 8);
  v41 = v43 - 8;
  v17 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v17 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570);
  v18 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v27);
  v50 = &v17 - v18;
  v19 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v52 = &v17 - v19;
  v72 = &v17 - v19;
  v71 = v4;
  *&v25[1] = 1;
  sub_1C55965F4();
  v24 = sub_1C55953C4();
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = 0;
  sub_1C5439370();
  sub_1C5576C44();
  v67 = 0;
  v68 = 0;
  v69 = *v25 & 0x100;
  v63 = sub_1C55959E4();
  v64 = v8;
  v65 = v9;
  v66 = v10;
  v26 = v60;
  v60[0] = v63;
  v60[1] = v8;
  v61 = v9 & 1 & v25[1];
  v62 = v10;
  v44 = MEMORY[0x1E6981148];
  v46 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v60, MEMORY[0x1E6981148], v53);
  sub_1C5414260(v26);
  v28 = sub_1C5436DCC();
  v29 = (*(*v28 + 640))(v28);
  v30 = v11;

  v38 = v59;
  v59[0] = v29;
  v59[1] = v30;
  v31 = sub_1C54371C0();
  v32 = v12;
  v33 = v13;
  KeyPath = swift_getKeyPath();
  v58[6] = v31;
  v58[7] = v32;
  v58[8] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C578);
  sub_1C55960B4();
  v14 = v42;
  v34 = v58[2];
  v35 = v58[3];
  v36 = v58[4];
  v37 = v58[5];

  v15 = sub_1C54141E8();
  sub_1C543C780(v38, v34, v35, v36, v37, MEMORY[0x1E69E6158], v15, v14);

  sub_1C543DB6C();
  sub_1C5595C54();
  (*(v40 + 8))(v42, v43);
  v47 = sub_1C543DBF4();
  sub_1C540EFD8(v50, v45, v52);
  sub_1C543DD24(v50);
  v51 = v57;
  sub_1C54142A8(v53, v57);
  v49 = v58;
  v58[0] = v51;
  sub_1C543DDB4(v52, v50);
  v58[1] = v50;
  v56[0] = v44;
  v56[1] = v45;
  v54 = v46;
  v55 = v47;
  sub_1C540F5A0(v49, 2uLL, v56, v48);
  sub_1C543DD24(v50);
  sub_1C5414260(v51);
  sub_1C543DD24(v52);
  return sub_1C5414260(v53);
}

uint64_t sub_1C543CDB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 440))(v2);
  a2[1] = v3;
}

uint64_t sub_1C543CE40(void *a1, uint64_t *a2)
{
  sub_1C5402BDC(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 448))(v4, v6);
}

uint64_t sub_1C543CEE0(uint64_t *a1)
{
  v14 = a1;
  v18 = MEMORY[0x1E69E85E0];
  v23 = &unk_1C55AEE08;
  v25 = 0;
  v21 = 0;
  v1 = type metadata accessor for SharedNameView();
  v11 = *(v1 - 8);
  v15 = v11;
  v16 = *(v11 + 64);
  v12 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v20 = &v10 - v12;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v22 = &v10 - v13;
  v25 = v2;
  v3 = sub_1C5596814();
  (*(*(v3 - 8) + 56))(v22, 1);
  sub_1C5437488(v14, v20);
  sub_1C55967E4();
  v17 = sub_1C55967D4();
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v19;
  v7 = v4;
  v8 = v20;
  v24 = v7;
  *(v7 + 16) = v17;
  *(v7 + 24) = v5;
  sub_1C5439180(v8, (v7 + v6));
  sub_1C54061EC(v21, v21, v22, v23, v24, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C543D10C()
{
  v1 = *(type metadata accessor for SharedNameView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1C543CEE0(v2);
}

unint64_t sub_1C543D178()
{
  v2 = qword_1EC15C528;
  if (!qword_1EC15C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C520);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C528);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543D208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v5 = sub_1C5595104();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[3] = a4;
  sub_1C55967E4();
  v4[8] = sub_1C55967D4();
  v9 = sub_1C55967A4();
  v4[9] = v9;
  v4[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C543D340, v9, v6);
}

uint64_t sub_1C543D340()
{
  v4 = v0[4];
  v0[2] = v0;
  v1 = sub_1C5436DCC();
  v0[11] = v1;
  v7 = *(v4 + *(type metadata accessor for SharedNameView() + 20));
  v0[12] = v7;
  MEMORY[0x1E69E5928](v7);
  v6 = (*(*v1 + 616) + **(*v1 + 616));
  v2 = swift_task_alloc();
  *(v5 + 104) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_1C543D4BC;

  return v6(v7);
}

uint64_t sub_1C543D4BC()
{
  v5 = *v0;
  v4 = *(*v0 + 96);
  *(*v0 + 16) = *v0;

  v1 = *(v5 + 80);
  v2 = *(v5 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C543D63C, v2, v1);
}

uint64_t sub_1C543D63C()
{
  v1 = v0[7];
  v6 = v1;
  v4 = v0[6];
  v5 = v0[5];
  v0[2] = v0;
  sub_1C54366FC(v1);
  sub_1C55950F4();
  (*(v4 + 8))(v6, v5);

  v2 = *(v0[2] + 8);

  return v2();
}

unint64_t sub_1C543D7BC()
{
  v4 = sub_1C543D8C0();
  if (v0 <= 0x3F)
  {
    v4 = sub_1C543D95C();
    if (v1 <= 0x3F)
    {
      v4 = sub_1C543D9C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1C543D8C0()
{
  v4 = qword_1EC15C530;
  if (!qword_1EC15C530)
  {
    sub_1C5595104();
    v3 = sub_1C5595014();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15C530);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C543D95C()
{
  v2 = qword_1EC15C538;
  if (!qword_1EC15C538)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C538);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C543D9C0()
{
  v4 = qword_1EC15C540;
  if (!qword_1EC15C540)
  {
    type metadata accessor for NameAndPhotoSharingViewModel();
    v3 = sub_1C5595FB4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15C540);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C543DA5C()
{
  v2 = qword_1EC15C548;
  if (!qword_1EC15C548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C550);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543DAE4()
{
  v2 = qword_1EC15C558;
  if (!qword_1EC15C558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C560);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543DB6C()
{
  v2 = qword_1EC15C580;
  if (!qword_1EC15C580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C568);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543DBF4()
{
  v2 = qword_1EC15C588;
  if (!qword_1EC15C588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C570);
    sub_1C543DB6C();
    sub_1C543DC9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543DC9C()
{
  v2 = qword_1EC15C590;
  if (!qword_1EC15C590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C598);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C590);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543DD24(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570);

  return a1;
}

uint64_t sub_1C543DDB4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568);
  (*(*(v2 - 8) + 16))(a2, a1);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570) + 36);
  v8 = *(a1 + v7);

  result = a2;
  v4 = a2 + v7;
  *v4 = v8;
  *(v4 + 8) = *(a1 + v7 + 8);
  return result;
}

uint64_t sub_1C543DE7C(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for SharedNameView() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C543D208(a1, v7, v8, v1 + v9);
}

uint64_t type metadata accessor for CNContactDisplayNameOrder()
{
  v4 = qword_1EC15C630;
  if (!qword_1EC15C630)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15C630);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C543E028()
{
  v2 = qword_1EC15C5A0;
  if (!qword_1EC15C5A0)
  {
    type metadata accessor for CNContactDisplayNameOrder();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C5A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543E0A8(uint64_t a1)
{
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8) + 44);
  sub_1C5412EA0(*v3, *(v3 + 8), *(v3 + 16) & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568);
  (*(*(v1 - 8) + 8))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570);

  return a1;
}

uint64_t sub_1C543E1A4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8) + 44);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  sub_1C54130AC(v7, v8, v9 & 1);
  v11 = a2 + v6;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9 & 1;
  v10 = *(a1 + v6 + 24);
  sub_1C5594CF4();
  *(v11 + 24) = v10;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0) + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568);
  (*(*(v2 - 8) + 16))();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570) + 36);
  v16 = (a1 + v6 + v12 + v14);
  v15 = *v16;

  result = a2;
  v4 = a2 + v6 + v12 + v14;
  *v4 = v15;
  *(v4 + 8) = *(v16 + 8);
  return result;
}

uint64_t sub_1C543E354(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8);
  v8 = *(v19 + 44);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = *(a1 + v8 + 16);
  sub_1C54130AC(v9, v10, v11 & 1);
  v13 = a2 + v8;
  *v13 = v9;
  *(v13 + 8) = v10;
  *(v13 + 16) = v11 & 1;
  v12 = *(a1 + v8 + 24);
  sub_1C5594CF4();
  *(v13 + 24) = v12;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0);
  v14 = *(v25 + 48);
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568) - 8) + 16);
  v28();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570);
  v15 = *(v30 + 36);
  v17 = (a1 + v8 + v14 + v15);
  v16 = *v17;

  v2 = a2 + v8 + v14 + v15;
  *v2 = v16;
  *(v2 + 8) = *(v17 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8);
  v4 = a1 + *(v3 + 48);
  v20 = a2 + *(v3 + 48);
  *v20 = *v4;
  *(v20 + 16) = *(v4 + 16);
  v21 = *(v19 + 44);
  v27 = v4 + v21;
  v22 = *(v4 + v21);
  v23 = *(v4 + v21 + 8);
  v24 = *(v4 + v21 + 16);
  sub_1C54130AC(v22, v23, v24 & 1);
  v5 = v20 + v21;
  *v5 = v22;
  *(v5 + 8) = v23;
  *(v5 + 16) = v24 & 1;
  v26 = *(v27 + 24);
  sub_1C5594CF4();
  *(v20 + v21 + 24) = v26;
  v33 = v20 + v21 + *(v25 + 48);
  v29 = v27 + *(v25 + 48);
  v28();
  v32 = *(v30 + 36);
  v34 = *(v29 + v32);

  result = a2;
  v7 = v33 + v32;
  *v7 = v34;
  *(v7 + 8) = *(v29 + v32 + 8);
  return result;
}

uint64_t sub_1C543E678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8);
  sub_1C5412EA0(*(a1 + *(v2 + 44)), *(a1 + *(v2 + 44) + 8), *(a1 + *(v2 + 44) + 16) & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0);
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568) - 8) + 8);
  v4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570);

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8) + 48) + *(v2 + 44);
  sub_1C5412EA0(*v3, *(v3 + 8), *(v3 + 16) & 1);

  v4();

  return a1;
}

uint64_t sub_1C543E820(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8);
    v21 = (a2 + *(v27 + 44));
    v22 = (a1 + *(v27 + 44));
    *v21 = *v22;
    v21[1] = v22[1];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0);
    v23 = v21 + *(v25 + 48);
    v24 = v22 + *(v25 + 48);
    v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568) - 8) + 32);
    (v26)(v23, v24);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570);
    v11 = &v23[*(v29 + 36)];
    v12 = &v24[*(v29 + 36)];
    *v11 = *v12;
    v11[8] = v12[8];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8);
    v14 = a2 + *(v13 + 48);
    v15 = a1 + *(v13 + 48);
    *v14 = *v15;
    *(v14 + 16) = *(v15 + 16);
    v16 = (v14 + *(v27 + 44));
    v17 = (v15 + *(v27 + 44));
    *v16 = *v17;
    v16[1] = v17[1];
    v28 = v16 + *(v25 + 48);
    v30 = v17 + *(v25 + 48);
    v26();
    v18 = &v28[*(v29 + 36)];
    v19 = &v30[*(v29 + 36)];
    *v18 = *v19;
    v18[8] = v19[8];
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8);
    v31 = (a2 + *(v37 + 44));
    v32 = (a1 + *(v37 + 44));
    *v31 = *v32;
    v31[1] = v32[1];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0);
    v33 = v31 + *(v35 + 48);
    v34 = v32 + *(v35 + 48);
    v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568) - 8) + 32);
    (v36)(v33, v34);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570);
    v2 = &v33[*(v39 + 36)];
    v3 = &v34[*(v39 + 36)];
    *v2 = *v3;
    v2[8] = v3[8];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8);
    v5 = a2 + *(v4 + 48);
    v6 = a1 + *(v4 + 48);
    *v5 = *v6;
    *(v5 + 16) = *(v6 + 16);
    v7 = (v5 + *(v37 + 44));
    v8 = (v6 + *(v37 + 44));
    *v7 = *v8;
    v7[1] = v8[1];
    v38 = v7 + *(v35 + 48);
    v40 = v8 + *(v35 + 48);
    v36();
    v9 = *(v39 + 36);
    v10 = &v38[v9];
    *v10 = *&v40[v9];
    v10[8] = v40[v9 + 8];
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C543EC80(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8);
    v13 = a2 + *(v20 + 44);
    v14 = a1 + *(v20 + 44);
    v9 = *v14;
    v10 = *(v14 + 8);
    v11 = *(v14 + 16);
    sub_1C54130AC(*v14, v10, v11 & 1);
    *v13 = v9;
    *(v13 + 8) = v10;
    *(v13 + 16) = v11 & 1;
    v12 = *(v14 + 24);
    sub_1C5594CF4();
    *(v13 + 24) = v12;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0);
    v15 = v13 + *(v26 + 48);
    v16 = v14 + *(v26 + 48);
    v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568) - 8) + 16);
    (v28)(v15, v16);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570);
    v19 = v15 + *(v31 + 36);
    v18 = (v16 + *(v31 + 36));
    v17 = *v18;

    *v19 = v17;
    *(v19 + 8) = *(v18 + 8);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8);
    v6 = a2 + *(v5 + 48);
    v7 = a1 + *(v5 + 48);
    *v6 = *v7;
    *(v6 + 16) = *(v7 + 16);
    v25 = v6 + *(v20 + 44);
    v27 = v7 + *(v20 + 44);
    v21 = *v27;
    v22 = *(v27 + 8);
    v23 = *(v27 + 16);
    sub_1C54130AC(*v27, v22, v23 & 1);
    *v25 = v21;
    *(v25 + 8) = v22;
    *(v25 + 16) = v23 & 1;
    v24 = *(v27 + 24);
    sub_1C5594CF4();
    *(v25 + 24) = v24;
    v29 = v25 + *(v26 + 48);
    v30 = v27 + *(v26 + 48);
    v28();
    v34 = v29 + *(v31 + 36);
    v33 = (v30 + *(v31 + 36));
    v32 = *v33;

    *v34 = v32;
    *(v34 + 8) = *(v33 + 8);
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8);
    v39 = a2 + *(v46 + 44);
    v40 = a1 + *(v46 + 44);
    v35 = *v40;
    v36 = *(v40 + 8);
    v37 = *(v40 + 16);
    sub_1C54130AC(*v40, v36, v37 & 1);
    *v39 = v35;
    *(v39 + 8) = v36;
    *(v39 + 16) = v37 & 1;
    v38 = *(v40 + 24);
    sub_1C5594CF4();
    *(v39 + 24) = v38;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0);
    v41 = v39 + *(v52 + 48);
    v42 = v40 + *(v52 + 48);
    v54 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568) - 8) + 16);
    (v54)(v41, v42);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570);
    v45 = v41 + *(v57 + 36);
    v44 = (v42 + *(v57 + 36));
    v43 = *v44;

    *v45 = v43;
    *(v45 + 8) = *(v44 + 8);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8);
    v3 = a2 + *(v2 + 48);
    v4 = a1 + *(v2 + 48);
    *v3 = *v4;
    *(v3 + 16) = *(v4 + 16);
    v51 = v3 + *(v46 + 44);
    v53 = v4 + *(v46 + 44);
    v47 = *v53;
    v48 = *(v53 + 8);
    v49 = *(v53 + 16);
    sub_1C54130AC(*v53, v48, v49 & 1);
    *v51 = v47;
    *(v51 + 8) = v48;
    *(v51 + 16) = v49 & 1;
    v50 = *(v53 + 24);
    sub_1C5594CF4();
    *(v51 + 24) = v50;
    v55 = v51 + *(v52 + 48);
    v56 = v53 + *(v52 + 48);
    v54();
    v60 = v55 + *(v57 + 36);
    v59 = (v56 + *(v57 + 36));
    v58 = *v59;

    *v60 = v58;
    *(v60 + 8) = *(v59 + 8);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C543F2CC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8);
    v2 = a1 + *(v4 + 44);
    sub_1C5412EA0(*v2, *(v2 + 8), *(v2 + 16) & 1);

    v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0) + 48);
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568) - 8) + 8);
    (v6)(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570);

    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8) + 48) + *(v4 + 44);
    sub_1C5412EA0(*v5, *(v5 + 8), *(v5 + 16) & 1);

    v6();
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8);
    v7 = a1 + *(v9 + 44);
    sub_1C5412EA0(*v7, *(v7 + 8), *(v7 + 16) & 1);

    v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0) + 48);
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568) - 8) + 8);
    (v11)(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570);

    v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8) + 48) + *(v9 + 44);
    sub_1C5412EA0(*v10, *(v10 + 8), *(v10 + 16) & 1);

    v11();
  }

  return a1;
}

unint64_t sub_1C543F61C()
{
  v2 = qword_1EC15D220;
  if (!qword_1EC15D220)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D220);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543F694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for SharedNameView();
  v4 = (v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));

  return sub_1C543A3D8(a1, v4, a2);
}

unint64_t sub_1C543F714()
{
  v2 = qword_1EC15C5D8;
  if (!qword_1EC15C5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C5C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C5D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543F79C()
{
  v2 = qword_1EC15C5E0;
  if (!qword_1EC15C5E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C5E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543F824()
{
  v2 = qword_1EC15C5F0;
  if (!qword_1EC15C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C5E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C5F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543F8AC()
{
  v2 = qword_1EC15C5F8;
  if (!qword_1EC15C5F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C5F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543F924(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  if (*(a1 + 72))
  {
  }

  return a1;
}

uint64_t sub_1C543F9A4()
{
  v4 = *(type metadata accessor for SharedNameView() - 8);
  v1 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v2 = *(v0 + v1 + *(v4 + 64)) & 1;

  return sub_1C543AE38(v0 + v1, v2);
}

unint64_t sub_1C543FA44()
{
  v2 = qword_1EC15C608;
  if (!qword_1EC15C608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C600);
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C608);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543FAE8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C543FB34()
{
  v2 = qword_1EC15C618;
  if (!qword_1EC15C618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C610);
    sub_1C543FA44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C618);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C543FBCC(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C543FC24()
{
}

uint64_t sub_1C543FC70(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for SharedNameView() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C54393D4(a1, v7, v8, v1 + v9);
}

uint64_t sub_1C543FD84(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1C543FE38(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C620);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1C543FF6C(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C620);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1C54400A0()
{
  v2 = qword_1EC15C628;
  if (!qword_1EC15C628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C620);
    sub_1C543BFB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C628);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5440138()
{
  v3 = v0;
  sub_1C54401A4(v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C638);
  sub_1C5595004();
  return sub_1C5440290(v2);
}

void *sub_1C54401A4(uint64_t *a1, void *a2)
{
  if (a1[5])
  {
    if (a1[3])
    {
      v2 = a1[3];
      a2[3] = v2;
      a2[4] = a1[4];
      (**(v2 - 8))();
    }

    else
    {
      memcpy(a2, a1, 0x28uLL);
    }

    *(a2 + 40) = 1;
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
    *(a2 + 40) = 0;
  }

  return a2;
}

uint64_t sub_1C5440290(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0(a1);
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1C5440324@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a2;
  v3[1] = a1;
  v10 = sub_1C5595324();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v7 = v3 - v4;
  (*(v8 + 16))(v3 - v4);
  v6 = &v11;
  sub_1C55952C4();
  memcpy(v5, v6, 0x28uLL);
  return (*(v8 + 8))(v7, v10);
}

uint64_t sub_1C54404A8(uint64_t *a1)
{
  v4[6] = 0;
  v4[7] = a1;
  sub_1C54401A4(a1, v4);
  sub_1C5440500(v4, v2);
  return sub_1C5440290(a1);
}

void *sub_1C5440500(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1C5440290(a2);
    memcpy(a2, a1, 0x29uLL);
  }

  return a2;
}

uint64_t sub_1C5440554()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595F84();

  return v1;
}

uint64_t sub_1C54405EC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595F94();
  sub_1C5436F54();
}

void (*sub_1C54406C4(void *a1))(void **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v1;
  v4 = *(v3 + 48);
  v1[9] = v4;
  v5 = *(v3 + 56);
  v1[10] = v5;

  *v1 = v4;
  v1[1] = v5;
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595F84();
  return sub_1C5437078;
}

uint64_t sub_1C54407A0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5440850()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_1C544089C(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t NameAndPhotoSharingView.id.getter()
{
  v2 = *(v0 + 64);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5440968()
{
  v2 = *(v0 + 80);
  MEMORY[0x1E69E5928]();
  return v2;
}

BOOL sub_1C54409A8()
{
  sub_1C5596E04();
  *v0 = "id";
  *(v0 + 8) = 2;
  *(v0 + 16) = 2;
  sub_1C540FCD8();
  v2 = sub_1C5596D64();

  return v2 != 0;
}

uint64_t sub_1C5440A80()
{
  sub_1C5594CF4();
  if (sub_1C54409A8())
  {

    v1 = 1;
  }

  else
  {

    v1 = 0;
  }

  return v1 & 1;
}

BOOL sub_1C5440C94@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C54409A8();
  *a1 = result;
  return result;
}

uint64_t sub_1C5440CD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5440B2C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C5440D1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5440A80();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5440D6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5440B08();
  *a1 = result & 1;
  return result;
}

uint64_t NameAndPhotoSharingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v42 = sub_1C5441F44;
  v51 = MEMORY[0x1E6981440];
  v52 = sub_1C54433CC;
  v66 = sub_1C5443B78;
  v92 = 0;
  v91 = 0;
  v58 = 0;
  v73 = sub_1C5596A04();
  v70 = *(v73 - 8);
  v71 = v73 - 8;
  v10 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v10 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C640);
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v11 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v10 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C648);
  v12 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v10 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C650);
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v13 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v10 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C658);
  v14 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67);
  v74 = &v10 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C660);
  v15 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v10 - v15;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v15);
  v79 = &v10 - v16;
  v92 = &v10 - v16;
  v91 = v1;
  v39 = 1;
  v18 = sub_1C55965F4();
  v22 = v3;
  sub_1C5439370();
  v21 = sub_1C5576C44();
  v17 = sub_1C55965F4();
  v20 = v4;
  sub_1C54398B0();
  v19 = v5;
  v23 = sub_1C55947B4();
  v24 = v6;

  MEMORY[0x1E69E5920](v21);

  v31 = v90;
  v90[0] = v23;
  v90[1] = v24;
  v25 = sub_1C54407A0();
  v26 = v7;
  v27 = v8;
  KeyPath = swift_getKeyPath();
  v87 = v25;
  v88 = v26;
  v89 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C578);
  sub_1C55960B4();
  v28 = v84;
  v29 = v85;
  v30 = v86;

  sub_1C54141E8();
  sub_1C5596054();

  v33 = sub_1C55957A4();
  sub_1C54418AC();
  sub_1C5595D84();
  (*(v34 + 8))(v36, v37);
  v38 = sub_1C5440554();
  v40 = (*(*v38 + 200))(v38);

  v43 = &v83;
  v83 = v40 & v39;
  v41 = v82;
  sub_1C5441DDC(v61, v82);
  v62 = 104;
  v63 = 7;
  v44 = swift_allocObject();
  v65 = 88;
  memcpy((v44 + 16), v41, 0x58uLL);
  v49 = sub_1C5442800();
  v48 = MEMORY[0x1E69E6370];
  v50 = MEMORY[0x1E69E6388];
  sub_1C543AE1C();
  sub_1C5595DD4();

  sub_1C54428A4(v45);
  v46 = v81;
  sub_1C5441DDC(v61, v81);
  v53 = swift_allocObject();
  memcpy((v53 + 16), v46, v65);
  v80[11] = v47;
  v80[12] = v48;
  v80[13] = v49;
  v80[14] = v50;
  swift_getOpaqueTypeConformance2();
  sub_1C5595DC4();
  sub_1C5411348(v52);
  (*(v54 + 8))(v56, v57);
  v60 = [objc_opt_self() defaultCenter];
  v59 = *sub_1C55415F0();
  MEMORY[0x1E69E5928](v59);
  sub_1C5596A14();
  MEMORY[0x1E69E5920](v59);
  MEMORY[0x1E69E5920](v60);
  v64 = v80;
  sub_1C5441DDC(v61, v80);
  v69 = swift_allocObject();
  memcpy((v69 + 16), v64, v65);
  v68 = sub_1C5443B80();
  sub_1C5443C8C();
  sub_1C5595E34();

  (*(v70 + 8))(v72, v73);
  sub_1C535D6E8(v74);
  v77 = sub_1C5443D0C();
  sub_1C540EFD8(v78, v76, v79);
  sub_1C535D7C8(v78);
  sub_1C535D920(v79, v78);
  sub_1C540EFD8(v78, v76, v75);
  sub_1C535D7C8(v78);
  return sub_1C535D7C8(v79);
}

unint64_t sub_1C54416B0()
{
  v2 = qword_1EC160BC8;
  if (!qword_1EC160BC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC160BC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544172C()
{
  v2 = qword_1EC160BD0[0];
  if (!qword_1EC160BD0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC160BD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54417A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 200))(v2) & 1;
}

uint64_t sub_1C544182C(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 208))(v4 & 1);
}

unint64_t sub_1C54418AC()
{
  v2 = qword_1EC15C668;
  if (!qword_1EC15C668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C668);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5441934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v33 = a2;
  v32 = a1;
  v54 = 0;
  v53 = 0;
  v44 = 0;
  v52 = 0;
  v30 = 0;
  v41 = sub_1C5594C74();
  v34 = v41;
  v35 = *(v41 - 8);
  v40 = v35;
  v36 = v35;
  v3 = MEMORY[0x1EEE9AC00](v32);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v5;
  v38 = *v3;
  v54 = v38;
  v39 = *v6;
  v53 = v39;
  v52 = v7;
  v8 = sub_1C54B05F8();
  (*(v40 + 16))(v5, v8, v41);
  v46 = sub_1C5594C54();
  v42 = v46;
  v45 = sub_1C5596944();
  v43 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v47 = sub_1C5596E04();
  if (os_log_type_enabled(v46, v45))
  {
    v9 = v30;
    v21 = sub_1C5596A74();
    v17 = v21;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v19 = 0;
    v22 = sub_1C5419DC0(0);
    v20 = v22;
    v23 = sub_1C5419DC0(v19);
    v51 = v21;
    v50 = v22;
    v49 = v23;
    v24 = 0;
    v25 = &v51;
    sub_1C5419E14(0, &v51);
    sub_1C5419E14(v24, v25);
    v48 = v47;
    v26 = &v13;
    MEMORY[0x1EEE9AC00](&v13);
    v27 = &v13 - 6;
    *(&v13 - 4) = v10;
    *(&v13 - 3) = &v50;
    *(&v13 - 2) = &v49;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v29 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v42, v43, "Name and Photo Sharing toggle changed.", v17, 2u);
      v15 = 0;
      sub_1C5419E74(v20);
      sub_1C5419E74(v23);
      sub_1C5596A54();

      v16 = v29;
    }
  }

  else
  {

    v16 = v30;
  }

  result = (*(v36 + 8))(v37, v34);
  if ((v38 & 1) != (v39 & 1))
  {
    v13 = sub_1C5440554();
    v12 = *(*v13 + 536);
    v14 = v39 & 1;
    v12(v39 & 1);

    return sub_1C5441F4C(v14);
  }

  return result;
}

void *sub_1C5441DDC(uint64_t *a1, void *a2)
{
  if (a1[5])
  {
    if (a1[3])
    {
      v2 = a1[3];
      a2[3] = v2;
      a2[4] = a1[4];
      (**(v2 - 8))();
    }

    else
    {
      memcpy(a2, a1, 0x28uLL);
    }

    *(a2 + 40) = 1;
  }

  else
  {
    v8 = *a1;

    *a2 = v8;
    *(a2 + 40) = 0;
  }

  v4 = a1[6];

  a2[6] = v4;
  v5 = a1[7];

  a2[7] = v5;
  a2[8] = a1[8];
  v6 = a1[9];
  sub_1C5594CF4();
  a2[9] = v6;
  v7 = a1[10];
  MEMORY[0x1E69E5928](v7);
  result = a2;
  a2[10] = v7;
  return result;
}

uint64_t sub_1C5441F4C(unsigned int a1)
{
  v67 = a1;
  v86 = 0;
  v85 = 0;
  v66 = 0;
  v68 = sub_1C5594C74();
  v69 = *(v68 - 8);
  v70 = v69;
  v71 = *(v69 + 64);
  v2 = MEMORY[0x1EEE9AC00](v67);
  v73 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = &v16 - v73;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v74 = &v16 - v73;
  v86 = v3;
  v85 = v1;
  if (v3)
  {
    v4 = v74;
    v5 = sub_1C54B05F8();
    (*(v70 + 16))(v4, v5, v68);
    v64 = sub_1C5594C54();
    v61 = v64;
    v63 = sub_1C5596944();
    v62 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v65 = sub_1C5596E04();
    if (os_log_type_enabled(v64, v63))
    {
      v6 = v66;
      v52 = sub_1C5596A74();
      v48 = v52;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v50 = 0;
      v53 = sub_1C5419DC0(0);
      v51 = v53;
      v54 = sub_1C5419DC0(v50);
      v78[0] = v52;
      v77 = v53;
      v76 = v54;
      v55 = 0;
      v56 = v78;
      sub_1C5419E14(0, v78);
      sub_1C5419E14(v55, v56);
      v75 = v65;
      v57 = &v16;
      MEMORY[0x1EEE9AC00](&v16);
      v58 = &v16 - 6;
      *(&v16 - 4) = v7;
      *(&v16 - 3) = &v77;
      *(&v16 - 2) = &v76;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v60 = v6;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v61, v62, "Update rows: Adding SharedNameRowView and ShareAutomaticallyPickerRowView.", v48, 2u);
        v46 = 0;
        sub_1C5419E74(v51);
        sub_1C5419E74(v54);
        sub_1C5596A54();

        v47 = v60;
      }
    }

    else
    {

      v47 = v66;
    }

    v44 = v47;

    (*(v70 + 8))(v74, v68);
    sub_1C544340C();
    return v44;
  }

  else
  {
    v8 = v72;
    v9 = sub_1C54B05F8();
    (*(v70 + 16))(v8, v9, v68);
    v42 = sub_1C5594C54();
    v39 = v42;
    v41 = sub_1C5596944();
    v40 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v43 = sub_1C5596E04();
    if (os_log_type_enabled(v42, v41))
    {
      v10 = v66;
      v30 = sub_1C5596A74();
      v26 = v30;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v28 = 0;
      v31 = sub_1C5419DC0(0);
      v29 = v31;
      v32 = sub_1C5419DC0(v28);
      v81 = v30;
      v80 = v31;
      v79 = v32;
      v33 = 0;
      v34 = &v81;
      sub_1C5419E14(0, &v81);
      sub_1C5419E14(v33, v34);
      v78[2] = v43;
      v35 = &v16;
      MEMORY[0x1EEE9AC00](&v16);
      v36 = &v16 - 6;
      *(&v16 - 4) = v11;
      *(&v16 - 3) = &v80;
      *(&v16 - 2) = &v79;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v38 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v39, v40, "Update rows: removing SharedNameRowView and ShareAutomaticallyPickerRowView.", v26, 2u);
        v24 = 0;
        sub_1C5419E74(v29);
        sub_1C5419E74(v32);
        sub_1C5596A54();

        v25 = v38;
      }
    }

    else
    {

      v25 = v66;
    }

    v23 = v25;

    (*(v70 + 8))(v72, v68);
    sub_1C5440138();
    if (v83)
    {
      v19 = v83;
      v20 = v84;
      v22 = &v82;
      __swift_project_boxed_opaque_existential_0(&v82, v83);
      v18 = MEMORY[0x1E69E6530];
      v17 = 2;
      v12 = sub_1C5596E04();
      v13 = v17;
      *v14 = 1;
      v14[1] = v13;
      sub_1C540FCD8();
      v21 = v12;
      sub_1C5596354();

      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      sub_1C544435C(&v82);
    }

    return v23;
  }
}

unint64_t sub_1C5442800()
{
  v2 = qword_1EC15C670;
  if (!qword_1EC15C670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C648);
    sub_1C54418AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C670);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54428A4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C640);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C544290C(uint64_t *a1)
{
  v78 = v124;
  v88 = a1;
  v102 = 0;
  v131 = 0;
  v79 = 0;
  v80 = sub_1C5596284();
  v81 = *(v80 - 8);
  v82 = v81;
  MEMORY[0x1EEE9AC00](0);
  v83 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1C55962A4();
  v85 = *(v84 - 8);
  v86 = v85;
  MEMORY[0x1EEE9AC00](v102);
  v87 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1C5594C74();
  v89 = v97;
  v90 = *(v97 - 8);
  v96 = v90;
  v91 = v90;
  v92 = *(v90 + 64);
  v3 = MEMORY[0x1EEE9AC00](v88);
  v94 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = &v21 - v94;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v94;
  v95 = &v21 - v94;
  v131 = v4;
  v6 = sub_1C54B05F8();
  v98 = *(v96 + 16);
  v99 = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v98(v5, v6, v97);
  v105 = sub_1C5594C54();
  v100 = v105;
  v104 = sub_1C5596944();
  v101 = v104;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v106 = sub_1C5596E04();
  if (os_log_type_enabled(v105, v104))
  {
    v7 = v79;
    v69 = sub_1C5596A74();
    v65 = v69;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v67 = 0;
    v70 = sub_1C5419DC0(0);
    v68 = v70;
    v71 = sub_1C5419DC0(v67);
    v110 = v69;
    v109 = v70;
    v108 = v71;
    v72 = 0;
    v73 = &v110;
    sub_1C5419E14(0, &v110);
    sub_1C5419E14(v72, v73);
    v107 = v106;
    v74 = &v21;
    MEMORY[0x1EEE9AC00](&v21);
    v75 = &v21 - 6;
    *(&v21 - 4) = v8;
    *(&v21 - 3) = &v109;
    *(&v21 - 2) = &v108;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v77 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v100, v101, "Fetching Name and Photo Sharing toggle state on view appear.", v65, 2u);
      v63 = 0;
      sub_1C5419E74(v68);
      sub_1C5419E74(v71);
      sub_1C5596A54();

      v64 = v77;
    }
  }

  else
  {

    v64 = v79;
  }

  v57 = v64;

  v58 = *(v91 + 8);
  v59 = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v58(v95, v89);
  v60 = sub_1C5440554();
  (*(*v60 + 528))();

  v61 = sub_1C5440554();
  v62 = (*(*v61 + 200))(v61);

  if ((v62 & 1) == 0)
  {
    return v57;
  }

  sub_1C5440138();
  if (v129)
  {
    v51 = v129;
    v50 = v130;
    v52 = v128;
    __swift_project_boxed_opaque_existential_0(v128, v129);
    v53 = sub_1C5596364();
    v54 = v9;
    __swift_destroy_boxed_opaque_existential_0(v52);
    v55 = v53;
    v56 = v54;
  }

  else
  {
    sub_1C544435C(v128);
    v55 = 0;
    v56 = 1;
  }

  v47 = v56;
  v48 = v55;
  v49 = &v126;
  v124[11] = v55;
  v125 = v56 & 1;
  v126 = 1;
  v127 = 0;
  if ((v56 & 1) == 0)
  {
    v111 = v48;
    v112 = v47 & 1;
    if ((v49[1] & 1) == 0)
    {
      v46 = v111 == *v49;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if ((v49[1] & 1) == 0)
  {
LABEL_18:
    v46 = 0;
    goto LABEL_16;
  }

  v46 = 1;
LABEL_16:
  if (!v46)
  {
    return v57;
  }

  v10 = v93;
  v11 = sub_1C54B05F8();
  v98(v10, v11, v89);
  v44 = sub_1C5594C54();
  v41 = v44;
  v43 = sub_1C5596944();
  v42 = v43;
  v45 = sub_1C5596E04();
  if (os_log_type_enabled(v44, v43))
  {
    v12 = v57;
    v32 = sub_1C5596A74();
    v28 = v32;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v30 = 0;
    v33 = sub_1C5419DC0(0);
    v31 = v33;
    v34 = sub_1C5419DC0(v30);
    v116 = v32;
    v115 = v33;
    v114 = v34;
    v35 = 0;
    v36 = &v116;
    sub_1C5419E14(0, &v116);
    sub_1C5419E14(v35, v36);
    v113 = v45;
    v37 = &v21;
    MEMORY[0x1EEE9AC00](&v21);
    v38 = &v21 - 6;
    *(&v21 - 4) = v13;
    *(&v21 - 3) = &v115;
    *(&v21 - 2) = &v114;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v40 = v12;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v41, v42, "Toggle is on and only one row exists. Adding remaining rows.", v28, 2u);
      v26 = 0;
      sub_1C5419E74(v31);
      sub_1C5419E74(v34);
      sub_1C5596A54();

      v27 = v40;
    }
  }

  else
  {

    v27 = v57;
  }

  v24 = v27;

  v58(v93, v89);
  v21 = 0;
  sub_1C5444CF8();
  v23 = sub_1C5596984();
  sub_1C5441DDC(v88, v124);
  v14 = swift_allocObject();
  v15 = v78;
  v16 = *v78;
  *(v14 + 32) = v78[1];
  *(v14 + 16) = v16;
  v17 = v15[2];
  v18 = v15[3];
  v19 = v15[4];
  *(v14 + 96) = v124[10];
  *(v14 + 80) = v19;
  *(v14 + 64) = v18;
  *(v14 + 48) = v17;
  v122 = sub_1C5444D5C;
  v123 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v118 = 1107296256;
  v119 = 0;
  v120 = sub_1C544364C;
  v121 = &block_descriptor_3;
  v22 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v21, v87, v83, v22);
  (*(v82 + 8))(v83, v80);
  (*(v86 + 8))(v87, v84);
  _Block_release(v22);

  return v24;
}

uint64_t sub_1C544340C()
{
  v13 = 0;
  sub_1C55965F4();
  sub_1C5439370();
  v6 = sub_1C5576C44();
  sub_1C55965F4();
  sub_1C54398B0();
  v7 = sub_1C55947B4();
  v8 = v0;

  MEMORY[0x1E69E5920](v6);

  v11 = v7;
  v12 = v8;
  sub_1C5440138();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_0(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C688);
    sub_1C5596E04();
    v5 = v1;
    *v1 = sub_1C55965F4();
    v5[1] = v2;
    v5[2] = 1;
    v5[3] = sub_1C55965F4();
    v5[4] = v3;
    v5[5] = 2;
    sub_1C540FCD8();
    sub_1C5596344();

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_1C544435C(v9);
  }
}

uint64_t sub_1C544364C(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t sub_1C54436B4()
{
  sub_1C5444DC8(0);
  sub_1C5596284();
  sub_1C5444EB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F310);
  sub_1C5444F38();
  return sub_1C5596B84();
}

uint64_t sub_1C5443754(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v26 = a1;
  v36 = 0;
  v45 = 0;
  v44 = 0;
  v25 = 0;
  v33 = sub_1C5594C74();
  v28 = v33;
  v29 = *(v33 - 8);
  v32 = v29;
  v30 = v29;
  v2 = MEMORY[0x1EEE9AC00](v26);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v4;
  v45 = v2;
  v44 = v5;
  v6 = sub_1C54B05F8();
  (*(v32 + 16))(v4, v6, v33);
  v38 = sub_1C5594C54();
  v34 = v38;
  v37 = sub_1C5596944();
  v35 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v39 = sub_1C5596E04();
  if (os_log_type_enabled(v38, v37))
  {
    v7 = v25;
    v16 = sub_1C5596A74();
    v12 = v16;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v14 = 0;
    v17 = sub_1C5419DC0(0);
    v15 = v17;
    v18 = sub_1C5419DC0(v14);
    v43 = v16;
    v42 = v17;
    v41 = v18;
    v19 = 0;
    v20 = &v43;
    sub_1C5419E14(0, &v43);
    sub_1C5419E14(v19, v20);
    v40 = v39;
    v21 = v10;
    MEMORY[0x1EEE9AC00](v10);
    v22 = &v10[-6];
    v10[-4] = v8;
    v10[-3] = &v42;
    v10[-2] = &v41;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v24 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v34, v35, "Updating Name and Photo Sharing toggle.", v12, 2u);
      v10[1] = 0;
      sub_1C5419E74(v15);
      sub_1C5419E74(v18);
      sub_1C5596A54();

      v11 = v24;
    }
  }

  else
  {

    v11 = v25;
  }

  (*(v30 + 8))(v31, v28);
  v10[0] = sub_1C5440554();
  (*(*v10[0] + 528))(v10[0]);
}

unint64_t sub_1C5443B80()
{
  v2 = qword_1EC15C678;
  if (!qword_1EC15C678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C658);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C648);
    sub_1C5442800();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C678);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5443C8C()
{
  v2 = qword_1EC15E140;
  if (!qword_1EC15E140)
  {
    sub_1C5596A04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E140);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5443D0C()
{
  v2 = qword_1EC15C680;
  if (!qword_1EC15C680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C660);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C680);
    return WitnessTable;
  }

  return v2;
}

uint64_t NameAndPhotoSharingView.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v39 = a1;
  v52 = 0;
  v38 = __b;
  memset(__b, 0, sizeof(__b));
  v50 = 0;
  v23 = 0;
  v24 = sub_1C55962E4();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v28 = v9 - v27;
  v29 = sub_1C5594994();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v33 = v9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C690);
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v39);
  v40 = v9 - v37;
  v52 = v9 - v37;
  v50 = v2;
  swift_getKeyPath();
  sub_1C5595024();
  v42 = v39[3];
  v43 = v39[4];
  __swift_project_boxed_opaque_existential_0(v39, v42);
  sub_1C544172C();
  v3 = v41;
  sub_1C5596F24();
  v44 = v3;
  v45 = v3;
  if (v3)
  {
    v9[2] = v45;
    v9[0] = v45;
    __swift_destroy_boxed_opaque_existential_0(v39);
    return sub_1C5440290(__b);
  }

  else
  {
    v4 = sub_1C5596D74();
    v18 = 0;
    v19 = v4;
    v20 = v5;
    v21 = 0;
    v46 = v4;
    v47 = v5;
    if (v5)
    {
      v48 = v46;
      v49 = v47;
    }

    else
    {
      sub_1C5594984();
      v48 = sub_1C5594944();
      v49 = v6;
      (*(v30 + 8))(v33, v29);
      if (v47)
      {
        sub_1C5401ECC();
      }
    }

    v17 = __b;
    __b[8] = v48;
    __b[9] = v49;
    v10 = v39[3];
    v9[3] = v39[4];
    __swift_project_boxed_opaque_existential_0(v39, v10);
    sub_1C5596F14();
    v11 = sub_1C55962D4();
    v15 = *(v25 + 8);
    v14 = v25 + 8;
    v15(v28, v24);
    __b[10] = RUIDecodingUserInfo.account.getter();
    MEMORY[0x1E69E5920](v11);
    v13 = v39[3];
    v12 = v39[4];
    __swift_project_boxed_opaque_existential_0(v39, v13);
    sub_1C5596F14();
    v16 = sub_1C55962D4();
    v15(v28, v24);
    RUIDecodingUserInfo.nameAndPhotoSharingViewModel.getter();
    __b[6] = sub_1C5436D54();
    __b[7] = v7;
    MEMORY[0x1E69E5920](v16);
    (*(v35 + 8))(v40, v34);
    sub_1C5441DDC(v17, v22);
    __swift_destroy_boxed_opaque_existential_0(v39);
    return sub_1C5444434(v17);
  }
}

uint64_t sub_1C544435C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t sub_1C5444404@<X0>(uint64_t *a1@<X8>)
{
  result = NameAndPhotoSharingView.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C5444434(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0(a1);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(a1 + 80));
  return a1;
}

unint64_t sub_1C54444E4()
{
  v2 = qword_1EC15C698;
  if (!qword_1EC15C698)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5444578()
{
  v2 = qword_1EC15C6A0;
  if (!qword_1EC15C6A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C6A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544460C()
{
  v2 = qword_1EC15C6A8;
  if (!qword_1EC15C6A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C6A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_8RemoteUI21RUIListHelperProtocol_pSg(uint64_t a1)
{
  v2 = -1;
  if (!HIDWORD(*(a1 + 24)))
  {
    v2 = *(a1 + 24);
  }

  return (v2 + 1);
}

uint64_t sub_1C5444810(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 48)))
      {
        v3 = *(a1 + 48);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5444928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1C5444B54()
{
  v2 = qword_1EC160EE0[0];
  if (!qword_1EC160EE0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC160EE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5444BE8()
{
  v2 = qword_1EC160FF0;
  if (!qword_1EC160FF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC160FF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5444C7C()
{
  v2 = qword_1EC160FF8[0];
  if (!qword_1EC160FF8[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC160FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5444CF8()
{
  v2 = qword_1EC15E850;
  if (!qword_1EC15E850)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E850);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  return sub_1C5409260(a2 + 32, a1 + 32);
}

uint64_t sub_1C5444DC8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_1C5596284();
      v1 = sub_1C5596734();
      sub_1C5594CF4();
      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1C5596284();
    return v2;
  }

  return result;
}

unint64_t sub_1C5444EB8()
{
  v2 = qword_1EC15E7D0;
  if (!qword_1EC15E7D0)
  {
    sub_1C5596284();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E7D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5444F38()
{
  v2 = qword_1EC15E7E0;
  if (!qword_1EC15E7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F310);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E7E0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C5444FC0(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

BOOL sub_1C5445054(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      default:
        v4 = 6;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      default:
        v3 = 6;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_1C54453EC()
{
  v2 = qword_1EC15C6B0;
  if (!qword_1EC15C6B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C6B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C544555C()
{
  *(v0 + 16) = v0;
  sub_1C544DD74();
  swift_allocError();
  *v1 = 5;
  swift_willThrow();
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_1C54456BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1E69E5928](a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = a4;
  v11 = (*(v4 + 96))(a1, a2, a3, &unk_1C55AF398);

  return v11;
}

uint64_t sub_1C54457B0(uint64_t a1, uint64_t a2)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = a2;
  v3 = swift_task_alloc();
  *(v5 + 40) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5445888;

  return sub_1C54484CC(a2);
}

uint64_t sub_1C5445888(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 16) = *v2;
  v8 = v7 + 16;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t sub_1C5445A40()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C5445B04;

  return sub_1C54457B0(v6, v5);
}

uint64_t sub_1C5445B04(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

id sub_1C5445CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a1;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v57 = MEMORY[0x1E69E85E0];
  v58 = &unk_1C55AF3B0;
  v59 = sub_1C5448428;
  v60 = "Fatal error";
  v61 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v62 = "AppleAccountUI/SpinnerProgressView.swift";
  v93 = 0;
  v91 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v76 = 0;
  v68 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v69 = &v29 - v68;
  v93 = MEMORY[0x1EEE9AC00](v67);
  v91 = v6;
  v92 = v7;
  v89 = v8;
  v90 = v9;
  v88 = v5;
  v72 = &v87;
  v87 = v93;
  v70 = &v86;
  v86 = 0;
  v71 = type metadata accessor for SpinnerProgressViewType();
  v73 = sub_1C54465D0();
  if (sub_1C5596E24())
  {
    sub_1C55965F4();
    v52 = v10;
    v53 = sub_1C54637B4();
    v54 = v11;

    v55 = v53;
    v56 = v54;
  }

  else
  {
    sub_1C55965F4();
    v49 = v12;
    v50 = sub_1C54637B4();
    v51 = v13;

    v55 = v50;
    v56 = v51;
  }

  v40 = v56;
  v39 = v55;
  v84 = v55;
  v85 = v56;
  v42 = 0;
  type metadata accessor for SpinnerProgressView.Model();
  sub_1C5594CF4();
  sub_1C5594CF4();
  v43 = sub_1C54466C4(v63, v64, v39, v40, 1uLL);
  v83 = v43;
  sub_1C55967F4();
  v14 = *(*(sub_1C5596814() - 8) + 56);
  v47 = 1;
  v14(v69, 0);

  sub_1C55967E4();
  v41 = sub_1C55967D4();
  v15 = swift_allocObject();
  v16 = v57;
  v17 = v65;
  v18 = v66;
  v19 = v42;
  v20 = v69;
  v21 = v58;
  v22 = v15;
  v23 = v43;
  v22[2] = v41;
  v22[3] = v16;
  v22[4] = v17;
  v22[5] = v18;
  v22[6] = v23;
  sub_1C54061EC(v19, v19, v20, v21, v22, MEMORY[0x1E69E7CA8] + 8);

  v44 = sub_1C5448430();
  v45 = v24;
  v46 = v25;
  v80 = v44;
  v81 = v24;
  v82 = v25 & 1 & v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C6C0);
  sub_1C544844C();
  v77 = v44;
  v78 = v45;
  v79 = v46 & 1 & v47;
  v48 = sub_1C5595484();
  v76 = v48;
  v75 = v67;
  v74 = 0;
  if (sub_1C5596E24())
  {
    MEMORY[0x1E69E5928](v48);
    v38 = [v48 view];
    MEMORY[0x1E69E5920](v48);
    if (v38)
    {
      v37 = v38;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v36 = v37;
    sub_1C55965F4();
    v34 = v26;
    v35 = sub_1C5596554();

    [v36 setAccessibilityIdentifier_];
    MEMORY[0x1E69E5920](v35);
    MEMORY[0x1E69E5920](v36);
  }

  else
  {
    MEMORY[0x1E69E5928](v48);
    v33 = [v48 view];
    MEMORY[0x1E69E5920](v48);
    if (v33)
    {
      v32 = v33;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v31 = v32;
    sub_1C55965F4();
    v29 = v27;
    v30 = sub_1C5596554();

    [v31 setAccessibilityIdentifier_];
    MEMORY[0x1E69E5920](v30);
    MEMORY[0x1E69E5920](v31);
  }

  sub_1C544848C();

  return v48;
}

uint64_t type metadata accessor for SpinnerProgressViewType()
{
  v4 = qword_1EC15C768;
  if (!qword_1EC15C768)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15C768);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C54465D0()
{
  v2 = qword_1EC15C6B8;
  if (!qword_1EC15C6B8)
  {
    type metadata accessor for SpinnerProgressViewType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C6B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for SpinnerProgressView.Model()
{
  v1 = qword_1EC1614F0;
  if (!qword_1EC1614F0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C5446730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a6;
  v6[9] = a5;
  v6[8] = a4;
  v6[4] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[5] = 0;
  v6[7] = 0;
  v6[2] = a4;
  v6[3] = a5;
  v6[5] = a6;
  v6[11] = sub_1C55967E4();
  v6[12] = sub_1C55967D4();
  v9 = sub_1C55967A4();
  v6[13] = v9;
  v6[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C544681C, v9, v7);
}

uint64_t sub_1C544681C()
{
  v4 = v0[9];
  v3 = v0[8];
  v0[4] = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7D8);
  v0[15] = sub_1C55967D4();

  v6 = swift_task_alloc();
  v0[16] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v1 = swift_task_alloc();
  *(v5 + 136) = v1;
  *v1 = *(v5 + 32);
  v1[1] = sub_1C5446984;

  return MEMORY[0x1EEE6DBF8](v5 + 48, v7);
}

uint64_t sub_1C5446984()
{
  v4 = *v0;
  *(*v0 + 32) = *v0;

  swift_unknownObjectRelease();
  v1 = *(v4 + 112);
  v2 = *(v4 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1C5446B24, v2, v1);
}

uint64_t sub_1C5446B24()
{
  v0[4] = v0;
  v1 = v0[6];
  v0[7] = v1;
  sub_1C544835C(v1);

  v2 = *(v0[4] + 8);

  return v2();
}

uint64_t sub_1C5446BD8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5446730(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_1C5446CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[11] = a3;
  v4[10] = a2;
  v4[9] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[7] = 0;
  v4[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860);
  v4[13] = swift_task_alloc();
  v4[5] = a2;
  v4[2] = a3;
  v4[3] = a4;
  v4[14] = sub_1C55967E4();
  v4[15] = sub_1C55967D4();
  v10 = sub_1C55967A4();
  v4[16] = v10;
  v4[17] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C5446E14, v10, v5);
}

uint64_t sub_1C5446E14()
{
  v12 = MEMORY[0x1E69E85E0];
  v9 = v0[13];
  v8 = v0[12];
  v7 = v0[11];
  v0[4] = v0;
  v5 = sub_1C5596814();
  v6 = *(*(v5 - 8) + 56);
  v6(v9, 1);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7E0);
  sub_1C5447BA4(v9, &unk_1C55AFA60, v4, v13);
  sub_1C5408CA0(v9);
  (v6)(v9, 1, 1, v5);

  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v7;
  v1[5] = v8;
  sub_1C5447BA4(v9, &unk_1C55AFA78, v1, v13);
  sub_1C5408CA0(v9);
  v11 = sub_1C55967D4();
  v0[18] = v11;
  v2 = swift_task_alloc();
  *(v10 + 152) = v2;
  *v2 = *(v10 + 32);
  v2[1] = sub_1C5447070;

  return MEMORY[0x1EEE6D8A0](v10 + 48, v11, v12, v13);
}

uint64_t sub_1C5447070()
{
  v4 = *v0;
  *(*v0 + 32) = *v0;

  swift_unknownObjectRelease();
  v1 = *(v4 + 136);
  v2 = *(v4 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1C54471D0, v2, v1);
}

uint64_t sub_1C54471D0()
{
  *(v0 + 32) = v0;
  v5 = *(v0 + 48);
  if (v5 != 3)
  {
    v4[7] = v5;
    sub_1C5450ACC(v5);
    if (v5 != 2)
    {
      v3 = v4[9];
      v4[8] = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7D8);
      sub_1C55967C4();
      sub_1C544DC88(v5);
      *v3 = v5;
      sub_1C544DCCC(v5);
      sub_1C5450B04(v5);
      goto LABEL_6;
    }

    sub_1C5450B04(2uLL);
  }

  *v4[9] = 0;
LABEL_6:

  v1 = *(v4[4] + 8);

  return v1();
}

uint64_t sub_1C5447394(uint64_t a1)
{
  v1[8] = a1;
  v1[7] = v1;
  v2 = sub_1C5596C44();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5447470, 0, 0);
}

uint64_t sub_1C5447470()
{
  *(v0 + 56) = v0;
  v1 = sub_1C54478A8();
  v2 = v1[1];
  *(v0 + 40) = *v1;
  *(v0 + 48) = v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v8 = sub_1C5450C30();
  sub_1C5447908();
  v3 = swift_task_alloc();
  v7[12] = v3;
  *v3 = v7[7];
  v3[1] = sub_1C54475B8;
  v4 = v7[11];
  v5 = v7[9];

  return sub_1C544792C(v0 + 40, v0 + 16, v4, v5, v8);
}

uint64_t sub_1C54475B8()
{
  v4 = *v1;
  v4[7] = *v1;
  v4[13] = v0;

  if (v0)
  {
    v2 = sub_1C54477E4;
  }

  else
  {
    (*(v4[10] + 8))(v4[11], v4[9]);
    v2 = sub_1C5447750;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C5447750()
{
  *(v0 + 56) = v0;
  **(v0 + 64) = 2;

  v1 = *(*(v0 + 56) + 8);

  return v1();
}

uint64_t sub_1C54477E4()
{
  v6 = *(v0 + 104);
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);
  *(v0 + 56) = v0;
  (*(v2 + 8))(v1, v3);

  **(v0 + 64) = 2;

  v4 = *(*(v0 + 56) + 8);

  return v4();
}

uint64_t *sub_1C54478A8()
{
  if (qword_1EC161100 != -1)
  {
    swift_once();
  }

  return &qword_1EC161108;
}

uint64_t sub_1C544792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_1C5447A18;

  return sub_1C54502C4(a1, a2, a4, a5);
}

uint64_t sub_1C5447A18()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1C5447BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v35 = &unk_1C55AFA88;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v36);
  v38 = &v12 - v37;
  sub_1C5408B78(v4, &v12 - v37);
  v39 = sub_1C5596814();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  if ((*(v40 + 48))(v38, 1) == 1)
  {
    sub_1C5408CA0(v38);
    v30 = 0;
  }

  else
  {
    v29 = sub_1C5596804();
    (*(v40 + 8))(v38, v39);
    v30 = v29;
  }

  v26 = v30 | 0x3100;
  v28 = *(v32 + 16);
  v27 = *(v32 + 24);
  swift_unknownObjectRetain();
  if (v28)
  {
    v24 = v28;
    v25 = v27;
    v18 = v27;
    v19 = v28;
    swift_getObjectType();
    v20 = sub_1C55967A4();
    v21 = v5;
    swift_unknownObjectRelease();
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v14 = v23;
  v13 = v22;
  v12 = *v34;

  v6 = swift_allocObject();
  v7 = v31;
  v8 = v32;
  v9 = v13;
  v10 = v14;
  v15 = v6;
  v16 = *(v33 + 16);
  v45[4] = v16;
  v6[2] = v16;
  v6[3] = v7;
  v6[4] = v8;
  v17 = 0;
  if (v9 != 0 || v10 != 0)
  {
    v45[0] = 0;
    v45[1] = 0;
    v45[2] = v13;
    v45[3] = v14;
    v17 = v45;
  }

  v42 = 1;
  v43 = v17;
  v44 = v12;
  swift_task_create();
}

uint64_t sub_1C5447F00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v5[8] = a5;
  v5[7] = a1;
  v5[4] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[2] = a4;
  v5[3] = a5;

  v10 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v9 + 72) = v6;
  *v6 = *(v9 + 32);
  v6[1] = sub_1C5448044;

  return v10();
}

uint64_t sub_1C5448044(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[10] = a1;
  v5[11] = v1;

  if (v1)
  {
    v3 = sub_1C544828C;
  }

  else
  {
    v3 = sub_1C54481B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C54481B4()
{
  v5 = v0[10];
  v4 = v0[7];
  v0[4] = v0;
  v0[6] = v5;

  MEMORY[0x1E69E5928](v5);
  *v4 = v5;
  v1 = MEMORY[0x1E69E5920](v5);
  v2 = *(v0[4] + 8);

  return v2(v1);
}

uint64_t sub_1C544828C()
{
  v5 = v0[11];
  v4 = v0[7];
  v0[4] = v0;

  v1 = v5;
  v0[5] = v5;
  *v4 = 0;

  v2 = *(v0[4] + 8);

  return v2();
}

unint64_t sub_1C544835C(unint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C544DC88(a1);
  sub_1C5594E94();
  return sub_1C544DCCC(a1);
}

uint64_t sub_1C5448428()
{
  result = v0;
  sub_1C5448400();
  return result;
}

uint64_t sub_1C54484CC(uint64_t a1)
{
  v2[35] = a1;
  v2[27] = v2;
  v2[28] = 0;
  v2[29] = 0;
  v2[30] = 0;
  v2[31] = 0;
  v2[32] = 0;
  v2[25] = 0;
  v2[26] = 0;
  v2[33] = 0;
  v2[34] = 0;
  v2[28] = a1;
  v2[29] = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C5448538, 0, 0);
}

uint64_t sub_1C5448538()
{
  v6 = v0[35];
  v0[27] = v0;
  sub_1C544DD10();
  MEMORY[0x1E69E5928](v6);
  v7 = sub_1C5449240(v6);
  v0[36] = v7;
  if (v7)
  {
    *(v5 + 240) = v7;
    *(v5 + 16) = *(v5 + 216);
    *(v5 + 56) = v5 + 184;
    *(v5 + 24) = sub_1C5448780;
    v4 = swift_continuation_init();
    *(v5 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C6D8);
    *(v5 + 112) = v4;
    *(v5 + 80) = MEMORY[0x1E69E9820];
    *(v5 + 88) = 1107296256;
    *(v5 + 92) = 0;
    *(v5 + 96) = sub_1C5449280;
    *(v5 + 104) = &block_descriptor_4;
    [v7 performRequestWithHandler_];

    return MEMORY[0x1EEE6DEC8](v5 + 16);
  }

  else
  {
    sub_1C544DD74();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
    v2 = *(*(v5 + 216) + 8);

    return v2();
  }
}

uint64_t sub_1C5448780()
{
  v4 = *v0;
  v4[27] = *v0;
  v1 = v4[6];
  v4[37] = v1;
  if (v1)
  {
    v2 = sub_1C544917C;
  }

  else
  {
    v2 = sub_1C54488D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C54488D8()
{
  v0[27] = v0;
  v1 = v0[23];
  v46 = v0[24];
  v0[31] = v46;
  MEMORY[0x1E69E5920](v1);
  MEMORY[0x1E69E5928](v46);
  if (v46)
  {
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (v44)
    {
      v43 = v44;
    }

    else
    {
      MEMORY[0x1E69E5920](v46);
      v43 = 0;
    }

    v42 = v43;
  }

  else
  {
    v42 = 0;
  }

  if (v42)
  {
    v45[32] = v42;
    v41 = [v42 photoData];
    if (v41)
    {
      v37 = sub_1C55948D4();
      v38 = v2;
      MEMORY[0x1E69E5920](v41);
      v39 = v37;
      v40 = v38;
    }

    else
    {
      v39 = 0;
      v40 = 0xF000000000000000;
    }

    if ((v40 & 0xF000000000000000) == 0xF000000000000000)
    {
      v20 = v45[36];
      sub_1C544DD74();
      swift_allocError();
      *v16 = 2;
      swift_willThrow();
      MEMORY[0x1E69E5920](v42);
      MEMORY[0x1E69E5920](v46);
      v11 = MEMORY[0x1E69E5920](v20);
    }

    else
    {
      v45[25] = v39;
      v45[26] = v40;
      sub_1C5418C84();
      sub_1C544DE30(v39, v40);
      v3 = sub_1C54493D0(v39, v40);
      v36 = v3;
      if (v3)
      {
        v45[33] = v3;
        v4 = [v42 cropRect];
        v35 = v4;
        if (v4)
        {
          [v4 CGRectValue];
          v26 = v5;
          v27 = v6;
          v28 = v7;
          v29 = v8;
          MEMORY[0x1E69E5920](v35);
          v30 = v26;
          v31 = v27;
          v32 = v28;
          v33 = v29;
          v34 = 0;
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 1;
        }

        v45[18] = v30;
        v45[19] = v31;
        v45[20] = v32;
        v45[21] = v33;
        *(v45 + 176) = v34 & 1;
        v9 = sub_1C5449418(1);
        v10 = sub_1C5449460(v45 + 18, v9);
        v25 = v10;
        if (v10)
        {
          v24 = v45[36];
          v45[34] = v10;
          MEMORY[0x1E69E5920](v36);
          sub_1C544DEAC(v39, v40);
          MEMORY[0x1E69E5920](v42);
          MEMORY[0x1E69E5920](v46);
          v11 = MEMORY[0x1E69E5920](v24);
          v12 = v25;
          v13 = *(v45[27] + 8);

          return v13(v12, v11);
        }

        v23 = v45[36];
        sub_1C544DD74();
        swift_allocError();
        *v14 = 4;
        swift_willThrow();
        MEMORY[0x1E69E5920](v36);
        sub_1C544DEAC(v39, v40);
        MEMORY[0x1E69E5920](v42);
        MEMORY[0x1E69E5920](v46);
        v11 = MEMORY[0x1E69E5920](v23);
      }

      else
      {
        v21 = v45[36];
        sub_1C544DD74();
        swift_allocError();
        *v15 = 3;
        swift_willThrow();
        sub_1C544DEAC(v39, v40);
        MEMORY[0x1E69E5920](v42);
        MEMORY[0x1E69E5920](v46);
        v11 = MEMORY[0x1E69E5920](v21);
      }
    }
  }

  else
  {
    v19 = v45[36];
    sub_1C544DD74();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    MEMORY[0x1E69E5920](v46);
    v11 = MEMORY[0x1E69E5920](v19);
  }

  v12 = v22;
  v13 = *(v45[27] + 8);

  return v13(v12, v11);
}

uint64_t sub_1C544917C()
{
  v4 = *(v0 + 288);
  *(v0 + 216) = v0;
  swift_willThrow();
  v1 = MEMORY[0x1E69E5920](v4);
  v2 = *(*(v0 + 216) + 8);

  return v2(v5, v1);
}

double sub_1C5449280(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  v12 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v6 = a4;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7D0);
    sub_1C542501C(v12, a4, v7);
  }

  else
  {
    MEMORY[0x1E69E5928](a2);
    v13[0] = a2;
    MEMORY[0x1E69E5928](a3);
    v13[1] = a3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7D0);
    sub_1C5425080(v12, v13, v4);
  }

  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

double sub_1C5449418(char a1)
{
  if (a1)
  {
    return 100.0;
  }

  else
  {
    return 400.0;
  }
}

uint64_t sub_1C5449460(void *__src, double a2)
{
  v26[1] = 0;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  *&v26[3] = a2;
  v26[2] = __src;
  memcpy(__dst, __src, 0x21uLL);
  if (LOBYTE(__dst[4]))
  {
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    v26[0] = v14;
    v12 = v14;
  }

  else
  {
    v11 = sub_1C5449944(__dst[0], __dst[1], __dst[2], __dst[3]);
    MEMORY[0x1E69E5928](v11);
    v26[0] = v11;
    v12 = v11;
  }

  if (!v12)
  {
    sub_1C5401EF8(v26);
    v3 = 0;
    v4 = 0;
    goto LABEL_8;
  }

  v25 = v12;
  v23 = 0uLL;
  *&v24 = a2;
  *(&v24 + 1) = a2;
  sub_1C544DF28();
  v7 = sub_1C544A32C(a2, a2);
  v22 = v7;
  MEMORY[0x1E69E5928](v12);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = a2;
  *(v6 + 40) = a2;
  *(v6 + 48) = v12;

  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C544DF8C;
  *(v5 + 24) = v6;

  v20 = sub_1C544DFA4;
  v21 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = 0;
  v18 = sub_1C544A504;
  v19 = &block_descriptor_17;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 imageWithActions_];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v12);
    sub_1C5401EF8(v26);
    v3 = v9;
    v4 = sub_1C544DF8C;
LABEL_8:
    sub_1C5411348(v4);
    sub_1C5411348(0);
    return v3;
  }

  __break(1u);
  return result;
}

id SpinnerProgressViewShim.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for SpinnerProgressViewShim();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id SpinnerProgressViewShim.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpinnerProgressViewShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C5449944(double a1, double a2, double a3, double a4)
{
  if (sub_1C5449B2C(a1, a2, a3, a4))
  {
    (MEMORY[0x1E69E5928])();
    return v13;
  }

  else
  {
    v8 = [v13 CGImage];
    if (v8)
    {
      sub_1C5449B6C(v13, a1, a2, a3, a4);
      v7 = CGImageCreateWithImageInRect(v8, v14);
      if (v7)
      {
        sub_1C5418C84();
        [v13 scale];
        [v13 imageOrientation];
        v5 = sub_1C544A2DC(v7);
        MEMORY[0x1E69E5920](v8);
        return v5;
      }

      else
      {
        MEMORY[0x1E69E5920](v8);
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

void sub_1C5449B6C(void *a1, double a2, double a3, double a4, double a5)
{
  *&v24 = a2;
  *(&v24 + 1) = a3;
  *&v25 = a4;
  *(&v25 + 1) = a5;
  v31 = a1;
  v29 = v24;
  v30 = v25;
  __src[0] = 1.0;
  __src[1] = 0;
  __src[2] = 0;
  __src[3] = 1.0;
  __src[4] = 0;
  __src[5] = 0;
  memcpy(__b, __src, sizeof(__b));
  v27 = [v31 imageOrientation];
  if (!v27)
  {
    goto LABEL_9;
  }

  if (v27 == 1)
  {
    goto LABEL_14;
  }

  if (v27 == 2)
  {
LABEL_13:
    sub_1C544A0B4(v34, 1.57079633);
    memcpy(__b, v34, sizeof(__b));
    [a1 size];
    v16 = v7;
    [a1 scale];
    sub_1C544A160(v35, 0.0, -(v16 * v8));
    memcpy(__b, v35, sizeof(__b));
    v18 = v35[0];
    v19 = v35[1];
    v20 = v35[2];
    v21 = v35[3];
    v22 = v35[4];
    v23 = v35[5];
    goto LABEL_15;
  }

  if (v27 == 3)
  {
LABEL_12:
    sub_1C544A0B4(v32, -1.57079633);
    memcpy(__b, v32, sizeof(__b));
    [a1 size];
    v17 = v5;
    [a1 scale];
    sub_1C544A160(v33, -(v17 * v6), 0.0);
    memcpy(__b, v33, sizeof(__b));
    v18 = v33[0];
    v19 = v33[1];
    v20 = v33[2];
    v21 = v33[3];
    v22 = v33[4];
    v23 = v33[5];
    goto LABEL_15;
  }

  if (v27 == 4)
  {
    goto LABEL_9;
  }

  if (v27 == 5)
  {
LABEL_14:
    sub_1C544A0B4(v36, 3.14159265);
    memcpy(__b, v36, sizeof(__b));
    [a1 0x1FAD1B1F8];
    v13 = v9;
    [a1 0x1FB0CAB78];
    v15 = -(v13 * v10);
    [a1 0x1FAD1B1F8];
    v14 = v11;
    [a1 0x1FB0CAB78];
    sub_1C544A160(v37, v15, -(v14 * v12));
    memcpy(__b, v37, sizeof(__b));
    v18 = v37[0];
    v19 = v37[1];
    v20 = v37[2];
    v21 = v37[3];
    v22 = v37[4];
    v23 = v37[5];
    goto LABEL_15;
  }

  if (v27 == 6)
  {
    goto LABEL_13;
  }

  if (v27 == 7)
  {
    goto LABEL_12;
  }

LABEL_9:
  v18 = 1.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 1.0;
  v22 = 0.0;
  v23 = 0.0;
LABEL_15:
  *v38 = v18;
  *&v38[1] = v19;
  *&v38[2] = v20;
  *&v38[3] = v21;
  *&v38[4] = v22;
  *&v38[5] = v23;
  sub_1C544A214(v38, *&v24, *(&v24 + 1), *&v25, *(&v25 + 1));
}

CGFloat sub_1C544A0B4@<D0>(CGFloat *a1@<X8>, CGFloat a2@<D0>)
{
  memcpy(&__dst, v2, sizeof(__dst));
  v11 = __dst;
  CGAffineTransformRotate(&v10, &v11, a2);
  b = v10.b;
  c = v10.c;
  d = v10.d;
  tx = v10.tx;
  result = v10.ty;
  *a1 = v10.a;
  a1[1] = b;
  a1[2] = c;
  a1[3] = d;
  a1[4] = tx;
  a1[5] = result;
  return result;
}

CGFloat sub_1C544A160@<D0>(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  memcpy(&__dst, v3, sizeof(__dst));
  v13 = __dst;
  CGAffineTransformTranslate(&v12, &v13, a2, a3);
  b = v12.b;
  c = v12.c;
  d = v12.d;
  v7 = v12.tx;
  result = v12.ty;
  *a1 = v12.a;
  a1[1] = b;
  a1[2] = c;
  a1[3] = d;
  a1[4] = v7;
  a1[5] = result;
  return result;
}

void sub_1C544A214(void *__src, double a2, double a3, double a4, double a5)
{
  *v5 = a2;
  *&v5[8] = a3;
  *&v5[16] = a4;
  *&v5[24] = a5;
  memcpy(&__dst, __src, sizeof(__dst));
  v7 = *v5;
  v6 = __dst;
  CGRectApplyAffineTransform(*v5, &v6);
}

id sub_1C544A374(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  sub_1C5450260();
  v7 = sub_1C544A458(a1, a2, a3, a4);
  [v7 addClip];
  MEMORY[0x1E69E5920](v7);
  return [a6 drawInRect_];
}

id sub_1C544A458(double a1, double a2, double a3, double a4)
{
  v4 = [swift_getObjCClassFromMetadata() bezierPathWithOvalInRect_];

  return v4;
}

uint64_t sub_1C544A504(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  MEMORY[0x1E69E5928]();
  v3(a2);
  return MEMORY[0x1E69E5920](a2);
}

uint64_t sub_1C544A56C()
{

  type metadata accessor for SpinnerProgressView.Model();
  sub_1C544E03C();
  v1 = sub_1C5595054();

  return v1;
}

uint64_t sub_1C544A5FC()
{
  sub_1C544844C();
  type metadata accessor for SpinnerProgressView.Model();
  sub_1C544E03C();
  v1 = sub_1C5595064();
  sub_1C544848C();
  return v1;
}

uint64_t sub_1C544A698()
{
  sub_1C544844C();
  type metadata accessor for SpinnerProgressView.Model();
  sub_1C544E03C();
  v1 = sub_1C5595074();
  sub_1C544848C();
  return v1;
}

uint64_t sub_1C544A774(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C544844C();
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  sub_1C544848C();
  return sub_1C544848C();
}

uint64_t sub_1C544A7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v13 = sub_1C544E0BC;
  v26 = MEMORY[0x1E697D438];
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C6F0);
  v27 = *(v33 - 8);
  v28 = v33 - 8;
  v10 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v17);
  v31 = &v10 - v10;
  v11 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v32 = &v10 - v11;
  v45 = &v10 - v11;
  v42 = v6;
  v43 = v7;
  v12 = 1;
  v44 = v8 & 1;
  sub_1C544844C();
  v14 = v36;
  v36[2] = v17;
  v36[3] = v18;
  v37 = v19 & 1 & v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C6F8);
  v16 = sub_1C544E0D0();
  sub_1C544B78C();
  v20 = &v41;
  sub_1C5596064();
  sub_1C544848C();
  v21 = v46;
  v22 = 384;
  memcpy(v46, v20, sizeof(v46));
  v23 = v40;
  memcpy(v40, v46, sizeof(v40));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C708);
  v25 = sub_1C544E158();
  sub_1C544B7B0();
  sub_1C5595CB4();
  sub_1C544E1E0(v23);
  v38 = v24;
  v39 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v31, v33, v32);
  v35 = *(v27 + 8);
  v34 = v27 + 8;
  v35(v31, v33);
  (*(v27 + 16))(v31, v32, v33);
  sub_1C540EFD8(v31, v33, v29);
  v35(v31, v33);
  return (v35)(v32, v33);
}