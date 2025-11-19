uint64_t sub_10004B6B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    a1 = String.init(localized:table:bundle:locale:comment:)();
    v8 = v9;
  }

  sub_1000077C8(&qword_1001740D8, &qword_10011DF00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001186F0;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10004C144();
  *(v10 + 32) = a1;
  *(v10 + 40) = v8;

  v11 = static String.localizedStringWithFormat(_:_:)();

  return v11;
}

uint64_t sub_10004B8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    a1 = String.init(localized:table:bundle:locale:comment:)();
    v8 = v9;
  }

  sub_1000077C8(&qword_1001740D8, &qword_10011DF00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001186F0;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10004C144();
  *(v10 + 32) = a1;
  *(v10 + 40) = v8;

  v11 = static String.localizedStringWithFormat(_:_:)();

  return v11;
}

uint64_t sub_10004BAB8@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_1000077C8(&qword_100174000, &qword_10011AB68);
  return sub_10004A77C(v1, a1 + *(v3 + 44));
}

uint64_t sub_10004BB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a5 >> 6))
  {
  }
}

unint64_t sub_10004BB74()
{
  result = qword_100174048;
  if (!qword_100174048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174048);
  }

  return result;
}

uint64_t sub_10004BBC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10004BBD8()
{
  result = qword_100174060;
  if (!qword_100174060)
  {
    sub_100007CCC(&qword_100174028, &qword_10011AB90);
    sub_10004BC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174060);
  }

  return result;
}

unint64_t sub_10004BC64()
{
  result = qword_100174068;
  if (!qword_100174068)
  {
    sub_100007CCC(&qword_100174070, &qword_10011ABB8);
    sub_10004BD1C();
    sub_1000199C8(&qword_100174098, &qword_1001740A0, &qword_10011ABD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174068);
  }

  return result;
}

unint64_t sub_10004BD1C()
{
  result = qword_100174078;
  if (!qword_100174078)
  {
    sub_100007CCC(&qword_100174080, &qword_10011ABC0);
    sub_1000199C8(&qword_100174088, &qword_100174090, &qword_10011ABC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174078);
  }

  return result;
}

unint64_t sub_10004BDD4()
{
  result = qword_1001740A8;
  if (!qword_1001740A8)
  {
    sub_100007CCC(&qword_100174050, &qword_10011ABB0);
    sub_10004BE8C(&qword_1001740B0, &qword_1001740B8, &qword_10011ABD8, sub_10004BF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001740A8);
  }

  return result;
}

uint64_t sub_10004BE8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004BF10()
{
  result = qword_1001740C0;
  if (!qword_1001740C0)
  {
    sub_100007CCC(&qword_1001740C8, &qword_10011ABE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001740C0);
  }

  return result;
}

unint64_t sub_10004BF94()
{
  result = qword_1001740D0;
  if (!qword_1001740D0)
  {
    sub_100007CCC(&qword_100174038, &qword_10011ABA0);
    sub_10004BE8C(&qword_100174058, &qword_100174030, &qword_10011AB98, sub_10004BBD8);
    sub_10004BDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001740D0);
  }

  return result;
}

uint64_t sub_10004C078(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

unint64_t sub_10004C144()
{
  result = qword_100177670;
  if (!qword_100177670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177670);
  }

  return result;
}

uint64_t sub_10004C1DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10004C224(uint64_t result, int a2, int a3)
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

void sub_10004C290(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v61 = a1;
  v57 = a4;
  v6 = sub_1000077C8(&qword_100174100, &qword_10011AD08);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v63 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for DeviceLockState();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  v64 = a2;
  static Published.subscript.getter();

  v20 = v13[13];
  LODWORD(v60) = enum case for DeviceLockState.unlocked(_:);
  v59 = v20;
  v20(v17);
  v21 = static DeviceLockState.== infix(_:_:)();
  v22 = v13[1];
  v22(v17, v12);
  v22(v19, v12);
  if (v21)
  {
    type metadata accessor for AirDropTransferSession();
    sub_10004DD0C();
    v56 = ObservedObject.init(wrappedValue:)();
    v53 = a3 & 1;
    v55 = v23;

    v54 = 2;
  }

  else
  {

    v56 = 0;
    v55 = 0;
    v53 = 0;
    v54 = 0;
  }

  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v24 = *(sub_1000077C8(&qword_100174108, &qword_10011CEB0) + 44);
  v62 = v11;
  sub_10004CAD0(v61, v64, a3 & 1, &v11[v24]);
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = a3;
  static Published.subscript.getter();

  v59(v17, v60, v12);
  v25 = static DeviceLockState.== infix(_:_:)();
  v22(v17, v12);
  v22(v19, v12);
  if ((v25 & 1) != 0 && (v26 = v58, (sub_10004D5DC() & 1) == 0))
  {
    type metadata accessor for AirDropTransferSession();
    sub_10004DD0C();
    v28 = ObservedObject.init(wrappedValue:)();
    v30 = v29;
    sub_10004DD64();
    if (qword_1001721C0 != -1)
    {
      swift_once();
    }

    v27 = UIColor.init(_:)();
    if (qword_100172140 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v52 = LOBYTE(v71[0]);
    static Alignment.trailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    v51 = v71[11];
    v50 = v71[12];
    v49 = v71[13];
    v48 = v71[14];
    v60 = v26 & 1;
    v64 = v71[15];
    v61 = v71[16];
    v59 = v28;
    v58 = v30;
  }

  else
  {

    v59 = 0;
    v58 = 0;
    v27 = 0;
    v51 = 0;
    v50 = 0;
    v49 = 0;
    v48 = 0;
    v64 = 0;
    v61 = 0;
    v52 = 0;
    v60 = 0;
  }

  v47 = v27;
  v31 = v63;
  sub_100007BA4(v62, v63, &qword_100174100, &qword_10011AD08);
  v32 = v57;
  v33 = v56;
  v34 = v55;
  *v57 = v56;
  v32[1] = v34;
  v35 = v53;
  v32[2] = v53;
  v32[3] = 0;
  v36 = v54;
  v32[4] = v54;
  *(v32 + 40) = 0;
  v37 = sub_1000077C8(&qword_100174110, &qword_10011AD60);
  sub_100007BA4(v31, v32 + *(v37 + 48), &qword_100174100, &qword_10011AD08);
  v38 = v32 + *(v37 + 64);
  *&v65 = v59;
  *(&v65 + 1) = v58;
  *&v66 = v60;
  *(&v66 + 1) = v27;
  v39 = v52;
  *&v67 = v52;
  v40 = v51;
  *(&v67 + 1) = v51;
  v41 = v50;
  *&v68 = v50;
  v42 = v49;
  v43 = v48;
  *(&v68 + 1) = v49;
  *&v69 = v48;
  *(&v69 + 1) = v64;
  v70 = v61;
  sub_10004DC44(v33, v34, v35, 0, v36);
  sub_100007BA4(&v65, v71, &qword_100174118, &qword_10011AD68);
  sub_10004DCA8(v33, v34, v35, 0, v36);
  v44 = v68;
  *(v38 + 2) = v67;
  *(v38 + 3) = v44;
  *(v38 + 4) = v69;
  *(v38 + 10) = v70;
  v45 = v66;
  *v38 = v65;
  *(v38 + 1) = v45;
  sub_1000159AC(v62, &qword_100174100, &qword_10011AD08);
  v71[0] = v59;
  v71[1] = v58;
  v71[2] = v60;
  v71[3] = v47;
  v71[4] = v39;
  v71[5] = v40;
  v71[6] = v41;
  v71[7] = v42;
  v71[8] = v43;
  v71[9] = v64;
  v71[10] = v61;
  sub_1000159AC(v71, &qword_100174118, &qword_10011AD68);
  sub_1000159AC(v63, &qword_100174100, &qword_10011AD08);
  sub_10004DCA8(v33, v34, v35, 0, v36);
}

uint64_t sub_10004CAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v53 = a1;
  v56 = type metadata accessor for Font.TextStyle();
  v52 = *(v56 - 8);
  v6 = *(v52 + 64);
  __chkstk_darwin(v56);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for AirDropDescriptionView();
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  v17 = *(*(v51 - 8) + 64);
  v18 = __chkstk_darwin(v51);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v42 - v22;
  __chkstk_darwin(v21);
  v25 = &v42 - v24;
  v54 = a3;
  if (a3)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v49 = 0;
    v50 = v59;
    v48 = v61;
    v47 = v63;
    v46 = v64;
    LOBYTE(v65[0]) = 1;
    v58 = v60;
    v57 = v62;
    v43 = 1;
    v44 = v60;
    v45 = v62;
    LOBYTE(v67) = 0;
  }

  else
  {
    v50 = 0;
    v48 = 0;
    v47 = 0;
    v46 = 0;
    v45 = 0;
    v44 = 0;
    v43 = 0;
    v49 = 1;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = String.init(localized:table:bundle:locale:comment:)();
  v28 = v27;
  sub_10004D08C(v55, v65);
  *&v67 = 0x402C000000000000;
  (*(v52 + 104))(v8, enum case for Font.TextStyle.subheadline(_:), v56);
  sub_10004A578();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v29 = &v16[v13[5]];
  *v29 = v26;
  v29[1] = v28;
  v30 = &v16[v13[6]];
  v31 = v65[1];
  *v30 = v65[0];
  *(v30 + 1) = v31;
  v30[32] = v66;
  *&v16[v13[7]] = 0x3FE0000000000000;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10004DDC8(v16, v23);
  v32 = &v23[*(v51 + 36)];
  v33 = v72;
  *(v32 + 4) = v71;
  *(v32 + 5) = v33;
  *(v32 + 6) = v73;
  v34 = v68;
  *v32 = v67;
  *(v32 + 1) = v34;
  v35 = v70;
  *(v32 + 2) = v69;
  *(v32 + 3) = v35;
  sub_10004DE2C(v23, v25);
  sub_100007BA4(v25, v20, &qword_100174138, &unk_10011AE80);
  v36 = v43;
  *a4 = 0;
  *(a4 + 8) = v36;
  v37 = v44;
  *(a4 + 16) = v50;
  *(a4 + 24) = v37;
  v38 = v45;
  *(a4 + 32) = v48;
  *(a4 + 40) = v38;
  v39 = v46;
  *(a4 + 48) = v47;
  *(a4 + 56) = v39;
  *(a4 + 64) = v49;
  v40 = sub_1000077C8(&qword_100174140, &qword_100122070);
  sub_100007BA4(v20, a4 + *(v40 + 48), &qword_100174138, &unk_10011AE80);
  sub_1000159AC(v25, &qword_100174138, &unk_10011AE80);
  return sub_1000159AC(v20, &qword_100174138, &unk_10011AE80);
}

uint64_t sub_10004D08C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v43 = a2;
  v42 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v42);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for SFAirDropSend.Transfer.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v30 = a1;
    v31 = *(v12 + 32);
    v31(v18, v10, v11);
    v31(v16, v18, v11);
    if ((*(v12 + 88))(v16, v11) == enum case for SFAirDropSend.Transfer.State.transferring(_:))
    {
      (*(v12 + 96))(v16, v11);
      v32 = *(v16 + 1);

      v33 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
      v34 = v33[12];
      v35 = &v16[v33[16]];
      v23 = *v35;
      v24 = *(v35 + 1);
      v36 = v33[20];
      v37 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v37 - 8) + 8))(&v16[v36], v37);
      v38 = type metadata accessor for SFAirDrop.Progress();
      result = (*(*(v38 - 8) + 8))(&v16[v34], v38);
      if (v24)
      {
        goto LABEL_6;
      }
    }

    else
    {
      (*(v12 + 8))(v16, v11);
    }

    v23 = *(v30 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
    v24 = *(v30 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);

    v40 = 0;
    v39 = 0x80;
    goto LABEL_10;
  }

  sub_1000159AC(v10, &qword_100172FD0, &qword_10011A210);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = v42;
  if ((*(v3 + 88))(v6, v42) != enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    (*(v3 + 8))(v6, v19);
    v23 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
    v24 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);

    v40 = 0;
    v39 = 64;
    goto LABEL_10;
  }

  (*(v3 + 96))(v6, v19);
  v20 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
  v21 = v20[12];
  v22 = &v6[v20[16]];
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = v20[20];
  v26 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v26 - 8) + 8))(&v6[v25], v26);
  v27 = type metadata accessor for SFAirDrop.Progress();
  (*(*(v27 - 8) + 8))(&v6[v21], v27);
  v28 = type metadata accessor for SFAirDropReceive.ItemDestination();
  result = (*(*(v28 - 8) + 8))(v6, v28);
LABEL_6:
  v39 = 0;
  v40 = 1;
LABEL_10:
  v41 = v43;
  *v43 = v23;
  v41[1] = v24;
  v41[2] = 0;
  v41[3] = v40;
  *(v41 + 32) = v39;
  return result;
}

uint64_t sub_10004D5DC()
{
  v0 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v31 = *(v0 - 8);
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for SFAirDropSend.Transfer.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v19(v13, v15, v8);
    v20 = (*(v9 + 88))(v13, v8);
    if (v20 == enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:))
    {
      (*(v9 + 96))(v13, v8);
      v21 = *v13;

      v22 = *(sub_1000077C8(&qword_100174130, &qword_10011C540) + 64);
      v23 = type metadata accessor for SFAirDrop.DeclineAction();
    }

    else
    {
      v26 = v20;
      if (v20 != enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:))
      {
        result = 1;
        if (v26 != enum case for SFAirDropSend.Transfer.State.created(_:) && v26 != enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:))
        {
          (*(v9 + 8))(v13, v8);
          return 0;
        }

        return result;
      }

      (*(v9 + 96))(v13, v8);
      v27 = *v13;

      v22 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
      v23 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
    }

    (*(*(v23 - 8) + 8))(&v13[v22], v23);
    return 1;
  }

  sub_1000159AC(v7, &qword_100172FD0, &qword_10011A210);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v31;
  v17 = (*(v31 + 88))(v3, v0);
  if (v17 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    goto LABEL_3;
  }

  if (v17 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    (*(v16 + 96))(v3, v0);
    v24 = *(sub_1000077C8(&qword_100173088, &unk_10011C520) + 48);
    v25 = sub_1000077C8(&unk_100174F80, &unk_10011AE60);
    (*(*(v25 - 8) + 8))(&v3[v24], v25);
    v18 = type metadata accessor for SFAirDrop.ContactInfo();
    goto LABEL_8;
  }

  if (v17 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
  {
LABEL_3:
    (*(v16 + 96))(v3, v0);
    v18 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
LABEL_8:
    (*(*(v18 - 8) + 8))(v3, v18);
    return 1;
  }

  v29 = v17;
  result = 1;
  if (v29 != enum case for SFAirDropReceive.Transfer.State.created(_:) && v29 != enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:) && v29 != enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:))
  {
    (*(v16 + 8))(v3, v0);
    return 0;
  }

  return result;
}

uint64_t sub_10004DB74@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v6 = sub_1000077C8(&qword_1001740F0, &qword_10011ACF8);
  sub_10004C290(v3, v4, v5, (a1 + *(v6 + 44)));
  if (v5)
  {
    v7 = 0x402E000000000000;
  }

  else
  {
    v7 = 0x4030000000000000;
  }

  if (v5)
  {
    v8 = 0x4036000000000000;
  }

  else
  {
    v8 = 0x4030000000000000;
  }

  if (v5)
  {
    v9 = 0x4031000000000000;
  }

  else
  {
    v9 = 0x4030000000000000;
  }

  v10 = static Edge.Set.all.getter();
  result = sub_1000077C8(&qword_1001740F8, &qword_10011AD00);
  v12 = a1 + *(result + 36);
  *v12 = v10;
  *(v12 + 8) = v7;
  *(v12 + 16) = v8;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = 0;
  return result;
}

void sub_10004DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    sub_10004DC90(a4, a5);
  }
}

uint64_t sub_10004DC90(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

void sub_10004DCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    sub_10004DCF4(a4, a5);
  }
}

uint64_t sub_10004DCF4(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

unint64_t sub_10004DD0C()
{
  result = qword_100173460;
  if (!qword_100173460)
  {
    type metadata accessor for AirDropTransferSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173460);
  }

  return result;
}

unint64_t sub_10004DD64()
{
  result = qword_100174120;
  if (!qword_100174120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100174120);
  }

  return result;
}

uint64_t sub_10004DDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirDropDescriptionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004DEA0()
{
  result = qword_100174148;
  if (!qword_100174148)
  {
    sub_100007CCC(&qword_1001740F8, &qword_10011AD00);
    sub_10004DF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174148);
  }

  return result;
}

unint64_t sub_10004DF2C()
{
  result = qword_100174150;
  if (!qword_100174150)
  {
    sub_100007CCC(&qword_100174158, qword_10011AE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174150);
  }

  return result;
}

uint64_t sub_10004DFB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10004E06C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

__n128 sub_10004E0D8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_10004E1A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

void (*sub_10004E218())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v1 = (v0 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel____lazy_storage___optionsChangedCallback);
  v2 = *(v0 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel____lazy_storage___optionsChangedCallback);
  v3 = *(v0 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel____lazy_storage___optionsChangedCallback + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel____lazy_storage___optionsChangedCallback);
  }

  else
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *v1;
    v7 = v1[1];
    v4 = sub_100058DD8;
    *v1 = sub_100058DD8;
    v1[1] = v5;

    sub_10002534C(v6);
  }

  sub_1000253F8(v2);
  return v4;
}

void sub_10004E2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = a6;
    v9 = a6;
    v10 = v8;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v11)
    {
      [v11 setShareOptions:v9];
      swift_unknownObjectRelease();
    }
  }
}

void sub_10004E3E8()
{
  v1 = v0;
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v13 - v4;
  v6 = *&v0[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator];
  type metadata accessor for ShockwaveAnimationCoordinator();
  sub_100055568(&qword_1001744A0, &type metadata accessor for ShockwaveAnimationCoordinator);
  v13[1] = ObservableObject<>.objectWillChange.getter();
  type metadata accessor for NearbySharingInteractionViewModel(0);
  sub_100055568(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel);
  v7 = ObservableObject<>.objectWillChange.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = j___s7Combine25ObservableObjectPublisherC4sendyyF;
  *(v8 + 24) = v7;
  type metadata accessor for ObservableObjectPublisher();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v1;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_1000E1D28(0, 0, v5, &unk_10011B218, v12);

  sub_100050750();
}

id sub_10004E67C()
{
  if (*&v0[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contactDetailsResolvingTask])
  {
    v1 = *&v0[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contactDetailsResolvingTask];

    Task.cancel()();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for NearbySharingInteractionViewModel(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10004EB14(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  __chkstk_darwin(v4);
  v94 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v81 - v8;
  v10 = type metadata accessor for UUID();
  v91 = *(v10 - 8);
  v11 = *(v91 + 8);
  __chkstk_darwin(v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFNearbySharingInteraction();
  v97 = *(v14 - 8);
  v15 = v97[8];
  __chkstk_darwin(v14);
  v88 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v89 = &v81 - v18;
  __chkstk_darwin(v19);
  v21 = &v81 - v20;
  __chkstk_darwin(v22);
  v24 = &v81 - v23;
  __chkstk_darwin(v25);
  v27 = &v81 - v26;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v85 = v21;
  v93 = v9;
  v28 = type metadata accessor for Logger();
  v29 = sub_100007D20(v28, qword_10017F350);
  v31 = v97 + 2;
  v30 = v97[2];
  v30(v27, a1, v14);
  v92 = v30;
  v30(v24, a1, v14);
  v84 = v29;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v90 = v2;
  v87 = v31;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v86 = a1;
    v36 = v35;
    v83 = swift_slowAlloc();
    v98 = v83;
    *v36 = 136315394;
    v82 = v33;
    SFNearbySharingInteraction.id.getter();
    sub_100055568(&qword_1001770E0, &type metadata accessor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v91 + 1))(v13, v10);
    v40 = v97[1];
    v40(v27, v14);
    v41 = sub_10003E81C(v37, v39, &v98);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    v81 = v32;
    v42 = v14;
    v43 = v93;
    SFNearbySharingInteraction.state.getter();
    sub_100055568(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    v44 = v96;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v48 = v95;
    (*(v95 + 8))(v43, v44);
    v49 = v24;
    v50 = v42;
    v91 = v40;
    v40(v49, v42);
    v51 = sub_10003E81C(v45, v47, &v98);
    v2 = v90;

    *(v36 + 14) = v51;
    v52 = v81;
    _os_log_impl(&_mh_execute_header, v81, v82, "Updating nearby sharing interaction ID: %s with state: %s", v36, 0x16u);
    swift_arrayDestroy();

    a1 = v86;
  }

  else
  {

    v53 = v97[1];
    v53(v24, v14);
    v50 = v14;
    v91 = v53;
    v53(v27, v14);
    v48 = v95;
    v44 = v96;
    v43 = v93;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v54 = v94;
  SFNearbySharingInteraction.state.getter();
  v55 = static SFAirDrop.NearbySharingInteraction.State.< infix(_:_:)();
  v56 = *(v48 + 8);
  v56(v54, v44);
  v56(v43, v44);
  v57 = v50;
  if (v55)
  {
    v83 = v56;
    v58 = v85;
    v92(v85, a1, v50);
    v59 = v2;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v86 = a1;
      v63 = v62;
      v84 = swift_slowAlloc();
      v98 = v84;
      *v63 = 136315394;
      v64 = v93;
      v82 = v61;
      SFNearbySharingInteraction.state.getter();
      sub_100055568(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
      v81 = v60;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v68 = v83;
      v83(v64, v96);
      v91(v58, v57);
      v69 = sub_10003E81C(v65, v67, &v98);

      *(v63 + 4) = v69;
      *(v63 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v44 = v96;

      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v68(v64, v44);
      v73 = sub_10003E81C(v70, v72, &v98);
      v74 = v68;

      *(v63 + 14) = v73;
      v75 = v81;
      _os_log_impl(&_mh_execute_header, v81, v82, "Nearby sharing interaction new state < previousState: %s < %s", v63, 0x16u);
      swift_arrayDestroy();

      a1 = v86;
    }

    else
    {

      v91(v58, v57);
      v64 = v93;
      v74 = v83;
    }

    SFNearbySharingInteraction.state.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v95 + 16))(v94, v64, v44);
    v76 = v59;
    static Published.subscript.setter();
    v74(v64, v44);
    v2 = v90;
  }

  v77 = v89;
  v78 = v92;
  v92(v89, a1, v57);
  swift_getKeyPath();
  swift_getKeyPath();
  v78(v88, v77, v57);
  v79 = v2;
  static Published.subscript.setter();
  v91(v77, v57);
  v80 = *&v79[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator];
  dispatch thunk of ShockwaveAnimationCoordinator.update(using:)();
  sub_100050750();
}

uint64_t sub_10004F4F8()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v28 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = enum case for SFAirDrop.NearbySharingInteraction.State.ended(_:);
  v34 = *(v3 + 104);
  v34(v7, enum case for SFAirDrop.NearbySharingInteraction.State.ended(_:), v2);
  sub_100055568(&unk_100174490, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v3 + 8);
  v12(v7, v2);
  result = (v12)(v9, v2);
  if ((v11 & 1) == 0)
  {
    v33 = v12;
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100007D20(v14, qword_10017F350);
    v15 = v1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    v31 = v17;
    v18 = v17;
    v19 = v16;
    if (os_log_type_enabled(v16, v18))
    {
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v20 = 136315138;
      v32 = v15;
      type metadata accessor for UUID();
      v30 = v10;
      sub_100055568(&qword_1001770E0, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = sub_10003E81C(v21, v22, &v35);
      v15 = v32;

      v28[1] = v20;
      *(v20 + 4) = v23;
      v10 = v30;
      _os_log_impl(&_mh_execute_header, v19, v31, "Ending interaction with ID: %s", v20, 0xCu);
      sub_100007920(v29);
    }

    v24 = v33;
    v25 = v15;
    v26 = *&v15[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator];
    dispatch thunk of ShockwaveAnimationCoordinator.stopIfNecessary()();
    v34(v9, v10, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v3 + 16))(v7, v9, v2);
    v27 = v25;
    static Published.subscript.setter();
    return v24(v9, v2);
  }

  return result;
}

uint64_t sub_10004F900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a4;
  v5 = *(*(sub_1000077C8(&qword_100172EE0, &qword_10011B220) - 8) + 64) + 15;
  v4[48] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[49] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[50] = v7;
  v4[51] = v6;

  return _swift_task_switch(sub_10004F9D0, v7, v6);
}

uint64_t sub_10004F9D0()
{
  v1 = *(*(v0 + 376) + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contentResolver);
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_10004FA78;

  return sub_100091F48(v0 + 16, 2);
}

uint64_t sub_10004FA78()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 408);
  v6 = *(v2 + 400);
  if (v0)
  {
    v7 = sub_1000504E8;
  }

  else
  {
    v7 = sub_10004FBB4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10004FBB4()
{
  v26 = v0;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 376);
  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_10017F350);
  sub_100007BA4(v0 + 16, v0 + 64, &qword_1001742D8, &unk_10011AED8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 376);
    v7 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v7 = 136315394;
    sub_100007BA4(v0 + 64, v0 + 304, &qword_1001742D8, &unk_10011AED8);
    sub_1000077C8(&qword_1001742D8, &unk_10011AED8);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    sub_1000159AC(v0 + 64, &qword_1001742D8, &unk_10011AED8);
    v11 = sub_10003E81C(v8, v10, &v25);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100055568(&qword_1001770E0, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = sub_10003E81C(v12, v13, &v25);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Suggesting content to be be shared with the nearby interaction: %s for interaction ID: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000159AC(v0 + 64, &qword_1001742D8, &unk_10011AED8);
  }

  v15 = *(v0 + 376);
  sub_100007BA4(v0 + 16, v0 + 112, &qword_1001742D8, &unk_10011AED8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v0 + 112, v0 + 160, &qword_1001742D8, &unk_10011AED8);
  v16 = v15;
  static Published.subscript.setter();
  sub_1000159AC(v0 + 112, &qword_1001742D8, &unk_10011AED8);
  sub_100007BA4(v0 + 16, v0 + 256, &qword_1001742D8, &unk_10011AED8);
  if (*(v0 + 280))
  {
    v17 = *(v0 + 288);
    *(v0 + 224) = *(v0 + 272);
    *(v0 + 240) = v17;
    *(v0 + 208) = *(v0 + 256);
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    sub_100058CFC(v0 + 208, v19);
    v20 = swift_task_alloc();
    *(v0 + 432) = v20;
    *v20 = v0;
    v20[1] = sub_10004FFF0;

    return sub_1000886F8(v19, v18);
  }

  else
  {
    v22 = *(v0 + 392);
    sub_1000159AC(v0 + 16, &qword_1001742D8, &unk_10011AED8);

    sub_1000159AC(v0 + 256, &qword_1001742D8, &unk_10011AED8);
    v23 = *(v0 + 384);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_10004FFF0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v7 = *v1;
  *(*v1 + 440) = a1;

  v4 = *(v2 + 408);
  v5 = *(v2 + 400);

  return _swift_task_switch(sub_100050118, v5, v4);
}

