_BYTE *storeEnumTagSinglePayload for PlatterListLayout(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0xCFDBCLL);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_CFDF4(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_184A48;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_CFE48(char a1)
{
  if (a1)
  {
    return 0x64656B63617473;
  }

  else
  {
    return 0x746E6F7A69726F68;
  }
}

uint64_t sub_CFEA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_CFDF4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_CFED8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_CFE48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_CFF08()
{
  result = qword_19F740;
  if (!qword_19F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F740);
  }

  return result;
}

uint64_t sub_CFFB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = sub_4948(&qword_19A420);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  v7 = sub_13B584();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v50 - v10;
  v12 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v13);
  v50 = &v50 - v14;
  v15 = type metadata accessor for PlatterList();
  sub_9F94();
  __chkstk_darwin(v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  v62 = a1;
  v57 = a1;
  sub_9DB8(0x7372657474616C70, 0xE800000000000000, v15, sub_D0678, v56, v19, v20, v21);
  if (v2)
  {

    v28 = 0;
  }

  else
  {
    v28 = v22;
  }

  *(v18 + 1) = v28;
  sub_730C(0x74756F79616CLL, 0xE600000000000000, v15, v23, v24, v25, v26, v27);
  *v18 = v29 & 1;
  *&v59 = sub_BB310();
  *(&v59 + 1) = v30;
  sub_13BFB4();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_7;
  }

  sub_7738();
  if (sub_52E0(v6, 1, v12) == 1)
  {
    sub_928C(v6, &qword_19A420);
LABEL_7:
    v31 = sub_13BAB4();
    sub_D0788();
    sub_D0680(v32, v33);
    swift_allocError();
    *v34 = 0xD000000000000011;
    v34[1] = 0x800000000014E730;
    v34[2] = v15;
    (*(*(v31 - 8) + 104))(v34, enum case for JSONError.missingProperty(_:), v31);
    swift_willThrow();
    v35 = *(v54 + 8);
    v35(v11, v55);

    v36 = sub_13B7A4();
    v37 = v50;
    sub_53A8(v50, 1, 1, v36);
    goto LABEL_9;
  }

  v35 = *(v54 + 8);
  v35(v11, v55);
  v37 = v50;
  sub_92E4(v6, v50);
LABEL_9:
  sub_92E4(v37, &v18[*(v15 + 28)]);
  v38 = v51;
  sub_13B594();
  if (sub_13B564())
  {
    v40 = sub_13BAB4();
    sub_D0788();
    sub_D0680(v41, v42);
    swift_allocError();
    *v43 = 0x6575676573;
    v43[1] = 0xE500000000000000;
    v43[2] = v15;
    (*(*(v40 - 8) + 104))(v43, enum case for JSONError.missingProperty(_:), v40);
    swift_willThrow();

    v44 = sub_D07A0();
    (v35)(v44);
    v35(v38, v40);

    v61 = 0;
    v59 = 0u;
    v60 = 0u;
  }

  else
  {
    v39 = inited;
    sub_139BC4();

    v49 = sub_D07A0();
    (v35)(v49);
    v35(v38, v39);
    sub_9414(&v58, &v59);
  }

  v45 = &v18[*(v15 + 32)];
  v46 = v60;
  *v45 = v59;
  *(v45 + 1) = v46;
  *(v45 + 4) = v61;
  sub_D06C8(v18, v52);
  sub_13B5A4();
  sub_9F94();
  (*(v47 + 8))(v62);
  return sub_D072C(v18);
}

uint64_t sub_D0680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_D06C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D072C(uint64_t a1)
{
  v2 = type metadata accessor for PlatterList();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D07B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_4948(&qword_19F9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin20PlatterListComponent_objectGraph) = a3;
  swift_retain_n();

  sub_D0C40();

  sub_4948(&qword_19F9F8);
  sub_13B5F4();
  v9 = type metadata accessor for PlatterList();
  sub_53A8(v8, 0, 1, v9);
  sub_D0DF8(v8);
}

uint64_t sub_D08F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for PlatterListComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_D0958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for PlatterListComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_D09C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_D0A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_D0A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_D0B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_D0B88()
{
  swift_getKeyPath();
  sub_D1C1C();
  v3 = sub_D1950(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();
}

uint64_t sub_D0C40()
{
  swift_getKeyPath();
  sub_D151C();
}

uint64_t sub_D0CB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_D1C1C();
  v6 = sub_D1950(v4, v5);
  sub_101F0(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_139874();

  v14 = OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__platter;
  swift_beginAccess();
  return sub_D1B7C(v2 + v14, a1);
}

uint64_t sub_D0D64(uint64_t a1)
{
  v2 = sub_4948(&qword_19F9F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_D1B7C(a1, &v6 - v3);
  return sub_D0DF8(v4);
}

uint64_t sub_D0DF8(uint64_t a1)
{
  swift_getKeyPath();
  sub_D151C();

  return sub_D1998(a1);
}

uint64_t sub_D0E6C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__platter;
  swift_beginAccess();
  sub_D1B0C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_D0ED8()
{
  swift_getKeyPath();
  sub_D1C1C();
  v3 = sub_D1950(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();

  return *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__selectedIndex);
}

uint64_t sub_D0F68(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__selectedIndex) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_D151C();
  }

  return result;
}

unint64_t sub_D1014()
{
  v0 = type metadata accessor for CarouselCell();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0 - 8);
  sub_9EC0();
  v4 = v3 - v2;
  v5 = type metadata accessor for PlatterList();
  sub_9F94();
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v10 = sub_4948(&qword_19F9F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  sub_D0CB4(&v18 - v11);
  if (sub_52E0(v12, 1, v5))
  {
    sub_D1998(v12);
    return 0;
  }

  sub_D1C34();
  sub_D1A00(v12, v9, v14);
  sub_D1998(v12);
  v15 = *(v9 + 8);

  sub_D072C(v9);
  if (!v15)
  {
    return 0;
  }

  v16 = sub_D0B88();
  if (!v16)
  {

    return 0;
  }

  v17 = v16;
  result = sub_D0ED8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v15 + 16))
  {
    sub_D1A00(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * result, v4, type metadata accessor for CarouselCell);

    type metadata accessor for AppleOneOfferPlatterModel();
    swift_allocObject();
    return sub_F2E4(v4, v17);
  }

  __break(1u);
  return result;
}

BOOL sub_D1224()
{
  v0 = type metadata accessor for PlatterList();
  sub_9F94();
  __chkstk_darwin(v1);
  sub_9EC0();
  v4 = v3 - v2;
  v5 = sub_4948(&qword_19F9F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_D0CB4(&v12 - v6);
  if (sub_52E0(v7, 1, v0))
  {
    sub_D1998(v7);
    return 0;
  }

  sub_D1C34();
  sub_D1A00(v7, v4, v9);
  sub_D1998(v7);
  v10 = *(v4 + 8);

  sub_D072C(v4);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 16);

  return v11 == 1;
}

double sub_D1344()
{
  swift_getKeyPath();
  sub_D1C1C();
  v3 = sub_D1950(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();

  return *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel___totalHeight);
}

void sub_D13D4(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel___totalHeight) == a1)
  {
    *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel___totalHeight) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_D151C();
  }
}

double sub_D148C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_13BE04();
  v2 = sub_D1344();
  v3 = 70.0;
  if ((v0 & 1) == 0)
  {
    v3 = 25.0;
  }

  return v2 + v3;
}

uint64_t sub_D151C()
{
  sub_D1C1C();
  sub_D1950(v0, v1);
  return sub_139864();
}

uint64_t sub_D15C4()
{

  sub_D1998(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__platter);
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel___observationRegistrar;
  sub_1398B4();
  sub_9F94();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_D1634()
{
  sub_D15C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for PlatterListComponentModel()
{
  result = qword_19F7A0;
  if (!qword_19F7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_D16E0()
{
  sub_D17C8();
  if (v0 <= 0x3F)
  {
    sub_1398B4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_D17C8()
{
  if (!qword_19F7B0)
  {
    type metadata accessor for PlatterList();
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19F7B0);
    }
  }
}

uint64_t sub_D1868()
{
  *(v0 + 16) = 0;
  type metadata accessor for PlatterList();
  sub_D1C4C();
  sub_D1C4C();
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__selectedIndex) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel__totalWidth) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel___totalHeight) = 0;
  sub_1398A4();
  return v0;
}

double sub_D1938()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC20StoreDynamicUIPlugin25PlatterListComponentModel___totalHeight) = result;
  return result;
}

uint64_t sub_D1950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_D1998(uint64_t a1)
{
  v2 = sub_4948(&qword_19F9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D1A00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_D1A60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D0ED8();
  *a1 = result;
  return result;
}

uint64_t sub_D1B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19F9F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_D1B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19F9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D1BEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D0B88();
  *a1 = result;
  return result;
}

uint64_t sub_D1C4C()
{

  return sub_53A8(v1 + v2, 1, 1, v0);
}

void sub_D1C6C(double a1, double a2, double a3, double a4)
{
  sub_13A914();
  sub_9E94();
  v68 = v10;
  v69 = v9;
  __chkstk_darwin(v9);
  v67 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v67 - v13;
  v15 = type metadata accessor for PlatterListComponentView();
  v16 = (v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin20PlatterListComponent_objectGraph] = 0;
  type metadata accessor for PlatterListComponentModel();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin20PlatterListComponent_model] = sub_D1868();
  v19 = type metadata accessor for PlatterListComponent();
  v74.receiver = v4;
  v74.super_class = v19;
  v20 = objc_msgSendSuper2(&v74, "initWithFrame:", a1, a2, a3, a4);
  v21 = *&v20[OBJC_IVAR____TtC20StoreDynamicUIPlugin20PlatterListComponent_model];
  *v18 = swift_getKeyPath();
  sub_4948(&qword_19AC58);
  swift_storeEnumTagMultiPayload();
  *(v18 + v16[7]) = swift_getKeyPath();
  sub_4948(&qword_19AC60);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CGRect(0);
  v22 = v20;

  v23 = sub_13BB14();
  v70 = 0;
  v71 = 1;
  sub_4948(&qword_19FA40);
  sub_D2E94();
  sub_13B224();
  sub_D2E78();
  v24 = (v18 + v16[9]);
  v70 = v21;
  sub_D2E94();
  sub_13B224();
  v25 = v73;
  *v24 = v72;
  v24[1] = v25;
  v70 = 0;
  v71 = 1;
  sub_D2E94();
  v26 = v22;
  sub_13B224();
  sub_D2E78();
  v27 = v18 + v16[11];
  LOBYTE(v70) = 0;
  sub_D2E94();
  sub_13B224();
  v28 = v73;
  *v27 = v72;
  *(v27 + 1) = v28;
  v29 = (v18 + v16[12]);
  v70 = v23;
  sub_D2E94();
  sub_13B224();
  v30 = v73;
  *v29 = v72;
  v29[1] = v30;
  sub_13A904();
  v31 = v68;
  v32 = v69;
  (*(v68 + 16))(v67, v14, v69);
  sub_13B224();
  (*(v31 + 8))(v14, v32);
  v33 = objc_allocWithZone(sub_4948(&qword_19FA48));
  v34 = sub_13AC14();
  v35 = sub_D2EA0();
  v36 = v34;
  v37 = [v36 view];
  if (!v37)
  {
    __break(1u);
    goto LABEL_10;
  }

  v38 = v37;
  [v35 addSubview:v37];

  v39 = sub_750A4();
  if (!v39)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v40 = v39;
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = sub_750A4();
  if (!v41)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = sub_D2EA0();
  v45 = [v44 topAnchor];

  v46 = sub_3F140();
  sub_75088();

  v47 = sub_750A4();
  if (!v47)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v48 = v47;
  v49 = [v47 bottomAnchor];

  v50 = sub_D2EA0();
  v51 = [v50 bottomAnchor];

  v52 = sub_3F140();
  sub_75088();

  v53 = sub_750A4();
  if (!v53)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v54 = v53;
  v55 = [v53 leftAnchor];

  v56 = sub_D2EA0();
  v57 = [v56 leftAnchor];

  v58 = sub_3F140();
  sub_75088();

  v59 = sub_750A4();
  if (!v59)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v60 = v59;
  v61 = [v59 rightAnchor];

  v62 = sub_D2EA0();
  v63 = [v62 rightAnchor];

  v64 = [v61 constraintEqualToAnchor:v63];
  [v64 setActive:1];

  v65 = sub_750A4();
  if (v65)
  {
    v66 = [objc_opt_self() clearColor];
    [v65 setBackgroundColor:v66];

    sub_D2404();
    return;
  }

LABEL_15:
  __break(1u);
}

double sub_D2364(double a1)
{

  sub_D148C();

  return a1;
}

uint64_t sub_D2468@<X0>(uint64_t *a1@<X8>)
{

  v2 = sub_D0ED8();

  *a1 = v2;
  return result;
}

