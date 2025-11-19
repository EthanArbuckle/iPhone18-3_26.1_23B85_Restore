uint64_t sub_10013CA94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v46 = sub_1000024C4(&qword_100229228);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v40 - v3;
  v47 = sub_1000024C4(&qword_100229230);
  v45 = *(v47 - 8);
  v4 = __chkstk_darwin(v47);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = &v40 - v6;
  v7 = type metadata accessor for PlainButtonStyle();
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000024C4(&qword_100229238);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v42 = sub_1000024C4(&qword_100229240);
  v52 = *(v42 - 8);
  v14 = __chkstk_darwin(v42);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = &v40 - v16;
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  v55 = a1;
  sub_10013E24C(a1, v56);
  sub_1000024C4(&qword_100229248);
  sub_10013E588();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_10000BFFC(&qword_100229298, &qword_100229238);
  sub_10013E810(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  v20 = *(v53 + 8);
  v53 += 8;
  v20(v9, v7);
  (*(v11 + 8))(v13, v10);
  v21 = swift_allocObject();
  v22 = *(a1 + 48);
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(a1 + 64);
  v23 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v23;
  v54 = a1;
  sub_10013E24C(a1, v56);
  sub_1000024C4(&qword_1002292A0);
  sub_10013E8C0();
  v24 = v43;
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_10000BFFC(&qword_1002292C0, &qword_100229228);
  v25 = v51;
  v26 = v46;
  View.buttonStyle<A>(_:)();
  v20(v9, v7);
  (*(v48 + 8))(v24, v26);
  v27 = *(v52 + 16);
  v28 = v41;
  v29 = v42;
  v27(v41, v50, v42);
  v30 = v45;
  v31 = *(v45 + 16);
  v32 = v44;
  v33 = v25;
  v34 = v47;
  v31(v44, v33, v47);
  v35 = v49;
  v27(v49, v28, v29);
  v36 = sub_1000024C4(&qword_1002292C8);
  v31(&v35[*(v36 + 48)], v32, v34);
  v37 = *(v30 + 8);
  v37(v51, v34);
  v38 = *(v52 + 8);
  v38(v50, v29);
  v37(v32, v34);
  return (v38)(v28, v29);
}

void sub_10013D18C(__int128 *a1)
{
  aBlock = a1[2];
  LOBYTE(v15) = *(a1 + 48);
  v13[0] = 0;
  sub_1000024C4(&qword_100229210);
  Binding.wrappedValue.setter();
  v2 = *(a1 + 7);
  if (v2)
  {
    v12 = *a1;
    sub_1000024C4(&qword_100221508);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B3B60;
    v4 = v12;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_100228B70;
    *(inited + 32) = 0;
    *(inited + 40) = v4;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_100228B48;
    *(inited + 72) = 13;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_100228BD0;
    *(inited + 112) = 12;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_100228BA8;
    *(inited + 152) = xmmword_1001C0340;
    *(inited + 168) = 3;
    if (*(v2 + 72))
    {
      v5 = *(v2 + 64);
      v6 = *(v2 + 72);
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    *(&aBlock + 1) = v5;
    v15 = v6;

    sub_100020764(&v12, v13);

    v7 = sub_1001894F4(1, 5, 1, inited);
    v11 = v7;
    sub_100006C98(&aBlock, v13);
    sub_100118768(4, v13, &v11, &type metadata for AnalyticsString, &off_100228B70);
    sub_100006CF4(&aBlock);
    v8 = String._bridgeToObjectiveC()();
    v9 = swift_allocObject();
    v9[2] = 0xD00000000000001ELL;
    v9[3] = 0x80000001001C4640;
    v9[4] = v7;
    v17 = sub_100026FEC;
    v18 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v15 = sub_10015B4A4;
    v16 = &unk_100218830;
    v10 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10013E810(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10013D4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_1000024C4(&qword_100229270);
  __chkstk_darwin(v3 - 8);
  v72 = &v66 - v4;
  v71 = sub_1000024C4(&qword_100229260);
  __chkstk_darwin(v71);
  v73 = &v66 - v5;
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v68 = v12;
  v69 = v13;
  v15 = v14;

  sub_100017398(v6, v8, v10 & 1);

  v107 = *(a1 + 32);
  v108 = *(a1 + 48);
  v89 = *(a1 + 32);
  LOBYTE(v90) = *(a1 + 48);
  v70 = sub_1000024C4(&qword_100229210);
  Binding.wrappedValue.getter();
  if (v76)
  {
    v16 = static Color.primary.getter();
  }

  else
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }

    v16 = qword_1002390A8;
  }

  *&v89 = v16;
  v17 = v68;
  v67 = Text.foregroundStyle<A>(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_100017398(v11, v17, v15 & 1);

  KeyPath = swift_getKeyPath();
  v25 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v21 & 1;
  v104 = v21 & 1;
  v103 = 0;
  v102 = 0;
  v35 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v105 = 0;
  v44 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v106 = 0;
  *&v76 = v67;
  *(&v76 + 1) = v19;
  LOBYTE(v77) = v34;
  *(&v77 + 1) = v23;
  *&v78 = KeyPath;
  *(&v78 + 1) = 1;
  LOBYTE(v79) = 0;
  BYTE8(v79) = v25;
  *&v80 = v27;
  *(&v80 + 1) = v29;
  *&v81 = v31;
  *(&v81 + 1) = v33;
  LOBYTE(v82) = 0;
  BYTE8(v82) = v35;
  *&v83 = v37;
  *(&v83 + 1) = v39;
  *&v84 = v41;
  *(&v84 + 1) = v43;
  LOBYTE(v85) = 0;
  BYTE8(v85) = v44;
  *&v86 = v45;
  *(&v86 + 1) = v46;
  *&v87 = v47;
  *(&v87 + 1) = v48;
  v88 = 0;
  sub_1000024C4(&qword_100229280);
  sub_10013EB1C(&qword_100229278, &qword_100229280, &unk_1001C0640, sub_10013E7E0);
  v49 = v72;
  View.accessibilityIdentifier(_:)();
  v99 = v86;
  v100 = v87;
  v101 = v88;
  v95 = v82;
  v96 = v83;
  v97 = v84;
  v98 = v85;
  v91 = v78;
  v92 = v79;
  v93 = v80;
  v94 = v81;
  v89 = v76;
  v90 = v77;
  sub_1000050C4(&v89, &qword_100229280);
  v76 = v107;
  LOBYTE(v77) = v108;
  Binding.wrappedValue.getter();
  if (v75)
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }

    v50 = qword_1002390A8;
  }

  else
  {
    v50 = static Color.primary.getter();
  }

  v51 = static Edge.Set.all.getter();
  v52 = v73;
  sub_10001AE00(v49, v73, &qword_100229270);
  v53 = v52 + *(v71 + 36);
  *v53 = v50;
  *(v53 + 8) = v51;
  v54 = sub_1000024C4(&qword_100229248);
  v55 = v74;
  v56 = (v74 + *(v54 + 36));
  v57 = *(type metadata accessor for RoundedRectangle() + 20);
  v58 = enum case for RoundedCornerStyle.continuous(_:);
  v59 = type metadata accessor for RoundedCornerStyle();
  (*(*(v59 - 8) + 104))(&v56[v57], v58, v59);
  __asm { FMOV            V0.2D, #16.0 }

  *v56 = _Q0;
  *&v56[*(sub_1000024C4(&qword_100221C80) + 36)] = 256;
  return sub_10001AE00(v52, v55, &qword_100229260);
}

void sub_10013DA70(__int128 *a1)
{
  aBlock = a1[2];
  LOBYTE(v15) = *(a1 + 48);
  v13[0] = 1;
  sub_1000024C4(&qword_100229210);
  Binding.wrappedValue.setter();
  v2 = *(a1 + 7);
  if (v2)
  {
    v12 = *a1;
    sub_1000024C4(&qword_100221508);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B3B60;
    v4 = v12;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_100228B70;
    *(inited + 32) = 0;
    *(inited + 40) = v4;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_100228B48;
    *(inited + 72) = 13;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_100228BD0;
    *(inited + 112) = 12;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_100228BA8;
    *(inited + 152) = xmmword_1001C0350;
    *(inited + 168) = 3;
    if (*(v2 + 72))
    {
      v5 = *(v2 + 64);
      v6 = *(v2 + 72);
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    *(&aBlock + 1) = v5;
    v15 = v6;

    sub_100020764(&v12, v13);

    v7 = sub_1001894F4(1, 5, 1, inited);
    v11 = v7;
    sub_100006C98(&aBlock, v13);
    sub_100118768(4, v13, &v11, &type metadata for AnalyticsString, &off_100228B70);
    sub_100006CF4(&aBlock);
    v8 = String._bridgeToObjectiveC()();
    v9 = swift_allocObject();
    v9[2] = 0xD00000000000001ELL;
    v9[3] = 0x80000001001C4640;
    v9[4] = v7;
    v17 = sub_100006D88;
    v18 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v15 = sub_10015B4A4;
    v16 = &unk_1002187E0;
    v10 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10013E810(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_10013DD98@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_100017398(v2, v4, v6 & 1);

  sub_1000024C4(&qword_100229210);
  Binding.wrappedValue.getter();
  if (v62 == 1)
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }
  }

  else
  {
    static Color.primary.getter();
  }

  v12 = Text.foregroundStyle<A>(_:)();
  v59 = v13;
  v60 = v12;
  v15 = v14;
  v58 = v16;
  sub_100017398(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v57 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v55 = v19;
  v56 = v18;
  v53 = v21;
  v54 = v20;
  v22 = v15 & 1;
  v23 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  Binding.wrappedValue.getter();
  if (v61 == 1)
  {
    v41 = static Color.primary.getter();
  }

  else
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }

    v41 = qword_1002390A8;
  }

  v42 = static Edge.Set.all.getter();
  v43 = (a1 + *(sub_1000024C4(&qword_1002292A0) + 36));
  v44 = *(type metadata accessor for RoundedRectangle() + 20);
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = type metadata accessor for RoundedCornerStyle();
  (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
  __asm { FMOV            V0.2D, #16.0 }

  *v43 = _Q0;
  *&v43[*(sub_1000024C4(&qword_100221C80) + 36)] = 256;
  *a1 = v60;
  *(a1 + 8) = v59;
  *(a1 + 16) = v22;
  *(a1 + 24) = v58;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v57;
  *(a1 + 64) = v56;
  *(a1 + 72) = v55;
  result = v53;
  *(a1 + 80) = v54;
  *(a1 + 88) = v53;
  *(a1 + 96) = 0;
  *(a1 + 104) = v23;
  *(a1 + 112) = v25;
  *(a1 + 120) = v27;
  *(a1 + 128) = v29;
  *(a1 + 136) = v31;
  *(a1 + 144) = 0;
  *(a1 + 152) = v32;
  *(a1 + 160) = v34;
  *(a1 + 168) = v36;
  *(a1 + 176) = v38;
  *(a1 + 184) = v40;
  *(a1 + 192) = 0;
  *(a1 + 200) = v41;
  *(a1 + 208) = v42;
  return result;
}

unint64_t sub_10013E284()
{
  result = qword_1002291C8;
  if (!qword_1002291C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002291C8);
  }

  return result;
}

uint64_t sub_10013E318()
{
  type metadata accessor for PhoneWallpaperView();
  type metadata accessor for WatchFacesView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000460C(&qword_1002291B0);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10000BFFC(&qword_1002291B8, &qword_1002291B0);
  return swift_getWitnessTable();
}

uint64_t sub_10013E49C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100229200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013E50C(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100229200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10013E588()
{
  result = qword_100229250;
  if (!qword_100229250)
  {
    sub_10000460C(&qword_100229248);
    sub_10013E640();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229250);
  }

  return result;
}

unint64_t sub_10013E640()
{
  result = qword_100229258;
  if (!qword_100229258)
  {
    sub_10000460C(&qword_100229260);
    sub_10013E6F8();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229258);
  }

  return result;
}

unint64_t sub_10013E6F8()
{
  result = qword_100229268;
  if (!qword_100229268)
  {
    sub_10000460C(&qword_100229270);
    sub_10013EB1C(&qword_100229278, &qword_100229280, &unk_1001C0640, sub_10013E7E0);
    sub_10013E810(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229268);
  }

  return result;
}

uint64_t sub_10013E810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013E858()
{

  return swift_deallocObject();
}

unint64_t sub_10013E8C0()
{
  result = qword_1002292A8;
  if (!qword_1002292A8)
  {
    sub_10000460C(&qword_1002292A0);
    sub_10013E978();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002292A8);
  }

  return result;
}

unint64_t sub_10013E978()
{
  result = qword_1002292B0;
  if (!qword_1002292B0)
  {
    sub_10000460C(&qword_1002292B8);
    sub_10013EB1C(&qword_100229278, &qword_100229280, &unk_1001C0640, sub_10013E7E0);
    sub_10000BFFC(&qword_100221D50, &qword_100221D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002292B0);
  }

  return result;
}

uint64_t sub_10013EA60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013EB1C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10013EBA0()
{
  result = qword_1002292E8;
  if (!qword_1002292E8)
  {
    sub_10000460C(&qword_1002291D8);
    sub_10000BFFC(&qword_1002292F0, &qword_1002291D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002292E8);
  }

  return result;
}

uint64_t sub_10013EC68()
{
  v0 = sub_1000024C4(&qword_1002293B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-v1];
  if (qword_100220C20 != -1)
  {
    swift_once();
  }

  v3 = *(qword_100239150 + 16);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_getKeyPath();
  *&v16 = v4;
  sub_10013FFD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_10000BEB8(v4 + v5, v2, &qword_1002293B8);
  os_unfair_lock_unlock((v3 + 24));
  v6 = type metadata accessor for MusicSubscription();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_1000050C4(v2, &qword_1002293B8);

LABEL_7:
    v9 = type metadata accessor for MusicPreviewPlayer(0);
    v11 = [objc_allocWithZone(v9) init];
    v12 = &off_100218550;
    goto LABEL_8;
  }

  v8 = MusicSubscription.canPlayCatalogContent.getter();
  (*(v7 + 8))(v2, v6);

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = type metadata accessor for AppleMusicPlayer();
  v10 = swift_allocObject();
  *(v10 + 16) = &_swiftEmptyArrayStorage;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 49) = 0u;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 72) = 0;
  ObservationRegistrar.init()();
  v11 = v10;
  v12 = &off_10021A000;
LABEL_8:
  v17 = v9;
  v18 = v12;
  *&v16 = v11;
  type metadata accessor for PlaybackController();
  v13 = swift_allocObject();
  ObservationRegistrar.init()();
  result = sub_10002FF68(&v16, v13 + 16);
  qword_100239130 = v13;
  return result;
}

uint64_t sub_10013EF2C()
{
  v1 = v0;
  sub_10002FF80(v0 + 16, v7);
  v2 = v8;
  v3 = v9;
  sub_10001BED0(v7, v8);
  (*(v3 + 80))(v2, v3);
  sub_100012A7C(v7);
  sub_100012A7C(v0 + 16);
  v4 = OBJC_IVAR____TtC16EventViewService18PlaybackController___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaybackController()
{
  result = qword_100229328;
  if (!qword_100229328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013F070()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10013F10C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = (a1 + 4);
    sub_10001BED0(a1 + 4, a1[7]);
    *(&v86 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_10005EC40(&v85);
    dispatch thunk of Identifiable.id.getter();
    sub_10002FF68(&v85, v88);
    v82[0] = &_swiftEmptyArrayStorage;
    sub_100195824(0, v1, 0);
    v3 = &_swiftEmptyArrayStorage;
    do
    {
      sub_10002FF80(v2, &v85);
      v4 = *(&v86 + 1);
      v5 = AssociatedConformanceWitness;
      sub_10001BED0(&v85, *(&v86 + 1));
      v6 = (*(v5 + 88))(v4, v5);
      v8 = v7;
      sub_100012A7C(&v85);
      v82[0] = v3;
      v10 = v3[2];
      v9 = v3[3];
      if (v10 >= v9 >> 1)
      {
        sub_100195824((v9 > 1), v10 + 1, 1);
        v3 = v82[0];
      }

      v3[2] = v10 + 1;
      v11 = &v3[2 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v8;
      v2 += 40;
      --v1;
    }

    while (v1);
    isa = oslog[5].isa;
    v13 = oslog[6].isa;
    sub_10001BED0(&oslog[2].isa, isa);
    v14 = (*(v13 + 1))(isa, v13);
    v15 = *(v14 + 16);
    if (v15)
    {
      v82[0] = &_swiftEmptyArrayStorage;
      sub_100195824(0, v15, 0);
      v16 = &_swiftEmptyArrayStorage;
      v17 = v14 + 32;
      do
      {
        sub_10002FF80(v17, &v85);
        v18 = *(&v86 + 1);
        v19 = AssociatedConformanceWitness;
        sub_10001BED0(&v85, *(&v86 + 1));
        v20 = (*(v19 + 88))(v18, v19);
        v22 = v21;
        sub_100012A7C(&v85);
        v82[0] = v16;
        v24 = v16[2];
        v23 = v16[3];
        if (v24 >= v23 >> 1)
        {
          sub_100195824((v23 > 1), v24 + 1, 1);
          v16 = v82[0];
        }

        v16[2] = v24 + 1;
        v25 = &v16[2 * v24];
        *(v25 + 4) = v20;
        *(v25 + 5) = v22;
        v17 += 40;
        --v15;
      }

      while (v15);
    }

    else
    {

      v16 = &_swiftEmptyArrayStorage;
    }

    v29 = oslog[5].isa;
    v30 = oslog[6].isa;
    sub_10001BED0(&oslog[2].isa, v29);
    (*(v30 + 2))(v82, v29, v30);
    if (v83)
    {
      sub_10001BED0(v82, v83);
      *(&v86 + 1) = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_10005EC40(&v85);
      dispatch thunk of Identifiable.id.getter();
      sub_100012A7C(v82);
    }

    else
    {
      sub_1000050C4(v82, &qword_1002224D8);
      v85 = 0u;
      v86 = 0u;
      AssociatedConformanceWitness = 0;
    }

    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    v31._countAndFlagsBits = 0x6F73207473726946;
    v31._object = 0xEC000000203A676ELL;
    String.append(_:)(v31);
    sub_1000024C4(&qword_1002293D0);
    _print_unlocked<A, B>(_:_:)();
    v32 = v82[1];
    v74 = v82[0];
    strcpy(v82, "All songs: ");
    HIDWORD(v82[1]) = -352321536;
    v33._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v33);

    v34 = v82[0];
    v35 = v82[1];
    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v80 = v82[0];
    v81 = v82[1];
    v36._countAndFlagsBits = 0x20746E6572727543;
    v36._object = 0xEE00203A676E6F73;
    String.append(_:)(v36);
    sub_10000BEB8(&v85, &v78, &qword_1002293D8);
    if (v79)
    {
      sub_10002FF68(&v78, v82);
    }

    else
    {
      v83 = &type metadata for String;
      v84 = &protocol witness table for String;
      v82[0] = 1701736270;
      v82[1] = 0xE400000000000000;
    }

    _print_unlocked<A, B>(_:_:)();
    sub_100012A7C(v82);
    v37 = v80;
    v38 = v81;
    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v82, "Queued songs: ");
    HIBYTE(v82[1]) = -18;
    v39._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v39);

    v41 = v82[0];
    v40 = v82[1];
    v42 = sub_10004A8F4(v3, v16);

    if (v42)
    {
      v43 = oslog[5].isa;
      v44 = oslog[6].isa;
      sub_10001BED0(&oslog[2].isa, v43);
      v45 = (*(v44 + 4))(v43, v44);
      if (v45 > 1)
      {
        if (v45 == 2)
        {

          if (qword_100220C90 != -1)
          {
            swift_once();
          }

          v58 = type metadata accessor for Logger();
          sub_10000BE10(v58, qword_100239158);

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v82[0] = swift_slowAlloc();
            *v61 = 136315394;
            v62 = sub_100139F7C(v37, v38, v82);

            *(v61 + 4) = v62;
            *(v61 + 12) = 2080;
            v63 = sub_100139F7C(v41, v40, v82);

            *(v61 + 14) = v63;
            _os_log_impl(&_mh_execute_header, v59, v60, "Pause song playback. %s. %s.", v61, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v70 = oslog[5].isa;
          v71 = oslog[6].isa;
          sub_10001BED0(&oslog[2].isa, v70);
          (*(v71 + 8))(v70, v71);
        }

        else
        {

          if (qword_100220C90 != -1)
          {
            swift_once();
          }

          v64 = type metadata accessor for Logger();
          sub_10000BE10(v64, qword_100239158);

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v82[0] = swift_slowAlloc();
            *v67 = 136315394;
            v68 = sub_100139F7C(v37, v38, v82);

            *(v67 + 4) = v68;
            *(v67 + 12) = 2080;
            v69 = sub_100139F7C(v41, v40, v82);

            *(v67 + 14) = v69;
            _os_log_impl(&_mh_execute_header, v65, v66, "Resume song playback. %s. %s.", v67, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v72 = oslog[5].isa;
          v73 = oslog[6].isa;
          sub_10001BED0(&oslog[2].isa, v72);
          (*(v73 + 7))(v72, v73);
        }

        goto LABEL_40;
      }

      if (v45)
      {
        sub_100012A7C(v88);

        goto LABEL_41;
      }

      if (qword_100220C90 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000BE10(v46, qword_100239158);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v82[0] = swift_slowAlloc();
        *v49 = 136315394;
        v50 = sub_100139F7C(v74, v32, v82);

        *(v49 + 4) = v50;
        *(v49 + 12) = 2080;
        v51 = sub_100139F7C(v34, v35, v82);

        *(v49 + 14) = v51;
        v52 = "Player was previously idle/stopped. Restart song playback. %s. %s.";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v47, v48, v52, v49, 0x16u);
        swift_arrayDestroy();

LABEL_39:

        v56 = oslog[5].isa;
        v57 = oslog[6].isa;
        sub_10001BED0(&oslog[2].isa, v56);
        (*(v57 + 6))(a1, v56, v57);
LABEL_40:
        sub_100012A7C(v88);
LABEL_41:
        sub_1000050C4(&v85, &qword_1002293D8);
        return;
      }
    }

    else
    {

      if (qword_100220C90 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_10000BE10(v53, qword_100239158);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v82[0] = swift_slowAlloc();
        *v49 = 136315394;
        v54 = sub_100139F7C(v74, v32, v82);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2080;
        v55 = sub_100139F7C(v34, v35, v82);

        *(v49 + 14) = v55;
        v52 = "Start song playback. %s. %s.";
        goto LABEL_37;
      }
    }

    goto LABEL_39;
  }

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000BE10(v26, qword_100239158);
  osloga = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(osloga, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, osloga, v27, "Cannot play empty playlist.", v28, 2u);
  }
}

