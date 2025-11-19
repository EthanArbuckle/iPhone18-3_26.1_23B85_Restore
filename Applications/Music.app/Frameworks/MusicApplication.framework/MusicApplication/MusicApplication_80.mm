uint64_t sub_71F884()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

id sub_71F930(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_71F944(result, a2, a3, a4, a5, a6);
  }

  return result;
}

id sub_71F944(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    return swift_unknownObjectRetain();
  }

  if (a6 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_71F968()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t View.viewPresenting<A, B>(_:modifier:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v9[0] = a2;
  v9[1] = a3;
  v4 = sub_AB5D50();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_AB7310();
  type metadata accessor for PresentedViewState();
  v9[2] = a1;
  v9[3] = v9[0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_AB7140();
  return (*(v5 + 8))(v7, v4);
}

uint64_t PresentedViewState.isPresented.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t PresentedViewState.isPresented.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_71FD10@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void (*PresentedViewState.isPresented.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin(v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  __chkstk_darwin(KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = sub_AB5500();
  return sub_6A82CC;
}

uint64_t PresentedViewState.$isPresented.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t PresentedViewState.$isPresented.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PresentedViewState.$isPresented.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B60);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  PresentedViewState.$isPresented.getter();
  return sub_720138;
}

void sub_720138(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    PresentedViewState.$isPresented.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PresentedViewState.$isPresented.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PresentedViewState.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_ABA9C0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PresentedViewState.__allocating_init()()
{
  v0 = swift_allocObject();
  PresentedViewState.init()();
  return v0;
}

uint64_t *PresentedViewState.init()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  v6 = qword_E149E0;
  v7 = *(v1 + 80);
  v9[15] = 0;
  sub_AB54D0();
  (*(v3 + 32))(v0 + v6, v5, v2);
  (*(*(v7 - 8) + 56))(v0 + *(*v0 + 96), 1, 1, v7);
  return v0;
}

uint64_t PresentedViewState.present(_:animated:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 80);
  v6 = sub_ABA9C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = *(v5 - 8);
  (*(v10 + 16))(&v13 - v8, a1, v5);
  (*(v10 + 56))(v9, 0, 1, v5);
  v11 = *(*v2 + 96);
  swift_beginAccess();
  (*(v7 + 40))(v2 + v11, v9, v6);
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return PresentedViewState.isPresented.setter();
  }

  sub_AB7A90();
  sub_AB5B00();
}

uint64_t PresentedViewState.deinit()
{
  v1 = qword_E149E0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  v4 = sub_ABA9C0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PresentedViewState.__deallocating_deinit()
{
  PresentedViewState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_720744@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void sub_7207E0()
{
  sub_69ED3C();
  if (v0 <= 0x3F)
  {
    sub_ABA9C0();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_7208B0()
{
  sub_AB5D50();
  type metadata accessor for PresentedViewState();
  sub_ABA9C0();
  sub_AB69A0();
  sub_AB5D50();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_720990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Notice(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v10);
  (*(a4 + 8))(v10, a2, a3, a4);
  return sub_721288(v10);
}

void sub_720A4C(uint64_t a1@<X8>)
{
  if (![v1 isViewLoaded])
  {
    v7 = [v1 parentViewController];
    if (v7)
    {
      v8 = v7;
      sub_720A4C();
      goto LABEL_8;
    }

LABEL_12:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v8 = v3;
  v4 = [v3 window];
  if (!v4 || (v5 = v4, v6 = [v4 windowScene], v5, !v6))
  {

    goto LABEL_12;
  }

  UIWindowScene.noticePresenting.getter(a1);

LABEL_8:
}

uint64_t PresentedViewState<A>.present(_:)(__int128 *a1)
{
  v3 = *a1;
  *(v2 + 104) = a1[1];
  v4 = a1[3];
  *(v2 + 120) = a1[2];
  *(v2 + 136) = v4;
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  *(v2 + 152) = *(a1 + 8);
  *(v2 + 88) = v3;
  sub_AB9940();
  *(v2 + 272) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_720C20, v6, v5);
}

uint64_t sub_720C20()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);

  v3 = v1 + *(*v1 + 96);
  swift_beginAccess();
  *(v0 + 16) = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(v0 + 80) = *(v3 + 64);
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  *(v0 + 32) = v4;
  sub_5B3FC4(v2, v0 + 160);
  *v3 = *(v0 + 88);
  v7 = *(v0 + 120);
  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  *(v3 + 64) = *(v0 + 152);
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 16) = v9;
  sub_12E1C(v0 + 16, &qword_E0F9B0);
  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *(v0 + 160) = 1;

  sub_AB5520();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_720DCC(__int128 *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17BD0;

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t sub_720E64()
{
  result = swift_slowAlloc();
  qword_E14A68 = result;
  return result;
}

double UIWindowScene.noticePresenting.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_E0CF10 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v1, qword_E14A68))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_12E1C(v6, &qword_E11F60);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14A70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t UIWindowScene.noticePresenting.setter(uint64_t a1)
{
  if (qword_E0CF10 != -1)
  {
    swift_once();
  }

  v3 = qword_E14A68;
  sub_721128(a1, v12);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_ABB3A0();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v9 = 0;
  }

  objc_setAssociatedObject(v1, v3, v9, &dword_0 + 1);
  swift_unknownObjectRelease();
  return sub_12E1C(a1, &qword_E0EB30);
}

uint64_t sub_721128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*UIWindowScene.noticePresenting.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UIWindowScene.noticePresenting.getter(v3);
  return sub_721210;
}

void sub_721210(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_721128(*a1, v2 + 40);
    UIWindowScene.noticePresenting.setter(v2 + 40);
    sub_12E1C(v2, &qword_E0EB30);
  }

  else
  {
    UIWindowScene.noticePresenting.setter(*a1);
  }

  free(v2);
}

uint64_t sub_721288(uint64_t a1)
{
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7212E4()
{
  sub_AB31C0();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t PresentedViewState<A>.present(_:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_AB31C0();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_AB9940();
  v2[12] = sub_AB9930();
  v5 = sub_AB98B0();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(sub_7214B4, v5, v4);
}

uint64_t sub_7214B4()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_7215E0;
  v5 = v0[8];

  return v7(v5, v2, v3);
}

uint64_t sub_7215E0()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_721700, v3, v2);
}

uint64_t sub_721700()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_4FE5BC(v0[8]);
  }

  else
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    (*(v5 + 32))(v4, v0[8], v6);
    (*(v5 + 16))(v8, v4, v6);
    (*(v5 + 56))(v8, 0, 1, v6);
    v9 = *(*v7 + 96);
    swift_beginAccess();
    sub_5C9584(v8, v7 + v9);
    swift_endAccess();
    sub_AB7A90();
    sub_AB5B00();

    (*(v5 + 8))(v4, v6);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_7218E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17BD0;

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t sub_72197C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v30 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14A90);
  __chkstk_darwin(v31);
  v29 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14A98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_AB31C0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*a3 + 96);
  swift_beginAccess();
  sub_5B513C(a3 + v18, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_4FE5BC(v13);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14AA0);
    (*(*(v19 - 8) + 16))(v29, v30, v19);
    swift_storeEnumTagMultiPayload();
    v20 = sub_36A00(&qword_E14AA8, &qword_E14AA0);
    v32 = v19;
    v33 = v20;
    swift_getOpaqueTypeConformance2();
    return sub_AB6610();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14A78);
    v27 = v7;
    sub_36A00(&qword_E14A80, &qword_E14A78);
    sub_AB5B60();
    swift_getKeyPath();
    sub_AB5B70();

    v26 = a4;
    v28 = v14;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14AA0);
    v25 = sub_36A00(&qword_E14AA8, &qword_E14AA0);
    v22 = v17;
    sub_AB7050();

    v23 = v27;
    (*(v8 + 16))(v29, v10, v27);
    swift_storeEnumTagMultiPayload();
    v32 = v24;
    v33 = v25;
    swift_getOpaqueTypeConformance2();
    sub_AB6610();
    (*(v8 + 8))(v10, v23);
    return (*(v15 + 8))(v22, v28);
  }
}

uint64_t sub_721EB4@<X0>(_BYTE *a1@<X8>)
{
  sub_AB31C0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_721F50()
{
  sub_AB31C0();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t View.shareSheetPresenting(_:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14A78);
  sub_36A00(&qword_E14A80, &qword_E14A78);
  sub_AB5B50();
  sub_AB7310();
}

uint64_t sub_7220BC()
{
  sub_AB5D50();
  sub_722120();
  return swift_getWitnessTable();
}

unint64_t sub_722120()
{
  result = qword_E14A88;
  if (!qword_E14A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14A88);
  }

  return result;
}

unint64_t sub_7221CC()
{
  result = qword_E14AB0;
  if (!qword_E14AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E14AB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E14AA0);
    sub_36A00(&qword_E14AA8, &qword_E14AA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14AB0);
  }

  return result;
}

unint64_t static LibraryModelRequest.label.getter()
{
  sub_ABAD90(27);

  swift_getMetatypeMetadata();
  v1._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  sub_AB94A0(v2);
  swift_getMetatypeMetadata();
  v3._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  sub_AB94A0(v4);
  return 0xD000000000000014;
}

uint64_t LibraryModelRequest.section.getter()
{
  v1 = *(v0 + 8);
  sub_7223EC(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_7223EC(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;

    v4 = v3;
    v5 = a2;
  }

  return result;
}

uint64_t LibraryModelRequest.section.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_722498(*(v4 + 8), *(v4 + 16));
  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return result;
}

uint64_t sub_722498(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

void *LibraryModelRequest.item.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = v1;
  v4 = v2;

  return v1;
}

uint64_t LibraryModelRequest.item.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  return result;
}

uint64_t LibraryModelRequest.filter.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t LibraryModelRequest.filter.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 80) = a1;
  *(v4 + 88) = a2 & 1;
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
  return result;
}

uint64_t LibraryModelRequest.itemRange.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 112) = result;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
  return result;
}

uint64_t LibraryModelRequest.label.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t LibraryModelRequest.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

double LibraryModelRequest.init(library:section:item:scopedContainers:filter:itemRange:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, __int128 a13, __int128 a14, char a15)
{
  v23[160] = a12 & 1;
  v23[152] = a15 & 1;
  *&v24 = a1;
  *(&v24 + 1) = a2;
  *&v25 = a3;
  *(&v25 + 1) = a4;
  *&v26 = a5;
  *(&v26 + 1) = a6;
  *&v27 = a7;
  *(&v27 + 1) = a8;
  v28 = a10;
  *&v29 = a11;
  BYTE8(v29) = a12 & 1;
  v30 = a13;
  v31 = a14;
  LOBYTE(v32) = a15 & 1;
  *(&v32 + 1) = 0;
  v33 = 0;
  v34[0] = a1;
  v34[1] = a2;
  v34[2] = a3;
  v34[3] = a4;
  v34[4] = a5;
  v34[5] = a6;
  v34[6] = a7;
  v34[7] = a8;
  v35 = a10;
  v36 = a11;
  v37 = a12 & 1;
  v38 = a13;
  v39 = a14;
  v40 = a15 & 1;
  v41 = 0;
  v42 = 0;
  v16 = type metadata accessor for LibraryModelRequest();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v23, &v24, v16);
  (*(v17 + 8))(v34, v16);
  v18 = v31;
  *(a9 + 96) = v30;
  *(a9 + 112) = v18;
  *(a9 + 128) = v32;
  *(a9 + 144) = v33;
  v19 = v27;
  *(a9 + 32) = v26;
  *(a9 + 48) = v19;
  v20 = v29;
  *(a9 + 64) = v28;
  *(a9 + 80) = v20;
  result = *&v24;
  v22 = v25;
  *a9 = v24;
  *(a9 + 16) = v22;
  return result;
}

