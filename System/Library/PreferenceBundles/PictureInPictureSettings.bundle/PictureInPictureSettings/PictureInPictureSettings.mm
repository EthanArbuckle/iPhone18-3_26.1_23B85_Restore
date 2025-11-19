Swift::Void __swiftcall PictureInPictureSettings.viewDidLoad()()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for PictureInPictureSettingsList() - 8) + 64);
  __chkstk_darwin();
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20.receiver = v1;
  v20.super_class = PictureInPictureSettings;
  objc_msgSendSuper2(&v20, "viewDidLoad");
  sub_1DF8(v4);
  v5 = objc_allocWithZone(sub_15EC(&qword_C2E0, &unk_3D50));
  v6 = sub_3918();
  if (qword_C2C8 != -1)
  {
    swift_once();
  }

  v7 = qword_C6A0;
  v8 = sub_3A38();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  if (!v9)
  {
    sub_3A48();
    v9 = sub_3A38();
  }

  [v1 setTitle:v9];

  v10 = [v6 view];
  if (!v10)
  {
    v11 = v6;
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v1 view];
  if (v12)
  {
    v13 = v12;
    [v12 addSubview:v11];

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;

      [v11 setFrame:{0.0, 0.0, v17, v19}];
      [v11 setAutoresizingMask:18];
      [v1 addChildViewController:v6];
      [v6 didMoveToParentViewController:v1];

LABEL_10:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_15EC(uint64_t *a1, uint64_t *a2)
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

void __swiftcall PictureInPictureSettings.init(nibName:bundle:)(PictureInPictureSettings *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_3A38();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id PictureInPictureSettings.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_3A38();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = PictureInPictureSettings;
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id PictureInPictureSettings.init(coder:)(void *a1)
{
  v4.super_class = PictureInPictureSettings;
  v2 = objc_msgSendSuper2(&v4, "initWithCoder:", a1);

  if (v2)
  {
  }

  return v2;
}

unint64_t type metadata accessor for PictureInPictureSettings()
{
  result = qword_C310;
  if (!qword_C310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C310);
  }

  return result;
}

uint64_t sub_19A0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_39F8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_3878();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_38A8();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_1B20(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_39F8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_3878();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_38A8();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for PictureInPictureSettingsList()
{
  result = qword_C370;
  if (!qword_C370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CD8()
{
  sub_1D8C();
  if (v0 <= 0x3F)
  {
    sub_39F8();
    if (v1 <= 0x3F)
    {
      sub_3878();
      if (v2 <= 0x3F)
      {
        sub_38A8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8C()
{
  if (!qword_C380)
  {
    v0 = sub_38F8();
    if (!v1)
    {
      atomic_store(v0, &qword_C380);
    }
  }
}

uint64_t sub_1DF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = (*(*(sub_15EC(&qword_C438, &unk_3E48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v22[-v3];
  v5 = *(*(sub_38C8() - 8) + 64);
  __chkstk_darwin();
  v6 = sub_3868();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(*(sub_3A28() - 8) + 64);
  __chkstk_darwin();
  if (qword_C2D8 != -1)
  {
    swift_once();
  }

  v12 = qword_C6C0;
  *a1 = sub_38D8();
  v13 = type metadata accessor for PictureInPictureSettingsList();
  v14 = (a1 + v13[5]);
  *v14 = 0xD000000000000029;
  v14[1] = 0x80000000000044A0;
  v15 = enum case for SettingsEventImage.graphicIcon(_:);
  v16 = sub_39F8();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  v17 = v13[6];
  sub_3A18();
  if (qword_C2D0 != -1)
  {
    swift_once();
  }

  v18 = sub_32B0(v6, qword_C6A8);
  (*(v7 + 16))(v10, v18, v6);
  sub_38B8();
  sub_3888();
  sub_3898();
  v19 = sub_38A8();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v4, 1, v19);
  if (result != 1)
  {
    return (*(v20 + 32))(a1 + v13[7], v4, v19);
  }

  __break(1u);
  return result;
}

uint64_t sub_21C8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = *(*(sub_38C8() - 8) + 64);
  __chkstk_darwin();
  v45 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3868();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin();
  v41 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_3A28() - 8) + 64);
  __chkstk_darwin();
  v8 = sub_15EC(&qword_C3B8, &qword_3E00);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v39 - v11;
  v13 = sub_15EC(&qword_C3C0, &qword_3E08);
  v42 = *(v13 - 8);
  v14 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = v39 - v15;
  v17 = sub_15EC(&qword_C3C8, &qword_3E10);
  v46 = *(v17 - 8);
  v47 = v17;
  v18 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v40 = v39 - v19;
  v48 = v1;
  v50 = v1;
  sub_15EC(&qword_C3D0, &qword_3E18);
  sub_2F78();
  sub_3948();
  v20 = sub_3268(&qword_C428, &qword_C3B8, &qword_3E00);
  sub_3968();
  (*(v9 + 8))(v12, v8);
  v21 = type metadata accessor for PictureInPictureSettingsList();
  v22 = v21[5];
  v39[0] = v21[6];
  v39[1] = v22;
  sub_15EC(&qword_C430, &qword_3E40);
  v23 = *(sub_3878() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  *(swift_allocObject() + 16) = xmmword_3D60;
  sub_3A18();
  if (qword_C2D0 != -1)
  {
    swift_once();
  }

  v26 = v44;
  v27 = sub_32B0(v44, qword_C6A8);
  (*(v43 + 16))(v41, v27, v26);
  sub_38B8();
  sub_3888();
  v28 = v21[7];
  v51 = v8;
  v52 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v40;
  sub_3978();

  (*(v42 + 8))(v16, v13);
  sub_3908();
  if (qword_C2C8 != -1)
  {
    swift_once();
  }

  v31 = qword_C6A0;
  v32 = sub_3958();
  v34 = v33;
  v36 = v35;
  v51 = v13;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v47;
  sub_39B8();
  sub_32E8(v32, v34, v36 & 1);

  return (*(v46 + 8))(v30, v37);
}

uint64_t sub_284C@<X0>(uint64_t a1@<X8>)
{
  if ([objc_opt_self() isPictureInPictureSupported])
  {
    __chkstk_darwin();
    sub_3908();
    if (qword_C2C8 != -1)
    {
      swift_once();
    }

    v2 = qword_C6A0;
    v11 = sub_3958();
    v12 = v3;
    v13 = v4 & 1;
    v14 = v5;
    sub_2D54(&v10);
    sub_15EC(&qword_C3F8, &qword_3E28);
    sub_15EC(&qword_C420, &qword_3E38);
    sub_30DC();
    sub_31EC();
    sub_39E8();
    v6 = sub_15EC(&qword_C3E8, &qword_3E20);
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v8 = sub_15EC(&qword_C3E8, &qword_3E20);
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

uint64_t sub_2AF0(uint64_t *a1)
{
  v2 = sub_15EC(&qword_C408, &qword_3E30);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = *a1;
  sub_38E8();
  sub_39D8();
  sub_3268(&qword_C400, &qword_C408, &qword_3E30);
  sub_39C8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2C74@<X0>(uint64_t a1@<X8>)
{
  sub_3908();
  if (qword_C2C8 != -1)
  {
    swift_once();
  }

  v2 = qword_C6A0;
  result = sub_3958();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

id sub_2D54@<X0>(uint64_t a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    if (homeButtonType == 2)
    {
      sub_3908();
      if (qword_C2C8 == -1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_3908();
      if (qword_C2C8 == -1)
      {
LABEL_6:
        v5 = qword_C6A0;
        sub_3958();
        result = sub_3928();
        *a1 = v6;
        *(a1 + 16) = v7;
        *(a1 + 32) = v8;
        return result;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_2F78()
{
  result = qword_C3D8;
  if (!qword_C3D8)
  {
    sub_2FFC(&qword_C3D0, &qword_3E18);
    sub_3044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D8);
  }

  return result;
}

uint64_t sub_2FFC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_3044()
{
  result = qword_C3E0;
  if (!qword_C3E0)
  {
    sub_2FFC(&qword_C3E8, &qword_3E20);
    sub_30DC();
    sub_31EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3E0);
  }

  return result;
}

unint64_t sub_30DC()
{
  result = qword_C3F0;
  if (!qword_C3F0)
  {
    sub_2FFC(&qword_C3F8, &qword_3E28);
    sub_3268(&qword_C400, &qword_C408, &qword_3E30);
    sub_3194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3F0);
  }

  return result;
}

unint64_t sub_3194()
{
  result = qword_C410;
  if (!qword_C410)
  {
    sub_3938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C410);
  }

  return result;
}

unint64_t sub_31EC()
{
  result = qword_C418;
  if (!qword_C418)
  {
    sub_2FFC(&qword_C420, &qword_3E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C418);
  }

  return result;
}

uint64_t sub_3268(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2FFC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_32B0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_32E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _swift_release();
  }

  else
  {
  }
}

uint64_t sub_3300()
{
  sub_2FFC(&qword_C3C8, &qword_3E10);
  sub_2FFC(&qword_C3C0, &qword_3E08);
  sub_2FFC(&qword_C3B8, &qword_3E00);
  sub_3268(&qword_C428, &qword_C3B8, &qword_3E00);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_3458()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_34B4()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_C6A0 = result;
  return result;
}

uint64_t sub_350C()
{
  v0 = sub_3868();
  sub_35A8(v0, qword_C6A8);
  v1 = sub_32B0(v0, qword_C6A8);
  *v1 = type metadata accessor for FindClass();
  v2 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t *sub_35A8(uint64_t a1, uint64_t *a2)
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

unint64_t sub_3644()
{
  result = qword_C500;
  if (!qword_C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C500);
  }

  return result;
}

uint64_t sub_36B8()
{
  v0 = type metadata accessor for PictureInPictureSettingsList();
  v1 = sub_3720();

  return SettingsPane.init(makeContent:)(sub_36B4, 0, v0, v1);
}

unint64_t sub_3720()
{
  result = qword_C508;
  if (!qword_C508)
  {
    type metadata accessor for PictureInPictureSettingsList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C508);
  }

  return result;
}

unint64_t sub_378C()
{
  result = qword_C510;
  if (!qword_C510)
  {
    sub_2FFC(&qword_C518, &qword_3F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C510);
  }

  return result;
}

void sub_37F0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A38();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_C6C0 = v2;
  }

  else
  {
    __break(1u);
    sub_3868();
  }
}