uint64_t sub_10013FE78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10013FFD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  return sub_10000BEB8(v3 + v4, a2, &qword_1002293B8);
}

uint64_t sub_10013FF24(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_1002293B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000BEB8(a1, &v6 - v3, &qword_1002293B8);
  return sub_100156840(v4);
}

unint64_t sub_10013FFD4()
{
  result = qword_1002293C0;
  if (!qword_1002293C0)
  {
    type metadata accessor for SubscriptionUpdater(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002293C0);
  }

  return result;
}

uint64_t sub_10014002C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  v6 = sub_10005EC40(v9);
  (*(*(a3 - 8) + 16))(v6, a1, a3);
  sub_1000024C4(&qword_1002293C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001B49B0;
  sub_10002FF80(v9, v7 + 32);
  sub_10013F10C(v7);

  return sub_100012A7C(v9);
}

uint64_t sub_10014013C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DesignTimeImage();
  __chkstk_darwin(v6);
  v8 = (v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000024C4(&qword_1002214F8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v30 - v13;
  URL.init(string:)();
  v15 = type metadata accessor for URL();
  v32 = *(v15 - 8);
  v33 = v14;
  v16 = *(v32 + 48);
  v34 = v15;
  result = v16(v14, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = a1;
    URL.init(string:)();
    result = (v16)(v12, 1, v34);
    if (result != 1)
    {
      UUID.init()();
      UUID.uuidString.getter();
      v18 = *(v3 + 8);
      v30[1] = v3 + 8;
      v18(v5, v2);
      *v8 = ResourceID.init(_:)();
      v8[1] = v19;
      v21 = v6[6];
      v20 = v6[7];
      v22 = v6[5];
      v23 = v8;
      v32 = *(v32 + 32);
      v24 = v8 + v22;
      v25 = v34;
      (v32)(v24, v12, v34);
      *(v23 + v21) = 0;
      *(v23 + v20) = 0;
      UUID.init()();
      UUID.uuidString.getter();
      v18(v5, v2);
      v26 = ResourceID.init(_:)();
      v27 = v31;
      *v31 = v26;
      v27[1] = v28;
      v27[2] = 0x656C746954;
      v27[3] = 0xE500000000000000;
      v29 = type metadata accessor for DesignTimeVideo();
      (v32)(v27 + *(v29 + 24), v33, v25);
      return sub_100005180(v23, v27 + *(v29 + 28));
    }
  }

  __break(1u);
  return result;
}

void sub_10014048C()
{
  String.hash(into:)();
  String.hash(into:)();
  v1 = type metadata accessor for DesignTimeVideo();
  type metadata accessor for URL();
  sub_1001408C8(&qword_100221260, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v2 = v0 + *(v1 + 28);
  String.hash(into:)();
  v3 = type metadata accessor for DesignTimeImage();
  dispatch thunk of Hashable.hash(into:)();
  if (*(v2 + *(v3 + 24)))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColor(0);
    sub_1001408C8(&qword_100221268, type metadata accessor for CGColor);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + *(v3 + 28)));
}

