unint64_t sub_10006437C()
{
  result = qword_10016D0B0;
  if (!qword_10016D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D0B0);
  }

  return result;
}

uint64_t sub_1000643D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100064428()
{
  result = qword_10016D0C0;
  if (!qword_10016D0C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016D0C0);
  }

  return result;
}

unint64_t sub_10006447C()
{
  result = qword_10016F260;
  if (!qword_10016F260)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F260);
  }

  return result;
}

unint64_t sub_1000644D4()
{
  result = qword_10016F270;
  if (!qword_10016F270)
  {
    sub_10000459C(&qword_10016D0C8, &unk_100113370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F270);
  }

  return result;
}

uint64_t sub_100064540()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10006461C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x5F4E495F57454956;
  v1._object = 0xEE0048544C414548;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_10016D0D0 = v4;
}

double sub_1000646DC@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static HorizontalAlignment.leading.getter();
  v44 = 1;
  sub_10006499C(a1, a2, &v27);
  v57 = v39;
  v58 = v40;
  v59 = v41;
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v52 = v34;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v48 = v30;
  v61[12] = v39;
  v61[13] = v40;
  v61[14] = v41;
  v61[8] = v35;
  v61[9] = v36;
  v61[10] = v37;
  v61[11] = v38;
  v61[4] = v31;
  v61[5] = v32;
  v61[6] = v33;
  v61[7] = v34;
  v61[0] = v27;
  v61[1] = v28;
  v60 = v42;
  v62 = v42;
  v61[2] = v29;
  v61[3] = v30;
  sub_10000C178(&v45, v26, &qword_10016D110, &qword_100113438);
  sub_100009908(v61, &qword_10016D110, &qword_100113438);
  *(&v43[12] + 7) = v57;
  *(&v43[13] + 7) = v58;
  *(&v43[14] + 7) = v59;
  *(&v43[8] + 7) = v53;
  *(&v43[9] + 7) = v54;
  *(&v43[10] + 7) = v55;
  *(&v43[11] + 7) = v56;
  *(&v43[4] + 7) = v49;
  *(&v43[5] + 7) = v50;
  *(&v43[6] + 7) = v51;
  *(&v43[7] + 7) = v52;
  *(v43 + 7) = v45;
  *(&v43[1] + 7) = v46;
  *(&v43[2] + 7) = v47;
  *(&v43[15] + 7) = v60;
  *(&v43[3] + 7) = v48;
  v7 = v44;
  LOBYTE(a2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v27) = 0;
  v16 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v18 = v43[13];
  *(a3 + 209) = v43[12];
  *(a3 + 225) = v18;
  *(a3 + 241) = v43[14];
  *(a3 + 256) = *(&v43[14] + 15);
  v19 = v43[9];
  *(a3 + 145) = v43[8];
  *(a3 + 161) = v19;
  v20 = v43[11];
  *(a3 + 177) = v43[10];
  *(a3 + 193) = v20;
  v21 = v43[5];
  *(a3 + 81) = v43[4];
  *(a3 + 97) = v21;
  v22 = v43[7];
  *(a3 + 113) = v43[6];
  *(a3 + 129) = v22;
  v23 = v43[1];
  *(a3 + 17) = v43[0];
  *(a3 + 33) = v23;
  result = *&v43[2];
  v25 = v43[3];
  *(a3 + 49) = v43[2];
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  *(a3 + 65) = v25;
  *(a3 + 272) = a2;
  *(a3 + 280) = v9;
  *(a3 + 288) = v11;
  *(a3 + 296) = v13;
  *(a3 + 304) = v15;
  *(a3 + 312) = 0;
  *(a3 + 320) = KeyPath;
  *(a3 + 328) = v16;
  return result;
}

uint64_t sub_10006499C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v38 = a2;
  v39 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v78 = 0;
  *&v52 = sub_100068F50(a1);
  *(&v52 + 1) = v14;
  sub_100012928();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  LOBYTE(a2) = v18;
  static Font.Weight.semibold.getter();
  v19 = Text.fontWeight(_:)();
  v21 = v20;
  v35 = v22;
  v37 = v23;
  sub_10001297C(v15, v17, a2 & 1);

  if (qword_100168F60 != -1)
  {
    swift_once();
  }

  v24 = *(&xmmword_10016D0D0 + 1);
  v36 = xmmword_10016D0D0;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = v38;
  *v48 = v38;
  *&v48[56] = v44;
  *&v48[72] = v45;
  *&v48[88] = v46;
  *&v48[104] = v47;
  *&v48[8] = v41;
  *&v48[24] = v42;
  *&v48[40] = v43;
  v48[120] = v39;
  *&v48[124] = *&v40[3];
  *&v48[121] = *v40;
  *&v49 = v7;
  *(&v49 + 1) = v9;
  *&v50 = v11;
  *(&v50 + 1) = v13;
  v51 = 0;
  LOBYTE(v62) = 0;
  v60 = v49;
  v61 = v50;
  v52 = *v48;
  v53 = *&v48[16];
  v58 = *&v48[96];
  v59 = *&v48[112];
  v56 = *&v48[64];
  v57 = *&v48[80];
  v54 = *&v48[32];
  v55 = *&v48[48];
  v26 = v50;
  *(a3 + 128) = v49;
  *(a3 + 144) = v26;
  v27 = v62;
  v28 = v57;
  *(a3 + 64) = v56;
  *(a3 + 80) = v28;
  v29 = v59;
  *(a3 + 96) = v58;
  *(a3 + 112) = v29;
  v30 = v53;
  *a3 = v52;
  *(a3 + 16) = v30;
  v31 = v55;
  *(a3 + 32) = v54;
  *(a3 + 48) = v31;
  *(a3 + 160) = v27;
  *(a3 + 168) = v19;
  *(a3 + 176) = v21;
  *(a3 + 184) = v35 & 1;
  *(a3 + 192) = v37;
  *(a3 + 200) = v36;
  *(a3 + 208) = v24;
  *(a3 + 216) = 0xD000000000000019;
  *(a3 + 224) = 0x800000010011D5F0;
  *(a3 + 232) = sub_1000650E0;
  *(a3 + 240) = v25;
  v32 = v38;

  v33 = a1;
  sub_10000C178(v48, &v63, &qword_10016D118, &unk_100113470);
  sub_100003AE4(v19, v21, v35 & 1);

  sub_10001297C(v19, v21, v35 & 1);

  v67 = v44;
  v68 = v45;
  v69 = v46;
  v70 = v47;
  v64 = v41;
  v65 = v42;
  v63 = v32;
  v66 = v43;
  v71 = v39;
  *&v72[3] = *&v40[3];
  *v72 = *v40;
  v73 = v7;
  v74 = v9;
  v75 = v11;
  v76 = v13;
  v77 = 0;
  return sub_100009908(&v63, &qword_10016D118, &unk_100113470);
}

uint64_t sub_100064D7C(void *a1)
{
  v2 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_100002BE4(&qword_10016C220, &qword_100112330);
  (*(*(v7 - 8) + 56))(v5, 0, 7, v7);
  sub_100081630();
  return sub_1000650FC(v5);
}

uint64_t sub_100064E68()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = v2;
  sub_100002BE4(&qword_10016D0E0, &qword_100113418);
  sub_100064F68();
  return Button.init(action:label:)();
}

uint64_t sub_100064F20()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100064F68()
{
  result = qword_10016D0E8;
  if (!qword_10016D0E8)
  {
    sub_10000459C(&qword_10016D0E0, &qword_100113418);
    sub_100065020();
    sub_100012C48(&qword_10016A068, &qword_10016A070, &qword_10010EC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D0E8);
  }

  return result;
}

unint64_t sub_100065020()
{
  result = qword_10016D0F0;
  if (!qword_10016D0F0)
  {
    sub_10000459C(&qword_10016D0F8, &qword_100113420);
    sub_100012C48(&qword_10016D100, &qword_10016D108, &unk_100113428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D0F0);
  }

  return result;
}

uint64_t sub_1000650FC(uint64_t a1)
{
  v2 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000651D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonStyleConfiguration.Label();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016D130, &qword_1001134E0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v12 = 0.96;
  }

  else
  {
    v12 = 1.0;
  }

  static UnitPoint.center.getter();
  v14 = v13;
  v16 = v15;
  (*(v3 + 32))(v11, v6, v2);
  v17 = &v11[*(v8 + 44)];
  *v17 = v12;
  *(v17 + 1) = v12;
  *(v17 + 2) = v14;
  *(v17 + 3) = v16;
  v18 = static Animation.easeInOut.getter();
  v19 = ButtonStyleConfiguration.isPressed.getter();
  sub_100065384(v11, a1);
  result = sub_100002BE4(&qword_10016D138, &qword_1001134E8);
  v21 = a1 + *(result + 36);
  *v21 = v18;
  *(v21 + 8) = v19 & 1;
  return result;
}

uint64_t sub_100065384(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016D130, &qword_1001134E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000653F8()
{
  result = qword_10016D140;
  if (!qword_10016D140)
  {
    sub_10000459C(&qword_10016D138, &qword_1001134E8);
    sub_100065484();
    sub_100065568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D140);
  }

  return result;
}

unint64_t sub_100065484()
{
  result = qword_10016D148;
  if (!qword_10016D148)
  {
    sub_10000459C(&qword_10016D130, &qword_1001134E0);
    sub_100065510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D148);
  }

  return result;
}

unint64_t sub_100065510()
{
  result = qword_10016D150;
  if (!qword_10016D150)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D150);
  }

  return result;
}

unint64_t sub_100065568()
{
  result = qword_10016D158;
  if (!qword_10016D158)
  {
    sub_10000459C(&qword_10016D160, &unk_1001134F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D158);
  }

  return result;
}

id sub_1000655CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6)
{
  if ([a1 numberOfPages] != a6)
  {
    [a1 setNumberOfPages:a6];
  }

  v8 = [a1 currentPage];
  sub_100002BE4(&qword_10016D198, &qword_100113558);
  result = Binding.wrappedValue.getter();
  if (v8 != v10)
  {
    Binding.wrappedValue.getter();
    return [a1 setCurrentPage:v10];
  }

  return result;
}