uint64_t sub_100050118()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 376);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 352) = v1;
  v5 = v4;
  static Published.subscript.setter();
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  sub_1000078DC((v0 + 208), v6);
  v8 = (*(v7 + 64))(v6, v7);
  sub_100050554(v8);

  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v3, 1, 1, v9);
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = (*(v10 + 48))(v3, 1, v9);
  v14 = 0;
  if (v12 != 1)
  {
    v15 = *(v0 + 384);
    URL._bridgeToObjectiveC()(v13);
    v14 = v16;
    (*(v10 + 8))(v15, v9);
  }

  v17 = *(v0 + 376);
  v18 = [objc_allocWithZone(SFCollaborationItemsProvider) initWithActivityItems:v11.super.isa delegate:v17 managedFileURL:v14 isURLProviderSupported:0];

  v19 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationsItemProvider;
  v20 = *(v17 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationsItemProvider);
  *(v17 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationsItemProvider) = v18;

  v21 = [objc_allocWithZone(type metadata accessor for PlaceholderSFCollaborationService()) init];
  v22 = *(v17 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationService);
  *(v17 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationService) = v21;

  v23 = *(v17 + v19);
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = [v23 collaborationItems];
  if (!v24)
  {
    goto LABEL_14;
  }

  sub_1000077C8(&qword_1001744A8, &qword_10011B2B8);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:

LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

LABEL_7:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v24 = *(v25 + 32);
    swift_unknownObjectRetain();
  }

LABEL_14:
  v27 = *(v0 + 376);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 360) = v24;
  v28 = v27;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 368))
  {
    [*(v0 + 368) registerChangeObserver:*(v0 + 376)];
    swift_unknownObjectRelease();
  }

  sub_1000159AC(v0 + 16, &qword_1001742D8, &unk_10011AED8);
  sub_100056D60(v0 + 208);
  v29 = *(v0 + 384);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000504E8()
{
  v2 = v0[48];
  v1 = v0[49];

  v3 = v0[1];
  v4 = v0[53];

  return v3();
}

char *sub_100050554(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10000E4D4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1000165C4(0, &unk_1001744B0, NSItemProvider_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10000E4D4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100058DC8(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1000165C4(0, &unk_1001744B0, NSItemProvider_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10000E4D4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100058DC8(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_100050750()
{
  v1 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v111 = &v100 - v3;
  v104 = sub_1000077C8(&unk_100174470, &unk_10011B1E0);
  v103 = *(v104 - 8);
  v4 = *(v103 + 64);
  __chkstk_darwin(v104);
  v105 = (&v100 - v5);
  v109 = sub_1000077C8(&qword_100175190, &qword_10011CCF0);
  v108 = *(v109 - 8);
  v6 = *(v108 + 64);
  __chkstk_darwin(v109);
  v107 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v7;
  __chkstk_darwin(v8);
  v110 = &v100 - v9;
  v10 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v117 = *(v10 - 8);
  v118 = v10;
  v11 = *(v117 + 64);
  __chkstk_darwin(v10);
  v116 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SFNearbySharingInteraction();
  v114 = *(v13 - 8);
  v115 = v13;
  v14 = *(v114 + 64);
  __chkstk_darwin(v13);
  v113 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v16 = *(v119 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v119);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v100 - v26;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_100007D20(v28, qword_10017F350);
  v30 = v0;
  v120 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v102 = v16;
    v34 = v33;
    v35 = swift_slowAlloc();
    v112 = v19;
    v101 = v35;
    v122 = v35;
    *v34 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_100055568(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v21 + 8))(v27, v20);
    v39 = sub_10003E81C(v36, v38, &v122);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "resolveContactDetailsIfNecessary: state: %s", v34, 0xCu);
    sub_100007920(v101);
    v19 = v112;

    v16 = v102;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v21 + 88))(v24, v20) != enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:))
  {
    (*(v21 + 8))(v24, v20);
    goto LABEL_9;
  }

  v40 = v30;
  (*(v21 + 96))(v24, v20);
  v41 = v119;
  (*(v16 + 32))(v19, v24, v119);
  v42 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contactDetailsResolvingTask;
  if (*&v30[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contactDetailsResolvingTask])
  {
    (*(v16 + 8))(v19, v41);
LABEL_9:
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Can not resolve remote person details without a connectionContext or a non-nil contactDetailsResolvingTask", v45, 2u);
    }

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v113;
  static Published.subscript.getter();

  v47 = v116;
  SFNearbySharingInteraction.interactionType.getter();
  (*(v114 + 8))(v46, v115);
  v49 = v117;
  v48 = v118;
  v50 = (*(v117 + 88))(v47, v118);
  if (v50 != enum case for SFNearbySharingInteraction.InteractionType.connect(_:))
  {
    if (v50 != enum case for SFNearbySharingInteraction.InteractionType.handoff(_:))
    {
      (*(v16 + 8))(v19, v41);
      (*(v49 + 8))(v47, v48);
      return;
    }

    v73 = SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceName.getter();
    if (v74)
    {
      v75 = v73;
      v76 = v74;
      v77 = v40;
      v78 = SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceModel.getter();
      if (v79)
      {
        v80 = v78;
        v81 = v79;
        swift_getKeyPath();
        swift_getKeyPath();
        v122 = v75;
        v123 = v76;
        v124 = v80;
        v125 = v81;
        v126 = &_swiftEmptySetSingleton;
        v127 = 0x8000000000000000;
        v82 = v77;
        static Published.subscript.setter();
        (*(v16 + 8))(v19, v41);
        return;
      }
    }

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "Can not resolve remote person details without a device name and model", v97, 2u);
    }

    goto LABEL_32;
  }

  v51 = SFAirDrop.NearbySharingInteraction.ConnectionContext.contactIdentifier.getter();
  if (v52)
  {
    v53 = v51;
    v54 = v52;
    v55 = *&v40[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contentResolver];
    v112 = v19;
    v56 = *(v55 + 32);
    v57 = v105;
    *v105 = 1;
    (*(v103 + 104))(v57, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v104);
    v58 = sub_100007878(v56 + 16, &v122);
    v59 = *(v56 + 56);
    __chkstk_darwin(v58);
    *(&v100 - 4) = &v122;
    *(&v100 - 3) = v53;
    *(&v100 - 2) = v54;
    *(&v100 - 1) = v60;

    v61 = v110;
    AsyncStream.init(_:bufferingPolicy:_:)();

    sub_100007920(&v122);
    v62 = type metadata accessor for TaskPriority();
    (*(*(v62 - 8) + 56))(v111, 1, 1, v62);
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v120 = v40;
    v64 = v108;
    v65 = v107;
    v66 = v109;
    (*(v108 + 16))(v107, v61, v109);
    type metadata accessor for MainActor();

    v67 = static MainActor.shared.getter();
    v68 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v69 = (v106 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    *(v70 + 16) = v67;
    *(v70 + 24) = &protocol witness table for MainActor;
    (*(v64 + 32))(v70 + v68, v65, v66);
    *(v70 + v69) = v63;

    v71 = sub_1000F9860(0, 0, v111, &unk_10011B1F8, v70);
    (*(v64 + 8))(v110, v66);
    (*(v16 + 8))(v112, v119);
    v72 = *&v120[v42];
    *&v120[v42] = v71;

    return;
  }

  v83 = SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceName.getter();
  if (!v84)
  {
LABEL_30:
    v95 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v95, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v95, v98, "Can not resolve remote person details without a provided contact identifier or device model and identifier, is this a boop to meet?", v99, 2u);
    }

LABEL_32:

    (*(v16 + 8))(v19, v41);
    return;
  }

  v85 = v83;
  v86 = v84;
  v87 = SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceModel.getter();
  if (!v88)
  {

    goto LABEL_30;
  }

  v89 = v87;
  v90 = v88;
  v91 = &_swiftEmptySetSingleton;
  v121 = &_swiftEmptySetSingleton;
  v92 = SFAirDrop.NearbySharingInteraction.ConnectionContext.accountID.getter();
  if (v93)
  {
    sub_10008D164(&v122, v92, v93, 0);

    v91 = v121;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v85;
  v123 = v86;
  v124 = v89;
  v125 = v90;
  v126 = v91;
  v127 = 0x4000000000000000;
  v94 = v40;
  static Published.subscript.setter();
  (*(v16 + 8))(v19, v119);
}

uint64_t sub_1000514BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  v6 = sub_1000077C8(&qword_100174480, &qword_10011B200);
  v5[46] = v6;
  v7 = *(v6 - 8);
  v5[47] = v7;
  v8 = *(v7 + 64) + 15;
  v5[48] = swift_task_alloc();
  v5[49] = type metadata accessor for MainActor();
  v5[50] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[51] = v10;
  v5[52] = v9;

  return _swift_task_switch(sub_1000515C0, v10, v9);
}

uint64_t sub_1000515C0()
{
  v1 = v0[48];
  v2 = v0[44];
  v3 = v0[45];
  sub_1000077C8(&qword_100175190, &qword_10011CCF0);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v4 = v0[49];
  v5 = static MainActor.shared.getter();
  v0[53] = v5;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[54] = v7;
  *v7 = v0;
  v7[1] = sub_1000516BC;
  v8 = v0[48];
  v9 = v0[46];

  return AsyncStream.Iterator.next(isolation:)(v0 + 15, v5, &protocol witness table for MainActor, v9);
}

uint64_t sub_1000516BC()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 424);
  v7 = *v0;

  v4 = *(v1 + 416);
  v5 = *(v1 + 408);

  return _swift_task_switch(sub_100051800, v5, v4);
}

uint64_t sub_100051800()
{
  v1 = *(v0 + 136);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 32) = v1;
  v2 = *(v0 + 168);
  *(v0 + 48) = *(v0 + 152);
  *(v0 + 64) = v2;
  v3 = *(v0 + 200);
  *(v0 + 80) = *(v0 + 184);
  *(v0 + 96) = v3;
  v4 = *(v0 + 216);
  *(v0 + 112) = v4;
  v5 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v23 = *(v0 + 16);
    v20 = *(v0 + 32);
    v21 = *(v0 + 48);
    v22 = *(v0 + 64);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = *(v0 + 360);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 224) = v23;
      *(v0 + 240) = v20;
      *(v0 + 256) = v21;
      *(v0 + 272) = v22;
      *(v0 + 288) = v6;
      *(v0 + 296) = v7;
      *(v0 + 304) = v8;
      *(v0 + 312) = v9;
      *(v0 + 320) = v4;
      static Published.subscript.setter();
    }

    else
    {
      sub_1000159AC(v0 + 16, &qword_100174488, &qword_10011B208);
    }

    v14 = *(v0 + 392);
    v15 = static MainActor.shared.getter();
    *(v0 + 424) = v15;
    v16 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v17 = swift_task_alloc();
    *(v0 + 432) = v17;
    *v17 = v0;
    v17[1] = sub_1000516BC;
    v18 = *(v0 + 384);
    v19 = *(v0 + 368);

    return AsyncStream.Iterator.next(isolation:)(v0 + 120, v15, &protocol witness table for MainActor, v19);
  }

  else
  {
    v11 = *(v0 + 400);
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));

    v12 = *(v0 + 8);

    return v12();
  }
}

