uint64_t sub_2FC78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v13 - v6;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13[2] = a1;
  v13[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v8 = v13[1];
  v9 = sub_B7A80();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);

  v10 = sub_B7A50();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  sub_30A3C(0, 0, v7, &unk_BEE80, v11);
}

uint64_t sub_2FE44()
{
  v1 = type metadata accessor for DeviceLostModeReportingState(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v11[0] = *v0;
  v11[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v6 = v11[3];
  swift_getKeyPath();
  v11[0] = v6;
  sub_30920(&qword_EFD70, type metadata accessor for DeviceLostModeManagementViewModel);
  sub_B65C0();

  v7 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  sub_30968(v6 + v7, v4);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload != 4)
    {
      return 0;
    }
  }

  else
  {
    sub_309CC(v4);
  }

  return 1;
}

uint64_t sub_2FFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DeviceLostModeReportingState(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v28 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v9 = v24;
  swift_getKeyPath();
  v27 = v9;
  sub_30920(&qword_EFD70, type metadata accessor for DeviceLostModeManagementViewModel);
  sub_B65C0();

  v10 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  sub_30968(v9 + v10, v8);

  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result != 3 && result == 4)
    {
      v24 = a2;
      v25 = a3;
      sub_B75C0();
      v18 = v26;
      swift_getKeyPath();
      v24 = v18;
      sub_B65C0();

      v19 = v18 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock;
      swift_beginAccess();
      v21 = *v19;
      v20 = *(v19 + 8);

      v21(v22);
    }
  }

  else
  {
    v24 = a2;
    v25 = a3;
    sub_B75C0();
    v12 = v26;
    swift_getKeyPath();
    v24 = v12;
    sub_B65C0();

    v13 = v12 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock;
    swift_beginAccess();
    v15 = *v13;
    v14 = *(v13 + 8);

    v15(v16);

    return sub_309CC(v8);
  }

  return result;
}

uint64_t sub_3027C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v17 - v3;
  v5 = type metadata accessor for DeviceLostModeReportingState(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0[1];
  v17[0] = *v0;
  v17[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v10 = v17[3];
  swift_getKeyPath();
  v17[0] = v10;
  sub_30920(&qword_EFD70, type metadata accessor for DeviceLostModeManagementViewModel);
  sub_B65C0();

  v11 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  sub_30968(v10 + v11, v8);

  if (swift_getEnumCaseMultiPayload() < 3)
  {
    sub_309CC(v8);
    if (qword_EEAA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_EEAA0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v12 = sub_B62F0();
  v13 = __swift_project_value_buffer(v12, qword_EFFC0);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v4, v13, v12);
  (*(v14 + 56))(v4, 0, 1, v12);
  v15 = sub_B78D0();
  sub_2B630(v4);
  return v15;
}

unint64_t sub_305FC()
{
  result = qword_EFD58;
  if (!qword_EFD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD58);
  }

  return result;
}

uint64_t sub_30658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsSectionTemplate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_306C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD60, &qword_BED88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_30768()
{
  result = qword_EFD68;
  if (!qword_EFD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EFD60, &qword_BED88);
    sub_30920(&qword_EF678, type metadata accessor for DetailsSectionTemplate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD68);
  }

  return result;
}

uint64_t sub_30824()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_30864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F248;

  return sub_31AAC(a1, v4, v5, v6);
}

uint64_t sub_30920(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_30968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceLostModeReportingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_309CC(uint64_t a1)
{
  v2 = type metadata accessor for DeviceLostModeReportingState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_30A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_326B0(a3, v27 - v11);
  v13 = sub_B7A80();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_32720(v12);
  }

  else
  {
    sub_B7A70();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_B7A00();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_B7940() + 32;
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

      sub_32720(a3);

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

  sub_32720(a3);
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

uint64_t sub_30CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_326B0(a3, v27 - v11);
  v13 = sub_B7A80();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_32720(v12);
  }

  else
  {
    sub_B7A70();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_B7A00();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_B7940() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFE60, &qword_BEFA0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_32720(a3);

      return v24;
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

  sub_32720(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFE60, &qword_BEFA0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_30FD0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_32264();
  sub_B65C0();

  v3 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  return sub_32ED0(v5 + v3, a1, type metadata accessor for DeviceLostModeReportingState);
}

Swift::Void __swiftcall DeviceLostModeManagementViewModel.startObservingUpdates()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_B7A80();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_B7A60();

  v7 = sub_B7A50();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v1;
  sub_30A3C(0, 0, v5, &unk_BEE80, v8);
}

uint64_t sub_311A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_32264();
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  return sub_32ED0(v3 + v4, a2, type metadata accessor for DeviceLostModeReportingState);
}

uint64_t sub_3124C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for DeviceLostModeReportingState(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_32ED0(a1, v7, type metadata accessor for DeviceLostModeReportingState);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_32264();
  sub_B65B0();

  return sub_323F8(v7, type metadata accessor for DeviceLostModeReportingState);
}

uint64_t sub_3136C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  sub_32E6C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t DeviceLostModeManagementViewModel.lostModePresentationBlock.getter()
{
  swift_getKeyPath();
  sub_32264();
  sub_B65C0();

  v1 = (v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_31478@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_32264();
  sub_B65C0();

  v4 = (v3 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a2 = sub_2DDCC;
  a2[1] = v7;
}

uint64_t sub_31540(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_getKeyPath();
  sub_32264();

  sub_B65B0();
}

uint64_t DeviceLostModeManagementViewModel.lostModePresentationBlock.setter()
{
  swift_getKeyPath();
  sub_32264();
  sub_B65B0();
}

uint64_t sub_316D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a2;
  v5[1] = a3;
}

void (*DeviceLostModeManagementViewModel.lostModePresentationBlock.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_32264();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_31860;
}

void sub_31860(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_B65D0();

  free(v1);
}

uint64_t DeviceLostModeManagementViewModel.__allocating_init(lostDevice:dependencies:)(__int128 *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v12 = *a1;
  v8 = *(a1 + 2);
  LOBYTE(a1) = *(a1 + 24);
  sub_B65F0();
  v9 = v7 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice;
  *v9 = v12;
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  sub_32DE0(a2, v7 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_dependencies, type metadata accessor for DeviceLostModeManagementViewModel.Dependencies);
  type metadata accessor for DeviceLostModeReportingState(0);
  swift_storeEnumTagMultiPayload();
  v10 = (v7 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock);
  *v10 = ItemContactInfoSetupIntroductionViewModel.bind();
  v10[1] = 0;
  return v7;
}

uint64_t DeviceLostModeManagementViewModel.init(lostDevice:dependencies:)(__int128 *a1, uint64_t a2)
{
  v9 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  sub_B65F0();
  v6 = v2 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice;
  *v6 = v9;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  sub_32DE0(a2, v2 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_dependencies, type metadata accessor for DeviceLostModeManagementViewModel.Dependencies);
  type metadata accessor for DeviceLostModeReportingState(0);
  swift_storeEnumTagMultiPayload();
  v7 = (v2 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock);
  *v7 = ItemContactInfoSetupIntroductionViewModel.bind();
  v7[1] = 0;
  return v2;
}

uint64_t sub_31AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for DeviceLostModeReportingState(0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFE68, &qword_BEFC8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFE70, &unk_BEFD0);
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  v12 = *(*(type metadata accessor for DeviceLostModeStatusProvider(0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v13 = *(*(type metadata accessor for DeviceLostModeManagementViewModel.Dependencies() - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFBE0, &unk_BEB00);
  v4[13] = v14;
  v15 = *(v14 - 8);
  v4[14] = v15;
  v16 = *(v15 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = sub_B7A60();
  v4[17] = sub_B7A50();
  v18 = sub_B7A00();
  v4[18] = v18;
  v4[19] = v17;

  return _swift_task_switch(sub_31D04, v18, v17);
}

uint64_t sub_31D04()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  sub_32ED0(v0[3] + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_dependencies, v4, type metadata accessor for DeviceLostModeManagementViewModel.Dependencies);
  sub_32DE0(v4, v5, type metadata accessor for DeviceLostModeStatusProvider);
  (*(v2 + 32))(v1, v5, v3);
  sub_B7A90();
  v0[20] = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel___observationRegistrar;
  v0[21] = 0;
  v7 = v0[16];
  v8 = sub_B7A50();
  v0[22] = v8;
  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_31E58;
  v11 = v0[10];
  v12 = v0[7];
  v13 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v12, v8, &protocol witness table for MainActor, v13);
}

uint64_t sub_31E58()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return _swift_task_switch(sub_31F9C, v5, v4);
}

uint64_t sub_31F9C()
{
  v1 = v0[7];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    v2 = v0[17];
    v4 = v0[14];
    v3 = v0[15];
    v6 = v0[12];
    v5 = v0[13];
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[8];
    v10 = v0[9];
    v25 = v0[6];

    (*(v10 + 8))(v8, v9);
    (*(v4 + 8))(v3, v5);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[6];
    v16 = v0[3];
    sub_32DE0(v1, v15, type metadata accessor for DeviceLostModeReportingState);
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    v0[2] = v16;
    sub_32264();
    sub_B65B0();

    sub_323F8(v15, type metadata accessor for DeviceLostModeReportingState);
    v0[21] = v13;
    v18 = v0[16];
    v19 = sub_B7A50();
    v0[22] = v19;
    v20 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v21 = swift_task_alloc();
    v0[23] = v21;
    *v21 = v0;
    v21[1] = sub_31E58;
    v22 = v0[10];
    v23 = v0[7];
    v24 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v23, v19, &protocol witness table for MainActor, v24);
  }
}

uint64_t sub_3221C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_32264()
{
  result = qword_EFD70;
  if (!qword_EFD70)
  {
    type metadata accessor for DeviceLostModeManagementViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD70);
  }

  return result;
}

uint64_t type metadata accessor for DeviceLostModeManagementViewModel()
{
  result = qword_EFDB8;
  if (!qword_EFDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeviceLostModeManagementViewModel.deinit()
{
  sub_323F8(v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState, type metadata accessor for DeviceLostModeReportingState);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice + 8);

  sub_323F8(v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_dependencies, type metadata accessor for DeviceLostModeManagementViewModel.Dependencies);
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock + 8);

  v3 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_323F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DeviceLostModeManagementViewModel.__deallocating_deinit()
{
  sub_323F8(v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState, type metadata accessor for DeviceLostModeReportingState);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice + 8);

  sub_323F8(v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_dependencies, type metadata accessor for DeviceLostModeManagementViewModel.Dependencies);
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock + 8);

  v3 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_3256C()
{
  v0 = type metadata accessor for DeviceLostModeReportingState(319);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2E144();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_B6600();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_326B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_32720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_32788(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_32880;

  return v7(a1);
}

uint64_t sub_32880()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_32978(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_32A6C;

  return v6(v2 + 32);
}

uint64_t sub_32A6C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_32B80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2184C;

  return sub_32978(a1, v5);
}

uint64_t sub_32C38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_F248;

  return sub_32978(a1, v5);
}

uint64_t sub_32CF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_32D28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2184C;

  return sub_32788(a1, v5);
}

uint64_t sub_32DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_32E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceLostModeReportingState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_32ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static DeviceLostModeManagementViewModel.mockDependencies.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFE78, &qword_BF020);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  type metadata accessor for DeviceLostModeReportingState(0);
  (*(v1 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  return sub_B7AC0();
}

uint64_t sub_330BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFF10, &qword_BF040);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_B7A80();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v3 + 16))(v6, a1, v2);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v3 + 32))(v13 + v12, v6, v2);
  sub_30A3C(0, 0, v10, &unk_BF050, v13);
}

uint64_t sub_332AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceLostModeStatusProvider(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_3332C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceLostModeStatusProvider(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeviceLostModeManagementViewModel.Dependencies()
{
  result = qword_EFED8;
  if (!qword_EFED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_333E8()
{
  result = type metadata accessor for DeviceLostModeStatusProvider(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_33454()
{
  v1 = sub_B7CF0();
  v0[7] = v1;
  v2 = *(v1 - 8);
  v0[8] = v2;
  v3 = *(v2 + 64) + 15;
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v4 = sub_B7D00();
  v0[11] = v4;
  v5 = *(v4 - 8);
  v0[12] = v5;
  v6 = *(v5 + 64) + 15;
  v0[13] = swift_task_alloc();
  v7 = type metadata accessor for DeviceLostModeReportingState(0);
  v0[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();

  return _swift_task_switch(sub_335C0, 0, 0);
}

uint64_t sub_335C0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  sub_B7E20();
  *(v0 + 40) = xmmword_BF010;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v9 = sub_340FC(&qword_EFF18, &type metadata accessor for ContinuousClock);
  sub_B7E00();
  sub_340FC(&qword_EFF20, &type metadata accessor for ContinuousClock.Instant);
  sub_B7D10();
  v10 = *(v7 + 8);
  *(v0 + 144) = v10;
  *(v0 + 152) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v11 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_33788;
  v13 = *(v0 + 104);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v15, v0 + 16, v14, v9);
}

uint64_t sub_33788()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v14 = *v1;

  if (v0)
  {
    v5 = v2[18];
    v4 = v2[19];
    v6 = v2[10];
    v7 = v2[7];

    v5(v6, v7);
    v8 = sub_33C10;
  }

  else
  {
    v9 = v2[19];
    v11 = v2[12];
    v10 = v2[13];
    v12 = v2[11];
    (v2[18])(v2[10], v2[7]);
    (*(v11 + 8))(v10, v12);
    v8 = sub_338F4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_338F4()
{
  v1 = *(v0 + 112);
  sub_30968(*(v0 + 136), *(v0 + 128));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 136);
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v5 = *(v0 + 112);
      v4 = *(v0 + 120);
      sub_B6520();
      sub_309CC(v3);
      swift_storeEnumTagMultiPayload();
      sub_34144(v4, v3, type metadata accessor for DeviceLostModeReportingState);
    }

    else
    {
      v10 = *(v0 + 112);
      sub_309CC(*(v0 + 136));
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      v6 = *(v0 + 128);
      v9 = *(v0 + 112);
      sub_309CC(*(v0 + 136));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v7 = *(v0 + 120);
      v6 = *(v0 + 128);
      v8 = *(v0 + 112);
      sub_B6520();
      sub_309CC(v3);
      swift_storeEnumTagMultiPayload();
      sub_34144(v7, v3, type metadata accessor for DeviceLostModeReportingState);
    }

    sub_309CC(v6);
  }

  v11 = *(v0 + 104);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = *(v0 + 56);
  sub_B7E20();
  *(v0 + 40) = xmmword_BF010;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v17 = sub_340FC(&qword_EFF18, &type metadata accessor for ContinuousClock);
  sub_B7E00();
  sub_340FC(&qword_EFF20, &type metadata accessor for ContinuousClock.Instant);
  sub_B7D10();
  v18 = *(v15 + 8);
  *(v0 + 144) = v18;
  *(v0 + 152) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v14, v16);
  v19 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v20 = swift_task_alloc();
  *(v0 + 160) = v20;
  *v20 = v0;
  v20[1] = sub_33788;
  v21 = *(v0 + 104);
  v23 = *(v0 + 80);
  v22 = *(v0 + 88);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v23, v0 + 16, v22, v17);
}

uint64_t sub_33C10()
{
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v1 = *(v0 + 112);
  sub_30968(*(v0 + 136), *(v0 + 128));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 136);
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v5 = *(v0 + 112);
      v4 = *(v0 + 120);
      sub_B6520();
      sub_309CC(v3);
      swift_storeEnumTagMultiPayload();
      sub_34144(v4, v3, type metadata accessor for DeviceLostModeReportingState);
    }

    else
    {
      v10 = *(v0 + 112);
      sub_309CC(*(v0 + 136));
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      v6 = *(v0 + 128);
      v9 = *(v0 + 112);
      sub_309CC(*(v0 + 136));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v7 = *(v0 + 120);
      v6 = *(v0 + 128);
      v8 = *(v0 + 112);
      sub_B6520();
      sub_309CC(v3);
      swift_storeEnumTagMultiPayload();
      sub_34144(v7, v3, type metadata accessor for DeviceLostModeReportingState);
    }

    sub_309CC(v6);
  }

  v11 = *(v0 + 104);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = *(v0 + 56);
  sub_B7E20();
  *(v0 + 40) = xmmword_BF010;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v17 = sub_340FC(&qword_EFF18, &type metadata accessor for ContinuousClock);
  sub_B7E00();
  sub_340FC(&qword_EFF20, &type metadata accessor for ContinuousClock.Instant);
  sub_B7D10();
  v18 = *(v15 + 8);
  *(v0 + 144) = v18;
  *(v0 + 152) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v14, v16);
  v19 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v20 = swift_task_alloc();
  *(v0 + 160) = v20;
  *v20 = v0;
  v20[1] = sub_33788;
  v21 = *(v0 + 104);
  v23 = *(v0 + 80);
  v22 = *(v0 + 88);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v23, v0 + 16, v22, v17);
}

uint64_t sub_33F30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFF10, &qword_BF040);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_34000()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFF10, &qword_BF040) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_F248;

  return sub_33454();
}

uint64_t sub_340FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_34144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_341D0()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_EFFC0);
  __swift_project_value_buffer(v0, qword_EFFC0);
  type metadata accessor for ItemsModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.devices.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEAA0 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_EFFC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

FindMyAppCore::ManagedItem __swiftcall ManagedItem.init(isOwnedByMe:properties:)(Swift::Bool isOwnedByMe, FindMyAppCore::ManagedItem::Properties properties)
{
  v3 = *properties.rawValue;
  *v2 = isOwnedByMe;
  *(v2 + 8) = v3;
  result.properties = properties;
  result.isOwnedByMe = isOwnedByMe;
  return result;
}

unint64_t sub_34374()
{
  result = qword_EFFD8;
  if (!qword_EFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFFD8);
  }

  return result;
}

unint64_t sub_343CC()
{
  result = qword_EFFE0;
  if (!qword_EFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFFE0);
  }

  return result;
}

unint64_t sub_34424()
{
  result = qword_EFFE8;
  if (!qword_EFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFFE8);
  }

  return result;
}

