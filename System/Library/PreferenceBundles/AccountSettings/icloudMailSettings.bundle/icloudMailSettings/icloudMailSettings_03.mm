uint64_t sub_51004(uint64_t a1)
{
  v19 = sub_D5B10();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_66D4(&qword_1211E8, &qword_D8DA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v18 - v8);
  v10 = sub_D57E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD4(a1, v9, &qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_D68C0();
    v16 = sub_D5DB0();
    sub_D5310();

    sub_D5B00();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_D57D0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_51280@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._countAndFlagsBits = 0x4C45434E4143;
  v10._object = 0xE600000000000000;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._countAndFlagsBits = 0x4C45434E4143;
  v12._object = 0xE600000000000000;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v4, v14, v9);

  sub_DFAC();
  result = sub_D5F50();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_5139C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_66D4(&qword_121178, &qword_DB0C0);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  __chkstk_darwin(v3);
  v69 = &v63 - v5;
  v82 = sub_66D4(&qword_121280, &unk_D8E40);
  v6 = *(*(v82 - 8) + 64);
  v7 = __chkstk_darwin(v82);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = &v63 - v9;
  v80 = sub_66D4(&qword_121288, &unk_E0ED0);
  v10 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v81 = &v63 - v11;
  v12 = type metadata accessor for MSAddAliasView();
  v74 = *(v12 - 8);
  v13 = *(v74 + 64);
  __chkstk_darwin(v12);
  v75 = v14;
  v76 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_D5160();
  v65 = *(v66 - 8);
  v15 = *(v65 + 64);
  __chkstk_darwin(v66);
  v64 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_66D4(&qword_121258, &unk_D8E30);
  v17 = *(*(v78 - 8) + 64);
  v18 = __chkstk_darwin(v78);
  v63 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v67 = &v63 - v20;
  v86 = sub_66D4(&qword_121248, &unk_E0EC0);
  v21 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v79 = &v63 - v22;
  v83 = sub_66D4(&qword_121290, &qword_D8E50);
  v23 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v84 = &v63 - v24;
  v85 = sub_66D4(&qword_121238, &unk_D8E20);
  v25 = *(v85 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v85);
  v28 = &v63 - v27;
  v73 = v12;
  v29 = *(v12 + 28);
  v77 = a1;
  v30 = (a1 + v29);
  v32 = *v30;
  v31 = v30[1];
  v33 = *(v30 + 16);
  _s11descr112E21O9ViewModelCMa();
  sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if ((v88 & 1) != 0 || (sub_D5740(), swift_getKeyPath(), swift_getKeyPath(), sub_D5570(), , , , v88 == 1))
  {
    sub_D5780();
    v34 = v85;
    (*(v25 + 16))(v84, v28, v85);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_52748(&qword_121240, &qword_121248, &unk_E0EC0, sub_EA20);
    sub_D5BF0();
    return (*(v25 + 8))(v28, v34);
  }

  else
  {
    v36 = v76;
    v37 = *(v77 + *(v73 + 36));
    sub_52904(v77, v76);
    v38 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    if (v37 == 1)
    {
      v39 = swift_allocObject();
      sub_5296C(v36, v39 + v38);
      v40 = v64;
      sub_D5150();
      sub_D5740();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v42 = v88;
      v41 = v89;

      v43 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v43 = v42 & 0xFFFFFFFFFFFFLL;
      }

      v44 = v43 == 0;
      KeyPath = swift_getKeyPath();
      v46 = swift_allocObject();
      *(v46 + 16) = v44;
      v47 = v63;
      (*(v65 + 32))(v63, v40, v66);
      v48 = (v47 + *(v78 + 36));
      *v48 = KeyPath;
      v48[1] = sub_10ACC;
      v48[2] = v46;
      v49 = &qword_121258;
      v50 = &unk_D8E30;
      v51 = v67;
      sub_FEA4(v47, v67, &qword_121258, &unk_D8E30);
      sub_FBD4(v51, v81, &qword_121258, &unk_D8E30);
      swift_storeEnumTagMultiPayload();
      sub_EA20();
      sub_EB50();
      v52 = v79;
    }

    else
    {
      v53 = swift_allocObject();
      sub_5296C(v36, v53 + v38);
      v54 = v69;
      sub_D6260();
      sub_D5740();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v56 = v88;
      v55 = v89;

      v57 = HIBYTE(v55) & 0xF;
      if ((v55 & 0x2000000000000000) == 0)
      {
        v57 = v56 & 0xFFFFFFFFFFFFLL;
      }

      v58 = v57 == 0;
      v59 = swift_getKeyPath();
      v60 = swift_allocObject();
      *(v60 + 16) = v58;
      v61 = v68;
      (*(v70 + 32))(v68, v54, v71);
      v62 = (v61 + *(v82 + 36));
      *v62 = v59;
      v62[1] = sub_F0D0;
      v62[2] = v60;
      v49 = &qword_121280;
      v50 = &unk_D8E40;
      v51 = v72;
      sub_FEA4(v61, v72, &qword_121280, &unk_D8E40);
      sub_FBD4(v51, v81, &qword_121280, &unk_D8E40);
      swift_storeEnumTagMultiPayload();
      sub_EA20();
      sub_EB50();
      v52 = v79;
    }

    sub_D5BF0();
    sub_FC3C(v51, v49, v50);
    sub_FBD4(v52, v84, &qword_121248, &unk_E0EC0);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_52748(&qword_121240, &qword_121248, &unk_E0EC0, sub_EA20);
    sub_D5BF0();
    return sub_FC3C(v52, &qword_121248, &unk_E0EC0);
  }
}

uint64_t sub_51ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MSAddAliasView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = a1 + *(__chkstk_darwin(v5 - 8) + 36);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  _s11descr112E21O9ViewModelCMa();
  sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa);
  sub_D5740();
  sub_52904(a1, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_5296C(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_BCFF4(a3, v13);
}

uint64_t sub_52054(uint64_t a1)
{
  v2 = sub_D57E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for MSAddAliasView() + 32);
  v8 = *(v7 + 8);
  (*v7)(1);
  sub_EC34(v6);
  sub_D57D0();
  return (*(v3 + 8))(v6, v2);
}

double sub_5214C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_521DC(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return sub_D5580();
}

uint64_t sub_52274()
{
  sub_66D4(&qword_124758, &qword_DC330);
  sub_6110(&qword_124760, &unk_E38D0);
  sub_6110(&qword_121178, &qword_DB0C0);
  sub_6110(&qword_124768, &qword_DC338);
  sub_6110(&qword_124770, &qword_DC340);
  sub_6110(&qword_124778, &qword_DC348);
  sub_6110(&qword_124780, &qword_DC350);
  sub_524C4();
  sub_DFAC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_1247A0, &qword_124770, &qword_DC340);
  swift_getOpaqueTypeConformance2();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  swift_getOpaqueTypeConformance2();
  return sub_D5850();
}

unint64_t sub_524C4()
{
  result = qword_124788;
  if (!qword_124788)
  {
    sub_6110(&qword_124780, &qword_DC350);
    sub_109A8(&qword_124790, &qword_124798, &qword_DC358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124788);
  }

  return result;
}

unint64_t sub_52584()
{
  result = qword_1247B0;
  if (!qword_1247B0)
  {
    sub_6110(&qword_1247A8, &qword_DC360);
    sub_109A8(&qword_1247B8, &qword_1247C0, &qword_DC368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1247B0);
  }

  return result;
}

unint64_t sub_52658()
{
  result = qword_1247F0;
  if (!qword_1247F0)
  {
    sub_6110(&qword_1247F8, &qword_DC3E0);
    sub_527CC(&qword_121218, &type metadata accessor for CloseButton);
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1247F0);
  }

  return result;
}