uint64_t sub_10006583C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002BE4(&qword_10016D1A0, &unk_100113560);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10006590C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016D1A0, &unk_100113560);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PrescriptionCarouselView()
{
  result = qword_10016D200;
  if (!qword_10016D200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100065A08()
{
  sub_100065B50(319, &qword_10016D210, &type metadata for Prescription, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100065AEC();
    if (v1 <= 0x3F)
    {
      sub_100065B50(319, &unk_10016D220, &type metadata for Int, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100065AEC()
{
  if (!qword_10016D218)
  {
    sub_10000459C(&unk_10016F2E0, qword_100113590);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10016D218);
    }
  }
}

void sub_100065B50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_100065BBC()
{
  v0 = [objc_allocWithZone(UIPageControl) init];
  [v0 setHidesForSinglePage:1];
  sub_100002BE4(&qword_10016D378, &unk_1001137A0);
  UIViewRepresentableContext.coordinator.getter();
  [v0 addTarget:v2 action:"changed:" forControlEvents:4096];

  return v0;
}

id sub_100065C64@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 2);
  v12 = *v1;
  v13 = v3;
  sub_100002BE4(&qword_10016D198, &qword_100113558);
  Binding.projectedValue.getter();
  v4 = v11;
  v5 = type metadata accessor for CarouselPageControl.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV17AppleVisionProApp19CarouselPageControl11Coordinator_currentPage];
  *v7 = v10;
  *(v7 + 2) = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_100065D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068724();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100065D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068724();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100065DD4()
{
  sub_100068724();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100065DFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PrescriptionCarouselView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v22 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  v8 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v10 = &v21 - v9;
  v21 = sub_100002BE4(&qword_10016D258, &qword_1001135E8);
  v11 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v13 = &v21 - v12;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_100002BE4(&qword_10016D260, &qword_1001135F0);
  sub_100066104(v2, &v13[*(v14 + 44)]);
  v15 = *(v5 + 28);
  sub_100002BE4(&qword_10016D1A0, &unk_100113560);
  State.wrappedValue.getter();
  sub_100067C44(v2, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_100067CAC(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_100012C48(&qword_10016D268, &qword_10016D258, &qword_1001135E8);
  sub_100067D90();
  View.onChange<A>(of:initial:_:)();

  sub_100009908(v10, &unk_10016F2E0, qword_100113590);
  sub_100009908(v13, &qword_10016D258, &qword_1001135E8);
  sub_100067C44(v2, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  sub_100067CAC(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16);
  result = sub_100002BE4(&qword_10016D280, &qword_1001135F8);
  v20 = (a1 + *(result + 36));
  *v20 = sub_100067FAC;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
  return result;
}

uint64_t sub_100066104@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v109 = a2;
  v103 = type metadata accessor for PrescriptionCarouselView();
  v87 = *(v103 - 8);
  v3 = *(v87 + 64);
  __chkstk_darwin(v103);
  v88 = v4;
  v89 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002BE4(&qword_10016D290, &qword_100113608);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v104 = &v86 - v7;
  v8 = type metadata accessor for ScrollIndicatorVisibility();
  v101 = *(v8 - 8);
  v102 = v8;
  v9 = *(v101 + 64);
  __chkstk_darwin(v8);
  v92 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PagingScrollTargetBehavior();
  v12 = *(v11 - 8);
  v94 = v11;
  v95 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v91 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002BE4(&qword_10016D298, &qword_100113610);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v86 - v17;
  v90 = sub_100002BE4(&qword_10016D2A0, &qword_100113618);
  v93 = *(v90 - 8);
  v19 = *(v93 + 64);
  __chkstk_darwin(v90);
  v21 = &v86 - v20;
  v22 = sub_100002BE4(&qword_10016D2A8, &qword_100113620);
  v96 = *(v22 - 8);
  v97 = v22;
  v23 = *(v96 + 64);
  __chkstk_darwin(v22);
  v110 = &v86 - v24;
  v25 = sub_100002BE4(&qword_10016D2B0, &qword_100113628);
  v99 = *(v25 - 8);
  v100 = v25;
  v26 = *(v99 + 64);
  __chkstk_darwin(v25);
  v98 = &v86 - v27;
  v28 = sub_100002BE4(&qword_10016D2B8, &qword_100113630);
  v107 = *(v28 - 8);
  v108 = v28;
  v29 = *(v107 + 64);
  v30 = __chkstk_darwin(v28);
  v106 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v111 = &v86 - v32;
  static Axis.Set.horizontal.getter();
  v105 = a1;
  v112 = a1;
  sub_100002BE4(&qword_10016D2C0, &qword_100113638);
  sub_100012C48(&qword_10016D2C8, &qword_10016D2C0, &qword_100113638);
  ScrollView.init(_:showsIndicators:content:)();
  v33 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v34 = Color.init(_:)();
  v35 = &v18[*(v15 + 36)];
  v36 = sub_100002BE4(&qword_10016D2D0, &qword_100113640);
  v37 = (v35 + *(v36 + 52));
  v38 = *(type metadata accessor for RoundedRectangle() + 20);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(&v37->i8[v38], v39, v40);
  *v37 = vdupq_n_s64(0x4040000000000000uLL);
  v41 = v92;
  *v35 = v34;
  *(v35 + *(v36 + 56)) = 256;
  v42 = v90;
  v43 = sub_100068034();
  View.scrollTargetLayout(isEnabled:)();
  sub_100009908(v18, &qword_10016D298, &qword_100113610);
  v44 = v91;
  PagingScrollTargetBehavior.init()();
  *&v145 = v15;
  *(&v145 + 1) = v43;
  v45 = v94;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.scrollTargetBehavior<A>(_:)();
  (*(v95 + 8))(v44, v45);
  (*(v93 + 8))(v21, v42);
  static ScrollIndicatorVisibility.never.getter();
  sub_100002BE4(&qword_10016D2F8, &qword_100113650);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10010FEE0;
  LOBYTE(v39) = static Axis.Set.vertical.getter();
  *(v47 + 32) = v39;
  v48 = static Axis.Set.horizontal.getter();
  *(v47 + 33) = v48;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v39)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v48)
  {
    Axis.Set.init(rawValue:)();
  }

  v49 = v105;
  *&v145 = v42;
  *(&v145 + 1) = v45;
  *&v146 = OpaqueTypeConformance2;
  *(&v146 + 1) = &protocol witness table for PagingScrollTargetBehavior;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v97;
  v52 = v98;
  v53 = v110;
  View.scrollIndicators(_:axes:)();
  (*(v101 + 8))(v41, v102);
  (*(v96 + 8))(v53, v51);
  v54 = *(v103 + 20);
  sub_100002BE4(&qword_10016D1A0, &unk_100113560);
  v55 = v104;
  State.projectedValue.getter();
  type metadata accessor for UUID();
  *&v145 = v51;
  *(&v145 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  sub_1000683B8(&qword_10016D300, &type metadata accessor for UUID);
  v56 = v100;
  View.scrollPosition<A>(id:anchor:)();
  sub_100009908(v55, &qword_10016D290, &qword_100113608);
  (*(v99 + 8))(v52, v56);
  v57 = *v49;
  if (*(*v49 + 16) < 2uLL)
  {
    sub_100068118(&v145);
  }

  else
  {
    v58 = v89;
    sub_100067C44(v49, v89);
    type metadata accessor for MainActor();
    v59 = static MainActor.shared.getter();
    v60 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    *(v61 + 24) = &protocol witness table for MainActor;
    sub_100067CAC(v58, v61 + v60);
    sub_100067C44(v49, v58);
    v62 = static MainActor.shared.getter();
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = &protocol witness table for MainActor;
    sub_100067CAC(v58, v63 + v60);
    Binding.init(get:set:)();
    v64 = v145;
    v65 = v146;
    v66 = *(v57 + 16);
    static Alignment.bottom.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v122 = v64;
    *&v123 = v65;
    *(&v123 + 1) = v66;
    v128 = v119;
    v129 = v120;
    v130 = v121;
    v124 = v115;
    v125 = v116;
    v126 = v117;
    v127 = v118;
    *&v113[23] = v123;
    *&v113[87] = v118;
    *&v113[71] = v117;
    *&v113[55] = v116;
    *&v113[39] = v115;
    *&v113[135] = v121;
    *&v113[119] = v120;
    *&v113[103] = v119;
    *&v113[7] = v64;
    v139 = v119;
    v140 = v120;
    v141 = v121;
    v135 = v115;
    v136 = v116;
    v114 = 1;
    LOBYTE(v131) = 1;
    v113[151] = 1;
    v133 = v64;
    *&v134 = v65;
    *(&v134 + 1) = v66;
    v137 = v117;
    v138 = v118;
    LOBYTE(v142) = 1;
    sub_10000C178(&v122, &v145, &qword_10016D318, &qword_100113668);
    sub_100009908(&v133, &qword_10016D318, &qword_100113668);
    *&v144[105] = *&v113[96];
    *&v144[121] = *&v113[112];
    *&v144[137] = *&v113[128];
    *&v144[41] = *&v113[32];
    *&v144[57] = *&v113[48];
    *&v144[73] = *&v113[64];
    *&v144[89] = *&v113[80];
    *&v144[9] = *v113;
    *v144 = 0;
    v144[8] = 1;
    *&v144[153] = *&v113[144];
    *&v144[25] = *&v113[16];
    FeatureEligibilityState.rawValue.getter(v144);
    v153 = *&v144[128];
    v154 = *&v144[144];
    v155 = v144[160];
    v149 = *&v144[64];
    v150 = *&v144[80];
    v152 = *&v144[112];
    v151 = *&v144[96];
    v145 = *v144;
    v146 = *&v144[16];
    v148 = *&v144[48];
    v147 = *&v144[32];
  }

  v68 = v106;
  v67 = v107;
  v69 = *(v107 + 16);
  v70 = v111;
  v71 = v108;
  v69(v106, v111, v108);
  v130 = v153;
  v131 = v154;
  v132 = v155;
  v126 = v149;
  v127 = v150;
  v128 = v151;
  v129 = v152;
  v122 = v145;
  v123 = v146;
  v124 = v147;
  v125 = v148;
  v72 = v109;
  v69(v109, v68, v71);
  v73 = *(sub_100002BE4(&qword_10016D308, &qword_100113658) + 48);
  v74 = v131;
  v141 = v130;
  v142 = v131;
  v75 = v126;
  v76 = v127;
  v137 = v126;
  v138 = v127;
  v78 = v128;
  v77 = v129;
  v139 = v128;
  v140 = v129;
  v79 = v122;
  v80 = v123;
  v133 = v122;
  v134 = v123;
  v82 = v124;
  v81 = v125;
  v135 = v124;
  v136 = v125;
  v83 = &v72[v73];
  *(v83 + 8) = v130;
  *(v83 + 9) = v74;
  *(v83 + 4) = v75;
  *(v83 + 5) = v76;
  *(v83 + 6) = v78;
  *(v83 + 7) = v77;
  *v83 = v79;
  *(v83 + 1) = v80;
  v143 = v132;
  v83[160] = v132;
  *(v83 + 2) = v82;
  *(v83 + 3) = v81;
  sub_10000C178(&v133, v144, &qword_10016D310, &qword_100113660);
  v84 = *(v67 + 8);
  v84(v70, v71);
  *&v144[128] = v130;
  *&v144[144] = v131;
  v144[160] = v132;
  *&v144[64] = v126;
  *&v144[80] = v127;
  *&v144[96] = v128;
  *&v144[112] = v129;
  *v144 = v122;
  *&v144[16] = v123;
  *&v144[32] = v124;
  *&v144[48] = v125;
  sub_100009908(v144, &qword_10016D310, &qword_100113660);
  return (v84)(v68, v71);
}

uint64_t sub_100066E84()
{
  v0 = type metadata accessor for PinnedScrollableViews();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  static VerticalAlignment.center.getter();
  sub_1000683B8(&qword_10016D320, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_100002BE4(&qword_10016D328, &qword_100113670);
  sub_100068400();
  return LazyHStack.init(alignment:spacing:pinnedViews:content:)();
}

uint64_t sub_100066FBC(void **a1)
{
  sub_100009584(*a1);
  swift_getKeyPath();
  sub_100002BE4(&qword_10016D348, &qword_1001136B0);
  sub_100002BE4(&qword_10016D340, &qword_100113678);
  sub_100012C48(&qword_10016D350, &qword_10016D348, &qword_1001136B0);
  sub_1000683B8(&qword_10016D300, &type metadata accessor for UUID);
  sub_100012C48(&qword_10016D338, &qword_10016D340, &qword_100113678);
  return ForEach<>.init(_:id:content:)();
}

void sub_100067120(id *a1)
{
  v1 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_100067180(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
  v5 = v3;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_1000684B4();
  View.containerRelativeFrame(_:alignment:)();

  v6 = a2 + *(sub_100002BE4(&qword_10016D360, &qword_1001136B8) + 36);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = [v4 UUID];
  v8 = a2 + *(sub_100002BE4(&qword_10016D340, &qword_100113678) + 52);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100067288@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for PrescriptionCarouselView() + 24));
  sub_100002BE4(&qword_10016D288, &qword_100113600);
  result = State.wrappedValue.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_1000672F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v6 = *(a4 + *(type metadata accessor for PrescriptionCarouselView() + 24));
  sub_100002BE4(&qword_10016D288, &qword_100113600);
  State.wrappedValue.setter();
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000673BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = v18 - v10;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*a1 + 16) > a2)
  {
    v12 = *a1 + 16 * a2;
    v13 = *(v12 + 40);
    v14 = *(v12 + 32);
    v15 = v13;
    v16 = [v14 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    LODWORD(v16) = *(type metadata accessor for PrescriptionCarouselView() + 20);
    sub_10000C178(v11, v8, &unk_10016F2E0, qword_100113590);
    sub_100002BE4(&qword_10016D1A0, &unk_100113560);
    State.wrappedValue.setter();
    return sub_100009908(v11, &unk_10016F2E0, qword_100113590);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006757C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C178(a2, v8, &unk_10016F2E0, qword_100113590);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100009908(v8, &unk_10016F2E0, qword_100113590);
  }

  v15 = (*(v10 + 32))(v13, v8, v9);
  v16 = *a3;
  __chkstk_darwin(v15);
  v21[-2] = v13;
  v18 = sub_1000678B8(sub_10006800C, &v21[-4], v17);
  if ((v19 & 1) == 0)
  {
    v20 = v18;
    v22 = *(a3 + *(type metadata accessor for PrescriptionCarouselView() + 24));
    v21[1] = v20;
    sub_100002BE4(&qword_10016D288, &qword_100113600);
    State.wrappedValue.setter();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000677AC(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_1000678B8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = a3 + 32;
  while (1)
  {
    v11 = *(v6 + 16 * v5);
    v12 = v11;
    v7 = v11;
    v8 = *(&v11 + 1);
    v9 = v13(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_100067990(uint64_t *a1)
{
  v2 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - v8;
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = *(type metadata accessor for PrescriptionCarouselView() + 20);
  sub_100002BE4(&qword_10016D1A0, &unk_100113560);
  v25 = v12;
  State.wrappedValue.getter();
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v9, 1, v13) == 1)
  {
    v16 = *a1;
    if (*(*a1 + 16))
    {
      v24 = a1;
      v17 = *(v16 + 40);
      v18 = *(v16 + 32);
      v23 = v17;
      v19 = [v18 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    (*(v14 + 56))(v11, v20, 1, v13);
    if (v15(v9, 1, v13) != 1)
    {
      sub_100009908(v9, &unk_10016F2E0, qword_100113590);
    }
  }

  else
  {
    (*(v14 + 32))(v11, v9, v13);
    (*(v14 + 56))(v11, 0, 1, v13);
  }

  sub_10000C178(v11, v6, &unk_10016F2E0, qword_100113590);
  State.wrappedValue.setter();
  return sub_100009908(v11, &unk_10016F2E0, qword_100113590);
}

uint64_t sub_100067C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrescriptionCarouselView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrescriptionCarouselView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067D10(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PrescriptionCarouselView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10006757C(a1, a2, v6);
}

unint64_t sub_100067D90()
{
  result = qword_10016D270;
  if (!qword_10016D270)
  {
    sub_10000459C(&unk_10016F2E0, qword_100113590);
    sub_1000683B8(&qword_10016D278, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D270);
  }

  return result;
}

uint64_t sub_100067E44()
{
  v1 = type metadata accessor for PrescriptionCarouselView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3);

  v6 = v0 + v3 + *(v1 + 20);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  v9 = *(v6 + *(sub_100002BE4(&qword_10016D1A0, &unk_100113560) + 28));

  v10 = *(v0 + v3 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100067FAC()
{
  v1 = *(type metadata accessor for PrescriptionCarouselView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_100067990(v2);
}

unint64_t sub_100068034()
{
  result = qword_10016D2D8;
  if (!qword_10016D2D8)
  {
    sub_10000459C(&qword_10016D298, &qword_100113610);
    sub_100012C48(&qword_10016D2E0, &qword_10016D2E8, &qword_100113648);
    sub_100012C48(&qword_10016D2F0, &qword_10016D2D0, &qword_100113640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D2D8);
  }

  return result;
}

double sub_100068118(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10006813C@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for PrescriptionCarouselView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100067288(v6, a1);
}

uint64_t sub_1000681B0()
{
  v1 = type metadata accessor for PrescriptionCarouselView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = v0 + v3 + *(v1 + 20);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  v10 = *(v7 + *(sub_100002BE4(&qword_10016D1A0, &unk_100113560) + 28));

  v11 = *(v0 + v3 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100068320(uint64_t *a1)
{
  v3 = *(type metadata accessor for PrescriptionCarouselView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000672F8(a1, v4, v5, v6);
}

uint64_t sub_1000683B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100068400()
{
  result = qword_10016D330;
  if (!qword_10016D330)
  {
    sub_10000459C(&qword_10016D328, &qword_100113670);
    sub_100012C48(&qword_10016D338, &qword_10016D340, &qword_100113678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D330);
  }

  return result;
}

unint64_t sub_1000684B4()
{
  result = qword_10016D358;
  if (!qword_10016D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D358);
  }

  return result;
}

uint64_t sub_100068508(uint64_t a1, int a2)
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

uint64_t sub_100068550(uint64_t result, int a2, int a3)
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

unint64_t sub_1000685A4()
{
  result = qword_10016D368;
  if (!qword_10016D368)
  {
    sub_10000459C(&qword_10016D280, &qword_1001135F8);
    sub_10000459C(&qword_10016D258, &qword_1001135E8);
    sub_10000459C(&unk_10016F2E0, qword_100113590);
    sub_100012C48(&qword_10016D268, &qword_10016D258, &qword_1001135E8);
    sub_100067D90();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D368);
  }

  return result;
}

unint64_t sub_1000686D0()
{
  result = qword_10016D370;
  if (!qword_10016D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D370);
  }

  return result;
}

unint64_t sub_100068724()
{
  result = qword_10016D380;
  if (!qword_10016D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D380);
  }

  return result;
}

void sub_1000687D8(void *a1)
{
  v1 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_10006883C()
{
  v1 = [*v0 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t sub_10006889C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100068AB8(a1, a2, v6);
}

unint64_t sub_100068914(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_100068B70(a1, v4);
}

unint64_t sub_100068958(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100068BDC(a1, v4);
}

unint64_t sub_10006899C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for JoeColorType();
  sub_100069318(&qword_10016C038, &type metadata accessor for JoeColorType);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100068CA4(a1, v5);
}

unint64_t sub_100068A34(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = qword_100113858[a1];
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return sub_100068E64(a1, v5);
}

unint64_t sub_100068AB8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100068B70(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100068BDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000692BC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100064580(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100068CA4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for JoeColorType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100069318(&qword_10016D388, &type metadata accessor for JoeColorType);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100068E64(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = qword_100113858[a1];
    while (qword_100113858[*(*(v2 + 48) + v4)] != v6)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

uint64_t sub_100068F50(void *a1)
{
  v1 = [a1 metadata];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_10006889C(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_1000076F0(*(v3 + 56) + 32 * v6, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = [objc_opt_self() mainBundle];
    v17._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x5F4C41434954504FLL;
    v11._object = 0xEF53545245534E49;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v17)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  return v15;
}

uint64_t sub_1000690E8(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  strcpy(v13, "Prescription(");
  HIWORD(v13[1]) = -4864;
  v7._countAndFlagsBits = sub_100068F50(a1);
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x734965746164203BLL;
  v8._object = 0xED00002064657573;
  String.append(_:)(v8);
  v9 = [a1 dateIssued];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100069318(&qword_10016B468, &type metadata accessor for Date);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  (*(v3 + 8))(v6, v2);
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return v13[0];
}

uint64_t sub_100069318(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100069360()
{
  swift_getKeyPath();
  sub_10006ACBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1000693E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10006ACBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_100069478(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10006ACBC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100069514(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t sub_10006957C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_10006960C();
}

uint64_t sub_10006960C()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = sub_100002BE4(&qword_10016D500, &qword_100113918);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(sub_100002BE4(&qword_10016D508, &qword_100113920) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = sub_100002BE4(&qword_10016D510, &qword_100113928);
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  v9 = sub_100002BE4(&qword_10016D518, &qword_100113930);
  v1[12] = v9;
  v10 = *(v9 - 8);
  v1[13] = v10;
  v11 = *(v10 + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100069808, 0, 0);
}

uint64_t sub_100069808()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[3];
  sub_10006A040(v2);
  HKAnchoredObjectQueryDescriptor.Results.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = sub_10006AD30();
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_100069904;
  v9 = v0[14];
  v10 = v0[12];
  v11 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v11, v10, v6);
}

uint64_t sub_100069904()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_100069B8C;
  }

  else
  {
    v3 = sub_100069A18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100069A18()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    v4 = v0[14];
    v5 = v0[11];
    v7 = v0[7];
    v6 = v0[8];

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v3 + 32))(v0[7], v1, v2);
    v10 = HKAnchoredObjectQueryDescriptor.Result.addedSamples.getter();
    v0[17] = v10;
    v11 = swift_task_alloc();
    v0[18] = v11;
    *v11 = v0;
    v11[1] = sub_100069E64;
    v12 = v0[3];

    return sub_10006A2E4(v10);
  }
}

uint64_t sub_100069B8C()
{
  *(v0 + 16) = *(v0 + 128);
  sub_100002BE4(&qword_10016BBA0, &qword_1001110E0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100069C20, 0, 0);
}

uint64_t sub_100069C20()
{
  v22 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  if (qword_100168E88 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_1001820C0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed to fetch prescription samples with error: %@", v8, 0x16u);
    sub_1000077E0(v9);

    sub_1000052E4(v10);
  }

  else
  {
  }

  v15 = v0[14];
  v16 = v0[11];
  v18 = v0[7];
  v17 = v0[8];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100069E64()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_100069F7C, 0, 0);
}

uint64_t sub_100069F7C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = sub_10006AD30();
  v2 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_100069904;
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v5, v1);
}

uint64_t sub_10006A040@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_100002BE4(&qword_10016D4D8, &qword_100113900);
  v18 = *(v1 - 8);
  v2 = *(v18 + 64);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v5 = sub_100002BE4(&qword_10016D4E0, &qword_100113908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = [objc_opt_self() predicateForObjectsWithMetadataKey:_HKPrivateMetadataKeyVisionACCPayload];
  sub_100031904(0, &qword_10016D4E8, HKSample_ptr);
  v11 = v10;
  static HKSamplePredicate.visionPrescription(_:)();

  sub_100002BE4(&qword_10016D4F0, &qword_100113910);
  v12 = *(v6 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10010D3B0;
  (*(v6 + 16))(v14 + v13, v9, v5);
  sub_100031904(0, &qword_10016D4F8, HKVisionPrescription_ptr);
  HKAnchoredObjectQueryDescriptor.init(predicates:anchor:limit:)();
  v15 = *(v19 + 24);
  HKAnchoredObjectQueryDescriptor.results(for:)();

  (*(v18 + 8))(v4, v1);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10006A2E4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return _swift_task_switch(sub_10006A32C, 0, 0);
}

uint64_t sub_10006A32C()
{
  v38 = v0;
  v1 = v0[5];
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v34 = v0)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v0[5] + 32;
    v1 = _swiftEmptyArrayStorage;
    v33 = i;
    while (1)
    {
      if (v4)
      {
        v15 = v0[5];
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_17;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = v0[7];
      v36 = v7;
      sub_10006A750(&v36, &v37);

      if (v37)
      {
        v35 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_100008F88(0, *(v1 + 2) + 1, 1, v1);
        }

        v12 = *(v1 + 2);
        v11 = *(v1 + 3);
        v13 = v35;
        if (v12 >= v11 >> 1)
        {
          v14 = sub_100008F88((v11 > 1), v12 + 1, 1, v1);
          v13 = v35;
          v1 = v14;
        }

        *(v1 + 2) = v12 + 1;
        *&v1[16 * v12 + 32] = v13;
        i = v33;
        v0 = v34;
      }

      ++v3;
      if (v9 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    i = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_19:
  v16 = v0[6];
  swift_getKeyPath();
  v0[2] = v16;
  sub_10006ACBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[2] = v16;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();

  sub_1000DAE40(v17);
  swift_endAccess();
  v0[2] = v16;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (qword_100168E88 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006B0C(v18, qword_1001820C0);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v34;
    v22 = v34[7];
    v23 = swift_slowAlloc();
    *&v37 = swift_slowAlloc();
    *v23 = 136315394;
    v24 = _typeName(_:qualified:)();
    v26 = sub_100006B44(v24, v25, &v37);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = Array.description.getter();
    v29 = v28;

    v30 = sub_100006B44(v27, v29, &v37);

    *(v23 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s added prescriptions %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v21 = v34;
  }

  v31 = v21[1];

  return v31();
}

void sub_10006A750(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1000E42FC();
  if (v2)
  {
    if (qword_100168E88 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006B0C(v6, qword_1001820C0);
    v7 = v4;
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v10 = 136315650;
      v12 = _typeName(_:qualified:)();
      v14 = sub_100006B44(v12, v13, &v33);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v7;
      *v11 = v7;
      *(v10 + 22) = 2112;
      v15 = v7;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 24) = v16;
      v11[1] = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s failed to make Prescription for sample %@; error: %@", v10, 0x20u);
      sub_100002BE4(&unk_100169C20, &unk_10010D6B0);
      swift_arrayDestroy();

      sub_1000052E4(v31);
    }

    else
    {
    }

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v17 = v5;
    if (qword_100168E88 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006B0C(v18, qword_1001820C0);
    v19 = v4;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v32 = v17;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v22 = 136315394;
      v24 = _typeName(_:qualified:)();
      v26 = a2;
      v27 = sub_100006B44(v24, v25, &v33);

      *(v22 + 4) = v27;
      a2 = v26;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v23 = v19;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s returning prescription for sample %@", v22, 0x16u);
      sub_1000077E0(v23);

      sub_1000052E4(v30);

      v17 = v32;
    }

    *a2 = v19;
    a2[1] = v17;
    v29 = v19;
  }
}

uint64_t sub_10006AB08()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC17AppleVisionProApp20PrescriptionProvider___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrescriptionProvider()
{
  result = qword_10016D3C0;
  if (!qword_10016D3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006AC08()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10006ACBC()
{
  result = qword_10016D4D0;
  if (!qword_10016D4D0)
  {
    type metadata accessor for PrescriptionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D4D0);
  }

  return result;
}

unint64_t sub_10006AD30()
{
  result = qword_10016D520;
  if (!qword_10016D520)
  {
    sub_10000459C(&qword_10016D518, &qword_100113930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D520);
  }

  return result;
}

uint64_t sub_10006ADB8(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016A578, &qword_10010F540);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000C178(a1, &v6 - v4, &qword_10016A578, &qword_10010F540);
  return EnvironmentValues.horizontalSizeClass.setter();
}

void sub_10006AE60()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x495645445F4C4C41;
  v1._object = 0xEB00000000534543;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_10016D528 = v4;
}

uint64_t sub_10006AF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = type metadata accessor for ContentMarginPlacement();
  v122 = *(v3 - 8);
  v123 = v3;
  v4 = *(v122 + 64);
  __chkstk_darwin(v3);
  v121 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DeviceTab(0);
  v7 = v6 - 8;
  v107 = *(v6 - 8);
  v8 = *(v107 + 64);
  __chkstk_darwin(v6);
  v127 = v9;
  v109 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_100002BE4(&qword_10016D658, &qword_100113A30);
  v105 = *(v106 - 8);
  v10 = *(v105 + 64);
  __chkstk_darwin(v106);
  v104 = &v96 - v11;
  v108 = sub_100002BE4(&qword_10016D638, &qword_100113A18);
  v12 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v128 = &v96 - v13;
  v112 = sub_100002BE4(&qword_10016D698, &unk_100113A58);
  v111 = *(v112 - 8);
  v14 = *(v111 + 64);
  __chkstk_darwin(v112);
  v110 = &v96 - v15;
  v114 = sub_100002BE4(&qword_10016D620, &qword_100113A08);
  v16 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v113 = &v96 - v17;
  v117 = sub_100002BE4(&qword_10016D618, &qword_100113A00);
  v116 = *(v117 - 8);
  v18 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = &v96 - v19;
  v120 = sub_100002BE4(&qword_10016D610, &qword_1001139F8);
  v119 = *(v120 - 8);
  v20 = *(v119 + 64);
  __chkstk_darwin(v120);
  v118 = &v96 - v21;
  v22 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v103 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v96 - v26;
  v28 = type metadata accessor for Device();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v97 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v131 = &v96 - v33;
  v132 = a1;
  v34 = (a1 + *(v7 + 44));
  v35 = *v34;
  if (*v34)
  {
    v36 = *(v35 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider);
    v37 = *(v35 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_prescriptionProvider);
    v38 = *(v35 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_softwareUpdateProvider);
    v39 = *(v35 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_tipProvider);
    swift_getKeyPath();
    v40 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider___observationRegistrar;
    v134 = v36;
    v41 = sub_100073638(&qword_10016AFE0, type metadata accessor for DeviceProvider);

    v130 = v37;

    v129 = v38;

    v133 = v39;

    v102 = v40;
    v101 = v41;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
    swift_beginAccess();
    v100 = v42;
    sub_10000C178(v36 + v42, v27, &qword_10016B010, &qword_100110020);
    v43 = *(v29 + 48);
    v44 = v43(v27, 1, v28);
    v125 = v29;
    v126 = v28;
    v99 = v29 + 48;
    v98 = v43;
    if (v44 == 1)
    {
      v45 = v131;
      sub_10006BF28();
      v46 = (v43)(v27, 1, v28);
      if (v46 != 1)
      {
        v46 = sub_100009908(v27, &qword_10016B010, &qword_100110020);
      }
    }

    else
    {
      v45 = v131;
      v46 = (*(v29 + 32))(v131, v27, v28);
    }

    __chkstk_darwin(v46);
    v47 = v132;
    v48 = v133;
    *(&v96 - 6) = v132;
    *(&v96 - 5) = v36;
    v92 = v45;
    v93 = v129;
    static Axis.Set.vertical.getter();
    sub_100002BE4(&qword_10016D6A0, &qword_100113A90);
    sub_100012C48(&qword_10016D6A8, &qword_10016D6A0, &qword_100113A90);
    v49 = v104;
    v50 = ScrollView.init(_:showsIndicators:content:)();
    __chkstk_darwin(v50);
    v94 = v36;
    v95 = v47;
    sub_100002BE4(&qword_10016D660, &unk_100113A38);
    sub_100012C48(&qword_10016D668, &qword_10016D658, &qword_100113A30);
    sub_100012C48(&qword_10016D670, &qword_10016D660, &unk_100113A38);
    v51 = v128;
    v52 = v106;
    View.toolbar<A>(content:)();
    (*(v105 + 8))(v49, v52);
    v53 = &v51[*(sub_100002BE4(&qword_10016D650, &qword_100113A28) + 36)];
    *v53 = 0x6C6C6F726373;
    *(v53 + 1) = 0xE600000000000000;
    v54 = v109;
    sub_100072210(v47, v109);
    v55 = *(v107 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v48;
    sub_100072D28(v54, v56 + ((v55 + 24) & ~v55), type metadata accessor for DeviceTab);
    v57 = &v51[*(v108 + 36)];
    *v57 = sub_10007243C;
    v57[1] = v56;
    v57[2] = 0;
    v57[3] = 0;
    swift_getKeyPath();
    v134 = v36;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = v103;
    sub_10000C178(v36 + v100, v103, &qword_10016B010, &qword_100110020);
    v59 = v126;
    if (v98(v58, 1, v126))
    {
      sub_100009908(v58, &qword_10016B010, &qword_100110020);
      v60 = 0;
      v61 = 0;
    }

    else
    {
      v62 = v125;
      v63 = v97;
      (*(v125 + 16))(v97, v58, v59);
      sub_100009908(v58, &qword_10016B010, &qword_100110020);
      v60 = Device.productType.getter();
      v61 = v64;
      (*(v62 + 8))(v63, v59);
    }

    v134 = v60;
    v135 = v61;
    v65 = v132;
    sub_100072210(v132, v54);
    v66 = swift_allocObject();
    sub_100072D28(v54, v66 + ((v55 + 16) & ~v55), type metadata accessor for DeviceTab);
    sub_100002BE4(&qword_10016B278, &qword_100113A20);
    sub_100071CF8();
    sub_100071F0C();
    v67 = v110;
    v68 = v128;
    View.onChange<A>(of:initial:_:)();

    sub_100009908(v68, &qword_10016D638, &qword_100113A18);
    v69 = swift_allocObject();
    v70 = v133;
    *(v69 + 16) = sub_100072524;
    *(v69 + 24) = v70;
    v71 = v114;
    v72 = v113;
    v73 = &v113[*(v114 + 36)];
    v74 = enum case for ScenePhase.active(_:);
    v75 = type metadata accessor for ScenePhase();
    (*(*(v75 - 8) + 104))(v73, v74, v75);
    v76 = &v73[*(type metadata accessor for ScenePhaseViewModifier(0) + 20)];
    *v76 = &unk_100113AA0;
    *(v76 + 1) = v69;
    (*(v111 + 32))(v72, v67, v112);
    v77 = *(v65 + 8);
    v138 = *v65;
    v139 = v77;

    sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
    State.projectedValue.getter();

    v78 = sub_100002BE4(&qword_10016D628, &qword_100113A10);
    v79 = sub_100071BD4();
    v80 = sub_100071F88();
    v93 = v79;
    v94 = v80;
    v92 = v78;
    v81 = v115;
    View.sheet<A>(isPresented:onDismiss:content:)();

    sub_100009908(v72, &qword_10016D620, &qword_100113A08);
    static Edge.Set.bottom.getter();
    v82 = v121;
    static ContentMarginPlacement.automatic.getter();
    v134 = v71;
    v135 = v78;
    v136 = v79;
    v137 = v80;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v84 = v118;
    v85 = v117;
    View.contentMargins(_:_:for:)();
    (*(v122 + 8))(v82, v123);
    (*(v116 + 8))(v81, v85);
    sub_100002BE4(&qword_10016D6B0, &qword_100113AB0);
    v86 = *(type metadata accessor for ToolbarPlacement() - 8);
    v87 = *(v86 + 72);
    v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    *(swift_allocObject() + 16) = xmmword_10010D3B0;
    static ToolbarPlacement.navigationBar.getter();
    v134 = v85;
    v135 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v89 = v120;
    View.toolbar(_:for:)();

    (*(v119 + 8))(v84, v89);
    return (*(v125 + 8))(v131, v126);
  }

  else
  {
    v91 = v34[1];
    type metadata accessor for AppDelegate();
    sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006BF28()
{
  v0 = type metadata accessor for Device.Source();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v12._object = 0xE000000000000000;
  v4._object = 0x800000010011D950;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v12);

  v7 = [v2 mainBundle];
  v13._object = 0xE000000000000000;
  v8._object = 0x800000010011D950;
  v8._countAndFlagsBits = 0xD000000000000010;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v13);

  static Device.Source.localDevice.getter();
  return Device.init(name:serialNumber:buildNumber:productType:productName:osVersion:source:)();
}

uint64_t sub_10006C108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = static HorizontalAlignment.center.getter();
  *(a7 + 8) = 0x4038000000000000;
  *(a7 + 16) = 0;
  v14 = sub_100002BE4(&qword_10016D748, &unk_100113BE8);
  return sub_10006C1A0(a1, a2, a3, a4, a5, a6, (a7 + *(v14 + 44)));
}

uint64_t sub_10006C1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v260 = a6;
  v266 = a5;
  v277 = a4;
  v271 = a3;
  v296 = a1;
  v263 = a7;
  v247 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  v9 = *(*(v247 - 8) + 64);
  v10 = __chkstk_darwin(v247);
  v246 = &v234 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v245 = &v234 - v12;
  v244 = type metadata accessor for PrescriptionCarouselView();
  v13 = *(*(v244 - 8) + 64);
  __chkstk_darwin(v244);
  v251 = (&v234 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v250 = sub_100002BE4(&qword_10016D750, &qword_100113BF8);
  v15 = *(*(v250 - 8) + 64);
  v16 = __chkstk_darwin(v250);
  v248 = &v234 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v249 = &v234 - v18;
  v265 = sub_100002BE4(&qword_10016D758, &qword_100113C00);
  v262 = *(v265 - 8);
  v19 = *(v262 + 64);
  __chkstk_darwin(v265);
  v261 = &v234 - v20;
  v21 = sub_100002BE4(&qword_10016D760, &qword_100113C08);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v285 = &v234 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v290 = &v234 - v25;
  v267 = type metadata accessor for VisionCompanionFeatures();
  v286 = *(v267 - 8);
  v26 = *(v286 + 64);
  __chkstk_darwin(v267);
  v264 = &v234 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SoftwareUpdateView();
  v29 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated - 8);
  v287 = &v234 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_100002BE4(&qword_10016D768, &qword_100113C10);
  v31 = *(*(v238 - 8) + 64);
  v32 = __chkstk_darwin(v238);
  v236 = &v234 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v237 = &v234 - v34;
  v35 = sub_100002BE4(&qword_10016D770, &qword_100113C18);
  v275 = *(v35 - 8);
  v276 = v35;
  v36 = *(v275 + 64);
  __chkstk_darwin(v35);
  v235 = (&v234 - v37);
  v38 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v272 = &v234 - v40;
  v278 = type metadata accessor for SoftwareUpdateInfo();
  v274 = *(v278 - 8);
  v41 = *(v274 + 64);
  __chkstk_darwin(v278);
  v273 = &v234 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100002BE4(&qword_10016D780, &qword_100113C28);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43 - 8);
  v284 = &v234 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v295 = &v234 - v47;
  v48 = type metadata accessor for MobileGestaltCoordinator();
  v293 = *(v48 - 8);
  v294 = v48;
  v49 = *(v293 + 64);
  __chkstk_darwin(v48);
  v292 = &v234 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DeviceInfoView();
  v52 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51 - 8);
  v243 = &v234 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_100002BE4(&qword_10016D788, &qword_100113C30);
  v54 = *(*(v242 - 8) + 64);
  v55 = __chkstk_darwin(v242);
  v240 = &v234 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v241 = &v234 - v57;
  v58 = sub_100002BE4(&qword_10016D790, &qword_100113C38);
  *&v270 = *(v58 - 8);
  *(&v270 + 1) = v58;
  v59 = *(v270 + 64);
  __chkstk_darwin(v58);
  v239 = (&v234 - v60);
  v268 = type metadata accessor for Device();
  v255 = *(v268 - 8);
  v61 = *(v255 + 64);
  __chkstk_darwin(v268);
  v269 = &v234 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100002BE4(&qword_10016D798, &qword_100113C40);
  v64 = *(*(v63 - 8) + 64);
  v65 = __chkstk_darwin(v63 - 8);
  v283 = &v234 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v289 = &v234 - v67;
  v68 = sub_100002BE4(&qword_10016D7A0, &qword_100113C48);
  v69 = *(v68 - 8);
  v253 = v68 - 8;
  v70 = *(v69 + 64);
  v71 = __chkstk_darwin(v68 - 8);
  v282 = &v234 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v288 = (&v234 - v73);
  v74 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v75 = *(*(v74 - 8) + 64);
  v76 = __chkstk_darwin(v74 - 8);
  v254 = &v234 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v79 = &v234 - v78;
  v80 = sub_100002BE4(&qword_10016D7A8, &qword_100113C50);
  v81 = *(v80 - 8);
  v279 = (v80 - 8);
  v82 = *(v81 + 64);
  v83 = __chkstk_darwin(v80 - 8);
  v281 = &v234 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v86 = &v234 - v85;
  v291 = type metadata accessor for DeviceTab(0);
  v87 = *(v291 - 8);
  v88 = *(v87 + 64);
  __chkstk_darwin(v291);
  sub_100072210(a1, &v234 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v280 = swift_allocObject();
  sub_100072D28(&v234 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0), v280 + v89, type metadata accessor for DeviceTab);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v258 = v343;
  v259 = v341;
  v256 = v346;
  v257 = v345;
  v348 = v342;
  v347 = v344;
  swift_getKeyPath();
  v90 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider___observationRegistrar;
  *&v332 = a2;
  sub_100073638(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  v252 = v90;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v91 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  sub_10000C178(a2 + v91, v79, &qword_10016B010, &qword_100110020);
  v92 = v296;
  sub_10006E504(v79, v86);
  v93 = v79;
  v94 = v92;
  sub_100009908(v93, &qword_10016B010, &qword_100110020);
  swift_getKeyPath();
  *&v332 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v95 = &v86[*(sub_100002BE4(&qword_10016D7B0, &qword_100113C58) + 36)];
  sub_10000C178(a2 + v91, v95, &qword_10016B010, &qword_100110020);
  v96 = sub_100002BE4(&qword_10016D7B8, &qword_100113C60);
  *(v95 + v96[7]) = 0x4059000000000000;
  *(v95 + v96[8]) = 0x4000000000000000;
  v97 = (v95 + v96[9]);
  *v97 = static FeatureEligibilityState.airplayReceiverBackgroundDiscoveryEligible.getter;
  v97[1] = 0;
  LOBYTE(v302) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v95) = v332;
  v98 = *(&v332 + 1);
  v99 = &v86[*(sub_100002BE4(&qword_10016D7C0, &qword_100113C68) + 36)];
  *v99 = v95;
  *(v99 + 1) = v98;
  v100 = *(v279 + 11);
  v279 = v86;
  *&v86[v100] = 0x3FF0000000000000;
  v101 = v288;
  *v288 = 0;
  v101[1] = 0;
  *(v101 + 16) = 1;
  v102 = v253;
  v103 = v101 + *(v253 + 48);
  v104 = v101;
  *v103 = static HorizontalAlignment.center.getter();
  *(v103 + 1) = 0;
  v103[16] = 1;
  v105 = sub_100002BE4(&qword_10016D7C8, &qword_100113C70);
  sub_10006F10C(v271, v94, a2, &v103[*(v105 + 44)]);
  *(v104 + *(v102 + 52)) = 0x4024000000000000;
  swift_getKeyPath();
  *&v332 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v106 = v254;

  sub_10000C178(a2 + v91, v106, &qword_10016B010, &qword_100110020);
  v107 = v255;
  v108 = v268;
  if ((*(v255 + 48))(v106, 1) == 1)
  {
    sub_100009908(v106, &qword_10016B010, &qword_100110020);
    v109 = 1;
    v110 = v289;
    v111 = v273;
    v112 = *(&v270 + 1);
  }

  else
  {
    v113 = v269;
    (*(v107 + 32))(v269, v106, v108);
    v114 = v239;
    *v239 = 0;
    *(v114 + 8) = 0;
    *(v114 + 16) = 0;
    v115 = v243;
    (*(v107 + 16))(v243, v113, v108);
    v116 = (v94 + *(v291 + 36));
    v117 = *v116;
    if (!*v116)
    {
      goto LABEL_28;
    }

    v118 = sub_100002BE4(&qword_10016D810, &qword_100113D48);
    v271 = *(v118 + 40);
    v120 = v292;
    v119 = v293;
    v121 = v294;
    (*(v293 + 16))(v292, v117 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v294);
    v122 = MobileGestaltCoordinator.isPadDevice.getter();
    (*(v119 + 8))(v120, v121);
    (*(v107 + 8))(v269, v108);
    v123 = v240;
    sub_100072D28(v115, v240, type metadata accessor for DeviceInfoView);
    v124 = (v123 + *(v242 + 36));
    *v124 = v122 & 1;
    v124[1] = 1;
    v125 = v123;
    v126 = v241;
    sub_10001D504(v125, v241, &qword_10016D788, &qword_100113C30);
    sub_10001D504(v126, v114 + v271, &qword_10016D788, &qword_100113C30);
    *(v114 + *(v118 + 44)) = 0x4024000000000000;
    v112 = *(&v270 + 1);
    *(v114 + *(*(&v270 + 1) + 36)) = 0xBFF0000000000000;
    v110 = v289;
    sub_10001D504(v114, v289, &qword_10016D790, &qword_100113C38);
    v109 = 0;
    v111 = v273;
  }

  (*(v270 + 56))(v110, v109, 1, v112);
  swift_getKeyPath();
  v127 = v277;
  *&v332 = v277;
  sub_100073638(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v128 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo;
  swift_beginAccess();
  v129 = v272;
  sub_10000C178(v127 + v128, v272, &qword_10016D778, &qword_100113C20);
  v130 = v274;
  v131 = v278;
  v132 = (*(v274 + 48))(v129, 1, v278);
  v133 = v287;
  if (v132 == 1)
  {
    sub_100009908(v129, &qword_10016D778, &qword_100113C20);
LABEL_11:
    v150 = 1;
    v149 = v276;
LABEL_12:
    (*(v275 + 56))(v295, v150, 1, v149);
    v151 = enum case for VisionCompanionFeatures.airPlayReceiver(_:);
    v152 = v286;
    v153 = v264;
    v154 = v267;
    v255 = *(v286 + 104);
    (v255)(v264, enum case for VisionCompanionFeatures.airPlayReceiver(_:), v267);
    v155 = VisionCompanionFeatures.isEnabled.getter();
    v156 = *(v152 + 8);
    v286 = v152 + 8;
    v156(v153, v154);
    if (v155)
    {
      v332 = 0uLL;
      LOBYTE(v333) = 0;
      sub_10006F554(v296, &v334);
      v277 = *(&v332 + 1);
      v278 = v332;
      v275 = v334;
      v276 = v333;
      v273 = v336;
      v274 = v335;
      v271 = v338;
      v272 = v337;
      v287 = 0xC008000000000000;
      *&v270 = v339;
      *(&v270 + 1) = 0x4024000000000000;
    }

    else
    {
      v277 = 0;
      v278 = 0;
      v275 = 0;
      v276 = 0;
      v273 = 0;
      v274 = 0;
      v271 = 0;
      v272 = 0;
      v270 = 0uLL;
      v287 = 0;
    }

    swift_getKeyPath();
    v157 = v266;
    *&v332 = v266;
    sub_100073638(&qword_10016D7D8, type metadata accessor for TipProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v158 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips;
    swift_beginAccess();
    if (*(*(v157 + v158) + 16))
    {
      swift_getKeyPath();
      *&v332 = v157;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v159 = *(v157 + v158);
      v160 = *(v157 + OBJC_IVAR____TtC17AppleVisionProApp11TipProvider_pabProvider);
      v161 = (v296 + *(v291 + 36));
      if (!*v161)
      {
        v232 = v161[1];
        type metadata accessor for AppDelegate();
        sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate);

        EnvironmentObject.error()();
        __break(1u);
        goto LABEL_30;
      }

      v162 = v292;
      v163 = v293;
      v164 = v294;
      (*(v293 + 16))(v292, *v161 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v294);
      v269 = v159;

      v268 = v160;

      v165 = MobileGestaltCoordinator.isPadDevice.getter();
      (*(v163 + 8))(v162, v164);
      v166 = v264;
      v167 = v151;
      v168 = v267;
      (v255)(v264, v167, v267);
      LOBYTE(v162) = VisionCompanionFeatures.isEnabled.getter();
      v156(v166, v168);
      v169 = 0xC008000000000000;
      if (v162)
      {
        v169 = 0xC010000000000000;
      }

      v286 = v169;
      v264 = v165 & 1;
      v267 = 0x4024000000000000;
      v255 = 256;
    }

    else
    {
      v268 = 0;
      v269 = 0;
      v267 = 0;
      v286 = 0;
      v264 = 0;
      v255 = 0;
    }

    v170 = v260;
    v171 = v261;
    swift_getKeyPath();
    *&v332 = v170;
    sub_100073638(&qword_10016D4D0, type metadata accessor for PrescriptionProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v172 = v265;
    if (!*(*(v170 + 16) + 16))
    {
      v191 = 1;
      v190 = v290;
      goto LABEL_25;
    }

    *v171 = 0;
    *(v171 + 8) = 0;
    *(v171 + 16) = 0;
    swift_getKeyPath();
    *&v332 = v170;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v173 = v251;
    *v251 = *(v170 + 16);
    v174 = v244;
    v175 = *(v244 + 20);
    v176 = type metadata accessor for UUID();
    v177 = v245;
    (*(*(v176 - 8) + 56))(v245, 1, 1, v176);
    sub_10000C178(v177, v246, &unk_10016F2E0, qword_100113590);

    State.init(wrappedValue:)();
    v178 = v173;
    sub_100009908(v177, &unk_10016F2E0, qword_100113590);
    v179 = *(v174 + 24);
    *&v302 = 0;
    State.init(wrappedValue:)();
    *(v173 + v179) = v332;
    v180 = (v296 + *(v291 + 36));
    if (*v180)
    {
      v172 = v265;
      v181 = *(v265 + 40);
      v183 = v292;
      v182 = v293;
      v184 = v294;
      (*(v293 + 16))(v292, *v180 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v294);
      v185 = MobileGestaltCoordinator.isPadDevice.getter();
      (*(v182 + 8))(v183, v184);
      v186 = v248;
      sub_100072D28(v178, v248, type metadata accessor for PrescriptionCarouselView);
      v187 = (v186 + *(v250 + 36));
      *v187 = v185 & 1;
      v187[1] = 0;
      v188 = v186;
      v189 = v249;
      sub_10001D504(v188, v249, &qword_10016D750, &qword_100113BF8);
      sub_10001D504(v189, v171 + v181, &qword_10016D750, &qword_100113BF8);
      *(v171 + *(v172 + 44)) = 0x4024000000000000;
      v190 = v290;
      sub_10001D504(v171, v290, &qword_10016D758, &qword_100113C00);
      v191 = 0;
      v157 = v266;
LABEL_25:
      v192 = v296;
      (*(v262 + 56))(v190, v191, 1, v172);
      type metadata accessor for AppDelegate();
      sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate);
      v260 = EnvironmentObject.init()();
      v265 = v193;
      LOBYTE(v302) = 0;
      State.init(wrappedValue:)();
      LODWORD(v261) = v332;
      v262 = *(&v332 + 1);
      *&v302 = 0;
      *(&v302 + 1) = 0xE000000000000000;
      State.init(wrappedValue:)();
      v194 = (v192 + *(v291 + 36));
      v195 = *v194;
      if (*v194)
      {
        v296 = *(&v332 + 1);
        v254 = v332;
        v291 = v333;
        v197 = v292;
        v196 = v293;
        v198 = v294;
        (*(v293 + 16))(v292, v195 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v294);
        v199 = v157;

        v200 = MobileGestaltCoordinator.isPadDevice.getter();
        (*(v196 + 8))(v197, v198);
        LODWORD(v294) = v200 & 1;
        v201 = v348;
        LOBYTE(v198) = v347;
        v202 = v281;
        sub_10000C178(v279, v281, &qword_10016D7A8, &qword_100113C50);
        v203 = v282;
        sub_10000C178(v288, v282, &qword_10016D7A0, &qword_100113C48);
        v204 = v283;
        sub_10000C178(v289, v283, &qword_10016D798, &qword_100113C40);
        v205 = v284;
        sub_10000C178(v295, v284, &qword_10016D780, &qword_100113C28);
        v206 = v255 | v264;
        v293 = v255 | v264;
        v207 = v285;
        sub_10000C178(v290, v285, &qword_10016D760, &qword_100113C08);
        *&v298 = sub_100072C90;
        *(&v298 + 1) = v280;
        *&v299 = v259;
        BYTE8(v299) = v201;
        *&v300 = v258;
        BYTE8(v300) = v198;
        *&v301 = v257;
        *(&v301 + 1) = v256;
        v208 = v299;
        v209 = v263;
        *v263 = v298;
        v209[1] = v208;
        v210 = v301;
        v209[2] = v300;
        v209[3] = v210;
        v211 = sub_100002BE4(&qword_10016D7E0, &qword_100113CF0);
        sub_10000C178(v202, v209 + v211[12], &qword_10016D7A8, &qword_100113C50);
        sub_10000C178(v203, v209 + v211[16], &qword_10016D7A0, &qword_100113C48);
        sub_10000C178(v204, v209 + v211[20], &qword_10016D798, &qword_100113C40);
        sub_10000C178(v205, v209 + v211[24], &qword_10016D780, &qword_100113C28);
        v212 = v209 + v211[28];
        *&v302 = v278;
        *(&v302 + 1) = v277;
        *&v303 = v276;
        *(&v303 + 1) = v275;
        *&v304 = v274;
        *(&v304 + 1) = v273;
        *&v305 = v272;
        *(&v305 + 1) = v271;
        v306 = v270;
        v213 = v305;
        *(v212 + 2) = v304;
        *(v212 + 3) = v213;
        *(v212 + 4) = v306;
        v214 = v287;
        *(v212 + 10) = v287;
        v215 = v303;
        *v212 = v302;
        *(v212 + 1) = v215;
        v216 = (v209 + v211[32]);
        v307 = v214;
        v308[0] = 0;
        v308[1] = 0;
        *&v309 = 0;
        *(&v309 + 1) = v269;
        *&v310 = v268;
        *(&v310 + 1) = v206;
        *&v311 = v267;
        *(&v311 + 1) = v286;
        v217 = v309;
        v218 = v310;
        *v216 = 0u;
        v216[1] = v217;
        v219 = v311;
        v216[2] = v218;
        v216[3] = v219;
        sub_10000C178(v207, v209 + v211[36], &qword_10016D760, &qword_100113C08);
        v220 = v209 + v211[40];
        v221 = v260;
        *&v312 = v199;
        *(&v312 + 1) = v260;
        v222 = v265;
        *&v313 = v265;
        LOBYTE(v205) = v261;
        BYTE8(v313) = v261;
        *(&v313 + 9) = *v297;
        HIDWORD(v313) = *&v297[3];
        v223 = v262;
        v224 = v254;
        *&v314 = v262;
        *(&v314 + 1) = v254;
        *&v315 = v296;
        *(&v315 + 1) = v291;
        LOBYTE(v316) = v294;
        HIBYTE(v316) = 1;
        v225 = v312;
        v226 = v313;
        v227 = v314;
        v228 = v315;
        *(v220 + 32) = v316;
        *(v220 + 2) = v227;
        *(v220 + 3) = v228;
        *v220 = v225;
        *(v220 + 1) = v226;
        sub_10000C178(&v298, &v332, &qword_10016D7E8, &qword_100113CF8);
        sub_10000C178(&v302, &v332, &qword_10016D7F0, &qword_100113D00);
        sub_10000C178(v308, &v332, &qword_10016D7F8, &qword_100113D08);
        sub_10000C178(&v312, &v332, &qword_10016D800, &qword_100113D10);
        sub_100009908(v290, &qword_10016D760, &qword_100113C08);
        sub_100009908(v295, &qword_10016D780, &qword_100113C28);
        sub_100009908(v289, &qword_10016D798, &qword_100113C40);
        sub_100009908(v288, &qword_10016D7A0, &qword_100113C48);
        sub_100009908(v279, &qword_10016D7A8, &qword_100113C50);
        v317[0] = v199;
        v317[1] = v221;
        v317[2] = v222;
        v318 = v205;
        *v319 = *v297;
        *&v319[3] = *&v297[3];
        v320 = v223;
        v321 = v224;
        v322 = v296;
        v323 = v291;
        v324 = v294;
        v325 = 1;
        sub_100009908(v317, &qword_10016D800, &qword_100113D10);
        sub_100009908(v285, &qword_10016D760, &qword_100113C08);
        memset(v326, 0, sizeof(v326));
        v327 = v269;
        v328 = v268;
        v329 = v293;
        v330 = v267;
        v331 = v286;
        sub_100009908(v326, &qword_10016D7F8, &qword_100113D08);
        *&v332 = v278;
        *(&v332 + 1) = v277;
        v333 = v276;
        v334 = v275;
        v335 = v274;
        v336 = v273;
        v337 = v272;
        v338 = v271;
        v339 = v270;
        v340 = v287;
        sub_100009908(&v332, &qword_10016D7F0, &qword_100113D00);
        sub_100009908(v284, &qword_10016D780, &qword_100113C28);
        sub_100009908(v283, &qword_10016D798, &qword_100113C40);
        sub_100009908(v282, &qword_10016D7A0, &qword_100113C48);
        sub_100009908(v281, &qword_10016D7A8, &qword_100113C50);
      }

      v230 = v194[1];

      EnvironmentObject.error()();
      __break(1u);
      goto LABEL_28;
    }

LABEL_30:
    v233 = v180[1];
    goto LABEL_31;
  }

  (*(v130 + 32))(v111, v129, v131);
  swift_getKeyPath();
  *&v332 = v127;
  v134 = v111;
  v135 = v130;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v127 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber + 8))
  {
    (*(v130 + 8))(v134, v131);
    goto LABEL_11;
  }

  v136 = v235;
  *v235 = 0;
  *(v136 + 8) = 0;
  *(v136 + 16) = 0;
  (*(v130 + 16))(v133, v134, v131);
  v116 = (v296 + *(v291 + 36));
  v137 = *v116;
  if (*v116)
  {
    v138 = sub_100002BE4(&qword_10016D808, &qword_100113D40);
    v139 = *(v138 + 40);
    v141 = v292;
    v140 = v293;
    v142 = v294;
    (*(v293 + 16))(v292, v137 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v294);
    v143 = MobileGestaltCoordinator.isPadDevice.getter();
    (*(v140 + 8))(v141, v142);
    (*(v135 + 8))(v134, v278);
    v144 = v236;
    sub_100072D28(v287, v236, type metadata accessor for SoftwareUpdateView);
    v145 = (v144 + *(v238 + 36));
    *v145 = v143 & 1;
    v145[1] = 1;
    v146 = v144;
    v147 = v237;
    sub_10001D504(v146, v237, &qword_10016D768, &qword_100113C10);
    sub_10001D504(v147, v136 + v139, &qword_10016D768, &qword_100113C10);
    *(v136 + *(v138 + 44)) = 0x4024000000000000;
    v148 = v276;
    *(v136 + *(v276 + 36)) = 0xC000000000000000;
    sub_10001D504(v136, v295, &qword_10016D770, &qword_100113C18);
    v149 = v148;
    v150 = 0;
    goto LABEL_12;
  }

LABEL_28:
  v231 = v116[1];
LABEL_31:
  type metadata accessor for AppDelegate();
  sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10006E214(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceTab(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for GlobalCoordinateSpace();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  v19 = fmax(fmin(CGRectGetMinY(v24) / -500.0, 4.0), -4.0);
  v23[1] = static Color.clear.getter();
  *v23 = v19;
  sub_100072210(a2, v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_100072D28(v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for DeviceTab);
  View.onChange<A>(of:initial:_:)();
}

uint64_t sub_10006E490(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  sub_100002BE4(&qword_10016D830, &qword_100113DB8);
  State.wrappedValue.getter();
  sub_10003F3BC(v3, 0.005);
}

uint64_t sub_10006E504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v131 = type metadata accessor for AutomationSemantics();
  v129 = *(v131 - 8);
  v4 = *(v129 + 64);
  __chkstk_darwin(v131);
  v128 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for MobileGestaltCoordinator();
  v136 = *(v120 - 8);
  v6 = *(v136 + 64);
  __chkstk_darwin(v120);
  v119 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100002BE4(&qword_10016D840, &qword_100113DC8);
  v13 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v132 = &KeyPath - v14;
  v122 = sub_100002BE4(&qword_10016D848, &qword_100113DD0);
  v15 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v124 = &KeyPath - v16;
  v123 = sub_100002BE4(&qword_10016D850, &qword_100113DD8);
  v17 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v125 = &KeyPath - v18;
  v126 = sub_100002BE4(&qword_10016D858, &qword_100113DE0);
  v19 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v127 = &KeyPath - v20;
  v21 = v2;
  *&v141 = sub_100071058(a1);
  *(&v141 + 1) = v22;
  static CharacterSet.illegalCharacters.getter();
  sub_100012928();
  v23 = StringProtocol.trimmingCharacters(in:)();
  v25 = v24;
  v26 = *(v9 + 8);
  v26(v12, v8);

  *&v141 = v23;
  *(&v141 + 1) = v25;
  static CharacterSet.whitespacesAndNewlines.getter();
  v27 = StringProtocol.trimmingCharacters(in:)();
  v29 = v28;
  v26(v12, v8);

  *&v141 = v27;
  *(&v141 + 1) = v29;
  v138[0] = 95;
  v138[1] = 0xE100000000000000;
  v137[0] = 32;
  v137[1] = 0xE100000000000000;
  v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v32 = v31;

  *&v141 = v30;
  *(&v141 + 1) = v32;
  v138[0] = 45;
  v138[1] = 0xE100000000000000;
  v137[0] = 32;
  v137[1] = 0xE100000000000000;
  v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v35 = v34;

  *&v141 = v33;
  *(&v141 + 1) = v35;
  v36 = Text.init<A>(_:)();
  v38 = v37;
  LOBYTE(v35) = v39;
  static Font.largeTitle.getter();
  v40 = Text.font(_:)();
  v42 = v41;
  v44 = v43;

  sub_10001297C(v36, v38, v35 & 1);

  static Font.Weight.bold.getter();
  v45 = Text.fontWeight(_:)();
  v47 = v46;
  v49 = v48;
  sub_10001297C(v40, v42, v44 & 1);

  v50 = (v21 + *(type metadata accessor for DeviceTab(0) + 36));
  if (*v50)
  {
    v51 = v136;
    v52 = *(v136 + 16);
    v53 = *v50;
    v54 = *v50 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator;
    v55 = v119;
    v56 = v120;
    v135 = v136 + 16;
    v134 = v52;
    v52(v119, v54, v120);
    v57 = MobileGestaltCoordinator.isPadDevice.getter();
    v58 = *(v51 + 8);
    v59 = v56;
    v136 = v51 + 8;
    v133 = v58;
    v58(v55, v56);
    if (v57)
    {
      v60 = static HierarchicalShapeStyle.secondary.getter();
    }

    else
    {
      v60 = static HierarchicalShapeStyle.primary.getter();
    }

    LODWORD(v141) = v60;
    v118 = Text.foregroundStyle<A>(_:)();
    v117 = v61;
    v63 = v62;
    v116 = v64;
    sub_10001297C(v45, v47, v49 & 1);

    v115 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator;
    v65 = v53;
    v134(v55, v53 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v59);
    v66 = v55;
    v67 = MobileGestaltCoordinator.isPadDevice.getter();
    v133(v66, v59);
    v114 = v67 & 1;
    KeyPath = swift_getKeyPath();
    v68 = swift_getKeyPath();
    v63 &= 1u;
    v140 = v63;
    v139 = 0;
    v69 = v132;
    v70 = (v132 + *(v121 + 36));
    v71 = *(sub_100002BE4(&qword_10016D860, &qword_100113E48) + 28);
    v72 = enum case for Text.TruncationMode.tail(_:);
    v73 = type metadata accessor for Text.TruncationMode();
    v74 = v72;
    v75 = v59;
    v76 = v65;
    (*(*(v73 - 8) + 104))(v70 + v71, v74, v73);
    *v70 = swift_getKeyPath();
    v77 = v117;
    *v69 = v118;
    *(v69 + 8) = v77;
    *(v69 + 16) = v63;
    v78 = KeyPath;
    *(v69 + 24) = v116;
    *(v69 + 32) = v78;
    *(v69 + 40) = v114;
    *(v69 + 48) = v68;
    *(v69 + 56) = 3;
    *(v69 + 64) = 0;
    v79 = v66;
    v80 = v115;
    v81 = v134;
    v134(v79, v65 + v115, v75);
    MobileGestaltCoordinator.isPadDevice.getter();
    v82 = v133;
    v133(v79, v75);
    v81(v79, v65 + v80, v75);
    LOBYTE(v81) = MobileGestaltCoordinator.isPadDevice.getter();
    v82(v79, v75);
    if (v81)
    {
      static Alignment.center.getter();
    }

    else
    {
      static Alignment.leading.getter();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v83 = v124;
    sub_10001D504(v132, v124, &qword_10016D840, &qword_100113DC8);
    v84 = (v83 + *(v122 + 36));
    v85 = v146;
    v84[4] = v145;
    v84[5] = v85;
    v84[6] = v147;
    v86 = v142;
    *v84 = v141;
    v84[1] = v86;
    v87 = v144;
    v84[2] = v143;
    v84[3] = v87;
    v88 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v97 = v125;
    sub_10001D504(v83, v125, &qword_10016D848, &qword_100113DD0);
    v98 = v97 + *(v123 + 36);
    *v98 = v88;
    *(v98 + 8) = v90;
    *(v98 + 16) = v92;
    *(v98 + 24) = v94;
    *(v98 + 32) = v96;
    *(v98 + 40) = 0;
    v99 = static Edge.Set.top.getter();
    v134(v79, v76 + v80, v75);
    MobileGestaltCoordinator.isPadDevice.getter();
    v133(v79, v75);
    EdgeInsets.init(_all:)();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v108 = v127;
    sub_10001D504(v97, v127, &qword_10016D850, &qword_100113DD8);
    v109 = v108 + *(v126 + 36);
    *v109 = v99;
    *(v109 + 8) = v101;
    *(v109 + 16) = v103;
    *(v109 + 24) = v105;
    *(v109 + 32) = v107;
    *(v109 + 40) = 0;
    memset(v138, 0, sizeof(v138));
    memset(v137, 0, sizeof(v137));
    v110 = v128;
    static AutomationSemantics.productPage(elementName:id:parentId:)();
    sub_100009908(v137, &qword_100169A38, &qword_10010D460);
    sub_100009908(v138, &qword_100169A38, &qword_10010D460);
    sub_100072F10();
    View.automationSemantics(_:)();
    (*(v129 + 8))(v110, v131);
    return sub_100009908(v108, &qword_10016D858, &qword_100113DE0);
  }

  else
  {
    v112 = v50[1];
    type metadata accessor for AppDelegate();
    sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006F10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v45 = a4;
  v6 = type metadata accessor for DeviceModelConfiguratorView();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016D820, &qword_100113DA8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  v15 = sub_100002BE4(&qword_10016D828, &qword_100113DB0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v39 - v21;
  v23 = type metadata accessor for Device();
  (*(*(v23 - 8) + 16))(v22, a1, v23);
  v24 = *(a2 + 40);
  v46 = *(a2 + 32);
  *&v47 = v24;
  sub_100002BE4(&qword_10016D830, &qword_100113DB8);
  State.wrappedValue.getter();
  v25 = v48;
  v26 = *(a2 + 48);
  v27 = *(a2 + 56);
  v48 = v26;
  v49 = v27;
  sub_100002BE4(&qword_10016D6C0, &qword_100113AF0);
  State.projectedValue.getter();
  v28 = v46;
  v29 = type metadata accessor for DeviceModelSection(0);
  v30 = v47;
  *&v22[v29[5]] = v25;
  v31 = &v22[v29[6]];
  *v31 = v28;
  *(v31 + 8) = v30;
  *&v22[v29[7]] = v41;
  *&v22[*(v16 + 44)] = 0;
  v32 = *(a2 + 24);
  LOBYTE(v46) = *(a2 + 16);
  *&v47 = v32;

  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.getter();
  if (v48 == 1)
  {
    v46 = v26;
    *&v47 = v27;
    State.wrappedValue.getter();
    type metadata accessor for DeviceModelParameters();
    sub_100073638(&qword_10016CC90, type metadata accessor for DeviceModelParameters);
    v33 = v40;
    Bindable<A>.init(wrappedValue:)();
    sub_100072D28(v33, v14, type metadata accessor for DeviceModelConfiguratorView);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  (*(v42 + 56))(v14, v34, 1, v43);
  sub_10000C178(v22, v20, &qword_10016D828, &qword_100113DB0);
  v35 = v44;
  sub_10000C178(v14, v44, &qword_10016D820, &qword_100113DA8);
  v36 = v45;
  sub_10000C178(v20, v45, &qword_10016D828, &qword_100113DB0);
  v37 = sub_100002BE4(&qword_10016D838, &qword_100113DC0);
  sub_10000C178(v35, v36 + *(v37 + 48), &qword_10016D820, &qword_100113DA8);
  sub_100009908(v14, &qword_10016D820, &qword_100113DA8);
  sub_100009908(v22, &qword_10016D828, &qword_100113DB0);
  sub_100009908(v35, &qword_10016D820, &qword_100113DA8);
  return sub_100009908(v20, &qword_10016D828, &qword_100113DB0);
}

uint64_t sub_10006F554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = type metadata accessor for MobileGestaltCoordinator();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DeviceTab(0);
  v8 = (a1 + *(v26 + 40));
  v9 = *v8;
  v10 = v8[1];
  type metadata accessor for SceneDelegate();
  sub_100073638(&qword_10016D538, type metadata accessor for SceneDelegate);
  v11 = EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  v12 = v34;
  v13 = v35;
  v14 = v36;
  swift_getKeyPath();
  v31 = v12;
  v32 = v13;
  v33 = v14;
  sub_100002BE4(&qword_10016D818, &qword_100113DA0);
  Binding.subscript.getter();

  v15 = v29;
  v25 = v30;

  v16 = EnvironmentObject.init()();
  v18 = (v27 + *(v26 + 36));
  if (*v18)
  {
    v19 = v16;
    v20 = v17;
    v21 = v28;
    (*(v4 + 16))(v7, *v18 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v28);
    v22 = MobileGestaltCoordinator.isPadDevice.getter();
    result = (*(v4 + 8))(v7, v21);
    *a2 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v15;
    *(a2 + 24) = v25;
    *(a2 + 40) = v22 & 1;
    *(a2 + 41) = 1;
  }

  else
  {
    v24 = v18[1];
    type metadata accessor for AppDelegate();
    sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006F824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_100002BE4(&qword_10016D6C8, &qword_100113B20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = sub_100002BE4(&qword_10016D6D0, &qword_100113B28);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v48 = &v44 - v12;
  v13 = sub_100002BE4(&qword_10016D6D8, &qword_100113B30);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  __chkstk_darwin(v13);
  v46 = &v44 - v15;
  v16 = sub_100002BE4(&qword_10016D6E0, &qword_100113B38);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v49 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v44 - v20;
  v22 = type metadata accessor for ToolbarItemPlacement();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = sub_100002BE4(&qword_10016D6E8, &qword_100113B40);
  v52 = *(v24 - 8);
  v53 = v24;
  v25 = *(v52 + 64);
  __chkstk_darwin(v24);
  v27 = &v44 - v26;
  static ToolbarItemPlacement.topBarLeading.getter();
  v54 = a1;
  v55 = a2;
  sub_100002BE4(&qword_10016D6F0, &qword_100113B48);
  sub_1000727A4();
  v50 = v27;
  v28 = ToolbarItem<>.init(placement:content:)();
  if (sub_100092298(v28))
  {
    v29 = static ToolbarItemPlacement.topBarTrailing.getter();
    v44 = &v44;
    __chkstk_darwin(v29);
    *(&v44 - 2) = a2;
    v45 = v13;
    sub_100002BE4(&qword_10016D708, &qword_100113B58);
    v30 = v10;
    v31 = v9;
    sub_100012C48(&qword_10016D710, &qword_10016D708, &qword_100113B58);
    v32 = v46;
    ToolbarItem<>.init(placement:content:)();
    v33 = sub_100012C48(&qword_10016D700, &qword_10016D6D8, &qword_100113B30);
    v34 = v48;
    v35 = v45;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v36 = v49;
    (*(v30 + 16))(v49, v34, v31);
    (*(v30 + 56))(v36, 0, 1, v31);
    v56 = v35;
    v57 = v33;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100009908(v36, &qword_10016D6E0, &qword_100113B38);
    (*(v30 + 8))(v34, v31);
    (*(v47 + 8))(v32, v35);
  }

  else
  {
    v37 = v49;
    (*(v10 + 56))(v49, 1, 1, v9);
    v38 = sub_100012C48(&qword_10016D700, &qword_10016D6D8, &qword_100113B30);
    v56 = v13;
    v57 = v38;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100009908(v37, &qword_10016D6E0, &qword_100113B38);
  }

  v39 = *(v5 + 48);
  v41 = v52;
  v40 = v53;
  v42 = v50;
  (*(v52 + 16))(v8, v50, v53);
  sub_10000C178(v21, &v8[v39], &qword_10016D6E0, &qword_100113B38);
  TupleToolbarContent.init(_:)();
  sub_100009908(v21, &qword_10016D6E0, &qword_100113B38);
  return (*(v41 + 8))(v42, v40);
}

uint64_t sub_10006FE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = a3;
  v5 = type metadata accessor for DeviceTab(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_100002BE4(&qword_10016A060, &qword_100113B50);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - v11;
  swift_getKeyPath();
  v19[1] = a1;
  sub_100073638(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(*(a1 + 16) + 16) < 2uLL)
  {
    v16 = 1;
    v17 = v19[0];
  }

  else
  {
    sub_100072210(a2, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v14 = swift_allocObject();
    sub_100072D28(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for DeviceTab);
    sub_100002BE4(&qword_10016A0B8, &qword_10010ECF0);
    sub_10001D8A0();
    Button.init(action:label:)();
    v15 = v19[0];
    (*(v9 + 32))(v19[0], v12, v8);
    v16 = 0;
    v17 = v15;
  }

  return (*(v9 + 56))(v17, v16, 1, v8);
}

uint64_t sub_100070128(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  return State.wrappedValue.setter();
}

uint64_t sub_100070188@<X0>(uint64_t a1@<X8>)
{
  if (qword_100168F68 != -1)
  {
    swift_once();
  }

  sub_100012928();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.Weight.medium.getter();
  v7 = Text.fontWeight(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10001297C(v2, v4, v6 & 1);

  LOBYTE(v2) = static Edge.Set.all.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  *(a1 + 64) = v18;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1000702C4(uint64_t a1)
{
  v2 = type metadata accessor for DeviceTab(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100072210(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100072D28(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for DeviceTab);
  sub_100002BE4(&qword_10016D718, &qword_100113B60);
  sub_100072A34();
  return Button.init(action:label:)();
}

uint64_t sub_100070418(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);

  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

__n128 sub_1000704B0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100002BE4(&qword_100169A80, &qword_10010D480);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v22 = Image.init(systemName:)();
  static Color.white.getter();
  v21 = Color.opacity(_:)();

  v6 = static Alignment.topTrailing.getter();
  v8 = v7;
  v9 = Image.init(systemName:)();
  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = static Font.system(size:weight:design:)();
  sub_100009908(v5, &qword_100169A80, &qword_10010D480);
  KeyPath = swift_getKeyPath();
  v13 = static Color.accentColor.getter();
  v14 = static Color.white.getter();
  v15 = static Alignment.center.getter();
  *&v26 = v9;
  *(&v26 + 1) = KeyPath;
  v27.n128_u64[0] = v11;
  v27.n128_u64[1] = v13;
  *&v28 = v14;
  HIWORD(v28) = v25;
  *(&v28 + 10) = v24;
  WORD4(v28) = 256;
  *&v29 = v15;
  *(&v29 + 1) = v16;
  *&v30 = v6;
  *(&v30 + 1) = v8;
  v42 = v29;
  v43 = v30;
  v40 = v27;
  v41 = v28;
  v39 = v26;
  v31[0] = v9;
  v31[1] = KeyPath;
  v31[2] = v11;
  v31[3] = v13;
  v31[4] = v14;
  v32 = 256;
  v34 = v25;
  v33 = v24;
  v35 = v15;
  v36 = v16;
  v37 = v6;
  v38 = v8;
  sub_10000C178(&v26, &v23, &qword_10016D740, &unk_100113B78);
  sub_100009908(v31, &qword_10016D740, &unk_100113B78);
  v17 = v21;
  *a1 = v22;
  *(a1 + 8) = v17;
  v18 = v42;
  *(a1 + 48) = v41;
  *(a1 + 64) = v18;
  *(a1 + 80) = v43;
  result = v40;
  *(a1 + 16) = v39;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10007071C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for Device();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E5480();
  sub_10004F388(0);
  v36[3] = &_s20TetsuoAnalyticsEventON;
  v36[4] = sub_1000250D8();
  LOBYTE(v36[0]) = 9;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(v36);
  v12 = (a2 + *(type metadata accessor for DeviceTab(0) + 36));
  if (*v12)
  {
    v13 = *(*v12 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider);
    swift_getKeyPath();
    v36[0] = v13;
    sub_100073638(&qword_10016AFE0, type metadata accessor for DeviceProvider);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
    swift_beginAccess();
    sub_10000C178(v13 + v14, v6, &qword_10016B010, &qword_100110020);

    v15 = *(v8 + 48);
    if (v15(v6, 1, v7) == 1)
    {
      sub_10006BF28();
      if (v15(v6, 1, v7) != 1)
      {
        sub_100009908(v6, &qword_10016B010, &qword_100110020);
      }
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
    }

    v16 = Device.productType.getter();
    v18 = v17;
    v19._countAndFlagsBits = v16;
    v19._object = v18;
    v20 = _findStringSwitchCase(cases:string:)(&off_100159AA0, v19);

    v21 = *(a2 + 48);
    v22 = *(a2 + 56);
    v34 = v21;
    v35 = v22;
    sub_100002BE4(&qword_10016D6C0, &qword_100113AF0);
    State.wrappedValue.getter();
    v23 = v33;
    swift_getKeyPath();
    v34 = v23;
    sub_100073638(&qword_10016CC90, type metadata accessor for DeviceModelParameters);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LODWORD(v18) = *(v23 + 16);

    v24 = "SpatialGalleryItemUnfavorited";
    if (v18)
    {
      v25 = "RealityDevice14,1";
    }

    else
    {
      v25 = "SpatialGalleryItemUnfavorited";
    }

    if (v20)
    {
      v24 = "RealityDevice14,1";
    }

    if ((v25 | 0x8000000000000000) == (v24 | 0x8000000000000000))
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        v27 = type metadata accessor for DeviceModelParameters();
        v28 = *(v27 + 48);
        v29 = *(v27 + 52);
        swift_allocObject();
        v30 = sub_10005E800(v20 != 0);
        v34 = v21;
        v35 = v22;
        v33 = v30;
        State.wrappedValue.setter();
      }
    }

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v32 = v12[1];
    type metadata accessor for AppDelegate();
    sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100070BF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a2[1])
  {
    v4 = *a2;
    v5 = a2[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  v7 = _findStringSwitchCase(cases:string:)(&off_100159AA0, v6);

  v8 = *(a3 + 48);
  v9 = *(a3 + 56);
  sub_100002BE4(&qword_10016D6C0, &qword_100113AF0);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100073638(&qword_10016CC90, type metadata accessor for DeviceModelParameters);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v18 + 16);

  v11 = "SpatialGalleryItemUnfavorited";
  if (v10)
  {
    v12 = "RealityDevice14,1";
  }

  else
  {
    v12 = "SpatialGalleryItemUnfavorited";
  }

  if (v7)
  {
    v11 = "RealityDevice14,1";
  }

  if ((v12 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      v15 = type metadata accessor for DeviceModelParameters();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      sub_10005E800(v7 != 0);
      return State.wrappedValue.setter();
    }
  }

  return result;
}

uint64_t sub_100070DE8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100070E80, v4, v3);
}

uint64_t sub_100070E80()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v3(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_100070EEC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DeviceSelectionView(0);
  sub_100073638(&qword_10016D6B8, type metadata accessor for DeviceSelectionView);
  NavigationStack.init<>(root:)();
  v2 = [objc_opt_self() systemBackgroundColor];
  v3 = Color.init(_:)();
  v4 = static Edge.Set.all.getter();
  result = sub_100002BE4(&qword_10016D628, &qword_100113A10);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_100070FD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for DeviceSelectionView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_100002BE4(&qword_10016A568, &unk_10010F530);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_100071058(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (!has_internal_ui)
  {
    sub_10000C178(a1, v6, &qword_10016B010, &qword_100110020);
    v14 = type metadata accessor for Device();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      sub_100009908(v6, &qword_10016B010, &qword_100110020);
    }

    else
    {
      countAndFlagsBits = Device.name.getter();
      v17 = v16;
      (*(v15 + 8))(v6, v14);
      if (v17)
      {
        return countAndFlagsBits;
      }
    }

LABEL_11:
    v22 = [objc_opt_self() mainBundle];
    v28._object = 0xE000000000000000;
    v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v23.value._object = 0xEB00000000656C62;
    v24._object = 0x800000010011D950;
    v24._countAndFlagsBits = 0xD000000000000010;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v23, v22, v25, v28)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.myDeviceNameOverride.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 stringForKey:v11];

  if (!v12)
  {
    sub_10000C178(a1, v8, &qword_10016B010, &qword_100110020);
    v18 = type metadata accessor for Device();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v8, 1, v18) == 1)
    {
      sub_100009908(v8, &qword_10016B010, &qword_100110020);
    }

    else
    {
      countAndFlagsBits = Device.name.getter();
      v21 = v20;
      (*(v19 + 8))(v8, v18);
      if (v21)
      {
        return countAndFlagsBits;
      }
    }

    goto LABEL_11;
  }

  countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return countAndFlagsBits;
}

uint64_t sub_1000713E8@<X0>(uint64_t a1@<X8>)
{
  State.init(wrappedValue:)();
  *a1 = v15;
  *(a1 + 8) = v16;
  State.init(wrappedValue:)();
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  v2 = type metadata accessor for ScrollState();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  *(swift_allocObject() + 16) = 0;
  ObservationRegistrar.init()();
  State.init(wrappedValue:)();
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  v5 = type metadata accessor for DeviceModelParameters();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_10005E800(1);
  State.init(wrappedValue:)();
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  v8 = type metadata accessor for DeviceTab(0);
  v9 = v8[8];
  *(a1 + v9) = swift_getKeyPath();
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  swift_storeEnumTagMultiPayload();
  v10 = (a1 + v8[9]);
  type metadata accessor for AppDelegate();
  sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate);
  *v10 = EnvironmentObject.init()();
  v10[1] = v11;
  v12 = (a1 + v8[10]);
  type metadata accessor for SceneDelegate();
  sub_100073638(&qword_10016D538, type metadata accessor for SceneDelegate);
  result = EnvironmentObject.init()();
  *v12 = result;
  v12[1] = v14;
  return result;
}

uint64_t sub_100071644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002BE4(&qword_10016A678, &unk_100113980);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100071714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016A678, &unk_100113980);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000717C4()
{
  sub_100071908();
  if (v0 <= 0x3F)
  {
    sub_100073524(319, &qword_10016D5B0, type metadata accessor for ScrollState, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100073524(319, &qword_10016D5B8, type metadata accessor for DeviceModelParameters, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100071958();
        if (v3 <= 0x3F)
        {
          sub_100025958();
          if (v4 <= 0x3F)
          {
            sub_1000719BC();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100071908()
{
  if (!qword_10016D5A8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10016D5A8);
    }
  }
}

void sub_100071958()
{
  if (!qword_10016A718)
  {
    sub_10000459C(&qword_10016A578, &qword_10010F540);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10016A718);
    }
  }
}

void sub_1000719BC()
{
  if (!qword_10016D5C0)
  {
    type metadata accessor for SceneDelegate();
    sub_100073638(&qword_10016D538, type metadata accessor for SceneDelegate);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10016D5C0);
    }
  }
}

uint64_t sub_100071A6C()
{
  sub_100002BE4(&qword_10016D608, &qword_1001139F0);
  sub_10000459C(&qword_10016D610, &qword_1001139F8);
  sub_10000459C(&qword_10016D618, &qword_100113A00);
  sub_10000459C(&qword_10016D620, &qword_100113A08);
  sub_10000459C(&qword_10016D628, &qword_100113A10);
  sub_100071BD4();
  sub_100071F88();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_100071BD4()
{
  result = qword_10016D630;
  if (!qword_10016D630)
  {
    sub_10000459C(&qword_10016D620, &qword_100113A08);
    sub_10000459C(&qword_10016D638, &qword_100113A18);
    sub_10000459C(&qword_10016B278, &qword_100113A20);
    sub_100071CF8();
    sub_100071F0C();
    swift_getOpaqueTypeConformance2();
    sub_100073638(&qword_10016A610, type metadata accessor for ScenePhaseViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D630);
  }

  return result;
}

unint64_t sub_100071CF8()
{
  result = qword_10016D640;
  if (!qword_10016D640)
  {
    sub_10000459C(&qword_10016D638, &qword_100113A18);
    sub_100071D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D640);
  }

  return result;
}

unint64_t sub_100071D84()
{
  result = qword_10016D648;
  if (!qword_10016D648)
  {
    sub_10000459C(&qword_10016D650, &qword_100113A28);
    sub_10000459C(&qword_10016D658, &qword_100113A30);
    sub_10000459C(&qword_10016D660, &unk_100113A38);
    sub_100012C48(&qword_10016D668, &qword_10016D658, &qword_100113A30);
    sub_100012C48(&qword_10016D670, &qword_10016D660, &unk_100113A38);
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_10016A7C0, &qword_10016A7C8, &qword_10010F7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D648);
  }

  return result;
}

unint64_t sub_100071F0C()
{
  result = qword_10016D678;
  if (!qword_10016D678)
  {
    sub_10000459C(&qword_10016B278, &qword_100113A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D678);
  }

  return result;
}

unint64_t sub_100071F88()
{
  result = qword_10016D680;
  if (!qword_10016D680)
  {
    sub_10000459C(&qword_10016D628, &qword_100113A10);
    sub_100012C48(&qword_10016D688, &qword_10016D690, &unk_100113A48);
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D680);
  }

  return result;
}

uint64_t sub_10007206C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceModelView();
  v5 = v4[5];
  v6 = type metadata accessor for Device();
  (*(*(v6 - 8) + 16))(a1 + v5, v2, v6);
  v7 = type metadata accessor for DeviceModelSection(0);
  v8 = *(v2 + v7[5]);
  swift_getKeyPath();
  sub_100073638(&qword_10016B738, type metadata accessor for ScrollState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v8 + 16);
  v10 = (v2 + v7[6]);
  v15 = *v10;
  v16 = *(v10 + 1);
  sub_100002BE4(&qword_10016CD58, &qword_100112F88);
  Binding.projectedValue.getter();
  v11 = *(v2 + v7[7]);
  *(a1 + v4[6]) = v9;
  *a1 = v13;
  *(a1 + 8) = v14;
  *(a1 + v4[7]) = v11;
}

uint64_t sub_100072210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceTab(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100072274()
{
  v1 = type metadata accessor for DeviceTab(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = *(v0 + v3 + 48);

  v12 = *(v0 + v3 + 56);

  v13 = v1[8];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v6 + v13, 1, v14))
    {
      (*(v15 + 8))(v6 + v13, v14);
    }
  }

  else
  {
    v16 = *(v6 + v13);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007243C()
{
  v1 = *(type metadata accessor for DeviceTab(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10007071C(v2, v3);
}

uint64_t sub_1000724A4(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for DeviceTab(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100070BF8(a1, a2, v6);
}

uint64_t sub_100072528()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100072560()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000FA04;

  return sub_100070DE8(v2, v3);
}

uint64_t sub_100072628@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10007267C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000726A8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_1000726D4(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

unint64_t sub_1000727A4()
{
  result = qword_10016D6F8;
  if (!qword_10016D6F8)
  {
    sub_10000459C(&qword_10016D6F0, &qword_100113B48);
    sub_100012C48(&qword_10016A058, &qword_10016A060, &qword_100113B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D6F8);
  }

  return result;
}

uint64_t sub_10007285C()
{
  v1 = type metadata accessor for DeviceTab(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 48);

  v11 = *(v0 + v3 + 56);

  v12 = v1[8];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  else
  {
    v15 = *(v5 + v12);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100072A34()
{
  result = qword_10016D720;
  if (!qword_10016D720)
  {
    sub_10000459C(&qword_10016D718, &qword_100113B60);
    sub_100072AEC();
    sub_100012C48(&qword_10016D738, &qword_10016D740, &unk_100113B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D720);
  }

  return result;
}

unint64_t sub_100072AEC()
{
  result = qword_10016D728;
  if (!qword_10016D728)
  {
    sub_10000459C(&qword_10016D730, &unk_100113B68);
    sub_100012C48(&qword_10016A5D0, &qword_10016A5D8, &unk_10010F630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D728);
  }

  return result;
}

uint64_t sub_100072BA4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100072BD0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_100072C1C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DeviceTab(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100072C90(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceTab(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10006E214(a1, v4);
}

uint64_t sub_100072D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_100072D98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager);
  *a2 = v2;
  return v2;
}

void sub_100072DB4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager);
  *(*a2 + OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager) = *a1;
  v3 = v2;
}

uint64_t sub_100072E30@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100072E84@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100072EB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

unint64_t sub_100072F10()
{
  result = qword_10016D868;
  if (!qword_10016D868)
  {
    sub_10000459C(&qword_10016D858, &qword_100113DE0);
    sub_100072F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D868);
  }

  return result;
}

unint64_t sub_100072F9C()
{
  result = qword_10016D870;
  if (!qword_10016D870)
  {
    sub_10000459C(&qword_10016D850, &qword_100113DD8);
    sub_100073028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D870);
  }

  return result;
}

unint64_t sub_100073028()
{
  result = qword_10016D878;
  if (!qword_10016D878)
  {
    sub_10000459C(&qword_10016D848, &qword_100113DD0);
    sub_1000730B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D878);
  }

  return result;
}

unint64_t sub_1000730B4()
{
  result = qword_10016D880;
  if (!qword_10016D880)
  {
    sub_10000459C(&qword_10016D840, &qword_100113DC8);
    sub_10007316C();
    sub_100012C48(&qword_10016D8A8, &qword_10016D860, &qword_100113E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D880);
  }

  return result;
}

unint64_t sub_10007316C()
{
  result = qword_10016D888;
  if (!qword_10016D888)
  {
    sub_10000459C(&qword_10016D890, &qword_100113E88);
    sub_100021FAC();
    sub_100012C48(&qword_10016D898, &qword_10016D8A0, &unk_100113E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D888);
  }

  return result;
}

uint64_t sub_100073224(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for DeviceTab(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10006E490(a1, a2, v6);
}

uint64_t sub_1000732B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device();
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

uint64_t sub_100073388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device();
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

void sub_100073440()
{
  type metadata accessor for Device();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ScrollState();
    if (v1 <= 0x3F)
    {
      sub_100073524(319, &qword_10016CD00, type metadata accessor for DeviceModelParameters, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DeviceProvider();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100073524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100073638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100073690(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000736A4(uint64_t *a1, int a2)
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

uint64_t sub_1000736EC(uint64_t result, int a2, int a3)
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

id sub_10007373C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = [objc_allocWithZone(type metadata accessor for LayerResizableUIView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = v6;
    if (sub_100073854(a2, a3))
    {
      v8 = [v5 layer];
      [v8 addSublayer:v7];

      v7 = v8;
    }
  }

  v9 = v5;
  sub_100030B38(v9, a3);

  return v9;
}

uint64_t sub_100073854(uint64_t a1, unsigned __int8 a2)
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x69736E6172546E69;
    }

    if (a2 == 1)
    {
      v5 = 0x800000010011C670;
    }

    else
    {
      v5 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    v4 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v6 = 0xD000000000000010;
  v7 = 0x800000010011C670;
  if (*(a1 + 17) != 1)
  {
    v6 = 0x69736E6172546E69;
    v7 = 0xEC0000006E6F6974;
  }

  if (*(a1 + 17))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x657263536C6C7566;
  }

  if (*(a1 + 17))
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xEA00000000006E65;
  }

  if (v4 != v8 || v5 != v9)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      v10 = 1;
      return v10 & 1;
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(a1 + 17) && *(a1 + 17) != 1)
    {

      v13 = a2;
      if (!a2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v10 = 0;
      if ((v12 & 1) == 0)
      {
        return v10 & 1;
      }

      v13 = a2;
      if (!a2)
      {
        goto LABEL_30;
      }
    }

    if (v13 == 1)
    {
      goto LABEL_20;
    }

LABEL_30:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v10 & 1;
  }

LABEL_20:

  v10 = 1;
  return v10 & 1;
}

void sub_100073AFC(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 32))
  {
    sub_100030B38(a1, v4);
  }
}

uint64_t sub_100073B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100073CE8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100073BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100073CE8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100073C58()
{
  sub_100073CE8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100073C84()
{
  result = qword_10016D960;
  if (!qword_10016D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D960);
  }

  return result;
}

unint64_t sub_100073CE8()
{
  result = qword_10016D968;
  if (!qword_10016D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D968);
  }

  return result;
}

uint64_t sub_100073D50(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002BE4(&qword_10016D970, &qword_1001140B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100002BE4(&qword_10016D978, &qword_1001140B8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100073EA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_100002BE4(&qword_10016D970, &qword_1001140B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100002BE4(&qword_10016D978, &qword_1001140B8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for AppHeroModel()
{
  result = qword_10016D9D8;
  if (!qword_10016D9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100074028()
{
  sub_10001EA88();
  if (v0 <= 0x3F)
  {
    sub_10001EC3C(319, &qword_10016D9E8, &qword_10016A198, &qword_10010EF20);
    if (v1 <= 0x3F)
    {
      sub_10001EC3C(319, &qword_10016D9F0, &qword_10016D9F8, &qword_1001140D8);
      if (v2 <= 0x3F)
      {
        sub_10001EC3C(319, &qword_10016DA00, &qword_10016DA08, &qword_1001140E0);
        if (v3 <= 0x3F)
        {
          sub_10001EC3C(319, &qword_10016DA10, &unk_10016DA18, &qword_1001140E8);
          if (v4 <= 0x3F)
          {
            sub_10001EC3C(319, &qword_10016A1C8, &unk_10016A1D0, &qword_10010EF30);
            if (v5 <= 0x3F)
            {
              sub_10001EC3C(319, &qword_10016B270, &qword_10016B278, &qword_100113A20);
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

uint64_t sub_1000741F8()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for AppHeroModel() + 64));
  if (v6[1])
  {
    v7 = *v6;
    static String.Encoding.utf8.getter();
    v8 = String.data(using:allowLossyConversion:)();
    v10 = v9;
    (*(v2 + 8))(v5, v1);
    if (v10 >> 60 != 15)
    {
      v11 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v22[0] = 0;
      v13 = [v11 JSONObjectWithData:isa options:0 error:v22];

      if (v13)
      {
        v14 = v22[0];
        _bridgeAnyObjectToAny(_:)();
        sub_10003DCC8(v8, v10);
        swift_unknownObjectRelease();
        sub_100002BE4(&qword_10016DB28, &unk_1001142C0);
        if (swift_dynamicCast())
        {
          return v21[1];
        }
      }

      else
      {
        v16 = v22[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10003DCC8(v8, v10);
      }
    }
  }

  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006B0C(v17, qword_100182048);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "There wasn an error serializing the artwork JSON", v20, 2u);
  }

  return 0;
}

uint64_t sub_100074508(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v8 = sub_1000741F8();
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  if (!*(v8 + 16) || (v10 = sub_10006889C(a1, a2), (v11 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_1000076F0(*(v9 + 56) + 32 * v10, v23);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006B0C(v16, qword_100182048);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, a4, v19, 2u);
    }

    return 0;
  }

  if (!v21 && v22 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006B0C(v12, qword_100182048);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, a3, v15, 2u);
    }

    return 0;
  }

  return sub_10003F724(v21, v22);
}

unint64_t sub_100074768(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x70756B636F6CLL;
      break;
    case 3:
      result = 0x4970756F53746F68;
      break;
    case 4:
      result = 0x726574614D657375;
      break;
    case 5:
      result = 0x4D747865746E6F63;
      break;
    case 6:
      result = 0x6575676573;
      break;
    case 7:
      result = 0x6C6562616CLL;
      break;
    case 8:
      result = 1701667182;
      break;
    case 9:
      result = 0x656E696C676174;
      break;
    case 10:
      result = 0x63416F546C6C6163;
      break;
    case 11:
      result = 0x74756F6B61657262;
      break;
    case 12:
      result = 0x6B726F77747261;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10007492C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v58 = sub_100002BE4(&qword_10016D978, &qword_1001140B8);
  v3 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v5 = v55 - v4;
  v6 = sub_100002BE4(&qword_10016D970, &qword_1001140B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v55 - v8;
  v61 = sub_100002BE4(&qword_10016DA80, &unk_100114180);
  v59 = *(v61 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v61);
  v12 = v55 - v11;
  v13 = type metadata accessor for AppHeroModel();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 20);
  v19 = type metadata accessor for ImpressionMetrics();
  v20 = *(*(v19 - 8) + 56);
  v67 = v18;
  v20(&v17[v18], 1, 1, v19);
  v21 = *(v13 + 36);
  v22 = type metadata accessor for Models.Menu();
  v23 = *(*(v22 - 8) + 56);
  v66 = v21;
  v23(&v17[v21], 1, 1, v22);
  v24 = *(v13 + 40);
  v63 = v17;
  v25 = &v17[v24];
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 4) = 0;
  v65 = &v17[v24];
  sub_10001FD78(&v68, &v17[v24], &qword_10016A248, &qword_100114390);
  v26 = a1[3];
  v27 = a1[4];
  v62 = a1;
  sub_10000524C(a1, v26);
  sub_100075694();
  v60 = v12;
  v28 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    v64 = v28;
    v30 = v63;
    sub_1000052E4(v62);
LABEL_4:
    sub_100009908(v30 + v67, &qword_10016D970, &qword_1001140B0);

    sub_100009908(v30 + v66, &qword_10016D978, &qword_1001140B8);
    sub_100009908(v65, &qword_10016A230, &unk_10010F030);
  }

  v29 = v5;
  v56 = v13;
  sub_100002BE4(&qword_10016A238, &qword_100114380);
  v71 = 0;
  sub_100012C48(&qword_10016DA90, &qword_10016A238, &qword_100114380);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v69;
  v33 = v63;
  *v63 = v68;
  v33[1] = v32;
  *(v33 + 4) = v70;
  LOBYTE(v68) = 1;
  sub_1000756E8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10001FD78(v9, v33 + v67, &qword_10016D970, &qword_1001140B0);
  sub_100002BE4(&qword_10016DAA8, &qword_100114190);
  v71 = 2;
  sub_100075820();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v56;
  v35 = (v33 + v56[6]);
  v36 = *(&v68 + 1);
  *v35 = v68;
  v35[1] = v36;
  v55[0] = v36;
  sub_100002BE4(&qword_10016DAC8, &qword_100114198);
  v71 = 3;
  sub_10007597C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = (v33 + v34[7]);
  v38 = *(&v68 + 1);
  *v37 = v68;
  v37[1] = v38;
  LOBYTE(v68) = 4;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v55[1] = v38;
  *(v33 + v34[8]) = v39 & 1;
  LOBYTE(v68) = 5;
  sub_100075AD8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10001FD78(v29, v33 + v66, &qword_10016D978, &qword_1001140B8);
  sub_100002BE4(&qword_10016A230, &unk_10010F030);
  v71 = 6;
  sub_100075C58();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10001FD78(&v68, v65, &qword_10016A230, &unk_10010F030);
  sub_100002BE4(&qword_10016B2F8, &qword_1001141A0);
  v71 = 7;
  sub_100038CC0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v40 = (v33 + v34[11]);
  v41 = *(&v68 + 1);
  *v40 = v68;
  v40[1] = v41;
  v71 = 8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v64 = 0;
  v42 = (v33 + v34[12]);
  v43 = *(&v68 + 1);
  *v42 = v68;
  v42[1] = v43;
  v71 = 9;
  v44 = v64;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v64 = v44;
  if (v44)
  {
    (*(v59 + 8))(v60, v61);
    sub_1000052E4(v62);
    v30 = v63;
    sub_100009908(v63, &qword_10016A238, &qword_100114380);
    goto LABEL_4;
  }

  v45 = (v63 + v56[13]);
  v46 = *(&v68 + 1);
  *v45 = v68;
  v45[1] = v46;
  v71 = 10;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v64 = 0;
  v47 = (v63 + v56[14]);
  v48 = *(&v68 + 1);
  *v47 = v68;
  v47[1] = v48;
  v71 = 11;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v64 = 0;
  v49 = (v63 + v56[15]);
  v50 = *(&v68 + 1);
  *v49 = v68;
  v49[1] = v50;
  v71 = 12;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v64 = 0;
  v51 = (v63 + v56[16]);
  v52 = *(&v68 + 1);
  *v51 = v68;
  v51[1] = v52;
  v71 = 13;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v64 = 0;
  v53 = v56[17];
  (*(v59 + 8))(v60, v61);
  v54 = v63;
  *(v63 + v53) = v68;
  sub_100075D08(v54, v57);
  sub_1000052E4(v62);
  return sub_100075D6C(v54);
}

uint64_t sub_1000753AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100076020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000753E0(uint64_t a1)
{
  v2 = sub_100075694();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007541C(uint64_t a1)
{
  v2 = sub_100075694();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100075458@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000C178(v2 + *(a1 + 40), v6, &qword_10016A230, &unk_10010F030);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1000754B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016D978, &qword_1001140B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  sub_10000C178(v2 + *(a1 + 36), &v10 - v7, &qword_10016D978, &qword_1001140B8);
  return sub_10001D504(v8, a2, &unk_10016DA18, &qword_1001140E8);
}

uint64_t sub_10007558C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016D970, &qword_1001140B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  sub_10000C178(v2 + *(a1 + 20), &v10 - v7, &qword_10016D970, &qword_1001140B0);
  return sub_10001D504(v8, a2, &qword_10016A198, &qword_10010EF20);
}

unint64_t sub_100075694()
{
  result = qword_10016DA88;
  if (!qword_10016DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DA88);
  }

  return result;
}

unint64_t sub_1000756E8()
{
  result = qword_10016DA98;
  if (!qword_10016DA98)
  {
    sub_10000459C(&qword_10016D970, &qword_1001140B0);
    sub_10007576C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DA98);
  }

  return result;
}

unint64_t sub_10007576C()
{
  result = qword_10016DAA0;
  if (!qword_10016DAA0)
  {
    sub_10000459C(&qword_10016A198, &qword_10010EF20);
    sub_100075C10(&qword_10016A268, &type metadata accessor for ImpressionMetrics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAA0);
  }

  return result;
}

unint64_t sub_100075820()
{
  result = qword_10016DAB0;
  if (!qword_10016DAB0)
  {
    sub_10000459C(&qword_10016DAA8, &qword_100114190);
    sub_1000758A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAB0);
  }

  return result;
}

unint64_t sub_1000758A4()
{
  result = qword_10016DAB8;
  if (!qword_10016DAB8)
  {
    sub_10000459C(&qword_10016D9F8, &qword_1001140D8);
    sub_100075928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAB8);
  }

  return result;
}

unint64_t sub_100075928()
{
  result = qword_10016DAC0;
  if (!qword_10016DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAC0);
  }

  return result;
}

unint64_t sub_10007597C()
{
  result = qword_10016DAD0;
  if (!qword_10016DAD0)
  {
    sub_10000459C(&qword_10016DAC8, &qword_100114198);
    sub_100075A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAD0);
  }

  return result;
}

unint64_t sub_100075A00()
{
  result = qword_10016DAD8;
  if (!qword_10016DAD8)
  {
    sub_10000459C(&qword_10016DA08, &qword_1001140E0);
    sub_100075A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAD8);
  }

  return result;
}

unint64_t sub_100075A84()
{
  result = qword_10016DAE0;
  if (!qword_10016DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAE0);
  }

  return result;
}