void sub_100051C24()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v20 = *(v0 - 8) + 64;
    sub_100052028(319, &qword_1001742C0, &type metadata accessor for SFNearbySharingInteraction, &type metadata accessor for Published);
    if (v3 <= 0x3F)
    {
      v21 = *(v2 - 8) + 64;
      sub_100052028(319, &qword_1001742C8, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &type metadata accessor for Published);
      if (v5 <= 0x3F)
      {
        v22 = *(v4 - 8) + 64;
        sub_100031B98(319, &qword_1001742D0, &qword_1001742D8, &unk_10011AED8);
        if (v7 <= 0x3F)
        {
          v23 = *(v6 - 8) + 64;
          sub_100031B98(319, &qword_1001742E0, &qword_1001742E8, &qword_10011AEE8);
          if (v9 <= 0x3F)
          {
            v24 = *(v8 - 8) + 64;
            sub_100031B98(319, &qword_1001742F0, &qword_1001742F8, &unk_10011AEF0);
            if (v11 <= 0x3F)
            {
              v25 = *(v10 - 8) + 64;
              sub_100031B98(319, &unk_100174300, &qword_100173D68, &qword_10011A550);
              if (v13 <= 0x3F)
              {
                v26 = *(v12 - 8) + 64;
                sub_100031B98(319, &unk_100174310, &unk_1001763B0, &qword_10011AF00);
                if (v15 <= 0x3F)
                {
                  v27 = *(v14 - 8) + 64;
                  sub_100031B98(319, &qword_100174320, &qword_100174328, &qword_10011AF08);
                  if (v17 <= 0x3F)
                  {
                    v28 = *(v16 - 8) + 64;
                    sub_100052028(319, &qword_100174330, &type metadata accessor for UUID, &type metadata accessor for Optional);
                    if (v19 <= 0x3F)
                    {
                      v29 = *(v18 - 8) + 64;
                      swift_updateClassMetadata2();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100052028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10005208C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100052108@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NearbySharingInteractionViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id sub_100052258()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderSFCollaborationService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000522F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v20 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFNearbySharingInteraction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v12 = *(v18 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v18);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  SFNearbySharingInteraction.interactionType.getter();
  (*(v8 + 8))(v11, v7);
  v16 = *(v2 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23[4] = v21[4];
  v23[5] = v21[5];
  v24 = v22;
  v23[0] = v21[0];
  v23[1] = v21[1];
  v23[2] = v21[2];
  v23[3] = v21[3];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000526C0(v15, v6, v16, v23, v21, v19);
  sub_1000159AC(v23, &unk_1001763B0, &qword_10011AF00);
  sub_1000159AC(v21, &qword_1001742D8, &unk_10011AED8);
  (*(v3 + 8))(v6, v20);
  return (*(v12 + 8))(v15, v18);
}

uint64_t sub_1000526C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v150 = a5;
  v151 = a4;
  v166 = a2;
  v167 = a3;
  v168 = a6;
  v7 = *(a4 + 80);
  v198 = *(a4 + 64);
  v199 = v7;
  v200 = *(a4 + 96);
  v8 = *(a4 + 16);
  v194 = *a4;
  v195 = v8;
  v9 = *(a4 + 48);
  v196 = *(a4 + 32);
  v197 = v9;
  v156 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v160 = *(v156 - 8);
  v10 = v160[8];
  v11 = __chkstk_darwin(v156);
  v139 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v138 = &v136 - v14;
  v15 = __chkstk_darwin(v13);
  v140 = &v136 - v16;
  v17 = __chkstk_darwin(v15);
  v141 = &v136 - v18;
  v19 = __chkstk_darwin(v17);
  v142 = &v136 - v20;
  v21 = __chkstk_darwin(v19);
  v143 = &v136 - v22;
  v23 = __chkstk_darwin(v21);
  v144 = &v136 - v24;
  v25 = __chkstk_darwin(v23);
  v145 = &v136 - v26;
  v27 = __chkstk_darwin(v25);
  v149 = &v136 - v28;
  v29 = __chkstk_darwin(v27);
  v153 = &v136 - v30;
  v31 = __chkstk_darwin(v29);
  v152 = &v136 - v32;
  __chkstk_darwin(v31);
  v155 = &v136 - v33;
  v34 = sub_1000077C8(&qword_1001743C8, &qword_10011B118);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v154 = &v136 - v36;
  v37 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v158 = *(v37 - 8);
  v159 = v37;
  v38 = *(v158 + 64);
  __chkstk_darwin(v37);
  v157 = &v136 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SFShockwaveEffectState();
  v163 = *(v40 - 8);
  v164 = v40;
  v41 = *(v163 + 64);
  __chkstk_darwin(v40);
  v162 = &v136 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v165 = *(v43 - 8);
  v44 = *(v165 + 64);
  v45 = __chkstk_darwin(v43);
  v137 = &v136 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v48 = &v136 - v47;
  v49 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v148 = &v136 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v161 = &v136 - v55;
  __chkstk_darwin(v54);
  v57 = &v136 - v56;
  v58 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  v62 = &v136 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = *(v50 + 16);
  v147 = v50 + 16;
  v146(v57, a1, v49);
  if ((*(v50 + 88))(v57, v49) != enum case for SFAirDrop.NearbySharingInteraction.State.connectionInterrupted(_:))
  {
    v136 = v43;
    v66 = *(v50 + 8);
    v66(v57, v49);
    v67 = v162;
    v68 = v167;
    dispatch thunk of ShockwaveAnimationCoordinator.state.getter();
    v69 = SFShockwaveEffectState.isLogicallyComplete.getter();
    (*(v163 + 8))(v67, v164);
    if (v69 & 1) != 0 && (v70 = a1, v71 = *(v50 + 104), v72 = v161, v71(v161, enum case for SFAirDrop.NearbySharingInteraction.State.connecting(_:), v49), sub_100055568(&qword_1001743D0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State), v73 = dispatch thunk of static Comparable.< infix(_:_:)(), v66(v72, v49), (v73))
    {
      v74 = v154;
      SFAirDrop.NearbySharingInteraction.State.connectionContext.getter();
      v75 = v70;
      v77 = v158;
      v76 = v159;
      if ((*(v158 + 48))(v74, 1, v159) == 1)
      {
        sub_1000159AC(v74, &qword_1001743C8, &qword_10011B118);
        v78 = v161;
        v79 = v49;
        v71(v161, enum case for SFAirDrop.NearbySharingInteraction.State.ended(_:), v49);
        v80 = static SFAirDrop.NearbySharingInteraction.State.== infix(_:_:)();
        v66(v78, v49);
        if ((v80 & 1) == 0)
        {
          if (qword_100172218 != -1)
          {
            swift_once();
          }

          v81 = type metadata accessor for Logger();
          sub_100007D20(v81, qword_10017F350);
          v82 = v148;
          v146(v148, v75, v79);
          sub_100007BA4(v150, &v170, &qword_1001742D8, &unk_10011AED8);
          v83 = v151;
          sub_100007BA4(v151, &v180, &unk_1001763B0, &qword_10011AF00);
          v84 = v83;
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.error.getter();
          sub_1000159AC(v84, &unk_1001763B0, &qword_10011AF00);
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            LODWORD(v166) = v86;
            v88 = v87;
            v167 = swift_slowAlloc();
            *&v180 = v167;
            *v88 = 136315650;
            sub_100055568(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
            v89 = v84;
            v90 = dispatch thunk of CustomStringConvertible.description.getter();
            v92 = v91;
            v66(v82, v79);
            v93 = sub_10003E81C(v90, v92, &v180);

            *(v88 + 4) = v93;
            *(v88 + 12) = 2080;
            if (*(v89 + 72) <= 0xFFFFFFFEFFFFFFFFLL)
            {
              v94 = 1701670771;
            }

            else
            {
              v94 = 1701736302;
            }

            v95 = sub_10003E81C(v94, 0xE400000000000000, &v180);

            *(v88 + 14) = v95;
            *(v88 + 22) = 2080;
            if (*(&v171 + 1))
            {
              v96 = 1701670771;
            }

            else
            {
              v96 = 1701736302;
            }

            sub_1000159AC(&v170, &qword_1001742D8, &unk_10011AED8);
            v97 = sub_10003E81C(v96, 0xE400000000000000, &v180);

            *(v88 + 24) = v97;
            _os_log_impl(&_mh_execute_header, v85, v166, "Encountered unknown state not represented by a view: %s resolvedRemotePerson: %s shareableContent: %s", v88, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v66(v82, v79);
            sub_1000159AC(&v170, &qword_1001742D8, &unk_10011AED8);
          }
        }

        goto LABEL_35;
      }

      (*(v77 + 32))(v157, v74, v76);
      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v99 = v152;
      v164 = v160[13];
      v164(v152, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.generic(_:), v156);
      sub_100055568(&unk_100173E70, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v180 == v170 && *(&v180 + 1) == *(&v170 + 1))
      {
        v100 = 1;
      }

      else
      {
        v100 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v101 = v160 + 1;
      v102 = v160[1];
      v103 = v99;
      v104 = v156;
      v102(v103, v156);
      v160 = v101;
      v102(v155, v104);

      if (v100)
      {
LABEL_33:
        (*(v158 + 8))(v157, v159);
LABEL_35:
        type metadata accessor for NearbySharingInteractionViewState(0);
        return swift_storeEnumTagMultiPayload();
      }

      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v105 = v149;
      v164(v149, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:), v104);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v180 == v170 && *(&v180 + 1) == *(&v170 + 1))
      {
        v102(v105, v104);
        v106 = v153;
LABEL_31:
        v102(v106, v104);

        goto LABEL_33;
      }

      v107 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v102(v105, v104);
      v102(v153, v104);

      if (v107)
      {
        goto LABEL_33;
      }

      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v108 = v144;
      v164(v144, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.unknown(_:), v104);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v180 == v170 && *(&v180 + 1) == *(&v170 + 1))
      {
        v102(v108, v104);
        v106 = v145;
        goto LABEL_31;
      }

      v109 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v102(v108, v104);
      v102(v145, v104);

      if (v109)
      {
        goto LABEL_33;
      }

      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v110 = v142;
      v164(v142, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.peerPayment(_:), v104);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v180 == v170 && *(&v180 + 1) == *(&v170 + 1))
      {
        v102(v110, v104);
        v106 = v143;
        goto LABEL_31;
      }

      v111 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v102(v110, v104);
      v102(v143, v104);

      if (v111)
      {
        goto LABEL_33;
      }

      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v112 = v140;
      v164(v140, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.DDUI(_:), v104);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v180 == v170 && *(&v180 + 1) == *(&v170 + 1))
      {
        v102(v112, v104);
        v106 = v141;
        goto LABEL_31;
      }

      v113 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v102(v112, v104);
      v102(v141, v104);

      if (v113)
      {
        goto LABEL_33;
      }

      v114 = v138;
      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v164(v139, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.meet(_:), v104);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v180 == v170 && *(&v180 + 1) == *(&v170 + 1))
      {
        v102(v139, v104);
        v102(v114, v104);

LABEL_53:
        v118 = v157;
        SFAirDrop.NearbySharingInteraction.ConnectionContext.transactionIdentifier.getter();
        (*(v158 + 8))(v118, v159);
        type metadata accessor for NearbySharingInteractionViewState(0);
        return swift_storeEnumTagMultiPayload();
      }

      v115 = v102;
      v116 = v167;
      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v115(v139, v104);
      v115(v114, v104);

      if (v117)
      {
        goto LABEL_53;
      }

      v119 = *(v151 + 9);
      if (v119 <= 0xFFFFFFFEFFFFFFFFLL)
      {
        v120 = v151[3];
        v191 = v151[2];
        v192 = v120;
        v193 = *(v151 + 8);
        v121 = v151[1];
        v189 = *v151;
        v190 = v121;
        v187 = v151[5];
        v188 = *(v151 + 24);
        sub_100007BA4(v150, &v177, &qword_1001742D8, &unk_10011AED8);
        if (*(&v178 + 1))
        {
          v184 = v198;
          v185 = v199;
          v186 = v200;
          v180 = v194;
          v181 = v195;
          v182 = v196;
          v183 = v197;
          sub_1000555B0(&v180, &v170);
          (*(v158 + 8))(v157, v159);
          v122 = v192;
          v123 = v168;
          *(v168 + 32) = v191;
          *(v123 + 48) = v122;
          v124 = v193;
          v125 = v190;
          *v123 = v189;
          *(v123 + 16) = v125;
          *(v123 + 64) = v124;
          *(v123 + 72) = v119;
          *(v123 + 80) = v187;
          *(v123 + 96) = v188;
          v126 = v177;
          v127 = v178;
          *(v123 + 136) = v179;
          *(v123 + 120) = v127;
          *(v123 + 104) = v126;
          type metadata accessor for NearbySharingInteractionViewState(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_1000159AC(&v177, &qword_1001742D8, &unk_10011AED8);
        v174 = v198;
        v175 = v199;
        v176 = v200;
        v170 = v194;
        v171 = v195;
        v172 = v196;
        v173 = v197;
        v128 = v165;
        v129 = v136;
        v130 = v137;
        (*(v165 + 104))(v137, enum case for SFNearbySharingInteraction.InteractionType.connect(_:), v136);
        v184 = v198;
        v185 = v199;
        v186 = v200;
        v180 = v194;
        v181 = v195;
        v182 = v196;
        v183 = v197;
        sub_1000555B0(&v180, &v169);
        v131 = static SFNearbySharingInteraction.InteractionType.== infix(_:_:)();
        (*(v128 + 8))(v130, v129);
        (*(v158 + 8))(v157, v159);
        if (v131)
        {
          v132 = v175;
          v133 = v168;
          *(v168 + 64) = v174;
          *(v133 + 80) = v132;
          *(v133 + 96) = v176;
          v134 = v171;
          *v133 = v170;
          *(v133 + 16) = v134;
          v135 = v173;
          *(v133 + 32) = v172;
          *(v133 + 48) = v135;
          type metadata accessor for NearbySharingInteractionViewState(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_1000159AC(v151, &unk_1001763B0, &qword_10011AF00);
      }

      else
      {
        (*(v158 + 8))(v157, v159);
      }

      *v168 = v116;
      type metadata accessor for NearbySharingInteractionViewState(0);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      *v168 = v68;
      type metadata accessor for NearbySharingInteractionViewState(0);
      swift_storeEnumTagMultiPayload();
    }
  }

  (*(v50 + 96))(v57, v49);
  v63 = *(v59 + 32);
  v63(v62, v57, v58);
  v64 = v165;
  (*(v165 + 16))(v48, v166, v43);
  v65 = (*(v64 + 88))(v48, v43);
  if (v65 != enum case for SFNearbySharingInteraction.InteractionType.connect(_:))
  {
    if (v65 != enum case for SFNearbySharingInteraction.InteractionType.handoff(_:))
    {
      v63(v168, v62, v58);
      type metadata accessor for NearbySharingInteractionViewState(0);
      swift_storeEnumTagMultiPayload();
      return (*(v64 + 8))(v48, v43);
    }

    (*(v59 + 8))(v62, v58);
    goto LABEL_35;
  }

  v63(v168, v62, v58);
  type metadata accessor for NearbySharingInteractionViewState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100053BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  ObjectType = swift_getObjectType();
  v43 = sub_1000077C8(&qword_1001743E0, &qword_10011B170);
  v3 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v38 = &v31 - v4;
  v41 = sub_1000077C8(&qword_1001743E8, &qword_10011B178);
  v5 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v37 = &v31 - v6;
  v40 = sub_1000077C8(&unk_1001743F0, &qword_10011B180);
  v7 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v33 = &v31 - v8;
  v39 = sub_1000077C8(&qword_1001764C0, &qword_10011B188);
  v9 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = sub_1000077C8(&qword_100174400, &unk_10011B190);
  v44 = *(v42 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin(v42);
  v36 = &v31 - v11;
  v12 = type metadata accessor for SFNearbySharingInteraction();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v17 = *(v35 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v35);
  v34 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v32 = &v31 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  SFNearbySharingInteraction.interactionType.getter();
  (*(v13 + 8))(v16, v12);
  v31 = *(v2 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator);
  swift_beginAccess();
  sub_1000077C8(&qword_100174408, &qword_10011E5C0);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  sub_1000077C8(&qword_100174410, &qword_10011B1A0);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  sub_1000077C8(&qword_100174418, &qword_10011B1A8);
  Published.projectedValue.getter();
  swift_endAccess();
  dispatch thunk of ShockwaveAnimationCoordinator.$state.getter();
  sub_1000199C8(&qword_100174420, &qword_1001764C0, &qword_10011B188);
  sub_1000199C8(&qword_100174428, &unk_1001743F0, &qword_10011B180);
  sub_1000199C8(&qword_100174430, &qword_1001743E8, &qword_10011B178);
  sub_1000199C8(&qword_100174438, &qword_1001743E0, &qword_10011B170);
  v21 = v36;
  Publishers.CombineLatest4.init(_:_:_:_:)();
  v23 = v34;
  v22 = v35;
  v24 = v32;
  (*(v17 + 16))(v34, v32, v35);
  v25 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v26 = (v18 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v17 + 32))(v27 + v25, v23, v22);
  *(v27 + v26) = v31;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_100056EAC;
  *(v28 + 24) = v27;
  type metadata accessor for NearbySharingInteractionViewState(0);
  sub_1000199C8(&qword_100174440, &qword_100174400, &unk_10011B190);

  v29 = v42;
  Publisher.map<A>(_:)();

  (*(v44 + 8))(v21, v29);
  return (*(v17 + 8))(v24, v22);
}

uint64_t sub_1000542A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbySharingInteractionViewState(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  sub_1000522F8(&v21 - v16);
  swift_storeEnumTagMultiPayload();
  v18 = sub_100056260(v17, v14);
  sub_100056C74(v14);
  if (v18)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      ContinuousClock.Instant.advanced(by:)();
      (*(v7 + 8))(v10, v6);
      sub_100056C74(v17);
      v19 = 0;
      return (*(v7 + 56))(a1, v19, 1, v6);
    }

    sub_100056C74(v17);
    sub_1000159AC(v5, &qword_100174328, &qword_10011AF08);
  }

  else
  {
    sub_100056C74(v17);
  }

  v19 = 1;
  return (*(v7 + 56))(a1, v19, 1, v6);
}

uint64_t sub_100054568()
{
  v0 = type metadata accessor for NearbySharingInteractionViewState(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
  v7 = static NSUserDefaults.airdrop.getter();
  v8 = SFAirDropUserDefaults.shockwaveEffectEnabled.getter();

  if (v8)
  {
    sub_1000522F8(v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_100056C74(v6);
        return 0;
      }

      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_16:
      v12 = v6;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v17 = *(v6 + 24);
      v13 = *(v6 + 10);
      v15 = *(v6 + 11);
      sub_1000588EC(*v6, *(v6 + 1), *(v6 + 2), *(v6 + 3), *(v6 + 4), *(v6 + 5), *(v6 + 6), *(v6 + 7), *(v6 + 8), *(v6 + 9));
      sub_100056D60((v6 + 104));
      return 0;
    }

    return 2;
  }

  sub_1000522F8(v4);
  v11 = swift_getEnumCaseMultiPayload();
  if (v11 <= 2)
  {
    if (v11 >= 2)
    {
      sub_100056C74(v4);
      return 2;
    }

LABEL_14:
    v12 = v4;
LABEL_17:
    sub_100056C74(v12);
    return 1;
  }

  if (v11 == 3)
  {
    goto LABEL_14;
  }

  if (v11 != 4)
  {
    return 2;
  }

  v18 = *(v4 + 24);
  v14 = *(v4 + 10);
  v16 = *(v4 + 11);
  sub_1000588EC(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3), *(v4 + 4), *(v4 + 5), *(v4 + 6), *(v4 + 7), *(v4 + 8), *(v4 + 9));
  sub_100056D60((v4 + 104));
  return 1;
}

uint64_t sub_100054770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[8] = v10;
  v8[9] = v9;

  return _swift_task_switch(sub_100054810, v10, v9);
}

uint64_t sub_100054810()
{
  v1 = v0[6];
  v2 = v0[2];
  v4 = v2[3];
  v3 = v2[4];
  sub_1000078DC(v2, v4);
  v5 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1000548E8;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return sub_10000815C(v9, v7, v8, v1 + v5, v4, v3);
}

uint64_t sub_1000548E8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_100054A8C;
  }

  else
  {
    v7 = sub_100054A24;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100054A24()
{
  v1 = v0[7];

  v2 = v0[6];
  sub_10004F4F8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100054A8C()
{
  v1 = v0[7];

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_10017F350);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error sending shareable content: %@", v8, 0xCu);
    sub_1000159AC(v9, &qword_100172EB0, &qword_100119410);
  }

  else
  {
  }

  v11 = v0[6];
  sub_10004F4F8();
  v12 = v0[1];

  return v12();
}

uint64_t sub_100054CE0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v15 = *(v8 + 16);
  v15(&v19 - v13, a1, v7);
  v16 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v15(v12, v14, v7);
  v17 = v16;
  static Published.subscript.setter();
  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_100054EF0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100054F6C(uint64_t a1, void **a2)
{
  sub_100007BA4(a1, v7, &qword_1001742D8, &unk_10011AED8);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v7, &v6, &qword_1001742D8, &unk_10011AED8);
  v4 = v3;
  static Published.subscript.setter();
  return sub_1000159AC(v7, &qword_1001742D8, &unk_10011AED8);
}

uint64_t sub_100055038(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_1000550EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10005517C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

__n128 sub_1000551EC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v6;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  *(a2 + 96) = v11;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_1000552B0(__int128 *a1, void **a2)
{
  v3 = a1[5];
  v20[4] = a1[4];
  v20[5] = v3;
  v21 = *(a1 + 24);
  v4 = a1[1];
  v20[0] = *a1;
  v20[1] = v4;
  v5 = a1[3];
  v20[2] = a1[2];
  v20[3] = v5;
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[5];
  v17 = a1[4];
  v18 = v7;
  v19 = *(a1 + 24);
  v8 = a1[1];
  v13 = *a1;
  v14 = v8;
  v9 = a1[3];
  v15 = a1[2];
  v16 = v9;
  sub_100007BA4(v20, v12, &unk_1001763B0, &qword_10011AF00);
  v10 = v6;
  return static Published.subscript.setter();
}

uint64_t sub_1000553A4(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10005541C(uint64_t a1, void **a2)
{
  v4 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_100007BA4(a1, &v14 - v9, &qword_100174328, &qword_10011AF08);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v10, v8, &qword_100174328, &qword_10011AF08);
  v12 = v11;
  static Published.subscript.setter();
  return sub_1000159AC(v10, &qword_100174328, &qword_10011AF08);
}

uint64_t sub_100055568(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005560C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v108 = a6;
  v97 = a3;
  v96 = a2;
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v101 = &v91 - v11;
  v12 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v95 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v94 = &v91 - v16;
  __chkstk_darwin(v17);
  v100 = &v91 - v18;
  v19 = sub_1000077C8(&qword_100172F08, &unk_10011E530);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v99 = &v91 - v21;
  v22 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v106 = *(v22 - 8);
  v107 = v22;
  v23 = *(v106 + 64);
  __chkstk_darwin(v22);
  v105 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v104 = &v91 - v26;
  v103 = type metadata accessor for SFNearbySharingInteraction();
  v102 = *(v103 - 8);
  v27 = *(v102 + 64);
  __chkstk_darwin(v103);
  v29 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v98 = (&v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v36 = &v91 - v35;
  v37 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v93 = &v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v40;
  __chkstk_darwin(v41);
  v43 = &v91 - v42;
  v111[3] = a5;
  v111[4] = v108;
  v44 = sub_100058F84(v111);
  (*(*(a5 - 8) + 16))(v44, a1, a5);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v31 + 88))(v36, v30) == enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:))
  {
    (*(v31 + 96))(v36, v30);
    v108 = v38;
    v98 = *(v38 + 32);
    v98(v43, v36, v37);
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = a4;
    static Published.subscript.getter();

    v46 = v104;
    SFNearbySharingInteraction.interactionType.getter();
    (*(v102 + 8))(v29, v103);
    v48 = v105;
    v47 = v106;
    v49 = v107;
    (*(v106 + 104))(v105, enum case for SFNearbySharingInteraction.InteractionType.connect(_:), v107);
    v50 = static SFNearbySharingInteraction.InteractionType.== infix(_:_:)();
    v51 = *(v47 + 8);
    v51(v48, v49);
    v51(v46, v49);
    if ((v50 & 1) != 0 && (v52 = v99, SFAirDrop.NearbySharingInteraction.ConnectionContext.endpointIdentifier.getter(), v53 = type metadata accessor for UUID(), v54 = (*(*(v53 - 8) + 48))(v52, 1, v53), sub_1000159AC(v52, &qword_100172F08, &unk_10011E530), v54 == 1))
    {
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_100007D20(v55, qword_10017F350);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v108;
      if (v58)
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Can not share content: we don't have a resolved endpoint.", v60, 2u);
      }

      (*(v59 + 8))(v43, v37);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v74 = v100;
      static Published.subscript.getter();

      v75 = type metadata accessor for ContinuousClock.Instant();
      v76 = *(v75 - 8);
      if ((*(v76 + 48))(v74, 1, v75) == 1)
      {
        v107 = v37;
        sub_1000159AC(v74, &qword_100174328, &qword_10011AF08);
        v77 = v94;
        static ContinuousClock.Instant.now.getter();
        (*(v76 + 56))(v77, 0, 1, v75);
        swift_getKeyPath();
        swift_getKeyPath();
        v91 = v43;
        sub_100007BA4(v77, v95, &qword_100174328, &qword_10011AF08);
        v78 = v45;
        static Published.subscript.setter();
        sub_1000159AC(v77, &qword_100174328, &qword_10011AF08);
        v79 = type metadata accessor for TaskPriority();
        (*(*(v79 - 8) + 56))(v101, 1, 1, v79);
        sub_100007878(v111, v110);
        sub_100007878(v96, v109);
        v80 = v107;
        v81 = v108;
        v82 = v93;
        (*(v108 + 16))(v93, v43, v107);
        type metadata accessor for MainActor();
        v83 = v97;
        v84 = v97;
        v85 = v78;
        v86 = static MainActor.shared.getter();
        v87 = (*(v81 + 80) + 120) & ~*(v81 + 80);
        v88 = (v92 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
        v89 = swift_allocObject();
        *(v89 + 2) = v86;
        *(v89 + 3) = &protocol witness table for MainActor;
        sub_1000590D8(v110, (v89 + 32));
        sub_1000590D8(v109, (v89 + 72));
        *(v89 + 14) = v83;
        v98(&v89[v87], v82, v80);
        *&v89[v88] = v85;
        sub_1000F9860(0, 0, v101, &unk_10011B380, v89);

        (*(v81 + 8))(v91, v80);
      }

      else
      {
        (*(v108 + 8))(v43, v37);
        sub_1000159AC(v74, &qword_100174328, &qword_10011AF08);
      }
    }
  }

  else
  {
    v61 = *(v31 + 8);
    v61(v36, v30);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100007D20(v62, qword_10017F350);
    v63 = a4;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v108 = v61;
      v67 = v66;
      v68 = swift_slowAlloc();
      *&v110[0] = v68;
      *v67 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      v69 = v98;
      static Published.subscript.getter();

      sub_100055568(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (v108)(v69, v30);
      v73 = sub_10003E81C(v70, v72, v110);

      *(v67 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v64, v65, "Can not share content as the state of the interaction is not connected: %s", v67, 0xCu);
      sub_100007920(v68);
    }
  }

  return sub_100007920(v111);
}

uint64_t sub_100056260(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v3 = type metadata accessor for UUID();
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = *(v95 + 64);
  __chkstk_darwin(v3);
  v92 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  __chkstk_darwin(v6);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NearbySharingInteractionViewState(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v92 - v15;
  __chkstk_darwin(v17);
  v19 = &v92 - v18;
  __chkstk_darwin(v20);
  v22 = &v92 - v21;
  __chkstk_darwin(v23);
  v25 = (&v92 - v24);
  v26 = sub_1000077C8(&qword_1001743D8, &qword_10011B168);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v30 = &v92 + *(v29 + 56) - v28;
  v31 = a1;
  v32 = &v92 - v28;
  sub_100056CFC(v31, &v92 - v28);
  sub_100056CFC(v97, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100056CFC(v32, v22);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v35 = v93;
          v34 = v94;
          (*(v93 + 32))(v9, v30, v94);
          v36 = static SFAirDrop.NearbySharingInteraction.FailureType.== infix(_:_:)();
          v37 = v32;
          v38 = *(v35 + 8);
          v38(v9, v34);
          v38(v22, v34);
LABEL_22:
          sub_100056C74(v37);
          return v36 & 1;
        }

        (*(v93 + 8))(v22, v94);
      }

      else
      {
        sub_100056CFC(v32, v19);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v64 = v95;
          v63 = v96;
          v65 = v92;
          (*(v95 + 32))(v92, v30, v96);
          v36 = static UUID.== infix(_:_:)();
          v37 = v32;
          v66 = *(v64 + 8);
          v66(v65, v63);
          v66(v19, v63);
          goto LABEL_22;
        }

        (*(v95 + 8))(v19, v96);
      }
    }

    else
    {
      sub_100056CFC(v32, v25);
      v51 = v32;
      v52 = *v25;
      if (!swift_getEnumCaseMultiPayload())
      {
        v69 = *v30;
        type metadata accessor for ShockwaveAnimationCoordinator();
        v36 = static ShockwaveAnimationCoordinator.== infix(_:_:)();

        sub_100056C74(v51);
        return v36 & 1;
      }

      v32 = v51;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_100056CFC(v32, v16);
    v53 = *(v16 + 5);
    v114[2] = *(v16 + 4);
    v115 = v53;
    v116 = *(v16 + 24);
    v54 = *(v16 + 1);
    v112 = *v16;
    v113 = v54;
    v55 = *(v16 + 3);
    v114[0] = *(v16 + 2);
    v114[1] = v55;
    if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_28:
      sub_100056DB4(&v112);
      goto LABEL_30;
    }

    v56 = v32;
    v57 = *(v30 + 5);
    v109 = *(v30 + 4);
    v110 = v57;
    v111 = *(v30 + 24);
    v58 = *(v30 + 1);
    v105 = *v30;
    v106 = v58;
    v59 = *(v30 + 3);
    v107 = *(v30 + 2);
    v108 = v59;
    v61 = *(&v113 + 1);
    v60 = *&v114[0];
    v62 = v113;
    if (*(&v114[2] + 1) >> 62)
    {
      if (*(&v114[2] + 1) >> 62 == 1)
      {
        if (*(&v109 + 1) >> 62 != 1)
        {
          goto LABEL_46;
        }

        goto LABEL_39;
      }

      if (*(&v109 + 1) >> 62 == 2)
      {
LABEL_39:
        v72 = v106;
        v73 = v107;
        if (v112 != v105 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || __PAIR128__(v61, v62) != v72 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_46;
        }

        v70 = sub_10006B864(v60, v73);
LABEL_44:
        v74 = v70;
        sub_100056DB4(&v105);
        sub_100056DB4(&v112);
        if (v74)
        {
          v67 = v56;
          goto LABEL_25;
        }

LABEL_47:
        sub_100056C74(v56);
        goto LABEL_31;
      }
    }

    else
    {
      v117 = v112;
      v118 = v113;
      v120 = *(v114 + 8);
      v121 = *(&v114[1] + 8);
      v119 = *&v114[0];
      v122 = *(&v114[2] + 1) & 0x3FFFFFFFFFFFFFFFLL;
      v123 = v115;
      v124 = v116;
      if (!(*(&v109 + 1) >> 62))
      {
        v125 = v105;
        v126 = v106;
        v127 = v107;
        v128 = v108;
        v129 = v109;
        v130 = v110;
        v131 = v111;
        v70 = sub_10006BCA4(&v117, &v125);
        goto LABEL_44;
      }
    }

LABEL_46:
    sub_100056DB4(&v105);
    sub_100056DB4(&v112);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (swift_getEnumCaseMultiPayload() != 5)
    {
LABEL_30:
      sub_1000159AC(v32, &qword_1001743D8, &qword_10011B168);
LABEL_31:
      v36 = 0;
      return v36 & 1;
    }

    v67 = v32;