uint64_t sub_52748(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    a4();
    sub_EB50();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_527CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_52904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSAddAliasView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5296C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSAddAliasView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_52B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_1213F0, &qword_D90A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_52BE4()
{
  v1 = type metadata accessor for MSAddAliasView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D57E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = *(v5 + v1[6] + 8);

  v10 = v5 + v1[7];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  sub_E0C4();
  v14 = *(v5 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_52D3C()
{
  v1 = *(type metadata accessor for MSAddAliasView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_4F830(v2);
}

id sub_52D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_124830, &qword_E1560);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v42 = &v37 - v6;
  v7 = sub_66D4(&qword_121070, &qword_DAFE0);
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v39 = &v37 - v9;
  v38 = sub_66D4(&qword_121068, &qword_DBEE0);
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v38);
  v13 = &v37 - v12;
  v14 = sub_66D4(&qword_121948, &unk_DC5C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  v48 = type metadata accessor for MSRepositoryDefault();
  v49 = &off_1188F0;
  v47[0] = a1;
  v19 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__fullName;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_D5530();
  v20 = *(v15 + 32);
  v20(a2 + v19, v18, v14);
  v21 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__emailId;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_D5530();
  v20(a2 + v21, v18, v14);
  v22 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__label;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_D5530();
  v20(a2 + v22, v18, v14);
  v23 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__isAdding;
  LOBYTE(v45) = 0;
  sub_D5530();
  v24 = *(v10 + 32);
  v25 = v38;
  v24(a2 + v23, v13, v38);
  v26 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__error;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  v27 = v39;
  sub_D5530();
  (*(v40 + 32))(a2 + v26, v27, v41);
  v28 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__isFetchingRules;
  LOBYTE(v45) = 1;
  sub_D5530();
  v24(a2 + v28, v13, v25);
  *(a2 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_rules) = _swiftEmptyArrayStorage;
  v29 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__validationMessage;
  v45 = 0uLL;
  sub_66D4(&qword_124838, &qword_E1490);
  v30 = v42;
  sub_D5530();
  (*(v43 + 32))(a2 + v29, v30, v44);
  *(a2 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  sub_2A5C4(v47, a2 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_repository);
  result = [*(*sub_6648(v47 v48) + 24)];
  if (result)
  {
    v32 = result;
    v33 = sub_D65F0();
    v35 = v34;

    v36 = (a2 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_placeholderName);
    *v36 = v33;
    v36[1] = v35;
    sub_BD844();
    sub_67D4(v47);
    return a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_532EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSAliasDeleteAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSAliasDeleteAPIRequest()
{
  result = qword_124878;
  if (!qword_124878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_53378@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for MSInternalSettingsView() + 28);
  *(a2 + v9) = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v10 = sub_6610(v4, qword_137988);
  (*(v5 + 16))(v8, v10, v4);
  v11 = sub_D5320();
  v12 = sub_D68A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "[MSInternalSettingsView] init()", v13, 2u);
  }

  (*(v5 + 8))(v8, v4);
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *(a2 + 32) = result;
    result = [result aa_primaryAppleAccount];
    if (result)
    {
      *(a2 + 24) = result;
      v15 = swift_allocObject();
      result = sub_38BDC(a1, v15 + 16);
      *a2 = sub_53E18;
      *(a2 + 8) = v15;
      *(a2 + 16) = 0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MSInternalSettingsView()
{
  result = qword_124A98;
  if (!qword_124A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_53628(uint64_t a1)
{
  sub_2A5C4(a1, v18);
  v1 = v19;
  v2 = sub_38BFC(v18, v19);
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v8 = type metadata accessor for MSRepositoryDefault();
  v17[3] = v8;
  v17[4] = &off_1188F0;
  v17[0] = v7;
  _s11descr112329O9ViewModelCMa();
  v9 = swift_allocObject();
  v10 = sub_38BFC(v17, v8);
  v11 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v9[5] = v8;
  v9[6] = &off_1188F0;
  v9[2] = v15;
  sub_67D4(v17);
  sub_67D4(v18);
  return v9;
}

uint64_t sub_537E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_D5B20();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_66D4(&qword_124B08, &qword_DC6E8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = sub_66D4(&qword_124B00, &qword_DC6E0);
  v12 = *(v11 - 8);
  v21 = v11;
  v22 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  v25 = a1;
  sub_D52D0();
  sub_54248(&qword_124B28, &type metadata accessor for MAInternalSettingsView);
  sub_D5E60();
  v16 = &v10[*(v7 + 36)];
  *v16 = sub_53B60;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = 0;
  sub_D5B50();
  v17 = sub_54188();
  sub_D6030();

  sub_54290(v10);
  v18 = v23;
  (*(v3 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v23);
  v26 = v7;
  v27 = v17;
  swift_getOpaqueTypeConformance2();
  v19 = v21;
  sub_D60D0();
  (*(v3 + 8))(v6, v18);
  return (*(v22 + 8))(v15, v19);
}

uint64_t sub_53B0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  v3 = v1;

  return MAInternalSettingsView.init(appleAccount:accountStore:)(v2, v3);
}

uint64_t sub_53B60()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Internal Settings] page viewed", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_53CEC()
{
  sub_66D4(&qword_124AF8, &qword_DC6D8);
  sub_6110(&qword_124B00, &qword_DC6E0);
  sub_6110(&qword_124B08, &qword_DC6E8);
  sub_54188();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_D5850();
}

uint64_t sub_53DE0()
{
  sub_67D4((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_53E34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_66D4(&qword_121090, &unk_D8CC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_53F04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_66D4(&qword_121090, &unk_D8CC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_53FB4()
{
  sub_54088();
  if (v0 <= 0x3F)
  {
    sub_5411C(319, &qword_124AB8, ACAccount_ptr);
    if (v1 <= 0x3F)
    {
      sub_5411C(319, &unk_124AC0, ACAccountStore_ptr);
      if (v2 <= 0x3F)
      {
        sub_6C10();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_54088()
{
  if (!qword_124AA8)
  {
    _s11descr112329O9ViewModelCMa();
    sub_54248(&qword_124AB0, _s11descr112329O9ViewModelCMa);
    v0 = sub_D5760();
    if (!v1)
    {
      atomic_store(v0, &qword_124AA8);
    }
  }
}

uint64_t sub_5411C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_54188()
{
  result = qword_124B10;
  if (!qword_124B10)
  {
    sub_6110(&qword_124B08, &qword_DC6E8);
    sub_109A8(&qword_124B18, &qword_124B20, &qword_DC6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124B10);
  }

  return result;
}

uint64_t sub_54248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_54290(uint64_t a1)
{
  v2 = sub_66D4(&qword_124B08, &qword_DC6E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSString sub_5433C()
{
  result = sub_D65C0();
  qword_1379A0 = result;
  return result;
}

void sub_54374()
{
  v1 = [*(v0 + 24) aa_primaryEmail];
  if (v1)
  {
    v2 = v1;
    v3 = objc_allocWithZone(MCCSecretAgentController);

    v4 = [v3 init];
    v5 = swift_allocObject();
    *(v5 + 16) = sub_56684;
    *(v5 + 24) = v0;
    v7[4] = sub_566FC;
    v7[5] = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_5F7FC;
    v7[3] = &unk_1169F0;
    v6 = _Block_copy(v7);

    [v4 getIsSecureEmailEnabledForEmail:v2 completion:v6];
    _Block_release(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_544C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v7 = sub_D6450();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_D6480();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v23);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26338();
  v16 = sub_D6900();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a1;
  aBlock[4] = v21;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_219D0;
  aBlock[3] = v22;
  v18 = _Block_copy(aBlock);

  sub_D6470();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_5673C(&qword_122400, &type metadata accessor for DispatchWorkItemFlags);
  sub_66D4(&qword_122408, &qword_DC730);
  sub_56620();
  sub_D6990();
  sub_D6910();
  _Block_release(v18);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v23);
}

uint64_t sub_5477C(uint64_t a1, char a2)
{
  v4[3] = &type metadata for Bool;
  v2 = a2 & 1;
  LOBYTE(v4[0]) = a2;
  sub_55318(0x6669746E6F507369, 0xEC0000006E4F7865, v4);
  sub_67D4(v4);
  if (qword_120E58 != -1)
  {
    swift_once();
  }

  LOBYTE(v4[0]) = v2;

  sub_D54E0();
}

uint64_t sub_54838(int a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_D6450();
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_D6480();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    LODWORD(v34) = a1;
    swift_errorRetain();
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v20 = sub_6610(v6, qword_137988);
    (*(v7 + 16))(v10, v20, v6);
    swift_errorRetain();
    v21 = sub_D5320();
    v22 = sub_D68B0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = sub_D6C60();
      v27 = sub_558F0(v25, v26, aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v21, v22, "EndToEndEncryption status fetch failed. Error: %s", v23, 0xCu);
      sub_67D4(v24);
    }

    else
    {
    }

    (*(v7 + 8))(v10, v6);
    v31 = v34;
  }

  else
  {
    sub_26338();
    v28 = sub_D6900();
    v29 = swift_allocObject();
    *(v29 + 16) = a1 & 1;
    aBlock[4] = sub_5681C;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_219D0;
    aBlock[3] = &unk_116A40;
    v30 = _Block_copy(aBlock);

    sub_D6470();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_5673C(&qword_122400, &type metadata accessor for DispatchWorkItemFlags);
    sub_66D4(&qword_122408, &qword_DC730);
    sub_56620();
    sub_D6990();
    sub_D6910();
    _Block_release(v30);

    (*(v34 + 8))(v14, v11);
    (*(v16 + 8))(v19, v15);
    v31 = a1;
  }

  return v36(v31 & 1);
}

uint64_t sub_54D18(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5)
{
  v36[1] = a5;
  v37 = a4;
  v36[0] = a2;
  v7 = sub_D5340();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_D6450();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_D6480();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v22 = sub_6610(v7, qword_137988);
    (*(v8 + 16))(v11, v22, v7);
    swift_errorRetain();
    v23 = sub_D5320();
    v24 = sub_D68B0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = sub_D6C60();
      v29 = sub_558F0(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "EndToEndEncryption status save failed. Error: %s", v25, 0xCu);
      sub_67D4(v26);
    }

    else
    {
    }

    (*(v8 + 8))(v11, v7);
    v34 = v36[0];
    swift_beginAccess();
    *(v34 + 16) = 0;
  }

  else
  {
    v30 = v19;
    sub_26338();
    v31 = sub_D6900();
    v32 = swift_allocObject();
    *(v32 + 16) = a3 & 1;
    aBlock[4] = sub_56604;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_219D0;
    aBlock[3] = &unk_1169A0;
    v33 = _Block_copy(aBlock);

    sub_D6470();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_5673C(&qword_122400, &type metadata accessor for DispatchWorkItemFlags);
    sub_66D4(&qword_122408, &qword_DC730);
    sub_56620();
    sub_D6990();
    sub_D6910();
    _Block_release(v33);

    (*(v13 + 8))(v16, v12);
    (*(v30 + 8))(v21, v17);
    v34 = v36[0];
  }

  swift_beginAccess();
  return v37(*(v34 + 16));
}

uint64_t sub_55224()
{
  if (qword_120E58 != -1)
  {
    swift_once();
  }

  sub_D54E0();
}

void sub_552AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_55318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_66D4(&qword_124C58, &qword_DFDA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  v10 = sub_D53C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_263D4(a3, v19);
  sub_66D4(&qword_124C60, &qword_DC750);
  if (swift_dynamicCast())
  {
    sub_38BDC(v17, v20);
    sub_6648(v20, v20[3]);
    sub_D53D0();
    v15 = *(v4 + 16);
    (*(v11 + 16))(v9, v14, v10);
    (*(v11 + 56))(v9, 0, 1, v10);

    sub_D5460();
    (*(v11 + 8))(v14, v10);
    return sub_67D4(v20);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    return sub_FC3C(v17, &qword_124C68, &qword_DC758);
  }
}

uint64_t sub_5554C()
{
  v1 = *(v0 + 16);

  sub_FC3C(v0 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView27EndToEndEncryptionViewModel_signingUIUrl, &qword_123340, qword_DC760);
  v2 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView27EndToEndEncryptionViewModel_account);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t _s27EndToEndEncryptionViewModelCMa()
{
  result = qword_124B70;
  if (!qword_124B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_55634()
{
  sub_556E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_556E0()
{
  if (!qword_124B80)
  {
    sub_D4F20();
    v0 = sub_D6930();
    if (!v1)
    {
      atomic_store(v0, &qword_124B80);
    }
  }
}

uint64_t sub_55738()
{
  v0 = [objc_allocWithZone(ACAccount) init];
  type metadata accessor for EndToEndEncryptionLiftUIDataSource();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1379A8 = result;
  return result;
}

id sub_55790()
{
  result = [objc_allocWithZone(sub_D5410()) init];
  qword_1379B0 = result;
  return result;
}

uint64_t sub_557C4()
{
  v0 = sub_66D4(&qword_124C50, &unk_DC740);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_D5510();
  qword_1379B8 = result;
  return result;
}

uint64_t sub_55820(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_55894(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_558F0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_558F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_559BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_263D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_67D4(v11);
  return v7;
}

unint64_t sub_559BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_55AC8(a5, a6);
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
    result = sub_D6A30();
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

char *sub_55AC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_55B14(a1, a2);
  sub_55C44(&off_113250);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_55B14(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_55D30(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_D6A30();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_D66F0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_55D30(v10, 0);
        result = sub_D6A00();
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

uint64_t sub_55C44(uint64_t result)
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

  result = sub_55DA4(result, v12, 1, v3);
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

void *sub_55D30(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_66D4(&qword_124C48, &qword_DC738);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_55DA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_124C48, &qword_DC738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

_BYTE **sub_55E98(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

id sub_55EA8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_D5450();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v3 + 16) = sub_D5440();
  sub_D4F10();
  v11 = OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView27EndToEndEncryptionViewModel_account;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = sub_66D4(&qword_124C70, &qword_DFBA0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v3 + v11) = sub_D5510();
  *(v3 + 24) = a1;
  *(v3 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView27EndToEndEncryptionViewModel_account) = a2;
  v15 = a1;

  *(&v28 + 1) = &type metadata for Bool;
  LOBYTE(v27) = 0;
  sub_55318(0x6669746E6F507369, 0xEC0000006E4F7865, &v27);
  sub_67D4(&v27);
  if (qword_120E48 != -1)
  {
    swift_once();
  }

  type metadata accessor for EndToEndEncryptionLiftUIDataSource();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  qword_1379A8 = v16;
  v17 = v15;

  if (qword_120E58 != -1)
  {
    swift_once();
  }

  qword_1379B8 = a3;

  v18 = [objc_allocWithZone(sub_D5410()) init];
  type metadata accessor for EndToEndEncryptionView.ToggleEndToEndEncryption();
  sub_5673C(&qword_124C78, type metadata accessor for EndToEndEncryptionView.ToggleEndToEndEncryption);
  sub_D5400();
  if (qword_120E50 != -1)
  {
    swift_once();
  }

  v19 = qword_1379B0;
  qword_1379B0 = v18;
  v20 = v18;

  result = [*(v4 + 24) aa_primaryEmail];
  if (result)
  {
    v22 = result;
    v23 = objc_allocWithZone(MCCSecretAgentController);

    v24 = [v23 init];
    v25 = swift_allocObject();
    *(v25 + 16) = sub_56784;
    *(v25 + 24) = v4;
    *&v29 = sub_567FC;
    *(&v29 + 1) = v25;
    *&v27 = _NSConcreteStackBlock;
    *(&v27 + 1) = 1107296256;
    *&v28 = sub_5F7FC;
    *(&v28 + 1) = &unk_116AE0;
    v26 = _Block_copy(&v27);

    [v24 getIsSecureEmailEnabledForEmail:v22 completion:v26];
    _Block_release(v26);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_5628C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_D5340();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v13 = sub_6610(v8, qword_137988);
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_D5320();
  v15 = sub_D68A0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = a5;
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "Saving EndToEndEncryption status", v16, 2u);
    a5 = v24;
  }

  (*(v9 + 8))(v12, v8);
  v17 = [objc_allocWithZone(MCCSecretAgentController) init];
  v18 = swift_allocObject();
  *(v18 + 16) = 1;
  v19 = sub_D65C0();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = a1 & 1;
  *(v20 + 24) = v21;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  aBlock[4] = sub_565DC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_552AC;
  aBlock[3] = &unk_116950;
  v22 = _Block_copy(aBlock);

  [v17 setIsSecureEmailEnabled:v21 forEmail:v19 completion:v22];
  _Block_release(v22);
}

uint64_t sub_5659C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_565EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_56620()
{
  result = qword_122410;
  if (!qword_122410)
  {
    sub_6110(&qword_122408, &qword_DC730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122410);
  }

  return result;
}

uint64_t sub_566C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_56704()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_5673C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_56830(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v50 = a2;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v9 = sub_6610(v4, qword_137988);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_D5320();
  v11 = sub_D68A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "[Alias] update started", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v13 = (v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias);
  v14 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 8);
  *&v48 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias);
  swift_getKeyPath();
  swift_getKeyPath();
  *(&v48 + 1) = v14;

  sub_D5570();

  v15 = *&v59[0];
  v16 = *(*&v59[0] + 16);
  if (v16)
  {
    v46 = v13;
    v47 = v3;
    *&v59[0] = _swiftEmptyArrayStorage;
    sub_11BB0(0, v16, 0);
    v17 = *&v59[0];
    v45[1] = v15;
    v18 = (v15 + 64);
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v21 = *v18;
      *&v59[0] = v17;
      v23 = v17[2];
      v22 = v17[3];

      if (v23 >= v22 >> 1)
      {
        sub_11BB0((v22 > 1), v23 + 1, 1);
        v17 = *&v59[0];
      }

      v17[2] = v23 + 1;
      v24 = &v17[3 * v23];
      v24[4] = v19;
      v24[5] = v20;
      *(v24 + 48) = v21;
      v18 += 40;
      --v16;
    }

    while (v16);

    v13 = v46;
    v3 = v47;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v25 = v59[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v26 = v59[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v54 = v48;
  *v55 = v17;
  *&v55[8] = v25;
  *&v55[24] = v26;
  v55[40] = v59[0];
  v56 = v48;
  v57 = *v55;
  v58[0] = *&v55[16];
  *(v58 + 9) = *&v55[25];
  v27 = *v13;
  v28 = v13[1];
  v29 = v13[2];
  *(v60 + 9) = *(v13 + 41);
  v59[1] = v28;
  v60[0] = v29;
  v59[0] = v27;
  if (sub_B8D6C(&v56, v59))
  {
    sub_584E0(&v54);
    return v49(0);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v51[0]) = 1;

    sub_D5580();
    v31 = sub_6648((v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository), *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository + 24));
    v32 = *(*v31 + 16);
    v33 = *(*v31 + 24);
    v53[3] = &type metadata for Alias;
    v53[4] = sub_469C8();
    v34 = swift_allocObject();
    v53[0] = v34;
    v35 = v57;
    v34[1] = v56;
    v34[2] = v35;
    v34[3] = v58[0];
    *(v34 + 57) = *(v58 + 9);
    v36 = objc_allocWithZone(type metadata accessor for MSAliasUpdateAPIRequest());
    sub_13E28(v53, v52);
    v37 = v32;
    v38 = v33;
    sub_5842C(&v54, v51);
    v39 = sub_45BC4(v32, v38, v52);

    sub_13EF4(v53);
    v40 = sub_1EB80();

    v51[0] = v40;
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v43 = v57;
    *(v42 + 16) = v56;
    *(v42 + 32) = v43;
    *(v42 + 48) = v58[0];
    *(v42 + 57) = *(v58 + 9);
    *(v42 + 80) = v41;
    v44 = swift_allocObject();
    *(v44 + 16) = v49;
    *(v44 + 24) = v50;

    sub_66D4(&qword_121F38, &qword_D9CA0);
    sub_14038();
    sub_D55D0();

    swift_beginAccess();
    sub_D54B0();
    swift_endAccess();
  }
}

uint64_t sub_56E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v53 = *(a1 + 24);
  v54 = v13;
  v55 = *(a1 + 32);
  v56 = v12;
  LODWORD(v15) = *(a1 + 40);
  if (v12)
  {
    if (sub_3E120())
    {
      v16 = sub_D6540();
      v18 = v17;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v19 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v11, v19, v4);

      v20 = sub_D5320();
      v21 = v5;
      v22 = sub_D68B0();

      if (os_log_type_enabled(v20, v22))
      {
        v23 = swift_slowAlloc();
        LODWORD(v51) = v15;
        v15 = v23;
        v24 = swift_slowAlloc();
        v52 = v14;
        v25 = v24;
        v59 = v24;
        *v15 = 136642819;
        v26 = sub_558F0(v16, v18, &v59);
        v27 = v21;
        v28 = v20;
        v29 = v26;

        *(v15 + 4) = v29;
        _os_log_impl(&dword_0, v28, v22, "[Alias] params: %{sensitive}s", v15, 0xCu);
        sub_67D4(v25);
        v14 = v52;

        LOBYTE(v15) = v51;

        (*(v27 + 8))(v11, v4);
        v5 = v27;
      }

      else
      {

        (*(v21 + 8))(v11, v4);
        v5 = v21;
      }
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v30 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v9, v30, v4);
    v31 = v56;

    v32 = v31;
    v33 = sub_D5320();
    v34 = sub_D68B0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v52 = v14;
      v36 = v35;
      v37 = v5;
      v38 = swift_slowAlloc();
      v65 = v38;
      *v36 = 136315138;
      v59 = v54;
      v60 = v32;
      v61 = v52;
      LOBYTE(v62) = v53 & 1;
      v63 = v55;
      v64 = v15 & 1;
      sub_6780();
      v39 = sub_D6C60();
      v41 = sub_558F0(v39, v40, &v65);
      v51 = v4;
      v42 = v41;

      *(v36 + 4) = v42;
      _os_log_impl(&dword_0, v33, v34, "[Alias] update failed: %s", v36, 0xCu);
      sub_67D4(v38);

      v14 = v52;

      (*(v37 + 8))(v9, v51);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v43 = v56;
    if (v56)
    {
      v44 = v54;
    }

    else
    {
      v44 = 0;
    }

    if (v56)
    {
      v45 = v14;
    }

    else
    {
      v45 = 0;
    }

    if (v56)
    {
      v46 = v53 & 1;
    }

    else
    {
      v46 = 0;
    }

    if (v56)
    {
      v47 = v55;
    }

    else
    {
      v47 = 0;
    }

    if (v56)
    {
      v48 = v15 & 1;
    }

    else
    {
      v48 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v44;
    v60 = v43;
    v61 = v45;
    v62 = v46;
    v63 = v47;
    v64 = v48;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v58 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_57438(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "[Alias] update succeeded", v11, 2u);
  }

  (*(v4 + 8))(v7, v3);
  return a2(1);
}

uint64_t sub_575E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v11 = sub_6610(v6, qword_137988);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_D5320();
  v13 = sub_D68A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "[Alias] delete started", v14, 2u);
  }

  (*(v7 + 8))(v10, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v32[0]) = 1;

  sub_D5580();
  v15 = sub_6648((v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository), *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository + 24));
  v16 = (v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias);
  *&v33[9] = *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 41);
  v17 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 32);
  v32[1] = *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 16);
  *v33 = v17;
  v32[0] = *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias);
  v18 = *(*v15 + 16);
  v19 = *(*v15 + 24);
  v31[3] = &type metadata for Alias;
  v31[4] = sub_469C8();
  v20 = swift_allocObject();
  v31[0] = v20;
  v21 = v16[1];
  v20[1] = *v16;
  v20[2] = v21;
  v20[3] = v16[2];
  *(v20 + 57) = *(v16 + 41);
  v22 = objc_allocWithZone(type metadata accessor for MSAliasDeleteAPIRequest());
  sub_13E28(v31, v30);
  v23 = v18;
  v24 = v19;
  sub_5842C(v32, v29);
  v25 = sub_45BC4(v18, v24, v30);

  sub_13EF4(v31);
  v26 = sub_1EB80();

  v29[0] = v26;
  swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;

  sub_66D4(&qword_121F38, &qword_D9CA0);
  sub_14038();
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_579C4(uint64_t a1)
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v51 - v8;
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 24);
  v58 = *(a1 + 16);
  v57 = *(a1 + 32);
  v13 = *(a1 + 40);
  v59 = v10;
  if (v10)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 16);
      v15 = *(Strong + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 32);
      v17 = *(Strong + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 41);
      v68[0] = *(Strong + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias);
      *(v69 + 9) = v17;
      v68[1] = v16;
      v69[0] = v15;
      sub_5842C(v68, &v60);

      v18 = sub_3E120();
      sub_584E0(v68);
      if (v18)
      {
        LODWORD(v54) = v13;
        v55 = v12;
        v52 = sub_D6550();
        v20 = v19;

        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v21 = sub_6610(v2, qword_137988);
        v53 = v3;
        (*(v3 + 16))(v9, v21, v2);

        v22 = sub_D5320();
        v23 = sub_D68B0();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v51 = v11;
          v25 = v24;
          v26 = swift_slowAlloc();
          v56 = v2;
          v27 = v26;
          v60 = v26;
          *v25 = 136642819;
          v28 = sub_558F0(v52, v20, &v60);

          *(v25 + 4) = v28;
          _os_log_impl(&dword_0, v22, v23, "[Alias] params: %{sensitive}s", v25, 0xCu);
          sub_67D4(v27);
          v2 = v56;

          v11 = v51;
        }

        else
        {
        }

        (v53[1].isa)(v9, v2);
        LOBYTE(v12) = v55;
        LOBYTE(v13) = v54;
      }
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v29 = sub_6610(v2, qword_137988);
    v30 = v3;
    (*(v3 + 16))(v7, v29, v2);

    v31 = sub_D5320();
    v32 = sub_D68B0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v56 = v2;
      v34 = v33;
      v55 = swift_slowAlloc();
      v67 = v55;
      *v34 = 136315138;
      v60 = v11;
      v61 = v59;
      v62 = v58;
      LOBYTE(v63) = v12 & 1;
      v64 = v57;
      v65 = v13 & 1;
      sub_6780();
      v53 = v31;
      v35 = sub_D6C60();
      v37 = sub_558F0(v35, v36, &v67);
      v54 = v7;
      v38 = v32;
      v39 = v11;
      v40 = v37;

      *(v34 + 4) = v40;
      v11 = v39;
      v41 = v38;
      v42 = v53;
      _os_log_impl(&dword_0, v53, v41, "[Alias] delete failed: %s", v34, 0xCu);
      sub_67D4(v55);

      (*(v30 + 8))(v54, v56);
    }

    else
    {

      (*(v30 + 8))(v7, v2);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v43 = v13 & 1;
    v44 = v59;
    if (v59)
    {
      v45 = v11;
    }

    else
    {
      v45 = 0;
    }

    if (v59)
    {
      v46 = v58;
    }

    else
    {
      v46 = 0;
    }

    if (v59)
    {
      v47 = v12 & 1;
    }

    else
    {
      v47 = 0;
    }

    if (v59)
    {
      v48 = v57;
    }

    else
    {
      v48 = 0;
    }

    if (v59)
    {
      v49 = v43;
    }

    else
    {
      v49 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v60 = v45;
    v61 = v44;
    v62 = v46;
    v63 = v47;
    v64 = v48;
    v65 = v49;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v66 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_5805C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "[Alias] delete successful", v11, 2u);
  }

  v12 = (*(v4 + 8))(v7, v3);
  return a2(v12);
}

uint64_t sub_58204()
{
  v2 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 8);
  v1 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 16);
  v3 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 32);
  v4 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 48);

  return sub_67D4((v0 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository));
}