unint64_t sub_100075AD8()
{
  result = qword_10016DAE8;
  if (!qword_10016DAE8)
  {
    sub_10000459C(&qword_10016D978, &qword_1001140B8);
    sub_100075B5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAE8);
  }

  return result;
}

unint64_t sub_100075B5C()
{
  result = qword_10016DAF0;
  if (!qword_10016DAF0)
  {
    sub_10000459C(&unk_10016DA18, &qword_1001140E8);
    sub_100075C10(&qword_10016DAF8, &type metadata accessor for Models.Menu);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAF0);
  }

  return result;
}

uint64_t sub_100075C10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100075C58()
{
  result = qword_10016DB00;
  if (!qword_10016DB00)
  {
    sub_10000459C(&qword_10016A230, &unk_10010F030);
    sub_100012C48(&qword_10016DB08, &unk_10016A1D0, &qword_10010EF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DB00);
  }

  return result;
}

uint64_t sub_100075D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppHeroModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100075D6C(uint64_t a1)
{
  v2 = type metadata accessor for AppHeroModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppHeroModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppHeroModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100075F1C()
{
  result = qword_10016DB10;
  if (!qword_10016DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DB10);
  }

  return result;
}

unint64_t sub_100075F74()
{
  result = qword_10016DB18;
  if (!qword_10016DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DB18);
  }

  return result;
}