void LibraryModelRequest.mediaPlayerRequest()(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14AC0);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = v1[6];
  v21 = v1[7];
  v22 = v1[8];
  v23 = *(v1 + 18);
  v16 = v1[2];
  v17 = v1[3];
  v18 = v1[4];
  v19 = v1[5];
  v14 = *v1;
  v15 = v1[1];
  v5 = v4;
  WitnessTable = swift_getWitnessTable();
  sub_723474(v5, a1, WitnessTable);
  [v5 setMediaLibrary:{*v1, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
  isa = 0;
  if (*(v2 + 2) && *(v2 + 4))
  {
    sub_13C80(0, &unk_E110D0);
    isa = sub_AB9740().super.isa;
  }

  [v5 setAllowedSectionIdentifiers:isa];

  v8 = *(v2 + 8);
  if (v8)
  {
    sub_13C80(0, &unk_E110D0);
    v8 = sub_AB9740().super.isa;
  }

  [v5 setAllowedItemIdentifiers:v8];

  v9 = *(v2 + 9);
  if (v9)
  {
    sub_13C80(0, &qword_E10390);
    v9 = sub_AB9740().super.isa;
  }

  [v5 setScopedContainers:v9];

  v10 = *(v2 + 13);
  if (*(v2 + 88))
  {
    v11 = MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  else
  {
    v11 = v2 + 5;
  }

  [v5 setFilteringOptions:*v11];
  if (v10)
  {
    v12 = sub_AB9260();
  }

  else
  {
    v12 = 0;
  }

  [v5 setFilterText:v12];

  if ((v2[8] & 1) == 0)
  {
    if (__OFSUB__(*(v2 + 15), *(v2 + 14)))
    {
      __break(1u);
      return;
    }

    [v5 setContentRange:?];
  }

  if (*(v2 + 18))
  {
    v13 = sub_AB9260();
  }

  else
  {
    v13 = 0;
  }

  [v5 setLabel:v13];
}

uint64_t UIView.Border.thickness.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if (a8)
      {
        if (a3 == a7 && a4 == a8)
        {
          return 1;
        }

        if (sub_ABB3C0())
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a5)
  {
    goto LABEL_6;
  }

  return result;
}

BOOL static LibraryModelRequest.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_13C80(0, &qword_E112E0);
  if ((sub_ABA790() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_7223EC(*(a2 + 8), *(a2 + 16));
    sub_7223EC(v4, v5);
    sub_722498(v4, v5);
    sub_722498(v8, v9);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  sub_7223EC(*(a2 + 8), *(a2 + 16));
  sub_7223EC(v4, v5);
  v18 = static LibraryContentConfiguration.__derived_struct_equals(_:_:)(v4, v5, v6, v7, v8, v9, v11, v10);

  sub_722498(v4, v5);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if ((static LibraryContentConfiguration.__derived_struct_equals(_:_:)(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v13 = *(a2 + 72);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = sub_5D5088(v12, v13);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if ((static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a2 + 80), *(a2 + 88), *(a2 + 96), *(a2 + 104)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 128))
  {
    if (!*(a2 + 128))
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if ((*(a2 + 128) & 1) == 0 && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120))
  {
LABEL_21:
    v16 = *(a1 + 144);
    v17 = *(a2 + 144);
    if (v16)
    {
      return v17 && (*(a1 + 136) == *(a2 + 136) && v16 == v17 || (sub_ABB3C0() & 1) != 0);
    }

    return !v17;
  }

  return result;
}

uint64_t static LibraryContentConfiguration.__derived_struct_equals(_:_:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    sub_13C80(0, &qword_E14AC8);
    v14 = a5;
    v15 = a1;
    v16 = sub_ABA790();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  sub_13C80(0, &qword_E112E0);
  if (sub_ABA790())
  {
    if (a3)
    {
      if (!a7)
      {
        return 0;
      }

      v17 = sub_5D4DF8(a3, a7);

      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else if (a7)
    {
      return 0;
    }

    if (a4)
    {
      if (a8)
      {

        v18 = sub_5D4E0C(a4, a8);

        if (v18)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_722F9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_7223EC(v2, v3);
}

uint64_t sub_722FB0@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  v4 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;

  v6 = v2;
  v7 = v3;
}

uint64_t LibraryContentConfiguration<>.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  isa = sub_AB9740().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return 0;
}

uint64_t sub_723130(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_72316C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_7231A8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_7231E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore27LibraryContentConfigurationVyxGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy152_8_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_72326C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_7232B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_723318()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_723354(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_7233B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_72341C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_723474(void *a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v48 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = sub_ABA9C0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v48 - v15;
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  v19 = *(a3 + 56);
  v57 = v3;
  v60 = a2;
  v50 = v19;
  v19(a2, a3);
  v20 = *(v9 - 8);
  v59 = *(v20 + 48);
  v21 = v59(v18, 1, v9);
  v53 = v10;
  v51 = v11;
  if (v21 == 1)
  {
    (*(v11 + 8))(v18, v10);
    v22 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = (*(AssociatedConformanceWitness + 24))(v9, AssociatedConformanceWitness);
    (*(v20 + 8))(v18, v9);
  }

  [v61 setSectionKind:v22];

  v24 = v50;
  v50(v60, a3);
  v25 = v59(v16, 1, v9);
  v26 = v52;
  if (v25 == 1)
  {
    v27 = 0;
    v28 = v51;
    v29 = v53;
  }

  else
  {
    v30 = swift_getAssociatedConformanceWitness();
    v27 = (*(v30 + 32))(v9, v30);
    v28 = v20;
    v29 = v9;
  }

  (*(v28 + 8))(v16, v29);
  [v61 setSectionProperties:v27];

  v24(v60, a3);
  if (v59(v26, 1, v9) == 1)
  {
    (*(v51 + 8))(v26, v53);
  }

  else
  {
    v31 = swift_getAssociatedConformanceWitness();
    v32 = (*(v31 + 56))(v9, v31);
    (*(v20 + 8))(v26, v9);
    if (v32)
    {
      sub_13C80(0, &qword_E10380);
      v33.super.isa = sub_AB9740().super.isa;

      goto LABEL_12;
    }
  }

  v33.super.isa = 0;
LABEL_12:
  [v61 setSectionSortDescriptors:v33.super.isa];

  v59 = *(a3 + 64);
  v34 = v54;
  v35 = v60;
  (v59)(v60, a3);
  v36 = AssociatedTypeWitness;
  v37 = swift_getAssociatedConformanceWitness();
  v38 = v37[3](v36, v37);
  v49 = a3;
  v56 = *(v56 + 8);
  (v56)(v34, v36);
  v39 = v61;
  [v61 setItemKind:v38];

  v40 = a3;
  v41 = v59;
  (v59)(v35, v40);
  v42 = v37[4](v36, v37);
  v43 = v34;
  v44 = v56;
  (v56)(v43, v36);
  [v39 setItemProperties:v42];

  v45 = v55;
  v41(v35, v49);
  v46 = v37[7](v36, v37);
  v44(v45, v36);
  if (v46)
  {
    sub_13C80(0, &qword_E10380);
    v47.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v47.super.isa = 0;
  }

  [v61 setItemSortDescriptors:v47.super.isa];
}

uint64_t sub_723B40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = *(a3 + 16);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  WitnessTable = swift_getWitnessTable();
  ModelRequest.perform(_:_:)(sub_724224, v8, a3, WitnessTable, a4);
}

void ModelRequest.perform(_:_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v11 = *(a4 + 72);

  v12 = v11(a3, a4);
  v16[4] = sub_724200;
  v16[5] = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_151E0;
  v16[3] = &block_descriptor_201;
  v13 = _Block_copy(v16);
  v14 = v12;

  v15 = [v14 newOperationWithResponseHandler:v13];
  _Block_release(v13);

  if (qword_E0CF18 != -1)
  {
    swift_once();
  }

  [(objc_class *)ModelRequestQueue.super.isa addOperation:v15];
  a5[3] = sub_13C80(0, &qword_E14D20);
  a5[4] = &protocol witness table for NSOperation;

  *a5 = v15;
}

id static MPPropertySet.sectionTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  isa = sub_AB9740().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return v3;
}

id sub_723E64()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  v1 = sub_AB9260();
  [v0 setName:v1];

  [v0 setMaxConcurrentOperationCount:4];
  result = [v0 setQualityOfService:33];
  ModelRequestQueue.super.isa = v0;
  return result;
}

NSOperationQueue *ModelRequestQueue.unsafeMutableAddressor()
{
  if (qword_E0CF18 != -1)
  {
    swift_once();
  }

  return &ModelRequestQueue;
}

uint64_t sub_723F54(void *a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, unint64_t))
{
  v4 = a2;
  if (!a1)
  {
    if (!a2)
    {
      sub_72426C();
      v7 = swift_allocError();
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 2;
      swift_errorRetain();
LABEL_8:
      v14 = 0;
      v15 = 1;
      goto LABEL_9;
    }

LABEL_7:
    sub_72426C();
    v7 = swift_allocError();
    *v17 = v4;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    swift_errorRetain();
    swift_errorRetain();
    v4 = 0;
    goto LABEL_8;
  }

  swift_getAssociatedTypeWitness();
  v6 = swift_dynamicCastUnknownClass();
  if (!v6)
  {
    if (!v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14D28);
      swift_getWitnessTable();
      v19 = sub_6297D4();
      v21 = v20;
      sub_72426C();
      v7 = swift_allocError();
      *v22 = v19;
      *(v22 + 8) = v21;
      v15 = 1;
      *(v22 + 16) = 1;
      swift_errorRetain();
      v4 = 0;
      v14 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF4EC0;
  v9 = MPModelResponseDidInvalidateNotification;
  UIScreen.Dimensions.size.getter(COERCE_DOUBLE(1));
  *(v8 + 56) = &type metadata for NotificationTrigger;
  *(v8 + 64) = &protocol witness table for NotificationTrigger;
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v12 = a1;
  v13 = v9;
  v4 = BindingRequestResponseInvalidation.init(triggers:)(v8);
  v14 = sub_7242C0();
  v15 = 0;
LABEL_9:
  a3(v7, v15, v4, v14);
  sub_21A5E8(v7, v15);
  sub_21A5E8(v7, v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_7241C8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_201(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_724224(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v7 = a1;
  v8 = a2 & 1;
  return v5(&v7, a3, a4);
}

unint64_t sub_72426C()
{
  result = qword_E14D30;
  if (!qword_E14D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14D30);
  }

  return result;
}

unint64_t sub_7242C0()
{
  result = qword_E11F38;
  if (!qword_E11F38)
  {
    type metadata accessor for BindingRequestResponseInvalidation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11F38);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore19ModelRequestFailure33_8A1376CE9C4D710355983652056232D0LLO(uint64_t a1)
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

uint64_t static Request.label.getter()
{
  swift_getMetatypeMetadata();

  return sub_ABB6D0();
}

uint64_t Request.performThenCompleteOnMain(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v11 = *(a5 + 32);

  v11(a1, sub_72484C, v10, a4, a5);
}

uint64_t sub_724440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v34 = a2;
  v35 = a3;
  v36 = sub_AB7C10();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB7C50();
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a6;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  v16 = sub_ABB650();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  sub_58B7D4();
  v31 = sub_ABA150();
  (*(v17 + 16))(v20, a1, v16);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v15;
  *(v22 + 3) = a7;
  v23 = v33;
  *(v22 + 4) = v32;
  *(v22 + 5) = v23;
  (*(v17 + 32))(&v22[v21], v20, v16);
  v24 = &v22[(v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v35;
  *v24 = v34;
  *(v24 + 1) = v25;
  aBlock[4] = sub_725508;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_202;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_5E0768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50);
  sub_5D1CEC();
  v27 = v36;
  sub_ABABB0();
  v28 = v31;
  sub_ABA160();
  _Block_release(v26);

  (*(v39 + 8))(v11, v27);
  return (*(v37 + 8))(v14, v38);
}

uint64_t sub_724814()
{

  return swift_deallocObject();
}

uint64_t Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  v5[7] = sub_ABB650();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E14D38);
  v5[8] = swift_getTupleTypeMetadata2();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_72496C, 0, 0);
}

uint64_t sub_72496C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_724A68;
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001BLL, 0x8000000000B718F0, sub_724E48, v3, v6);
}

uint64_t sub_724A68()
{

  return _swift_task_switch(sub_724B80, 0, 0);
}

uint64_t sub_724B80()
{
  v1 = (v0[9] + *(v0[8] + 48));
  v2 = *v1;
  v3 = v1[1];
  (*(*(v0[7] - 8) + 32))(v0[2], v0[9]);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_724C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  sub_ABB650();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E14D38);
  swift_getTupleTypeMetadata2();
  v9 = sub_AB98E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-1] - v11;
  (*(v10 + 16))(&v17[-1] - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  (*(v10 + 32))(v14 + v13, v12, v9);
  (*(a5 + 32))(v17, a3, sub_725214, v14, a4, a5);

  return sub_72534C(v17);
}

uint64_t sub_724E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  v6 = sub_ABB650();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E14D38);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = __chkstk_darwin(TupleTypeMetadata2);
  v10 = (&v12 + *(v8 + 48) - v9);
  (*(*(v6 - 8) + 16))(&v12 - v9, a1, v6);
  *v10 = a2;
  v10[1] = a3;
  sub_AB98E0();
  swift_unknownObjectRetain();
  return sub_AB98D0();
}

uint64_t Array<A>.cancel()()
{
  sub_AB9870();
  swift_getWitnessTable();
  return sub_AB9680();
}

uint64_t sub_7250FC()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  sub_ABB650();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E14D38);
  swift_getTupleTypeMetadata2();
  v1 = sub_AB98E0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_725214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  sub_ABB650();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E14D38);
  swift_getTupleTypeMetadata2();
  sub_AB98E0();

  return sub_724E54(a1, a2, a3);
}

uint64_t sub_72534C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_E14D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7253B4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  v2 = *(sub_ABB650() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_725508()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  v1 = *(sub_ABB650() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(v0 + 32))(v0 + v2, *v3, v3[1]);
}

uint64_t block_copy_helper_202(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7255FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v3);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v3, *(a1 + 24));
  return swift_willThrowTypedImpl();
}

uint64_t *RequestResponse.Controller.__allocating_init(request:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_72A4AC(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t *RequestResponse.Controller.init(request:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_72A4AC(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_7257C4()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  RequestResponseInvalidatable.invalidate()();

  return swift_unknownObjectRelease();
}

uint64_t property wrapper backing initializer of RequestResponse.Controller.revision(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  return sub_6A7E58(&v3, v1);
}

uint64_t sub_725888(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = *(v3 + 96);
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v1 + v11, v4);
  v21[1] = *(*(v3 + 88) + 8);
  v13 = sub_AB91C0();
  v14 = *(v5 + 8);
  result = v14(v10, v4);
  if ((v13 & 1) == 0)
  {
    v21[0] = v8;
    RequestResponse.Controller.revision.getter();
    sub_7257C4();

    v16 = *(*v2 + 176);
    swift_beginAccess();
    v17 = *(v2 + v16);
    if (v17)
    {
      v12(v10, (v17 + *(*v17 + 96)), v4);
      v18 = v2 + v11;
      v19 = v21[0];
      v12(v21[0], v18, v4);

      v20 = sub_AB91C0();
      v14(v19, v4);
      v14(v10, v4);
      if ((v20 & 1) == 0)
      {
        sub_7257C4();
      }
    }

    return sub_725BC0();
  }

  return result;
}

uint64_t RequestResponse.Controller.revision.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_725BC0()
{
  v1 = *(*v0 + 144);
  result = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    return RequestResponse.Controller.setNeedsReload(_:)(0, 0);
  }

  return result;
}

uint64_t RequestResponse.Controller.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t RequestResponse.Controller.request.setter(uint64_t a1)
{
  v3 = *v1;
  sub_72A9BC(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*RequestResponse.Controller.request.modify(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 96);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_725EAC;
}

void sub_725EAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_72A9BC(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_72A9BC(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_725F88@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

uint64_t sub_725FB4()
{

  sub_72A88C();
}

uint64_t sub_725FF8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = RequestResponse.Controller.revision.getter();
  v6 = *(v5 + *(*v5 + 112));

  v8 = *(a1 + *(*a1 + 112));
  if (v6 != v8)
  {
    v9 = RequestResponse.Controller.revision.getter();
    v10 = *(v9 + *(*v9 + 112));

    if (v8 >= v10)
    {
      if (qword_E0CF20 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E720E8);
      swift_retain_n();

      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134349312;
        v30 = RequestResponse.Controller.revision.getter();
        v31 = *(v30 + *(*v30 + 112));

        *(v29 + 4) = v31;

        *(v29 + 12) = 2050;
        *(v29 + 14) = v8;

        _os_log_impl(&dword_0, v27, v28, "Attempted to apply a revision which ID (%{public}ld) is older than the previous revision's (%{public}ld).", v29, 0x16u);
      }

      else
      {
      }

      sub_72A88C(v32);
    }

    else
    {
      v11 = *(*v2 + 184);
      v12 = *(v2 + v11);
      if (v12)
      {
        v13 = *(v12 + *(*v12 + 112));

        v14 = RequestResponse.Controller.revision.getter();

        v15 = *(v14 + *(*v14 + 112));

        if (v15 >= v13)
        {
          *(v2 + v11) = 0;
        }
      }

      v16 = *(*v2 + 176);
      swift_beginAccess();
      v17 = *(v2 + v16);
      if (v17)
      {
        v18 = *(v17 + *(*v17 + 112));

        v19 = RequestResponse.Controller.revision.getter();

        v20 = *(v19 + *(*v19 + 112));

        if (v20 >= v18)
        {
          *(v2 + v16) = 0;
        }
      }

      v21 = RequestResponse.Controller.revision.getter();
      sub_7268F4(v21);
      v22 = *(*v21 + 112);
      swift_beginAccess();
      v24 = *(v4 + 80);
      v23 = *(v4 + 88);
      type metadata accessor for RequestResponse.Revision();
      swift_getFunctionTypeMetadata2();
      sub_AB9870();
      sub_AB90A0();
      if (v60)
      {
        v25 = swift_endAccess();
        v61[0] = v60;
        __chkstk_darwin(v25);
        swift_getWitnessTable();
        sub_AB9680();
      }

      else
      {
        swift_endAccess();
      }

      swift_beginAccess();
      sub_AB9080();
      sub_AB90B0();
      swift_endAccess();
      v33 = RequestResponse.Controller.revision.getter();
      v34 = *(v33 + *(*v33 + 120) + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v36 = (*(v34 + 40))(ObjectType, v34);
      swift_unknownObjectRelease();
      if (v36)
      {
        if (qword_E0CF20 != -1)
        {
          swift_once();
        }

        v37 = sub_AB4BC0();
        __swift_project_value_buffer(v37, qword_E720E8);
        v38 = sub_AB4BA0();
        v39 = sub_AB9F50();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v59 = v22;
          v41 = swift_slowAlloc();
          v61[0] = v41;
          *v40 = 136446210;
          v42 = (*(v23 + 24))(v24, v23);
          v44 = sub_500C84(v42, v43, v61);

          *(v40 + 4) = v44;
          _os_log_impl(&dword_0, v38, v39, "╭ %{public}s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          v22 = v59;
        }

        v45 = sub_AB4BA0();
        v46 = sub_AB9F50();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_0, v45, v46, "╞ 🔄 Invalid", v47, 2u);
        }

        v48 = sub_AB4BA0();
        v49 = sub_AB9F50();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 134349056;
          *(v50 + 4) = *(v21 + v22);

          _os_log_impl(&dword_0, v48, v49, "╰ RevisionID=%{public}ld", v50, 0xCu);
        }

        else
        {
        }

        sub_725BC0();
      }

      else
      {
        v51 = RequestResponse.Controller.revision.getter();
        v52 = *(v51 + *(*v51 + 112));

        v53 = RequestResponse.Controller.revision.getter();
        v54 = *(v53 + *(*v53 + 120) + 8);
        swift_unknownObjectRetain();

        v55 = swift_getObjectType();
        v56 = swift_allocObject();
        swift_weakInit();
        v57 = swift_allocObject();
        v57[2] = v24;
        v57[3] = v23;
        v57[4] = v56;
        v57[5] = v52;
        v58 = *(v54 + 24);

        v58(sub_72B3B0, v57, v55, v54);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_7268F4(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 128));
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {

    v5(v1, a1);
    return sub_17654(v5);
  }

  return result;
}

uint64_t sub_726984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = RequestResponse.Controller.revision.getter();
    v12 = *(v11 + *(*v11 + 112));

    if (v12 == a4)
    {
      if (qword_E0CF20 != -1)
      {
        swift_once();
      }

      v13 = sub_AB4BC0();
      __swift_project_value_buffer(v13, qword_E720E8);
      v14 = sub_AB4BA0();
      v15 = sub_AB9F50();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v37[0] = v17;
        *v16 = 136446210;
        v18 = (*(a6 + 24))(a5, a6);
        v20 = sub_500C84(v18, v19, v37);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_0, v14, v15, "╭ %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
      }

      v21 = sub_AB4BA0();
      v22 = sub_AB9F50();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v21, v22, "╞ 🔄 Invalidated", v23, 2u);
      }

      v24 = sub_AB4BA0();
      v25 = sub_AB9F50();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134349056;
        *(v26 + 4) = a4;
        _os_log_impl(&dword_0, v24, v25, "╞ RevisionID=%{public}ld", v26, 0xCu);
      }

      swift_unknownObjectRetain();
      v27 = sub_AB4BA0();
      v28 = sub_AB9F50();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37[0] = v30;
        *v29 = 136446210;
        swift_getObjectType();
        v31 = sub_ABB3D0();
        v33 = sub_500C84(v31, v32, v37);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_0, v27, v28, "╰ Invalidator=%{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
      }

      v34 = (v10 + *(*v10 + 136));
      swift_beginAccess();
      v35 = *v34;
      if (*v34)
      {

        v36 = RequestResponse.Controller.revision.getter();
        v35(v10, v36);
        sub_17654(v35);
      }

      sub_725BC0();
    }
  }

  return result;
}

