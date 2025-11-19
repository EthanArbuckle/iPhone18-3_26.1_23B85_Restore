unint64_t sub_1720()
{
  result = qword_C3A0;
  if (!qword_C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3A0);
  }

  return result;
}

uint64_t sub_1790()
{
  v0 = (*(*(sub_1B58(&qword_C3B8, &qword_5198) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v17 - v1;
  v3 = *(*(sub_4CF8() - 8) + 64);
  __chkstk_darwin();
  v4 = *(*(sub_4AA8() - 8) + 64);
  __chkstk_darwin();
  v5 = sub_4A88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4CE8();
  sub_4A98();
  sub_4A78();
  v10 = enum case for ColorScheme.dark(_:);
  v11 = sub_4B08();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v2, v10, v11);
  (*(v12 + 56))(v2, 0, 1, v11);
  sub_1B58(&qword_C3C0, &unk_51A0);
  v13 = *(sub_4B28() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_50C0;
  sub_4B18();
  sub_1BA0();
  sub_4B38();

  sub_1BF8(v2);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AB0()
{
  sub_1B58(&qword_C3A8, &qword_5190);
  sub_4A88();
  sub_1BA0();
  swift_getOpaqueTypeConformance2();
  return sub_4BB8();
}

uint64_t sub_1B58(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1BA0()
{
  result = qword_C3B0;
  if (!qword_C3B0)
  {
    sub_4A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B0);
  }

  return result;
}

uint64_t sub_1BF8(uint64_t a1)
{
  v2 = sub_1B58(&qword_C3B8, &qword_5198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C74()
{
  result = qword_C3C8;
  if (!qword_C3C8)
  {
    sub_1CD8(&qword_C3D0, &unk_51D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3C8);
  }

  return result;
}

uint64_t sub_1CD8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_1D60()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall ActionButtonSettings.viewDidLoad()()
{
  v1 = v0;
  v66 = sub_4AD8();
  v63 = *(v66 - 8);
  v65 = *(v63 + 64);
  v2 = (__chkstk_darwin)();
  v64 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v68 = &v59 - v4;
  v5 = sub_4BA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v59 - v10;
  v67 = sub_4AB8();
  v69 = *(v67 - 8);
  v12 = *(v69 + 64);
  v13 = __chkstk_darwin(v67);
  v70 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v71.receiver = v0;
  v71.super_class = ActionButtonSettings;
  objc_msgSendSuper2(&v71, "viewDidLoad");
  v16 = [v0 traitCollection];
  sub_4CC8();

  v17 = [v1 traitCollection];
  sub_4CD8();

  v62 = sub_4B88();
  (*(v6 + 8))(v11, v5);
  v18 = v1;
  v60 = v1;
  v19 = [v1 traitCollection];
  sub_4CD8();

  v20 = *(v6 + 32);
  v20(v9, v11, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v61 = swift_allocObject();
  v20((v61 + v21), v9, v5);
  v22 = v63;
  v23 = v68;
  v24 = [v18 traitCollection];
  sub_4CB8();

  v25 = v69;
  v26 = *(v69 + 16);
  v59 = v15;
  v27 = v67;
  v26(v70, v15, v67);
  v28 = v64;
  v29 = v66;
  (*(v22 + 16))(v64, v23, v66);
  v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v31 = v30 + v12;
  v32 = (v30 + v12) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v22 + 80) + v32 + 24) & ~*(v22 + 80);
  v34 = swift_allocObject();
  (*(v25 + 32))(v34 + v30, v70, v27);
  *(v34 + v31) = v62 & 1;
  v35 = v34 + v32;
  v37 = v60;
  v36 = v61;
  *(v35 + 8) = sub_3C60;
  *(v35 + 16) = v36;
  (*(v22 + 32))(v34 + v33, v28, v29);
  v38 = objc_allocWithZone(sub_4AF8());

  v39 = sub_4AE8();
  v40 = [v37 view];
  if (!v40)
  {
    __break(1u);
    goto LABEL_9;
  }

  v41 = v40;
  v42 = v39;
  v43 = [v42 view];
  if (!v43)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v44 = v43;
  [v41 addSubview:v43];

  v45 = [v42 view];
  if (!v45)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v46 = v45;
  v47 = [v37 view];
  if (!v47)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v48 = v47;
  [v47 bounds];
  v50 = v49;
  v52 = v51;

  [v46 setFrame:{0.0, 0.0, v50, v52}];
  v53 = [v42 view];
  if (!v53)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v54 = v53;
  [v53 setAutoresizingMask:18];

  v55 = [v42 view];
  if (v55)
  {
    v56 = v55;
    v57 = sub_4BD8();
    [v56 setAccessibilityIdentifier:v57];

    v58 = [v42 overrideUserInterfaceStyle];
    [v37 setOverrideUserInterfaceStyle:v58];
    [v37 addChildViewController:v42];
    [v42 didMoveToParentViewController:v37];

    (*(v22 + 8))(v68, v29);
    (*(v69 + 8))(v59, v67);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_2468(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a1;
  v43 = a5;
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v49 = sub_4B48();
  v52 = *(v49 - 8);
  v5 = *(v52 + 64);
  __chkstk_darwin();
  v48 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4B78();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  __chkstk_darwin();
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_4AD8();
  v10 = *(v39 - 8);
  v40 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v12;
  v13 = sub_4AB8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_4B58();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CEC(0, &qword_C448, OS_dispatch_queue_ptr);
  (*(v18 + 104))(v21, enum case for DispatchQoS.QoSClass.userInteractive(_:), v17);
  v41 = sub_4CA8();
  (*(v18 + 8))(v21, v17);
  (*(v14 + 16))(v16, v42, v13);
  v22 = v12;
  v23 = v39;
  (*(v10 + 16))(v22, v43, v39);
  v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v25 = v24 + v15;
  v26 = (v24 + v15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v10 + 80) + v26 + 24) & ~*(v10 + 80);
  v28 = swift_allocObject();
  (*(v14 + 32))(v28 + v24, v16, v13);
  *(v28 + v25) = v45;
  v29 = v28 + v26;
  v30 = v47;
  *(v29 + 8) = v46;
  *(v29 + 16) = v30;
  (*(v10 + 32))(v28 + v27, v38, v23);
  aBlock[4] = sub_3E90;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_32A4;
  aBlock[3] = &unk_8600;
  v31 = _Block_copy(aBlock);

  v32 = v44;
  sub_4B68();
  v53 = &_swiftEmptyArrayStorage;
  sub_4018(&qword_C450, &type metadata accessor for DispatchWorkItemFlags);
  sub_1B58(&qword_C458, &qword_5208);
  sub_3FB4();
  v34 = v48;
  v33 = v49;
  sub_4D08();
  v35 = v41;
  sub_4C98();
  _Block_release(v31);

  (*(v52 + 8))(v34, v33);
  (*(v50 + 8))(v32, v51);
}

void sub_29BC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v36 = a3;
  v37 = a4;
  v35 = a2;
  v5 = (*(*(sub_1B58(&qword_C400, &qword_5200) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v32 - v6;
  v34 = sub_4AD8();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = (*(*(sub_1B58(&qword_C468, &qword_5210) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v32 - v11;
  v13 = sub_4AB8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, enum case for SettingsAppPrimaryNavigationMode.stateDriven(_:), v13);
  sub_4018(&qword_C470, &type metadata accessor for SettingsAppPrimaryNavigationMode);
  sub_4C18();
  sub_4C18();
  (*(v14 + 8))(v17, v13);
  if (v39 == v38)
  {
    v18 = sub_4C88();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    v19 = v34;
    (*(v8 + 16))(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v34);
    sub_4C68();
    v20 = v37;

    v21 = sub_4C58();
    v22 = (*(v8 + 80) + 56) & ~*(v8 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = &protocol witness table for MainActor;
    *(v23 + 32) = v35 & 1;
    *(v23 + 40) = v36;
    *(v23 + 48) = v20;
    (*(v8 + 32))(v23 + v22, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
    sub_2FA4(0, 0, v12, &unk_5220, v23);
  }

  else
  {
    v24 = [objc_opt_self() defaultWorkspace];
    if (v24)
    {
      v25 = v24;
      sub_4A28();
      v26 = sub_4A38();
      v27 = *(v26 - 8);
      v29 = 0;
      if ((*(v27 + 48))(v7, 1, v26) != 1)
      {
        sub_4A08(v28);
        v29 = v30;
        (*(v27 + 8))(v7, v26);
      }

      sub_4380(&_swiftEmptyArrayStorage);
      isa = sub_4BC8().super.isa;

      [v25 openSensitiveURL:v29 withOptions:isa];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2E80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 48) = a4;
  sub_4C68();
  *(v7 + 40) = sub_4C58();
  v9 = sub_4C48();

  return _swift_task_switch(sub_2F20, v9, v8);
}

uint64_t sub_2F20()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  if (v2 == 1)
  {
    v4 = *(v0 + 24);
    (*(v0 + 16))(v3);
  }

  else
  {
    v5 = *(v0 + 32);
    sub_4AC8();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1B58(&qword_C468, &qword_5210) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_4984(a3, v26 - v10, &qword_C468, &qword_5210);
  v12 = sub_4C88();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_477C(v11, &qword_C468, &qword_5210);
  }

  else
  {
    sub_4C78();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_4C48();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_4BF8() + 32;
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

      sub_477C(a3, &qword_C468, &qword_5210);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_477C(a3, &qword_C468, &qword_5210);
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

uint64_t sub_32A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

Swift::Void __swiftcall ActionButtonSettings.viewDidAppear(_:)(Swift::Bool a1)
{
  v38 = sub_4A68();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v38);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B58(&qword_C400, &qword_5200);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_4A38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  v39.receiver = v1;
  v39.super_class = ActionButtonSettings;
  objc_msgSendSuper2(&v39, "viewDidAppear:", a1);
  sub_4A28();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_477C(v10, &qword_C400, &qword_5200);
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    v19 = sub_4A58();
    type metadata accessor for ActionButtonSettings(v19);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v22 = [v21 bundleURL];

    sub_4A18();
    v23 = objc_allocWithZone(_NSLocalizedStringResource);
    v24 = sub_4BD8();
    v37 = v1;
    v25 = v24;
    isa = sub_4A48().super.isa;
    sub_4A08(v27);
    v29 = v28;
    v30 = [v23 initWithKey:v25 table:0 locale:isa bundleURL:v28];

    v31 = *(v12 + 8);
    v31(v16, v11);
    (*(v3 + 8))(v6, v38);
    v32 = sub_4BD8();
    sub_3CEC(0, &qword_C408, _NSLocalizedStringResource_ptr);
    v33 = sub_4C28().super.isa;
    sub_4A08(v34);
    v36 = v35;
    [v37 pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v32 title:v30 localizedNavigationComponents:v33 deepLink:v35];

    v31(v18, v11);
  }
}

Swift::Void __swiftcall ActionButtonSettings.viewDidDisappear(_:)(Swift::Bool a1)
{
  v9.super_class = ActionButtonSettings;
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1);
  v3 = [v1 childViewControllers];
  sub_3CEC(0, &qword_C410, UIViewController_ptr);
  v4 = sub_4C38();

  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v5 = sub_4D28();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_4D18();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 viewDidDisappear:a1];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void __swiftcall ActionButtonSettings.init(nibName:bundle:)(ActionButtonSettings *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_4BD8();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id ActionButtonSettings.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_4BD8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = ActionButtonSettings;
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id ActionButtonSettings.init(coder:)(void *a1)
{
  v4.super_class = ActionButtonSettings;
  v2 = objc_msgSendSuper2(&v4, "initWithCoder:", a1);

  if (v2)
  {
  }

  return v2;
}

uint64_t sub_3BD8()
{
  v1 = sub_4BA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_3C60()
{
  v1 = *(sub_4BA8() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_4B98();
}

uint64_t sub_3CEC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_3D34()
{
  v1 = sub_4AB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_4AD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5 + 16);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_3EA8(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_4AB8() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_4AD8() - 8);
  v6 = *(v1 + v4);
  v7 = *(v1 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *(v1 + (v4 & 0xFFFFFFFFFFFFFFF8) + 16);
  v9 = v1 + (((v4 & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 24) & ~*(v5 + 80));

  return a1(v1 + v3, v6, v7, v8, v9);
}

uint64_t sub_3F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_3FB4()
{
  result = qword_C460;
  if (!qword_C460)
  {
    sub_1CD8(&qword_C458, &qword_5208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C460);
  }

  return result;
}

uint64_t sub_4018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4060(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4158;

  return v7(a1);
}

uint64_t sub_4158()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_4250(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_4D58();
  sub_4C08();
  v6 = sub_4D68();

  return sub_42C8(a1, a2, v6);
}

unint64_t sub_42C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_4D48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_4380(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B58(&qword_C478, &qword_5240);
    v3 = sub_4D38();
    v4 = a1 + 32;

    while (1)
    {
      sub_4984(v4, &v13, &unk_C480, &qword_5248);
      v5 = v13;
      v6 = v14;
      result = sub_4250(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_49EC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_44B0()
{
  v1 = sub_4AD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_457C(uint64_t a1)
{
  v4 = *(sub_4AD8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_4688;

  return sub_2E80(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_4688()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_477C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B58(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_47DC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4814(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4A04;

  return sub_4060(a1, v5);
}

uint64_t sub_48CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4688;

  return sub_4060(a1, v5);
}

uint64_t sub_4984(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B58(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_49EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}