unint64_t sub_100075FCC()
{
  result = qword_10016DB20;
  if (!qword_10016DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DB20);
  }

  return result;
}

uint64_t sub_100076020(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010011D5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756B636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4970756F53746F68 && a2 == 0xEB000000006F666ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726574614D657375 && a2 == 0xEF72756C426C6169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656E696C676174 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x63416F546C6C6163 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x74756F6B61657262 && a2 == 0xEC000000657A6953 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010011E5D0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1000764A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100076574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppTextComponentModel()
{
  result = qword_10016DB88;
  if (!qword_10016DB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100076670()
{
  sub_10001EA88();
  if (v0 <= 0x3F)
  {
    sub_10001EB04();
    if (v1 <= 0x3F)
    {
      sub_100076714();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100076714()
{
  if (!qword_10016A1C8)
  {
    sub_10000459C(&unk_10016A1D0, &qword_10010EF30);
    v0 = type metadata accessor for DiscardOnError();
    if (!v1)
    {
      atomic_store(v0, &qword_10016A1C8);
    }
  }
}

uint64_t sub_100076778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v33 - v5;
  v7 = sub_100002BE4(&qword_10016DBD0, &qword_100114388);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = type metadata accessor for AppTextComponentModel();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 20);
  v17 = type metadata accessor for ImpressionMetrics();
  v18 = *(*(v17 - 8) + 56);
  v40 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = *(v11 + 28);
  v38 = v15;
  v20 = &v15[v19];
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  sub_10001FD78(&v41, v20, &qword_10016A248, &qword_100114390);
  v22 = a1[3];
  v21 = a1[4];
  v39 = a1;
  sub_10000524C(a1, v22);
  sub_100076F18();
  v23 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v24 = v40;
    sub_1000052E4(v39);
    sub_100009908(v38 + v24, &qword_10016A118, &unk_10010EEF0);
    return sub_100009908(v20, &qword_10016A230, &unk_10010F030);
  }

  else
  {
    v37 = v3;
    sub_100002BE4(&qword_10016A238, &qword_100114380);
    v44 = 0;
    sub_100012C48(&qword_10016DA90, &qword_10016A238, &qword_100114380);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v42;
    v26 = v38;
    *v38 = v41;
    *(v26 + 16) = v25;
    *(v26 + 32) = v43;
    LOBYTE(v41) = 1;
    sub_100012C48(&qword_10016DBE0, &qword_10016A118, &unk_10010EEF0);
    v27 = v6;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v35;
    sub_10001FD78(v27, v26 + v40, &qword_10016A118, &unk_10010EEF0);
    LOBYTE(v41) = 2;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = (v26 + *(v11 + 24));
    *v30 = v29;
    v30[1] = v31;
    sub_100002BE4(&qword_10016A230, &unk_10010F030);
    v44 = 3;
    sub_100075C58();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v28 + 8))(v10, v36);
    sub_10001FD78(&v41, v20, &qword_10016A230, &unk_10010F030);
    sub_100076F6C(v26, v34);
    sub_1000052E4(v39);
    return sub_100076FD0(v26);
  }
}

unint64_t sub_100076C90()
{
  v1 = 25705;
  v2 = 1954047348;
  if (*v0 != 2)
  {
    v2 = 0x6575676573;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_100076CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100077144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100076D20(uint64_t a1)
{
  v2 = sub_100076F18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076D5C(uint64_t a1)
{
  v2 = sub_100076F18();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100076D98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000C178(v2 + *(a1 + 28), v6, &qword_10016A230, &unk_10010F030);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_100076E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  sub_10000C178(v2 + *(a1 + 20), &v10 - v7, &qword_10016A118, &unk_10010EEF0);
  return sub_1000200DC(v8, a2);
}

unint64_t sub_100076EC0()
{
  result = qword_10016DBC8;
  if (!qword_10016DBC8)
  {
    type metadata accessor for AppTextComponentModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DBC8);
  }

  return result;
}

unint64_t sub_100076F18()
{
  result = qword_10016DBD8;
  if (!qword_10016DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DBD8);
  }

  return result;
}

uint64_t sub_100076F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppTextComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100076FD0(uint64_t a1)
{
  v2 = type metadata accessor for AppTextComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100077040()
{
  result = qword_10016DBE8;
  if (!qword_10016DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DBE8);
  }

  return result;
}

unint64_t sub_100077098()
{
  result = qword_10016DBF0;
  if (!qword_10016DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DBF0);
  }

  return result;
}

unint64_t sub_1000770F0()
{
  result = qword_10016DBF8;
  if (!qword_10016DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DBF8);
  }

  return result;
}