uint64_t RequestResponse.Controller.$revision.getter()
{
  swift_beginAccess();
  type metadata accessor for RequestResponse.Revision();
  sub_AB5540();
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t RequestResponse.Controller.willReloadRequest.getter()
{
  v1 = (v0 + *(*v0 + 112));
  swift_beginAccess();
  v2 = *v1;
  sub_307CC(*v1);
  return v2;
}

uint64_t RequestResponse.Controller.willReloadRequest.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 112));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_17654(v6);
}

uint64_t RequestResponse.Controller.willApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  v2 = *v1;
  sub_307CC(*v1);
  return v2;
}

uint64_t RequestResponse.Controller.willApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_17654(v6);
}

uint64_t RequestResponse.Controller.didApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v2 = *v1;
  sub_307CC(*v1);
  return v2;
}

uint64_t RequestResponse.Controller.didApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_17654(v6);
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.getter()
{
  v1 = (v0 + *(*v0 + 136));
  swift_beginAccess();
  v2 = *v1;
  sub_307CC(*v1);
  return v2;
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 136));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_17654(v6);
}

uint64_t sub_72736C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *(*v2 + 144);
  result = swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    v6 = RequestResponse.Controller.revision.getter();
    v7 = *(v6 + *(*v6 + 120) + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 40))(ObjectType, v7);
    result = swift_unknownObjectRelease();
    if (v9)
    {
      v10 = *(*v2 + 176);
      swift_beginAccess();
      if (!*(v2 + v10))
      {
        return sub_725BC0();
      }

      v11 = RequestResponse.Revision.isValid.getter();

      if (!v11)
      {
        return sub_725BC0();
      }
    }
  }

  return result;
}

BOOL RequestResponse.Revision.isValid.getter()
{
  v1 = *(v0 + *(*v0 + 120) + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v1) = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return (v1 & 1) == 0;
}

uint64_t RequestResponse.Controller.isAutomaticReloadingEnabled.getter()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestResponse.Controller.isAutomaticReloadingEnabled.setter(char a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_72736C(v4);
}

void (*RequestResponse.Controller.isAutomaticReloadingEnabled.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 144);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_727674;
}

uint64_t sub_72768C(char a1)
{
  v3 = *(*v1 + 152);
  result = swift_beginAccess();
  if (*(v1 + v3) & 1) == 0 && (a1)
  {
    v5 = *(v1 + *(*v1 + 184));
    if (v5)
    {
      v6 = *(*v5 + 112);
      v7 = *(v5 + v6);

      v8 = RequestResponse.Controller.revision.getter();
      v9 = *(v8 + *(*v8 + 112));

      if (v9 < v7)
      {
        if (qword_E0CF20 != -1)
        {
          swift_once();
        }

        v10 = sub_AB4BC0();
        __swift_project_value_buffer(v10, qword_E720E8);
        v11 = sub_AB4BA0();
        v12 = sub_AB9F50();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_0, v11, v12, "╭ ⏰ RRC resumed, applying pending revision", v13, 2u);
        }

        v14 = sub_AB4BA0();
        v15 = sub_AB9F50();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134349056;
          *(v16 + 4) = *(v5 + v6);

          _os_log_impl(&dword_0, v14, v15, "╞ RevisionID=%{public}ld", v16, 0xCu);
        }

        else
        {
        }

        sub_7278CC(v5);
      }
    }
  }

  return result;
}

void sub_7278CC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MSVBlockGuard);
  v16[4] = sub_729784;
  v16[5] = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_71F2F4;
  v16[3] = &block_descriptor_24_3;
  v5 = _Block_copy(v16);
  v6 = [v4 initWithTimeout:v5 interruptionHandler:10.0];
  _Block_release(v5);

  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = a1;
  v8 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {

    v10 = v6;
    sub_307CC(v9);
    if (qword_E0CF20 != -1)
    {
      swift_once();
    }

    v11 = sub_AB4BC0();
    __swift_project_value_buffer(v11, qword_E720E8);
    v12 = sub_AB4BA0();
    v13 = sub_AB9F50();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "╞ 🫸 calling willApplyRevision; Waiting for client to accept it.", v14, 2u);
    }

    v9(v2, a1, sub_72B324, v7);

    sub_17654(v9);
  }

  else
  {

    v15 = v6;
    sub_72986C(v15);
  }
}

uint64_t RequestResponse.Controller.isPaused.getter()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestResponse.Controller.isPaused.setter(char a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_72768C(v4);
}

void (*RequestResponse.Controller.isPaused.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 152);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_727CB4;
}

void sub_727CCC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

uint64_t RequestResponse.Controller.setNeedsReload(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *v3;
  v8 = sub_AB7C10();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_AB7C50();
  v45 = *(v47 - 8);
  v10 = __chkstk_darwin(v47);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v6 + 80);
  v14 = *(v13 - 8);
  result = __chkstk_darwin(v10);
  v17 = &v43 - v16;
  if (a1)
  {
    v18 = swift_allocObject();
    v18[2] = v13;
    v18[3] = *(v7 + 88);
    v18[4] = a1;
    v18[5] = a2;
    aBlock[6] = sub_72AB84;
    aBlock[7] = v18;
    swift_beginAccess();
    type metadata accessor for RequestResponse.Revision();
    swift_getFunctionTypeMetadata2();
    sub_AB9870();

    sub_AB9820();
    result = swift_endAccess();
    v6 = *v3;
  }

  v19 = *(v6 + 192);
  if ((*(v3 + v19) & 1) == 0)
  {
    *(v3 + v19) = 1;
    v20 = *(*v3 + 176);
    swift_beginAccess();
    v21 = *(v3 + v20);
    if (v21)
    {
      v44 = v8;
      v22 = *(*v3 + 96);
      swift_beginAccess();
      (*(v14 + 16))(v17, v3 + v22, v13);
      v23 = *(*v21 + 96);
      v24 = *(v7 + 88);
      v25 = *(v24 + 40);

      LOBYTE(v23) = v25(v21 + v23, v13, v24);
      (*(v14 + 8))(v17, v13);
      if (v23)
      {
        if (qword_E0CF20 != -1)
        {
          swift_once();
        }

        v26 = sub_AB4BC0();
        __swift_project_value_buffer(v26, qword_E720E8);
        v27 = sub_AB4BA0();
        v28 = sub_AB9F50();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock[0] = v43;
          *v29 = 136446210;
          v30 = (*(v24 + 24))(v13, v24);
          v32 = sub_500C84(v30, v31, aBlock);

          *(v29 + 4) = v32;
          _os_log_impl(&dword_0, v27, v28, "╭ %{public}s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
        }

        v33 = sub_AB4BA0();
        v34 = sub_AB9F50();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_0, v33, v34, "╞ 🛑 Cancelled", v35, 2u);
        }

        v36 = sub_AB4BA0();
        v37 = sub_AB9F50();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 134349056;
          *(v38 + 4) = *(v21 + *(*v21 + 112));

          _os_log_impl(&dword_0, v36, v37, "╰ RevisionID=%{public}ld", v38, 0xCu);
        }

        else
        {
        }

        v39 = *(v21 + *(*v21 + 112));
        swift_beginAccess();
        sub_683BC4(&v49, v39);
        swift_endAccess();
        sub_7257C4();
      }

      v8 = v44;
    }

    sub_58B7D4();
    v40 = sub_ABA150();
    aBlock[4] = sub_72AB30;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_203;
    v41 = _Block_copy(aBlock);

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_72B248(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50);
    sub_5D1CEC();
    v42 = v46;
    sub_ABABB0();
    sub_ABA160();
    _Block_release(v41);

    (*(v48 + 8))(v42, v8);
    return (*(v45 + 8))(v12, v47);
  }

  return result;
}

uint64_t sub_7284E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = v60 - v10;
  v13 = *(v12 + 192);
  if (*(v1 + v13) != 1)
  {
    return result;
  }

  *(v1 + v13) = 0;
  v14 = *(*v1 + 176);
  swift_beginAccess();
  v63 = v14;
  v15 = *(v2 + v14);
  if (v15 || (v15 = *(v2 + *(*v2 + 184))) != 0)
  {
    v16 = *(v15 + *(*v15 + 112));
    v17 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v58 = RequestResponse.Controller.revision.getter();
    v59 = *(v58 + *(*v58 + 112));

    v17 = v59 + 1;
    if (!__OFADD__(v59, 1))
    {
LABEL_5:
      v61 = v8;
      v18 = *(*v2 + 96);
      swift_beginAccess();
      v62 = v5;
      v60[0] = v5[2];
      v60[1] = v5 + 2;
      (v60[0])(v11, v2 + v18, v4);
      v19 = *(*v2 + 160);
      swift_beginAccess();
      v71[0] = *(v2 + v19);
      v67 = v11;
      v68 = v17;
      *&v69 = v17;
      swift_beginAccess();
      v64 = *(v3 + 88);
      v65 = v4;
      type metadata accessor for RequestResponse.Revision();
      swift_getFunctionTypeMetadata2();
      sub_AB9870();
      sub_AB9080();

      v8 = v67;
      sub_AB90B0();
      swift_endAccess();
      *(v2 + v19) = sub_AB97C0();

      v20 = (v2 + *(*v2 + 112));
      swift_beginAccess();
      v21 = *v20;
      if (*v20)
      {

        v21(v2, v8);
        sub_17654(v21);
      }

      swift_checkMetadataState();
      swift_allocObject();
      v5 = sub_72A208(v68, v8);
      *(v2 + v63) = v5;

      if (qword_E0CF20 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_8:
  v22 = sub_AB4BC0();
  __swift_project_value_buffer(v22, qword_E720E8);
  v23 = sub_AB4BA0();
  v24 = sub_AB9F50();
  v25 = os_log_type_enabled(v23, v24);
  v66 = v5;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v72[0] = v27;
    *v26 = 136446210;
    v28 = (*(v64 + 24))();
    v30 = sub_500C84(v28, v29, v72);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v23, v24, "╭ %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);

    v8 = v67;
  }

  v31 = sub_AB4BA0();
  v32 = sub_AB9F50();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "╞ 🕺Performing", v33, 2u);
  }

  v34 = sub_AB4BA0();
  v35 = sub_AB9F50();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    *(v36 + 4) = v68;
    _os_log_impl(&dword_0, v34, v35, "╞ RevisionID=%{public}ld", v36, 0xCu);
  }

  v37 = sub_AB4BA0();
  v38 = sub_AB9F50();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v72[0] = v40;
    *v39 = 136446210;
    swift_beginAccess();
    (v60[0])(v61, v8, v65);
    v41 = sub_AB9350();
    v43 = sub_500C84(v41, v42, v72);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_0, v37, v38, "╰ Request=%{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  v44 = v68;
  swift_beginAccess();
  v45 = RequestResponse.Controller.revision.getter();
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v47[2] = v66;
  v47[3] = v46;
  v47[4] = v44;
  v48 = v64;
  v49 = v8;
  v50 = *(v64 + 32);

  v51 = v65;
  v50(v72, v45, sub_72B164, v47, v65, v48);

  sub_72B170(v72, &v69);
  if (v70)
  {
    sub_70DF8(&v69, v71);
    v52 = v63;
    swift_beginAccess();
    v53 = *(v2 + v52);
    v54 = v62;
    if (v53)
    {
      swift_endAccess();
      v55 = v67;
      if (*(v53 + *(*v53 + 112)) == v68)
      {
        type metadata accessor for RequestResponse.Controller.TaskInvalidator();
        sub_E8BA0(v71, &v69);
        v56 = swift_allocObject();
        *(v56 + 56) = 0;
        *(v56 + 64) = 0;
        *(v56 + 72) = 0;
        sub_70DF8(&v69, v56 + 16);
        WitnessTable = swift_getWitnessTable();

        sub_72B1E0(v56, WitnessTable);
      }

      __swift_destroy_boxed_opaque_existential_0(v71);
      sub_72534C(v72);
      return (v54[1])(v55, v51);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v71);
      sub_72534C(v72);
      swift_endAccess();

      return (v54[1])(v67, v51);
    }
  }

  else
  {
    sub_72534C(v72);

    sub_72534C(&v69);
    return (v62[1])(v49, v51);
  }
}

uint64_t sub_728E58(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  sub_70DF8(a1, v2 + 16);
  return v2;
}

uint64_t sub_728EA4(uint64_t result)
{
  if (*(v1 + 56) == 1 && (result & 1) == 0)
  {
    v2 = *(v1 + 40);
    v3 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
    return (*(v3 + 8))(v2, v3);
  }

  return result;
}

uint64_t sub_728F08(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return sub_728EA4(v2);
}

uint64_t sub_728F18()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  sub_17654(*(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_728F58()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_307CC(v1);
  return v1;
}

uint64_t sub_728FA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_17654(v5);
}

uint64_t (*sub_729058(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return sub_729084;
}

uint64_t sub_7290B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*a4 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  v13 = sub_ABB650();
  (*(*(v13 - 8) + 24))(a4 + v12, a1, v13);
  swift_endAccess();
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    type metadata accessor for GenericRequestResponseInvalidation();
    v14 = swift_allocObject();
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 16) = 0x636972656E6547;
    *(v14 + 24) = 0xE700000000000000;
    a3 = sub_72B248(qword_E14EC8, type metadata accessor for GenericRequestResponseInvalidation);
  }

  swift_unknownObjectRetain();
  sub_72B1E0(v14, a3);
  swift_unknownObjectRelease();
  sub_58B7D4();
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a4;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_72B2D0, v15);
}