LABEL_25:
    sub_100056C74(v67);
    v36 = 1;
    return v36 & 1;
  }

  sub_100056CFC(v32, v13);
  v39 = *(v13 + 5);
  v114[2] = *(v13 + 4);
  v115 = v39;
  v116 = *(v13 + 24);
  v40 = *(v13 + 1);
  v112 = *v13;
  v113 = v40;
  v41 = *(v13 + 3);
  v114[0] = *(v13 + 2);
  v114[1] = v41;
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_100056D60((v13 + 104));
    goto LABEL_28;
  }

  v42 = v32;
  v43 = *(v30 + 5);
  v109 = *(v30 + 4);
  v110 = v43;
  v111 = *(v30 + 24);
  v44 = *(v30 + 1);
  v105 = *v30;
  v106 = v44;
  v45 = *(v30 + 3);
  v107 = *(v30 + 2);
  v108 = v45;
  v46 = *(v13 + 120);
  v103[0] = *(v13 + 104);
  v103[1] = v46;
  v104 = *(v13 + 136);
  v47 = *(v30 + 120);
  v101[0] = *(v30 + 104);
  v101[1] = v47;
  v102 = *(v30 + 136);
  v49 = *(&v113 + 1);
  v48 = *&v114[0];
  v50 = v113;
  if (!(*(&v114[2] + 1) >> 62))
  {
    v117 = v112;
    v118 = v113;
    v120 = *(v114 + 8);
    v121 = *(&v114[1] + 8);
    v119 = *&v114[0];
    v122 = *(&v114[2] + 1) & 0x3FFFFFFFFFFFFFFFLL;
    v123 = v115;
    v124 = v116;
    if (!(*(&v109 + 1) >> 62))
    {
      v125 = v105;
      v126 = v106;
      v127 = v107;
      v128 = v108;
      v129 = v109;
      v130 = v110;
      v131 = v111;
      v71 = sub_10006BCA4(&v117, &v125);
      goto LABEL_54;
    }

    goto LABEL_61;
  }

  if (*(&v114[2] + 1) >> 62 == 1)
  {
    if (*(&v109 + 1) >> 62 != 1)
    {
      goto LABEL_61;
    }

    goto LABEL_49;
  }

  if (*(&v109 + 1) >> 62 != 2)
  {
LABEL_61:
    sub_100056DB4(&v105);
    sub_100056DB4(&v112);
    goto LABEL_62;
  }

LABEL_49:
  v75 = v106;
  v76 = v107;
  if (v112 != v105 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || __PAIR128__(v49, v50) != v75 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_61;
  }

  v71 = sub_10006B864(v48, v76);
LABEL_54:
  v77 = v71;
  sub_100056DB4(&v105);
  sub_100056DB4(&v112);
  if ((v77 & 1) == 0)
  {
LABEL_62:
    sub_100056D60(v101);
    sub_100056D60(v103);
    sub_100056C74(v42);
    goto LABEL_31;
  }

  v78 = *(&v104 + 1);
  v79 = *(*(&v104 + 1) + 16);
  v80 = _swiftEmptyArrayStorage;
  if (v79)
  {
    v100 = _swiftEmptyArrayStorage;
    sub_10000E414(0, v79, 0);
    v80 = v100;
    v81 = v78 + 32;
    do
    {
      sub_100007878(v81, v98);
      sub_1000078DC(v98, v99);
      v82 = sub_10000814C();
      sub_100007920(v98);
      v100 = v80;
      v84 = v80[2];
      v83 = v80[3];
      if (v84 >= v83 >> 1)
      {
        sub_10000E414((v83 > 1), v84 + 1, 1);
        v80 = v100;
      }

      v80[2] = v84 + 1;
      v80[v84 + 4] = v82;
      v81 += 40;
      --v79;
    }

    while (v79);
  }

  v85 = *(&v102 + 1);
  v86 = *(*(&v102 + 1) + 16);
  v87 = _swiftEmptyArrayStorage;
  if (v86)
  {
    v100 = _swiftEmptyArrayStorage;
    sub_10000E414(0, v86, 0);
    v87 = v100;
    v88 = v85 + 32;
    do
    {
      sub_100007878(v88, v98);
      sub_1000078DC(v98, v99);
      v89 = sub_10000814C();
      sub_100007920(v98);
      v100 = v87;
      v91 = v87[2];
      v90 = v87[3];
      if (v91 >= v90 >> 1)
      {
        sub_10000E414((v90 > 1), v91 + 1, 1);
        v87 = v100;
      }

      v87[2] = v91 + 1;
      v87[v91 + 4] = v89;
      v88 += 40;
      --v86;
    }

    while (v86);
  }

  v36 = sub_10000853C(v80, v87);

  sub_100056D60(v101);
  sub_100056D60(v103);
  sub_100056C74(v42);
  return v36 & 1;
}

uint64_t sub_100056C74(uint64_t a1)
{
  v2 = type metadata accessor for NearbySharingInteractionViewState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionViewState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100056E08()
{
  v1 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100056EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for SFNearbySharingInteraction.InteractionType() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  return sub_1000526C0(a1, v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3, a4);
}

uint64_t sub_100056F64()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056F9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_1000077C8(&qword_100174448, &qword_10011B1B0);
  v6 = a1 + v5[12];
  v7 = *(v6 + 80);
  v11[4] = *(v6 + 64);
  v11[5] = v7;
  v12 = *(v6 + 96);
  v8 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v8;
  v9 = *(v6 + 48);
  v11[2] = *(v6 + 32);
  v11[3] = v9;
  return v4(a1, v11, a1 + v5[16], a1 + v5[20]);
}

id sub_100057034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v90 = a2;
  v98 = a1;
  v97 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v96 = *(v97 - 8);
  v4 = *(v96 + 64);
  __chkstk_darwin(v97);
  v94 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v92 = &v68 - v7;
  v99 = type metadata accessor for UUID();
  v78 = *(v99 - 8);
  v8 = *(v78 + 64);
  __chkstk_darwin(v99);
  v91 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v93 = *(v95 - 8);
  v10 = *(v93 + 64);
  __chkstk_darwin(v95);
  v87 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SFNearbySharingInteraction();
  v88 = *(v89 - 8);
  v12 = *(v88 + 64);
  __chkstk_darwin(v89);
  v86 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v85 = &v68 - v15;
  v84 = sub_1000077C8(&unk_100174450, &qword_10011B1B8);
  v83 = *(v84 - 8);
  v16 = *(v83 + 64);
  __chkstk_darwin(v84);
  v82 = &v68 - v17;
  v81 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v18 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v80 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v79 = &v68 - v21;
  v77 = sub_1000077C8(&qword_100174410, &qword_10011B1A0);
  v76 = *(v77 - 8);
  v22 = *(v76 + 64);
  __chkstk_darwin(v77);
  v75 = &v68 - v23;
  v74 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v73 = *(v74 - 8);
  v24 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v68 - v25;
  v71 = sub_1000077C8(&qword_100174460, &qword_10011B1C8);
  v70 = *(v71 - 8);
  v26 = *(v70 + 64);
  __chkstk_darwin(v71);
  v28 = &v68 - v27;
  v69 = sub_1000077C8(&qword_100174468, &unk_10011B1D0);
  v29 = *(v69 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v69);
  v32 = &v68 - v31;
  v33 = sub_1000077C8(&qword_100174418, &qword_10011B1A8);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v68 - v36;
  v38 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__shareableContent;
  v102 = 0u;
  v103 = 0u;
  v101 = 0u;
  sub_100007BA4(&v101, v110, &qword_1001742D8, &unk_10011AED8);
  sub_1000077C8(&qword_1001742D8, &unk_10011AED8);
  Published.init(initialValue:)();
  v39 = v78;
  sub_1000159AC(&v101, &qword_1001742D8, &unk_10011AED8);
  (*(v34 + 32))(&v3[v38], v37, v33);
  v40 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__collaborationItem;
  *&v101 = 0;
  sub_1000077C8(&qword_1001742E8, &qword_10011AEE8);
  Published.init(initialValue:)();
  (*(v29 + 32))(&v3[v40], v32, v69);
  v41 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__collaborationItemOptions;
  *&v101 = 0;
  sub_1000077C8(&qword_1001742F8, &unk_10011AEF0);
  Published.init(initialValue:)();
  (*(v70 + 32))(&v3[v41], v28, v71);
  v42 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__previewImage;
  *&v101 = 0;
  sub_1000077C8(&qword_100173D68, &qword_10011A550);
  v43 = v72;
  Published.init(initialValue:)();
  (*(v73 + 32))(&v3[v42], v43, v74);
  v44 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__resolvedRemotePerson;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v105 = 0;
  v106 = 0xFFFFFFFF00000000;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  sub_1000077C8(&unk_1001763B0, &qword_10011AF00);
  v45 = v75;
  Published.init(initialValue:)();
  (*(v76 + 32))(&v3[v44], v45, v77);
  v46 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__shareableContentActionBeginTime;
  v47 = type metadata accessor for ContinuousClock.Instant();
  v48 = v79;
  (*(*(v47 - 8) + 56))(v79, 1, 1, v47);
  sub_100007BA4(v48, v80, &qword_100174328, &qword_10011AF08);
  v49 = v82;
  Published.init(initialValue:)();
  sub_1000159AC(v48, &qword_100174328, &qword_10011AF08);
  (*(v83 + 32))(&v3[v46], v49, v84);
  (*(v39 + 56))(&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_interactionAssertionID], 1, 1, v99);
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contactDetailsResolvingTask] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v50 = sub_1000908EC(_swiftEmptyArrayStorage);
  }

  else
  {
    v50 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_subscriptions] = v50;
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationService] = 0;
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationsItemProvider] = 0;
  v51 = &v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel____lazy_storage___optionsChangedCallback];
  *v51 = 0;
  v51[1] = 0;
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contentResolver] = v90;
  v52 = type metadata accessor for ShockwaveAnimationCoordinator();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator] = ShockwaveAnimationCoordinator.init()();
  v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_includeRemotePersonDetails] = 1;
  v55 = v93;
  v56 = v98;
  v57 = v95;
  (*(v93 + 16))(v87, v98, v95);
  v58 = v85;
  SFNearbySharingInteraction.init(_:)();
  swift_beginAccess();
  v59 = v88;
  v60 = v89;
  (*(v88 + 16))(v86, v58, v89);
  Published.init(initialValue:)();
  (*(v59 + 8))(v58, v60);
  swift_endAccess();
  v61 = v91;
  SFAirDrop.NearbySharingInteraction.id.getter();
  (*(v39 + 32))(&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id], v61, v99);
  v62 = v92;
  SFAirDrop.NearbySharingInteraction.state.getter();
  swift_beginAccess();
  v63 = v96;
  v64 = v97;
  (*(v96 + 16))(v94, v62, v97);
  Published.init(initialValue:)();
  (*(v63 + 8))(v62, v64);
  swift_endAccess();
  v65 = type metadata accessor for NearbySharingInteractionViewModel(0);
  v100.receiver = v3;
  v100.super_class = v65;
  v66 = objc_msgSendSuper2(&v100, "init");
  sub_10004E3E8();

  (*(v55 + 8))(v56, v57);
  return v66;
}

id sub_100057C8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v90 = a2;
  v98 = a1;
  v97 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v96 = *(v97 - 8);
  v4 = *(v96 + 64);
  __chkstk_darwin(v97);
  v94 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v92 = &v68 - v7;
  v99 = type metadata accessor for UUID();
  v78 = *(v99 - 8);
  v8 = *(v78 + 64);
  __chkstk_darwin(v99);
  v91 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for SFProximityHandoff.Interaction();
  v93 = *(v95 - 8);
  v10 = *(v93 + 64);
  __chkstk_darwin(v95);
  v87 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SFNearbySharingInteraction();
  v88 = *(v89 - 8);
  v12 = *(v88 + 64);
  __chkstk_darwin(v89);
  v86 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v85 = &v68 - v15;
  v84 = sub_1000077C8(&unk_100174450, &qword_10011B1B8);
  v83 = *(v84 - 8);
  v16 = *(v83 + 64);
  __chkstk_darwin(v84);
  v82 = &v68 - v17;
  v81 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v18 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v80 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v79 = &v68 - v21;
  v77 = sub_1000077C8(&qword_100174410, &qword_10011B1A0);
  v76 = *(v77 - 8);
  v22 = *(v76 + 64);
  __chkstk_darwin(v77);
  v75 = &v68 - v23;
  v74 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v73 = *(v74 - 8);
  v24 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v68 - v25;
  v71 = sub_1000077C8(&qword_100174460, &qword_10011B1C8);
  v70 = *(v71 - 8);
  v26 = *(v70 + 64);
  __chkstk_darwin(v71);
  v28 = &v68 - v27;
  v69 = sub_1000077C8(&qword_100174468, &unk_10011B1D0);
  v29 = *(v69 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v69);
  v32 = &v68 - v31;
  v33 = sub_1000077C8(&qword_100174418, &qword_10011B1A8);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v68 - v36;
  v38 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__shareableContent;
  v102 = 0u;
  v103 = 0u;
  v101 = 0u;
  sub_100007BA4(&v101, v110, &qword_1001742D8, &unk_10011AED8);
  sub_1000077C8(&qword_1001742D8, &unk_10011AED8);
  Published.init(initialValue:)();
  v39 = v78;
  sub_1000159AC(&v101, &qword_1001742D8, &unk_10011AED8);
  (*(v34 + 32))(&v2[v38], v37, v33);
  v40 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__collaborationItem;
  *&v101 = 0;
  sub_1000077C8(&qword_1001742E8, &qword_10011AEE8);
  Published.init(initialValue:)();
  (*(v29 + 32))(&v2[v40], v32, v69);
  v41 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__collaborationItemOptions;
  *&v101 = 0;
  sub_1000077C8(&qword_1001742F8, &unk_10011AEF0);
  Published.init(initialValue:)();
  (*(v70 + 32))(&v2[v41], v28, v71);
  v42 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__previewImage;
  *&v101 = 0;
  sub_1000077C8(&qword_100173D68, &qword_10011A550);
  v43 = v72;
  Published.init(initialValue:)();
  (*(v73 + 32))(&v3[v42], v43, v74);
  v44 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__resolvedRemotePerson;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v105 = 0;
  v106 = 0xFFFFFFFF00000000;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  sub_1000077C8(&unk_1001763B0, &qword_10011AF00);
  v45 = v75;
  Published.init(initialValue:)();
  (*(v76 + 32))(&v3[v44], v45, v77);
  v46 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__shareableContentActionBeginTime;
  v47 = type metadata accessor for ContinuousClock.Instant();
  v48 = v79;
  (*(*(v47 - 8) + 56))(v79, 1, 1, v47);
  sub_100007BA4(v48, v80, &qword_100174328, &qword_10011AF08);
  v49 = v82;
  Published.init(initialValue:)();
  sub_1000159AC(v48, &qword_100174328, &qword_10011AF08);
  (*(v83 + 32))(&v3[v46], v49, v84);
  (*(v39 + 56))(&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_interactionAssertionID], 1, 1, v99);
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contactDetailsResolvingTask] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v50 = sub_1000908EC(_swiftEmptyArrayStorage);
  }

  else
  {
    v50 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_subscriptions] = v50;
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationService] = 0;
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationsItemProvider] = 0;
  v51 = &v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel____lazy_storage___optionsChangedCallback];
  *v51 = 0;
  v51[1] = 0;
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contentResolver] = v90;
  v52 = type metadata accessor for ShockwaveAnimationCoordinator();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator] = ShockwaveAnimationCoordinator.init()();
  v55 = v98;
  v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_includeRemotePersonDetails] = SFProximityHandoff.Interaction.showDeviceDetails.getter() & 1;
  v56 = v93;
  v57 = v95;
  (*(v93 + 16))(v87, v55, v95);
  v58 = v85;
  SFNearbySharingInteraction.init(_:)();
  swift_beginAccess();
  v59 = v88;
  v60 = v89;
  (*(v88 + 16))(v86, v58, v89);
  Published.init(initialValue:)();
  (*(v59 + 8))(v58, v60);
  swift_endAccess();
  v61 = v91;
  SFProximityHandoff.Interaction.id.getter();
  (*(v39 + 32))(&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id], v61, v99);
  v62 = v92;
  SFProximityHandoff.Interaction.state.getter();
  swift_beginAccess();
  v63 = v96;
  v64 = v97;
  (*(v96 + 16))(v94, v62, v97);
  Published.init(initialValue:)();
  (*(v63 + 8))(v62, v64);
  swift_endAccess();
  v65 = type metadata accessor for NearbySharingInteractionViewModel(0);
  v100.receiver = v3;
  v100.super_class = v65;
  v66 = objc_msgSendSuper2(&v100, "init");
  sub_10004E3E8();

  (*(v56 + 8))(v55, v57);
  return v66;
}

uint64_t sub_1000588EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  if ((a10 >> 62) - 1 >= 2)
  {
    if (a10 >> 62 == 3)
    {
      return result;
    }
  }
}

uint64_t sub_1000589B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000589EC()
{
  v1 = sub_1000077C8(&qword_100175190, &qword_10011CCF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100058AD0(uint64_t a1)
{
  v4 = *(sub_1000077C8(&qword_100175190, &qword_10011CCF0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000BCF0;

  return sub_1000514BC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100058C08()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058C48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BCF0;

  return sub_10004F900(a1, v4, v5, v6);
}

uint64_t sub_100058CFC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

_OWORD *sub_100058DC8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100058E80()
{
  type metadata accessor for ShockwaveAnimationCoordinator();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        sub_100058F24();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_100058F24()
{
  if (!qword_100174550)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100174550);
    }
  }
}

uint64_t *sub_100058F84(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100058FE8()
{
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100007920((v0 + 32));
  sub_100007920((v0 + 72));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000590D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000590F0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext() - 8);
  v6 = (*(v5 + 80) + 120) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[14];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000167E4;

  return sub_100054770(a1, v7, v8, (v1 + 4), (v1 + 9), v9, v1 + v6, v10);
}

void sub_100059234(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000592C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10005931C()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_1001745E0);
  v1 = sub_100007D20(v0, qword_1001745E0);
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F350);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000593E4()
{
  result = SFProximityHandoffUIServerDomain.getter();
  qword_1001745F8 = result;
  unk_100174600 = v1;
  return result;
}

uint64_t sub_100059408()
{
  result = SFProximityHandoffUIServerService.getter();
  qword_100174608 = result;
  unk_100174610 = v1;
  return result;
}

id sub_10005942C()
{
  result = [objc_allocWithZone(type metadata accessor for ProximityHandoffUIService()) init];
  qword_10017F230 = result;
  return result;
}

id sub_10005945C()
{
  v1 = OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService____lazy_storage___interface;
  v2 = *(v0 + OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService____lazy_storage___interface);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService____lazy_storage___interface);
  }

  else
  {
    v4 = sub_10005A108();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1000594BC()
{
  ObjectType = swift_getObjectType();
  v2 = &qword_100174000;
  *&v0[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_listener] = 0;
  *&v0[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_connection] = 0;
  *&v0[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService____lazy_storage___interface] = 0;
  *&v0[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_proximityHandoffUIClient] = 0;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v17, "init");
  v15[2] = v3;
  v15[3] = ObjectType;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10005A734;
  *(v4 + 24) = v15;
  aBlock[4] = sub_10005A778;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005A770;
  aBlock[3] = &unk_10015E5B0;
  v5 = _Block_copy(aBlock);
  v6 = objc_opt_self();
  v7 = v3;

  v8 = [v6 listenerWithConfigurator:v5];
  _Block_release(v5);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v2 = OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_listener;
    v9 = *&v7[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_listener];
    *&v7[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_listener] = v8;

    if (qword_100172158 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_100007D20(v10, qword_1001745E0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "ProximityHandoffUIService listener is activating...", v13, 2u);
  }

  result = *(v2 + v7);
  if (result)
  {
    [result activate];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100059744(void *a1, uint64_t a2)
{
  if (qword_100172160 != -1)
  {
    swift_once();
  }

  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  if (qword_100172168 != -1)
  {
    swift_once();
  }

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

void sub_100059A78(void *a1, uint64_t a2)
{
  sub_10005A6A8();
  v4 = static OS_dispatch_queue.main.getter();
  [a1 setTargetQueue:v4];

  v5 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v5];

  v6 = sub_10005945C();
  [a1 setInterface:v6];

  [a1 setInterfaceTarget:a2];
  v15 = sub_100059CE8;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100059234;
  v14 = &unk_10015E4E8;
  v7 = _Block_copy(&v11);
  [a1 setActivationHandler:v7];
  _Block_release(v7);
  v15 = sub_100059DD0;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100059234;
  v14 = &unk_10015E510;
  v8 = _Block_copy(&v11);
  [a1 setInterruptionHandler:v8];
  _Block_release(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_10005A72C;
  v16 = v9;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100059234;
  v14 = &unk_10015E560;
  v10 = _Block_copy(&v11);

  [a1 setInvalidationHandler:v10];
  _Block_release(v10);
}

void sub_100059CE8()
{
  if (qword_100172158 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100007D20(v0, qword_1001745E0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "ProximityHandoffUIService: connection activated from client!", v2, 2u);
  }
}

id sub_100059DD0(void *a1)
{
  if (qword_100172158 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_1001745E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ProximityHandoffUIService: connection interrupted, reconnecting", v5, 2u);
  }

  return [a1 activate];
}

void sub_100059EC8()
{
  if (qword_100172158 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100007D20(v0, qword_1001745E0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "ProximityHandoffUIService: connection invalidated", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *&Strong[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_connection];
    *&Strong[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_connection] = 0;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_proximityHandoffUIClient];
    *&v6[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_proximityHandoffUIClient] = 0;

    swift_unknownObjectRelease();
  }

  if (qword_1001721F0 != -1)
  {
    swift_once();
  }

  v8 = *(qword_10017F2E8 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_proximityHandoffClient);
  *(qword_10017F2E8 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_proximityHandoffClient) = 0;

  sub_100095544();
}

id sub_10005A108()
{
  if (qword_100172168 != -1)
  {
    swift_once();
  }

  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() interfaceWithIdentifier:v0];

  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol:&OBJC_PROTOCOL____TtP7Sharing34SFProximityHandoffUIServerProtocol_];
  [v1 setServer:v3];

  v4 = [v2 protocolForProtocol:&OBJC_PROTOCOL____TtP7Sharing34SFProximityHandoffUIClientProtocol_];
  [v1 setClient:v4];

  [v1 setClientMessagingExpectation:0];
  return v1;
}

uint64_t sub_10005A238(void *a1)
{
  v2 = v1;
  if (qword_100172158 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_1001745E0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "ProximityHandoffUIService received a connection! %@", v8, 0xCu);
    sub_1000159AC(v9, &qword_100172EB0, &qword_100119410);
  }

  v11 = OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_connection;
  v12 = *&v1[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_connection];
  if (v12)
  {
    v13 = v12;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "ProximityHandoffUIService: a connection already exists, invalidating old connection", v16, 2u);
    }

    [v13 invalidate];
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10005A660;
  *(v18 + 24) = v17;
  v30 = sub_10005A668;
  v31 = v18;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v29 = sub_10005A770;
  *(&v29 + 1) = &unk_10015E4C0;
  v19 = _Block_copy(&aBlock);
  v20 = v2;

  [v5 configureConnection:v19];
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    [v5 activate];
    v22 = *&v2[v11];
    *&v2[v11] = v5;
    v23 = v5;

    if ([v23 remoteTarget])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    aBlock = v26;
    v29 = v27;
    if (*(&v27 + 1))
    {
      sub_1000077C8(&qword_1001746C8, &qword_10011B3C8);
      if (swift_dynamicCast())
      {
        v24 = *&v20[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_proximityHandoffUIClient];
        *&v20[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_proximityHandoffUIClient] = v25;

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1000159AC(&aBlock, &qword_1001746C0, &qword_10011A510);
    }
  }

  return result;
}

uint64_t sub_10005A628()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A668()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10005A690(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10005A6A8()
{
  result = qword_100173D90;
  if (!qword_100173D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100173D90);
  }

  return result;
}

uint64_t sub_10005A6F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006264C();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_10005A800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006264C();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_10005A884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2 <= 0.75)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = (*v2 + -0.75) * 4.0;
  }

  v6 = sub_1000077C8(&qword_100174D50, &qword_10011C048);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = sub_1000077C8(&qword_100174D58, &unk_10011C050);
  *(a2 + *(result + 36)) = v5;
  return result;
}