uint64_t sub_100077144(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010011D5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000772A4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000772C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007731C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_100077378(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1000773BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007748C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AsyncARViewWrapper()
{
  result = qword_10016DC58;
  if (!qword_10016DC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100077590()
{
  type metadata accessor for Device();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DeviceProvider();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DeviceModelParameters();
      if (v2 <= 0x3F)
      {
        sub_100077684(319, &qword_10016DC68);
        if (v3 <= 0x3F)
        {
          sub_100077684(319, &qword_10016DC70);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100077684(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

BOOL sub_100077714(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }

    return v3 > 3;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      return v3 == 3;
    }

    return v3 > 3;
  }

  return v3 == 2;
}

uint64_t sub_100077790@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for AsyncARViewWrapper();
  v4 = *(v3 - 8);
  v34 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = v6;
  v8 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016DCB0, &qword_100114590);
  v33 = v9;
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v32 - v11);
  v13 = sub_100002BE4(&qword_10016DCB8, &qword_100114598);
  v14 = *(v13 - 8);
  v36 = v13;
  v37 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v39 = &v32 - v16;
  *v12 = static Alignment.center.getter();
  v12[1] = v17;
  v18 = sub_100002BE4(&qword_10016DCC0, &qword_1001145A0);
  sub_100077BB4(v2, v12 + *(v18 + 44));
  sub_100079E40(v2, v8);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v35 = v7;
  v20 = swift_allocObject();
  sub_100079EA8(v8, v20 + v19);
  v21 = (v12 + *(v9 + 36));
  v22 = v21 + *(type metadata accessor for _TaskModifier() + 20);
  static TaskPriority.userInitiated.getter();
  *v21 = &unk_1001145B0;
  v21[1] = v20;
  sub_100079E40(v2, v8);
  v23 = swift_allocObject();
  sub_100079EA8(v8, v23 + v19);
  v32 = type metadata accessor for Device();
  v24 = sub_10007A058();
  v25 = sub_10007AE74(&qword_10016B020, &type metadata accessor for Device);
  v26 = v33;
  View.onChange<A>(of:initial:_:)();

  sub_100009908(v12, &qword_10016DCB0, &qword_100114590);
  v40 = *(v2 + *(v34 + 40));
  sub_100002BE4(&qword_10016DCE8, &qword_1001145C0);
  State.wrappedValue.getter();
  v27 = v43;
  sub_100079E40(v2, v8);
  v28 = swift_allocObject();
  sub_100079EA8(v8, v28 + v19);
  *&v40 = v26;
  *(&v40 + 1) = v32;
  v41 = v24;
  v42 = v25;
  swift_getOpaqueTypeConformance2();
  sub_10007A2F0();
  v29 = v39;
  v30 = v36;
  View.onChange<A>(of:initial:_:)();

  sub_10007A344(v27);
  return (*(v37 + 8))(v29, v30);
}

uint64_t sub_100077BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v99 = sub_100002BE4(&qword_10016DD08, &qword_1001145E0);
  v3 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v89 = &v89 - v4;
  v102 = sub_100002BE4(&qword_10016DD10, &qword_1001145E8);
  v5 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v98 = &v89 - v6;
  v94 = sub_100002BE4(&qword_10016DD18, &qword_1001145F0);
  v7 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v97 = (&v89 - v8);
  v101 = sub_100002BE4(&qword_10016DD20, &qword_1001145F8);
  v9 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v96 = &v89 - v10;
  v11 = sub_100002BE4(&qword_10016DD28, &qword_100114600);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v89 - v13;
  v90 = sub_100002BE4(&qword_10016DD30, &qword_100114608);
  v15 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v17 = &v89 - v16;
  v91 = sub_100002BE4(&qword_10016DD38, &qword_100114610);
  v18 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v20 = &v89 - v19;
  v92 = sub_100002BE4(&qword_10016DD40, &qword_100114618);
  v21 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v23 = &v89 - v22;
  v95 = sub_100002BE4(&qword_10016DD48, &qword_100114620);
  v24 = *(*(v95 - 8) + 64);
  v25 = __chkstk_darwin(v95);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v93 = &v89 - v28;
  v29 = type metadata accessor for AsyncARViewWrapper();
  v30 = a1;
  v144 = *(a1 + v29[8]);
  sub_100002BE4(&qword_10016DCE8, &qword_1001145C0);
  State.wrappedValue.getter();
  v31 = v133;
  if (v133 < 3)
  {
    ProgressView<>.init<>()();
    static UnitPoint.center.getter();
    v32 = &v14[*(v11 + 36)];
    __asm { FMOV            V2.2D, #1.5 }

    *v32 = _Q2;
    *(v32 + 2) = v38;
    *(v32 + 3) = v39;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10001D504(v14, v17, &qword_10016DD28, &qword_100114600);
    v40 = &v17[*(v90 + 36)];
    v41 = v149;
    *(v40 + 4) = v148;
    *(v40 + 5) = v41;
    *(v40 + 6) = v150;
    v42 = v145;
    *v40 = v144;
    *(v40 + 1) = v42;
    v43 = v147;
    *(v40 + 2) = v146;
    *(v40 + 3) = v43;
    v44 = static Color.clear.getter();
    v45 = static Edge.Set.all.getter();
    sub_10001D504(v17, v20, &qword_10016DD30, &qword_100114608);
    v46 = &v20[*(v91 + 36)];
    *v46 = v44;
    v46[8] = v45;
    v47 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    sub_10001D504(v20, v23, &qword_10016DD38, &qword_100114610);
    v49 = &v23[*(v92 + 36)];
    *v49 = KeyPath;
    v49[1] = v47;
    sub_10001D504(v23, v27, &qword_10016DD40, &qword_100114618);
    v50 = &v27[*(v95 + 36)];
    *v50 = sub_1000789E4;
    v50[1] = 0;
    v50[2] = 0;
    v50[3] = 0;
    v51 = &qword_10016DD48;
    v52 = &qword_100114620;
    v53 = v27;
    v54 = v93;
    sub_10001D504(v53, v93, &qword_10016DD48, &qword_100114620);
    sub_10000C178(v54, v97, &qword_10016DD48, &qword_100114620);
    swift_storeEnumTagMultiPayload();
    sub_100002BE4(&qword_10016DD98, &qword_100114640);
    sub_10007A6AC();
    sub_10007A9EC();
    v55 = v96;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v55, v98, &qword_10016DD20, &qword_1001145F8);
    swift_storeEnumTagMultiPayload();
    sub_10007A620();
    sub_10007AC74();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v55, &qword_10016DD20, &qword_1001145F8);
    v56 = v54;
LABEL_7:
    v78 = v51;
    v79 = v52;
    return sub_100009908(v56, v78, v79);
  }

  v57 = v89;
  v58 = v97;
  v59 = v98;
  v60 = v99;
  if (v133 != 3)
  {
    v66 = type metadata accessor for Device();
    (*(*(v66 - 8) + 16))(v57, v30, v66);
    v67 = *(v30 + v29[5]);
    v68 = *(v30 + v29[7]);
    v69 = type metadata accessor for ARViewRepresentable();
    *(v57 + v69[5]) = v67;
    *(v57 + v69[6]) = v68;
    *(v57 + v69[7]) = v31;
    v70 = (v57 + *(sub_100002BE4(&qword_10016DD50, &qword_100114628) + 36));
    *v70 = sub_1000789C4;
    v70[1] = 0;
    v70[2] = 0;
    v70[3] = 0;
    v71 = (v30 + v29[9]);
    v73 = v71[1];
    *&v144 = *v71;
    v72 = v144;
    *(&v144 + 1) = v73;

    sub_100002BE4(&qword_10016DCF8, &qword_100118900);
    State.wrappedValue.getter();
    v74 = v133;
    *(v57 + *(sub_100002BE4(&qword_10016DD58, &unk_100114630) + 36)) = v74;
    v75 = static Animation.easeInOut(duration:)();
    *&v144 = v72;
    *(&v144 + 1) = v73;
    State.wrappedValue.getter();
    v76 = v133;
    v77 = (v57 + *(v60 + 36));
    *v77 = v75;
    v77[1] = v76;
    v51 = &qword_10016DD08;
    v52 = &qword_1001145E0;
    sub_10000C178(v57, v59, &qword_10016DD08, &qword_1001145E0);
    swift_storeEnumTagMultiPayload();
    sub_10007A620();
    sub_10007AC74();
    _ConditionalContent<>.init(storage:)();
    v56 = v57;
    goto LABEL_7;
  }

  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui)
  {
    v62 = static HorizontalAlignment.center.getter();
    LOBYTE(v118) = 0;
    sub_100078768(&v144);
    v113 = v146;
    v114 = v147;
    v115 = v148;
    v111 = v144;
    v112 = v145;
    v116[2] = v146;
    v116[3] = v147;
    v117 = v148;
    v116[0] = v144;
    v116[1] = v145;
    sub_10000C178(&v111, &v133, &qword_10016DE10, &qword_100114670);
    sub_100009908(v116, &qword_10016DE10, &qword_100114670);
    *(&v110[1] + 7) = v112;
    *(&v110[2] + 7) = v113;
    *(&v110[3] + 7) = v114;
    *(&v110[4] + 7) = v115;
    *(v110 + 7) = v111;
    v63 = v118;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v64 = static Color.clear.getter();
    v65 = static Edge.Set.all.getter();
    *(&v134[1] + 1) = v110[1];
    *(&v134[2] + 1) = v110[2];
    *&v133 = v62;
    *(&v133 + 1) = 0x4028000000000000;
    LOBYTE(v134[0]) = v63;
    *(&v134[3] + 1) = v110[3];
    v134[4] = *(&v110[3] + 15);
    *(v134 + 1) = v110[0];
    *&v135 = sub_1000789A4;
    *(&v135 + 1) = 0;
    v136 = 0uLL;
    v141 = v107;
    v142 = v108;
    v143[0] = v109;
    v137 = v103;
    v138 = v104;
    v139 = v105;
    v140 = v106;
    *&v143[1] = v64;
    BYTE8(v143[1]) = v65;
    sub_10007AEC8(&v133);
  }

  else
  {
    sub_10007AEBC(&v133);
  }

  v130 = v141;
  v131 = v142;
  v132[0] = v143[0];
  *(v132 + 10) = *(v143 + 10);
  v126 = v137;
  v127 = v138;
  v128 = v139;
  v129 = v140;
  v122 = v134[3];
  v123 = v134[4];
  v124 = v135;
  v125 = v136;
  v118 = v133;
  v119 = v134[0];
  v120 = v134[1];
  v121 = v134[2];
  sub_100002BE4(&qword_10016DDA8, &qword_100114648);
  sub_10007AA78();
  _ConditionalContent<>.init(storage:)();
  v80 = v157;
  v58[12] = v156;
  v58[13] = v80;
  v58[14] = v158[0];
  *(v58 + 234) = *(v158 + 10);
  v81 = v153;
  v58[8] = v152;
  v58[9] = v81;
  v82 = v155;
  v58[10] = v154;
  v58[11] = v82;
  v83 = v149;
  v58[4] = v148;
  v58[5] = v83;
  v84 = v151;
  v58[6] = v150;
  v58[7] = v84;
  v85 = v145;
  *v58 = v144;
  v58[1] = v85;
  v86 = v147;
  v58[2] = v146;
  v58[3] = v86;
  swift_storeEnumTagMultiPayload();
  sub_10000C178(&v144, &v133, &qword_10016DD98, &qword_100114640);
  sub_100002BE4(&qword_10016DD98, &qword_100114640);
  sub_10007A6AC();
  sub_10007A9EC();
  v87 = v96;
  _ConditionalContent<>.init(storage:)();
  sub_10000C178(v87, v59, &qword_10016DD20, &qword_1001145F8);
  swift_storeEnumTagMultiPayload();
  sub_10007A620();
  sub_10007AC74();
  _ConditionalContent<>.init(storage:)();
  sub_100009908(&v144, &qword_10016DD98, &qword_100114640);
  v56 = v87;
  v78 = &qword_10016DD20;
  v79 = &qword_1001145F8;
  return sub_100009908(v56, v78, v79);
}