unint64_t sub_3447C()
{
  result = qword_EFFF0;
  if (!qword_EFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFFF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_345A8()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_F0090);
  __swift_project_value_buffer(v0, qword_F0090);
  type metadata accessor for ItemManagementModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.itemManagement.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_F0090);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ItemManagementSectionView.init(viewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for ItemManagementSectionViewModel();
  result = sub_B75B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t ItemManagementSectionView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_B63C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v30[-1] - v10;
  v12 = *v1;
  v13 = v1[1];
  if (qword_EEAA8 != -1)
  {
    swift_once();
  }

  v14 = sub_B62F0();
  v15 = __swift_project_value_buffer(v14, qword_F0090);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v11, v15, v14);
  (*(v16 + 56))(v11, 0, 1, v14);
  v17 = sub_B78D0();
  v19 = v18;
  sub_2B630(v11);
  sub_B63B0();
  v30[0] = v12;
  v30[1] = v13;
  v20 = sub_34A58();
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  v30[3] = &type metadata for SolariumFeatureFlag;
  v30[4] = sub_28360();
  v21 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v30);
  if (v21)
  {
    v22 = 0;
    v23 = 26.0;
  }

  else
  {
    if (qword_EEAE0 != -1)
    {
      swift_once();
    }

    v22 = *(&xmmword_FAE50 + 1);
    v23 = *&xmmword_FAE50;
  }

  v24 = type metadata accessor for DetailsSectionTemplate();
  v25 = (a1 + v24[8]);
  *v25 = v23;
  *(v25 + 1) = v22;
  v26 = (a1 + v24[5]);
  *v26 = v17;
  v26[1] = v19;
  result = (*(v4 + 32))(a1 + v24[6], v7, v3);
  *(a1 + v24[7]) = v20;
  v28 = (a1 + v24[9]);
  *v28 = 0;
  v28[1] = 0;
  return result;
}

char *sub_34A58()
{
  v1 = sub_B65A0();
  v91 = *(v1 - 8);
  v2 = *(v91 + 64);
  __chkstk_darwin(v1);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v90 = &v82 - v7;
  v8 = *v0;
  v9 = v0[1];
  *&v98[0] = *v0;
  *(&v98[0] + 1) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F00A8, &qword_BF350);
  sub_B75C0();
  v11 = v92;
  swift_getKeyPath();
  *&v98[0] = v11;
  v12 = sub_35870(&qword_F00B0, type metadata accessor for ItemManagementSectionViewModel);
  sub_B65C0();

  v13 = *(v11 + 24);

  if ((v13 & 8) != 0)
  {
    if (qword_EEAA8 != -1)
    {
      swift_once();
    }

    v18 = sub_B62F0();
    v19 = __swift_project_value_buffer(v18, qword_F0090);
    v20 = *(v18 - 8);
    v21 = v90;
    (*(v20 + 16))(v90, v19, v18);
    (*(v20 + 56))(v21, 0, 1, v18);
    v22 = sub_B78D0();
    v24 = v23;
    sub_2B630(v21);
    *(&v98[7] + 8) = 0u;
    *(&v98[8] + 8) = 0u;
    *(&v98[9] + 1) = 0;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    sub_B6590();
    v25 = sub_B6560();
    v27 = v26;
    (*(v91 + 8))(v4, v1);
    *&v98[0] = v25;
    *(&v98[0] + 1) = v27;
    *&v98[1] = v22;
    *(&v98[1] + 1) = v24;
    LOBYTE(v98[2]) = 0;
    *(&v98[2] + 1) = 0;
    *&v98[3] = 0;
    BYTE8(v98[3]) = 0;
    memset(&v98[4], 0, 17);
    *(&v98[5] + 8) = 0u;
    *(&v98[6] + 8) = 0u;
    memset(&v98[10], 0, 112);
    sub_2C360(&v92, &v98[11]);
    v16 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
    v29 = *(v16 + 2);
    v28 = *(v16 + 3);
    goto LABEL_37;
  }

  v86 = v1;
  v87 = v10;
  *&v98[0] = v8;
  *(&v98[0] + 1) = v9;
  sub_B75C0();
  v14 = v92;
  swift_getKeyPath();
  *&v98[0] = v14;
  v88 = v12;
  sub_B65C0();

  v15 = *(v14 + 24);

  v84 = v9;
  v85 = v4;
  v89 = v8;
  if (v15)
  {
    v17 = v90;
    if (qword_EEAA8 != -1)
    {
      swift_once();
    }

    v30 = sub_B62F0();
    v31 = __swift_project_value_buffer(v30, qword_F0090);
    v32 = *(v30 - 8);
    (*(v32 + 16))(v17, v31, v30);
    (*(v32 + 56))(v17, 0, 1, v30);
    v33 = sub_B78D0();
    v35 = v34;
    sub_2B630(v17);
    v36 = swift_allocObject();
    *(v36 + 16) = v89;
    *(v36 + 24) = v9;
    *(&v98[7] + 8) = 0u;
    *(&v98[8] + 8) = 0u;
    *(&v98[9] + 1) = 0;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;

    v37 = v85;
    sub_B6590();
    v38 = sub_B6560();
    v40 = v39;
    (*(v91 + 8))(v37, v86);
    *&v98[0] = v38;
    *(&v98[0] + 1) = v40;
    *&v98[1] = v33;
    *(&v98[1] + 1) = v35;
    LOBYTE(v98[2]) = 1;
    *(&v98[2] + 1) = 0;
    *&v98[3] = 0;
    BYTE8(v98[3]) = 0;
    v98[4] = 0uLL;
    LOBYTE(v98[5]) = 1;
    *(&v98[5] + 1) = sub_35914;
    v98[6] = v36;
    *&v98[7] = 0;
    memset(&v98[10], 0, 112);
    sub_2C360(&v92, &v98[11]);
    v16 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
    v42 = *(v16 + 2);
    v41 = *(v16 + 3);
    if (v42 >= v41 >> 1)
    {
      v16 = sub_5358C((v41 > 1), v42 + 1, 1, v16);
    }

    *(v16 + 2) = v42 + 1;
    memcpy(&v16[272 * v42 + 32], v98, 0x110uLL);
    v8 = v89;
    v9 = v84;
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
    v17 = v90;
  }

  *&v98[0] = v8;
  *(&v98[0] + 1) = v9;
  sub_B75C0();
  v43 = v92;
  swift_getKeyPath();
  *&v98[0] = v43;
  sub_B65C0();

  v44 = *(v43 + 24);

  if ((v44 & 2) != 0)
  {
    if (qword_EEAA8 != -1)
    {
      swift_once();
    }

    v45 = sub_B62F0();
    v46 = __swift_project_value_buffer(v45, qword_F0090);
    v47 = *(v45 - 8);
    (*(v47 + 16))(v17, v46, v45);
    (*(v47 + 56))(v17, 0, 1, v45);
    v48 = sub_B78D0();
    v90 = v49;
    sub_2B630(v17);
    *(&v98[1] + 1) = &type metadata for SolariumFeatureFlag;
    *&v98[2] = sub_28360();
    LOBYTE(v45) = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v98);
    if (v45)
    {
      v50 = 1;
    }

    else
    {
      v50 = 3;
    }

    v51 = swift_allocObject();
    *(v51 + 16) = v89;
    *(v51 + 24) = v9;
    *(&v98[7] + 8) = 0u;
    *(&v98[8] + 8) = 0u;
    *(&v98[9] + 1) = 0;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;

    v52 = v85;
    sub_B6590();
    v53 = sub_B6560();
    v55 = v54;
    (*(v91 + 8))(v52, v86);
    *&v98[0] = v53;
    *(&v98[0] + 1) = v55;
    *&v98[1] = v48;
    *(&v98[1] + 1) = v90;
    LOBYTE(v98[2]) = v50;
    *(&v98[2] + 1) = 0;
    *&v98[3] = 0;
    BYTE8(v98[3]) = 0;
    v98[4] = 0uLL;
    LOBYTE(v98[5]) = 1;
    *(&v98[5] + 1) = sub_358E8;
    v98[6] = v51;
    *&v98[7] = 0;
    memset(&v98[10], 0, 112);
    sub_2C360(&v92, &v98[11]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_5358C(0, *(v16 + 2) + 1, 1, v16);
    }

    v57 = *(v16 + 2);
    v56 = *(v16 + 3);
    v8 = v89;
    v9 = v84;
    if (v57 >= v56 >> 1)
    {
      v16 = sub_5358C((v56 > 1), v57 + 1, 1, v16);
    }

    *(v16 + 2) = v57 + 1;
    memcpy(&v16[272 * v57 + 32], v98, 0x110uLL);
  }

  *&v98[0] = v8;
  *(&v98[0] + 1) = v9;
  sub_B75C0();
  v58 = v92;
  swift_getKeyPath();
  *&v98[0] = v58;
  sub_B65C0();

  v59 = *(v58 + 24);

  if ((v59 & 4) != 0)
  {
    if (qword_EEAA8 != -1)
    {
      swift_once();
    }

    v60 = sub_B62F0();
    v61 = __swift_project_value_buffer(v60, qword_F0090);
    v62 = *(v60 - 8);
    v63 = *(v62 + 16);
    v63(v17, v61, v60);
    v64 = *(v62 + 56);
    v64(v17, 0, 1, v60);
    v90 = sub_B78D0();
    v83 = v65;
    sub_2B630(v17);
    v63(v17, v61, v60);
    v64(v17, 0, 1, v60);
    v66 = sub_B78D0();
    v68 = v67;
    sub_2B630(v17);
    v69 = v89;
    v70 = v84;
    *&v98[0] = v89;
    *(&v98[0] + 1) = v84;
    sub_B75C0();
    v71 = v92;
    swift_getKeyPath();
    *&v98[0] = v71;
    sub_B65C0();

    v72 = *(v71 + 16);

    if (v72)
    {
      v73 = v83;
    }

    else
    {
      v73 = v68;
    }

    if (v72)
    {
      v66 = v90;
    }

    *(&v98[1] + 1) = &type metadata for SolariumFeatureFlag;
    *&v98[2] = sub_28360();
    v74 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v98);
    if (v74)
    {
      v75 = 1;
    }

    else
    {
      v75 = 3;
    }

    v76 = swift_allocObject();
    *(v76 + 16) = v69;
    *(v76 + 24) = v70;
    *(&v98[7] + 8) = 0u;
    *(&v98[8] + 8) = 0u;
    *(&v98[9] + 1) = 0;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;

    v77 = v85;
    sub_B6590();
    v78 = sub_B6560();
    v80 = v79;
    (*(v91 + 8))(v77, v86);
    *&v98[0] = v78;
    *(&v98[0] + 1) = v80;
    *&v98[1] = v66;
    *(&v98[1] + 1) = v73;
    LOBYTE(v98[2]) = v75;
    *(&v98[2] + 1) = 0;
    *&v98[3] = 0;
    BYTE8(v98[3]) = 0;
    v98[4] = 0uLL;
    LOBYTE(v98[5]) = 1;
    *(&v98[5] + 1) = sub_358BC;
    v98[6] = v76;
    *&v98[7] = 0;
    memset(&v98[10], 0, 112);
    sub_2C360(&v92, &v98[11]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_5358C(0, *(v16 + 2) + 1, 1, v16);
    }

    v29 = *(v16 + 2);
    v28 = *(v16 + 3);
LABEL_37:
    if (v29 >= v28 >> 1)
    {
      v16 = sub_5358C((v28 > 1), v29 + 1, 1, v16);
    }

    *(v16 + 2) = v29 + 1;
    memcpy(&v16[272 * v29 + 32], v98, 0x110uLL);
  }

  return v16;
}

uint64_t sub_3572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F00A8, &qword_BF350);
  sub_B75C0();
  swift_getKeyPath();
  sub_35870(&qword_F00B0, type metadata accessor for ItemManagementSectionViewModel);
  sub_B65C0();

  v6 = v11 + *a5;
  swift_beginAccess();
  v8 = *v6;
  v7 = *(v6 + 8);

  v8(v9);
}

uint64_t sub_35870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_35960@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_35F48();
  sub_B65C0();

  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_35A1C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_35F48();
  sub_B65C0();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t sub_35AB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_35F48();
  sub_B65C0();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_35B34(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_getKeyPath();
  sub_35F48();
  sub_B65B0();
}

uint64_t ItemManagementSectionViewModel.__allocating_init(managedItem:)(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = *a1;
  v7 = *(a1 + 1);
  sub_B69B0();
  v8 = (v5 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onRename);
  *v8 = ItemContactInfoSetupIntroductionViewModel.bind();
  v8[1] = 0;
  v9 = (v5 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onRemove);
  *v9 = ItemContactInfoSetupIntroductionViewModel.bind();
  v9[1] = 0;
  v10 = (v5 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onStopSharing);
  *v10 = ItemContactInfoSetupIntroductionViewModel.bind();
  v10[1] = 0;
  sub_B65F0();
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  return v5;
}

uint64_t ItemManagementSectionViewModel.init(managedItem:)(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  sub_B69B0();
  v4 = (v1 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onRename);
  *v4 = ItemContactInfoSetupIntroductionViewModel.bind();
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onRemove);
  *v5 = ItemContactInfoSetupIntroductionViewModel.bind();
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onStopSharing);
  *v6 = ItemContactInfoSetupIntroductionViewModel.bind();
  v6[1] = 0;
  sub_B65F0();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_35E34()
{
  swift_getKeyPath();
  sub_35F48();
  sub_B65B0();
}

unint64_t sub_35F48()
{
  result = qword_F00B0;
  if (!qword_F00B0)
  {
    type metadata accessor for ItemManagementSectionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F00B0);
  }

  return result;
}

uint64_t type metadata accessor for ItemManagementSectionViewModel()
{
  result = qword_F0100;
  if (!qword_F0100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*ItemManagementSectionViewModel.onRename.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_35F48();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_36104;
}

void (*ItemManagementSectionViewModel.onRemove.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_35F48();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_3629C;
}

uint64_t sub_362D8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t a3@<X6>, void *a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_35F48();
  sub_B65C0();

  v8 = (v7 + *a2);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *a4 = a3;
  a4[1] = v11;
}

uint64_t sub_363E0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_getKeyPath();
  sub_35F48();

  sub_B65B0();
}

void (*ItemManagementSectionViewModel.onStopSharing.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_35F48();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_3664C;
}

void sub_367A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}

uint64_t ItemManagementSectionViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onRename + 8);

  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onRemove + 8);

  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onStopSharing + 8);

  v6 = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel___observationRegistrar;
  v7 = sub_B6600();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t ItemManagementSectionViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onRename + 8);

  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onRemove + 8);

  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onStopSharing + 8);

  v6 = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel___observationRegistrar;
  v7 = sub_B6600();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_369BC()
{
  result = sub_B69C0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_B6600();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_36AD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t DelegatedURLShare.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_B64C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DelegatedURLShare.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DelegatedURLShare() + 20);
  v4 = sub_B6550();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DelegatedURLShare()
{
  result = qword_F0230;
  if (!qword_F0230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DelegatedURLShare.accessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DelegatedURLShare() + 24);
  v4 = sub_B65A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DelegatedURLShare.accessoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for DelegatedURLShare() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DelegatedURLShare.accessoryType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DelegatedURLShare();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t DelegatedURLShare.init(url:expirationDate:accessoryId:accessoryName:accessoryType:numberOfViews:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a6;
  v16 = sub_B64C0();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for DelegatedURLShare();
  v18 = v17[5];
  v19 = sub_B6550();
  (*(*(v19 - 8) + 32))(a8 + v18, a2, v19);
  v20 = v17[6];
  v21 = sub_B65A0();
  result = (*(*(v21 - 8) + 32))(a8 + v20, a3, v21);
  v23 = (a8 + v17[7]);
  *v23 = a4;
  v23[1] = a5;
  *(a8 + v17[8]) = v15;
  *(a8 + v17[9]) = a7;
  return result;
}

void DelegatedURLShare.hash(into:)()
{
  v1 = v0;
  sub_B64C0();
  sub_377B8(&qword_F01B0, &type metadata accessor for URL);
  sub_B7880();
  v2 = type metadata accessor for DelegatedURLShare();
  v3 = v2[5];
  sub_B6550();
  sub_377B8(&qword_F01B8, &type metadata accessor for Date);
  sub_B7880();
  v4 = v2[6];
  sub_B65A0();
  sub_377B8(&qword_F01C0, &type metadata accessor for UUID);
  sub_B7880();
  v5 = (v1 + v2[7]);
  v6 = *v5;
  v7 = v5[1];
  sub_B7980();
  sub_B7EC0(*(v1 + v2[8]));
  sub_B7EC0(*(v1 + v2[9]));
}

Swift::Int DelegatedURLShare.hashValue.getter()
{
  v1 = v0;
  sub_B7EB0();
  sub_B64C0();
  sub_377B8(&qword_F01B0, &type metadata accessor for URL);
  sub_B7880();
  v2 = type metadata accessor for DelegatedURLShare();
  v3 = v2[5];
  sub_B6550();
  sub_377B8(&qword_F01B8, &type metadata accessor for Date);
  sub_B7880();
  v4 = v2[6];
  sub_B65A0();
  sub_377B8(&qword_F01C0, &type metadata accessor for UUID);
  sub_B7880();
  v5 = (v1 + v2[7]);
  v6 = *v5;
  v7 = v5[1];
  sub_B7980();
  sub_B7EC0(*(v1 + v2[8]));
  sub_B7EC0(*(v1 + v2[9]));
  return sub_B7EE0();
}

Swift::Int sub_371F8(int *a1)
{
  v3 = v1;
  sub_B7EB0();
  sub_B64C0();
  sub_377B8(&qword_F01B0, &type metadata accessor for URL);
  sub_B7880();
  v4 = a1[5];
  sub_B6550();
  sub_377B8(&qword_F01B8, &type metadata accessor for Date);
  sub_B7880();
  v5 = a1[6];
  sub_B65A0();
  sub_377B8(&qword_F01C0, &type metadata accessor for UUID);
  sub_B7880();
  v6 = (v3 + a1[7]);
  v7 = *v6;
  v8 = v6[1];
  sub_B7980();
  sub_B7EC0(*(v3 + a1[8]));
  sub_B7EC0(*(v3 + a1[9]));
  return sub_B7EE0();
}

void sub_37374(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_B64C0();
  sub_377B8(&qword_F01B0, &type metadata accessor for URL);
  sub_B7880();
  v5 = a2[5];
  sub_B6550();
  sub_377B8(&qword_F01B8, &type metadata accessor for Date);
  sub_B7880();
  v6 = a2[6];
  sub_B65A0();
  sub_377B8(&qword_F01C0, &type metadata accessor for UUID);
  sub_B7880();
  v7 = (v4 + a2[7]);
  v8 = *v7;
  v9 = v7[1];
  sub_B7980();
  sub_B7EC0(*(v4 + a2[8]));
  sub_B7EC0(*(v4 + a2[9]));
}

Swift::Int sub_374DC(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_B7EB0();
  sub_B64C0();
  sub_377B8(&qword_F01B0, &type metadata accessor for URL);
  sub_B7880();
  v5 = a2[5];
  sub_B6550();
  sub_377B8(&qword_F01B8, &type metadata accessor for Date);
  sub_B7880();
  v6 = a2[6];
  sub_B65A0();
  sub_377B8(&qword_F01C0, &type metadata accessor for UUID);
  sub_B7880();
  v7 = (v4 + a2[7]);
  v8 = *v7;
  v9 = v7[1];
  sub_B7980();
  sub_B7EC0(*(v4 + a2[8]));
  sub_B7EC0(*(v4 + a2[9]));
  return sub_B7EE0();
}

BOOL _s13FindMyAppCore17DelegatedURLShareV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_B6490() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DelegatedURLShare();
  v5 = v4[5];
  if ((sub_B6510() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  if ((sub_B6570() & 1) == 0)
  {
    return 0;
  }

  v7 = v4[7];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  return (v11 || (sub_B7DD0() & 1) != 0) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]);
}