double sub_10005A940@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_10005A94C(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_10005A958(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_10005A984;
}

double sub_10005A984(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t sub_10005A998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000077C8(&qword_100174C08, &qword_10011BD88);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = *v2;
  v11 = sub_1000077C8(&qword_100174C10, &qword_10011BD90);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = &v9[*(v6 + 44)];
  v13 = 80.0;
  if (v10)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = 0.0;
    v14 = 1.0;
  }

  *v12 = v13;
  v12[8] = 0;
  sub_100021A84(v9, a2, &qword_100174C08, &qword_10011BD88);
  result = sub_1000077C8(&qword_100174C18, &qword_10011BD98);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_10005AAE0()
{
  v0 = sub_1000077C8(&qword_100174920, &qword_10011B678);
  sub_1000154C0(v0, qword_1001746D0);
  sub_100007D20(v0, qword_1001746D0);
  sub_1000077C8(&qword_100174928, &qword_10011B680);
  sub_100007CCC(&qword_100174930, &qword_10011B688);
  sub_100007CCC(&qword_100174938, &qword_10011B690);
  sub_100007CCC(&qword_100174940, &qword_10011B698);
  sub_100007CCC(&qword_100174948, &qword_10011B6A0);
  sub_1000199C8(&qword_100174950, &qword_100174940, &qword_10011B698);
  sub_1000199C8(&qword_100174958, &qword_100174948, &qword_10011B6A0);
  swift_getOpaqueTypeConformance2();
  sub_1000199C8(&qword_100174960, &qword_100174938, &qword_10011B690);
  swift_getOpaqueTypeConformance2();
  return KeyframeTimeline.init<A>(initialValue:content:)();
}

uint64_t sub_10005ACE4@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = sub_1000077C8(&qword_100174928, &qword_10011B680);
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v60 = &v49 - v4;
  v59 = sub_1000077C8(&qword_100174930, &qword_10011B688);
  v61 = *(v59 - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin(v59);
  v58 = &v49 - v6;
  v57 = sub_1000077C8(&qword_100174938, &qword_10011B690);
  v70 = *(v57 - 8);
  v7 = *(v70 + 64);
  __chkstk_darwin(v57);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v49 - v10;
  v11 = sub_1000077C8(&qword_100174948, &qword_10011B6A0);
  v12 = *(v11 - 8);
  v68 = v11;
  v69 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v51 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v66 = &v49 - v16;
  v17 = sub_1000077C8(&qword_100174940, &qword_10011B698);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v21;
  __chkstk_darwin(v22);
  v67 = &v49 - v23;
  swift_getKeyPath();
  v24 = sub_1000077C8(&qword_100174968, &qword_10011B6C8);
  v25 = sub_1000199C8(&qword_100174970, &qword_100174968, &qword_10011B6C8);
  KeyframeTrack.init(_:content:)();
  v52 = sub_1000199C8(&qword_100174950, &qword_100174940, &qword_10011B698);
  v49 = v17;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v26 = *(v18 + 8);
  v53 = v18 + 8;
  v54 = v26;
  v26(v21, v17);
  swift_getKeyPath();
  sub_1000077C8(&qword_100174978, &qword_10011B6F0);
  v27 = sub_100007CCC(&qword_100174980, &qword_10011B6F8);
  v28 = sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8);
  v71 = &type metadata for Double;
  v72 = v27;
  v73 = v24;
  v74 = v28;
  v75 = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v51;
  KeyframeTrack.init(_:content:)();
  v30 = sub_1000199C8(&qword_100174958, &qword_100174948, &qword_10011B6A0);
  v31 = v68;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v32 = *(v69 + 8);
  v69 += 8;
  v50 = v32;
  v32(v29, v31);
  swift_getKeyPath();
  sub_1000077C8(&qword_100174990, &qword_10011B720);
  v71 = &type metadata for Double;
  v72 = v27;
  v73 = v27;
  v74 = v28;
  v75 = v28;
  swift_getOpaqueTypeConformance2();
  v33 = v55;
  KeyframeTrack.init(_:content:)();
  v34 = sub_1000199C8(&qword_100174960, &qword_100174938, &qword_10011B690);
  v35 = v56;
  v36 = v57;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v37 = *(v70 + 8);
  v70 += 8;
  v51 = v37;
  (v37)(v33, v36);
  v38 = v49;
  v39 = v52;
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  v40 = v58;
  v41 = v68;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v71 = &type metadata for SwoopTransitionViewModifier.Value;
  v72 = v38;
  v73 = v41;
  v74 = v39;
  v75 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v60;
  v44 = v40;
  v45 = v59;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v71 = &type metadata for SwoopTransitionViewModifier.Value;
  v72 = v45;
  v73 = v36;
  v74 = OpaqueTypeConformance2;
  v75 = v34;
  swift_getOpaqueTypeConformance2();
  v46 = v62;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v63 + 8))(v43, v46);
  (*(v61 + 8))(v44, v45);
  v47 = v54;
  v54(v65, v38);
  (v51)(v35, v36);
  v50(v66, v68);
  return v47(v67, v38);
}

uint64_t sub_10005B548@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for Spring();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v24 = sub_1000077C8(&qword_100174968, &qword_10011B6C8);
  v28 = *(v24 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for UnitCurve();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000077C8(&qword_100174980, &qword_10011B6F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v25 = &v23 - v17;
  v30 = 0x3FDCCCCCCCCCCCCDLL;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v26 = *(v12 + 8);
  v27 = v12 + 8;
  v26(v15, v11);
  v32 = 0x3FF0000000000000;
  Spring.init(mass:stiffness:damping:allowOverDamping:)();
  v30 = 0;
  v31 = 1;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  sub_1000199C8(&qword_100174970, &qword_100174968, &qword_10011B6C8);
  v18 = v24;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v19 = *(v28 + 8);
  v19(v5, v18);
  v20 = v25;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v21 = v26;
  v26(v15, v11);
  v19(v8, v18);
  return v21(v20, v11);
}

uint64_t sub_10005B984()
{
  v0 = sub_1000077C8(&qword_100174920, &qword_10011B678);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  if (qword_100172178 != -1)
  {
    swift_once();
  }

  v5 = sub_100007D20(v0, qword_1001746D0);
  (*(v1 + 16))(v4, v5, v0);
  KeyframeTimeline.duration.getter();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_10017F238 = v7;
  return result;
}

uint64_t sub_10005BAC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v2 = type metadata accessor for GlobalCoordinateSpace();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000077C8(&qword_100174C60, &qword_10011BDC8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = sub_1000077C8(&qword_100174C58, &qword_10011BDC0);
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  static UnitPoint.center.getter();
  v17 = type metadata accessor for EmptyVisualEffect();
  v18 = sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect);
  VisualEffect.scale(_:anchor:)();
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v3 + 8))(v6, v2);
  v36.origin.x = v20;
  v36.origin.y = v22;
  v36.size.width = v24;
  v36.size.height = v26;
  CGRectGetMidY(v36);
  GeometryProxy.size.getter();
  v34 = v17;
  v35 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  VisualEffect.offset(x:y:)();
  (*(v8 + 8))(v11, v7);
  v34 = v7;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  VisualEffect.blur(radius:opaque:)();
  return (*(v32 + 8))(v16, v28);
}

uint64_t sub_10005BE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006197C();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_10005BED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006197C();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_10005BF58()
{
  v1 = *v0;
  if (qword_100172178 != -1)
  {
    swift_once();
  }

  v2 = sub_1000077C8(&qword_100174920, &qword_10011B678);
  sub_100007D20(v2, qword_1001746D0);
  KeyframeTimeline.value(time:)();
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  sub_1000077C8(&qword_100174C40, &qword_10011BDB0);
  sub_1000077C8(&qword_100174C48, &qword_10011BDB8);
  sub_1000199C8(&qword_100174C50, &qword_100174C40, &qword_10011BDB0);
  sub_100007CCC(&qword_100174C58, &qword_10011BDC0);
  sub_100007CCC(&qword_100174C60, &qword_10011BDC8);
  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

double (*sub_10005C1C8(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_100062938;
}

id sub_10005C1F4@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v41 = a2;
  v7 = sub_1000077C8(&qword_1001748F0, &qword_10011B640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v42 = sub_1000077C8(&qword_1001748F8, &qword_10011B648);
  v11 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v13 = &v41 - v12;
  v14 = sub_1000077C8(&qword_100174900, &unk_10011B650);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  __chkstk_darwin(v21);
  v23 = &v41 - v22;
  v44 = a1;
  v24 = TransitionPhase.isIdentity.getter();
  v43 = a3;
  if (v24)
  {
    sub_1000077C8(&qword_100174918, &qword_10011B670);
    v25 = swift_allocObject();
    *(v25 + 1) = xmmword_1001186F0;
    result = [objc_opt_self() effectWithBlurRadius:25.0];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v27 = v14;
    v25[4] = result;
    *(v25 + 40) = 1;
  }

  else
  {
    v27 = v14;
    v25 = _swiftEmptyArrayStorage;
  }

  v28 = a4 * 0.75;
  v29 = &v10[*(v7 + 36)];
  v30 = *(type metadata accessor for RoundedRectangle() + 20);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = type metadata accessor for RoundedCornerStyle();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = v28;
  v29[1] = v28;
  *(v29 + *(sub_1000077C8(&qword_100177710, &qword_100119680) + 36)) = 256;
  v33 = sub_1000077C8(&qword_100174908, &qword_10011B660);
  (*(*(v33 - 8) + 16))(v10, v41, v33);
  v34 = 0;
  v35 = v27;
  if (TransitionPhase.isIdentity.getter())
  {
    if (qword_100172180 != -1)
    {
      swift_once();
    }

    v34 = qword_10017F238;
  }

  sub_100021A84(v10, v13, &qword_1001748F0, &qword_10011B640);
  *&v13[*(v42 + 36)] = v34;
  if (qword_100172180 != -1)
  {
    swift_once();
  }

  static Animation.linear(duration:)();
  v36 = Animation.speed(_:)();

  v37 = TransitionPhase.isIdentity.getter();
  sub_100021A84(v13, v20, &qword_1001748F8, &qword_10011B648);
  v38 = &v20[*(v35 + 36)];
  *v38 = v36;
  v38[8] = v37 & 1;
  sub_100021A84(v20, v23, &qword_100174900, &unk_10011B650);
  sub_100007BA4(v23, v17, &qword_100174900, &unk_10011B650);
  v39 = v43;
  *v43 = v25;
  *(v39 + 1) = xmmword_10011B3E0;
  v40 = sub_1000077C8(&qword_100174910, &qword_10011B668);
  sub_100007BA4(v17, v39 + *(v40 + 48), &qword_100174900, &unk_10011B650);

  sub_100060AB4(v23);
  sub_100060AB4(v17);
}

id sub_10005C68C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  *a3 = static Alignment.center.getter();
  a3[1] = v8;
  v9 = sub_1000077C8(&qword_1001748E8, &qword_10011B638);
  return sub_10005C1F4(a2, a1, (a3 + *(v9 + 44)), v7);
}

uint64_t sub_10005C78C()
{
  v1 = *(v0 + 24);
  sub_10002534C(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10005C8A4(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v17 - v9;
  if (a1 == 1)
  {
LABEL_9:
    v11 = &enum case for ColorScheme.light(_:);
    goto LABEL_10;
  }

  if (a1 != 2)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100007D20(v12, qword_10017F350);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unknown background luminance level: %lu", v15, 0xCu);
    }

    goto LABEL_9;
  }

  v11 = &enum case for ColorScheme.dark(_:);
LABEL_10:
  (*(v3 + 104))(v10, *v11, v2, v8);
  (*(v3 + 16))(v6, v10, v2);
  sub_1000077C8(&qword_100174A60, &qword_10011B8C0);
  Binding.wrappedValue.setter();
  return (*(v3 + 8))(v10, v2);
}

id sub_10005CAE4()
{
  sub_1000077C8(&qword_100174C70, &unk_10011BDD0);
  UIViewRepresentableContext.coordinator.getter();
  v0 = [objc_allocWithZone(_UILumaTrackingBackdropView) initWithTransitionBoundaries:v2 delegate:0.4 frame:{0.6, 0.0, 0.0, 0.0, 0.0}];

  [v0 setPaused:0];
  return v0;
}

uint64_t sub_10005CB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  sub_1000077C8(&qword_100174C70, &unk_10011BDD0);
  UIViewRepresentableContext.coordinator.getter();
  v7 = v13[1];
  sub_1000619D0(v4, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_100061A38(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  *(v7 + 16) = sub_100062960;
  *(v7 + 24) = v9;
  sub_10002534C(v10);
}

uint64_t sub_10005CCBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  type metadata accessor for LumaTrackingBackdropView.Coordinator();
  v6 = swift_allocObject();
  sub_1000619D0(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_100061A38(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *(v6 + 16) = sub_100061A9C;
  *(v6 + 24) = v8;
  result = sub_10002534C(0);
  *a2 = v6;
  return result;
}

uint64_t sub_10005CE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100061928(&qword_100174C78, type metadata accessor for LumaTrackingBackdropView);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10005CEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100061928(&qword_100174C78, type metadata accessor for LumaTrackingBackdropView);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10005CF40()
{
  sub_100061928(&qword_100174C78, type metadata accessor for LumaTrackingBackdropView);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10005CF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(sub_1000077C8(&qword_100174998, &qword_10011B758) + 36));
  v6 = *(sub_1000077C8(&qword_1001749A0, &qword_10011B760) + 28);
  sub_1000077C8(&qword_100174838, &qword_10011B578);
  State.wrappedValue.getter();
  *v5 = KeyPath;
  v7 = sub_1000077C8(&qword_1001749A8, &qword_10011B768);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = static Alignment.center.getter();
  v10 = v9;
  v11 = a2 + *(sub_1000077C8(&qword_1001749B0, &qword_10011B770) + 36);
  State.projectedValue.getter();
  result = sub_1000077C8(&qword_1001749B8, &qword_10011B778);
  v13 = (v11 + *(result + 36));
  *v13 = v8;
  v13[1] = v10;
  return result;
}

uint64_t sub_10005D0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v24 - v10;
  sub_100061684(v24 - v10);
  (*(v5 + 104))(v8, enum case for ColorScheme.light(_:), v4);
  v12 = static ColorScheme.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v11, v4);
  v14 = 1.718;
  if (v12)
  {
    v14 = 1.287;
  }

  v15 = -1.107;
  if (v12)
  {
    v15 = -0.715;
  }

  *v24 = v14;
  *&v24[1] = v15;
  v16 = -0.112;
  if (v12)
  {
    v16 = -0.072;
  }

  *&v24[2] = v16;
  v24[3] = 0;
  v17 = -0.329;
  if (v12)
  {
    v17 = -0.213;
  }

  v18 = 0.5;
  if (v12)
  {
    v18 = 0.0;
  }

  *&v24[4] = v18;
  *&v24[5] = v17;
  v19 = 0.941;
  if (v12)
  {
    v19 = 0.785;
  }

  v20 = 1.935;
  if (v12)
  {
    v20 = 1.428;
  }

  *&v24[6] = v19;
  *&v24[7] = v16;
  v24[8] = 0;
  *&v24[9] = v18;
  *&v24[10] = v17;
  *&v24[11] = v15;
  *&v24[12] = v20;
  v24[13] = 0;
  *&v24[14] = v18;
  v25 = xmmword_10011B3F0;
  v26 = 0;
  v21 = a2 + *(sub_1000077C8(&qword_100174BF0, &qword_10011BD70) + 36);
  View._colorMatrix(_:)();
  v22 = sub_1000077C8(&qword_100174BF8, &qword_10011BD78);
  return (*(*(v22 - 8) + 16))(a2, a1, v22);
}

id sub_10005D3AC@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 1) == 0)
  {
    v5 = _swiftEmptyArrayStorage;
    v3 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  sub_1000077C8(&qword_100174918, &qword_10011B670);
  v3 = swift_allocObject();
  *(v3 + 1) = xmmword_10011B400;
  v4 = objc_opt_self();
  result = [v4 effectWithBlurRadius:35.0];
  if (result)
  {
    v3[4] = result;
    *(v3 + 40) = 1;
    v3[6] = 0xBFC3333333333333;
    *(v3 + 56) = 2;
    v6[0] = xmmword_10011B410;
    v6[1] = xmmword_10011B420;
    v6[2] = xmmword_10011B430;
    v6[3] = xmmword_10011B420;
    v6[4] = xmmword_10011B440;
    v6[5] = xmmword_10011B450;
    v6[6] = xmmword_10011B460;
    v6[7] = xmmword_10011B470;
    v6[8] = vdupq_n_s64(0x3FABA5E353F7CED9uLL);
    v6[9] = xmmword_10011B480;
    v3[8] = [objc_opt_self() colorEffectMatrix:v6];
    *(v3 + 72) = 0;
    v5 = swift_allocObject();
    *(v5 + 1) = xmmword_1001186F0;
    result = [v4 effectWithBlurRadius:72.0];
    if (result)
    {
      v5[4] = result;
      *(v5 + 40) = 1;
LABEL_6:
      *a2 = v3;
      *(a2 + 8) = xmmword_10011B490;
      *(a2 + 24) = v5;
      *(a2 + 32) = xmmword_10011B4A0;
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

__n128 sub_10005D580@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = static Alignment.center.getter();
  v6 = v5;
  sub_10005D3AC(v3, &v11);
  v7 = v11;
  v8 = v13;
  result = v12;
  v10 = v14;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = result;
  *(a1 + 40) = v8;
  *(a1 + 48) = v10;
  return result;
}

uint64_t sub_10005D5F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for GlobalCoordinateSpace();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    GeometryProxy.size.getter();
    static CoordinateSpaceProtocol<>.global.getter();
    GeometryProxy.frame<A>(in:)();
    (*(v5 + 8))(v8, v4);
  }

  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect);
  return VisualEffect.offset(x:y:)();
}

uint64_t sub_10005D774()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_1000077C8(&qword_100174C20, &qword_10011BDA0);
  sub_1000077C8(&qword_100174C28, &qword_10011BDA8);
  sub_1000199C8(&qword_100174C30, &qword_100174C20, &qword_10011BDA0);
  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

uint64_t sub_10005D8EC()
{
  v0 = sub_1000077C8(&qword_100174BB8, &qword_10011BCE8);
  sub_1000154C0(v0, qword_1001746E8);
  sub_100007D20(v0, qword_1001746E8);
  sub_1000077C8(&qword_100174BC0, &qword_10011BCF0);
  sub_100007CCC(&qword_100174BC8, &qword_10011BCF8);
  sub_100007CCC(&qword_100174BD0, &qword_10011BD00);
  sub_100007CCC(&qword_100174BD8, &qword_10011BD08);
  sub_1000199C8(&qword_100174BE0, &qword_100174BD8, &qword_10011BD08);
  swift_getOpaqueTypeConformance2();
  sub_1000199C8(&qword_100174BE8, &qword_100174BD0, &qword_10011BD00);
  swift_getOpaqueTypeConformance2();
  return KeyframeTimeline.init<A>(initialValue:content:)();
}

uint64_t sub_10005DAB4@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_1000077C8(&qword_100174BC0, &qword_10011BCF0);
  v2 = *(v1 - 8);
  v48 = v1;
  v49 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v46 = &v36 - v4;
  v45 = sub_1000077C8(&qword_100174BC8, &qword_10011BCF8);
  v47 = *(v45 - 8);
  v5 = *(v47 + 64);
  __chkstk_darwin(v45);
  v44 = &v36 - v6;
  v43 = sub_1000077C8(&qword_100174BD0, &qword_10011BD00);
  v53 = *(v43 - 8);
  v7 = *(v53 + 64);
  __chkstk_darwin(v43);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v36 - v10;
  v11 = sub_1000077C8(&qword_100174BD8, &qword_10011BD08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  __chkstk_darwin(v19);
  v52 = &v36 - v20;
  swift_getKeyPath();
  sub_1000077C8(&qword_100174968, &qword_10011B6C8);
  sub_1000199C8(&qword_100174970, &qword_100174968, &qword_10011B6C8);
  KeyframeTrack.init(_:content:)();
  v21 = sub_1000199C8(&qword_100174BE0, &qword_100174BD8, &qword_10011BD08);
  static KeyframesBuilder.buildExpression<A>(_:)();
  v22 = *(v12 + 8);
  v51 = v18;
  v22(v18, v11);
  v39 = v22;
  v40 = v12 + 8;
  swift_getKeyPath();
  KeyframeTrack.init(_:content:)();
  static KeyframesBuilder.buildExpression<A>(_:)();
  v22(v15, v11);
  swift_getKeyPath();
  sub_1000077C8(&qword_100174980, &qword_10011B6F8);
  sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8);
  v23 = v41;
  KeyframeTrack.init(_:content:)();
  v24 = sub_1000199C8(&qword_100174BE8, &qword_100174BD0, &qword_10011BD00);
  v25 = v42;
  v26 = v23;
  v27 = v43;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v28 = *(v53 + 8);
  v53 += 8;
  v38 = v28;
  v28(v26, v27);
  v37 = v15;
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  v29 = v44;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v54 = &type metadata for SwapOutTransitionViewModifier.Value;
  v55 = v11;
  v56 = v11;
  v57 = v21;
  v58 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v45;
  v32 = v46;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v54 = &type metadata for SwapOutTransitionViewModifier.Value;
  v55 = v31;
  v56 = v27;
  v57 = OpaqueTypeConformance2;
  v58 = v24;
  swift_getOpaqueTypeConformance2();
  v33 = v48;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v49 + 8))(v32, v33);
  (*(v47 + 8))(v29, v31);
  v34 = v39;
  v39(v37, v11);
  v38(v25, v27);
  v34(v51, v11);
  return (v34)(v52, v11);
}

uint64_t sub_10005E16C(double a1)
{
  v2 = type metadata accessor for Spring();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1000077C8(&qword_100174968, &qword_10011B6C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)(v4);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v16 = a1;
  Spring.init(mass:stiffness:damping:allowOverDamping:)();
  v14[1] = 0;
  v15 = 1;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  sub_1000199C8(&qword_100174970, &qword_100174968, &qword_10011B6C8);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v12 = *(v5 + 8);
  v12(v9, v4);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (v12)(v11, v4);
}