uint64_t sub_5826C()
{
  v0 = sub_11220();
  v1 = *&v0[OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 8];
  v2 = *&v0[OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 16];
  v3 = *&v0[OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 32];
  v4 = *&v0[OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 48];

  sub_67D4(&v0[OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository]);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for MSAliasDetailViewModel()
{
  result = qword_124CB8;
  if (!qword_124CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_583DC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_58488()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_58554()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_585B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_585FC()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_58644()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSUpdateServerPreferenceAPI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSUpdateServerPreferenceAPI()
{
  result = qword_124FB8;
  if (!qword_124FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_586D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v38 - v13;
  __chkstk_darwin(v12);
  v16 = v38 - v15;
  if (!a2)
  {
    v19 = sub_D65C0();
    v20 = [v3 accountPropertyForKey:v19];

    if (!v20)
    {
      v41 = 0u;
      v42 = 0u;
      sub_5A408(&v41);
      return 0;
    }

    sub_D6980();
    swift_unknownObjectRelease();
    sub_5A408(&v41);
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v21 = sub_6610(v6, qword_137988);
    (*(v7 + 16))(v11, v21, v6);
    v22 = sub_D5320();
    v23 = sub_D68D0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "[setFullUserName] Has different FullUserName", v24, 2u);
    }

    (*(v7 + 8))(v11, v6);
    v25 = sub_D65C0();
    [v3 setAccountProperty:0 forKey:v25];

    return 1;
  }

  v17 = sub_D65C0();
  v18 = [v3 accountPropertyForKey:v17];

  if (v18)
  {
    sub_D6980();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (!*(&v40 + 1))
  {
    sub_5A408(&v41);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v27 = sub_6610(v6, qword_137988);
    (*(v7 + 16))(v14, v27, v6);
    v28 = sub_D5320();
    v29 = sub_D68D0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "[setFullUserName] Has different FullUserName", v30, 2u);
    }

    (*(v7 + 8))(v14, v6);
    goto LABEL_22;
  }

  if (v38[0] == a1 && v38[1] == a2)
  {

    return 0;
  }

  v33 = sub_D6C20();

  result = 0;
  if ((v33 & 1) == 0)
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v34 = sub_6610(v6, qword_137988);
    (*(v7 + 16))(v16, v34, v6);
    v35 = sub_D5320();
    v36 = sub_D68D0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "[setFullUserName] Has different FullUserName", v37, 2u);
    }

    (*(v7 + 8))(v16, v6);
LABEL_22:
    v31 = sub_D65C0();
    v32 = sub_D65C0();
    [v3 setAccountProperty:v31 forKey:v32];

    return 1;
  }

  return result;
}