unint64_t sub_3771C()
{
  result = qword_F01C8;
  if (!qword_F01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F01C8);
  }

  return result;
}

uint64_t sub_377B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_37824(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_B64C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_B6550();
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

  v14 = sub_B65A0();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_37990(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_B64C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_B6550();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_B65A0();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
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

uint64_t sub_37AE4()
{
  result = sub_B64C0();
  if (v1 <= 0x3F)
  {
    result = sub_B6550();
    if (v2 <= 0x3F)
    {
      result = sub_B65A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t LostAccessory.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_B65A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LostAccessory.capabilities.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for LostAccessory();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for LostAccessory()
{
  result = qword_F02F8;
  if (!qword_F02F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LostAccessory.capabilities.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for LostAccessory();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t LostAccessory.accessoryType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LostAccessory();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t LostAccessory.init(id:capabilities:accessoryType:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_B65A0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for LostAccessory();
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

unint64_t sub_37DBC()
{
  result = qword_F0278;
  if (!qword_F0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0278);
  }

  return result;
}

unint64_t sub_37E14()
{
  result = qword_F0280;
  if (!qword_F0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0280);
  }

  return result;
}

unint64_t sub_37E6C()
{
  result = qword_F0288;
  if (!qword_F0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0288);
  }

  return result;
}

unint64_t sub_37EC4()
{
  result = qword_F0290;
  if (!qword_F0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0290);
  }

  return result;
}

unint64_t sub_37F1C()
{
  result = qword_F0298;
  if (!qword_F0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0298);
  }

  return result;
}

uint64_t sub_37F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_B65A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_38060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_B65A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_38118()
{
  result = sub_B65A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DelegatedSharesUpdater.init(stream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0338, &unk_BF940);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_38248(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0338, &unk_BF940);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_382D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0338, &unk_BF940);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DelegatedSharesUpdater()
{
  result = qword_F0398;
  if (!qword_F0398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3839C()
{
  sub_38408();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_38408()
{
  if (!qword_F03A8)
  {
    type metadata accessor for DelegatedURLShare();
    v0 = sub_B7AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_F03A8);
    }
  }
}

FindMyAppCore::ItemProximityProvider::Proximity_optional __swiftcall ItemProximityProvider.Proximity.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_E29E0;
  v8._object = object;
  v5 = sub_B7D70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ItemProximityProvider.Proximity.rawValue.getter()
{
  v1 = 7496038;
  if (*v0 != 1)
  {
    v1 = 0x54426E6968746977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_3851C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7496038;
  if (v2 != 1)
  {
    v4 = 0x54426E6968746977;
    v3 = 0xED000065676E6152;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7496038;
  if (*a2 != 1)
  {
    v8 = 0x54426E6968746977;
    v7 = 0xED000065676E6152;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_B7DD0();
  }

  return v11 & 1;
}

Swift::Int sub_38628()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7980();

  return sub_B7EE0();
}

uint64_t sub_386D0()
{
  *v0;
  *v0;
  sub_B7980();
}

Swift::Int sub_38764()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7980();

  return sub_B7EE0();
}

void sub_38814(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7496038;
  if (v2 != 1)
  {
    v5 = 0x54426E6968746977;
    v4 = 0xED000065676E6152;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ItemProximityProvider.init(stream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

unint64_t sub_388F4()
{
  result = qword_F03E0;
  if (!qword_F03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F03E0);
  }

  return result;
}

uint64_t sub_3895C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_389E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ItemProximityProvider()
{
  result = qword_F0440;
  if (!qword_F0440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_38AB0()
{
  sub_38B1C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_38B1C()
{
  if (!qword_F0450)
  {
    v0 = sub_B7AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_F0450);
    }
  }
}

uint64_t getEnumTagSinglePayload for ItemProximityProvider.Proximity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemProximityProvider.Proximity(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ItemContactInfoEditItemsProvider.init(visibleEditItemsBlock:userInteractableEditItemsBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_38CEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_38D34(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t ShareLiveLocationURLGenerator.init(maxShareLocationLimit:shareURLGenerator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for SPBeaconSharingError(0);
  sub_38F44(&_swiftEmptyArrayStorage);
  sub_39054();
  result = sub_B6430();
  a4[2] = a1;
  a4[3] = v9;
  *a4 = a2;
  a4[1] = a3;
  return result;
}

unint64_t sub_38E14(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_B7EB0();
  sub_B7980();
  v6 = sub_B7EE0();

  return sub_38E8C(a1, a2, v6);
}

unint64_t sub_38E8C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_B7DD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_38F44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0480, &qword_BFB20);
    v3 = sub_B7D60();
    v4 = a1 + 32;

    while (1)
    {
      sub_390BC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_38E14(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_3912C(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_39054()
{
  result = qword_EEC98;
  if (!qword_EEC98)
  {
    type metadata accessor for SPBeaconSharingError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEC98);
  }

  return result;
}

uint64_t sub_390BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0488, &qword_BFB28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_3912C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_39160()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_FAD48);
  __swift_project_value_buffer(v0, qword_FAD48);
  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t sub_39208@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_B6DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_A310(v2, &v17 - v11, &qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_B6B50();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_B7B50();
    v16 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t DelegatedSharesManagementView.init(viewModel:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for DelegatedSharesManagementView();
  v3 = a1 + *(v2 + 24);
  *v3 = xmmword_BFB50;
  *(v3 + 1) = xmmword_BFB60;
  *(v3 + 4) = 0x4000000000000000;
  v4 = (a1 + *(v2 + 20));
  type metadata accessor for DelegatedSharesManagementViewModel();
  result = sub_B75B0();
  *v4 = v6;
  v4[1] = v7;
  return result;
}

uint64_t DelegatedSharesManagementView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_B6980();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v41 - v10;
  v46 = sub_B6850();
  v43 = *(v46 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v46);
  v42 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0528, &unk_BFBA0);
  v45 = *(v47 - 8);
  v14 = *(v45 + 64);
  __chkstk_darwin(v47);
  v44 = v41 - v15;
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v16 = sub_B62F0();
  v17 = __swift_project_value_buffer(v16, qword_FAD48);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v11, v17, v16);
  (*(v18 + 56))(v11, 0, 1, v16);
  v19 = sub_B78D0();
  v41[1] = v20;
  v41[2] = v19;
  sub_A194(v11, &unk_F17B0, &qword_BE7D0);
  v53 = &type metadata for SolariumFeatureFlag;
  v54 = sub_28360();
  v21 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v50);
  if (v21)
  {
    v22 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_40D5C();
    if (qword_EEB08 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v3, qword_FAEA0);
    (*(v4 + 16))(v7, v23, v3);
    v22 = sub_B7B90();
  }

  v41[0] = v22;
  v24 = __chkstk_darwin(v22);
  __chkstk_darwin(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0540, &qword_BFBB0);
  sub_40DB8();
  sub_A8CC(&qword_F0550, &qword_F0540, &qword_BFBB0);
  v25 = v42;
  v26 = sub_B6840();
  __chkstk_darwin(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0558, &qword_BFBB8);
  v28 = sub_42B9C(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0568, &qword_BFBC0);
  v30 = sub_A8CC(&qword_F0570, &qword_F0568, &qword_BFBC0);
  v50 = v29;
  v51 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v44;
  v33 = v46;
  sub_B7450();
  (*(v43 + 8))(v25, v33);
  v34 = (v2 + *(type metadata accessor for DelegatedSharesManagementView() + 20));
  v36 = *v34;
  v35 = v34[1];
  v50 = v36;
  v51 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v37 = v49;
  swift_getKeyPath();
  v50 = v37;
  sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v38 = *(v37 + 16);

  v50 = v33;
  v51 = v27;
  v52 = v28;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v47;
  sub_B73A0();
  return (*(v45 + 8))(v32, v39);
}

uint64_t sub_39BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_B7550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for DelegatedSharesManagementView() + 20));
  v11 = *v9;
  v10 = v9[1];
  v16[2] = v11;
  v16[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  sub_42D1C();

  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_B7580();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v14 = sub_B7570();

  result = (*(v5 + 8))(v8, v4);
  *a2 = v14;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  return result;
}

uint64_t sub_39DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0540, &qword_BFBB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  *v8 = sub_B6EA0();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06B0, &qword_BFDA0);
  sub_3AEC4(a1, &v8[*(v9 + 44)]);
  sub_4182C(v8, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_39ED4(uint64_t a1)
{
  v2 = sub_B6F50();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0568, &qword_BFBC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-1] - v7;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13[3] = &type metadata for SolariumFeatureFlag;
  v13[4] = sub_28360();
  v9 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (v9)
  {
    v10 = sub_B6F30();
  }

  else
  {
    v10 = sub_B6F40();
  }

  __chkstk_darwin(v10);
  *(&v12 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0630, &unk_BFD20);
  sub_41428();
  sub_B6A80();
  sub_A8CC(&qword_F0570, &qword_F0568, &qword_BFBC0);
  sub_B6F60();
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_3A150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v84 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0690, &unk_BFD50);
  v2 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v4 = &v70 - v3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0680, &qword_BFD48);
  v5 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v75 = &v70 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0698, &qword_BFD60);
  v7 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v82 = &v70 - v8;
  v9 = type metadata accessor for DelegatedSharesManagementView();
  v76 = *(v9 - 8);
  v10 = *(v76 + 64);
  __chkstk_darwin(v9);
  v11 = sub_B7950();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v70 - v18;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0658, &unk_BFD30);
  v20 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v71 = &v70 - v21;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0648, &unk_C1FC0);
  v22 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v73 = &v70 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0630, &unk_BFD20);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v79 = &v70 - v26;
  sub_B7A60();
  v78 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v88 = &type metadata for SolariumFeatureFlag;
  v89 = sub_28360();
  v27 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v86);
  if (v27)
  {
    v75 = v9;
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v28 = sub_B62F0();
    v29 = __swift_project_value_buffer(v28, qword_FAD48);
    v30 = *(v28 - 8);
    (*(v30 + 16))(v19, v29, v28);
    (*(v30 + 56))(v19, 0, 1, v28);
    v31 = sub_B78D0();
    v33 = v32;
    sub_A194(v19, &unk_F17B0, &qword_BE7D0);
    (*(v12 + 104))(v15, enum case for String.ButtonType.cancel(_:), v11);
    v34 = sub_B7960();
    v36 = v35;
    (*(v12 + 8))(v15, v11);
    v37 = v77;
    sub_42C40(v77, &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DelegatedSharesManagementView);
    v38 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v39 = swift_allocObject();
    v40 = sub_41914(&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38, type metadata accessor for DelegatedSharesManagementView);
    v86 = v31;
    v87 = v33;
    __chkstk_darwin(v40);
    *(&v70 - 4) = &v86;
    *(&v70 - 3) = v34;
    *(&v70 - 2) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06A0, &unk_C06B0);
    sub_A8CC(&qword_F06A8, &qword_F06A0, &unk_C06B0);
    v41 = v71;
    sub_B7610();

    v42 = (v37 + *(v75 + 5));
    v44 = *v42;
    v43 = v42[1];
    v86 = v44;
    v87 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
    sub_B75C0();
    v45 = v85;
    swift_getKeyPath();
    v86 = v45;
    sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
    sub_B65C0();

    LOBYTE(v33) = *(v45 + 16);

    KeyPath = swift_getKeyPath();
    v47 = swift_allocObject();
    *(v47 + 16) = v33;
    v48 = (v41 + *(v72 + 36));
    *v48 = KeyPath;
    v48[1] = sub_42D18;
    v48[2] = v47;
    sub_415C0();
    v49 = v73;
    sub_B7360();
    sub_A194(v41, &qword_F0658, &unk_BFD30);
    v50 = &qword_F0648;
    v51 = &unk_C1FC0;
    sub_A310(v49, v82, &qword_F0648, &unk_C1FC0);
    swift_storeEnumTagMultiPayload();
    sub_4150C(&qword_F0640, &qword_F0648, &unk_C1FC0, sub_415C0);
  }

  else
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v52 = sub_B62F0();
    v53 = __swift_project_value_buffer(v52, qword_FAD48);
    v54 = *(v52 - 8);
    (*(v54 + 16))(v19, v53, v52);
    (*(v54 + 56))(v19, 0, 1, v52);
    v55 = sub_B78D0();
    v57 = v56;
    sub_A194(v19, &unk_F17B0, &qword_BE7D0);
    v86 = v55;
    v87 = v57;
    v58 = v77;
    sub_42C40(v77, &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DelegatedSharesManagementView);
    v59 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v60 = swift_allocObject();
    sub_41914(&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v60 + v59, type metadata accessor for DelegatedSharesManagementView);
    sub_97E8();
    sub_B7640();
    v61 = (v58 + *(v9 + 20));
    v63 = *v61;
    v62 = v61[1];
    v86 = v63;
    v87 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
    sub_B75C0();
    v64 = v85;
    swift_getKeyPath();
    v86 = v64;
    sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
    sub_B65C0();

    LOBYTE(v59) = *(v64 + 16);

    v65 = swift_getKeyPath();
    v66 = swift_allocObject();
    *(v66 + 16) = v59;
    v67 = &v4[*(v74 + 36)];
    *v67 = v65;
    v67[1] = sub_417AC;
    v67[2] = v66;
    sub_416A4();
    v49 = v75;
    sub_B7360();
    sub_A194(v4, &qword_F0690, &unk_BFD50);
    v50 = &qword_F0680;
    v51 = &qword_BFD48;
    sub_A310(v49, v82, &qword_F0680, &qword_BFD48);
    swift_storeEnumTagMultiPayload();
    sub_4150C(&qword_F0640, &qword_F0648, &unk_C1FC0, sub_415C0);
  }

  sub_4150C(&qword_F0678, &qword_F0680, &qword_BFD48, sub_416A4);
  v68 = v79;
  sub_B6F00();
  sub_A194(v49, v50, v51);
  sub_AB00(v68, v84, &qword_F0630, &unk_BFD20);
}

uint64_t sub_3AD7C()
{
  v0 = sub_B6B50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_39208(v4);
  sub_B6B40();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_3AEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v164 = type metadata accessor for DelegatedSharesManagementView();
  v157 = *(v164 - 8);
  v3 = *(v157 + 64);
  __chkstk_darwin(v164);
  v161 = v4;
  v162 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_B6E50();
  v151 = *(v152 - 8);
  v5 = *(v151 + 64);
  __chkstk_darwin(v152);
  v149 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06B8, &qword_BFDA8);
  v131 = *(v137 - 8);
  v7 = *(v131 + 64);
  __chkstk_darwin(v137);
  v130 = &v123 - v8;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06C0, &qword_BFDB0);
  v136 = *(v139 - 8);
  v9 = *(v136 + 64);
  __chkstk_darwin(v139);
  v133 = &v123 - v10;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06C8, &qword_BFDB8);
  v134 = *(v138 - 8);
  v11 = *(v134 + 64);
  __chkstk_darwin(v138);
  v132 = &v123 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06D0, &qword_BFDC0);
  v140 = *(v141 - 8);
  v13 = *(v140 + 64);
  __chkstk_darwin(v141);
  v135 = &v123 - v14;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06D8, &qword_BFDC8);
  v15 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v142 = &v123 - v16;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06E0, &qword_BFDD0);
  v145 = *(v146 - 8);
  v17 = *(v145 + 64);
  __chkstk_darwin(v146);
  v144 = &v123 - v18;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06E8, &qword_BFDD8);
  v19 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v150 = &v123 - v20;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06F0, &qword_BFDE0);
  v154 = *(v156 - 8);
  v21 = *(v154 + 64);
  __chkstk_darwin(v156);
  v153 = &v123 - v22;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06F8, &qword_BFDE8);
  v159 = *(v160 - 8);
  v23 = *(v159 + 64);
  v24 = __chkstk_darwin(v160);
  v158 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v155 = &v123 - v26;
  v123 = sub_B64C0();
  v27 = *(v123 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v123);
  v30 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for ShareWebLinkPlatterView(0);
  v31 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v33 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0700, &qword_BFDF0);
  v34 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v36 = &v123 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0708, &qword_BFDF8);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v148 = &v123 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v165 = &v123 - v41;
  sub_B7A60();
  v147 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v42 = *(v164 + 20);
  v167 = a1;
  v43 = (a1 + v42);
  v44 = v43[1];
  v168 = *v43;
  v45 = v168;
  v169 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v47 = v174;
  swift_getKeyPath();
  v168 = v47;
  v126 = sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v48 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  v49 = v123;
  (*(v27 + 16))(v30, v47 + v48, v123);

  v129 = v45;
  v168 = v45;
  v169 = v44;
  v128 = v44;
  v127 = v46;
  sub_B75C0();
  v50 = v173;
  (*(v27 + 32))(v33, v30, v49);
  v51 = v124;
  v52 = &v33[*(v124 + 20)];
  *v52 = sub_418A4;
  v52[1] = v50;
  v171 = &type metadata for SolariumFeatureFlag;
  v53 = sub_28360();
  v172 = v53;

  v54 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v168);
  if (v54)
  {
    v55 = 26.0;
    v56 = 16.0;
    v57 = v167;
    v58 = v137;
  }

  else
  {
    v58 = v137;
    if (qword_EEAB8 != -1)
    {
      swift_once();
    }

    v55 = *(&xmmword_FAD90 + 1);
    v56 = *&xmmword_FAD90;
    v57 = v167;
  }

  v59 = &v33[*(v51 + 24)];
  *v59 = v56;
  v59[1] = v55;
  v60 = sub_B70C0();
  v171 = &type metadata for SolariumFeatureFlag;
  v172 = v53;
  v61 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v168);
  v62 = 16;
  if (v61)
  {
    v62 = 8;
  }

  v63 = v164;
  v64 = *(v57 + *(v164 + 24) + v62);
  sub_B6A10();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  sub_41914(v33, v36, type metadata accessor for ShareWebLinkPlatterView);
  v73 = &v36[*(v125 + 36)];
  *v73 = v60;
  *(v73 + 1) = v66;
  *(v73 + 2) = v68;
  *(v73 + 3) = v70;
  *(v73 + 4) = v72;
  v73[40] = 0;
  sub_4197C();
  sub_B7360();
  v74 = sub_A194(v36, &qword_F0700, &qword_BFDF0);
  __chkstk_darwin(v74);
  *(&v123 - 2) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0720, &qword_BFE28);
  sub_A8CC(&qword_F0728, &qword_F0720, &qword_BFE28);
  v75 = v130;
  sub_B7190();
  sub_B70C0();
  v76 = v57 + *(v63 + 24);
  v77 = *(v76 + 32);
  v78 = sub_A8CC(&qword_F0730, &qword_F06B8, &qword_BFDA8);
  v79 = v133;
  sub_B7270();
  (*(v131 + 8))(v75, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0738, &qword_BFE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_BD800;
  LOBYTE(v63) = sub_B70E0();
  *(inited + 32) = v63;
  v81 = sub_B7100();
  *(inited + 33) = v81;
  sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v63)
  {
    sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v81)
  {
    sub_B70F0();
  }

  v82 = *(v76 + 24);
  v168 = v58;
  v169 = v78;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v132;
  v85 = v139;
  sub_B7270();
  (*(v136 + 8))(v79, v85);
  v168 = v85;
  v169 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v86 = v135;
  v87 = v138;
  sub_B7390();
  (*(v134 + 8))(v84, v87);
  v88 = v149;
  sub_B6E40();
  v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0740, &qword_BFE38) + 36);
  v90 = v151;
  v91 = v142;
  v92 = v152;
  (*(v151 + 16))(&v142[v89], v88, v152);
  v93 = *(v90 + 56);
  v93(v91 + v89, 0, 1, v92);
  (*(v140 + 32))(v91, v86, v141);
  KeyPath = swift_getKeyPath();
  v95 = (v91 + *(v143 + 36));
  v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0748, &qword_BFE70) + 28);
  (*(v90 + 32))(v95 + v96, v88, v92);
  v93(v95 + v96, 0, 1, v92);
  *v95 = KeyPath;
  sub_41A48();
  v97 = v144;
  sub_B7370();
  sub_A194(v91, &qword_F06D8, &qword_BFDC8);
  v98 = v162;
  sub_42C40(v167, v162, type metadata accessor for DelegatedSharesManagementView);
  v99 = (*(v157 + 80) + 16) & ~*(v157 + 80);
  v100 = swift_allocObject();
  sub_41914(v98, v100 + v99, type metadata accessor for DelegatedSharesManagementView);
  v101 = v150;
  (*(v145 + 32))(v150, v97, v146);
  v102 = (v101 + *(v166 + 36));
  *v102 = sub_41C9C;
  v102[1] = v100;
  v102[2] = 0;
  v102[3] = 0;
  v168 = v129;
  v169 = v128;
  sub_B75C0();
  v103 = v173;
  swift_getKeyPath();
  v168 = v103;
  sub_B65C0();

  LOBYTE(v100) = *(v103 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss);

  LOBYTE(v168) = v100;
  sub_42C40(v167, v98, type metadata accessor for DelegatedSharesManagementView);
  v104 = swift_allocObject();
  sub_41914(v98, v104 + v99, type metadata accessor for DelegatedSharesManagementView);
  v105 = sub_41DA8();
  v106 = v153;
  v107 = v166;
  sub_B7470();

  sub_A194(v101, &qword_F06E8, &qword_BFDD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0780, &qword_C0EC0);
  v108 = *(sub_B6C80() - 8);
  v109 = *(v108 + 72);
  v110 = (*(v108 + 80) + 32) & ~*(v108 + 80);
  *(swift_allocObject() + 16) = xmmword_BDA30;
  sub_B6C70();
  v168 = v107;
  v169 = &type metadata for Bool;
  v170 = v105;
  v171 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v111 = v155;
  v112 = v156;
  sub_B7300();

  (*(v154 + 8))(v106, v112);
  v113 = v165;
  v114 = v148;
  sub_A310(v165, v148, &qword_F0708, &qword_BFDF8);
  v115 = v159;
  v116 = *(v159 + 16);
  v117 = v158;
  v118 = v160;
  v116(v158, v111, v160);
  v119 = v163;
  sub_A310(v114, v163, &qword_F0708, &qword_BFDF8);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0788, &unk_BFEB0);
  v116((v119 + *(v120 + 48)), v117, v118);
  v121 = *(v115 + 8);
  v121(v111, v118);
  sub_A194(v113, &qword_F0708, &qword_BFDF8);
  v121(v117, v118);
  sub_A194(v114, &qword_F0708, &qword_BFDF8);
}