uint64_t sub_100078768@<X0>(uint64_t a1@<X8>)
{
  v24 = Image.init(systemName:)();
  v23 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v21 = static Color.orange.getter();
  v20 = swift_getKeyPath();
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.caption.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10001297C(v2, v4, v6 & 1);

  static Color.secondary.getter();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_10001297C(v7, v9, v11 & 1);

  *a1 = v24;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v23;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;
  *(a1 + 56) = v16 & 1;
  *(a1 + 64) = v18;

  sub_100003AE4(v12, v14, v16 & 1);

  sub_10001297C(v12, v14, v16 & 1);
}

void sub_100078A04(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100168E80 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_1001820A8);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_100078AFC()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100078BA8;

  return sub_100078CE4();
}

uint64_t sub_100078BA8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007B054, v5, v4);
}

uint64_t sub_100078CE4()
{
  v1[21] = v0;
  v2 = type metadata accessor for ContinuousClock();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[25] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[26] = v6;
  v1[27] = v5;

  return _swift_task_switch(sub_100078DD8, v6, v5);
}

uint64_t sub_100078DD8()
{
  v1 = v0[21];
  v2 = type metadata accessor for AsyncARViewWrapper();
  v3 = (v1 + *(v2 + 32));
  v4 = *v3;
  v0[28] = *v3;
  v5 = v3[1];
  v0[5] = v4;
  v0[29] = v5;
  v0[6] = v5;
  v0[15] = 1;
  v0[30] = sub_100002BE4(&qword_10016DCE8, &qword_1001145C0);
  State.wrappedValue.setter();
  v6 = *(v1 + *(v2 + 24));
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_100078EE0;
  v8 = v0[21];

  return sub_10008B280(v8);
}