uint64_t sub_10005E3CC()
{
  v0 = type metadata accessor for UnitCurve();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000077C8(&qword_100174980, &qword_10011B6F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  v12[1] = 0x4028000000000000;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (v10)(v9, v2);
}

uint64_t sub_10005E5C8()
{
  v0 = sub_1000077C8(&qword_100174BB8, &qword_10011BCE8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  if (qword_100172188 != -1)
  {
    swift_once();
  }

  v5 = sub_100007D20(v0, qword_1001746E8);
  (*(v1 + 16))(v4, v5, v0);
  KeyframeTimeline.duration.getter();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_10017F240 = v7;
  return result;
}

uint64_t sub_10005E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000625F8();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_10005E788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000625F8();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_10005E80C()
{
  v1 = *v0;
  if (qword_100172188 != -1)
  {
    swift_once();
  }

  v2 = sub_1000077C8(&qword_100174BB8, &qword_10011BCE8);
  sub_100007D20(v2, qword_1001746E8);
  KeyframeTimeline.value(time:)();
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  sub_1000077C8(&qword_100174D38, &qword_10011C040);
  sub_1000077C8(&qword_100174C48, &qword_10011BDB8);
  sub_1000199C8(&qword_100174D40, &qword_100174D38, &qword_10011C040);
  sub_100007CCC(&qword_100174C58, &qword_10011BDC0);
  sub_100007CCC(&qword_100174C60, &qword_10011BDC8);
  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

uint64_t sub_10005EA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1000077C8(&qword_100174B98, &qword_10011BCC8);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_1000077C8(&qword_100174BA0, &qword_10011BCD0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = a3 * 0.75;
  v16 = &v10[*(v7 + 44)];
  v17 = *(type metadata accessor for RoundedRectangle() + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = v15;
  v16[1] = v15;
  *(v16 + *(sub_1000077C8(&qword_100177710, &qword_100119680) + 36)) = 256;
  v20 = sub_1000077C8(&qword_100174BA8, &qword_10011BCD8);
  (*(*(v20 - 8) + 16))(v10, a1, v20);
  v21 = 0;
  if ((TransitionPhase.isIdentity.getter() & 1) == 0)
  {
    if (qword_100172190 != -1)
    {
      swift_once();
    }

    v21 = qword_10017F240;
  }

  sub_100021A84(v10, v14, &qword_100174B98, &qword_10011BCC8);
  *&v14[*(v11 + 36)] = v21;
  if (qword_100172190 != -1)
  {
    swift_once();
  }

  v22 = static Animation.timingCurve(_:_:_:_:duration:)();
  v23 = TransitionPhase.isIdentity.getter();
  sub_100021A84(v14, a2, &qword_100174BA0, &qword_10011BCD0);
  result = sub_1000077C8(&qword_100174BB0, &qword_10011BCE0);
  v25 = a2 + *(result + 36);
  *v25 = v22;
  *(v25 + 8) = v23 & 1;
  return result;
}

uint64_t sub_10005ED60()
{
  v0 = sub_1000077C8(&qword_100174B60, &qword_10011BC40);
  sub_1000154C0(v0, qword_100174700);
  sub_100007D20(v0, qword_100174700);
  sub_1000077C8(&qword_100174B68, &qword_10011BC48);
  sub_100007CCC(&qword_100174B70, &qword_10011BC50);
  sub_100007CCC(&qword_100174B78, &qword_10011BC58);
  sub_100007CCC(&qword_100174B80, &qword_10011BC60);
  sub_1000199C8(&qword_100174B88, &qword_100174B80, &qword_10011BC60);
  swift_getOpaqueTypeConformance2();
  sub_1000199C8(&qword_100174B90, &qword_100174B78, &qword_10011BC58);
  swift_getOpaqueTypeConformance2();
  return KeyframeTimeline.init<A>(initialValue:content:)();
}

uint64_t sub_10005EF2C@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_1000077C8(&qword_100174B68, &qword_10011BC48);
  v2 = *(v1 - 8);
  v51 = v1;
  v52 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v49 = &v39 - v4;
  v48 = sub_1000077C8(&qword_100174B70, &qword_10011BC50);
  v50 = *(v48 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v48);
  v47 = &v39 - v6;
  v46 = sub_1000077C8(&qword_100174B78, &qword_10011BC58);
  v58 = *(v46 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v46);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v39 - v10;
  v11 = sub_1000077C8(&qword_100174B80, &qword_10011BC60);
  v57 = *(v11 - 8);
  v12 = *(v57 + 64);
  __chkstk_darwin(v11);
  v54 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  __chkstk_darwin(v17);
  v56 = &v39 - v18;
  KeyPath = swift_getKeyPath();
  v39 = sub_1000077C8(&qword_100174978, &qword_10011B6F0);
  v19 = sub_100007CCC(&qword_100174980, &qword_10011B6F8);
  v40 = v19;
  v20 = sub_100007CCC(&qword_100174968, &qword_10011B6C8);
  v21 = sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8);
  v22 = sub_1000199C8(&qword_100174970, &qword_100174968, &qword_10011B6C8);
  v59 = &type metadata for Double;
  v60 = v19;
  v61 = v20;
  v62 = v21;
  v63 = v22;
  v42 = &opaque type descriptor for <<opaque return type of static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)>>;
  swift_getOpaqueTypeConformance2();
  KeyframeTrack.init(_:content:)();
  v41 = &protocol conformance descriptor for KeyframeTrack<A, B, C>;
  v23 = sub_1000199C8(&qword_100174B88, &qword_100174B80, &qword_10011BC60);
  static KeyframesBuilder.buildExpression<A>(_:)();
  v24 = v57 + 8;
  v25 = *(v57 + 8);
  v55 = v16;
  v25(v16, v11);
  KeyPath = v25;
  v57 = v24;
  swift_getKeyPath();
  v26 = v54;
  KeyframeTrack.init(_:content:)();
  static KeyframesBuilder.buildExpression<A>(_:)();
  v25(v26, v11);
  swift_getKeyPath();
  sub_1000077C8(&qword_100174990, &qword_10011B720);
  v59 = &type metadata for Double;
  v60 = v40;
  v61 = v40;
  v62 = v21;
  v63 = v21;
  swift_getOpaqueTypeConformance2();
  v27 = v44;
  KeyframeTrack.init(_:content:)();
  v28 = sub_1000199C8(&qword_100174B90, &qword_100174B78, &qword_10011BC58);
  v30 = v45;
  v29 = v46;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v31 = *(v58 + 8);
  v58 += 8;
  v42 = v31;
  v31(v27, v29);
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  v32 = v47;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v59 = &type metadata for SwapInTransitionViewModifier.Value;
  v60 = v11;
  v61 = v11;
  v62 = v23;
  v63 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v48;
  v35 = v49;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v59 = &type metadata for SwapInTransitionViewModifier.Value;
  v60 = v34;
  v61 = v29;
  v62 = OpaqueTypeConformance2;
  v63 = v28;
  swift_getOpaqueTypeConformance2();
  v36 = v51;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v52 + 8))(v35, v36);
  (*(v50 + 8))(v32, v34);
  v37 = KeyPath;
  KeyPath(v54, v11);
  v42(v30, v29);
  v37(v55, v11);
  return (v37)(v56, v11);
}

uint64_t sub_10005F6BC@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>)
{
  v34 = a1;
  v5 = type metadata accessor for Spring();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v30 = sub_1000077C8(&qword_100174968, &qword_10011B6C8);
  v33 = *(v30 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v30);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v29 = &v28 - v11;
  v12 = type metadata accessor for UnitCurve();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_1000077C8(&qword_100174980, &qword_10011B6F8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v31 = &v28 - v20;
  v35 = a2;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v21 = *(v15 + 8);
  v28 = v15 + 8;
  v32 = v21;
  v21(v18, v14);
  v37 = a3;
  Spring.init(mass:stiffness:damping:allowOverDamping:)();
  v35 = 0.0;
  v36 = 1;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  sub_1000199C8(&qword_100174970, &qword_100174968, &qword_10011B6C8);
  v22 = v29;
  v23 = v30;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v24 = *(v33 + 8);
  v24(v9, v23);
  v25 = v31;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v26 = v32;
  v32(v18, v14);
  v24(v22, v23);
  return v26(v25, v14);
}

uint64_t sub_10005FB10@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v21 = a1;
  v22 = a2;
  v4 = type metadata accessor for UnitCurve();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000077C8(&qword_100174980, &qword_10011B6F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  v23 = a3;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v17 = *(v7 + 8);
  v18 = v17(v13, v6);
  v23 = 0.0;
  v21(v18);
  LinearKeyframe.init(_:duration:timingCurve:)();
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v17(v10, v6);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v17(v10, v6);
  v17(v13, v6);
  return v17(v16, v6);
}

uint64_t sub_10005FDE4()
{
  v0 = sub_1000077C8(&qword_100174B60, &qword_10011BC40);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  if (qword_100172198 != -1)
  {
    swift_once();
  }

  v5 = sub_100007D20(v0, qword_100174700);
  (*(v1 + 16))(v4, v5, v0);
  KeyframeTimeline.duration.getter();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_10017F248 = v7;
  return result;
}

uint64_t sub_10005FF20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v2 = type metadata accessor for GlobalCoordinateSpace();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000077C8(&qword_100174C60, &qword_10011BDC8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = sub_1000077C8(&qword_100174C58, &qword_10011BDC0);
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  static UnitPoint.center.getter();
  v17 = type metadata accessor for EmptyVisualEffect();
  v18 = sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect);
  VisualEffect.scale(_:anchor:)();
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v3 + 8))(v6, v2);
  v36.origin.x = v20;
  v36.origin.y = v22;
  v36.size.width = v24;
  v36.size.height = v26;
  CGRectGetMidY(v36);
  GeometryProxy.size.getter();
  v34 = v17;
  v35 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  VisualEffect.offset(x:y:)();
  (*(v8 + 8))(v11, v7);
  v34 = v7;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  VisualEffect.blur(radius:opaque:)();
  return (*(v32 + 8))(v16, v28);
}

uint64_t sub_1000602B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000625A4();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_100060338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000625A4();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_1000603BC()
{
  v1 = *v0;
  if (qword_100172198 != -1)
  {
    swift_once();
  }

  v2 = sub_1000077C8(&qword_100174B60, &qword_10011BC40);
  sub_100007D20(v2, qword_100174700);
  KeyframeTimeline.value(time:)();
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  sub_1000077C8(&qword_100174D20, &qword_10011C038);
  sub_1000077C8(&qword_100174C48, &qword_10011BDB8);
  sub_1000199C8(&qword_100174D28, &qword_100174D20, &qword_10011C038);
  sub_100007CCC(&qword_100174C58, &qword_10011BDC0);
  sub_100007CCC(&qword_100174C60, &qword_10011BDC8);
  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

uint64_t sub_10006062C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1000077C8(&qword_100174B40, &qword_10011BC20);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_1000077C8(&qword_100174B48, &qword_10011BC28);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = a3 * 0.75;
  v16 = &v10[*(v7 + 44)];
  v17 = *(type metadata accessor for RoundedRectangle() + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = v15;
  v16[1] = v15;
  *(v16 + *(sub_1000077C8(&qword_100177710, &qword_100119680) + 36)) = 256;
  v20 = sub_1000077C8(&qword_100174B50, &qword_10011BC30);
  (*(*(v20 - 8) + 16))(v10, a1, v20);
  v21 = 0;
  if (TransitionPhase.isIdentity.getter())
  {
    if (qword_1001721A0 != -1)
    {
      swift_once();
    }

    v21 = qword_10017F248;
  }

  sub_100021A84(v10, v14, &qword_100174B40, &qword_10011BC20);
  *&v14[*(v11 + 36)] = v21;
  if (qword_1001721A0 != -1)
  {
    swift_once();
  }

  v22 = static Animation.timingCurve(_:_:_:_:duration:)();
  v23 = TransitionPhase.isIdentity.getter();
  sub_100021A84(v14, a2, &qword_100174B48, &qword_10011BC28);
  result = sub_1000077C8(&qword_100174B58, &qword_10011BC38);
  v25 = a2 + *(result + 36);
  *v25 = v22;
  *(v25 + 8) = v23 & 1;
  return result;
}

uint64_t sub_100060910()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  [v1 displayCornerRadius];

  sub_100060A0C();
  AnyTransition.init<A>(_:)();
  v2 = [v0 currentTraitCollection];
  [v2 displayCornerRadius];

  sub_100060A60();
  AnyTransition.init<A>(_:)();
  v3 = static AnyTransition.asymmetric(insertion:removal:)();

  return v3;
}

unint64_t sub_100060A0C()
{
  result = qword_1001748D8;
  if (!qword_1001748D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001748D8);
  }

  return result;
}

unint64_t sub_100060A60()
{
  result = qword_1001748E0;
  if (!qword_1001748E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001748E0);
  }

  return result;
}

uint64_t sub_100060AB4(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100174900, &unk_10011B650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s9AirDropUI27SwoopTransitionViewModifierV5ValueVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9AirDropUI27SwoopTransitionViewModifierV5ValueVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MoveUpEffectModifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MoveUpEffectModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_100060CE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_100060F94(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100060D5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100060E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_1000077C8(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_100060EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_1000077C8(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_100060F94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ColorScheme();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10006103C()
{
  result = qword_100174B10;
  if (!qword_100174B10)
  {
    sub_100007CCC(&qword_1001749B0, &qword_10011B770);
    sub_1000610F4();
    sub_1000199C8(&qword_100174B30, &qword_1001749B8, &qword_10011B778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174B10);
  }

  return result;
}

unint64_t sub_1000610F4()
{
  result = qword_100174B18;
  if (!qword_100174B18)
  {
    sub_100007CCC(&qword_100174998, &qword_10011B758);
    sub_1000199C8(&qword_100174B20, &qword_1001749A8, &qword_10011B768);
    sub_1000199C8(&qword_100174B28, &qword_1001749A0, &qword_10011B760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174B18);
  }

  return result;
}

uint64_t sub_1000612F0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    v9 = static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10003E81C(0xD00000000000002FLL, 0x8000000100123B50, &v15);
      _os_log_impl(&_mh_execute_header, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      sub_100007920(v12);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007B90(a1, 0);
    (*(v5 + 8))(v8, v4);
    return v15;
  }

  return a1;
}

uint64_t sub_1000614C4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v9 = static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10003E81C(1819242306, 0xE400000000000000, &v14);
      _os_log_impl(&_mh_execute_header, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      sub_100007920(v12);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100023CC8(a1, 0);
    (*(v5 + 8))(v8, v4);
    LOBYTE(a1) = v15;
  }

  return a1 & 1;
}

uint64_t sub_100061684@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&qword_100174C00, &qword_10011BD80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v20 - v11);
  sub_100007BA4(v2, &v20 - v11, &qword_100174C00, &qword_10011BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10003E81C(0x686353726F6C6F43, 0xEB00000000656D65, &v21);
      _os_log_impl(&_mh_execute_header, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      sub_100007920(v19);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100061928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100061970@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_10005BAC0(a1, a2);
}

unint64_t sub_10006197C()
{
  result = qword_100174C68;
  if (!qword_100174C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174C68);
  }

  return result;
}

uint64_t sub_1000619D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LumaTrackingBackdropView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LumaTrackingBackdropView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061AA0()
{
  v1 = *(type metadata accessor for LumaTrackingBackdropView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(sub_1000077C8(&qword_100174A60, &qword_10011B8C0) + 32);
  v8 = type metadata accessor for ColorScheme();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100061BA0(uint64_t a1)
{
  v2 = *(*(type metadata accessor for LumaTrackingBackdropView(0) - 8) + 80);

  return sub_10005C8A4(a1);
}

uint64_t sub_100061CA4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    a4();
    sub_1000199C8(&qword_100174CA8, &qword_1001775B0, &qword_10011BE40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100061D54()
{
  result = qword_100174C88;
  if (!qword_100174C88)
  {
    sub_100007CCC(&qword_100174B48, &qword_10011BC28);
    sub_100061DE0();
    sub_100061EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174C88);
  }

  return result;
}

unint64_t sub_100061DE0()
{
  result = qword_100174C90;
  if (!qword_100174C90)
  {
    sub_100007CCC(&qword_100174B40, &qword_10011BC20);
    sub_1000199C8(&qword_100174C98, &qword_100174B50, &qword_10011BC30);
    sub_1000199C8(&qword_1001735B8, &qword_100177710, &qword_100119680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174C90);
  }

  return result;
}

unint64_t sub_100061EC4()
{
  result = qword_100174CA0;
  if (!qword_100174CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174CA0);
  }

  return result;
}

unint64_t sub_100061F5C()
{
  result = qword_100174CB8;
  if (!qword_100174CB8)
  {
    sub_100007CCC(&qword_100174BA0, &qword_10011BCD0);
    sub_100061FE8();
    sub_1000620CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174CB8);
  }

  return result;
}

unint64_t sub_100061FE8()
{
  result = qword_100174CC0;
  if (!qword_100174CC0)
  {
    sub_100007CCC(&qword_100174B98, &qword_10011BCC8);
    sub_1000199C8(&qword_100174CC8, &qword_100174BA8, &qword_10011BCD8);
    sub_1000199C8(&qword_1001735B8, &qword_100177710, &qword_100119680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174CC0);
  }

  return result;
}

unint64_t sub_1000620CC()
{
  result = qword_100174CD0;
  if (!qword_100174CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174CD0);
  }

  return result;
}

unint64_t sub_100062168()
{
  result = qword_100174CE8;
  if (!qword_100174CE8)
  {
    sub_100007CCC(&qword_100174BF0, &qword_10011BD70);
    sub_1000199C8(&qword_100174CF0, &qword_100174BF8, &qword_10011BD78);
    sub_1000199C8(&unk_100177AF0, &qword_100174CF8, &qword_10011BE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174CE8);
  }

  return result;
}

unint64_t sub_100062250()
{
  result = qword_100174D00;
  if (!qword_100174D00)
  {
    sub_100007CCC(&qword_100174C18, &qword_10011BD98);
    sub_1000622DC();
    sub_100062394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D00);
  }

  return result;
}

unint64_t sub_1000622DC()
{
  result = qword_100174D08;
  if (!qword_100174D08)
  {
    sub_100007CCC(&qword_100174C08, &qword_10011BD88);
    sub_1000199C8(&qword_100174D10, &qword_100174C10, &qword_10011BD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D08);
  }

  return result;
}

unint64_t sub_100062394()
{
  result = qword_100174D18;
  if (!qword_100174D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D18);
  }

  return result;
}

uint64_t sub_1000623E8()
{
  sub_100007CCC(&qword_100174C20, &qword_10011BDA0);
  sub_100007CCC(&qword_100174C28, &qword_10011BDA8);
  sub_1000199C8(&qword_100174C30, &qword_100174C20, &qword_10011BDA0);
  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100062584@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_10005FF20(a1, a2);
}

unint64_t sub_1000625A4()
{
  result = qword_100174D30;
  if (!qword_100174D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D30);
  }

  return result;
}

unint64_t sub_1000625F8()
{
  result = qword_100174D48;
  if (!qword_100174D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D48);
  }

  return result;
}

unint64_t sub_10006264C()
{
  result = qword_100174D60;
  if (!qword_100174D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D60);
  }

  return result;
}

uint64_t sub_1000626D8(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_100007CCC(a2, a3);
  sub_100007CCC(&qword_100174C48, &qword_10011BDB8);
  sub_1000199C8(a4, a2, a3);
  sub_100007CCC(&qword_100174C58, &qword_10011BDC0);
  sub_100007CCC(&qword_100174C60, &qword_10011BDC8);
  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100062870()
{
  result = qword_100174D68;
  if (!qword_100174D68)
  {
    sub_100007CCC(&qword_100174D58, &unk_10011C050);
    sub_1000199C8(&qword_100174D70, &qword_100174D50, &qword_10011C048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D68);
  }

  return result;
}

uint64_t sub_100062968()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000629CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100062A14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100062A64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100062AC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100062B24()
{
  result = qword_100174E20;
  if (!qword_100174E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174E20);
  }

  return result;
}

id sub_100062B78(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1000077C8(&qword_100174E50, &unk_10011C258);
  UIViewRepresentableContext.coordinator.getter();
  v5 = *(v8 + 24);

  v6 = [v5 view];

  sub_1000639B8(a1, v3, v4);
  return v6;
}

void sub_100062C2C(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactAvatarView.Coordinator();
  v2 = swift_allocObject();
  v3 = [objc_allocWithZone(CNContactStore) init];
  *(v2 + 16) = v3;
  v4 = [objc_opt_self() settingsWithContactStore:v3 threeDTouchEnabled:0];
  v5 = [objc_allocWithZone(CNAvatarViewController) initWithSettings:v4];

  *(v2 + 24) = v5;
  *a1 = v2;
}

uint64_t sub_100062CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000634B0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100062D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000634B0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100062DC4()
{
  sub_1000634B0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100062DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = type metadata accessor for Image.ResizingMode();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000077C8(&qword_100174E38, &qword_10011C240);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for iosmacHardware();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v47 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = static Color.white.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v71[3] = *&v71[27];
  *&v71[11] = *&v71[35];
  *&v71[19] = *&v71[43];

  iosmacHardware.init(_:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000159AC(v10, &qword_100174E38, &qword_10011C240);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    (*(v12 + 32))(v47, v10, v11);
    iosmacHardware.image.getter();
    v28 = v44;
    v29 = v45;
    (*(v44 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v45);
    v46 = Image.resizable(capInsets:resizingMode:)();

    (*(v28 + 8))(v6, v29);
    LOBYTE(v28) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v27 = v33;
    LOBYTE(v70[0]) = 1;
    LOBYTE(v62[0]) = 0;
    v23 = 1;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    (*(v12 + 8))(v47, v11);
    v15 = v46;
    v16 = v72;
    v17 = v73;
    v18 = v74;
    v19 = v75;
    v22 = v28;
    v20 = v76;
    v21 = v77;
  }

  v34 = v48;
  *&v61[0] = v48;
  WORD4(v61[0]) = 256;
  *(v61 + 10) = *v71;
  *(&v61[1] + 10) = *&v71[8];
  *(&v61[2] + 10) = *&v71[16];
  *(&v61[3] + 1) = *&v71[23];
  v62[0] = v15;
  *&v53[47] = v61[1];
  *&v53[55] = v61[2];
  *&v53[39] = v61[0];
  v62[1] = 0;
  *&v63 = v23;
  *(&v63 + 1) = v22;
  *&v64 = v24;
  *(&v64 + 1) = v25;
  *&v65 = v26;
  *(&v65 + 1) = v27;
  *&v66 = 0;
  *(&v66 + 1) = v16;
  *&v67 = v17;
  *(&v67 + 1) = v18;
  *&v68 = v19;
  *(&v68 + 1) = v20;
  v69 = v21;
  v54 = v63;
  v55 = v64;
  *&v53[63] = v61[3];
  *&v53[71] = v15;
  v60 = v21;
  v58 = v67;
  v59 = v68;
  v56 = v65;
  v57 = v66;
  v35 = v61[0];
  v36 = v61[1];
  v37 = v61[3];
  *(a2 + 32) = v61[2];
  *(a2 + 48) = v37;
  *a2 = v35;
  *(a2 + 16) = v36;
  v38 = v54;
  v39 = v56;
  v40 = v57;
  *(a2 + 96) = v55;
  *(a2 + 112) = v39;
  *(a2 + 64) = v15;
  *(a2 + 80) = v38;
  v41 = v58;
  v42 = v59;
  *(a2 + 176) = v60;
  *(a2 + 144) = v41;
  *(a2 + 160) = v42;
  *(a2 + 128) = v40;
  v70[0] = v15;
  v70[1] = 0;
  v70[2] = v23;
  v70[3] = v22;
  v70[4] = v24;
  v70[5] = v25;
  v70[6] = v26;
  v70[7] = v27;
  v70[8] = 0;
  v70[9] = v16;
  v70[10] = v17;
  v70[11] = v18;
  v70[12] = v19;
  v70[13] = v20;
  v70[14] = v21;
  sub_100007BA4(v61, &v49, &qword_100174E40, &qword_10011C248);
  sub_100007BA4(v62, &v49, &qword_100174E48, &qword_10011C250);
  sub_1000159AC(v70, &qword_100174E48, &qword_10011C250);
  v49 = v34;
  v50 = 256;
  v51 = *v71;
  v52 = *&v71[8];
  *v53 = *&v71[16];
  *&v53[7] = *&v71[23];
  return sub_1000159AC(&v49, &qword_100174E40, &qword_10011C248);
}

double sub_10006335C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = static Alignment.center.getter();
  v8 = v7;
  sub_100062DEC(v3, &v16);
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v40[8] = v24;
  v40[9] = v25;
  v40[10] = v26;
  v40[4] = v20;
  v40[5] = v21;
  v40[6] = v22;
  v40[7] = v23;
  v40[0] = v16;
  v40[1] = v17;
  v39 = v27;
  v41 = v27;
  v40[2] = v18;
  v40[3] = v19;
  sub_100007BA4(&v28, &v15, &qword_100174E30, &qword_10011C238);
  sub_1000159AC(v40, &qword_100174E30, &qword_10011C238);
  *a1 = v6;
  *(a1 + 8) = v8;
  v9 = v37;
  *(a1 + 144) = v36;
  *(a1 + 160) = v9;
  *(a1 + 176) = v38;
  *(a1 + 192) = v39;
  v10 = v33;
  *(a1 + 80) = v32;
  *(a1 + 96) = v10;
  v11 = v35;
  *(a1 + 112) = v34;
  *(a1 + 128) = v11;
  v12 = v29;
  *(a1 + 16) = v28;
  *(a1 + 32) = v12;
  result = *&v30;
  v14 = v31;
  *(a1 + 48) = v30;
  *(a1 + 64) = v14;
  return result;
}