uint64_t sub_3C250@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = sub_B62F0();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0790, &qword_BFEC8);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  v9 = __chkstk_darwin(v7);
  v50 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0798, &qword_BFED0);
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  v14 = __chkstk_darwin(v12);
  v44 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v42 - v16;
  sub_B7A60();
  v47 = sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  v42[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F07A0, &qword_BFED8);
  sub_A8CC(&qword_F07A8, &qword_F07A0, &qword_BFED8);
  v19 = sub_B7720();
  v42[1] = v42;
  __chkstk_darwin(v19);
  v42[-2] = a1;
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6E60();
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v3, qword_FAD48);
  (*(v43 + 16))(v6, v20, v3);
  v21 = sub_B71B0();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v53 = v21;
  v54 = v23;
  v55 = v25 & 1;
  v56 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F07B0, &qword_BFEE0);
  sub_41F74();
  v28 = v52;
  sub_B7730();
  v30 = v44;
  v29 = v45;
  v31 = *(v45 + 16);
  v42[0] = v17;
  v32 = v46;
  v31(v44, v17, v46);
  v33 = v48;
  v43 = *(v48 + 16);
  v34 = v50;
  v35 = v28;
  v36 = v49;
  (v43)(v50, v35, v49);
  v37 = v51;
  v31(v51, v30, v32);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0820, &qword_BFF20);
  (v43)(&v37[*(v38 + 48)], v34, v36);
  v39 = *(v33 + 8);
  v39(v52, v36);
  v40 = *(v29 + 8);
  v40(v42[0], v32);
  v39(v34, v36);
  v40(v30, v32);
}

uint64_t sub_3C818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a1;
  v139 = a2;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0890, &qword_BFFD8);
  v2 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v4 = &v115 - v3;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0898, &qword_BFFE0);
  v5 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v135 = &v115 - v6;
  v128 = type metadata accessor for ShareLinkRow();
  v7 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F08A0, &qword_BFFE8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v138 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v137 = &v115 - v14;
  v15 = sub_B6550();
  v126 = *(v15 - 8);
  v127 = v15;
  v16 = *(v126 + 64);
  __chkstk_darwin(v15);
  v125 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v115 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F08A8, &unk_BFFF0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v132 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v131 = &v115 - v27;
  v28 = __chkstk_darwin(v26);
  v149 = &v115 - v29;
  __chkstk_darwin(v28);
  v150 = &v115 - v30;
  sub_B7A60();
  v130 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v133 = v4;
  v134 = v9;
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v31 = sub_B62F0();
  v32 = __swift_project_value_buffer(v31, qword_FAD48);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v34(v21, v32, v31);
  v35 = *(v33 + 56);
  v35(v21, 0, 1, v31);
  v36 = sub_B78D0();
  v116 = v37;
  v117 = v36;
  sub_A194(v21, &unk_F17B0, &qword_BE7D0);
  v121 = v33 + 16;
  v122 = v32;
  v120 = v34;
  v34(v21, v32, v31);
  v118 = v31;
  v119 = v35;
  v123 = v33 + 56;
  v35(v21, 0, 1, v31);
  sub_B78D0();
  sub_A194(v21, &unk_F17B0, &qword_BE7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_BDA30;
  v39 = type metadata accessor for DelegatedSharesManagementView();
  v40 = v144;
  v41 = (v144 + *(v39 + 20));
  v42 = *v41;
  v147 = v41[1];
  v148 = v42;
  *&v165 = v42;
  *(&v165 + 1) = v147;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v43 = *&v163[0];
  swift_getKeyPath();
  *&v165 = v43;
  v145 = sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v44 = v43 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  v115 = type metadata accessor for DelegatedURLShare();
  v45 = *(v44 + *(v115 + 36));

  *(v38 + 56) = &type metadata for UInt;
  *(v38 + 64) = &protocol witness table for UInt;
  *(v38 + 32) = v45;
  v46 = sub_B7920();
  v140 = v47;

  v124 = (v40 + *(v39 + 24));
  v48 = v124[2];
  *&v165 = 1;
  WORD4(v165) = 256;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0850, &qword_BFF60);
  v50 = sub_A8CC(&qword_F0858, &qword_F0850, &qword_BFF60);
  v144 = v49;
  v142 = v50;
  v51 = sub_B76A0();
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0738, &qword_BFE30);
  inited = swift_initStackObject();
  v141 = xmmword_BD800;
  *(inited + 16) = xmmword_BD800;
  v53 = sub_B70C0();
  *(inited + 32) = v53;
  v54 = sub_B70D0();
  *(inited + 33) = v54;
  v55 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v53)
  {
    v55 = sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v54)
  {
    v55 = sub_B70F0();
  }

  sub_B6A10();
  *&v165 = v117;
  *(&v165 + 1) = v116;
  *&v166 = v46;
  *(&v166 + 1) = v140;
  *&v167 = v51;
  BYTE8(v167) = v55;
  *&v168 = v56;
  *(&v168 + 1) = v57;
  *&v169 = v58;
  *(&v169 + 1) = v59;
  v170 = 0;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F08B0, &qword_C0000);
  sub_421CC(&qword_F08B8, &qword_F08B0, &qword_C0000, sub_429A8);
  v140 = v60;
  sub_B7360();
  v163[2] = v167;
  v163[3] = v168;
  v163[4] = v169;
  v164 = v170;
  v163[0] = v165;
  v163[1] = v166;
  sub_A194(v163, &qword_F08B0, &qword_C0000);
  v61 = v118;
  v120(v21, v122, v118);
  v119(v21, 0, 1, v61);
  v62 = sub_B78D0();
  v122 = v63;
  v123 = v62;
  sub_A194(v21, &unk_F17B0, &qword_BE7D0);
  *&v157 = v148;
  *(&v157 + 1) = v147;
  sub_B75C0();
  v64 = *&v155[0];
  swift_getKeyPath();
  *&v157 = v64;
  sub_B65C0();

  v65 = v64 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  v67 = v125;
  v66 = v126;
  v68 = v127;
  (*(v126 + 16))(v125, v65 + *(v115 + 20), v127);

  v69 = sub_B6540();
  v71 = v70;
  (*(v66 + 8))(v67, v68);
  *&v157 = 1;
  WORD4(v157) = 256;
  v72 = sub_B76A0();
  v73 = swift_initStackObject();
  *(v73 + 16) = v141;
  LOBYTE(v67) = sub_B70C0();
  *(v73 + 32) = v67;
  v74 = sub_B70D0();
  *(v73 + 33) = v74;
  v75 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v67)
  {
    v75 = sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v74)
  {
    v75 = sub_B70F0();
  }

  sub_B6A10();
  *&v157 = v123;
  *(&v157 + 1) = v122;
  *&v158 = v69;
  *(&v158 + 1) = v71;
  *&v159 = v72;
  BYTE8(v159) = v75;
  *&v160 = v76;
  *(&v160 + 1) = v77;
  *&v161 = v78;
  *(&v161 + 1) = v79;
  v162 = 0;
  sub_B7360();
  v155[2] = v159;
  v155[3] = v160;
  v155[4] = v161;
  v156 = v162;
  v155[0] = v157;
  v155[1] = v158;
  sub_A194(v155, &qword_F08B0, &qword_C0000);
  v80 = *v124;
  v81 = v124[1];
  v82 = v124[3];
  v83 = v124[4];
  v153 = v148;
  v154 = v147;
  sub_B75C0();
  v84 = v151;
  swift_getKeyPath();
  v153 = v84;
  sub_B65C0();

  v85 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  v86 = v128;
  v87 = *(v128 + 20);
  v88 = sub_B64C0();
  v89 = v134;
  (*(*(v88 - 8) + 16))(v134 + v87, v84 + v85, v88);

  *v89 = v80;
  v89[1] = v81;
  v89[2] = v48;
  v89[3] = v82;
  v89[4] = v83;
  v90 = (v89 + *(v86 + 24));
  *v90 = 0x6172672D6E65706FLL;
  v90[1] = 0xEA00000000006870;
  v151 = 1;
  v152 = 256;
  v91 = sub_B76A0();
  v92 = v133;
  sub_42C40(v89, v133, type metadata accessor for ShareLinkRow);
  *(v92 + *(v129 + 36)) = v91;
  v93 = swift_initStackObject();
  *(v93 + 16) = v141;
  LOBYTE(v86) = sub_B70C0();
  *(v93 + 32) = v86;
  v94 = sub_B70D0();
  *(v93 + 33) = v94;
  v95 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v86)
  {
    v95 = sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v94)
  {
    v95 = sub_B70F0();
  }

  sub_B6A10();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v92;
  v105 = v135;
  sub_AB00(v104, v135, &qword_F0890, &qword_BFFD8);
  v106 = v105 + *(v136 + 36);
  *v106 = v95;
  *(v106 + 8) = v97;
  *(v106 + 16) = v99;
  *(v106 + 24) = v101;
  *(v106 + 32) = v103;
  *(v106 + 40) = 0;
  sub_421CC(&qword_F08D8, &qword_F0898, &qword_BFFE0, sub_42AB4);
  v107 = v137;
  sub_B7360();
  sub_A194(v105, &qword_F0898, &qword_BFFE0);
  sub_42BE4(v89);
  v108 = v131;
  sub_A310(v150, v131, &qword_F08A8, &unk_BFFF0);
  v109 = v149;
  v110 = v132;
  sub_A310(v149, v132, &qword_F08A8, &unk_BFFF0);
  v111 = v138;
  sub_A310(v107, v138, &qword_F08A0, &qword_BFFE8);
  v112 = v139;
  sub_A310(v108, v139, &qword_F08A8, &unk_BFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F08F0, &qword_C0010);
  sub_A310(v110, v112 + *(v113 + 48), &qword_F08A8, &unk_BFFF0);
  sub_A310(v111, v112 + *(v113 + 64), &qword_F08A0, &qword_BFFE8);
  sub_A194(v107, &qword_F08A0, &qword_BFFE8);
  sub_A194(v109, &qword_F08A8, &unk_BFFF0);
  sub_A194(v150, &qword_F08A8, &unk_BFFF0);
  sub_A194(v111, &qword_F08A0, &qword_BFFE8);
  sub_A194(v110, &qword_F08A8, &unk_BFFF0);
  sub_A194(v108, &qword_F08A8, &unk_BFFF0);
}

uint64_t sub_3D774@<X0>(uint64_t a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3D824(a1);
}

uint64_t sub_3D824@<X0>(uint64_t a1@<X8>)
{
  v159 = a1;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0828, &qword_BFF28);
  v140 = *(v160 - 8);
  v1 = *(v140 + 64);
  __chkstk_darwin(v160);
  v155 = &v135 - v2;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0830, &qword_BFF30);
  v3 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v158 = &v135 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v136 = &v135 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v138 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v137 = &v135 - v13;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0838, &unk_BFF38);
  v139 = *(v157 - 8);
  v14 = *(v139 + 64);
  __chkstk_darwin(v157);
  v154 = &v135 - v15;
  v150 = type metadata accessor for DelegatedSharesManagementView();
  v16 = *(v150 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v150);
  v141 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v19;
  __chkstk_darwin(v18);
  v162 = (&v135 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v135 - v23;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0808, &qword_BFF10);
  v144 = *(v145 - 8);
  v25 = *(v144 + 64);
  __chkstk_darwin(v145);
  v143 = &v135 - v26;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F07F8, &qword_BFF08);
  v27 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v146 = &v135 - v28;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F07E8, &qword_BFF00);
  v29 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v31 = &v135 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F07D8, &qword_BFEF8);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v149 = &v135 - v34;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F07C0, &qword_BFEE8);
  v35 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v164 = &v135 - v36;
  v169 = &type metadata for SolariumFeatureFlag;
  v148 = sub_28360();
  v170 = v148;
  v37 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v166);
  v153 = v5;
  v152 = v6;
  if (v37)
  {
    sub_B69F0();
  }

  else
  {
    sub_B69E0();
  }

  v38 = sub_B6A00();
  (*(*(v38 - 8) + 56))(v24, 0, 1, v38);
  v39 = v165;
  v40 = v162;
  sub_42C40(v165, v162, type metadata accessor for DelegatedSharesManagementView);
  v41 = *(v16 + 80);
  v42 = (v41 + 16) & ~v41;
  v43 = swift_allocObject();
  sub_41914(v40, v43 + v42, type metadata accessor for DelegatedSharesManagementView);
  v44 = v39;
  v45 = v141;
  sub_42C40(v44, v141, type metadata accessor for DelegatedSharesManagementView);
  v151 = v41;
  v46 = swift_allocObject();
  sub_41914(v45, v46 + v42, type metadata accessor for DelegatedSharesManagementView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0840, &qword_BFF58);
  sub_A8CC(&qword_F0848, &qword_F0840, &qword_BFF58);
  v47 = v143;
  sub_B66D0();
  v166 = 1;
  LOWORD(v167) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0850, &qword_BFF60);
  sub_A8CC(&qword_F0858, &qword_F0850, &qword_BFF60);
  v48 = sub_B76A0();
  v49 = v146;
  (*(v144 + 32))(v146, v47, v145);
  *(v49 + *(v142 + 36)) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0738, &qword_BFE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_BD800;
  v51 = sub_B70C0();
  *(inited + 32) = v51;
  v52 = sub_B70D0();
  *(inited + 33) = v52;
  v53 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v51)
  {
    v53 = sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v52)
  {
    v53 = sub_B70F0();
  }

  v54 = v152;
  v55 = v151;
  v56 = ~v151;
  v57 = v150;
  v58 = v165;
  v59 = *(v165 + *(v150 + 24) + 16);
  sub_B6A10();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_AB00(v49, v31, &qword_F07F8, &qword_BFF08);
  v68 = &v31[*(v147 + 36)];
  *v68 = v53;
  *(v68 + 1) = v61;
  *(v68 + 2) = v63;
  *(v68 + 3) = v65;
  *(v68 + 4) = v67;
  v68[40] = 0;
  sub_4219C();
  v69 = v149;
  sub_B7360();
  sub_A194(v31, &qword_F07E8, &qword_BFF00);
  v70 = (v58 + *(v57 + 20));
  v71 = *v70;
  v72 = v70[1];
  v166 = *v70;
  v167 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v73 = v172;
  swift_getKeyPath();
  v166 = v73;
  sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v74 = *(v73 + 16);

  KeyPath = swift_getKeyPath();
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  v77 = v164;
  sub_AB00(v69, v164, &qword_F07D8, &qword_BFEF8);
  v78 = (v77 + *(v163 + 36));
  *v78 = KeyPath;
  v78[1] = sub_42D18;
  v78[2] = v76;
  v169 = &type metadata for SolariumFeatureFlag;
  v170 = v148;
  LOBYTE(KeyPath) = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v166);
  v79 = (v54 + 48);
  if (KeyPath)
  {
    v166 = v71;
    v167 = v72;
    sub_B75C0();
    v80 = v137;
    sub_43130(v137);

    v81 = v153;
    if ((*v79)(v80, 1, v153))
    {
      sub_A194(v80, &qword_EEE08, &qword_BD530);
      v82 = 0;
      v83 = 0xE000000000000000;
    }

    else
    {
      v88 = v136;
      (*(v54 + 16))(v136, v80, v81);
      sub_A194(v80, &qword_EEE08, &qword_BD530);
      v82 = sub_B6920();
      v83 = v89;
      (*(v54 + 8))(v88, v81);
    }

    v166 = v82;
    v167 = v83;
    sub_97E8();
    v155 = sub_B7200();
    v153 = v90;
    LODWORD(v151) = v91;
    v152 = v92;
    v93 = v165;
    v94 = v162;
    sub_42C40(v165, v162, type metadata accessor for DelegatedSharesManagementView);
    sub_B7A60();
    v95 = sub_B7A50();
    v96 = (v55 + 32) & v56;
    v97 = swift_allocObject();
    *(v97 + 16) = v95;
    *(v97 + 24) = &protocol witness table for MainActor;
    sub_41914(v94, v97 + v96, type metadata accessor for DelegatedSharesManagementView);
    sub_42C40(v93, v94, type metadata accessor for DelegatedSharesManagementView);
    v98 = sub_B7A50();
    v99 = swift_allocObject();
    *(v99 + 16) = v98;
    *(v99 + 24) = &protocol witness table for MainActor;
    sub_41914(v94, v99 + v96, type metadata accessor for DelegatedSharesManagementView);
    v100 = sub_B76D0();
    v162 = &v135;
    v101 = __chkstk_darwin(v100);
    __chkstk_darwin(v101);
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
    v165 = sub_420B8();
    v134 = sub_9BD4();
    v102 = v163;
    LOBYTE(v94) = v151;
    v103 = v154;
    v104 = v155;
    v105 = v153;
    sub_B7310();
    sub_9C84(v104, v105, v94 & 1);

    v106 = v139;
    v107 = v157;
    (*(v139 + 16))(v158, v103, v157);
    swift_storeEnumTagMultiPayload();
    v108 = v161;
    v166 = v102;
    v167 = v161;
    v109 = v165;
    v168 = &type metadata for Text;
    v169 = v165;
    v170 = v134;
    v171 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v166 = v102;
    v167 = v108;
    v168 = &type metadata for Text;
    v169 = v109;
    v170 = v134;
    v171 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_B6F00();
    (*(v106 + 8))(v154, v107);
  }

  else
  {
    v166 = v71;
    v167 = v72;
    sub_B75C0();
    v84 = v138;
    sub_43130(v138);

    v85 = v153;
    if ((*v79)(v84, 1, v153))
    {
      sub_A194(v84, &qword_EEE08, &qword_BD530);
      v86 = 0;
      v87 = 0xE000000000000000;
    }

    else
    {
      v110 = v136;
      (*(v54 + 16))(v136, v84, v85);
      sub_A194(v84, &qword_EEE08, &qword_BD530);
      v86 = sub_B6920();
      v87 = v111;
      (*(v54 + 8))(v110, v85);
    }

    v166 = v86;
    v167 = v87;
    sub_97E8();
    v154 = sub_B7200();
    v153 = v112;
    LODWORD(v151) = v113;
    v152 = v114;
    v115 = v165;
    v116 = v162;
    sub_42C40(v165, v162, type metadata accessor for DelegatedSharesManagementView);
    sub_B7A60();
    v117 = sub_B7A50();
    v118 = (v55 + 32) & v56;
    v119 = swift_allocObject();
    *(v119 + 16) = v117;
    *(v119 + 24) = &protocol witness table for MainActor;
    sub_41914(v116, v119 + v118, type metadata accessor for DelegatedSharesManagementView);
    sub_42C40(v115, v116, type metadata accessor for DelegatedSharesManagementView);
    v120 = sub_B7A50();
    v121 = swift_allocObject();
    *(v121 + 16) = v120;
    *(v121 + 24) = &protocol witness table for MainActor;
    sub_41914(v116, v121 + v118, type metadata accessor for DelegatedSharesManagementView);
    v122 = sub_B76D0();
    v162 = &v135;
    v123 = __chkstk_darwin(v122);
    __chkstk_darwin(v123);
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
    v165 = sub_420B8();
    v133 = sub_9BD4();
    v124 = v163;
    LOBYTE(v116) = v151;
    v125 = v155;
    v126 = v154;
    v127 = v153;
    sub_B7400();
    sub_9C84(v126, v127, v116 & 1);

    v128 = v140;
    v129 = v160;
    (*(v140 + 16))(v158, v125, v160);
    swift_storeEnumTagMultiPayload();
    v130 = v161;
    v166 = v124;
    v167 = v161;
    v131 = v165;
    v168 = &type metadata for Text;
    v169 = v165;
    v170 = v133;
    v171 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v166 = v124;
    v167 = v130;
    v168 = &type metadata for Text;
    v169 = v131;
    v170 = v133;
    v171 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_B6F00();
    (*(v128 + 8))(v155, v129);
  }

  return sub_A194(v164, &qword_F07C0, &qword_BFEE8);
}