uint64_t sub_100078EE0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = a1;

  v4 = *(v2 + 216);
  v5 = *(v2 + 208);

  return _swift_task_switch(sub_100079008, v5, v4);
}

uint64_t sub_100079008()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  if (v1)
  {
    v5 = v0[25];

    v0[13] = v4;
    v0[14] = v3;
    v0[20] = v1;
    State.wrappedValue.setter();
    v6 = v0[24];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v0[7] = v4;
    v0[8] = v3;
    v0[16] = 2;
    State.wrappedValue.setter();
    v9 = swift_task_alloc();
    v0[33] = v9;
    *v9 = v0;
    v9[1] = sub_10007913C;
    v10 = v0[21];

    return sub_1000BD234();
  }
}

uint64_t sub_10007913C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = a1;

  v4 = *(v2 + 216);
  v5 = *(v2 + 208);

  return _swift_task_switch(sub_100079264, v5, v4);
}

uint64_t sub_100079264()
{
  v23 = v0;
  if (v0[34])
  {
    v1 = v0[24];
    static Clock<>.continuous.getter();
    v2 = swift_task_alloc();
    v0[35] = v2;
    *v2 = v0;
    v2[1] = sub_100079548;
    v3 = v0[24];

    return sub_100105428(50000000000000000, 0, 0, 0, 1);
  }

  else
  {
    v5 = v0[25];

    sub_10007A5BC();
    swift_allocError();
    swift_willThrow();
    if (qword_100168E80 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006B0C(v6, qword_1001820A8);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v12 = v0[2];
      v11 = v0[3];
      v13 = v0[4];
      v14 = Error.localizedDescription.getter();
      v16 = sub_100006B44(v14, v15, &v22);

      *(v9 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to load device model: %s", v9, 0xCu);
      sub_1000052E4(v10);
    }

    v18 = v0[28];
    v17 = v0[29];
    v0[9] = v18;
    v19 = v0[30];
    v0[10] = v17;
    v0[17] = 3;
    sub_10007A610(v18);

    State.wrappedValue.setter();

    sub_10007A344(v18);

    v20 = v0[24];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100079548()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  v5 = v2[27];
  v6 = v2[26];
  if (v0)
  {
    v7 = sub_100079770;
  }

  else
  {
    v7 = sub_1000796D0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000796D0()
{
  v1 = v0[34];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v5 = v0[25];

  v0[11] = v4;
  v0[12] = v3;
  v0[19] = v1;
  State.wrappedValue.setter();
  v6 = v0[24];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100079770()
{
  v22 = v0;
  v1 = v0[34];
  v2 = v0[25];

  v3 = v0[36];
  if (qword_100168E80 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_1001820A8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_100006B44(v12, v13, &v21);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to load device model: %s", v7, 0xCu);
    sub_1000052E4(v8);
  }

  v16 = v0[28];
  v15 = v0[29];
  v0[9] = v16;
  v17 = v0[30];
  v0[10] = v15;
  v0[17] = 3;
  sub_10007A610(v16);

  State.wrappedValue.setter();

  sub_10007A344(v16);

  v18 = v0[24];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100079984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AsyncARViewWrapper();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_100079E40(a3, v7);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_100079EA8(v7, v15 + v14);
  sub_1000EE5F8(0, 0, v11, &unk_1001145D0, v15);
}

uint64_t sub_100079B3C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100079BE8;

  return sub_100078CE4();
}

uint64_t sub_100079BE8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000285C8, v5, v4);
}

uint64_t sub_100079D24(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100079DB8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AsyncARViewWrapper() + 36));
  v3 = *v1;
  v4 = v1[1];
  sub_100002BE4(&qword_10016DCF8, &qword_100118900);
  return State.wrappedValue.setter();
}

uint64_t sub_100079E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncARViewWrapper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncARViewWrapper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079F0C()
{
  v1 = *(type metadata accessor for AsyncARViewWrapper() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_100024388;

  return sub_100078AFC();
}

uint64_t sub_100079FD8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AsyncARViewWrapper() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100079984(a1, a2, v6);
}

unint64_t sub_10007A058()
{
  result = qword_10016DCC8;
  if (!qword_10016DCC8)
  {
    sub_10000459C(&qword_10016DCB0, &qword_100114590);
    sub_100012C48(&qword_10016DCD0, &qword_10016DCD8, &qword_1001145B8);
    sub_10007AE74(&qword_10016DCE0, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DCC8);
  }

  return result;
}

uint64_t sub_10007A140()
{
  v1 = type metadata accessor for AsyncARViewWrapper();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for Device();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[6]);

  v7 = *(v0 + v3 + v1[7]);

  v8 = (v0 + v3 + v1[8]);
  if (*v8 >= 4uLL)
  {
  }

  v9 = v8[1];

  v10 = *(v0 + v3 + v1[9] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007A270(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(type metadata accessor for AsyncARViewWrapper() - 8) + 80);

  return sub_100079D24(a1, a2);
}

unint64_t sub_10007A2F0()
{
  result = qword_10016DCF0;
  if (!qword_10016DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DCF0);
  }

  return result;
}

unint64_t sub_10007A344(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_10007A394()
{
  v1 = type metadata accessor for AsyncARViewWrapper();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = type metadata accessor for Device();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[6]);

  v8 = *(v0 + v3 + v1[7]);

  v9 = (v0 + v3 + v1[8]);
  if (*v9 >= 4uLL)
  {
  }

  v10 = v9[1];

  v11 = *(v0 + v3 + v1[9] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007A4CC()
{
  v2 = *(type metadata accessor for AsyncARViewWrapper() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000FA04;

  return sub_100079B3C();
}

unint64_t sub_10007A5BC()
{
  result = qword_10016DD00;
  if (!qword_10016DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD00);
  }

  return result;
}

unint64_t sub_10007A610(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_10007A620()
{
  result = qword_10016DD60;
  if (!qword_10016DD60)
  {
    sub_10000459C(&qword_10016DD20, &qword_1001145F8);
    sub_10007A6AC();
    sub_10007A9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD60);
  }

  return result;
}

unint64_t sub_10007A6AC()
{
  result = qword_10016DD68;
  if (!qword_10016DD68)
  {
    sub_10000459C(&qword_10016DD48, &qword_100114620);
    sub_10007A738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD68);
  }

  return result;
}

unint64_t sub_10007A738()
{
  result = qword_10016DD70;
  if (!qword_10016DD70)
  {
    sub_10000459C(&qword_10016DD40, &qword_100114618);
    sub_10007A7F0();
    sub_100012C48(&qword_10016A068, &qword_10016A070, &qword_10010EC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD70);
  }

  return result;
}

unint64_t sub_10007A7F0()
{
  result = qword_10016DD78;
  if (!qword_10016DD78)
  {
    sub_10000459C(&qword_10016DD38, &qword_100114610);
    sub_10007A8A8();
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD78);
  }

  return result;
}

unint64_t sub_10007A8A8()
{
  result = qword_10016DD80;
  if (!qword_10016DD80)
  {
    sub_10000459C(&qword_10016DD30, &qword_100114608);
    sub_10007A934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD80);
  }

  return result;
}

unint64_t sub_10007A934()
{
  result = qword_10016DD88;
  if (!qword_10016DD88)
  {
    sub_10000459C(&qword_10016DD28, &qword_100114600);
    sub_100012C48(&qword_100169F58, &qword_100169F30, &qword_10010EB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD88);
  }

  return result;
}

unint64_t sub_10007A9EC()
{
  result = qword_10016DD90;
  if (!qword_10016DD90)
  {
    sub_10000459C(&qword_10016DD98, &qword_100114640);
    sub_10007AA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD90);
  }

  return result;
}

unint64_t sub_10007AA78()
{
  result = qword_10016DDA0;
  if (!qword_10016DDA0)
  {
    sub_10000459C(&qword_10016DDA8, &qword_100114648);
    sub_10007AB30();
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DDA0);
  }

  return result;
}

unint64_t sub_10007AB30()
{
  result = qword_10016DDB0;
  if (!qword_10016DDB0)
  {
    sub_10000459C(&qword_10016DDB8, &qword_100114650);
    sub_10007ABBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DDB0);
  }

  return result;
}

unint64_t sub_10007ABBC()
{
  result = qword_10016DDC0;
  if (!qword_10016DDC0)
  {
    sub_10000459C(&qword_10016DDC8, &qword_100114658);
    sub_100012C48(&qword_10016DDD0, &qword_10016DDD8, &qword_100114660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DDC0);
  }

  return result;
}

unint64_t sub_10007AC74()
{
  result = qword_10016DDE0;
  if (!qword_10016DDE0)
  {
    sub_10000459C(&qword_10016DD08, &qword_1001145E0);
    sub_10007AD2C();
    sub_100012C48(&qword_10016DE00, &qword_10016DE08, &qword_100114668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DDE0);
  }

  return result;
}

unint64_t sub_10007AD2C()
{
  result = qword_10016DDE8;
  if (!qword_10016DDE8)
  {
    sub_10000459C(&qword_10016DD58, &unk_100114630);
    sub_10007ADB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DDE8);
  }

  return result;
}

unint64_t sub_10007ADB8()
{
  result = qword_10016DDF0;
  if (!qword_10016DDF0)
  {
    sub_10000459C(&qword_10016DD50, &qword_100114628);
    sub_10007AE74(&qword_10016DDF8, type metadata accessor for ARViewRepresentable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DDF0);
  }

  return result;
}

uint64_t sub_10007AE74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007AEF8()
{
  sub_10000459C(&qword_10016DCB8, &qword_100114598);
  sub_10000459C(&qword_10016DCB0, &qword_100114590);
  type metadata accessor for Device();
  sub_10007A058();
  sub_10007AE74(&qword_10016B020, &type metadata accessor for Device);
  swift_getOpaqueTypeConformance2();
  sub_10007A2F0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10007AFF8()
{
  result = qword_10016DE18;
  if (!qword_10016DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DE18);
  }

  return result;
}

uint64_t sub_10007B058()
{
  swift_getKeyPath();
  sub_10007B6FC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
}

uint64_t sub_10007B0CC(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10007B6FC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10007B1D0()
{
  swift_getKeyPath();
  sub_10007B6FC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
}

uint64_t sub_10007B244(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
}

uint64_t sub_10007B280()
{
  swift_getKeyPath();
  sub_10007B6FC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
}

uint64_t sub_10007B2F4(uint64_t a1)
{
  if (*(v1 + 32) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10007B6FC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *sub_10007B3F8(uint64_t a1)
{
  v1[3] = 0;
  v3 = type metadata accessor for GuestUserSessionModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 32) = 0;
  v7 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  v8 = type metadata accessor for GuestUserHandoverService();
  v9 = *(*(v8 - 8) + 56);
  v9(v6 + v7, 1, 1, v8);
  v9(v6 + v7, 1, 1, v8);
  ObservationRegistrar.init()();
  v1[4] = v6;
  ObservationRegistrar.init()();
  v1[2] = a1;
  return v1;
}

uint64_t sub_10007B504()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC17AppleVisionProApp24AirplayReceiverMainModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirplayReceiverMainModel()
{
  result = qword_10016DE50;
  if (!qword_10016DE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007B60C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10007B6C0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

unint64_t sub_10007B6FC()
{
  result = qword_10016F280;
  if (!qword_10016F280)
  {
    type metadata accessor for AirplayReceiverMainModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F280);
  }

  return result;
}

uint64_t sub_10007B764()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_10007B7A0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = sub_100002BE4(&qword_10016E1A0, &qword_100114D18);
  v4 = *(*(v28 - 8) + 64);
  v5 = __chkstk_darwin(v28);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ARView.RenderOptions();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v10 + 16);
  v27 = v2;
  v17(v14, v2, v9);
  v25 = sub_10007DA7C(&qword_10016E1A8, &type metadata accessor for ARView.RenderOptions);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v18 = v28;
  sub_10007DA7C(&qword_10016E1B0, &type metadata accessor for ARView.RenderOptions);
  v26 = a2;
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v18 + 48);
  *v8 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v10 + 32))(&v8[v20], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v21 = v26;
    v17(&v8[v20], v26, v9);
    v17(v14, v21, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v22 = v29;
  sub_10001D504(v8, v29, &qword_10016E1A0, &qword_100114D18);
  v23 = *v22;
  (*(v10 + 32))(v30, &v22[*(v18 + 48)], v9);
  return v23;
}

uint64_t sub_10007BAA4(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = sub_100002BE4(&qword_10016E188, &qword_100114B78);
  v4 = *(*(v28 - 8) + 64);
  v5 = __chkstk_darwin(v28);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ARView.DebugOptions();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v10 + 16);
  v27 = v2;
  v17(v14, v2, v9);
  v25 = sub_10007DA7C(&qword_10016E180, &type metadata accessor for ARView.DebugOptions);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v18 = v28;
  sub_10007DA7C(&qword_10016E190, &type metadata accessor for ARView.DebugOptions);
  v26 = a2;
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v18 + 48);
  *v8 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v10 + 32))(&v8[v20], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v21 = v26;
    v17(&v8[v20], v26, v9);
    v17(v14, v21, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v22 = v29;
  sub_10001D504(v8, v29, &qword_10016E188, &qword_100114B78);
  v23 = *v22;
  (*(v10 + 32))(v30, &v22[*(v18 + 48)], v9);
  return v23;
}

double sub_10007BDA8()
{
  v1 = *(v0 + *(type metadata accessor for ARViewRepresentable() + 24));
  swift_getKeyPath();
  sub_10007DA7C(&qword_10016CC90, type metadata accessor for DeviceModelParameters);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = __sincosf_stret((v1[5] * 0.017453) * 0.5);
  v3 = vmulq_n_f32(xmmword_100114910, v2.__sinval);
  v3.i32[3] = LODWORD(v2.__cosval);
  v18 = v3;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = __sincosf_stret((v1[6] * 0.017453) * 0.5);
  v17 = vmulq_n_f32(xmmword_100114920, v4.__sinval);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = __sincosf_stret((v1[7] * 0.017453) * 0.5);
  v6 = vmulq_n_f32(xmmword_100114930, v5.__sinval);
  v6.i32[3] = LODWORD(v5.__cosval);
  v7 = vnegq_f32(v6);
  v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
  v9 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v7, 8uLL), *v17.f32, 1), vextq_s8(v8, v8, 8uLL), v17.f32[0]);
  v10 = vrev64q_s32(v6);
  v10.i32[0] = v7.i32[1];
  v10.i32[3] = v7.i32[2];
  v11 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v6, v4.__cosval), v10, v17, 2), v9);
  v12 = vnegq_f32(v18);
  v13 = vtrn2q_s32(v18, vtrn1q_s32(v18, v12));
  v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v18, v12, 8uLL), *v11.f32, 1), vextq_s8(v13, v13, 8uLL), v11.f32[0]);
  v15 = vrev64q_s32(v18);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  *&result = vaddq_f32(v14, vmlaq_laneq_f32(vmulq_laneq_f32(v18, v11, 3), v15, v11, 2)).u64[0];
  return result;
}

uint64_t sub_10007BFB0(uint64_t a1)
{
  v2 = v1;
  v72 = a1;
  v73 = type metadata accessor for Entity.ComponentSet();
  *&v76 = *(v73 - 8);
  v3 = *(v76 + 64);
  __chkstk_darwin(v73);
  v68 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for OrthographicCameraComponent();
  v71 = *(v77 - 8);
  v5 = *(v71 + 64);
  __chkstk_darwin(v77);
  v75 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ARView.RenderOptions();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v64 - v13;
  v15 = type metadata accessor for ARView.Environment.Background();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = type metadata accessor for ARView.CameraMode();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  (*(v20 + 104))(v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ARView.CameraMode.nonAR(_:));
  v21 = objc_allocWithZone(type metadata accessor for ARView());
  v22 = ARView.init(frame:cameraMode:automaticallyConfigureSession:)();
  v23 = [objc_opt_self() clearColor];
  static ARView.Environment.Background.color(_:)();

  v24 = dispatch thunk of ARView.environment.modify();
  ARView.Environment.background.setter();
  v24(v78, 0);
  static ARView.RenderOptions.disableAREnvironmentLighting.getter();
  v25 = ARView.renderOptions.modify();
  sub_10007B7A0(v14, v12);
  v26 = *(v8 + 8);
  v26(v12, v7);
  v26(v14, v7);
  v25(v78, 0);
  static ARView.RenderOptions.disableDepthOfField.getter();
  v27 = ARView.renderOptions.modify();
  sub_10007B7A0(v14, v12);
  v26(v12, v7);
  v26(v14, v7);
  v27(v78, 0);
  static ARView.RenderOptions.disableCameraGrain.getter();
  v74 = v22;
  v28 = ARView.renderOptions.modify();
  sub_10007B7A0(v14, v12);
  v26(v12, v7);
  v26(v14, v7);
  v28(v78, 0);
  static ARView.RenderOptions.disableGroundingShadows.getter();
  v29 = ARView.renderOptions.modify();
  sub_10007B7A0(v14, v12);
  v26(v12, v7);
  v26(v14, v7);
  v29(v78, 0);
  v30 = type metadata accessor for AnchorEntity();
  sub_100002BE4(&qword_10016E198, &qword_100114B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001119B0;
  v67 = type metadata accessor for ARViewRepresentable();
  v32 = *(v2 + *(v67 + 24));
  swift_getKeyPath();
  v33 = OBJC_IVAR____TtC17AppleVisionProApp21DeviceModelParameters___observationRegistrar;
  v78[0] = v32;
  sub_10007DA7C(&qword_10016CC90, type metadata accessor for DeviceModelParameters);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(inited + 32) = v32[12];
  swift_getKeyPath();
  v78[0] = v32;
  v64[4] = v33;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(inited + 36) = v32[13];
  swift_getKeyPath();
  v78[0] = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(inited + 40) = v32[14];
  sub_10007D9F8(inited);
  v70 = v34;
  swift_setDeallocating();
  v35 = AnchorEntity.__allocating_init(world:)();
  v36 = type metadata accessor for Entity();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = Entity.init()();
  OrthographicCameraComponent.init()();
  v40 = v68;
  dispatch thunk of Entity.components.getter();
  Entity.ComponentSet.set<A>(_:)();
  v41 = *(v76 + 8);
  *&v76 = v76 + 8;
  v65 = v41;
  v41(v40, v73);
  HasTransform.position.getter();
  v64[2] = v36;
  HasTransform.look(at:from:upVector:relativeTo:)();
  v64[3] = v30;
  HasHierarchy.addChild(_:preservingWorldTransform:)();
  dispatch thunk of ARView.scene.getter();

  dispatch thunk of Scene.addAnchor(_:)();

  v64[1] = sub_100002BE4(&qword_10016E178, &qword_100114A80);
  UIViewRepresentableContext.coordinator.getter();
  v42 = *(v78[0] + 32);
  *(v78[0] + 32) = v35;
  *&v70 = v35;

  swift_getKeyPath();
  v78[0] = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = v32[15];
  OrthographicCameraComponent.scale.setter();
  swift_getKeyPath();
  v78[0] = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = v32[16];
  OrthographicCameraComponent.far.setter();
  swift_getKeyPath();
  v78[0] = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = v32[17];
  OrthographicCameraComponent.near.setter();
  v69 = v39;
  dispatch thunk of Entity.components.getter();
  Entity.ComponentSet.set<A>(_:)();
  v65(v40, v73);
  v46 = *(v67 + 28);
  if (*(v66 + v46))
  {
    v47 = *(v66 + v46);

    v48 = Entity.clone(recursive:)();

LABEL_5:
    swift_getKeyPath();
    v78[0] = v32;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v50 = (v32 + 11);
    vld1q_dup_f32(v50);
    HasTransform.scale.setter();
    sub_10007BDA8();
    HasTransform.orientation.setter();
    swift_getKeyPath();
    v78[0] = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LODWORD(v51) = v32[8];
    v76 = v51;
    swift_getKeyPath();
    v78[0] = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v52 = v76;
    DWORD1(v52) = v32[9];
    v76 = v52;
    swift_getKeyPath();
    v78[0] = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = v32[10];
    v54 = AnchorEntity.__allocating_init(world:)();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
    v55 = v74;
    dispatch thunk of ARView.scene.getter();

    dispatch thunk of Scene.addAnchor(_:)();

    UIViewRepresentableContext.coordinator.getter();
    v56 = *(v78[0] + 16);
    *(v78[0] + 16) = v48;

    UIViewRepresentableContext.coordinator.getter();

    (*(v71 + 8))(v75, v77);
    v57 = *(v78[0] + 40);
    *(v78[0] + 40) = v54;

    return v55;
  }

  v49 = sub_1000BD63C();
  if (v49)
  {
    v48 = v49;
    goto LABEL_5;
  }

  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_100006B0C(v59, qword_100181FA0);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v55 = v74;
  if (v62)
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "Failed loading Vision product 3D model in fallback.", v63, 2u);
  }

  else
  {
  }

  (*(v71 + 8))(v75, v77);
  return v55;
}