uint64_t sub_58C84(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = sub_D65C0();
    v8 = [v2 accountPropertyForKey:v7];

    if (!v8)
    {
      v17 = 0u;
      v18 = 0u;
      sub_5A408(&v17);
      return 0;
    }

    sub_D6980();
    swift_unknownObjectRelease();
    sub_5A408(&v17);
    v9 = sub_D65C0();
    [v2 setAccountProperty:0 forKey:v9];
LABEL_14:

    return 1;
  }

  v5 = sub_D65C0();
  v6 = [v2 accountPropertyForKey:v5];

  if (v6)
  {
    sub_D6980();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    sub_5A408(&v17);
LABEL_13:
    v10 = sub_D65C0();
    v9 = sub_D65C0();
    [v2 setAccountProperty:v10 forKey:v9];

    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (v13 == a1 && v14 == a2)
  {

    return 0;
  }

  v12 = sub_D6C20();

  result = 0;
  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_58EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BAC(_swiftEmptyArrayStorage);
  v5 = *(a3 + 16);
  if (!v5)
  {
LABEL_15:
    v24 = sub_59148();
    v25 = sub_598E8(v24, v4);

    if (v25)
    {
    }

    else
    {
      isa = sub_D6520().super.isa;

      v27 = sub_D65C0();
      [v29 setAccountProperty:isa forKey:v27];
    }

    return (v25 & 1) == 0;
  }

  v6 = (a3 + 48);
  while (1)
  {
    v8 = *v6;
    v10 = *(v6 - 2);
    v9 = *(v6 - 1);

    v33._countAndFlagsBits = 64;
    v33._object = 0xE100000000000000;
    sub_D66D0(v33);

    v34._countAndFlagsBits = v10;
    v34._object = v9;
    sub_D66D0(v34);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v4;
    v12 = sub_4BAD4(a1, a2);
    v14 = *(v4 + 16);
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (*(v4 + 24) < v17)
    {
      sub_4BF8C(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_4BAD4(a1, a2);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_10:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v12;
    sub_4C8BC();
    v12 = v23;
    if (v18)
    {
LABEL_3:
      v7 = v12;

      v4 = v32;
      *(v32[7] + v7) = v8;

      goto LABEL_4;
    }

LABEL_11:
    v4 = v32;
    v32[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v32[6] + 16 * v12);
    *v20 = a1;
    v20[1] = a2;
    *(v32[7] + v12) = v8;

    v21 = v32[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v32[2] = v22;
LABEL_4:
    v6 += 24;
    if (!--v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_D6C50();
  __break(1u);
  return result;
}

uint64_t sub_59148()
{
  v1 = v0;
  v54 = sub_D4DC0();
  v52 = *(v54 - 8);
  v2 = v52[8];
  __chkstk_darwin(v54);
  v53 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_D5340();
  v5 = *(isUniquelyReferenced_nonNull_native - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_26BAC(_swiftEmptyArrayStorage);
  v10 = sub_D65C0();
  v11 = [v1 accountPropertyForKey:v10];

  if (v11)
  {
    sub_D6980();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58 = v56;
  v59 = v57;
  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      v58 = v55;
      *&v56 = 44;
      *(&v56 + 1) = 0xE100000000000000;
      sub_DFAC();
      v12 = sub_D6940();

      v13 = v12[2];
      if (!v13)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }
  }

  else
  {
    sub_5A408(&v58);
  }

  v14 = sub_D65C0();
  v15 = [v1 accountPropertyForKey:v14];

  if (v15)
  {
    sub_D6980();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58 = v56;
  v59 = v57;
  if (*(&v57 + 1))
  {
    sub_66D4(&qword_121498, &qword_D99D0);
    if (swift_dynamicCast())
    {
      v12 = v55;
      v13 = *(v55 + 16);
      if (!v13)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }
  }

  else
  {
    sub_5A408(&v58);
  }

  v16 = sub_D65C0();
  v17 = [v1 accountPropertyForKey:v16];

  if (v17)
  {
    sub_D6980();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58 = v56;
  v59 = v57;
  if (!*(&v57 + 1))
  {
    sub_5A408(&v58);
    goto LABEL_25;
  }

  sub_66D4(&qword_125188, &unk_DCA28);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v19 = sub_D65C0();
    v20 = [v1 accountPropertyForKey:v19];

    if (v20)
    {
      sub_D6980();
      swift_unknownObjectRelease();
      sub_5A408(&v58);
      if (qword_120E38 != -1)
      {
        goto LABEL_56;
      }

      goto LABEL_27;
    }

    v58 = 0u;
    v59 = 0u;
    sub_5A408(&v58);
LABEL_31:
    v12 = _swiftEmptyArrayStorage;
    v13 = _swiftEmptyArrayStorage[2];
    if (!v13)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v18 = v55;

  v12 = _swiftEmptyArrayStorage;
  v9 = v18;
  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
LABEL_32:
    *&v56 = _swiftEmptyArrayStorage;
    sub_11B90(0, v13, 0);
    v25 = v56;
    v26 = (v52 + 1);
    v52 = v12;
    v27 = v12 + 5;
    do
    {
      v28 = *v27;
      *&v58 = *(v27 - 1);
      *(&v58 + 1) = v28;

      v29 = v53;
      sub_D4DB0();
      sub_DFAC();
      v8 = &v58;
      v30 = sub_D6950();
      v32 = v31;
      (*v26)(v29, v54);

      *&v56 = v25;
      v5 = *(v25 + 16);
      v33 = *(v25 + 24);
      isUniquelyReferenced_nonNull_native = v5 + 1;
      if (v5 >= v33 >> 1)
      {
        v8 = &v56;
        sub_11B90((v33 > 1), v5 + 1, 1);
        v25 = v56;
      }

      *(v25 + 16) = isUniquelyReferenced_nonNull_native;
      v34 = v25 + 16 * v5;
      *(v34 + 32) = v30;
      *(v34 + 40) = v32;
      v27 += 2;
      --v13;
    }

    while (v13);

    v54 = *(v25 + 16);
    if (!v54)
    {
LABEL_51:

      return v9;
    }

    v35 = 0;
    v36 = (v25 + 40);
    while (1)
    {
      if (v35 >= *(v25 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
LABEL_27:
        v21 = sub_6610(isUniquelyReferenced_nonNull_native, qword_137988);
        (*(v5 + 16))(v8, v21, isUniquelyReferenced_nonNull_native);
        v22 = sub_D5320();
        v23 = sub_D68B0();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_0, v22, v23, "[getPrimaryEmailAddresses] emailAddress is not nil and unhandled type", v24, 2u);
        }

        (*(v5 + 8))(v8, isUniquelyReferenced_nonNull_native);
        goto LABEL_31;
      }

      v5 = *(v36 - 1);
      v37 = *v36;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v58 = v9;
      v8 = v9;
      v38 = sub_4BAD4(v5, v37);
      v40 = *(v9 + 2);
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        goto LABEL_54;
      }

      v44 = v39;
      if (*(v9 + 3) < v43)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_46;
      }

      v8 = &v58;
      v49 = v38;
      sub_4C8BC();
      v38 = v49;
      if (v44)
      {
LABEL_38:
        v8 = v38;

        v9 = v58;
        *(v8 + *(v58 + 56)) = 1;
        goto LABEL_39;
      }

LABEL_47:
      v9 = v58;
      *(v58 + 8 * (v38 >> 6) + 64) |= 1 << v38;
      v46 = (*(v9 + 6) + 16 * v38);
      *v46 = v5;
      v46[1] = v37;
      *(*(v9 + 7) + v38) = 1;
      v47 = *(v9 + 2);
      v42 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v42)
      {
        goto LABEL_55;
      }

      *(v9 + 2) = v48;
LABEL_39:
      ++v35;
      v36 += 2;
      if (v54 == v35)
      {
        goto LABEL_51;
      }
    }

    sub_4BF8C(v43, isUniquelyReferenced_nonNull_native);
    v8 = v58;
    v38 = sub_4BAD4(v5, v37);
    if ((v44 & 1) != (v45 & 1))
    {
      result = sub_D6C50();
      __break(1u);
      return result;
    }

LABEL_46:
    if (v44)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

LABEL_23:

  return v9;
}

uint64_t sub_598E8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_4BAD4(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_59A1C(uint64_t a1)
{
  v2 = sub_26BAC(_swiftEmptyArrayStorage);
  v67 = a1;
  v3 = *(a1 + 56);
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_32:
    if (*(v67 + 64))
    {
      v38 = *(v67 + 64);
    }

    else
    {
      v38 = _swiftEmptyArrayStorage;
    }

    v76 = v38[2];
    if (!v76)
    {

LABEL_56:

      v61 = sub_5A084();
      v62 = sub_598E8(v61, v2);

      if (v62)
      {
      }

      else
      {
        isa = sub_D6520().super.isa;

        v64 = sub_D65C0();
        [v66 setAccountProperty:isa forKey:v64];
      }

      return (v62 & 1) == 0;
    }

    v39 = 0;
    v40 = v38 + 6;
    v74 = v38;
    while (1)
    {
      if (v39 >= v38[2])
      {
        goto LABEL_63;
      }

      v78 = *(v40 + 16);
      v42 = v40[3];
      v43 = v40[4];
      v44 = *v40;
      v45 = v40[1];
      v83 = *(v40 - 1);
      v80 = v40[6];

      swift_bridgeObjectRetain_n();

      v90._countAndFlagsBits = 64;
      v90._object = 0xE100000000000000;
      sub_D66D0(v90);

      v91._countAndFlagsBits = v44;
      v91._object = v45;
      sub_D66D0(v91);

      object = v83._object;
      countAndFlagsBits = v83._countAndFlagsBits;
      if (v43)
      {
        v48 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v48 = v42 & 0xFFFFFFFFFFFFLL;
        }

        if (v48)
        {

          v92._countAndFlagsBits = 15392;
          v92._object = 0xE200000000000000;
          sub_D66D0(v92);
          sub_D66D0(v83);

          v93._countAndFlagsBits = 62;
          v93._object = 0xE100000000000000;
          sub_D66D0(v93);
          countAndFlagsBits = v42;
          object = v43;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v2;
      v50 = sub_4BAD4(countAndFlagsBits, object);
      v52 = v2[2];
      v53 = (v51 & 1) == 0;
      v36 = __OFADD__(v52, v53);
      v54 = v52 + v53;
      if (v36)
      {
        goto LABEL_64;
      }

      v55 = v51;
      if (v2[3] < v54)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_50;
      }

      v60 = v50;
      sub_4C8BC();
      v50 = v60;
      if (v55)
      {
LABEL_37:
        v41 = v50;

        v2 = v84;
        *(v84[7] + v41) = v78;

        goto LABEL_38;
      }

LABEL_51:
      v2 = v84;
      v84[(v50 >> 6) + 8] |= 1 << v50;
      v57 = (v84[6] + 16 * v50);
      *v57 = countAndFlagsBits;
      v57[1] = object;
      *(v84[7] + v50) = v78;

      v58 = v84[2];
      v36 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v36)
      {
        goto LABEL_65;
      }

      v84[2] = v59;
LABEL_38:
      ++v39;
      v40 += 9;
      v38 = v74;
      if (v76 == v39)
      {
        goto LABEL_56;
      }
    }

    sub_4BF8C(v54, isUniquelyReferenced_nonNull_native);
    v50 = sub_4BAD4(countAndFlagsBits, object);
    if ((v55 & 1) != (v56 & 1))
    {
      goto LABEL_66;
    }

LABEL_50:
    if (v55)
    {
      goto LABEL_37;
    }

    goto LABEL_51;
  }

  v5 = 0;
  v6 = v3 + 32;
  v68 = v3 + 32;
  v69 = *(v3 + 16);
  while (1)
  {
    v7 = v6 + (v5 << 6);
    if (*(v7 + 56) == 1)
    {
      v8 = *(v7 + 16);
      v79 = *(v8 + 16);
      if (v79)
      {
        break;
      }
    }

LABEL_4:
    if (++v5 == v4)
    {
      goto LABEL_32;
    }
  }

  v9 = *(v7 + 8);
  v77 = *v7;
  v10 = *(v7 + 24);
  v11 = *(v7 + 32);
  v12 = *(v7 + 48);
  v13 = HIBYTE(v11) & 0xF;
  v70 = v5;
  v71 = v10;
  v14 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v14;
  }

  if (v11)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  v75 = v16;
  v81 = v9;

  swift_bridgeObjectRetain_n();
  v72 = v11;

  v17 = 0;
  v18 = (v8 + 48);
  v73 = v8;
  while (v17 < *(v8 + 16))
  {
    v19 = *v18;
    v20 = *(v18 - 2);
    v21 = *(v18 - 1);

    v85._countAndFlagsBits = 64;
    v85._object = 0xE100000000000000;
    sub_D66D0(v85);

    v86._countAndFlagsBits = v20;
    v86._object = v21;
    sub_D66D0(v86);

    v23 = v77;
    v22 = v81;
    v82 = v19;
    if ((v75 & 1) == 0)
    {

      v87._countAndFlagsBits = 15392;
      v87._object = 0xE200000000000000;
      sub_D66D0(v87);
      v88._countAndFlagsBits = v77;
      v88._object = v81;
      sub_D66D0(v88);

      v89._countAndFlagsBits = 62;
      v89._object = 0xE100000000000000;
      sub_D66D0(v89);
      v23 = v71;
      v22 = v72;
    }

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_4BAD4(v23, v22);
    v27 = v2[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_61;
    }

    v30 = v25;
    if (v2[3] >= v29)
    {
      if (v24)
      {
        v33 = v82;
        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_4C8BC();
        v33 = v82;
        if ((v30 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_4BF8C(v29, v24);
      v31 = sub_4BAD4(v23, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_66;
      }

      v26 = v31;
      v33 = v82;
      if ((v30 & 1) == 0)
      {
LABEL_28:
        v2[(v26 >> 6) + 8] |= 1 << v26;
        v34 = (v2[6] + 16 * v26);
        *v34 = v23;
        v34[1] = v22;
        *(v2[7] + v26) = v33;

        v35 = v2[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_62;
        }

        v2[2] = v37;
        goto LABEL_17;
      }
    }

    *(v2[7] + v26) = v33;

LABEL_17:
    ++v17;
    v18 += 24;
    v8 = v73;
    if (v79 == v17)
    {

      swift_bridgeObjectRelease_n();

      v6 = v68;
      v4 = v69;
      v5 = v70;
      goto LABEL_4;
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
  result = sub_D6C50();
  __break(1u);
  return result;
}

uint64_t sub_5A084()
{
  v1 = [v0 accountProperties];
  if (!v1)
  {
    goto LABEL_34;
  }

  v2 = v1;
  v3 = sub_D65C0();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    sub_D6980();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  sub_5A398(v29, &v27);
  if (*(&v28 + 1))
  {
    sub_66D4(&qword_125188, &unk_DCA28);
    if (swift_dynamicCast())
    {
      sub_5A408(v29);
      return v26;
    }
  }

  else
  {
    sub_5A408(&v27);
  }

  sub_5A398(v29, &v27);
  if (!*(&v28 + 1))
  {
    sub_5A408(&v27);
    goto LABEL_27;
  }

  sub_66D4(&qword_121498, &qword_D99D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v5 = sub_26BAC(_swiftEmptyArrayStorage);
LABEL_29:
    sub_5A408(v29);
    return v5;
  }

  v5 = sub_26BAC(_swiftEmptyArrayStorage);
  v6 = *(v26 + 16);
  if (!v6)
  {
LABEL_28:

    goto LABEL_29;
  }

  v7 = 0;
  v8 = (v26 + 40);
  while (v7 < *(v26 + 16))
  {
    v11 = *(v8 - 1);
    v10 = *v8;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27 = v5;
    v13 = sub_4BAD4(v11, v10);
    v15 = v5[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_32;
    }

    v19 = v14;
    if (v5[3] < v18)
    {
      sub_4BF8C(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_4BAD4(v11, v10);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_35;
      }

LABEL_21:
      if (v19)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v24 = v13;
    sub_4C8BC();
    v13 = v24;
    if (v19)
    {
LABEL_13:
      v9 = v13;

      v5 = v27;
      *(*(v27 + 56) + v9) = 1;
      goto LABEL_14;
    }

LABEL_22:
    v5 = v27;
    *(v27 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v21 = (v5[6] + 16 * v13);
    *v21 = v11;
    v21[1] = v10;
    *(v5[7] + v13) = 1;
    v22 = v5[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_33;
    }

    v5[2] = v23;
LABEL_14:
    ++v7;
    v8 += 2;
    if (v6 == v7)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_D6C50();
  __break(1u);
  return result;
}

uint64_t sub_5A398(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_125180, &qword_DCA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5A408(uint64_t a1)
{
  v2 = sub_66D4(&qword_125180, &qword_DCA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5A4AC(__int128 *a1)
{
  v5 = *a1;
  v7 = a1[1];
  *v9 = a1[2];
  *&v9[9] = *(a1 + 41);
  sub_66D4(qword_125190, &qword_E36A0);
  sub_D62E0();
  if (v4)
  {
  }

  sub_D6320();
  v6 = *a1;
  v8 = a1[1];
  *v10 = a1[2];
  *&v10[9] = *(a1 + 41);
  v2 = sub_D62E0();
  __chkstk_darwin(v2);
  sub_66D4(&qword_121178, &qword_DB0C0);
  sub_E000();
  sub_5A8D0();
  sub_D60E0();
}

uint64_t sub_5A6B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[1];
  v12 = *a3;
  v9[6] = a1;
  v9[7] = a2;
  v5 = *(a3 + 2);
  v10 = *(a3 + 1);
  v11[0] = v5;
  *(v11 + 9) = *(a3 + 41);
  v6 = swift_allocObject();
  v7 = *(a3 + 1);
  v6[1] = *a3;
  v6[2] = v7;
  v6[3] = *(a3 + 2);
  *(v6 + 57) = *(a3 + 41);

  sub_10578(&v12, v9);

  sub_5A854(&v10, v9);
  sub_DFAC();
  return sub_D6280();
}

uint64_t sub_5A7A0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_5A7E8()
{
  v2 = v0[1];
  v3 = v0[2];
  *v4 = v0[3];
  *&v4[9] = *(v0 + 57);
  sub_66D4(qword_125190, &qword_E36A0);
  return sub_D62F0();
}

uint64_t sub_5A854(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_120EE8, &qword_D8DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_5A8D0()
{
  result = qword_1211D0;
  if (!qword_1211D0)
  {
    sub_6110(&qword_121178, &qword_DB0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1211D0);
  }

  return result;
}

uint64_t sub_5A934()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_5A97C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_5A998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_5A9E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_5AA44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5AA88@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = a1[3];
  v25 = a1[2];
  v26 = v3;
  v4 = a1[5];
  v23 = a1[4];
  v24 = v4;
  v28 = v3;
  v29 = v25;
  v30 = v4;
  v31 = v23;
  v5 = sub_D5830();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = *v2;
  v14 = *(v2 + 8);
  v15 = *(v2 + 16);
  v16 = *(v2 + 24);
  v22 = *(v2 + 32);
  v18 = *(v2 + 40);
  v17 = *(v2 + 48);

  sub_5AC70(v13, v14, v15, v16, v22, v18, v17, v26, v25);
  swift_getWitnessTable();
  v19 = v6[2];
  v19(v12, v10, v5);
  v20 = v6[1];
  v20(v10, v5);
  v19(v27, v12, v5);
  return (v20)(v12, v5);
}

uint64_t sub_5AC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(*(a9 - 8) + 64);
  v10 = __chkstk_darwin(a1);
  v11(v10);
  return sub_D5820();
}

uint64_t sub_5AD54(int8x16_t *a1)
{
  v2 = vextq_s8(*a1, *a1, 8uLL);
  v3 = vextq_s8(a1[1], a1[1], 8uLL);
  sub_D5830();
  return swift_getWitnessTable();
}

id sub_5ADAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CreateAliasAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CreateAliasAPIRequest()
{
  result = qword_125240;
  if (!qword_125240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5AE38()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_5AE80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSRuleListAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSRuleListAPIRequest()
{
  result = qword_125430;
  if (!qword_125430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5AF1C(void *a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_125620, &qword_DCC38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_6648(a1, a1[3]);
  sub_5B3C8();
  sub_D6D00();
  v11[1] = a2;
  sub_66D4(&qword_125608, &qword_DCC30);
  sub_5B470(&qword_125628, sub_468A8);
  sub_D6BF0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_5B0C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C75526C69616DLL && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_5B154(uint64_t a1)
{
  v2 = sub_5B3C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5B190(uint64_t a1)
{
  v2 = sub_5B3C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_5B1CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_5B214(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_5B214(uint64_t *a1)
{
  v3 = sub_66D4(&qword_1255F8, &qword_DCC28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_6648(a1, a1[3]);
  sub_5B3C8();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_66D4(&qword_125608, &qword_DCC30);
    sub_5B470(&qword_125610, sub_5B41C);
    sub_D6B70();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_67D4(a1);
  }

  return v9;
}

unint64_t sub_5B3C8()
{
  result = qword_125600;
  if (!qword_125600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125600);
  }

  return result;
}

unint64_t sub_5B41C()
{
  result = qword_125618;
  if (!qword_125618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125618);
  }

  return result;
}

uint64_t sub_5B470(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_6110(&qword_125608, &qword_DCC30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_5B4FC()
{
  result = qword_125630;
  if (!qword_125630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125630);
  }

  return result;
}

unint64_t sub_5B554()
{
  result = qword_125638;
  if (!qword_125638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125638);
  }

  return result;
}

unint64_t sub_5B5AC()
{
  result = qword_125640;
  if (!qword_125640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125640);
  }

  return result;
}

uint64_t sub_5B610(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_1256B8, &qword_DD0F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_5E448();
  sub_D6D00();
  LOBYTE(v18) = *v3;
  LOBYTE(v16[0]) = 0;
  sub_5E49C();
  sub_D6BF0();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v21[0] = *(v3 + 8);
    v21[1] = v11;
    v22[0] = *(v3 + 40);
    *(v22 + 9) = *(v3 + 49);
    v12 = *(v3 + 24);
    v18 = *(v3 + 8);
    v19 = v12;
    v20[0] = *(v3 + 40);
    *(v20 + 9) = *(v3 + 49);
    v24 = 1;
    sub_5E4F0(v21, v16);
    sub_5E528();
    sub_D6BF0();
    v16[0] = v18;
    v16[1] = v19;
    v17[0] = v20[0];
    *(v17 + 9) = *(v20 + 9);
    sub_5E57C(v16);
    v14 = *(v3 + 72);
    v23 = 2;
    sub_66D4(&qword_1256D8, &qword_DD0F8);
    sub_5E5AC(&qword_1256E0, &qword_1256D8, &qword_DD0F8, sub_5E628);
    sub_D6BF0();
    v14 = *(v3 + 80);
    v15 = *(v3 + 88);
    v23 = 3;
    sub_5E67C();
    sub_D6BB0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_5B928()
{
  v1 = 0x6E69616D6F64;
  v2 = 0x69747265706F7270;
  if (*v0 != 2)
  {
    v2 = 0x7962726564726FLL;
  }

  if (*v0)
  {
    v1 = 0x7461636964657270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_5B9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_5D7C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5B9DC(uint64_t a1)
{
  v2 = sub_5E448();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5BA18(uint64_t a1)
{
  v2 = sub_5E448();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5BA6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x786F626C69616DLL;
  if (v2 != 1)
  {
    v4 = 0x646165726874;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C69616D65;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x786F626C69616DLL;
  if (*a2 != 1)
  {
    v8 = 0x646165726874;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C69616D65;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_D6C20();
  }

  return v11 & 1;
}

Swift::Int sub_5BB64()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5BC00()
{
  *v0;
  *v0;
  sub_D6680();
}

Swift::Int sub_5BC88()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5BD20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5D930(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_5BD50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x786F626C69616DLL;
  if (v2 != 1)
  {
    v5 = 0x646165726874;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C69616D65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_5BE0C()
{
  *v0;
  *v0;
  *v0;
  sub_D6680();
}

uint64_t sub_5BEDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5D97C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_5BF0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 29029;
  v5 = 0xE200000000000000;
  v6 = 29799;
  v7 = 0xE900000000000068;
  v8 = 0x6374614D74786574;
  if (v2 != 4)
  {
    v8 = 0x65756C615670616DLL;
    v7 = 0xEA0000000000664FLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 25964;
  if (v2 != 1)
  {
    v9 = 29804;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_5BFF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65756C615670616DLL;
  }

  else
  {
    v4 = 0x79747265706F7270;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEA0000000000664FLL;
  }

  if (*a2)
  {
    v6 = 0x65756C615670616DLL;
  }

  else
  {
    v6 = 0x79747265706F7270;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000664FLL;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_D6C20();
  }

  return v9 & 1;
}

Swift::Int sub_5C0A0()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5C128()
{
  *v0;
  sub_D6680();
}

Swift::Int sub_5C19C()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5C220@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_113760;
  v8._object = v3;
  v5 = sub_D6AF0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_5C280(uint64_t *a1@<X8>)
{
  v2 = 0x79747265706F7270;
  if (*v1)
  {
    v2 = 0x65756C615670616DLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000664FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_5C314(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6544786F624D7369;
  v4 = 0xED0000646574656CLL;
  if (v2 != 1)
  {
    v3 = 1701667182;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0x6544786F624D7369;
  v8 = 0xED0000646574656CLL;
  if (*a2 != 1)
  {
    v7 = 1701667182;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_D6C20();
  }

  return v11 & 1;
}

Swift::Int sub_5C420()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5C4CC()
{
  *v0;
  *v0;
  sub_D6680();
}

Swift::Int sub_5C564()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5C60C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5D9C8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_5C63C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xED0000646574656CLL;
  v5 = 0x6544786F624D7369;
  if (v2 != 1)
  {
    v5 = 1701667182;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_5C6F4()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79747265706F7270;
  }
}

uint64_t sub_5C744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_5DA14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5C778(uint64_t a1)
{
  v2 = sub_5F408();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5C7B4(uint64_t a1)
{
  v2 = sub_5F408();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5C7F0(void *a1, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
  v17 = a5;
  v16 = a4;
  v8 = sub_66D4(&qword_1257C8, &qword_DDAA8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = a1[4];
  sub_6648(a1, a1[3]);
  sub_5F408();
  sub_D6D00();
  v24 = a2;
  v23 = 0;
  sub_5E628();
  sub_D6BF0();
  if (!v5)
  {
    v14 = v17;
    v22 = HIBYTE(a2) & 1;
    v21 = 1;
    sub_5F45C();
    sub_D6BF0();
    if (v14 > 1u)
    {
      if (v14 == 2)
      {
        v20 = 2;
        sub_D6BC0();
      }
    }

    else if (v14)
    {
      v19 = 2;
      sub_D6BD0();
    }

    else
    {
      v18 = 2;
      sub_D6BE0();
    }
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_5CA24(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_5C7F0(a1, v2 | *v1, *(v1 + 1), *(v1 + 2), v1[24]);
}

uint64_t sub_5CA5C()
{
  v1 = 0x6973736572707865;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_5CAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_5DB28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5CAD8(uint64_t a1)
{
  v2 = sub_5ECD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5CB14(uint64_t a1)
{
  v2 = sub_5ECD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5CB50(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_125740, &qword_DD648);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_5ECD0();
  sub_D6D00();
  v15[0] = *v3;
  v16 = 0;
  sub_5ED24();
  sub_D6BF0();
  if (!v2)
  {
    *v15 = *(v3 + 8);
    *&v15[9] = *(v3 + 17);
    v16 = 1;
    sub_5ED78();
    sub_D6BF0();
    v11 = *(v3 + 40);
    v12 = *(v3 + 41) | ((*(v3 + 45) | (*(v3 + 47) << 16)) << 32);
    if (*(v3 + 56))
    {
      if (*(v3 + 56) == 1)
      {
        v15[0] = 2;
        sub_D6BD0();
      }

      else
      {
        v13 = *(v3 + 48);
        v15[0] = 2;
        sub_D6BC0();
      }
    }

    else
    {
      v15[0] = 2;
      sub_D6BE0();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_5CDA0(void *a1, uint64_t a2)
{
  v5 = sub_66D4(&qword_125768, &qword_DD650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_5EE20();
  sub_D6D00();
  v13 = a2;
  v12[15] = 0;
  sub_66D4(&qword_125778, &qword_DD658);
  sub_5E5AC(&qword_125780, &qword_125778, &qword_DD658, sub_5ED78);
  sub_D6BF0();
  if (!v2)
  {
    v12[14] = 1;
    sub_D6BD0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_5CF80(void *a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_125670, &qword_DCE00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_6648(a1, a1[3]);
  sub_5DDF8();
  sub_D6D00();
  v11[1] = a2;
  sub_66D4(&qword_125658, &qword_DCDF8);
  sub_5DEA0(&qword_125678, sub_5DF18);
  sub_D6BF0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_5D10C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_66D4(&qword_1256B0, &qword_DD0E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_6648(a1, a1[3]);
  sub_5E3F4();
  sub_D6D00();
  v16 = 0;
  sub_D6BC0();
  if (!v5)
  {
    v15 = 1;
    sub_D6BC0();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_5D2A0()
{
  if (*v0)
  {
    result = 0x6E69646E65637361;
  }

  else
  {
    result = 0x6973736572707865;
  }

  *v0;
  return result;
}

uint64_t sub_5D2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973736572707865 && a2 == 0xEB00000000736E6FLL;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69646E65637361 && a2 == 0xE900000000000067)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_5D3D0(uint64_t a1)
{
  v2 = sub_5EE20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5D40C(uint64_t a1)
{
  v2 = sub_5EE20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5D48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x624F6E69616D6F64 && a2 == 0xED0000737463656ALL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_5D51C(uint64_t a1)
{
  v2 = sub_5DDF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5D558(uint64_t a1)
{
  v2 = sub_5DDF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_5D594@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_5DC44(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_5D5DC()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_5D614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_5D6F8(uint64_t a1)
{
  v2 = sub_5E3F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5D734(uint64_t a1)
{
  v2 = sub_5E3F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5D770@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_5E210(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_5D7C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7962726564726FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_5D930(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113648;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5D97C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1136B0;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5D9C8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1137B0;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5DA14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79747265706F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_5DB28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_5DC44(uint64_t *a1)
{
  v3 = sub_66D4(&qword_125648, &qword_DCDF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_6648(a1, a1[3]);
  sub_5DDF8();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_66D4(&qword_125658, &qword_DCDF8);
    sub_5DEA0(&qword_125660, sub_5DE4C);
    sub_D6B70();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_67D4(a1);
  }

  return v9;
}

unint64_t sub_5DDF8()
{
  result = qword_125650;
  if (!qword_125650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125650);
  }

  return result;
}

unint64_t sub_5DE4C()
{
  result = qword_125668;
  if (!qword_125668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125668);
  }

  return result;
}

uint64_t sub_5DEA0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_6110(&qword_125658, &qword_DCDF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_5DF18()
{
  result = qword_125680;
  if (!qword_125680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125680);
  }

  return result;
}

uint64_t sub_5DF78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_5DF8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_5DFB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5DFF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5E070(uint64_t a1, int a2)
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

uint64_t sub_5E0B8(uint64_t result, int a2, int a3)
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

unint64_t sub_5E10C()
{
  result = qword_125688;
  if (!qword_125688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125688);
  }

  return result;
}

unint64_t sub_5E164()
{
  result = qword_125690;
  if (!qword_125690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125690);
  }

  return result;
}

unint64_t sub_5E1BC()
{
  result = qword_125698;
  if (!qword_125698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125698);
  }

  return result;
}

uint64_t sub_5E210(uint64_t *a1)
{
  v3 = sub_66D4(&qword_1256A0, &qword_DD0E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_6648(a1, a1[3]);
  sub_5E3F4();
  sub_D6CF0();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_D6B40();
    v11 = 1;
    sub_D6B40();
    (*(v4 + 8))(v7, v3);
  }

  sub_67D4(a1);
  return v8;
}

unint64_t sub_5E3F4()
{
  result = qword_1256A8;
  if (!qword_1256A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256A8);
  }

  return result;
}

unint64_t sub_5E448()
{
  result = qword_1256C0;
  if (!qword_1256C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256C0);
  }

  return result;
}

unint64_t sub_5E49C()
{
  result = qword_1256C8;
  if (!qword_1256C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256C8);
  }

  return result;
}

unint64_t sub_5E528()
{
  result = qword_1256D0;
  if (!qword_1256D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256D0);
  }

  return result;
}

uint64_t sub_5E5AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_5E628()
{
  result = qword_1256E8;
  if (!qword_1256E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256E8);
  }

  return result;
}

unint64_t sub_5E67C()
{
  result = qword_1256F0;
  if (!qword_1256F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DalRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DalRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_5E840(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_5E854(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_5E89C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5E904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_5E948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_5E9C0()
{
  result = qword_1256F8;
  if (!qword_1256F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256F8);
  }

  return result;
}

unint64_t sub_5EA18()
{
  result = qword_125700;
  if (!qword_125700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125700);
  }

  return result;
}

unint64_t sub_5EA70()
{
  result = qword_125708;
  if (!qword_125708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125708);
  }

  return result;
}

unint64_t sub_5EAC8()
{
  result = qword_125710;
  if (!qword_125710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125710);
  }

  return result;
}

unint64_t sub_5EB20()
{
  result = qword_125718;
  if (!qword_125718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125718);
  }

  return result;
}

unint64_t sub_5EB78()
{
  result = qword_125720;
  if (!qword_125720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125720);
  }

  return result;
}

unint64_t sub_5EBD0()
{
  result = qword_125728;
  if (!qword_125728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125728);
  }

  return result;
}

unint64_t sub_5EC28()
{
  result = qword_125730;
  if (!qword_125730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125730);
  }

  return result;
}

unint64_t sub_5EC7C()
{
  result = qword_125738;
  if (!qword_125738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125738);
  }

  return result;
}

unint64_t sub_5ECD0()
{
  result = qword_125748;
  if (!qword_125748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125748);
  }

  return result;
}

unint64_t sub_5ED24()
{
  result = qword_125750;
  if (!qword_125750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125750);
  }

  return result;
}

unint64_t sub_5ED78()
{
  result = qword_125758;
  if (!qword_125758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125758);
  }

  return result;
}

unint64_t sub_5EDCC()
{
  result = qword_125760;
  if (!qword_125760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125760);
  }

  return result;
}

unint64_t sub_5EE20()
{
  result = qword_125770;
  if (!qword_125770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125770);
  }

  return result;
}

__n128 sub_5EE94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_5EEA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_5EEF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 sub_5EF4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_5EF60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_5EFA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredicateOperator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PredicateOperator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_5F150()
{
  result = qword_125788;
  if (!qword_125788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125788);
  }

  return result;
}

unint64_t sub_5F1A8()
{
  result = qword_125790;
  if (!qword_125790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125790);
  }

  return result;
}

unint64_t sub_5F200()
{
  result = qword_125798;
  if (!qword_125798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125798);
  }

  return result;
}

unint64_t sub_5F258()
{
  result = qword_1257A0;
  if (!qword_1257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257A0);
  }

  return result;
}

unint64_t sub_5F2B0()
{
  result = qword_1257A8;
  if (!qword_1257A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257A8);
  }

  return result;
}

unint64_t sub_5F308()
{
  result = qword_1257B0;
  if (!qword_1257B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257B0);
  }

  return result;
}

unint64_t sub_5F360()
{
  result = qword_1257B8;
  if (!qword_1257B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257B8);
  }

  return result;
}

unint64_t sub_5F3B4()
{
  result = qword_1257C0;
  if (!qword_1257C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257C0);
  }

  return result;
}

unint64_t sub_5F408()
{
  result = qword_1257D0;
  if (!qword_1257D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257D0);
  }

  return result;
}

unint64_t sub_5F45C()
{
  result = qword_1257D8;
  if (!qword_1257D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RuleOperation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RuleOperation(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_5F614()
{
  result = qword_1257E0;
  if (!qword_1257E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257E0);
  }

  return result;
}

unint64_t sub_5F66C()
{
  result = qword_1257E8;
  if (!qword_1257E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257E8);
  }

  return result;
}

unint64_t sub_5F6C4()
{
  result = qword_1257F0;
  if (!qword_1257F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257F0);
  }

  return result;
}

unint64_t sub_5F71C()
{
  result = qword_1257F8;
  if (!qword_1257F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257F8);
  }

  return result;
}

unint64_t sub_5F770()
{
  result = qword_125800;
  if (!qword_125800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125800);
  }

  return result;
}

void sub_5F7FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_5F874(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x697373416C69616DLL;
  }

  else
  {
    v4 = 0x6F706D496C69616DLL;
  }

  if (v3)
  {
    v5 = 0xEA00000000007472;
  }

  else
  {
    v5 = 0xED0000746E617473;
  }

  if (*a2)
  {
    v6 = 0x697373416C69616DLL;
  }

  else
  {
    v6 = 0x6F706D496C69616DLL;
  }

  if (*a2)
  {
    v7 = 0xED0000746E617473;
  }

  else
  {
    v7 = 0xEA00000000007472;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_D6C20();
  }

  return v9 & 1;
}

Swift::Int sub_5F92C()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5F9C0()
{
  *v0;
  sub_D6680();
}

Swift::Int sub_5FA40()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5FAD0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_113818;
  v8._object = v3;
  v5 = sub_D6AF0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_5FB30(uint64_t *a1@<X8>)
{
  v2 = 0x6F706D496C69616DLL;
  if (*v1)
  {
    v2 = 0x697373416C69616DLL;
  }

  v3 = 0xEA00000000007472;
  if (*v1)
  {
    v3 = 0xED0000746E617473;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_5FBF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_5FC80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_5FCF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

__n128 sub_5FDCC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_5FEAC()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel____lazy_storage___mailImportViewModel;
  if (*(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel____lazy_storage___mailImportViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel____lazy_storage___mailImportViewModel);
  }

  else
  {
    v2 = sub_5FF14(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_5FF14(uint64_t a1)
{
  sub_2A5C4(a1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v21);
  v1 = v22;
  v2 = sub_38BFC(v21, v22);
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v8 = type metadata accessor for MSRepositoryDefault();
  v20[3] = v8;
  v20[4] = &off_1188F0;
  v20[0] = v7;
  v9 = _s11descr1123A1O9ViewModelCMa();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = sub_38BFC(v20, v8);
  v14 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_63CEC(*v16, v12);
  sub_67D4(v20);
  sub_67D4(v21);
  return v18;
}

uint64_t sub_60104(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_601F0(v1);
  }

  return result;
}

uint64_t sub_60164(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_D5580();
  }

  return result;
}

void *sub_601F0(char a1)
{
  v2 = v1;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v9 = sub_6610(v4, qword_137988);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_D5320();
  v11 = sub_D68A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v10, v11, "[Unified Settings] enable mail: %{BOOL}d", v12, 8u);
  }

  (*(v5 + 8))(v8, v4);
  [*(v2 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_appleAccount) setEnabled:a1 & 1 forDataclass:ACAccountDataclassMail];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result mailSettingsStateChangedWithEnabled:a1 & 1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_60434(const char *a1, unsigned __int8 a2, SEL *a3)
{
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v11 = sub_6610(v6, qword_137988);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_D5320();
  v13 = sub_D68A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, a1, v14, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v15 = sub_78BC4(a2);
  v15();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_60618()
{
  v1 = v0;
  v2 = sub_66D4(&qword_125FB0, &qword_DE288);
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v5 = &v34 - v4;
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = [*(v1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_appleAccount) aa_isAccountClass:AAAccountClassPrimary];
  swift_getKeyPath();
  swift_getKeyPath();
  if (v14)
  {
    v36 = 0uLL;

    sub_D5580();
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v15 = sub_6610(v6, qword_137988);
    (*(v7 + 16))(v13, v15, v6);
    v16 = sub_D5320();
    v17 = sub_D68A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "[Unified Settings] getAllPreferences started", v18, 2u);
    }

    (*(v7 + 8))(v13, v6);
    v19 = sub_6648((v1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository + 24));
    v20 = *(*v19 + 16);
    v21 = *(*v19 + 24);
    v22 = objc_allocWithZone(type metadata accessor for MSPreferencesAPIRequest());
    v23 = v20;
    v24 = v21;
    v25 = sub_324C4(v20, v24, 0, 0xF000000000000000);

    v26 = sub_1FD08();
    *&v36 = v26;
    sub_66D4(&qword_125FB8, &qword_DE2D8);
    sub_109A8(&qword_125FC0, &qword_125FB8, &qword_DE2D8);
    sub_6780();
    sub_D55F0();

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    sub_109A8(&qword_125FC8, &qword_125FB0, &qword_DE288);
    v27 = sub_D55D0();

    result = (*(v35 + 8))(v5, v2);
    v29 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_refreshPublisher);
    *(v1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_refreshPublisher) = v27;
    if (v29)
    {

      sub_D54C0();
    }
  }

  else
  {
    v36 = xmmword_DDC90;

    sub_D5580();
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v30 = sub_6610(v6, qword_137988);
    (*(v7 + 16))(v11, v30, v6);
    v31 = sub_D5320();
    v32 = sub_D68B0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "[Unified Settings] getAllPreferences is unavailable", v33, 2u);
    }

    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_60BF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1[2];
  v15 = *(a1 + 24);
  v17 = *a1;
  v18 = a1[1];
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();

  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v19._object = 0x80000000000E8950;
  v19._countAndFlagsBits = 0xD000000000000015;
  sub_D66D0(v19);
  v20._countAndFlagsBits = 2777980912;
  v20._object = 0xA400000000000000;
  sub_D66D0(v20);
  v27._countAndFlagsBits = 2777980912;
  v13._countAndFlagsBits = 0xE000000000000000;
  v21._object = 0x80000000000E8950;
  v21._countAndFlagsBits = 0xD000000000000015;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v6.super.isa = v5;
  v27._object = 0xA400000000000000;
  sub_D4E80(v21, v25, v6, v27, v13);

  v7 = [v4 bundleForClass:ObjCClassFromMetadata];
  v22._countAndFlagsBits = 0xD00000000000001ELL;
  v22._object = 0x80000000000E8970;
  sub_D66D0(v22);
  v23._countAndFlagsBits = 2777980912;
  v23._object = 0xA400000000000000;
  sub_D66D0(v23);
  v28._countAndFlagsBits = 2777980912;
  v14._countAndFlagsBits = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD00000000000001ELL;
  v24._object = 0x80000000000E8970;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v8.super.isa = v7;
  v28._object = 0xA400000000000000;
  sub_D4E80(v24, v26, v8, v28, v14);

  sub_DFAC();
  v9 = sub_D6960();
  v11 = v10;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_60E44(uint64_t a1)
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = *(a1 + 24);
    v12 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v8;
    v22[2] = v12;
    v23 = v11 & 1;
    v24 = v10;
    v25 = v9 & 1;
    sub_6780();
    v13 = sub_D6C60();
    v15 = v14;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v16 = sub_6610(v2, qword_137988);
    (*(v3 + 16))(v7, v16, v2);

    v17 = sub_D5320();
    v18 = sub_D68A0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_558F0(v13, v15, v22);
      _os_log_impl(&dword_0, v17, v18, "[Unified Settings] getAllPreferences failed: %s", v19, 0xCu);
      sub_67D4(v20);
    }

    (*(v3 + 8))(v7, v2);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v21[0] = v13;
      v21[1] = v15;
      return sub_D5580();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_61104(uint64_t a1)
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = *(a1 + 208);
  v20[12] = *(a1 + 192);
  v20[13] = v7;
  v20[14] = *(a1 + 224);
  v21 = *(a1 + 240);
  v8 = *(a1 + 144);
  v20[8] = *(a1 + 128);
  v20[9] = v8;
  v9 = *(a1 + 176);
  v20[10] = *(a1 + 160);
  v20[11] = v9;
  v10 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v10;
  v11 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v20[7] = v11;
  v12 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v12;
  v13 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v15 = sub_6610(v2, qword_137988);
    (*(v3 + 16))(v6, v15, v2);
    v16 = sub_D5320();
    v17 = sub_D68A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "[Unified Settings] getAllPreferences successful", v18, 2u);
    }

    (*(v3 + 8))(v6, v2);
    sub_61B68(v20);
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = xmmword_DBAE0;
    return sub_D5580();
  }

  return result;
}

id sub_61364(uint64_t a1)
{
  v3 = sub_D50A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_D51D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v46 - v14;
  result = [*(v1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_appleAccount) propertiesForDataclass:ACAccountDataclassMail];
  if (!result)
  {
    return result;
  }

  v16 = result;
  v17 = sub_D6530();

  v18 = *(a1 + 16);
  if (!v18)
  {
LABEL_76:

    return &dword_0 + 1;
  }

  v48 = v7;
  v49 = v3;
  v19 = (a1 + 32);
  v57 = 0x80000000000E8890;
  v58 = 0x80000000000E8860;
  v62 = 0x80000000000E88C0;
  v63 = 0x80000000000E8820;
  v55 = enum case for iCloudMailSettingsFeatureFlag.mailImport(_:);
  v54 = enum case for iCloudMailSettingsFeatureFlag.rules(_:);
  v53 = enum case for iCloudMailSettingsFeatureFlag.mailForwarding(_:);
  v61 = 0x80000000000E88F0;
  v52 = enum case for iCloudMailSettingsFeatureFlag.autoReply(_:);
  v51 = enum case for iCloudMailSettingsFeatureFlag.alias(_:);
  v60 = 0x80000000000E8920;
  v64 = (v9 + 104);
  v20 = (v9 + 8);
  v50 = enum case for iCloudMailSettingsFeatureFlag.mailAssistant(_:);
  v47 = (v4 + 8);
  v59 = 0xD000000000000020;
  while (1)
  {
    v22 = *v19++;
    v21 = v22;
    if (v22 > 2 && v21 != 3 && v21 != 4)
    {
      v25 = v63;

      v24 = 0xD00000000000003ELL;
      goto LABEL_26;
    }

    v23 = sub_D6C20();

    if ((v23 & 1) == 0)
    {
      break;
    }

    if (v21 <= 1)
    {
      if (v21)
      {
        v24 = 0xD000000000000024;
        v25 = v61;
      }

      else
      {
        v24 = v59;
        v25 = v60;
      }
    }

    else
    {
      v24 = 0xD000000000000024;
      if (v21 == 2)
      {
        v25 = v62;
      }

      else if (v21 == 3)
      {
        v24 = 0xD000000000000029;
        v25 = v57;
      }

      else
      {
        v24 = 0xD000000000000025;
        v25 = v58;
      }
    }

LABEL_26:
    v65 = v24;
    v66 = v25;
    sub_D69D0();
    if (*(v17 + 16) && (v28 = sub_4BA90(v67), (v29 & 1) != 0))
    {
      sub_263D4(*(v17 + 56) + 32 * v28, v68);
      sub_4C868(v67);
      if (swift_dynamicCast())
      {
        if (v65 != 1702195828 || v66 != 0xE400000000000000)
        {
          v30 = sub_D6C20();

          goto LABEL_34;
        }
      }
    }

    else
    {
      sub_4C868(v67);
    }

    v30 = 1;
LABEL_34:
    v31 = 0xD000000000000024;
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v31 = 0xD000000000000029;
        v32 = v57;
      }

      else if (v21 == 4)
      {
        v31 = 0xD000000000000025;
        v32 = v58;
      }

      else
      {
        v31 = 0xD00000000000003ELL;
        v32 = v63;
      }
    }

    else if (v21)
    {
      if (v21 == 1)
      {
        v32 = v61;
      }

      else
      {
        v32 = v62;
      }
    }

    else
    {
      v31 = v59;
      v32 = v60;
    }

    v65 = v31;
    v66 = v32;
    sub_D69D0();
    if (!*(v17 + 16) || (v33 = sub_4BA90(v67), (v34 & 1) == 0))
    {
      sub_4C868(v67);
      if ((v30 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_57;
    }

    sub_263D4(*(v17 + 56) + 32 * v33, v68);
    sub_4C868(v67);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if ((v30 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_57;
    }

LABEL_56:
    if ((v65 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_57:
    v37 = *v64;
    if (v21 <= 2)
    {
      v38 = v13;
      if (v21)
      {
        if (v21 != 1)
        {
          v40 = v54;
LABEL_68:
          v37(v38, v40, v8);
          v41 = sub_D51C0();
          (*v20)(v13, v8);
          if ((v41 & 1) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_69;
        }

        v39 = &v70;
      }

      else
      {
        v39 = &v69 + 4;
      }

LABEL_66:
      v40 = *(v39 - 64);
      goto LABEL_68;
    }

    if (v21 == 3)
    {
      v38 = v13;
      v39 = &v70 + 4;
      goto LABEL_66;
    }

    if (v21 == 4)
    {
      v38 = v13;
      v40 = v55;
      goto LABEL_68;
    }

    v42 = v56;
    v37(v56, v50, v8);
    v43 = sub_D51C0();
    (*v20)(v42, v8);
    if ((v43 & 1) == 0 || (sub_D52F0(), v44 = v48, sub_D5090(), sub_D5070(), (*v47)(v44, v49), v45 = sub_D52E0(), , v45 == 2) || (v45 & 1) == 0)
    {
LABEL_77:

      return 0;
    }

LABEL_69:
    if (!--v18)
    {
      goto LABEL_76;
    }
  }

  if (v21 <= 1)
  {
    if (v21)
    {
      v26 = 0xD000000000000024;
      v27 = v61;
    }

    else
    {
      v26 = v59;
      v27 = v60;
    }
  }

  else
  {
    v26 = 0xD000000000000024;
    if (v21 == 2)
    {
      v27 = v62;
    }

    else if (v21 == 3)
    {
      v26 = 0xD000000000000029;
      v27 = v57;
    }

    else
    {
      v26 = 0xD000000000000025;
      v27 = v58;
    }
  }

  v65 = v26;
  v66 = v27;
  sub_D69D0();
  if (*(v17 + 16))
  {
    v35 = sub_4BA90(v67);
    if (v36)
    {
      sub_263D4(*(v17 + 56) + 32 * v35, v68);
      sub_4C868(v67);
      if (!swift_dynamicCast())
      {
        goto LABEL_77;
      }

      goto LABEL_56;
    }
  }

  sub_4C868(v67);
  return 0;
}

uint64_t sub_61B68(uint64_t a1)
{
  v2 = v1;
  v58 = sub_D5340();
  v60 = *(v58 - 8);
  v4 = *(v60 + 64);
  v5 = __chkstk_darwin(v58);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v57 - v7;
  v9 = *(a1 + 48);
  v79 = *(a1 + 32);
  v80 = v9;
  v81 = *(a1 + 64);
  v10 = *(a1 + 16);
  v78[0] = *a1;
  v78[1] = v10;
  v84 = v79;
  v85 = v9;
  v86 = v81;
  v82 = v78[0];
  v83 = v10;
  sub_63AE8(v78, &v61);
  sub_B4EAC();
  v12 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v61 = v12;

  sub_D5580();
  v13 = sub_7F180();
  v15 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v61 = v13;
  *(&v61 + 1) = v15;

  sub_D5580();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v16 = v61;

  v17 = HIBYTE(*(&v16 + 1)) & 0xFLL;
  if ((*(&v16 + 1) & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v18 = v58;
    v19 = sub_6610(v58, qword_137988);
    v20 = v60;
    (*(v60 + 16))(v8, v19, v18);
    v21 = sub_D5320();
    v22 = sub_D68B0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "[Unified Settings] User has no default email", v23, 2u);
      v20 = v60;
    }

    (*(v20 + 8))(v8, v18);
  }

  sub_62404(v78);
  v24 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_account);
  v63 = v84;
  v64 = v85;
  *&v65 = v86;
  v61 = v82;
  v62 = v83;
  sub_D5500();
  v57 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_autoReply);
  v25 = *(a1 + 88);
  v26 = *(a1 + 120);
  v74 = *(a1 + 104);
  v75 = v26;
  v76 = *(a1 + 136);
  v77 = *(a1 + 152);
  v72 = *(a1 + 72);
  v73 = v25;
  if (v25 == 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 1;
  }

  else
  {
    v31 = *(&v76 + 1);
    v32 = v77;
    v29 = *(&v75 + 1);
    v30 = v76;
    v28 = *(&v74 + 1);
    v33 = v75;
    v27 = v74;
    sub_3189C(v74, *(&v74 + 1), v75);
  }

  *&v68 = v27;
  *(&v68 + 1) = v28;
  *&v69 = v33;
  *(&v69 + 1) = v29;
  *&v70 = v30;
  *(&v70 + 1) = v31;
  v71 = v32;
  sub_FBD4(&v72, &v61, &qword_125930, &unk_DFB90);
  sub_D5500();
  v34 = *(a1 + 176);
  v68 = *(a1 + 160);
  v69 = v34;
  v36 = *(a1 + 160);
  v35 = *(a1 + 176);
  v70 = *(a1 + 192);
  v37 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_sharedPreference);
  v61 = v36;
  v62 = v35;
  v63 = *(a1 + 192);
  sub_FBD4(&v68, &v67, &qword_125FA8, &qword_DE088);
  sub_D5500();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v63 = v74;
  v64 = v75;
  v65 = v76;
  v66 = v77;
  v61 = v72;
  v62 = v73;

  sub_D5580();
  v39 = v81;
  v40 = *(*(&v80 + 1) + 16) + 1;
  if (v81)
  {
    v39 = *(v81 + 16);
  }

  v41 = v58;
  v42 = v40 + v39;
  if (__OFADD__(v40, v39))
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v61 = v42;

  sub_D5580();
  v43 = 0;
  if (v73 != 1 && v75 != 1)
  {
    v43 = v74;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v61) = v43 & 1;

  sub_D5580();
  v44 = *(a1 + 208);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v61) = v44 > 0;

  sub_D5580();
  v45 = (v73 != 1) & v72;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v61) = v45;

  sub_D5580();
  v46 = sub_62B14();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v61) = v46 & 1;

  sub_D5580();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v61 = v44;

  sub_D5580();
  if ((*(a1 + 240) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_maxAliasCountAllowed) = *(a1 + 232);
  }

  KeyPath = v59;
  v42 = v60;
  if ((*(a1 + 224) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_maxRuleCountAllowed) = *(a1 + 216);
  }

  if (qword_120E38 != -1)
  {
    goto LABEL_30;
  }

LABEL_23:
  v47 = sub_6610(v41, qword_137988);
  (*(v42 + 16))(KeyPath, v47, v41);
  sub_26D60(a1, &v61);
  v48 = sub_D5320();
  v49 = sub_D68A0();
  sub_26DBC(a1);
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v61 = v51;
    *v50 = 136642819;
    if (sub_3E318())
    {
      v52 = sub_D6550();
      v54 = v53;
      v42 = v60;
    }

    else
    {
      v52 = 0;
      v54 = 0xE000000000000000;
    }

    v56 = sub_558F0(v52, v54, &v61);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_0, v48, v49, "[Unified Settings] API response: %{sensitive}s", v50, 0xCu);
    sub_67D4(v51);

    return (*(v42 + 8))(v59, v41);
  }

  else
  {

    return (*(v42 + 8))(KeyPath, v41);
  }
}

void sub_62404(uint64_t *a1)
{
  v50 = a1;
  v1 = sub_D5340();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v49 = &v49 - v8;
  v9 = __chkstk_darwin(v7);
  v52 = &v49 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v49 - v12;
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = sub_6610(v1, qword_137988);
  v54 = v2[2];
  v54(v15, v16, v1);
  v17 = sub_D5320();
  v18 = sub_D68D0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "[syncWithLocalStorage] Sync with local storage", v19, 2u);
  }

  v20 = v2[1];
  v20(v15, v1);
  v21 = [*(v53 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_appleAccount) aa_childMailAccount];
  if (v21)
  {
    v22 = v21;
    v54(v13, v16, v1);
    v23 = v22;
    v24 = sub_D5320();
    v25 = sub_D68A0();

    v26 = os_log_type_enabled(v24, v25);
    v51 = v20;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = [v23 accountProperties];
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_0, v24, v25, "BEFORE: %@", v27, 0xCu);
      sub_63C7C(v28);
      v20 = v51;
    }

    v20(v13, v1);
    v30 = v50;
    if (sub_586D0(v50[2], v50[3]) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_D5570(), , , v31 = sub_58C84(aBlock, v56), , (v31) || (sub_58EAC(v30[4], v30[5], v30[6]))
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_59A1C(v30);
    }

    v54(v52, v16, v1);
    v33 = v23;
    v34 = sub_D5320();
    v35 = sub_D68A0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = [v33 accountProperties];
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&dword_0, v34, v35, "AFTER: %@", v36, 0xCu);
      sub_63C7C(v37);
    }

    v51(v52, v1);
    if ((v32 & 1) == 0)
    {
      goto LABEL_19;
    }

    v39 = v49;
    v54(v49, v16, v1);
    v40 = sub_D5320();
    v41 = sub_D68D0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "There are new changes, saving them...", v42, 2u);
    }

    v51(v39, v1);
    v43 = [objc_opt_self() defaultStore];
    if (v43)
    {
      v44 = v43;
      v59 = sub_63658;
      v60 = 0;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_5F7FC;
      v58 = &unk_117768;
      v45 = _Block_copy(&aBlock);
      [v44 saveVerifiedAccount:v33 withCompletionHandler:v45];
      _Block_release(v45);

LABEL_19:
      return;
    }

    __break(1u);
  }

  else
  {
    v54(v6, v16, v1);
    v46 = sub_D5320();
    v47 = sub_D68B0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "[syncWithLocalStorage] Unable to get iCloud Mail ACAccount", v48, 2u);
    }

    v20(v6, v1);
  }
}

