uint64_t sub_2090(void *a1)
{
  a1;

  sub_2124(&qword_30A20, &unk_27630);
  sub_259C0();

  return v3;
}

uint64_t sub_2124(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

void sub_2190(void *a1, id a2, uint64_t a3)
{
  a2;

  a2;

  v6[0] = a2;
  v6[1] = a3;
  a1;
  sub_2124(&qword_30A20, &unk_27630);
  sub_259D0();
  sub_2278(v6);
}

uint64_t sub_2278(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_22B8(void *a1)
{
  a1;

  sub_2124(&qword_30A20, &unk_27630);
  sub_259E0();

  return v3;
}

void *sub_2364(void *a1)
{
  a1;

  return a1;
}

uint64_t sub_23A4(void *a1, uint64_t a2)
{
  a1;

  v3 = *v2;
  v5 = *(v2 + 8);
  *v2 = a1;
  *(v2 + 8) = a2;
}

id sub_2424()
{
  v5 = 0;
  v6 = 0;
  updated = type metadata accessor for SystemUpdateCoordinator();
  sub_E13C();
  sub_24C8(updated, v4);
  v3 = v4[0];
  v2 = v4[1];
  v4[0];

  v5 = v3;
  v6 = v2;
  sub_2548(&v5);
  return v3;
}

uint64_t sub_2548(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_2588@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v12 = a1;
  v13 = a2;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v15 = type metadata accessor for SystemVersionList();
  v8 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v18 = &v8 - v8;
  v20 = sub_2124(&qword_30A28, qword_28760);
  v10 = *(*(v20 - 8) + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v12);
  v22 = &v8 - v9;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v3);
  v23 = &v8 - v11;
  v27 = &v8 - v11;
  v25 = v4;
  v26 = v5;
  sub_ACF8(v6);
  KeyPath = swift_getKeyPath();
  v12;

  v24[2] = v12;
  v24[3] = v13;
  sub_2124(&qword_30A20, &unk_27630);
  sub_259C0();
  v14 = v24[1];

  v16 = v24;
  v24[0] = v14;
  sub_292C();
  sub_258E0();
  sub_29AC(v16);

  sub_29E0(v18);
  v21 = sub_2BE0();
  sub_2B7C(v22, v20, v23);
  sub_2D84(v22);
  sub_2F18(v23, v22);
  sub_3208(v22, v20, v19);
  sub_2D84(v22);
  return sub_2D84(v23);
}

uint64_t sub_27F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_256D0();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = sub_4E58();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

unint64_t sub_292C()
{
  v2 = qword_30A30;
  if (!qword_30A30)
  {
    type metadata accessor for SystemVersionList();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30A30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29E0(uint64_t a1)
{
  v1 = sub_253B0();
  (*(*(v1 - 8) + 8))(a1);
  v7 = type metadata accessor for SystemVersionList();
  sub_2B34(*(a1 + v7[5]), *(a1 + v7[5] + 8) & 1);
  v2 = *(a1 + v7[6] + 8);

  v3 = *(a1 + v7[7] + 8);

  v8 = v7[8];
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_25640();
    (*(*(v5 - 8) + 8))(a1 + v8);
  }

  else
  {
    v4 = *(a1 + v8);
  }

  return a1;
}

void sub_2B34(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_2BE0()
{
  v2 = qword_30A40;
  if (!qword_30A40)
  {
    sub_2C88(&qword_30A28, qword_28760);
    sub_292C();
    sub_2CFC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30A40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2C88(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

unint64_t sub_2CFC()
{
  v2 = qword_30A48;
  if (!qword_30A48)
  {
    sub_2C88(&qword_30A50, &qword_27670);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30A48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2D84(uint64_t a1)
{
  v1 = sub_253B0();
  (*(*(v1 - 8) + 8))(a1);
  v9 = type metadata accessor for SystemVersionList();
  sub_2B34(*(a1 + v9[5]), *(a1 + v9[5] + 8) & 1);
  v2 = *(a1 + v9[6] + 8);

  v3 = *(a1 + v9[7] + 8);

  v10 = v9[8];
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_25640();
    (*(*(v5 - 8) + 8))(a1 + v10);
  }

  else
  {
    v4 = *(a1 + v10);
  }

  v8 = (a1 + *(sub_2124(&qword_30A28, qword_28760) + 36));
  v6 = *v8;

  return a1;
}

uint64_t sub_2F18(uint64_t a1, uint64_t a2)
{
  v2 = sub_253B0();
  (*(*(v2 - 8) + 16))(a2, a1);
  v20 = type metadata accessor for SystemVersionList();
  v14 = v20[5];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  sub_31C0(v15, v16 & 1);
  v3 = a2 + v14;
  *v3 = v15;
  *(v3 + 8) = v16 & 1;
  v4 = v20[6];
  v17 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v18 = *(a1 + v4 + 8);

  *(v17 + 8) = v18;
  v5 = v20[7];
  v21 = a2 + v5;
  *(a2 + v5) = *(a1 + v5);
  v22 = *(a1 + v5 + 8);

  *(v21 + 8) = v22;
  v23 = v20[8];
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 16))();
  }

  else
  {
    v13 = *(a1 + v23);

    *(a2 + v23) = v13;
  }

  swift_storeEnumTagMultiPayload();
  v7 = sub_2124(&qword_30A28, qword_28760);
  v11 = (a2 + *(v7 + 36));
  v10 = (a1 + *(v7 + 36));
  v9 = *v10;

  *v11 = v9;
  v12 = v10[1];
  v12;
  result = a2;
  v11[1] = v12;
  return result;
}

id sub_31C0(void *a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void *sub_32F0()
{
  v2 = *(v0 + OBJC_IVAR___SystemVersionSettingsController_systemVersionSettingsView);
  v3 = *(v0 + OBJC_IVAR___SystemVersionSettingsController_systemVersionSettingsView + 8);
  v2;

  return v2;
}

Swift::Void __swiftcall SystemVersionSettingsController.viewDidLoad()()
{
  v23 = "Fatal error";
  v24 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v25 = "SystemVersionSettings/SystemVersionSettingsController.swift";
  ObjectType = swift_getObjectType();
  v59 = 0;
  v55 = 0;
  v50 = 0;
  v33 = 0;
  v26 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v35 = &v10 - v26;
  v1 = sub_25B70();
  v27 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v32 = &v10 - v27;
  v59 = v0;
  v0;
  v58.receiver = v0;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, "viewDidLoad");

  sub_2124(&qword_30A60, &qword_27678);
  v29 = *&v38[OBJC_IVAR___SystemVersionSettingsController_systemVersionSettingsView];
  v30 = *&v38[OBJC_IVAR___SystemVersionSettingsController_systemVersionSettingsView + 8];
  v29;

  v56 = v29;
  v57 = v30;
  v39 = sub_25780();
  v55 = v39;
  v38;
  v31 = 1;
  sub_25BF0("OSName Version", 0xEuLL, 1);
  sub_25B10();
  v34 = *sub_242E8();
  v34;
  sub_3A00();
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = v31 & 1;
  sub_25BA0();
  v36 = v2;
  v37 = sub_25B80();

  [v38 setTitle:v37];

  v39;
  v40 = [v39 view];
  if (v40)
  {
    v22 = v40;
    v20 = v40;
    v50 = v40;

    v38;
    v21 = [v38 view];

    if (v21)
    {
      v19 = v21;
    }

    else
    {
      sub_25E80();
      __break(1u);
    }

    v17 = v19;
    [v19 addSubview:v20];

    v38;
    v18 = [v38 view];

    if (v18)
    {
      v16 = v18;
    }

    else
    {
      sub_25E80();
      __break(1u);
    }

    v11 = v16;
    [v16 bounds];
    v46 = v3;
    v47 = v4;
    v48 = v5;
    v49 = v6;
    v12 = v5;
    v13 = v6;

    v42 = 0;
    v43 = 0;
    v44 = v12;
    v45 = v13;
    [v20 setFrame:{0.0, 0.0, v12, v13}];
    type metadata accessor for AutoresizingMask();
    v14 = 2;
    v7 = sub_25F00();
    v8 = v14;
    *v9 = 16;
    v9[1] = v8;
    sub_3AB0();
    v15 = v7;
    sub_3AF4();
    sub_25DC0();
    [v20 setAutoresizingMask:v41];
    [v38 addChildViewController:v39];
    v38;
    [v39 didMoveToParentViewController:v38];
  }

  else
  {
  }
}

uint64_t type metadata accessor for AutoresizingMask()
{
  v4 = qword_30A98;
  if (!qword_30A98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_30A98);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_3AF4()
{
  v2 = qword_30A68;
  if (!qword_30A68)
  {
    type metadata accessor for AutoresizingMask();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30A68);
    return WitnessTable;
  }

  return v2;
}

id SystemVersionSettingsController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_25B80();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName:? bundle:?];

  return v5;
}

id SystemVersionSettingsController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v19 = a1;
  v20 = a2;
  v18 = a3;
  v21 = v3;
  v15 = OBJC_IVAR___SystemVersionSettingsController_systemVersionSettingsView;
  v4 = sub_2424();
  v5 = &v3[v15];
  *v5 = v4;
  *(v5 + 1) = v6;

  if (a2)
  {
    v10 = sub_25B80();

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v17.receiver = v21;
  v17.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", v11);

  v9;
  v21 = v9;

  return v9;
}

id SystemVersionSettingsController.__allocating_init(coder:)(void *a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v4;
}

id SystemVersionSettingsController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v12 = a1;
  v13 = v1;
  v7 = OBJC_IVAR___SystemVersionSettingsController_systemVersionSettingsView;
  v2 = sub_2424();
  v3 = &v1[v7];
  *v3 = v2;
  *(v3 + 1) = v4;
  v11.receiver = v13;
  v11.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  if (v10)
  {
    v10;
    v13 = v10;

    return v10;
  }

  else
  {

    return 0;
  }
}

id SystemVersionSettingsController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_4114(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_4120(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
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

uint64_t sub_4264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_448C()
{
  sub_4B78();
  sub_4BF8();
  return sub_25FF0();
}

uint64_t sub_4690()
{
  sub_4B78();
  sub_4BF8();
  return sub_25FE0();
}

uint64_t sub_46D4()
{
  sub_4B78();
  sub_4BF8();
  return sub_25FC0();
}

uint64_t sub_4718()
{
  sub_4B78();
  sub_4BF8();
  return sub_25FD0();
}

uint64_t sub_48C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_48F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_4934@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_2(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_497C()
{
  v2 = qword_30AA0;
  if (!qword_30AA0)
  {
    type metadata accessor for AutoresizingMask();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4A60()
{
  v2 = qword_30AA8;
  if (!qword_30AA8)
  {
    type metadata accessor for AutoresizingMask();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4AF8()
{
  v2 = qword_30AB0;
  if (!qword_30AB0)
  {
    type metadata accessor for AutoresizingMask();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B78()
{
  v2 = qword_30AB8;
  if (!qword_30AB8)
  {
    type metadata accessor for AutoresizingMask();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4BF8()
{
  v2 = qword_30AC0;
  if (!qword_30AC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AC0);
    return WitnessTable;
  }

  return v2;
}

void *sub_4C80(id *a1, void *a2)
{
  v3 = *a1;
  *a1;
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_4CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4CC0();
  *a1 = result;
  return result;
}

unint64_t sub_4D40()
{
  v2 = qword_30AC8;
  if (!qword_30AC8)
  {
    sub_2C88(&qword_30AD0, qword_27A20);
    sub_4DD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4DD8()
{
  v2 = qword_30AD8;
  if (!qword_30AD8)
  {
    type metadata accessor for SystemUpdateCoordinator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4E58()
{
  sub_4EA4();
  sub_256E0();
  return v1;
}

unint64_t sub_4EA4()
{
  v2 = qword_315B0[0];
  if (!qword_315B0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_315B0);
    return WitnessTable;
  }

  return v2;
}

void sub_4F20(void *a1)
{
  a1;
  sub_4EA4();
  sub_256F0();
}

void (*sub_4FA0(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_4E58();
  return sub_4FFC;
}

void sub_4FFC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    *a1;
    sub_4F20(v3);
    sub_29AC(a1);
  }

  else
  {
    sub_4F20(*a1);
  }
}

uint64_t sub_5084@<X0>(uint64_t a1@<X8>)
{
  v5[0] = a1;
  v5[1] = "Fatal error";
  v5[2] = "Unexpectedly found nil while unwrapping an Optional value";
  v5[3] = "SystemVersionSettings/SystemVersionList.swift";
  v13 = 0;
  v2 = sub_2124(&qword_30AE0, &unk_28050);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v9 = v5 - v6;
  v13 = v1;
  v8 = 1;
  sub_25BF0("settings-navigation://com.apple.Settings.General/About/SW_VERSION_SPECIFIER", 0x4BuLL, 1);
  v7 = v3;
  sub_253F0();

  v10 = sub_25400();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  if ((*(v11 + 48))(v9, v8) == 1)
  {
    sub_25E80();
    __break(1u);
  }

  return (*(v11 + 32))(v5[0], v9, v10);
}

void sub_5240(uint64_t a1@<X8>)
{
  v15 = a1;
  v17 = 0;
  v2 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v18 = &v2 - v2;
  v9 = sub_25400();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v8 = &v2 - v3;
  v13 = sub_253A0();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v4 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v19 = &v2 - v4;
  v1 = sub_25B70();
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v16 = &v2 - v5;
  v14 = 1;
  sub_25BF0("OSName Version", 0xEuLL, 1);
  sub_25B10();
  v10 = *sub_242E8();
  v10;
  v20 = [v10 bundleURL];
  sub_253D0();
  (*(v6 + 32))(v19, v8, v9);

  (*(v11 + 104))(v19, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v13);
  sub_5518();
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = v14 & 1;
  sub_253C0();
}

uint64_t sub_5590()
{
  v29 = 0;
  v19 = 0;
  v4 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v20 = &v3 - v4;
  v11 = sub_25400();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v3 - v5;
  v15 = sub_253A0();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v6 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v3 - v6;
  v7 = (*(*(sub_25B70() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v18 = &v3 - v7;
  v29 = v0;
  v24 = sub_253B0();
  v23 = sub_25F00();
  v17 = v1;
  v16 = 1;
  sub_25BF0("General", 7uLL, 1);
  sub_25B10();
  v12 = *sub_242E8();
  v12;
  v22 = [v12 bundleURL];
  sub_253D0();
  (*(v8 + 32))(v21, v10, v11);

  (*(v13 + 104))(v21, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v15);
  sub_5518();
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = v16 & 1;
  sub_253C0();

  result = v23;
  sub_3AB0();
  return result;
}

uint64_t sub_58A0()
{
  v1 = v0 + *(type metadata accessor for SystemVersionList() + 20);
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_31C0(*v1, v4 & 1);
  sub_2124(&qword_30AE8, &qword_27B40);
  sub_255D0();
  sub_2B34(v3, v4 & 1);
  return v5;
}

uint64_t type metadata accessor for SystemVersionList()
{
  v1 = qword_316E0;
  if (!qword_316E0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_59B4()
{
  swift_getKeyPath();
  sub_255F0();
  return v1;
}

void *sub_59F0()
{
  v1 = v0 + *(type metadata accessor for SystemVersionList() + 20);
  v3 = *v1;
  sub_31C0(*v1, *(v1 + 8) & 1);
  return v3;
}

void sub_5A40(void *a1, char a2)
{
  sub_31C0(a1, a2 & 1);
  v3 = v2 + *(type metadata accessor for SystemVersionList() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_2B34(v4, v5 & 1);
  sub_2B34(a1, a2 & 1);
}

uint64_t sub_5B08()
{
  v1 = (v0 + *(type metadata accessor for SystemVersionList() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);

  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259C0();

  return v5 & 1;
}

uint64_t sub_5B98()
{
  v1 = (v0 + *(type metadata accessor for SystemVersionList() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);

  v5[0] = v3;
  v6 = v4;
  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259D0();
  sub_5C44(v5);
}

uint64_t sub_5C44(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_5C7C()
{
  v1 = (v0 + *(type metadata accessor for SystemVersionList() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);

  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259E0();

  return v5;
}

uint64_t sub_5D24()
{
  v1 = (v0 + *(type metadata accessor for SystemVersionList() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);

  return v3 & 1;
}

uint64_t sub_5D70(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for SystemVersionList() + 24);
  v4 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_5E20()
{
  v1 = (v0 + *(type metadata accessor for SystemVersionList() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);

  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259C0();

  return v5 & 1;
}

uint64_t sub_5EB0()
{
  v1 = (v0 + *(type metadata accessor for SystemVersionList() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);

  v5[0] = v3;
  v6 = v4;
  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259D0();
  sub_5C44(v5);
}

uint64_t sub_5F68()
{
  v1 = (v0 + *(type metadata accessor for SystemVersionList() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);

  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259E0();

  return v5;
}

uint64_t sub_6010()
{
  v1 = (v0 + *(type metadata accessor for SystemVersionList() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);

  return v3 & 1;
}

uint64_t sub_605C(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for SystemVersionList() + 28);
  v4 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t *sub_60B8@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_2124(&qword_30AF8, &unk_27B80);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = (&v4 - v5);
  v2 = type metadata accessor for SystemVersionList();
  sub_6178((v6 + *(v2 + 32)), v1);
  sub_255D0();
  return sub_624C(v9);
}

void *sub_6178(uint64_t *a1, void *a2)
{
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
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

uint64_t *sub_624C(uint64_t *a1)
{
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(a1);
  }

  else
  {
    v1 = *a1;
  }

  return a1;
}

uint64_t sub_631C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = sub_25640();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v3 - v4;
  v14 = sub_256D0();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  sub_25690();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_64AC(uint64_t a1)
{
  v3 = a1;
  v1 = sub_25640();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return sub_256A0();
}

uint64_t *sub_659C(uint64_t *a1)
{
  v8 = a1;
  v6 = (*(*(sub_2124(&qword_30AF8, &unk_27B80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v7 = (&v5 - v6);
  sub_6178(v2, (&v5 - v6));
  v3 = type metadata accessor for SystemVersionList();
  sub_664C(v7, (v1 + *(v3 + 32)));
  return sub_624C(v8);
}

uint64_t *sub_664C(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    sub_6738(a2);
    v4 = sub_2124(&qword_30A38, &qword_28060);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_25640();
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

uint64_t *sub_6738(uint64_t *a1)
{
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(a1);
  }

  else
  {
    v1 = *a1;
  }

  return a1;
}

uint64_t sub_67D4@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v33 = sub_81CC;
  v43 = &opaque type descriptor for <<opaque return type of View.settingsListAppearance()>>;
  v68 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v79 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
  v108 = 0;
  v107 = 0;
  v63 = 0;
  v47 = sub_25400();
  v44 = *(v47 - 8);
  v45 = v47 - 8;
  v19 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v46 = &v19 - v19;
  v52 = sub_253B0();
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v20 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63);
  v51 = &v19 - v20;
  v56 = sub_25AC0();
  v53 = *(v56 - 8);
  v54 = v56 - 8;
  v21 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63);
  v55 = (&v19 - v21);
  v1 = type metadata accessor for SystemVersionList();
  v22 = *(v1 - 8);
  v29 = v22;
  v30 = *(v22 + 64);
  v23 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v32 = &v19 - v23;
  v41 = sub_2124(&qword_30B00, &qword_27BC0);
  v37 = *(v41 - 8);
  v38 = v41 - 8;
  v24 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v39 = &v19 - v24;
  v66 = sub_2124(&qword_30B08, &qword_27BC8);
  v57 = *(v66 - 8);
  v58 = v66 - 8;
  v25 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66);
  v59 = &v19 - v25;
  v77 = sub_2124(&qword_30B10, &qword_27BD0);
  v74 = *(v77 - 8);
  v75 = v77 - 8;
  v26 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v77);
  v76 = &v19 - v26;
  v87 = sub_2124(&qword_30B18, &qword_27BD8);
  v81 = *(v87 - 8);
  v82 = v87 - 8;
  v27 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v40);
  v85 = &v19 - v27;
  v28 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v86 = &v19 - v28;
  v108 = &v19 - v28;
  v107 = v4;
  sub_7C00(v4, v5);
  v31 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v34 = swift_allocObject();
  sub_8020(v32, v34 + v31);
  v35 = sub_2124(&qword_30B20, &qword_27BE0);
  v36 = sub_9048();
  sub_9030();
  *&v69[1] = 1;
  sub_25580();
  v42 = sub_90D0();
  sub_25880();
  v6 = v40;
  (*(v37 + 8))(v39, v41);
  v7 = sub_25BF0("com.apple.graphic-icon.about-current-device", 0x2BuLL, v69[1] & 1);
  v8 = v53;
  v9 = v7;
  v10 = v55;
  *v55 = v9;
  v10[1] = v11;
  (*(v8 + 104))();
  (*(v49 + 16))(v51, v6, v52);
  v48 = sub_5590();
  sub_5084(v46);
  v105 = v41;
  v106 = v42;
  v80 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_25890();
  (*(v44 + 8))(v46, v47);

  (*(v49 + 8))(v51, v52);
  (*(v53 + 8))(v55, v56);
  (*(v57 + 8))(v59, v66);
  sub_25BF0("OSName Version", 0xEuLL, v69[1] & 1);
  v65 = sub_25750();
  v60 = v12;
  v61 = v13;
  v62 = v14;
  v64 = *sub_242E8();
  v64;
  v102 = 0;
  v103 = 0;
  v104 = *v69 & 0x100;
  v98 = sub_25840();
  v99 = v15;
  v100 = v16;
  v101 = v17;
  v70 = v98;
  v71 = v15;
  v72 = v16;
  v73 = v17;
  v96 = v66;
  v97 = OpaqueTypeConformance2;
  v78 = swift_getOpaqueTypeConformance2();
  v92 = v70;
  v93 = v71;
  v94 = v72 & 1 & v69[1];
  v95 = v73;
  sub_25910();
  sub_9158(v70, v71, v72 & 1);

  (*(v74 + 8))(v76, v77);
  v90 = v77;
  v91 = v78;
  v84 = swift_getOpaqueTypeConformance2();
  sub_2B7C(v85, v87, v86);
  v89 = *(v81 + 8);
  v88 = v81 + 8;
  v89(v85, v87);
  (*(v81 + 16))(v85, v86, v87);
  sub_3208(v85, v87, v83);
  v89(v85, v87);
  return (v89)(v86, v87);
}

uint64_t sub_73C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v18 = a1;
  v38 = a2;
  v25 = &unk_29FD0;
  v46 = &opaque type descriptor for <<opaque return type of View.visibilityTransition(when:duration:)>>;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v44 = sub_2124(&qword_30B68, &qword_27C08);
  v13 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v44);
  v43 = &v12 - v13;
  v57 = sub_2124(&qword_30C48, &qword_27E10);
  v48 = *(v57 - 8);
  v49 = v57 - 8;
  v14 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v55 = &v12 - v14;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v12 - v14);
  v60 = &v12 - v15;
  v79 = &v12 - v15;
  v30 = sub_2124(&qword_30B40, &qword_27BF0);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v16 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v29 = &v12 - v16;
  v36 = sub_2124(&qword_30C50, &qword_27E18);
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v17 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v35 = &v12 - v17;
  v50 = sub_2124(&qword_30C58, &unk_27E20);
  v20 = *(*(v50 - 8) + 64);
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v18);
  v56 = &v12 - v19;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v5);
  v61 = &v12 - v21;
  v78 = &v12 - v21;
  v77 = v6;
  v76 = a2;
  sub_824C(v7);
  v37 = type metadata accessor for SystemVersionList();
  v8 = (v38 + *(v37 + 24));
  v22 = *v8;
  v23 = *(v8 + 1);

  v74 = v22;
  v75 = v23;
  v39 = sub_2124(&qword_30AF0, &qword_27B78);
  sub_259C0();
  v26 = v73;

  v24 = sub_2C88(&qword_30B38, &qword_27BE8);
  v9 = sub_971C();
  v71 = v24;
  v72 = v9;
  v47 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_858C();
  sub_25860();
  (*(v27 + 8))(v29, v30);
  v32 = sub_257D0();
  v69 = v30;
  v70 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_25940();
  (*(v33 + 8))(v35, v36);
  v51 = sub_C570();
  sub_2B7C(v56, v50, v61);
  sub_C6B4(v56);
  sub_85BC(v43);
  v10 = (v38 + *(v37 + 28));
  v40 = *v10;
  v41 = *(v10 + 1);

  v67 = v40;
  v68 = v41;
  sub_259C0();
  v42 = v66;

  v45 = sub_ABF0();
  sub_858C();
  sub_25860();
  sub_A8D4(v43);
  v65[2] = v44;
  v65[3] = v45;
  v52 = swift_getOpaqueTypeConformance2();
  sub_2B7C(v55, v57, v60);
  v59 = *(v48 + 8);
  v58 = v48 + 8;
  v59(v55, v57);
  sub_C71C(v61, v56);
  v54 = v65;
  v65[0] = v56;
  (*(v48 + 16))(v55, v60, v57);
  v65[1] = v55;
  v64[0] = v50;
  v64[1] = v57;
  v62 = v51;
  v63 = v52;
  sub_8DD4(v54, 2uLL, v64, v53);
  v59(v55, v57);
  sub_C6B4(v56);
  v59(v60, v57);
  return sub_C6B4(v61);
}

uint64_t sub_7C00(uint64_t a1, uint64_t a2)
{
  v2 = sub_253B0();
  (*(*(v2 - 8) + 16))(a2, a1);
  v15 = type metadata accessor for SystemVersionList();
  v9 = v15[5];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  sub_31C0(v10, v11 & 1);
  v3 = a2 + v9;
  *v3 = v10;
  *(v3 + 8) = v11 & 1;
  v4 = v15[6];
  v12 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v13 = *(a1 + v4 + 8);

  *(v12 + 8) = v13;
  v5 = v15[7];
  v16 = a2 + v5;
  *(a2 + v5) = *(a1 + v5);
  v17 = *(a1 + v5 + 8);

  *(v16 + 8) = v17;
  v18 = v15[8];
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 16))();
  }

  else
  {
    v8 = *(a1 + v18);

    *(a2 + v18) = v8;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_7E38()
{
  v11 = type metadata accessor for SystemVersionList();
  v1 = *(*(v11 - 1) + 80);
  v10 = (v1 + 16) & ~v1;
  v9 = v10 + *(*(v11 - 1) + 64);
  v2 = sub_253B0();
  (*(*(v2 - 8) + 8))();
  sub_2B34(*(v0 + v10 + v11[5]), *(v0 + v10 + v11[5] + 8) & 1);
  v3 = *(v0 + v10 + v11[6] + 8);

  v4 = *(v0 + v10 + v11[7] + 8);

  v12 = v11[8];
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 8))(v8 + v10 + v12);
  }

  else
  {
    v5 = *(v8 + v10 + v12);
  }

  return swift_deallocObject();
}

uint64_t sub_8020(uint64_t a1, uint64_t a2)
{
  v2 = sub_253B0();
  (*(*(v2 - 8) + 32))(a2, a1);
  v8 = type metadata accessor for SystemVersionList();
  v3 = a1 + v8[5];
  v4 = a2 + v8[5];
  *v4 = *v3;
  *(v4 + 8) = *(v3 + 8);
  *(a2 + v8[6]) = *(a1 + v8[6]);
  *(a2 + v8[7]) = *(a1 + v8[7]);
  v9 = v8[8];
  v11 = sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_25640();
    (*(*(v5 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v9), (a1 + v9), *(*(v11 - 8) + 64));
  }

  return a2;
}

uint64_t sub_81CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for SystemVersionList();
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_73C4(a1, v4, a2);
}

uint64_t sub_824C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v12 = 0;
  v14 = sub_93FC;
  v11 = sub_9404;
  v20 = &unk_29FD0;
  v35 = 0;
  v34 = 0;
  v18 = sub_2124(&qword_30B38, &qword_27BE8);
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v6 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v1 = &v5 - v6;
  v17 = &v5 - v6;
  v27 = sub_2124(&qword_30B40, &qword_27BF0);
  v21 = *(v27 - 8);
  v22 = v27 - 8;
  v8 = *(v21 + 64);
  v7 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v25 = &v5 - v7;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v7);
  v26 = &v5 - v9;
  v35 = &v5 - v9;
  v34 = v2;
  v10 = &v30;
  v31 = v2;
  v13 = type metadata accessor for InstalledSoftwareView();
  v3 = sub_969C();
  sub_95D4(v14, v10, &type metadata for Text, v13, &protocol witness table for Text, v3, v1);
  v19 = sub_971C();
  sub_217F0(0);
  (*(v15 + 8))(v17, v18);
  v32 = v18;
  v33 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2B7C(v25, v27, v26);
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v29(v25, v27);
  (*(v21 + 16))(v25, v26, v27);
  sub_3208(v25, v27, v23);
  v29(v25, v27);
  return (v29)(v26, v27);
}

uint64_t sub_85BC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v44 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v58 = 0;
  v55 = 0;
  v31 = sub_2124(&qword_30B58, &qword_27BF8);
  v32 = *(v31 - 8);
  v33 = v32;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31 - 8);
  v35 = v12 - v34;
  v36 = sub_2124(&qword_30B60, &qword_27C00);
  v37 = *(v36 - 8);
  v38 = v37;
  v40 = *(v37 + 64);
  __chkstk_darwin(v36 - 8);
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v12 - v42;
  v2 = __chkstk_darwin(v12 - v42);
  v41 = v12 - v42;
  __chkstk_darwin(v2);
  v43 = v12 - v42;
  v66 = v12 - v42;
  v45 = sub_2124(&qword_30B68, &qword_27C08);
  v47 = *(*(v45 - 8) + 64);
  v3 = __chkstk_darwin(v44);
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = v12 - v49;
  v4 = __chkstk_darwin(v3);
  v48 = v12 - v49;
  __chkstk_darwin(v4);
  v50 = v12 - v49;
  v65 = v12 - v49;
  v64 = v1;
  v5 = v1 + *(type metadata accessor for SystemVersionList() + 20);
  v51 = *v5;
  v52 = *(v5 + 8);
  sub_31C0(v51, v52);
  v62 = v51;
  v63 = v52;
  sub_2124(&qword_30AE8, &qword_27B40);
  sub_255D0();
  v53 = v61;
  sub_2B34(v51, v52);
  v54 = sub_D86C();
  if (v54)
  {
    v29 = v54;
    v6 = v35;
    v23 = v54;
    v58 = v54;

    v22 = v12;
    __chkstk_darwin(v12);
    v16 = &v11;
    v21 = v12;
    __chkstk_darwin(v12);
    v18 = &v11;
    v17 = 0;
    v19 = type metadata accessor for InstalledSoftwareView();
    v20 = sub_2124(&qword_30B80, &qword_27C10);
    v15 = sub_969C();
    v7 = sub_A7A8();
    sub_A538(sub_ACD8, v16, sub_ACE4, v18, &type metadata for Text, v19, v6, v20, &protocol witness table for Text, v15, v7);

    v24 = sub_A6F4();
    v25 = 1;
    sub_217F0(1);
    (*(v33 + 8))(v35, v31);
    v56 = v31;
    v57 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2B7C(v41, v36, v43);
    v27 = *(v38 + 8);
    v28 = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v41, v36);
    v55 = v41;
    v14 = *(v38 + 16);
    v13 = v38 + 16;
    v14(v39, v43, v36);
    sub_3208(v39, v36, v41);
    v27(v39, v36);
    v14(v46, v41, v36);
    (*(v38 + 56))(v46, 0, 1, v36);
    sub_A6A8(v46, v36, v48);
    sub_A8D4(v46);
    sub_A988(v48, v50);
    v27(v41, v36);
    v27(v43, v36);
  }

  else
  {

    v8 = *(v38 + 56);
    v12[1] = 1;
    v8(v46, 1, 1, v36);
    v9 = sub_A6F4();
    v59 = v31;
    v60 = v9;
    swift_getOpaqueTypeConformance2();
    sub_A6A8(v46, v36, v48);
    sub_A8D4(v46);
    sub_A988(v48, v50);
  }

  sub_AABC(v50, v48);
  sub_ABF0();
  sub_3208(v48, v45, v30);
  sub_A8D4(v48);
  return sub_A8D4(v50);
}

uint64_t *sub_8DD4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    __chkstk_darwin(&v9);
    v20 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v5 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v6;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  __chkstk_darwin(&v9);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  sub_25A90();
  return v15;
}

unint64_t sub_9048()
{
  v2 = qword_30B28;
  if (!qword_30B28)
  {
    sub_2C88(&qword_30B20, &qword_27BE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_90D0()
{
  v2 = qword_30B30;
  if (!qword_30B30)
  {
    sub_2C88(&qword_30B00, &qword_27BC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_9158(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

char *sub_919C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v15 = a1;
  v36 = 0;
  v35 = 0;
  v7 = 0;
  v23 = type metadata accessor for InstalledSoftwareView();
  v9 = *(*(v23 - 8) + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(0);
  v25 = &v7 - v8;
  v10 = v8;
  __chkstk_darwin(v2);
  v26 = (&v7 - v10);
  v36 = &v7 - v10;
  v35 = v3;
  v14 = type metadata accessor for SystemVersionList();
  v4 = v15 + *(v14 + 20);
  v11 = *v4;
  v12 = *(v4 + 8);
  sub_31C0(v11, v12 & 1);
  v33 = v11;
  v34 = v12 & 1;
  sub_2124(&qword_30AE8, &qword_27B40);
  sub_255D0();
  v13 = v32;
  sub_2B34(v11, v12 & 1);
  v18 = sub_CA14();

  v5 = (v15 + *(v14 + 24));
  v16 = *v5;
  v17 = *(v5 + 1);

  v30 = v16;
  v31 = v17;
  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259E0();
  v19 = v27;
  v20 = v28;
  v21 = v29;

  sub_1578C(v18, v19, v20, v21 & 1, v25);
  v24 = sub_969C();
  sub_2B7C(v25, v23, v26);
  sub_C040(v25);
  sub_C1C0(v26, v25);
  sub_3208(v25, v23, v22);
  sub_C040(v25);
  return sub_C040(v26);
}

uint64_t sub_9404@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_25BF0("OSName Version", 0xEuLL, 1);
  sub_25750();
  v5 = *sub_242E8();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_25840();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_2B7C(v14, &type metadata for Text, &v24);
  sub_BCC0(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_BF2C(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_3208(&v11, &type metadata for Text, a1);
  sub_BCC0(&v11);
  return sub_BCC0(&v24);
}

uint64_t sub_95D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
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
  v11 = (*(*(a3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(a1);
  v13 = &v10 - v11;
  v8(v7);
  return sub_25A60();
}

unint64_t sub_969C()
{
  v2 = qword_30B48;
  if (!qword_30B48)
  {
    type metadata accessor for InstalledSoftwareView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_971C()
{
  v2 = qword_30B50;
  if (!qword_30B50)
  {
    sub_2C88(&qword_30B38, &qword_27BE8);
    sub_969C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B50);
    return WitnessTable;
  }

  return v2;
}

char *sub_97CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v16 = a1;
  v13 = a2;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v12 = 0;
  v21 = type metadata accessor for InstalledSoftwareView();
  v10 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v16);
  v23 = &v9 - v10;
  v11 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v24 = (&v9 - v11);
  v32 = &v9 - v11;
  v31 = v5;
  v30 = v6;

  v7 = (v13 + *(type metadata accessor for SystemVersionList() + 28));
  v14 = *v7;
  v15 = *(v7 + 1);

  v28 = v14;
  v29 = v15;
  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259E0();
  v17 = v25;
  v18 = v26;
  v19 = v27;

  sub_1578C(v16, v17, v18, v19 & 1, v23);
  v22 = sub_969C();
  sub_2B7C(v23, v21, v24);
  sub_C040(v23);
  sub_C1C0(v24, v23);
  sub_3208(v23, v21, v20);
  sub_C040(v23);
  return sub_C040(v24);
}

uint64_t sub_99A0@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_25BF0("Background Security Improvement", 0x1FuLL, 1);
  sub_25750();
  v5 = *sub_242E8();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_25840();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_2B7C(v14, &type metadata for Text, &v24);
  sub_BCC0(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_BF2C(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_3208(&v11, &type metadata for Text, a1);
  sub_BCC0(&v11);
  return sub_BCC0(&v24);
}

uint64_t sub_9B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v24 = a1;
  v30 = sub_BC40;
  v53 = 0;
  v52 = 0;
  v20 = 0;
  v12 = *(type metadata accessor for SystemVersionList() - 8);
  v25 = v12;
  v26 = *(v12 + 64);
  v13 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v28 = &v12 - v13;
  v34 = sub_25640();
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v14 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v33 = &v12 - v14;
  v38 = sub_2124(&qword_30B80, &qword_27C10);
  v15 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v24);
  v40 = &v12 - v15;
  v16 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v41 = &v12 - v16;
  v53 = &v12 - v16;
  v52 = v4;
  *(v23 + 1) = 1;
  sub_25BF0("Background Security Improvements can be [managed in Settings](settings-navigation://com.apple.Settings.PrivacyAndSecurity/BACKGROUND_SECURITY_IMPROVEMENTS).", 0x9CuLL, 1);
  v22 = sub_25750();
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v21 = *sub_242E8();
  v21;
  v49 = 0;
  v50 = 0;
  v51 = v23[0] & 0x100;
  v45 = sub_25840();
  v46 = v8;
  v47 = v9;
  v48 = v10;
  v36 = v42;
  v42[0] = v45;
  v42[1] = v8;
  v43 = v9 & 1 & HIBYTE(v23[0]);
  v44 = v10;
  KeyPath = swift_getKeyPath();
  sub_7C00(v24, v28);
  v27 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v29 = swift_allocObject();
  sub_8020(v28, v29 + v27);
  sub_25630();
  sub_258E0();
  (*(v31 + 8))(v33, v34);

  sub_BCC0(v36);
  v39 = sub_A7A8();
  sub_2B7C(v40, v38, v41);
  sub_BD08(v40);
  sub_BDDC(v41, v40);
  sub_3208(v40, v38, v37);
  sub_BD08(v40);
  return sub_BD08(v41);
}

uint64_t sub_9FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = sub_25640();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v3 - v4;
  v14 = sub_256D0();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  sub_256B0();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_A184(uint64_t a1)
{
  v3 = a1;
  v1 = sub_25640();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return sub_256C0();
}

uint64_t sub_A23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v22 = a2;
  v38 = 0;
  v37 = 0;
  v19 = sub_2124(&qword_30AF8, &unk_27B80);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v10[-v20];
  v23 = sub_25640();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v27 = &v10[-v26];
  v38 = a1;
  v37 = v4;
  v29 = sub_253E0();
  v30 = v5;

  v28 = sub_25BF0("settings-navigation", 0x13uLL, 1);
  v31 = v6;

  v35[0] = v29;
  v35[1] = v30;
  *&v36 = v28;
  *(&v36 + 1) = v31;
  if (v30)
  {
    sub_BFD4(v35, &v34);
    if (*(&v36 + 1))
    {
      v13 = &v33;
      v33 = v34;
      v14 = v35;
      v12 = &v32;
      v32 = v36;
      v15 = sub_25C00();
      sub_C014(v12);
      sub_C014(v13);
      sub_BFA8(v14);
      v16 = v15;
      goto LABEL_7;
    }

    sub_C014(&v34);
    goto LABEL_9;
  }

  if (*(&v36 + 1))
  {
LABEL_9:
    sub_BF70(v35);
    v16 = 0;
    goto LABEL_7;
  }

  sub_BFA8(v35);
  v16 = 1;
LABEL_7:
  v11 = v16;

  if ((v11 & 1) == 0)
  {
    return sub_25610();
  }

  v7 = v21;
  v8 = type metadata accessor for SystemVersionList();
  sub_6178((v22 + *(v8 + 32)), v7);
  sub_255D0();
  sub_624C(v21);
  sub_25600();
  (*(v24 + 8))(v27, v23);
  return sub_25620();
}

uint64_t sub_A538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a7;
  v25 = a1;
  v26 = a2;
  v19 = a3;
  v18 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a8;
  v30 = a9;
  v20 = a10;
  v21 = a11;
  v33 = a5;
  v32 = a6;
  v31 = a8;
  v16 = (*(*(a8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v24 = &v16 - v16;
  v17 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(&v16 - v16);
  v23 = &v16 - v17;
  v14 = v13(v12);
  v19(v14);
  return sub_25A70();
}

unint64_t sub_A6F4()
{
  v2 = qword_30B70;
  if (!qword_30B70)
  {
    sub_2C88(&qword_30B58, &qword_27BF8);
    sub_969C();
    sub_A7A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_A7A8()
{
  v2 = qword_30B78;
  if (!qword_30B78)
  {
    sub_2C88(&qword_30B80, &qword_27C10);
    sub_A84C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_A84C()
{
  v2 = qword_30B88;
  if (!qword_30B88)
  {
    sub_2C88(&qword_30B90, &qword_27C18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_A8D4(uint64_t a1)
{
  v3 = sub_2124(&qword_30B60, &qword_27C00);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_A988(const void *a1, void *a2)
{
  v6 = sub_2124(&qword_30B60, &qword_27C00);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30B68, &qword_27C08);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_AABC(const void *a1, void *a2)
{
  v6 = sub_2124(&qword_30B60, &qword_27C00);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30B68, &qword_27C08);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_ABF0()
{
  v2 = qword_30B98;
  if (!qword_30B98)
  {
    sub_2C88(&qword_30B68, &qword_27C08);
    sub_2C88(&qword_30B58, &qword_27BF8);
    sub_A6F4();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_ACF8@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v48 = 0;
  v29 = 0;
  v15 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v30 = &v14 - v15;
  v23 = sub_25400();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v16 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v22 = &v14 - v16;
  v27 = sub_253A0();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v17 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v31 = &v14 - v17;
  v18 = (*(*(sub_25B70() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v28 = &v14 - v18;
  v38 = type metadata accessor for SystemVersionList();
  v19 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v40 = &v14 - v19;
  v48 = &v14 - v19;
  v36 = 1;
  sub_25BF0("OSName Version", 0xEuLL, 1);
  sub_25B10();
  v24 = *sub_242E8();
  v24;
  v32 = [v24 bundleURL];
  sub_253D0();
  (*(v20 + 32))(v31, v22, v23);

  (*(v25 + 104))(v31, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v27);
  sub_5518();
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = v36 & 1;
  sub_253C0();

  v33 = *(v38 + 20);
  swift_getKeyPath();
  sub_255F0();
  v1 = v36;
  v2 = v38;
  v3 = v43;
  v4 = v40 + v33;
  *v4 = v42;
  *(v4 + 8) = v3 & 1 & v1;
  v34 = *(v2 + 24);
  v35 = 0;
  v5 = sub_5AB4();
  v6 = v38;
  v7 = v40 + v34;
  *v7 = v5 & v36;
  *(v7 + 8) = v8;
  v37 = *(v6 + 28);
  v9 = sub_5DCC();
  v10 = v38;
  v11 = v40 + v37;
  *v11 = v9 & v36;
  *(v11 + 8) = v12;
  v39 = *(v10 + 32);
  swift_getKeyPath();
  sub_255F0();
  return sub_8020(v40, v41);
}

uint64_t sub_B210(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v11 = sub_253B0();
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1, a2, v11);
  }

  else if (a2 == 2147483646)
  {
    v6 = -1;
    if (*(a1 + *(a3 + 24) + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + *(a3 + 24) + 8);
    }

    v3 = v6 - 1;
    if (v6 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = sub_2124(&qword_30AF8, &unk_27B80);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 32), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v7;
}

uint64_t sub_B404(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_253B0();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    result = sub_2124(&qword_30AF8, &unk_27B80);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + *(a4 + 32), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_B5A0()
{
  v5 = sub_253B0();
  if (v0 <= 0x3F)
  {
    v5 = sub_B6E4();
    if (v1 <= 0x3F)
    {
      v5 = sub_B780();
      if (v2 <= 0x3F)
      {
        v5 = sub_B814();
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

uint64_t sub_B6E4()
{
  v4 = qword_30BF8;
  if (!qword_30BF8)
  {
    type metadata accessor for SystemUpdateCoordinator();
    v3 = sub_255E0();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_30BF8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_B780()
{
  v4 = qword_30C00;
  if (!qword_30C00)
  {
    v3 = sub_259F0();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_30C00);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_B814()
{
  v4 = qword_30C08;
  if (!qword_30C08)
  {
    sub_25640();
    v3 = sub_255E0();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_30C08);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_B8C4()
{
  sub_2C88(&qword_30B10, &qword_27BD0);
  sub_2C88(&qword_30B08, &qword_27BC8);
  sub_2C88(&qword_30B00, &qword_27BC0);
  sub_90D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_B9D0()
{
  sub_2C88(&qword_30B38, &qword_27BE8);
  sub_971C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_BA58()
{
  v11 = type metadata accessor for SystemVersionList();
  v1 = *(*(v11 - 1) + 80);
  v10 = (v1 + 16) & ~v1;
  v9 = v10 + *(*(v11 - 1) + 64);
  v2 = sub_253B0();
  (*(*(v2 - 8) + 8))();
  sub_2B34(*(v0 + v10 + v11[5]), *(v0 + v10 + v11[5] + 8) & 1);
  v3 = *(v0 + v10 + v11[6] + 8);

  v4 = *(v0 + v10 + v11[7] + 8);

  v12 = v11[8];
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 8))(v8 + v10 + v12);
  }

  else
  {
    v5 = *(v8 + v10 + v12);
  }

  return swift_deallocObject();
}

uint64_t sub_BC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for SystemVersionList();
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_A23C(a1, v4, a2);
}

uint64_t sub_BCC0(uint64_t a1)
{
  sub_9158(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  return a1;
}

uint64_t sub_BD08(uint64_t a1)
{
  sub_9158(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  v5 = (a1 + *(sub_2124(&qword_30B80, &qword_27C10) + 36));
  v2 = *v5;

  v6 = *(sub_2124(&qword_30B90, &qword_27C18) + 28);
  v3 = sub_25640();
  (*(*(v3 - 8) + 8))(&v5[v6]);
  return a1;
}

uint64_t sub_BDDC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_BF2C(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = *(a1 + 24);

  *(a2 + 24) = v7;
  v9 = *(sub_2124(&qword_30B80, &qword_27C10) + 36);
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  v11 = *(sub_2124(&qword_30B90, &qword_27C18) + 28);
  v2 = sub_25640();
  (*(*(v2 - 8) + 16))(a2 + v9 + v11, a1 + v9 + v11);
  return a2;
}

uint64_t sub_BF2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_BF70(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t sub_BFA8(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

void *sub_BFD4(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_C014(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

char *sub_C040(char *a1)
{
  v1 = *a1;

  v2 = *(a1 + 1);

  v3 = *(a1 + 2);

  v8 = type metadata accessor for InstalledSoftwareView();
  v9 = *(v8 + 24);
  v11 = sub_25400();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(&a1[v9], 1))
  {
    (*(v12 + 8))(&a1[v9], v11);
  }

  v7 = &a1[*(v8 + 28)];
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_25640();
    (*(*(v5 - 8) + 8))(v7);
  }

  else
  {
    v4 = *v7;
  }

  return a1;
}

uint64_t sub_C1C0(uint64_t *a1, uint64_t a2)
{
  v8 = *a1;

  *a2 = v8;
  v9 = a1[1];

  *(a2 + 8) = v9;
  v10 = a1[2];

  *(a2 + 16) = v10;
  *(a2 + 24) = *(a1 + 24);
  v12 = type metadata accessor for InstalledSoftwareView();
  v13 = *(v12 + 24);
  v15 = sub_25400();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1 + v13, 1))
  {
    v2 = sub_2124(&qword_30AE0, &unk_28050);
    memcpy((a2 + v13), a1 + v13, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))();
    (*(v16 + 56))(a2 + v13, 0, 1, v15);
  }

  v6 = (a2 + *(v12 + 28));
  v7 = (a1 + *(v12 + 28));
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_25640();
    (*(*(v3 - 8) + 16))(v6, v7);
  }

  else
  {
    v5 = *v7;

    *v6 = v5;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_C460(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

unint64_t sub_C570()
{
  v2 = qword_30C60;
  if (!qword_30C60)
  {
    sub_2C88(&qword_30C58, &unk_27E20);
    sub_2C88(&qword_30B40, &qword_27BF0);
    sub_2C88(&qword_30B38, &qword_27BE8);
    sub_971C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30C60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_C6B4(uint64_t a1)
{
  v1 = sub_2124(&qword_30C50, &qword_27E18);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_C71C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2124(&qword_30C50, &qword_27E18);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_2124(&qword_30C58, &unk_27E20);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_C7C8()
{
  v0 = sub_2124(&qword_30C70, &qword_27E30);
  v4 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v8 = &v4 - v4;
  v9 = 0;
  type metadata accessor for InstalledSoftware();
  v5 = 1;
  v6 = sub_25BF0("", v9, 1);
  v7 = v1;
  v2 = sub_25440();
  (*(*(v2 - 8) + 56))(v8, v5);
  return sub_2219C(0, v6, v7, v8, v9, 0xF000000000000000);
}

uint64_t sub_C8E0()
{
  v2 = (v0 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_C948(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_C9CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_CA14()
{
  KeyPath = swift_getKeyPath();
  sub_CDA4(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS);
  swift_beginAccess();
  v4 = *v3;

  swift_endAccess();
  return v4;
}

void sub_CAA8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = sub_CA14();
}

void sub_CB14(uint64_t *a1, id *a2)
{
  v2 = *a1;

  v4 = *a2;
  *a2;
  sub_CB98(v2);
}

uint64_t sub_CB98(uint64_t a1)
{
  v21 = a1;
  v20 = 0;
  v26 = 0;
  v17 = 0;
  v27 = a1;
  v18 = (v1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS);
  v19 = &v25;
  swift_beginAccess();
  v22 = *v18;

  swift_endAccess();
  type metadata accessor for InstalledSoftware();
  v23 = sub_CF14();

  if (v23)
  {
    v2 = v16;
    v3 = v17;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;
    v4 = v16;

    v14 = v10;
    v5 = __chkstk_darwin(KeyPath);
    v9[2] = v2;
    v9[3] = v6;
    sub_D04C(v5, sub_D020, v9, &type metadata for () + 8, &type metadata for ());
    v15 = v3;

    v11 = v15;
  }

  else
  {

    v10[0] = &v16[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS];
    v10[1] = &v24;
    swift_beginAccess();
    v7 = *v10[0];
    *v10[0] = v21;

    swift_endAccess();
    v11 = v17;
  }
}

uint64_t sub_CDA4(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_25500();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v1 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v7);
  v11 = &v5 - v3;
  v16 = v2;
  v15 = *(v5 + class metadata base offset for KeyPath + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v3, v6 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar);
  v8 = &v13;
  v13 = v6;
  sub_D264();
  sub_254C0();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_CF14()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_25F20();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t sub_CF8C(uint64_t a1, uint64_t a2)
{

  v6 = (a1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS);
  swift_beginAccess();
  v2 = *v6;
  *v6 = a2;

  return swift_endAccess();
}

uint64_t sub_D04C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_25500();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v19);
  v16 = v11 - v7;
  v32 = v6;
  v31 = *(v14 + class metadata base offset for KeyPath + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v7, v17 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar);
  v24 = &v27;
  v27 = v17;
  sub_D264();
  v9 = v23;
  sub_254B0();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

unint64_t sub_D264()
{
  v2 = qword_30C80;
  if (!qword_30C80)
  {
    type metadata accessor for SystemUpdateCoordinator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30C80);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for SystemUpdateCoordinator()
{
  v1 = qword_317A0;
  if (!qword_317A0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void (*sub_D358(void *a1))(void **a1, char a2)
{
  v8 = sub_D5A4(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_25500();
  v5 = *(v7 - 8);
  v6 = sub_D5A4(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_CDA4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_D264();
  sub_254E0();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_D518;
}

void sub_D518(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_D5F8(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_D5F8(v4);
    free(v5);
  }

  free(v6);
}

void *sub_D5A4(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t sub_D5F8(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_25500();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_D264();
  sub_254D0();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_D744()
{
  v2 = (v0 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_D7AC(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_D82C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_D86C()
{
  KeyPath = swift_getKeyPath();
  sub_CDA4(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate);
  swift_beginAccess();
  v4 = *v3;

  swift_endAccess();
  return v4;
}

void sub_D900(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = sub_D86C();
}

void sub_D96C(uint64_t *a1, id *a2)
{
  sub_1531C(a1, &v5);
  v4 = v5;
  v3 = *a2;
  *a2;
  sub_D9E4(v4);
}

uint64_t sub_D9E4(uint64_t a1)
{
  v21 = a1;
  v28 = 0;
  v17 = 0;
  v29 = a1;
  v18 = (v1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate);
  v19 = &v27;
  swift_beginAccess();
  v20 = *v18;

  swift_endAccess();
  v26 = v20;
  v25 = v21;
  sub_2124(&qword_30C90, &qword_27E88);
  v22 = &v26;
  v23 = sub_DC0C();
  sub_DC3C(&v26);
  if (v23)
  {
    v2 = v16;
    v3 = v17;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;
    v4 = v16;

    v14 = v10;
    v5 = __chkstk_darwin(KeyPath);
    v9[2] = v2;
    v9[3] = v6;
    sub_D04C(v5, sub_DCF8, v9, &type metadata for () + 8, &type metadata for ());
    v15 = v3;

    v11 = v15;
  }

  else
  {

    v10[0] = &v16[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate];
    v10[1] = &v24;
    swift_beginAccess();
    v7 = *v10[0];
    *v10[0] = v21;

    swift_endAccess();
    v11 = v17;
  }
}

uint64_t *sub_DC3C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_DC68(uint64_t a1, uint64_t a2)
{

  v5 = (a1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate);
  swift_beginAccess();
  v2 = *v5;
  *v5 = a2;

  return swift_endAccess();
}

void (*sub_DD24(void *a1))(void **a1, char a2)
{
  v8 = sub_D5A4(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_25500();
  v5 = *(v7 - 8);
  v6 = sub_D5A4(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_CDA4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_D264();
  sub_254E0();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_DEE4;
}

void sub_DEE4(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_DF70(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_DF70(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_DF70(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_25500();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_D264();
  sub_254D0();

  return (*(v7 + 8))(v9, v10);
}

void *sub_E0AC()
{
  v2 = *(v0 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator_suClient);
  v2;
  return v2;
}

void *sub_E0F4()
{
  v2 = *(v0 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator_clientQueue);
  v2;
  return v2;
}

char *sub_E164()
{
  v10 = "Fatal error";
  v11 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v12 = "SystemVersionSettings/SystemUpdateCoordinator.swift";
  ObjectType = swift_getObjectType();
  v38 = 0;
  v35 = 0;
  v14 = (*(*(sub_25D30() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v29 = &v8 - v14;
  v15 = (*(*(sub_25D20() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v28 = &v8 - v15;
  v1 = sub_25AB0();
  v16 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v27 = &v8 - v16;
  v17 = (*(*(sub_2124(&qword_30C70, &qword_27E30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v20 = &v8 - v17;
  v38 = v0;
  type metadata accessor for InstalledSoftware();
  v34 = 1;
  v18 = sub_25BF0("", v35, 1);
  v19 = v2;
  v3 = sub_25440();
  (*(*(v3 - 8) + 56))(v20, v34);
  v22 = sub_2219C(0, v18, v19, v20, v35, 0xF000000000000000);
  v21 = v38;
  swift_getObjectType();
  sub_C9CC(v22, &v21[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS]);
  v23 = v38;
  swift_getObjectType();
  v24 = &SystemVersionSettingsController__metaData;
  sub_D82C(v35, &v23[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate]);
  *&v38[v24[44].base_prots] = v35;
  sub_254F0();
  v30 = v38;
  sub_E5EC();
  v25 = sub_25BF0("com.apple.SoftwareUpdateUI.SystemVersionSettings.SystemUpdateCoordinator.clientQueue", 0x54uLL, v34 & 1);
  v26 = v4;
  sub_25AA0();
  sub_E668();
  sub_E708(v29);
  v5 = sub_25D40();
  v32 = &SystemVersionSettingsController__metaData;
  *&v30[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator_clientQueue] = v5;
  v31 = v38;
  sub_E774();
  v33 = *&v38[v32[44].base_props];
  v33;
  v36 = sub_E7D8(v35, v33);
  if (v36)
  {
    v9 = v36;
  }

  else
  {
    sub_25E80();
    __break(1u);
  }

  v6 = ObjectType;
  *&v31[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator_suClient] = v9;
  v37.receiver = v38;
  v37.super_class = v6;
  v8 = objc_msgSendSuper2(&v37, "init");
  v8;
  v38 = v8;
  sub_E828();

  return v8;
}

unint64_t sub_E5EC()
{
  v2 = qword_30CA8;
  if (!qword_30CA8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_30CA8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_E668()
{
  sub_126AC(0);
  sub_25D20();
  sub_15214();
  sub_2124(&qword_30D98, &unk_28030);
  sub_15294();
  return sub_25E40();
}

uint64_t sub_E708@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v1 = sub_25D30();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

unint64_t sub_E774()
{
  v2 = qword_30CB0;
  if (!qword_30CB0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_30CB0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_E828()
{
  v10 = &unk_27EA0;
  v13 = 0;
  v1 = sub_2124(&qword_30CB8, &qword_27E90);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v8 - v8;
  v13 = v0;
  v9 = 0;
  v2 = sub_25CF0();
  (*(*(v2 - 8) + 56))(v11, 1);
  v0;
  v3 = swift_allocObject();
  v4 = v9;
  v5 = v10;
  v6 = v11;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v0;
  v12 = sub_115E0(v4, v4, v6, v5, v3, &type metadata for () + 8);
  sub_11B70(v11);
}

uint64_t sub_E9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[9] = 0;
  v7 = *(*(sub_2124(&qword_30C70, &qword_27E30) - 8) + 64);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[3] = a4;
  v5 = v4[2];

  return _swift_task_switch(sub_EAD4, 0);
}

uint64_t sub_EAD4()
{
  *(v0 + 16) = v0;
  v1 = objc_opt_self();
  *(v0 + 32) = 0;
  v46 = [v1 documentationDataForInstalledUpdateType:0 error:v0 + 32];
  v45 = *(v0 + 32);
  v45;

  if (v46)
  {
    v43 = v46;
  }

  else
  {
    sub_25390();

    swift_willThrow();

    v43 = 0;
  }

  v44[13] = v43;
  v40 = v44[12];
  v2 = v44[10];
  v44[5] = v43;
  type metadata accessor for InstalledSoftware();
  v38 = sub_F960(0);
  v39 = v3;
  v41 = sub_25440();
  v42 = *(*(v41 - 8) + 56);
  v42(v40, 1);
  v43;
  if (v43)
  {
    v37 = [v43 readmeSummary];
    if (v37)
    {
      v31 = sub_25410();
      v32 = v4;

      v33 = v31;
      v34 = v32;
    }

    else
    {
      v33 = 0;
      v34 = 0xF000000000000000;
    }

    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0xF000000000000000;
  }

  v29 = sub_2219C(0, v38, v39, v44[12], v35, v36);
  v44[14] = v29;
  v44[6] = v29;
  v30 = swift_allocObject();
  v44[15] = v30;
  v44[7] = v30 + 16;
  *(v30 + 16) = 0;
  if ([objc_opt_self() isSplatOnlyUpdateInstalled])
  {
    v5 = objc_opt_self();
    v44[8] = 0;
    v28 = [v5 documentationDataForInstalledUpdateType:1 error:v44 + 8];
    v27 = v44[8];
    v27;

    if (v28)
    {
      v26 = v28;
    }

    else
    {
      sub_25390();

      swift_willThrow();

      v26 = 0;
    }

    v23 = v44[11];
    v6 = v44[10];
    v44[9] = v26;
    v24 = sub_F960(1u);
    v25 = v7;
    (v42)(v23, 1, 1, v41);
    v26;
    if (v26)
    {
      v22 = [v26 readmeSummary];
      if (v22)
      {
        v16 = sub_25410();
        v17 = v8;

        v18 = v16;
        v19 = v17;
      }

      else
      {
        v18 = 0;
        v19 = 0xF000000000000000;
      }

      v20 = v18;
      v21 = v19;
    }

    else
    {
      v20 = 0;
      v21 = 0xF000000000000000;
    }

    v9 = sub_2219C(1, v24, v25, v44[11], v20, v21);
    v10 = *(v30 + 16);
    *(v30 + 16) = v9;
  }

  v13 = v44[10];
  sub_25CD0();
  v13;

  v14 = swift_task_alloc();
  v44[16] = v14;
  v14[2] = v13;
  v14[3] = v29;
  v14[4] = v30;
  sub_113C0();
  v15 = swift_task_alloc();
  v44[17] = v15;
  *v15 = v44[2];
  v15[1] = sub_F324;

  return sub_113D4(v12, &type metadata for () + 8, sub_130B8, v14);
}

uint64_t sub_F324()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  *(v2 + 16) = *v1;
  v12 = (v2 + 16);
  v13 = (v2 + 16);

  if (v0)
  {
    v5 = sub_F64C;
    v7 = *v13;
  }

  else
  {
    v4 = v12[14];
    v11 = v12[13];
    v10 = v12[12];
    v9 = v12[8];

    v5 = sub_F52C;
    v6 = *v13;
  }

  return _swift_task_switch(v5, 0);
}

uint64_t sub_F52C()
{
  v1 = v0[15];
  v5 = v0[14];
  v6 = v0[13];
  v7 = v0[12];
  v8 = v0[11];
  v0[2] = v0;

  v2 = *(v0[2] + 8);
  v3 = v0[2];

  return v2();
}

uint64_t sub_F64C()
{
  v1 = v0[16];
  v5 = v0[15];
  v4 = v0[14];
  v3 = v0[10];
  v0[2] = v0;
}

uint64_t sub_F710()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_F760(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_F838;

  return sub_E9A4(a1, v6, v7, v8);
}

uint64_t sub_F838()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_F960(unsigned int a1)
{
  v71 = a1;
  v63 = "Fatal error";
  v64 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v65 = "SystemVersionSettings/SystemUpdateCoordinator.swift";
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v94 = 0;
  v95 = 0;
  v86 = 0;
  v87 = 0;
  v68 = 0;
  v66 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v67 = &v12 - v66;
  v69 = (*(*(sub_25B70() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v68);
  v70 = &v12 - v69;
  v72 = sub_25B50();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v71);
  v76 = &v12 - v75;
  v77 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v78 = &v12 - v77;
  v79 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v80 = &v12 - v79;
  v100 = v6 & 1;
  v99 = v1;
  v81 = _CFCopySystemVersionDictionary();
  if (v81)
  {
    v62 = v81;
    v60 = v81;
    v81;
    v61 = v60;
  }

  else
  {
    v61 = 0;
  }

  v59 = v61;
  if (v61)
  {
    v58 = v59;
    v56 = v59;
    objc_opt_self();
    v57 = swift_dynamicCastObjCClass();
    if (v57)
    {
      v55 = v57;
      v54 = sub_2124(&qword_30CC8, &qword_27EA8);
      v55;
      sub_11D30();
      sub_25F30();

      if (v82)
      {
        v53 = v82;
LABEL_9:
        v52 = v53;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v53 = 0;
    goto LABEL_9;
  }

  v52 = 0;
LABEL_10:
  v51 = v52;
  if (!v52)
  {
    goto LABEL_24;
  }

  v50 = v51;
  v48 = v51;
  v98 = v51;
  v49 = _kCFSystemVersionShortVersionStringKey;
  _kCFSystemVersionShortVersionStringKey;
  if (v49)
  {
    v47 = v49;
  }

  else
  {
    sub_25E80();
    __break(1u);
  }

  v43 = v96;
  v96[0] = v47;
  v42 = type metadata accessor for CFString();
  v44 = sub_11CB0();
  sub_25AE0();

  v45 = v96[1];
  v46 = v97;
  if (!v97)
  {

LABEL_24:
    v31 = sub_25BF0("", 0, 1);
    v32 = v10;
    return v31;
  }

  v40 = v45;
  v41 = v46;
  v35 = v46;
  v36 = v45;
  v94 = v45;
  v95 = v46;
  sub_25BF0("ProductBuildVersion", 0x13uLL, 1);
  v37 = v7;
  v91 = sub_25B80();
  sub_25AE0();

  v38 = v92;
  v39 = v93;
  if (v93)
  {
    v33 = v38;
    v34 = v39;
    v28 = v39;
    v24 = v38;
    v86 = v38;
    v87 = v39;

    v22 = 2;
    sub_25B40();
    *&v26[1] = 1;
    v101._countAndFlagsBits = sub_25BF0("OSName ", 7uLL, 1);
    object = v101._object;
    sub_25B30(v101);

    v102._countAndFlagsBits = v36;
    v102._object = v35;
    sub_25B20(v102);
    v103._countAndFlagsBits = sub_25BF0(" (", v22, v26[1] & 1);
    v23 = v103._object;
    sub_25B30(v103);

    v104._countAndFlagsBits = v24;
    v104._object = v28;
    sub_25B20(v104);
    v105._countAndFlagsBits = sub_25BF0(")", 1uLL, v26[1] & 1);
    v25 = v105._object;
    sub_25B30(v105);

    (*(v73 + 16))(v78, v80, v72);
    (*(v73 + 32))(v76, v78, v72);
    (*(v73 + 8))(v80, v72);
    sub_25B60();
    v27 = *sub_242E8();
    v27;
    sub_3A00();
    v83 = 0;
    v84 = 0;
    v85 = *v26 & 0x100;
    v29 = sub_25BA0();
    v30 = v8;

    v31 = v29;
    v32 = v30;
  }

  else
  {

    v13 = 7;
    sub_25B40();
    *&v16[1] = 1;
    v106._countAndFlagsBits = sub_25BF0("OSName ", v13, 1);
    v14 = v106._object;
    sub_25B30(v106);

    v107._countAndFlagsBits = v36;
    v107._object = v35;
    sub_25B20(v107);
    v17 = 0;
    v108._countAndFlagsBits = sub_25BF0("", 0, v16[1] & 1);
    v15 = v108._object;
    sub_25B30(v108);

    (*(v73 + 16))(v78, v80, v72);
    (*(v73 + 32))(v76, v78, v72);
    (*(v73 + 8))(v80, v72);
    sub_25B60();
    v18 = *sub_242E8();
    v18;
    sub_3A00();
    v88 = 0;
    v89 = 0;
    v90 = *v16 & 0x100;
    v19 = sub_25BA0();
    v20 = v9;

    v31 = v19;
    v32 = v20;
  }

  return v31;
}

uint64_t sub_1050C(char *a1, uint64_t a2, uint64_t a3)
{
  v86 = a1;
  v99 = a2;
  v89 = a3;
  v88 = 0;
  v98 = sub_130E8;
  v101 = sub_13130;
  v105 = sub_14F50;
  v107 = sub_14ED4;
  v109 = sub_14F08;
  v112 = sub_14F9C;
  v76 = sub_14FA8;
  v77 = sub_15058;
  v78 = sub_14FDC;
  v79 = sub_15010;
  v80 = sub_150A4;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v95 = sub_255C0();
  v93 = *(v95 - 8);
  v94 = v95 - 8;
  v81 = (v93[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v82 = v38 - v81;
  v83 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38 - v81);
  v92 = v38 - v83;
  v131 = a1;
  v130 = v5;
  v87 = v6 + 16;
  v129 = v6 + 16;
  v85 = *&a1[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator_suClient];
  v85;
  a1;
  v84 = a1;
  [v85 setDelegate:?];
  swift_unknownObjectRelease();

  sub_CB98(v99);
  v90 = &v128;
  v102 = 32;
  swift_beginAccess();
  v91 = *(v89 + 16);

  swift_endAccess();
  sub_D9E4(v91);
  v7 = v92;
  v8 = sub_21358();
  v96 = v93[2];
  v97 = v93 + 2;
  v96(v7, v8, v95);

  v103 = 7;
  v9 = swift_allocObject();
  v10 = v99;
  v104 = v9;
  *(v9 + 16) = v98;
  *(v9 + 24) = v10;

  v116 = sub_255A0();
  v117 = sub_25D00();
  v100 = 17;
  v108 = swift_allocObject();
  *(v108 + 16) = 32;
  v110 = swift_allocObject();
  *(v110 + 16) = 8;
  v11 = swift_allocObject();
  v12 = v104;
  v106 = v11;
  *(v11 + 16) = v101;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v106;
  v113 = v13;
  *(v13 + 16) = v105;
  *(v13 + 24) = v14;
  v115 = sub_2124(&qword_30D78, &qword_28018);
  v111 = sub_25F00();
  v114 = v15;

  v16 = v108;
  v17 = v114;
  *v114 = v107;
  v17[1] = v16;

  v18 = v110;
  v19 = v114;
  v114[2] = v109;
  v19[3] = v18;

  v20 = v113;
  v21 = v114;
  v114[4] = v112;
  v21[5] = v20;
  sub_3AB0();

  if (os_log_type_enabled(v116, v117))
  {
    v68 = sub_25D80();
    v67 = sub_2124(&qword_30D80, &qword_28020);
    v69 = sub_124AC(0);
    v70 = sub_124AC(1);
    v71 = &v122;
    v122 = v68;
    v72 = &v121;
    v121 = v69;
    v73 = &v120;
    v120 = v70;
    sub_12500(2, &v122);
    sub_12500(1, v71);
    v22 = v75;
    v118 = v107;
    v119 = v108;
    sub_12514(&v118, v71, v72, v73);
    v74 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v118 = v109;
      v119 = v110;
      sub_12514(&v118, &v122, &v121, &v120);
      v65 = 0;
      v118 = v112;
      v119 = v113;
      sub_12514(&v118, &v122, &v121, &v120);
      v64 = 0;
      _os_log_impl(&dword_0, v116, v117, "Installed OS: %s", v68, 0xCu);
      sub_12560(v69);
      sub_12560(v70);
      sub_25D60();

      v66 = v64;
    }
  }

  else
  {

    v66 = v75;
  }

  v23 = v82;
  v50 = v66;

  v51 = v93[1];
  v52 = v93 + 1;
  v51(v92, v95);
  v24 = sub_21358();
  v96(v23, v24, v95);

  v62 = sub_255A0();
  v63 = sub_25D00();
  v53 = 17;
  v55 = 7;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v58 = swift_allocObject();
  *(v58 + 16) = 8;
  v54 = 32;
  v25 = swift_allocObject();
  v26 = v89;
  v56 = v25;
  *(v25 + 16) = v76;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v56;
  v60 = v27;
  *(v27 + 16) = v77;
  *(v27 + 24) = v28;
  v59 = sub_25F00();
  v61 = v29;

  v30 = v57;
  v31 = v61;
  *v61 = v78;
  v31[1] = v30;

  v32 = v58;
  v33 = v61;
  v61[2] = v79;
  v33[3] = v32;

  v34 = v60;
  v35 = v61;
  v61[4] = v80;
  v35[5] = v34;
  sub_3AB0();

  if (os_log_type_enabled(v62, v63))
  {
    v43 = sub_25D80();
    v42 = sub_2124(&qword_30D80, &qword_28020);
    v44 = sub_124AC(0);
    v45 = sub_124AC(1);
    v46 = &v127;
    v127 = v43;
    v47 = &v126;
    v126 = v44;
    v48 = &v125;
    v125 = v45;
    sub_12500(2, &v127);
    sub_12500(1, v46);
    v36 = v50;
    v123 = v78;
    v124 = v57;
    sub_12514(&v123, v46, v47, v48);
    v49 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v123 = v79;
      v124 = v58;
      sub_12514(&v123, &v127, &v126, &v125);
      v40 = 0;
      v123 = v80;
      v124 = v60;
      sub_12514(&v123, &v127, &v126, &v125);
      v39 = 0;
      _os_log_impl(&dword_0, v62, v63, "Installed Security Update: %s", v43, 0xCu);
      sub_12560(v44);
      sub_12560(v45);
      sub_25D60();

      v41 = v39;
    }
  }

  else
  {

    v41 = v50;
  }

  v38[1] = v41;

  return (v51)(v82, v95);
}

uint64_t sub_11308@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1133C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);

  swift_endAccess();
  sub_2124(&qword_30C90, &qword_27E88);
  return sub_25BB0();
}

uint64_t sub_113D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a1;
  v5[2] = v5;
  v6 = v5[2];
  return _swift_task_switch(sub_11418, 0);
}

uint64_t sub_11418()
{
  v4 = v0[6];
  v0[2] = v0;
  v0[7] = sub_25CC0();
  v1 = sub_25CB0();
  v2 = v0[2];

  return _swift_task_switch(sub_114B0, v1);
}

uint64_t sub_114B0()
{
  v1 = v0[7];
  v2 = v0[5];
  v8 = v0[4];
  v7 = v0[3];
  v0[2] = v0;

  v8(v3);
  v4 = *(v0[2] + 8);
  v5 = v0[2];

  return v4();
}

uint64_t sub_115E0(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_28000;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(sub_2124(&qword_30CB8, &qword_27E90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v57 = &v16 - v53;

  v63 = v55;
  v64 = v56;
  sub_12384(v54, v57);
  v58 = sub_25CF0();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_11B70(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_25CE0();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1000;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_25CB0();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v26 = sub_25BD0();
    v8 = *(v26 + 16);
    sub_1279C(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v25 = v61;

    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v24 = v27;
  if (v27)
  {
    v18 = v24;
    v19 = v24;
  }

  else
  {

    v20 = v63;
    v21 = v64;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v31;
    v13 = v30;
    v22 = v9;
    v9[2] = v47;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v23 = v62;
    }

    v19 = swift_task_create();
  }

  sub_12E00();
  v17 = v14;

  return v17;
}

uint64_t sub_11B70(uint64_t a1)
{
  v3 = sub_25CF0();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t type metadata accessor for CFString()
{
  v4 = qword_30D60;
  if (!qword_30D60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_30D60);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_11CB0()
{
  v2 = qword_30CC0;
  if (!qword_30CC0)
  {
    type metadata accessor for CFString();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30CC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_11D30()
{
  v2 = qword_30CD0;
  if (!qword_30CD0)
  {
    sub_2C88(&qword_30CC8, &qword_27EA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30CD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_11DB8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar;
  v2 = sub_25500();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

id sub_11EFC()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_12038()
{
  v2 = sub_25500();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

id sub_12140(uint64_t a1, void *a2)
{
  v5 = [v2 initWithDelegate:a1 queue:? clientType:?];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_121A4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_25530();
}

uint64_t sub_121F8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_25520();
}

uint64_t sub_12268(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;
  swift_getWitnessTable();
  return sub_25510() & 1;
}

unint64_t sub_12304()
{
  v2 = qword_30D68;
  if (!qword_30D68)
  {
    type metadata accessor for CFString();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30D68);
    return WitnessTable;
  }

  return v2;
}

void *sub_12384(const void *a1, void *a2)
{
  v6 = sub_25CF0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30CB8, &qword_27E90);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_124AC(uint64_t a1)
{
  if (a1)
  {
    return sub_25D80();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_12500(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_12560(uint64_t a1)
{
  if (a1)
  {
    sub_25D70();
    sub_25D60();
  }
}

uint64_t sub_125C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_25EB0();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_126AC(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_25D20();
      v3 = sub_25C90();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = &_swiftEmptyArrayStorage;
    }

    v1 = sub_25D20();
    result = v4;
    v2 = &v4[(*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)];
  }

  return result;
}

uint64_t sub_1279C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_25E80();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_1295C(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_12A70;

  return v7(a1);
}

uint64_t sub_12A70()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_12B9C()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_12BE4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_12CD8;

  return sub_1295C(a1, v6);
}

uint64_t sub_12CD8()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_12E14()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_12E5C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_12F50;

  return sub_1295C(a1, v6);
}

uint64_t sub_12F50()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_13078()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_130F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_13130()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for InstalledSoftware();
  v1 = sub_1318C();

  return sub_125C8(v5, v3, v4, v1);
}

unint64_t sub_1318C()
{
  v2 = qword_30D70;
  if (!qword_30D70)
  {
    type metadata accessor for InstalledSoftware();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30D70);
    return WitnessTable;
  }

  return v2;
}

void *sub_13234(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_132D0(v4, v5, a3);
  v8 = *a1;

  sub_25DA0();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_132D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_13474(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_15150(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_150B0(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_15150(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_150B0(v13);
  }

  return v11;
}

uint64_t sub_13474(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_25E80();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1382C(v22, v17, v16);
        sub_25DB0();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_139A8(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_25E70();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_25E80();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_1382C(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_25E90();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_25E90();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_139A8(uint64_t a1, uint64_t a2)
{
  v7 = sub_13A64(a1, a2);
  sub_2124(&qword_30D88, &qword_28028);
  inited = swift_initStackObject();
  v3 = sub_14274(inited, 1);
  *v4 = 0;
  sub_142C0();
  sub_142F4(v3);

  v8 = sub_1469C(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_13A64(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_25C10();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_14BBC();
  }

  v10 = sub_146B4(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_25E90();
    __break(1u);
    return sub_14BBC();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_147F8(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_25E70();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_147F8(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_25E60();
  if (v2)
  {
LABEL_29:
    sub_25E80();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_25E80();
    __break(1u);
  }

  sub_151E8(v17);
  return v10;
}

uint64_t sub_14274(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_142F4(uint64_t a1)
{
  v20 = sub_1469C(a1);
  v2 = sub_1469C(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = sub_14BF8(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    sub_25E90();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_14D64(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    sub_25E80();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    sub_25E80();
    __break(1u);
    goto LABEL_21;
  }

  sub_147F8((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_14BEC();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_146B4(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_2124(&qword_30D88, &qword_28028);
    v5 = swift_allocObject();

    if (sub_151B4())
    {
      v3 = sub_151C0(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_147F8(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_25E90();
    __break(1u);
  }

  result = sub_25E90();
  __break(1u);
  return result;
}

uint64_t sub_14948(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_25C30();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_25E80();
    __break(1u);
  }

  v5 = sub_25C50();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_14BF8(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_146B4(v4, v6);
  if (v7)
  {
    sub_14D6C((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_147F8((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_14D6C(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_25E90();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_14E94(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_14F10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_14F5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_15018()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_15064()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_150B0(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_15150(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_151E8(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

unint64_t sub_15214()
{
  v2 = qword_30D90;
  if (!qword_30D90)
  {
    sub_25D20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_15294()
{
  v2 = qword_30DA0;
  if (!qword_30DA0)
  {
    sub_2C88(&qword_30D98, &unk_28030);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30DA0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1531C(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_15354()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_15380()
{
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t type metadata accessor for InstalledSoftwareView()
{
  v1 = qword_319D0;
  if (!qword_319D0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_1547C(const void *a1, void *a2)
{
  v6 = sub_25400();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30AE0, &unk_28050);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t *sub_155A4@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = sub_2124(&qword_30AF8, &unk_27B80);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v1 = (v5 - v5[0]);
  v7 = (v5 - v5[0]);
  v8 = v2;
  v3 = type metadata accessor for InstalledSoftwareView();
  sub_6178((v5[1] + *(v3 + 28)), v1);
  sub_255D0();
  return sub_624C(v7);
}

uint64_t *sub_156DC(uint64_t *a1)
{
  v8 = a1;
  v6 = (*(*(sub_2124(&qword_30AF8, &unk_27B80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v7 = (&v5 - v6);
  sub_6178(v2, (&v5 - v6));
  v3 = type metadata accessor for InstalledSoftwareView();
  sub_664C(v7, (v1 + *(v3 + 28)));
  return sub_624C(v8);
}

char *sub_1578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v19 = a4;
  v31 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v5 = sub_2124(&qword_30AE0, &unk_28050);
  v15 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v21 = &v15 - v15;
  v18 = 0;
  v20 = type metadata accessor for InstalledSoftwareView();
  v16 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v20);
  v26 = (&v15 - v16);
  v31 = &v15 - v16;
  v30 = v25;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v17 = *(v6 + 28);
  swift_getKeyPath();
  sub_255F0();

  *v26 = v25;

  v10 = v19;
  v11 = v24;
  v12 = v26;
  v26[1] = v23;
  v12[2] = v11;
  *(v12 + 24) = v10;
  v13 = sub_25400();
  (*(*(v13 - 8) + 56))(v21, 1);
  sub_1599C(v21, v26 + *(v20 + 24));
  sub_C1C0(v26, v22);

  return sub_C040(v26);
}

void *sub_1599C(const void *a1, void *a2)
{
  v6 = sub_25400();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30AE0, &unk_28050);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

char *sub_15AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a6;
  v29 = a1;
  v27 = a2;
  v28 = a3;
  v22 = a4;
  v26 = a5;
  v36 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v6 = sub_2124(&qword_30AE0, &unk_28050);
  v19 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v24 = &v18 - v19;
  v23 = type metadata accessor for InstalledSoftwareView();
  v20 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v23);
  v30 = (&v18 - v20);
  v36 = &v18 - v20;
  v35 = v29;
  v32 = v8;
  v33 = v9;
  v34 = v10;
  v31 = v11;
  v21 = *(v7 + 28);
  swift_getKeyPath();
  sub_255F0();

  *v30 = v29;

  v12 = v26;
  v13 = v22;
  v14 = v24;
  v15 = v28;
  v16 = v30;
  v30[1] = v27;
  v16[2] = v15;
  *(v16 + 24) = v13;
  sub_1547C(v12, v14);
  sub_1599C(v24, v30 + *(v23 + 24));
  sub_C1C0(v30, v25);
  sub_15CB4(v26);

  return sub_C040(v30);
}

uint64_t sub_15CB4(uint64_t a1)
{
  v3 = sub_25400();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_15D5C@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v34 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v16 = sub_2124(&qword_30E10, &qword_28098);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v12 - v20;
  v2 = __chkstk_darwin(v12 - v20);
  v19 = v12 - v20;
  __chkstk_darwin(v2);
  v21 = v12 - v20;
  v49 = v12 - v20;
  v22 = sub_2124(&qword_30E18, &qword_280A0);
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v12 - v26;
  v3 = __chkstk_darwin(v12 - v26);
  v25 = v12 - v26;
  __chkstk_darwin(v3);
  v27 = v12 - v26;
  v48 = v12 - v26;
  v28 = (*(*(sub_2124(&qword_30AE0, &unk_28050) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v42 = v12 - v28;
  v29 = v12 - v28;
  v41 = sub_25400();
  v30 = v41;
  v31 = *(v41 - 8);
  v40 = v31;
  v32 = v31;
  v4 = *(v31 + 64);
  __chkstk_darwin(v41 - 8);
  v33 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v33;
  v35 = sub_2124(&qword_30E20, &qword_280A8);
  v36 = *(*(v35 - 8) + 64);
  v6 = __chkstk_darwin(v34);
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = v12 - v38;
  __chkstk_darwin(v6);
  v39 = v12 - v38;
  v46 = v12 - v38;
  v45 = v1;
  v7 = type metadata accessor for InstalledSoftwareView();
  sub_1547C((v1 + *(v7 + 24)), v42);
  if ((*(v40 + 48))(v42, 1, v41) == 1)
  {
    sub_15CB4(v29);
    sub_16D94(v19);
    v12[0] = sub_16F1C();
    sub_2B7C(v19, v16, v21);
    sub_16FA4(v19);
    v44 = v19;
    sub_1728C(v21, v17);
    sub_3208(v17, v16, v19);
    sub_16FA4(v17);
    sub_1728C(v19, v17);
    v10 = sub_17CE4();
    sub_17BEC(v17, v22, v16, v10, v12[0], v37);
    sub_16FA4(v17);
    sub_17D6C(v37, v39);
    sub_16FA4(v19);
    sub_16FA4(v21);
  }

  else
  {
    (*(v32 + 32))(v33, v29, v30);
    v12[3] = sub_25700();
    v12[4] = v12;
    __chkstk_darwin(v12);
    v12[1] = &v12[-4];
    v12[-2] = v14;
    v12[-1] = v8;
    v12[2] = sub_2124(&qword_30E88, &qword_280F8);
    sub_18FA4();
    sub_25A10();
    v13 = sub_17CE4();
    sub_2B7C(v25, v22, v27);
    sub_1902C(v25);
    v43 = v25;
    sub_192BC(v27, v23);
    sub_3208(v23, v22, v25);
    sub_1902C(v23);
    sub_192BC(v25, v23);
    v9 = sub_16F1C();
    sub_17AF4(v23, v22, v16, v13, v9, v37);
    sub_1902C(v23);
    sub_17D6C(v37, v39);
    sub_1902C(v25);
    sub_1902C(v27);
    (*(v32 + 8))(v33, v30);
  }

  sub_1826C(v39, v37);
  sub_18ABC();
  sub_3208(v37, v35, v15);
  sub_18B64(v37);
  return sub_18B64(v39);
}

uint64_t sub_1641C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v23 = a1;
  v24 = a2;
  v38 = 0;
  v40 = sub_20A2C;
  v37 = sub_17858;
  v51 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v22 = &v77;
  v77 = 0;
  v78 = 0;
  v21 = 0;
  v48 = sub_25680();
  v41 = *(v48 - 8);
  v42 = v48 - 8;
  v11 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v43 = &v11 - v11;
  v35 = sub_25400();
  v31 = *(v35 - 8);
  v32 = v35 - 8;
  v27 = v31;
  v28 = *(v31 + 64);
  v12 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v34 = &v11 - v12;
  v4 = type metadata accessor for InstalledSoftwareView();
  v13 = *(v4 - 8);
  v25 = v13;
  v26 = *(v13 + 64);
  v14 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v30 = &v11 - v14;
  v47 = sub_2124(&qword_30FE0, &qword_28380);
  v44 = *(v47 - 8);
  v45 = v47 - 8;
  v15 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v46 = &v11 - v15;
  v63 = sub_2124(&qword_30E78, &qword_280F0);
  v52 = *(v63 - 8);
  v53 = v63 - 8;
  v16 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63);
  v61 = &v11 - v16;
  v17 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v11 - v16);
  v66 = &v11 - v17;
  v82 = &v11 - v17;
  v54 = sub_2124(&qword_30E10, &qword_28098);
  v19 = *(*(v54 - 8) + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v54);
  v62 = &v11 - v18;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v67 = &v11 - v20;
  v81 = &v11 - v20;
  v80 = a1;
  v79 = v7;
  sub_16D94(v8);
  v56 = sub_16F1C();
  sub_2B7C(v62, v54, v67);
  sub_16FA4(v62);
  v75 = sub_25A20();
  v76 = v9 & 1;
  v55 = &type metadata for Spacer;
  v57 = &protocol witness table for Spacer;
  sub_2B7C(&v75, &type metadata for Spacer, v22);
  sub_C1C0(v23, v30);
  (*(v31 + 16))(v34, v24, v35);
  v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v33 = (v29 + v26 + *(v27 + 80)) & ~*(v27 + 80);
  v36 = swift_allocObject();
  sub_1D430(v30, v36 + v29);
  (*(v31 + 32))(v36 + v33, v34, v35);
  v39 = sub_2124(&qword_30FE8, &qword_28388);
  sub_20B10();
  sub_25A00();
  sub_25670();
  v49 = sub_20D6C();
  v50 = sub_20DF4();
  sub_258D0();
  (*(v41 + 8))(v43, v48);
  (*(v44 + 8))(v46, v47);
  v74[3] = v47;
  v74[4] = v48;
  v74[5] = v49;
  v74[6] = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2B7C(v61, v63, v66);
  v65 = *(v52 + 8);
  v64 = v52 + 8;
  v65(v61, v63);
  sub_1728C(v67, v62);
  v60 = v74;
  v74[0] = v62;
  v72 = v77;
  v73 = v78;
  v74[1] = &v72;
  (*(v52 + 16))(v61, v66, v63);
  v74[2] = v61;
  v71[0] = v54;
  v71[1] = v55;
  v71[2] = v63;
  v68 = v56;
  v69 = v57;
  v70 = OpaqueTypeConformance2;
  sub_8DD4(v60, 3uLL, v71, v59);
  v65(v61, v63);
  sub_16FA4(v62);
  v65(v66, v63);
  return sub_16FA4(v67);
}

uint64_t sub_16D94@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_1A7A8;
  v19 = 0;
  v18 = 0;
  v12 = sub_2124(&qword_30E10, &qword_28098);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v10 = sub_25770();
  v8 = &v16;
  v17 = v1;
  v9 = sub_2124(&qword_30E98, &qword_28100);
  sub_1A7B0();
  sub_25A30();
  v13 = sub_16F1C();
  sub_2B7C(v14, v12, v15);
  sub_16FA4(v14);
  sub_1728C(v15, v14);
  sub_3208(v14, v12, v11);
  sub_16FA4(v14);
  return sub_16FA4(v15);
}

unint64_t sub_16F1C()
{
  v2 = qword_30E28;
  if (!qword_30E28)
  {
    sub_2C88(&qword_30E10, &qword_28098);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30E28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_16FA4(uint64_t a1)
{
  v7 = *(sub_2124(&qword_30E30, &qword_280B0) + 44);
  v1 = sub_2124(&qword_30E38, &qword_280B8);
  (*(*(v1 - 8) + 8))();
  v9 = sub_2124(&qword_30E40, &qword_280C0);
  v10 = *(v9 + 48);
  if (*(a1 + v7 + v10 + 24))
  {
    v6 = a1 + v7 + v10;
    sub_9158(*v6, *(v6 + 8), *(v6 + 16) & 1);
    v2 = *(v6 + 24);
  }

  v5 = a1 + v7 + *(v9 + 64);
  sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_17190(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112));
  }

  else
  {
    v3 = sub_25570();
    (*(*(v3 - 8) + 8))(v5);
  }

  return a1;
}

uint64_t sub_17190(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15)
  {

    sub_17258(a8);
    return sub_17258(a10);
  }

  else
  {
    sub_9158(a1, a2, a3 & 1);

    sub_17258(a11);
    return sub_17258(a13);
  }
}

uint64_t sub_17258(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1728C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v32 = *(sub_2124(&qword_30E30, &qword_280B0) + 44);
  v2 = sub_2124(&qword_30E38, &qword_280B8);
  (*(*(v2 - 8) + 16))(a2 + v32);
  v34 = sub_2124(&qword_30E40, &qword_280C0);
  v35 = *(v34 + 48);
  if (*(a1 + v32 + v35 + 24))
  {
    v28 = a1 + v32 + v35;
    v25 = *v28;
    v26 = *(v28 + 8);
    v27 = *(v28 + 16);
    sub_BF2C(*v28, v26, v27 & 1);
    v29 = a2 + v32 + v35;
    *v29 = v25;
    *(v29 + 8) = v26;
    *(v29 + 16) = v27 & 1;
    v30 = *(v28 + 24);

    *(v29 + 24) = v30;
  }

  else
  {
    v3 = (a1 + v32 + v35);
    v4 = (a2 + v32 + v35);
    *v4 = *v3;
    v4[1] = v3[1];
  }

  v23 = a2 + v32 + *(v34 + 64);
  v24 = a1 + v32 + *(v34 + 64);
  sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v24;
    v9 = *(v24 + 8);
    v10 = *(v24 + 16);
    v11 = *(v24 + 24);
    v12 = *(v24 + 32);
    v13 = *(v24 + 40);
    v14 = *(v24 + 48);
    v15 = *(v24 + 56);
    v16 = *(v24 + 64);
    v17 = *(v24 + 72);
    v18 = *(v24 + 80);
    v19 = *(v24 + 88);
    v20 = *(v24 + 96);
    v21 = *(v24 + 104);
    v22 = *(v24 + 112);
    sub_17678(*v24, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
    *v23 = v8;
    *(v23 + 8) = v9;
    *(v23 + 16) = v10;
    *(v23 + 24) = v11;
    *(v23 + 32) = v12;
    *(v23 + 40) = v13;
    *(v23 + 48) = v14;
    *(v23 + 56) = v15;
    *(v23 + 64) = v16;
    *(v23 + 72) = v17;
    *(v23 + 80) = v18;
    *(v23 + 88) = v19;
    *(v23 + 96) = v20;
    *(v23 + 104) = v21;
    *(v23 + 112) = v22 & 1;
  }

  else
  {
    v5 = sub_25570();
    (*(*(v5 - 8) + 16))(v23, v24);
    v6 = sub_2124(&qword_30E50, &qword_280D0);
    memcpy((v23 + *(v6 + 36)), (v24 + *(v6 + 36)), 0x29uLL);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_17678(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15)
  {

    sub_17740(a8);
    return sub_17740(a10);
  }

  else
  {
    sub_BF2C(a1, a2, a3 & 1);

    sub_17740(a11);
    return sub_17740(a13);
  }
}

uint64_t sub_17740(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_17774(uint64_t a1, uint64_t a2)
{
  v5[1] = a2;
  v11 = 0;
  v10 = 0;
  v9 = sub_25640();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = v5 - v5[0];
  v11 = a1;
  v10 = v3;
  sub_155A4(v5 - v5[0]);
  sub_25600();
  return (*(v6 + 8))(v8, v9);
}

uint64_t *sub_17858@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v22 = 0;
  v13 = sub_259A0();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v4 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v12 = &v4 - v4;
  v16 = sub_2124(&qword_30FE8, &qword_28388);
  v5 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = (&v4 - v5);
  v6 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v19 = &v4 - v6;
  v22 = &v4 - v6;
  sub_25BF0("info.circle", 0xBuLL, 1);
  v2 = sub_25990();
  v8 = v21;
  v21[0] = v2;
  v7 = sub_25960();
  sub_25900();

  sub_20E74(v8);
  v14 = v20;
  v20[0] = v21[1];
  v20[1] = v21[2];
  v20[2] = v21[3];
  (*(v10 + 104))(v12, enum case for Image.Scale.large(_:), v13);
  v9 = sub_2124(&qword_31000, &qword_28390);
  sub_20BB8();
  sub_258C0();
  (*(v10 + 8))(v12, v13);
  sub_20EA0(v14);
  v17 = sub_20B10();
  sub_2B7C(v18, v16, v19);
  sub_20EE4(v18);
  sub_20FB4(v19, v18);
  sub_3208(v18, v16, v15);
  sub_20EE4(v18);
  return sub_20EE4(v19);
}

uint64_t sub_17AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_25790();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_257A0();
}

uint64_t sub_17BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_25790();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_257A0();
}

unint64_t sub_17CE4()
{
  v2 = qword_30E58;
  if (!qword_30E58)
  {
    sub_2C88(&qword_30E18, &qword_280A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30E58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_17D6C(uint64_t a1, uint64_t a2)
{
  sub_2124(&qword_30E60, &qword_280D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v14 = sub_2124(&qword_30E30, &qword_280B0);
    v22 = a2 + *(v14 + 44);
    v23 = a1 + *(v14 + 44);
    v15 = sub_2124(&qword_30E38, &qword_280B8);
    (*(*(v15 - 8) + 32))(v22, v23);
    v16 = sub_2124(&qword_30E40, &qword_280C0);
    v17 = (v22 + *(v16 + 48));
    v18 = (v23 + *(v16 + 48));
    *v17 = *v18;
    v17[1] = v18[1];
    __dst = (v22 + *(v16 + 64));
    __src = (v23 + *(v16 + 64));
    v26 = sub_2124(&qword_30E48, &qword_280C8);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(__dst, __src, *(*(v26 - 8) + 64));
    }

    else
    {
      v19 = sub_25570();
      (*(*(v19 - 8) + 32))(__dst, __src);
      v20 = sub_2124(&qword_30E50, &qword_280D0);
      memcpy(&__dst[*(v20 + 36)], &__src[*(v20 + 36)], 0x29uLL);
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v2 = sub_2124(&qword_30E68, &qword_280E0);
    v29 = a2 + *(v2 + 44);
    v30 = a1 + *(v2 + 44);
    *v29 = *v30;
    *(v29 + 16) = *(v30 + 16);
    v3 = sub_2124(&qword_30E30, &qword_280B0);
    v31 = v29 + *(v3 + 44);
    v32 = v30 + *(v3 + 44);
    v4 = sub_2124(&qword_30E38, &qword_280B8);
    (*(*(v4 - 8) + 32))(v31, v32);
    v5 = sub_2124(&qword_30E40, &qword_280C0);
    v6 = (v31 + *(v5 + 48));
    v7 = (v32 + *(v5 + 48));
    *v6 = *v7;
    v6[1] = v7[1];
    v33 = (v31 + *(v5 + 64));
    v34 = (v32 + *(v5 + 64));
    v35 = sub_2124(&qword_30E48, &qword_280C8);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v33, v34, *(*(v35 - 8) + 64));
    }

    else
    {
      v8 = sub_25570();
      (*(*(v8 - 8) + 32))(v33, v34);
      v9 = sub_2124(&qword_30E50, &qword_280D0);
      memcpy(&v33[*(v9 + 36)], &v34[*(v9 + 36)], 0x29uLL);
      swift_storeEnumTagMultiPayload();
    }

    v10 = sub_2124(&qword_30E70, &qword_280E8);
    v11 = v29 + *(v10 + 48);
    v12 = v30 + *(v10 + 48);
    *v11 = *v12;
    *(v11 + 8) = *(v12 + 8);
    v28 = v29 + *(v10 + 64);
    v27 = v30 + *(v10 + 64);
    v13 = sub_2124(&qword_30E78, &qword_280F0);
    (*(*(v13 - 8) + 32))(v28, v27);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1826C(uint64_t a1, uint64_t a2)
{
  sub_2124(&qword_30E60, &qword_280D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v11 = sub_2124(&qword_30E30, &qword_280B0);
    v37 = a2 + *(v11 + 44);
    v38 = a1 + *(v11 + 44);
    v12 = sub_2124(&qword_30E38, &qword_280B8);
    (*(*(v12 - 8) + 16))(v37, v38);
    v39 = sub_2124(&qword_30E40, &qword_280C0);
    v40 = v37 + *(v39 + 48);
    v41 = v38 + *(v39 + 48);
    if (*(v41 + 24))
    {
      v33 = *v41;
      v34 = *(v41 + 8);
      v35 = *(v41 + 16);
      sub_BF2C(*v41, v34, v35 & 1);
      *v40 = v33;
      *(v40 + 8) = v34;
      *(v40 + 16) = v35 & 1;
      v36 = *(v41 + 24);

      *(v40 + 24) = v36;
    }

    else
    {
      *v40 = *v41;
      *(v40 + 16) = *(v41 + 16);
    }

    v31 = v37 + *(v39 + 64);
    v32 = v38 + *(v39 + 64);
    sub_2124(&qword_30E48, &qword_280C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *v32;
      v17 = *(v32 + 8);
      v18 = *(v32 + 16);
      v19 = *(v32 + 24);
      v20 = *(v32 + 32);
      v21 = *(v32 + 40);
      v22 = *(v32 + 48);
      v23 = *(v32 + 56);
      v24 = *(v32 + 64);
      v25 = *(v32 + 72);
      v26 = *(v32 + 80);
      v27 = *(v32 + 88);
      v28 = *(v32 + 96);
      v29 = *(v32 + 104);
      v30 = *(v32 + 112);
      sub_17678(*v32, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
      *v31 = v16;
      *(v31 + 8) = v17;
      *(v31 + 16) = v18;
      *(v31 + 24) = v19;
      *(v31 + 32) = v20;
      *(v31 + 40) = v21;
      *(v31 + 48) = v22;
      *(v31 + 56) = v23;
      *(v31 + 64) = v24;
      *(v31 + 72) = v25;
      *(v31 + 80) = v26;
      *(v31 + 88) = v27;
      *(v31 + 96) = v28;
      *(v31 + 104) = v29;
      *(v31 + 112) = v30 & 1;
    }

    else
    {
      v13 = sub_25570();
      (*(*(v13 - 8) + 16))(v31, v32);
      v14 = sub_2124(&qword_30E50, &qword_280D0);
      memcpy((v31 + *(v14 + 36)), (v32 + *(v14 + 36)), 0x29uLL);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v2 = sub_2124(&qword_30E68, &qword_280E0);
    v65 = a2 + *(v2 + 44);
    v66 = a1 + *(v2 + 44);
    *v65 = *v66;
    *(v65 + 16) = *(v66 + 16);
    v3 = sub_2124(&qword_30E30, &qword_280B0);
    v67 = v65 + *(v3 + 44);
    v68 = v66 + *(v3 + 44);
    v4 = sub_2124(&qword_30E38, &qword_280B8);
    (*(*(v4 - 8) + 16))(v67, v68);
    v69 = sub_2124(&qword_30E40, &qword_280C0);
    v70 = v67 + *(v69 + 48);
    v71 = v68 + *(v69 + 48);
    if (*(v71 + 24))
    {
      v61 = *v71;
      v62 = *(v71 + 8);
      v63 = *(v71 + 16);
      sub_BF2C(*v71, v62, v63 & 1);
      *v70 = v61;
      *(v70 + 8) = v62;
      *(v70 + 16) = v63 & 1;
      v64 = *(v71 + 24);

      *(v70 + 24) = v64;
    }

    else
    {
      *v70 = *v71;
      *(v70 + 16) = *(v71 + 16);
    }

    v59 = v67 + *(v69 + 64);
    v60 = v68 + *(v69 + 64);
    sub_2124(&qword_30E48, &qword_280C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = *v60;
      v45 = *(v60 + 8);
      v46 = *(v60 + 16);
      v47 = *(v60 + 24);
      v48 = *(v60 + 32);
      v49 = *(v60 + 40);
      v50 = *(v60 + 48);
      v51 = *(v60 + 56);
      v52 = *(v60 + 64);
      v53 = *(v60 + 72);
      v54 = *(v60 + 80);
      v55 = *(v60 + 88);
      v56 = *(v60 + 96);
      v57 = *(v60 + 104);
      v58 = *(v60 + 112);
      sub_17678(*v60, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
      *v59 = v44;
      *(v59 + 8) = v45;
      *(v59 + 16) = v46;
      *(v59 + 24) = v47;
      *(v59 + 32) = v48;
      *(v59 + 40) = v49;
      *(v59 + 48) = v50;
      *(v59 + 56) = v51;
      *(v59 + 64) = v52;
      *(v59 + 72) = v53;
      *(v59 + 80) = v54;
      *(v59 + 88) = v55;
      *(v59 + 96) = v56;
      *(v59 + 104) = v57;
      *(v59 + 112) = v58 & 1;
    }

    else
    {
      v5 = sub_25570();
      (*(*(v5 - 8) + 16))(v59, v60);
      v6 = sub_2124(&qword_30E50, &qword_280D0);
      memcpy((v59 + *(v6 + 36)), (v60 + *(v6 + 36)), 0x29uLL);
    }

    swift_storeEnumTagMultiPayload();
    v7 = sub_2124(&qword_30E70, &qword_280E8);
    v8 = v65 + *(v7 + 48);
    v9 = v66 + *(v7 + 48);
    *v8 = *v9;
    *(v8 + 8) = *(v9 + 8);
    v43 = v65 + *(v7 + 64);
    v42 = v66 + *(v7 + 64);
    v10 = sub_2124(&qword_30E78, &qword_280F0);
    (*(*(v10 - 8) + 16))(v43, v42);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_18ABC()
{
  v2 = qword_30E80;
  if (!qword_30E80)
  {
    sub_2C88(&qword_30E20, &qword_280A8);
    sub_17CE4();
    sub_16F1C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30E80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_18B64(uint64_t a1)
{
  sub_2124(&qword_30E60, &qword_280D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = a1 + *(sub_2124(&qword_30E30, &qword_280B0) + 44);
    v5 = sub_2124(&qword_30E38, &qword_280B8);
    (*(*(v5 - 8) + 8))(v10);
    v11 = sub_2124(&qword_30E40, &qword_280C0);
    v12 = v10 + *(v11 + 48);
    if (*(v12 + 24))
    {
      sub_9158(*v12, *(v12 + 8), *(v12 + 16) & 1);
      v6 = *(v12 + 24);
    }

    v9 = v10 + *(v11 + 64);
    sub_2124(&qword_30E48, &qword_280C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_17190(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v9 + 80), *(v9 + 88), *(v9 + 96), *(v9 + 104), *(v9 + 112));
    }

    else
    {
      v7 = sub_25570();
      (*(*(v7 - 8) + 8))(v9);
    }
  }

  else
  {
    v15 = a1 + *(sub_2124(&qword_30E68, &qword_280E0) + 44);
    v16 = v15 + *(sub_2124(&qword_30E30, &qword_280B0) + 44);
    v1 = sub_2124(&qword_30E38, &qword_280B8);
    (*(*(v1 - 8) + 8))(v16);
    v17 = sub_2124(&qword_30E40, &qword_280C0);
    v18 = v16 + *(v17 + 48);
    if (*(v18 + 24))
    {
      sub_9158(*v18, *(v18 + 8), *(v18 + 16) & 1);
      v2 = *(v18 + 24);
    }

    v14 = v16 + *(v17 + 64);
    sub_2124(&qword_30E48, &qword_280C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_17190(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64), *(v14 + 72), *(v14 + 80), *(v14 + 88), *(v14 + 96), *(v14 + 104), *(v14 + 112));
    }

    else
    {
      v3 = sub_25570();
      (*(*(v3 - 8) + 8))(v14);
    }

    v13 = v15 + *(sub_2124(&qword_30E70, &qword_280E8) + 64);
    v4 = sub_2124(&qword_30E78, &qword_280F0);
    (*(*(v4 - 8) + 8))(v13);
  }

  return a1;
}

unint64_t sub_18FA4()
{
  v2 = qword_30E90;
  if (!qword_30E90)
  {
    sub_2C88(&qword_30E88, &qword_280F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30E90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1902C(uint64_t a1)
{
  v9 = *(sub_2124(&qword_30E68, &qword_280E0) + 44);
  v10 = *(sub_2124(&qword_30E30, &qword_280B0) + 44);
  v1 = sub_2124(&qword_30E38, &qword_280B8);
  (*(*(v1 - 8) + 8))();
  v12 = sub_2124(&qword_30E40, &qword_280C0);
  v13 = *(v12 + 48);
  if (*(a1 + v9 + v10 + v13 + 24))
  {
    v8 = a1 + v9 + v10 + v13;
    sub_9158(*v8, *(v8 + 8), *(v8 + 16) & 1);
    v2 = *(v8 + 24);
  }

  v7 = a1 + v9 + v10 + *(v12 + 64);
  sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_17190(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 80), *(v7 + 88), *(v7 + 96), *(v7 + 104), *(v7 + 112));
  }

  else
  {
    v3 = sub_25570();
    (*(*(v3 - 8) + 8))(v7);
  }

  v6 = a1 + v9 + *(sub_2124(&qword_30E70, &qword_280E8) + 64);
  v4 = sub_2124(&qword_30E78, &qword_280F0);
  (*(*(v4 - 8) + 8))(v6);
  return a1;
}

uint64_t sub_192BC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v39 = *(sub_2124(&qword_30E68, &qword_280E0) + 44);
  v40 = a2 + v39;
  *v40 = *(a1 + v39);
  *(v40 + 16) = *(a1 + v39 + 16);
  v41 = *(sub_2124(&qword_30E30, &qword_280B0) + 44);
  v2 = sub_2124(&qword_30E38, &qword_280B8);
  (*(*(v2 - 8) + 16))(a2 + v39 + v41);
  v42 = sub_2124(&qword_30E40, &qword_280C0);
  v43 = *(v42 + 48);
  if (*(a1 + v39 + v41 + v43 + 24))
  {
    v34 = a1 + v39 + v41 + v43;
    v31 = *v34;
    v32 = *(v34 + 8);
    v33 = *(v34 + 16);
    sub_BF2C(*v34, v32, v33 & 1);
    v35 = a2 + v39 + v41 + v43;
    *v35 = v31;
    *(v35 + 8) = v32;
    *(v35 + 16) = v33 & 1;
    v36 = *(v34 + 24);

    *(v35 + 24) = v36;
  }

  else
  {
    v3 = (a1 + v39 + v41 + v43);
    v4 = (a2 + v39 + v41 + v43);
    *v4 = *v3;
    v4[1] = v3[1];
  }

  v29 = a2 + v39 + v41 + *(v42 + 64);
  v30 = a1 + v39 + v41 + *(v42 + 64);
  sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v30;
    v15 = *(v30 + 8);
    v16 = *(v30 + 16);
    v17 = *(v30 + 24);
    v18 = *(v30 + 32);
    v19 = *(v30 + 40);
    v20 = *(v30 + 48);
    v21 = *(v30 + 56);
    v22 = *(v30 + 64);
    v23 = *(v30 + 72);
    v24 = *(v30 + 80);
    v25 = *(v30 + 88);
    v26 = *(v30 + 96);
    v27 = *(v30 + 104);
    v28 = *(v30 + 112);
    sub_17678(*v30, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    *v29 = v14;
    *(v29 + 8) = v15;
    *(v29 + 16) = v16;
    *(v29 + 24) = v17;
    *(v29 + 32) = v18;
    *(v29 + 40) = v19;
    *(v29 + 48) = v20;
    *(v29 + 56) = v21;
    *(v29 + 64) = v22;
    *(v29 + 72) = v23;
    *(v29 + 80) = v24;
    *(v29 + 88) = v25;
    *(v29 + 96) = v26;
    *(v29 + 104) = v27;
    *(v29 + 112) = v28 & 1;
  }

  else
  {
    v5 = sub_25570();
    (*(*(v5 - 8) + 16))(v29, v30);
    v6 = sub_2124(&qword_30E50, &qword_280D0);
    memcpy((v29 + *(v6 + 36)), (v30 + *(v6 + 36)), 0x29uLL);
  }

  swift_storeEnumTagMultiPayload();
  v7 = sub_2124(&qword_30E70, &qword_280E8);
  v8 = a2 + v39 + *(v7 + 48);
  v9 = a1 + v39 + *(v7 + 48);
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  v13 = a2 + v39 + *(v7 + 64);
  v12 = a1 + v39 + *(v7 + 64);
  v10 = sub_2124(&qword_30E78, &qword_280F0);
  (*(*(v10 - 8) + 16))(v13, v12);
  return a2;
}

uint64_t sub_197D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v155 = a1;
  v137 = sub_1F3C8;
  v140 = sub_1F63C;
  v138 = sub_1F8B0;
  v146 = &opaque type descriptor for <<opaque return type of View.editMenu(_:onPresent:onDismiss:)>>;
  v237 = 0;
  v236 = 0;
  v235 = 0;
  v234 = 0;
  v193 = 0u;
  v194 = 0u;
  v172 = 0u;
  v173 = 0u;
  v86 = sub_2124(&qword_30EB0, &qword_28108);
  v87 = (*(*(v86 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v88 = &v31 - v87;
  v89 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v87);
  v90 = &v31 - v89;
  v237 = &v31 - v89;
  v101 = 0;
  v91 = sub_25740();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v91);
  v95 = &v31 - v94;
  v96 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v94);
  v97 = &v31 - v96;
  v98 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v96);
  v99 = &v31 - v98;
  v100 = (*(*(sub_2124(&qword_30C70, &qword_27E30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v101);
  v159 = &v31 - v100;
  v161 = sub_25440();
  v157 = *(v161 - 8);
  v158 = v161 - 8;
  v102 = (*(v157 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v101);
  v103 = &v31 - v102;
  v236 = &v31 - v102;
  v5 = type metadata accessor for InstalledSoftwareView();
  v104 = *(v5 - 8);
  v127 = v104;
  v133 = *(v104 + 64);
  v105 = (v133 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v136 = &v31 - v105;
  v106 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v105);
  v131 = &v31 - v106;
  v107 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v106);
  v129 = &v31 - v107;
  v152 = sub_2124(&qword_30E38, &qword_280B8);
  v149 = *(v152 - 8);
  v150 = v152 - 8;
  v108 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v155);
  v151 = &v31 - v108;
  v109 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v147 = &v31 - v109;
  v235 = &v31 - v109;
  v234 = v10;
  v110 = *v10;

  v111 = *(v110 + 16);
  v112 = *(v110 + 24);

  v113 = v233;
  v233[0] = v111;
  v233[1] = v112;
  sub_1F140();
  v229 = sub_25850();
  v230 = v11;
  v231 = v12;
  v232 = v13;
  v115 = v229;
  v116 = v11;
  v117 = v12;
  v118 = v13;
  v114 = sub_25800();
  v225 = v115;
  v226 = v116;
  v160 = 1;
  v227 = v117 & 1;
  v228 = v118;
  v221 = sub_25830();
  v222 = v14;
  v223 = v15;
  v224 = v16;
  v120 = v221;
  v121 = v14;
  v119 = v15;
  v122 = v16;

  sub_9158(v115, v116, v117 & 1);

  sub_257F0();
  v217 = v120;
  v218 = v121;
  v219 = v119 & 1 & v160;
  v220 = v122;
  v213 = sub_25810();
  v214 = v17;
  v215 = v18;
  v216 = v19;
  v123 = v213;
  v124 = v17;
  v125 = v18;
  v126 = v19;
  sub_9158(v120, v121, v119 & 1);

  v143 = v210;
  v210[0] = v123;
  v210[1] = v124;
  v211 = v125 & 1 & v160;
  v212 = v126;
  sub_C1C0(v155, v129);
  v132 = *(v127 + 80);
  v128 = (v132 + 16) & ~v132;
  v134 = 7;
  v142 = swift_allocObject();
  sub_1D430(v129, v142 + v128);
  sub_C1C0(v155, v131);
  v130 = (v132 + 16) & ~v132;
  v141 = swift_allocObject();
  sub_1D430(v131, v141 + v130);
  sub_C1C0(v155, v136);
  v135 = (v132 + 16) & ~v132;
  v139 = swift_allocObject();
  sub_1D430(v136, v139 + v135);
  v144 = &type metadata for Text;
  v145 = &protocol witness table for Text;
  sub_25870();
  sub_17258(v138);
  sub_17258(v140);

  sub_BCC0(v143);
  v208 = v144;
  v209 = v145;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2B7C(v151, v152, v147);
  v153 = *(v149 + 8);
  v154 = v149 + 8;
  v153(v151, v152);
  v156 = *v155;

  sub_1F914((v156 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_installationDate), v159);

  if ((*(v157 + 48))(v159, v160, v161) == 1)
  {
    sub_1FA3C(v159);
    memset(v199, 0, sizeof(v199));
    sub_A6A8(v199, &type metadata for Text, &v200);
    v77 = v200;
    v78 = v201;
    v79 = v202;
    v80 = v203;
    v20 = sub_1FAE4(v200, v201, v202, v203);
    v204 = v77;
    v205 = v78;
    v206 = v79;
    v207 = v80;
    v81 = v77;
    v82 = v78;
    v83 = v79;
    v84 = v80;
  }

  else
  {
    (*(v157 + 32))(v103, v159, v161);
    v40 = 10;
    sub_25730();
    v62 = 1;
    v238._countAndFlagsBits = sub_25BF0("Installed ", v40, 1);
    object = v238._object;
    sub_25720(v238);

    v239._countAndFlagsBits = sub_1BA90(v103);
    v42 = v239._object;
    sub_25710(v239);

    v47 = 0;
    v240._countAndFlagsBits = sub_25BF0("", 0, v62 & 1);
    v43 = v240._object;
    sub_25720(v240);

    (*(v92 + 16))(v97, v99, v91);
    (*(v92 + 32))(v95, v97, v91);
    (*(v92 + 8))(v99, v91);
    v49 = sub_25760();
    v44 = v21;
    v45 = v22;
    v46 = v23;
    v48 = *sub_242E8();
    v48;
    v189 = 0;
    v190 = 0;
    v191 = 0;
    v192 = v62 & 1;
    v185 = sub_25840();
    v186 = v24;
    v187 = v25;
    v188 = v26;
    v51 = v185;
    v52 = v24;
    v53 = v25;
    v54 = v26;
    v50 = sub_25970();
    v181 = v51;
    v182 = v52;
    v183 = v53 & 1 & v62;
    v184 = v54;
    v177 = sub_25820();
    v178 = v27;
    v179 = v28;
    v180 = v29;
    v55 = v177;
    v56 = v27;
    v57 = v28;
    v58 = v29;

    sub_9158(v51, v52, v53 & 1);

    v59 = v174;
    v174[0] = v55;
    v174[1] = v56;
    v175 = v57 & 1 & v62;
    v176 = v58;
    v72 = &v193;
    v68 = &type metadata for Text;
    v69 = &protocol witness table for Text;
    sub_2B7C(v174, &type metadata for Text, &v193);
    sub_BCC0(v59);
    v60 = v193;
    v61 = v194;
    v63 = *(&v194 + 1);
    sub_BF2C(v193, *(&v193 + 1), v194 & 1);

    v64 = &v169;
    v169 = v60;
    v170 = v61 & 1 & v62;
    v171 = v63;
    v71 = &v172;
    sub_3208(&v169, v68, &v172);
    sub_BCC0(v64);
    v66 = v172;
    v65 = v173;
    v67 = *(&v173 + 1);
    sub_BF2C(v172, *(&v172 + 1), v173 & 1);

    v70 = &v162;
    v162 = v66;
    v163 = v65 & 1;
    v164 = v67;
    sub_A6A8(&v162, v68, &v165);
    sub_1FBD4(v70);
    v73 = v165;
    v74 = v166;
    v75 = v167;
    v76 = v168;
    sub_1FAE4(v165, v166, v167, v168);
    v204 = v73;
    v205 = v74;
    v206 = v75;
    v207 = v76;
    sub_BCC0(v71);
    sub_BCC0(v72);
    v20 = (*(v157 + 8))(v103, v161);
    v81 = v73;
    v82 = v74;
    v83 = v75;
    v84 = v76;
  }

  v34 = v84;
  v33 = v83;
  v32 = v82;
  v31 = v81;
  sub_1C090(v20);
  v35 = sub_1E1CC();
  sub_2B7C(v88, v86, v90);
  sub_1E274(v88);
  (*(v149 + 16))(v151, v147, v152);
  v38 = v198;
  v198[0] = v151;
  v39 = v197;
  v197[0] = v31;
  v197[1] = v32;
  v197[2] = v33;
  v197[3] = v34;
  v198[1] = v197;
  sub_1DFB4(v90, v88);
  v198[2] = v88;
  v36 = v196;
  v196[0] = v152;
  v196[1] = sub_2124(&qword_30FC8, &unk_28370);
  v196[2] = v86;
  v37 = v195;
  v195[0] = OpaqueTypeConformance2;
  v195[1] = sub_1FB40();
  v195[2] = v35;
  sub_8DD4(v38, 3uLL, v36, v85);
  sub_1E274(v88);
  sub_1FBD4(v39);
  v153(v151, v152);
  sub_1E274(v90);
  sub_1FBD4(&v204);
  return (v153)(v147, v152);
}

unint64_t sub_1A7B0()
{
  v2 = qword_30EA0;
  if (!qword_30EA0)
  {
    sub_2C88(&qword_30E98, &qword_28100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30EA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1A838(uint64_t *a1)
{
  v14 = a1;
  v20 = sub_20668;
  v32 = 0;
  v23 = 0;
  v6 = *(type metadata accessor for InstalledSoftwareView() - 8);
  v15 = v6;
  v16 = *(v6 + 64);
  v7 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v18 = &v6 - v7;
  v8 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v13 = &v6 - v8;
  v9 = (*(*(sub_25B70() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v11 = &v6 - v9;
  v32 = v1;
  v26 = sub_203F4();
  v27 = sub_25F00();
  v25 = v2;
  v10 = 1;
  sub_25BF0("Copy", 4uLL, 1);
  sub_25B10();
  v12 = *sub_242E8();
  v12;
  sub_3A00();
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v10 & 1;
  v24 = sub_25BA0();
  v22 = v3;
  sub_C1C0(v14, v18);
  v17 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = swift_allocObject();
  sub_1D430(v18, v21 + v17);
  v19 = sub_1AC30();
  sub_1AC60();
  v4 = sub_25D50();
  result = v27;
  *v25 = v4;
  sub_3AB0();
  return result;
}

void sub_1AB54(uint64_t a1, uint64_t *a2)
{
  v7 = [objc_opt_self() generalPasteboard];
  v3 = *a2;

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  v6 = sub_25B80();

  [v7 setString:v6];
}

uint64_t sub_1AC30()
{
  sub_1FEA0(0);

  return 0;
}

uint64_t sub_1AC68(uint64_t *a1)
{
  v34 = a1;
  v40 = sub_20290;
  v44 = sub_2039C;
  v46 = sub_20320;
  v48 = sub_20354;
  v51 = sub_203E8;
  v62 = 0;
  v25 = 0;
  v26 = 0;
  v27 = *(type metadata accessor for InstalledSoftwareView() - 8);
  v35 = v27;
  v36 = *(v27 + 64);
  v28 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v38 = v17 - v28;
  v33 = sub_255C0();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v29 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v34);
  v2 = v17 - v29;
  v30 = v17 - v29;
  v62 = v1;
  v3 = sub_21358();
  (*(v31 + 16))(v2, v3, v33);
  sub_C1C0(v34, v38);
  v37 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v42 = 7;
  v43 = swift_allocObject();
  sub_1D430(v38, v43 + v37);
  v55 = sub_255A0();
  v56 = sub_25D00();
  v39 = 17;
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v41 = 32;
  v4 = swift_allocObject();
  v5 = v43;
  v45 = v4;
  *(v4 + 16) = v40;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v45;
  v52 = v6;
  *(v6 + 16) = v44;
  *(v6 + 24) = v7;
  v54 = sub_2124(&qword_30D78, &qword_28018);
  v50 = sub_25F00();
  v53 = v8;

  v9 = v47;
  v10 = v53;
  *v53 = v46;
  v10[1] = v9;

  v11 = v49;
  v12 = v53;
  v53[2] = v48;
  v12[3] = v11;

  v13 = v52;
  v14 = v53;
  v53[4] = v51;
  v14[5] = v13;
  sub_3AB0();

  if (os_log_type_enabled(v55, v56))
  {
    v15 = v25;
    v18 = sub_25D80();
    v17[2] = sub_2124(&qword_30D80, &qword_28020);
    v19 = sub_124AC(0);
    v20 = sub_124AC(1);
    v21 = &v61;
    v61 = v18;
    v22 = &v60;
    v60 = v19;
    v23 = &v59;
    v59 = v20;
    sub_12500(2, &v61);
    sub_12500(1, v21);
    v57 = v46;
    v58 = v47;
    sub_12514(&v57, v21, v22, v23);
    v24 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v57 = v48;
      v58 = v49;
      sub_12514(&v57, &v61, &v60, &v59);
      v17[0] = 0;
      v57 = v51;
      v58 = v52;
      sub_12514(&v57, &v61, &v60, &v59);
      _os_log_impl(&dword_0, v55, v56, "Presenting edit menu for software: %s", v18, 0xCu);
      sub_12560(v19);
      sub_12560(v20);
      sub_25D60();
    }
  }

  else
  {
  }

  return (*(v31 + 8))(v30, v33);
}

uint64_t sub_1B324(uint64_t *a1)
{
  v2 = *a1;

  type metadata accessor for InstalledSoftware();
  sub_1318C();
  return sub_25BC0();
}

uint64_t sub_1B37C(uint64_t *a1)
{
  v34 = a1;
  v40 = sub_1FE3C;
  v44 = sub_1FFF4;
  v46 = sub_1FF78;
  v48 = sub_1FFAC;
  v51 = sub_20040;
  v62 = 0;
  v25 = 0;
  v26 = 0;
  v27 = *(type metadata accessor for InstalledSoftwareView() - 8);
  v35 = v27;
  v36 = *(v27 + 64);
  v28 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v38 = v17 - v28;
  v33 = sub_255C0();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v29 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v34);
  v2 = v17 - v29;
  v30 = v17 - v29;
  v62 = v1;
  v3 = sub_21358();
  (*(v31 + 16))(v2, v3, v33);
  sub_C1C0(v34, v38);
  v37 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v42 = 7;
  v43 = swift_allocObject();
  sub_1D430(v38, v43 + v37);
  v55 = sub_255A0();
  v56 = sub_25D10();
  v39 = 17;
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v41 = 32;
  v4 = swift_allocObject();
  v5 = v43;
  v45 = v4;
  *(v4 + 16) = v40;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v45;
  v52 = v6;
  *(v6 + 16) = v44;
  *(v6 + 24) = v7;
  v54 = sub_2124(&qword_30D78, &qword_28018);
  v50 = sub_25F00();
  v53 = v8;

  v9 = v47;
  v10 = v53;
  *v53 = v46;
  v10[1] = v9;

  v11 = v49;
  v12 = v53;
  v53[2] = v48;
  v12[3] = v11;

  v13 = v52;
  v14 = v53;
  v53[4] = v51;
  v14[5] = v13;
  sub_3AB0();

  if (os_log_type_enabled(v55, v56))
  {
    v15 = v25;
    v18 = sub_25D80();
    v17[2] = sub_2124(&qword_30D80, &qword_28020);
    v19 = sub_124AC(0);
    v20 = sub_124AC(1);
    v21 = &v61;
    v61 = v18;
    v22 = &v60;
    v60 = v19;
    v23 = &v59;
    v59 = v20;
    sub_12500(2, &v61);
    sub_12500(1, v21);
    v57 = v46;
    v58 = v47;
    sub_12514(&v57, v21, v22, v23);
    v24 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v57 = v48;
      v58 = v49;
      sub_12514(&v57, &v61, &v60, &v59);
      v17[0] = 0;
      v57 = v51;
      v58 = v52;
      sub_12514(&v57, &v61, &v60, &v59);
      _os_log_impl(&dword_0, v55, v56, "Dismissing edit menu for software: %s", v18, 0xCu);
      sub_12560(v19);
      sub_12560(v20);
      sub_25D60();
    }
  }

  else
  {
  }

  return (*(v31 + 8))(v30, v33);
}

uint64_t sub_1BA38(uint64_t *a1)
{
  v2 = *a1;

  type metadata accessor for InstalledSoftware();
  sub_1318C();
  return sub_25BC0();
}

uint64_t sub_1BA90(uint64_t a1)
{
  v41 = a1;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v33 = 0;
  v26 = sub_25440();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v30 = &v9 - v29;
  v31 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v32 = &v9 - v31;
  v34 = (*(*(sub_25B70() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v35 = &v9 - v34;
  v36 = sub_254A0();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v41);
  v40 = &v9 - v39;
  v51 = &v9 - v39;
  v50 = v1;
  v49 = v2;
  sub_25490();
  if (sub_25470())
  {
    *&v20[1] = 1;
    sub_25BF0("Today", 5uLL, 1);
    sub_25B10();
    v21 = *sub_242E8();
    v21;
    sub_3A00();
    v42 = 0;
    v43 = 0;
    v44 = *v20 & 0x100;
    v22 = sub_25BA0();
    v23 = v3;
    (*(v37 + 8))(v40, v36);
    v24 = v22;
    v25 = v23;
  }

  else if (sub_25480())
  {
    *&v16[1] = 1;
    sub_25BF0("Yesterday", 9uLL, 1);
    sub_25B10();
    v17 = *sub_242E8();
    v17;
    sub_3A00();
    v45 = 0;
    v46 = 0;
    v47 = *v16 & 0x100;
    v18 = sub_25BA0();
    v19 = v4;
    (*(v37 + 8))(v40, v36);
    v24 = v18;
    v25 = v19;
  }

  else
  {
    v10 = 0;
    sub_1C02C();
    v5 = sub_1D100();
    v6 = v30;
    v13 = v5;
    v48 = v5;
    [v5 setDateStyle:2];
    [v13 setTimeStyle:v10];
    (*(v27 + 16))(v6, v41, v26);
    isa = sub_25430().super.isa;
    (*(v27 + 8))(v30, v26);
    v12 = [v13 stringFromDate:isa];

    v14 = sub_25B90();
    v15 = v7;

    (*(v37 + 8))(v40, v36);
    v24 = v14;
    v25 = v15;
  }

  return v24;
}

unint64_t sub_1C02C()
{
  v2 = qword_30EA8;
  if (!qword_30EA8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_30EA8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C090(uint64_t a1)
{
  __chkstk_darwin(a1);
  v108 = v2;
  v109 = v1;
  v110 = sub_1E578;
  v111 = sub_1D68C;
  v217 = 0;
  v216 = 0;
  v215 = 0;
  __len = 113;
  __c = 0;
  memset(__b, 0, 0x71uLL);
  memset(v186, 0, 0x71uLL);
  v145 = 0;
  v146 = 0;
  v144 = 0;
  v114 = 0;
  v115 = *(type metadata accessor for InstalledSoftwareView() - 8);
  v116 = v115;
  v117 = *(v115 + 64);
  v118 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v119 = &v23 - v118;
  v120 = sub_25570();
  v121 = *(v120 - 8);
  v122 = v120 - 8;
  v123 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v120);
  v124 = &v23 - v123;
  v125 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v23 - v123);
  v126 = &v23 - v125;
  v127 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v23 - v125);
  v128 = &v23 - v127;
  v129 = sub_2124(&qword_30E50, &qword_280D0);
  v130 = (*(*(v129 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v129);
  v131 = &v23 - v130;
  v132 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v23 - v130);
  v133 = &v23 - v132;
  v134 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v23 - v132);
  v135 = &v23 - v134;
  v217 = &v23 - v134;
  v136 = sub_2124(&qword_30EB0, &qword_28108);
  v137 = (*(*(v136 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v136);
  v138 = &v23 - v137;
  v139 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v23 - v137);
  v140 = &v23 - v139;
  v216 = &v23 - v139;
  v215 = v1;
  v142 = *v1;

  v141 = *(v142 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation);
  v143 = *(v142 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation + 8);
  sub_1D130(v141, v143);

  if ((v143 & 0xF000000000000000) == 0xF000000000000000)
  {
    v94 = *v109;

    v95 = *(v94 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_softwareType);

    if (v95)
    {
      v19 = sub_25980();
      v34 = v202;
      v202[0] = v19;
      v32 = &type metadata for Color;
      v33 = &protocol witness table for Color;
      sub_1D00C();
      sub_25930();
      sub_1D1F4(v34);
      v38 = v196;
      v196[0] = v202[1];
      v196[1] = v202[2];
      v197 = v203 & 1;
      v198 = v204;
      v199 = v205 & 1;
      v200 = v206;
      v201 = v207;
      sub_C1C0(v109, v119);
      v35 = (*(v116 + 80) + 16) & ~*(v116 + 80);
      v37 = swift_allocObject();
      sub_1D430(v119, v37 + v35);
      v36 = sub_2124(&qword_30EB8, &qword_28110);
      sub_1D6F0();
      v39 = &v208;
      sub_25950();
      sub_17258(v111);
      sub_1D790(v38);
      v40 = v210;
      v45 = 88;
      memcpy(v210, v39, sizeof(v210));
      v41 = v195;
      memcpy(v195, v210, sizeof(v195));
      v47 = sub_2124(&qword_30EC8, &qword_28118);
      v48 = sub_1D7BC();
      v54 = v209;
      sub_2B7C(v41, v47, v209);
      sub_1D860(v41);
      v42 = v211;
      memcpy(v211, v54, v45);
      sub_1D8CC(v42, v193);
      v43 = v192;
      memcpy(v192, v42, v45);
      v53 = v194;
      sub_3208(v43, v47, v194);
      sub_1D860(v43);
      v44 = v212;
      memcpy(v212, v53, v45);
      sub_1D8CC(v44, v190);
      v49 = v189;
      memcpy(v189, v44, v45);
      v46 = sub_2124(&qword_30ED8, &qword_28120);
      v20 = sub_1D9CC();
      v50 = v191;
      sub_17BEC(v49, v46, v47, v20, v48, v191);
      sub_1D860(v49);
      v51 = v213;
      v52 = 113;
      memcpy(v213, v50, 0x71uLL);
      memcpy(__b, v213, 0x71uLL);
      sub_1D860(v53);
      sub_1D860(v54);
    }

    else
    {
      v68 = 1;
      sub_25BF0("This update includes improvements and bug fixes for your device.", 0x40uLL, 1);
      v59 = sub_25750();
      v55 = v9;
      v56 = v10;
      v57 = v11;
      v58 = *sub_242E8();
      v58;
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v173 = v68 & 1;
      v166 = sub_25840();
      v167 = v12;
      v168 = v13;
      v169 = v14;
      v61 = v166;
      v62 = v12;
      v63 = v13;
      v64 = v14;
      v60 = sub_257E0();
      v162 = v61;
      v163 = v62;
      v164 = v63 & 1 & v68;
      v165 = v64;
      v158 = sub_25830();
      v159 = v15;
      v160 = v16;
      v161 = v17;
      v65 = v158;
      v66 = v15;
      v67 = v16;
      v69 = v17;

      sub_9158(v61, v62, v63 & 1);

      v70 = v155;
      v155[0] = v65;
      v155[1] = v66;
      v156 = v67 & 1 & v68;
      v157 = v69;
      sub_257C0();
      v71 = &v174;
      sub_25940();
      sub_BCC0(v70);
      v72 = v177;
      v73 = 73;
      memcpy(v177, v71, 0x49uLL);
      v77 = v154;
      memcpy(v154, v177, 0x49uLL);
      sub_C1C0(v109, v119);
      v74 = (*(v116 + 80) + 16) & ~*(v116 + 80);
      v76 = swift_allocObject();
      sub_1D430(v119, v76 + v74);
      v75 = sub_2124(&qword_30EF0, &qword_28128);
      sub_1DA70();
      v78 = &v175;
      sub_25950();
      sub_17258(v110);
      sub_1E5DC(v77);
      v79 = v178;
      v84 = 112;
      memcpy(v178, v78, sizeof(v178));
      v80 = v153;
      memcpy(v153, v178, sizeof(v153));
      v85 = sub_2124(&qword_30ED8, &qword_28120);
      v87 = sub_1D9CC();
      v93 = v176;
      sub_2B7C(v80, v85, v176);
      sub_1E624(v80);
      v81 = v179;
      memcpy(v179, v93, v84);
      sub_1E6AC(v81, &v151);
      v82 = v150;
      memcpy(v150, v81, v84);
      v92 = v152;
      sub_3208(v82, v85, v152);
      sub_1E624(v82);
      v83 = v180;
      memcpy(v180, v92, v84);
      sub_1E6AC(v83, &v148);
      v88 = v147;
      memcpy(v147, v83, v84);
      v86 = sub_2124(&qword_30EC8, &qword_28118);
      v18 = sub_1D7BC();
      v89 = v149;
      sub_17AF4(v88, v85, v86, v87, v18, v149);
      sub_1E624(v88);
      v90 = v181;
      v91 = 113;
      memcpy(v181, v89, 0x71uLL);
      memcpy(__b, v181, 0x71uLL);
      sub_1E624(v92);
      sub_1E624(v93);
    }

    v23 = v187;
    v31 = __b;
    v26 = 113;
    memcpy(v187, __b, 0x71uLL);
    sub_1DB10(v187, &v185);
    v24 = v184;
    memcpy(v184, v23, v26);
    v27 = sub_2124(&qword_30EF8, &qword_28130);
    v28 = sub_1DC54();
    v30 = v186;
    sub_3208(v24, v27, v186);
    sub_1DCFC(v24);
    v25 = v188;
    memcpy(v188, v30, v26);
    sub_1DB10(v25, &v183);
    v29 = v182;
    memcpy(v182, v25, v26);
    v21 = sub_1DD84();
    sub_17BEC(v29, v129, v27, v21, v28, v138);
    sub_1DCFC(v29);
    sub_1DEA8(v138, v140);
    sub_1DCFC(v30);
    sub_1DCFC(v31);
  }

  else
  {
    v106 = v141;
    v107 = v143;
    v98 = v143;
    v97 = v141;
    v145 = v141;
    v146 = v143;
    sub_1D178(v141, v143);
    sub_25560();
    v99 = v109[1];
    v100 = v109[2];
    v101 = *(v109 + 24);

    sub_25540();
    sub_1E7F8(v99, v100);
    v104 = *(v121 + 8);
    v103 = v121 + 8;
    v104(v124, v120);
    sub_25550();
    v104(v126, v120);
    v102 = sub_257C0();
    sub_1DE28();
    sub_25940();
    v104(v128, v120);
    v105 = sub_1DD84();
    sub_2B7C(v133, v129, v135);
    sub_1E840(v133);
    v144 = v133;
    sub_1E89C(v135, v131);
    sub_3208(v131, v129, v133);
    sub_1E840(v131);
    sub_1E89C(v133, v131);
    v96 = sub_2124(&qword_30EF8, &qword_28130);
    v8 = sub_1DC54();
    sub_17AF4(v131, v129, v96, v105, v8, v138);
    sub_1E840(v131);
    sub_1DEA8(v138, v140);
    sub_1E840(v133);
    sub_1E840(v135);
    sub_1E93C(v97, v98);
  }

  sub_1DFB4(v140, v138);
  sub_1E1CC();
  sub_3208(v138, v136, v108);
  sub_1E274(v138);
  return sub_1E274(v140);
}

uint64_t sub_1CF3C(uint64_t a1)
{
  v7 = a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2 = *(a1 + 24);

  v5[0] = v3;
  v5[1] = v4;
  v6 = v2;
  sub_2124(&qword_30FB8, &unk_28360);
  sub_25A40();
  sub_1F0E4(v5);
}

uint64_t sub_1D030(uint64_t a1)
{
  v7 = a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2 = *(a1 + 24);

  v5[0] = v3;
  v5[1] = v4;
  v6 = v2;
  sub_2124(&qword_30FB8, &unk_28360);
  sub_25A40();
  sub_1F0E4(v5);
}

uint64_t sub_1D130(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1D178(result, a2);
  }

  return result;
}

uint64_t sub_1D178(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t *sub_1D1F4(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1D220()
{
  v12 = type metadata accessor for InstalledSoftwareView();
  v1 = *(*(v12 - 8) + 80);
  v10 = (v1 + 16) & ~v1;
  v11 = v10 + *(*(v12 - 8) + 64);
  v2 = *(v0 + v10);

  v3 = *(v0 + v10 + 8);

  v4 = *(v0 + v10 + 16);

  v13 = *(v12 + 24);
  v14 = sub_25400();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10 + v13, 1))
  {
    (*(v15 + 8))(v9 + v10 + v13, v14);
  }

  v8 = (v9 + v10 + *(v12 + 28));
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
    v5 = *v8;
  }

  return swift_deallocObject();
}

uint64_t sub_1D430(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  v9 = type metadata accessor for InstalledSoftwareView();
  v10 = *(v9 + 24);
  v12 = sub_25400();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a1 + v10, 1))
  {
    v2 = sub_2124(&qword_30AE0, &unk_28050);
    memcpy((a2 + v10), (a1 + v10), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v13 + 32))();
    (*(v13 + 56))(a2 + v10, 0, 1, v12);
  }

  __dst = (a2 + *(v9 + 28));
  __src = (a1 + *(v9 + 28));
  v7 = sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_25640();
    (*(*(v3 - 8) + 32))(__dst, __src);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(__dst, __src, *(*(v7 - 8) + 64));
  }

  return a2;
}

uint64_t sub_1D68C()
{
  v1 = *(type metadata accessor for InstalledSoftwareView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1D030(v2);
}

unint64_t sub_1D6F0()
{
  v2 = qword_30EC0;
  if (!qword_30EC0)
  {
    sub_2C88(&qword_30EB8, &qword_28110);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30EC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1D790(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1D7BC()
{
  v2 = qword_30ED0;
  if (!qword_30ED0)
  {
    sub_2C88(&qword_30EC8, &qword_28118);
    sub_1D6F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30ED0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1D860(uint64_t *a1)
{
  v1 = *a1;

  if (a1[7])
  {
    v2 = a1[8];
  }

  if (a1[9])
  {
    v3 = a1[10];
  }

  return a1;
}

void *sub_1D8CC(void *a1, void *a2)
{
  v7 = *a1;

  *a2 = v7;
  memcpy(a2 + 1, a1 + 1, 0x30uLL);
  if (a1[7])
  {
    v5 = a1[7];
    v6 = a1[8];

    a2[7] = v5;
    a2[8] = v6;
  }

  else
  {
    *(a2 + 7) = *(a1 + 7);
  }

  if (a1[9])
  {
    v3 = a1[9];
    v4 = a1[10];

    a2[9] = v3;
    a2[10] = v4;
  }

  else
  {
    *(a2 + 9) = *(a1 + 9);
  }

  return a2;
}

unint64_t sub_1D9CC()
{
  v2 = qword_30EE0;
  if (!qword_30EE0)
  {
    sub_2C88(&qword_30ED8, &qword_28120);
    sub_1DA70();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30EE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1DA70()
{
  v2 = qword_30EE8;
  if (!qword_30EE8)
  {
    sub_2C88(&qword_30EF0, &qword_28128);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30EE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1DB10(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  sub_17678(*a1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  *(a2 + 96) = v15;
  *(a2 + 104) = v16;
  *(a2 + 112) = v17 & 1;
  return result;
}

unint64_t sub_1DC54()
{
  v2 = qword_30F00;
  if (!qword_30F00)
  {
    sub_2C88(&qword_30EF8, &qword_28130);
    sub_1D9CC();
    sub_1D7BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30F00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1DD84()
{
  v2 = qword_30F08;
  if (!qword_30F08)
  {
    sub_2C88(&qword_30E50, &qword_280D0);
    sub_1DE28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30F08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1DE28()
{
  v2 = qword_30F10;
  if (!qword_30F10)
  {
    sub_25570();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30F10);
    return WitnessTable;
  }

  return v2;
}

char *sub_1DEA8(char *a1, char *a2)
{
  v7 = sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    v2 = sub_25570();
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = sub_2124(&qword_30E50, &qword_280D0);
    memcpy(&a2[*(v3 + 36)], &a1[*(v3 + 36)], 0x29uLL);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1DFB4(uint64_t a1, uint64_t a2)
{
  sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    v17 = *(a1 + 96);
    v18 = *(a1 + 104);
    v19 = *(a1 + 112);
    sub_17678(*a1, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    *(a2 + 40) = v10;
    *(a2 + 48) = v11;
    *(a2 + 56) = v12;
    *(a2 + 64) = v13;
    *(a2 + 72) = v14;
    *(a2 + 80) = v15;
    *(a2 + 88) = v16;
    *(a2 + 96) = v17;
    *(a2 + 104) = v18;
    *(a2 + 112) = v19 & 1;
  }

  else
  {
    v2 = sub_25570();
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = sub_2124(&qword_30E50, &qword_280D0);
    memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_1E1CC()
{
  v2 = qword_30F18;
  if (!qword_30F18)
  {
    sub_2C88(&qword_30EB0, &qword_28108);
    sub_1DD84();
    sub_1DC54();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30F18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1E274(uint64_t a1)
{
  sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_17190(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
  }

  else
  {
    v1 = sub_25570();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1E368()
{
  v12 = type metadata accessor for InstalledSoftwareView();
  v1 = *(*(v12 - 8) + 80);
  v10 = (v1 + 16) & ~v1;
  v11 = v10 + *(*(v12 - 8) + 64);
  v2 = *(v0 + v10);

  v3 = *(v0 + v10 + 8);

  v4 = *(v0 + v10 + 16);

  v13 = *(v12 + 24);
  v14 = sub_25400();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10 + v13, 1))
  {
    (*(v15 + 8))(v9 + v10 + v13, v14);
  }

  v8 = (v9 + v10 + *(v12 + 28));
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
    v5 = *v8;
  }

  return swift_deallocObject();
}

uint64_t sub_1E578()
{
  v1 = *(type metadata accessor for InstalledSoftwareView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1CF3C(v2);
}

uint64_t sub_1E5DC(uint64_t a1)
{
  sub_9158(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  return a1;
}

uint64_t sub_1E624(uint64_t a1)
{
  sub_9158(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  if (*(a1 + 80))
  {
    v2 = *(a1 + 88);
  }

  if (*(a1 + 96))
  {
    v3 = *(a1 + 104);
  }

  return a1;
}

uint64_t sub_1E6AC(uint64_t a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  sub_BF2C(*a1, v8, v9 & 1);
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  v10 = *(a1 + 24);

  *(a2 + 24) = v10;
  memcpy((a2 + 32), (a1 + 32), 0x29uLL);
  if (*(a1 + 80))
  {
    v5 = *(a1 + 80);
    v6 = *(a1 + 88);

    *(a2 + 80) = v5;
    *(a2 + 88) = v6;
  }

  else
  {
    *(a2 + 80) = *(a1 + 80);
  }

  if (*(a1 + 96))
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 104);

    *(a2 + 96) = v3;
    *(a2 + 104) = v4;
  }

  else
  {
    *(a2 + 96) = *(a1 + 96);
  }

  return a2;
}

uint64_t sub_1E7F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E840(uint64_t a1)
{
  v1 = sub_25570();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1E89C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25570();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_2124(&qword_30E50, &qword_280D0);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1E93C(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1EA90(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    return (v7 + 1);
  }

  else
  {
    v5 = sub_2124(&qword_30AE0, &unk_28050);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 24)], a2, v5);
    }

    else
    {
      v4 = sub_2124(&qword_30AF8, &unk_27B80);
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(&a1[*(a3 + 28)], a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v6;
}

char *sub_1EC80(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    v4 = sub_2124(&qword_30AE0, &unk_28050);
    if (a3 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 56))(&v5[*(a4 + 24)], a2, a2, v4);
    }

    else
    {
      result = sub_2124(&qword_30AF8, &unk_27B80);
      if (a3 == *(*(result - 1) + 84))
      {
        return (*(*(result - 1) + 56))(&v5[*(a4 + 28)], a2, a2, result);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1EE20()
{
  v5 = type metadata accessor for InstalledSoftware();
  if (v0 <= 0x3F)
  {
    v5 = sub_1EF58();
    if (v1 <= 0x3F)
    {
      v5 = sub_1EFEC();
      if (v2 <= 0x3F)
      {
        v5 = sub_B814();
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

uint64_t sub_1EF58()
{
  v4 = qword_30F78;
  if (!qword_30F78)
  {
    v3 = sub_25A50();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_30F78);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1EFEC()
{
  v4 = qword_30F80;
  if (!qword_30F80)
  {
    sub_25400();
    v3 = sub_25D90();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_30F80);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_1F0E4(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

unint64_t sub_1F140()
{
  v2 = qword_30FC0;
  if (!qword_30FC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30FC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1F1B8()
{
  v12 = type metadata accessor for InstalledSoftwareView();
  v1 = *(*(v12 - 8) + 80);
  v10 = (v1 + 16) & ~v1;
  v11 = v10 + *(*(v12 - 8) + 64);
  v2 = *(v0 + v10);

  v3 = *(v0 + v10 + 8);

  v4 = *(v0 + v10 + 16);

  v13 = *(v12 + 24);
  v14 = sub_25400();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10 + v13, 1))
  {
    (*(v15 + 8))(v9 + v10 + v13, v14);
  }

  v8 = (v9 + v10 + *(v12 + 28));
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
    v5 = *v8;
  }

  return swift_deallocObject();
}

uint64_t sub_1F3C8()
{
  v1 = *(type metadata accessor for InstalledSoftwareView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1A838(v2);
}

uint64_t sub_1F42C()
{
  v12 = type metadata accessor for InstalledSoftwareView();
  v1 = *(*(v12 - 8) + 80);
  v10 = (v1 + 16) & ~v1;
  v11 = v10 + *(*(v12 - 8) + 64);
  v2 = *(v0 + v10);

  v3 = *(v0 + v10 + 8);

  v4 = *(v0 + v10 + 16);

  v13 = *(v12 + 24);
  v14 = sub_25400();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10 + v13, 1))
  {
    (*(v15 + 8))(v9 + v10 + v13, v14);
  }

  v8 = (v9 + v10 + *(v12 + 28));
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
    v5 = *v8;
  }

  return swift_deallocObject();
}

uint64_t sub_1F63C()
{
  v1 = *(type metadata accessor for InstalledSoftwareView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1AC68(v2);
}

uint64_t sub_1F6A0()
{
  v12 = type metadata accessor for InstalledSoftwareView();
  v1 = *(*(v12 - 8) + 80);
  v10 = (v1 + 16) & ~v1;
  v11 = v10 + *(*(v12 - 8) + 64);
  v2 = *(v0 + v10);

  v3 = *(v0 + v10 + 8);

  v4 = *(v0 + v10 + 16);

  v13 = *(v12 + 24);
  v14 = sub_25400();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10 + v13, 1))
  {
    (*(v15 + 8))(v9 + v10 + v13, v14);
  }

  v8 = (v9 + v10 + *(v12 + 28));
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
    v5 = *v8;
  }

  return swift_deallocObject();
}

uint64_t sub_1F8B0()
{
  v1 = *(type metadata accessor for InstalledSoftwareView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B37C(v2);
}

void *sub_1F914(const void *a1, void *a2)
{
  v6 = sub_25440();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30C70, &qword_27E30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1FA3C(uint64_t a1)
{
  v3 = sub_25440();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1FAE4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_BF2C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1FB40()
{
  v2 = qword_30FD0;
  if (!qword_30FD0)
  {
    sub_2C88(&qword_30FC8, &unk_28370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30FD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1FBD4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_9158(*a1, *(a1 + 8), *(a1 + 16) & 1);
    v1 = *(a1 + 24);
  }

  return a1;
}

uint64_t sub_1FC2C()
{
  v12 = type metadata accessor for InstalledSoftwareView();
  v1 = *(*(v12 - 8) + 80);
  v10 = (v1 + 16) & ~v1;
  v11 = v10 + *(*(v12 - 8) + 64);
  v2 = *(v0 + v10);

  v3 = *(v0 + v10 + 8);

  v4 = *(v0 + v10 + 16);

  v13 = *(v12 + 24);
  v14 = sub_25400();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10 + v13, 1))
  {
    (*(v15 + 8))(v9 + v10 + v13, v14);
  }

  v8 = (v9 + v10 + *(v12 + 28));
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
    v5 = *v8;
  }

  return swift_deallocObject();
}

uint64_t sub_1FE3C()
{
  v1 = *(type metadata accessor for InstalledSoftwareView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1BA38(v2);
}

unint64_t sub_1FEA0(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for Attributes();
    v1 = sub_25C90();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_1FFB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20000()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20080()
{
  v12 = type metadata accessor for InstalledSoftwareView();
  v1 = *(*(v12 - 8) + 80);
  v10 = (v1 + 16) & ~v1;
  v11 = v10 + *(*(v12 - 8) + 64);
  v2 = *(v0 + v10);

  v3 = *(v0 + v10 + 8);

  v4 = *(v0 + v10 + 16);

  v13 = *(v12 + 24);
  v14 = sub_25400();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10 + v13, 1))
  {
    (*(v15 + 8))(v9 + v10 + v13, v14);
  }

  v8 = (v9 + v10 + *(v12 + 28));
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
    v5 = *v8;
  }

  return swift_deallocObject();
}

uint64_t sub_20290()
{
  v1 = *(type metadata accessor for InstalledSoftwareView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B324(v2);
}

uint64_t sub_2035C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_203A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_203F4()
{
  v2 = qword_30FD8;
  if (!qword_30FD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_30FD8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_20458()
{
  v12 = type metadata accessor for InstalledSoftwareView();
  v1 = *(*(v12 - 8) + 80);
  v10 = (v1 + 16) & ~v1;
  v11 = v10 + *(*(v12 - 8) + 64);
  v2 = *(v0 + v10);

  v3 = *(v0 + v10 + 8);

  v4 = *(v0 + v10 + 16);

  v13 = *(v12 + 24);
  v14 = sub_25400();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10 + v13, 1))
  {
    (*(v15 + 8))(v9 + v10 + v13, v14);
  }

  v8 = (v9 + v10 + *(v12 + 28));
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
    v5 = *v8;
  }

  return swift_deallocObject();
}

void sub_20668(uint64_t a1)
{
  v2 = type metadata accessor for InstalledSoftwareView();
  v3 = (v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)));

  sub_1AB54(a1, v3);
}

uint64_t type metadata accessor for Attributes()
{
  v4 = qword_31038;
  if (!qword_31038)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_31038);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_20778()
{
  v14 = type metadata accessor for InstalledSoftwareView();
  v1 = *(*(v14 - 8) + 80);
  v11 = (v1 + 16) & ~v1;
  v10 = v11 + *(*(v14 - 8) + 64);
  v16 = sub_25400();
  v15 = *(v16 - 8);
  v12 = (v10 + *(v15 + 80)) & ~*(v15 + 80);
  v13 = v12 + *(v15 + 64);
  v2 = *(v0 + v11);

  v3 = *(v0 + v11 + 8);

  v4 = *(v0 + v11 + 16);

  v17 = *(v14 + 24);
  if (!(*(v15 + 48))(v0 + v11 + v17, 1, v16))
  {
    (*(v15 + 8))(v9 + v11 + v17, v16);
  }

  v8 = (v9 + v11 + *(v14 + 28));
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
    v5 = *v8;
  }

  (*(v15 + 8))(v9 + v12, v16);
  return swift_deallocObject();
}

uint64_t sub_20A2C()
{
  v4 = *(type metadata accessor for InstalledSoftwareView() - 8);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v5 = v6 + *(v4 + 64);
  v1 = *(sub_25400() - 8);
  v2 = v0 + ((v5 + *(v1 + 80)) & ~*(v1 + 80));

  return sub_17774(v0 + v6, v2);
}

unint64_t sub_20B10()
{
  v2 = qword_30FF0;
  if (!qword_30FF0)
  {
    sub_2C88(&qword_30FE8, &qword_28388);
    sub_20BB8();
    sub_20CE4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30FF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20BB8()
{
  v2 = qword_30FF8;
  if (!qword_30FF8)
  {
    sub_2C88(&qword_31000, &qword_28390);
    sub_20C5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20C5C()
{
  v2 = qword_31008;
  if (!qword_31008)
  {
    sub_2C88(&qword_31010, &qword_28398);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20CE4()
{
  v2 = qword_31018;
  if (!qword_31018)
  {
    sub_2C88(&qword_31020, &qword_283A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20D6C()
{
  v2 = qword_31028;
  if (!qword_31028)
  {
    sub_2C88(&qword_30FE0, &qword_28380);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31028);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20DF4()
{
  v2 = qword_31030;
  if (!qword_31030)
  {
    sub_25680();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31030);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_20E74(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_20EA0(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v3 = a1[2];

  return a1;
}

uint64_t *sub_20EE4(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v3 = a1[2];

  v7 = a1 + *(sub_2124(&qword_30FE8, &qword_28388) + 36);
  v4 = *v7;

  v8 = *(sub_2124(&qword_31020, &qword_283A0) + 28);
  v5 = sub_259A0();
  (*(*(v5 - 8) + 8))(&v7[v8]);
  return a1;
}

char *sub_20FB4(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v6 = *(a1 + 2);

  *(a2 + 2) = v6;
  v8 = *(sub_2124(&qword_30FE8, &qword_28388) + 36);
  v9 = *&a1[v8];

  *&a2[v8] = v9;
  v10 = *(sub_2124(&qword_31020, &qword_283A0) + 28);
  v2 = sub_259A0();
  (*(*(v2 - 8) + 16))(&a2[v8 + v10], &a1[v8 + v10]);
  return a2;
}

uint64_t sub_210F0()
{
  result = sub_25BF0("com.apple.SoftwareUpdateUI", 0x1AuLL, 1);
  qword_319E8 = result;
  qword_319F0 = v1;
  return result;
}

uint64_t *sub_21134()
{
  if (qword_319E0 != -1)
  {
    swift_once();
  }

  return &qword_319E8;
}

uint64_t sub_21194()
{
  v0 = sub_21134();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_211D0()
{
  v2 = sub_255C0();
  sub_21264(v2, qword_31F38);
  sub_21300(v2, qword_31F38);
  v0 = sub_21134();
  v3 = *v0;
  v4 = v0[1];

  sub_25BF0("SystemVersionSettings", 0x15uLL, 1);
  return sub_255B0();
}

uint64_t sub_21264(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t sub_21300(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_21358()
{
  if (qword_319F8 != -1)
  {
    swift_once();
  }

  v0 = sub_255C0();
  return sub_21300(v0, qword_31F38);
}

uint64_t sub_213C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21358();
  v1 = sub_255C0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_21428(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v2._rawValue = sub_25F00();
  *v3 = "OS_VERSION_GROUP";
  *(v3 + 8) = 16;
  *(v3 + 16) = 2;
  *(v3 + 24) = "SPLAT_VERSION_GROUP";
  *(v3 + 32) = 19;
  *(v3 + 40) = 2;
  sub_3AB0();
  v8 = sub_25EA0(v2, v7);

  if (!v8)
  {
    v6 = 0;
LABEL_6:

    return v6;
  }

  if (v8 == 1)
  {
    v6 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_2155C(char a1)
{
  if (a1)
  {
    return sub_25BF0("SPLAT_VERSION_GROUP", 0x13uLL, 1);
  }

  else
  {
    return sub_25BF0("OS_VERSION_GROUP", 0x10uLL, 1);
  }
}

unint64_t sub_21634()
{
  v2 = qword_31040;
  if (!qword_31040)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31040);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_21780@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21428(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_217B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2155C(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217F0(char a1)
{
  sub_2155C(a1 & 1);
  sub_25920();
}

unint64_t sub_21874()
{
  v2 = qword_31048;
  if (!qword_31048)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31048);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_21900(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
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

_BYTE *sub_21A68(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
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

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21C98(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_257B0();
  sub_25660();
  sub_21D24();
  return swift_getWitnessTable();
}

unint64_t sub_21D24()
{
  v2 = qword_31050;
  if (!qword_31050)
  {
    sub_257B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31050);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_21DA4(char a1)
{
  if (a1)
  {
    return sub_25BF0("securityUpdate", 0xEuLL, 1);
  }

  else
  {
    return sub_25BF0("operatingSystem", 0xFuLL, 1);
  }
}

unint64_t sub_21FB8()
{
  v2 = qword_31058;
  if (!qword_31058)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31058);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_220D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t sub_22150()
{
  v2 = *(v0 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation);
  sub_1D130(v2, *(v0 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation + 8));
  return v2;
}

uint64_t sub_2219C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return sub_22214(a1 & 1, a2, a3, a4, a5, a6);
}

uint64_t sub_22214(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v21 = a1;
  v22 = a2;
  v27 = a3;
  v26 = a4;
  v24 = a5;
  v25 = a6;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v19 = (*(*(sub_2124(&qword_30C70, &qword_27E30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v19 - v19;
  v20 = 1;
  v35 = __chkstk_darwin(v21) & 1;
  v33 = v7;
  v34 = v8;
  v32 = v9;
  v30 = v10;
  v31 = v11;
  v29 = v6;
  sub_254F0();
  *(v6 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_softwareType) = v21 & v20;

  v12 = v26;
  v13 = v23;
  v14 = v27;
  *(v6 + 16) = v22;
  *(v6 + 24) = v14;
  sub_1F914(v12, v13);
  sub_223BC(v23, (v6 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_installationDate));
  sub_1D130(v24, v25);
  v15 = v24;
  v16 = v25;
  v17 = (v6 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation);
  *v17 = v24;
  v17[1] = v16;
  sub_224E4(v15, v16);
  sub_1FA3C(v26);

  return v28;
}

void *sub_223BC(const void *a1, void *a2)
{
  v6 = sub_25440();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30C70, &qword_27E30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_224E4(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1E93C(result, a2);
  }

  return result;
}

uint64_t sub_22544@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware___observationRegistrar;
  v2 = sub_25500();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_225B0(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_25500();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v1 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v7);
  v11 = &v5 - v3;
  v16 = v2;
  v15 = *(v5 + class metadata base offset for KeyPath + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v3, v6 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware___observationRegistrar);
  v8 = &v13;
  v13 = v6;
  sub_22720();
  sub_254C0();
  return (*(v9 + 8))(v11, v12);
}

unint64_t sub_22720()
{
  v2 = qword_31060;
  if (!qword_31060)
  {
    type metadata accessor for InstalledSoftware();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31060);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for InstalledSoftware()
{
  v1 = qword_31E10;
  if (!qword_31E10)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_22814@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_25500();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v19);
  v16 = v11 - v7;
  v32 = v6;
  v31 = *(v14 + class metadata base offset for KeyPath + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v7, v17 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware___observationRegistrar);
  v24 = &v27;
  v27 = v17;
  sub_22720();
  v9 = v23;
  sub_254B0();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}