uint64_t (*sub_D24B8(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_D2D3C;
}

uint64_t sub_D251C(void *a1)
{
  v2 = sub_13B4A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_13B4E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7389C();
  v10 = sub_13BD84();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_D2D44;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_E2448;
  aBlock[3] = &unk_18C478;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  sub_13B4C4();
  v15[1] = _swiftEmptyArrayStorage;
  sub_CB68();
  sub_4948(&unk_19EBB0);
  sub_74FC4();
  sub_13BF64();
  sub_13BD94();
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_D279C(uint64_t a1)
{
  v2 = sub_139E74();
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_13B834();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CarouselCell();
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_D1014();

  if (v12)
  {
    sub_EE08(v11);
    sub_64264(&v11[*(v9 + 72)], &v18);
    sub_75028(v11, type metadata accessor for CarouselCell);
    if (*(&v19 + 1))
    {
      sub_9414(&v18, v21);
      v14 = *(a1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin20PlatterListComponent_objectGraph);
      if (v14)
      {
        sub_139E84();
        sub_13B6B4();

        sub_13B9A4();
        v15 = v18;
        sub_13B9A4();
        (*(v6 + 16))(v4, v8, v5);
        v16 = sub_4948(&unk_19B7E0);
        sub_53A8(v4, 0, 1, v16);
        v18 = 0u;
        v19 = 0u;
        v20 = -1;
        (*(*v15 + 216))(v21, v4, v14, &v18);

        sub_184DC(&v18, &unk_19E330);
        sub_75028(v4, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
        (*(v6 + 8))(v8, v5);
        v13 = sub_3C04(v21);
      }

      else
      {
        sub_3C04(v21);
      }
    }

    else
    {

      v13 = sub_184DC(&v18, &unk_19E320);
    }
  }

  return sub_D2404(v13);
}

id sub_D2B48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatterListComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_D2BEC(void *a1)
{
  v2 = objc_opt_self();
  [objc_msgSend(a1 "container")];
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = [v2 absoluteDimension:v4];
  v6 = [v2 estimatedDimension:1500.0];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

uint64_t sub_D2D04()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D2D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_D2DAC(uint64_t a1)
{
  sub_13A734();
  sub_9E94();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_13A9E4();
}

void sub_D2E78()
{
  v2 = *(v1 - 144);
  v3 = *(v1 - 136);
  *v0 = *(v1 - 152);
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
}

id sub_D2EA0()
{
  v3 = *(v0 + 3456);

  return [v1 v3];
}

uint64_t sub_D2EB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_13AB24();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4948(&qword_19AC60);
  sub_9F94();
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PlatterListComponentView();
  sub_16C24(v1 + *(v12 + 20), v11, &qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_9F94();
    return (*(v13 + 32))(a1, v11);
  }

  else
  {
    sub_13BD54();
    v15 = sub_13AE64();
    sub_13A004();

    sub_13AB14();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v3);
  }
}

uint64_t sub_D30A4()
{
  v0 = sub_13ACF4();
  sub_7E5D8(v0, qword_19FA50);
  sub_4910(v0, qword_19FA50);
  return sub_13AD84();
}

uint64_t sub_D3130()
{
  v1 = v0;
  v2 = type metadata accessor for PlatterList();
  sub_9F94();
  __chkstk_darwin(v3);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_4948(&qword_19F9F0);
  v7 = sub_8AD98(v6);
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  v10 = type metadata accessor for PlatterListComponentView();
  v11 = (v0 + *(v10 + 28));
  v13 = *v11;
  v12 = v11[1];
  v21 = v13;
  v22 = v12;
  sub_4948(&qword_19FB50);
  sub_13B234();
  sub_D0CB4(v9);

  if (sub_52E0(v9, 1, v2))
  {
    sub_DB9AC(v9, &qword_19F9F0);
LABEL_4:
    v15 = (v1 + *(v10 + 36));
    v16 = *v15;
    v17 = *(v15 + 1);
    LOBYTE(v21) = v16;
    v22 = v17;
    sub_4948(&qword_19AAA8);
    sub_13B234();
    return v20[8];
  }

  sub_DB524(v9, v5, type metadata accessor for PlatterList);
  sub_DB9AC(v9, &qword_19F9F0);
  v14 = *v5;
  sub_DB580();
  if (v14 == 2)
  {
    goto LABEL_4;
  }

  if (v14)
  {
  }

  else
  {
    v19 = sub_13C144();

    if ((v19 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

void sub_D3370(double a1)
{
  type metadata accessor for PlatterListComponentView();
  sub_DC9FC();
  sub_4948(&qword_19FBD0);
  sub_DCAA8();
  sub_DC9FC();
  v63 = 0;
  sub_DCAA8();
  sub_4948(&qword_19FBD8);
  sub_DC9C4();
  sub_13B234();
  v55 = a1;
  v2 = 0;
  v3 = 0x100000;
  v4 = (32 * __clz(__rbit64(0x180000uLL)));
  v5 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v7 = v4[3];

  v9 = sub_DCAF0();
  do
  {
    v59 = v8;
    v61 = v7;
    v57 = v5;
    v58 = v6;
    v13 = v2;
LABEL_7:
    v14 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v15 = ((v13 << 11) | (32 * v14));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    Width = CGRectGetWidth(*&v9);
    v64.origin.x = v16;
    v64.origin.y = v17;
    v64.size.width = v18;
    v64.size.height = v19;
    v24 = CGRectGetWidth(v64);
    v12 = v23;
    v11 = v22;
    v10 = v21;
    v5 = v57;
    v25 = Width < v24;
    v9 = v20;
    if (v25)
    {
      v5 = v16;
    }

    v6 = v58;
    v8 = v59;
    if (v25)
    {
      v6 = v17;
      v8 = v18;
    }

    v7 = v61;
    if (v25)
    {
      v7 = v19;
      v9 = v16;
      v10 = v17;
      v11 = v18;
      v12 = v19;
    }
  }

  while (v3);
  while (1)
  {
    v13 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v13 >= 0x80000)
    {
      break;
    }

    v3 = *(&stru_20.vmsize + v13);
    ++v2;
    if (v3)
    {
      v59 = v8;
      v61 = v7;
      v57 = v5;
      v58 = v6;
      v2 = v13;
      goto LABEL_7;
    }
  }

  v65.origin.x = sub_DCAF0();
  LOBYTE(v63) = v55 * 0.65 <= CGRectGetWidth(v65);
  sub_4948(&qword_19AAA8);
  sub_13B244();
  sub_DC9C4();
  sub_13B234();
  v26 = *(v63 + 16);
  if (!v26)
  {
LABEL_35:

    v45 = _swiftEmptyArrayStorage[2];
    if (v45)
    {
      v46 = &_swiftEmptyArrayStorage[4];
      v47 = 0.0;
      do
      {
        v48 = *v46++;
        v47 = v47 + v48;
        --v45;
      }

      while (v45);
    }

    else
    {
      v47 = 0.0;
    }

    sub_D3A64();
    v50 = v49 + v49;
    sub_DC9C4();
    sub_13B234();
    v51 = *(v63 + 16);

    v52 = (v51 - 1) * 12.0;
    if (v47 + v50 + v52 <= v55)
    {
      sub_DC9C4();
      sub_13B234();
      v53 = *(v63 + 16);

      sub_DC9C4();
      sub_13B234();
      sub_DA194(v63, (v55 - v50 - v52) / v53);

      sub_DCAA8();
    }

    sub_4948(&qword_19FB50);
    sub_DC9C4();
    sub_13B234();
    v54 = sub_D0ED8();
    sub_D0F68(v54);

    return;
  }

  sub_4D00C(0, v26, 0);
  v28 = sub_DA6E4();
  v30 = v29;
  v31 = 0;
  v62 = v63 + 64;
  if ((v28 & 0x8000000000000000) == 0)
  {
    while (v28 < 1 << *(v63 + 32))
    {
      v32 = v28 >> 6;
      if ((*(v62 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
      {
        goto LABEL_45;
      }

      if (*(v63 + 36) != v30)
      {
        goto LABEL_46;
      }

      v60 = v27;
      v33 = v26;
      v34 = CGRectGetWidth(*(*(v63 + 56) + 32 * v28));
      v36 = _swiftEmptyArrayStorage[2];
      v35 = _swiftEmptyArrayStorage[3];
      if (v36 >= v35 >> 1)
      {
        sub_4D00C((v35 > 1), v36 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v36 + 1;
      *&_swiftEmptyArrayStorage[v36 + 4] = v34;
      v37 = 1 << *(v63 + 32);
      if (v28 >= v37)
      {
        goto LABEL_47;
      }

      v38 = *(v62 + 8 * v32);
      if ((v38 & (1 << v28)) == 0)
      {
        goto LABEL_48;
      }

      if (*(v63 + 36) != v30)
      {
        goto LABEL_49;
      }

      v39 = v38 & (-2 << (v28 & 0x3F));
      if (v39)
      {
        v37 = __clz(__rbit64(v39)) | v28 & 0x7FFFFFFFFFFFFFC0;
        v26 = v33;
      }

      else
      {
        v40 = v32 << 6;
        v41 = v32 + 1;
        v42 = (v63 + 72 + 8 * v32);
        v26 = v33;
        while (v41 < (v37 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            sub_7E270(v28, v30, v60 & 1);
            v37 = __clz(__rbit64(v43)) + v40;
            goto LABEL_32;
          }
        }

        sub_7E270(v28, v30, v60 & 1);
      }

LABEL_32:
      if (++v31 == v26)
      {
        goto LABEL_35;
      }

      v27 = 0;
      v30 = *(v63 + 36);
      v28 = v37;
      if (v37 < 0)
      {
        break;
      }
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_D3A64()
{
  type metadata accessor for PlatterListComponentView();
  sub_DC9FC();
  sub_4948(&qword_19FBD0);
  result = sub_13B234();
  if (v1 == 1)
  {
    return sub_B84DC();
  }

  return result;
}

uint64_t sub_D3AF0@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = type metadata accessor for PlatterListComponentView();
  v4 = sub_CCF4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_DB524(v1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlatterListComponentView);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  result = sub_DB9FC(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PlatterListComponentView);
  *a1 = sub_DAD38;
  a1[1] = v10;
  return result;
}

uint64_t sub_D3C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a1;
  v105 = a3;
  v96 = sub_13ABC4();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_13A864();
  v93 = *(v97 - 8);
  __chkstk_darwin(v97);
  v100 = v5;
  v101 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlatterListComponentView();
  v7 = v6 - 8;
  v90 = *(v6 - 8);
  v8 = *(v90 + 64);
  __chkstk_darwin(v6);
  v91 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4948(&qword_19FB38);
  __chkstk_darwin(v9 - 8);
  v98 = (v84 - v10);
  v99 = sub_4948(&qword_19FB40);
  __chkstk_darwin(v99);
  v103 = v84 - v11;
  v104 = sub_4948(&qword_19FB48);
  v92 = *(v104 - 8);
  __chkstk_darwin(v104);
  v13 = v84 - v12;
  v14 = type metadata accessor for PlatterList();
  __chkstk_darwin(v14);
  v16 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_4948(&qword_19F9F0);
  __chkstk_darwin(v17 - 8);
  v19 = v84 - v18;
  v20 = a2;
  v21 = (a2 + *(v7 + 36));
  v22 = *v21;
  v23 = v21[1];
  v106 = *v21;
  v107 = v23;
  v24 = sub_4948(&qword_19FB50);
  sub_13B234();
  sub_D0CB4(v19);

  if (sub_52E0(v19, 1, v14))
  {
    sub_DB9AC(v19, &qword_19F9F0);
LABEL_3:
    v25 = 1;
    v26 = v104;
    v27 = v105;
    return sub_53A8(v27, v25, 1, v26);
  }

  v87 = v24;
  v88 = v23;
  v89 = v22;
  v85 = v8;
  v86 = v13;
  v29 = v103;
  sub_DB524(v19, v16, type metadata accessor for PlatterList);
  sub_DB9AC(v19, &qword_19F9F0);
  v30 = *(v16 + 1);

  sub_DB580();
  if (!v30)
  {
    goto LABEL_3;
  }

  v106 = v89;
  v107 = v88;
  sub_13B234();
  v31 = sub_D0B88();

  if (!v31)
  {

    goto LABEL_3;
  }

  v32 = v29;
  *v29 = sub_13ABD4();
  *(v29 + 1) = 0;
  v29[16] = 1;
  v33 = sub_13ABD4();
  v34 = v98;
  *v98 = v33;
  v34[1] = 0;
  *(v34 + 16) = 0;
  v35 = v34 + *(sub_4948(&qword_19FB58) + 44);
  v36 = v20;
  v84[1] = v31;
  v37 = v31;
  v38 = v102;
  sub_D46C8(v20, v30, v37, v102, v35);
  sub_4948(&qword_19AAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13E650;
  v40 = sub_13AEE4();
  *(inited + 32) = v40;
  v41 = sub_13AF04();
  *(inited + 33) = v41;
  v42 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v40)
  {
    v42 = sub_13AEF4();
  }

  sub_13AEF4();
  v43 = sub_13AEF4();
  v44 = v91;
  if (v43 != v41)
  {
    v42 = sub_13AEF4();
  }

  v45 = sub_D3130();
  v46 = v93;
  if ((v45 & 1) != 0 || (v106 = v89, v107 = v88, sub_13B234(), v47 = sub_D1224(), , v47))
  {
    sub_13A844();
    sub_D3A64();
  }

  v48 = &v32[*(sub_4948(&qword_19FB60) + 44)];
  sub_13A6E4();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_16038(v98, v48, &qword_19FB38);

  v57 = v48 + *(sub_4948(&qword_19FB68) + 36);
  *v57 = v42;
  *(v57 + 8) = v50;
  *(v57 + 16) = v52;
  *(v57 + 24) = v54;
  *(v57 + 32) = v56;
  *(v57 + 40) = 0;
  sub_DB524(v36, v44, type metadata accessor for PlatterListComponentView);
  v58 = v46[2];
  v89 = (v46 + 2);
  v98 = v58;
  v59 = v101;
  v60 = v97;
  (v58)(v101, v38, v97);
  v61 = *(v90 + 80);
  v62 = (v61 + 16) & ~v61;
  v84[0] = v62;
  v87 = v61 | 7;
  v90 = *(v46 + 80);
  v63 = (v85 + v62 + v90) & ~v90;
  v88 = v63;
  v64 = swift_allocObject();
  v85 = type metadata accessor for PlatterListComponentView;
  sub_DB9FC(v44, v64 + v62, type metadata accessor for PlatterListComponentView);
  v93 = v46[4];
  (v93)(v64 + v63, v59, v60);
  v65 = sub_4948(&qword_19FB70);
  v66 = v103;
  v67 = &v103[*(v65 + 36)];
  *v67 = sub_DADA4;
  v67[1] = v64;
  v67[2] = 0;
  v67[3] = 0;
  v68 = sub_13B3C4();
  v70 = v69;
  v71 = &v66[*(sub_4948(&qword_19FB78) + 36)];
  *v71 = sub_42104;
  v71[1] = 0;
  v71[2] = v68;
  v71[3] = v70;
  sub_DB524(v36, v44, type metadata accessor for PlatterListComponentView);
  v72 = swift_allocObject();
  v73 = v84[0];
  v74 = v85;
  sub_DB9FC(v44, v72 + v84[0], v85);
  v75 = &v66[*(v99 + 36)];
  *v75 = sub_DADBC;
  v75[1] = v72;
  v76 = v94;
  sub_D2EB8(v94);
  sub_DB524(v36, v44, type metadata accessor for PlatterListComponentView);
  v77 = v101;
  v78 = v97;
  (v98)(v101, v102, v97);
  v79 = v88;
  v80 = swift_allocObject();
  sub_DB9FC(v44, v80 + v73, v74);
  (v93)(v80 + v79, v77, v78);
  sub_DB164();
  sub_DB4CC(&qword_19FBC8, &type metadata accessor for ContentSizeCategory);
  v81 = v86;
  v82 = v96;
  v83 = v103;
  sub_13B134();

  (*(v95 + 8))(v76, v82);
  sub_DB9AC(v83, &qword_19FB40);
  v26 = v104;
  v27 = v105;
  (*(v92 + 32))(v105, v81, v104);
  v25 = 0;
  return sub_53A8(v27, v25, 1, v26);
}

uint64_t sub_D46C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v213 = a4;
  v198 = a3;
  v199 = a2;
  v212 = a5;
  v6 = sub_4948(&qword_19FBE0);
  __chkstk_darwin(v6 - 8);
  v208 = (&v168 - v7);
  v210 = sub_4948(&qword_19FBE8);
  __chkstk_darwin(v210);
  v193 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v192 = &v168 - v10;
  v11 = sub_4948(&qword_19FBF0);
  __chkstk_darwin(v11 - 8);
  v211 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v209 = &v168 - v14;
  v207 = sub_4948(&qword_19FBF8);
  __chkstk_darwin(v207);
  v191 = &v168 - v15;
  v16 = sub_4948(&qword_19FC00);
  __chkstk_darwin(v16 - 8);
  v185 = (&v168 - v17);
  v183 = sub_4948(&qword_19FC08);
  __chkstk_darwin(v183);
  v186 = &v168 - v18;
  v184 = sub_4948(&qword_19FC10);
  __chkstk_darwin(v184);
  v188 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v182 = &v168 - v21;
  __chkstk_darwin(v22);
  v190 = &v168 - v23;
  v24 = sub_4948(&qword_19FC18);
  __chkstk_darwin(v24 - 8);
  v26 = &v168 - v25;
  v177 = sub_4948(&qword_19FC20);
  __chkstk_darwin(v177);
  v179 = &v168 - v27;
  v178 = sub_4948(&qword_19FC28);
  __chkstk_darwin(v178);
  v181 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v176 = &v168 - v30;
  __chkstk_darwin(v31);
  v197 = &v168 - v32;
  v204 = sub_4948(&qword_19FC30);
  __chkstk_darwin(v204);
  v205 = &v168 - v33;
  v196 = sub_13ABC4();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v168 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_139A34();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for AppleOneOfferPlatterView();
  __chkstk_darwin(v36);
  v38 = (&v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v39);
  v171 = &v168 - v40;
  __chkstk_darwin(v41);
  v172 = &v168 - v42;
  __chkstk_darwin(v43);
  v175 = &v168 - v44;
  v189 = sub_4948(&qword_19FC38);
  __chkstk_darwin(v189);
  v174 = &v168 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v173 = &v168 - v47;
  v48 = sub_4948(&qword_19FC40);
  __chkstk_darwin(v48 - 8);
  v50 = &v168 - v49;
  v51 = type metadata accessor for CarouselCell();
  __chkstk_darwin(v51);
  v53 = &v168 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v180 = &v168 - v55;
  v203 = sub_4948(&qword_19FC48);
  __chkstk_darwin(v203);
  v187 = &v168 - v56;
  v57 = sub_4948(&qword_19FC50);
  __chkstk_darwin(v57 - 8);
  v206 = &v168 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = &v168 - v60;
  v62 = a1;
  v63 = (a1 + *(type metadata accessor for PlatterListComponentView() + 28));
  v65 = *v63;
  v64 = v63[1];
  v202 = v65;
  *&v219 = v65;
  *(&v219 + 1) = v64;
  v201 = v64;
  v200 = sub_4948(&qword_19FB50);
  sub_13B234();
  LOBYTE(a1) = sub_D1224();

  if (a1)
  {
    v66 = v198;
    v197 = v61;
    sub_A3EC8(v199, v50);
    if (sub_52E0(v50, 1, v51) == 1)
    {
      sub_DB9AC(v50, &qword_19FC40);
      v67 = 1;
      v68 = v209;
      v69 = v197;
      v70 = v205;
      v71 = v189;
      v72 = v187;
    }

    else
    {
      v98 = v50;
      v99 = v180;
      sub_DB9FC(v98, v180, type metadata accessor for CarouselCell);
      sub_DB524(v99, v53, type metadata accessor for CarouselCell);
      type metadata accessor for AppleOneOfferPlatterModel();
      swift_allocObject();

      v100 = sub_F2E4(v53, v66);
      *v38 = swift_getKeyPath();
      sub_4948(&qword_19AC58);
      swift_storeEnumTagMultiPayload();
      v101 = v38 + v36[5];
      LOBYTE(v216) = 0;
      sub_13B224();
      v102 = *(&v219 + 1);
      *v101 = v219;
      *(v101 + 1) = v102;
      v103 = v36[6];
      *(v38 + v103) = swift_getKeyPath();
      sub_4948(&qword_19AC60);
      swift_storeEnumTagMultiPayload();
      v104 = v36[9];
      v105 = objc_opt_self();
      v106 = [v105 ams_secondaryBackground];
      *(v38 + v104) = sub_13B1E4();
      v107 = v36[10];
      v108 = [v105 ams_primarySystemFillColor];
      *(v38 + v107) = sub_13B1E4();
      *(v38 + v36[11]) = 0;
      *(v38 + v36[12]) = 1;
      *(v38 + v36[13]) = 0;
      *(v38 + v36[8]) = 1;
      *(v38 + v36[7]) = v100;
      if (_UISolariumEnabled() && (v109 = v169, v110 = v168, v111 = v170, (*(v169 + 104))(v168, enum case for FlagKeys.Solarium(_:), v170), v112 = sub_139A24(), (*(v109 + 8))(v110, v111), (v112 & 1) != 0))
      {
        v113 = v175;
        if (qword_199D98 != -1)
        {
          swift_once();
        }

        v114 = &qword_1B28C0;
        v69 = v197;
        v70 = v205;
      }

      else
      {
        v114 = (v99 + 40);
        v69 = v197;
        v70 = v205;
        v113 = v175;
      }

      v115 = *v114;

      v116 = v38;
      v117 = v171;
      sub_DB9FC(v116, v171, type metadata accessor for AppleOneOfferPlatterView);
      v118 = v36[9];

      *(v117 + v118) = v115;
      v119 = v172;
      sub_DB524(v117, v172, type metadata accessor for AppleOneOfferPlatterView);
      *(v119 + v36[12]) = 0;
      sub_DB580();
      v120 = v194;
      sub_D2EB8(v194);
      LOBYTE(v115) = sub_750BC();
      (*(v195 + 8))(v120, v196);
      sub_DB9FC(v119, v113, type metadata accessor for AppleOneOfferPlatterView);
      *(v113 + v36[13]) = v115 & 1;
      sub_4948(&qword_19AAA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_13E650;
      v122 = sub_13AEC4();
      *(inited + 32) = v122;
      v123 = sub_13AED4();
      *(inited + 33) = v123;
      v124 = sub_13AEF4();
      sub_13AEF4();
      if (sub_13AEF4() != v122)
      {
        v124 = sub_13AEF4();
      }

      sub_13AEF4();
      v125 = sub_13AEF4();
      v68 = v209;
      if (v125 != v123)
      {
        v124 = sub_13AEF4();
      }

      sub_13A6E4();
      v127 = v126;
      v129 = v128;
      v131 = v130;
      v133 = v132;
      sub_DB580();
      v134 = v113;
      v135 = v174;
      sub_DB9FC(v134, v174, type metadata accessor for AppleOneOfferPlatterView);
      v71 = v189;
      v136 = v135 + *(v189 + 36);
      *v136 = v124;
      *(v136 + 8) = v127;
      *(v136 + 16) = v129;
      *(v136 + 24) = v131;
      *(v136 + 32) = v133;
      *(v136 + 40) = 0;
      v137 = v135;
      v138 = v173;
      sub_16038(v137, v173, &qword_19FC38);
      v139 = v138;
      v72 = v187;
      sub_16038(v139, v187, &qword_19FC38);
      v67 = 0;
    }

    sub_53A8(v72, v67, 1, v71);
    sub_16C24(v72, v70, &qword_19FC48);
    swift_storeEnumTagMultiPayload();
    sub_DB38C();
    sub_7FAA8(&qword_19FC80, &qword_19FBF8);
    sub_13ACD4();
    sub_DB9AC(v72, &qword_19FC48);
    v97 = v210;
  }

  else
  {
    *v26 = sub_13ABD4();
    *(v26 + 1) = 0;
    v26[16] = 1;
    v73 = sub_4948(&qword_19FC58);
    v74 = v199;
    v75 = v198;
    sub_D5DE4(v199, v198, v62, v213, &v26[*(v73 + 44)]);
    sub_D3130();
    sub_13B3C4();
    sub_13A834();
    v76 = v179;
    sub_16038(v26, v179, &qword_19FC18);
    v77 = (v76 + *(v177 + 36));
    v78 = v217;
    *v77 = v216;
    v77[1] = v78;
    v77[2] = v218;
    v79 = 1.0;
    if (sub_D3130())
    {
      v80 = 0.0;
    }

    else
    {
      v80 = 1.0;
    }

    v81 = v76;
    v82 = v176;
    sub_16038(v81, v176, &qword_19FC20);
    *(v82 + *(v178 + 36)) = v80;
    v83 = v197;
    sub_16038(v82, v197, &qword_19FC28);
    v84 = sub_13ABD4();
    v85 = v185;
    *v185 = v84;
    *(v85 + 8) = 0x402C000000000000;
    *(v85 + 16) = 0;
    sub_4948(&qword_19FC60);
    sub_D75D8(v74, v75, v62);
    sub_D3130();
    sub_13B3C4();
    sub_13A834();
    v86 = v186;
    sub_16038(v85, v186, &qword_19FC00);
    v87 = (v86 + *(v183 + 36));
    v88 = v220;
    *v87 = v219;
    v87[1] = v88;
    v87[2] = v221;
    if ((sub_D3130() & 1) == 0)
    {
      v79 = 0.0;
    }

    v89 = v182;
    sub_16038(v86, v182, &qword_19FC08);
    *(v89 + *(v184 + 36)) = v79;
    v90 = v89;
    v91 = v190;
    sub_16038(v90, v190, &qword_19FC10);
    v92 = v83;
    v93 = v181;
    sub_16C24(v92, v181, &qword_19FC28);
    v94 = v188;
    sub_16C24(v91, v188, &qword_19FC10);
    v95 = v191;
    sub_16C24(v93, v191, &qword_19FC28);
    v96 = sub_4948(&qword_19FC68);
    sub_16C24(v94, v95 + *(v96 + 48), &qword_19FC10);
    sub_DB9AC(v94, &qword_19FC10);
    sub_DB9AC(v93, &qword_19FC28);
    sub_16C24(v95, v205, &qword_19FBF8);
    swift_storeEnumTagMultiPayload();
    sub_DB38C();
    sub_7FAA8(&qword_19FC80, &qword_19FBF8);
    sub_13ACD4();
    sub_DB9AC(v95, &qword_19FBF8);
    sub_DB9AC(v91, &qword_19FC10);
    sub_DB9AC(v197, &qword_19FC28);
    v97 = v210;
    v68 = v209;
    v69 = v61;
  }

  v214 = v202;
  v215 = v201;
  sub_13B234();
  v140 = sub_D1224();

  if (v140)
  {
    v141 = 1;
  }

  else
  {
    v142 = v194;
    sub_D2EB8(v194);
    v143 = sub_750BC();
    (*(v195 + 8))(v142, v196);
    if (v143)
    {
      v144 = sub_13ABE4();
    }

    else
    {
      v144 = sub_13ABD4();
    }

    v145 = v208;
    *v208 = v144;
    v145[1] = 0x4024000000000000;
    *(v145 + 16) = 0;
    v146 = sub_4948(&qword_19FC88);
    sub_D811C(v62, v145 + *(v146 + 44));
    sub_4948(&qword_19AAA0);
    v147 = swift_initStackObject();
    *(v147 + 16) = xmmword_13E650;
    v148 = sub_13AEE4();
    *(v147 + 32) = v148;
    v149 = sub_13AF04();
    *(v147 + 33) = v149;
    v150 = sub_13AEF4();
    sub_13AEF4();
    if (sub_13AEF4() != v148)
    {
      v150 = sub_13AEF4();
    }

    sub_13AEF4();
    if (sub_13AEF4() != v149)
    {
      v150 = sub_13AEF4();
    }

    if ((sub_D3130() & 1) == 0)
    {
      sub_13A844();
      sub_D3A64();
    }

    sub_13A6E4();
    v152 = v151;
    v154 = v153;
    v156 = v155;
    v158 = v157;
    v159 = v193;
    sub_16038(v208, v193, &qword_19FBE0);
    v160 = v159 + *(v97 + 36);
    *v160 = v150;
    *(v160 + 8) = v152;
    *(v160 + 16) = v154;
    *(v160 + 24) = v156;
    *(v160 + 32) = v158;
    *(v160 + 40) = 0;
    v161 = v159;
    v162 = v192;
    sub_16038(v161, v192, &qword_19FBE8);
    sub_16038(v162, v68, &qword_19FBE8);
    v141 = 0;
  }

  sub_53A8(v68, v141, 1, v97);
  v163 = v206;
  sub_16C24(v69, v206, &qword_19FC50);
  v164 = v211;
  sub_16C24(v68, v211, &qword_19FBF0);
  v165 = v212;
  sub_16C24(v163, v212, &qword_19FC50);
  v166 = sub_4948(&qword_19FC90);
  sub_16C24(v164, v165 + *(v166 + 48), &qword_19FBF0);
  sub_DB9AC(v68, &qword_19FBF0);
  sub_DB9AC(v69, &qword_19FC50);
  sub_DB9AC(v164, &qword_19FBF0);
  return sub_DB9AC(v163, &qword_19FC50);
}

uint64_t sub_D5DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v48 = a5;
  v8 = sub_4948(&qword_19FD58);
  __chkstk_darwin(v8 - 8);
  v47 = &v39 - v9;
  v41 = sub_13ADB4();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_4948(&qword_19FD60);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v43 = sub_4948(&qword_19FD68);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v17 = &v39 - v16;
  v45 = sub_4948(&qword_19FD70);
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v19 = &v39 - v18;
  sub_13AE74();
  v49 = a1;
  v50 = a2;
  v46 = a3;
  v51 = a3;
  v52 = v39;
  sub_4948(&qword_19FD78);
  sub_DBCE4();
  sub_13A704();
  sub_13ADA4();
  sub_4948(&qword_19D7D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13E650;
  v21 = sub_13AE94();
  *(inited + 32) = v21;
  v22 = sub_13AE74();
  *(inited + 33) = v22;
  sub_13AE84();
  sub_13AE84();
  if (sub_13AE84() != v21)
  {
    sub_13AE84();
  }

  sub_13AE84();
  if (sub_13AE84() != v22)
  {
    sub_13AE84();
  }

  v23 = sub_7FAA8(&qword_19FDB8, &qword_19FD60);
  sub_13B0D4();
  (*(v40 + 8))(v11, v41);
  (*(v13 + 8))(v15, v12);
  v24 = type metadata accessor for PlatterListComponentView();
  v25 = v46;
  v26 = v46 + *(v24 + 24);
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  v54 = v27;
  LOBYTE(v55) = v28;
  v56 = v29;
  sub_4948(&qword_19FBD0);
  sub_13B234();
  if (v53 == 1)
  {
    v30 = v25 + *(v24 + 32);
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 16);
    v54 = v31;
    LOBYTE(v55) = v32;
    v56 = v33;
    sub_13B234();
  }

  v54 = v12;
  v55 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v43;
  sub_13B084();
  (*(v42 + 8))(v17, v35);
  sub_4948(&qword_19FA68);
  v36 = v47;
  sub_13B254();
  v54 = v35;
  v55 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v45;
  sub_13B0A4();
  sub_DB9AC(v36, &qword_19FD58);
  return (*(v44 + 8))(v19, v37);
}

uint64_t sub_D63E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v53 = a2;
  v50 = a1;
  v8 = sub_13A864();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for PlatterListComponentView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  *a5 = sub_13AB44();
  *(a5 + 8) = 0x4028000000000000;
  *(a5 + 16) = 0;
  v14 = *(sub_4948(&qword_19FDC0) + 44);
  v57 = a5;
  v51 = a5 + v14;
  v15 = *(a1 + 16);
  v60 = 0;
  v61 = v15;
  KeyPath = swift_getKeyPath();
  v59 = a3;
  sub_DB524(a3, &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlatterListComponentView);
  v16 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v16, v58, v8);
  v17 = *(v12 + 80);
  v55 = ~v17;
  v18 = (v17 + 32) & ~v17;
  v19 = *(v9 + 80);
  v58 = v13;
  v20 = (v13 + v19 + v18) & ~v19;
  v56 = v17 | 7;
  v21 = swift_allocObject();
  v22 = v53;
  *(v21 + 16) = v50;
  *(v21 + 24) = v22;
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_DB9FC(v54, v21 + v18, type metadata accessor for PlatterListComponentView);
  (*(v9 + 32))(v21 + v20, v16, v8);

  sub_4948(&qword_19AC80);
  sub_4948(&qword_19FDC8);
  sub_16618();
  sub_DC1A8();
  v23 = v51;
  sub_13B314();
  v24 = sub_13AEC4();
  if (qword_199DE0 != -1)
  {
    swift_once();
  }

  sub_13A6E4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v23 + *(sub_4948(&qword_19FE18) + 36);
  *v33 = v24;
  *(v33 + 8) = v26;
  *(v33 + 16) = v28;
  *(v33 + 24) = v30;
  *(v33 + 32) = v32;
  *(v33 + 40) = 0;
  v34 = v54;
  sub_DB524(v59, v54, type metadata accessor for PlatterListComponentView);
  v35 = (v17 + 16) & v55;
  v36 = swift_allocObject();
  sub_DB9FC(v34, v36 + v35, type metadata accessor for PlatterListComponentView);
  v37 = sub_4948(&qword_19FD90);
  v38 = v57;
  v39 = (v57 + *(v37 + 36));
  *v39 = sub_DC600;
  v39[1] = v36;
  LOBYTE(v36) = sub_13AED4();
  sub_13A6E4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  result = sub_4948(&qword_19FD78);
  v49 = v38 + *(result + 36);
  *v49 = v36;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  return result;
}

uint64_t sub_D6874@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v107 = a5;
  v124 = a4;
  v125 = a6;
  v112 = type metadata accessor for PlatterListComponentView();
  v119 = *(v112 - 8);
  __chkstk_darwin(v112);
  v120 = v9;
  v121 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_139A34();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CarouselCell();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppleOneOfferPlatterView();
  __chkstk_darwin(v16);
  v18 = (&v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v21 = &v104 - v20;
  __chkstk_darwin(v22);
  v24 = &v104 - v23;
  __chkstk_darwin(v25);
  v111 = &v104 - v26;
  __chkstk_darwin(v27);
  v110 = &v104 - v28;
  v118 = sub_4948(&qword_19FD50);
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v114 = &v104 - v29;
  v113 = sub_4948(&qword_19FE00);
  __chkstk_darwin(v113);
  v117 = &v104 - v30;
  v115 = sub_4948(&qword_19FDF0);
  __chkstk_darwin(v115);
  v122 = &v104 - v31;
  v32 = sub_4948(&qword_19FDE0);
  __chkstk_darwin(v32);
  v123 = &v104 - v34;
  v35 = *a1;
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v35 >= *(a2 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_10;
  }

  v108 = *(a2 + 16);
  v109 = v33;
  v36 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35;
  sub_DB524(v36, v15, type metadata accessor for CarouselCell);
  type metadata accessor for AppleOneOfferPlatterModel();
  swift_allocObject();

  v37 = sub_F2E4(v15, a3);
  *v18 = swift_getKeyPath();
  sub_4948(&qword_19AC58);
  swift_storeEnumTagMultiPayload();
  v38 = v18 + v16[5];
  LOBYTE(v126) = 0;
  sub_13B224();
  v39 = __src[1];
  *v38 = __src[0];
  *(v38 + 1) = v39;
  v40 = v16[6];
  *(v18 + v40) = swift_getKeyPath();
  sub_4948(&qword_19AC60);
  swift_storeEnumTagMultiPayload();
  v41 = v16[9];
  v42 = objc_opt_self();
  v43 = [v42 ams_secondaryBackground];
  *(v18 + v41) = sub_13B1E4();
  v44 = v16[10];
  v45 = [v42 ams_primarySystemFillColor];
  *(v18 + v44) = sub_13B1E4();
  *(v18 + v16[11]) = 0;
  *(v18 + v16[12]) = 1;
  *(v18 + v16[13]) = 0;
  *(v18 + v16[8]) = 0;
  *(v18 + v16[7]) = v37;
  if (_UISolariumEnabled() && (v46 = v105, v47 = v11, v48 = v106, (*(v105 + 104))(v11, enum case for FlagKeys.Solarium(_:), v106), v49 = sub_139A24(), (*(v46 + 8))(v47, v48), (v49 & 1) != 0))
  {
    if (qword_199D98 != -1)
    {
      swift_once();
    }

    v50 = &qword_1B28C0;
  }

  else
  {
    v50 = (v36 + 40);
  }

  v51 = *v50;

  sub_DB9FC(v18, v21, type metadata accessor for AppleOneOfferPlatterView);
  v52 = v16[9];

  *&v21[v52] = v51;
  if (qword_199D90 != -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  v53 = qword_1B28B8;
  sub_DB524(v21, v24, type metadata accessor for AppleOneOfferPlatterView);
  v54 = v16[10];

  *&v24[v54] = v53;
  sub_DB580();
  v55 = v112;
  v56 = v124;
  v57 = (v124 + *(v112 + 28));
  v59 = *v57;
  v58 = v57[1];
  __src[0] = v59;
  __src[1] = v58;
  sub_4948(&qword_19FB50);
  sub_13B234();
  v60 = sub_D0ED8();

  v61 = v35 == v60;
  v62 = v111;
  sub_DB524(v24, v111, type metadata accessor for AppleOneOfferPlatterView);
  *(v62 + v16[11]) = v61;
  sub_DB580();
  v63 = v56 + *(v55 + 36);
  v64 = *v63;
  v65 = *(v63 + 8);
  LOBYTE(__src[0]) = v64;
  __src[1] = v65;
  sub_4948(&qword_19AAA8);
  sub_13B234();
  v66 = v126;
  v67 = v110;
  sub_DB9FC(v62, v110, type metadata accessor for AppleOneOfferPlatterView);
  *(v67 + v16[13]) = v66;
  v68 = v121;
  sub_DB524(v56, v121, type metadata accessor for PlatterListComponentView);
  v69 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  sub_DB9FC(v68, v71 + v69, type metadata accessor for PlatterListComponentView);
  *(v71 + v70) = v35;
  __src[0] = sub_DC854;
  __src[1] = v71;
  sub_DB4CC(&qword_19CD70, type metadata accessor for AppleOneOfferPlatterView);
  sub_7DA88();
  v72 = v114;
  sub_13B124();

  sub_DB580();
  sub_13B3C4();
  sub_13A9B4();
  v73 = v117;
  (*(v116 + 32))(v117, v72, v118);
  memcpy(&v73[*(v113 + 36)], __src, 0x70uLL);
  v74 = sub_13B3C4();
  v76 = v75;
  v77 = swift_allocObject();
  *(v77 + 16) = v35;
  v78 = v73;
  v79 = v122;
  sub_16038(v78, v122, &qword_19FE00);
  v80 = (v79 + *(v115 + 36));
  *v80 = sub_DC900;
  v80[1] = v77;
  v80[2] = v74;
  v80[3] = v76;
  v81 = sub_13AEE4();
  if (!v35)
  {
    sub_13A844();
    sub_D3A64();
  }

  sub_13A6E4();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = v123;
  sub_16038(v79, v123, &qword_19FDF0);
  v91 = v90 + *(v109 + 36);
  *v91 = v81;
  *(v91 + 8) = v83;
  *(v91 + 16) = v85;
  *(v91 + 24) = v87;
  *(v91 + 32) = v89;
  *(v91 + 40) = 0;
  v92 = sub_13AF04();
  if (v35 == v108 - 1)
  {
    sub_13A844();
    sub_D3A64();
  }

  sub_13A6E4();
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v101 = v125;
  sub_16038(v90, v125, &qword_19FDE0);
  result = sub_4948(&qword_19FDC8);
  v103 = v101 + *(result + 36);
  *v103 = v92;
  *(v103 + 8) = v94;
  *(v103 + 16) = v96;
  *(v103 + 24) = v98;
  *(v103 + 32) = v100;
  *(v103 + 40) = 0;
  return result;
}

uint64_t sub_D7464@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_13B1A4();
  sub_4948(&qword_19D860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_140280;
  *(inited + 32) = a1;
  if (qword_19A080 != -1)
  {
    swift_once();
  }

  v6 = sub_13ACF4();
  sub_4910(v6, qword_19FA50);
  sub_13A854();
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 64) = v10;
  type metadata accessor for CGRect(0);
  result = sub_13BB14();
  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_D7564()
{
  type metadata accessor for PlatterListComponentView();

  sub_4948(&qword_19FBD8);
  return sub_13B244();
}

uint64_t sub_D75D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlatterListComponentView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *(a1 + 16);
  v16[4] = 0;
  v16[5] = v9;
  swift_getKeyPath();
  sub_DB524(a3, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlatterListComponentView);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_DB9FC(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PlatterListComponentView);

  sub_4948(&qword_19AC80);
  sub_4948(&qword_19FD50);
  sub_16618();
  v12 = type metadata accessor for AppleOneOfferPlatterView();
  v13 = sub_DB4CC(&qword_19CD70, type metadata accessor for AppleOneOfferPlatterView);
  v14 = sub_7DA88();
  v16[0] = v12;
  v16[1] = &unk_18C708;
  v16[2] = v13;
  v16[3] = v14;
  swift_getOpaqueTypeConformance2();
  return sub_13B314();
}

uint64_t sub_D7818@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a4;
  v78 = a5;
  v70 = type metadata accessor for PlatterListComponentView();
  v74 = *(v70 - 8);
  __chkstk_darwin(v70);
  v75 = v8;
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_13ABC4();
  v72 = *(v9 - 8);
  v73 = v9;
  __chkstk_darwin(v9);
  v71 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_139A34();
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin(v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CarouselCell();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppleOneOfferPlatterView();
  __chkstk_darwin(v18);
  v20 = (&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  __chkstk_darwin(v24);
  v26 = &v66 - v25;
  __chkstk_darwin(v27);
  __chkstk_darwin(v28);
  v31 = *a1;
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v31 >= *(a2 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_10;
  }

  v68 = &v66 - v29;
  v69 = v30;
  v32 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v31;
  sub_DB524(v32, v17, type metadata accessor for CarouselCell);
  type metadata accessor for AppleOneOfferPlatterModel();
  swift_allocObject();

  v33 = sub_F2E4(v17, a3);
  *v20 = swift_getKeyPath();
  sub_4948(&qword_19AC58);
  swift_storeEnumTagMultiPayload();
  v34 = v20 + v18[5];
  LOBYTE(v79) = 0;
  sub_13B224();
  v35 = v81;
  *v34 = v80;
  *(v34 + 1) = v35;
  v36 = v18[6];
  *(v20 + v36) = swift_getKeyPath();
  sub_4948(&qword_19AC60);
  swift_storeEnumTagMultiPayload();
  v37 = v18[9];
  v38 = objc_opt_self();
  v39 = [v38 ams_secondaryBackground];
  *(v20 + v37) = sub_13B1E4();
  v40 = v18[10];
  v41 = [v38 ams_primarySystemFillColor];
  *(v20 + v40) = sub_13B1E4();
  *(v20 + v18[11]) = 0;
  *(v20 + v18[12]) = 1;
  *(v20 + v18[13]) = 0;
  *(v20 + v18[8]) = 2;
  *(v20 + v18[7]) = v33;
  if (_UISolariumEnabled() && (v43 = v66, v42 = v67, v44 = v13, (*(v66 + 104))(v13, enum case for FlagKeys.Solarium(_:), v67), v45 = sub_139A24(), (*(v43 + 8))(v44, v42), (v45 & 1) != 0))
  {
    if (qword_199D98 != -1)
    {
      swift_once();
    }

    v46 = &qword_1B28C0;
  }

  else
  {
    v46 = (v32 + 40);
  }

  v47 = *v46;

  sub_DB9FC(v20, v23, type metadata accessor for AppleOneOfferPlatterView);
  v48 = v18[9];

  *&v23[v48] = v47;
  if (qword_199D90 != -1)
  {
    goto LABEL_13;
  }

LABEL_10:
  v49 = qword_1B28B8;
  sub_DB524(v23, v26, type metadata accessor for AppleOneOfferPlatterView);
  v50 = v18[10];

  *&v26[v50] = v49;
  sub_DB580();
  v51 = v76;
  v52 = (v76 + *(v70 + 28));
  v54 = *v52;
  v53 = v52[1];
  v80 = v54;
  v81 = v53;
  sub_4948(&qword_19FB50);
  sub_13B234();
  v55 = sub_D0ED8();

  v56 = v69;
  sub_DB524(v26, v69, type metadata accessor for AppleOneOfferPlatterView);
  *(v56 + v18[11]) = v31 == v55;
  sub_DB580();
  v57 = v71;
  sub_D2EB8(v71);
  LOBYTE(v55) = sub_750BC();
  (*(v72 + 8))(v57, v73);
  v58 = v56;
  v59 = v68;
  sub_DB9FC(v58, v68, type metadata accessor for AppleOneOfferPlatterView);
  *(v59 + v18[13]) = v55 & 1;
  v60 = v51;
  v61 = v77;
  sub_DB524(v60, v77, type metadata accessor for PlatterListComponentView);
  v62 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v63 = (v75 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  sub_DB9FC(v61, v64 + v62, type metadata accessor for PlatterListComponentView);
  *(v64 + v63) = v31;
  v80 = sub_DBCC0;
  v81 = v64;
  sub_DB4CC(&qword_19CD70, type metadata accessor for AppleOneOfferPlatterView);
  sub_7DA88();
  sub_13B124();

  return sub_DB580();
}

uint64_t sub_D8020()
{
  sub_13B3F4();
  sub_13A8E4();
}

uint64_t sub_D8094(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlatterListComponentView();
  sub_4948(&qword_19FB50);
  sub_13B234();
  sub_D0F68(a2);
}

uint64_t sub_D811C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v186 = a2;
  v3 = type metadata accessor for PlatterListComponentView();
  v4 = v3 - 8;
  v169 = *(v3 - 8);
  __chkstk_darwin(v3);
  v170 = v5;
  v171 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_4948(&qword_19FC98);
  v162 = *(v6 - 8);
  v163 = v6;
  __chkstk_darwin(v6);
  v161 = &v158 - v7;
  v160 = sub_4948(&qword_19FCA0);
  __chkstk_darwin(v160);
  v165 = &v158 - v8;
  v168 = sub_4948(&qword_19FCA8);
  __chkstk_darwin(v168);
  v167 = &v158 - v9;
  v183 = sub_4948(&qword_19FCB0);
  v166 = *(v183 - 8);
  __chkstk_darwin(v183);
  v164 = &v158 - v10;
  v11 = sub_4948(&qword_19FCB8);
  __chkstk_darwin(v11 - 8);
  v185 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v189 = &v158 - v14;
  v181 = sub_4948(&qword_19FCC0);
  __chkstk_darwin(v181);
  v173 = (&v158 - v15);
  v16 = sub_4948(&qword_19FCC8);
  __chkstk_darwin(v16 - 8);
  v184 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v192 = &v158 - v19;
  v191 = sub_13ABC4();
  v193 = *(v191 - 8);
  __chkstk_darwin(v191);
  v190 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CarouselCell();
  __chkstk_darwin(v21 - 8);
  v159 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v172 = &v158 - v24;
  __chkstk_darwin(v25);
  v27 = &v158 - v26;
  v28 = sub_139D44();
  __chkstk_darwin(v28 - 8);
  __chkstk_darwin(v29);
  __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  v175 = &v158 - v32;
  v174 = sub_4948(&qword_19ABE8);
  __chkstk_darwin(v174);
  v179 = &v158 - v33;
  v177 = sub_4948(&qword_19FCD0);
  __chkstk_darwin(v177);
  v180 = &v158 - v34;
  v178 = sub_4948(&qword_19FCD8);
  __chkstk_darwin(v178);
  v182 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v176 = &v158 - v37;
  __chkstk_darwin(v38);
  v194 = &v158 - v39;
  v40 = *(v4 + 36);
  v188 = a1;
  v41 = (a1 + v40);
  v43 = *v41;
  v42 = v41[1];
  v44 = v43;
  v198[0] = v43;
  v198[1] = v42;
  v196 = v42;
  v195 = sub_4948(&qword_19FB50);
  sub_13B234();
  v45 = sub_D1014();

  if (v45)
  {
    sub_EE08(v27);

    sub_4B14((v27 + 272), v198);
    sub_DB580();
  }

  else
  {
    memset(v198, 0, 40);
  }

  v46 = v196;
  v197[0] = v44;
  v197[1] = v196;
  sub_13B234();
  sub_D0B88();

  sub_139D24();
  v47 = v190;
  sub_D2EB8(v190);
  sub_750BC();
  v48 = *(v193 + 8);
  v193 += 8;
  v187 = v48;
  v48(v47, v191);
  sub_139D34();
  v49 = v44;
  sub_DB580();
  sub_139D14();
  sub_DB580();
  v50 = v175;
  sub_139D04();
  sub_DB580();
  v51 = objc_opt_self();
  v52 = [v51 ams_primaryText];
  v53 = sub_13B1E4();
  KeyPath = swift_getKeyPath();
  v55 = v50;
  v56 = v179;
  sub_DB9FC(v55, v179, &type metadata accessor for DynamicLabelText);
  v57 = (v56 + *(v174 + 36));
  *v57 = KeyPath;
  v57[1] = v53;
  v198[0] = v49;
  v198[1] = v46;
  sub_13B234();
  v58 = sub_D1014();

  if (v58)
  {
    sub_EE08(v27);

    sub_4B14((v27 + 272), v198);
    sub_DB580();
    v59 = v198[3];
    v60 = v198[4];
    sub_162F0(v198, v198[3]);
    v58 = (*(v60 + 72))(v59, v60);
    v62 = v61;
    sub_3C04(v198);
  }

  else
  {
    v62 = 0;
  }

  v63 = v180;
  sub_16038(v56, v180, &qword_19ABE8);
  v64 = (v63 + *(v177 + 52));
  *v64 = v58;
  v64[1] = v62;
  v65 = sub_13AEC4();
  sub_13A6E4();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v176;
  sub_16038(v63, v176, &qword_19FCD0);
  v75 = v74 + *(v178 + 36);
  *v75 = v65;
  *(v75 + 8) = v67;
  *(v75 + 16) = v69;
  *(v75 + 24) = v71;
  *(v75 + 32) = v73;
  *(v75 + 40) = 0;
  sub_16038(v74, v194, &qword_19FCD8);
  v76 = v196;
  v198[0] = v49;
  v198[1] = v196;
  sub_13B234();
  v77 = sub_D0B88();

  v198[0] = v49;
  v198[1] = v76;
  sub_13B234();
  v78 = sub_D1014();

  if (v78)
  {
    sub_EE08(v27);

    v78 = *(v27 + 23);

    sub_DB580();
  }

  v79 = v188;
  v80 = v192;
  sub_11DCB8(v77, v78, &v202);
  v81 = v190;
  sub_D2EB8(v190);
  v82 = sub_750BC();
  v187(v81, v191);
  if (v82)
  {
    v83 = sub_13B3D4();
  }

  else
  {
    v83 = sub_13B3C4();
  }

  v193 = v83;
  v188 = v84;
  v198[0] = v49;
  v198[1] = v196;
  sub_13B234();
  v85 = sub_D1014();

  if (v85)
  {
    sub_EE08(v27);

    sub_4B14((v27 + 272), v198);
    sub_DB580();
    v86 = v198[3];
    v87 = v198[4];
    sub_162F0(v198, v198[3]);
    v177 = (*(v87 + 72))(v86, v87);
    v180 = v88;
    sub_3C04(v198);
  }

  else
  {
    v177 = 0;
    v180 = 0;
  }

  v89 = v189;
  v178 = v205;
  v179 = v204;
  LODWORD(v176) = v203;
  v198[0] = v49;
  v198[1] = v196;
  sub_13B234();
  v90 = sub_D0B88();

  v91 = 1;
  if (v90)
  {
    v92 = sub_13ABD4();
    v93 = v173;
    *v173 = v92;
    *(v93 + 8) = 0;
    *(v93 + 16) = 1;
    v94 = sub_4948(&qword_19FD38);
    sub_D9540(v79, v90, v93 + *(v94 + 44));

    sub_16038(v93, v80, &qword_19FCC0);
    v91 = 0;
  }

  sub_53A8(v80, v91, 1, v181);
  v197[0] = v49;
  v197[1] = v196;
  sub_13B234();
  v95 = sub_D1014();

  if (!v95)
  {
    goto LABEL_23;
  }

  v96 = v172;
  sub_EE08(v172);

  sub_16C24(v96, v198, &qword_19E960);
  sub_DB580();
  v97 = v198[3];
  if (!v198[3])
  {
    sub_DB9AC(v198, &qword_19E960);
LABEL_23:
    v115 = v89;
    v116 = 1;
    v117 = v183;
    goto LABEL_31;
  }

  v98 = v198[4];
  sub_162F0(v198, v198[3]);
  v99 = (*(v98 + 72))(v97, v98);
  v101 = v100;
  sub_3C04(v198);
  v198[0] = v99;
  v198[1] = v101;
  sub_1628C();
  v181 = sub_13B004();
  v174 = v103;
  v175 = v102;
  LOBYTE(v101) = v104;
  v105 = v190;
  sub_D2EB8(v190);
  LODWORD(v172) = sub_750BC();
  v187(v105, v191);
  v191 = swift_getKeyPath();
  v190 = sub_13AF34();
  v187 = swift_getKeyPath();
  v106 = v101 & 1;
  v199 = v101 & 1;
  v107 = [v51 ams_primaryText];
  v173 = sub_13B1E4();
  v197[0] = v49;
  v197[1] = v196;
  sub_13B234();
  v108 = sub_D1014();

  if (!v108)
  {
LABEL_25:
    v112 = 0;
    v114 = 0xE000000000000000;
    goto LABEL_26;
  }

  v109 = v159;
  sub_EE08(v159);

  sub_16C24(v109, v198, &qword_19E960);
  sub_DB580();
  v110 = v198[3];
  if (!v198[3])
  {
    sub_DB9AC(v198, &qword_19E960);
    goto LABEL_25;
  }

  v111 = v198[4];
  sub_162F0(v198, v198[3]);
  v112 = (*(v111 + 72))(v110, v111);
  v114 = v113;
  sub_3C04(v198);
LABEL_26:
  sub_4948(&qword_19AAA0);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_13E650;
  v119 = sub_13AEE4();
  *(v118 + 32) = v119;
  v120 = sub_13AF04();
  *(v118 + 33) = v120;
  v121 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v119)
  {
    v121 = sub_13AEF4();
  }

  v122 = (v172 & 1) == 0;

  sub_13AEF4();
  if (sub_13AEF4() != v120)
  {
    v121 = sub_13AEF4();
  }

  v80 = v192;
  sub_13A6E4();
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v200 = 0;
  v131 = sub_13AED4();
  sub_13A6E4();
  LOBYTE(v201) = 0;
  v197[0] = v181;
  v197[1] = v175;
  LOBYTE(v197[2]) = v106;
  v197[3] = v174;
  v197[4] = v191;
  LOBYTE(v197[5]) = v122;
  v197[6] = v187;
  v197[7] = v190;
  v197[8] = v173;
  v197[9] = v112;
  v197[10] = v114;
  LOBYTE(v197[11]) = v121;
  v197[12] = v124;
  v197[13] = v126;
  v197[14] = v128;
  v197[15] = v130;
  LOBYTE(v197[16]) = 0;
  LOBYTE(v197[17]) = v131;
  v197[18] = v132;
  v197[19] = v133;
  v197[20] = v134;
  v197[21] = v135;
  LOBYTE(v197[22]) = 0;
  sub_4948(&qword_19FCE8);
  sub_DB610(&qword_19FCF0, &qword_19FCE8, &unk_149E28, sub_DB690);
  v136 = v161;
  sub_13B154();
  memcpy(v198, v197, 0xB1uLL);
  sub_DB9AC(v198, &qword_19FCE8);
  v137 = swift_getKeyPath();
  v138 = v165;
  (*(v162 + 32))(v165, v136, v163);
  v139 = &v138[*(v160 + 36)];
  *v139 = v137;
  v139[1] = 0x3FE0000000000000;
  v140 = v171;
  sub_DB524(v79, v171, type metadata accessor for PlatterListComponentView);
  v141 = (*(v169 + 80) + 16) & ~*(v169 + 80);
  v142 = swift_allocObject();
  sub_DB9FC(v140, v142 + v141, type metadata accessor for PlatterListComponentView);
  v143 = v138;
  v144 = v167;
  sub_16038(v143, v167, &qword_19FCA0);
  v145 = (v144 + *(v168 + 36));
  *v145 = sub_DB79C;
  v145[1] = v142;
  sub_DB7F8();
  v145[2] = 0;
  v145[3] = 0;
  v146 = v164;
  sub_13B064();
  sub_DB9AC(v144, &qword_19FCA8);
  v147 = v183;
  (*(v166 + 32))(v89, v146, v183);
  v115 = v89;
  v116 = 0;
  v117 = v147;
LABEL_31:
  sub_53A8(v115, v116, 1, v117);
  v148 = v182;
  sub_16C24(v194, v182, &qword_19FCD8);
  v149 = v184;
  sub_16C24(v80, v184, &qword_19FCC8);
  v150 = v185;
  sub_16C24(v89, v185, &qword_19FCB8);
  v151 = v186;
  sub_16C24(v148, v186, &qword_19FCD8);
  v152 = sub_4948(&qword_19FCE0);
  v153 = v151 + v152[12];
  v154 = v188;
  *v153 = v193;
  *(v153 + 8) = v154;
  *(v153 + 16) = v176;
  v155 = v178;
  *(v153 + 24) = v179;
  *(v153 + 32) = v155;
  v156 = v180;
  *(v153 + 40) = v177;
  *(v153 + 48) = v156;
  sub_16C24(v149, v151 + v152[16], &qword_19FCC8);
  sub_16C24(v150, v151 + v152[20], &qword_19FCB8);

  sub_DB9AC(v189, &qword_19FCB8);
  sub_DB9AC(v192, &qword_19FCC8);
  sub_DB9AC(v194, &qword_19FCD8);
  sub_DB9AC(v150, &qword_19FCB8);
  sub_DB9AC(v149, &qword_19FCC8);

  return sub_DB9AC(v148, &qword_19FCD8);
}

uint64_t sub_D9540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v5 = type metadata accessor for OfferBadge();
  __chkstk_darwin(v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CarouselCell();
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4948(&qword_19ABA0);
  __chkstk_darwin(v11);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  v19 = sub_4948(&qword_19FD40);
  __chkstk_darwin(v19 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v42 - v23;
  if (sub_D3130())
  {
    v25 = 1;
    goto LABEL_9;
  }

  v44 = a3;
  v26 = *(type metadata accessor for PlatterListComponentView() + 28);
  v43 = a1;
  v27 = (a1 + v26);
  v29 = *v27;
  v28 = v27[1];
  v47 = v29;
  v48 = v28;
  sub_4948(&qword_19FB50);
  sub_13B234();
  v30 = sub_D1014();

  if (!v30)
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    goto LABEL_7;
  }

  sub_EE08(v10);

  sub_16C24((v10 + 144), &v49, &qword_19E960);
  sub_DB580();
  if (!*(&v50 + 1))
  {
LABEL_7:
    sub_DB9AC(&v49, &qword_19E960);
    sub_53A8(v18, 1, 1, v5);
    goto LABEL_8;
  }

  sub_9414(&v49, v52);
  sub_4B14(v52, v7 + v5[9]);
  *v7 = swift_getKeyPath();
  sub_4948(&qword_19AC58);
  swift_storeEnumTagMultiPayload();
  *(v7 + v5[5]) = swift_getKeyPath();
  sub_4948(&qword_19AC60);
  swift_storeEnumTagMultiPayload();
  v31 = v7 + v5[6];
  type metadata accessor for CGSize(0);
  v47 = 0;
  v48 = 0;
  sub_13B224();
  sub_3C04(v52);
  v32 = v50;
  *v31 = v49;
  *(v31 + 2) = v32;
  *(v7 + v5[7]) = 0;
  *(v7 + v5[8]) = v45;
  sub_DB9FC(v7, v18, type metadata accessor for OfferBadge);
  sub_53A8(v18, 0, 1, v5);

LABEL_8:
  a3 = v44;
  sub_16038(v18, v24, &qword_19ABA0);
  v25 = 0;
  a1 = v43;
LABEL_9:
  sub_53A8(v24, v25, 1, v11);
  v33 = (a1 + *(type metadata accessor for PlatterListComponentView() + 28));
  v35 = *v33;
  v34 = v33[1];
  v47 = v35;
  v48 = v34;
  sub_4948(&qword_19FB50);
  sub_13B234();
  v36 = sub_D1014();

  if (!v36)
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    goto LABEL_13;
  }

  sub_EE08(v10);

  sub_16C24((v10 + 192), &v49, &qword_19E960);
  sub_DB580();
  if (!*(&v50 + 1))
  {
LABEL_13:
    sub_DB9AC(&v49, &qword_19E960);
    sub_53A8(v15, 1, 1, v5);
    goto LABEL_14;
  }

  sub_9414(&v49, v52);
  sub_4B14(v52, v7 + v5[9]);
  *v7 = swift_getKeyPath();
  sub_4948(&qword_19AC58);
  swift_storeEnumTagMultiPayload();
  *(v7 + v5[5]) = swift_getKeyPath();
  sub_4948(&qword_19AC60);
  swift_storeEnumTagMultiPayload();
  v37 = v7 + v5[6];
  type metadata accessor for CGSize(0);
  v47 = 0;
  v48 = 0;
  sub_13B224();
  sub_3C04(v52);
  v38 = v50;
  *v37 = v49;
  *(v37 + 2) = v38;
  *(v7 + v5[7]) = 0;
  *(v7 + v5[8]) = v45;
  sub_DB9FC(v7, v15, type metadata accessor for OfferBadge);
  sub_53A8(v15, 0, 1, v5);

LABEL_14:
  sub_16C24(v24, v21, &qword_19FD40);
  v39 = v46;
  sub_16C24(v15, v46, &qword_19ABA0);
  sub_16C24(v21, a3, &qword_19FD40);
  v40 = sub_4948(&qword_19FD48);
  sub_16C24(v39, a3 + *(v40 + 48), &qword_19ABA0);
  sub_DB9AC(v15, &qword_19ABA0);
  sub_DB9AC(v24, &qword_19FD40);
  sub_DB9AC(v39, &qword_19ABA0);
  return sub_DB9AC(v21, &qword_19FD40);
}

uint64_t sub_D9C30()
{
  type metadata accessor for PlatterListComponentView();
  sub_4948(&qword_19FB50);
  sub_13B234();
  v0 = sub_D0ED8();
  sub_D0F68(v0);
}

uint64_t sub_D9CD4(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for PlatterListComponentView();
  sub_4948(&qword_19FB50);
  sub_13B234();
  sub_D13D4(v1);
}

void *sub_D9D54(double *a1, void *(*a2)(double *__return_ptr))
{
  v4 = a1[1];
  result = a2(&v8);
  if (v9 >= v4 && (v6 = *a1, result = (a2)(&v8, result, v9), v8 >= v6))
  {
    result = (a2)(&v8, result, v8);
    v7 = v8;
    v4 = v9;
  }

  else
  {
    v7 = *a1;
  }

  *a1 = v7;
  a1[1] = v4;
  return result;
}

uint64_t sub_D9E5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_13AA34();
  *a1 = result;
  return result;
}

uint64_t sub_D9EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_D9F28(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_D9F28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  sub_7FB50(v42);
  v6 = v42[1];
  v7 = v42[3];
  v8 = v42[4];
  v32 = v42[5];
  v33 = v42[0];
  v9 = (v42[2] + 64) >> 6;

  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = *(*(v33 + 48) + 8 * v12);
      v14 = (*(v33 + 56) + 32 * v12);
      v39 = v13;
      v15 = v14[1];
      v40 = *v14;
      v41 = v15;
      v32(&v36, &v39);
      v16 = v36;
      v34 = v37;
      v35 = v38;
      v17 = *v43;
      v19 = sub_7C4E8(v36);
      v20 = v17[2];
      v21 = (v18 & 1) == 0;
      if (__OFADD__(v20, v21))
      {
        break;
      }

      v22 = v18;
      if (v17[3] >= v20 + v21)
      {
        if ((a4 & 1) == 0)
        {
          sub_4948(&qword_19D520);
          sub_13C084();
        }
      }

      else
      {
        sub_7CB7C();
        v23 = sub_7C4E8(v16);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_23;
        }

        v19 = v23;
      }

      v8 &= v8 - 1;
      v25 = *v43;
      if (v22)
      {
        v26 = (v25[7] + 32 * v19);
        *v26 = v34;
        v26[1] = v35;
      }

      else
      {
        v25[(v19 >> 6) + 8] |= 1 << v19;
        *(v25[6] + 8 * v19) = v16;
        v27 = (v25[7] + 32 * v19);
        *v27 = v34;
        v27[1] = v35;
        v28 = v25[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_22;
        }

        v25[2] = v30;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        sub_7D220();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_13C174();
  __break(1u);
  return result;
}

unint64_t *sub_DA194(uint64_t a1, CGFloat a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      v4 = sub_DA450(v10, v6, v4, a2);

      return v4;
    }
  }

  __chkstk_darwin(a1);
  v7 = (&v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_7D0F0(0, v6, v7);
  sub_DA30C(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return v4;
}

void sub_DA30C(unint64_t *a1, uint64_t a2, uint64_t a3, CGFloat a4)
{
  v8 = 0;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    if (CGRectGetWidth(*(*(a3 + 56) + 32 * v18)) > a4)
    {
      *(a1 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
LABEL_15:
        sub_DA4D8(a1, a2, v8, a3);
        return;
      }
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_15;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_DA450(unint64_t *result, uint64_t a2, uint64_t a3, CGFloat a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_DA30C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_DA4D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_4948(&qword_19D528);
  result = sub_13C0E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = (*(v4 + 56) + 32 * v16);
    v29 = v18[1];
    v30 = *v18;
    result = sub_13C204();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    v27 = (*(v9 + 56) + 32 * v22);
    *v27 = v30;
    v27[1] = v29;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_DA738(uint64_t a1, uint64_t a2, int *a3)
{
  sub_4948(&qword_19A968);
  sub_17250();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return sub_52E0(v9, a2, v8);
  }

  sub_4948(&qword_19A970);
  sub_17250();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = sub_4948(&qword_19FA68);
    v12 = a3[11];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_DA87C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_4948(&qword_19A968);
  sub_17250();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_4948(&qword_19A970);
    sub_17250();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      v10 = sub_4948(&qword_19FA68);
      v14 = a4[11];
    }

    v11 = a1 + v14;
  }

  sub_53A8(v11, a2, a2, v10);
}

uint64_t type metadata accessor for PlatterListComponentView()
{
  result = qword_19FAC8;
  if (!qword_19FAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DA9F4()
{
  sub_DACA8(319, &qword_19A9E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_DACA8(319, &qword_19A9F0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_DABF8();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_DACA8(319, &qword_19FAE0, type metadata accessor for PlatterListComponentModel, &type metadata accessor for State);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_DAC5C(319, &qword_19A9E8);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_DAC5C(319, &qword_19FAE8);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_DACA8(319, &unk_19FAF0, &type metadata accessor for ScrollPosition, &type metadata accessor for State);
              v1 = v13;
              if (v14 <= 0x3F)
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

  return v1;
}

void sub_DABF8()
{
  if (!qword_19FAD8)
  {
    sub_558C(&qword_19FA40);
    v0 = sub_13B264();
    if (!v1)
    {
      atomic_store(v0, &qword_19FAD8);
    }
  }
}

void sub_DAC5C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_13B264();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_DACA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_DCB04();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_DAD38()
{
  v2 = sub_DCA1C();
  sub_8AD98(v2);
  sub_DCA0C();

  return sub_D3C04(v0, v3, v1);
}

uint64_t sub_DADBC()
{
  sub_9A0C4();
  v1 = type metadata accessor for PlatterListComponentView();
  sub_8AD98(v1);
  sub_DCA0C();

  return sub_D9CD4(v0);
}

uint64_t sub_DAE1C()
{
  v1 = type metadata accessor for PlatterListComponentView();
  sub_DC9B0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = sub_13A864();
  sub_9E94();
  v6 = v5;
  v7 = v0 + v3;
  sub_4948(&qword_19AC58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_5224();
    (*(v8 + 8))(v0 + v3);
  }

  else
  {
  }

  v9 = v1[5];
  sub_4948(&qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_5224();
    (*(v10 + 8))(v7 + v9);
  }

  else
  {
  }

  sub_DC9D0();
  sub_DCAE4(v1[7]);

  sub_DCAE4(v1[10]);

  v11 = v7 + v1[11];
  sub_13A914();
  sub_5224();
  (*(v12 + 8))(v11);
  sub_4948(&qword_19FA68);

  (*(v6 + 8))(v0 + v3, v4);
  v13 = sub_DCAC4();

  return _swift_deallocObject(v13, v14, v15);
}

uint64_t sub_DB090(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = type metadata accessor for PlatterListComponentView();
  sub_CCF4(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_13A864();
  sub_8AD98(v7);
  v9 = v1 + ((v4 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  return a1(v1 + v4, v9);
}

unint64_t sub_DB164()
{
  result = qword_19FB80;
  if (!qword_19FB80)
  {
    sub_558C(&qword_19FB40);
    sub_DB21C();
    sub_7FAA8(&qword_19FBB8, &unk_19FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FB80);
  }

  return result;
}

unint64_t sub_DB21C()
{
  result = qword_19FB88;
  if (!qword_19FB88)
  {
    sub_558C(&qword_19FB78);
    sub_DB2D4();
    sub_7FAA8(&qword_19FBA8, &unk_19FBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FB88);
  }

  return result;
}

unint64_t sub_DB2D4()
{
  result = qword_19FB90;
  if (!qword_19FB90)
  {
    sub_558C(&qword_19FB70);
    sub_7FAA8(&qword_19FB98, &unk_19FBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FB90);
  }

  return result;
}

unint64_t sub_DB38C()
{
  result = qword_19FC70;
  if (!qword_19FC70)
  {
    sub_558C(&qword_19FC48);
    sub_DB410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FC70);
  }

  return result;
}

unint64_t sub_DB410()
{
  result = qword_19FC78;
  if (!qword_19FC78)
  {
    sub_558C(&qword_19FC38);
    sub_DB4CC(&qword_19CD70, type metadata accessor for AppleOneOfferPlatterView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FC78);
  }

  return result;
}

uint64_t sub_DB4CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_DB524(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  v4 = sub_17208();
  v5(v4);
  return a2;
}

uint64_t sub_DB580()
{
  v1 = sub_9A0C4();
  v2(v1);
  sub_5224();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_DB5D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_13AA34();
  *a1 = result;
  return result;
}

uint64_t sub_DB610(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_7FD80(0, a2);
    sub_558C(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_DB690()
{
  result = qword_19FCF8;
  if (!qword_19FCF8)
  {
    sub_558C(&qword_19FD00);
    sub_7FAA8(&qword_19FD08, &unk_19FD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FCF8);
  }

  return result;
}

uint64_t sub_DB748@<X0>(void *a1@<X8>)
{
  result = sub_13AA94();
  *a1 = v3;
  return result;
}

uint64_t sub_DB79C()
{
  v0 = type metadata accessor for PlatterListComponentView();
  sub_8AD98(v0);

  return sub_D9C30();
}

unint64_t sub_DB7F8()
{
  result = qword_19FD18;
  if (!qword_19FD18)
  {
    sub_558C(&qword_19FCA8);
    sub_DB884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FD18);
  }

  return result;
}

unint64_t sub_DB884()
{
  result = qword_19FD20;
  if (!qword_19FD20)
  {
    sub_558C(&qword_19FCA0);
    sub_558C(&qword_19FCE8);
    sub_DB610(&qword_19FCF0, &qword_19FCE8, &unk_149E28, sub_DB690);
    swift_getOpaqueTypeConformance2();
    sub_7FAA8(&qword_19FD28, &unk_19FD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FD20);
  }

  return result;
}

uint64_t sub_DB9AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_7FD80(a1, a2);
  sub_4948(v3);
  sub_5224();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_DB9FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  v4 = sub_17208();
  v5(v4);
  return a2;
}

uint64_t sub_DBA58()
{
  v1 = type metadata accessor for PlatterListComponentView();
  sub_DC9B0();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  sub_4948(&qword_19AC58);
  sub_DCB04();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_5224();
    (*(v7 + 8))(v0 + v4);
  }

  else
  {
  }

  v8 = v1[5];
  sub_4948(&qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_5224();
    (*(v9 + 8))(v0 + v4 + v8);
  }

  else
  {
  }

  sub_DCA8C();
  sub_DCAD8(v1[7]);

  sub_DCA70();
  sub_DCA54();
  sub_DCAD8(v1[10]);

  sub_DCA38();
  sub_5224();
  (*(v10 + 8))(v1);
  sub_4948(&qword_19FA68);

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_DBC48()
{
  v3 = sub_DCA1C();
  sub_8AD98(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_D7818(v0, v5, v6, v7, v2);
}

unint64_t sub_DBCE4()
{
  result = qword_19FD80;
  if (!qword_19FD80)
  {
    sub_558C(&qword_19FD78);
    sub_DBD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FD80);
  }

  return result;
}

unint64_t sub_DBD70()
{
  result = qword_19FD88;
  if (!qword_19FD88)
  {
    sub_558C(&qword_19FD90);
    sub_7FAA8(&qword_19FD98, &unk_19FDA0);
    sub_7FAA8(&qword_19FDA8, &unk_19FDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FD88);
  }

  return result;
}

uint64_t sub_DBE54()
{
  v1 = type metadata accessor for PlatterListComponentView();
  sub_DC9B0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = sub_13A864();
  sub_9E94();
  v6 = v5;

  v7 = v0 + v3;
  sub_4948(&qword_19AC58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_5224();
    (*(v8 + 8))(v0 + v3);
  }

  else
  {
  }

  v9 = v1[5];
  sub_4948(&qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_5224();
    (*(v10 + 8))(v7 + v9);
  }

  else
  {
  }

  sub_DC9D0();
  sub_DCAE4(v1[7]);

  sub_DCAE4(v1[10]);

  v11 = v7 + v1[11];
  sub_13A914();
  sub_5224();
  (*(v12 + 8))(v11);
  sub_4948(&qword_19FA68);

  (*(v6 + 8))(v0 + v3, v4);
  v13 = sub_DCAC4();

  return _swift_deallocObject(v13, v14, v15);
}

uint64_t sub_DC0D8()
{
  v3 = sub_DCA1C();
  sub_CCF4(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_13A864();
  sub_8AD98(v8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_D6874(v0, v10, v11, v1 + v5, v12, v2);
}

unint64_t sub_DC1A8()
{
  result = qword_19FDD0;
  if (!qword_19FDD0)
  {
    sub_558C(&qword_19FDC8);
    sub_DB610(&qword_19FDD8, &qword_19FDE0, &unk_149F20, sub_DC260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FDD0);
  }

  return result;
}

unint64_t sub_DC260()
{
  result = qword_19FDE8;
  if (!qword_19FDE8)
  {
    sub_558C(&qword_19FDF0);
    sub_DC318();
    sub_7FAA8(&qword_19FE08, &unk_19FE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FDE8);
  }

  return result;
}

unint64_t sub_DC318()
{
  result = qword_19FDF8;
  if (!qword_19FDF8)
  {
    sub_558C(&qword_19FE00);
    type metadata accessor for AppleOneOfferPlatterView();
    sub_DB4CC(&qword_19CD70, type metadata accessor for AppleOneOfferPlatterView);
    sub_7DA88();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FDF8);
  }

  return result;
}

uint64_t sub_DC420()
{
  v1 = type metadata accessor for PlatterListComponentView();
  sub_DC9B0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_4948(&qword_19AC58);
  sub_DCB04();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_5224();
    (*(v7 + 8))(v0 + v4);
  }

  else
  {
  }

  v8 = v1[5];
  sub_4948(&qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_5224();
    (*(v9 + 8))(v0 + v4 + v8);
  }

  else
  {
  }

  sub_DCA8C();
  sub_DCAD8(v1[7]);

  sub_DCA70();
  sub_DCA54();
  sub_DCAD8(v1[10]);

  sub_DCA38();
  sub_5224();
  (*(v10 + 8))(v1);
  sub_4948(&qword_19FA68);

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_DC600()
{
  sub_9A0C4();
  v0 = type metadata accessor for PlatterListComponentView();
  sub_8AD98(v0);
  sub_DCA0C();

  return sub_D7564();
}

uint64_t sub_DC660()
{
  v1 = type metadata accessor for PlatterListComponentView();
  sub_DC9B0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_4948(&qword_19AC58);
  sub_DCB04();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_5224();
    (*(v7 + 8))(v0 + v4);
  }

  else
  {
  }

  v8 = *(v1 + 20);
  sub_4948(&qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_5224();
    (*(v9 + 8))(v0 + v4 + v8);
  }

  else
  {
  }

  sub_DCA8C();

  sub_DCA70();
  sub_DCA54();

  sub_DCA38();
  sub_5224();
  (*(v10 + 8))(v1);
  sub_4948(&qword_19FA68);

  return _swift_deallocObject(v0, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_DC86C()
{
  sub_9A0C4();
  v0 = type metadata accessor for PlatterListComponentView();
  sub_CCF4(v0);
  return sub_D8020();
}

uint64_t sub_DC9D0()
{
}

uint64_t sub_DCA1C()
{

  return type metadata accessor for PlatterListComponentView();
}

uint64_t sub_DCA38()
{

  return sub_13A914();
}

uint64_t sub_DCA54()
{
}

uint64_t sub_DCA70()
{
}

uint64_t sub_DCA8C()
{
}

uint64_t sub_DCAA8()
{

  return sub_13B244();
}

uint64_t sub_DCB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a4;
  v36 = a5;
  v34 = a2;
  v41 = a6;
  v42 = a1;
  v9 = sub_13ACE4();
  __chkstk_darwin(v9);
  v10 = sub_13A754();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4948(&qword_19FE98);
  sub_9E94();
  v37 = v16;
  v38 = v17;
  __chkstk_darwin(v16);
  v19 = &v33 - v18;
  sub_4948(&qword_19FEA0);
  sub_9E94();
  v39 = v20;
  v40 = v21;
  __chkstk_darwin(v20);
  v23 = &v33 - v22;
  sub_13AD74();
  sub_13A744();
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v25 = v36;
  v24[4] = a4;
  v24[5] = v25;
  sub_DD5D0(&qword_19FEA8, &type metadata accessor for DragGesture);
  sub_DD5D0(&qword_19FEB0, &type metadata accessor for DragGesture.Value);

  sub_13B344();

  (*(v12 + 8))(v15, v10);
  v26 = swift_allocObject();
  v27 = v35;
  v26[2] = v34;
  v26[3] = a3;
  v26[4] = v27;
  v26[5] = v25;
  sub_CBC0(&qword_19FEB8, &qword_19FE98);

  v28 = v37;
  sub_13B334();

  (*(v38 + 8))(v19, v28);
  sub_13A774();
  sub_4948(&qword_19FEC0);
  sub_DD76C();
  sub_CBC0(v29, &qword_19FEC0);
  sub_DD754();
  sub_CBC0(v30, &qword_19FEA0);
  v31 = v39;
  sub_13B104();
  return (*(v40 + 8))(v23, v31);
}

id sub_DCFA8()
{
  v0 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  [v0 setMinimumPressDuration:0.0];
  [v0 setAllowableMovement:INFINITY];
  v1 = v0;
  sub_4948(&qword_19FE90);
  sub_13AE54();
  [v1 setDelegate:v3];

  return v1;
}

uint64_t sub_DD05C(void *a1)
{
  if ([a1 state] != &dword_0 + 1)
  {
    [a1 state];
  }

  sub_4948(&qword_19D9D0);
  return sub_13B2D4();
}

id sub_DD114()
{
  v0 = objc_allocWithZone(type metadata accessor for PressGesture.Coordinator());

  return [v0 init];
}

id sub_DD1C8@<X0>(void *a1@<X8>)
{
  result = sub_DD114();
  *a1 = result;
  return result;
}

id sub_DD20C()
{
  v0 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v0 setNumberOfTouchesRequired:1];
  [v0 setNumberOfTapsRequired:1];
  v1 = v0;
  sub_4948(&unk_19FE80);
  sub_13AE54();
  [v1 setDelegate:v3];

  return v1;
}

char *sub_DD2BC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = [a1 state];
  if (result == &dword_0 + 3)
  {
    return a3();
  }

  return result;
}

id sub_DD2FC()
{
  v0 = objc_allocWithZone(type metadata accessor for TapGesture.Coordinator());

  return [v0 init];
}

id sub_DD338(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_DD3C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_DD428@<X0>(void *a1@<X8>)
{
  result = sub_DD2FC();
  *a1 = result;
  return result;
}

__n128 sub_DD45C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_DD470(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_DD4B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_DD4FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_DD53C(uint64_t result, int a2, int a3)
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

uint64_t sub_DD5D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_DD618()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_DD680()
{
  sub_558C(&qword_19FEC0);
  sub_558C(&qword_19FEA0);
  sub_DD76C();
  sub_CBC0(v0, &qword_19FEC0);
  sub_DD754();
  sub_CBC0(v1, &qword_19FEA0);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_DD784(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_DD7A4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_DD784(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_DD7D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_DD794(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_DD80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_13B644();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_DD880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v72 = a3;
  v4 = sub_4948(&qword_19DDA8);
  __chkstk_darwin(v4 - 8);
  v75 = v69 - v5;
  sub_13B584();
  sub_9E94();
  v78 = v6;
  v79 = v7;
  __chkstk_darwin(v6);
  v71 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = v69 - v10;
  __chkstk_darwin(v11);
  v13 = v69 - v12;
  v14 = sub_13B644();
  sub_9E94();
  v76 = v15;
  __chkstk_darwin(v16);
  v18 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PromptLocationAction();
  sub_2B538();
  __chkstk_darwin(v20);
  v77 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  v23 = a1;
  sub_13B594();
  v24 = v14;
  if (sub_13B564())
  {
    goto LABEL_4;
  }

  v73 = v23;
  v69[1] = inited;
  v25 = v79;
  v26 = v75;
  sub_DE1DC(v13, v84, v75);
  if (sub_52E0(v26, 1, v14) == 1)
  {
    sub_184DC(v26, &qword_19DDA8);
    v23 = v73;
LABEL_4:
    sub_13BAB4();
    sub_DE88C();
    sub_DE844(v27, v28);
    swift_allocError();
    strcpy(v29, "actionMetrics");
    *(v29 + 7) = -4864;
    *(v29 + 2) = v19;
    sub_2B538();
    (*(v30 + 104))();
    swift_willThrow();

    v31 = v78;
    v32 = *(v79 + 8);
    v32(v23, v78);
    v32(v13, v31);
    v33 = 0;
    v34 = v77;
    goto LABEL_11;
  }

  v37 = *(v25 + 8);
  v36 = v25 + 8;
  v35 = v37;
  v37(v13, v78);
  v38 = *(v76 + 32);
  v38(v18, v26, v14);
  v39 = *(v19 + 28);
  v40 = v73;
  v41 = v19;
  v42 = v77;
  v75 = v14;
  v38(&v77[v39], v18, v14);
  v43 = v74;
  v44 = sub_BB598(0xD000000000000011, 0x80000000001516D0, v41);
  if (v43)
  {
    v35(v40, v78);

    v33 = 1;
    v34 = v42;
    v19 = v41;
    v24 = v75;
LABEL_11:
    sub_13B5A4();
    sub_5224();
    result = (*(v48 + 8))(v84);
    if (v33)
    {
      return (*(v76 + 8))(&v34[*(v19 + 28)], v24);
    }

    return result;
  }

  v45 = v35;
  v46 = v36;
  if (v44 >= 3)
  {
    v47 = 1;
  }

  else
  {
    v47 = v44;
  }

  *v42 = v47;
  *(v42 + 1) = sub_BB310();
  *(v42 + 2) = v50;
  sub_BB458();
  v76 = v41;
  sub_DE8D0();
  v42[24] = v51 & 1;
  v52 = v70;
  sub_13B594();
  v53 = sub_13B564();
  v79 = v46;
  if (v53)
  {
    v69[0] = v35;
    sub_13BAB4();
    sub_DE88C();
    sub_DE844(v54, v55);
    sub_9F18();
    *v56 = 0x416572756C696166;
    v56[1] = v41;
    v67 = v76;
    v56[2] = v76;
    sub_2B538();
    (*(v57 + 104))();
    swift_willThrow();
    (v69[0])(v52, v78);

    v83 = 0;
    v81 = 0u;
    v82 = 0u;
  }

  else
  {
    sub_DE8A4();
    sub_139BC4();
    v35(v52, v78);
    sub_9414(&v80, &v81);
    v41 = 0xED00006E6F697463;
    v67 = v76;
  }

  sub_DE8BC();
  sub_8DBA0(&v77[*(v67 + 32)]);
  v58 = v71;
  v59 = v73;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_DE88C();
    sub_DE844(v60, v61);
    sub_9F18();
    *v62 = 0x416572756C696166;
    v62[1] = v41;
    v62[2] = v67;
    sub_2B538();
    (*(v63 + 104))();
    swift_willThrow();

    v64 = v78;
    v45(v59, v78);
    v45(v58, v64);

    v83 = 0;
    v81 = 0u;
    v82 = 0u;
  }

  else
  {
    sub_DE8A4();
    sub_139BC4();

    v68 = v78;
    v45(v73, v78);
    v45(v58, v68);
    sub_9414(&v80, &v81);
    v67 = v76;
  }

  v65 = v77;
  sub_8DBA0(&v77[*(v67 + 36)]);
  sub_DE3F4(v65, v72);
  sub_13B5A4();
  sub_5224();
  (*(v66 + 8))(v84);
  return sub_DE458(v65);
}

uint64_t sub_DE1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B634();
  v14 = sub_13B644();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t type metadata accessor for PromptLocationAction()
{
  result = qword_19FF38;
  if (!qword_19FF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DE3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptLocationAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DE458(uint64_t a1)
{
  v2 = type metadata accessor for PromptLocationAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DE4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 28);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_DE564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 28);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_DE5E4()
{
  sub_13B644();
  if (v0 <= 0x3F)
  {
    sub_5528();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PromptLocationAction.AuthorizationType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xDE75CLL);
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

unint64_t sub_DE798()
{
  result = qword_19FF80;
  if (!qword_19FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19FF80);
  }

  return result;
}

uint64_t sub_DE7EC(uint64_t a1)
{
  result = sub_DE844(&qword_19F158, type metadata accessor for PromptLocationAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_DE844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_DE8E4(char *a1)
{
  if (qword_19A018 != -1)
  {
    sub_CCD4();
  }

  v3 = sub_139A14();
  sub_4910(v3, qword_1B2B00);
  sub_4948(&unk_19E010);
  v4 = sub_1399C4();
  sub_CCF4(v4);
  *(swift_allocObject() + 16) = xmmword_13E650;
  v25 = type metadata accessor for PromptLocationActionImplementation();
  v27 = v25;
  v26[0] = v1;
  v5 = v1;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v26);
  sub_139974();
  sub_1399F4();

  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_queue];
  objc_allocWithZone(CLLocationManager);
  v11 = v5;

  v12 = v10;
  v13 = sub_DF97C(v8, v9, v5, v10);
  v14 = *&v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_manager];
  *&v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_manager] = v13;
  v15 = v13;

  if (v13)
  {
    v16 = [v15 authorizationStatus];
    v17 = &v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_originalAuthorizationStatus];
    *v17 = v16;
    v17[4] = 0;
    [v15 *off_18C9B0[*a1]];
    if (a1[24] == 1)
    {
      sub_DFC5C();
      sub_E0C88(1, v18);

      sub_CC68(v26, &qword_1A0060);
    }

    else
    {
    }
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_13E660;
    v27 = v25;
    v26[0] = v11;
    v11;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v26);
    sub_139974();
    v27 = &type metadata for PromptLocationActionImplementation.PerformError;
    sub_139984();
    sub_CC68(v26, &unk_1A06F0);
    sub_1399E4();

    sub_DFA08();
    swift_allocError();
    sub_DFC5C();
    sub_E0B50(v21, v22);
    sub_CC68(v26, &qword_1A0060);
  }

  v27 = sub_13B7C4();
  v28 = &protocol witness table for SyncTaskScheduler;
  sub_CC08(v26);
  sub_13B7B4();
  v23 = sub_13B9C4();
  sub_3C04(v26);
  return v23;
}

id sub_DED38()
{
  v1 = sub_13BD64();
  __chkstk_darwin(v1);
  sub_9EC0();
  v2 = sub_13BD74();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = sub_13B4E4();
  __chkstk_darwin(v9 - 8);
  sub_9EC0();
  *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_manager] = 0;
  v10 = &v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_originalAuthorizationStatus];
  *v10 = 0;
  v10[4] = 1;
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_promise;
  sub_4948(&unk_1A0070);
  *&v0[v11] = sub_13BA24();
  v13 = OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_queue;
  sub_7389C();
  sub_13B4D4();
  (*(v4 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v15 = _swiftEmptyArrayStorage;
  sub_DFA5C(&qword_1A0080, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_4948(&qword_1A0088);
  sub_DFAA4();
  sub_13BF64();
  *&v0[v13] = sub_13BDA4();
  v14.receiver = v0;
  v14.super_class = type metadata accessor for PromptLocationActionImplementation();
  return objc_msgSendSuper2(&v14, "init");
}

id sub_DEFE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromptLocationActionImplementation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_DF0C0(void *a1)
{
  sub_13B4F4();
  sub_9E94();
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_queue];
  *(v6 - v5) = v7;
  v8 = sub_DFC34();
  v9(v8);
  v10 = v7;
  sub_13B504();
  v11 = sub_DFC48();
  v12(v11);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    sub_CCD4();
    goto LABEL_9;
  }

  v13 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_originalAuthorizationStatus];
  v14 = v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_originalAuthorizationStatus + 4];
  v2 = &selRef_clearColor;
  v15 = [a1 authorizationStatus];
  if ((v14 & 1) == 0 && v13 == v15)
  {
    if (qword_19A018 != -1)
    {
      sub_CCD4();
    }

    v16 = sub_139A14();
    sub_4910(v16, qword_1B2B00);
    sub_4948(&unk_19E010);
    v17 = sub_1399C4();
    sub_CCF4(v17);
    *(swift_allocObject() + 16) = xmmword_13E660;
    *(&v27 + 1) = type metadata accessor for PromptLocationActionImplementation();
    *&v26 = v1;
    v18 = v1;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v26);
    sub_139974();
    sub_DFC70([a1 authorizationStatus], &type metadata for Int32);
    sub_CC68(&v26, &unk_1A06F0);
    sub_1399F4();
  }

  if (qword_19A018 != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v21 = sub_139A14();
  sub_4910(v21, qword_1B2B00);
  sub_4948(&unk_19E010);
  v22 = sub_1399C4();
  sub_CCF4(v22);
  *(swift_allocObject() + 16) = xmmword_13E660;
  *(&v27 + 1) = type metadata accessor for PromptLocationActionImplementation();
  *&v26 = v1;
  v1;
  v23 = AMSLogKey();
  if (v23)
  {
    v24 = v23;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(&v26);
  sub_139974();
  sub_DFC70([a1 v2[160]], &type metadata for Int32);
  sub_CC68(&v26, &unk_1A06F0);
  sub_1399F4();

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_E0C88(1, &v26);
  return sub_CC68(&v26, &qword_1A0060);
}

uint64_t sub_DF5B4(uint64_t a1, uint64_t a2)
{
  sub_13B4F4();
  sub_9E94();
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin34PromptLocationActionImplementation_queue];
  *(v6 - v5) = v7;
  v8 = sub_DFC34();
  v9(v8);
  v10 = v7;
  sub_13B504();
  v11 = sub_DFC48();
  v12(v11);
  if (v7)
  {
    if (qword_19A018 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_CCD4();
LABEL_3:
  v13 = sub_139A14();
  sub_4910(v13, qword_1B2B00);
  sub_4948(&unk_19E010);
  v14 = sub_1399C4();
  sub_CCF4(v14);
  *(swift_allocObject() + 16) = xmmword_13E660;
  *(&v22 + 1) = type metadata accessor for PromptLocationActionImplementation();
  *&v21 = v2;
  v2;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(&v21);
  sub_139974();
  swift_getErrorValue();
  v17 = v24;
  v18 = v25;
  *(&v22 + 1) = v25;
  v19 = sub_CC08(&v21);
  (*(*(v18 - 8) + 16))(v19, v17, v18);
  sub_139984();
  sub_CC68(&v21, &unk_1A06F0);
  sub_1399E4();

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_E0B50(a2, &v21);
  return sub_CC68(&v21, &qword_1A0060);
}

id sub_DF97C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_13BB54();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithEffectiveBundleIdentifier:v8 delegate:a3 onQueue:a4];

  swift_unknownObjectRelease();
  return v9;
}

unint64_t sub_DFA08()
{
  result = qword_1A0068;
  if (!qword_1A0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0068);
  }

  return result;
}

uint64_t sub_DFA5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_DFAA4()
{
  result = qword_1A0090;
  if (!qword_1A0090)
  {
    sub_558C(&qword_1A0088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0090);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptLocationActionImplementation.PerformError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0xDFBA4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_DFBE0()
{
  result = qword_1A0098;
  if (!qword_1A0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0098);
  }

  return result;
}

uint64_t sub_DFC70@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a2;
  *(v2 - 128) = a1;

  return sub_139984();
}

uint64_t sub_DFC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v71 = a3;
  v4 = sub_4948(&qword_19DDA8);
  __chkstk_darwin(v4 - 8);
  v74 = v68 - v5;
  sub_13B584();
  sub_9E94();
  v77 = v6;
  v78 = v7;
  __chkstk_darwin(v6);
  v70 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = v68 - v10;
  __chkstk_darwin(v11);
  v13 = v68 - v12;
  v14 = sub_13B644();
  sub_9E94();
  v75 = v15;
  __chkstk_darwin(v16);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PromptNotificationAction();
  sub_2B538();
  __chkstk_darwin(v20);
  v76 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  v23 = a1;
  sub_13B594();
  v24 = v14;
  if (sub_13B564())
  {
    goto LABEL_4;
  }

  v72 = v23;
  v68[1] = inited;
  v25 = v78;
  v26 = v74;
  sub_E05E4(v13, v83, v74);
  if (sub_52E0(v26, 1, v14) == 1)
  {
    sub_184DC(v26, &qword_19DDA8);
    v23 = v72;
LABEL_4:
    sub_13BAB4();
    sub_E0B38();
    sub_E0AF0(v27, v28);
    swift_allocError();
    strcpy(v29, "actionMetrics");
    *(v29 + 7) = -4864;
    *(v29 + 2) = v19;
    sub_2B538();
    (*(v30 + 104))();
    swift_willThrow();

    v31 = v77;
    v32 = *(v78 + 8);
    v32(v23, v77);
    v32(v13, v31);
    v33 = 0;
    v34 = v76;
    goto LABEL_8;
  }

  v37 = *(v25 + 8);
  v36 = v25 + 8;
  v35 = v37;
  v37(v13, v77);
  v38 = *(v75 + 32);
  v38(v18, v26, v14);
  v39 = *(v19 + 28);
  v40 = v72;
  v41 = v19;
  v42 = v76;
  v74 = v14;
  v38(&v76[v39], v18, v14);
  v43 = v73;
  v44 = sub_BBA24(0xD000000000000014, 0x80000000001518B0, v41);
  if (v43)
  {
    v35(v40, v77);

    v33 = 1;
    v34 = v42;
    v19 = v41;
    v24 = v74;
LABEL_8:
    sub_13B5A4();
    sub_5224();
    result = (*(v47 + 8))(v83);
    if (v33)
    {
      return (*(v75 + 8))(&v34[*(v19 + 28)], v24);
    }

    return result;
  }

  v45 = v35;
  v46 = v36;
  *v42 = v44;
  *(v42 + 1) = sub_BB310();
  *(v42 + 2) = v49;
  sub_BB458();
  v75 = v41;
  sub_DE8D0();
  v42[24] = v50 & 1;
  v51 = v69;
  sub_13B594();
  v52 = sub_13B564();
  v78 = v46;
  if (v52)
  {
    v68[0] = v35;
    sub_13BAB4();
    sub_E0B38();
    sub_E0AF0(v53, v54);
    sub_9F18();
    *v55 = 0x416572756C696166;
    v55[1] = v41;
    v66 = v75;
    v55[2] = v75;
    sub_2B538();
    (*(v56 + 104))();
    swift_willThrow();
    (v68[0])(v51, v77);

    v82 = 0;
    v80 = 0u;
    v81 = 0u;
  }

  else
  {
    sub_DE8A4();
    sub_139BC4();
    v35(v51, v77);
    sub_9414(&v79, &v80);
    v41 = 0xED00006E6F697463;
    v66 = v75;
  }

  sub_DE8BC();
  sub_8DBA0(&v76[*(v66 + 32)]);
  v57 = v70;
  v58 = v72;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_E0B38();
    sub_E0AF0(v59, v60);
    sub_9F18();
    *v61 = 0x416572756C696166;
    v61[1] = v41;
    v61[2] = v66;
    sub_2B538();
    (*(v62 + 104))();
    swift_willThrow();

    v63 = v77;
    v45(v58, v77);
    v45(v57, v63);

    v82 = 0;
    v80 = 0u;
    v81 = 0u;
  }

  else
  {
    sub_DE8A4();
    sub_139BC4();

    v67 = v77;
    v45(v72, v77);
    v45(v57, v67);
    sub_9414(&v79, &v80);
    v66 = v75;
  }

  v64 = v76;
  sub_8DBA0(&v76[*(v66 + 36)]);
  sub_E07FC(v64, v71);
  sub_13B5A4();
  sub_5224();
  (*(v65 + 8))(v83);
  return sub_E0860(v64);
}

uint64_t sub_E05E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B634();
  v14 = sub_13B644();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t type metadata accessor for PromptNotificationAction()
{
  result = qword_1A00F8;
  if (!qword_1A00F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E07FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptNotificationAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E0860(uint64_t a1)
{
  v2 = type metadata accessor for PromptNotificationAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E08D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 28);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_E096C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 28);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_E09EC()
{
  sub_13B644();
  if (v0 <= 0x3F)
  {
    sub_5528();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_E0A98(uint64_t a1)
{
  result = sub_E0AF0(&qword_19F168, type metadata accessor for PromptNotificationAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_E0AF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E0B50(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  sub_E16CC(a2, &v7);
  if (v8)
  {
    sub_9414(&v7, v9);
    sub_162F0(v9, v9[3]);
    swift_errorRetain();
    sub_13B654();

    return sub_3C04(v9);
  }

  else
  {
    swift_errorRetain();

    sub_CC68(&v7, &qword_1A0060);
    sub_E0DAC();
  }
}

uint64_t sub_E0C88(char a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  sub_E16CC(a2, &v7);
  if (v8)
  {
    sub_9414(&v7, v9);
    sub_162F0(v9, v9[3]);
    sub_13B654();

    return sub_3C04(v9);
  }

  else
  {

    sub_CC68(&v7, &qword_1A0060);
    sub_E0E14();
  }
}

uint64_t sub_E0DAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((sub_13B9B4() & 1) == 0)
    {
      sub_13BA04();
    }
  }

  return result;
}

uint64_t sub_E0E14()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((sub_13B9B4() & 1) == 0)
    {
      sub_13BA14();
    }
  }

  return result;
}

uint64_t sub_E0E7C(uint64_t *a1)
{
  v2 = v1;
  sub_4948(&unk_1A0070);
  v4 = sub_13BA24();
  sub_E15A8();

  v5 = sub_E1028();
  v6 = *a1;
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  v13 = sub_E1604;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_E148C;
  v12 = &unk_18CA10;
  v8 = _Block_copy(v11);

  [v5 requestAuthorizationWithOptions:v6 completionHandler:v8];
  _Block_release(v8);
  v12 = sub_13B7C4();
  v13 = &protocol witness table for SyncTaskScheduler;
  sub_CC08(v11);
  sub_13B7B4();
  v9 = sub_13B9C4();

  sub_3C04(v11);
  return v9;
}

id sub_E1028()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_13BB54();

  v2 = [v0 initWithBundleIdentifier:v1];

  return v2;
}

uint64_t sub_E109C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v5 = sub_139A14();
    sub_4910(v5, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    *(&v16 + 1) = type metadata accessor for PromptNotificationActionImplementation();
    *&v15 = a3;

    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v15);
    sub_139974();
    swift_getErrorValue();
    v12 = sub_13C1A4();
    *(&v16 + 1) = &type metadata for String;
    *&v15 = v12;
    *(&v15 + 1) = v13;
    sub_139984();
    sub_CC68(&v15, &unk_1A06F0);
    sub_1399E4();

    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_E0B50(a2, &v15);
  }

  else
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v9 = sub_139A14();
    sub_4910(v9, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    *(&v16 + 1) = type metadata accessor for PromptNotificationActionImplementation();
    *&v15 = a3;

    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v15);
    sub_139974();
    sub_1399F4();

    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_E0C88(a1 & 1, &v15);
  }

  return sub_CC68(&v15, &qword_1A0060);
}

void sub_E148C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_E152C()
{
  result = qword_19F168;
  if (!qword_19F168)
  {
    type metadata accessor for PromptNotificationAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F168);
  }

  return result;
}

unint64_t sub_E15A8()
{
  result = qword_1A0200;
  if (!qword_1A0200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1A0200);
  }

  return result;
}

uint64_t sub_E160C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E1624()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E1674(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_E16CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_1A0060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E1744()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_E1788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v69 = a3;
  v4 = sub_4948(&qword_19DDA8);
  __chkstk_darwin(v4 - 8);
  v72 = &v62 - v5;
  v6 = sub_13B584();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  v14 = sub_13B644();
  sub_9E94();
  v70 = v15;
  __chkstk_darwin(v16);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PurchaseIntentAction();
  __chkstk_darwin(v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  v23 = v73;
  v24 = sub_BB310();
  if (v23)
  {
    (*(v8 + 8))(a1, v6);
    sub_13B5A4();
    sub_5224();
    return (*(v26 + 8))(v79);
  }

  v67 = v18;
  v68 = v13;
  v73 = inited;
  *v21 = v24;
  *(v21 + 1) = v25;
  *(v21 + 2) = sub_BB310();
  *(v21 + 3) = v28;
  v66 = 0;
  v29 = v8;
  v30 = v6;
  *(v21 + 4) = sub_BB310();
  *(v21 + 5) = v31;
  v32 = sub_BB310();
  v33 = v73;
  *(v21 + 6) = v32;
  *(v21 + 7) = v34;
  v21[64] = sub_BB458() & 1;
  v65 = a1;
  sub_BB310();
  v64 = 0;
  sub_E2434();
  *(v21 + 9) = v35;
  *(v21 + 10) = v36;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  v37 = v72;
  v33 = v68;
  sub_83C8();
  if (sub_52E0(v37, 1, v14) != 1)
  {
    v45 = *(v29 + 8);
    v63 = v30;
    v68 = v45;
    v45(v33, v30);
    v46 = v37;
    v47 = *(v70 + 32);
    v48 = v67;
    v47(v67, v46, v14);
    v47(&v21[*(v19 + 40)], v48, v14);
    v49 = v71;
    v50 = v65;
    sub_13B594();
    if ((sub_13B564() & 1) == 0)
    {
      v51 = v68;
      v52 = v64;
      sub_139BC4();
      if (!v52)
      {

        v51(v65, v30);
        v51(v49, v30);
        sub_9414(v74, &v76);
        goto LABEL_13;
      }

      v75 = 0;
      memset(v74, 0, sizeof(v74));
      sub_184DC(v74, &unk_19E320);
      v50 = v65;
    }

    v53 = sub_13BAB4();
    sub_E240C();
    sub_E23C4(v54, v55);
    swift_allocError();
    *v56 = 0x697463417478656ELL;
    v56[1] = 0xEA00000000006E6FLL;
    v56[2] = v19;
    (*(*(v53 - 8) + 104))(v56, enum case for JSONError.missingProperty(_:), v53);
    swift_willThrow();

    v57 = v63;
    v58 = v68;
    v68(v50, v63);
    v58(v49, v57);

    v78 = 0;
    v76 = 0u;
    v77 = 0u;
LABEL_13:
    v59 = &v21[*(v19 + 44)];
    v60 = v77;
    *v59 = v76;
    *(v59 + 1) = v60;
    *(v59 + 4) = v78;
    sub_E20BC(v21, v69);
    sub_13B5A4();
    sub_5224();
    (*(v61 + 8))(v79);
    return sub_E2120(v21);
  }

  sub_184DC(v37, &qword_19DDA8);
  sub_E2434();
LABEL_6:
  v38 = sub_13BAB4();
  sub_E240C();
  sub_E23C4(v39, v40);
  swift_allocError();
  *v41 = v33;
  v41[1] = 0xED00007363697274;
  v41[2] = v19;
  (*(*(v38 - 8) + 104))(v41, enum case for JSONError.missingProperty(_:), v38);
  swift_willThrow();

  v42 = *(v29 + 8);
  v42(v65, v30);
  v42(v68, v30);
  v43 = v66;
  sub_13B5A4();
  sub_5224();
  (*(v44 + 8))(v79);

  if (!v43)
  {
  }
}

uint64_t type metadata accessor for PurchaseIntentAction()
{
  result = qword_1A0260;
  if (!qword_1A0260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E20BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseIntentAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E2120(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseIntentAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E2190(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 40);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_E222C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 40);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_E22AC()
{
  sub_24850();
  if (v0 <= 0x3F)
  {
    sub_13B644();
    if (v1 <= 0x3F)
    {
      sub_5528();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_E236C(uint64_t a1)
{
  result = sub_E23C4(&qword_19F188, type metadata accessor for PurchaseIntentAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_E23C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E2448(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_E248C(uint64_t a1)
{
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v3 = sub_139A14();
  sub_4910(v3, qword_1B2B00);
  sub_4948(&unk_19E010);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E660;
  v25 = type metadata accessor for PurchaseIntentActionImplementation();
  aBlock[0] = v1;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(aBlock);
  sub_139974();
  v25 = type metadata accessor for PurchaseIntentAction();
  v6 = sub_CC08(aBlock);
  sub_E20BC(a1, v6);
  sub_139984();
  sub_49C8(aBlock);
  sub_1399F4();

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_4948(&qword_19E698);

  v21 = sub_13BA24();
  if (*(a1 + 64) == 1)
  {
    sub_E29F4(v7, v8);
  }

  v23 = v1;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  v15 = objc_allocWithZone(SKPurchaseIntent);

  v16 = sub_E2ED0(v7, v8, v9, v10, v11, v12, v14, v13);
  if (*(a1 + 80))
  {
    v17 = sub_13BB54();
  }

  else
  {
    v17 = 0;
  }

  [v16 setAdditionalBuyParams:{v17, v21}];

  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  *(v18 + 24) = v22;
  v26 = sub_E3180;
  v27 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_E2448;
  v25 = &unk_18CB18;
  v19 = _Block_copy(aBlock);

  [v16 send:v19];
  _Block_release(v19);

  return v22;
}

uint64_t sub_E2824(uint64_t a1)
{
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v2 = sub_139A14();
  sub_4910(v2, qword_1B2B00);
  sub_4948(&unk_19E010);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  *(&v7 + 1) = type metadata accessor for PurchaseIntentActionImplementation();
  *&v6 = a1;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(&v6);
  sub_139974();
  sub_1399F4();

  v6 = 0u;
  v7 = 0u;
  sub_13BA14();
  return sub_99BB4(&v6);
}

void sub_E29F4(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(SKInstallSheetStatusUpdateRequest);

  v6 = sub_E2FD0(a1, a2, 1, sub_E2EC8, v2);
  [v6 start];
}

uint64_t sub_E2A98(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v3 = sub_139A14();
    sub_4910(v3, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v13 = type metadata accessor for PurchaseIntentActionImplementation();
    v12[0] = a2;

    v4 = AMSLogKey();
    if (v4)
    {
      v5 = v4;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v12);
    sub_139974();
    swift_getErrorValue();
    v9 = sub_13C1A4();
    v13 = &type metadata for String;
    v12[0] = v9;
    v12[1] = v10;
    sub_139984();
    sub_49C8(v12);
    sub_1399E4();
  }

  else
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v6 = sub_139A14();
    sub_4910(v6, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v13 = type metadata accessor for PurchaseIntentActionImplementation();
    v12[0] = a2;

    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v12);
    sub_139974();
    sub_1399F4();
  }
}

unint64_t sub_E2E4C()
{
  result = qword_19F188;
  if (!qword_19F188)
  {
    type metadata accessor for PurchaseIntentAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F188);
  }

  return result;
}

id sub_E2ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_13BB54();

  v12 = sub_13BB54();

  if (!a6)
  {
    v13 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_13BB54();

  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_13BB54();

LABEL_6:
  v15 = [v8 initWithBundleId:v11 productIdentifier:v12 appName:v13 productName:v14];

  return v15;
}

id sub_E2FD0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_13BB54();

  if (a4)
  {
    v13[4] = a4;
    v13[5] = a5;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_E30BC;
    v13[3] = &unk_18CAC8;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithAppBundleId:v9 isInstallSheetOpen:a3 & 1 completionHandler:v10];
  _Block_release(v10);

  return v11;
}

void sub_E30BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_E3128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E3140()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for RecessedPlatter()
{
  result = qword_1A03D8;
  if (!qword_1A03D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E3224(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v81 = a3;
  v5 = sub_4948(&qword_19A420);
  __chkstk_darwin(v5 - 8);
  v7 = &v80 - v6;
  v8 = sub_13B584();
  v89 = *(v8 - 8);
  v90 = v8;
  __chkstk_darwin(v8);
  sub_18B60();
  __chkstk_darwin(v9);
  sub_18B60();
  __chkstk_darwin(v10);
  sub_18B60();
  __chkstk_darwin(v11);
  v12 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v13);
  v15 = &v80 - v14;
  v16 = type metadata accessor for RecessedPlatter();
  sub_9F94();
  __chkstk_darwin(v17);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v88 = swift_initStackObject();
  sub_2B570();
  v20 = sub_BB310();
  if (v3)
  {

    v20 = 0;
    v21 = 0;
  }

  *v19 = v20;
  *(v19 + 1) = v21;
  v86 = v21;
  __chkstk_darwin(v20);
  sub_5BD04();
  sub_2B570();
  sub_9DB8(v22, v23, v24, v25, v26, v27, v28, v29);
  v85 = v30;
  *(v19 + 2) = v30;
  sub_2B570();
  v31 = sub_BB310();
  v80 = 0;
  *&v92 = v31;
  *(&v92 + 1) = v32;
  sub_13BFB4();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_7738();
  if (sub_52E0(v7, 1, v12) == 1)
  {
    sub_928C(v7, &qword_19A420);
LABEL_6:
    sub_13BAB4();
    sub_E4104();
    sub_E3CDC(v33, v34);
    sub_9F18();
    *v35 = 0xD000000000000011;
    v35[1] = 0x800000000014E730;
    v35[2] = v16;
    sub_2B538();
    (*(v36 + 104))();
    swift_willThrow();
    v37 = sub_5BCD4();
    v38(v37);

    v39 = sub_13B7A4();
    sub_53A8(v15, 1, 1, v39);
    v40 = 0;
    goto LABEL_8;
  }

  v41 = sub_5BCD4();
  v42(v41);
  sub_92E4(v7, v15);
  v40 = v80;
LABEL_8:
  sub_92E4(v15, &v19[*(v16 + 40)]);
  v43 = v82;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_11:
    sub_13BAB4();
    sub_E4104();
    sub_E3CDC(v44, v45);
    swift_allocError();
    *v46 = 0x6575676573;
    v46[1] = 0xE500000000000000;
    v46[2] = v16;
    sub_2B538();
    (*(v47 + 104))();
    swift_willThrow();
    v84(v43, v90);

    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    goto LABEL_12;
  }

  sub_139BC4();
  if (v40)
  {

    sub_18BAC();
    sub_928C(v91, &unk_19E320);
    goto LABEL_11;
  }

  v84(v43, v90);
  v48 = sub_9414(v91, &v92);
LABEL_12:
  v49 = &v19[*(v16 + 44)];
  v50 = v93;
  *v49 = v92;
  *(v49 + 1) = v50;
  *(v49 + 4) = v94;
  __chkstk_darwin(v48);
  sub_5BD04();
  sub_2B570();
  sub_9DB8(v51, v52, v53, v54, v55, v56, v57, v58);
  *(v19 + 3) = v59;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_E4104();
    sub_E3CDC(v60, v61);
    sub_9F18();
    *v62 = 0x656C746974627573;
    v62[1] = 0xE800000000000000;
    v62[2] = v16;
    sub_2B538();
    (*(v63 + 104))();
    swift_willThrow();
    v64 = sub_5BCEC();
    v65(v64);

    v94 = 0;
    v92 = 0u;
    v93 = 0u;
  }

  else
  {
    sub_139DB4();
    v76 = sub_5BCEC();
    v77(v76);
    sub_9414(v91, &v92);
  }

  v66 = v93;
  *(v19 + 2) = v92;
  *(v19 + 3) = v66;
  *(v19 + 8) = v94;
  v67 = v83;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_E4104();
    sub_E3CDC(v69, v70);
    sub_9F18();
    *v71 = 0x656C746974;
    v71[1] = 0xE500000000000000;
    v71[2] = v16;
    sub_2B538();
    (*(v72 + 104))();
    swift_willThrow();

    v73 = sub_5BCB4();
    MEMORY[0x656C746974](v73);
    MEMORY[0x656C746974](v67, a1);
    v74 = v80;
    sub_13B5A4();
    sub_9F94();
    (*(v75 + 8))(v95);

    if (!v74)
    {

      sub_928C((v19 + 32), &qword_19E960);
      sub_9238((v19 + 112));
      sub_928C(&v19[*(v16 + 40)], &qword_19A350);
      sub_928C(&v19[*(v16 + 44)], &unk_19E320);
    }
  }

  else
  {
    v68 = v95;
    sub_139DB4();
    v78 = sub_5BCB4();
    MEMORY[0x656C746974](v78);
    MEMORY[0x656C746974](v67, a1);
    sub_9414(v91, &v92);
    sub_9414(&v92, (v19 + 72));
    sub_E3D24(v19, v81);
    sub_13B5A4();
    sub_9F94();
    (*(v79 + 8))(v68);
    sub_E3D88(v19);
  }
}

uint64_t sub_E3CDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E3D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecessedPlatter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E3D88(uint64_t a1)
{
  v2 = type metadata accessor for RecessedPlatter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E3DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 40);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_E3EA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 40);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_E3F2C()
{
  sub_24850();
  if (v0 <= 0x3F)
  {
    sub_E40B0(319, &qword_19B6D8, sub_30DD4);
    if (v1 <= 0x3F)
    {
      sub_248F4(319, &qword_19C0A8, &unk_19C0B0);
      if (v2 <= 0x3F)
      {
        sub_248F4(319, &qword_19AE40, &qword_19AE48);
        if (v3 <= 0x3F)
        {
          sub_18A28();
          if (v4 <= 0x3F)
          {
            sub_E40B0(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
            if (v5 <= 0x3F)
            {
              sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_E40B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_13BF44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_E411C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_4948(&qword_1A0470);
  sub_13B5E4();

  if (v10)
  {
    sub_9414(&v9, v11);
    (*(&stru_158.size + (swift_isaMask & **&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_subtitleLabel])))(v11, a3);
    sub_3C04(v11);
  }

  else
  {
    sub_2519C(&v9);
  }

  swift_getKeyPath();
  sub_5C2E0();

  if (v11[0])
  {
    sub_E5220(v11[0], a3);
  }

  swift_getKeyPath();
  sub_5C2E0();

  if (v11[0])
  {
    v5 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_platterColor];
    *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_platterColor] = v11[0];
  }

  v6 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_titleLabel];
  swift_getKeyPath();
  sub_5C2E0();

  (*(&stru_158.size + (swift_isaMask & *v6)))(v11, a3);
  sub_3C04(v11);
  v7 = [v3 contentView];
  swift_getKeyPath();
  sub_5C2E0();

  if (v11[1])
  {
    v8 = sub_13BB54();
  }

  else
  {
    v8 = 0;
  }

  [v7 setAccessibilityLabel:v8];
}

uint64_t sub_E43A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for RecessedPlatterComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_E440C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for RecessedPlatterComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_E4474(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_E44C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_E4544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_E45C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_E46CC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_E4714(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_139A34();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_9EC0();
  v16 = v15 - v14;
  if (_UISolariumEnabled() && ((*(v12 + 104))(v16, enum case for FlagKeys.Solarium(_:), v10), v17 = sub_139A24(), (*(v12 + 8))(v16, v10), (v17 & 1) != 0))
  {
    v18 = [objc_opt_self() ams_quaternarySystemFillColor];
  }

  else
  {
    v19 = objc_opt_self();
    v20 = [v19 secondarySystemBackgroundColor];
    v21 = [v20 colorWithAlphaComponent:0.5];

    v22 = [v19 tertiarySystemBackgroundColor];
    v23 = [v22 colorWithAlphaComponent:0.5];

    v18 = [v19 ams_dynamicColorWithLightColor:v21 darkColor:v23];
  }

  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_platterColor] = v18;
  v24 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_subtitleLabel;
  sub_139BB4();
  v25 = objc_opt_self();
  v26 = [v25 ams_secondaryText];
  v27 = sub_13A2A4();
  *(&v53 + 1) = v27;
  v54 = &protocol witness table for FontSource;
  *sub_CC08(&v52) = UIFontTextStyleSubheadline;
  v28 = *(*(v27 - 8) + 104);
  v28();
  v29 = UIFontTextStyleSubheadline;
  *&v5[v24] = sub_139BA4();
  v30 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_titleLabel;
  v31 = [v25 ams_primaryText];
  *(&v53 + 1) = v27;
  v54 = &protocol witness table for FontSource;
  *sub_CC08(&v52) = UIFontTextStyleBody;
  v28();
  v32 = UIFontTextStyleBody;
  *&v5[v30] = sub_139BA4();
  v33 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_gridView;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v34 = type metadata accessor for ServicesGridView();
  memset(v50, 0, sizeof(v50));
  v51 = 0;
  v35 = objc_allocWithZone(v34);
  v49[3] = &type metadata for CGFloat;
  v49[4] = &protocol witness table for CGFloat;
  v48[4] = &protocol witness table for CGFloat;
  v49[0] = 0x4020000000000000;
  v48[3] = &type metadata for CGFloat;
  v48[0] = 0x4020000000000000;
  *&v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns] = 1;
  v36 = &v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView];
  *v36 = 0;
  v36[1] = 0;
  *&v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews] = _swiftEmptyArrayStorage;
  v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViewState] = 0;
  sub_4B14(v48, &v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_rowSpacing]);
  __asm { FMOV            V0.2D, #20.0 }

  *&v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize] = _Q0;
  v42 = &v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics];
  sub_4B14(v49, &v35[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics]);
  sub_4F14C(&v52, (v42 + 48));
  sub_4F1A8(v50, (v42 + 88));
  sub_4B14(v48, (v42 + 128));
  v42[40] = 1;
  v42[168] = 1;
  *(v42 + 22) = 1;
  v42[184] = 0;
  v47.receiver = v35;
  v47.super_class = v34;
  v43 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_4F204(v50);
  sub_4F258(&v52);
  sub_3C04(v48);
  sub_3C04(v49);
  *&v5[v33] = v43;
  v46.receiver = v5;
  v46.super_class = type metadata accessor for RecessedPlatterComponent();
  v44 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  sub_E5A50();

  return v44;
}

uint64_t sub_E4C38()
{
  v1 = sub_13A314();
  sub_9E94();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for RecessedPlatterComponent();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v8 = [v0 contentView];
  [v8 bounds];
  sub_2D744();

  sub_E6670();
  sub_13BE34();
  sub_2D744();
  sub_E5290(v11);
  sub_162F0(v11, v11[3]);
  v9 = [v0 contentView];
  sub_13A544();

  (*(v3 + 8))(v7, v1);
  return sub_3C04(v11);
}

double sub_E4E20(double a1, double a2, float a3)
{
  sub_E6670();
  sub_13BE64();
  sub_E5290(v10);
  sub_162F0(v10, v10[3]);
  v6 = [v3 contentView];
  sub_13A394();

  sub_E6670();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  sub_3C04(v10);
  return v8;
}

uint64_t sub_E4FB0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RecessedPlatterComponent();
  v1 = objc_msgSendSuper2(&v4, "prepareForReuse");
  v2 = (*(&stru_158.offset + (swift_isaMask & **&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_titleLabel])))(v1);
  (*(&stru_158.offset + (swift_isaMask & **&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_subtitleLabel])))(v2);
  return sub_117FB4();
}