uint64_t sub_3ECDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - v4;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a1 + *(type metadata accessor for DelegatedSharesManagementView() + 20));
  v8 = *v6;
  v7 = v6[1];
  v14[2] = v8;
  v14[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v9 = v14[1];
  v10 = sub_B7A80();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);

  v11 = sub_B7A50();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;
  sub_30A3C(0, 0, v5, &unk_BFEC0, v12);
}

uint64_t sub_3EEB8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_B6B50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v8)
  {
    sub_39208(v7);
    sub_B6B40();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
  }
}

uint64_t sub_3F038(uint64_t a1)
{
  v1[5] = a1;
  sub_B7A60();
  v1[6] = sub_B7A50();
  v3 = sub_B7A00();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_3F0D0, v3, v2);
}

uint64_t sub_3F0D0()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for DelegatedSharesManagementView() + 20));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v0[9] = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_3F1A4;

  return sub_42FEC();
}

uint64_t sub_3F1A4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_3F2E8, v5, v4);
}

uint64_t sub_3F2E8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_3F348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_B6E30();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0860, &unk_C2200);
  return sub_3F39C(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_3F39C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a1;
  v56 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0868, &unk_BFFB0);
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  __chkstk_darwin(v2);
  v53 = (&v51 - v4);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0870, &unk_C2210);
  v5 = *(v52 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v52);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0878, &unk_BFFC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v58 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v61 = &v51 - v16;
  v17 = sub_B62F0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  v57 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6E60();
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v17, qword_FAD48);
  (*(v18 + 16))(v21, v22, v17);
  v23 = sub_B71B0();
  v25 = v24;
  v54 = v26;
  v28 = v27;
  v29 = (v55 + *(type metadata accessor for DelegatedSharesManagementView() + 20));
  v31 = *v29;
  v30 = v29[1];
  v63 = v31;
  v64 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v32 = v62;
  swift_getKeyPath();
  v63 = v32;
  sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v33 = *(v32 + 16);

  v34 = 1;
  if (v33 == 1)
  {
    v55 = v25;
    v35 = v23;
    v36 = v28;
    v37 = v11;
    sub_B6A90();
    v38 = v5[2];
    v39 = v11;
    v40 = v52;
    v38(v9, v39, v52);
    v41 = v53;
    *v53 = 0;
    *(v41 + 8) = 1;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0888, &qword_BFFD0);
    v38((v41 + *(v42 + 48)), v9, v40);
    v43 = v5[1];
    v44 = v37;
    v28 = v36;
    v23 = v35;
    v25 = v55;
    v43(v44, v40);
    v43(v9, v40);
    sub_AB00(v41, v61, &qword_F0868, &unk_BFFB0);
    v34 = 0;
  }

  v45 = v61;
  (*(v59 + 56))(v61, v34, 1, v60);
  v46 = v58;
  sub_A310(v45, v58, &qword_F0878, &unk_BFFC0);
  v47 = v56;
  *v56 = v23;
  v47[1] = v25;
  v48 = v54 & 1;
  *(v47 + 16) = v54 & 1;
  v47[3] = v28;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0880, &unk_C2220);
  sub_A310(v46, v47 + *(v49 + 48), &qword_F0878, &unk_BFFC0);
  sub_41410(v23, v25, v48);

  sub_A194(v45, &qword_F0878, &unk_BFFC0);
  sub_A194(v46, &qword_F0878, &unk_BFFC0);
  sub_9C84(v23, v25, v48);
}

uint64_t sub_3F9AC@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (a1 + *(type metadata accessor for DelegatedSharesManagementView() + 20));
  v10 = *v8;
  v9 = v8[1];
  v14[2] = v10;
  v14[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  sub_43130(v7);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v12 = (*(*(v11 - 8) + 48))(v7, 1, v11) != 1;
  sub_A194(v7, &qword_EEE08, &qword_BD530);

  *a2 = v12;
  return result;
}

uint64_t sub_3FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (a4 + *(type metadata accessor for DelegatedSharesManagementView() + 20));
  v7 = *v5;
  v6 = v5[1];
  v9[0] = v7;
  v9[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  LOWORD(v9[0]) = -256;
  sub_44260(v9);
}

uint64_t sub_3FC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = (a1 + *(type metadata accessor for DelegatedSharesManagementView() + 20));
  v15 = *v13;
  v14 = v13[1];
  v19 = v15;
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  sub_43130(v12);

  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v16 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v16 = sub_B6930();
    (*(v5 + 8))(v8, v4);
  }

  v19 = v16;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50);
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
  sub_B76E0();
}

uint64_t sub_3FFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25[2] = a4;
  v25[3] = a3;
  v25[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v25 - v16;
  sub_B7A60();
  v25[0] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25[4] = sub_B68C0();
  v25[5] = v18;
  sub_B68A0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    sub_A194(v13, &qword_EEF48, &unk_C01F0);
    v21 = sub_B6A00();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  }

  else
  {
    sub_B6890();
    (*(v20 + 8))(v13, v19);
  }

  (*(v6 + 16))(v9, a1, v5);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v22, v9, v5);
  sub_97E8();
  sub_B7630();
}

uint64_t sub_40324()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v0 = sub_B68D0();
  v2(v0);
}

uint64_t sub_403F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - v11;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = (a1 + *(type metadata accessor for DelegatedSharesManagementView() + 20));
  v15 = *v13;
  v14 = v13[1];
  v28 = v15;
  v29 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  sub_43130(v12);

  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v16 = sub_B6940();
    v17 = v18;
    (*(v5 + 8))(v8, v4);
  }

  v28 = v16;
  v29 = v17;
  sub_97E8();
  v19 = sub_B7200();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v25;
  return result;
}

uint64_t sub_406B0@<X0>(uint64_t a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_97E8();

  v20 = sub_B7200();
  v21 = v2;
  v4 = v3;
  v19 = v5;

  v6 = sub_B7200();
  v8 = v7;
  v10 = v9;
  sub_B6FA0();
  v11 = sub_B71C0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_9C84(v6, v8, v10 & 1);

  *a1 = v20;
  *(a1 + 8) = v4;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = 0x4020000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = v15 & 1;
  *(a1 + 72) = v17;
  sub_41410(v20, v4, v19 & 1);

  sub_41410(v11, v13, v15 & 1);

  sub_9C84(v11, v13, v15 & 1);

  sub_9C84(v20, v4, v19 & 1);
}

double sub_408CC@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = sub_B6E30();
  v19 = 0;
  sub_406B0(&v13);
  v22 = v15;
  v23 = v16;
  v20 = v13;
  v21 = v14;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[1] = v14;
  v24 = v17;
  v25[0] = v13;
  sub_A310(&v20, &v12, &qword_F0628, &qword_BFD18);
  sub_A194(v25, &qword_F0628, &qword_BFD18);
  *&v18[7] = v20;
  *&v18[71] = v24;
  *&v18[55] = v23;
  *&v18[39] = v22;
  *&v18[23] = v21;
  v8 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = v8;
  *(a1 + 81) = *&v18[64];
  result = *v18;
  v10 = *&v18[16];
  *(a1 + 17) = *v18;
  v11 = v19;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 96) = *&v18[79];
  *(a1 + 33) = v10;
  return result;
}

uint64_t sub_409E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_40AB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  return sub_42C40(v3 + v4, a2, type metadata accessor for DelegatedURLShare);
}

uint64_t sub_40B94(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for DelegatedURLShare();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_42C40(a1, v7, type metadata accessor for DelegatedURLShare);
  v8 = *a2;
  return sub_4439C(v7);
}

uint64_t sub_40C34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss);
  return result;
}

uint64_t type metadata accessor for DelegatedSharesManagementView()
{
  result = qword_F05E0;
  if (!qword_F05E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_40D5C()
{
  result = qword_F0530;
  if (!qword_F0530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_F0530);
  }

  return result;
}

unint64_t sub_40DB8()
{
  result = qword_F0548;
  if (!qword_F0548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0538, &qword_C04E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0548);
  }

  return result;
}

uint64_t sub_40EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
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

uint64_t sub_40F7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
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

void sub_41040()
{
  sub_4112C(319, &qword_EEF00, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_4112C(319, &unk_F05F0, type metadata accessor for DelegatedSharesManagementViewModel, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_4112C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_41190()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0528, &unk_BFBA0);
  sub_B6850();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0558, &qword_BFBB8);
  sub_42B9C(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0568, &qword_BFBC0);
  sub_A8CC(&qword_F0570, &qword_F0568, &qword_BFBC0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_412F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_41318(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_4135C(uint64_t a1, int a2)
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

uint64_t sub_413A4(uint64_t result, int a2, int a3)
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

uint64_t sub_41410(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_41428()
{
  result = qword_F0638;
  if (!qword_F0638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0630, &unk_BFD20);
    sub_4150C(&qword_F0640, &qword_F0648, &unk_C1FC0, sub_415C0);
    sub_4150C(&qword_F0678, &qword_F0680, &qword_BFD48, sub_416A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0638);
  }

  return result;
}

uint64_t sub_4150C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_42B9C(&qword_F0670, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_415C0()
{
  result = qword_F0650;
  if (!qword_F0650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0658, &unk_BFD30);
    sub_A8CC(&qword_F0660, &qword_F0668, &qword_C1FD0);
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0650);
  }

  return result;
}

unint64_t sub_416A4()
{
  result = qword_F0688;
  if (!qword_F0688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0690, &unk_BFD50);
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0688);
  }

  return result;
}

uint64_t sub_41820()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_88E28(*(v0 + 16));
}

uint64_t sub_4182C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0540, &qword_BFBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_418A4()
{
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies + 8);
  v3 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_delegatedURLShare;

  v2(v0 + v3);
}

uint64_t sub_41914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_4197C()
{
  result = qword_F0710;
  if (!qword_F0710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0700, &qword_BFDF0);
    sub_42B9C(&qword_F0718, type metadata accessor for ShareWebLinkPlatterView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0710);
  }

  return result;
}

unint64_t sub_41A48()
{
  result = qword_F0750;
  if (!qword_F0750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F06D8, &qword_BFDC8);
    sub_41B00();
    sub_A8CC(&qword_F0770, &qword_F0748, &qword_BFE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0750);
  }

  return result;
}

unint64_t sub_41B00()
{
  result = qword_F0758;
  if (!qword_F0758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0740, &qword_BFE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F06C8, &qword_BFDB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F06C0, &qword_BFDB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F06B8, &qword_BFDA8);
    sub_A8CC(&qword_F0730, &qword_F06B8, &qword_BFDA8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_A8CC(&qword_F0760, &qword_F0768, &qword_BFE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0758);
  }

  return result;
}

uint64_t sub_41C9C()
{
  v1 = *(type metadata accessor for DelegatedSharesManagementView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_3ECDC(v2);
}

uint64_t sub_41D28(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(type metadata accessor for DelegatedSharesManagementView() - 8) + 80);

  return sub_3EEB8(a1, a2);
}

unint64_t sub_41DA8()
{
  result = qword_F0778;
  if (!qword_F0778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F06E8, &qword_BFDD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F06D8, &qword_BFDC8);
    sub_41A48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0778);
  }

  return result;
}

uint64_t sub_41E70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_41EB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2184C;

  return sub_45900(a1, v4, v5, v6);
}

unint64_t sub_41F74()
{
  result = qword_F07B8;
  if (!qword_F07B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F07B0, &qword_BFEE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F07C0, &qword_BFEE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
    sub_420B8();
    sub_9BD4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F07B8);
  }

  return result;
}

unint64_t sub_420B8()
{
  result = qword_F07C8;
  if (!qword_F07C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F07C0, &qword_BFEE8);
    sub_4150C(&qword_F07D0, &qword_F07D8, &qword_BFEF8, sub_4219C);
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F07C8);
  }

  return result;
}

uint64_t sub_421CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_42250()
{
  result = qword_F07F0;
  if (!qword_F07F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F07F8, &qword_BFF08);
    sub_A8CC(&qword_F0800, &qword_F0808, &qword_BFF10);
    sub_A8CC(&qword_F0810, &qword_F0818, &qword_BFF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F07F0);
  }

  return result;
}

uint64_t sub_42334()
{
  v2 = *(type metadata accessor for DelegatedSharesManagementView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_F248;

  return sub_3F038(v0 + v3);
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for DelegatedSharesManagementView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_B6B50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + *(v1 + 20));
  v9 = *v8;

  v10 = v8[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4252C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DelegatedSharesManagementView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_3F348(v4, a1);
}

uint64_t sub_4260C@<X0>(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for DelegatedSharesManagementView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  return sub_3F9AC(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), a1);
}

uint64_t objectdestroy_72Tm()
{
  v1 = type metadata accessor for DelegatedSharesManagementView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_B6B50();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = (v6 + *(v1 + 20));
  v10 = *v9;

  v11 = v9[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_87Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_429A8()
{
  result = qword_F08C0;
  if (!qword_F08C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F08C8, &qword_C0008);
    sub_42A60();
    sub_A8CC(&qword_F0810, &qword_F0818, &qword_BFF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F08C0);
  }

  return result;
}

unint64_t sub_42A60()
{
  result = qword_F08D0;
  if (!qword_F08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F08D0);
  }

  return result;
}

unint64_t sub_42AB4()
{
  result = qword_F08E0;
  if (!qword_F08E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0890, &qword_BFFD8);
    sub_42B9C(&qword_F08E8, type metadata accessor for ShareLinkRow);
    sub_A8CC(&qword_F0810, &qword_F0818, &qword_BFF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F08E0);
  }

  return result;
}

uint64_t sub_42B9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_42BE4(uint64_t a1)
{
  v2 = type metadata accessor for ShareLinkRow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_42C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_42D1C()
{
  swift_getKeyPath();
  v5[0] = v0;
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v1 = v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  if (*(v1 + *(type metadata accessor for DelegatedURLShare() + 32)) == 1)
  {
    v6 = &type metadata for SolariumFeatureFlag;
    v7 = sub_28360();
    v2 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v5);
    if (v2)
    {
      return 0xD000000000000033;
    }

    else
    {
      return 0xD00000000000002CLL;
    }
  }

  else
  {
    v6 = &type metadata for SolariumFeatureFlag;
    v7 = sub_28360();
    v4 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v5);
    if (v4)
    {
      return 0xD00000000000002BLL;
    }

    else
    {
      return 0xD000000000000024;
    }
  }
}

uint64_t sub_42EA4()
{
  swift_getKeyPath();
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  return *(v0 + 16);
}

uint64_t sub_42F44()
{
  swift_getKeyPath();
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  return *(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss);
}