void sub_7292E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_E0CF20 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E720E8);
    v9 = sub_AB4BA0();
    v10 = sub_AB9F50();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v34[0] = v12;
      *v11 = 136446210;
      v13 = (*(*(v5 + 88) + 24))(*(v5 + 80));
      v15 = sub_500C84(v13, v14, v34);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_0, v9, v10, "╭ %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "╞ ✅ Finished Loading", v18, 2u);
    }

    v19 = sub_AB4BA0();
    v20 = sub_AB9F50();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = a2;
      _os_log_impl(&dword_0, v19, v20, "╞ RevisionID=%{public}ld", v21, 0xCu);
    }

    v22 = *(a3 + *(*a3 + 112));
    swift_beginAccess();
    sub_614050(v22);
    v24 = v23;
    swift_endAccess();
    if (v24)
    {
      v25 = *(*v7 + 152);
      swift_beginAccess();
      if (*(v7 + v25) != 1)
      {
        v32 = RequestResponse.Controller.revision.getter();
        v33 = *(v32 + *(*v32 + 112));

        if (v33 < v22)
        {
          sub_7278CC(a3);
        }

        goto LABEL_24;
      }

      v26 = *(*v7 + 184);
      v27 = *(v7 + v26);
      if (v27)
      {
        if (*(v27 + *(*v27 + 112)) >= a2)
        {
          goto LABEL_24;
        }
      }

      else if (a2 <= 0)
      {
LABEL_24:

        return;
      }

      *(v7 + v26) = a3;

      v28 = sub_AB4BA0();
      v29 = sub_AB9F50();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "╰ 💤 Set as Pending; RRC is Paused";
        goto LABEL_22;
      }
    }

    else
    {
      v28 = sub_AB4BA0();
      v29 = sub_AB9F50();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "╰ ⏭ Skipping revision; Cancelled";
LABEL_22:
        _os_log_impl(&dword_0, v28, v29, v31, v30, 2u);
      }
    }
  }
}

void sub_729784()
{
  if (qword_E0CF20 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();
  __swift_project_value_buffer(v0, qword_E720E8);
  oslog = sub_AB4BA0();
  v1 = sub_AB9F40();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
  }
}

void sub_72986C(void *a1)
{
  [a1 disarm];

  sub_72A88C();

  if (qword_E0CF20 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E720E8);
  oslog = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, oslog, v2, "╰ 👌 Applied", v3, 2u);
  }
}

uint64_t RequestResponse.Controller.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v1 = *(*v0 + 104);
  type metadata accessor for RequestResponse.Revision();
  v2 = sub_AB5540();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_17654(*(v0 + *(*v0 + 112)));
  sub_17654(*(v0 + *(*v0 + 120)));
  sub_17654(*(v0 + *(*v0 + 128)));
  sub_17654(*(v0 + *(*v0 + 136)));

  return v0;
}

uint64_t RequestResponse.Revision.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  v4 = sub_ABB650();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t RequestResponse.Revision.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  v5 = sub_ABB650();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = *(v3 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  sub_7255FC(v5, &v12, a1);
  return (*(*(AssociatedTypeWitness - 8) + 56))(a1, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_729EF8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 40))(ObjectType, a2);
  if (result)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    RequestResponseInvalidatable.invalidate()();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RequestResponse.Revision.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  v2 = sub_ABB650();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_72A104(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_72A184()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E720E8);
  __swift_project_value_buffer(v0, qword_E720E8);
  return sub_AB4BB0();
}

uint64_t *sub_72A208(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
  v7 = sub_ABB650();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - v9);
  *(v2 + *(v5 + 112)) = a1;
  (*(*(v6 - 8) + 16))(v2 + *(*v2 + 96), a2, v6);
  type metadata accessor for RequestResponse.Revision.InitialResponseLoadingError();
  swift_getWitnessTable();
  *v10 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (*(v8 + 32))(v2 + *(*v2 + 104), v10, v7);
  type metadata accessor for GenericRequestResponseInvalidation();
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 16) = 0x636972656E6547;
  *(v11 + 24) = 0xE700000000000000;
  v12 = sub_72B248(qword_E14EC8, type metadata accessor for GenericRequestResponseInvalidation);
  v13 = (v2 + *(*v2 + 120));
  *v13 = v11;
  v13[1] = v12;
  return v2;
}

uint64_t *sub_72A4AC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = (v2 + *(*v2 + 112));
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + *(*v2 + 120));
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + *(*v2 + 128));
  *v7 = 0;
  v7[1] = 0;
  v8 = (v2 + *(*v2 + 136));
  *v8 = 0;
  v8[1] = 0;
  *(v2 + *(*v2 + 144)) = 0;
  *(v2 + *(*v2 + 152)) = 0;
  v9 = *(*v2 + 160);
  v10 = *(v4 + 80);
  type metadata accessor for RequestResponse.Revision();
  swift_getFunctionTypeMetadata2();
  *(v2 + v9) = sub_AB97C0();
  v11 = *(*v2 + 168);
  v12 = sub_AB9870();
  swift_getTupleTypeMetadata2();
  v13 = sub_AB97C0();
  v14 = sub_5B8BEC(v13, &type metadata for Int, v12, &protocol witness table for Int);

  *(v2 + v11) = v14;
  *(v2 + *(*v2 + 176)) = 0;
  *(v2 + *(*v2 + 184)) = 0;
  *(v2 + *(*v2 + 192)) = 0;
  *(v2 + *(*v2 + 200)) = &_swiftEmptySetSingleton;
  (*(*(v10 - 8) + 16))(v2 + *(*v2 + 96), a1, v10);
  swift_checkMetadataState();
  swift_allocObject();
  v15 = sub_72A208(0, a1);
  sub_7257C4();
  swift_beginAccess();
  v16 = *v15;
  v18 = v15;
  sub_6A7E58(&v18, v16);
  swift_endAccess();
  return v2;
}

uint64_t sub_72A804@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

uint64_t sub_72A830()
{

  sub_72A88C();
}

__n128 sub_72A880(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_72A88C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5520();
  sub_725FF8(v1);
}

uint64_t sub_72A9BC(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10[-v5];
  v8 = *(v7 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_725888(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t block_copy_helper_203(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_72AB4C()
{

  return swift_deallocObject();
}

uint64_t sub_72AC24()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for RequestResponse.Revision();
    result = sub_AB5540();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_72ADC8()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11A80);
    v0 = sub_ABB650();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v0;
}

uint64_t sub_72AF00(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_72AF3C(uint64_t a1, uint64_t a2)
{
  v3._countAndFlagsBits = (*(a2 + 24))();
  sub_AB94A0(v3);

  return 0x3A664F6B736154;
}

uint64_t sub_72AFA8(uint64_t a1)
{
  type metadata accessor for RequestResponse.Revision();
  v2 = sub_AB5530();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1);
  swift_beginAccess();
  sub_AB5540();
  sub_AB54F0();
  return swift_endAccess();
}

uint64_t sub_72B0EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_72B124()
{

  return swift_deallocObject();
}

uint64_t sub_72B170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_E14D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_72B1E0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 120));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  sub_729EF8(v4, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_72B248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_72B290()
{

  return swift_deallocObject();
}

uint64_t sub_72B2DC()
{

  return swift_deallocObject();
}

uint64_t sub_72B330(uint64_t (**a1)(uint64_t *, uint64_t *))
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v5 = *(v1 + 24);
  v6 = v2;
  return v3(&v6, &v5);
}

uint64_t sub_72B378()
{

  return swift_deallocObject();
}

uint64_t BindingRequestResponseInvalidation.__allocating_init(triggers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  BindingRequestResponseInvalidation.init(triggers:)(a1);
  return v2;
}

uint64_t GenericRequestResponseInvalidation.__allocating_init(label:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

Swift::Void __swiftcall RequestResponseInvalidatable.invalidate()()
{
  v3 = v1;
  v4 = v0;
  if (((*(v1 + 40))() & 1) == 0)
  {
    (*(v3 + 48))(1, v4, v3);
    v5 = (*(v3 + 16))(v4, v3);
    if (v5)
    {
      v6 = v5;
      v5(v2, v3);

      sub_17654(v6);
    }
  }
}

uint64_t GenericRequestResponseInvalidation.init(label:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_307CC(v1);
  return v1;
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_17654(v5);
}

uint64_t GenericRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t GenericRequestResponseInvalidation.deinit()
{

  sub_17654(*(v0 + 32));
  return v0;
}

uint64_t GenericRequestResponseInvalidation.__deallocating_deinit()
{

  sub_17654(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_72B784()
{
  v1 = *(*v0 + 16);

  return v1;
}

void *CompoundRequestResponseInvalidation.__allocating_init(responseInvalidations:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_72C4E8(a1);

  return v2;
}

void *CompoundRequestResponseInvalidation.init(responseInvalidations:)(uint64_t a1)
{
  v1 = sub_72C4E8(a1);

  return v1;
}

uint64_t CompoundRequestResponseInvalidation.append(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = v2;
    v5 = result;
    ObjectType = swift_getObjectType();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = *(a2 + 24);
    swift_unknownObjectRetain();

    v8(sub_72C7B8, v7, ObjectType, a2);

    swift_beginAccess();
    v9 = *(v2 + 40);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 40) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_507208(0, v9[2] + 1, 1, v9);
      *(v3 + 40) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_507208((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[2 * v12];
    v13[4] = v5;
    v13[5] = a2;
    *(v3 + 40) = v9;
    swift_endAccess();
    if (((*(a2 + 40))(ObjectType, a2) & 1) != 0 && (swift_beginAccess(), *(v3 + 32) != 1) && (*(v3 + 32) = 1, swift_beginAccess(), (v14 = *(v3 + 16)) != 0))
    {

      v14(v5, a2);
      swift_unknownObjectRelease();
      return sub_17654(v14);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_72BA7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    if (*(v5 + 32) == 1)
    {
    }

    *(v5 + 32) = 1;
    swift_beginAccess();
    v6 = *(v5 + 16);
    if (!v6)
    {
    }

    else
    {

      v6(a1, a2);

      return sub_17654(v6);
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundRequestResponseInvalidation.append(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = *(a1._rawValue + 2);
  swift_beginAccess();
  swift_beginAccess();
  if (v4)
  {
    v5 = (a1._rawValue + 32);
    do
    {
      v15 = *v5;
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = *(*(&v15 + 1) + 24);
      swift_unknownObjectRetain_n();

      v9(sub_72C9C8, v8, ObjectType, *(&v15 + 1));

      swift_beginAccess();
      v10 = *(v2 + 40);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 40) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_507208(0, v10[2] + 1, 1, v10);
        *(v2 + 40) = v10;
      }

      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v10 = sub_507208((v12 > 1), v13 + 1, 1, v10);
      }

      v10[2] = v13 + 1;
      *&v10[2 * v13 + 4] = v15;
      *(v2 + 40) = v10;
      swift_endAccess();
      if (((*(*(&v15 + 1) + 40))(ObjectType, *(&v15 + 1)) & 1) != 0 && (*(v2 + 32) & 1) == 0 && (*(v2 + 32) = 1, (v14 = *(v2 + 16)) != 0))
      {

        v14(v6, *(&v15 + 1));
        swift_unknownObjectRelease_n();
        sub_17654(v14);
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v5;
      --v4;
    }

    while (v4);
  }
}

uint64_t CompoundRequestResponseInvalidation.debugDescription.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v1 + 40;
    while (v4 < *(v1 + 16))
    {
      ++v4;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v6 = sub_ABB3D0();
      v8 = v7;

      v9._countAndFlagsBits = v6;
      v9._object = v8;
      sub_AB94A0(v9);

      v10._countAndFlagsBits = 124;
      v10._object = 0xE100000000000000;
      sub_AB94A0(v10);
      swift_unknownObjectRelease();

      v5 += 16;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v11._countAndFlagsBits = 93;
    v11._object = 0xE100000000000000;
    sub_AB94A0(v11);

    return 0x646E756F706D6F43;
  }

  return result;
}

uint64_t CompoundRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t CompoundRequestResponseInvalidation.deinit()
{
  sub_17654(*(v0 + 16));

  return v0;
}

uint64_t CompoundRequestResponseInvalidation.__deallocating_deinit()
{
  sub_17654(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t BindingRequestResponseInvalidation.__allocating_init(trigger:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF4EC0;
  sub_E8BA0(a1, v2 + 32);
  v3 = swift_allocObject();
  BindingRequestResponseInvalidation.init(triggers:)(v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t BindingRequestResponseInvalidation.init(triggers:)(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  *(v2 + 16) = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v6, 0, sub_72C800, v5);

  return v2;
}

uint64_t sub_72C15C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (*(v1 + 40) == 1)
    {
    }

    *(v1 + 40) = 1;
    swift_beginAccess();
    v2 = *(v1 + 24);
    if (!v2)
    {
    }

    else
    {
      v3 = sub_72C97C(&qword_E11F38, type metadata accessor for BindingRequestResponseInvalidation);

      v2(v1, v3);

      return sub_17654(v2);
    }
  }

  return result;
}

uint64_t BindingRequestResponseInvalidation.debugDescription.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14F50);
  v1._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v1);

  return 0x3D676E69646E6942;
}

uint64_t BindingRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t BindingRequestResponseInvalidation.deinit()
{

  sub_17654(*(v0 + 24));
  return v0;
}

uint64_t BindingRequestResponseInvalidation.__deallocating_deinit()
{

  sub_17654(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_72C464()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14F50);
  v1._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v1);

  return 0x3D676E69646E6942;
}

void *sub_72C4E8(uint64_t a1)
{
  v2 = v1;
  v20 = v2;
  v2[2] = 0;
  v2 += 2;
  *(v2 + 16) = 0;
  v2[3] = _swiftEmptyArrayStorage;
  v4 = v2 + 3;
  v2[1] = 0;
  v5 = *(a1 + 16);
  v19 = v2 + 2;
  swift_beginAccess();
  v18 = v2;
  swift_beginAccess();
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v21 = v5;
      v22 = *v6;
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = v4;
      v11 = *(*(&v22 + 1) + 24);
      swift_unknownObjectRetain_n();

      v11(sub_72C9C8, v9, ObjectType, *(&v22 + 1));
      v4 = v10;

      swift_beginAccess();
      v12 = v20[5];
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20[5] = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_507208(0, v12[2] + 1, 1, v12);
        *v10 = v12;
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        v12 = sub_507208((v14 > 1), v15 + 1, 1, v12);
      }

      v12[2] = v15 + 1;
      *&v12[2 * v15 + 4] = v22;
      *v10 = v12;
      swift_endAccess();
      if (((*(*(&v22 + 1) + 40))(ObjectType, *(&v22 + 1)) & 1) != 0 && (*v19 & 1) == 0 && (*v19 = 1, (v16 = *v18) != 0))
      {

        v16(v7, *(&v22 + 1));
        swift_unknownObjectRelease_n();
        sub_17654(v16);
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v6;
      v5 = v21 - 1;
    }

    while (v21 != 1);
  }

  return v20;
}

uint64_t sub_72C780()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_72C7C0()
{

  return swift_deallocObject();
}

uint64_t sub_72C808(uint64_t a1)
{
  result = sub_72C97C(&qword_E14F58, type metadata accessor for GenericRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_72C884(uint64_t a1)
{
  result = sub_72C97C(&qword_E14F60, type metadata accessor for CompoundRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_72C900(uint64_t a1)
{
  result = sub_72C97C(&qword_E14F68, type metadata accessor for BindingRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_72C97C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Logger.sharePlayTogether.unsafeMutableAddressor()
{
  if (qword_E0CF28 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.sharePlayTogether);
}

uint64_t SharePlayTogetherSession.isEqual(_:)(uint64_t a1)
{
  sub_15F84(a1, v6, &qword_E11F60);
  if (!v7)
  {
    sub_12E1C(v6, &qword_E11F60);
    goto LABEL_9;
  }

  type metadata accessor for SharePlayTogetherSession(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  if (*&v5[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier] == *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier) && *&v5[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8] == *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8))
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_ABB3C0();
  }

  return v3 & 1;
}

uint64_t SharePlayTogetherSession.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier);

  return v1;
}

SEL *sub_72CC80(SEL *result)
{
  if (*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session))
  {
    return [*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session) *result];
  }

  __break(1u);
  return result;
}