void sub_E50F0(uint64_t a1)
{
  v4 = v1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RecessedPlatterComponent();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_gridView];
  v7 = [v4 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  sub_E5FAC();
  sub_2D744();

  v9 = (v6 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize);
  *v9 = v2;
  v9[1] = v3;
  sub_118970();
}

uint64_t sub_E5220(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    v3 = sub_4C488(result);
    sub_1180F8(v3, a2);
  }

  return result;
}

uint64_t sub_E5290@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v82 = sub_13A4C4();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v61 = v7 - v6;
  v81 = sub_13A454();
  sub_9E94();
  v83 = v8;
  __chkstk_darwin(v9);
  sub_9EC0();
  v12 = v11 - v10;
  v13 = sub_13A4B4();
  v72 = *(v13 - 8);
  v15 = v72;
  v14 = v72;
  __chkstk_darwin(v13);
  v71 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v79 = &v56 - v18;
  v69 = sub_4948(&qword_19AFE8);
  v19 = *(v14 + 72);
  v68 = *(v15 + 80);
  v67 = (v68 + 32) & ~v68;
  v20 = swift_allocObject();
  v80 = xmmword_13E660;
  *(v20 + 16) = xmmword_13E660;
  sub_13A4A4();
  v66 = v19;
  sub_13A494();
  sub_13A484();
  v90 = v20;
  v64 = sub_20068();
  v63 = sub_4948(&qword_19AFF0);
  v65 = sub_1D268();
  v62 = v13;
  sub_13BF64();
  sub_4948(&qword_19AFE0);
  v21 = *(sub_13A4F4() - 8);
  v60 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v70 = v23;
  *(v23 + 16) = v80;
  v57 = v23 + v22;
  v24 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_titleLabel);
  v25 = sub_139BB4();
  v91 = v25;
  v92 = &protocol witness table for UIView;
  v90 = v24;
  v88 = &type metadata for Double;
  v89 = &protocol witness table for Double;
  v86 = &protocol witness table for Double;
  v87 = 0;
  v85[3] = &type metadata for Double;
  v85[0] = 0;
  v75 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v26 = v83;
  v27 = *(v83 + 104);
  v74 = v83 + 104;
  v78 = v27;
  v28 = v81;
  v27(v12);
  v77 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v29 = v4;
  v76 = *(v4 + 104);
  v30 = v61;
  v31 = v82;
  v76(v61);
  v32 = v24;
  sub_2A268();
  sub_13A4E4();
  v33 = *(v29 + 8);
  *&v80 = v29 + 8;
  v33(v30, v31);
  v34 = v33;
  v59 = v33;
  v56 = *(v26 + 8);
  v83 = v26 + 8;
  v56(v12, v28);
  sub_1D2CC(v85);
  sub_3C04(&v87);
  sub_3C04(&v90);
  v35 = v58;
  v36 = *(v58 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_subtitleLabel);
  v91 = v25;
  v92 = &protocol witness table for UIView;
  v90 = v36;
  v88 = &type metadata for CGFloat;
  v89 = &protocol witness table for CGFloat;
  v86 = 0;
  v87 = 0;
  v37 = sub_E6644();
  v38(v37);
  v39 = v82;
  (v76)(v30, v77, v82);
  v40 = v36;
  v41 = v60;
  v42 = v57;
  sub_2A268();
  sub_13A4E4();
  v34(v30, v39);
  v43 = v56;
  v56(v12, v28);
  sub_1D2CC(v85);
  sub_3C04(&v87);
  sub_3C04(&v90);
  v60 = v42 + 2 * v41;
  v44 = *(v35 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_gridView);
  v91 = type metadata accessor for ServicesGridView();
  v92 = &protocol witness table for UIView;
  v90 = v44;
  v89 = &protocol witness table for CGFloat;
  v88 = &type metadata for CGFloat;
  v86 = 0;
  v87 = 0x4020000000000000;
  v45 = sub_E6644();
  v46(v45);
  v47 = v39;
  (v76)(v30, v77, v39);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_140280;
  v49 = v44;
  sub_13A484();
  v84 = v48;
  v50 = v71;
  v51 = v62;
  sub_13BF64();
  sub_2A268();
  sub_13A4E4();
  v52 = *(v72 + 8);
  v52(v50, v51);
  v59(v30, v47);
  v43(v12, v81);
  sub_1D2CC(v85);
  sub_3C04(&v87);
  sub_3C04(&v90);
  v53 = sub_13A514();
  v54 = v73;
  v73[3] = v53;
  v54[4] = &protocol witness table for VerticalFlowLayout;
  v54[5] = &protocol witness table for VerticalFlowLayout;
  sub_CC08(v54);
  sub_13A4D4();
  return (v52)(v79, v51);
}