uint64_t sub_62B14()
{
  v1 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_appleAccount);
  v2 = sub_D65C0();
  v3 = [v1 propertiesForDataclass:v2];

  if (v3)
  {
    v4 = sub_D6530();

    sub_D69D0();
    if (*(v4 + 16) && (v5 = sub_4BA90(v8), (v6 & 1) != 0))
    {
      sub_263D4(*(v4 + 56) + 32 * v5, v9);
      sub_4C868(v8);

      if (swift_dynamicCast())
      {
        return 19;
      }
    }

    else
    {

      sub_4C868(v8);
    }
  }

  return 0;
}

uint64_t sub_62C64()
{
  sub_64170(v0 + 16);
  v1 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isDefaultEmailPresented;
  v2 = sub_66D4(&qword_121068, &qword_DBEE0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isMailForwardingPresented, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isAutoReplyPresented, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isAliasesPresented, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isRulesPresented, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isUnsubscribePresented, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isICloudMailEnabled, v2);
  v4 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__state;
  v5 = sub_66D4(&qword_125FD0, &qword_DE448);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__addressessCount;
  v7 = sub_66D4(&qword_125FD8, &unk_DFB70);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v9 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__emails;
  v10 = sub_66D4(&qword_125FE0, &unk_DFB80);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__defaultEmail;
  v12 = sub_66D4(&qword_121948, &unk_DC5C0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isAutoReplyEnabled, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isiCloudMailRulesEnabled, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isMailForwardingEnabled, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isEndToEndEncryptionEnabled, v2);
  v13 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_endToEndEncryptionStatus);

  v8(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__ruleCount, v7);
  v14 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__serverPreferences;
  v15 = sub_66D4(&qword_125FE8, qword_DE450);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isCustomDomainEnabled, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isCustomDomainSpinning, v2);
  v16 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel____lazy_storage___mailImportViewModel);

  v17 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__scrollTarget;
  v18 = sub_66D4(&qword_125FF0, &unk_DFB60);
  v19 = *(*(v18 - 8) + 8);
  v19(v0 + v17, v18);
  v19(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__shouldScrollTo, v18);
  v20 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_cancellables);

  v21 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_refreshPublisher);

  v22 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_account);

  v23 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_autoReply);

  v24 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_sharedPreference);

  v25 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_folderList);

  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository));
  v26 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_endToEndEncryptionViewModel);

  v27 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_mailAssistantProvider);

  return v0;
}