unint64_t sub_1000634B0()
{
  result = qword_100174E28;
  if (!qword_100174E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174E28);
  }

  return result;
}

uint64_t sub_100063504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = type metadata accessor for Image.ResizingMode();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v34);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 80);
  v61 = *(a1 + 64);
  v62 = v8;
  v63 = *(a1 + 96);
  v9 = *(a1 + 16);
  v57 = *a1;
  v58 = v9;
  v10 = *(a1 + 48);
  v59 = *(a1 + 32);
  v60 = v10;
  if (*(&v61 + 1) >> 62)
  {
    v11 = *(&v58 + 1);
    v12 = v58;
    sub_1000555B0(&v57, &v43);

    v38 = __PAIR128__(v11, v12);
    *&v39 = 0x4049000000000000;
    BYTE8(v39) = 1;
    sub_100062B24();
    sub_100063CDC();
  }

  else
  {
    v38 = v57;
    *&v39 = 0;
    BYTE8(v39) = 0;
    sub_100062B24();
    sub_100063CDC();
  }

  _ConditionalContent<>.init(storage:)();
  v13 = v43;
  v14 = v44;
  v15 = v45;
  v16 = *(a1 + 104);
  if (v16)
  {
    v33 = v43;
    v32 = v16;
    Image.init(uiImage:)();
    v17 = v34;
    (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v34);
    v31 = Image.resizable(capInsets:resizingMode:)();

    (*(v4 + 8))(v7, v17);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v18 = v51;
    v19 = v52;
    v20 = v53;
    LOBYTE(v17) = v15;
    v21 = v54;
    v22 = v55;
    v23 = v56;

    v24 = v31;
    v13 = v33;
    LOBYTE(v43) = v19;
    LOBYTE(v38) = v21;
    v15 = v17;
    v25 = v19;
    v26 = v38;
    v16 = 0x3FF0000000000000;
  }

  else
  {
    v24 = 0;
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v23 = 0;
    v26 = 0;
    v25 = 0;
  }

  v37 = v15;
  *&v38 = v24;
  *(&v38 + 1) = v18;
  *&v39 = v25;
  *(&v39 + 1) = v20;
  *&v40 = v26;
  *(&v40 + 1) = v22;
  *&v41 = v23;
  *(&v41 + 1) = v16;
  v42 = v16;
  *(&v36[4] + 7) = v16;
  *(&v36[1] + 7) = v39;
  *(&v36[2] + 7) = v40;
  *(&v36[3] + 7) = v41;
  *(v36 + 7) = v38;
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  v27 = v36[1];
  *(a2 + 25) = v36[0];
  v28 = v36[2];
  v29 = v36[3];
  *(a2 + 88) = *(&v36[3] + 15);
  *(a2 + 73) = v29;
  *(a2 + 57) = v28;
  *(a2 + 41) = v27;
  *&v43 = v24;
  *(&v43 + 1) = v18;
  v44 = v25;
  v45 = v20;
  v46 = v26;
  v47 = v22;
  v48 = v23;
  v49 = v16;
  v50 = v16;
  sub_100063D30();
  sub_100007BA4(&v38, &v35, &qword_100174E78, &qword_10011C3B8);
  sub_1000159AC(&v43, &qword_100174E78, &qword_10011C3B8);
  return sub_100063D38();
}

__n128 sub_1000638B8@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v20[4] = v1[4];
  v20[5] = v3;
  v20[6] = v1[6];
  v4 = v1[1];
  v20[0] = *v1;
  v20[1] = v4;
  v5 = v1[3];
  v20[2] = v1[2];
  v20[3] = v5;
  v6 = static Alignment.bottomTrailing.getter();
  v8 = v7;
  sub_100063504(v20, &v13);
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v28[0] = v13;
  v28[1] = v14;
  v28[2] = v15;
  v28[3] = v16;
  v28[4] = v17;
  v28[5] = v18;
  v29 = v19;
  sub_100007BA4(&v21, &v12, &qword_100174E70, &qword_10011C3B0);
  sub_1000159AC(v28, &qword_100174E70, &qword_10011C3B0);
  *a1 = v6;
  *(a1 + 8) = v8;
  v9 = v26;
  *(a1 + 80) = v25;
  *(a1 + 96) = v9;
  *(a1 + 112) = v27;
  v10 = v22;
  *(a1 + 16) = v21;
  *(a1 + 32) = v10;
  result = v24;
  *(a1 + 48) = v23;
  *(a1 + 64) = result;
  return result;
}

void sub_1000639B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    goto LABEL_3;
  }

  sub_1000077C8(&qword_100174E50, &unk_10011C258);
  UIViewRepresentableContext.coordinator.getter();
  v3 = *(v10 + 16);

  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 contactForIdentifier:v4];

  if (!v5)
  {
LABEL_3:
    v5 = [objc_allocWithZone(CNMutableContact) init];
  }

  sub_1000077C8(&qword_100174E50, &unk_10011C258);
  UIViewRepresentableContext.coordinator.getter();
  v6 = *(v10 + 24);

  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100118700;
  *(v7 + 32) = v5;
  sub_100063B3C();
  v8 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setContacts:isa];
}

unint64_t sub_100063B3C()
{
  result = qword_100174E58;
  if (!qword_100174E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100174E58);
  }

  return result;
}

__n128 sub_100063B94(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100063BB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 76);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_100063C08(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 112) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = (v4 >> 2) << 32;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100063CDC()
{
  result = qword_100177C10;
  if (!qword_100177C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177C10);
  }

  return result;
}

uint64_t sub_100063D70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100063DF4()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100174E90);
  v1 = sub_100007D20(v0, qword_100174E90);
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F338);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100063F24(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_activeLayoutMode) = a1;
  v2 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView;
  v3 = *(v1 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView);
  if (v3)
  {
    v4 = v3;
    [v4 setHidden:sub_10006769C() & 1];

    v5 = *(v1 + v2);
    if (v5)
    {
      v6 = v5;
      [*&v6[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progressMicaView] setHidden:sub_10006769C() & 1];
    }
  }
}

uint64_t sub_100064084(uint64_t a1)
{
  v2 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for SFAirDropSend.Transfer.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000159AC(v13, &qword_100172FD0, &qword_10011A210);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    sub_100069EAC(a1 + v19, v5);
    v20 = sub_1000643D0(v9, v5);
    sub_1000159AC(v5, &unk_100174FA0, &qword_10011A700);
    (*(v23 + 8))(v9, v24);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v20 = sub_100069F1C(v18);
    (*(v15 + 8))(v18, v14);
  }

  return v20;
}

uint64_t sub_1000643D0(uint64_t a1, uint64_t a2)
{
  v116 = a2;
  v3 = type metadata accessor for SFAirDropReceive.Failure();
  v114 = *(v3 - 8);
  v115 = v3;
  v4 = *(v114 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v113 = &v112 - v8;
  v9 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v112 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v112 - v19;
  v21 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, a1, v21);
  v26 = (*(v22 + 88))(v25, v21);
  if (v26 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    (*(v22 + 96))(v25, v21);
    v27 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v27 - 8) + 8))(v25, v27);
    return 4;
  }

  v112 = v25;
  if (v26 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    v28 = v112;
    (*(v22 + 96))(v112, v21);
    v29 = &unk_100173088;
    v30 = &unk_10011C520;
LABEL_5:
    v31 = *(sub_1000077C8(v29, v30) + 48);
    v32 = &unk_100174F80;
    v33 = &unk_10011AE60;
LABEL_6:
    v34 = sub_1000077C8(v32, v33);
    (*(*(v34 - 8) + 8))(&v28[v31], v34);
    v35 = type metadata accessor for SFAirDrop.ContactInfo();
    (*(*(v35 - 8) + 8))(v28, v35);
    return 4;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
  {
    v37 = v112;
    (*(v22 + 96))(v112, v21);
    v38 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v38 - 8) + 8))(v37, v38);
    return 2;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    v39 = v112;
    (*(v22 + 96))(v112, v21);
    v40 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
    v41 = v40[12];
    v42 = *&v39[v40[16] + 8];

    v43 = v40[20];
    v44 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v44 - 8) + 8))(&v39[v43], v44);
    v45 = type metadata accessor for SFAirDrop.Progress();
LABEL_16:
    (*(*(v45 - 8) + 8))(&v39[v41], v45);
    v48 = type metadata accessor for SFAirDropReceive.ItemDestination();
LABEL_17:
    (*(*(v48 - 8) + 8))(v39, v48);
    return 3;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
  {
    v39 = v112;
    (*(v22 + 96))(v112, v21);
    v46 = sub_1000077C8(&unk_100173CD0, &unk_10011C510);
    v47 = *&v39[*(v46 + 48)];

    v41 = *(v46 + 80);
    v45 = type metadata accessor for SFAirDrop.DeclineAction();
    goto LABEL_16;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    v49 = v112;
    (*(v22 + 96))(v112, v21);
    v50 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    v51 = *&v49[*(v50 + 48)];

    v52 = *(v50 + 64);
    v53 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v53 - 8) + 8))(&v49[v52], v53);
    v54 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v54 - 8) + 8))(v49, v54);
    return 4;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentIntervention(_:))
  {
    v55 = v112;
    (*(v22 + 96))(v112, v21);
    v56 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    v57 = *&v55[*(v56 + 48)];

    v58 = *(v56 + 64);
LABEL_23:
    v59 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v59 - 8) + 8))(&v55[v58], v59);
    v60 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v60 - 8) + 8))(v55, v60);
    return 2;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.importing(_:))
  {
    v61 = v112;
    (*(v22 + 96))(v112, v21);
    v62 = *(sub_1000077C8(&unk_100174F60, &qword_10011C4C0) + 48);
LABEL_26:
    v63 = *&v61[v62];

    v64 = type metadata accessor for SFAirDropReceive.ItemDestination();
LABEL_27:
    (*(*(v64 - 8) + 8))(v61, v64);
    return 3;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    v65 = v112;
    (*(v22 + 96))(v112, v21);
    v66 = sub_1000077C8(&qword_100173078, &unk_100118F60);
    v67 = *&v65[v66[12]];

    v68 = *&v65[v66[16]];

    v69 = v66[20];
    sub_100069EAC(v116, v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1000159AC(v12, &unk_100174FA0, &qword_10011A700);
    }

    else
    {
      (*(v14 + 32))(v20, v12, v13);
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v74 = v73;
      v75 = *(v14 + 8);
      v75(v18, v13);
      v75(v20, v13);
      if (v74 > 7.0)
      {
        v76 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
        (*(*(v76 - 8) + 8))(&v65[v69], v76);
        v77 = type metadata accessor for SFAirDropReceive.ItemDestination();
        (*(*(v77 - 8) + 8))(v65, v77);
        return 2;
      }
    }

    v78 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v78 - 8) + 8))(&v65[v69], v78);
    v79 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v79 - 8) + 8))(v65, v79);
    return 4;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:))
  {
    v55 = v112;
    (*(v22 + 96))(v112, v21);
    v70 = sub_1000077C8(&qword_100173078, &unk_100118F60);
    v71 = *&v55[v70[12]];

    v72 = *&v55[v70[16]];

    v58 = v70[20];
    goto LABEL_23;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.opening(_:))
  {
    v61 = v112;
    (*(v22 + 96))(v112, v21);
    v80 = sub_1000077C8(&unk_100174FE0, &qword_10011C600);
    v81 = *&v61[*(v80 + 48)];

    v62 = *(v80 + 64);
    goto LABEL_26;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
  {
    v28 = v112;
    (*(v22 + 96))(v112, v21);
    v31 = *(sub_1000077C8(&qword_100173080, &unk_100118F80) + 48);
    v32 = &unk_100173CB0;
    v33 = &unk_10011AE50;
    goto LABEL_6;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.importingReceivedContact(_:))
  {
    v61 = v112;
    (*(v22 + 96))(v112, v21);
    v64 = type metadata accessor for SFAirDrop.ContactInfo();
    goto LABEL_27;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
  {
    v28 = v112;
    (*(v22 + 96))(v112, v21);
    v29 = &unk_100174FD0;
    v30 = &unk_100118F70;
    goto LABEL_5;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:))
  {
    v82 = v112;
    (*(v22 + 96))(v112, v21);
    v83 = *(sub_1000077C8(&qword_100174FC8, &qword_100121680) + 48);
    v84 = type metadata accessor for SFAirDrop.ContactRequest();
    v85 = *(*(v84 - 8) + 8);
    v85(&v82[v83], v84);
    v85(v82, v84);
    return 3;
  }

  v86 = v26;
  if (v26 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
  {
    v39 = v112;
    (*(v22 + 96))(v112, v21);
    v87 = sub_1000077C8(&qword_100174FC0, &unk_10011C5F0);
    v88 = v87[12];
    v89 = *&v39[v87[16] + 8];

    v90 = *&v39[v87[20]];

    v91 = *&v39[v87[24]];

    v92 = *&v39[v87[28]];

    v93 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v93 - 8) + 8))(&v39[v88], v93);
    v48 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    goto LABEL_17;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    v94 = v112;
    (*(v22 + 96))(v112, v21);
    v95 = sub_1000077C8(&qword_100174FB0, &unk_10011C5E0);
    v97 = v113;
    v96 = v114;
    v98 = &v94[*(v95 + 48)];
    v99 = v115;
    (*(v114 + 32))(v113, v98, v115);
    (*(v96 + 16))(v7, v97, v99);
    v100 = (*(v96 + 88))(v7, v99);
    if (v100 == enum case for SFAirDropReceive.Failure.unsupportedType(_:))
    {
      v101 = v114;
      v102 = v115;
      (*(v114 + 8))(v113, v115);
      (*(v101 + 96))(v7, v102);
      v103 = *(v7 + 1);

      v104 = *(sub_1000077C8(&qword_100174FB8, &unk_100121C50) + 48);
      v105 = type metadata accessor for URL();
      (*(*(v105 - 8) + 8))(&v7[v104], v105);
LABEL_55:
      v108 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
      (*(*(v108 - 8) + 8))(v112, v108);
      return 4;
    }

    if (v100 == enum case for SFAirDropReceive.Failure.unexpected(_:))
    {
      v106 = *(v114 + 8);
      v107 = v115;
      v106(v113, v115);
      v106(v7, v107);
      goto LABEL_55;
    }

    if (v100 == enum case for SFAirDropReceive.Failure.declined(_:) || v100 == enum case for SFAirDropReceive.Failure.askDismissed(_:))
    {
LABEL_63:
      (*(v114 + 8))(v113, v115);
      v109 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
      (*(*(v109 - 8) + 8))(v112, v109);
      return 2;
    }

    if (v100 == enum case for SFAirDropReceive.Failure.senderCancelled(_:))
    {
      goto LABEL_65;
    }

    if (v100 == enum case for SFAirDropReceive.Failure.receiverCancelled(_:) || v100 == enum case for SFAirDropReceive.Failure.mixedTypes(_:))
    {
      goto LABEL_63;
    }

    if (v100 == enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:))
    {
      goto LABEL_65;
    }

    if (v100 == enum case for SFAirDropReceive.Failure.missingOwnContact(_:))
    {
      goto LABEL_63;
    }

    if (v100 == enum case for SFAirDropReceive.Failure.streamError(_:) || v100 == enum case for SFAirDropReceive.Failure.askNotHandled(_:) || v100 == enum case for SFAirDropReceive.Failure.incompleteTransfer(_:) || v100 == enum case for SFAirDropReceive.Failure.badRequest(_:) || v100 == enum case for SFAirDropReceive.Failure.moveToAppFailed(_:) || v100 == enum case for SFAirDropReceive.Failure.insufficientStorage(_:))
    {
LABEL_65:
      (*(v114 + 8))(v113, v115);
      goto LABEL_55;
    }

    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v110._countAndFlagsBits = 0xD00000000000002ALL;
    v110._object = 0x80000001001240F0;
    String.append(_:)(v110);
    _print_unlocked<A, B>(_:_:)();
LABEL_78:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.legacyTransferState(_:))
  {
    return sub_100065580();
  }

  result = 3;
  if (v86 != enum case for SFAirDropReceive.Transfer.State.created(_:) && v86 != enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:) && v86 != enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:))
  {
    if (v86 == enum case for SFAirDropReceive.Transfer.State.waitingForContactExchangeRequest(_:))
    {
      return 2;
    }

    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v117 = 0xD00000000000001CLL;
    v118 = 0x80000001001240D0;
    sub_10006A8F4(&qword_100173D78, &type metadata accessor for SFAirDropReceive.Transfer.State);
    v111._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v111);

    goto LABEL_78;
  }

  return result;
}

uint64_t sub_100065580()
{
  v1 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21[-v3];
  v5 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
  v11 = static NSUserDefaults.airdrop.getter();
  v12 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();

  if (qword_100172140 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v21[15];
  if (SFAirDropReceive.Transfer.State.sfTransferState.getter() == 9)
  {
    v14 = static NSUserDefaults.airdrop.getter();
    v15 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();
  }

  else
  {
    v15 = 0;
  }

  if (SFAirDropReceive.Transfer.State.sfTransferState.getter() != 3)
  {
    v13 &= v15;
  }

  v16 = SFAirDropReceive.Transfer.State.sfTransferState.getter() == 7;
  SFAirDropReceive.Transfer.State.permissionRequest.getter();
  (*(v6 + 8))(v9, v5);
  v17 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v18 = (*(*(v17 - 8) + 48))(v4, 1, v17);
  sub_1000159AC(v4, &qword_100173D50, &unk_10011D120);
  v19 = v13 | v16;
  if (v18 == 1)
  {
    if ((v19 & 1) == 0)
    {
      return 3;
    }
  }

  else if (((v19 | v12) & 1) == 0)
  {
    return 3;
  }

  return 4;
}

id sub_1000659BC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterView] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterViewCustomModeLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconViewDefaultModeLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressViewDefaultModeLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisView] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisViewMinimalModeLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_cancellableObservers] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_contentRole] = 2;
  v3 = &v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_maximumLayoutMode] = 4;
  v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_preventsInteractiveDismissal] = 0;
  v4 = SBUISystemApertureElementIdentifierAirDrop;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_elementIdentifier] = SBUISystemApertureElementIdentifierAirDrop;
  v5 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_keyColor;
  v6 = objc_allocWithZone(UIColor);
  v7 = v4;
  *&v1[v5] = [v6 initWithRed:0.246 green:0.6 blue:1.0 alpha:1.0];
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AirDropSystemApertureViewController();
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

void sub_100065B78()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v68 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v63 - v7;
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AirDropSystemApertureViewController();
  v74.receiver = v0;
  v74.super_class = v12;
  objc_msgSendSuper2(&v74, "viewDidLoad");
  v13 = [objc_allocWithZone(UIColor) initWithRed:0.043 green:0.608 blue:1.0 alpha:1.0];
  v66 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession;
  v14 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession];
  type metadata accessor for AirDropTransferSession();
  sub_10006A8F4(&qword_100173460, type metadata accessor for AirDropTransferSession);

  v15 = ObservedObject.init(wrappedValue:)();
  v17 = v16;
  v18 = [objc_allocWithZone(UIColor) initWithRed:0.043 green:0.608 blue:1.0 alpha:1.0];
  if (qword_100172140 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = v69;
  v20 = objc_allocWithZone(sub_1000077C8(&unk_100173470, &qword_100119520));
  v69 = v15;
  v70 = v17;
  v71 = 1;
  v72 = v18;
  v73 = v19;
  v21 = UIHostingController.init(rootView:)();
  v22 = [v21 view];
  if (v22)
  {
    v23 = v22;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [v1 view];
    if (!v24)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v25 = v24;
    [v24 addSubview:v23];

    v26 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterView];
    *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterView] = v23;
  }

  v65 = v21;
  v27 = type metadata accessor for AirDropSystemApertureIconView();
  v28 = objc_allocWithZone(v27);
  sub_1000F43A4(2, 0x3FF0000000000000, 0);
  v30 = v29;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [v1 view];
  if (!v31)
  {
    __break(1u);
    goto LABEL_19;
  }

  v32 = v31;
  [v31 addSubview:v30];

  v33 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView];
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView] = v30;
  v64 = v30;

  v34 = objc_allocWithZone(type metadata accessor for AirDropSystemApertureProgressView());
  v35 = v13;
  sub_100109044(v35, 8, 1, 0, 0x3FF0000000000000, 0);
  v37 = v36;
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = v38;
  [v38 addSubview:v37];

  v40 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView;
  v41 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView];
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView] = v37;
  v63 = v37;

  v42 = objc_allocWithZone(v27);
  sub_1000F43A4(2, 0x3FF0000000000000, 0);
  v44 = v43;
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  v45 = [v1 view];
  if (!v45)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v46 = v45;
  [v45 addSubview:v44];

  v47 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisView];
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisView] = v44;
  v48 = v44;

  v49 = [v1 view];
  if (!v49)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v50 = v49;
  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];

  v51 = *&v1[v40];
  if (v51)
  {
    v52 = v51;
    [v52 setHidden:sub_10006769C() & 1];

    v53 = *&v1[v40];
    if (v53)
    {
      v54 = v53;
      [*&v54[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progressMicaView] setHidden:sub_10006769C() & 1];
    }
  }

  v55 = UIAccessibilityAnnouncementNotification;
  v56 = *&v1[v66];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v57 = type metadata accessor for SFAirDropSend.Transfer.State();
  (*(*(v57 - 8) + 48))(v8, 1, v57);
  sub_1000159AC(v8, &qword_100172FD0, &qword_10011A210);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v58 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v55, v58);

  if (qword_1001721A8 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_100007D20(v59, qword_100174E90);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "View did load", v62, 2u);
  }
}

void sub_10006634C()
{
  v1 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterView];
  if (!v1)
  {
    goto LABEL_25;
  }

  v2 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterViewCustomModeLayoutConstraints;
  v3 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterViewCustomModeLayoutConstraints];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v35 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterViewCustomModeLayoutConstraints];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_25;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001191F0;
  v5 = v1;
  v6 = [v5 leadingAnchor];
  v7 = &off_10016E000;
  v8 = [v0 view];
  if (!v8)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v9 = v8;
  v10 = [v8 leadingAnchor];

  v11 = &off_10016E000;
  v12 = [v6 constraintEqualToAnchor:v10];

  *(v4 + 32) = v12;
  v13 = [v5 trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v4 + 40) = v17;
  v18 = [v5 topAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v4 + 48) = v22;
  v23 = [v5 bottomAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v4 + 56) = v27;
  v28 = *&v0[v2];
  *&v0[v2] = v4;

  v29 = *&v0[v2];
  if (v29 >> 62)
  {
    if (v29 < 0)
    {
      v36 = *&v0[v2];
    }

    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_10;
    }

LABEL_24:

    goto LABEL_25;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (v30 < 1)
  {
    __break(1u);
    goto LABEL_61;
  }

  v31 = 0;
  do
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v32 = *(v29 + 8 * v31 + 32);
    }

    v34 = v32;
    ++v31;
    LODWORD(v33) = 1144750080;
    [v32 setPriority:v33];
  }

  while (v30 != v31);