void sub_E5A50()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = [v0 contentView];
  [v9 setBackgroundColor:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_platterColor]];

  v10 = sub_3F15C();
  if (qword_19A088 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_1A0478);

  v11 = sub_3F15C();
  v12 = [v11 layer];

  if (_UISolariumEnabled() && ((*(v4 + 104))(v8, enum case for FlagKeys.Solarium(_:), v2), v13 = sub_139A24(), (*(v4 + 8))(v8, v2), (v13 & 1) != 0))
  {
    v14 = [objc_opt_self() systemGrayColor];
    v15 = [v14 colorWithAlphaComponent:0.25];
  }

  else
  {
    v15 = [objc_opt_self() ams_tertiaryText];
  }

  v16 = [v15 CGColor];

  [v12 setBorderColor:v16];
  v17 = sub_3F15C();
  v18 = [v17 layer];

  [v18 setBorderWidth:1.0];
  v19 = sub_3F15C();
  [v19 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_titleLabel]];

  v20 = sub_3F15C();
  [v20 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_subtitleLabel]];

  v21 = sub_3F15C();
  [v21 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_gridView]];

  sub_E5DB8();
  v22 = sub_3F15C();
  [v22 setIsAccessibilityElement:1];

  v23 = sub_3F15C();
  [v23 setAccessibilityTraits:UIAccessibilityTraitNone];
}