uint64_t sub_42FEC()
{
  *(v1 + 56) = v0;
  sub_B7A60();
  *(v1 + 64) = sub_B7A50();
  v3 = sub_B7A00();

  return _swift_task_switch(sub_43084, v3, v2);
}

uint64_t sub_43084()
{
  v8 = v0;
  v2 = v0[7];
  v1 = v0[8];

  v0[5] = &type metadata for SolariumFeatureFlag;
  v0[6] = sub_28360();
  v3 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v3)
  {
    v4 = 256;
  }

  else
  {
    v4 = 513;
  }

  v7 = v4;
  sub_44260(&v7);
  v5 = v0[1];

  return v5();
}

uint64_t sub_43130@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v64 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v64 - v10;
  swift_getKeyPath();
  v80 = v1;
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v12 = *(v1 + 17);
  v13 = v12 >> 8;
  if (v12 >> 8 <= 0xFE && v13)
  {
    v78 = v7;
    v79 = a1;
    if (v13 == 1)
    {
      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v14 = sub_B62F0();
      v15 = __swift_project_value_buffer(v14, qword_FAD48);
      v16 = *(v14 - 8);
      v17 = *(v16 + 16);
      v17(v11, v15, v14);
      v18 = *(v16 + 56);
      (v18)(v11, 0, 1, v14);
      v19 = sub_B78D0();
      v76 = v20;
      v77 = v19;
      sub_A194(v11, &unk_F17B0, &qword_BE7D0);
      v68 = v15;
      v17(v11, v15, v14);
      v69 = v16 + 16;
      v70 = v18;
      v71 = v17;
      v21 = v18;
      (v18)(v11, 0, 1, v14);
      v22 = sub_B78D0();
      v74 = v23;
      v75 = v22;
      sub_A194(v11, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v72 = *(v24 + 72);
      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = swift_allocObject();
      v73 = v26;
      *(v26 + 16) = xmmword_BD800;
      v67 = v26 + v25;
      v17(v11, v15, v14);
      (v21)(v11, 0, 1, v14);
      sub_B78D0();
      v64 = v27;
      sub_A194(v11, &unk_F17B0, &qword_BE7D0);
      v28 = enum case for AlertInfo.ActionInfo.Style.destructive<A>(_:);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      v30 = *(v29 - 8);
      v66 = *(v30 + 104);
      v31 = v78;
      v66(v78, v28, v29);
      v65 = *(v30 + 56);
      v65(v31, 0, 1, v29);
      v80 = sub_46948;
      v81 = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
      sub_B68B0();
      v71(v11, v68, v14);
      (v70)(v11, 0, 1, v14);
      sub_B78D0();
      sub_A194(v11, &unk_F17B0, &qword_BE7D0);
      v66(v31, enum case for AlertInfo.ActionInfo.Style.cancel<A>(_:), v29);
      v65(v31, 0, 1, v29);
      v80 = ItemContactInfoSetupIntroductionViewModel.bind();
      v81 = 0;
    }

    else
    {
      if ((v12 & 1) == 0)
      {
        if (qword_EEAB0 != -1)
        {
          swift_once();
        }

        v49 = sub_B62F0();
        v50 = __swift_project_value_buffer(v49, qword_FAD48);
        v51 = *(v49 - 8);
        v52 = *(v51 + 16);
        v52(v11, v50, v49);
        v53 = *(v51 + 56);
        v53(v11, 0, 1, v49);
        v54 = sub_B78D0();
        v76 = v55;
        v77 = v54;
        sub_A194(v11, &unk_F17B0, &qword_BE7D0);
        v52(v11, v50, v49);
        v53(v11, 0, 1, v49);
        v56 = sub_B78D0();
        v74 = v57;
        v75 = v56;
        sub_A194(v11, &unk_F17B0, &qword_BE7D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
        v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
        v59 = *(v58 + 72);
        v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        *(swift_allocObject() + 16) = xmmword_BDA30;
        v52(v11, v50, v49);
        v53(v11, 0, 1, v49);
        sub_B78D0();
        sub_A194(v11, &unk_F17B0, &qword_BE7D0);
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
        (*(*(v61 - 8) + 56))(v78, 1, 1, v61);
        v80 = ItemContactInfoSetupIntroductionViewModel.bind();
        v81 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
        sub_B68B0();
        a1 = v79;
        goto LABEL_16;
      }

      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v33 = sub_B62F0();
      v34 = __swift_project_value_buffer(v33, qword_FAD48);
      v35 = *(v33 - 8);
      v36 = *(v35 + 16);
      v36(v11, v34, v33);
      v37 = *(v35 + 56);
      v37(v11, 0, 1, v33);
      v38 = sub_B78D0();
      v76 = v39;
      v77 = v38;
      sub_A194(v11, &unk_F17B0, &qword_BE7D0);
      v69 = v34;
      v70 = v36;
      v36(v11, v34, v33);
      v71 = (v35 + 16);
      v37(v11, 0, 1, v33);
      v68 = v37;
      v40 = sub_B78D0();
      v74 = v41;
      v75 = v40;
      sub_A194(v11, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v72 = *(v42 + 72);
      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v44 = swift_allocObject();
      v73 = v44;
      *(v44 + 16) = xmmword_BD800;
      v67 = v44 + v43;
      v36(v11, v34, v33);
      v37(v11, 0, 1, v33);
      sub_B78D0();
      v65 = v45;
      sub_A194(v11, &unk_F17B0, &qword_BE7D0);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      v47 = *(v46 - 8);
      v66 = *(v47 + 56);
      v48 = v78;
      (v66)(v78, 1, 1, v46);
      v80 = sub_46910;
      v81 = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
      sub_B68B0();
      v70(v11, v69, v33);
      v68(v11, 0, 1, v33);
      sub_B78D0();
      sub_A194(v11, &unk_F17B0, &qword_BE7D0);
      (*(v47 + 104))(v48, enum case for AlertInfo.ActionInfo.Style.cancel<A>(_:), v46);
      (v66)(v48, 0, 1, v46);
      v80 = ItemContactInfoSetupIntroductionViewModel.bind();
      v81 = 0;
    }

    sub_B68B0();
    a1 = v79;
LABEL_16:
    sub_B6910();
    v32 = 0;
    goto LABEL_17;
  }

  v32 = 1;
LABEL_17:
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  return (*(*(v62 - 8) + 56))(a1, v32, 1, v62);
}

uint64_t sub_43F24(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_44034@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v3 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  return sub_466F8(v5 + v3, a1, type metadata accessor for DelegatedURLShare);
}

uint64_t sub_44110@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  *a1 = *(v1 + 17);
  return result;
}

uint64_t sub_441B8@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_44260(unsigned __int16 *a1)
{
  v2 = *a1;
  result = *(v1 + 17);
  if (result >> 8 <= 0xFE)
  {
    if (v2 >> 8 > 0xFE)
    {
      goto LABEL_7;
    }

    result = sub_8090C(result, v2);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 17) = v2;
    return result;
  }

  if (v2 >> 8 > 0xFE)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65B0();
}

uint64_t sub_4439C(uint64_t a1)
{
  v3 = type metadata accessor for DelegatedURLShare();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  sub_466F8(v1 + v7, v6, type metadata accessor for DelegatedURLShare);
  v8 = sub_4684C(v6, a1);
  sub_457E4(v6, type metadata accessor for DelegatedURLShare);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
    sub_B65B0();
  }

  else
  {
    swift_beginAccess();
    sub_467E8(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_457E4(a1, type metadata accessor for DelegatedURLShare);
}

uint64_t sub_4458C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  sub_467E8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_445F8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_44710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_B7A60();
  v4[5] = sub_B7A50();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_447C0;

  return sub_44A54();
}

uint64_t sub_447C0(char a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 56) = a1;

  v6 = sub_B7A00();

  return _swift_task_switch(sub_44904, v6, v5);
}

uint64_t sub_44904()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  if (v1 == 1)
  {
    v3 = *(v0 + 24);
    if (*(v3 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss) == 1)
    {
      *(v3 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss) = 1;
    }

    else
    {
      swift_getKeyPath();
      v4 = swift_task_alloc();
      *(v4 + 16) = v3;
      *(v4 + 24) = 1;
      *(v0 + 16) = v3;
      sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
      sub_B65B0();
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_44A54()
{
  v1[5] = v0;
  sub_B7A60();
  v1[6] = sub_B7A50();
  v3 = sub_B7A00();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_44AEC, v3, v2);
}

uint64_t sub_44AEC()
{
  v23 = v0;
  v1 = *(v0 + 40);
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
    *(v0 + 16) = v1;
    sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
    sub_B65B0();
  }

  v3 = *(v0 + 40);
  *(v0 + 72) = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_logger;

  v4 = sub_B69A0();
  v5 = sub_B7B60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    v9 = *(type metadata accessor for DelegatedURLShare() + 24);
    sub_B65A0();
    sub_46A38(&qword_F0A28, &type metadata accessor for UUID);
    v10 = sub_B7DA0();
    v12 = sub_17834(v10, v11, &v22);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v4, v5, "Invalidating delegate url share for accessory id: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v13 = *(v0 + 40);
  v14 = *(v13 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies + 16);
  v15 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_delegatedURLShare;
  *(v0 + 80) = *(v13 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies + 24);
  *(v0 + 88) = v15;
  v16 = v13 + v15;
  v17 = *(type metadata accessor for DelegatedURLShare() + 24);
  *(v0 + 112) = v17;

  v21 = (v14 + *v14);
  v18 = v14[1];
  v19 = swift_task_alloc();
  *(v0 + 96) = v19;
  *v19 = v0;
  v19[1] = sub_44E50;

  return v21(v16 + v17);
}

uint64_t sub_44E50(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 116) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_45270;
  }

  else
  {
    v5 = sub_44F68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_44F68()
{
  v1 = v0[10];

  v2 = v0[7];
  v3 = v0[8];

  return _swift_task_switch(sub_44FCC, v2, v3);
}

uint64_t sub_44FCC()
{
  v22 = v0;
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = sub_B69A0();
  v5 = sub_B7B60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 116);
    v7 = *(v0 + 112);
    v8 = *(v0 + 40) + *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    sub_B65A0();
    sub_46A38(&qword_F0A28, &type metadata accessor for UUID);
    v11 = sub_B7DA0();
    v13 = sub_17834(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v6;
    _os_log_impl(&dword_0, v4, v5, "Invalidating delegate url called back for accessory id: %s with isSuccessful: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  v14 = *(v0 + 40);
  if ((*(v14 + 16) & 1) == 0)
  {
    *(v14 + 16) = 0;
    v17 = *(v0 + 116);
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v15 = *(v0 + 104);
  swift_getKeyPath();
  v16 = swift_task_alloc();
  *(v16 + 16) = v14;
  *(v16 + 24) = 0;
  *(v0 + 32) = v14;
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
  sub_B65B0();

  v17 = *(v0 + 116);
  if ((v17 & 1) == 0)
  {
LABEL_7:
    v18 = *(v0 + 40);
    sub_45844();
  }

LABEL_8:
  v19 = *(v0 + 8);

  return v19(v17);
}

uint64_t sub_45270()
{
  v1 = v0[10];

  v2 = v0[7];
  v3 = v0[8];

  return _swift_task_switch(sub_452D4, v2, v3);
}

uint64_t sub_452D4()
{
  v1 = v0[13];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  swift_errorRetain();
  v5 = sub_B69A0();
  v6 = sub_B7B40();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v5, v6, "Error with invalidating delegated url share %@", v8, 0xCu);
    sub_A194(v9, &qword_EF4F8, &qword_C16D0);
  }

  v11 = v0[5];

  v12 = v0[5];
  if (*(v11 + 16))
  {
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    v0[3] = v12;
    sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
    sub_B65B0();
  }

  else
  {
    *(v12 + 16) = 0;
  }

  v14 = v0[13];
  v15 = v0[5];
  sub_45844();

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_45508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_B7A80();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_B7A60();

  v10 = sub_B7A50();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a1;
  sub_30A3C(0, 0, v8, a3, v11);
}

uint64_t DelegatedSharesManagementViewModel.__allocating_init(initialDestination:delegatedURLShare:dependencies:)(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  DelegatedSharesManagementViewModel.init(initialDestination:delegatedURLShare:dependencies:)(a1, a2, a3);
  return v9;
}

uint64_t DelegatedSharesManagementViewModel.init(initialDestination:delegatedURLShare:dependencies:)(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 17) = -256;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss) = 0;
  v6 = *a1;
  sub_B69B0();
  sub_B65F0();
  sub_466F8(a2, v3 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare, type metadata accessor for DelegatedURLShare);
  sub_466F8(a2, v3 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_delegatedURLShare, type metadata accessor for DelegatedURLShare);
  sub_466F8(a3, v3 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies, type metadata accessor for DelegatedSharesManagementViewModel.Dependencies);
  *(v3 + 16) = 0;
  v8 = v6;
  sub_44260(&v8);
  sub_457E4(a3, type metadata accessor for DelegatedSharesManagementViewModel.Dependencies);
  sub_457E4(a2, type metadata accessor for DelegatedURLShare);
  return v3;
}

uint64_t sub_457E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_45844()
{
  v0 = sub_B69A0();
  v1 = sub_B7B60();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, v0, v1, "Share invalidation failed, presenting alert", v2, 2u);
  }

  v4 = 512;
  return sub_44260(&v4);
}

uint64_t sub_45900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for DelegatedURLShare();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A18, &unk_C01B8);
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v11 = *(v10 + 64) + 15;
  v4[17] = swift_task_alloc();
  v12 = *(*(type metadata accessor for DelegatedSharesUpdater() - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0338, &unk_BF940);
  v4[19] = v13;
  v14 = *(v13 - 8);
  v4[20] = v14;
  v15 = *(v14 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = sub_B7A60();
  v4[23] = sub_B7A50();
  v17 = sub_B7A00();
  v4[24] = v17;
  v4[25] = v16;

  return _swift_task_switch(sub_45B38, v17, v16);
}

uint64_t sub_45B38()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[9] + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies;
  v7 = type metadata accessor for DelegatedSharesManagementViewModel.Dependencies();
  sub_466F8(v6 + *(v7 + 24), v4, type metadata accessor for DelegatedSharesUpdater);
  (*(v2 + 32))(v1, v4, v3);
  sub_B7A90();
  v8 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel___observationRegistrar;
  v0[26] = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  v0[27] = v8;
  swift_beginAccess();
  v0[28] = 0;
  v9 = v0[22];
  v10 = sub_B7A50();
  v0[29] = v10;
  v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v12 = swift_task_alloc();
  v0[30] = v12;
  *v12 = v0;
  v12[1] = sub_45CA4;
  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v14, v10, &protocol witness table for MainActor, v15);
}

uint64_t sub_45CA4()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 232);
  v7 = *v0;

  v4 = *(v1 + 200);
  v5 = *(v1 + 192);

  return _swift_task_switch(sub_45DE8, v5, v4);
}

uint64_t sub_45DE8()
{
  v1 = v0[14];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[18];
    v5 = v0[19];
    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[15];
    v10 = v0[13];
    v43 = v0[12];

    (*(v8 + 8))(v7, v9);
    (*(v4 + 8))(v3, v5);

    v11 = v0[1];

    return v11();
  }

  v13 = v0[26];
  v14 = v0[12];
  v15 = v0[9];
  sub_46760(v1, v0[13]);
  sub_466F8(v15 + v13, v14, type metadata accessor for DelegatedURLShare);
  v16 = sub_B6490();
  v17 = v0[12];
  v18 = v0[13];
  if ((v16 & 1) == 0)
  {
    goto LABEL_17;
  }

  v19 = *(v0[10] + 20);
  v20 = sub_B6510();
  v17 = v0[12];
  v18 = v0[13];
  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

  v21 = *(v0[10] + 24);
  v22 = sub_B6570();
  v17 = v0[12];
  v18 = v0[13];
  if ((v22 & 1) == 0)
  {
    goto LABEL_17;
  }

  v23 = v0[10];
  v24 = v23[7];
  v26 = *(v17 + v24);
  v25 = *(v17 + v24 + 8);
  v27 = (v18 + v24);
  if (v26 != *v27 || v25 != v27[1])
  {
    v29 = sub_B7DD0();
    v17 = v0[12];
    v18 = v0[13];
    if ((v29 & 1) == 0)
    {
LABEL_17:
      v33 = v0[27];
      v32 = v0[28];
      v34 = v0[9];
      sub_457E4(v17, type metadata accessor for DelegatedURLShare);
      swift_getKeyPath();
      v35 = swift_task_alloc();
      *(v35 + 16) = v34;
      *(v35 + 24) = v18;
      v0[8] = v34;
      sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel);
      sub_B65B0();

      goto LABEL_18;
    }

    v23 = v0[10];
  }

  if (*(v17 + v23[8]) != *(v18 + v23[8]) || *(v17 + v23[9]) != *(v18 + v23[9]))
  {
    goto LABEL_17;
  }

  v30 = v0[26];
  v31 = v0[9];
  sub_457E4(v17, type metadata accessor for DelegatedURLShare);
  swift_beginAccess();
  sub_467E8(v18, v31 + v30);
  swift_endAccess();
  v32 = v0[28];
LABEL_18:
  sub_457E4(v0[13], type metadata accessor for DelegatedURLShare);
  v0[28] = v32;
  v36 = v0[22];
  v37 = sub_B7A50();
  v0[29] = v37;
  v38 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v39 = swift_task_alloc();
  v0[30] = v39;
  *v39 = v0;
  v39[1] = sub_45CA4;
  v40 = v0[17];
  v41 = v0[14];
  v42 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v41, v37, &protocol witness table for MainActor, v42);
}