uint64_t sub_100140608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for URL();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_100140678(uint64_t a1)
{
  *(a1 + 8) = sub_1001408C8(&qword_100229428, type metadata accessor for DesignTimeVideo);
  result = sub_1001408C8(&qword_100229430, type metadata accessor for DesignTimeVideo);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeVideo()
{
  result = qword_100229498;
  if (!qword_100229498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100140790()
{
  Hasher.init(_seed:)();
  sub_10014048C();
  return Hasher._finalize()();
}

Swift::Int sub_1001407D4()
{
  Hasher.init(_seed:)();
  sub_10014048C();
  return Hasher._finalize()();
}

uint64_t sub_100140810(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 28);

  return sub_10005859C((a1 + v8), (a2 + v8));
}

uint64_t sub_1001408C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100140924(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DesignTimeImage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100140A5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DesignTimeImage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100140B80()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DesignTimeImage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100140C64@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PreviewAsset();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Song.previewAssets.getter();
  if (v6)
  {
    if (*(v6 + 16))
    {
      (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

      PreviewAsset.url.getter();
      return (*(v3 + 8))(v5, v2);
    }
  }

  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, 1, 1, v8);
}

uint64_t sub_100140DE4()
{
  v0 = type metadata accessor for ContentRating();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000024C4(&qword_100229560);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_1000024C4(&qword_100229568);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  Song.contentRating.getter();
  (*(v1 + 104))(v13, enum case for ContentRating.explicit(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1001412C4(v15, v6);
  sub_1001412C4(v13, &v6[v16]);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_1001412C4(v6, v10);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = v23;
      (*(v1 + 32))(v23, &v6[v16], v0);
      sub_100141334(qword_100229570, &type metadata accessor for ContentRating);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_1000050C4(v13, &qword_100229568);
      sub_1000050C4(v15, &qword_100229568);
      v20(v10, v0);
      sub_1000050C4(v6, &qword_100229568);
      return v18 & 1;
    }

    sub_1000050C4(v13, &qword_100229568);
    sub_1000050C4(v15, &qword_100229568);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_1000050C4(v13, &qword_100229568);
  sub_1000050C4(v15, &qword_100229568);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_1000050C4(v6, &qword_100229560);
    v18 = 0;
    return v18 & 1;
  }

  sub_1000050C4(v6, &qword_100229568);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_100141240(uint64_t a1)
{
  *(a1 + 16) = sub_100141334(&qword_100229550, &type metadata accessor for Song);
  result = sub_100141334(&qword_100229558, &type metadata accessor for Song);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1001412C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100229568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014137C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SetlistSongRowViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  v5 = type metadata accessor for SetlistSongRowView();
  v6 = (a2 + v5[9]);
  type metadata accessor for RemoteViewConfiguration();
  sub_100145928(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  *v6 = EnvironmentObject.init()();
  v6[1] = v7;
  v8 = v5[10];
  *(a2 + v8) = swift_getKeyPath();
  sub_1000024C4(qword_100221928);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v5[11];
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  return result;
}

void sub_1001414D4()
{
  type metadata accessor for SetlistSongRowViewModel();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      sub_100029A5C();
      if (v2 <= 0x3F)
      {
        sub_10001B850();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10014158C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for OpenURLAction() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((v12 + ((((v11 + 16) & ~v11) + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }

    return v8 + (v23 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if ((v7 & 0x80000000) != 0)
  {
    v22 = *(v6 + 48);

    return v22(&a1[v11 + 16] & ~v11, v7, v5);
  }

  else
  {
    v21 = *(a1 + 1);
    if (v21 >= 0xFFFFFFFF)
    {
      LODWORD(v21) = -1;
    }

    return (v21 + 1);
  }
}

void sub_1001417D0(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for OpenURLAction() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((((v13 + 16) & ~v13) + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if ((v9 & 0x80000000) != 0)
      {
        v21 = *(v22 + 56);

        v21((a1 + v13 + 16) & ~v13, a2, v9, v7);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        a1[1] = (a2 - 1);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *(a1 + v15) = v20;
      }

      else
      {
        *(a1 + v15) = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_100141AA0()
{
  static Font.body.getter();
  static Font.Weight.regular.getter();
  v0 = Font.weight(_:)();

  return v0;
}

uint64_t sub_100141AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = type metadata accessor for AccessibilityChildBehavior();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityTraits();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000024C4(&qword_1002295F8);
  __chkstk_darwin(v45);
  v10 = &v43 - v9;
  v11 = sub_1000024C4(&qword_100229600);
  __chkstk_darwin(v11 - 8);
  v43 = &v43 - v12;
  v13 = sub_1000024C4(&qword_100229608);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v44 = &v43 - v15;
  v47 = sub_1000024C4(&qword_100229610);
  __chkstk_darwin(v47);
  v17 = &v43 - v16;
  v48 = sub_1000024C4(&qword_100229618);
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v43 - v18;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = sub_1000024C4(&qword_100229620);
  sub_1001421D0(v2, *(a1 + 16), *(a1 + 24), &v10[*(v19 + 44)]);
  sub_1000024C4(&qword_1002259D8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1001B49B0;
  static AccessibilityTraits.startsMediaSession.getter();
  *&v56 = v20;
  sub_100145928(&qword_1002259E0, &type metadata accessor for AccessibilityTraits);
  sub_1000024C4(&qword_1002259E8);
  sub_10000BFFC(&qword_1002259F0, &qword_1002259E8);
  v21 = v5;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10000BFFC(&qword_100229628, &qword_1002295F8);
  v22 = v43;
  View.accessibilityAddTraits(_:)();
  (*(v6 + 8))(v8, v21);
  sub_1000050C4(v10, &qword_1002295F8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v23 = v44;
  sub_10001AE00(v22, v44, &qword_100229600);
  v24 = (v23 + *(v14 + 44));
  v25 = v61;
  v24[4] = v60;
  v24[5] = v25;
  v24[6] = v62;
  v26 = v57;
  *v24 = v56;
  v24[1] = v26;
  v27 = v59;
  v24[2] = v58;
  v24[3] = v27;
  LOBYTE(v20) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_10001AE00(v23, v17, &qword_100229608);
  v36 = v47;
  v37 = &v17[*(v47 + 36)];
  *v37 = v20;
  *(v37 + 1) = v29;
  *(v37 + 2) = v31;
  *(v37 + 3) = v33;
  *(v37 + 4) = v35;
  v37[40] = 0;
  v38 = v50;
  static AccessibilityChildBehavior.ignore.getter();
  v39 = sub_100144D70();
  v40 = v46;
  View.accessibilityElement(children:)();
  (*(v51 + 8))(v38, v52);
  sub_1000050C4(v17, &qword_100229610);
  v54 = v36;
  v55 = v39;
  swift_getOpaqueTypeConformance2();
  v41 = v48;
  View.accessibilityIdentifier(_:)();
  return (*(v49 + 8))(v40, v41);
}

uint64_t sub_1001421D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v51 = a3;
  v49 = a1;
  v52 = a4;
  v4 = sub_1000024C4(&qword_100229648);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_1000024C4(&qword_100229650);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = sub_1000024C4(&qword_100229658);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v48 - v22;
  Divider.init()();
  v24 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v23[*(sub_1000024C4(&qword_1002223E8) + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v35 = &v23[*(v18 + 44)];
  *v35 = v34;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v40 = sub_1000024C4(&qword_100229660);
  sub_1001425BC(v49, v50, v51, &v6[*(v40 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v6, v14, &qword_100229648);
  v41 = &v14[*(v8 + 44)];
  v42 = v58;
  *(v41 + 4) = v57;
  *(v41 + 5) = v42;
  *(v41 + 6) = v59;
  v43 = v54;
  *v41 = v53;
  *(v41 + 1) = v43;
  v44 = v56;
  *(v41 + 2) = v55;
  *(v41 + 3) = v44;
  sub_10001AE00(v14, v16, &qword_100229650);
  sub_10000BEB8(v23, v21, &qword_100229658);
  sub_10000BEB8(v16, v11, &qword_100229650);
  v45 = v52;
  sub_10000BEB8(v21, v52, &qword_100229658);
  v46 = sub_1000024C4(&qword_100229668);
  sub_10000BEB8(v11, v45 + *(v46 + 48), &qword_100229650);
  sub_1000050C4(v16, &qword_100229650);
  sub_1000050C4(v23, &qword_100229658);
  sub_1000050C4(v11, &qword_100229650);
  return sub_1000050C4(v21, &qword_100229658);
}

uint64_t sub_1001425BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v176 = a4;
  v7 = type metadata accessor for PlainButtonStyle();
  v156 = *(v7 - 8);
  v157 = v7;
  __chkstk_darwin(v7);
  v155 = v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessibilityTraits();
  v150 = *(v9 - 8);
  v151 = v9;
  __chkstk_darwin(v9);
  v149 = v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = a2;
  v178 = a3;
  v11 = type metadata accessor for SetlistSongRowView();
  v12 = *(v11 - 8);
  v143 = *(v12 + 64);
  __chkstk_darwin(v11);
  v161 = v141 - v13;
  v14 = sub_1000024C4(&qword_100229670);
  v146 = *(v14 - 8);
  v147 = v14;
  __chkstk_darwin(v14);
  v144 = v141 - v15;
  v145 = sub_1000024C4(&qword_100229678);
  __chkstk_darwin(v145);
  v148 = v141 - v16;
  v153 = sub_1000024C4(&qword_100229680);
  __chkstk_darwin(v153);
  v154 = v141 - v17;
  v18 = sub_1000024C4(&qword_100229688);
  v173 = *(v18 - 8);
  v174 = v18;
  __chkstk_darwin(v18);
  v152 = v141 - v19;
  v160 = type metadata accessor for URL();
  v163 = *(v160 - 8);
  v20 = __chkstk_darwin(v160);
  v141[1] = v21;
  v142 = v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v162 = v141 - v22;
  v23 = sub_1000024C4(&qword_100229690);
  v24 = __chkstk_darwin(v23 - 8);
  v175 = v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v179 = v141 - v26;
  v27 = sub_1000024C4(&qword_100229698);
  __chkstk_darwin(v27 - 8);
  v166 = (v141 - v28);
  v165 = sub_1000024C4(&qword_1002296A0);
  __chkstk_darwin(v165);
  v169 = v141 - v29;
  v168 = sub_1000024C4(&qword_1002296A8);
  v30 = __chkstk_darwin(v168);
  v172 = v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v167 = v141 - v33;
  __chkstk_darwin(v32);
  v182 = v141 - v34;
  v35 = type metadata accessor for EnvironmentValues();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000024C4(&qword_1002214F8);
  v40 = __chkstk_darwin(v39 - 8);
  v159 = v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = v141 - v42;
  v164 = sub_1000024C4(&qword_1002296B0);
  v44 = __chkstk_darwin(v164);
  v171 = v141 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v180 = v11;
  v181 = v141 - v46;
  v47 = *(v11 + 44);
  v170 = a1;
  v48 = a1 + v47;
  v49 = *v48;
  v50 = *(v48 + 8);
  if (v50 == 1)
  {
    v51 = *v48;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v49, 0);
    (*(v36 + 8))(v38, v35);
    v51 = *&v196;
  }

  v53 = v51 * 48.0;
  if (COERCE__INT64(fabs(v51 * 48.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v53 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v50)
  {
    v54 = *&v49;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v55 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v49, 0);
    (*(v36 + 8))(v38, v35);
    v54 = *&v196;
  }

  v56 = v54 * 48.0;
  if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v56 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v141[0] = v12;
  v57 = v56;
  v58 = v177;
  v59 = v178;
  v158 = type metadata accessor for SetlistSongRowViewModel();
  v60 = v170;
  sub_10010EA04(v53, v57, v158, v43);
  static Animation.spring(response:dampingFraction:blendDuration:)();
  Transaction.init(animation:)();
  v61 = swift_allocObject();
  *(v61 + 16) = v58;
  *(v61 + 24) = v59;
  sub_1000024C4(&qword_1002296B8);
  sub_100144F88();
  v62 = v181;
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v63 = (v62 + *(sub_1000024C4(&qword_100229718) + 36));
  v64 = v184;
  *v63 = v183;
  v63[1] = v64;
  v63[2] = v185;
  v65 = static Alignment.center.getter();
  v67 = v66;
  v68 = v59;
  sub_100144064(v60, &v196);
  v69 = v196;
  v70 = v197;
  v71 = v62 + *(sub_1000024C4(&qword_100229720) + 36);
  *v71 = v69;
  v72 = v60;
  *(v71 + 16) = v70;
  *(v71 + 24) = v65;
  *(v71 + 32) = v67;
  if (static Solarium.isEnabled.getter())
  {
    v73 = 10.0;
  }

  else
  {
    v73 = 5.0;
  }

  v74 = (v62 + *(v164 + 36));
  v75 = *(type metadata accessor for RoundedRectangle() + 20);
  v76 = enum case for RoundedCornerStyle.continuous(_:);
  v77 = type metadata accessor for RoundedCornerStyle();
  (*(*(v77 - 8) + 104))(v74 + v75, v76, v77);
  *v74 = v73;
  v74[1] = v73;
  *(v74 + *(sub_1000024C4(&qword_100221C80) + 36)) = 256;
  v78 = static HorizontalAlignment.leading.getter();
  v79 = v166;
  *v166 = v78;
  *(v79 + 8) = 0x4008000000000000;
  *(v79 + 16) = 0;
  v80 = sub_1000024C4(&qword_100229728);
  sub_100144134(v60, v58, v68, v79 + *(v80 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v81 = v169;
  sub_10001AE00(v79, v169, &qword_100229698);
  v82 = &v81[*(v165 + 36)];
  v83 = v191;
  *(v82 + 4) = v190;
  *(v82 + 5) = v83;
  *(v82 + 6) = v192;
  v84 = v187;
  *v82 = v186;
  *(v82 + 1) = v84;
  v85 = v189;
  *(v82 + 2) = v188;
  *(v82 + 3) = v85;
  LOBYTE(v79) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v81;
  v95 = v167;
  sub_10001AE00(v94, v167, &qword_1002296A0);
  v96 = v95 + *(v168 + 36);
  *v96 = v79;
  *(v96 + 8) = v87;
  *(v96 + 16) = v89;
  *(v96 + 24) = v91;
  *(v96 + 32) = v93;
  *(v96 + 40) = 0;
  sub_10001AE00(v95, v182, &qword_1002296A8);
  if (*(v60 + *(v180 + 36)))
  {

    v98 = sub_10010EEFC(v97);

    if (v98)
    {
      v99 = v159;
      sub_10010E910(v158);
      v100 = v163;
      v101 = v160;
      if ((*(v163 + 48))(v99, 1, v160) != 1)
      {
        v169 = *(v100 + 32);
        v105 = v162;
        (v169)(v162, v99, v101);
        v106 = v141[0];
        (*(v141[0] + 16))(v161, v72, v180);
        v107 = v142;
        (*(v100 + 16))(v142, v105, v101);
        v108 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v109 = (v143 + *(v100 + 80) + v108) & ~*(v100 + 80);
        v110 = v101;
        v111 = swift_allocObject();
        v112 = v178;
        *(v111 + 16) = v177;
        *(v111 + 24) = v112;
        (*(v106 + 32))(v111 + v108, v161, v180);
        v113 = (v169)(v111 + v109, v107, v110);
        __chkstk_darwin(v113);
        sub_1000024C4(&qword_100229738);
        sub_1001455B4();
        v114 = v144;
        Button.init(action:label:)();
        sub_1000024C4(&qword_1002259D8);
        v115 = v150;
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_1001B49B0;
        static AccessibilityTraits.startsMediaSession.getter();
        *&v196 = v116;
        sub_100145928(&qword_1002259E0, &type metadata accessor for AccessibilityTraits);
        sub_1000024C4(&qword_1002259E8);
        sub_10000BFFC(&qword_1002259F0, &qword_1002259E8);
        v117 = v149;
        v118 = v151;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_10000BFFC(&qword_100229758, &qword_100229670);
        v120 = v147;
        v119 = v148;
        View.accessibilityRemoveTraits(_:)();
        (*(v115 + 8))(v117, v118);
        (*(v146 + 8))(v114, v120);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v121 = (v119 + *(v145 + 36));
        v122 = v194;
        *v121 = v193;
        v121[1] = v122;
        v121[2] = v195;
        static Alignment.center.getter();
        _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
        v123 = v154;
        sub_10001AE00(v119, v154, &qword_100229678);
        v124 = (v123 + *(v153 + 36));
        v125 = v201;
        v124[4] = v200;
        v124[5] = v125;
        v124[6] = v202;
        v126 = v197;
        *v124 = v196;
        v124[1] = v126;
        v127 = v199;
        v124[2] = v198;
        v124[3] = v127;
        v128 = v155;
        PlainButtonStyle.init()();
        sub_100145728();
        sub_100145928(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
        v129 = v152;
        v130 = v157;
        View.buttonStyle<A>(_:)();
        (*(v156 + 8))(v128, v130);
        sub_1000050C4(v123, &qword_100229680);
        (*(v163 + 8))(v162, v110);
        v104 = v173;
        v131 = v174;
        (*(v173 + 32))(v179, v129, v174);
        v103 = v131;
        v102 = 0;
        goto LABEL_22;
      }

      sub_1000050C4(v99, &qword_1002214F8);
    }

    v102 = 1;
    v104 = v173;
    v103 = v174;
LABEL_22:
    v132 = v179;
    (*(v104 + 56))(v179, v102, 1, v103);
    v133 = v181;
    v134 = v171;
    sub_10000BEB8(v181, v171, &qword_1002296B0);
    v135 = v182;
    v136 = v172;
    sub_10000BEB8(v182, v172, &qword_1002296A8);
    v137 = v175;
    sub_10000BEB8(v132, v175, &qword_100229690);
    v138 = v176;
    sub_10000BEB8(v134, v176, &qword_1002296B0);
    v139 = sub_1000024C4(&qword_100229730);
    sub_10000BEB8(v136, v138 + *(v139 + 48), &qword_1002296A8);
    sub_10000BEB8(v137, v138 + *(v139 + 64), &qword_100229690);
    sub_1000050C4(v132, &qword_100229690);
    sub_1000050C4(v135, &qword_1002296A8);
    sub_1000050C4(v133, &qword_1002296B0);
    sub_1000050C4(v137, &qword_100229690);
    sub_1000050C4(v136, &qword_1002296A8);
    return sub_1000050C4(v134, &qword_1002296B0);
  }

LABEL_29:
  type metadata accessor for RemoteViewConfiguration();
  sub_100145928(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001439E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[1] = a3;
  v25[0] = a2;
  v29 = a4;
  v28 = sub_1000024C4(&qword_1002296F0);
  __chkstk_darwin(v28);
  v6 = v25 - v5;
  v26 = sub_1000024C4(&qword_1002297C0);
  __chkstk_darwin(v26);
  v8 = v25 - v7;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000024C4(&qword_1002296D0);
  __chkstk_darwin(v27);
  v14 = v25 - v13;
  v15 = type metadata accessor for AsyncImagePhase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, v15);
  if ((*(v16 + 88))(v18, v15) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
    v19 = Image.resizable(capInsets:resizingMode:)();
    (*(v10 + 8))(v12, v9);
    *&v34 = v19;
    BYTE8(v34) = 1;
    sub_1000024C4(&qword_1002296E0);
    sub_100145120();
    View.accessibilityIdentifier(_:)();

    sub_10000BEB8(v14, v8, &qword_1002296D0);
    swift_storeEnumTagMultiPayload();
    sub_10014506C(&qword_1002296C8, &qword_1002296D0, &unk_1001C09F0, sub_100145120);
    sub_10014506C(&qword_1002296E8, &qword_1002296F0, &unk_1001C0A00, sub_1001451AC);
    _ConditionalContent<>.init(storage:)();

    return sub_1000050C4(v14, &qword_1002296D0);
  }

  else
  {
    if (qword_100220BA0 != -1)
    {
      swift_once();
    }

    v21 = qword_1002390C0;
    v22 = static Alignment.center.getter();
    v24 = v23;
    sub_100143FE4(&v34);
    *&v30 = v21;
    WORD4(v30) = 256;
    v31 = v34;
    *&v32 = v35;
    DWORD2(v32) = DWORD2(v35);
    *&v33 = v22;
    *(&v33 + 1) = v24;

    sub_1000024C4(&qword_100229700);
    sub_1001451AC();
    View.accessibilityIdentifier(_:)();
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v37 = v33;
    sub_1000050C4(&v34, &qword_100229700);
    sub_10000BEB8(v6, v8, &qword_1002296F0);
    swift_storeEnumTagMultiPayload();
    sub_10014506C(&qword_1002296C8, &qword_1002296D0, &unk_1001C09F0, sub_100145120);
    sub_10014506C(&qword_1002296E8, &qword_1002296F0, &unk_1001C0A00, sub_1001451AC);
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v6, &qword_1002296F0);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_100143FE4@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  static Font.title3.getter();
  static Font.Weight.regular.getter();
  v3 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  result = static HierarchicalShapeStyle.quaternary.getter();
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100144064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SetlistSongRowViewModel();
  v5 = 0;
  result = 0;
  if (*(a1 + *(v4 + 40)) == 1)
  {
    if (qword_100220C18 != -1)
    {
      swift_once();
    }

    v7 = qword_100239130;
    type metadata accessor for PlaybackViewModel();
    v5 = swift_allocObject();

    ObservationRegistrar.init()();
    *(v5 + 16) = v7;
    result = swift_getKeyPath();
  }

  *a2 = v5;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_100144134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66[2] = a1;
  v78 = a4;
  v6 = sub_1000024C4(&qword_100221B10);
  v7 = __chkstk_darwin(v6 - 8);
  v77 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = v66 - v9;
  v10 = type metadata accessor for Text.Suffix();
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin(v10);
  v67 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_100229788);
  v73 = *(v12 - 8);
  v74 = v12;
  __chkstk_darwin(v12);
  v72 = v66 - v13;
  v14 = sub_1000024C4(&qword_100229790);
  v15 = __chkstk_darwin(v14 - 8);
  v75 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = v66 - v17;
  v18 = type metadata accessor for SetlistSongRowViewModel();
  *&v89 = sub_10010E98C(v18);
  *(&v89 + 1) = v19;
  v68 = sub_10001877C();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  v69 = v25;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v26 = v24 & 1;
  v108 = v24 & 1;
  v66[0] = a2;
  v66[1] = a3;
  v27 = sub_100141AA0();
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v109 = 0;
  *&v89 = v20;
  *(&v89 + 1) = v22;
  LOBYTE(v90) = v26;
  v95 = v105;
  v96 = v106;
  v97 = v107;
  v91 = v101;
  v92 = v102;
  v93 = v103;
  v94 = v104;
  *(&v90 + 1) = v69;
  *&v98 = KeyPath;
  *(&v98 + 1) = v27;
  *&v99 = v29;
  *(&v99 + 1) = 1;
  v100 = 0;
  v69 = v18;
  if (sub_10010E94C(v18))
  {
    v30 = sub_100145AF0();
    v32 = v31;
    v34 = v33;
    v35 = v67;
    static Text.Suffix.alwaysVisible(_:)();
    sub_100017398(v30, v32, v34 & 1);
  }

  else
  {
    v35 = v67;
    static Text.Suffix.none.getter();
  }

  v36 = sub_1000024C4(&qword_100229798);
  v37 = sub_100145980();
  v38 = v72;
  View.textSuffix(_:)();
  (*(v70 + 8))(v35, v71);
  v87[8] = v97;
  v87[9] = v98;
  v87[10] = v99;
  v88 = v100;
  v87[4] = v93;
  v87[5] = v94;
  v87[6] = v95;
  v87[7] = v96;
  v87[0] = v89;
  v87[1] = v90;
  v87[2] = v91;
  v87[3] = v92;
  sub_1000050C4(v87, &qword_100229798);
  v80 = v36;
  v81 = v37;
  swift_getOpaqueTypeConformance2();
  v39 = v74;
  View.accessibilityIdentifier(_:)();
  (*(v73 + 8))(v38, v39);
  v80 = sub_10010E9C8(v69);
  v81 = v40;
  v41 = Text.init<A>(_:)();
  v43 = v42;
  v45 = v44;
  static Font.footnote.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;

  sub_100017398(v41, v43, v45 & 1);

  if (qword_100220B98 != -1)
  {
    swift_once();
  }

  v80 = qword_1002390B8;

  v51 = Text.foregroundStyle<A>(_:)();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_100017398(v46, v48, v50 & 1);

  v58 = swift_getKeyPath();
  v80 = v51;
  v81 = v53;
  v82 = v55 & 1;
  v83 = v57;
  v84 = v58;
  v85 = 1;
  v86 = 0;
  sub_1000024C4(&qword_100221B38);
  sub_10001B3F8();
  v59 = v76;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v51, v53, v55 & 1);

  v60 = v79;
  v61 = v75;
  sub_10000BEB8(v79, v75, &qword_100229790);
  v62 = v77;
  sub_10000BEB8(v59, v77, &qword_100221B10);
  v63 = v78;
  sub_10000BEB8(v61, v78, &qword_100229790);
  v64 = sub_1000024C4(&qword_1002297B8);
  sub_10000BEB8(v62, v63 + *(v64 + 48), &qword_100221B10);
  sub_1000050C4(v59, &qword_100221B10);
  sub_1000050C4(v60, &qword_100229790);
  sub_1000050C4(v62, &qword_100221B10);
  return sub_1000050C4(v61, &qword_100229790);
}

uint64_t sub_1001448B8(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SetlistSongRowView();
  sub_100039C90(v5);
  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  if (*(a1 + *(v6 + 36)))
  {
    type metadata accessor for SetlistSongRowViewModel();

    sub_10010EC44(v7);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100145928(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100144A64@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = type metadata accessor for SymbolVariants();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v22 = sub_1000024C4(&qword_100229780);
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v22 - v9;
  v11 = sub_1000024C4(&qword_100229750);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  *&v24 = Image.init(_internalSystemName:)();
  static SymbolVariants.square.getter();
  SymbolVariants.fill.getter();
  v15 = *(v2 + 8);
  v15(v7, v1);
  View.symbolVariant(_:)();
  v15(v5, v1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v8 + 32))(v14, v10, v22);
  v16 = &v14[*(v12 + 44)];
  v17 = v29;
  *(v16 + 4) = v28;
  *(v16 + 5) = v17;
  *(v16 + 6) = v30;
  v18 = v25;
  *v16 = v24;
  *(v16 + 1) = v18;
  v19 = v27;
  *(v16 + 2) = v26;
  *(v16 + 3) = v19;
  v20 = v23;
  sub_10001AE00(v14, v23, &qword_100229750);
  result = sub_1000024C4(&qword_100229738);
  *(v20 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_100144D70()
{
  result = qword_100229630;
  if (!qword_100229630)
  {
    sub_10000460C(&qword_100229610);
    sub_100144DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229630);
  }

  return result;
}

unint64_t sub_100144DFC()
{
  result = qword_100229638;
  if (!qword_100229638)
  {
    sub_10000460C(&qword_100229608);
    sub_100144E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229638);
  }

  return result;
}

unint64_t sub_100144E88()
{
  result = qword_100229640;
  if (!qword_100229640)
  {
    sub_10000460C(&qword_100229600);
    sub_10000BFFC(&qword_100229628, &qword_1002295F8);
    sub_100145928(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229640);
  }

  return result;
}

unint64_t sub_100144F88()
{
  result = qword_1002296C0;
  if (!qword_1002296C0)
  {
    sub_10000460C(&qword_1002296B8);
    sub_10014506C(&qword_1002296C8, &qword_1002296D0, &unk_1001C09F0, sub_100145120);
    sub_10014506C(&qword_1002296E8, &qword_1002296F0, &unk_1001C0A00, sub_1001451AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002296C0);
  }

  return result;
}

uint64_t sub_10014506C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    sub_100145928(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100145120()
{
  result = qword_1002296D8;
  if (!qword_1002296D8)
  {
    sub_10000460C(&qword_1002296E0);
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002296D8);
  }

  return result;
}

unint64_t sub_1001451AC()
{
  result = qword_1002296F8;
  if (!qword_1002296F8)
  {
    sub_10000460C(&qword_100229700);
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0);
    sub_10000BFFC(&qword_100229708, &qword_100229710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002296F8);
  }

  return result;
}

uint64_t sub_100145290()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for SetlistSongRowView();
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v12 = *(*(v2 - 8) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = type metadata accessor for SetlistSongRowViewModel();
  (*(*(v1 - 8) + 8))(v0 + v3 + *(v8 + 36), v1);

  v9 = *(v2 + 40);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
  }

  sub_10001BC5C(*(v7 + *(v2 + 44)), *(v7 + *(v2 + 44) + 8));
  (*(v5 + 8))(v0 + ((v3 + v12 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1001454C4()
{
  v1 = *(type metadata accessor for SetlistSongRowView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  type metadata accessor for URL();

  return sub_1001448B8(v0 + v2);
}

unint64_t sub_1001455B4()
{
  result = qword_100229740;
  if (!qword_100229740)
  {
    sub_10000460C(&qword_100229738);
    sub_10014566C();
    sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229740);
  }

  return result;
}

unint64_t sub_10014566C()
{
  result = qword_100229748;
  if (!qword_100229748)
  {
    sub_10000460C(&qword_100229750);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229748);
  }

  return result;
}

unint64_t sub_100145728()
{
  result = qword_100229760;
  if (!qword_100229760)
  {
    sub_10000460C(&qword_100229680);
    sub_1001457B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229760);
  }

  return result;
}

unint64_t sub_1001457B4()
{
  result = qword_100229768;
  if (!qword_100229768)
  {
    sub_10000460C(&qword_100229678);
    sub_100145840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229768);
  }

  return result;
}

unint64_t sub_100145840()
{
  result = qword_100229770;
  if (!qword_100229770)
  {
    sub_10000460C(&qword_100229778);
    sub_10000BFFC(&qword_100229758, &qword_100229670);
    sub_100145928(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229770);
  }

  return result;
}

uint64_t sub_100145928(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100145980()
{
  result = qword_1002297A0;
  if (!qword_1002297A0)
  {
    sub_10000460C(&qword_100229798);
    sub_100145A38();
    sub_10000BFFC(&qword_100221B48, &qword_100221B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002297A0);
  }

  return result;
}

unint64_t sub_100145A38()
{
  result = qword_1002297A8;
  if (!qword_1002297A8)
  {
    sub_10000460C(&qword_1002297B0);
    sub_1000A7230();
    sub_10000BFFC(&qword_100222260, &qword_100222268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002297A8);
  }

  return result;
}

uint64_t sub_100145AF0()
{
  sub_10001877C();
  v0 = Text.init<A>(_:)();
  v2 = v1;
  v4 = v3;
  static Color.gray.getter();
  Color.opacity(_:)();

  v5 = Text.foregroundColor(_:)();
  v7 = v6;
  v9 = v8;

  sub_100017398(v0, v2, v4 & 1);

  sub_100141AA0();
  v10 = Text.font(_:)();

  sub_100017398(v5, v7, v9 & 1);

  return v10;
}

unint64_t sub_100145C50()
{
  result = qword_1002297C8;
  if (!qword_1002297C8)
  {
    sub_10000460C(&qword_1002297D0);
    sub_10000460C(&qword_100229610);
    sub_100144D70();
    swift_getOpaqueTypeConformance2();
    sub_100145928(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002297C8);
  }

  return result;
}

uint64_t sub_100145D5C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_1002222A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100145E2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_1002222A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ServicesUpsellModule()
{
  result = qword_100229830;
  if (!qword_100229830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100145F28()
{
  type metadata accessor for ServicesUpsellViewModel();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      sub_100029A5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100145FE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_1000024C4(&qword_1002223A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_1000024C4(&qword_1002223A8);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = sub_1000024C4(&qword_100229870);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  sub_1001463E0(v2, v5);
  sub_1000024C4(&qword_100222388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B49A0;
  v13 = static Edge.Set.leading.getter();
  *(inited + 32) = v13;
  v14 = static Edge.Set.top.getter();
  *(inited + 33) = v14;
  v15 = static Edge.Set.bottom.getter();
  *(inited + 34) = v15;
  v16 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v13)
  {
    v16 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v14)
  {
    v16 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v15)
  {
    v16 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_10001AE00(v5, v8, &qword_1002223A0);
  v25 = &v8[*(v6 + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = static Edge.Set.trailing.getter();
  sub_10001AE00(v8, v11, &qword_1002223A8);
  v27 = &v11[*(v9 + 36)];
  *v27 = v26;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  if (qword_100220BC0 != -1)
  {
    swift_once();
  }

  v28 = qword_1002390D8;
  v29 = sub_1000024C4(&qword_100229878);
  v30 = v42;
  v31 = (v42 + *(v29 + 36));
  v32 = *(type metadata accessor for RoundedRectangle() + 20);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = type metadata accessor for RoundedCornerStyle();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = v28;
  v31[1] = v28;
  v35 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v36 = Color.init(uiColor:)();
  *(v31 + *(sub_1000024C4(&qword_100223250) + 36)) = v36;
  v37 = static Alignment.center.getter();
  v39 = v38;
  v40 = (v31 + *(sub_1000024C4(&qword_100223480) + 36));
  *v40 = v37;
  v40[1] = v39;
  return sub_10001AE00(v11, v30, &qword_100229870);
}

uint64_t sub_1001463E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for ServicesUpsellModule();
  v66 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v67 = v4;
  v68 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000024C4(&qword_100222408);
  __chkstk_darwin(v70);
  v6 = v56 - v5;
  v63 = type metadata accessor for RedactionReasons();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1000024C4(&qword_100222410);
  v65 = *(v71 - 8);
  __chkstk_darwin(v71);
  v64 = v56 - v9;
  v10 = sub_1000024C4(&qword_1002214F8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v56 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v61 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v73 = v56 - v20;
  v69 = a1;
  v21 = *a1;
  v22 = OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_openURL;
  sub_100073F10(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_openURL, v15);
  v74 = v17;
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    sub_100006BC4(v15);
    v24 = 0x3838383736343436;
    if (!*(v21 + 16))
    {
      v24 = 0x3337383138303131;
    }

    v25 = 0xEA00000000003932;
    if (!*(v21 + 16))
    {
      v25 = 0xEA00000000003039;
    }

    v27 = *(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_subtitle);
    v26 = *(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_subtitle + 8);
    *&v75 = v24;
    *(&v75 + 1) = v25;
    v76 = 0uLL;
    *&v77 = v27;
    *(&v77 + 1) = v26;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;

    static RedactionReasons.placeholder.getter();
    v28 = sub_10002C55C();
    v29 = v64;
    View.redacted(reason:)();
    (*(v62 + 1))(v8, v63);
    v81[2] = v77;
    v81[3] = v78;
    v81[4] = v79;
    v81[5] = v80;
    v81[0] = v75;
    v81[1] = v76;
    sub_10002C5B0(v81);
    v30 = v65;
    v31 = v71;
    (*(v65 + 16))(v6, v29, v71);
    swift_storeEnumTagMultiPayload();
    *&v75 = &type metadata for AppStoreComponent;
    *(&v75 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v30 + 8))(v29, v31);
  }

  else
  {
    v62 = v6;
    v33 = *(v74 + 32);
    v56[1] = v74 + 32;
    v56[0] = v33;
    v33(v73, v15, v16);
    v34 = *(v21 + 16) == 0;
    v35 = 0x3838383736343436;
    if (!*(v21 + 16))
    {
      v35 = 0x3337383138303131;
    }

    v65 = v35;
    v36 = 0xEA00000000003932;
    if (v34)
    {
      v36 = 0xEA00000000003039;
    }

    v59 = v36;
    v37 = *(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_subtitle + 8);
    v58 = *(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_subtitle);
    v38 = *(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_metricsQuery + 8);
    v57 = *(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_metricsQuery);
    sub_100073F10(v21 + v22, v13);
    v39 = v23(v13, 1, v16);
    v63 = v38;

    v64 = v37;

    sub_100006BC4(v13);
    v60 = v16;
    if (v39 == 1)
    {
      v40 = 0;
      v41 = 0;
      v42 = v69;
      v43 = v68;
      v44 = v66;
    }

    else
    {
      v42 = v69;
      v43 = v68;
      sub_100146F3C(v69, v68);
      v45 = v74 + 16;
      v46 = v61;
      (*(v74 + 16))(v61, v73, v16);
      v44 = v66;
      v47 = (*(v66 + 80) + 16) & ~*(v66 + 80);
      v48 = (v67 + *(v45 + 64) + v47) & ~*(v45 + 64);
      v41 = swift_allocObject();
      sub_1001470C4(v43, v41 + v47);
      (v56[0])(v41 + v48, v46, v16);
      v40 = sub_100147348;
    }

    v49 = v62;
    sub_100146F3C(v42, v43);
    v50 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v51 = swift_allocObject();
    sub_1001470C4(v43, v51 + v50);
    v52 = v59;
    *v49 = v65;
    *(v49 + 1) = v52;
    *&v53 = v58;
    *(&v53 + 1) = v64;
    *(v49 + 2) = 0;
    *(v49 + 3) = 0;
    *&v54 = v57;
    *(&v54 + 1) = v63;
    *(v49 + 2) = v53;
    *(v49 + 3) = v54;
    *(v49 + 8) = v40;
    *(v49 + 9) = v41;
    *(v49 + 10) = sub_100147128;
    *(v49 + 11) = v51;
    swift_storeEnumTagMultiPayload();
    v55 = sub_10002C55C();
    *&v81[0] = &type metadata for AppStoreComponent;
    *(&v81[0] + 1) = v55;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v74 + 8))(v73, v60);
  }
}

uint64_t sub_100146CC0(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_100147720(6, 0, 3u, v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100016404();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100146DD0(void *a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ServicesUpsellModule();
  sub_100039C90(v5);
  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  v6 = a1[1];
  if (v6)
  {
    if (*(*a1 + 16))
    {
      v7 = 10;
    }

    else
    {
      v7 = 9;
    }

    sub_100147720(v7, 0, 3u, v6);

    return sub_100026CDC(v7, 0, 3u);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100016404();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100146F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServicesUpsellModule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100146FA0()
{
  v1 = (type metadata accessor for ServicesUpsellModule() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001470C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServicesUpsellModule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100147128(uint64_t a1)
{
  v3 = *(type metadata accessor for ServicesUpsellModule() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100146CC0(a1, v4);
}

uint64_t sub_100147198()
{
  v1 = (type metadata accessor for ServicesUpsellModule() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = v1[8];
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OpenURLAction();
    (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100147348()
{
  v1 = *(type metadata accessor for ServicesUpsellModule() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for URL();

  return sub_100146DD0((v0 + v2));
}

unint64_t sub_100147418()
{
  result = qword_100229880;
  if (!qword_100229880)
  {
    sub_10000460C(&qword_100229878);
    sub_100147500(&qword_100229888, &qword_100229870, &unk_1001C0BA8, sub_1001474D0);
    sub_1001476BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229880);
  }

  return result;
}

uint64_t sub_100147500(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100147584()
{
  result = qword_100229898;
  if (!qword_100229898)
  {
    sub_10000460C(&qword_1002223A0);
    sub_100147608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229898);
  }

  return result;
}

unint64_t sub_100147608()
{
  result = qword_1002298A0;
  if (!qword_1002298A0)
  {
    sub_10000460C(&qword_1002298A8);
    sub_10002C55C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002298A0);
  }

  return result;
}

unint64_t sub_1001476BC()
{
  result = qword_1002234A8;
  if (!qword_1002234A8)
  {
    sub_10000460C(&qword_100223480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002234A8);
  }

  return result;
}

void sub_100147720(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v11 = *(v4 + 24);
  v10 = *(v4 + 32);
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v11;
  *(inited + 48) = v10;
  v12 = *(v4 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_analyticsPageNameType);
  if (v12 == 15)
  {
    LOBYTE(v12) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v12;
  if (*(v4 + 16))
  {
    v13 = 8;
  }

  else
  {
    v13 = 7;
  }

  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = v13;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v14 = *(a4 + 64);
    v15 = *(a4 + 72);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v22 = v14;
  v23 = v15;

  sub_100006C80(a1, a2, a3);

  v16 = sub_1001894F4(1, 5, 1, inited);
  v20 = v16;
  sub_100006C98(&aBlock, v27);
  sub_100118768(4, v27, &v20, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v17 = String._bridgeToObjectiveC()();
  v18 = swift_allocObject();
  v18[2] = 0xD00000000000001ELL;
  v18[3] = 0x80000001001C4640;
  v18[4] = v16;
  v25 = sub_100006D88;
  v26 = v18;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_10015B4A4;
  v24 = &unk_100218A08;
  v19 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v19);
}

uint64_t sub_1001479B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x3838383736343436;
  }

  else
  {
    v3 = 0x3337383138303131;
  }

  if (v2)
  {
    v4 = 0xEA00000000003039;
  }

  else
  {
    v4 = 0xEA00000000003932;
  }

  if (*a2)
  {
    v5 = 0x3838383736343436;
  }

  else
  {
    v5 = 0x3337383138303131;
  }

  if (*a2)
  {
    v6 = 0xEA00000000003932;
  }

  else
  {
    v6 = 0xEA00000000003039;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100147A60()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100147AE8()
{
  String.hash(into:)();
}

Swift::Int sub_100147B5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100147BE0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100211BD0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100147C40(uint64_t *a1@<X8>)
{
  v2 = 0x3337383138303131;
  if (*v1)
  {
    v2 = 0x3838383736343436;
  }

  v3 = 0xEA00000000003039;
  if (*v1)
  {
    v3 = 0xEA00000000003932;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100147C84()
{

  sub_100006BC4(v0 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_openURL);

  v1 = OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServicesUpsellViewModel()
{
  result = qword_1002298E8;
  if (!qword_1002298E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100147DB4()
{
  sub_10000693C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_100147EB8()
{
  result = qword_1002299A0[0];
  if (!qword_1002299A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002299A0);
  }

  return result;
}

uint64_t sub_100147F0C()
{

  return swift_deallocObject();
}

uint64_t sub_100147F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100147F64(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 112);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 60);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10001BC5C(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10014FE30(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001481E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v29 = sub_10000460C(&qword_100223418);
  v30 = a1[2];
  v3 = type metadata accessor for Array();
  v31 = a1[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  v4 = type metadata accessor for Button();
  v22 = type metadata accessor for PlainButtonStyle();
  v25 = v4;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  v26 = type metadata accessor for AccessibilityAttachmentModifier();
  v23 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v3;
  v46 = &type metadata for String;
  v47 = v23;
  v48 = swift_getWitnessTable();
  v49 = &protocol witness table for String;
  v18[2] = type metadata accessor for ForEach();
  v27 = a1[3];
  type metadata accessor for Array();
  v28 = a1[5];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v19 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v18[1] = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v49 = &protocol witness table for String;
  type metadata accessor for ForEach();
  v20 = type metadata accessor for _ConditionalContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v42 = swift_getWitnessTable();
  v5 = swift_getWitnessTable();
  v47 = v19;
  v48 = v21;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v44;
  v39 = swift_getWitnessTable();
  v37 = v5;
  v38 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  static HorizontalAlignment.leading.getter();
  *&v13 = v30;
  *(&v13 + 1) = v27;
  *&v14 = v31;
  *(&v14 + 1) = v28;
  v34 = v13;
  v35 = v14;
  v36 = v32;
  VStack.init(alignment:spacing:content:)();
  v15 = swift_getWitnessTable();
  sub_1000EE87C(v10, v6, v15);
  v16 = *(v7 + 8);
  v16(v10, v6);
  sub_1000EE87C(v12, v6, v15);
  return (v16)(v12, v6);
}

uint64_t sub_1001489BC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v144 = a1;
  v145 = a2;
  v139 = a6;
  v9 = type metadata accessor for ContentMarginPlacement();
  v137 = *(v9 - 8);
  v138 = v9;
  __chkstk_darwin(v9);
  v136 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScrollIndicatorVisibility();
  v134 = *(v11 - 8);
  v135 = v11;
  __chkstk_darwin(v11);
  v132 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Array();
  v146 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  v14 = type metadata accessor for Button();
  v15 = type metadata accessor for PlainButtonStyle();
  v130 = v15;
  v142 = v14;
  WitnessTable = swift_getWitnessTable();
  v133 = WitnessTable;
  v129 = sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  *&v173 = v14;
  *(&v173 + 1) = v15;
  *&v174 = WitnessTable;
  *(&v174 + 1) = v129;
  v126 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  swift_getOpaqueTypeMetadata2();
  v143 = type metadata accessor for AccessibilityAttachmentModifier();
  v17 = type metadata accessor for ModifiedContent();
  v131 = v17;
  v18 = swift_getWitnessTable();
  *&v173 = v13;
  *(&v173 + 1) = &type metadata for String;
  *&v174 = v17;
  *(&v174 + 1) = v18;
  *&v175 = &protocol witness table for String;
  v124 = type metadata accessor for ForEach();
  v19 = type metadata accessor for Array();
  v140 = a3;
  v141 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  v20 = type metadata accessor for Button();
  v127 = swift_getWitnessTable();
  v22 = v129;
  v21 = v130;
  *&v173 = v20;
  *(&v173 + 1) = v130;
  *&v174 = v127;
  *(&v174 + 1) = v129;
  swift_getOpaqueTypeMetadata2();
  v23 = type metadata accessor for ModifiedContent();
  v125 = v23;
  v24 = swift_getWitnessTable();
  *&v173 = v19;
  *(&v173 + 1) = &type metadata for String;
  *&v174 = v23;
  *(&v174 + 1) = v24;
  *&v175 = &protocol witness table for String;
  v123 = type metadata accessor for ForEach();
  v128 = type metadata accessor for _ConditionalContent();
  *&v173 = v142;
  *(&v173 + 1) = v21;
  *&v174 = v133;
  *(&v174 + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v171 = OpaqueTypeConformance2;
  v172 = v26;
  v170 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  *&v173 = v20;
  *(&v173 + 1) = v21;
  *&v174 = v127;
  *(&v174 + 1) = v22;
  v168 = swift_getOpaqueTypeConformance2();
  v169 = v26;
  v133 = v26;
  v167 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v165 = v27;
  v166 = v28;
  swift_getWitnessTable();
  v111 = type metadata accessor for HStack();
  v110 = swift_getWitnessTable();
  v29 = type metadata accessor for ScrollView();
  v123 = *(v29 - 8);
  __chkstk_darwin(v29);
  v109 = &v103 - v30;
  v31 = swift_getWitnessTable();
  *&v173 = v29;
  *(&v173 + 1) = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v124 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v118 = &v103 - v33;
  v125 = v29;
  *&v173 = v29;
  *(&v173 + 1) = v31;
  v113 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  *&v173 = OpaqueTypeMetadata2;
  *(&v173 + 1) = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v120 = *(v35 - 8);
  __chkstk_darwin(v35);
  v117 = &v103 - v36;
  v127 = OpaqueTypeMetadata2;
  *&v173 = OpaqueTypeMetadata2;
  *(&v173 + 1) = v34;
  v112 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v126 = v35;
  *&v173 = v35;
  *(&v173 + 1) = v37;
  v116 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v119 = *(v38 - 8);
  __chkstk_darwin(v38);
  v115 = &v103 - v39;
  v122 = v40;
  v131 = type metadata accessor for ModifiedContent();
  v128 = *(v131 - 8);
  v41 = __chkstk_darwin(v131);
  v130 = &v103 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v114 = &v103 - v44;
  __chkstk_darwin(v43);
  v129 = &v103 - v45;
  v46 = type metadata accessor for AccessibilityTraits();
  v107 = *(v46 - 8);
  v108 = v46;
  __chkstk_darwin(v46);
  v106 = &v103 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1000024C4(&qword_100223418);
  v48 = __chkstk_darwin(v142);
  v121 = &v103 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v105 = &v103 - v51;
  __chkstk_darwin(v50);
  v143 = &v103 - v52;
  v53 = v144[5];
  v177 = v144[4];
  v178[0] = v53;
  *(v178 + 9) = *(v144 + 89);
  v54 = v144[1];
  v173 = *v144;
  v174 = v54;
  v55 = v144[3];
  v175 = v144[2];
  v176 = v55;
  *&v159 = v145;
  v57 = v140;
  v56 = v141;
  *(&v159 + 1) = v140;
  *&v160 = v146;
  *(&v160 + 1) = v141;
  type metadata accessor for PlaylistViewModel();
  sub_1000A8318();
  v58 = Text.init(_:tableName:bundle:comment:)();
  v60 = v59;
  LOBYTE(v26) = v61;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v62 = Text.font(_:)();
  v103 = v63;
  v104 = v62;
  LOBYTE(v22) = v64;
  v66 = v65;
  v67 = v144;

  sub_100017398(v58, v60, v26 & 1);

  LOBYTE(v35) = static Edge.Set.leading.getter();
  v69 = v145;
  v68 = v146;
  *&v159 = v145;
  *(&v159 + 1) = v57;
  *&v160 = v146;
  *(&v160 + 1) = v56;
  v70 = type metadata accessor for PlaylistModule();
  sub_100147F64(v70);
  EdgeInsets.init(_all:)();
  v164 = v22 & 1;
  v163 = 0;
  *&v155 = v104;
  *(&v155 + 1) = v103;
  LOBYTE(v156) = v22 & 1;
  *(&v156 + 1) = v66;
  LOBYTE(v157) = v35;
  *(&v157 + 1) = v71;
  *&v158[0] = v72;
  *(&v158[0] + 1) = v73;
  *&v158[1] = v74;
  BYTE8(v158[1]) = 0;
  sub_1000024C4(&qword_100223488);
  sub_10005D968();
  v75 = v105;
  View.accessibilityIdentifier(_:)();
  v161 = v157;
  v162[0] = v158[0];
  *(v162 + 9) = *(v158 + 9);
  v159 = v155;
  v160 = v156;
  v76 = v132;
  sub_1000050C4(&v159, &qword_100223488);
  v77 = v106;
  static AccessibilityTraits.isHeader.getter();
  ModifiedContent<>.accessibility(addTraits:)();
  (*(v107 + 8))(v77, v108);
  sub_1000050C4(v75, &qword_100223418);
  static Axis.Set.horizontal.getter();
  v147 = v69;
  v148 = v140;
  v149 = v68;
  v150 = v141;
  v78 = v109;
  v151 = v67;
  sub_1000E7A24();
  static ScrollIndicatorVisibility.hidden.getter();
  sub_1000024C4(&qword_1002245D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v75) = static Axis.Set.vertical.getter();
  *(inited + 32) = v75;
  v80 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v80;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v75)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v80)
  {
    Axis.Set.init(rawValue:)();
  }

  v81 = v118;
  v82 = v125;
  View.scrollIndicators(_:axes:)();
  (*(v134 + 8))(v76, v135);
  (*(v123 + 8))(v78, v82);
  static Edge.Set.leading.getter();
  sub_100147F64(v70);
  v146 = v70;
  v83 = v136;
  static ContentMarginPlacement.scrollContent.getter();
  v84 = v117;
  v85 = v127;
  View.contentMargins(_:_:for:)();
  v86 = v138;
  v87 = *(v137 + 8);
  v87(v83, v138);
  (*(v124 + 8))(v81, v85);
  static Edge.Set.trailing.getter();
  sub_100147F64(v146);
  static ContentMarginPlacement.scrollContent.getter();
  v89 = v115;
  v88 = v116;
  v90 = v126;
  View.contentMargins(_:_:for:)();
  v87(v83, v86);
  (*(v120 + 8))(v84, v90);
  *&v155 = v90;
  *(&v155 + 1) = v88;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = v114;
  v93 = v122;
  View.accessibilityIdentifier(_:)();
  (*(v119 + 8))(v89, v93);
  v154[2] = v91;
  v154[3] = v133;
  v94 = v131;
  v95 = swift_getWitnessTable();
  v96 = v129;
  sub_1000EE87C(v92, v94, v95);
  v97 = v128;
  v98 = *(v128 + 8);
  v98(v92, v94);
  v99 = v143;
  v100 = v121;
  sub_10000BEB8(v143, v121, &qword_100223418);
  *&v155 = v100;
  v101 = v130;
  (*(v97 + 16))(v130, v96, v94);
  *(&v155 + 1) = v101;
  v154[0] = v142;
  v154[1] = v94;
  v152 = sub_100150CC8(&qword_1002234B0, &qword_100223418, &unk_1001B7350, sub_10005D968);
  v153 = v95;
  sub_1000E76FC(&v155, 2uLL, v154);
  v98(v96, v94);
  sub_1000050C4(v99, &qword_100223418);
  v98(v101, v94);
  return sub_1000050C4(v100, &qword_100223418);
}

uint64_t sub_100149A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a4;
  v29 = a2;
  v31 = a1;
  v32 = a6;
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v23 = type metadata accessor for PlainButtonStyle();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  v25 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v20[0] = type metadata accessor for ForEach();
  v27 = a3;
  type metadata accessor for Array();
  v28 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  v8 = type metadata accessor for Button();
  v21 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v20[1] = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v50 = &protocol witness table for String;
  type metadata accessor for ForEach();
  v24 = type metadata accessor for _ConditionalContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v43 = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v46 = v8;
  v47 = v23;
  v48 = v21;
  v49 = v22;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v45;
  v40 = swift_getWitnessTable();
  v38 = v9;
  v39 = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = type metadata accessor for HStack();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v20 - v15;
  v33 = v29;
  v34 = v27;
  v35 = v30;
  v36 = v28;
  v37 = v31;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  v17 = swift_getWitnessTable();
  sub_1000EE87C(v14, v10, v17);
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_1000EE87C(v16, v10, v17);
  return (v18)(v16, v10);
}

uint64_t sub_10014A09C@<X0>(unsigned __int128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v102 = a6;
  v103 = a5;
  v92 = a2;
  v9 = type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  v93 = a3;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  v112 = &unk_1001C0E50;
  swift_getWitnessTable();
  v10 = type metadata accessor for Button();
  v11 = type metadata accessor for PlainButtonStyle();
  v111 = &protocol conformance descriptor for Button<A>;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v109 = WitnessTable;
  v110 = v10;
  v107 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  swift_getOpaqueTypeMetadata2();
  v106 = type metadata accessor for AccessibilityAttachmentModifier();
  v101 = &protocol conformance descriptor for [A];
  v89 = v9;
  *&v144 = v9;
  *(&v144 + 1) = &type metadata for String;
  v108 = type metadata accessor for ModifiedContent();
  *&v145 = v108;
  *(&v145 + 1) = swift_getWitnessTable();
  v85 = *(&v145 + 1);
  *&v146 = &protocol witness table for String;
  v14 = type metadata accessor for ForEach();
  KeyPath = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v87 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v86 = v81 - v17;
  v18 = v92;
  *&v144 = v92;
  *(&v144 + 1) = a3;
  *&v145 = a4;
  *(&v145 + 1) = v103;
  v96 = type metadata accessor for PlaylistModule();
  v90 = *(v96 - 8);
  v94 = *(v90 + 64);
  __chkstk_darwin(v96);
  v95 = v81 - v19;
  v20 = type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  v21 = type metadata accessor for Button();
  v104 = swift_getWitnessTable();
  v105 = v21;
  *&v144 = v21;
  *(&v144 + 1) = v11;
  v111 = v13;
  v112 = v11;
  *&v145 = v104;
  *(&v145 + 1) = v13;
  swift_getOpaqueTypeMetadata2();
  v22 = type metadata accessor for ModifiedContent();
  v23 = swift_getWitnessTable();
  v84 = v20;
  *&v144 = v20;
  v24 = v90;
  *(&v144 + 1) = &type metadata for String;
  *&v145 = v22;
  v106 = v22;
  v81[1] = v23;
  *(&v145 + 1) = v23;
  *&v146 = &protocol witness table for String;
  v25 = type metadata accessor for ForEach();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v83 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v82 = v81 - v29;
  v98 = v30;
  v107 = v14;
  v31 = v103;
  v32 = type metadata accessor for _ConditionalContent();
  v100 = *(v32 - 8);
  v101 = v32;
  __chkstk_darwin(v32);
  v99 = v81 - v33;
  v34 = a1[5];
  v148 = a1[4];
  v149[0] = v34;
  *(v149 + 9) = *(a1 + 89);
  v35 = a1[1];
  v144 = *a1;
  v145 = v35;
  v36 = a1[3];
  v146 = a1[2];
  v147 = v36;
  v37 = v93;
  v138 = __PAIR128__(v93, v18);
  v97 = a4;
  *&v139 = a4;
  *(&v139 + 1) = v31;
  type metadata accessor for PlaylistViewModel();
  v38 = sub_1000A83A0();
  v91 = v24 + 16;
  v39 = a1[5];
  v142 = a1[4];
  v143[0] = v39;
  *(v143 + 9) = *(a1 + 89);
  v40 = a1[1];
  v138 = *a1;
  v139 = v40;
  v41 = a1[3];
  v140 = a1[2];
  v141 = v41;
  if (v38)
  {
    v137 = sub_1000A8410();
    __chkstk_darwin(v137);
    v81[-4] = v18;
    v81[-3] = v37;
    v42 = v97;
    v79 = v97;
    v80 = v31;
    KeyPath = swift_getKeyPath();
    v89 = v26;
    v44 = v95;
    v43 = v96;
    (*(v24 + 16))(v95, a1, v96);
    v45 = (*(v24 + 80) + 48) & ~*(v24 + 80);
    v46 = swift_allocObject();
    *(v46 + 2) = v18;
    *(v46 + 3) = v37;
    *(v46 + 4) = v42;
    *(v46 + 5) = v31;
    (*(v24 + 32))(&v46[v45], v44, v43);
    v133 = v105;
    v134 = v112;
    v135 = v104;
    v136 = v111;
    v103 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    v117 = OpaqueTypeConformance2;
    v118 = v48;
    v49 = swift_getWitnessTable();
    v79 = v49;
    v50 = v83;
    ForEach<>.init(_:id:content:)();
    v116 = v49;
    v51 = v98;
    v52 = swift_getWitnessTable();
    v53 = v82;
    sub_1000EE87C(v50, v51, v52);
    v54 = *(v89 + 8);
    v54(v50, v51);
    sub_1000EE87C(v53, v51, v52);
    v133 = v110;
    v134 = v112;
    v135 = v109;
    v136 = v111;
    v114 = swift_getOpaqueTypeConformance2();
    v115 = v48;
    v113 = swift_getWitnessTable();
    swift_getWitnessTable();
    v55 = v99;
    sub_10017387C(v50, v51);
    v54(v50, v51);
    v54(v53, v51);
  }

  else
  {
    v137 = sub_1000A84DC();
    __chkstk_darwin(v137);
    v81[-4] = v18;
    v81[-3] = v37;
    v56 = v97;
    v79 = v97;
    v80 = v31;
    v84 = swift_getKeyPath();
    v58 = v95;
    v57 = v96;
    (*(v24 + 16))(v95, a1, v96);
    v59 = (*(v24 + 80) + 48) & ~*(v24 + 80);
    v60 = swift_allocObject();
    *(v60 + 2) = v18;
    *(v60 + 3) = v37;
    *(v60 + 4) = v56;
    *(v60 + 5) = v31;
    (*(v24 + 32))(&v60[v59], v58, v57);
    v133 = v110;
    v134 = v112;
    v135 = v109;
    v136 = v111;
    v103 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    v131 = v61;
    v132 = v62;
    v63 = swift_getWitnessTable();
    v79 = v63;
    v64 = v87;
    ForEach<>.init(_:id:content:)();
    v130 = v63;
    v65 = v107;
    v66 = swift_getWitnessTable();
    v67 = v86;
    sub_1000EE87C(v64, v65, v66);
    v68 = *(KeyPath + 8);
    v68(v64, v65);
    sub_1000EE87C(v67, v65, v66);
    v133 = v105;
    v134 = v112;
    v135 = v104;
    v136 = v111;
    v128 = swift_getOpaqueTypeConformance2();
    v129 = v62;
    v127 = swift_getWitnessTable();
    v69 = v98;
    swift_getWitnessTable();
    v55 = v99;
    sub_100173974(v64, v69, v65);
    v68(v64, v65);
    v68(v67, v65);
  }

  v71 = v111;
  v70 = v112;
  v133 = v105;
  v134 = v112;
  v135 = v104;
  v136 = v111;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v125 = v72;
  v126 = v73;
  v124 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  v133 = v110;
  v134 = v70;
  v135 = v109;
  v136 = v71;
  v122 = swift_getOpaqueTypeConformance2();
  v123 = v73;
  v121 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v119 = v74;
  v120 = v75;
  v76 = v101;
  v77 = swift_getWitnessTable();
  sub_1000EE87C(v55, v76, v77);
  return (*(v100 + 8))(v55, v76);
}

uint64_t sub_10014ADA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v81 = a4;
  v82 = a6;
  v83 = a2;
  v86 = a7;
  v87 = a1;
  v11 = type metadata accessor for PlainButtonStyle();
  v67 = v11;
  v85 = *(v11 - 8);
  __chkstk_darwin(v11);
  v84 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a3;
  v96 = a4;
  v97 = a5;
  v98 = a6;
  v78 = type metadata accessor for PlaylistModule();
  v13 = *(v78 - 8);
  v80 = *(v13 + 64);
  v14 = __chkstk_darwin(v78);
  v16 = &v60 - v15;
  v17 = *(a3 - 8);
  v73 = *(v17 + 64);
  __chkstk_darwin(v14);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v19;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v76 = type metadata accessor for PlaylistItem();
  WitnessTable = swift_getWitnessTable();
  v20 = type metadata accessor for Button();
  v79 = *(v20 - 8);
  __chkstk_darwin(v20);
  v69 = &v60 - v21;
  v23 = v22;
  v68 = v22;
  v24 = swift_getWitnessTable();
  v65 = v24;
  v64 = sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v95 = v23;
  v96 = v11;
  v97 = v24;
  v98 = v64;
  v71 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v62 = &v60 - v25;
  type metadata accessor for AccessibilityAttachmentModifier();
  v74 = type metadata accessor for ModifiedContent();
  v77 = *(v74 - 8);
  v26 = __chkstk_darwin(v74);
  v63 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v70 = &v60 - v28;
  v29 = v17;
  (*(v17 + 16))(v19, v87, a3);
  v30 = v13;
  v31 = *(v13 + 16);
  v32 = v16;
  v33 = v78;
  v31(v16, v83, v78);
  v34 = v29;
  v35 = (*(v29 + 80) + 48) & ~*(v29 + 80);
  v36 = (v73 + *(v30 + 80) + v35) & ~*(v30 + 80);
  v37 = swift_allocObject();
  v38 = a3;
  *(v37 + 2) = a3;
  v39 = v81;
  *(v37 + 3) = v81;
  *(v37 + 4) = a5;
  v40 = a5;
  v41 = v82;
  *(v37 + 5) = v82;
  v42 = &v37[v35];
  v43 = v38;
  (*(v34 + 32))(v42, v61);
  (*(v30 + 32))(&v37[v36], v32, v33);
  v88 = v43;
  v89 = v39;
  v90 = v40;
  v91 = v41;
  v92 = v87;
  v44 = v69;
  Button.init(action:label:)();
  v45 = v84;
  PlainButtonStyle.init()();
  v46 = v62;
  v47 = v68;
  v48 = v67;
  v49 = v65;
  v50 = v64;
  View.buttonStyle<A>(_:)();
  (*(v85 + 8))(v45, v48);
  (*(v79 + 8))(v44, v47);
  v95 = v47;
  v96 = v48;
  v97 = v49;
  v98 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v63;
  v53 = OpaqueTypeMetadata2;
  View.accessibilityIdentifier(_:)();
  (*(v72 + 8))(v46, v53);
  v54 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v93 = OpaqueTypeConformance2;
  v94 = v54;
  v55 = v74;
  v56 = swift_getWitnessTable();
  v57 = v70;
  sub_1000EE87C(v52, v55, v56);
  v58 = *(v77 + 8);
  v58(v52, v55);
  sub_1000EE87C(v57, v55, v56);
  return (v58)(v57, v55);
}

uint64_t sub_10014B598(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v34 = a4;
  v37 = type metadata accessor for OpenURLAction();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  (*(a5 + 96))(a3, a5);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1000050C4(v13, &qword_1002214F8);
  }

  (*(v15 + 32))(v20, v13, v14);
  v44 = __PAIR128__(v34, a3);
  v33 = a3;
  v22 = v34;
  *&v45 = a5;
  v23 = v35;
  *(&v45 + 1) = v35;
  type metadata accessor for PlaylistModule();
  sub_100039C90(v10);
  v24 = *(a2 + 80);
  v48 = *(a2 + 64);
  *v49 = v24;
  *&v49[9] = *(a2 + 89);
  v25 = *(a2 + 16);
  v44 = *a2;
  v45 = v25;
  v26 = *(a2 + 48);
  v46 = *(a2 + 32);
  v47 = v26;
  *&v38 = v33;
  *(&v38 + 1) = v22;
  *&v39 = a5;
  *(&v39 + 1) = v23;
  type metadata accessor for PlaylistViewModel();
  sub_1000A85A8(v20, v18);
  OpenURLAction.callAsFunction(_:)();
  v27 = *(v15 + 8);
  v27(v18, v14);
  (*(v36 + 8))(v10, v37);
  v28 = *(a2 + 80);
  v42 = *(a2 + 64);
  v43[0] = v28;
  *(v43 + 9) = *(a2 + 89);
  v29 = *(a2 + 16);
  v38 = *a2;
  v39 = v29;
  v30 = *(a2 + 32);
  v41 = *(a2 + 48);
  v40 = v30;
  if (*(a2 + 112))
  {

    sub_1000A8634(v31);

    return (v27)(v20, v14);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10014FE30(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10014B9A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v28 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  __chkstk_darwin(v5 - 8);
  v27 = &v23 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for PlaylistItem();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = (*(a2 + 64))(a1, a2);
  v23 = v15;
  v24 = v14;
  v16 = (*(a2 + 72))(a1, a2);
  v18 = v17;
  v19 = v27;
  (*(a2 + 88))(a1, a2);
  sub_10014BC24(v24, v23, v16, v18, v19, v11);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v11, v7, WitnessTable);
  v21 = *(v8 + 8);
  v21(v11, v7);
  sub_1000EE87C(v13, v7, WitnessTable);
  return (v21)(v13, v7);
}

uint64_t sub_10014BC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for PlaylistItem() + 40);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t sub_10014BCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v80 = a5;
  v79 = a3;
  v84 = a1;
  v85 = a2;
  v83 = a7;
  v11 = type metadata accessor for PlainButtonStyle();
  v65 = v11;
  v82 = *(v11 - 8);
  __chkstk_darwin(v11);
  v81 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a3;
  v95 = a4;
  v96 = a5;
  v97 = a6;
  v70 = a6;
  v72 = type metadata accessor for PlaylistModule();
  v13 = *(v72 - 8);
  v78 = *(v13 + 64);
  v14 = __chkstk_darwin(v72);
  v16 = &v58 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v59 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v75 = type metadata accessor for PlaylistItem();
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for Button();
  v77 = *(v19 - 8);
  __chkstk_darwin(v19);
  v67 = &v58 - v20;
  v22 = v21;
  v66 = v21;
  v23 = swift_getWitnessTable();
  v63 = v23;
  v62 = sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v94 = v22;
  v95 = v11;
  v96 = v23;
  v97 = v62;
  v69 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v60 = &v58 - v24;
  type metadata accessor for AccessibilityAttachmentModifier();
  v73 = type metadata accessor for ModifiedContent();
  v76 = *(v73 - 8);
  v25 = __chkstk_darwin(v73);
  v61 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v68 = &v58 - v27;
  (*(v17 + 16))(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v84, a4);
  v28 = v13;
  v29 = *(v13 + 16);
  v30 = v16;
  v31 = v72;
  v29(v16, v85, v72);
  v32 = v17;
  v33 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v34 = (v18 + *(v28 + 80) + v33) & ~*(v28 + 80);
  v35 = swift_allocObject();
  v36 = v79;
  *(v35 + 2) = v79;
  *(v35 + 3) = a4;
  v37 = a4;
  v38 = v80;
  v39 = v70;
  *(v35 + 4) = v80;
  *(v35 + 5) = v39;
  v40 = &v35[v33];
  v41 = v37;
  (*(v32 + 32))(v40, v59);
  (*(v28 + 32))(&v35[v34], v30, v31);
  v86 = v36;
  v87 = v41;
  v88 = v38;
  v89 = v39;
  v90 = v84;
  v91 = v85;
  v42 = v67;
  Button.init(action:label:)();
  v43 = v81;
  PlainButtonStyle.init()();
  v44 = v60;
  v45 = v66;
  v46 = v65;
  v47 = v63;
  v48 = v62;
  View.buttonStyle<A>(_:)();
  (*(v82 + 8))(v43, v46);
  (*(v77 + 8))(v42, v45);
  v94 = v45;
  v95 = v46;
  v96 = v47;
  v97 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v61;
  v51 = OpaqueTypeMetadata2;
  View.accessibilityIdentifier(_:)();
  (*(v71 + 8))(v44, v51);
  v52 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v92 = OpaqueTypeConformance2;
  v93 = v52;
  v53 = v73;
  v54 = swift_getWitnessTable();
  v55 = v68;
  sub_1000EE87C(v50, v53, v54);
  v56 = *(v76 + 8);
  v56(v50, v53);
  sub_1000EE87C(v55, v53, v54);
  return (v56)(v55, v53);
}

uint64_t sub_10014C4C4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v33 = a3;
  v9 = type metadata accessor for OpenURLAction();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v31 - v20;
  (*(a6 + 64))(a4, a6);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1000050C4(v14, &qword_1002214F8);
  }

  (*(v16 + 32))(v21, v14, v15);
  v23 = a6;
  v32 = a6;
  v24 = a4;
  v25 = v33;
  *&v41 = v33;
  *(&v41 + 1) = v24;
  v26 = v34;
  *&v42 = v34;
  *(&v42 + 1) = v23;
  type metadata accessor for PlaylistModule();
  sub_100039C90(v11);
  v27 = a2[5];
  v45 = a2[4];
  v46[0] = v27;
  *(v46 + 9) = *(a2 + 89);
  v28 = a2[1];
  v41 = *a2;
  v42 = v28;
  v29 = a2[3];
  v43 = a2[2];
  v44 = v29;
  v37 = v25;
  v38 = v24;
  v39 = v26;
  v40 = v32;
  type metadata accessor for PlaylistViewModel();
  sub_1000A85A8(v21, v19);
  OpenURLAction.callAsFunction(_:)();
  v30 = *(v16 + 8);
  v30(v19, v15);
  (*(v35 + 8))(v11, v36);
  return (v30)(v21, v15);
}

uint64_t sub_10014C7E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v31 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for PlaylistItem();
  v30 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = (*(a3 + 48))(a2, a3);
  v26 = v17;
  v27 = v16;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v25 = v18;
  v20 = *(a3 + 56);

  v20(a2, a3);
  sub_10014BC24(v27, v26, v25, v19, v9, v13);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v13, v10, WitnessTable);
  v22 = *(v30 + 8);
  v22(v13, v10);
  sub_1000EE87C(v15, v10, WitnessTable);
  return (v22)(v15, v10);
}

uint64_t sub_10014CA54@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v7;
  *(a4 + 89) = *(a1 + 89);
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v8;
  v9 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v9;
  type metadata accessor for RemoteViewConfiguration();
  sub_10014FE30(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  *(a4 + 112) = EnvironmentObject.init()();
  *(a4 + 120) = v10;
  v11 = type metadata accessor for PlaylistModule();
  v12 = *(v11 + 56);
  *(a4 + v12) = swift_getKeyPath();
  sub_1000024C4(qword_100221928);
  result = swift_storeEnumTagMultiPayload();
  v14 = a4 + *(v11 + 60);
  *v14 = a2;
  *(v14 + 8) = a3 & 1;
  return result;
}

void sub_10014CBA0()
{
  type metadata accessor for PlaylistViewModel();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      sub_100029A5C();
      if (v2 <= 0x3F)
      {
        sub_1001506A8(319, &qword_100222318, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10014CC98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_1002222A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10014CD68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_1002222A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10014CEC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(*(a1 + a2 - 24));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_10014CF18(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_10014CF40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 16) + 56))(*(a1 + a2 - 32));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_10014CF98()
{
  v1 = type metadata accessor for PlaylistModule();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 56);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_10001BC5C(*(v2 + *(v1 + 60)), *(v2 + *(v1 + 60) + 8));
  return swift_deallocObject();
}

uint64_t sub_10014D134(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(type metadata accessor for PlaylistModule() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_10014D1FC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = type metadata accessor for PlaylistModule();
  v6 = (v4 + v3 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v4, v1);
  v7 = v0 + v6;

  v8 = *(v5 + 56);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_10001BC5C(*(v7 + *(v5 + 60)), *(v7 + *(v5 + 60) + 8));
  return swift_deallocObject();
}

uint64_t sub_10014D3FC()
{
  v1 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v2 = *(*(v0[2] - 8) + 64);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v3 = *(type metadata accessor for PlaylistModule() - 8);
  v4 = v0 + ((v1 + v2 + *(v3 + 80)) & ~*(v3 + 80));

  return sub_10014B598(v0 + v1, v4, v6, v7, v8, v9);
}

uint64_t sub_10014D52C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = type metadata accessor for PlaylistModule();
  v6 = (v4 + v3 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v4, v1);
  v7 = v0 + v6;

  v8 = *(v5 + 56);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_10001BC5C(*(v7 + *(v5 + 60)), *(v7 + *(v5 + 60) + 8));
  return swift_deallocObject();
}

uint64_t sub_10014D73C()
{
  v1 = (*(*(v0[3] - 8) + 80) + 48) & ~*(*(v0[3] - 8) + 80);
  v2 = *(*(v0[3] - 8) + 64);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v3 = *(type metadata accessor for PlaylistModule() - 8);
  v4 = (v0 + ((v1 + v2 + *(v3 + 80)) & ~*(v3 + 80)));

  return sub_10014C4C4(v0 + v1, v4, v6, v7, v8, v9);
}

uint64_t sub_10014D84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v57);
  v56 = (&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(a1 + 24);
  v44 = *(a1 + 16);
  v45 = v4;
  type metadata accessor for PlaylistArtworkView();
  sub_10000460C(&qword_100229AA8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v5 = type metadata accessor for VStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  v9 = type metadata accessor for ModifiedContent();
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  sub_10000460C(&qword_100221D58);
  v12 = type metadata accessor for ModifiedContent();
  v51 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  sub_10000460C(&qword_100221C80);
  v48 = v12;
  v15 = type metadata accessor for ModifiedContent();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v50 = &v43 - v16;
  v54 = v17;
  v18 = type metadata accessor for ModifiedContent();
  v55 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v49 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v52 = &v43 - v21;
  static HorizontalAlignment.center.getter();
  v59 = v44;
  v60 = v45;
  v61 = v46;
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v23 = v14;
  View.frame(width:height:alignment:)();
  (*(v6 + 8))(v8, v5);
  v24 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v70 = Color.init(uiColor:)();
  static Edge.Set.all.getter();
  v68 = WitnessTable;
  v69 = &protocol witness table for _FrameLayout;
  v25 = swift_getWitnessTable();
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v47 + 8))(v11, v9);
  if (qword_100220BC0 != -1)
  {
    swift_once();
  }

  v26 = qword_1002390D8;
  v27 = *(v57 + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  v30 = v56;
  (*(*(v29 - 8) + 104))(v56 + v27, v28, v29);
  *v30 = v26;
  v30[1] = v26;
  v31 = sub_10000BFFC(&qword_100221D50, &qword_100221D58);
  v66 = v25;
  v67 = v31;
  v32 = v48;
  v33 = swift_getWitnessTable();
  sub_10014FE30(&qword_100228C80, &type metadata accessor for RoundedRectangle);
  v34 = v50;
  View.clipShape<A>(_:style:)();
  sub_100039768(v30);
  (*(v51 + 8))(v23, v32);
  static Edge.Set.all.getter();
  v35 = sub_10000BFFC(&qword_100221D60, &qword_100221C80);
  v64 = v33;
  v65 = v35;
  v36 = v54;
  v37 = swift_getWitnessTable();
  v38 = v49;
  View.padding(_:_:)();
  (*(v53 + 8))(v34, v36);
  v62 = v37;
  v63 = &protocol witness table for _PaddingLayout;
  v39 = swift_getWitnessTable();
  v40 = v52;
  sub_1000EE87C(v38, v18, v39);
  v41 = *(v55 + 8);
  v41(v38, v18);
  sub_1000EE87C(v40, v18, v39);
  return (v41)(v40, v18);
}

uint64_t sub_10014E07C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v33 = sub_1000024C4(&qword_100229AA8);
  v3 = __chkstk_darwin(v33);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for PlaylistArtworkView();
  v30 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v31 = &v30 - v15;
  v16 = type metadata accessor for PlaylistItem();
  (*(v8 + 16))(v10, a1 + *(v16 + 40), v7);
  sub_10014E474(v10, v14, 240.0);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v14, v11, WitnessTable);
  v17 = v30;
  v18 = *(v30 + 8);
  v18(v14, v11);
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v19 = sub_1000024C4(&qword_100229AB0);
  sub_10014E524(a1, &v6[*(v19 + 44)]);
  LOBYTE(v10) = static Edge.Set.horizontal.getter();
  v20 = &v6[*(sub_1000024C4(&qword_100229AB8) + 36)];
  *v20 = v10;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  LOBYTE(v10) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v21 = v33;
  v22 = &v6[*(v33 + 36)];
  *v22 = v10;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = v31;
  (*(v17 + 16))(v14, v31, v11);
  v39[0] = v14;
  v28 = v34;
  sub_10000BEB8(v6, v34, &qword_100229AA8);
  v39[1] = v28;
  v38[0] = v11;
  v38[1] = v21;
  v36 = WitnessTable;
  v37 = sub_10014FE78();
  sub_1000E76FC(v39, 2uLL, v38);
  sub_1000050C4(v6, &qword_100229AA8);
  v18(v27, v11);
  sub_1000050C4(v28, &qword_100229AA8);
  return (v18)(v14, v11);
}

uint64_t sub_10014E474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  v7 = type metadata accessor for PlaylistArtworkView();
  *(a2 + *(v7 + 36)) = a3;
  v8 = a2 + *(v7 + 40);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_10014E524@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_1000024C4(&qword_100229AE0);
  v4 = __chkstk_darwin(v3 - 8);
  v78 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = &v64 - v6;
  v7 = sub_1000024C4(&qword_100229AE8);
  __chkstk_darwin(v7);
  v9 = &v64 - v8;
  v10 = sub_1000024C4(&qword_100229AF0);
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = __chkstk_darwin(v10);
  v76 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v72 = a1;
  v15 = *a1;
  v16 = a1[1];
  v80 = v15;
  v81 = v16;
  v17 = sub_10001877C();

  v67 = v17;
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v23 = Text.font(_:)();
  v25 = v24;
  LODWORD(v71) = v26;
  v75 = v27;

  sub_100017398(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v29 = &v9[*(v7 + 36)];
  v30 = sub_1000024C4(&qword_100229AF8);
  v31 = *(v30 + 28);
  v32 = enum case for Text.TruncationMode.tail(_:);
  v33 = type metadata accessor for Text.TruncationMode();
  v34 = *(v33 - 8);
  v69 = *(v34 + 104);
  v70 = v33;
  v68 = v34 + 104;
  v69(v29 + v31, v32);
  *v29 = swift_getKeyPath();
  *v9 = v23;
  *(v9 + 1) = v25;
  v9[16] = v71 & 1;
  *(v9 + 3) = v75;
  *(v9 + 4) = KeyPath;
  v35 = 1;
  *(v9 + 5) = 1;
  v9[48] = 0;
  v36 = sub_1001500B4();
  v75 = v14;
  v71 = v7;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v9, &qword_100229AE8);
  v37 = v72[3];
  if (v37)
  {
    v64 = v36;
    v65 = v32;
    v66 = v30;
    v80 = v72[2];
    v81 = v37;

    v38 = Text.init<A>(_:)();
    v40 = v39;
    v42 = v41;
    static Font.subheadline.getter();
    v43 = Text.font(_:)();
    v45 = v44;
    v47 = v46;

    sub_100017398(v38, v40, v42 & 1);

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    v80 = qword_1002390B8;

    v48 = Text.foregroundStyle<A>(_:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_100017398(v43, v45, v47 & 1);

    v55 = swift_getKeyPath();
    v56 = &v9[*(v71 + 36)];
    (v69)(v56 + *(v66 + 28), v65, v70);
    *v56 = swift_getKeyPath();
    *v9 = v48;
    *(v9 + 1) = v50;
    v9[16] = v52 & 1;
    *(v9 + 3) = v54;
    *(v9 + 4) = v55;
    *(v9 + 5) = 1;
    v9[48] = 0;
    v57 = v76;
    View.accessibilityIdentifier(_:)();
    sub_1000050C4(v9, &qword_100229AE8);
    v58 = v77;
    sub_10015016C(v57, v77);
    v35 = 0;
  }

  else
  {
    v57 = v76;
    v58 = v77;
  }

  (*(v73 + 56))(v58, v35, 1, v74);
  v59 = v75;
  sub_10000BEB8(v75, v57, &qword_100229AF0);
  v60 = v78;
  sub_10000BEB8(v58, v78, &qword_100229AE0);
  v61 = v79;
  sub_10000BEB8(v57, v79, &qword_100229AF0);
  v62 = sub_1000024C4(qword_100229B10);
  sub_10000BEB8(v60, v61 + *(v62 + 48), &qword_100229AE0);
  sub_1000050C4(v58, &qword_100229AE0);
  sub_1000050C4(v59, &qword_100229AF0);
  sub_1000050C4(v60, &qword_100229AE0);
  return sub_1000050C4(v57, &qword_100229AF0);
}

uint64_t sub_10014EB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = type metadata accessor for EnvironmentValues();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  (*(v10 + 16))(&v28 - v11, v3, v9);
  v13 = *(v8 - 8);
  v14 = 1;
  result = (*(v13 + 48))(v12, 1, v8);
  if (result == 1)
  {
    v8 = v9;
    v16 = v29;
LABEL_16:
    (*(v10 + 8))(v12, v8);
    v27 = type metadata accessor for URL();
    return (*(*(v27 - 8) + 56))(v16, v14, 1, v27);
  }

  v17 = *(v3 + *(a1 + 36));
  v18 = v3 + *(a1 + 40);
  v19 = *v18;
  v20 = *(v18 + 8);
  if (v20 == 1)
  {
    v21 = *v18;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v19, 0);
    result = (*(v28 + 8))(v7, v5);
    v21 = v30;
  }

  v23 = v17 * v21;
  if (COERCE__INT64(fabs(v17 * v21)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v20)
  {
    v24 = *&v19;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v19, 0);
    result = (*(v28 + 8))(v7, v5);
    v24 = v30;
  }

  v16 = v29;
  v26 = v17 * v24;
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v26 < 9.22337204e18)
  {
    (*(*(a1 + 24) + 40))(v23, v26, 1, v8);
    v14 = 0;
    v10 = v13;
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10014EFD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  (*(v6 + 16))(&v13 - v7, v2, v5);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v10 = (*(*(a1 + 24) + 24))(v4);
    (*(v9 + 8))(v8, v4);
    if (v10)
    {
      return Color.init(cgColor:)();
    }
  }

  v12 = [objc_opt_self() systemGray5Color];
  return Color.init(uiColor:)();
}

uint64_t sub_10014F184(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1000024C4(&qword_100229B98);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_10014EB88(a1, v7);
  (*(v3 + 16))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(a1 + 16);
  (*(v3 + 32))(v12 + v11, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1000024C4(&qword_100223280);
  sub_100057330();
  AsyncImage.init(url:scale:transaction:content:)();
  v13 = &v10[*(sub_1000024C4(&qword_100229BA0) + 36)];
  *v13 = 0x3FF0000000000000;
  *(v13 + 4) = 0;
  v10[*(v8 + 36)] = 1;
  sub_100150B40();
  View.accessibilityIdentifier(_:)();
  return sub_1000050C4(v10, &qword_100229B98);
}

uint64_t sub_10014F418@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AsyncImagePhase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  if ((*(v8 + 88))(v10, v7) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v8 + 96))(v10, v7);
    (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
    v11 = Image.resizable(capInsets:resizingMode:)();
    (*(v4 + 8))(v6, v3);
    v19 = v11;
    v20 = 0;
    swift_retain_n();
    sub_1000024C4(&qword_100223298);
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();

    v13 = v21;
    v14 = v22;
  }

  else
  {
    v15 = type metadata accessor for PlaylistArtworkView();
    v19 = sub_10014EFD4(v15);
    v20 = 1;
    sub_1000024C4(&qword_100223298);
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();
    v13 = v21;
    v14 = v22;
    result = (*(v8 + 8))(v10, v7);
  }

  v16 = v18;
  *v18 = v13;
  *(v16 + 8) = v14;
  return result;
}

void sub_10014F734()
{
  sub_1001506A8(319, qword_100226B30, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10014F7E8()
{
  sub_10000460C(&qword_100223418);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for PlainButtonStyle();
  swift_getWitnessTable();
  sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  type metadata accessor for Button();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

uint64_t sub_10014FE30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10014FE78()
{
  result = qword_100229AC0;
  if (!qword_100229AC0)
  {
    sub_10000460C(&qword_100229AA8);
    sub_10014FF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229AC0);
  }

  return result;
}

unint64_t sub_10014FF04()
{
  result = qword_100229AC8;
  if (!qword_100229AC8)
  {
    sub_10000460C(&qword_100229AB8);
    sub_10000BFFC(&qword_100229AD0, &qword_100229AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229AC8);
  }

  return result;
}

uint64_t sub_10014FFE8(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

unint64_t sub_1001500B4()
{
  result = qword_100229B00;
  if (!qword_100229B00)
  {
    sub_10000460C(&qword_100229AE8);
    sub_10001B3F8();
    sub_10000BFFC(&qword_100229B08, &qword_100229AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229B00);
  }

  return result;
}

uint64_t sub_10015016C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100229AF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001501E4()
{
  type metadata accessor for Optional();
  if (v0 <= 0x3F)
  {
    sub_1001506A8(319, &qword_100221C08, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100150290(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    if (v6 < 0xFE)
    {
      v19 = *((((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 > 1)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_33;
  }

LABEL_29:
  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_100150420(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v13 = (a3 - v10 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v12] = 0;
    }

    else if (v6)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0xFE)
      {
        v21 = ((&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v21 + 8) = 0;
          *v21 = a2 - 255;
        }

        else
        {
          *(v21 + 8) = -a2;
        }
      }

      else if (v9 >= a2)
      {
        v22 = *(v7 + 56);

        v22();
      }

      else
      {
        if (v11 <= 3)
        {
          v18 = ~(-1 << (8 * v11));
        }

        else
        {
          v18 = -1;
        }

        if (v11)
        {
          v19 = v18 & (~v9 + a2);
          if (v11 <= 3)
          {
            v20 = v11;
          }

          else
          {
            v20 = 4;
          }

          bzero(a1, v11);
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              *a1 = v19;
              a1[2] = BYTE2(v19);
            }

            else
            {
              *a1 = v19;
            }
          }

          else if (v20 == 1)
          {
            *a1 = v19;
          }

          else
          {
            *a1 = v19;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v16 = ~v10 + a2;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 <= 3)
  {
    *a1 = v16;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v12] = v17;
      }

      else
      {
        *&a1[v12] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v12] = v17;
  }
}

void sub_1001506A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1001506F8()
{
  type metadata accessor for PlaylistArtworkView();
  sub_10000460C(&qword_100229AA8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221D58);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100221D50, &qword_100221D58);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100221D60, &qword_100221C80);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100150974()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PlaylistArtworkView();
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  sub_10001BC5C(*(v0 + v3 + *(v2 + 40)), *(v0 + v3 + *(v2 + 40) + 8));

  return swift_deallocObject();
}

uint64_t sub_100150AA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for PlaylistArtworkView();

  return sub_10014F418(a1, a2);
}

unint64_t sub_100150B40()
{
  result = qword_100229BA8;
  if (!qword_100229BA8)
  {
    sub_10000460C(&qword_100229B98);
    sub_100150BCC();
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229BA8);
  }

  return result;
}

unint64_t sub_100150BCC()
{
  result = qword_100229BB0;
  if (!qword_100229BB0)
  {
    sub_10000460C(&qword_100229BA0);
    sub_10000BFFC(&qword_100229BB8, &qword_100229BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229BB0);
  }

  return result;
}

uint64_t sub_100150CC8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100150D98(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1000024C4(&qword_100229BD8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1000024C4(&qword_100229BE0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = type metadata accessor for DesignTimeTime();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_1000024C4(&qword_1002214F8);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_100150F84(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1000024C4(&qword_100229BD8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000024C4(&qword_100229BE0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = type metadata accessor for DesignTimeTime();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = sub_1000024C4(&qword_1002214F8);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for DesignTimeMusicEvent()
{
  result = qword_100229C40;
  if (!qword_100229C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001511A8()
{
  sub_1001513C4(319, &qword_100229C50, type metadata accessor for DesignTimeEventAttribution, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1001513C4(319, &qword_100229C58, type metadata accessor for DesignTimeTicketAttribution, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001513C4(319, &qword_100229C60, type metadata accessor for DesignTimeTicket, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DesignTimeTime();
        if (v3 <= 0x3F)
        {
          sub_1001513C4(319, &qword_100221420, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100151428(319, &qword_100229C68);
            if (v5 <= 0x3F)
            {
              sub_100151428(319, &unk_100229C70);
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

void sub_1001513C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100151428(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100151474@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = __chkstk_darwin(v2 - 8);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v65 = &v60 - v5;
  v6 = type metadata accessor for UUID();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000024C4(&qword_100229BE0);
  __chkstk_darwin(v8 - 8);
  v72 = &v60 - v9;
  v10 = sub_1000024C4(&qword_1002214F8);
  v11 = __chkstk_darwin(v10 - 8);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v60 - v14;
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = sub_1000024C4(&qword_100229BD8);
  __chkstk_darwin(v18 - 8);
  v20 = (&v60 - v19);
  v21 = ResourceID.init(stringLiteral:)();
  v67 = v22;
  v68 = v21;
  URL.init(string:)();
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  result = v25(v17, 1, v23);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  *v20 = 0x746E6973646E6142;
  v20[1] = 0xEB000000006E776FLL;
  v27 = type metadata accessor for DesignTimeEventAttribution();
  v28 = v20 + *(v27 + 20);
  v71 = *(v24 + 32);
  v71(v28, v17, v23);
  v29 = *(*(v27 - 8) + 56);
  v61 = v20;
  v29(v20, 0, 1, v27);
  URL.init(string:)();
  result = v25(v15, 1, v23);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v30 = v72;
  *v72 = 0x746E6973646E6142;
  *(v30 + 1) = 0xEB000000006E776FLL;
  v31 = type metadata accessor for DesignTimeTicketAttribution();
  v71(&v30[*(v31 + 20)], v15, v23);
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  sub_1000024C4(&qword_100229E80);
  v32 = type metadata accessor for DesignTimeTicket();
  v33 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
  v34 = swift_allocObject();
  v70 = xmmword_1001B49B0;
  *(v34 + 16) = xmmword_1001B49B0;
  v35 = v69;
  URL.init(string:)();
  result = v25(v35, 1, v23);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v36 = v34 + v33;
  v37 = v62;
  UUID.init()();
  UUID.uuidString.getter();
  v60 = v34;
  (*(v63 + 8))(v37, v64);
  *v36 = ResourceID.init(_:)();
  *(v36 + 8) = v38;
  strcpy((v36 + 16), "Ticketmaster");
  *(v36 + 29) = 0;
  *(v36 + 30) = -5120;
  v71((v36 + *(v32 + 24)), v35, v23);
  static Date.now.getter();
  static Date.distantFuture.getter();
  v39 = type metadata accessor for DesignTimeMusicEvent();
  DateInterval.init(start:end:)();
  type metadata accessor for DesignTimeTime();
  static TimeZone.current.getter();
  v71 = ResourceID.init(stringLiteral:)();
  v69 = v40;
  v64 = [objc_allocWithZone(CLLocation) initWithLatitude:40.7601873 longitude:-73.9799772];
  URL.init(string:)();
  v41 = sub_100011D1C();
  v65 = v42;
  v66 = v41;
  sub_1000024C4(&qword_100229E88);
  v43 = swift_allocObject();
  *(v43 + 16) = v70;
  *(v43 + 32) = ResourceID.init(stringLiteral:)();
  *(v43 + 40) = v44;
  *(v43 + 48) = 7368528;
  *(v43 + 56) = 0xE300000000000000;
  v45 = sub_10006E96C();
  v62 = v46;
  v63 = v45;
  v48 = v47;
  v50 = v49;
  sub_1000024C4(&qword_100229E90);
  v51 = swift_allocObject();
  *(v51 + 16) = v70;
  if (qword_100220C00 != -1)
  {
    swift_once();
  }

  v52 = *algn_100239128;
  *(v51 + 32) = qword_100239120;
  *(v51 + 40) = v52;
  v53 = v67;
  *a1 = v68;
  *(a1 + 8) = v53;
  *(a1 + 16) = 7368560;
  *(a1 + 24) = 0xE300000000000000;
  *(a1 + 32) = xmmword_1001C1020;
  *(a1 + 48) = 0xD000000000000011;
  *(a1 + 56) = 0x80000001001C81D0;
  sub_10001AE00(v61, a1 + v39[7], &qword_100229BD8);
  sub_10001AE00(v72, a1 + v39[8], &qword_100229BE0);
  *(a1 + v39[9]) = v60;
  v54 = a1 + v39[11];
  v55 = v69;
  *v54 = v71;
  *(v54 + 8) = v55;
  *(v54 + 16) = 0xD000000000000015;
  *(v54 + 24) = 0x80000001001C8210;
  *(v54 + 32) = v64;
  *(v54 + 40) = 0xD000000000000018;
  *(v54 + 48) = 0x80000001001C8230;
  *(v54 + 56) = xmmword_1001C1030;
  *(v54 + 72) = xmmword_1001C1040;
  *(v54 + 88) = xmmword_1001C1050;
  *(v54 + 104) = xmmword_1001C1060;
  *(v54 + 120) = xmmword_1001C1070;
  v56 = (a1 + v39[13]);
  v57 = v65;
  *v56 = v66;
  v56[1] = v57;
  *(a1 + v39[14]) = v43;
  v58 = (a1 + v39[15]);
  v59 = v62;
  *v58 = v63;
  v58[1] = v59;
  v58[2] = v48;
  v58[3] = v50;
  *(a1 + v39[16]) = v51;
}

uint64_t sub_100151D50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_100151DA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 60));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_100151E10@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t sub_100151ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a2 + 96) = v22;
  *(a2 + 112) = v14;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v11;
  *(a2 + 80) = v4;
  v24 = *(v3 + 128);
  *(a2 + 128) = *(v3 + 128);
  *a2 = v13;
  *(a2 + 16) = v6;
  return sub_1001526AC(v17, v16);
}

uint64_t sub_100151F68(uint64_t a1)
{
  type metadata accessor for Date();
  swift_task_alloc();
  swift_task_alloc();
  type metadata accessor for DesignTimeTime();
  v3 = swift_task_alloc();
  sub_1000024C4(&qword_100229E78);
  v4 = (*(*(a1 - 8) + 80) + 32) & ~*(*(a1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001B49B0;
  v6 = v5 + v4;
  sub_100151474(v6);
  static Date.distantFuture.getter();
  static Date.distantFuture.getter();
  DateInterval.init(start:end:)();
  static TimeZone.current.getter();
  sub_100152648(v3, v6 + *(a1 + 40));

  v7 = *(v1 + 8);

  return v7(v5);
}

Swift::Int sub_100152128()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10015216C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1001521F8()
{
  result = qword_100229CD8;
  if (!qword_100229CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229CD8);
  }

  return result;
}

unint64_t sub_100152370()
{
  result = qword_100229D00;
  if (!qword_100229D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229D00);
  }

  return result;
}

uint64_t sub_1001523C4(uint64_t a1)
{
  *(a1 + 8) = sub_100152600(&qword_100229DC8, type metadata accessor for DesignTimeMusicEvent);
  result = sub_100152600(&qword_100229DD0, type metadata accessor for DesignTimeMusicEvent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015244C()
{
  result = qword_100229DD8;
  if (!qword_100229DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229DD8);
  }

  return result;
}

unint64_t sub_1001524A4()
{
  result = qword_100229DE0;
  if (!qword_100229DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229DE0);
  }

  return result;
}

unint64_t sub_1001524FC()
{
  result = qword_100229DE8;
  if (!qword_100229DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229DE8);
  }

  return result;
}

unint64_t sub_100152554()
{
  result = qword_100229DF0;
  if (!qword_100229DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229DF0);
  }

  return result;
}

uint64_t sub_1001525A8(uint64_t a1)
{
  result = sub_100152600(&qword_100229E70, type metadata accessor for DesignTimeMusicEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100152600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100152648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeTime();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100152708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeTime();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001527C4(uint64_t a1)
{
  *(a1 + 8) = sub_100152848(&qword_100229EE0, &type metadata accessor for Album);
  result = sub_100152848(&qword_100229EE8, &type metadata accessor for Album);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100152848(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001528A4()
{
  result = qword_100229EF0;
  if (!qword_100229EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229EF0);
  }

  return result;
}

uint64_t sub_100152928()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100152A44;
  v2 = swift_continuation_init();
  v0[17] = sub_1000024C4(&qword_100229EF8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100155344;
  v0[13] = &unk_100218ED0;
  v0[14] = v2;
  [v1 defaultValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100152A44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10015533C;
  }

  else
  {
    v2 = sub_100152B54;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100152B54()
{
  v1 = *(v0 + 144);
  v2 = [v1 campaignGroup];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_100152BF8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100152CE4;

  return v5();
}

uint64_t sub_100152CE4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_100152E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_100152E24);
}

uint64_t sub_100152E24()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100152F40;
  v2 = swift_continuation_init();
  v0[17] = sub_1000024C4(&qword_100229F00);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100155344;
  v0[13] = &unk_100218EA8;
  v0[14] = v2;
  [v1 campaignTokenWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100152F40()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_100153140;
  }

  else
  {
    v2 = sub_100153050;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100153050()
{
  v1 = *(v0 + 144);

  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 tokenForClientIdentifier:v2];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t sub_100153140()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001531D0()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001532EC;
  v2 = swift_continuation_init();
  v0[17] = sub_1000024C4(&qword_100229EF8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100155344;
  v0[13] = &unk_100218E80;
  v0[14] = v2;
  [v1 defaultValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001532EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1001534A0;
  }

  else
  {
    v2 = sub_1001533FC;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1001533FC()
{
  v1 = *(v0 + 144);
  v2 = [v1 sportsCampaignToken];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_1001534A0()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015352C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100153648;
  v2 = swift_continuation_init();
  v0[17] = sub_1000024C4(&qword_100229EF8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100155344;
  v0[13] = &unk_100218E58;
  v0[14] = v2;
  [v1 defaultValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100153648()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10015533C;
  }

  else
  {
    v2 = sub_100153758;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100153758()
{
  v1 = *(v0 + 144);
  v2 = [v1 providerToken];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_1001537FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[373] = a3;
  v3[372] = a2;
  v3[371] = a1;
  return _swift_task_switch(sub_100153824);
}

uint64_t sub_100153824()
{
  v1 = v0[373];
  v2 = v0[372];
  v3 = [objc_opt_self() sharedInstance];
  v0[374] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  v0[375] = v5;
  *(v5 + 16) = &unk_1001C12F8;
  *(v5 + 24) = v4;
  v6 = v3;
  swift_asyncLet_begin();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = v1;
  v8 = swift_allocObject();
  v0[376] = v8;
  *(v8 + 16) = &unk_1001C1318;
  *(v8 + 24) = v7;
  v9 = v6;
  swift_asyncLet_begin();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  v0[377] = v11;
  *(v11 + 16) = &unk_1001C1330;
  *(v11 + 24) = v10;
  v12 = v9;
  swift_asyncLet_begin();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  v0[378] = v14;
  *(v14 + 16) = &unk_1001C1348;
  *(v14 + 24) = v13;
  v15 = v12;
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 368, sub_100153AD0, v0 + 322);
}

uint64_t sub_100153AD0()
{
  v1[379] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 242, v1 + 366, sub_100154000, v1 + 322);
  }

  else
  {
    v1[380] = v1[368];
    v1[381] = v1[369];

    return _swift_asyncLet_get_throwing(v1 + 82, v1 + 364, sub_100153B8C, v1 + 322);
  }
}

uint64_t sub_100153B8C()
{
  v1[382] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_100154300);
  }

  else
  {
    v1[383] = v1[364];
    v1[384] = v1[365];

    return _swift_asyncLet_get_throwing(v1 + 162, v1 + 362, sub_100153C44, v1 + 322);
  }
}

uint64_t sub_100153C44()
{
  v1[385] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_10015466C);
  }

  else
  {
    v1[386] = v1[362];
    v1[387] = v1[363];

    return _swift_asyncLet_get_throwing(v1 + 242, v1 + 366, sub_100153CFC, v1 + 322);
  }
}

uint64_t sub_100153CFC()
{
  *(v1 + 3104) = v0;
  if (v0)
  {
    v2 = sub_1001549E4;
  }

  else
  {
    *(v1 + 2776) = 0u;
    *(v1 + 2792) = 0u;
    *(v1 + 2744) = 0u;
    *(v1 + 2760) = 0u;
    sub_100006C2C(v1 + 2744);
    v2 = sub_100153D88;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100153D88()
{
  v1 = *(v0 + 3096);
  v2 = *(v0 + 3088);
  v3 = *(v0 + 3072);
  v4 = *(v0 + 3064);
  v5 = *(v0 + 3048);
  v6 = *(v0 + 3040);
  v7 = *(v0 + 2928);
  v8 = *(v0 + 2936);
  *(v0 + 2808) = v6;
  *(v0 + 2816) = v5;
  *(v0 + 2824) = v4;
  *(v0 + 2832) = v3;
  *(v0 + 2840) = v2;
  *(v0 + 2848) = v1;
  *(v0 + 2856) = v7;
  *(v0 + 2864) = v8;
  *(v0 + 2616) = v6;
  *(v0 + 2624) = v5;
  *(v0 + 2632) = v4;
  *(v0 + 2640) = v3;
  *(v0 + 2648) = v2;
  *(v0 + 2656) = v1;
  *(v0 + 2664) = v7;
  *(v0 + 2672) = v8;

  sub_10002089C(v0 + 2808, v0 + 2680);
  sub_100006C2C(v0 + 2616);
  v9 = *(v0 + 2824);
  *(v0 + 3112) = *(v0 + 2808);
  *(v0 + 3128) = v9;
  v10 = *(v0 + 2856);
  *(v0 + 3144) = *(v0 + 2840);
  *(v0 + 3160) = v10;

  return _swift_asyncLet_finish(v0 + 1936, v0 + 2928, sub_100153E78, v0 + 2576);
}

uint64_t sub_100153F48()
{

  v1 = *(v0 + 2968);
  v2 = *(v0 + 3128);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3160);
  *v1 = *(v0 + 3112);
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001540D0()
{
  v13 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100139F7C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100012A7C(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100154300()
{

  return _swift_asyncLet_finish(v0 + 1936, v0 + 2928, sub_10015436C, v0 + 2576);
}

uint64_t sub_10015443C()
{
  v13 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100139F7C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100012A7C(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10015466C()
{

  return _swift_asyncLet_finish(v0 + 1936, v0 + 2928, sub_1001546E4, v0 + 2576);
}

uint64_t sub_1001547B4()
{
  v13 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100139F7C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100012A7C(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001549E4()
{

  return _swift_asyncLet_finish(v0 + 1936, v0 + 2928, sub_100154A68, v0 + 2576);
}

uint64_t sub_100154B38()
{
  v13 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100139F7C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100012A7C(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100154D68()
{

  return swift_deallocObject();
}

uint64_t sub_100154DA0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100155340;

  return sub_100152908(v2);
}

uint64_t sub_100154E34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012AC8;

  return sub_100152BF8(a1, v4);
}

uint64_t sub_100154EEC()
{

  return swift_deallocObject();
}

uint64_t sub_100154F2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100154FD4;

  return sub_100152E00(v2, v3, v4);
}

uint64_t sub_100154FD4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1001550E0()
{

  return swift_deallocObject();
}

uint64_t sub_100155118(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD00;

  return sub_100152BF8(a1, v4);
}

uint64_t sub_1001551D0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100155340;

  return sub_1001531B0(v2);
}

uint64_t sub_100155264()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100155340;

  return sub_10015350C(v2);
}

uint64_t sub_10015534C(uint64_t a1)
{
  *(a1 + 8) = sub_1001553B4(&qword_100222E78);
  result = sub_1001553B4(&qword_100229F08);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001553B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Music.Genre();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001553F8()
{
  v1[6] = v0;
  sub_1000024C4(&qword_1002293B8);
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for MusicSubscription();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[10] = v3;
  v1[11] = type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v1[13] = v4;
  *v4 = v1;
  v4[1] = sub_100155544;

  return static MusicSubscription.current.getter(v3);
}

uint64_t sub_100155544()
{
  *(*v1 + 112) = v0;

  dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v2 = sub_1001558C8;
  }

  else
  {
    v2 = sub_10015569C;
  }

  return _swift_task_switch(v2);
}

void sub_10015569C()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = *(v2 + 16);
  *(swift_task_alloc() + 16) = v1;
  if (os_unfair_lock_trylock((v3 + 24)))
  {
    v4 = v0[14];
    sub_100157200((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
    if (v4)
    {
      return;
    }
  }

  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];

  os_unfair_lock_lock((v3 + 24));
  v8 = *(v3 + 16);
  swift_getKeyPath();
  v0[5] = v8;
  sub_1001570A8(&qword_1002293C0, type metadata accessor for SubscriptionUpdater);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_100156CB4(v8 + v9, v7);
  os_unfair_lock_unlock((v3 + 24));
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_1000050C4(v0[7], &qword_1002293B8);
LABEL_6:
    v15 = v0[9];
    sub_100155B90();
    v14 = *(v15 + 8);
    goto LABEL_7;
  }

  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[7];
  v13 = MusicSubscription.canPlayCatalogContent.getter();
  v14 = *(v11 + 8);
  v14(v12, v10);
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v14(v0[10], v0[8]);

  v16 = v0[1];

  v16();
}

uint64_t sub_1001558C8()
{

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching Apple Music subscription status with error: %@", v4, 0xCu);
    sub_1000050C4(v5, &qword_100221718);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100155A88()
{
  type metadata accessor for AppleMusicSubscriptionStatusProvider(0);
  v0 = swift_allocObject();
  result = sub_10015673C();
  qword_100239150 = v0;
  return result;
}

uint64_t sub_100155AC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1001570A8(&qword_1002293C0, type metadata accessor for SubscriptionUpdater);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  return sub_100156CB4(v5 + v3, a1);
}

uint64_t sub_100155B90()
{
  v1 = v0;
  v2 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000BE10(v5, qword_100239158);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Started observing subscription updates", v8, 2u);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = *(v1 + 16);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;

  sub_1001904E0(0, 0, v4, &unk_1001C1488, v11);
}

uint64_t sub_100155D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for MusicSubscription();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_1000024C4(&qword_1002293B8);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for MusicSubscription.Updates();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for MusicSubscription.Updates.Iterator();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100155F0C);
}

uint64_t sub_100155F0C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  static MusicSubscription.subscriptionUpdates.getter();
  MusicSubscription.Updates.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1001570A8(&qword_10022A0C8, &type metadata accessor for MusicSubscription.Updates.Iterator);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_100156028;
  v6 = v0[11];
  v7 = v0[7];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v4);
}

uint64_t sub_100156028()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1001564B0;
  }

  else
  {
    v2 = sub_10015613C;
  }

  return _swift_task_switch(v2);
}

void sub_100156158()
{
  v1 = v0 + 5;
  v2 = v0[5];
  v3 = v0[7];
  v5 = v0 + 4;
  v4 = v0[4];
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    v1 = v0 + 12;
    v6 = v0 + 13;
    v5 = v0 + 11;
LABEL_11:
    (*(*v1 + 8))(*v6, *v5);

    v18 = v0[1];

    v18();
    return;
  }

  v6 = v0 + 6;
  v7 = v0[6];
  v8 = v0[3];
  (*(v2 + 32))(v7, v3, v4);
  *(swift_task_alloc() + 16) = v7;
  if (os_unfair_lock_trylock(v8 + 6))
  {
    v9 = v0[15];
    v10 = v0[3];
    sub_1001571E4((v10 + 16));
    os_unfair_lock_unlock((v10 + 24));
    if (v9)
    {
      return;
    }
  }

  if (MusicSubscription.canPlayCatalogContent.getter())
  {
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000BE10(v11, qword_100239158);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Stopped observing subscription updates for already subscribed user.", v14, 2u);
    }

    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];

    (*(v16 + 8))(v15, v17);
    goto LABEL_11;
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  v19 = sub_1001570A8(&qword_10022A0C8, &type metadata accessor for MusicSubscription.Updates.Iterator);
  v20 = swift_task_alloc();
  v0[14] = v20;
  *v20 = v0;
  v20[1] = sub_100156028;
  v21 = v0[11];
  v22 = v0[7];

  dispatch thunk of AsyncIteratorProtocol.next()(v22, v21, v19);
}

uint64_t sub_1001564B0()
{
  *(v0 + 16) = *(v0 + 120);
  sub_1000024C4(qword_1002220B8);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

void sub_10015653C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002293B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *a1;
  v8 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater_lock;
  os_unfair_lock_lock((*(*a1 + OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater_lock) + 16));
  v9 = type metadata accessor for MusicSubscription();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6, a2, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  sub_100156840(v6);
  os_unfair_lock_unlock((*(v7 + v8) + 16));
}

uint64_t sub_100156670()
{

  v1 = OBJC_IVAR____TtC16EventViewService36AppleMusicSubscriptionStatusProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10015673C()
{
  type metadata accessor for SubscriptionUpdater(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  v3 = type metadata accessor for MusicSubscription();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater_lock;
  sub_1000024C4(&qword_100229110);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v1 + v4) = v5;
  ObservationRegistrar.init()();
  sub_1000024C4(&qword_10022A0C0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v1;
  *(v0 + 16) = v6;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_100156840(uint64_t a1)
{
  v3 = sub_1000024C4(&qword_1002293B8);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_100156CB4(v1 + v6, v5);
  v7 = sub_100156D24(v5, a1);
  sub_1000050C4(v5, &qword_1002293B8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1001570A8(&qword_1002293C0, type metadata accessor for SubscriptionUpdater);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_100157014(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1000050C4(a1, &qword_1002293B8);
}

uint64_t sub_100156A24(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_100157014(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100156A90()
{
  sub_1000050C4(v0 + OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription, &qword_1002293B8);

  v1 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100156B84()
{
  sub_100156C5C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100156C5C()
{
  if (!qword_10022A020)
  {
    type metadata accessor for MusicSubscription();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10022A020);
    }
  }
}

uint64_t sub_100156CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002293B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100156D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSubscription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000024C4(&qword_1002293B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000024C4(&qword_10022A0B0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100156CB4(a1, &v21 - v13);
  sub_100156CB4(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100156CB4(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1001570A8(&qword_10022A0B8, &type metadata accessor for MusicSubscription);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000050C4(v14, &qword_1002293B8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000050C4(v14, &qword_10022A0B0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000050C4(v14, &qword_1002293B8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100157014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002293B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001570A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001570F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100157130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD00;

  return sub_100155D5C(a1, v4, v5, v6);
}

uint64_t sub_100157218()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001572E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  v16 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a7;
  *(v16 + 64) = a8;
  *(v16 + 72) = a6;
  return v16;
}

void sub_100157420(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 1;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = xmmword_1001C1490;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v14 = v6;
  v15 = v7;

  v8 = sub_1001894F4(1, 5, 1, inited);
  v12 = v8;
  sub_100006C98(&aBlock, v19);
  sub_100118768(4, v19, &v12, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001ELL;
  v10[3] = 0x80000001001C4640;
  v10[4] = v8;
  v17 = sub_100006D88;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10015B4A4;
  v16 = &unk_100219028;
  v11 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_100157684()
{

  v1 = qword_10022A0D0;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1001576FC()
{
  sub_100157684();

  return swift_deallocClassInstance();
}

uint64_t sub_10015776C()
{

  return swift_deallocObject();
}

uint64_t sub_1001577AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001578C8(void *a1)
{
  a1[1] = sub_100157CB8(&qword_10022A1D0, type metadata accessor for DesignTimeSong);
  a1[2] = sub_100157CB8(&qword_10022A1D8, type metadata accessor for DesignTimeSong);
  result = sub_100157CB8(&qword_10022A1E0, type metadata accessor for DesignTimeSong);
  a1[3] = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeSong()
{
  result = qword_10022A258;
  if (!qword_10022A258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001579C4@<X0>(uint64_t *a1@<X8>)
{
  result = MusicItemID.init(stringLiteral:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_100157A4C()
{
  Hasher.init(_seed:)();
  MusicItemID.init(stringLiteral:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100157AC0()
{
  MusicItemID.init(stringLiteral:)();
  String.hash(into:)();
}

Swift::Int sub_100157B28()
{
  Hasher.init(_seed:)();
  MusicItemID.init(stringLiteral:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100157BCC()
{
  v0 = MusicItemID.init(stringLiteral:)();
  v2 = v1;
  if (v0 == MusicItemID.init(stringLiteral:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100157CB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100157D30(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1000024C4(&qword_100221250);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000024C4(&qword_1002214F8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_1000024C4(&qword_10022A1F8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_100157ED4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1000024C4(&qword_100221250);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000024C4(&qword_1002214F8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_1000024C4(&qword_10022A1F8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

void sub_100158064()
{
  sub_100158214(319, qword_100226B30);
  if (v0 <= 0x3F)
  {
    sub_1001581C0(319, &qword_1002212D8, type metadata accessor for DesignTimeImage);
    if (v1 <= 0x3F)
    {
      sub_1001581C0(319, &qword_100221420, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        sub_1001581C0(319, &qword_10022A268, &type metadata accessor for PlayParameters);
        if (v3 <= 0x3F)
        {
          sub_100158214(319, &unk_10022A270);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001581C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100158214(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100158298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100158318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ScrollAsset()
{
  result = qword_10022A318;
  if (!qword_10022A318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001583D4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100158478@<X0>(uint64_t a1@<X8>)
{
  v28 = static HorizontalAlignment.leading.getter();

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_100017398(v2, v4, v6 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(v4) = v11 & 1;
  LOBYTE(v2) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = static Edge.Set.bottom.getter();
  result = EdgeInsets.init(_all:)();
  *(a1 + 104) = v32;
  *(a1 + 120) = v33;
  *(a1 + 136) = v34;
  *(a1 + 152) = v35;
  *(a1 + 56) = v29;
  *(a1 + 72) = v30;
  *a1 = v28;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v4;
  *(a1 + 48) = v13;
  *(a1 + 88) = v31;
  *(a1 + 168) = v2;
  *(a1 + 176) = v15;
  *(a1 + 184) = v17;
  *(a1 + 192) = v19;
  *(a1 + 200) = v21;
  *(a1 + 208) = 0;
  *(a1 + 216) = v22;
  *(a1 + 224) = v24;
  *(a1 + 232) = v25;
  *(a1 + 240) = v26;
  *(a1 + 248) = v27;
  *(a1 + 256) = 0;
  return result;
}

uint64_t sub_1001586A0()
{
  v1 = v0;
  v2 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = sub_1000024C4(&qword_10022A358);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v4, v1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_1000024C4(&qword_10022A360);
  sub_1001593A0();
  AsyncImage.init(url:scale:transaction:content:)();
  v10 = type metadata accessor for ScrollAsset();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = &v7[*(sub_1000024C4(&qword_10022A3A0) + 36)];
  v12 = v19[1];
  *v11 = v19[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v19[2];
  *&v7[*(sub_1000024C4(&qword_10022A3A8) + 36)] = 0;
  v13 = *(v1 + *(v10 + 28));
  v14 = &v7[*(v5 + 36)];
  v15 = *(type metadata accessor for RoundedRectangle() + 20);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v14 = v13;
  *(v14 + 1) = v13;
  *&v14[*(sub_1000024C4(&qword_100221C80) + 36)] = 256;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_1001595FC();
  View.containerRelativeFrame(_:alignment:)();
  return sub_1000050C4(v7, &qword_10022A358);
}

uint64_t sub_1001589C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29 = sub_1000024C4(&qword_10022A3D8);
  __chkstk_darwin(v29);
  v30 = &v26 - v3;
  v28 = sub_1000024C4(&qword_10022A3E0);
  __chkstk_darwin(v28);
  v5 = &v26 - v4;
  v32 = sub_1000024C4(&qword_10022A378);
  __chkstk_darwin(v32);
  v27 = &v26 - v6;
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_10022A388);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for AsyncImagePhase();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v19 = Image.resizable(capInsets:resizingMode:)();
    (*(v8 + 8))(v10, v7);
    v33 = v19;
    v34 = 0;
    v35 = 1;
    v36 = 257;
    sub_1000024C4(&qword_10022A398);
    sub_100159570();
    View.accessibilityIdentifier(_:)();

    sub_10000BEB8(v13, v5, &qword_10022A388);
    swift_storeEnumTagMultiPayload();
    sub_1000024C4(&qword_1002282F0);
    sub_1001594E4();
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0);
    v20 = v27;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v20, v30, &qword_10022A378);
    swift_storeEnumTagMultiPayload();
    sub_10015942C();
    _ConditionalContent<>.init(storage:)();

    sub_1000050C4(v20, &qword_10022A378);
    v21 = v13;
    v22 = &qword_10022A388;
    return sub_1000050C4(v21, v22);
  }

  v26 = v11;
  v23 = v30;
  if (v18 == enum case for AsyncImagePhase.failure(_:))
  {
    (*(v15 + 8))(v17, v14);
LABEL_6:
    if (qword_100220BA0 != -1)
    {
      swift_once();
    }

    *v5 = qword_1002390C0;
    *(v5 + 4) = 256;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    sub_1000024C4(&qword_1002282F0);
    sub_1001594E4();
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0);
    v24 = v27;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v24, v23, &qword_10022A378);
    swift_storeEnumTagMultiPayload();
    sub_10015942C();
    _ConditionalContent<>.init(storage:)();

    v21 = v24;
    v22 = &qword_10022A378;
    return sub_1000050C4(v21, v22);
  }

  if (v18 == enum case for AsyncImagePhase.empty(_:))
  {
    goto LABEL_6;
  }

  swift_storeEnumTagMultiPayload();
  sub_10015942C();
  _ConditionalContent<>.init(storage:)();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1001590A4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = static Edge.Set.all.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
  *(a1 + 65) = 0;
  *(a1 + 67) = 1;
  return result;
}

double sub_10015922C@<D0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for RoundedRectangle() + 20);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = type metadata accessor for RoundedCornerStyle();
  (*(*(v6 - 8) + 104))(&a1[v4], v5, v6);
  *a1 = v3;
  *(a1 + 1) = v3;
  v7 = static Color.black.getter();
  v8 = sub_1000024C4(&qword_1002259F8);
  *&a1[*(v8 + 52)] = v7;
  *&a1[*(v8 + 56)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = &a1[*(sub_1000024C4(&qword_10022A3E8) + 36)];
  *v9 = v11;
  *(v9 + 1) = v12;
  result = *&v13;
  *(v9 + 2) = v13;
  return result;
}

unint64_t sub_1001593A0()
{
  result = qword_10022A368;
  if (!qword_10022A368)
  {
    sub_10000460C(&qword_10022A360);
    sub_10015942C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A368);
  }

  return result;
}

unint64_t sub_10015942C()
{
  result = qword_10022A370;
  if (!qword_10022A370)
  {
    sub_10000460C(&qword_10022A378);
    sub_1001594E4();
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A370);
  }

  return result;
}

unint64_t sub_1001594E4()
{
  result = qword_10022A380;
  if (!qword_10022A380)
  {
    sub_10000460C(&qword_10022A388);
    sub_100159570();
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A380);
  }

  return result;
}

unint64_t sub_100159570()
{
  result = qword_10022A390;
  if (!qword_10022A390)
  {
    sub_10000460C(&qword_10022A398);
    sub_100069870();
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A390);
  }

  return result;
}

unint64_t sub_1001595FC()
{
  result = qword_10022A3B0;
  if (!qword_10022A3B0)
  {
    sub_10000460C(&qword_10022A358);
    sub_1001596B4();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A3B0);
  }

  return result;
}

unint64_t sub_1001596B4()
{
  result = qword_10022A3B8;
  if (!qword_10022A3B8)
  {
    sub_10000460C(&qword_10022A3A8);
    sub_10015976C();
    sub_10000BFFC(&qword_100226320, &qword_100226328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A3B8);
  }

  return result;
}

unint64_t sub_10015976C()
{
  result = qword_10022A3C0;
  if (!qword_10022A3C0)
  {
    sub_10000460C(&qword_10022A3A0);
    sub_10000BFFC(&qword_10022A3C8, &qword_10022A3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A3C0);
  }

  return result;
}

uint64_t sub_100159824()
{
  sub_10000460C(&qword_10022A358);
  sub_1001595FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001598FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100159980()
{
  result = qword_10022A410;
  if (!qword_10022A410)
  {
    sub_10000460C(&qword_10022A418);
    sub_10000BFFC(&qword_10022A420, &qword_10022A428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A410);
  }

  return result;
}

unint64_t sub_100159A3C()
{
  result = qword_10022A430;
  if (!qword_10022A430)
  {
    sub_10000460C(&qword_10022A438);
    sub_100159AC8();
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A430);
  }

  return result;
}

unint64_t sub_100159AC8()
{
  result = qword_10022A440;
  if (!qword_10022A440)
  {
    sub_10000460C(&qword_10022A448);
    sub_1001598FC(&qword_10022A450, &qword_10022A458, &unk_1001C1940, sub_100069870);
    sub_10000BFFC(&qword_100226320, &qword_100226328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A440);
  }

  return result;
}

unint64_t sub_100159BB0()
{
  result = qword_10022A460;
  if (!qword_10022A460)
  {
    sub_10000460C(&qword_10022A3E8);
    sub_10000BFFC(qword_10022A468, &qword_1002259F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A460);
  }

  return result;
}

uint64_t sub_100159C68()
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  return _ArrayProtocol.filter(_:)();
}

void sub_100159D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B49A0;
  v9 = *v3;
  v8 = v3[1];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v9;
  *(inited + 48) = v8;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 11;
  *(inited + 136) = &type metadata for AnalyticsModuleAction;
  *(inited + 144) = &off_100228BA8;
  *(inited + 112) = a1;
  *(inited + 120) = a2;
  *(inited + 128) = 1;
  if (*(a3 + 72))
  {
    v10 = *(a3 + 64);
    v11 = *(a3 + 72);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v18 = v10;
  v19 = v11;

  v12 = sub_1001894F4(1, 4, 1, inited);
  v16 = v12;
  sub_100006C98(&aBlock, v23);
  sub_100118768(3, v23, &v16, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v13 = String._bridgeToObjectiveC()();
  v14 = swift_allocObject();
  v14[2] = 0xD00000000000001ELL;
  v14[3] = 0x80000001001C4640;
  v14[4] = v12;
  v21 = sub_100026FEC;
  v22 = v14;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10015B4A4;
  v20 = &unk_1002192A8;
  v15 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

void sub_100159F74(uint64_t a1)
{
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v5 = *v1;
  v4 = v1[1];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 11;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 0;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = xmmword_1001BB880;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v14 = v6;
  v15 = v7;

  v8 = sub_1001894F4(1, 5, 1, inited);
  v12 = v8;
  sub_100006C98(&aBlock, v19);
  sub_100118768(4, v19, &v12, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001ELL;
  v10[3] = 0x80000001001C4640;
  v10[4] = v8;
  v17 = sub_100006D88;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10015B4A4;
  v16 = &unk_100219258;
  v11 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

void sub_10015A1D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for TicketViewModel();
  v9 = v8[13];
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[v8[14]] = a4;
  v11 = &a5[v8[15]];
  *v11 = LocalizedStringKey.init(stringLiteral:)();
  *(v11 + 1) = v12;
  v11[16] = v13 & 1;
  *(v11 + 3) = v14;
  v15 = &a5[v8[16]];
  *v15 = LocalizedStringKey.init(stringLiteral:)();
  *(v15 + 1) = v16;
  v15[16] = v17 & 1;
  *(v15 + 3) = v18;
  v19 = &a5[v8[17]];
  *v19 = LocalizedStringKey.init(stringLiteral:)();
  *(v19 + 1) = v20;
  v19[16] = v21 & 1;
  *(v19 + 3) = v22;
  v23 = &a5[v8[18]];
  v24 = [objc_opt_self() mainBundle];
  v28._object = 0xE000000000000000;
  v25._object = 0x80000001001C84C0;
  v25._countAndFlagsBits = 0xD00000000000001DLL;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v28);

  *v23 = v27;
}

uint64_t sub_10015A3AC()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Array();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10015A464(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_10015A604(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t sub_10015A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  (*(a6 + 32))(a4, a6);
  v22 = String.lowercased()();

  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v15 = type metadata accessor for TicketViewModel();
  (*(v12 + 16))(v14, a2 + *(v15 + 52), v11);
  v16 = *(a3 - 8);
  if ((*(v16 + 48))(v14, 1, a3) == 1)
  {
    (*(v12 + 8))(v14, v11);

    v17 = 1;
  }

  else
  {
    (*(a5 + 16))(a3, a5);
    (*(v16 + 8))(v14, a3);
    v18 = String.lowercased()();

    if (v22._countAndFlagsBits == v18._countAndFlagsBits && v22._object == v18._object)
    {

      v17 = 0;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = v20 ^ 1;
    }
  }

  return v17 & 1;
}