uint64_t sub_E5DB8()
{
  v3 = v0;
  v4 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24RecessedPlatterComponent_gridView];
  v5 = [v3 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  sub_E5FAC();
  sub_2D744();

  v7 = (v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize);
  *v7 = v1;
  v7[1] = v2;
  sub_118970();
  *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns) = 1;
  sub_117A18();
  v8 = (v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView);
  v9 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView);
  *v8 = sub_E5EA0;
  v8[1] = 0;

  return sub_C9FC(v9);
}

void sub_E5EA0(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentAlignment) = 1;
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView;
  v3 = [*(a1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView) layer];
  v4 = [objc_opt_self() ams_clear];
  v5 = [v4 CGColor];

  [v3 setBorderColor:v5];
  v6 = [*(a1 + v2) layer];
  [v6 setBorderWidth:0.0];
}

double sub_E5FAC()
{
  sub_13BB84();
  sub_E661C();
  sub_E6638();
  v3 = v3 && v0 == v2;
  if (v3)
  {
    goto LABEL_67;
  }

  sub_E65F8();
  sub_E6684();

  if ((v1 & 1) == 0)
  {
    sub_13BB84();
    sub_E661C();
    sub_E6638();
    if (!v3 || v0 != v5)
    {
      sub_E65F8();
      sub_E6684();

      if (v1)
      {
        return 40.0;
      }

      sub_13BB84();
      sub_E661C();
      sub_E6638();
      if (!v3 || v0 != v7)
      {
        sub_E65F8();
        sub_E6684();

        if (v1)
        {
          return 40.0;
        }

        sub_13BB84();
        sub_E661C();
        sub_E6638();
        if (!v3 || v0 != v9)
        {
          sub_E65F8();
          sub_E6684();

          if (v1)
          {
            return 40.0;
          }

          sub_13BB84();
          v4 = 30.0;
          if (v1 != sub_E661C() || v0 != v11)
          {
            sub_E65F8();
            sub_E6684();

            if (v1)
            {
              return v4;
            }

            sub_13BB84();
            v4 = 20.0;
            if (v1 != sub_E661C() || v0 != v13)
            {
              sub_E65F8();
              sub_E6684();

              if (v1)
              {
                return v4;
              }

              sub_13BB84();
              sub_E661C();
              sub_E6638();
              if (!v3 || v0 != v15)
              {
                sub_E65F8();
                sub_E6684();

                if (v1)
                {
                  return v4;
                }

                sub_13BB84();
                sub_E661C();
                sub_E6638();
                if (!v3 || v0 != v17)
                {
                  sub_E65F8();
                  sub_E6684();

                  if (v1)
                  {
                    return v4;
                  }

                  sub_13BB84();
                  sub_E661C();
                  sub_E6638();
                  if (!v3 || v0 != v19)
                  {
                    sub_E65F8();
                    sub_E6684();

                    if (v1)
                    {
                      return v4;
                    }

                    sub_13BB84();
                    sub_E661C();
                    sub_E6638();
                    if (!v3 || v0 != v21)
                    {
                      sub_E65F8();
                      sub_E6684();

                      if (v1)
                      {
                        return v4;
                      }

                      sub_13BB84();
                      sub_E661C();
                      sub_E6638();
                      if (!v3 || v0 != v23)
                      {
                        sub_E65F8();
                        sub_E6684();

                        if (v1)
                        {
                          return v4;
                        }

                        sub_13BB84();
                        sub_E661C();
                        sub_E6638();
                        if (!v3 || v0 != v25)
                        {
                          sub_E65F8();
                          sub_E6684();

                          if (v1)
                          {
                            return v4;
                          }

                          sub_13BB84();
                          sub_E661C();
                          sub_E6638();
                          if (!v3 || v0 != v27)
                          {
                            sub_E65F8();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_68:

          return v4;
        }
      }
    }

LABEL_67:
    v4 = 40.0;
    goto LABEL_68;
  }

  return 40.0;
}

id sub_E62F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecessedPlatterComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_E63B4(void *a1)
{
  v2 = [a1 container];
  swift_getObjectType();
  sub_BBC90();
  v4 = v3;
  swift_unknownObjectRelease();
  [objc_msgSend(a1 "container")];
  v6 = v5;
  swift_unknownObjectRelease();
  v7 = objc_opt_self();
  v8 = [v7 absoluteDimension:{fmin(v6 - (v4 + v4), 360.0)}];
  v9 = [v7 estimatedDimension:200.0];
  v10 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v9];

  return v10;
}

uint64_t sub_E64F4()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 12.0;
  }

  qword_1A0478 = *&v6;
  return result;
}

uint64_t sub_E65F8()
{

  return sub_13C144();
}

uint64_t sub_E661C()
{

  return sub_13BB84();
}

uint64_t sub_E6644()
{
  *(v1 - 208) = 0u;
  *(v1 - 192) = 0u;
  return v0;
}

uint64_t sub_E6684()
{
}

char *sub_E669C(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjectType());
  v9 = sub_116760(0, v8, a1, a2, a3, a4, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

void sub_E674C()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_13C094();
  __break(1u);
}

id sub_E67FC(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_imageView];
  v5 = sub_E689C(a1);
  [v4 setImage:v5];

  return [v2 setNeedsLayout];
}

uint64_t sub_E689C(char a1)
{
  sub_139C84();
  swift_allocObject();
  v2 = sub_139C74();
  v3 = sub_11D760(a1);
  v5 = v4;
  v6 = objc_opt_self();

  v7 = [v6 _defaultConfiguration];
  v8 = (*(*v2 + 120))(v3, v5, v7);

  return v8;
}

id sub_E6984()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  sub_1D3D0();
  [v0 layoutMargins];
  sub_13BE34();
  sub_1D3D0();
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_imageView];
  v2 = [v1 image];
  v3 = sub_35BE8();
  sub_E6AA4(v4, v5, v3, v6, v7, v8);

  sub_35BE8();
  sub_13BE44();
  return [v1 setFrame:?];
}

double sub_E6AA4(void *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = sub_E6C2C(a1);
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a2)
  {
    if (a2 == 1)
    {
      MinX = CGRectGetMidX(*&v12) + v11 * -0.5;
    }

    else
    {
      MinX = CGRectGetMaxX(*&v12) - v11;
    }
  }

  else
  {
    MinX = CGRectGetMinX(*&v12);
  }

  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  CGRectGetMinY(v18);
  return MinX;
}

void sub_E6BB4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_imageView) image];
  sub_E6C2C(v1);
}