uint64_t DelegatedSharesManagementViewModel.deinit()
{
  sub_457E4(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare, type metadata accessor for DelegatedURLShare);
  sub_457E4(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_delegatedURLShare, type metadata accessor for DelegatedURLShare);
  sub_457E4(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies, type metadata accessor for DelegatedSharesManagementViewModel.Dependencies);
  v1 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DelegatedSharesManagementViewModel.__deallocating_deinit()
{
  sub_457E4(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare, type metadata accessor for DelegatedURLShare);
  sub_457E4(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_delegatedURLShare, type metadata accessor for DelegatedURLShare);
  sub_457E4(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies, type metadata accessor for DelegatedSharesManagementViewModel.Dependencies);
  v1 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int DelegatedSharesShareeItemDescriptionViewModel.hashValue.getter()
{
  sub_B7EB0();
  sub_B7EC0(v0);
  return sub_B7EE0();
}

uint64_t type metadata accessor for DelegatedSharesManagementViewModel()
{
  result = qword_F0950;
  if (!qword_F0950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_464F0()
{
  result = type metadata accessor for DelegatedURLShare();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for DelegatedSharesManagementViewModel.Dependencies();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = sub_B69C0();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = sub_B6600();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_46678(unsigned __int16 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_44260(&v4);
}

uint64_t sub_466F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_46760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedURLShare();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_467E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedURLShare();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL sub_4684C(uint64_t a1, uint64_t a2)
{
  if ((sub_B6490() & 1) == 0)
  {
    return 1;
  }

  v4 = type metadata accessor for DelegatedURLShare();
  v5 = v4[5];
  if ((sub_B6510() & 1) == 0)
  {
    return 1;
  }

  v6 = v4[6];
  if ((sub_B6570() & 1) == 0)
  {
    return 1;
  }

  v7 = v4[7];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  return !v11 && (sub_B7DD0() & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]);
}

uint64_t sub_46984(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2184C;

  return sub_44710(a1, v4, v5, v6);
}

uint64_t sub_46A38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_46AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F248;

  return sub_44710(a1, v4, v5, v6);
}

uint64_t DelegatedSharesManagementViewModel.Dependencies.init(pasteboardHandler:delegatedSharesInvalidator:delegatedSharesUpdater:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *a2;
  *a4 = *a1;
  a4[1] = v5;
  v6 = a4 + *(type metadata accessor for DelegatedSharesManagementViewModel.Dependencies() + 24);

  return sub_46C60(a3, v6);
}

uint64_t type metadata accessor for DelegatedSharesManagementViewModel.Dependencies()
{
  result = qword_F0A88;
  if (!qword_F0A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_46C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedSharesUpdater();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_46CD8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DelegatedSharesUpdater();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_46D98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DelegatedSharesUpdater();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_46E3C()
{
  result = type metadata accessor for DelegatedSharesUpdater();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_46EC0@<X0>(Swift::Int *a1@<X8>)
{
  v3 = *v1;
  sub_B7EB0();
  sub_B7EC0(v3);
  result = sub_B7EE0();
  *a1 = result;
  return result;
}

Swift::Int ItemContactInfoSetupIntroductionViewModel.Alert.hashValue.getter()
{
  sub_B7EB0();
  sub_B7EC0(0);
  return sub_B7EE0();
}

Swift::Int sub_46F8C()
{
  sub_B7EB0();
  sub_B7EC0(0);
  return sub_B7EE0();
}

Swift::Int sub_46FCC@<X0>(Swift::Int *a1@<X8>)
{
  sub_B7EB0();
  sub_B7EC0(0);
  result = sub_B7EE0();
  *a1 = result;
  return result;
}

unint64_t sub_4701C()
{
  result = qword_F0AC8;
  if (!qword_F0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0AC8);
  }

  return result;
}

unint64_t sub_4709C()
{
  result = qword_F0AD0;
  if (!qword_F0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0AD0);
  }

  return result;
}

unint64_t sub_470F0()
{
  result = qword_F0AD8;
  if (!qword_F0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0AD8);
  }

  return result;
}

unint64_t sub_47148()
{
  result = qword_F0AE0;
  if (!qword_F0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0AE0);
  }

  return result;
}

uint64_t sub_471C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_47204()
{
  result = qword_F0AE8;
  if (!qword_F0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0AE8);
  }

  return result;
}

unint64_t sub_47258()
{
  result = qword_F0AF0;
  if (!qword_F0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0AF0);
  }

  return result;
}

uint64_t sub_472E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_B64C0();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_473C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_B64C0();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ShareLinkRow()
{
  result = qword_F0B50;
  if (!qword_F0B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_474CC()
{
  result = sub_B64C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_4756C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0B90, &unk_C0B60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_B64C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ShareLinkRow();
  (*(v8 + 16))(v11, v0 + *(v12 + 20), v7);
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v13 = sub_B62F0();
  v14 = __swift_project_value_buffer(v13, qword_FAD48);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v4, v14, v13);
  (*(v15 + 56))(v4, 0, 1, v13);
  v16 = sub_B78D0();
  v18 = v17;
  sub_2B630(v4);
  v26[2] = v16;
  v26[3] = v18;
  v19 = (v0 + *(v12 + 24));
  v20 = *v19;
  v21 = v19[1];
  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();

  v24 = [v23 bundleForClass:ObjCClassFromMetadata];
  v26[1] = sub_B7580();
  sub_47AD4();
  sub_97E8();
  sub_B6AE0();
  sub_47B28();
  return sub_B7780();
}

uint64_t sub_478F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_B62F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6E60();
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_FAD48);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_B71B0();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

unint64_t sub_47AD4()
{
  result = qword_F0B98;
  if (!qword_F0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0B98);
  }

  return result;
}

unint64_t sub_47B28()
{
  result = qword_F0BA0;
  if (!qword_F0BA0)
  {
    sub_B64C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0BA0);
  }

  return result;
}

unint64_t sub_47B84()
{
  result = qword_F0BA8;
  if (!qword_F0BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BB0, &unk_C0458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0BA8);
  }

  return result;
}

uint64_t DelegatedSharesSetupIntroductionView.init(viewModel:onDismiss:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v13[3] = &type metadata for SolariumFeatureFlag;
  v13[4] = sub_28360();
  v6 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v13);
  v7 = (v6 & 1) == 0;
  if (v6)
  {
    v8 = 0xD000000000000023;
  }

  else
  {
    v8 = 0xD00000000000001CLL;
  }

  if (v7)
  {
    v9 = "_MANAGEMENT_SHARE_WEBPAGE_TITLE";
  }

  else
  {
    v9 = "airtag-briefcase-cover-photo";
  }

  v10 = v9 | 0x8000000000000000;
  type metadata accessor for DelegatedSharesSetupIntroductionViewModel();
  result = sub_B75B0();
  v12 = v13[1];
  *a3 = v13[0];
  a3[1] = v12;
  a3[2] = a1;
  a3[3] = a2;
  a3[4] = v8;
  a3[5] = v10;
  return result;
}

unint64_t sub_47CB4()
{
  v4 = *v0;
  v5 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  v1 = v3 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_lostAccessory;
  LODWORD(v1) = *(v1 + *(type metadata accessor for LostAccessory() + 24));

  if (v1)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD000000000000022;
  }
}

uint64_t sub_47D60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = *v0;
  v6 = *(v0 + 24);
  v14 = *(v0 + 8);
  v15 = v6;
  v7 = *(v0 + 40);
  *&v18 = &type metadata for SolariumFeatureFlag;
  *(&v18 + 1) = sub_28360();
  v8 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v16);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v16 = v5;
  v17 = v14;
  v18 = v15;
  v19 = v7;
  sub_47CB4();
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v9 = sub_B62F0();
  v10 = __swift_project_value_buffer(v9, qword_FAD48);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v4, v10, v9);
  (*(v11 + 56))(v4, 0, 1, v9);
  v12 = sub_B78D0();

  sub_A194(v4, &unk_F17B0, &qword_BE7D0);
  return v12;
}

uint64_t DelegatedSharesSetupIntroductionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v170 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v159 = *(v2 - 8);
  v160 = v2;
  v3 = *(v159 + 64);
  __chkstk_darwin(v2);
  v131 = &v130 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v158 = (&v130 - v7);
  v149 = sub_B67E0();
  v147 = *(v149 - 8);
  v8 = *(v147 + 64);
  __chkstk_darwin(v149);
  v150 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_B67D0();
  v145 = *(v10 - 8);
  v146 = v10;
  v11 = *(v145 + 64);
  __chkstk_darwin(v10);
  v148 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_B6980();
  v140 = *(v138 - 1);
  v13 = v140[8];
  __chkstk_darwin(v138);
  v139 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v130 - v17;
  v19 = sub_B6850();
  v152 = *(v19 - 8);
  v153 = v19;
  v20 = *(v152 + 64);
  __chkstk_darwin(v19);
  OpaqueTypeConformance2 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BB8, &qword_C0468);
  v155 = *(v22 - 8);
  v156 = v22;
  v23 = *(v155 + 64);
  __chkstk_darwin(v22);
  v154 = &v130 - v24;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BC0, &qword_C0470);
  v157 = *(v172 - 8);
  v25 = *(v157 + 64);
  __chkstk_darwin(v172);
  v171 = &v130 - v26;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BC8, &qword_C0478);
  v167 = *(v169 - 8);
  v27 = *(v167 + 64);
  __chkstk_darwin(v169);
  v173 = &v130 - v28;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BD0, &qword_C0480);
  v166 = *(v168 - 8);
  v29 = *(v166 + 64);
  __chkstk_darwin(v168);
  v162 = &v130 - v30;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BD8, &qword_C0488);
  v31 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v165 = &v130 - v32;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE0, &unk_C0490);
  v33 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v164 = &v130 - v34;
  v35 = v1[1];
  v192 = *v1;
  v193 = v35;
  v194 = v1[2];
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v36 = sub_B62F0();
  v37 = __swift_project_value_buffer(v36, qword_FAD48);
  v38 = *(v36 - 8);
  v39 = v37;
  v136 = *(v38 + 16);
  v136(v18);
  v40 = v36;
  v41 = v36;
  v42 = *(v38 + 56);
  v42(v18, 0, 1, v41);
  v43 = sub_B78D0();
  v143 = v44;
  v144 = v43;
  sub_A194(v18, &unk_F17B0, &qword_BE7D0);
  v189 = v192;
  v190 = v193;
  v191 = v194;
  v45 = sub_47D60();
  v141 = v46;
  v142 = v45;
  v187 = &type metadata for SolariumFeatureFlag;
  v188 = sub_28360();
  v47 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v185);
  if (v47)
  {
    v48 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_40D5C();
    if (qword_EEB10 != -1)
    {
      swift_once();
    }

    v49 = v138;
    v50 = __swift_project_value_buffer(v138, qword_FAEB8);
    (v140[2])(v139, v50, v49);
    v48 = sub_B7B90();
  }

  v139 = &v130;
  v140 = v48;
  v51 = __chkstk_darwin(v48);
  v138 = &v127;
  __chkstk_darwin(v51);
  v137 = &v127;
  v129 = v52;
  v132 = v39;
  v53 = v136;
  (v136)(v18, v39, v40);
  v42(v18, 0, 1, v40);
  v54 = sub_B78D0();
  v134 = v55;
  v135 = v54;
  sub_A194(v18, &unk_F17B0, &qword_BE7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
  v56 = *(sub_B6800() - 8);
  v57 = *(v56 + 72);
  v133 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  *(swift_allocObject() + 16) = xmmword_BDA30;
  v53(v18, v132, v40);
  v42(v18, 0, 1, v40);
  sub_B78D0();
  sub_A194(v18, &unk_F17B0, &qword_BE7D0);
  v195 = v192;
  v185 = v192;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  v59 = v180;
  swift_getKeyPath();
  *&v185 = v59;
  sub_4C6CC(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  v60 = *(v59 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL);

  v61 = &enum case for OnboardingTrayAction.State.loading(_:);
  if (!v60)
  {
    v61 = &enum case for OnboardingTrayAction.State.enabled(_:);
  }

  (*(v145 + 104))(v148, *v61, v146);
  (*(v147 + 104))(v150, enum case for OnboardingTrayAction.Style.bold(_:), v149);
  v62 = swift_allocObject();
  v63 = v193;
  v62[1] = v192;
  v62[2] = v63;
  v62[3] = v194;
  sub_4BC94(&v192, &v185);
  sub_B67F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C00, &qword_C04D0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C08, &qword_C04D8);
  v65 = sub_4BCCC();
  v66 = sub_A8CC(&qword_F0C28, &qword_F0C08, &qword_C04D8);
  v128 = v65;
  v129 = v66;
  v127 = v64;
  v67 = OpaqueTypeConformance2;
  sub_B6840();
  v189 = v195;
  v136 = v58;
  sub_B75C0();
  v68 = v185;
  swift_getKeyPath();
  *&v189 = v68;
  sub_B65C0();

  v69 = *(v68 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL);

  v70 = sub_4C6CC(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
  v72 = v153;
  v71 = v154;
  sub_B73A0();
  v73 = (*(v152 + 8))(v67, v72);
  __chkstk_darwin(v73);
  v129 = &v192;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C30, &qword_C04F0);
  *&v189 = v72;
  *(&v189 + 1) = v70;
  v152 = v74;
  v153 = &opaque type descriptor for <<opaque return type of View.interactiveDismissDisabled(_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C38, &qword_C04F8);
  v76 = sub_A8CC(&qword_F0C40, &qword_F0C38, &qword_C04F8);
  *&v189 = v75;
  *(&v189 + 1) = v76;
  v150 = swift_getOpaqueTypeConformance2();
  v77 = v156;
  sub_B7450();
  (*(v155 + 8))(v71, v77);
  v185 = v195;
  sub_B75E0();
  v78 = v189;
  v79 = v190;
  swift_getKeyPath();
  v183 = v78;
  v184 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C48, &qword_C0528);
  sub_B76B0();

  v80 = v185;
  v81 = v186;
  LOBYTE(v71) = v187;

  swift_getKeyPath();
  v180 = v80;
  v181 = v81;
  v182 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C50, &qword_C0558);
  sub_B76B0();

  sub_4BE18(v81, v71);
  v174 = v177;
  v175 = v178;
  v176 = v179;
  v82 = swift_allocObject();
  v83 = v193;
  v82[1] = v192;
  v82[2] = v83;
  v82[3] = v194;
  sub_4BC94(&v192, &v189);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C58, &qword_C0560);
  *&v189 = v77;
  *(&v189 + 1) = v152;
  *&v190 = OpaqueTypeConformance2;
  *(&v190 + 1) = v150;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = sub_4BE44();
  v87 = sub_4BE98();
  *&v189 = &type metadata for DelegatedSharesSetupWebsiteView;
  *(&v189 + 1) = v87;
  v88 = swift_getOpaqueTypeConformance2();
  v129 = v88;
  v89 = v172;
  v155 = v85;
  v156 = v84;
  v154 = v86;
  v90 = v171;
  sub_B7340();

  (*(v157 + 8))(v90, v89);
  v189 = v195;
  sub_B75C0();
  v91 = v158;
  sub_4CF60(v158);

  v93 = v159;
  v92 = v160;
  if ((*(v159 + 48))(v91, 1, v160))
  {
    sub_A194(v91, &qword_EEE08, &qword_BD530);
    v94 = 0;
    v95 = 0xE000000000000000;
  }

  else
  {
    v96 = v131;
    (*(v93 + 16))(v131, v91, v92);
    sub_A194(v91, &qword_EEE08, &qword_BD530);
    v94 = sub_B6920();
    v95 = v97;
    (*(v93 + 8))(v96, v92);
  }

  *&v189 = v94;
  *(&v189 + 1) = v95;
  sub_97E8();
  v171 = sub_B7200();
  v159 = v99;
  v160 = v98;
  v101 = v100;
  sub_B7A60();
  sub_4BC94(&v192, &v189);
  v102 = sub_B7A50();
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *(v103 + 24) = &protocol witness table for MainActor;
  v104 = v193;
  *(v103 + 32) = v192;
  *(v103 + 48) = v104;
  *(v103 + 64) = v194;
  sub_4BC94(&v192, &v189);
  v105 = sub_B7A50();
  v106 = swift_allocObject();
  *(v106 + 16) = v105;
  *(v106 + 24) = &protocol witness table for MainActor;
  v107 = v193;
  *(v106 + 32) = v192;
  *(v106 + 48) = v107;
  *(v106 + 64) = v194;
  v108 = sub_B76D0();
  v158 = &v130;
  v109 = __chkstk_darwin(v108);
  __chkstk_darwin(v109);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
  *&v189 = v172;
  *(&v189 + 1) = &_s5StackON;
  *&v190 = v156;
  *(&v190 + 1) = v155;
  *&v191 = v154;
  *(&v191 + 1) = v88;
  v110 = swift_getOpaqueTypeConformance2();
  v128 = sub_9BD4();
  v129 = &protocol witness table for Text;
  v127 = v110;
  v111 = v169;
  v112 = v101;
  v113 = v162;
  v114 = v171;
  v115 = v160;
  v116 = v173;
  sub_B7400();

  sub_9C84(v114, v115, v112 & 1);

  (*(v167 + 8))(v116, v111);
  v117 = swift_allocObject();
  v118 = v193;
  *(v117 + 1) = v192;
  *(v117 + 2) = v118;
  *(v117 + 3) = v194;
  v119 = v165;
  (*(v166 + 32))(v165, v113, v168);
  v120 = &v119[*(v161 + 36)];
  *v120 = sub_4BF78;
  v120[1] = v117;
  v120[2] = 0;
  v120[3] = 0;
  v121 = swift_allocObject();
  v122 = v193;
  v121[1] = v192;
  v121[2] = v122;
  v121[3] = v194;
  v123 = v119;
  v124 = v164;
  sub_AB00(v123, v164, &qword_F0BD8, &qword_C0488);
  v125 = (v124 + *(v163 + 36));
  *v125 = 0;
  v125[1] = 0;
  v125[2] = sub_4BFAC;
  v125[3] = v121;
  sub_AB00(v124, v170, &qword_F0BE0, &unk_C0490);
  sub_4BC94(&v192, &v189);
  return sub_4BC94(&v192, &v189);
}

__n128 sub_4947C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_B7550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.n128_u64[1] = &type metadata for SolariumFeatureFlag;
  *v34 = sub_28360();
  v9 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v32);
  if (v9)
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    type metadata accessor for DelegatedSharesReportingModule();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = objc_opt_self();

    v14 = [v13 bundleForClass:ObjCClassFromMetadata];
    sub_B7580();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v15 = sub_B7570();

    (*(v5 + 8))(v8, v4);
    *&v23[2] = v28;
    LOBYTE(v25) = 1;
    v31 = 0;
    v21 = v15;
    v22 = 0;
    *v23 = 257;
    *&v23[18] = v29;
    *&v23[34] = *v30;
    *&v23[50] = *&v30[16];
    v24 = 0;
  }

  else
  {
    v16 = sub_B7760();
    v18 = v17;
    sub_497A8(a1, &v32);
    v25 = v32;
    v26 = v33;
    v27[0] = *v34;
    *(v27 + 10) = *&v34[10];
    v28 = v32;
    v29 = v33;
    *v30 = *v34;
    *&v30[10] = *&v34[10];
    sub_A310(&v25, &v21, &qword_F0CC0, &qword_C06F8);
    sub_A194(&v28, &qword_F0CC0, &qword_C06F8);
    *v23 = v25;
    *&v23[16] = v26;
    *&v23[32] = v27[0];
    *&v23[42] = *(v27 + 10);
    v31 = 1;
    v21 = v16;
    v22 = v18;
    v24 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C20, &qword_C04E8);
  sub_40DB8();
  sub_A8CC(&qword_F0C18, &qword_F0C20, &qword_C04E8);
  sub_B6F00();
  v19 = *&v34[16];
  *(a2 + 32) = *v34;
  *(a2 + 48) = v19;
  *(a2 + 59) = *&v34[27];
  result = v33;
  *a2 = v32;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_497A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_B7550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_B6EA0();
  sub_499E8(&v19);
  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = v19;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = objc_opt_self();

  v14 = [v13 bundleForClass:ObjCClassFromMetadata];
  sub_B7580();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v15 = sub_B7570();

  (*(v5 + 8))(v8, v4);
  LOBYTE(v19) = 0;
  v18 = 1;
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v17;
  *(a2 + 40) = v15;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 57) = 1;
}