LABEL_25:
  if (!*&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView])
  {
    return;
  }

  v11 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView];
  if (!v11)
  {
    return;
  }

  v7 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisView];
  if (!v7)
  {
    return;
  }

  v111 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView];
  v37 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisViewMinimalModeLayoutConstraints;
  v38 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisViewMinimalModeLayoutConstraints];
  if (v38 >> 62)
  {
    if (v38 < 0)
    {
      v42 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisViewMinimalModeLayoutConstraints];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_30;
    }
  }

  else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_30:
    v39 = v7;
    v40 = v111;
    v41 = v11;
    goto LABEL_44;
  }

  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_10011C3D0;
  v44 = v7;
  v45 = v111;
  v46 = v11;
  v47 = [v44 widthAnchor];
  v48 = [v47 constraintEqualToConstant:24.0];

  *(v43 + 32) = v48;
  v49 = [v44 heightAnchor];

  v50 = [v49 constraintEqualToConstant:24.0];
  *(v43 + 40) = v50;
  v51 = *&v0[v37];
  *&v0[v37] = v43;

  v5 = *&v0[v37];
  if (v5 >> 62)
  {
LABEL_61:
    v52 = _CocoaArrayWrapper.endIndex.getter();
    if (!v52)
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  v52 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v52)
  {
    goto LABEL_44;
  }

LABEL_37:
  if (v52 < 1)
  {
    __break(1u);
    goto LABEL_91;
  }

  v53 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v54 = *(v5 + 8 * v53 + 32);
    }

    v56 = v54;
    ++v53;
    LODWORD(v55) = 1144750080;
    [v54 setPriority:v55];
  }

  while (v52 != v53);

LABEL_44:
  v57 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconViewDefaultModeLayoutConstraints;
  v58 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconViewDefaultModeLayoutConstraints];
  if (!(v58 >> 62))
  {
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_67;
    }

LABEL_46:
    v109 = v7;
    v59 = [v0 view];
    if (!v59)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v60 = v59;
    v61 = [v59 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

    sub_1000077C8(&unk_100172E80, &unk_100118B40);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1001191F0;
    v63 = v111;
    v64 = [v63 centerXAnchor];
    v65 = [v61 centerXAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];

    *(v62 + 32) = v66;
    v67 = [v63 centerYAnchor];
    v108 = v61;
    v68 = [v61 centerYAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];

    *(v62 + 40) = v69;
    v70 = [v63 widthAnchor];
    v71 = [v70 constraintEqualToConstant:24.0];

    *(v62 + 48) = v71;
    v72 = [v63 heightAnchor];

    v73 = [v72 constraintEqualToConstant:24.0];
    *(v62 + 56) = v73;
    v74 = *&v0[v57];
    *&v0[v57] = v62;

    v75 = *&v0[v57];
    if (v75 >> 62)
    {
      if (v75 < 0)
      {
        v82 = *&v0[v57];
      }

      v76 = _CocoaArrayWrapper.endIndex.getter();
      v7 = v109;
      if (v76)
      {
LABEL_49:
        if (v76 >= 1)
        {

          v77 = 0;
          do
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v78 = *(v75 + 8 * v77 + 32);
            }

            v80 = v78;
            ++v77;
            LODWORD(v79) = 1144750080;
            [v78 setPriority:v79];
          }

          while (v76 != v77);

          goto LABEL_67;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }
    }

    else
    {
      v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = v109;
      if (v76)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_67;
  }

  if (v58 < 0)
  {
    v81 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconViewDefaultModeLayoutConstraints];
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_46;
  }

LABEL_67:
  v83 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressViewDefaultModeLayoutConstraints;
  v84 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressViewDefaultModeLayoutConstraints];
  if (v84 >> 62)
  {
    if (v84 < 0)
    {
      v86 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressViewDefaultModeLayoutConstraints];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_69;
    }
  }

  else if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_69:

    v85 = v111;
LABEL_70:

    return;
  }

  v87 = [v0 view];
  if (!v87)
  {
LABEL_98:
    __break(1u);
    return;
  }

  v88 = v87;
  v110 = [v87 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1001191F0;
  v90 = v11;
  v91 = [v90 centerXAnchor];
  v92 = [v110 centerXAnchor];
  v93 = [v91 constraintEqualToAnchor:v92];

  *(v89 + 32) = v93;
  v94 = [v90 centerYAnchor];
  v95 = [v110 centerYAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];

  *(v89 + 40) = v96;
  v97 = [v90 widthAnchor];
  v98 = [v97 constraintEqualToConstant:24.0];

  *(v89 + 48) = v98;
  v99 = [v90 heightAnchor];

  v100 = [v99 constraintEqualToConstant:24.0];
  *(v89 + 56) = v100;
  v101 = *&v0[v83];
  *&v0[v83] = v89;

  v102 = *&v0[v83];
  if (!(v102 >> 62))
  {
    v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v103)
    {
      goto LABEL_79;
    }

LABEL_89:

    v85 = v110;
    goto LABEL_70;
  }

  v103 = _CocoaArrayWrapper.endIndex.getter();
  if (!v103)
  {
    goto LABEL_89;
  }

LABEL_79:
  if (v103 < 1)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v104 = 0;
  do
  {
    if ((v102 & 0xC000000000000001) != 0)
    {
      v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v105 = *(v102 + 8 * v104 + 32);
    }

    v107 = v105;
    ++v104;
    LODWORD(v106) = 1144750080;
    [v105 setPriority:v106];
  }

  while (v103 != v104);
}

void sub_100066ED0(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for AirDropSystemApertureViewController();
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  if (qword_1001721A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_100174E90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "View will appear", v7, 2u);
  }

  v8 = *&v2[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView];
  if (v8)
  {
    v9 = *&v2[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession];
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v8;

    static Published.subscript.getter();

    v11 = *&v10[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress];
    *&v10[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress] = v13;
    v12 = v13;

    sub_100108C54();
  }
}

void sub_1000670D0(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_100069E44;
  v11 = v2;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_100106B84;
  v9 = &unk_10015EDF8;
  v3 = _Block_copy(&v6);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_100069E4C;
  v11 = v4;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_100106B84;
  v9 = &unk_10015EE20;
  v5 = _Block_copy(&v6);

  [a1 animateAlongsideTransition:v3 completion:v5];
  _Block_release(v5);
  _Block_release(v3);
}

void sub_100067248()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1001721A8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_100174E90);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Updating views in viewWillLayoutSubviews(with:) coordinator animation block", v5, 2u);
    }

    [*&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterView] invalidateIntrinsicContentSize];
    sub_1000680DC();
    sub_10006634C();
    v6 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_activeLayoutMode] - 2;
    if (v6 <= 2)
    {
      v7 = off_10015EE48[v6];
      v8 = off_10015EE60[v6];
      v9 = off_10015EE78[v6];
      v10 = objc_opt_self();
      v11 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisViewMinimalModeLayoutConstraints];
      sub_1000165C4(0, &qword_100173390, NSLayoutConstraint_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 *v7];

      v13 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconViewDefaultModeLayoutConstraints];

      v14 = Array._bridgeToObjectiveC()().super.isa;

      [v10 *v8];

      v15 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressViewDefaultModeLayoutConstraints];

      v16 = Array._bridgeToObjectiveC()().super.isa;

      [v10 *v8];

      v17 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterViewCustomModeLayoutConstraints];

      v18 = Array._bridgeToObjectiveC()().super.isa;

      [v10 *v9];
    }

    v19 = [v1 view];
    if (v19)
    {
      v20 = v19;
      [v19 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100067514()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_activeLayoutMode) == 4)
    {
      v2 = *(Strong + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession);

      v3 = [v1 view];
      if (!v3)
      {
        __break(1u);
        return;
      }

      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v13.origin.x = v6;
      v13.origin.y = v8;
      v13.size.width = v10;
      v13.size.height = v12;
      CGRectGetWidth(v13);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }
  }
}

uint64_t sub_10006769C()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v74 - v7;
  __chkstk_darwin(v9);
  v11 = &v74 - v10;
  v12 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v74 - v14;
  v16 = type metadata accessor for SFAirDropSend.Transfer.State();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  __chkstk_darwin(v21);
  v81 = &v74 - v22;
  __chkstk_darwin(v23);
  v27 = &v74 - v26;
  if (*(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_activeLayoutMode) == 4)
  {
    return 1;
  }

  v76 = v25;
  v77 = v8;
  v75 = v5;
  v78 = v11;
  v79 = v2;
  v80 = v1;
  v28 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession;
  v29 = v24;
  v30 = *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();
  v31 = v29;

  if ((*(v29 + 48))(v15, 1, v16) != 1)
  {
    v39 = *(v29 + 32);
    v39(v27, v15, v16);
    v40 = v81;
    v39(v81, v27, v16);
    v41 = (*(v31 + 88))(v40, v16);
    if (v41 == enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:))
    {
      (*(v31 + 16))(v20, v40, v16);
      (*(v31 + 96))(v20, v16);
      v42 = *v20;

      v43 = *(sub_1000077C8(&qword_100174130, &qword_10011C540) + 64);
      v44 = type metadata accessor for SFAirDrop.DeclineAction();
    }

    else
    {
      if (v41 != enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:))
      {
        if (v41 == enum case for SFAirDropSend.Transfer.State.transferring(_:))
        {
          v62 = v76;
          (*(v31 + 16))(v76, v40, v16);
          (*(v31 + 96))(v62, v16);
          v63 = *(v62 + 8);

          v64 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
          v65 = v64[12];
          v66 = *(v62 + v64[16] + 8);

          v67 = v64[20];
          v68 = type metadata accessor for SFAirDrop.Progress();
          v69 = *(v68 - 8);
          v70 = (*(v69 + 88))(v62 + v65, v68);
          v71 = enum case for SFAirDrop.Progress.transferringIndeterminate(_:);
          v72 = type metadata accessor for SFAirDrop.DeclineAction();
          (*(*(v72 - 8) + 8))(v62 + v67, v72);
          if (v70 == v71)
          {
            goto LABEL_13;
          }

          (*(v69 + 8))(v62 + v65, v68);
        }

        else if (v41 == enum case for SFAirDropSend.Transfer.State.created(_:) || v41 == enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:))
        {
          goto LABEL_13;
        }

        (*(v31 + 8))(v40, v16);
        return 0;
      }

      (*(v31 + 16))(v20, v40, v16);
      (*(v31 + 96))(v20, v16);
      v49 = *v20;

      v43 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
      v44 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
    }

    (*(*(v44 - 8) + 8))(&v20[v43], v44);
LABEL_13:
    (*(v31 + 8))(v40, v16);
    return 1;
  }

  sub_1000159AC(v15, &qword_100172FD0, &qword_10011A210);
  v32 = *(v0 + v28);
  swift_getKeyPath();
  swift_getKeyPath();

  v33 = v78;
  static Published.subscript.getter();

  v35 = v79;
  v34 = v80;
  v36 = (*(v79 + 88))(v33, v80);
  if (v36 != enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    if (v36 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
    {
      v45 = v77;
      (*(v35 + 16))(v77, v33, v34);
      (*(v35 + 96))(v45, v34);
      v46 = *(sub_1000077C8(&qword_100173088, &unk_10011C520) + 48);
      v47 = sub_1000077C8(&unk_100174F80, &unk_10011AE60);
      (*(*(v47 - 8) + 8))(&v45[v46], v47);
      v48 = type metadata accessor for SFAirDrop.ContactInfo();
      (*(*(v48 - 8) + 8))(v45, v48);
      goto LABEL_9;
    }

    if (v36 != enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
    {
      if (v36 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
      {
        v51 = v75;
        (*(v35 + 16))(v75, v33, v34);
        (*(v35 + 96))(v51, v34);
        v52 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
        v53 = v52[12];
        v54 = *&v51[v52[16] + 8];

        v55 = v52[20];
        v56 = type metadata accessor for SFAirDrop.Progress();
        v57 = *(v56 - 8);
        v58 = (*(v57 + 88))(&v51[v53], v56);
        v59 = enum case for SFAirDrop.Progress.transferringIndeterminate(_:);
        v60 = type metadata accessor for SFAirDrop.DeclineAction();
        (*(*(v60 - 8) + 8))(&v51[v55], v60);
        if (v58 == v59)
        {
          v61 = type metadata accessor for SFAirDropReceive.ItemDestination();
          (*(*(v61 - 8) + 8))(v51, v61);
          goto LABEL_9;
        }

        (*(v57 + 8))(&v51[v53], v56);
        v73 = type metadata accessor for SFAirDropReceive.ItemDestination();
        (*(*(v73 - 8) + 8))(v51, v73);
      }

      else if (v36 == enum case for SFAirDropReceive.Transfer.State.created(_:) || v36 == enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:) || v36 == enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:))
      {
        goto LABEL_9;
      }

      (*(v35 + 8))(v33, v34);
      return 0;
    }
  }

  v37 = v77;
  (*(v35 + 16))(v77, v33, v34);
  (*(v35 + 96))(v37, v34);
  v38 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  (*(*(v38 - 8) + 8))(v37, v38);
LABEL_9:
  (*(v35 + 8))(v33, v34);
  return 1;
}

uint64_t sub_1000680DC()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v98 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v97 = &v96 - v7;
  __chkstk_darwin(v8);
  v101 = (&v96 - v9);
  v10 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v96 - v12;
  v14 = type metadata accessor for SFAirDropSend.Transfer.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v100 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v99 = &v96 - v19;
  v102 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView;
  v20 = *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView);
  if (v20)
  {
    v21 = v20;
    [v21 setHidden:sub_10006769C() & 1];

    v22 = *(v0 + v102);
    if (v22)
    {
      v23 = v22;
      [*&v23[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progressMicaView] setHidden:sub_10006769C() & 1];
    }
  }

  v24 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession;
  v25 = *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000159AC(v13, &qword_100172FD0, &qword_10011A210);
    v26 = *(v1 + v24);
    swift_getKeyPath();
    swift_getKeyPath();

    v27 = v101;
    static Published.subscript.getter();

    v100 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView;
    v28 = *(v1 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView);
    v96 = v3;
    if (v28)
    {
      v99 = *(v3 + 16);
      v29 = v97;
      (v99)(v97, v27, v2);
      v30 = OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_transferState;
      swift_beginAccess();
      v31 = *(v3 + 24);
      v32 = v28;
      v33 = &v28[v30];
      v27 = v101;
      v31(v33, v29, v2);
      v3 = v96;
      swift_endAccess();
      sub_1000F3614();

      (*(v3 + 8))(v29, v2);
      v34 = v99;
    }

    else
    {
      v34 = *(v3 + 16);
    }

    v63 = v98;
    (v34)(v98, v27, v2);
    v64 = (*(v3 + 88))(v63, v2);
    if (v64 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
    {
      (*(v3 + 96))(v63, v2);
      v65 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
      v66 = v65[12];
      v67 = *&v63[v65[16] + 8];

      v68 = v65[20];
      v69 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v69 - 8) + 8))(&v63[v68], v69);
      v70 = type metadata accessor for SFAirDrop.Progress();
      (*(*(v70 - 8) + 8))(&v63[v66], v70);
    }

    else if (v64 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
    {
      (*(v3 + 96))(v63, v2);
      v71 = sub_1000077C8(&unk_100173CD0, &unk_10011C510);
      v72 = *&v63[*(v71 + 48)];

      v73 = *(v71 + 80);
      v74 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v74 - 8) + 8))(&v63[v73], v74);
    }

    else
    {
      if (v64 != enum case for SFAirDropReceive.Transfer.State.importing(_:))
      {
        v95 = *(v3 + 8);
        v95(v27, v2);
        return (v95)(v63, v2);
      }

      (*(v3 + 96))(v63, v2);
      v94 = *&v63[*(sub_1000077C8(&unk_100174F60, &qword_10011C4C0) + 48)];
    }

    v75 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v75 - 8) + 8))(v63, v75);
    v76 = SFAirDropReceive.Transfer.State.currentProgressCount.getter();
    v77 = SFAirDropReceive.Transfer.State.totalProgressCount.getter();
    v78 = *(v1 + v24);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v79 = v103;
    [v103 setCompletedUnitCount:v76];

    v80 = *(v1 + v24);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v81 = v103;
    [v103 setTotalUnitCount:v77];

    v82 = *&v100[v1];
    if (v82)
    {
      v83 = *(v1 + v24);
      swift_getKeyPath();
      swift_getKeyPath();
      v84 = v82;

      static Published.subscript.getter();

      v85 = v103;
      [v103 fractionCompleted];
      v87 = v86;

      *&v84[OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_progress] = v87;
      sub_1000F3614();
    }

    v88 = *(v1 + v102);
    if (v88)
    {
      v89 = *(v1 + v24);
      swift_getKeyPath();
      swift_getKeyPath();
      v90 = v88;

      static Published.subscript.getter();

      v91 = v103;
      v92 = *&v90[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress];
      *&v90[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress] = v103;
      v93 = v91;

      sub_100108C54();
    }

    return (*(v96 + 8))(v101, v2);
  }

  else
  {
    v35 = v99;
    (*(v15 + 32))(v99, v13, v14);
    v36 = v100;
    (*(v15 + 16))(v100, v35, v14);
    if ((*(v15 + 88))(v36, v14) == enum case for SFAirDropSend.Transfer.State.transferring(_:))
    {
      (*(v15 + 96))(v36, v14);
      v37 = *(v36 + 1);

      v101 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
      v38 = *&v36[v101[16] + 8];

      v39 = SFAirDropSend.Transfer.State.currentProgressCount.getter();
      v98 = SFAirDropSend.Transfer.State.totalProgressCount.getter();
      v40 = *(v1 + v24);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v41 = v103;
      [v103 setCompletedUnitCount:v39];

      v42 = *(v1 + v24);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v43 = v103;
      [v103 setTotalUnitCount:v98];

      v44 = *(v1 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView);
      if (v44)
      {
        v45 = *(v1 + v24);
        swift_getKeyPath();
        swift_getKeyPath();
        v46 = v44;

        static Published.subscript.getter();

        v47 = v103;
        [v103 fractionCompleted];
        v49 = v48;

        *&v46[OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_progress] = v49;
        sub_1000F3614();
      }

      v50 = *(v1 + v102);
      if (v50)
      {
        v51 = *(v1 + v24);
        swift_getKeyPath();
        swift_getKeyPath();
        v52 = v50;

        static Published.subscript.getter();

        v53 = v103;
        v54 = *&v52[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress];
        *&v52[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress] = v103;
        v55 = v53;

        sub_100108C54();
      }

      v56 = v101[12];
      v57 = v101[20];
      (*(v15 + 8))(v99, v14);
      v58 = type metadata accessor for SFAirDrop.DeclineAction();
      v59 = v100;
      (*(*(v58 - 8) + 8))(&v100[v57], v58);
      v60 = type metadata accessor for SFAirDrop.Progress();
      return (*(*(v60 - 8) + 8))(&v59[v56], v60);
    }

    else
    {
      v62 = *(v15 + 8);
      v62(v35, v14);
      return (v62)(v36, v14);
    }
  }
}

uint64_t sub_100068D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (qword_1001721A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100007D20(v8, qword_100174E90);
  v9 = v5;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v12 = 136315394;
    v13 = *&v9[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession];

    v15 = a4;
    v16 = a3;
    v17 = sub_10007A538(v14);
    v19 = v18;

    v20 = sub_10003E81C(v17, v19, &aBlock);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2080;
    v22 = sub_10007A538(v21);
    v24 = sub_10003E81C(v22, v23, &aBlock);

    *(v12 + 14) = v24;
    a3 = v16;
    a4 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "Transitioning SystemAperture session %s -> %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v25 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession;
  v26 = (*&v9[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession] + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v27 = *v26;
  v28 = v26[1];
  v29 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v30 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

  v31._countAndFlagsBits = v29;
  v31._object = v30;
  LOBYTE(v27) = String.hasPrefix(_:)(v31);

  if (v27)
  {
    v32 = *&v9[v25];

    v33 = sub_100080E48(a1);

    v34 = v33 ^ 1;
  }

  else
  {
    v34 = 1;
  }

  v86 = v34;
  v35 = &v9[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode];
  if (v9[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode + 8] == 1)
  {
    v36 = *&v9[v25];

    v38 = sub_100064084(v37);
  }

  else
  {
    v38 = *v35;
  }

  v39 = sub_100064084(a1);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = a1;
  v41[4] = a2;
  v41[5] = a3;
  v41[6] = a4;
  if (v38 != v39 || (a5 & 1) != 0)
  {
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v85 = a4;
      v51 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v51 = 136315394;
      v52 = SBUISystemApertureLayoutModeDescription();
      v83 = v35;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v50;
      v54 = a3;
      v56 = v55;

      v57 = sub_10003E81C(v53, v56, &aBlock);
      a3 = v54;

      *(v51 + 4) = v57;
      *(v51 + 12) = 2080;
      v58 = SBUISystemApertureLayoutModeDescription();
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = sub_10003E81C(v59, v61, &aBlock);
      v35 = v83;

      *(v51 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v49, v81, "Transitioning layout mode %s -> %s", v51, 0x16u);
      swift_arrayDestroy();

      a4 = v85;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v64 = *(Strong + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession);
      v65 = Strong;

      sub_10007E610(a1, a2, a3, a4);
    }

    v66 = [v9 systemApertureElementContext];
    v93 = nullsub_1;
    v94 = 0;
    aBlock = _NSConcreteStackBlock;
    v90 = 1107296256;
    v91 = sub_100106B40;
    v92 = &unk_10015ECE0;
    v67 = _Block_copy(&aBlock);
    [v66 setElementNeedsLayoutUpdateWithOptions:1 coordinatedAnimations:v67];
  }

  else
  {
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    v44 = os_log_type_enabled(v42, v43);
    if (v38 == 4)
    {
      if (v44)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Updating layout between custom mode views", v45, 2u);
      }

      v46 = [v9 systemApertureElementContext];
      if ((v86 & 1) == 0)
      {
        v79 = swift_allocObject();
        *(v79 + 16) = sub_100069DA4;
        *(v79 + 24) = v41;
        v93 = sub_10006AB3C;
        v94 = v79;
        aBlock = _NSConcreteStackBlock;
        v90 = 1107296256;
        v91 = sub_100106B40;
        v92 = &unk_10015ED80;
        v80 = _Block_copy(&aBlock);

        [v46 setElementNeedsUpdateWithCoordinatedAnimations:v80];
        _Block_release(v80);

        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      v47 = swift_allocObject();
      *(v47 + 16) = sub_100069DA4;
      *(v47 + 24) = v41;
      v93 = sub_100069E04;
      v94 = v47;
      aBlock = _NSConcreteStackBlock;
      v90 = 1107296256;
      v91 = sub_100106B40;
      v92 = &unk_10015EDD0;
      v48 = _Block_copy(&aBlock);

      [v46 setElementNeedsLayoutUpdateWithOptions:1 coordinatedAnimations:v48];
      _Block_release(v48);
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    if (v44)
    {
      v68 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      aBlock = v84;
      *v68 = 136315138;
      v69 = SBUISystemApertureLayoutModeDescription();
      v70 = v35;
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = v71;
      v35 = v70;
      v75 = sub_10003E81C(v74, v73, &aBlock);

      *(v68 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v42, v43, "Updating layout between %s mode views", v68, 0xCu);
      sub_100007920(v84);
    }

    v76 = [v9 systemApertureElementContext];
    v77 = swift_allocObject();
    *(v77 + 16) = sub_100069DA4;
    *(v77 + 24) = v41;
    v93 = sub_10006AB3C;
    v94 = v77;
    aBlock = _NSConcreteStackBlock;
    v90 = 1107296256;
    v91 = sub_100106B40;
    v92 = &unk_10015ED30;
    v67 = _Block_copy(&aBlock);

    [v76 setElementNeedsUpdateWithCoordinatedAnimations:v67];
  }

  _Block_release(v67);
  swift_unknownObjectRelease();
  if ((v86 & 1) == 0)
  {

    goto LABEL_29;
  }

LABEL_27:
  *v35 = 0;
  v35[8] = 1;

LABEL_29:

LABEL_30:
}