double sub_E6C2C(void *a1)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13A3C4();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0.0;
  }

  [a1 size];
  sub_13A3D4();
  sub_4B14(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_referenceLineHeight, v18);
  v12 = v19;
  v13 = v20;
  sub_162F0(v18, v19);
  sub_20038(v12, v13);
  sub_13A404();
  (*(v4 + 8))(v6, v3);
  sub_3C04(v18);
  sub_13A3B4();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  return v15;
}

id sub_E6E8C(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    if (a1 == 4)
    {
      v4 = [v1 traitCollection];
      v5 = sub_13BDD4();

      if (v5)
      {
        v3 = 2;
      }

      else
      {
        v3 = 0;
      }
    }

    else if (a1 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_alignment] = v3;

  return [v2 setNeedsLayout];
}

_BYTE *storeEnumTagSinglePayload for ServiceBadgeView.Alignment(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xE7074);
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

unint64_t sub_E70B0()
{
  result = qword_1A0508;
  if (!qword_1A0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0508);
  }

  return result;
}

double ServiceDetailLayout.init(metrics:artworkView:titleLabelView:detailLabelView:)@<D0>(void *__src@<X0>, __int128 *a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X8>)
{
  memcpy((a4 + 160), __src, 0x89uLL);
  v7 = sub_9B5D8();
  sub_9414(v7, v8);
  sub_9414(a2, a4 + 40);
  sub_9414(a3, a4 + 80);
  result = 0.0;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0;
  return result;
}