void *SharePlayTogetherSession.title.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result localizedSessionName];
    v3 = sub_AB92A0();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SharePlayTogetherSession.joinToken.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result joinToken];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.routeType.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SharePlayTogetherSession.routeType.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SharePlayTogetherSession.routeSymbolName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_72CEFC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_72CF7C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t SharePlayTogetherSession.routeSymbolName.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

uint64_t (*SharePlayTogetherSession.routeSymbolName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t SharePlayTogetherSession.$routeSymbolName.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151B0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$routeSymbolName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151B8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__routeSymbolName;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151B0);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t SharePlayTogetherSession.participants.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_72D4A0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_72D520(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t SharePlayTogetherSession.participants.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

void (*SharePlayTogetherSession.participants.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BCE8C;
}

uint64_t SharePlayTogetherSession.$participants.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151D0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$participants.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151D8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151D0);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD154;
}

uint64_t (*SharePlayTogetherSession.connectedParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t SharePlayTogetherSession.$connectedParticipantsCount.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151E8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$connectedParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151F0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151E8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t sub_72DD40@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_72DDC0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t sub_72DE44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

uint64_t (*SharePlayTogetherSession.pendingParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t SharePlayTogetherSession.$pendingParticipantsCount.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151E8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$pendingParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151F0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151E8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t property wrapper backing initializer of SharePlayTogetherSession.host(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15200);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_15F84(a1, &v9 - v6, &qword_E15200);
  sub_15F84(v7, v5, &qword_E15200);
  sub_AB54D0();
  sub_12E1C(a1, &qword_E15200);
  return sub_12E1C(v7, &qword_E15200);
}

uint64_t SharePlayTogetherSession.host.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();
}

uint64_t sub_72E3A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();
}

uint64_t sub_72E420(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15200);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_15F84(a1, &v13 - v8, &qword_E15200);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_15F84(v9, v7, &qword_E15200);
  v11 = v10;
  sub_AB5520();
  return sub_12E1C(v9, &qword_E15200);
}

uint64_t SharePlayTogetherSession.host.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15200);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_15F84(a1, v5, &qword_E15200);
  v6 = v1;
  sub_AB5520();
  return sub_12E1C(a1, &qword_E15200);
}

uint64_t (*SharePlayTogetherSession.host.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t SharePlayTogetherSession.$host.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15218);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15210);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$host.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15218);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15210);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

void SharePlayTogetherSession.qrCode.getter(uint64_t *a1@<X8>)
{
  v3 = sub_AB9300();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v10 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v9 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 8);
  v11 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 16);
  v12 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 24);
  v13 = v10;
  v14 = v9;
  v15 = v11;
  v16 = v12;
  v17 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  if (v12)
  {
LABEL_8:
    sub_73465C(v10, v9, v11, v12);
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v15;
    a1[3] = v16;
    a1[4] = v17;
    return;
  }

  v18 = v5;
  v34 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  v35 = 0;
  v32 = v9;
  v33 = v11;
  v31 = v10;
  v19 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v19)
  {
    v20 = [v19 joinToken];
    if (v20 && (v21 = v20, v22 = [v20 joinURLString], v21, sub_AB92A0(), v22, sub_AB92F0(), v23 = sub_AB92B0(), v25 = v24, , (*(v4 + 8))(v7, v18), v25 >> 60 != 15))
    {
      sub_78B630(v23, v25, 76, v36);
      v26 = *v8;
      v27 = v8[1];
      v28 = v8[2];
      v29 = v8[3];
      v30 = v36[1];
      *v8 = v36[0];
      *(v8 + 1) = v30;
      v8[4] = v37;
      sub_736498(v26, v27, v28, v29);
      v13 = *v8;
      v14 = v8[1];
      v15 = v8[2];
      v16 = v8[3];
      v17 = v8[4];
      sub_73465C(*v8, v14, v15, v16);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v10 = v31;
    v9 = v32;
    v11 = v33;
    v12 = v35;
    goto LABEL_8;
  }

  __break(1u);
}

void *SharePlayTogetherSession.joinURL.getter@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v4 = [result joinToken];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 joinURLString];

      sub_AB92A0();
      sub_AB3180();
    }

    else
    {
      v7 = sub_AB31C0();
      v8 = *(*(v7 - 8) + 56);

      return v8(a1, 1, 1, v7);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *SharePlayTogetherSession.isActive.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    if ([result isPlaceholder])
    {
      return 0;
    }

    else if (*(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510();

      return (v2 > 0);
    }

    else
    {
      return &dword_0 + 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.isPersistent.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SharePlayTogetherSession.isPersistent.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_72EE9C(void *a1, void *a2)
{
  v80 = a1;
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15210);
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v77 = &v75 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15200);
  v5 = __chkstk_darwin(v76);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v75 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151E8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151D0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v75 - v16;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = 0;
  v18 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v85[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E151C0);
  sub_AB54D0();
  (*(v15 + 32))(&v2[v18], v17, v14);
  v19 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v85[0] = 0;
  sub_AB54D0();
  v20 = *(v11 + 32);
  v20(&v2[v19], v13, v10);
  v21 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v85[0] = 0;
  sub_AB54D0();
  v20(&v2[v21], v13, v10);
  v22 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v23 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  sub_15F84(v9, v7, &qword_E15200);
  v24 = v77;
  sub_AB54D0();
  v25 = v9;
  v26 = v80;
  sub_12E1C(v25, &qword_E15200);
  (*(v78 + 32))(&v2[v22], v24, v79);
  v27 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected] = 0;
  v28 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  *&v2[v28] = sub_52AFC8(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually] = 0;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = 0;
  v29 = [v26 identifier];
  v30 = sub_AB92A0();
  v32 = v31;

  v33 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier];
  *v33 = v30;
  v33[1] = v32;
  v34 = [v26 isHosted];
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] = v34;
  v35 = v81;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint] = v81;
  v36 = v35;
  v37 = [v26 hostInfo];
  LOBYTE(v32) = [v37 routeType];

  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType] = v32;
  v38 = [v36 groupLeader];
  v39 = [v38 transportType];

  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent] = v39 != &dword_4 + 2;
  v40 = [v26 hostInfo];
  LODWORD(v39) = [v40 routeType];

  if (v39 == 1 || (v41 = [v26 hostInfo], v42 = objc_msgSend(v41, "routeType"), v41, v42 == 2))
  {
    swift_beginAccess();
    v83 = 0x6C6C69662E726163;
    v84 = 0xE800000000000000;
    sub_AB54D0();
    swift_endAccess();
    v43 = 1;
  }

  else
  {
    v44 = [v36 outputDevices];
    if (v44)
    {
      v45 = v44;
      sub_13C80(0, &qword_E15448);
      sub_AB9760();
    }

    v46 = objc_opt_self();
    sub_13C80(0, &qword_E15448);
    isa = sub_AB9740().super.isa;

    v48 = [v46 symbolNameForOutputDevices:isa];

    v49 = sub_AB92A0();
    v51 = v50;

    swift_beginAccess();
    v83 = v49;
    v84 = v51;
    sub_AB54D0();
    swift_endAccess();
    v43 = 0;
  }

  v52 = type metadata accessor for SharePlayTogetherSession(0);
  v82.receiver = v2;
  v82.super_class = v52;
  v53 = objc_msgSendSuper2(&v82, "init");
  v54 = [v26 identifier];
  if (!v54)
  {
    sub_AB92A0();
    v54 = sub_AB9260();
  }

  v55 = objc_opt_self();
  v56 = v53;
  v57 = [v55 remoteControlGroupSessionWithIdentifier:v54 delegate:v56];

  v58 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  *&v56[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = v57;
  swift_unknownObjectRelease();
  v59 = MRAVEndpointOutputDevicesDidChangeNotification;
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  *(v61 + 16) = v43;
  *(v61 + 24) = v60;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v62 = v36;
  *&v56[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v59, v36, 1, 1, sub_737584, v61);

  if (qword_E0CF28 != -1)
  {
    swift_once();
  }

  v63 = sub_AB4BC0();
  __swift_project_value_buffer(v63, static Logger.sharePlayTogether);
  v64 = sub_AB4BA0();
  v65 = sub_AB9F50();
  if (!os_log_type_enabled(v64, v65))
  {

    goto LABEL_15;
  }

  v66 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  v85[0] = v67;
  *v66 = 136446210;
  v68 = *&v56[v58];
  if (v68)
  {
    v69 = v67;
    swift_unknownObjectRetain();

    v70 = [v68 description];
    swift_unknownObjectRelease();
    v71 = sub_AB92A0();
    v73 = v72;

    v74 = sub_500C84(v71, v73, v85);

    *(v66 + 4) = v74;
    _os_log_impl(&dword_0, v64, v65, "Initialized SharePlayTogetherSession object with MR session %{public}s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);

LABEL_15:
    return;
  }

  __break(1u);
}

void sub_72F868(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        v4 = *(Strong + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint);

        v5 = [v4 outputDevices];
        if (v5)
        {
          sub_13C80(0, &qword_E15448);
          sub_AB9760();
        }
      }

      v6 = objc_opt_self();
      sub_13C80(0, &qword_E15448);
      isa = sub_AB9740().super.isa;

      v8 = [v6 symbolNameForOutputDevices:isa];

      sub_AB92A0();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5520();
    }
  }
}