void sub_10007CBF4(uint64_t a1)
{
  v73.i64[0] = a1;
  v2 = sub_100002BE4(&qword_10016E170, &qword_100114A78);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v67 - v4;
  v6 = type metadata accessor for ARView.DebugOptions();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v67 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v67 - v16;
  __chkstk_darwin(v15);
  v19 = &v67 - v18;
  sub_100002BE4(&qword_10016E178, &qword_100114A80);
  UIViewRepresentableContext.coordinator.getter();
  v20 = *(v74[0] + 16);

  if (v20)
  {
    v72.i64[0] = v20;
    *&v68 = type metadata accessor for ARViewRepresentable();
    v21 = *(v68 + 24);
    *&v69 = v1;
    v22 = *(v1 + v21);
    swift_getKeyPath();
    v23 = OBJC_IVAR____TtC17AppleVisionProApp21DeviceModelParameters___observationRegistrar;
    v74[0] = v22;
    v70 = sub_10007DA7C(&qword_10016CC90, type metadata accessor for DeviceModelParameters);
    v71 = v23;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v22 + 105) == 1)
    {
      static ARView.DebugOptions.showStatistics.getter();
      v24 = dispatch thunk of ARView.debugOptions.modify();
      sub_10007BAA4(v19, v17);
      v25 = *(v7 + 8);
      v25(v17, v6);
      v25(v19, v6);
      v24(v74, 0);
    }

    else
    {
      static ARView.DebugOptions.showStatistics.getter();
      v73.i64[0] = dispatch thunk of ARView.debugOptions.modify();
      (*(v7 + 16))(v19);
      sub_10007DA7C(&qword_10016E180, &type metadata accessor for ARView.DebugOptions);
      dispatch thunk of SetAlgebra.intersection(_:)();
      if (dispatch thunk of SetAlgebra.isEmpty.getter())
      {
        v30 = *(v7 + 8);
        v30(v11, v6);
        v30(v14, v6);
        v31 = 1;
      }

      else
      {
        dispatch thunk of SetAlgebra.subtract(_:)();
        (*(v7 + 8))(v14, v6);
        (*(v7 + 32))(v5, v11, v6);
        v31 = 0;
      }

      (*(v7 + 56))(v5, v31, 1, v6);
      sub_10007D950(v5);
      (v73.i64[0])(v74, 0);
    }

    v32 = *(v69 + *(v68 + 20));
    swift_getKeyPath();
    v74[0] = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = -(v32 * *(v22 + 72));
    swift_getKeyPath();
    v74[0] = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = *(v22 + 76);
    v35 = v34 * 0.017453;
    if (v33 < (v34 * 0.017453))
    {
      v35 = v33;
    }

    v36 = -(v34 * 0.017453);
    if (v35 >= v36)
    {
      v36 = v35;
    }

    v38 = __sincosf_stret(v36 * 0.5);
    v37.f32[0] = v38.__cosval;
    v73 = v37;
    v69 = xmmword_100114910;
    v72 = vmulq_n_f32(xmmword_100114910, v38.__sinval);
    swift_getKeyPath();
    v74[0] = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v39 = __sincosf_stret((*(v22 + 20) * 0.017453) * 0.5);
    v40 = vmulq_n_f32(v69, v39.__sinval);
    v40.i32[3] = LODWORD(v39.__cosval);
    v69 = v40;
    swift_getKeyPath();
    v74[0] = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = __sincosf_stret((*(v22 + 24) * 0.017453) * 0.5);
    *&v41 = v42.__cosval;
    v68 = v41;
    v67 = vmulq_n_f32(xmmword_100114920, v42.__sinval);
    swift_getKeyPath();
    v74[0] = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v43 = __sincosf_stret((*(v22 + 28) * 0.017453) * 0.5);
    v44 = vmulq_n_f32(xmmword_100114930, v43.__sinval);
    v44.i32[3] = LODWORD(v43.__cosval);
    v45 = vnegq_f32(v44);
    v46 = vtrn2q_s32(v44, vtrn1q_s32(v44, v45));
    v47 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v44, v45, 8uLL), *v67.f32, 1), vextq_s8(v46, v46, 8uLL), v67.f32[0]);
    v48 = vrev64q_s32(v44);
    v48.i32[0] = v45.i32[1];
    v48.i32[3] = v45.i32[2];
    v49 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v44, *&v68), v48, v67, 2), v47);
    v50 = vnegq_f32(v69);
    v51 = vtrn2q_s32(v69, vtrn1q_s32(v69, v50));
    v52 = vrev64q_s32(v69);
    v52.i32[0] = v50.i32[1];
    v52.i32[3] = v50.i32[2];
    v53 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v69, v50, 8uLL), *v49.f32, 1), vextq_s8(v51, v51, 8uLL), v49.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v69, v49, 3), v52, v49, 2));
    v54 = vnegq_f32(v53);
    v55 = vtrn2q_s32(v53, vtrn1q_s32(v53, v54));
    v56 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v53, v54, 8uLL), *v72.f32, 1), vextq_s8(v55, v55, 8uLL), v72.f32[0]);
    v57 = vrev64q_s32(v53);
    v57.i32[0] = v54.i32[1];
    v57.i32[3] = v54.i32[2];
    v58 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v53, v73.f32[0]), v57, v72, 2), v56);
    v59 = vmulq_f32(v58, v58);
    v60 = vadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
    if (vaddv_f32(v60) == 0.0)
    {
      v61 = xmmword_100114940;
    }

    else
    {
      v62 = vadd_f32(v60, vdup_lane_s32(v60, 1)).u32[0];
      v63 = vrsqrte_f32(v62);
      v64 = vmul_f32(v63, vrsqrts_f32(v62, vmul_f32(v63, v63)));
      v61 = vmulq_n_f32(v58, vmul_f32(v64, vrsqrts_f32(v62, vmul_f32(v64, v64))).f32[0]);
    }

    v73 = v61;
    type metadata accessor for Entity();
    v65 = HasTransform.transform.modify();
    v66[1] = v73;
    v65(v74, 0);
  }

  else
  {
    if (qword_100168E28 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006B0C(v26, qword_100181FA0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "No model entity found in coordinator", v29, 2u);
    }
  }
}

uint64_t sub_10007D3E4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_10007D46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007D53C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ARViewRepresentable()
{
  result = qword_10016E120;
  if (!qword_10016E120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007D640()
{
  type metadata accessor for Device();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DeviceModelParameters();
    if (v1 <= 0x3F)
    {
      sub_10007D6E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10007D6E4()
{
  if (!qword_10016E130)
  {
    type metadata accessor for Entity();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10016E130);
    }
  }
}

double sub_10007D78C@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ARViewRepresentable.Coordinator();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *a1 = v2;
  return result;
}

uint64_t sub_10007D7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007DA7C(&qword_10016E168, type metadata accessor for ARViewRepresentable);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10007D85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007DA7C(&qword_10016E168, type metadata accessor for ARViewRepresentable);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10007D8F0()
{
  sub_10007DA7C(&qword_10016E168, type metadata accessor for ARViewRepresentable);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10007D950(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016E170, &qword_100114A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007D9F8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_9;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
    }
  }

  if (v1 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10007DA7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10007DAC4()
{
  v0 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = static BundleIdentifierConstants.currentPrivacyVersion.getter();
  static UserDefaultUtilities.SharedConstants.privacyViewVersion.getter();
  v6 = String._bridgeToObjectiveC()();

  [v4 setInteger:v5 forKey:v6];

  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 delegate];

  if (v8)
  {
    type metadata accessor for AppDelegate();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = [objc_opt_self() currentNotificationCenter];
      [v11 setDelegate:v10];

      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = &protocol witness table for MainActor;
      v14[4] = v10;
      sub_1000EE5F8(0, 0, v3, &unk_10011A290, v14);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10007DD1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007DD5C()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = *(*(sub_100002BE4(&unk_100171500, &qword_10011A530) - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v1[4] = v3;
  v4 = type metadata accessor for Storefront();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v7 = async function pointer to static Storefront.current.getter[1];
  v8 = swift_task_alloc();
  v1[10] = v8;
  *v8 = v1;
  v8[1] = sub_10007DEB4;

  return static Storefront.current.getter(v3);
}

uint64_t sub_10007DEB4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 88) = v6;
  *(v1 + 96) = v5;

  return _swift_task_switch(sub_10007DFF8, v6, v5);
}

uint64_t sub_10007DFF8()
{
  v26 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009908(v3, &unk_100171500, &qword_10011A530);
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006B0C(v4, qword_100182108);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[3];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136315138;
      v10 = _typeName(_:qualified:)();
      v12 = sub_100006B44(v10, v11, &v25);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s Unable to determine users region based on App Store.", v8, 0xCu);
      sub_1000052E4(v9);
    }

    v13 = swift_task_alloc();
    v0[13] = v13;
    *v13 = v0;
    v13[1] = sub_10007E2B8;
    v14 = v0[2];

    return sub_10007E6BC();
  }

  else
  {
    v16 = v0[9];
    v17 = v0[7];
    v18 = v0[2];

    (*(v2 + 32))(v17, v3, v1);
    v19 = Storefront.countryCode.getter();
    v21 = sub_10007E45C(v19, v20);

    (*(v2 + 8))(v17, v1);
    v22 = v0[7];
    v23 = v0[4];

    v24 = v0[1];

    return v24(v21 & 1);
  }
}

uint64_t sub_10007E2B8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = a1;

  v4 = *(v2 + 96);
  v5 = *(v2 + 88);

  return _swift_task_switch(sub_10007E3E0, v5, v4);
}

uint64_t sub_10007E3E0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 112);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_10007E45C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6164616E6143 && a2 == 0xE600000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x796E616D726547 && a2 == 0xE700000000000000)
  {
    goto LABEL_14;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x6F4B206874756F53 && a2 == 0xEB00000000616572)
  {
    goto LABEL_14;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 5128515 && a2 == 0xE300000000000000)
  {
    goto LABEL_14;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7 = a1 == 5588292 && a2 == 0xE300000000000000;
  v8 = v7;
  if ((v6 & 1) != 0 || v8)
  {
    goto LABEL_14;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v10 = a1 == 5394251 && a2 == 0xE300000000000000;
  v11 = v10;
  if (v9 & 1) != 0 || v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 16707 && a2 == 0xE200000000000000 || ((v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), a1 == 17732) ? (v13 = a2 == 0xE200000000000000) : (v13 = 0), !v13 ? (v14 = 0) : (v14 = 1), (v12 & 1) != 0 || (v14 & 1) != 0 || ((v15 = _stringCompareWithSmolCheck(_:_:expecting:)(), a1 == 21067) ? (v16 = a2 == 0xE200000000000000) : (v16 = 0), !v16 ? (v17 = 0) : (v17 = 1), (v15 & 1) != 0 || (v17 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())))
  {
LABEL_14:

    return sub_10007EF2C();
  }

  else
  {

    return sub_10007F080();
  }
}

uint64_t sub_10007E6BC()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007E760, v3, v2);
}

uint64_t sub_10007E760()
{
  v64 = v1;
  v2 = v1;
  v3 = v1[4];

  v4 = [objc_opt_self() currentEstimates];
  sub_10007F5D8();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_57;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &PINViewModel.ivar_lyt; v7; i = &PINViewModel.ivar_lyt)
  {
    v9 = 0;
    v10 = v5 & 0xC000000000000001;
    v61 = v5 & 0xFFFFFFFFFFFFFF8;
    v11 = &selRef_currentNotificationCenter;
    v60 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v61 + 16))
        {
          __break(1u);
          goto LABEL_67;
        }

        v12 = *(v5 + 8 * v9 + 32);
      }

      v0 = v12;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v62 = v9 + 1;
      v13 = [v12 v11[2]];
      if (v13)
      {
        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = v15 == 0x6164616E6143 && v17 == 0xE600000000000000;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v15 == 0x796E616D726547 && v17 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v15 == 0x6F4B206874756F53 && v17 == 0xEB00000000616572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v15 == 5128515 && v17 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v15 == 5588292 && v17 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v15 == 5394251 && v17 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v15 == 16707 && v17 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v15 == 17732 && v17 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v15 == 21067 && v17 == 0xE200000000000000)
        {

LABEL_50:
          if (i[468] == -1)
          {
LABEL_51:
            v32 = type metadata accessor for Logger();
            sub_100006B0C(v32, qword_100182108);
            v33 = Logger.logObject.getter();
            v34 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v33, v34))
            {
              v35 = v2[3];
              v36 = swift_slowAlloc();
              v37 = swift_slowAlloc();
              v63 = v37;
              *v36 = 136315138;
              v38 = _typeName(_:qualified:)();
              v40 = sub_100006B44(v38, v39, &v63);

              *(v36 + 4) = v40;
              _os_log_impl(&_mh_execute_header, v33, v34, "%s User is in a restricted location.", v36, 0xCu);
              sub_1000052E4(v37);
            }

            v41 = v2[2];
            v42 = sub_10007EF2C();
            goto LABEL_54;
          }

LABEL_67:
          swift_once();
          goto LABEL_51;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_50;
        }

        if (i[468] != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100006B0C(v20, qword_100182108);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = v2[3];
          v58 = v7;
          v24 = swift_slowAlloc();
          v59 = v2;
          v57 = swift_slowAlloc();
          v63 = v57;
          *v24 = 136315138;
          v25 = _typeName(_:qualified:)();
          v27 = v6;
          v28 = i;
          v29 = v5;
          v30 = v0;
          v31 = sub_100006B44(v25, v26, &v63);

          *(v24 + 4) = v31;
          v0 = v30;
          v5 = v29;
          i = v28;
          v6 = v27;
          _os_log_impl(&_mh_execute_header, v21, v22, "%s User is in a unrestricted location.", v24, 0xCu);
          sub_1000052E4(v57);
          v2 = v59;

          v7 = v58;
        }

        v11 = &selRef_currentNotificationCenter;
        v10 = v60;
        if (v6)
        {
          if (_CocoaArrayWrapper.endIndex.getter() == 1)
          {
LABEL_55:
            v44 = v2[2];

            v42 = sub_10007F080();
LABEL_54:
            v43 = v42;

            goto LABEL_63;
          }
        }

        else if (*(v61 + 16) == 1)
        {
          goto LABEL_55;
        }
      }

      ++v9;
      if (v62 == v7)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_57:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_58:

  if (i[468] != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100006B0C(v45, qword_100182108);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v2[3];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v63 = v50;
    *v49 = 136315138;
    v51 = _typeName(_:qualified:)();
    v53 = sub_100006B44(v51, v52, &v63);

    *(v49 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v46, v47, "%s Unable to determine users Regulatory domain.", v49, 0xCu);
    sub_1000052E4(v50);
  }

  v54 = v2[2];
  v43 = sub_10007F1D4();
LABEL_63:
  v55 = v2[1];

  return v55(v43 & 1);
}

uint64_t sub_10007EF2C()
{
  swift_getObjectType();
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100182108);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100006B44(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s User is in a restricted location.", v3, 0xCu);
    sub_1000052E4(v4);
  }

  return 1;
}

uint64_t sub_10007F080()
{
  swift_getObjectType();
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100182108);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100006B44(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s User is in a unrestricted location.", v3, 0xCu);
    sub_1000052E4(v4);
  }

  return 0;
}

uint64_t sub_10007F1D4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100002BE4(&qword_10016E1C0, &unk_100114D30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.current.getter();
  Locale.region.getter();
  v10 = type metadata accessor for Locale.Region();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_100009908(v4, &qword_10016E1C0, &unk_100114D30);
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006B0C(v12, qword_100182108);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v33 = ObjectType;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136315138;
      v18 = _typeName(_:qualified:)();
      v20 = sub_100006B44(v18, v19, &v34);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s Unable to determine users region based on Locale.", v16, 0xCu);
      sub_1000052E4(v17);
    }

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 136315138;
      v25 = _typeName(_:qualified:)();
      v27 = sub_100006B44(v25, v26, &v34);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s User is in a restricted location.", v23, 0xCu);
      sub_1000052E4(v24);
    }

    (*(v6 + 8))(v9, v5);
    v28 = 1;
  }

  else
  {
    v29 = Locale.Region.identifier.getter();
    v31 = v30;
    (*(v11 + 8))(v4, v10);
    v28 = sub_10007E45C(v29, v31);

    (*(v6 + 8))(v9, v5);
  }

  return v28 & 1;
}

unint64_t sub_10007F5D8()
{
  result = qword_10016E1B8;
  if (!qword_10016E1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016E1B8);
  }

  return result;
}

uint64_t sub_10007F624(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 153) = a3;
  *(v3 + 160) = a1;
  *(v3 + 168) = a2;
  v4 = *(*(sub_100002BE4(&qword_10016BA40, &qword_100110FC0) - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v5 = type metadata accessor for URL();
  *(v3 + 192) = v5;
  v6 = *(v5 - 8);
  *(v3 + 200) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10007F744, 0, 0);
}

uint64_t sub_10007F744()
{
  v47 = v0;
  v1 = *(v0 + 153);
  if (*(v0 + 153))
  {
    if (v1 == 1)
    {
      v2 = [objc_opt_self() mainBundle];
      v3 = String._bridgeToObjectiveC()();
      v4 = String._bridgeToObjectiveC()();
      v5 = [v2 URLForResource:v3 withExtension:v4];

      if (v5)
      {
        v6 = *(v0 + 208);
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        if (qword_100168E60 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        sub_100006B0C(v7, qword_100182048);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v46[0] = v11;
          *v10 = 136315138;
          *(v10 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v46);
          _os_log_impl(&_mh_execute_header, v8, v9, "%s - Using JETPACK - Local Dev", v10, 0xCu);
          sub_1000052E4(v11);
        }

        (*(*(v0 + 200) + 32))(*(v0 + 160), *(v0 + 208), *(v0 + 192));
LABEL_22:
        v33 = *(v0 + 216);
        v32 = *(v0 + 224);
        v34 = *(v0 + 208);
        v36 = *(v0 + 176);
        v35 = *(v0 + 184);

        v37 = *(v0 + 8);
LABEL_29:

        return v37();
      }

      if (qword_100168E60 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100006B0C(v38, qword_100182048);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v46[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v46);
        v25 = "%s - Unable to find a local jetpack in the bundle.";
        goto LABEL_27;
      }
    }

    else
    {
      v17 = *(v0 + 192);
      v18 = *(v0 + 200);
      v19 = *(v0 + 184);
      URL.init(string:)();
      if ((*(v18 + 48))(v19, 1, v17) != 1)
      {
        v26 = *(*(v0 + 200) + 32);
        v26(*(v0 + 224), *(v0 + 184), *(v0 + 192));
        if (qword_100168E60 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_100006B0C(v27, qword_100182048);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v46[0] = v31;
          *v30 = 136315138;
          *(v30 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v46);
          _os_log_impl(&_mh_execute_header, v28, v29, "%s - Using JETPACK - Staging", v30, 0xCu);
          sub_1000052E4(v31);
        }

        v26(*(v0 + 160), *(v0 + 224), *(v0 + 192));
        goto LABEL_22;
      }

      sub_100009908(*(v0 + 184), &qword_10016BA40, &qword_100110FC0);
      if (qword_100168E60 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006B0C(v20, qword_100182048);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v46[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v46);
        v25 = "%s - Unable to construct Jetpack Staging URL";
LABEL_27:
        _os_log_impl(&_mh_execute_header, v21, v22, v25, v23, 0xCu);
        sub_1000052E4(v24);
      }
    }

    sub_100080DE4();
    swift_allocError();
    *v39 = v1;
    swift_willThrow();
    v41 = *(v0 + 216);
    v40 = *(v0 + 224);
    v42 = *(v0 + 208);
    v44 = *(v0 + 176);
    v43 = *(v0 + 184);

    v37 = *(v0 + 8);
    goto LABEL_29;
  }

  v12 = *(v0 + 168);
  v13 = Bag.amsBag.getter();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 stringForKey:v14];
  *(v0 + 232) = v15;
  swift_unknownObjectRelease();

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10007FEF8;
  v16 = swift_continuation_init();
  *(v0 + 136) = sub_100002BE4(&qword_10016E1D0, &qword_100114D68);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100080858;
  *(v0 + 104) = &unk_10015D2A0;
  *(v0 + 112) = v16;
  [v15 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}