__n128 ServiceDetailLayout.init(metrics:artworkView:titleLabelView:detailLabelView:lockupView:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  memcpy((a6 + 160), __src, 0x89uLL);
  sub_9414(a2, a6);
  sub_9414(a3, a6 + 40);
  sub_9414(a4, a6 + 80);
  result = *a5;
  v12 = *(a5 + 16);
  *(a6 + 120) = *a5;
  *(a6 + 136) = v12;
  *(a6 + 152) = *(a5 + 32);
  return result;
}

Swift::Int sub_E726C()
{
  v1 = *v0;
  sub_13C214();
  ServiceDetailLayout.Metrics.ContentAlignment.hash(into:)(v3, v1);
  return sub_13C234();
}

uint64_t ServiceDetailLayout.Metrics.init(artworkSize:detailLabelTopSpace:horizontalSpace:contentAlignment:lockupSize:isLockupFocused:contentMaxWidth:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = a8;
  *(a7 + 8) = a9;
  sub_9414(a1, a7 + 16);
  result = sub_9414(a2, a7 + 56);
  *(a7 + 96) = a3 & 1;
  *(a7 + 104) = a10;
  *(a7 + 112) = a11;
  *(a7 + 120) = a4;
  *(a7 + 128) = a5;
  *(a7 + 136) = a6 & 1;
  return result;
}

uint64_t sub_E7358(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_2B538();
  (*v3)(a2);
  return a2;
}

uint64_t ServiceDetailLayout.Metrics.contentMaxWidth.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

double ServiceDetailLayout.measurements(fitting:in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  swift_getObjectType();

  return sub_E759C(0, a1, v3, 0.0, 0.0, a2, a3);
}

uint64_t ServiceDetailLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getObjectType();
  sub_E759C(1, a1, v5, a2, a3, a4, a5);
  sub_5AA10();

  return sub_13A2E4();
}