void sub_72FA98(uint64_t a1, SEL *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v7 = *(v5 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  v12 = sub_AB9260();
  v13 = [v7 *a2];

  swift_unknownObjectRelease();
  if (!v13)
  {
    return;
  }

  if (!*(v5 + v6))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15[4] = a3;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_2109D8;
  v15[3] = a4;
  v14 = _Block_copy(v15);
  [swift_unknownObjectRetain() *a5];
  _Block_release(v14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SharePlayTogetherSession.endSession()()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually) = 1;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session))
  {
    v2[4] = UIScreen.Dimensions.size.getter;
    v2[5] = 0;
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_2109D8;
    v2[3] = &block_descriptor_37_3;
    v1 = _Block_copy(v2);
    [swift_unknownObjectRetain() removeAllParticipantsWithCompletion:v1];
    _Block_release(v1);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SharePlayTogetherSession.leave()()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v1)
  {
    v2 = [v1 identifier];
    if (!v2)
    {
      sub_AB92A0();
      v2 = sub_AB9260();
    }

    v4[4] = UIScreen.Dimensions.size.getter;
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_3A5920;
    v4[3] = &block_descriptor_40;
    v3 = _Block_copy(v4);
    MRGroupSessionLeaveSessionWithIdentifier();
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SharePlayTogetherSession.cleanup(notifyObservers:)(Swift::Bool notifyObservers)
{
  if (notifyObservers)
  {
    v2 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
    swift_beginAccess();
    v3 = *(v1 + v2);
    v4 = *(v3 + 16);
    if (v4)
    {

      v5 = v3 + 40;
      do
      {
        v6 = *(v5 - 8);
        v9[0] = 1;

        v6(v9);

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  v7 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  *(v1 + v7) = _swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  *(v1 + v8) = _swiftEmptyArrayStorage;
}

uint64_t SharePlayTogetherSession.addSessionConnectionObserver(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected) == 1)
  {
    return a1();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  v8 = *(v2 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_5069FC(0, v8[2] + 1, 1, v8);
    *(v2 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_5069FC((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_70638;
  v12[5] = v6;
  *(v2 + v7) = v8;
  return swift_endAccess();
}

uint64_t SharePlayTogetherSession.addSessionEndedObserver(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_506CEC(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_506CEC((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_736530;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

id SharePlayTogetherSession.assertSessionManagementScreenVisible()()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result assertSessionManagementScreenVisible];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.socialProfile(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 identifierType] == &dword_0 + 1 && (v5 = objc_msgSend(a1, "participantIdentifier")) != 0)
  {
    v6 = v5;
    v7 = sub_AB92A0();
    v9 = v8;

    v10 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (*(v11 + 16) && (, v12 = sub_52215C(v7, v9), v14 = v13, , (v14 & 1) != 0))
    {
      v15 = *(v11 + 56);
      v16 = sub_AB4590();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a2, v15 + *(v17 + 72) * v12, v16);

      return (*(v17 + 56))(a2, 0, 1, v16);
    }

    else
    {

      v21 = sub_AB4590();
      return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
    }
  }

  else
  {
    v19 = sub_AB4590();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }
}

void *SharePlayTogetherSession.isEquivalent(to:)(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = [result isPlaceholder];
  result = *(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v4 == [result isPlaceholder])
  {
    v14 = 0;
  }

  else
  {
    v5 = [*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v6 = sub_AB92A0();
    v8 = v7;

    v9 = [*(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v10 = sub_AB92A0();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_ABB3C0();
    }
  }

  return (v14 & 1);
}

void sub_730480()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v2 - 8);
  v118 = &v112 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E153D8);
  v117 = *(v4 - 8);
  v5 = *(v117 + 64);
  v6 = __chkstk_darwin(v4);
  v7 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v116 = &v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15200);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v120 = &v112 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15258);
  __chkstk_darwin(v14 - 8);
  v128 = &v112 - v15;
  v119 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v132 = *(v119 - 8);
  __chkstk_darwin(v119);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CF28 != -1)
  {
    swift_once();
  }

  v18 = sub_AB4BC0();
  v122 = __swift_project_value_buffer(v18, static Logger.sharePlayTogether);
  v19 = sub_AB4BA0();
  v20 = sub_AB9F50();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "Updating participants", v21, 2u);
  }

  v22 = swift_allocObject();
  v133 = v22;
  *(v22 + 16) = &_swiftEmptySetSingleton;
  v124 = v22 + 16;
  v129 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v23 = *&v1[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
  if (!v23)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v24 = [v23 pendingParticipants];
  v25 = sub_AB9B40();

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = sub_7348DC(*(v25 + 16), 0);
    v28 = sub_735CDC(v136, (v27 + 4), v26, v25);
    sub_2BB88();
    if (v28 == v26)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_10:
  sub_68E580(v27);

  v136[0] = sub_73604C(v29);
  sub_73496C(v136);
  v115 = v4;

  v30 = *&v1[v129];
  if (!v30)
  {
    goto LABEL_77;
  }

  v126 = v136[0];
  v31 = [v30 participants];
  v32 = sub_AB9B40();

  v33 = *(v32 + 16);
  if (!v33)
  {
LABEL_14:

    v34 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v34 = sub_7348DC(*(v32 + 16), 0);
  v35 = sub_735CDC(v136, (v34 + 4), v33, v32);
  sub_2BB88();
  if (v35 != v33)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  sub_68E580(v34);

  v136[0] = sub_73604C(v36);
  sub_73496C(v136);

  v125 = v136[0];
  if ((v136[0] & 0x8000000000000000) == 0 && (v136[0] & 0x4000000000000000) == 0)
  {
    v37 = *(v136[0] + 16);
    goto LABEL_18;
  }

  while (1)
  {
    v37 = sub_ABB060();
LABEL_18:
    swift_getKeyPath();
    swift_getKeyPath();
    v136[0] = v37;
    v38 = v1;
    sub_AB5520();
    v39 = v126;
    v114 = v12;
    if (v126 < 0 || (v126 & 0x4000000000000000) != 0)
    {
      v40 = sub_ABB060();
    }

    else
    {
      v40 = *(v126 + 16);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v136[0] = v40;
    v41 = v38;
    sub_AB5520();
    v136[0] = v39;

    sub_511740(v42);
    v43 = v136[0];
    v113 = v7;
    v112 = v5;
    v123 = v1;
    if (v136[0] >> 62)
    {
      v44 = sub_ABB060();
      if (!v44)
      {
LABEL_33:

        v46 = _swiftEmptyArrayStorage;
        goto LABEL_34;
      }
    }

    else
    {
      v44 = *(&dword_10 + (v136[0] & 0xFFFFFFFFFFFFFF8));
      if (!v44)
      {
        goto LABEL_33;
      }
    }

    v136[0] = _swiftEmptyArrayStorage;
    sub_503A48(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    v45 = 0;
    v46 = v136[0];
    do
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v47 = sub_ABAE20();
      }

      else
      {
        v47 = *(v43 + 8 * v45 + 32);
        swift_unknownObjectRetain();
      }

      sub_731534(v47, v41, v133, v17);
      swift_unknownObjectRelease();
      v136[0] = v46;
      v49 = v46[2];
      v48 = v46[3];
      v7 = (v49 + 1);
      if (v49 >= v48 >> 1)
      {
        sub_503A48(v48 > 1, v49 + 1, 1);
        v46 = v136[0];
      }

      ++v45;
      v46[2] = v7;
      sub_736F08(v17, v46 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v49);
    }

    while (v44 != v45);

    v1 = v123;
LABEL_34:
    swift_getKeyPath();
    swift_getKeyPath();
    v136[0] = v46;
    v130 = v41;
    sub_AB5520();
    v50 = *&v1[v129];
    if (!v50)
    {
      goto LABEL_78;
    }

    v51 = [v50 members];
    v17 = sub_13C80(0, &qword_E153E0);
    sub_736F6C();
    v52 = sub_AB9B40();

    v5 = v124;
    if ((v52 & 0xC000000000000001) != 0)
    {
      sub_ABAC10();
      sub_AB9BC0();
      v52 = v136[0];
      v1 = v136[1];
      v53 = v136[2];
      v54 = v136[3];
      v12 = v136[4];
    }

    else
    {
      v54 = 0;
      v55 = -1 << *(v52 + 32);
      v1 = (v52 + 56);
      v53 = ~v55;
      v56 = -v55;
      v57 = v56 < 64 ? ~(-1 << v56) : -1;
      v12 = (v57 & *(v52 + 56));
    }

    v121 = v53;
    v58 = (v53 + 64) >> 6;
    v127 = v17;
    if (v52 < 0)
    {
      break;
    }

    while (1)
    {
      v62 = v54;
      v63 = v12;
      v60 = v54;
      if (!v12)
      {
        break;
      }

LABEL_51:
      v61 = (v63 - 1) & v63;
      v7 = *(*(v52 + 48) + ((v60 << 9) | (8 * __clz(__rbit64(v63)))));
      if (!v7)
      {
        goto LABEL_59;
      }

LABEL_52:
      if ([v7 type] == &dword_0 + 1)
      {
        v131 = v61;
        v64 = [v7 identifier];
        v65 = sub_AB92A0();
        v67 = v66;

        v68 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
        v69 = v130;
        swift_beginAccess();
        v70 = *&v69[v68];
        if (*(v70 + 16) && (, v71 = sub_52215C(v65, v67), v73 = v72, , (v73 & 1) != 0))
        {
          v74 = *(v70 + 56);
          v75 = sub_AB4590();
          v76 = *(v75 - 8);
          v77 = v76;
          v78 = v74 + *(v76 + 72) * v71;
          v79 = v128;
          (*(v76 + 16))(v128, v78, v75);

          (*(v77 + 56))(v79, 0, 1, v75);
          v5 = v124;
          sub_12E1C(v79, &unk_E15258);
        }

        else
        {

          v80 = sub_AB4590();
          v81 = v128;
          (*(*(v80 - 8) + 56))(v128, 1, 1, v80);
          sub_12E1C(v81, &unk_E15258);
          v82 = [v7 identifier];
          sub_AB92A0();

          v83 = sub_AB8050();
          v85 = v84;
          swift_beginAccess();
          sub_683CA4(&v135, v83, v85);
          swift_endAccess();
        }

        v54 = v60;
        v12 = v131;
        v17 = v127;
        if (v52 < 0)
        {
          goto LABEL_44;
        }
      }

      else
      {

        v54 = v60;
        v12 = v61;
        if (v52 < 0)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
      v60 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v60 >= v58)
      {
        goto LABEL_59;
      }

      v63 = *&v1[8 * v60];
      ++v62;
      if (v63)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
  }

LABEL_44:
  v59 = sub_ABAC90();
  if (v59)
  {
    v135 = v59;
    swift_dynamicCast();
    v7 = v134[0];
    v60 = v54;
    v61 = v12;
    if (v134[0])
    {
      goto LABEL_52;
    }
  }

LABEL_59:
  sub_2BB88();
  v86 = *&v123[v129];
  if (!v86)
  {
LABEL_79:
    __break(1u);

    __break(1u);
    return;
  }

  swift_unknownObjectRetain();

  v87 = [v86 host];
  swift_unknownObjectRelease();
  if (v87)
  {
    v88 = v120;
    v89 = v130;
    sub_731534(v87, v130, v133, v120);
    (*(v132 + 56))(v88, 0, 1, v119);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_15F84(v88, v114, &qword_E15200);
    v90 = v89;
    sub_AB5520();
    swift_unknownObjectRelease();
    sub_12E1C(v88, &qword_E15200);
  }

  swift_beginAccess();
  v91 = *v5;
  v92 = *(*v5 + 16);
  v93 = sub_AB4BA0();
  v94 = sub_AB9F50();
  v95 = os_log_type_enabled(v93, v94);
  if (v92)
  {
    if (v95)
    {
      v96 = swift_slowAlloc();
      *v96 = 134349056;
      *(v96 + 4) = *(v91 + 16);
      _os_log_impl(&dword_0, v93, v94, "Fetching %{public}ld profiles", v96, 0xCu);
    }

    swift_getKeyPath();
    v97 = *(v91 + 16);
    if (!v97 || (v98 = sub_7347D0(*(v91 + 16), 0), v94 = v98, v99 = sub_735B84(v134, v98 + 4, v97, v91), v93 = v134[4], , v95 = sub_2BB88(), v99 == v97))
    {
      sub_AB4590();
      sub_73701C(&qword_E153F0, &type metadata accessor for SocialProfile);
      sub_73701C(&qword_E153F8, &type metadata accessor for SocialProfile);
      v101 = v116;
      sub_AB7F10();
      v102 = sub_AB9990();
      v103 = v118;
      (*(*(v102 - 8) + 56))(v118, 1, 1, v102);
      v104 = v117;
      v105 = v113;
      v106 = v115;
      (*(v117 + 16))(v113, v101, v115);
      sub_AB9940();
      v107 = v130;
      v108 = sub_AB9930();
      v109 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v110 = (v112 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
      v111 = swift_allocObject();
      *(v111 + 16) = v108;
      *(v111 + 24) = &protocol witness table for MainActor;
      (*(v104 + 32))(v111 + v109, v105, v106);
      *(v111 + v110) = v107;
      sub_6E35A0(0, 0, v103, &unk_B25878, v111);

      (*(v104 + 8))(v101, v106);

      return;
    }

    __break(1u);
  }

  if (v95)
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_0, v93, v94, "No pending profiles to fetch", v100, 2u);
  }
}

uint64_t sub_731534@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15258);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v49 - v13;
  __chkstk_darwin(v12);
  v16 = v49 - v15;
  v17 = sub_AB4590();
  v18 = *(v17 - 8);
  v52 = *(v18 + 56);
  v53 = v17;
  v52(v16, 1, 1);
  v19 = [a1 identity];
  v20 = &selRef_performWithResponseHandler_;
  if (v19)
  {
    v21 = v19;
    if ([v19 type] == &dword_0 + 1)
    {
      v49[1] = a3;
      v51 = v16;
      v22 = [v21 identifier];
      v50 = sub_AB92A0();
      v24 = v23;

      v25 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
      swift_beginAccess();
      v26 = *(a2 + v25);
      if (*(v26 + 16) && (, v50 = sub_52215C(v50, v24), v28 = v27, , (v28 & 1) != 0))
      {
        (*(v18 + 16))(v14, *(v26 + 56) + *(v18 + 72) * v50, v53);
        v16 = v51;
        sub_12E1C(v51, &unk_E15258);

        v29 = 0;
      }

      else
      {

        v16 = v51;
        sub_12E1C(v51, &unk_E15258);
        v29 = 1;
      }

      v30 = v53;
      (v52)(v14, v29, 1, v53);
      sub_7374DC(v14, v16);
      sub_15F84(v16, v11, &unk_E15258);
      if ((*(v18 + 48))(v11, 1, v30) == 1)
      {
        sub_12E1C(v11, &unk_E15258);
        v31 = [v21 identifier];
        sub_AB92A0();

        v32 = sub_AB8050();
        v34 = v33;
        swift_beginAccess();
        sub_683CA4(&v54, v32, v34);
        swift_endAccess();

        v20 = &selRef_performWithResponseHandler_;
        goto LABEL_12;
      }

      sub_12E1C(v11, &unk_E15258);
    }

    else
    {
    }

    v20 = &selRef_performWithResponseHandler_;
  }

LABEL_12:
  v35 = [a1 v20[242]];
  v36 = sub_AB92A0();
  v38 = v37;

  v39 = [a1 identity];
  if (v39 && (v40 = v39, v41 = [v39 displayName], v40, v41))
  {
    v42 = sub_AB92A0();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = [a1 isPending];
  v46 = [a1 isGuest];
  v47 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  (v52)(a4 + v47, 1, 1, v53);
  *a4 = v36;
  *(a4 + 8) = v38;
  *(a4 + 16) = v42;
  *(a4 + 24) = v44;
  *(a4 + 32) = v45;
  *(a4 + 33) = v46;
  return sub_736558(v16, a4 + v47);
}

uint64_t SharePlayTogetherSession.Participant.init(id:displayName:isPending:isGuest:socialProfile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v17 = sub_AB4590();
  (*(*(v17 - 8) + 56))(a8 + v16, 1, 1, v17);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;

  return sub_736558(a7, a8 + v16);
}

uint64_t sub_731AA8(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identity];
  if (v3 && (v4 = v3, v5 = [v3 displayName], v4, v5))
  {
    v6 = sub_AB92A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = [v2 identity];
  if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
  {
    v12 = sub_AB92A0();
    v14 = v13;

    if (v6 != v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0xE000000000000000;
    if (v6)
    {
LABEL_12:
      v15 = sub_ABB3C0();
      goto LABEL_13;
    }
  }

  if (v8 != v14)
  {
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15 & 1;
}

uint64_t sub_731BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  v5[5] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15400);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[8] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15408);
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v5[11] = *(v9 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = sub_AB9940();
  v5[16] = sub_AB9930();
  v10 = swift_task_alloc();
  v5[17] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E153D8);
  *v10 = v5;
  v10[1] = sub_731DF8;

  return MusicCatalogResourceRequest.response()(v7, v11);
}

uint64_t sub_731DF8()
{
  *(*v1 + 144) = v0;

  v3 = sub_AB98B0();
  if (v0)
  {
    v4 = sub_7322D8;
  }

  else
  {
    v4 = sub_731F54;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_731F54()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_AB7F30();
  (*(v2 + 8))(v1, v3);
  if (qword_E0CF28 != -1)
  {
    swift_once();
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];
  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, static Logger.sharePlayTogether);
  v34 = *(v7 + 16);
  v34(v4, v5, v6);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v13 = v0[9];
  v14 = v0[10];
  if (v11)
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    sub_7373B8();
    sub_AB9C60();
    sub_AB9CA0();
    v16 = sub_AB9C90();
    v33 = *(v14 + 8);
    v33(v12, v13);
    *(v15 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "Finished fetching %{public}ld profiles", v15, 0xCu);
  }

  else
  {
    v33 = *(v14 + 8);
    v33(v12, v13);
  }

  v17 = v0[14];
  v18 = v0[12];
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[9];
  v23 = v0[4];
  v22 = v0[5];
  v32 = v22;
  v24 = sub_AB9990();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v34(v18, v17, v21);
  v25 = v23;
  v26 = sub_AB9930();
  v27 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v28 = (v20 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = &protocol witness table for MainActor;
  (*(v19 + 32))(v29 + v27, v18, v21);
  *(v29 + v28) = v25;
  sub_5E89D8(0, 0, v32, &unk_B25898, v29);

  v33(v17, v21);

  v30 = v0[1];

  return v30();
}

uint64_t sub_7322D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_732384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15258);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15200);
  v5[35] = swift_task_alloc();
  v6 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v7 = sub_AB4590();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15418);
  v5[45] = swift_task_alloc();
  sub_AB9940();
  v5[46] = sub_AB9930();
  v9 = sub_AB98B0();

  return _swift_task_switch(sub_7325B0, v9, v8);
}