uint64_t sub_6311C()
{
  sub_62C64();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s9ViewModelCMa_3()
{
  result = qword_125900;
  if (!qword_125900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_631C8()
{
  sub_116AC(319, &qword_120ED8);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_116AC(319, &qword_125910);
    if (v4 <= 0x3F)
    {
      v16 = *(v3 - 8) + 64;
      sub_116AC(319, &qword_125918);
      if (v6 <= 0x3F)
      {
        v7 = *(v5 - 8) + 64;
        sub_6158(319, &qword_125920, &qword_121498, &qword_D99D0);
        if (v9 <= 0x3F)
        {
          v17 = *(v8 - 8) + 64;
          sub_116AC(319, &qword_121638);
          if (v11 <= 0x3F)
          {
            v18 = *(v10 - 8) + 64;
            sub_6158(319, &qword_125928, &qword_125930, &unk_DFB90);
            if (v13 <= 0x3F)
            {
              v19 = *(v12 - 8) + 64;
              sub_6158(319, &qword_125938, &unk_125940, &qword_DDCE8);
              if (v15 <= 0x3F)
              {
                v20 = *(v14 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_634EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_63504(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_63560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_635C4()
{
  result = qword_125FA0;
  if (!qword_125FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125FA0);
  }

  return result;
}

uint64_t sub_63618@<X0>(uint64_t *a1@<X8>)
{
  _s9ViewModelCMa_3();
  result = sub_D54D0();
  *a1 = result;
  return result;
}

uint64_t sub_63658(uint64_t a1, uint64_t a2)
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v9 = sub_6610(v3, qword_137988);
    (*(v4 + 16))(v8, v9, v3);
    swift_errorRetain();
    v10 = sub_D5320();
    v11 = sub_D68B0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_D6C60();
      v16 = sub_558F0(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v10, v11, "Unable to sync iCloud Mail Account with local persistent storage: %s", v12, 0xCu);
      sub_67D4(v13);
    }

    else
    {
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

void *sub_638A0(void *result)
{
  if (result <= 4u)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_D5580();
  }

  if (result > 7u)
  {
    return result;
  }

  if (result == 5)
  {

    return sub_603EC();
  }

  else
  {
    if (result != 6)
    {
      sub_5FEAC();
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_D5580();
    }

    return sub_6041C();
  }
}

uint64_t sub_63C64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_63C7C(uint64_t a1)
{
  v2 = sub_66D4(&qword_1223E8, &qword_DA4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_63CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_121070, &qword_DAFE0);
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v30 = &v29 - v6;
  v7 = sub_66D4(&qword_122598, &qword_DA688);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = sub_66D4(&qword_121068, &qword_DBEE0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v35[3] = type metadata accessor for MSRepositoryDefault();
  v35[4] = &off_1188F0;
  v35[0] = a1;
  *(a2 + 56) = &_swiftEmptySetSingleton;
  v17 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isMailImportStartPresented;
  LOBYTE(v33) = 0;
  sub_D5530();
  v18 = *(v13 + 32);
  v18(a2 + v17, v16, v12);
  v19 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isMailImportStartPresentedDetail;
  LOBYTE(v33) = 0;
  sub_D5530();
  v18(a2 + v19, v16, v12);
  v20 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isMailImportSuccessPresented;
  LOBYTE(v33) = 0;
  sub_D5530();
  v18(a2 + v20, v16, v12);
  v21 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isMailImportListActive;
  LOBYTE(v33) = 0;
  sub_D5530();
  v18(a2 + v21, v16, v12);
  v22 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isLoading;
  LOBYTE(v33) = 1;
  sub_D5530();
  v18(a2 + v22, v16, v12);
  v23 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__importList;
  *&v33 = _swiftEmptyArrayStorage;
  sub_66D4(&qword_122178, &qword_DA110);
  sub_D5530();
  v24 = *(v8 + 32);
  v24(a2 + v23, v11, v7);
  v25 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__importHistory;
  *&v33 = _swiftEmptyArrayStorage;
  sub_D5530();
  v24(a2 + v25, v11, v7);
  v26 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__error;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  v27 = v30;
  sub_D5530();
  (*(v31 + 32))(a2 + v26, v27, v32);
  *(a2 + OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel_refreshPublisher) = 0;
  sub_2A5C4(v35, a2 + 16);
  sub_20750(0);
  sub_67D4(v35);
  return a2;
}

uint64_t sub_64100()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_64198()
{
  if (qword_120E40 != -1)
  {
    swift_once();
  }

  v0 = qword_1379A0;
  v1 = qword_1379A0;
  return v0;
}

id sub_6420C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudMailValidationRulesAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for iCloudMailValidationRulesAPIRequest()
{
  result = qword_126020;
  if (!qword_126020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_64298(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_642BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_64304(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_64378()
{
  v1 = *v0;
  v2 = 1701606770;
  v3 = 0x646F43726F727265;
  v4 = 0x73654D726F727265;
  if (v1 != 3)
  {
    v4 = 0x614D646C756F6873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74697243656C7572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_64428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_64664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_6445C(uint64_t a1)
{
  v2 = sub_64BE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_64498(uint64_t a1)
{
  v2 = sub_64BE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_644D4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_64828(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_6453C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_645C0(uint64_t a1)
{
  v2 = sub_64E20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_645FC(uint64_t a1)
{
  v2 = sub_64E20();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_64638@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_64C9C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_64664(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701606770 && a2 == 0xE400000000000000;
  if (v3 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74697243656C7572 && a2 == 0xEC00000061697265 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614D646C756F6873 && a2 == 0xEB00000000686374)
  {

    return 4;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_64828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_1261E8, &qword_DE588);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_64BE0();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_D6B40();
  v32 = v12;
  LOBYTE(v38[0]) = 1;
  v13 = sub_D6B40();
  v31 = v14;
  v28 = v13;
  LOBYTE(v38[0]) = 2;
  v27 = sub_D6B40();
  v30 = v15;
  LOBYTE(v38[0]) = 3;
  v26 = sub_D6B40();
  v29 = v16;
  v41 = 4;
  v17 = sub_D6B50();
  (*(v6 + 8))(v9, v5);
  v40 = v17 & 1;
  v19 = v31;
  v18 = v32;
  *&v33 = v11;
  *(&v33 + 1) = v32;
  v20 = v28;
  *&v34 = v28;
  *(&v34 + 1) = v31;
  v21 = v30;
  *&v35 = v27;
  *(&v35 + 1) = v30;
  v22 = v29;
  *&v36 = v26;
  *(&v36 + 1) = v29;
  v37 = v40;
  sub_64C34(&v33, v38);
  sub_67D4(a1);
  v38[0] = v11;
  v38[1] = v18;
  v38[2] = v20;
  v38[3] = v19;
  v38[4] = v27;
  v38[5] = v21;
  v38[6] = v26;
  v38[7] = v22;
  v39 = v40;
  result = sub_64C6C(v38);
  v24 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v24;
  *(a2 + 64) = v37;
  v25 = v34;
  *a2 = v33;
  *(a2 + 16) = v25;
  return result;
}

unint64_t sub_64BE0()
{
  result = qword_1261F0;
  if (!qword_1261F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1261F0);
  }

  return result;
}

void *sub_64C9C(uint64_t *a1)
{
  v3 = sub_66D4(&qword_1261F8, &qword_DE590);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_6648(a1, a1[3]);
  sub_64E20();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_66D4(&qword_126208, &qword_DE598);
    sub_64E74();
    sub_D6B70();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_67D4(a1);
  }

  return v9;
}

unint64_t sub_64E20()
{
  result = qword_126200;
  if (!qword_126200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126200);
  }

  return result;
}

unint64_t sub_64E74()
{
  result = qword_126210;
  if (!qword_126210)
  {
    sub_6110(&qword_126208, &qword_DE598);
    sub_64EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126210);
  }

  return result;
}

unint64_t sub_64EF8()
{
  result = qword_126218;
  if (!qword_126218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126218);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ValidationRule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ValidationRule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_650B0()
{
  result = qword_126220;
  if (!qword_126220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126220);
  }

  return result;
}

unint64_t sub_65108()
{
  result = qword_126228;
  if (!qword_126228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126228);
  }

  return result;
}

unint64_t sub_65160()
{
  result = qword_126230;
  if (!qword_126230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126230);
  }

  return result;
}

unint64_t sub_651B8()
{
  result = qword_126238;
  if (!qword_126238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126238);
  }

  return result;
}

unint64_t sub_65210()
{
  result = qword_126240;
  if (!qword_126240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126240);
  }

  return result;
}

unint64_t sub_65268()
{
  result = qword_126248;
  if (!qword_126248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126248);
  }

  return result;
}

uint64_t sub_652D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_123700, qword_DE7D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_653B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_123700, qword_DE7D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MAPreferencesView()
{
  result = qword_1262B8;
  if (!qword_1262B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_654C4()
{
  sub_65560();
  if (v0 <= 0x3F)
  {
    sub_655B8();
    if (v1 <= 0x3F)
    {
      sub_65608();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_65560()
{
  if (!qword_123770)
  {
    sub_D5710();
    v0 = sub_D5730();
    if (!v1)
    {
      atomic_store(v0, &qword_123770);
    }
  }
}

void sub_655B8()
{
  if (!qword_1262C8)
  {
    v0 = sub_D5730();
    if (!v1)
    {
      atomic_store(v0, &qword_1262C8);
    }
  }
}

void sub_65608()
{
  if (!qword_1262D0)
  {
    _s9ViewModelCMa_3();
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3);
    v0 = sub_D5890();
    if (!v1)
    {
      atomic_store(v0, &qword_1262D0);
    }
  }
}

uint64_t sub_656B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v52 = a1;
  v53 = a3;
  v4 = sub_D5910();
  v49 = *(v4 - 8);
  v50 = v4;
  v51 = *(v49 + 64);
  __chkstk_darwin(v4);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MAPreferencesView();
  v7 = v6 - 8;
  v47 = *(v6 - 8);
  v46 = *(v47 + 64);
  __chkstk_darwin(v6);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_66D4(&qword_126310, &qword_DE870);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  v44 = sub_66D4(&qword_126318, &qword_DE878);
  v14 = *(v44 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v44);
  v17 = &v42 - v16;
  v43 = sub_66D4(&qword_126320, &qword_DE880);
  v18 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v20 = &v42 - v19;
  v54 = a2;
  sub_66D4(&qword_126328, &qword_DE888);
  sub_109A8(&qword_126330, &qword_126328, &qword_DE888);
  sub_D5E60();
  v21 = sub_109A8(&qword_126338, &qword_126310, &qword_DE870);
  sub_D5F90();
  (*(v10 + 8))(v13, v9);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v57._countAndFlagsBits = 2777980912;
  v57._object = 0xA400000000000000;
  v58._countAndFlagsBits = 0x5241435F4C49414DLL;
  v58._object = 0xEF454C5449545F44;
  sub_D66D0(v58);
  v59._countAndFlagsBits = 2777980912;
  v59._object = 0xA400000000000000;
  sub_D66D0(v59);
  v41._countAndFlagsBits = 0xE000000000000000;
  v60._countAndFlagsBits = 0x5241435F4C49414DLL;
  v60._object = 0xEF454C5449545F44;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v24.super.isa = v23;
  v25 = sub_D4E80(v60, v61, v24, v57, v41);
  v27 = v26;

  v57._countAndFlagsBits = v25;
  v57._object = v27;
  v55 = v9;
  v56 = v21;
  swift_getOpaqueTypeConformance2();
  sub_DFAC();
  v28 = v44;
  sub_D6040();

  (*(v14 + 8))(v17, v28);
  v29 = v42;
  v30 = &v20[*(v43 + 36)];
  *v30 = sub_6829C;
  v30[1] = 0;
  v30[2] = 0;
  v30[3] = 0;
  v31 = *(v29 + *(v7 + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v32 = v45;
  sub_68C84(v29, v45);
  v34 = v48;
  v33 = v49;
  v35 = v50;
  (*(v49 + 16))(v48, v52, v50);
  v36 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v37 = v33;
  v38 = (v46 + *(v33 + 80) + v36) & ~*(v33 + 80);
  v39 = swift_allocObject();
  sub_68CF8(v32, v39 + v36);
  (*(v37 + 32))(v39 + v38, v34, v35);
  sub_66D4(&unk_125940, &qword_DDCE8);
  sub_70FD8();
  sub_7112C();
  sub_D6150();

  return sub_FC3C(v20, &qword_126320, &qword_DE880);
}

uint64_t sub_65D08@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v257 = a2;
  v234 = sub_66D4(&qword_126360, &qword_DE8E0);
  v3 = *(*(v234 - 8) + 64);
  __chkstk_darwin(v234);
  v220 = &v200 - v4;
  v216 = sub_66D4(&qword_126368, &qword_DE8E8);
  v215 = *(v216 - 8);
  v5 = *(v215 + 64);
  __chkstk_darwin(v216);
  v202 = &v200 - v6;
  v7 = sub_66D4(&qword_126370, &qword_DE8F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v219 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v235 = &v200 - v11;
  v214 = sub_66D4(&qword_126378, &qword_DE8F8);
  v221 = *(v214 - 8);
  v12 = *(v221 + 64);
  __chkstk_darwin(v214);
  v201 = &v200 - v13;
  v14 = sub_66D4(&qword_126380, &qword_DE900);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v218 = &v200 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v233 = &v200 - v18;
  v242 = sub_66D4(&qword_126388, &qword_DE908);
  v256 = *(v242 - 8);
  v19 = v256[8];
  v20 = __chkstk_darwin(v242);
  v217 = &v200 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v241 = &v200 - v22;
  v212 = sub_66D4(&qword_126390, &qword_DE910);
  v224 = *(v212 - 8);
  v23 = *(v224 + 64);
  __chkstk_darwin(v212);
  v205 = &v200 - v24;
  v25 = sub_66D4(&qword_126398, &qword_DE918);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v232 = &v200 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v244 = &v200 - v29;
  v223 = sub_66D4(&qword_1263A0, &qword_DE920);
  v222 = *(v223 - 8);
  v30 = *(v222 + 64);
  __chkstk_darwin(v223);
  v204 = &v200 - v31;
  v226 = sub_D51D0();
  v236 = *(v226 - 1);
  v32 = v236[8];
  v33 = __chkstk_darwin(v226);
  v213 = &v200 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v211 = &v200 - v35;
  v36 = sub_66D4(&qword_1263A8, &qword_DE928);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v238 = &v200 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v243 = &v200 - v40;
  v210 = sub_66D4(&qword_1263B0, &qword_DE930);
  v209 = *(v210 - 8);
  v41 = *(v209 + 64);
  __chkstk_darwin(v210);
  v203 = &v200 - v42;
  v43 = sub_66D4(&qword_1263B8, &qword_DE938);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43 - 8);
  v237 = &v200 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v240 = &v200 - v47;
  v231 = sub_66D4(&qword_1263C0, &qword_DE940);
  v245 = *(v231 - 8);
  v48 = v245[8];
  v49 = __chkstk_darwin(v231);
  v227 = &v200 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v239 = &v200 - v51;
  v228 = sub_66D4(&qword_1263C8, &qword_DE948);
  v52 = *(*(v228 - 8) + 64);
  __chkstk_darwin(v228);
  v229 = &v200 - v53;
  v254 = sub_66D4(&qword_1263D0, &qword_DE950);
  v54 = *(*(v254 - 8) + 64);
  __chkstk_darwin(v254);
  v230 = &v200 - v55;
  v225 = sub_66D4(&qword_1263D8, &qword_DE958);
  v208 = *(v225 - 8);
  v56 = *(v208 + 64);
  __chkstk_darwin(v225);
  v207 = &v200 - v57;
  v246 = sub_66D4(&qword_1263E0, &qword_DE960);
  v58 = *(*(v246 - 8) + 64);
  __chkstk_darwin(v246);
  v248 = &v200 - v59;
  v60 = sub_66D4(&qword_1263E8, &qword_DE968);
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v63 = &v200 - v62;
  v247 = sub_66D4(&qword_1263F0, &unk_DE970);
  v64 = *(*(v247 - 8) + 64);
  __chkstk_darwin(v247);
  v66 = &v200 - v65;
  v67 = sub_66D4(&qword_1263F8, &unk_E3D20);
  v206 = *(v67 - 8);
  v68 = *(v206 + 64);
  __chkstk_darwin(v67);
  v70 = &v200 - v69;
  v71 = sub_66D4(&qword_126400, &qword_DE980);
  v72 = *(*(v71 - 8) + 64);
  v73 = __chkstk_darwin(v71 - 8);
  v255 = &v200 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v251 = &v200 - v75;
  v76 = sub_66D4(&qword_126408, &qword_DE988);
  v252 = *(v76 - 8);
  v253 = v76;
  v77 = *(v252 + 64);
  v78 = __chkstk_darwin(v76);
  v250 = &v200 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v81 = &v200 - v80;
  v258 = a1;
  sub_66D4(&qword_126410, &qword_DE990);
  sub_109A8(&qword_126418, &qword_126410, &qword_DE990);
  v249 = v81;
  sub_D6390();
  v82 = *(a1 + *(type metadata accessor for MAPreferencesView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  object = v259._object;
  if (v259._object)
  {
    if (v259._object == &dword_0 + 1)
    {
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v88 = objc_opt_self();
      v89 = [v88 bundleForClass:ObjCClassFromMetadata];
      v90 = v82;
      v259._countAndFlagsBits = 2777980912;
      v259._object = 0xA400000000000000;
      v267._countAndFlagsBits = 0xD000000000000013;
      v267._object = 0x80000000000E8AB0;
      sub_D66D0(v267);
      v268._countAndFlagsBits = 2777980912;
      v268._object = 0xA400000000000000;
      sub_D66D0(v268);
      v197._countAndFlagsBits = 0xE000000000000000;
      v269._countAndFlagsBits = 0xD000000000000013;
      v269._object = 0x80000000000E8AB0;
      v279.value._countAndFlagsBits = 0;
      v279.value._object = 0;
      v91.super.isa = v89;
      v92 = sub_D4E80(v269, v279, v91, v259, v197);
      v94 = v93;

      v259._countAndFlagsBits = v92;
      v259._object = v94;
      __chkstk_darwin(v95);
      sub_66D4(&qword_126420, &qword_DE9E0);
      sub_109A8(&qword_126428, &qword_126420, &qword_DE9E0);
      v96 = sub_DFAC();
      sub_D6360();
      v225 = v90;
      v97 = sub_61364(&off_113868);
      v208 = ObjCClassFromMetadata;
      v200 = a1;
      v207 = v88;
      v206 = v96;
      if (v97)
      {
        v98 = [v88 bundleForClass:ObjCClassFromMetadata];
        v259._countAndFlagsBits = 2777980912;
        v259._object = 0xA400000000000000;
        v270._countAndFlagsBits = 0xD00000000000001DLL;
        v270._object = 0x80000000000E8B40;
        sub_D66D0(v270);
        v271._countAndFlagsBits = 2777980912;
        v271._object = 0xA400000000000000;
        sub_D66D0(v271);
        v198._countAndFlagsBits = 0xE000000000000000;
        v272._countAndFlagsBits = 0xD00000000000001DLL;
        v272._object = 0x80000000000E8B40;
        v280.value._countAndFlagsBits = 0;
        v280.value._object = 0;
        v99.super.isa = v98;
        v100 = sub_D4E80(v272, v280, v99, v259, v198);
        v102 = v101;

        v259._countAndFlagsBits = v100;
        v259._object = v102;
        __chkstk_darwin(v103);
        sub_66D4(&qword_126508, &qword_DEA98);
        sub_109A8(&qword_126510, &qword_126508, &qword_DEA98);
        v104 = v203;
        sub_D6360();
        v105 = v209;
        v106 = v240;
        v107 = v104;
        v108 = v210;
        (*(v209 + 32))(v240, v107, v210);
        v109 = 0;
        v110 = v212;
      }

      else
      {
        v109 = 1;
        v106 = v240;
        v110 = v212;
        v108 = v210;
        v105 = v209;
      }

      v118 = 1;
      (*(v105 + 56))(v106, v109, 1, v108);
      v119 = v236;
      v120 = v236[13];
      v121 = v211;
      v122 = v226;
      v120(v211, enum case for iCloudMailSettingsFeatureFlag.mailboxSection(_:), v226);
      v123 = sub_D51C0();
      v124 = v119[1];
      v236 = v119 + 1;
      v125 = v124(v121, v122);
      if (v123)
      {
        __chkstk_darwin(v125);
        sub_66D4(&qword_1264F8, &qword_DEA90);
        sub_109A8(&qword_126500, &qword_1264F8, &qword_DEA90);
        v126 = v204;
        sub_D6390();
        (*(v222 + 32))(v243, v126, v223);
        v118 = 0;
      }

      v127 = 1;
      (*(v222 + 56))(v243, v118, 1, v223);
      v128 = sub_61364(&off_113890);
      v129 = v208;
      if (v128)
      {
        __chkstk_darwin(v128);
        sub_66D4(&qword_1264E8, &qword_DEA88);
        sub_109A8(&qword_1264F0, &qword_1264E8, &qword_DEA88);
        v130 = v205;
        sub_D6390();
        (*(v224 + 32))(v244, v130, v110);
        v127 = 0;
      }

      v131 = 1;
      v132 = (*(v224 + 56))(v244, v127, 1, v110);
      __chkstk_darwin(v132);
      v133 = [v207 bundleForClass:v129];
      v259._countAndFlagsBits = 2777980912;
      v259._object = 0xA400000000000000;
      v273._countAndFlagsBits = 0xD00000000000001CLL;
      v273._object = 0x80000000000E8AD0;
      sub_D66D0(v273);
      v274._countAndFlagsBits = 2777980912;
      v274._object = 0xA400000000000000;
      sub_D66D0(v274);
      v198._countAndFlagsBits = 0xE000000000000000;
      v275._countAndFlagsBits = 0xD00000000000001CLL;
      v275._object = 0x80000000000E8AD0;
      v281.value._countAndFlagsBits = 0;
      v281.value._object = 0;
      v134.super.isa = v133;
      v135 = sub_D4E80(v275, v281, v134, v259, v198);
      v137 = v136;

      v259._countAndFlagsBits = v135;
      v259._object = v137;
      v259._countAndFlagsBits = sub_D5F50();
      v259._object = v138;
      v260 = v139 & 1;
      v261 = v140;
      sub_66D4(&qword_126430, &qword_DE9E8);
      sub_7124C();
      sub_D6370();
      v141 = v213;
      v142 = v226;
      v120(v213, enum case for iCloudMailSettingsFeatureFlag.customEmailDomain(_:), v226);
      LOBYTE(v133) = sub_D51C0();
      v124(v141, v142);
      v143 = v233;
      v144 = v216;
      v145 = v215;
      v146 = v214;
      if (v133)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_D5570();

        if (LOBYTE(v259._countAndFlagsBits) == 1)
        {
          v236 = &v200;
          __chkstk_darwin(v147);
          v226 = &v200 - 4;
          v148 = [v207 bundleForClass:v208];
          v259._countAndFlagsBits = 2777980912;
          v259._object = 0xA400000000000000;
          v276._object = 0x80000000000E8B20;
          v276._countAndFlagsBits = 0xD000000000000012;
          sub_D66D0(v276);
          v277._countAndFlagsBits = 2777980912;
          v277._object = 0xA400000000000000;
          sub_D66D0(v277);
          v199._countAndFlagsBits = 0xE000000000000000;
          v278._object = 0x80000000000E8B20;
          v278._countAndFlagsBits = 0xD000000000000012;
          v282.value._countAndFlagsBits = 0;
          v282.value._object = 0;
          v149.super.isa = v148;
          v150 = sub_D4E80(v278, v282, v149, v259, v199);
          v152 = v151;

          v259._countAndFlagsBits = v150;
          v259._object = v152;
          v263 = sub_D5F50();
          v264 = v153;
          v265 = v154 & 1;
          v266 = v155;
          sub_6FA00();
          sub_D5B60();
          v259._countAndFlagsBits = sub_D5F40();
          v259._object = v156;
          v260 = v157 & 1;
          v261 = v158;
          v262 = 256;
          sub_66D4(&qword_1264C8, &unk_DEA70);
          sub_66D4(&qword_1212E8, &qword_D8F60);
          sub_716A4();
          sub_4ABC8();
          v159 = v201;
          sub_D6380();
          (*(v221 + 32))(v143, v159, v146);
          v131 = 0;
        }
      }

      v160 = 1;
      (*(v221 + 56))(v143, v131, 1, v146);
      if (os_variant_has_internal_content())
      {
        v161 = sub_61364(&off_1138B8);
        if (v161)
        {
          __chkstk_darwin(v161);
          sub_D5B50();
          v259._countAndFlagsBits = sub_D5F40();
          v259._object = v162;
          v260 = v163 & 1;
          v261 = v164;
          sub_66D4(&qword_1264B8, &qword_DEA20);
          sub_109A8(&qword_1264C0, &qword_1264B8, &qword_DEA20);
          v165 = v202;
          sub_D6370();
          (*(v145 + 32))(v235, v165, v144);
          v160 = 0;
        }
      }

      v166 = v235;
      (*(v145 + 56))(v235, v160, 1, v144);
      v167 = v245[2];
      v168 = v227;
      v169 = v231;
      v167(v227, v239, v231);
      sub_FBD4(v240, v237, &qword_1263B8, &qword_DE938);
      sub_FBD4(v243, v238, &qword_1263A8, &qword_DE928);
      sub_FBD4(v244, v232, &qword_126398, &qword_DE918);
      v170 = v256[2];
      v171 = v217;
      v170(v217, v241, v242);
      v172 = v143;
      v173 = v218;
      sub_FBD4(v172, v218, &qword_126380, &qword_DE900);
      v174 = v166;
      v175 = v219;
      sub_FBD4(v174, v219, &qword_126370, &qword_DE8F0);
      v176 = v220;
      v167(v220, v168, v169);
      v177 = sub_66D4(&qword_126480, &qword_DEA10);
      sub_FBD4(v237, v176 + v177[12], &qword_1263B8, &qword_DE938);
      sub_FBD4(v238, v176 + v177[16], &qword_1263A8, &qword_DE928);
      v178 = v232;
      sub_FBD4(v232, v176 + v177[20], &qword_126398, &qword_DE918);
      v179 = v242;
      v170((v176 + v177[24]), v171, v242);
      sub_FBD4(v173, v176 + v177[28], &qword_126380, &qword_DE900);
      sub_FBD4(v175, v176 + v177[32], &qword_126370, &qword_DE8F0);
      sub_FC3C(v175, &qword_126370, &qword_DE8F0);
      sub_FC3C(v173, &qword_126380, &qword_DE900);
      v180 = v256[1];
      ++v256;
      v236 = v180;
      (v180)(v171, v179);
      sub_FC3C(v178, &qword_126398, &qword_DE918);
      sub_FC3C(v238, &qword_1263A8, &qword_DE928);
      sub_FC3C(v237, &qword_1263B8, &qword_DE938);
      v181 = v245[1];
      ++v245;
      v182 = v231;
      v181(v227, v231);
      sub_FBD4(v176, v229, &qword_126360, &qword_DE8E0);
      swift_storeEnumTagMultiPayload();
      sub_109A8(&qword_126488, &qword_126360, &qword_DE8E0);
      v183 = v230;
      sub_D5BF0();
      sub_FBD4(v183, v248, &qword_1263D0, &qword_DE950);
      swift_storeEnumTagMultiPayload();
      sub_713E8();
      sub_7158C();
      v184 = v251;
      sub_D5BF0();
      sub_FC3C(v183, &qword_1263D0, &qword_DE950);
      v85 = v184;
      sub_FC3C(v176, &qword_126360, &qword_DE8E0);
      sub_FC3C(v235, &qword_126370, &qword_DE8F0);
      sub_FC3C(v233, &qword_126380, &qword_DE900);
      (v236)(v241, v242);
      sub_FC3C(v244, &qword_126398, &qword_DE918);
      sub_FC3C(v243, &qword_1263A8, &qword_DE928);
      sub_FC3C(v240, &qword_1263B8, &qword_DE938);
      v181(v239, v182);
    }

    else
    {
      v85 = v251;
      if (v259._object == &dword_0 + 2)
      {
        swift_storeEnumTagMultiPayload();
        sub_109A8(&qword_126488, &qword_126360, &qword_DE8E0);
        v86 = v230;
        sub_D5BF0();
        sub_FBD4(v86, v248, &qword_1263D0, &qword_DE950);
        swift_storeEnumTagMultiPayload();
        sub_713E8();
        sub_7158C();
        sub_D5BF0();
        sub_FC3C(v86, &qword_1263D0, &qword_DE950);
      }

      else
      {
        countAndFlagsBits = v259._countAndFlagsBits;
        __chkstk_darwin(v83);
        v113 = v207;
        sub_D6390();
        sub_717A8(countAndFlagsBits, object);
        v114 = v208;
        v115 = v85;
        v116 = v225;
        (*(v208 + 16))(v63, v113, v225);
        swift_storeEnumTagMultiPayload();
        sub_71474();
        sub_71504();
        sub_D5BF0();
        sub_FBD4(v66, v248, &qword_1263F0, &unk_DE970);
        swift_storeEnumTagMultiPayload();
        sub_713E8();
        sub_7158C();
        sub_D5BF0();
        sub_FC3C(v66, &qword_1263F0, &unk_DE970);
        v117 = v116;
        v85 = v115;
        (*(v114 + 8))(v113, v117);
      }
    }
  }

  else
  {
    sub_66D4(&qword_121360, &unk_D8FE0);
    sub_F5B8();
    sub_D6390();
    v111 = v206;
    (*(v206 + 16))(v63, v70, v67);
    swift_storeEnumTagMultiPayload();
    sub_71474();
    sub_71504();
    sub_D5BF0();
    sub_FBD4(v66, v248, &qword_1263F0, &unk_DE970);
    swift_storeEnumTagMultiPayload();
    sub_713E8();
    sub_7158C();
    v85 = v251;
    sub_D5BF0();
    sub_FC3C(v66, &qword_1263F0, &unk_DE970);
    (*(v111 + 8))(v70, v67);
  }

  v186 = v252;
  v185 = v253;
  v187 = *(v252 + 16);
  v188 = v250;
  v189 = v249;
  v187(v250, v249, v253);
  v190 = v85;
  v191 = v85;
  v192 = v255;
  sub_FBD4(v190, v255, &qword_126400, &qword_DE980);
  v193 = v257;
  v187(v257, v188, v185);
  v194 = sub_66D4(&qword_1264B0, &qword_DEA18);
  sub_FBD4(v192, &v193[*(v194 + 48)], &qword_126400, &qword_DE980);
  sub_FC3C(v191, &qword_126400, &qword_DE980);
  v195 = *(v186 + 8);
  v195(v189, v185);
  sub_FC3C(v192, &qword_126400, &qword_DE980);
  return (v195)(v188, v185);
}