double sub_E759C(int a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v136 = a7;
  LODWORD(v135) = a1;
  v123 = sub_13A314();
  sub_9E94();
  v122 = v12;
  __chkstk_darwin(v13);
  sub_21548();
  sub_2159C(v14);
  v15 = sub_13A514();
  sub_9E94();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_21548();
  sub_2159C(v19);
  v128 = sub_13A4B4();
  sub_9E94();
  v127 = v20;
  __chkstk_darwin(v21);
  sub_21548();
  sub_2159C(v22);
  *&v134 = COERCE_DOUBLE(sub_13A4C4());
  sub_9E94();
  v126 = v23;
  __chkstk_darwin(v24);
  sub_21548();
  sub_2159C(v25);
  *&v133 = COERCE_DOUBLE(sub_13A454());
  sub_9E94();
  v132 = v26;
  __chkstk_darwin(v27);
  sub_21548();
  sub_2159C(v28);
  v130 = sub_13A4F4();
  sub_9E94();
  v129 = v29;
  __chkstk_darwin(v30);
  v119 = v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  sub_2159C(v115 - v33);
  v34 = sub_13C114();
  sub_9E94();
  v36 = v35;
  __chkstk_darwin(v37);
  v39 = v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0((a3 + 40), *(a3 + 64));
  sub_E8B18();
  if (sub_13A364())
  {
    v40 = 0;
  }

  else
  {
    sub_162F0((a3 + 40), *(a3 + 64));
    sub_E8B18();
    v40 = sub_13A324();
  }

  sub_162F0((a3 + 80), *(a3 + 104));
  sub_E8B18();
  if (sub_13A364())
  {
    v41 = 0;
  }

  else
  {
    sub_162F0((a3 + 80), *(a3 + 104));
    sub_E8B18();
    v41 = sub_13A324();
  }

  sub_E8B90();
  v42 = v144;
  sub_6BDB4(v143, &unk_1A0730);
  if ((v40 | v41))
  {
    v116 = v41;
    v117 = v17;
    v118 = v15;
    v43 = *(a3 + 160);
    v44 = *(a3 + 240);
    v45 = *(a3 + 248);
    sub_162F0((a3 + 216), v44);
    sub_20038(v44, v45);
    sub_E8A58();
    sub_13A404();
    v47 = v46;
    v48 = v42;
    v49 = *(v36 + 8);
    (v49)(v39, v34);
    *&v115[1] = v43;
    v50 = v43 + v47;
    v120 = v48;
    if (v48)
    {
      v51 = *(a3 + 264);
      sub_162F0((a3 + 216), *(a3 + 240));
      sub_E8B30();
      sub_E8A58();
      sub_13A404();
      v53 = v52;
      (v49)(v39, v34);
      v54 = v51 + v53;
    }

    else
    {
      v54 = 0.0;
    }

    *&v115[2] = v54;
    sub_E8A78();
    sub_5AA10();
    sub_E8968();
    sub_13BE44();
    sub_162F0((a3 + 176), *(a3 + 200));
    sub_E8B30();
    v124 = a2;
    sub_E8A58();
    sub_13A404();
    v57 = v56;
    (v49)(v39, v34);
    if (v40)
    {
      v58 = *(a3 + 72);
      sub_162F0((a3 + 40), *(a3 + 64));
      sub_E8B50();
      sub_2B538();
      (*(v59 + 16))();
      v141 = &type metadata for Double;
      v142 = &protocol witness table for Double;
      v139 = 0;
      v140 = 0;
      sub_E8A2C();
      v60 = sub_E8AB8();
      v62 = *(v61 - 256);
      v63(v60);
      sub_E8A10();
      v65 = *(v64 - 256);
      v66 = v134;
      v67(v65);
      sub_4948(&qword_19AFE8);
      v68 = v127;
      v69 = sub_E8B70();
      *(v69 + 16) = xmmword_140280;
      sub_13A484();
      v137 = v69;
      sub_20068();
      v70 = sub_4948(&qword_19AFF0);
      sub_1D268();
      sub_E89BC();
      sub_13BF64();
      sub_13A4E4();
      (*(v68 + 8))(v58, v70);
      (*(v49 + 8))(v65, v66);
      (*(*&v132 + 8))(v39, v62);
      sub_6BDB4(v138, &qword_19AFF8);
      sub_3C04(&v140);
      sub_3C04(v143);
      sub_58ABC(0, 1, 1, _swiftEmptyArrayStorage);
      v72 = v71;
      v74 = v71[2];
      v73 = v71[3];
      v75 = v120;
      if (v74 >= v73 >> 1)
      {
        sub_E8AF4(v73);
        v72 = v112;
      }

      v72[2] = v74 + 1;
      (*(*&v129 + 32))(v72 + ((*(*&v129 + 80) + 32) & ~*(*&v129 + 80)) + *(*&v129 + 72) * v74, v125, v130);
    }

    else
    {
      v72 = _swiftEmptyArrayStorage;
      v75 = v120;
    }

    if (v116)
    {
      v76 = *(a3 + 112);
      sub_162F0((a3 + 80), *(a3 + 104));
      sub_E8B50();
      sub_2B538();
      (*(v77 + 16))();
      v141 = &type metadata for CGFloat;
      v142 = &protocol witness table for CGFloat;
      v140 = v57;
      v139 = 0;
      sub_E8A2C();
      v79 = *(v78 - 256);
      v80 = sub_E8AB8();
      v81(v80);
      sub_E8A10();
      v83 = *(v82 - 256);
      v84(v83);
      sub_4948(&qword_19AFE8);
      v85 = v127;
      v86 = sub_E8B70();
      *(v86 + 16) = xmmword_140280;
      sub_13A484();
      v137 = v86;
      sub_20068();
      v87 = sub_4948(&qword_19AFF0);
      sub_1D268();
      sub_E89BC();
      sub_13BF64();
      v88 = v119;
      sub_13A4E4();
      (*(v85 + 8))(v76, v87);
      (*(v49 + 8))(v83, v134);
      (*(v79 + 8))(v39, v133);
      sub_6BDB4(v138, &qword_19AFF8);
      sub_3C04(&v140);
      sub_3C04(v143);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_58ABC(0, v72[2] + 1, 1, v72);
        v72 = v113;
      }

      v90 = v72[2];
      v89 = v72[3];
      v91 = v118;
      v92 = v117;
      v93 = v131;
      v75 = v120;
      if (v90 >= v89 >> 1)
      {
        sub_E8AF4(v89);
        v72 = v114;
      }

      v72[2] = v90 + 1;
      (*(*&v129 + 32))(v72 + ((*(*&v129 + 80) + 32) & ~*(*&v129 + 80)) + *(*&v129 + 72) * v90, v88, v130);
    }

    else
    {
      v91 = v118;
      v92 = v117;
      v93 = v131;
    }

    sub_13A4D4();
    sub_13A464();
    v96 = v94;
    v97 = v95;
    if ((LOBYTE(v135) & 1) == 0)
    {
      goto LABEL_47;
    }

    v98 = *(a3 + 256);
    v99 = *(a3 + 168);
    v135 = v50;
    *&v134 = v95;
    if (v98)
    {
      if (v95 >= v99)
      {
        v100 = *(a3 + 272);
        if (v95 >= v100)
        {
          v133 = *(a3 + 272);
          sub_E8998();
          sub_E897C();
          sub_E8A68();
          CGRectGetMinX(v156);
          v157.origin.x = sub_E8968();
          CGRectGetMinY(v157);
          sub_E8968();
          sub_E89E4();
          sub_9B5D8();
          sub_13A354();
          if (v75)
          {
            sub_E8B90();
            if (v144)
            {
              sub_E8AD0();
              sub_E897C();
              sub_E8A68();
              v50 = CGRectGetMaxX(v158) - *(a3 + 264);
              v159.origin.x = sub_E8968();
              CGRectGetMinY(v159);
              sub_E8968();
              sub_E8B24();
              sub_13BE44();
              sub_9B5D8();
              sub_13A354();
              sub_3C04(v143);
            }

            else
            {
              sub_6BDB4(v143, &unk_1A0730);
            }
          }

          v97 = *&v134;
          goto LABEL_46;
        }

        sub_E8AA0(&v145);
      }

      else
      {
        sub_E8AA0(&v145);
        v100 = *(a3 + 272);
      }

      sub_103E90(_swiftEmptyArrayStorage, v99, v100, *&v134);
      v132 = v105;
      sub_E8A04(v105 - v99);
      sub_E8998();
      v152.origin.x = a4;
      v152.origin.y = v50;
      v152.size.width = v97;
      v152.size.height = a5;
      CGRectGetMinX(v152);
      v153.origin.x = a4;
      v153.origin.y = v50;
      v153.size.width = v97;
      v153.size.height = a5;
      CGRectGetMinY(v153);
      sub_E8A48();
      sub_E89E4();
      sub_9B5D8();
      sub_13A354();
      sub_E8B24();
      if (v75)
      {
        sub_E8B90();
        if (v144)
        {
          v106 = sub_E8A04(v132 - v100);
          v107 = v136;
          v132 = round(v106);
          sub_E8AD0();
          v154.origin.x = a4;
          v154.origin.y = v50;
          v154.size.width = v97;
          v154.size.height = v107;
          CGRectGetMaxX(v154);
          v155.origin.x = a4;
          v155.origin.y = v50;
          v155.size.width = v97;
          v155.size.height = v107;
          CGRectGetMinY(v155);
          sub_E8B24();
          sub_E8A48();
          sub_E898C();
          sub_13BE44();
          sub_9B5D8();
          sub_13A354();
          sub_3C04(v143);
        }

        else
        {
          sub_6BDB4(v143, &unk_1A0730);
        }
      }

      v97 = *&v134;
      sub_103E90(_swiftEmptyArrayStorage, v99, v100, *&v134);
      sub_E8A04(v109 - v97);
    }

    else
    {
      *&v133 = v94;
      v50 = *(a3 + 272);
      sub_103E90(_swiftEmptyArrayStorage, v99, v50, v95);
      v129 = v101;
      sub_E8A04(v101 - v99);
      v102 = a4;
      v103 = v136;
      sub_E8998();
      sub_E898C();
      v148.size.height = v103;
      CGRectGetMinX(v148);
      sub_E898C();
      v149.size.height = v103;
      CGRectGetMinY(v149);
      v130 = *&v102;
      v131 = a5;
      v132 = a6;
      v104 = v50;
      sub_E89E4();
      sub_9B5D8();
      sub_13A354();
      if (v75)
      {
        sub_E8B90();
        if (v144)
        {
          sub_E8A04(v129 - v50);
          sub_E8AD0();
          *&v150.origin.x = v130;
          v150.origin.y = v131;
          v129 = v50;
          v150.size.width = v132;
          v150.size.height = v103;
          v50 = CGRectGetMaxX(v150) - *(a3 + 264);
          sub_E898C();
          v151.size.height = v103;
          CGRectGetMinY(v151);
          sub_E8A48();
          sub_E898C();
          v104 = v129;
          sub_13BE44();
          sub_9B5D8();
          sub_13A354();
          sub_3C04(v143);
        }

        else
        {
          sub_6BDB4(v143, &unk_1A0730);
        }
      }

      v97 = *&v134;
      sub_103E90(_swiftEmptyArrayStorage, v99, v104, *&v134);
      sub_E8A04(v108 - v97);
      sub_E8B24();
    }

    v96 = *&v133;
LABEL_46:
    sub_E8A78();
    sub_5AA10();
    sub_E8968();
    sub_13BE44();
    v110 = v121;
    sub_13A474();
    (*(v122 + 8))(v110, v123);
LABEL_47:
    sub_103E90(_swiftEmptyArrayStorage, *(a3 + 168), *(a3 + 272), v97);
    if (v75)
    {
      v160.origin.x = sub_E897C();
      v160.size.height = v136;
      Width = CGRectGetWidth(v160);
      (*(v92 + 8))(COERCE_CGFLOAT(*&v93), v91);
    }

    else
    {
      (*(v92 + 8))(COERCE_CGFLOAT(*&v93), v91);
      return v50 + v96;
    }

    return Width;
  }

  if (LOBYTE(v135))
  {
    sub_E8998();
    sub_E897C();
    sub_E8A68();
    CGRectGetMinX(v146);
    v147.origin.x = sub_E8968();
    CGRectGetMinY(v147);
    sub_E8968();
    sub_13BE44();
    sub_9B5D8();
    sub_13A354();
  }

  return *(a3 + 160);
}

unint64_t sub_E8620()
{
  result = qword_1A0510;
  if (!qword_1A0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0510);
  }

  return result;
}

unint64_t sub_E8678()
{
  result = qword_1A0518;
  if (!qword_1A0518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0518);
  }

  return result;
}

uint64_t sub_E86D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 297))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_E8714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_E87B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_E87F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ServiceDetailLayout.Metrics.ContentAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0xE8934);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_E89E4()
{

  return sub_13BE44();
}

double sub_E8A2C()
{
  result = 0.0;
  *(v0 - 256) = 0u;
  *(v0 - 272) = 0u;
  return result;
}

uint64_t sub_E8A78()
{

  return sub_13BE34();
}

void sub_E8AF4(unint64_t a1@<X8>)
{

  sub_58ABC(a1 > 1, v1, 1, v2);
}

uint64_t sub_E8B30()
{

  return sub_20038(v0, v1);
}

uint64_t *sub_E8B50()
{
  *(v2 - 168) = v0;
  *(v2 - 160) = *(v1 + 8);

  return sub_CC08((v2 - 192));
}

uint64_t sub_E8B70()
{

  return swift_allocObject();
}

uint64_t sub_E8B90()
{

  return sub_2DAFC(v0 + 120, v1 - 192);
}

char *sub_E8BA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v36 = a7;
  v37 = a8;
  v35 = a6;
  v34 = a3;
  v33 = *&a2;
  v9 = sub_13A2A4();
  sub_9E94();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_9EC0();
  v15 = (v14 - v13);
  v16 = sub_13A434();
  sub_9E94();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v33 - v23;
  *v15 = UIFontTextStyleBody;
  (*(v11 + 104))(v15, enum case for FontSource.textStyle(_:), v9);
  v38[3] = v9;
  v38[4] = &protocol witness table for FontSource;
  v25 = sub_CC08(v38);
  (*(v11 + 16))(v25, v15, v9);
  v26 = UIFontTextStyleBody;
  sub_13A444();
  (*(v11 + 8))(v15, v9);
  v27 = 48.0;
  if (!(a1 | *&v33))
  {
    v27 = 24.0;
  }

  if (v34)
  {
    v28 = v27;
  }

  else
  {
    v28 = *&a1;
  }

  if (v34)
  {
    v29 = v27;
  }

  else
  {
    v29 = v33;
  }

  v30 = objc_allocWithZone(type metadata accessor for ServiceDetailView());
  (*(v18 + 16))(v21, v24, v16);
  v31 = sub_EB410(v21, v35, v36, v37, v30, v28, v29);
  (*(v18 + 8))(v24, v16);
  return v31;
}

void sub_E8E40()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_additionalMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentAlignment) = 0;
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel;
  sub_139BB4();
  v2 = objc_opt_self();
  v3 = [v2 ams_primaryText];
  v4 = sub_13A2A4();
  v17 = v4;
  v18 = &protocol witness table for FontSource;
  *sub_CC08(v16) = UIFontTextStyleSubheadline;
  v5 = *(*(v4 - 8) + 104);
  v5();
  v6 = UIFontTextStyleSubheadline;
  *(v0 + v1) = sub_139BA4();
  v7 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailTop);
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_adamId) = 0;
  v8 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_bundleID);
  *v8 = 0;
  v8[1] = 0;
  v9 = v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentMaxWidth;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupArtwork) = 0;
  v10 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel;
  v12 = [v2 ams_primaryText];
  v17 = v4;
  v18 = &protocol witness table for FontSource;
  *sub_CC08(v16) = UIFontTextStyleHeadline;
  v5();
  v13 = UIFontTextStyleHeadline;
  *(v0 + v11) = sub_139BA4();
  v14 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_applyCachedArtwork);
  *v14 = 0;
  v14[1] = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_isLockupFocused) = 0;
  v15 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupSize);
  *v15 = 0;
  v15[1] = 0;
  sub_13C094();
  __break(1u);
}

void sub_E90D4(double a1, double a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize];
  if (*v4 != a1 || v4[1] != a2)
  {
    v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView;
    [*&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView] removeFromSuperview];
    v7 = objc_allocWithZone(sub_139CF4());
    v8 = sub_139CE4();
    v9 = *&v3[v6];
    *&v3[v6] = v8;
    v10 = v8;

    [v3 addSubview:v10];

    sub_EA054();
  }
}

void sub_E91B8(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize);
  v4 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize);
  v5 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_E90D4(v4, v5);
}

uint64_t sub_E91D8()
{
  sub_13A314();
  sub_9E94();
  v24 = v2;
  v25 = v1;
  __chkstk_darwin(v1);
  sub_9EC0();
  v5 = v4 - v3;
  v6 = type metadata accessor for ServiceDetailView();
  v40.receiver = v0;
  v40.super_class = v6;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  sub_E9F6C(v35);
  v7 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView];
  v33 = sub_139CF4();
  v34 = &protocol witness table for UIView;
  *&v32 = v7;
  v8 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel];
  v30 = sub_139BB4();
  sub_1D3B8();
  v31 = sub_9A68(v9, v10);
  v28 = v31;
  *&v29 = v8;
  v11 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel];
  v27 = v30;
  *&v26 = v11;
  v12 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView];
  if (v12)
  {
    v13 = sub_CACC(0, &qword_1A0728);
    v14 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  memcpy(v39, v35, sizeof(v39));
  sub_9414(&v32, v36);
  sub_9414(&v29, &v37);
  sub_9414(&v26, v38);
  v38[5] = v12;
  v38[6] = 0;
  v38[7] = 0;
  v38[8] = v13;
  v38[9] = v14;
  v15 = v12;
  v16 = v7;
  v17 = v8;
  v18 = v11;
  [v0 bounds];
  sub_EB8B8(1, v0, v36, v19, v20, v21, v22);
  sub_13A2E4();
  (*(v24 + 8))(v5, v25);
  return sub_ECDD8(v36);
}

double sub_E9480(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView;
  v8 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView);
  if (v8)
  {
    [v8 sizeThatFits:{a2, a3}];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = (v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupSize);
  *v11 = v9;
  v11[1] = v10;
  sub_E9F6C(__src);
  v12 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView);
  v34 = sub_139CF4();
  v35 = &protocol witness table for UIView;
  *&v33 = v12;
  v13 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel);
  v31 = sub_139BB4();
  sub_1D3B8();
  v16 = sub_9A68(v14, v15);
  v17 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel);
  v32 = v16;
  v29 = v16;
  *&v30 = v13;
  v28 = v31;
  *&v27 = v17;
  v18 = *(v3 + v7);
  if (v18)
  {
    v19 = sub_CACC(0, &qword_1A0728);
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  memcpy(v40, __src, sizeof(v40));
  sub_9414(&v33, v37);
  sub_9414(&v30, &v38);
  sub_9414(&v27, v39);
  v39[5] = v18;
  v39[6] = 0;
  v39[7] = 0;
  v39[8] = v19;
  v39[9] = v20;
  swift_getObjectType();
  v21 = v18;
  v22 = v12;
  v23 = v13;
  v24 = v17;
  v25 = sub_E759C(0, a1, v37, 0.0, 0.0, a2, a3);
  sub_ECDD8(v37);
  return v25;
}

void sub_E9714()
{
  sub_1D450();
  v1 = swift_allocObject();
  swift_weakInit();
  sub_1D450();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 2) = v1;
  *(v3 + 3) = v2;
  *(v3 + 4) = v0;
  v4 = &v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_applyCachedArtwork];
  v5 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_applyCachedArtwork];
  *v4 = sub_EB8AC;
  v4[1] = v3;

  v6 = v0;
  sub_C9FC(v5);

  v7 = *v4;
  if (*v4)
  {
    v8 = *&v6[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView];
    v9 = sub_17208();
    sub_C9EC(v9);
    v10 = v8;
    v7();
    v11 = sub_17208();
    sub_C9FC(v11);
  }

  v12 = *&v6[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_adamId];
  if (v12)
  {
    v13 = *&v6[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView];
    if (v13)
    {
      sub_CACC(0, &qword_19B808);
      v14 = ASCLockupKindApp;
      v15 = ASCLockupContextStandard;
      v16 = v12;
      v17 = v13;
      v18 = sub_E9A3C(v16, v14, v15, 1);
      [v17 setRequest:v18];
    }
  }
}

uint64_t sub_E9920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = (*&stru_108.segname[(swift_isaMask & *a1) + 16])(v7, Strong);
      v10 = (*(*v7 + 192))(v9);

      if (v10)
      {
        *(a4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupArtwork) = v7;
      }
    }
  }

  return result;
}

id sub_E9A3C(void *a1, void *a2, void *a3, char a4)
{
  v7 = [swift_getObjCClassFromMetadata() _requestWithID:a1 kind:a2 context:a3 includeUnlistedApps:a4 & 1];

  return v7;
}

uint64_t sub_E9AB8(uint64_t a1)
{
  sub_1D450();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_4B14(a1, v9);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  sub_9414(v9, v4 + 32);
  v5 = &v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner];
  v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner];
  *v5 = sub_EB858;
  v5[1] = v4;

  v7 = v1;
  sub_C9FC(v6);
}

uint64_t sub_E9B8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_139E74();
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_13B834();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v24 = a3;
    v25 = v9;
    sub_139E84();
    sub_13B6B4();
    sub_13B9A4();
    v14 = v26;
    v23 = v11;
    sub_13B9A4();
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v15 = sub_139A14();
    v22 = sub_4910(v15, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    *(&v27 + 1) = type metadata accessor for ServiceDetailView();
    *&v26 = a2;
    v16 = a2;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v26);
    sub_139974();
    sub_1399F4();

    v19 = v25;
    v20 = v23;
    (*(v25 + 16))(v7, v23, v8);
    v21 = sub_4948(&unk_19B7E0);
    sub_53A8(v7, 0, 1, v21);
    v26 = 0u;
    v27 = 0u;
    v28 = -1;
    (*(*v14 + 216))(v24, v7, v13, &v26);

    sub_CC68(&v26, &unk_19E330);
    sub_3BDFC(v7);
    return (*(v19 + 8))(v20, v8);
  }

  return result;
}

__n128 sub_E9F6C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize);
  v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize + 8);
  v5 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailTop;
  swift_beginAccess();
  sub_4B14(v1 + v5, a1 + 16);
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_spacingDimension;
  swift_beginAccess();
  sub_4B14(v1 + v6, a1 + 56);
  v7 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentAlignment);
  v8 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupSize;
  v9 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_isLockupFocused);
  v10 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentMaxWidth);
  v11 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentMaxWidth + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 96) = v7;
  result = *(v1 + v8);
  *(a1 + 104) = result;
  *(a1 + 120) = v9;
  *(a1 + 128) = v10;
  *(a1 + 136) = v11;
  return result;
}

void sub_EA054()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView;
  v2 = [*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView) layer];
  v3 = [objc_opt_self() ams_mediaBorder];
  v4 = [v3 CGColor];

  [v2 setBorderColor:v4];
  v5 = [*(v0 + v1) layer];
  [v5 setBorderWidth:1.0];

  v6 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_applyCachedArtwork);
  if (v6)
  {
    v7 = *(v0 + v1);
    sub_C9EC(v6);
    v8 = v7;
    v6();
    sub_C9FC(v6);
  }
}

void sub_EA1A8()
{
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_adamId])
  {
    v1 = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v1 setDelegate:v0];
    if (qword_19A090 != -1)
    {
      swift_once();
    }

    [v1 setLockupSize:qword_1B2B78];
    [v0 addSubview:v1];
    v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView];
    *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView] = v1;
  }
}

id sub_EA318()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDetailView();
  return objc_msgSendSuper2(&v2, "dealloc");
}