void sub_7325B0()
{
  v1 = v0;
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[30];
  v5 = v0[31];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15408);
  (*(*(v6 - 8) + 16))(v3, v4, v6);
  v7 = *(v2 + 36);
  sub_7373B8();
  sub_AB9C60();
  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  sub_AB9CA0();
  v114 = v1;
  v109 = v5;
  if (*(v3 + v7) != v1[27])
  {
    v57 = v1[41];
    v105 = (v57 + 16);
    v107 = v1 + 2;
    v108 = (v57 + 32);
    v103 = v57;
    v100 = v7;
    do
    {
      v60 = v1[43];
      v113 = v1[42];
      v61 = v1[40];
      v111 = sub_AB9D80();
      (*v105)(v60);
      v111(v107, 0);
      sub_AB9CB0();
      v62 = sub_AB4560();
      v64 = v63;
      swift_beginAccess();
      v65 = *v108;
      (*v108)(v113, v60, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *(v109 + v8);
      v115 = v67;
      *(v109 + v8) = 0x8000000000000000;
      v68 = sub_52215C(v62, v64);
      v70 = v67[2];
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_61;
      }

      v74 = v69;
      if (v67[3] >= v73)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = v68;
          sub_528254();
          v68 = v81;
        }
      }

      else
      {
        sub_52530C(v73, isUniquelyReferenced_nonNull_native);
        v68 = sub_52215C(v62, v64);
        if ((v74 & 1) != (v75 & 1))
        {

          sub_ABB4C0();
          return;
        }
      }

      v76 = v114[42];
      v77 = v114[40];
      if (v74)
      {
        v58 = v68;

        v59 = v115;
        (*(v103 + 40))(v115[7] + *(v103 + 72) * v58, v76, v77);
      }

      else
      {
        v59 = v115;
        v115[(v68 >> 6) + 8] |= 1 << v68;
        v78 = (v115[6] + 16 * v68);
        *v78 = v62;
        v78[1] = v64;
        v65(v115[7] + *(v103 + 72) * v68, v76, v77);
        v79 = v115[2];
        v72 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v72)
        {
          goto LABEL_62;
        }

        v115[2] = v80;
      }

      v1 = v114;
      *(v109 + v8) = v59;

      swift_endAccess();
      sub_AB9CA0();
    }

    while (*(v3 + v100) != v114[27]);
  }

  v98 = v8;
  sub_12E1C(v1[45], &qword_E15418);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v9 = *(v1[28] + 16);

  v10 = v1;
  if (!v9)
  {
LABEL_31:
    v53 = v10[36];
    v54 = v10[37];
    v55 = v10[35];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v56 = *(v54 + 48);
    if (v56(v55, 1, v53) == 1)
    {
      sub_12E1C(v10[35], &qword_E15200);
    }

    else
    {
      v82 = v10 + 6;
      v83 = v10[36];
      sub_736F08(v10[35], v10[39]);
      v84 = SharePlayTogetherSession.host.modify(v10 + 6);
      v86 = v85;
      v87 = v56(v85, 1, v83);
      v88 = v10[39];
      if (!v87)
      {
        v89 = *v88;
        v90 = v88[1];
        swift_beginAccess();
        v91 = *(v109 + v98);
        if (*(v91 + 16))
        {

          v92 = sub_52215C(v89, v90);
          if (v93)
          {
            v10 = v114;
            (*(v114[41] + 16))(v114[32], *(v91 + 56) + *(v114[41] + 72) * v92, v114[40]);
            v94 = 0;
          }

          else
          {
            v94 = 1;
            v10 = v114;
          }
        }

        else
        {
          v94 = 1;
          v10 = v114;
        }

        v88 = v10[39];
        v95 = v10[36];
        v96 = v10[32];
        (*(v10[41] + 56))(v96, v94, 1, v10[40]);
        sub_736558(v96, v86 + *(v95 + 32));
      }

      (v84)(v82, 0);
      sub_737480(v88);
    }

    type metadata accessor for SharePlayTogetherSession(0);
    sub_73701C(&qword_E15420, type metadata accessor for SharePlayTogetherSession);
    sub_AB54A0();
    sub_AB54C0();

    v97 = v10[1];

    v97();
    return;
  }

  v11 = v1[41];
  v13 = v1[37];
  v12 = v1[38];
  v101 = v1[36];
  v110 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v112 = v1[31];
  swift_beginAccess();
  v14 = 0;
  v102 = v9;
  v104 = (v11 + 56);
  v99 = v11;
  v106 = v13;
  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v15 = v10[29];
    if (v14 >= *(v15 + 16))
    {
      break;
    }

    v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = *(v13 + 72) * v14;
    sub_73741C(v15 + v16 + v17, v10[38]);

    if (*(v12 + 32) == 1)
    {
      v18 = *(v112 + v110);
      if (!v18)
      {
        goto LABEL_66;
      }

      swift_unknownObjectRetain();
      v19 = sub_AB9260();
      v20 = [v18 pendingParticipantForIdentifier:v19];
      swift_unknownObjectRelease();

      if (v20)
      {
        v21 = [v20 identity];
        swift_unknownObjectRelease();
        if (v21)
        {
          v22 = [v21 identifier];

          v23 = sub_AB92A0();
          v25 = v24;

          v26 = *(v109 + v98);
          if (*(v26 + 16) && (, v27 = sub_52215C(v23, v25), v29 = v28, , (v29 & 1) != 0))
          {
            (*(v99 + 16))(v10[34], *(v26 + 56) + *(v99 + 72) * v27, v10[40]);

            v30 = 0;
          }

          else
          {

            v30 = 1;
          }

          (*v104)(v10[34], v30, 1, v10[40]);
          swift_getKeyPath();
          swift_getKeyPath();
          v44 = sub_AB5500();
          v50 = v49;
          v51 = *v49;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *v50 = v51;
          if ((v52 & 1) == 0)
          {
            v51 = sub_528634(v51);
            *v50 = v51;
          }

          v13 = v106;
          if (v14 >= v51[2])
          {
            goto LABEL_64;
          }

          sub_736558(v10[34], v51 + v16 + v17 + *(v101 + 32));
LABEL_5:
          v44();

          v9 = v102;
          goto LABEL_6;
        }
      }
    }

    v31 = *(v112 + v110);
    if (!v31)
    {
      goto LABEL_65;
    }

    swift_unknownObjectRetain();
    v32 = sub_AB9260();
    v33 = [v31 participantForIdentifier:v32];
    swift_unknownObjectRelease();

    if (v33)
    {
      v34 = [v33 identity];
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = [v34 identifier];

        v36 = sub_AB92A0();
        v38 = v37;

        v39 = *(v109 + v98);
        if (*(v39 + 16) && (, v40 = sub_52215C(v36, v38), v42 = v41, , (v42 & 1) != 0))
        {
          (*(v99 + 16))(v10[33], *(v39 + 56) + *(v99 + 72) * v40, v10[40]);

          v43 = 0;
        }

        else
        {

          v43 = 1;
        }

        (*v104)(v10[33], v43, 1, v10[40]);
        swift_getKeyPath();
        swift_getKeyPath();
        v44 = sub_AB5500();
        v46 = v45;
        v47 = *v45;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *v46 = v47;
        if ((v48 & 1) == 0)
        {
          v47 = sub_528634(v47);
          *v46 = v47;
        }

        v13 = v106;
        if (v14 >= v47[2])
        {
          goto LABEL_63;
        }

        sub_736558(v10[33], v47 + v16 + v17 + *(v101 + 32));
        goto LABEL_5;
      }
    }

LABEL_6:
    ++v14;
    sub_737480(v10[38]);
    if (v9 == v14)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

id SharePlayTogetherSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharePlayTogetherSession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_733498@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharePlayTogetherSession(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t SharePlayTogetherSession.Participant.socialProfile.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);

  return sub_736558(a1, v3);
}

uint64_t SharePlayTogetherSession.groupSessionDidConnect(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_AB9990();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_AB9940();
  swift_unknownObjectRetain();
  v7 = v1;
  v8 = sub_AB9930();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  v9[5] = v7;
  sub_5E89D8(0, 0, v5, &unk_B256E0, v9);
}

uint64_t sub_7336E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_AB9940();
  v5[12] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_733780, v7, v6);
}

uint64_t sub_733780()
{
  v22 = v0;

  if (qword_E0CF28 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.sharePlayTogether);
  swift_unknownObjectRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136446210;
    v7 = [v4 description];
    v8 = sub_AB92A0();
    v10 = v9;

    v11 = sub_500C84(v8, v10, &v21);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "groupSessionDidConnect %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v12 = v0[11];
  *(v12 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected) = 1;
  v13 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  v14 = *(v12 + v13);
  v15 = *(v14 + 16);
  if (v15)
  {

    v16 = v14 + 40;
    do
    {
      v17 = *(v16 - 8);

      v17(v18);

      v16 += 16;
      --v15;
    }

    while (v15);
  }

  *(v12 + v13) = _swiftEmptyArrayStorage;

  SharePlayTogetherSession.qrCode.getter(v0 + 2);
  sub_12E1C((v0 + 2), &qword_E15460);
  type metadata accessor for SharePlayTogetherSession(0);
  sub_73701C(&qword_E15420, type metadata accessor for SharePlayTogetherSession);
  sub_AB54A0();
  sub_AB54C0();

  v19 = v0[1];

  return v19();
}

uint64_t SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_AB9990();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_AB9940();
  swift_errorRetain();
  v8 = v2;
  v9 = sub_AB9930();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a2;
  v10[5] = v8;
  sub_5E89D8(0, 0, v6, &unk_B256F0, v10);
}

uint64_t sub_733CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_AB9940();
  v5[13] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_733D74, v7, v6);
}

uint64_t sub_733D74()
{
  v32 = v0;

  if (qword_E0CF28 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, static Logger.sharePlayTogether);
  swift_errorRetain();
  v3 = v1;
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v6 = 138543618;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2082;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15450);
    v10 = sub_AB9770();
    v12 = v11;

    v13 = sub_500C84(v10, v12, &v31);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_0, v4, v5, "Session invalidated with error %{public}@. Calling %{public}s observers.", v6, 0x16u);
    sub_12E1C(v7, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v14 = *(v0 + 96);
  v15 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v27 = v15;
    v18 = *(v0 + 96);
    v19 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually;
    v20 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
    v29 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;

    v28 = v0;
    result = swift_beginAccess();
    v0 = 0;
    v22 = v16 + 40;
    while (1)
    {
      if (v0 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v24 = *(v22 - 8);
      if ((*(v18 + v19) & 1) != 0 || *(v18 + v20) == 1)
      {

        v23 = 1;
      }

      else
      {
        v25 = *(v18 + v29);
        if (!v25)
        {
          __break(1u);
          return result;
        }

        v23 = [v25 isPlaceholder];
      }

      ++v0;
      v30 = v23;
      v24(&v30);

      v22 += 16;
      if (v17 == v0)
      {

        v15 = v27;
        v0 = v28;
        break;
      }
    }
  }

  *(v14 + v15) = _swiftEmptyArrayStorage;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_734288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_737808, v6, v5);
}

void sub_7343AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_736778(a5, a6, a7);
  swift_unknownObjectRelease();
}

uint64_t sub_734470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_734508, v6, v5);
}

uint64_t sub_734508()
{

  sub_730480();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_734594()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.sharePlayTogether);
  __swift_project_value_buffer(v0, static Logger.sharePlayTogether);
  return sub_AB4BB0();
}

void sub_73465C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    sub_90090(a2, a3);

    v4 = a4;
  }
}

uint64_t static Logger.sharePlayTogether.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CF28 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.sharePlayTogether);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_73474C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15440);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_7347D0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15428);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_734854(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_7348DC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15438);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_73496C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_163DF4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_7349E8(v6);
  return sub_ABAEA0();
}

Swift::Int sub_7349E8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_ABB2B0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15430);
        v6 = sub_AB97D0();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_734D00(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_734AF8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_734AF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    v6 = &selRef_isMovingFromParentViewController;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v7 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v8 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = [v7 v6[327]];
      if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
      {
        v12 = sub_AB92A0();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0xE000000000000000;
      }

      v15 = [v8 v6[327]];
      if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
      {
        v18 = sub_AB92A0();
        v20 = v19;

        if (v12 != v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v20 = 0xE000000000000000;
        if (v12)
        {
          goto LABEL_17;
        }
      }

      if (v14 == v20)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v6 = &selRef_isMovingFromParentViewController;
LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_17:
      v21 = sub_ABB3C0();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v6 = &selRef_isMovingFromParentViewController;
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        __break(1u);
        return result;
      }

      v22 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_734D00(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v105 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_115:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_156;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_118:
      v118 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v96 = *(result + 16 * v4);
          v97 = result;
          v98 = *(result + 16 * (v4 - 1) + 40);
          sub_7355B4((*a3 + 8 * v96), (*a3 + 8 * *(result + 16 * (v4 - 1) + 32)), (*a3 + 8 * v98), v5);
          if (v113)
          {
          }

          if (v98 < v96)
          {
            goto LABEL_143;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_735B34(v97);
          }

          if (v4 - 2 >= *(v97 + 2))
          {
            goto LABEL_144;
          }

          v99 = &v97[16 * v4];
          *v99 = v96;
          *(v99 + 1) = v98;
          v118 = v97;
          sub_735AA8(v4 - 1);
          result = v118;
          v4 = *(v118 + 2);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_154;
      }
    }

LABEL_150:
    result = sub_735B34(v4);
    goto LABEL_118;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