uint64_t sub_499E8@<X0>(uint64_t *a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_B74E0();
  v3 = [objc_opt_self() systemBackgroundColor];
  v4 = sub_B7530();
  *a1 = v2;
  a1[1] = v4;
}

uint64_t sub_49AAC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  *(&v29 + 1) = &type metadata for SolariumFeatureFlag;
  *&v30 = sub_28360();
  v8 = sub_B6610();
  result = __swift_destroy_boxed_opaque_existential_0(&v28);
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    KeyPath = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = a1[1];
    v28 = *a1;
    v29 = v18;
    v30 = a1[2];
    sub_47CB4();
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v19 = sub_B62F0();
    v20 = __swift_project_value_buffer(v19, qword_FAD48);
    v21 = *(v19 - 8);
    (*(v21 + 16))(v7, v20, v19);
    v15 = 1;
    (*(v21 + 56))(v7, 0, 1, v19);
    v22 = sub_B78D0();
    v24 = v23;

    sub_A194(v7, &unk_F17B0, &qword_BE7D0);
    *&v28 = v22;
    *(&v28 + 1) = v24;
    sub_97E8();
    v11 = sub_B7200();
    v12 = v25;
    LOBYTE(v21) = v26;
    v13 = v27;
    KeyPath = swift_getKeyPath();
    LOBYTE(v28) = 0;
    LOBYTE(v21) = v21 & 1;
    v31 = v21;
    sub_41410(v11, v12, v21);

    sub_9C84(v11, v12, v21);

    v17 = v28;
    v16 = v31;
    v10 = 0x4030000000000000;
  }

  *a2 = v10;
  *(a2 + 8) = v17;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v16;
  *(a2 + 40) = v13;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v15;
  return result;
}

uint64_t sub_49D44(uint64_t a1, __int128 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v12 - v5;
  v13 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  v7 = v12[1];
  v8 = sub_B7A80();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_B7A60();

  v9 = sub_B7A50();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v7;
  sub_30A3C(0, 0, v6, &unk_C06C0, v10);
}

uint64_t sub_49EA0(uint64_t a1)
{
  v2 = sub_B6F50();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C38, &qword_C04F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_B6F30();
  __chkstk_darwin(v9);
  *(&v11 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C88, &qword_C0688);
  sub_4C558();
  sub_B6A80();
  sub_A8CC(&qword_F0C40, &qword_F0C38, &qword_C04F8);
  sub_B6F60();
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_4A0E4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v58 = *(v60 - 8);
  v4 = *(v58 + 64);
  __chkstk_darwin(v60);
  v6 = &v54 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CB0, &qword_C06A0);
  v7 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v59 = &v54 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CB8, &qword_C06A8);
  v9 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v65 = &v54 - v10;
  v11 = sub_B7950();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v54 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0668, &qword_C1FD0);
  v55 = *(v57 - 8);
  v20 = *(v55 + 64);
  __chkstk_darwin(v57);
  v22 = &v54 - v21;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CA0, &unk_C0690);
  v23 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v56 = &v54 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C88, &qword_C0688);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v62 = &v54 - v27;
  sub_B7A60();
  v61 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v67[3] = &type metadata for SolariumFeatureFlag;
  v67[4] = sub_28360();
  v28 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v67);
  if (v28)
  {
    v60 = a2;
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v29 = sub_B62F0();
    v30 = __swift_project_value_buffer(v29, qword_FAD48);
    v31 = *(v29 - 8);
    (*(v31 + 16))(v19, v30, v29);
    (*(v31 + 56))(v19, 0, 1, v29);
    v32 = sub_B78D0();
    v34 = v33;
    sub_A194(v19, &unk_F17B0, &qword_BE7D0);
    (*(v12 + 104))(v15, enum case for String.ButtonType.cancel(_:), v11);
    v35 = sub_B7960();
    v37 = v36;
    (*(v12 + 8))(v15, v11);
    v38 = swift_allocObject();
    v39 = a1[1];
    v38[1] = *a1;
    v38[2] = v39;
    v38[3] = a1[2];
    v68 = v32;
    v69 = v34;
    __chkstk_darwin(v38);
    *(&v54 - 4) = &v68;
    *(&v54 - 3) = v35;
    *(&v54 - 2) = v37;
    sub_4BC94(a1, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06A0, &unk_C06B0);
    sub_A8CC(&qword_F06A8, &qword_F06A0, &unk_C06B0);
    sub_B7610();

    sub_A8CC(&qword_F0660, &qword_F0668, &qword_C1FD0);
    v41 = v56;
    v40 = v57;
    sub_B7360();
    (*(v55 + 8))(v22, v40);
    sub_A310(v41, v65, &qword_F0CA0, &unk_C0690);
    swift_storeEnumTagMultiPayload();
    sub_4C5E4();
    sub_4C714();
    v42 = v62;
    sub_B6F00();
    sub_A194(v41, &qword_F0CA0, &unk_C0690);
    a2 = v60;
  }

  else
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v43 = sub_B62F0();
    v44 = __swift_project_value_buffer(v43, qword_FAD48);
    v45 = *(v43 - 8);
    (*(v45 + 16))(v19, v44, v43);
    (*(v45 + 56))(v19, 0, 1, v43);
    v46 = sub_B78D0();
    v48 = v47;
    sub_A194(v19, &unk_F17B0, &qword_BE7D0);
    v68 = v46;
    v69 = v48;
    v49 = swift_allocObject();
    v50 = a1[1];
    v49[1] = *a1;
    v49[2] = v50;
    v49[3] = a1[2];
    sub_4BC94(a1, v67);
    sub_97E8();
    sub_B7640();
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
    v52 = v59;
    v51 = v60;
    sub_B7360();
    (*(v58 + 8))(v6, v51);
    sub_A310(v52, v65, &qword_F0CB0, &qword_C06A0);
    swift_storeEnumTagMultiPayload();
    sub_4C5E4();
    sub_4C714();
    v42 = v62;
    sub_B6F00();
    sub_A194(v52, &qword_F0CB0, &qword_C06A0);
  }

  sub_4C81C(v42, a2);
}

uint64_t sub_4AA68(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 24);
    v3(isCurrentExecutor);
  }
}

uint64_t sub_4AB20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4C6CC(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  v4 = v3 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination;
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination);
  *a2 = v5;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_4C52C(v5, v6);
}

uint64_t sub_4ABE0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  sub_4C52C(v5, v3);
  return sub_4CDC8(&v5);
}

uint64_t *sub_4AC28(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  if (*result)
  {
    v4 = *(a2 + 8);
    if (v4 != 255)
    {
      v5 = *a2;
      v6 = *result;

      result = sub_4BE2C(v5, v4);
      *a2 = v3;
      *(a2 + 8) = 0;
    }
  }

  else
  {
    result = sub_4BE18(*a2, *(a2 + 8));
    *a2 = 0;
    *(a2 + 8) = -1;
  }

  return result;
}

uint64_t sub_4ACA0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);

  sub_C5D8(v4);
  sub_B75B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C80, &qword_C0680);
  sub_B75D0();
  sub_4BE98();
  sub_B73A0();

  sub_C618(v4);
}

uint64_t sub_4AE00@<X0>(_OWORD *a1@<X2>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v11 - v6;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11[1] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  sub_4CF60(v7);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8) != 1;
  sub_A194(v7, &qword_EEE08, &qword_BD530);

  *a2 = v9;
  return result;
}

uint64_t sub_4AF94(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  *&v6 = 0;
  BYTE8(v6) = -1;
  sub_4CDC8(&v6);
}

uint64_t sub_4B070(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  sub_4CF60(v10);

  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v11 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v11 = sub_B6930();
    (*(v3 + 8))(v6, v2);
  }

  *&v14 = v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50);
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
  sub_B76E0();
}

uint64_t sub_4B3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v23 - v14;
  sub_B7A60();
  v23[0] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[2] = sub_B68C0();
  v23[3] = v16;
  sub_B68A0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_A194(v11, &qword_EEF48, &unk_C01F0);
    v19 = sub_B6A00();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  else
  {
    sub_B6890();
    (*(v18 + 8))(v11, v17);
  }

  (*(v4 + 16))(v7, a1, v3);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  (*(v4 + 32))(v21 + v20, v7, v3);
  sub_97E8();
  sub_B7630();
}

uint64_t sub_4B728()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v0 = sub_B68D0();
  v2(v0);
}

uint64_t sub_4B7F0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  sub_4CF60(v12);

  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v13 = sub_B6940();
    v14 = v15;
    (*(v5 + 8))(v8, v4);
  }

  *&v25 = v13;
  *(&v25 + 1) = v14;
  sub_97E8();
  v16 = sub_B7200();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v22;
  return result;
}

uint64_t sub_4BA90(__int128 *a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  v5 = sub_B75C0();
  a3(v5);
}

uint64_t sub_4BB74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4C6CC(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL);
  return result;
}

unint64_t sub_4BCCC()
{
  result = qword_F0C10;
  if (!qword_F0C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C00, &qword_C04D0);
    sub_40DB8();
    sub_A8CC(&qword_F0C18, &qword_F0C20, &qword_C04E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C10);
  }

  return result;
}

uint64_t sub_4BD90(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  sub_4C52C(v5, v3);
  return sub_4CDC8(&v5);
}

uint64_t sub_4BDD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    result = 0;
  }

  else
  {
    v4 = *a1;
  }

  *a2 = result;
  return result;
}

uint64_t sub_4BE18(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_4BE2C(a1, a2);
  }

  return a1;
}

uint64_t sub_4BE2C(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

unint64_t sub_4BE44()
{
  result = qword_F0C60;
  if (!qword_F0C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C60);
  }

  return result;
}

unint64_t sub_4BE98()
{
  result = qword_F0C68;
  if (!qword_F0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C68);
  }

  return result;
}

uint64_t sub_4BEF0@<X0>(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_4AE00((v1 + 32), a1);
}

uint64_t objectdestroy_16Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  if (v0[6])
  {
    v4 = v0[7];
  }

  v5 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_4C014(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_4C05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_4C0BC()
{
  result = qword_F0C70;
  if (!qword_F0C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BE0, &unk_C0490);
    sub_4C148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C70);
  }

  return result;
}

unint64_t sub_4C148()
{
  result = qword_F0C78;
  if (!qword_F0C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BD8, &qword_C0488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BC8, &qword_C0478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BC0, &qword_C0470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C58, &qword_C0560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BB8, &qword_C0468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C30, &qword_C04F0);
    sub_B6850();
    sub_4C6CC(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C38, &qword_C04F8);
    sub_A8CC(&qword_F0C40, &qword_F0C38, &qword_C04F8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_4BE44();
    sub_4BE98();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_9BD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C78);
  }

  return result;
}

uint64_t sub_4C42C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_4C4C0()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8) + 80);

  return sub_4B728();
}

uint64_t sub_4C52C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_4C540(a1, a2);
  }

  return a1;
}

uint64_t sub_4C540(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

unint64_t sub_4C558()
{
  result = qword_F0C90;
  if (!qword_F0C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C88, &qword_C0688);
    sub_4C5E4();
    sub_4C714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C90);
  }

  return result;
}

unint64_t sub_4C5E4()
{
  result = qword_F0C98;
  if (!qword_F0C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0CA0, &unk_C0690);
    sub_A8CC(&qword_F0660, &qword_F0668, &qword_C1FD0);
    sub_4C6CC(&qword_F0670, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C98);
  }

  return result;
}

uint64_t sub_4C6CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_4C714()
{
  result = qword_F0CA8;
  if (!qword_F0CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0CB0, &qword_C06A0);
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
    sub_4C6CC(&qword_F0670, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0CA8);
  }

  return result;
}

uint64_t sub_4C81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C88, &qword_C0688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_4C904()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4C944(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F248;

  return sub_4E524(a1, v4, v5, v6);
}

uint64_t sub_4CA2C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ItemProximityProvider();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_4CAEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ItemProximityProvider();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies()
{
  result = qword_F0D20;
  if (!qword_F0D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4CBDC()
{
  result = type metadata accessor for ItemProximityProvider();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_4CC60()
{
  swift_getKeyPath();
  sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  return *(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL);
}

uint64_t sub_4CD08@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  v3 = v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination;
  v4 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination);
  *a1 = v4;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_4C52C(v4, v5);
}

uint64_t sub_4CDC8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination;
  v5 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination);
  v6 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination + 8);
  sub_4C52C(v5, v6);
  v7 = sub_4FDB0(v5, v6, v2, v3);
  sub_4BE18(v5, v6);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65B0();
    sub_4BE18(v2, v3);
  }

  else
  {
    v10 = *v4;
    *v4 = v2;
    v11 = *(v4 + 8);
    *(v4 + 8) = v3;

    return sub_4BE18(v10, v11);
  }
}

uint64_t sub_4CF60@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v56 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v56 - v9;
  swift_getKeyPath();
  v63 = v1;
  sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination + 8) == 2)
  {
    v11 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination);
    v61 = v6;
    v62 = a1;
    if (v11)
    {
      if (v11 == 1)
      {
        v12 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
        v13 = swift_allocObject();
        v58 = xmmword_BDA30;
        *(v13 + 16) = xmmword_BDA30;
        *(v13 + 56) = &type metadata for UInt;
        *(v13 + 64) = &protocol witness table for UInt;
        *(v13 + 32) = v12;
        if (qword_EEAB0 != -1)
        {
          swift_once();
        }

        v14 = sub_B62F0();
        v15 = __swift_project_value_buffer(v14, qword_FAD48);
        v16 = *(v14 - 8);
        v17 = *(v16 + 16);
        v17(v10, v15, v14);
        v18 = *(v16 + 56);
        v18(v10, 0, 1, v14);
        v19 = sub_B78D0();
        v59 = v20;
        v60 = v19;

        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        v17(v10, v15, v14);
        v18(v10, 0, 1, v14);
        v21 = sub_B78D0();
        v56 = v22;
        v57 = v21;
        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
        v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
        v24 = *(v23 + 72);
        v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        *(swift_allocObject() + 16) = v58;
        v17(v10, v15, v14);
        v18(v10, 0, 1, v14);
        sub_B78D0();
        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
        (*(*(v26 - 8) + 56))(v61, 1, 1, v26);
        v63 = ItemContactInfoSetupIntroductionViewModel.bind();
        v64 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
        sub_B68B0();
        a1 = v62;
        goto LABEL_15;
      }

      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v41 = sub_B62F0();
      v42 = __swift_project_value_buffer(v41, qword_FAD48);
      v43 = *(v41 - 8);
      v44 = *(v43 + 16);
      v44(v10, v42, v41);
      v45 = *(v43 + 56);
      v45(v10, 0, 1, v41);
      v46 = sub_B78D0();
      v59 = v47;
      v60 = v46;
      sub_A194(v10, &unk_F17B0, &qword_BE7D0);
      v44(v10, v42, v41);
      v45(v10, 0, 1, v41);
      v48 = sub_B78D0();
      v57 = v49;
      *&v58 = v48;
      sub_A194(v10, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v51 = *(v50 + 72);
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      *(swift_allocObject() + 16) = xmmword_BDA30;
      v44(v10, v42, v41);
      v45(v10, 0, 1, v41);
      sub_B78D0();
      sub_A194(v10, &unk_F17B0, &qword_BE7D0);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      (*(*(v53 - 8) + 56))(v61, 1, 1, v53);
      v63 = ItemContactInfoSetupIntroductionViewModel.bind();
      v64 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
    }

    else
    {
      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v28 = sub_B62F0();
      v29 = __swift_project_value_buffer(v28, qword_FAD48);
      v30 = *(v28 - 8);
      v31 = *(v30 + 16);
      v31(v10, v29, v28);
      v32 = *(v30 + 56);
      v32(v10, 0, 1, v28);
      v33 = sub_B78D0();
      v59 = v34;
      v60 = v33;
      sub_A194(v10, &unk_F17B0, &qword_BE7D0);
      v31(v10, v29, v28);
      v32(v10, 0, 1, v28);
      v35 = sub_B78D0();
      v57 = v36;
      *&v58 = v35;
      sub_A194(v10, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v38 = *(v37 + 72);
      v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      *(swift_allocObject() + 16) = xmmword_BDA30;
      v31(v10, v29, v28);
      v32(v10, 0, 1, v28);
      sub_B78D0();
      sub_A194(v10, &unk_F17B0, &qword_BE7D0);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      (*(*(v40 - 8) + 56))(v61, 1, 1, v40);
      v63 = ItemContactInfoSetupIntroductionViewModel.bind();
      v64 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
    }

    sub_B68B0();
    a1 = v62;
LABEL_15:
    sub_B6910();
    v27 = 0;
    goto LABEL_16;
  }

  v27 = 1;
LABEL_16:
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  return (*(*(v54 - 8) + 56))(a1, v27, 1, v54);
}

void sub_4DB08()
{
  if (*(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65B0();
  }
}

uint64_t sub_4DC0C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_4DD24()
{
  swift_getKeyPath();
  sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask);
}

uint64_t sub_4DDD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask);
}

uint64_t sub_4DE84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask;
  if (!*(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65B0();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask);

  v5 = sub_B7AD0();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_4E018()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v59 = &v46 - v3;
  v4 = type metadata accessor for ItemProximityProvider();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v58 = *(v8 - 8);
  v56 = *(v58 + 64);
  v9 = __chkstk_darwin(v8);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = type metadata accessor for LostAccessory();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_B65A0();
  v47 = v17;
  v57 = *(v17 - 8);
  v18 = v57;
  v19 = *(v57 + 64);
  v20 = __chkstk_darwin(v17);
  v52 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v46 - v21;
  sub_50754(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_lostAccessory, v16, type metadata accessor for LostAccessory);
  v23 = *(v18 + 32);
  v53 = v18 + 32;
  v54 = v23;
  v48 = v22;
  v23(v22, v16, v17);
  v24 = v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies;
  v50 = v0;
  v25 = type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies();
  sub_50754(v24 + *(v25 + 24), v7, type metadata accessor for ItemProximityProvider);
  v26 = v58;
  v51 = *(v58 + 32);
  v49 = v12;
  v27 = v7;
  v28 = v8;
  v46 = v8;
  v51(v12, v27, v8);
  v29 = sub_B7A80();
  (*(*(v29 - 8) + 56))(v59, 1, 1, v29);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = v26;
  v32 = v55;
  (*(v26 + 16))(v55, v12, v28);
  v33 = v57;
  v34 = v52;
  v35 = v22;
  v36 = v47;
  (*(v57 + 16))(v52, v35, v47);
  sub_B7A60();

  v37 = sub_B7A50();
  v38 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v39 = (v56 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v33 + 80) + v39 + 8) & ~*(v33 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = &protocol witness table for MainActor;
  v42 = v32;
  v43 = v46;
  v51((v41 + v38), v42, v46);
  *(v41 + v39) = v30;
  v54(v41 + v40, v34, v36);

  v44 = sub_30A3C(0, 0, v59, &unk_C07F8, v41);
  sub_4DE84(v44);
  (*(v58 + 8))(v49, v43);
  return (*(v57 + 8))(v48, v36);
}