LABEL_4:
  v9 = v7;
  if (v7 + 1 >= v6)
  {
    v6 = v7 + 1;
    goto LABEL_33;
  }

  v103 = v8;
  v10 = *a3;
  v117 = *(*a3 + 8 * (v7 + 1));
  v5 = *(v10 + 8 * v7);
  v116 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v114 = sub_731AA8(&v117, &v116);
  if (v113)
  {

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v4 = v7 + 2;
  v101 = v7;
  v108 = 8 * v7;
  v110 = v6;
  v11 = (v10 + 8 * v7 + 16);
  while (v6 != v4)
  {
    v13 = *(v11 - 1);
    v14 = *v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = [v14 identity];
    if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
    {
      v18 = sub_AB92A0();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = [v13 identity];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 displayName];

      if (v23)
      {
        v24 = sub_AB92A0();
        v5 = v25;
      }

      else
      {
        v24 = 0;
        v5 = 0xE000000000000000;
      }

      v6 = v110;
      if (v18 != v24)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = 0xE000000000000000;
      if (v18)
      {
        goto LABEL_7;
      }
    }

    if (v20 == v5)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v12 = sub_ABB3C0();
LABEL_8:

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    ++v4;
    ++v11;
    if ((v114 ^ v12))
    {
      v6 = v4 - 1;
      break;
    }
  }

  v9 = v101;
  v8 = v103;
  v26 = v108;
  if ((v114 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v6 < v101)
  {
    goto LABEL_149;
  }

  if (v101 < v6)
  {
    v27 = 8 * v6 - 8;
    v28 = v6;
    v29 = v101;
    do
    {
      if (v29 != --v28)
      {
        v30 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v31 = *(v30 + v26);
        *(v30 + v26) = *(v30 + v27);
        *(v30 + v27) = v31;
      }

      ++v29;
      v27 -= 8;
      v26 += 8;
    }

    while (v29 < v28);
  }

LABEL_33:
  v32 = a3[1];
  if (v6 >= v32)
  {
    goto LABEL_41;
  }

  if (__OFSUB__(v6, v9))
  {
    goto LABEL_146;
  }

  if (v6 - v9 >= a4)
  {
LABEL_41:
    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_145;
    }

    goto LABEL_42;
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_147;
  }

  if (v9 + a4 < v32)
  {
    v32 = v9 + a4;
  }

  if (v32 < v9)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v6 == v32)
  {
    goto LABEL_41;
  }

  v106 = v32;
  v102 = v9;
  v104 = v8;
  v115 = *a3;
  v4 = *a3 + 8 * v6 - 8;
  v79 = v9 - v6;
  while (2)
  {
    v109 = v4;
    v111 = v6;
    v80 = *(v115 + 8 * v6);
    v107 = v79;
LABEL_95:
    v81 = *v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v82 = [v80 identity];
    if (v82 && (v83 = v82, v84 = [v82 displayName], v83, v84))
    {
      v85 = sub_AB92A0();
      v87 = v86;
    }

    else
    {
      v85 = 0;
      v87 = 0xE000000000000000;
    }

    v88 = [v81 identity];
    if (!v88 || (v89 = v88, v90 = [v88 displayName], v89, !v90))
    {
      v5 = 0;
      v92 = 0xE000000000000000;
      if (v85)
      {
        goto LABEL_105;
      }

LABEL_104:
      if (v87 != v92)
      {
        goto LABEL_105;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_93:
      v6 = v111 + 1;
      v4 = v109 + 8;
      v79 = v107 - 1;
      if (v111 + 1 != v106)
      {
        continue;
      }

      v9 = v102;
      v8 = v104;
      v7 = v106;
      if (v106 < v102)
      {
        goto LABEL_145;
      }

LABEL_42:
      v33 = v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v8 = v33;
      }

      else
      {
        result = sub_506670(0, *(v33 + 2) + 1, 1, v33);
        v8 = result;
      }

      v4 = *(v8 + 2);
      v34 = *(v8 + 3);
      v35 = v4 + 1;
      if (v4 >= v34 >> 1)
      {
        result = sub_506670((v34 > 1), v4 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v35;
      v36 = &v8[16 * v4];
      *(v36 + 4) = v9;
      *(v36 + 5) = v7;
      v37 = *v105;
      if (!*v105)
      {
        goto LABEL_155;
      }

      if (v4)
      {
        while (2)
        {
          v38 = v35 - 1;
          if (v35 >= 4)
          {
            v43 = &v8[16 * v35 + 32];
            v44 = *(v43 - 64);
            v45 = *(v43 - 56);
            v49 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            if (v49)
            {
              goto LABEL_132;
            }

            v48 = *(v43 - 48);
            v47 = *(v43 - 40);
            v49 = __OFSUB__(v47, v48);
            v41 = v47 - v48;
            v42 = v49;
            if (v49)
            {
              goto LABEL_133;
            }

            v50 = &v8[16 * v35];
            v52 = *v50;
            v51 = *(v50 + 1);
            v49 = __OFSUB__(v51, v52);
            v53 = v51 - v52;
            if (v49)
            {
              goto LABEL_135;
            }

            v49 = __OFADD__(v41, v53);
            v54 = v41 + v53;
            if (v49)
            {
              goto LABEL_138;
            }

            if (v54 >= v46)
            {
              v72 = &v8[16 * v38 + 32];
              v74 = *v72;
              v73 = *(v72 + 1);
              v49 = __OFSUB__(v73, v74);
              v75 = v73 - v74;
              if (v49)
              {
                goto LABEL_142;
              }

              if (v41 < v75)
              {
                v38 = v35 - 2;
              }
            }

            else
            {
LABEL_61:
              if (v42)
              {
                goto LABEL_134;
              }

              v55 = &v8[16 * v35];
              v57 = *v55;
              v56 = *(v55 + 1);
              v58 = __OFSUB__(v56, v57);
              v59 = v56 - v57;
              v60 = v58;
              if (v58)
              {
                goto LABEL_137;
              }

              v61 = &v8[16 * v38 + 32];
              v63 = *v61;
              v62 = *(v61 + 1);
              v49 = __OFSUB__(v62, v63);
              v64 = v62 - v63;
              if (v49)
              {
                goto LABEL_140;
              }

              if (__OFADD__(v59, v64))
              {
                goto LABEL_141;
              }

              if (v59 + v64 < v41)
              {
                goto LABEL_75;
              }

              if (v41 < v64)
              {
                v38 = v35 - 2;
              }
            }
          }

          else
          {
            if (v35 == 3)
            {
              v39 = *(v8 + 4);
              v40 = *(v8 + 5);
              v49 = __OFSUB__(v40, v39);
              v41 = v40 - v39;
              v42 = v49;
              goto LABEL_61;
            }

            v65 = &v8[16 * v35];
            v67 = *v65;
            v66 = *(v65 + 1);
            v49 = __OFSUB__(v66, v67);
            v59 = v66 - v67;
            v60 = v49;
LABEL_75:
            if (v60)
            {
              goto LABEL_136;
            }

            v68 = &v8[16 * v38];
            v70 = *(v68 + 4);
            v69 = *(v68 + 5);
            v49 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v49)
            {
              goto LABEL_139;
            }

            if (v71 < v59)
            {
              break;
            }
          }

          v4 = v38 - 1;
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_152;
          }

          v5 = v8;
          v76 = *&v8[16 * v4 + 32];
          v77 = *&v8[16 * v38 + 40];
          sub_7355B4((*a3 + 8 * v76), (*a3 + 8 * *&v8[16 * v38 + 32]), (*a3 + 8 * v77), v37);
          if (v113)
          {
          }

          if (v77 < v76)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_735B34(v5);
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_131;
          }

          v78 = v5 + 16 * v4;
          *(v78 + 32) = v76;
          *(v78 + 40) = v77;
          v118 = v5;
          result = sub_735AA8(v38);
          v8 = v118;
          v35 = *(v118 + 2);
          if (v35 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_115;
      }

      goto LABEL_4;
    }

    break;
  }

  v5 = sub_AB92A0();
  v92 = v91;

  if (v85 == v5)
  {
    goto LABEL_104;
  }

LABEL_105:
  v93 = sub_ABB3C0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if ((v93 & 1) == 0)
  {
    goto LABEL_93;
  }

  if (v115)
  {
    v94 = *v4;
    v80 = *(v4 + 8);
    *v4 = v80;
    *(v4 + 8) = v94;
    v4 -= 8;
    if (__CFADD__(v79++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t sub_7355B4(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = a2;
    }

    v63 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_30:
      v34 = v6;
      goto LABEL_61;
    }

    v15 = &selRef_isMovingFromParentViewController;
    while (1)
    {
      __dst = v5;
      v16 = *v5;
      v17 = *v13;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = [v16 v15[327]];
      v59 = v6;
      if (v18 && (v19 = v18, v20 = [v18 displayName], v19, v20))
      {
        v21 = sub_AB92A0();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = [v17 v15[327]];
      if (v24 && (v25 = v24, v26 = [v24 displayName], v25, v26))
      {
        v27 = sub_AB92A0();
        v29 = v28;

        if (v21 != v27)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v29 = 0xE000000000000000;
        if (v21)
        {
          goto LABEL_23;
        }
      }

      if (v23 == v29)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v15 = &selRef_isMovingFromParentViewController;
LABEL_26:
        v32 = v13;
        v31 = v59;
        v33 = v59 == v13++;
        v5 = __dst;
        if (v33)
        {
          goto LABEL_28;
        }

LABEL_27:
        *v31 = *v32;
        goto LABEL_28;
      }

LABEL_23:
      v30 = sub_ABB3C0();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v15 = &selRef_isMovingFromParentViewController;
      if ((v30 & 1) == 0)
      {
        goto LABEL_26;
      }

      v31 = v59;
      v32 = __dst;
      v5 = __dst + 1;
      if (v59 != __dst)
      {
        goto LABEL_27;
      }

LABEL_28:
      v6 = v31 + 1;
      if (v13 >= v63 || v5 >= v4)
      {
        goto LABEL_30;
      }
    }
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v35 = a4;
    memmove(a4, a2, 8 * v12);
    v5 = a2;
    a4 = v35;
  }

  v63 = &a4[v12];
  v13 = a4;
  if (v10 < 8 || v5 <= v6)
  {
    v34 = v5;
    goto LABEL_61;
  }

  v37 = &selRef_isMovingFromParentViewController;
  v58 = a4;
  v60 = v6;
  do
  {
    __dsta = v5;
    v38 = v5 - 1;
    --v4;
    v39 = v63;
    v57 = v38;
    while (1)
    {
      v40 = *--v39;
      v41 = *v38;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v42 = [v40 v37[327]];
      if (v42 && (v43 = v42, v44 = [v42 displayName], v43, v44))
      {
        v45 = sub_AB92A0();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = [v41 v37[327]];
      if (v48 && (v49 = v48, v50 = [v48 displayName], v49, v50))
      {
        v51 = sub_AB92A0();
        v53 = v52;

        if (v45 != v51)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v53 = 0xE000000000000000;
        if (v45)
        {
          goto LABEL_50;
        }
      }

      if (v47 == v53)
      {
        v54 = 0;
        goto LABEL_51;
      }

LABEL_50:
      v54 = sub_ABB3C0();
LABEL_51:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v55 = (v4 + 1);
      if (v54)
      {
        break;
      }

      v38 = v57;
      if (v55 != v63)
      {
        *v4 = *v39;
      }

      --v4;
      v63 = v39;
      v37 = &selRef_isMovingFromParentViewController;
      if (v39 <= v58)
      {
        v63 = v39;
        v13 = v58;
        v34 = __dsta;
        goto LABEL_61;
      }
    }

    v34 = v57;
    if (v55 != __dsta)
    {
      *v4 = *v57;
    }

    v13 = v58;
    v37 = &selRef_isMovingFromParentViewController;
    if (v63 <= v58)
    {
      break;
    }

    v5 = v57;
  }

  while (v57 > v60);
LABEL_61:
  if (v34 != v13 || v34 >= (v13 + ((v63 - v13 + (v63 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v34, v13, 8 * (v63 - v13));
  }

  return 1;
}

uint64_t sub_735AA8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_735B34(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_735B84(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_735CDC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_9ACA0(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t (*sub_735E44(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_ABAE20();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1CD35C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_735EC4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_ABAE20();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_737820;
  }

  __break(1u);
  return result;
}

void (*sub_735F44(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_ABAE20();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CD1D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_735FC4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_ABAE20();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_736044;
  }

  __break(1u);
  return result;
}

void *sub_73604C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_ABB060();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_734854(v3, 0);
  sub_511EB8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

BOOL _s9MusicCore24SharePlayTogetherSessionC11ParticipantV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB4590();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15258);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15468);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 24);
  v15 = *(a2 + 24);
  if (v14)
  {
    if (!v15 || (*(a1 + 16) != *(a2 + 16) || v14 != v15) && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v16 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v17 = *(v11 + 48);
  sub_15F84(a1 + v16, v13, &unk_E15258);
  sub_15F84(a2 + v16, &v13[v17], &unk_E15258);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_12E1C(v13, &unk_E15258);
      return 1;
    }

    goto LABEL_18;
  }

  sub_15F84(v13, v10, &unk_E15258);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_18:
    sub_12E1C(v13, &qword_E15468);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  sub_73701C(&unk_E15470, &type metadata accessor for SocialProfile);
  v20 = sub_AB91C0();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_12E1C(v13, &unk_E15258);
  return (v20 & 1) != 0;
}

void sub_736498(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    sub_466B8(a2, a3);
  }
}

uint64_t block_copy_helper_204(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7364F8()
{

  return swift_deallocObject();
}

uint64_t sub_736558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15258);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_7365E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_7336E8(a1, v4, v5, v7, v6);
}

uint64_t sub_7366B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_733CDC(a1, v4, v5, v7, v6);
}

uint64_t sub_736778(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  if (qword_E0CF28 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, static Logger.sharePlayTogether);
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, a1, v13, 2u);
  }

  v14 = sub_AB9990();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_AB9940();
  v15 = v6;
  v16 = sub_AB9930();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_5E89D8(0, 0, v9, a3, v17);
}

void sub_73695C()
{
  sub_736DD0(319, &qword_E152A8, &type metadata for String, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_3641C(319, &qword_E152B0, &qword_E151C0);
    if (v1 <= 0x3F)
    {
      sub_736DD0(319, &qword_E152B8, &type metadata for Int, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_3641C(319, &qword_E152C0, &qword_E15200);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_736B90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15258);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_736C60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15258);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_736D10()
{
  sub_736DD0(319, &qword_E15330, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_736E20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_736DD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_736E20()
{
  if (!qword_E15338)
  {
    sub_AB4590();
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E15338);
    }
  }
}

uint64_t objectdestroy_46Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_736ED0()
{

  return swift_deallocObject();
}

uint64_t sub_736F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_736F6C()
{
  result = qword_E153E8;
  if (!qword_E153E8)
  {
    sub_13C80(255, &qword_E153E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E153E8);
  }

  return result;
}

uint64_t sub_736FD4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_AB4660();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_73701C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_737078(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E153D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17BD0;

  return sub_731BF0(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_101Tm_0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_73728C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15408) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_732384(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_7373B8()
{
  result = qword_E15410;
  if (!qword_E15410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E15408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15410);
  }

  return result;
}

uint64_t sub_73741C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_737480(uint64_t a1)
{
  v2 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7374DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15258);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_73754C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_737594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_734470(a1, v4, v5, v6);
}

uint64_t sub_737648(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_734288(a1, v4, v5, v6);
}

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_73773C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_734288(a1, v4, v5, v6);
}

uint64_t GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 225) = a3;
  *(v4 + 224) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v4 + 32) = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 + 64);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E154C0);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = type metadata accessor for GroupActivitiesManager.PrepareResult(0);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v7 = sub_AB3E90();
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 - 8);
  *(v4 + 152) = swift_task_alloc();
  v8 = sub_AB3EB0();
  *(v4 + 160) = v8;
  *(v4 + 168) = *(v8 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = sub_AB9940();
  *(v4 + 192) = sub_AB9930();
  v10 = sub_AB98B0();
  *(v4 + 200) = v10;
  *(v4 + 208) = v9;

  return _swift_task_switch(sub_737AD0, v10, v9);
}

uint64_t sub_737AD0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 80);
  v5 = &enum case for AuthorizationPromptOptions.PromptCondition.always(_:);
  if (!*(v0 + 224))
  {
    v5 = &enum case for AuthorizationPromptOptions.PromptCondition.automatic(_:);
  }

  (*(*(v0 + 144) + 104))(*(v0 + 152), *v5, *(v0 + 136));
  sub_AB3EA0();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_737C3C;
  v7 = *(v0 + 128);
  v8 = *(v0 + 80);

  return sub_744718(v7, v8);
}

uint64_t sub_737C3C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  sub_12E1C(v2, &qword_E154C0);
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return _swift_task_switch(sub_737D90, v4, v3);
}

uint64_t sub_737D90()
{
  v43 = v0;

  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = sub_AB4BC0();
  __swift_project_value_buffer(v3, static Logger.groupActivities);
  sub_7521B4(v2, v1, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136446210;
    sub_7521B4(v7, v8, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v11 = sub_AB9350();
    v13 = v12;
    sub_752508(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v14 = sub_500C84(v11, v13, &v42);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v4, v5, "prepareForActivation result=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {

    sub_752508(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
  }

  v15 = v0[13];
  v16 = v0[5];
  v17 = v0[6];
  sub_7521B4(v0[16], v15, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v18 = *(v17 + 48);
  if (v18(v15, 4, v16))
  {
    v19 = v0[16];
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[5];
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_752508(v20, type metadata accessor for GroupActivitiesManager.PrepareResult);
    sub_75214C(v19, v21, type metadata accessor for GroupActivitiesManager.PrepareResult);
    if ((v18(v21, 4, v22) | 2) == 3)
    {
      v41 = 0;
    }

    else
    {
      sub_752508(v0[12], type metadata accessor for GroupActivitiesManager.PrepareResult);
      v41 = 1;
    }
  }

  else
  {
    v23 = v0[21];
    v39 = v0[20];
    v40 = v0[22];
    v38 = v0[16];
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[6];
    v27 = v0[3];
    v28 = v0[4];
    v37 = v28;
    v29 = v0[2];
    sub_75214C(v0[13], v24, type metadata accessor for GroupActivitiesManager.Activity);
    sub_745140();
    v30 = sub_AB9990();
    v41 = 1;
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    sub_7521B4(v24, v25, type metadata accessor for GroupActivitiesManager.Activity);
    v31 = v29;

    v32 = sub_AB9930();
    v33 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v29;
    v34[5] = v27;
    sub_75214C(v25, v34 + v33, type metadata accessor for GroupActivitiesManager.Activity);
    sub_5E89D8(0, 0, v37, &unk_B25938, v34);

    sub_752508(v24, type metadata accessor for GroupActivitiesManager.Activity);
    sub_752508(v38, type metadata accessor for GroupActivitiesManager.PrepareResult);
    (*(v23 + 8))(v40, v39);
  }

  v35 = v0[1];

  return v35(v41);
}

uint64_t GroupActivitiesManager.leave(performLeaveCommand:)(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 280) = a1;
  *(v2 + 144) = sub_AB9940();
  *(v2 + 152) = sub_AB9930();
  v4 = sub_AB98B0();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return _swift_task_switch(sub_738394, v4, v3);
}

uint64_t sub_738394()
{
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  *(v0 + 176) = __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 280);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_0, v2, v3, "👋🏻 Leaving session. Will perform leaveCommand=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 280);

  if (v6 == 1)
  {
    v7 = *(v0 + 136);
    v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
    *(v0 + 184) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
    *(v7 + v8) = 1;
    swift_beginAccess();
    v9 = v7[5];
    v10 = v7[6];
    __swift_project_boxed_opaque_existential_1(v7 + 2, v9);
    v11 = *(v9 - 8);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    (*(v11 + 16))();
    v13 = (*(v10 + 48))(v9, v10);
    *(v0 + 200) = v13;
    (*(v11 + 8))(v12, v9);
    if (v13)
    {
      v14 = *(v0 + 136);
      *(v0 + 40) = &type metadata for Player.LeaveSessionCommand;
      *(v0 + 48) = &protocol witness table for Player.LeaveSessionCommand;
      *(v0 + 208) = [objc_opt_self() systemRoute];
      *(v0 + 120) = v14;

      v15 = sub_AB9380();
      *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 56) = v15;
      *(v0 + 64) = v16;
      *(v0 + 216) = sub_AB9930();
      v18 = sub_AB98B0();
      *(v0 + 224) = v18;
      *(v0 + 232) = v17;

      return _swift_task_switch(sub_7387F4, v18, v17);
    }

    *(*(v0 + 136) + *(v0 + 184)) = 0;
  }

  else
  {
  }

  v19 = *(v0 + 136);
  v20 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v19 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_AB3DC0();
  }

  v21 = *(v0 + 136);
  *(v19 + v20) = 0;

  sub_7480BC();
  v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v23 = *(v21 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v23)
  {

    v24 = sub_AB4BA0();
    v25 = sub_AB9F50();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "Leave completed, pending session found", v26, 2u);
    }

    *(v19 + v20) = v23;
    swift_retain_n();

    sub_7480BC();

    *(v21 + v22) = 0;
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_7387F4()
{
  v1 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70);
  v2 = swift_allocObject();
  v0[30] = v2;
  *(v2 + 16) = xmmword_AF4EC0;
  sub_E8BA0((v0 + 2), v2 + 32);
  v0[31] = sub_AB9930();
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_7388F4;

  return sub_6CD6E0(v2, 0x10000, 1, v1, 0, (v0 + 7));
}