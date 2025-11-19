uint64_t sub_1000697C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(result + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession);
    v11 = result;

    sub_10007E610(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_100069868()
{
  v1 = v0;
  if (qword_1001721A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100174E90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = SBUISystemApertureLayoutModeDescription();
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = sub_10003E81C(v7, v9, &v18);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    v11 = SBUISystemApertureLayoutModeDescription();
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10003E81C(v12, v14, &v18);

    *(v5 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Transitioning layout mode %s -> %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v16 = &v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode];
  *v16 = 2;
  v16[8] = 0;
  [objc_msgSend(v1 "systemApertureElementContext")];

  return swift_unknownObjectRelease();
}

id sub_100069AC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirDropSystemApertureViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100069C1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100069CAC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100069D1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100069D54()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100069DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100069DCC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069E04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100069EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069F1C(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropSend.Failure();
  v56 = *(v2 - 8);
  v3 = v56[8];
  v4 = __chkstk_darwin(v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v54 - v7;
  v9 = type metadata accessor for SFAirDropSend.Transfer.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = *(v10 + 16);
  v17(&v54 - v15, a1, v9);
  v18 = (*(v10 + 88))(v16, v9);
  if (v18 == enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:))
  {
    (*(v10 + 96))(v16, v9);
    v19 = *v16;

    v20 = *(sub_1000077C8(&qword_100174130, &qword_10011C540) + 64);
    v21 = type metadata accessor for SFAirDrop.DeclineAction();
LABEL_5:
    (*(*(v21 - 8) + 8))(&v16[v20], v21);
    return 3;
  }

  if (v18 == enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    (*(v10 + 96))(v16, v9);
    v22 = *v16;

    v20 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
    v21 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
    goto LABEL_5;
  }

  if (v18 == enum case for SFAirDropSend.Transfer.State.transferring(_:))
  {
    (*(v10 + 96))(v16, v9);
    v24 = *(v16 + 1);

    v25 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
    v26 = v25[12];
    v27 = *&v16[v25[16] + 8];

    v28 = v25[20];
    v29 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v29 - 8) + 8))(&v16[v28], v29);
    v30 = type metadata accessor for SFAirDrop.Progress();
    (*(*(v30 - 8) + 8))(&v16[v26], v30);
    return 3;
  }

  if (v18 == enum case for SFAirDropSend.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    (*(v10 + 96))(v16, v9);
    v31 = *(sub_1000077C8(&qword_100175010, &qword_10011C618) + 48);
    v32 = &unk_100174F80;
    v33 = &unk_10011AE60;
LABEL_12:
    v34 = sub_1000077C8(v32, v33);
    (*(*(v34 - 8) + 8))(&v16[v31], v34);
    v35 = type metadata accessor for SFAirDrop.ContactInfo();
LABEL_15:
    (*(*(v35 - 8) + 8))(v16, v35);
    return 2;
  }

  if (v18 == enum case for SFAirDropSend.Transfer.State.exchanging(_:))
  {
    (*(v10 + 96))(v16, v9);
    v35 = type metadata accessor for SFAirDrop.ContactRequest();
    goto LABEL_15;
  }

  if (v18 == enum case for SFAirDropSend.Transfer.State.waitingForImportContactResponse(_:))
  {
    (*(v10 + 96))(v16, v9);
    v31 = *(sub_1000077C8(&qword_100175000, &unk_10011ECC0) + 48);
    v32 = &unk_100175008;
    v33 = &unk_10011C610;
    goto LABEL_12;
  }

  if (v18 == enum case for SFAirDropSend.Transfer.State.transferFailed(_:))
  {
    v36 = *(v10 + 96);
    v10 += 96;
    v36(v16, v9);
    v37 = sub_1000077C8(&qword_100172F20, &qword_100118F10);
    v14 = v56;
    (v56[4])(v8, &v16[*(v37 + 48)], v2);
    (v14[2])(v6, v8, v2);
    v38 = (v14[11])(v6, v2);
    if (v38 == enum case for SFAirDropSend.Failure.missingEndpoint(_:))
    {
LABEL_20:
      v39 = v14[1];
      v39(v8, v2);
      v39(v6, v2);
LABEL_21:
      v40 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
      (*(*(v40 - 8) + 8))(v16, v40);
      return 4;
    }

    if (v38 == enum case for SFAirDropSend.Failure.resolveFailure(_:))
    {
      goto LABEL_25;
    }

    if (v38 == enum case for SFAirDropSend.Failure.unexpected(_:))
    {
      goto LABEL_20;
    }

    if (v38 == enum case for SFAirDropSend.Failure.receiverDeclined(_:) || v38 == enum case for SFAirDropSend.Failure.cancelled(_:))
    {
      goto LABEL_25;
    }

    if (v38 == enum case for SFAirDropSend.Failure.unsupportedConnection(_:) || v38 == enum case for SFAirDropSend.Failure.badRequest(_:) || v38 == enum case for SFAirDropSend.Failure.badResponse(_:))
    {
      (v14[1])(v8, v2);
      goto LABEL_21;
    }

    if (v38 == enum case for SFAirDropSend.Failure.missingDownloadDirectory(_:) || v38 == enum case for SFAirDropSend.Failure.streamError(_:) || v38 == enum case for SFAirDropSend.Failure.missingOwnContact(_:) || v38 == enum case for SFAirDropSend.Failure.missingRecordData(_:) || v38 == enum case for SFAirDropSend.Failure.serverError(_:))
    {
      (v56[1])(v8, v2);
      goto LABEL_21;
    }

    v14 = v56;
    if (v38 == enum case for SFAirDropSend.Failure.insufficientStorage(_:))
    {
LABEL_25:
      (v14[1])(v8, v2);
      v35 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
      goto LABEL_15;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_48;
  }

  if (v18 == enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:))
  {
    (*(v10 + 96))(v16, v9);
    v41 = *&v16[*(sub_1000077C8(&unk_100174FF0, &qword_10011C608) + 48) + 8];

    v42 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
    (*(*(v42 - 8) + 8))(v16, v42);
    return 3;
  }

  if (v18 == enum case for SFAirDropSend.Transfer.State.created(_:))
  {
    return 3;
  }

  v43 = v18 == enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:);
  result = 3;
  if (!v43)
  {
    if (qword_1001721A8 == -1)
    {
LABEL_29:
      v44 = type metadata accessor for Logger();
      sub_100007D20(v44, qword_100174E90);
      v17(v14, a1, v9);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v55 = v47;
        v56 = swift_slowAlloc();
        v57 = v56;
        *v47 = 136315138;
        sub_10006A8F4(&qword_100173E38, &type metadata accessor for SFAirDropSend.Transfer.State);
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        v51 = *(v10 + 8);
        v51(v14, v9);
        v52 = sub_10003E81C(v48, v50, &v57);

        v53 = v55;
        *(v55 + 1) = v52;
        _os_log_impl(&_mh_execute_header, v45, v46, "Unknown send state value %s", v53, 0xCu);
        sub_100007920(v56);
      }

      else
      {

        v51 = *(v10 + 8);
        v51(v14, v9);
      }

      v51(v16, v9);
      return 3;
    }

LABEL_48:
    swift_once();
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_10006A8F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10006A98C()
{
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterView) = 0;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterViewCustomModeLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView) = 0;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconViewDefaultModeLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView) = 0;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressViewDefaultModeLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisView) = 0;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisViewMinimalModeLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_cancellableObservers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_contentRole) = 2;
  v1 = v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_maximumLayoutMode) = 4;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_preventsInteractiveDismissal) = 0;
  v2 = SBUISystemApertureElementIdentifierAirDrop;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_elementIdentifier) = SBUISystemApertureElementIdentifierAirDrop;
  v3 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_keyColor;
  v4 = objc_allocWithZone(UIColor);
  v5 = v2;
  *(v0 + v3) = [v4 initWithRed:0.246 green:0.6 blue:1.0 alpha:1.0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10006AB80@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_10011C670;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

__n128 sub_10006ABAC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10006ABD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 100))
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

uint64_t sub_10006AC20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 100) = 1;
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

    *(result + 100) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006AC8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 100))
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

double sub_10006ACDC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 100) = 1;
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

    *(a1 + 100) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_10006AD80(uint64_t a1, uint64_t a2, int a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  Hasher._combine(_:)(BYTE1(a3) & 1);
  Hasher._combine(_:)(BYTE2(a3) & 1);
  Hasher._combine(_:)(HIBYTE(a3) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10006AE0C()
{
  v2 = *v0;
  v1 = v0[1];
  v13 = v0[2];
  v14 = v0[3];
  v3 = v0[5];
  v15 = v0[4];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v10 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v6 >> 62)
  {
    if (v6 >> 62 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    Hasher._combine(_:)(v11);
    String.hash(into:)();
    String.hash(into:)();
    sub_10006BAFC(v16, v15);
  }

  else
  {
    v17 = v2;
    v18 = v1;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v3;
    v23 = v4;
    v24 = v5;
    v25 = v7;
    v26 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    Hasher._combine(_:)(0);
    sub_10006B408(v16);
  }

  return Hasher._finalize()();
}

void sub_10006AF18(__int128 *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = v1[9] >> 62;
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    Hasher._combine(_:)(v9);
    String.hash(into:)();
    String.hash(into:)();

    sub_10006BAFC(a1, v7);
  }

  else
  {
    v10 = *v1;
    v11 = *(v1 + 5);
    v12 = *(v1 + 7);
    v13 = *(v1 + 5);
    v14 = *(v1 + 24);
    Hasher._combine(_:)(0);
    sub_10006B408(a1);
  }
}

Swift::Int sub_10006B028()
{
  v2 = *v0;
  v1 = v0[1];
  v13 = v0[2];
  v14 = v0[3];
  v3 = v0[5];
  v15 = v0[4];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v10 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v6 >> 62)
  {
    if (v6 >> 62 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    Hasher._combine(_:)(v11);
    String.hash(into:)();
    String.hash(into:)();
    sub_10006BAFC(v16, v15);
  }

  else
  {
    v17 = v2;
    v18 = v1;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v3;
    v23 = v4;
    v24 = v5;
    v25 = v7;
    v26 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    Hasher._combine(_:)(0);
    sub_10006B408(v16);
  }

  return Hasher._finalize()();
}

uint64_t sub_10006B130(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_10006BE4C(v11, v13) & 1;
}

unint64_t sub_10006B1A0()
{
  result = qword_100175018;
  if (!qword_100175018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175018);
  }

  return result;
}

Swift::Int sub_10006B1F4()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 16);
  if (*(v0 + 18))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 19))
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  return sub_10006AD80(*v0, *(v0 + 8), v2 | v3 | v4);
}

void sub_10006B23C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = *(v0 + 19);
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
}

Swift::Int sub_10006B2A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = *(v0 + 19);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

uint64_t sub_10006B348(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 19);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 19);
  v8 = *(a1 + 18) ^ *(a2 + 18);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (((v2 ^ v5 | v3 ^ v6 | v8) & 1) == 0)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  else if (!((v2 ^ v5) & 1 | ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0) | ((v3 ^ v6) | v8) & 1))
  {
    return v4 ^ v7 ^ 1u;
  }

  return 0;
}

void sub_10006B408(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  v8 = v2[4];
  v9 = v2[5];
  String.hash(into:)();
  sub_10006BAFC(a1, v2[6]);
  if (v2[8])
  {
    v10 = *(v2 + 18);
    v11 = v2[7];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    Hasher._combine(_:)(v10 & 1);
    Hasher._combine(_:)(BYTE1(v10) & 1);
    Hasher._combine(_:)(BYTE2(v10) & 1);
    v12 = HIBYTE(v10) & 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  Hasher._combine(_:)(v12);
  if (v2[11])
  {
    v13 = *(v2 + 24);
    v14 = v2[10];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    Hasher._combine(_:)(v13 & 1);
    Hasher._combine(_:)(BYTE1(v13) & 1);
    Hasher._combine(_:)(BYTE2(v13) & 1);
    v15 = HIBYTE(v13) & 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  Hasher._combine(_:)(v15);
}

Swift::Int sub_10006B508()
{
  Hasher.init(_seed:)();
  sub_10006B408(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10006B54C()
{
  Hasher.init(_seed:)();
  sub_10006B408(v1);
  return Hasher._finalize()();
}

uint64_t sub_10006B588(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_10006BCA4(v11, v13) & 1;
}

unint64_t sub_10006B5F8()
{
  result = qword_100175020;
  if (!qword_100175020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175020);
  }

  return result;
}

Swift::Int sub_10006B64C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10006BAFC(v7, v5);
  return Hasher._finalize()();
}

void sub_10006B6CC(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  String.hash(into:)();
  String.hash(into:)();

  sub_10006BAFC(a1, v7);
}

Swift::Int sub_10006B72C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10006BAFC(v7, v5);
  return Hasher._finalize()();
}

uint64_t sub_10006B7A8(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10006B864(v3, v7);
}

uint64_t sub_10006B864(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v30 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v39 = a2 + 56;
  v31 = v6;
  v32 = result;
  v34 = a2;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
    v7 = __clz(__rbit64(v5));
    v33 = (v5 - 1) & v5;
LABEL_13:
    v10 = *(result + 48) + 24 * (v7 | (v2 << 6));
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 17);
    v15 = *(v10 + 18);
    v16 = *(v10 + 19);
    v17 = *(a2 + 40);
    v18 = a2;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v38 = v13;
    Hasher._combine(_:)(v13);
    v37 = v14;
    Hasher._combine(_:)(v14);
    v36 = v15;
    Hasher._combine(_:)(v15);
    v35 = v16;
    Hasher._combine(_:)(v16);
    v19 = Hasher._finalize()();
    v20 = -1 << *(v18 + 32);
    v21 = v19 & ~v20;
    if (((*(v39 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_27:

      return 0;
    }

    v22 = ~v20;
    v23 = *(v34 + 48);
    while (1)
    {
      v24 = v23 + 24 * v21;
      v25 = *(v24 + 16);
      v26 = *(v24 + 17);
      v27 = *(v24 + 19);
      v28 = v36 ^ *(v24 + 18);
      if (*v24 != v12 || *(v24 + 8) != v11)
      {
        break;
      }

      if (((v38 ^ v25 | v37 ^ v26 | v28) & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_17:
      v21 = (v21 + 1) & v22;
      if (((*(v39 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if ((v38 ^ v25) & 1 | ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0) | ((v37 ^ v26) | v28) & 1)
    {
      goto LABEL_17;
    }

LABEL_16:
    if ((v35 ^ v27))
    {
      goto LABEL_17;
    }

    v6 = v31;
    result = v32;
    v5 = v33;
    a2 = v34;
  }

  while (v33);
LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v30 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10006BAFC(__int128 *a1, uint64_t a2)
{
  v24 = a1[2];
  v25 = a1[3];
  v26 = *(a1 + 8);
  v22 = *a1;
  v23 = a1[1];
  Hasher._finalize()();
  v20 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  for (i = 0; v6; v8 = v19 ^ v21)
  {
    v21 = v8;
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(v20 + 48) + 24 * (v11 | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 17);
    v17 = *(v12 + 18);
    v18 = *(v12 + 19);
    Hasher.init(_seed:)();

    String.hash(into:)();
    Hasher._combine(_:)(v15);
    Hasher._combine(_:)(v16);
    Hasher._combine(_:)(v17);
    Hasher._combine(_:)(v18);
    v19 = Hasher._finalize()();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      v21 = v8;
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10006BCA4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10006B864(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 64);
  v7 = *(a2 + 64);
  if (!v6)
  {
    if (v7)
    {
      return 0;
    }

    goto LABEL_27;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 72);
  v9 = *(a2 + 72);
  if (*(a1 + 56) == *(a2 + 56) && v6 == v7)
  {
    result = 0;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v12 = v8 ^ v9;
  if (((v8 ^ v9) & 1) == 0 && ((v12 >> 8) & 1) == 0 && (v12 & 0x10000) == 0 && (v12 & 0x1000000) == 0)
  {
LABEL_27:
    v13 = *(a1 + 88);
    v14 = *(a2 + 88);
    if (v13)
    {
      if (v14)
      {
        v15 = *(a1 + 80);
        v16 = *(a1 + 96);
        v17 = *(a2 + 80);
        v18 = *(a2 + 96);
        if (v15 == v17 && v13 == v14)
        {
          v19 = v16 ^ v18;
          if (((v16 ^ v18) & 1) != 0 || ((v19 >> 8) & 1) != 0 || (v19 & 0x10000) != 0 || (v19 & 0x1000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }

          v20 = v16 ^ v18;
          if (((v16 ^ v18) & 1) != 0 || ((v20 >> 8) & 1) != 0 || (v20 & 0x10000) != 0 || (v20 & 0x1000000) != 0)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    else if (!v14)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10006BE4C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[9];
  if (v8 >> 62)
  {
    if (v8 >> 62 == 1)
    {
      if (*(a2 + 72) >> 62 != 1)
      {
        goto LABEL_16;
      }
    }

    else if (*(a2 + 72) >> 62 != 2)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    if (v3 == *a2 && v4 == *(a2 + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v5 == v16 && v7 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10006B864(v6, v18))
    {
      v15 = 1;
      return v15 & 1;
    }

LABEL_16:
    v15 = 0;
    return v15 & 1;
  }

  v9 = *(a1 + 24);
  v25[0] = v3;
  v25[1] = v4;
  v25[2] = v5;
  v25[3] = v7;
  v26 = *(a1 + 5);
  v27 = *(a1 + 7);
  v25[4] = v6;
  v28 = v8 & 0x3FFFFFFFFFFFFFFFLL;
  v29 = *(a1 + 5);
  v10 = *(a2 + 72);
  v30 = v9;
  if (v10 >> 62)
  {
    goto LABEL_16;
  }

  v11 = *(a2 + 96);
  v12 = *(a2 + 64);
  v13 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v21 = v12;
  v22 = v10;
  v23 = *(a2 + 80);
  v24 = v11;
  v15 = sub_10006BCA4(v25, v20);
  return v15 & 1;
}

__n128 sub_10006BFC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10006BFD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_10006C020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10006C070(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10006C084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10006C0CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006C128()
{
  result = qword_100175028;
  if (!qword_100175028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175028);
  }

  return result;
}

unint64_t sub_10006C180()
{
  result = qword_100175030;
  if (!qword_100175030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175030);
  }

  return result;
}

uint64_t sub_10006C214(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  v5 = type metadata accessor for Font.Leading();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v8);
  (*(v6 + 104))(v10, enum case for Font.Leading.tight(_:), v5);
  v11 = Font.leading(_:)();

  result = (*(v6 + 8))(v10, v5);
  *a3 = v11;
  return result;
}

uint64_t sub_10006C32C()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_10017F260 = result;
  return result;
}

void sub_10006C40C(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 16);
  if (v8)
  {
    aBlock = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = (a5 + 40);
    v11 = v8;
    do
    {
      v14 = *(v10 - 1);
      if (!*v10 || *v10 == 1)
      {
        v12 = v14;
      }

      else
      {
        v15 = type metadata accessor for ZoomEffect();
        v16 = objc_allocWithZone(v15);
        *&v16[OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect_magnitude] = v14;
        v29.receiver = v16;
        v29.super_class = v15;
        objc_msgSendSuper2(&v29, "init");
      }

      v10 += 16;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = aBlock[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v11;
    }

    while (v11);
    sub_10006D038();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() effectCombiningEffects:isa];
  }

  else
  {
    v18 = 0;
  }

  v19 = [a1 effect];
  if (v19)
  {
    v20 = v19;
    if (v18)
    {
      sub_10006D038();
      v21 = v18;
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {

        return;
      }
    }

    else
    {
    }
  }

  else if (!v18)
  {
    return;
  }

  if (v8)
  {
    a3 = a2;
  }

  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = v18;
  v34 = sub_10006D0C4;
  v35 = v24;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100106B40;
  v33 = &unk_10015F228;
  v25 = _Block_copy(&aBlock);
  v26 = v18;
  v27 = a1;

  v34 = nullsub_1;
  v35 = 0;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100005C38;
  v33 = &unk_10015F250;
  v28 = _Block_copy(&aBlock);
  [v23 _animateUsingSpringWithDuration:0 delay:v25 options:v28 mass:1.0 stiffness:a3 damping:2.0 initialVelocity:630.0 animations:50.0 completion:0.0];

  _Block_release(v28);
  _Block_release(v25);
}

id sub_10006C738()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

uint64_t sub_10006C780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006D0EC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10006C7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006D0EC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10006C848()
{
  sub_10006D0EC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

BOOL sub_10006C980(uint64_t a1)
{
  sub_10006CE14(a1, v5);
  if (v6)
  {
    type metadata accessor for ZoomEffect();
    if (swift_dynamicCast())
    {
      v2 = *&v4[OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect_magnitude];

      return v2 == *(v1 + OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect_magnitude);
    }
  }

  else
  {
    sub_10006CDAC(v5);
  }

  return 0;
}

void sub_10006CC40(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v3 = [v6 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    [v4 setZoom:0.0];
    v5 = v3;
  }

  else
  {
    v5 = v6;
    v6 = v3;
  }
}

id sub_10006CD48(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10006CDAC(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_1001746C0, &qword_10011A510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006CE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_1001746C0, &qword_10011A510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006CE90(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10006CEA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10006CEEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10006CF48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10006CF90(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10006CFE4()
{
  result = qword_100175098;
  if (!qword_100175098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175098);
  }

  return result;
}

unint64_t sub_10006D038()
{
  result = qword_1001750A0;
  if (!qword_1001750A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001750A0);
  }

  return result;
}

uint64_t sub_10006D084()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006D0D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10006D0EC()
{
  result = qword_1001750A8;
  if (!qword_1001750A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001750A8);
  }

  return result;
}

void sub_10006D150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_10000E474(0, v1, 0);
    v3 = v2 + 56;
    v4 = -1 << *(v2 + 32);
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v27 = v2 + 64;
    v28 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v6;
      v30 = *(v2 + 36);
      v9 = v2;
      v10 = (*(v2 + 48) + 24 * v5);
      v11 = *v10;
      v12 = v10[1];

      v13 = String._bridgeToObjectiveC()();
      v14 = TUCopyIDSCanonicalAddressForDestinationID();

      if (!v14)
      {
        goto LABEL_26;
      }

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v16;

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_10000E474((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v15;
      v19[5] = v31;
      v7 = 1 << *(v9 + 32);
      if (v5 >= v7)
      {
        goto LABEL_23;
      }

      v20 = *(v3 + 8 * v8);
      if ((v20 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v2 = v9;
      if (v30 != *(v9 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v5 & 0x3F));
      if (v21)
      {
        v7 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v8 << 6;
        v23 = v8 + 1;
        v24 = (v27 + 8 * v8);
        while (v23 < (v7 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_100047AC0(v5, v30, 0);
            v7 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        sub_100047AC0(v5, v30, 0);
      }

LABEL_4:
      v6 = v29 + 1;
      v5 = v7;
      if (v29 + 1 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

NSString *sub_10006D3BC()
{
  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001191F0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 descriptorForRequiredKeysForStyle:1];
  *(v0 + 40) = [v1 descriptorForRequiredKeysForStyle:0];
  *(v0 + 48) = CNContactPhoneNumbersKey;
  *(v0 + 56) = CNContactEmailAddressesKey;
  qword_1001750B0 = v0;
  v2 = CNContactPhoneNumbersKey;

  return CNContactEmailAddressesKey;
}

void sub_10006D4A0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = String._bridgeToObjectiveC()();
  if (qword_1001721C8 != -1)
  {
    swift_once();
  }

  sub_1000077C8(&qword_1001751C8, qword_10011E190);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v10 = [v4 contactForIdentifier:v8 keysToFetch:isa];

  if (v10)
  {
    sub_1000713F8(v10, v29);
    v27 = v29[1];
    v28 = v29[0];
    v25 = v29[3];
    v26 = v29[2];
    v23 = v29[5];
    v24 = v29[4];
    v11 = v30;

    v13 = v23;
    v12 = v24;
    v15 = v25;
    v14 = v26;
    v17 = v27;
    v16 = v28;
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100007D20(v18, qword_10017F350);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v29[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10003E81C(a1, a2, v29);
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to fetch contact with identifier: %s", v21, 0xCu);
      sub_100007920(v22);
    }

    v11 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a3 = v16;
  *(a3 + 16) = v17;
  *(a3 + 32) = v14;
  *(a3 + 48) = v15;
  *(a3 + 64) = v12;
  *(a3 + 80) = v13;
  *(a3 + 96) = v11;
}

__n128 sub_10006D6F4@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  sub_10006D4A0(a1, a2, v9);
  v6 = v9[5];
  *(a3 + 64) = v9[4];
  *(a3 + 80) = v6;
  *(a3 + 96) = v10;
  v7 = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = v7;
  result = v9[3];
  *(a3 + 32) = v9[2];
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_10006D754(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 48);
  v4 = a1;
  v5 = sub_100070EA0(v3, v4);

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100007D20(v6, qword_10017F350);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 136315138;
    v11 = Array.description.getter();
    v13 = sub_10003E81C(v11, v12, &v44);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updated resolved IDS capabilities for handles: %s", v9, 0xCu);
    sub_100007920(v10);
  }

  v14 = *(v5 + 16);
  v15 = v5 + 25;
  v16 = v14 + 1;
  do
  {
    if (!--v16)
    {
      v19 = 0;
      v20 = 0;
      v26 = 0;
      goto LABEL_16;
    }

    v17 = (v15 + 24);
    v18 = *(v15 + 25);
    v15 += 24;
  }

  while (v18 != 1);
  v19 = *(v17 - 17);
  v20 = *(v17 - 9);
  v21 = *(v17 - 1);
  v22 = *v17;
  v23 = v17[2];
  if (v22)
  {
    v24 = 256;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = 0x1000000;
  }

  else
  {
    v25 = 0;
  }

  v26 = v24 | v21 | v25 | 0x10000;

LABEL_16:
  v27 = v5 + 24;
  v28 = v14 + 1;
  do
  {
    if (!--v28)
    {
      v32 = 0;
      v31 = 0;
      v39 = 0;
      goto LABEL_27;
    }

    v29 = (v27 + 24);
    v30 = *(v27 + 25);
    v27 += 24;
  }

  while (v30 != 1);
  v32 = *(v29 - 2);
  v31 = *(v29 - 1);
  v33 = *v29;
  v34 = v29[2];
  v35 = v29[3];
  if (v34)
  {
    v36 = 0x10000;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36 | v33;
  if (v35)
  {
    v38 = 0x1000000;
  }

  else
  {
    v38 = 0;
  }

  v39 = v37 | v38 | 0x100;

LABEL_27:
  v40 = sub_1000905CC(v5);

  *(v2 + 48) = v40;
  if (v20)
  {

    v32 = v19;
    v31 = v20;
    v39 = v26;
  }

  v41 = *(v2 + 64);

  *(v2 + 56) = v32;
  *(v2 + 64) = v31;
  *(v2 + 72) = v39;
  v42 = *(v2 + 88);

  *(v2 + 80) = v19;
  *(v2 + 88) = v20;
  *(v2 + 96) = v26;
  return result;
}

void sub_10006DA2C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];

  v7 = String._bridgeToObjectiveC()();
  v8 = TUCopyIDSCanonicalAddressForDestinationID();

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    sub_1000077C8(&qword_100172A80, &unk_1001187D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001186F0;
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v24 = [a2 isFaceTimeVideoAvailableForAnyDestinationInDestinations:isa];

    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1001186F0;
    *(v14 + 32) = v9;
    *(v14 + 40) = v11;

    v15 = Array._bridgeToObjectiveC()().super.isa;

    v16 = [a2 isFaceTimeMultiwayAvailableForAnyDestinationInDestinations:v15];

    sub_1000194DC();
    v17 = static NSUserDefaults.airdrop.getter();
    LOBYTE(v15) = SFAirDropUserDefaults.boopToCollaborateEnabled.getter();

    if (v15)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1001186F0;
      *(v18 + 32) = v9;
      *(v18 + 40) = v11;

      v19 = Array._bridgeToObjectiveC()().super.isa;

      v20 = [a2 isiMessageAvailableForAnyDestinationInDestinations:v19];
    }

    else
    {
      v20 = 0;
    }

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001186F0;
    *(inited + 32) = v9;
    v22 = inited + 32;
    *(inited + 40) = v11;
    sub_10008FFA4(inited);
    swift_setDeallocating();
    sub_1000712B0(v22);
    v23 = Set._bridgeToObjectiveC()().super.isa;

    LOBYTE(v22) = [a2 isAVLessSharePlayCapableForAnyDestinationInDestinations:v23];

    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v24;
    *(a3 + 17) = v16;
    *(a3 + 18) = v22;
    *(a3 + 19) = v20;
  }

  else
  {
    __break(1u);
  }
}

void sub_10006DCD0(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v60 = a1;
  v9 = sub_1000077C8(&qword_1001751A8, &qword_10011CCF8);
  v57 = *(v9 - 8);
  v55 = *(v57 + 64);
  __chkstk_darwin(v9);
  v56 = &v50 - v10;
  v11 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v58 = &v50 - v13;
  v54 = sub_1000077C8(&qword_1001751B0, &qword_10011CD00);
  v14 = *(v54 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v54);
  v17 = &v50 - v16;
  v18 = a2[3];
  v19 = a2[4];
  sub_1000078DC(a2, v18);
  v20 = *(v19 + 8);
  v53 = a3;
  v59 = a4;
  v20(&v69, a3, a4, v18, v19);
  if (*(&v69 + 1))
  {
    v21 = *v72;
    v52 = v69;
    v75 = v70;
    v76 = v71;
    v73 = *&v72[8];
    v74[0] = *&v72[24];
    v64 = v70;
    v65 = v71;
    *(v74 + 12) = *&v72[36];
    v63 = v69;
    *v66 = *v72;
    *&v66[8] = *&v72[8];
    *&v66[24] = *&v72[24];
    *&v66[36] = *&v72[36];
    v51 = *(&v69 + 1);
    v68 = *&v72[48];
    v67[5] = *&v72[32];
    v67[4] = *&v72[16];
    v67[3] = *v72;
    v67[2] = v71;
    v67[1] = v70;
    v67[0] = v69;
    sub_100070BB4(v67, v61);
    sub_10006D754(a5);
    v61[4] = *&v66[16];
    v61[5] = *&v66[32];
    v62 = *&v66[48];
    v61[0] = v63;
    v61[1] = v64;
    v61[2] = v65;
    v61[3] = *v66;
    v22 = v9;
    v50 = a5;
    v23 = v60;
    AsyncStream.Continuation.yield(_:)();
    (*(v14 + 8))(v17, v54);
    v24 = v58;
    static TaskPriority.userInitiated.getter();
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    v26 = v56;
    v27 = v57;
    (*(v57 + 16))(v56, v23, v22);
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = (v55 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    (*(v27 + 32))(v30 + v28, v26, v22);
    v31 = v30 + v29;
    v32 = v51;
    *v31 = v52;
    *(v31 + 8) = v32;
    v33 = v76;
    *(v31 + 16) = v75;
    *(v31 + 32) = v33;
    *(v31 + 48) = v21;
    *(v31 + 56) = v73;
    *(v31 + 72) = v74[0];
    *(v31 + 84) = *(v74 + 12);
    v34 = v50;
    *(v30 + ((v29 + 107) & 0xFFFFFFFFFFFFFFF8)) = v50;
    sub_100007BA4(&v69, v61, &qword_100174488, &qword_10011B208);
    v35 = v34;
    sub_10006EAC8(0, 0, v24, &unk_10011CD10, v30);
    sub_1000159AC(v24, &qword_100172F50, &qword_10011E500);

    AsyncStream.Continuation.onTermination.setter();
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100007D20(v36, qword_10017F350);
    v37 = v59;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v61[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_10003E81C(v53, v37, v61);
      _os_log_impl(&_mh_execute_header, v38, v39, "Attempting to resolve IDS capabilities for contact with identifier: %s", v40, 0xCu);
      sub_100007920(v41);
    }

    sub_10006D150(v21);
    sub_1000906B8(v42);

    isa = Set._bridgeToObjectiveC()().super.isa;

    [v35 beginQueryWithDestinations:isa];

    sub_1000159AC(&v69, &qword_100174488, &qword_10011B208);
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100007D20(v44, qword_10017F350);
    v45 = v59;

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v67[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_10003E81C(v53, v45, v67);
      _os_log_impl(&_mh_execute_header, v46, v47, "Could not find contact details for contact identifier: %s", v48, 0xCu);
      sub_100007920(v49);
    }

    AsyncStream.Continuation.finish()();
  }
}

uint64_t sub_10006E468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[29] = a4;
  v7 = sub_1000077C8(&qword_1001751B0, &qword_10011CD00);
  v6[32] = v7;
  v8 = *(v7 - 8);
  v6[33] = v8;
  v9 = *(v8 + 64) + 15;
  v6[34] = swift_task_alloc();
  v10 = *(*(sub_1000077C8(&qword_1001751B8, &qword_10011CD28) - 8) + 64) + 15;
  v6[35] = swift_task_alloc();
  v11 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v6[36] = v11;
  v12 = *(v11 - 8);
  v6[37] = v12;
  v13 = *(v12 + 64) + 15;
  v6[38] = swift_task_alloc();

  return _swift_task_switch(sub_10006E5CC, 0, 0);
}

uint64_t sub_10006E5CC()
{
  v1 = v0[38];
  v2 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v3 = sub_100071258();
  v4 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_10006E6CC;
  v6 = v0[38];
  v7 = v0[35];
  v8 = v0[36];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v3);
}

uint64_t sub_10006E6CC()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_10006EA3C;
  }

  else
  {
    v3 = sub_10006E7E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006E7FC()
{
  v1 = *(v0 + 280);
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 272);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);
    v22 = *(v10 + 64);
    v23 = *(v10 + 80);
    v24 = *(v10 + 96);
    v18 = *v10;
    v19 = *(v10 + 16);
    v20 = *(v10 + 32);
    v21 = *(v10 + 48);
    sub_100070BB4(v10, v0 + 16);
    sub_10006D754(v9);
    *(v0 + 168) = v21;
    *(v0 + 184) = v22;
    *(v0 + 200) = v23;
    *(v0 + 216) = v24;
    *(v0 + 120) = v18;
    *(v0 + 136) = v19;
    *(v0 + 152) = v20;
    sub_1000077C8(&qword_1001751A8, &qword_10011CCF8);
    AsyncStream.Continuation.yield(_:)();
    (*(v7 + 8))(v6, v8);
    sub_1000159AC(v1, &qword_1001751B8, &qword_10011CD28);
    v12 = sub_100071258();
    v13 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v14 = swift_task_alloc();
    *(v0 + 312) = v14;
    *v14 = v0;
    v14[1] = sub_10006E6CC;
    v15 = *(v0 + 304);
    v16 = *(v0 + 280);
    v17 = *(v0 + 288);

    return dispatch thunk of AsyncIteratorProtocol.next()(v16, v17, v12);
  }
}

uint64_t sub_10006EA3C()
{
  *(v0 + 224) = *(v0 + 320);
  sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10006EAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100007BA4(a3, v27 - v11, &qword_100172F50, &qword_10011E500);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000159AC(v12, &qword_100172F50, &qword_10011E500);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
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

uint64_t sub_10006ED88(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = *(*(sub_1000077C8(&qword_100172F50, &qword_10011E500) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v5 = sub_1000077C8(&qword_100175188, &qword_10011CCD0);
  v3[19] = v5;
  v6 = *(v5 - 8);
  v3[20] = v6;
  v7 = *(v6 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_10006EE9C, 0, 0);
}

uint64_t sub_10006EE9C()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v0[23] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;
  v7 = async function pointer to withOperationTimeout<A>(_:priority:operation:)[1];

  v8 = swift_task_alloc();
  v0[24] = v8;
  v9 = sub_1000077C8(&qword_100174488, &qword_10011B208);
  *v8 = v0;
  v8[1] = sub_10006F000;
  v10 = v0[22];
  v11 = v0[18];

  return withOperationTimeout<A>(_:priority:operation:)(v10, 5000000000000000000, 0, v11, &unk_10011CD38, v6, v9);
}

uint64_t sub_10006F000()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 184);
    sub_1000159AC(*(v2 + 144), &qword_100172F50, &qword_10011E500);

    return _swift_task_switch(sub_10006F158, 0, 0);
  }
}

uint64_t sub_10006F158()
{
  v34 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  (*(v3 + 16))(v1, *(v0 + 176), v2);
  v4 = (*(v3 + 88))(v1, v2);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  if (v4 == enum case for OperationTimeoutResult.success<A>(_:))
  {
    (*(v5 + 96))(*(v0 + 168), v7);
    v8 = *v6;
    v9 = v6[2];
    *(v0 + 32) = v6[1];
    *(v0 + 48) = v9;
    *(v0 + 16) = v8;
    v10 = v6[3];
    v11 = v6[4];
    v12 = v6[5];
    *(v0 + 112) = *(v6 + 24);
    *(v0 + 80) = v11;
    *(v0 + 96) = v12;
    *(v0 + 64) = v10;
    if (*(v0 + 24))
    {
      v14 = *(v0 + 72);
      v13 = *(v0 + 80);
      v15 = *(v0 + 88);

      sub_1000159AC(v0 + 16, &qword_100174488, &qword_10011B208);
      if (v13)
      {
        (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
        goto LABEL_11;
      }
    }
  }

  else
  {
    (*(v5 + 8))(*(v0 + 168), v7);
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 128);
  v17 = type metadata accessor for Logger();
  sub_100007D20(v17, qword_10017F350);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 176);
  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  if (v20)
  {
    v25 = *(v0 + 120);
    v24 = *(v0 + 128);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_10003E81C(v25, v24, &v33);
    _os_log_impl(&_mh_execute_header, v18, v19, "Timed out attempting to resolve a FaceTime-able handle for contact with identifier: %s", v26, 0xCu);
    sub_100007920(v27);
  }

  (*(v23 + 8))(v21, v22);
  v14 = 0;
  v13 = 0;
  v15 = 0;
LABEL_11:
  v29 = *(v0 + 168);
  v28 = *(v0 + 176);
  v30 = *(v0 + 144);

  v31 = *(v0 + 8);

  return v31(v14, v13, v15);
}

uint64_t sub_10006F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[46] = a3;
  v4[47] = a4;
  v4[44] = a1;
  v4[45] = a2;
  v5 = sub_1000077C8(&qword_100174480, &qword_10011B200);
  v4[48] = v5;
  v6 = *(v5 - 8);
  v4[49] = v6;
  v7 = *(v6 + 64) + 15;
  v4[50] = swift_task_alloc();
  v8 = sub_1000077C8(&unk_100174470, &unk_10011B1E0);
  v4[51] = v8;
  v9 = *(v8 - 8);
  v4[52] = v9;
  v10 = *(v9 + 64) + 15;
  v4[53] = swift_task_alloc();
  v11 = sub_1000077C8(&qword_100175190, &qword_10011CCF0);
  v4[54] = v11;
  v12 = *(v11 - 8);
  v4[55] = v12;
  v13 = *(v12 + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_10006F5DC, 0, 0);
}

uint64_t sub_10006F5DC()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[51];
  v19 = v1;
  v20 = v0[50];
  v8 = v0[46];
  v9 = v0[47];
  v10 = v0[45];
  *v6 = 1;
  (*(v5 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v7);
  sub_100007878(v10 + 16, (v0 + 39));
  v11 = *(v10 + 56);
  v12 = swift_task_alloc();
  v12[2] = v0 + 39;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v11;
  AsyncStream.init(_:bufferingPolicy:_:)();

  sub_100007920(v0 + 39);
  (*(v4 + 16))(v19, v2, v3);
  sub_1000199C8(&qword_100175198, &qword_100175190, &qword_10011CCF0);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v13 = sub_1000199C8(&qword_1001751A0, &qword_100174480, &qword_10011B200);
  v14 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v15 = swift_task_alloc();
  v0[58] = v15;
  *v15 = v0;
  v15[1] = sub_10006F7E0;
  v16 = v0[50];
  v17 = v0[48];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v17, v13);
}

uint64_t sub_10006F7E0()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[49];
    v4 = v2[50];
    v6 = v2[48];

    (*(v5 + 8))(v4, v6);
    v7 = nullsub_1;
  }

  else
  {
    v7 = sub_10006F920;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10006F920()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 80);
  *(v0 + 256) = *(v0 + 64);
  *(v0 + 272) = v3;
  *(v0 + 288) = *(v0 + 96);
  *(v0 + 304) = *(v0 + 112);
  v4 = *(v0 + 48);
  *(v0 + 224) = *(v0 + 32);
  *(v0 + 240) = v4;
  if (!v1)
  {
    v21 = *(v0 + 456);
    v22 = *(v0 + 432);
    v23 = *(v0 + 440);
    v24 = *(v0 + 352);
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    (*(v23 + 8))(v21, v22);
    *v24 = v2;
    *(v24 + 8) = 0;
    v25 = *(v0 + 240);
    *(v24 + 16) = *(v0 + 224);
    *(v24 + 32) = v25;
    v26 = *(v0 + 256);
    v27 = *(v0 + 272);
    v28 = *(v0 + 288);
    *(v24 + 96) = *(v0 + 304);
    *(v24 + 64) = v27;
    *(v24 + 80) = v28;
    *(v24 + 48) = v26;
    goto LABEL_5;
  }

  v5 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v5;
  v6 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v7 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v7;
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 152) = v6;
  v8 = *(v0 + 184);
  if ()
  {
    v9 = *(v0 + 456);
    v10 = *(v0 + 432);
    v11 = *(v0 + 440);
    v13 = *(v0 + 392);
    v12 = *(v0 + 400);
    v14 = *(v0 + 384);
    v15 = *(v0 + 352);

    (*(v13 + 8))(v12, v14);
    (*(v11 + 8))(v9, v10);
    v16 = *(v0 + 120);
    v17 = *(v0 + 152);
    *(v15 + 16) = *(v0 + 136);
    *(v15 + 32) = v17;
    *v15 = v16;
    v18 = *(v0 + 168);
    v19 = *(v0 + 184);
    v20 = *(v0 + 200);
    *(v15 + 96) = *(v0 + 216);
    *(v15 + 64) = v19;
    *(v15 + 80) = v20;
    *(v15 + 48) = v18;
LABEL_5:
    v30 = *(v0 + 448);
    v29 = *(v0 + 456);
    v31 = *(v0 + 424);
    v32 = *(v0 + 400);

    v33 = *(v0 + 8);

    return v33();
  }

  sub_1000159AC(v0 + 120, &qword_100174488, &qword_10011B208);
  v35 = sub_1000199C8(&qword_1001751A0, &qword_100174480, &qword_10011B200);
  v36 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v37 = swift_task_alloc();
  *(v0 + 464) = v37;
  *v37 = v0;
  v37[1] = sub_10006F7E0;
  v38 = *(v0 + 400);
  v39 = *(v0 + 384);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v39, v35);
}

uint64_t sub_10006FBD0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = *(*(sub_1000077C8(&qword_100172F50, &qword_10011E500) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v5 = sub_1000077C8(&qword_100175188, &qword_10011CCD0);
  v3[19] = v5;
  v6 = *(v5 - 8);
  v3[20] = v6;
  v7 = *(v6 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_10006FCE4, 0, 0);
}

uint64_t sub_10006FCE4()
{
  sub_1000194DC();
  v1 = static NSUserDefaults.airdrop.getter();
  v2 = SFAirDropUserDefaults.boopToCollaborateEnabled.getter();

  if (v2)
  {
    v3 = v0[17];
    v4 = v0[18];
    v6 = v0[15];
    v5 = v0[16];
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v0[23] = v8;
    v8[2] = v3;
    v8[3] = v6;
    v8[4] = v5;
    v9 = async function pointer to withOperationTimeout<A>(_:priority:operation:)[1];

    v10 = swift_task_alloc();
    v0[24] = v10;
    v11 = sub_1000077C8(&qword_100174488, &qword_10011B208);
    *v10 = v0;
    v10[1] = sub_10006FEC8;
    v12 = v0[22];
    v13 = v0[18];

    return withOperationTimeout<A>(_:priority:operation:)(v12, 5000000000000000000, 0, v13, &unk_10011CCE0, v8, v11);
  }

  else
  {
    v15 = v0[21];
    v14 = v0[22];
    v16 = v0[18];

    v17 = v0[1];

    return v17(0, 0, 0);
  }
}

uint64_t sub_10006FEC8()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 184);
    sub_1000159AC(*(v2 + 144), &qword_100172F50, &qword_10011E500);

    return _swift_task_switch(sub_100070020, 0, 0);
  }
}

uint64_t sub_100070020()
{
  v34 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  (*(v3 + 16))(v1, *(v0 + 176), v2);
  v4 = (*(v3 + 88))(v1, v2);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  if (v4 == enum case for OperationTimeoutResult.success<A>(_:))
  {
    (*(v5 + 96))(*(v0 + 168), v7);
    v8 = *v6;
    v9 = v6[2];
    *(v0 + 32) = v6[1];
    *(v0 + 48) = v9;
    *(v0 + 16) = v8;
    v10 = v6[3];
    v11 = v6[4];
    v12 = v6[5];
    *(v0 + 112) = *(v6 + 24);
    *(v0 + 80) = v11;
    *(v0 + 96) = v12;
    *(v0 + 64) = v10;
    if (*(v0 + 24))
    {
      v14 = *(v0 + 96);
      v13 = *(v0 + 104);
      v15 = *(v0 + 112);

      sub_1000159AC(v0 + 16, &qword_100174488, &qword_10011B208);
      if (v13)
      {
        (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
        goto LABEL_11;
      }
    }
  }

  else
  {
    (*(v5 + 8))(*(v0 + 168), v7);
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 128);
  v17 = type metadata accessor for Logger();
  sub_100007D20(v17, qword_10017F350);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 176);
  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  if (v20)
  {
    v25 = *(v0 + 120);
    v24 = *(v0 + 128);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_10003E81C(v25, v24, &v33);
    _os_log_impl(&_mh_execute_header, v18, v19, "Timed out attempting to resolve a iMessageHandle-able handle for contact with identifier: %s", v26, 0xCu);
    sub_100007920(v27);
  }

  (*(v23 + 8))(v21, v22);
  v14 = 0;
  v13 = 0;
  v15 = 0;
LABEL_11:
  v29 = *(v0 + 168);
  v28 = *(v0 + 176);
  v30 = *(v0 + 144);

  v31 = *(v0 + 8);

  return v31(v14, v13, v15);
}

uint64_t sub_1000702F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[46] = a3;
  v4[47] = a4;
  v4[44] = a1;
  v4[45] = a2;
  v5 = sub_1000077C8(&qword_100174480, &qword_10011B200);
  v4[48] = v5;
  v6 = *(v5 - 8);
  v4[49] = v6;
  v7 = *(v6 + 64) + 15;
  v4[50] = swift_task_alloc();
  v8 = sub_1000077C8(&unk_100174470, &unk_10011B1E0);
  v4[51] = v8;
  v9 = *(v8 - 8);
  v4[52] = v9;
  v10 = *(v9 + 64) + 15;
  v4[53] = swift_task_alloc();
  v11 = sub_1000077C8(&qword_100175190, &qword_10011CCF0);
  v4[54] = v11;
  v12 = *(v11 - 8);
  v4[55] = v12;
  v13 = *(v12 + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_1000704A4, 0, 0);
}

uint64_t sub_1000704A4()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[51];
  v19 = v1;
  v20 = v0[50];
  v8 = v0[46];
  v9 = v0[47];
  v10 = v0[45];
  *v6 = 1;
  (*(v5 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v7);
  sub_100007878(v10 + 16, (v0 + 39));
  v11 = *(v10 + 56);
  v12 = swift_task_alloc();
  v12[2] = v0 + 39;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v11;
  AsyncStream.init(_:bufferingPolicy:_:)();

  sub_100007920(v0 + 39);
  (*(v4 + 16))(v19, v2, v3);
  sub_1000199C8(&qword_100175198, &qword_100175190, &qword_10011CCF0);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v13 = sub_1000199C8(&qword_1001751A0, &qword_100174480, &qword_10011B200);
  v14 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v15 = swift_task_alloc();
  v0[58] = v15;
  *v15 = v0;
  v15[1] = sub_1000706A8;
  v16 = v0[50];
  v17 = v0[48];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v17, v13);
}

uint64_t sub_1000706A8()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[49];
    v4 = v2[50];
    v6 = v2[48];

    (*(v5 + 8))(v4, v6);
    v7 = j_nullsub_1;
  }

  else
  {
    v7 = sub_1000707E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000707E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 80);
  *(v0 + 256) = *(v0 + 64);
  *(v0 + 272) = v3;
  *(v0 + 288) = *(v0 + 96);
  *(v0 + 304) = *(v0 + 112);
  v4 = *(v0 + 48);
  *(v0 + 224) = *(v0 + 32);
  *(v0 + 240) = v4;
  if (!v1)
  {
    v21 = *(v0 + 456);
    v22 = *(v0 + 432);
    v23 = *(v0 + 440);
    v24 = *(v0 + 352);
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    (*(v23 + 8))(v21, v22);
    *v24 = v2;
    *(v24 + 8) = 0;
    v25 = *(v0 + 240);
    *(v24 + 16) = *(v0 + 224);
    *(v24 + 32) = v25;
    v26 = *(v0 + 256);
    v27 = *(v0 + 272);
    v28 = *(v0 + 288);
    *(v24 + 96) = *(v0 + 304);
    *(v24 + 64) = v27;
    *(v24 + 80) = v28;
    *(v24 + 48) = v26;
    goto LABEL_5;
  }

  v5 = *(v0 + 80);
  *(v0 + 200) = *(v0 + 96);
  v6 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  *(v0 + 184) = v5;
  v7 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v7;
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 152) = v6;
  v8 = *(v0 + 208);
  if ()
  {
    v9 = *(v0 + 456);
    v10 = *(v0 + 432);
    v11 = *(v0 + 440);
    v13 = *(v0 + 392);
    v12 = *(v0 + 400);
    v14 = *(v0 + 384);
    v15 = *(v0 + 352);

    (*(v13 + 8))(v12, v14);
    (*(v11 + 8))(v9, v10);
    v16 = *(v0 + 120);
    v17 = *(v0 + 152);
    *(v15 + 16) = *(v0 + 136);
    *(v15 + 32) = v17;
    *v15 = v16;
    v18 = *(v0 + 168);
    v19 = *(v0 + 184);
    v20 = *(v0 + 200);
    *(v15 + 96) = *(v0 + 216);
    *(v15 + 64) = v19;
    *(v15 + 80) = v20;
    *(v15 + 48) = v18;
LABEL_5:
    v30 = *(v0 + 448);
    v29 = *(v0 + 456);
    v31 = *(v0 + 424);
    v32 = *(v0 + 400);

    v33 = *(v0 + 8);

    return v33();
  }

  sub_1000159AC(v0 + 120, &qword_100174488, &qword_10011B208);
  v35 = sub_1000199C8(&qword_1001751A0, &qword_100174480, &qword_10011B200);
  v36 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v37 = swift_task_alloc();
  *(v0 + 464) = v37;
  *v37 = v0;
  v37[1] = sub_1000706A8;
  v38 = *(v0 + 400);
  v39 = *(v0 + 384);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v39, v35);
}

uint64_t sub_100070A98()
{
  sub_100007920((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100070B00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_1000702F8(a1, v4, v5, v6);
}

uint64_t sub_100070C10()
{
  v1 = sub_1000077C8(&qword_1001751A8, &qword_10011CCF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 107) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v5 + 24);

  v10 = *(v0 + v5 + 40);

  v11 = *(v0 + v5 + 48);

  v12 = *(v0 + v5 + 64);

  v13 = *(v0 + v5 + 88);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100070D38(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000077C8(&qword_1001751A8, &qword_10011CCF8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((v7 + 107) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000BCF0;

  return sub_10006E468(a1, v8, v9, v1 + v6, v1 + v7, v10);
}

uint64_t sub_100070EA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v58 = _swiftEmptyArrayStorage;
  sub_10000E4F4(0, v3, 0);
  v4 = _swiftEmptyArrayStorage;
  v6 = v5 + 56;
  v7 = -1 << *(v5 + 32);
  v8 = _HashTable.startBucket.getter();
  v9 = 0;
  v42 = v5 + 64;
  v43 = v3;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_22;
    }

    v45 = v9;
    v46 = *(v5 + 36);
    v13 = v5;
    v14 = *(v5 + 48) + 24 * v8;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 17);
    v19 = *(v14 + 18);
    LOBYTE(v14) = *(v14 + 19);
    v47[0] = v15;
    v47[1] = v16;
    v48 = v17;
    v49 = v18;
    v50 = v19;
    v51 = v14;

    sub_10006DA2C(v47, a2, &v52);
    if (v2)
    {
      goto LABEL_26;
    }

    v20 = v52;
    v21 = v53;
    v22 = v54;
    v23 = v55;
    v24 = v56;
    v25 = v57;
    v58 = v4;
    v27 = v4[2];
    v26 = v4[3];
    if (v27 >= v26 >> 1)
    {
      v40 = v53;
      v41 = v52;
      v38 = v56;
      v39 = v54;
      v37 = v57;
      sub_10000E4F4((v26 > 1), v27 + 1, 1);
      v25 = v37;
      v24 = v38;
      v22 = v39;
      v21 = v40;
      v20 = v41;
      v4 = v58;
    }

    v4[2] = v27 + 1;
    v28 = &v4[3 * v27];
    v28[4] = v20;
    v28[5] = v21;
    *(v28 + 48) = v22;
    *(v28 + 49) = v23;
    *(v28 + 50) = v24;
    *(v28 + 51) = v25;
    v10 = 1 << *(v13 + 32);
    if (v8 >= v10)
    {
      goto LABEL_23;
    }

    v29 = *(v6 + 8 * v12);
    if ((v29 & (1 << v8)) == 0)
    {
      goto LABEL_24;
    }

    v5 = v13;
    if (v46 != *(v13 + 36))
    {
      goto LABEL_25;
    }

    v30 = v29 & (-2 << (v8 & 0x3F));
    if (v30)
    {
      v10 = __clz(__rbit64(v30)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v11 = v43;
    }

    else
    {
      v31 = v12 << 6;
      v32 = v12 + 1;
      v11 = v43;
      v33 = (v42 + 8 * v12);
      while (v32 < (v10 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          sub_100047AC0(v8, v46, 0);
          v10 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      sub_100047AC0(v8, v46, 0);
    }

LABEL_4:
    v2 = 0;
    v9 = v45 + 1;
    v8 = v10;
    if (v45 + 1 == v11)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:

  __break(1u);
  return result;
}

uint64_t sub_100071168()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000711A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_10003E520(a1, v5);
}

unint64_t sub_100071258()
{
  result = qword_1001751C0;
  if (!qword_1001751C0)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001751C0);
  }

  return result;
}

uint64_t sub_100071304()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100071344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BCF0;

  return sub_10006F430(a1, v4, v5, v6);
}

uint64_t sub_1000713F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [a1 givenName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [a1 displayName];
  if (!v12)
  {
    v12 = [a1 givenName];
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v53 = a1;
  v17 = [a1 emailAddresses];
  sub_1000077C8(&qword_1001751D0, &unk_10011CD50);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
LABEL_36:
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v5;
  v51 = a2;
  v45 = v9;
  v47 = v7;
  v41 = v14;
  v43 = v11;
  v39 = v16;
  if (!v19)
  {

    v16 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  result = sub_10000E4F4(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    a2 = 0;
    v16 = _swiftEmptyArrayStorage;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v18 + 8 * a2 + 32);
      }

      v22 = v21;
      v23 = [v21 value];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        sub_10000E4F4((v26 > 1), v27 + 1, 1);
      }

      a2 = a2 + 1;
      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[3 * v27];
      v28[4] = v5;
      v28[5] = v25;
      *(v28 + 12) = 0;
    }

    while (v19 != a2);

LABEL_16:
    v29 = [v53 phoneNumbers];
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = v30 & 0xFFFFFFFFFFFFFF8;
    if (v30 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11)
      {
LABEL_18:
        v14 = 0;
        v7 = v30 & 0xC000000000000001;
        v53 = _swiftEmptyArrayStorage;
        do
        {
          v18 = v14;
          while (1)
          {
            if (v7)
            {
              v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v18 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_35;
              }

              v31 = *(v30 + 8 * v18 + 32);
            }

            a2 = v31;
            v14 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            v32 = [v31 value];
            v5 = [v32 unformattedInternationalStringValue];

            if (v5)
            {
              break;
            }

            ++v18;
            if (v14 == v11)
            {
              goto LABEL_39;
            }
          }

          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1000A5AD0(0, *(v53 + 2) + 1, 1, v53);
          }

          v5 = *(v53 + 2);
          v36 = *(v53 + 3);
          a2 = (v5 + 1);
          if (v5 >= v36 >> 1)
          {
            v53 = sub_1000A5AD0((v36 > 1), v5 + 1, 1, v53);
          }

          *(v53 + 2) = a2;
          v37 = &v53[24 * v5];
          *(v37 + 4) = v33;
          *(v37 + 5) = v35;
          *(v37 + 12) = 0;
        }

        while (v14 != v11);
        goto LABEL_39;
      }
    }

    else
    {
      v11 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

    v53 = _swiftEmptyArrayStorage;
LABEL_39:

    sub_1000A5CD0(v53);
    v38 = sub_1000905CC(_swiftEmptyArrayStorage);

    *v52 = v50;
    *(v52 + 8) = v48;
    *(v52 + 16) = v46;
    *(v52 + 24) = v44;
    *(v52 + 32) = v42;
    *(v52 + 40) = v40;
    *(v52 + 48) = v38;
    *(v52 + 56) = 0;
    *(v52 + 64) = 0;
    *(v52 + 72) = 0;
    *(v52 + 80) = 0;
    *(v52 + 88) = 0;
    *(v52 + 96) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10007189C()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_1001751D8);
  v1 = sub_100007D20(v0, qword_1001751D8);
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F338);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100071964@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v7 = type metadata accessor for TapGesture();
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000077C8(&qword_1001751F0, &qword_10011CE00);
  v12 = *(v11 - 8);
  v55 = v11;
  v56 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v52 = &v41 - v14;
  v58 = sub_1000077C8(&qword_1001751F8, &qword_10011CE08);
  v15 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v17 = &v41 - v16;
  v18 = sub_1000077C8(&qword_100175200, &qword_10011CE10);
  v45 = *(v18 - 8);
  v19 = *(v45 + 64);
  __chkstk_darwin(v18 - 8);
  v44 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v41 - v21;
  v23 = a1;
  sub_100071E5C(a2, &v59);
  v25 = v59;
  v24 = v60;
  v49 = v62;
  v50 = v61;
  v47 = v64;
  v48 = v63;
  v46 = v65;
  v59 = v61;
  v60 = v62;
  v61 = v63;
  v62 = v64;
  LOBYTE(v63) = v65;
  v26 = sub_10007236C(v23, a2);
  v43 = v22;
  v42 = v23;
  sub_100072984(a2, v22);
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0x4028000000000000;
  v17[16] = 0;
  v27 = sub_1000077C8(&qword_100175208, &unk_10011CE18);
  sub_100073190(v23, a2, a3, v25, v24, &v59, v26, &v17[*(v27 + 44)]);

  if (a3)
  {
    v28 = 0x402E000000000000;
  }

  else
  {
    v28 = 0x4030000000000000;
  }

  if (a3)
  {
    v29 = 0x4036000000000000;
  }

  else
  {
    v29 = 0x4030000000000000;
  }

  if (a3)
  {
    v30 = 0x4031000000000000;
  }

  else
  {
    v30 = 0x4030000000000000;
  }

  v31 = static Edge.Set.all.getter();
  v32 = &v17[*(v58 + 36)];
  *v32 = v31;
  *(v32 + 1) = v28;
  *(v32 + 2) = v29;
  *(v32 + 3) = v28;
  *(v32 + 4) = v30;
  v32[40] = 0;
  v33 = v51;
  TapGesture.init(count:)();
  v34 = v44;
  sub_100007BA4(v22, v44, &qword_100175200, &qword_10011CE10);
  v35 = (*(v45 + 80) + 33) & ~*(v45 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v42;
  *(v36 + 24) = a2;
  *(v36 + 32) = a3;
  sub_100021A84(v34, v36 + v35, &qword_100175200, &qword_10011CE10);

  v37 = v52;
  v38 = v53;
  Gesture.onEnded(_:)();

  (*(v54 + 8))(v33, v38);
  static GestureMask.all.getter();
  sub_100077BA8();
  sub_1000199C8(&qword_100175228, &qword_1001751F0, &qword_10011CE00);
  v39 = v55;
  View.gesture<A>(_:including:)();
  sub_10004BB08(v50, v49, v48, v47, v46);
  (*(v56 + 8))(v37, v39);
  sub_1000159AC(v17, &qword_1001751F8, &qword_10011CE08);
  return sub_1000159AC(v43, &qword_100175200, &qword_10011CE10);
}

uint64_t sub_100071E5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&qword_100173CA8, &unk_10011A310);
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  __chkstk_darwin(v9);
  v12 = (&v40 - v11);
  v13 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v14 + 88))(v17, v13) != enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    (*(v14 + 8))(v17, v13);
LABEL_6:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v29 = String.init(localized:table:bundle:locale:comment:)();
    v30 = v39;
    v32 = *(v44 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
    v31 = *(v44 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);

    v38 = 0;
    v37 = 64;
    goto LABEL_7;
  }

  (*(v14 + 96))(v17, v13);
  v23 = sub_1000077C8(&qword_100173078, &unk_100118F60);
  v24 = *&v17[v23[12]];

  v25 = *&v17[v23[16]];

  (*(v19 + 32))(v22, &v17[v23[20]], v18);
  v26 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v26 - 8) + 8))(v17, v26);
  SFAirDrop.PermissionRequest.style.getter();
  (*(v19 + 8))(v22, v18);
  v28 = v40;
  v27 = v41;
  if ((*(v40 + 88))(v12, v41) != enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
  {
    (*(v28 + 8))(v12, v27);
    goto LABEL_6;
  }

  (*(v28 + 96))(v12, v27);
  v29 = *v12;
  v30 = v12[1];
  v32 = v12[2];
  v31 = v12[3];
  v33 = v12[4];

  v34 = *(sub_1000077C8(&qword_100173CC0, qword_10011D010) + 80);
  v35 = type metadata accessor for SFAirDrop.DeclineAction();
  result = (*(*(v35 - 8) + 8))(v12 + v34, v35);
  v37 = 0;
  v38 = 1;
LABEL_7:
  *a2 = v29;
  *(a2 + 8) = v30;
  *(a2 + 16) = v32;
  *(a2 + 24) = v31;
  *(a2 + 32) = 0;
  *(a2 + 40) = v38;
  *(a2 + 48) = v37;
  return result;
}

void *sub_10007236C(uint64_t a1, uint64_t (**a2)(char *, char *, uint64_t))
{
  v55 = a2;
  v54 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v2 = *(v54 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v54);
  v56 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v46 - v6;
  v7 = sub_1000077C8(&qword_100173CA8, &unk_10011A310);
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v11 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v46 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v12 + 88))(v15, v11) != enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    (*(v12 + 8))(v15, v11);
    return _swiftEmptyArrayStorage;
  }

  (*(v12 + 96))(v15, v11);
  v21 = sub_1000077C8(&qword_100173078, &unk_100118F60);
  v22 = *&v15[v21[12]];

  v23 = *&v15[v21[16]];

  (*(v17 + 32))(v20, &v15[v21[20]], v16);
  v24 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v24 - 8) + 8))(v15, v24);
  SFAirDrop.PermissionRequest.style.getter();
  v26 = v51;
  v25 = v52;
  if ((*(v51 + 88))(v10, v52) != enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
  {
    (*(v17 + 8))(v20, v16);
    (*(v26 + 8))(v10, v25);
    return _swiftEmptyArrayStorage;
  }

  v47 = v20;
  v48 = v17;
  v49 = v16;
  (*(v26 + 96))(v10, v25);
  v27 = *(v10 + 1);

  v28 = *(v10 + 3);

  v29 = *(v10 + 4);
  v30 = *(sub_1000077C8(&qword_100173CC0, qword_10011D010) + 80);
  v31 = type metadata accessor for SFAirDrop.DeclineAction();
  result = (*(*(v31 - 8) + 8))(&v10[v30], v31);
  v33 = *(v29 + 16);
  if (!v33)
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_18:
    (*(v48 + 8))(v47, v49);

    return v35;
  }

  v34 = 0;
  v55 = (v2 + 32);
  v50 = (v2 + 8);
  v35 = _swiftEmptyArrayStorage;
  v37 = v53;
  v36 = v54;
  v51 = v2 + 16;
  v52 = v29;
  while (v34 < *(v29 + 16))
  {
    v38 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v39 = *(v2 + 72);
    (*(v2 + 16))(v37, v29 + v38 + v39 * v34, v36);
    if (SFAirDrop.AcceptAction.hidden.getter())
    {
      result = (*v50)(v37, v36);
    }

    else
    {
      v40 = v2;
      v41 = *v55;
      (*v55)(v56, v37, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000E454(0, v35[2] + 1, 1);
        v35 = v57;
      }

      v44 = v35[2];
      v43 = v35[3];
      if (v44 >= v43 >> 1)
      {
        sub_10000E454(v43 > 1, v44 + 1, 1);
        v35 = v57;
      }

      v35[2] = v44 + 1;
      v45 = v35 + v38 + v44 * v39;
      v36 = v54;
      result = v41(v45, v56, v54);
      v2 = v40;
      v29 = v52;
      v37 = v53;
    }

    if (v33 == ++v34)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100072984@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v64 = a1;
  v60 = a2;
  v62 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v66 = *(v62 - 8);
  v2 = *(v66 + 64);
  __chkstk_darwin(v62);
  v4 = &v49 - v3;
  v65 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v56 = *(v65 - 8);
  v61 = v56;
  v5 = *(v56 + 64);
  __chkstk_darwin(v65);
  v54 = &v49 - v6;
  v7 = sub_1000077C8(&qword_100175200, &qword_10011CE10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v55 = &v49 - v9;
  v63 = sub_1000077C8(&qword_100173CA8, &unk_10011A310);
  v59 = *(v63 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v63);
  v12 = (&v49 - v11);
  v13 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v49 - v21;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v14 + 88))(v17, v13) != enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    (*(v14 + 8))(v17, v13);
    return (*(v61 + 56))(v60, 1, 1, v65);
  }

  (*(v14 + 96))(v17, v13);
  v23 = sub_1000077C8(&qword_100173078, &unk_100118F60);
  v24 = *&v17[v23[12]];

  v25 = *&v17[v23[16]];

  (*(v19 + 32))(v22, &v17[v23[20]], v18);
  v26 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v26 - 8) + 8))(v17, v26);
  SFAirDrop.PermissionRequest.style.getter();
  v27 = v59;
  v28 = v63;
  if ((*(v59 + 88))(v12, v63) != enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
  {
    (*(v19 + 8))(v22, v18);
    (*(v27 + 8))(v12, v28);
    return (*(v61 + 56))(v60, 1, 1, v65);
  }

  v51 = v22;
  v52 = v19;
  v53 = v18;
  (*(v27 + 96))(v12, v28);
  v29 = v12[1];

  v30 = v12[3];

  v31 = v12[4];
  v32 = *(sub_1000077C8(&qword_100173CC0, qword_10011D010) + 80);
  v33 = type metadata accessor for SFAirDrop.DeclineAction();
  v34 = v12 + v32;
  v35 = v31;
  (*(*(v33 - 8) + 8))(v34, v33);
  v36 = *(v61 + 56);
  v61 += 56;
  v50 = v36;
  result = (v36)(v55, 1, 1, v65);
  v38 = *(v31 + 16);
  v39 = v62;
  v40 = v54;
  if (v38)
  {
    v41 = 0;
    v42 = v35 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    LODWORD(v64) = enum case for SFAirDrop.AcceptAction.single<A>(_:);
    v57 = (v66 + 96);
    v58 = (v66 + 8);
    v59 = v56 + 32;
    v56 += 8;
    while (v41 < *(v35 + 16))
    {
      v43 = v66;
      (*(v66 + 16))(v4, v42 + *(v66 + 72) * v41, v39);
      v44 = (*(v43 + 88))(v4, v39);
      if (v44 == v64)
      {
        (*v57)(v4, v39);
        v63 = *(sub_1000077C8(&qword_100173CC8, &qword_10011A330) + 48);
        v45 = *v59;
        v46 = v65;
        (*v59)(v40, v4, v65);
        v47 = type metadata accessor for UUID();
        (*(*(v47 - 8) + 8))(&v4[v63], v47);
        if (SFAirDrop.AcceptAction.Single.hidden.getter())
        {

          v48 = v55;
          sub_1000159AC(v55, &qword_100175200, &qword_10011CE10);
          (*(v52 + 8))(v51, v53);
          v45(v48, v40, v46);
          v50(v48, 0, 1, v46);
          return sub_100021A84(v55, v60, &qword_100175200, &qword_10011CE10);
        }

        result = (*v56)(v40, v46);
        v39 = v62;
      }

      else
      {
        result = (*v58)(v4, v39);
      }

      if (v38 == ++v41)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    (*(v52 + 8))(v51, v53);
    return sub_100021A84(v55, v60, &qword_100175200, &qword_10011CE10);
  }

  return result;
}

void sub_100073190(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v59 = a7;
  v61 = a6;
  v62 = a4;
  v63 = a5;
  v73 = a3;
  v74 = a1;
  v66 = a8;
  v9 = sub_1000077C8(&qword_100175230, &qword_10011CE98);
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  __chkstk_darwin(v9);
  v58 = &v57 - v11;
  v12 = sub_1000077C8(&qword_100175238, &unk_10011CEA0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v72 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  v18 = sub_1000077C8(&qword_100174100, &qword_10011AD08);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v70 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v75 = (&v57 - v22);
  v23 = type metadata accessor for DeviceLockState();
  v24 = *(v23 - 8);
  v25 = v24[8];
  __chkstk_darwin(v23);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v57 - v29;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v31 = enum case for DeviceLockState.unlocked(_:);
  v60 = v24[13];
  v60(v27);
  v32 = static DeviceLockState.== infix(_:_:)();
  v33 = v24[1];
  v33(v27, v23);
  v33(v30, v23);
  v71 = v17;
  if (v32)
  {
    type metadata accessor for AirDropTransferSession();
    sub_100078434(&qword_100173460, type metadata accessor for AirDropTransferSession);
    v67 = ObservedObject.init(wrappedValue:)();
    v34 = v73;
    v64 = v73 & 1;
    v65 = v35;
  }

  else
  {

    v67 = 0;
    v64 = 0;
    v65 = 0;
    v34 = v73;
  }

  v36 = static HorizontalAlignment.leading.getter();
  v37 = v75;
  *v75 = v36;
  v37[1] = 0;
  *(v37 + 16) = 0;
  v38 = sub_1000077C8(&qword_100174108, &qword_10011CEB0);
  sub_100073884(v34 & 1, v62, v63, v61, v37 + *(v38 + 44));
  swift_getKeyPath();
  swift_getKeyPath();
  v63 = a2;
  static Published.subscript.getter();

  (v60)(v27, v31, v23);
  v39 = static DeviceLockState.== infix(_:_:)();
  v33(v27, v23);
  v33(v30, v23);
  if (v39)
  {
    v40 = v59;
    v41 = v71;
    v42 = v69;
    if (*(v59 + 16))
    {
      v43 = *(sub_1000077C8(&unk_100172F90, &qword_100118CE0) - 8);
      v44 = v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v45 = v58;
      sub_100073D40(v44, 1, v74, v63, v73 & 1, v58);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v46 = (v45 + *(v42 + 36));
      v47 = v77;
      *v46 = v76;
      v46[1] = v47;
      v46[2] = v78;
      sub_1000781A8(v45, v41);
      v48 = 0;
    }

    else
    {
      v48 = 1;
    }
  }

  else
  {
    v48 = 1;
    v41 = v71;
    v42 = v69;
  }

  (*(v68 + 56))(v41, v48, 1, v42);
  v49 = v75;
  v50 = v70;
  sub_100007BA4(v75, v70, &qword_100174100, &qword_10011AD08);
  v51 = v72;
  sub_100007BA4(v41, v72, &qword_100175238, &unk_10011CEA0);
  v53 = v66;
  v52 = v67;
  v55 = v64;
  v54 = v65;
  *v66 = v67;
  v53[1] = v54;
  v53[3] = 0;
  v53[4] = 0;
  v53[2] = v55;
  *(v53 + 40) = 0;
  v56 = sub_1000077C8(&qword_100175240, &unk_10011CEB8);
  sub_100007BA4(v50, v53 + *(v56 + 48), &qword_100174100, &qword_10011AD08);
  sub_100007BA4(v51, v53 + *(v56 + 64), &qword_100175238, &unk_10011CEA0);
  sub_10004DC44(v52, v54, v55, 0, 0);
  sub_10004DCA8(v52, v54, v55, 0, 0);
  sub_1000159AC(v41, &qword_100175238, &unk_10011CEA0);
  sub_1000159AC(v49, &qword_100174100, &qword_10011AD08);
  sub_1000159AC(v51, &qword_100175238, &unk_10011CEA0);
  sub_1000159AC(v50, &qword_100174100, &qword_10011AD08);
  sub_10004DCA8(v52, v54, v55, 0, 0);
}

uint64_t sub_100073884@<X0>(char a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v49 = a3;
  v47 = a2;
  v41 = type metadata accessor for Font.TextStyle();
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v41);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AirDropDescriptionView();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  v16 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  __chkstk_darwin(v22);
  v24 = &v39 - v23;
  if (a1)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v45 = 0;
    v46 = v53;
    v44 = v55;
    v43 = v57;
    v42 = v58;
    v52 = 1;
    v51 = v54;
    v50 = v56;
    v25 = 1;
    v39 = v54;
    v40 = v56;
    LOBYTE(v59[0]) = 0;
  }

  else
  {
    v46 = 0;
    v44 = 0;
    v43 = 0;
    v42 = 0;
    v40 = 0;
    v39 = 0;
    v25 = 0;
    v45 = 1;
  }

  *&v59[0] = 0x402C000000000000;
  (*(v8 + 104))(v11, enum case for Font.TextStyle.subheadline(_:), v41);
  sub_10004A578();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v26 = &v15[v12[5]];
  v27 = v49;
  *v26 = v47;
  *(v26 + 1) = v27;
  v28 = &v15[v12[6]];
  v29 = *(a4 + 16);
  *v28 = *a4;
  *(v28 + 1) = v29;
  v28[32] = *(a4 + 32);
  *&v15[v12[7]] = 0x3FE0000000000000;

  sub_100078D60(a4, v59);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10004DDC8(v15, v21);
  v30 = &v21[*(v48 + 36)];
  v31 = v59[5];
  *(v30 + 4) = v59[4];
  *(v30 + 5) = v31;
  *(v30 + 6) = v59[6];
  v32 = v59[1];
  *v30 = v59[0];
  *(v30 + 1) = v32;
  v33 = v59[3];
  *(v30 + 2) = v59[2];
  *(v30 + 3) = v33;
  sub_100021A84(v21, v24, &qword_100174138, &unk_10011AE80);
  sub_100007BA4(v24, v18, &qword_100174138, &unk_10011AE80);
  *a5 = 0;
  *(a5 + 8) = v25;
  v34 = v39;
  *(a5 + 16) = v46;
  *(a5 + 24) = v34;
  v35 = v40;
  *(a5 + 32) = v44;
  *(a5 + 40) = v35;
  v36 = v42;
  *(a5 + 48) = v43;
  *(a5 + 56) = v36;
  *(a5 + 64) = v45;
  v37 = sub_1000077C8(&qword_100174140, &qword_100122070);
  sub_100007BA4(v18, a5 + *(v37 + 48), &qword_100174138, &unk_10011AE80);
  sub_1000159AC(v24, &qword_100174138, &unk_10011AE80);
  return sub_1000159AC(v18, &qword_100174138, &unk_10011AE80);
}

uint64_t sub_100073D40@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v182 = a5;
  v181 = a4;
  v180 = a3;
  v178 = a2;
  v176 = a1;
  v192 = a6;
  v174 = sub_1000077C8(&qword_100175248, &qword_10011CEC8);
  v6 = *(*(v174 - 8) + 64);
  __chkstk_darwin(v174);
  v159 = &v141 - v7;
  v175 = sub_1000077C8(&qword_100175250, &qword_10011CED0);
  v161 = *(v175 - 8);
  v8 = *(v161 + 64);
  __chkstk_darwin(v175);
  v160 = &v141 - v9;
  v170 = sub_1000077C8(&qword_100175258, &qword_10011CED8);
  v10 = *(*(v170 - 8) + 64);
  __chkstk_darwin(v170);
  v173 = &v141 - v11;
  v169 = sub_1000077C8(&qword_100175260, &qword_10011CEE0);
  v12 = *(*(v169 - 8) + 64);
  __chkstk_darwin(v169);
  v153 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v154 = &v141 - v15;
  v171 = sub_1000077C8(&qword_100175268, &qword_10011CEE8);
  v158 = *(v171 - 8);
  v16 = *(v158 + 64);
  __chkstk_darwin(v171);
  v157 = &v141 - v17;
  v191 = sub_1000077C8(&qword_100175270, &unk_10011CEF0);
  v18 = *(*(v191 - 8) + 64);
  __chkstk_darwin(v191);
  v172 = &v141 - v19;
  v186 = sub_1000077C8(&qword_100175278, &unk_10011F2F0);
  v185 = *(v186 - 8);
  v20 = *(v185 + 64);
  __chkstk_darwin(v186);
  v184 = &v141 - v21;
  v189 = sub_1000077C8(&qword_100175280, &qword_10011CF00);
  v22 = *(*(v189 - 8) + 64);
  __chkstk_darwin(v189);
  v190 = &v141 - v23;
  v167 = sub_1000077C8(&qword_100175288, &qword_10011CF08);
  v24 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v167);
  v152 = &v141 - v25;
  v168 = sub_1000077C8(&qword_100175290, &qword_10011CF10);
  v156 = *(v168 - 8);
  v26 = *(v156 + 64);
  __chkstk_darwin(v168);
  v155 = &v141 - v27;
  v165 = sub_1000077C8(&qword_100175298, &qword_10011CF18);
  v28 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v166 = &v141 - v29;
  v179 = type metadata accessor for AirDropUIButtonStyle.Style();
  v177 = *(v179 - 8);
  v30 = *(v177 + 64);
  __chkstk_darwin(v179);
  v149 = &v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v146 = (&v141 - v33);
  __chkstk_darwin(v34);
  v151 = &v141 - v35;
  __chkstk_darwin(v36);
  v38 = (&v141 - v37);
  v187 = type metadata accessor for AirDropUIButtonStyle();
  v183 = *(v187 - 8);
  v39 = *(v183 + 64);
  __chkstk_darwin(v187);
  v148 = &v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v144 = &v141 - v42;
  __chkstk_darwin(v43);
  v150 = &v141 - v44;
  __chkstk_darwin(v45);
  v47 = &v141 - v46;
  v162 = sub_1000077C8(&qword_1001752A0, &qword_10011CF20);
  v48 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v50 = &v141 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v53 = &v141 - v52;
  v163 = sub_1000077C8(&qword_1001752A8, &qword_10011CF28);
  v147 = *(v163 - 8);
  v54 = *(v147 + 64);
  __chkstk_darwin(v163);
  v145 = &v141 - v55;
  v188 = sub_1000077C8(&qword_1001752B0, &qword_10011CF30);
  v56 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v164 = &v141 - v57;
  v58 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  v62 = &v141 - v61;
  v63 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  v66 = __chkstk_darwin(v63);
  v68 = &v141 - v67;
  (*(v64 + 16))(&v141 - v67, v176, v63, v66);
  v69 = (*(v64 + 88))(v68, v63);
  v193 = v68;
  if (v69 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    (*(v64 + 96))(v68, v63);
    (*(v59 + 32))(v62, v68, v58);
    v70 = v62;
    v143 = v58;
    v142 = v59;
    v141 = v62;
    if (v178)
    {
      if (v182)
      {
        v71 = &enum case for AirDropUIButtonStyle.Style.jindoCircular(_:);
      }

      else
      {
        v71 = &enum case for AirDropUIButtonStyle.Style.nonJindoCircular(_:);
      }

      sub_100075844(v70, v180, v181, v182 & 1, v53);
      *v38 = 0x4049000000000000;
      (*(v177 + 104))(v38, *v71, v179);
      AirDropUIButtonStyle.init(style:)();
      v72 = sub_100078608();
      v73 = sub_100078434(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
      v74 = v145;
      v75 = v162;
      v76 = v187;
      View.buttonStyle<A>(_:)();
      (*(v183 + 8))(v47, v76);
      sub_1000159AC(v53, &qword_1001752A0, &qword_10011CF20);
      v77 = v147;
      v78 = v163;
      (*(v147 + 16))(v166, v74, v163);
      swift_storeEnumTagMultiPayload();
      *&v198 = v75;
      *(&v198 + 1) = v76;
      *&v199 = v72;
      *(&v199 + 1) = v73;
      swift_getOpaqueTypeConformance2();
      v79 = sub_100078218(&qword_100175358, &qword_100175288, &qword_10011CF08, sub_100078608);
      *&v198 = v167;
      *(&v198 + 1) = v76;
      *&v199 = v79;
      *(&v199 + 1) = v73;
      swift_getOpaqueTypeConformance2();
      v80 = v164;
      _ConditionalContent<>.init(storage:)();
      v81 = v74;
      v82 = v141;
      (*(v77 + 8))(v81, v78);
      v83 = v143;
    }

    else
    {
      v102 = v182;
      sub_100075844(v62, v180, v181, v182 & 1, v50);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v103 = v152;
      sub_100021A84(v50, v152, &qword_1001752A0, &qword_10011CF20);
      v104 = v167;
      v105 = (v103 + *(v167 + 36));
      v106 = v203;
      v105[4] = v202;
      v105[5] = v106;
      v105[6] = v204;
      v107 = v199;
      *v105 = v198;
      v105[1] = v107;
      v108 = v201;
      v109 = (v177 + 104);
      v105[2] = v200;
      v105[3] = v108;
      if (v102)
      {
        if (SFAirDrop.AcceptAction.Single.prominent.getter())
        {
          v110 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
        }

        else
        {
          v110 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
        }

        (*v109)(v151, *v110, v179);
      }

      else
      {
        (*v109)(v151, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v179);
      }

      v130 = v150;
      AirDropUIButtonStyle.init(style:)();
      v131 = sub_100078218(&qword_100175358, &qword_100175288, &qword_10011CF08, sub_100078608);
      v132 = sub_100078434(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
      v133 = v155;
      v134 = v187;
      View.buttonStyle<A>(_:)();
      (*(v183 + 8))(v130, v134);
      sub_1000159AC(v103, &qword_100175288, &qword_10011CF08);
      v135 = v156;
      v136 = v168;
      (*(v156 + 16))(v166, v133, v168);
      swift_storeEnumTagMultiPayload();
      v137 = sub_100078608();
      v194 = v162;
      v195 = v134;
      v196 = v137;
      v197 = v132;
      swift_getOpaqueTypeConformance2();
      v194 = v104;
      v195 = v134;
      v196 = v131;
      v197 = v132;
      swift_getOpaqueTypeConformance2();
      v80 = v164;
      _ConditionalContent<>.init(storage:)();
      (*(v135 + 8))(v133, v136);
      v83 = v143;
      v82 = v141;
    }

    v129 = *(sub_1000077C8(&qword_100173CC8, &qword_10011A330) + 48);
    sub_100007BA4(v80, v190, &qword_1001752B0, &qword_10011CF30);
    swift_storeEnumTagMultiPayload();
    sub_10007847C();
    sub_1000787A0();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v80, &qword_1001752B0, &qword_10011CF30);
    (*(v142 + 8))(v82, v83);
    goto LABEL_26;
  }

  v84 = v178;
  if (v69 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    v85 = v193;
    (*(v64 + 96))(v193, v63);
    v86 = v184;
    (*(v185 + 32))(v184, v85, v186);
    if (v84)
    {
      if (v182)
      {
        v87 = &enum case for AirDropUIButtonStyle.Style.jindoCircular(_:);
      }

      else
      {
        v87 = &enum case for AirDropUIButtonStyle.Style.nonJindoCircular(_:);
      }

      v88 = v154;
      sub_100076394(v86, v180, v181, v182 & 1, v154);
      v89 = v146;
      *v146 = 0x4049000000000000;
      (*(v177 + 104))(v89, *v87, v179);
      v90 = v144;
      AirDropUIButtonStyle.init(style:)();
      v91 = sub_10007829C();
      v92 = sub_100078434(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
      v93 = v157;
      v94 = v169;
      v95 = v187;
      View.buttonStyle<A>(_:)();
      (*(v183 + 8))(v90, v95);
      sub_1000159AC(v88, &qword_100175260, &qword_10011CEE0);
      v96 = v158;
      v97 = v171;
      (*(v158 + 16))(v173, v93, v171);
      swift_storeEnumTagMultiPayload();
      *&v198 = v94;
      *(&v198 + 1) = v95;
      *&v199 = v91;
      *(&v199 + 1) = v92;
      swift_getOpaqueTypeConformance2();
      v98 = sub_100078218(&qword_1001752B8, &qword_100175248, &qword_10011CEC8, sub_10007829C);
      *&v198 = v174;
      *(&v198 + 1) = v95;
      *&v199 = v98;
      *(&v199 + 1) = v92;
      swift_getOpaqueTypeConformance2();
      v99 = v172;
      _ConditionalContent<>.init(storage:)();
      v100 = v93;
      v101 = v184;
      (*(v96 + 8))(v100, v97);
    }

    else
    {
      if (v182)
      {
        v111 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      else
      {
        v111 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
      }

      v112 = v153;
      sub_100076394(v86, v180, v181, v182 & 1, v153);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v113 = v112;
      v114 = v159;
      sub_100021A84(v113, v159, &qword_100175260, &qword_10011CEE0);
      v115 = v174;
      v116 = (v114 + *(v174 + 36));
      v117 = v199;
      *v116 = v198;
      v116[1] = v117;
      v118 = v204;
      v119 = v202;
      v116[5] = v203;
      v116[6] = v118;
      v120 = v201;
      v116[2] = v200;
      v116[3] = v120;
      v116[4] = v119;
      (*(v177 + 104))(v149, *v111, v179);
      v121 = v148;
      AirDropUIButtonStyle.init(style:)();
      v122 = sub_100078218(&qword_1001752B8, &qword_100175248, &qword_10011CEC8, sub_10007829C);
      v123 = sub_100078434(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
      v124 = v160;
      v125 = v187;
      View.buttonStyle<A>(_:)();
      (*(v183 + 8))(v121, v125);
      sub_1000159AC(v114, &qword_100175248, &qword_10011CEC8);
      v126 = v161;
      v127 = v175;
      (*(v161 + 16))(v173, v124, v175);
      swift_storeEnumTagMultiPayload();
      v128 = sub_10007829C();
      v194 = v169;
      v195 = v125;
      v196 = v128;
      v197 = v123;
      swift_getOpaqueTypeConformance2();
      v194 = v115;
      v195 = v125;
      v101 = v184;
      v196 = v122;
      v197 = v123;
      swift_getOpaqueTypeConformance2();
      v99 = v172;
      _ConditionalContent<>.init(storage:)();
      (*(v126 + 8))(v124, v127);
    }

    v129 = *(sub_1000077C8(&qword_100175310, &qword_10011CF58) + 48);
    sub_100007BA4(v99, v190, &qword_100175270, &unk_10011CEF0);
    swift_storeEnumTagMultiPayload();
    sub_10007847C();
    sub_1000787A0();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v99, &qword_100175270, &unk_10011CEF0);
    (*(v185 + 8))(v101, v186);
LABEL_26:
    v138 = &v193[v129];
    v139 = type metadata accessor for UUID();
    return (*(*(v139 - 8) + 8))(v138, v139);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10007548C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v5 = sub_1000077C8(&qword_100175200, &qword_10011CE10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  v9 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v29 = &v29 - v12;
  v13 = type metadata accessor for DeviceLockState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v29 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  (*(v14 + 104))(v17, enum case for DeviceLockState.unlocked(_:), v13);
  v21 = static DeviceLockState.== infix(_:_:)();
  v22 = *(v14 + 8);
  v22(v17, v13);
  result = (v22)(v20, v13);
  if (v21)
  {
    sub_100007BA4(v30, v8, &qword_100175200, &qword_10011CE10);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_1000159AC(v8, &qword_100175200, &qword_10011CE10);
    }

    else
    {
      v24 = v29;
      (*(v10 + 32))(v29, v8, v9);
      if (qword_1001721D0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100007D20(v25, qword_1001751D8);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Post-AirDrop ReadyForOpen view tapped", v28, 2u);
      }

      sub_100077C68(v24);
      return (*(v10 + 8))(v24, v9);
    }
  }

  return result;
}

uint64_t sub_100075844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v76 = a5;
  v77 = sub_1000077C8(&qword_100175350, &unk_10011CF78);
  v64 = *(v77 - 8);
  v6 = *(v64 + 64);
  __chkstk_darwin(v77);
  v62 = &v60 - v7;
  v68 = sub_1000077C8(&qword_100175340, &qword_10011CF70);
  v63 = *(v68 - 8);
  v8 = *(v63 + 64);
  __chkstk_darwin(v68);
  v61 = &v60 - v9;
  v73 = sub_1000077C8(&qword_100175368, &qword_10011CF88);
  v10 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v75 = &v60 - v11;
  v67 = sub_1000077C8(&qword_100175370, &unk_10011CF90);
  v12 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v14 = &v60 - v13;
  v74 = sub_1000077C8(&qword_100175330, &unk_10011CF60);
  v15 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v69 = &v60 - v16;
  v17 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v66 = *(v22 - 8);
  v23 = *(v66 + 8);
  __chkstk_darwin(v22);
  v65 = &v60 - v24;
  v25 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = (&v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  SFAirDrop.AcceptAction.Single.buttonConfiguration.getter();
  v30 = (*(v26 + 88))(v29, v25);
  if (v30 == enum case for SFAirDrop.ButtonConfiguration.text(_:))
  {
    (*(v26 + 96))(v29, v25);
    v32 = *v29;
    v31 = v29[1];
    (*(v18 + 16))(v21, a1, v17);
    v33 = (*(v18 + 80) + 33) & ~*(v18 + 80);
    v34 = swift_allocObject();
    v35 = v70;
    *(v34 + 16) = v71;
    *(v34 + 24) = v35;
    *(v34 + 32) = v72 & 1;
    v36 = (*(v18 + 32))(v34 + v33, v21, v17);
    __chkstk_darwin(v36);
    *(&v60 - 2) = v32;
    *(&v60 - 1) = v31;

    v37 = v65;
    Button.init(action:label:)();

    v38 = v66;
    (*(v66 + 2))(v14, v37, v22);
    swift_storeEnumTagMultiPayload();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
    sub_1000199C8(&qword_100175338, &qword_100175340, &qword_10011CF70);
    v39 = v69;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v39, v75, &qword_100175330, &unk_10011CF60);
    swift_storeEnumTagMultiPayload();
    sub_1000786C0();
    sub_1000199C8(&qword_100175348, &qword_100175350, &unk_10011CF78);
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v39, &qword_100175330, &unk_10011CF60);
    return (*(v38 + 1))(v37, v22);
  }

  else
  {
    v65 = v22;
    v66 = v14;
    v41 = v70;
    if (v30 == enum case for SFAirDrop.ButtonConfiguration.symbol(_:))
    {
      (*(v26 + 96))(v29, v25);
      v43 = *v29;
      v42 = v29[1];
      (*(v18 + 16))(v21, a1, v17);
      v44 = (*(v18 + 80) + 33) & ~*(v18 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = v71;
      *(v45 + 24) = v41;
      *(v45 + 32) = v72 & 1;
      v46 = (*(v18 + 32))(v45 + v44, v21, v17);
      __chkstk_darwin(v46);
      *(&v60 - 2) = v43;
      *(&v60 - 1) = v42;

      v47 = v61;
      Button.init(action:label:)();

      v48 = v63;
      v49 = v68;
      (*(v63 + 16))(v66, v47, v68);
      swift_storeEnumTagMultiPayload();
      sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
      sub_1000199C8(&qword_100175338, &qword_100175340, &qword_10011CF70);
      v50 = v69;
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v50, v75, &qword_100175330, &unk_10011CF60);
      swift_storeEnumTagMultiPayload();
      sub_1000786C0();
      sub_1000199C8(&qword_100175348, &qword_100175350, &unk_10011CF78);
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v50, &qword_100175330, &unk_10011CF60);
      return (*(v48 + 8))(v47, v49);
    }

    else if (v30 == enum case for SFAirDrop.ButtonConfiguration.symbolText(_:))
    {
      (*(v26 + 96))(v29, v25);
      v51 = v29[1];
      v69 = *v29;
      v53 = v29[2];
      v52 = v29[3];
      (*(v18 + 16))(v21, a1, v17);
      v54 = (*(v18 + 80) + 33) & ~*(v18 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = v71;
      *(v55 + 24) = v41;
      *(v55 + 32) = v72 & 1;
      v56 = (*(v18 + 32))(v55 + v54, v21, v17);
      __chkstk_darwin(v56);
      *(&v60 - 4) = v69;
      *(&v60 - 3) = v51;
      *(&v60 - 2) = v53;
      *(&v60 - 1) = v52;

      sub_1000077C8(&qword_100175378, &qword_10011EF60);
      sub_1000199C8(&qword_100175380, &qword_100175378, &qword_10011EF60);
      v57 = v62;
      Button.init(action:label:)();

      v58 = v64;
      v59 = v77;
      (*(v64 + 16))(v75, v57, v77);
      swift_storeEnumTagMultiPayload();
      sub_1000786C0();
      sub_1000199C8(&qword_100175348, &qword_100175350, &unk_10011CF78);
      _ConditionalContent<>.init(storage:)();
      return (*(v58 + 8))(v57, v59);
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100076394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v69 = a4;
  v67 = a2;
  v68 = a3;
  v75 = a5;
  v6 = sub_1000077C8(&qword_100175300, &qword_10011CF50);
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v62 = v61 - v8;
  v70 = sub_1000077C8(&qword_1001752F0, &qword_10011CF48);
  v63 = *(v70 - 8);
  v9 = *(v63 + 64);
  __chkstk_darwin(v70);
  v66 = v61 - v10;
  v72 = sub_1000077C8(&qword_100175388, &qword_10011CFA0);
  v11 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v74 = v61 - v12;
  v13 = sub_1000077C8(&qword_100175390, &qword_10011CFA8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v61 - v15;
  v73 = sub_1000077C8(&qword_1001752D0, &qword_10011CF38);
  v17 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v19 = v61 - v18;
  v20 = sub_1000077C8(&qword_1001752E0, &qword_10011CF40);
  v65 = *(v20 - 8);
  v21 = *(v65 + 64);
  __chkstk_darwin(v20);
  v23 = v61 - v22;
  v24 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = (v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000077C8(&qword_100175278, &unk_10011F2F0);
  SFAirDrop.AcceptAction.Composite.buttonConfiguration.getter();
  v29 = (*(v25 + 88))(v28, v24);
  v71 = v6;
  if (v29 == enum case for SFAirDrop.ButtonConfiguration.text(_:))
  {
    v30 = (*(v25 + 96))(v28, v24);
    v31 = *v28;
    v32 = v28[1];
    __chkstk_darwin(v30);
    v34 = v67;
    v33 = v68;
    v61[-4] = a1;
    v61[-3] = v34;
    v61[-2] = v33;
    LOBYTE(v61[-1]) = v69 & 1;
    __chkstk_darwin(v35);
    v61[-2] = v36;
    v61[-1] = v32;
    sub_1000077C8(&qword_100175398, &qword_10011CFB0);
    sub_1000789C4();
    Menu.init(content:label:)();

    v37 = v65;
    (*(v65 + 16))(v16, v23, v20);
    swift_storeEnumTagMultiPayload();
    sub_1000199C8(&qword_1001752D8, &qword_1001752E0, &qword_10011CF40);
    sub_1000199C8(&qword_1001752E8, &qword_1001752F0, &qword_10011CF48);
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v19, v74, &qword_1001752D0, &qword_10011CF38);
    swift_storeEnumTagMultiPayload();
    sub_100078354();
    sub_1000199C8(&qword_1001752F8, &qword_100175300, &qword_10011CF50);
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v19, &qword_1001752D0, &qword_10011CF38);
    return (*(v37 + 8))(v23, v20);
  }

  else
  {
    v65 = a1;
    v40 = v67;
    v39 = v68;
    v61[0] = v16;
    v61[1] = v20;
    v41 = v69;
    v42 = v70;
    if (v29 == enum case for SFAirDrop.ButtonConfiguration.symbol(_:))
    {
      v43 = (*(v25 + 96))(v28, v24);
      v44 = *v28;
      v45 = v28[1];
      __chkstk_darwin(v43);
      v61[-4] = v65;
      v61[-3] = v40;
      v61[-2] = v39;
      LOBYTE(v61[-1]) = v41 & 1;
      __chkstk_darwin(v46);
      v61[-2] = v47;
      v61[-1] = v45;
      sub_1000077C8(&qword_100175398, &qword_10011CFB0);
      sub_1000789C4();
      v48 = v66;
      Menu.init(content:label:)();

      v49 = v63;
      (*(v63 + 16))(v61[0], v48, v42);
      swift_storeEnumTagMultiPayload();
      sub_1000199C8(&qword_1001752D8, &qword_1001752E0, &qword_10011CF40);
      sub_1000199C8(&qword_1001752E8, &qword_1001752F0, &qword_10011CF48);
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v19, v74, &qword_1001752D0, &qword_10011CF38);
      swift_storeEnumTagMultiPayload();
      sub_100078354();
      sub_1000199C8(&qword_1001752F8, &qword_100175300, &qword_10011CF50);
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v19, &qword_1001752D0, &qword_10011CF38);
      return (*(v49 + 8))(v66, v42);
    }

    else
    {
      v50 = v71;
      if (v29 == enum case for SFAirDrop.ButtonConfiguration.symbolText(_:))
      {
        v51 = (*(v25 + 96))(v28, v24);
        v52 = *v28;
        v53 = v28[1];
        v54 = v28[2];
        v55 = v28[3];
        __chkstk_darwin(v51);
        v61[-4] = v65;
        v61[-3] = v40;
        v61[-2] = v39;
        LOBYTE(v61[-1]) = v41 & 1;
        __chkstk_darwin(v56);
        v61[-4] = v57;
        v61[-3] = v53;
        v61[-2] = v58;
        v61[-1] = v55;
        sub_1000077C8(&qword_100175378, &qword_10011EF60);
        sub_1000077C8(&qword_100175398, &qword_10011CFB0);
        sub_1000199C8(&qword_100175380, &qword_100175378, &qword_10011EF60);
        sub_1000789C4();
        v59 = v62;
        Menu.init(content:label:)();

        v60 = v64;
        (*(v64 + 16))(v74, v59, v50);
        swift_storeEnumTagMultiPayload();
        sub_100078354();
        sub_1000199C8(&qword_1001752F8, &qword_100175300, &qword_10011CF50);
        _ConditionalContent<>.init(storage:)();
        return (*(v60 + 8))(v59, v50);
      }

      else
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100076E08@<X0>(uint64_t a1@<X8>)
{
  sub_10004BB74();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100076E74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1000077C8(&qword_100175278, &unk_10011F2F0);
  SFAirDrop.AcceptAction.Composite.actions.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;

  sub_1000077C8(&qword_1001753A8, &qword_10011CFB8);
  sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  sub_1000199C8(&qword_1001753B0, &qword_1001753A8, &qword_10011CFB8);
  sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
  sub_1000199C8(&qword_1001753B8, &unk_100173C98, &unk_10011A300);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10007700C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a7;
  v30 = a6;
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a3;
  v8 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDrop.AcceptAction.Single.buttonConfiguration.getter();
  v18 = SFAirDrop.ButtonConfiguration.localizedTitle.getter();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  v31 = v18;
  v32 = v20;
  (*(v9 + 16))(v12, a1, v8);
  v21 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v22 = swift_allocObject();
  v23 = v27;
  *(v22 + 16) = v26;
  *(v22 + 24) = v23;
  *(v22 + 32) = v28;
  (*(v9 + 32))(v22 + v21, v12, v8);
  sub_10004BB74();

  return Button<>.init<A>(_:action:)();
}

uint64_t sub_100077234@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();

  v3 = Image.init(systemName:)();
  sub_10004BB74();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v8 &= 1u;
  sub_100078974(v4, v6, v8);

  sub_10004BBC8(v4, v6, v8);

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  return result;
}

uint64_t sub_100077344(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v2[6] = v6;
  v7 = *(v6 - 8);
  v2[7] = v7;
  v8 = *(v7 + 64) + 15;
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v10;
  v2[11] = v9;

  return _swift_task_switch(sub_1000774A0, v10, v9);
}

uint64_t sub_1000774A0()
{
  v1 = v0[8];
  v3 = v0[2];
  v2 = v0[3];
  SFAirDrop.AcceptAction.Single.defaultAnswer.getter();
  v4 = async function pointer to SFAirDrop.AcceptAction.Single.accept(with:)[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_100077548;
  v6 = v0[8];
  v8 = v0[2];
  v7 = v0[3];

  return SFAirDrop.AcceptAction.Single.accept(with:)(v6, v7);
}

uint64_t sub_100077548()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  v9 = *(v2 + 80);
  if (v0)
  {
    v10 = sub_100077754;
  }

  else
  {
    v10 = sub_1000776E0;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000776E0()
{
  v1 = v0[9];

  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100077754()
{
  v29 = v0;
  v1 = v0[9];

  if (qword_1001721D0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_100007D20(v7, qword_1001751D8);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[13];
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v15 = 136315394;
    v16 = SFAirDrop.AcceptAction.Single.id.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_10003E81C(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v26 = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "AirDrop ReadyForOpen action %s failed with error %@", v15, 0x16u);
    sub_1000159AC(v26, &qword_100172EB0, &qword_100119410);

    sub_100007920(v27);
  }

  else
  {
    v21 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  v22 = v0[8];
  v23 = v0[5];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1000779F8()
{
  v1 = *(sub_1000077C8(&qword_100175200, &qword_10011CE10) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100077B24(uint64_t a1)
{
  v3 = *(sub_1000077C8(&qword_100175200, &qword_10011CE10) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 33) & ~*(v3 + 80));

  return sub_10007548C(a1, v4, v5, v6, v7);
}

unint64_t sub_100077BA8()
{
  result = qword_100175210;
  if (!qword_100175210)
  {
    sub_100007CCC(&qword_1001751F8, &qword_10011CE08);
    sub_1000199C8(&qword_100175218, &qword_100175220, &qword_10011CE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175210);
  }

  return result;
}

uint64_t sub_100077C68(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v9;
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  if (qword_1001721D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100007D20(v14, qword_1001751D8);
  v32 = *(v7 + 16);
  v32(v13, a1, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v10;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = v5;
    v20 = v19;
    v34 = v19;
    *v18 = 136315138;
    v21 = SFAirDrop.AcceptAction.Single.id.getter();
    v30 = a1;
    v23 = v22;
    (*(v7 + 8))(v13, v6);
    v24 = sub_10003E81C(v21, v23, &v34);
    a1 = v30;

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "AirDrop ReadyForOpen action button was tapped. Triggering action %s on AirDropTransferSession", v18, 0xCu);
    sub_100007920(v20);
    v5 = v31;

    v10 = v29;
  }

  else
  {

    (*(v7 + 8))(v13, v6);
  }

  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
  v32(v10, a1, v6);
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v27 = swift_allocObject();
  (*(v7 + 32))(v27 + v26, v10, v6);
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v5, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_10007802C()
{
  v1 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000780C0(uint64_t a1)
{
  v4 = *(sub_1000077C8(&unk_100173C98, &unk_10011A300) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BCF0;

  return sub_100077344(a1, v1 + v5);
}

uint64_t sub_1000781A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100175230, &qword_10011CE98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100078218(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_10007829C()
{
  result = qword_1001752C0;
  if (!qword_1001752C0)
  {
    sub_100007CCC(&qword_100175260, &qword_10011CEE0);
    sub_100078354();
    sub_1000199C8(&qword_1001752F8, &qword_100175300, &qword_10011CF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001752C0);
  }

  return result;
}

unint64_t sub_100078354()
{
  result = qword_1001752C8;
  if (!qword_1001752C8)
  {
    sub_100007CCC(&qword_1001752D0, &qword_10011CF38);
    sub_1000199C8(&qword_1001752D8, &qword_1001752E0, &qword_10011CF40);
    sub_1000199C8(&qword_1001752E8, &qword_1001752F0, &qword_10011CF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001752C8);
  }

  return result;
}

uint64_t sub_100078434(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10007847C()
{
  result = qword_100175318;
  if (!qword_100175318)
  {
    sub_100007CCC(&qword_1001752B0, &qword_10011CF30);
    sub_100007CCC(&qword_1001752A0, &qword_10011CF20);
    type metadata accessor for AirDropUIButtonStyle();
    sub_100078608();
    sub_100078434(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007CCC(&qword_100175288, &qword_10011CF08);
    sub_100078218(&qword_100175358, &qword_100175288, &qword_10011CF08, sub_100078608);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175318);
  }

  return result;
}

unint64_t sub_100078608()
{
  result = qword_100175320;
  if (!qword_100175320)
  {
    sub_100007CCC(&qword_1001752A0, &qword_10011CF20);
    sub_1000786C0();
    sub_1000199C8(&qword_100175348, &qword_100175350, &unk_10011CF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175320);
  }

  return result;
}

unint64_t sub_1000786C0()
{
  result = qword_100175328;
  if (!qword_100175328)
  {
    sub_100007CCC(&qword_100175330, &unk_10011CF60);
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
    sub_1000199C8(&qword_100175338, &qword_100175340, &qword_10011CF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175328);
  }

  return result;
}

unint64_t sub_1000787A0()
{
  result = qword_100175360;
  if (!qword_100175360)
  {
    sub_100007CCC(&qword_100175270, &unk_10011CEF0);
    sub_100007CCC(&qword_100175260, &qword_10011CEE0);
    type metadata accessor for AirDropUIButtonStyle();
    sub_10007829C();
    sub_100078434(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007CCC(&qword_100175248, &qword_10011CEC8);
    sub_100078218(&qword_1001752B8, &qword_100175248, &qword_10011CEC8, sub_10007829C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175360);
  }

  return result;
}

uint64_t sub_100078930@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_100077234(a1);
}

uint64_t sub_100078958@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100076E08(a1);
}

uint64_t sub_100078974(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000789C4()
{
  result = qword_1001753A0;
  if (!qword_1001753A0)
  {
    sub_100007CCC(&qword_100175398, &qword_10011CFB0);
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001753A0);
  }

  return result;
}

uint64_t sub_100078AB4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100078B38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100078C24()
{
  v1 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100078CF4()
{
  v1 = *(sub_1000077C8(&unk_100173C98, &unk_10011A300) - 8);
  v2 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  return sub_100077C68(v2);
}

uint64_t sub_100078DC4()
{
  sub_100007CCC(&qword_1001751F8, &qword_10011CE08);
  sub_100007CCC(&qword_1001751F0, &qword_10011CE00);
  sub_100077BA8();
  sub_1000199C8(&qword_100175228, &qword_1001751F0, &qword_10011CE00);
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for AUIRemoteAlertPresentationManager()
{
  result = qword_1001753C8;
  if (!qword_1001753C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100078F40()
{
  if (qword_1001721D8 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

void sub_100078FB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SFRemoteAlertPresentationManager.remoteAlertHandleDidActivate(_:)();
}

void sub_100079018(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SFRemoteAlertPresentationManager.remoteAlertHandleDidDeactivate(_:)();
}

void sub_100079080(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = a1;
  v7 = a4;
  SFRemoteAlertPresentationManager.remoteAlertHandle(_:didInvalidateWithError:)();
}

id sub_1000790F8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for AUIRemoteAlertPresentationManager();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10007913C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUIRemoteAlertPresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10007917C()
{
  result = [objc_allocWithZone(type metadata accessor for AUIRemoteAlertPresentationManager()) init];
  qword_1001753C0 = result;
  return result;
}

uint64_t sub_1000791B0()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100079244, v2, v1);
}

uint64_t sub_100079244()
{
  v1 = *(v0 + 16);

  if (qword_100172250 != -1)
  {
    swift_once();
  }

  sub_1000FBF64();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000792F0()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100175480);
  v1 = sub_100007D20(v0, qword_100175480);
  if (qword_100172208 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F320);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000793B8(void *a1)
{
  v3 = sub_1000077C8(&qword_100175CB0, &qword_10011D388);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1000078DC(a1, a1[3]);
  sub_1000876A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_100079540()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x696E556C61746F74;
  }

  *v0;
  return result;
}

uint64_t sub_10007958C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696E556C61746F74 && a2 == 0xEE00746E756F4374;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100124700 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100079690(uint64_t a1)
{
  v2 = sub_1000876A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000796CC(uint64_t a1)
{
  v2 = sub_1000876A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100079708@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100087500(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100079734(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1000793B8(a1);
}

Swift::Int sub_100079750()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000797AC()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1000797E8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10007986C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000798D8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100079934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000100124400 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1000799D4(uint64_t a1)
{
  v2 = sub_1000876FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100079A10(uint64_t a1)
{
  v2 = sub_1000876FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100079A4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000077C8(&qword_100175CB8, &qword_10011D390);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1000078DC(a1, a1[3]);
  sub_1000876FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007920(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100007920(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_100079BC8(void *a1)
{
  v3 = sub_1000077C8(&qword_100175CC8, &qword_10011D398);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_1000078DC(a1, a1[3]);
  sub_1000876FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100079D40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100079DB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100079F04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100079F8C()
{
  v1 = (v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v3 = *(v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

  v4._countAndFlagsBits = 0x732D72656E6E6162;
  v4._object = 0xEE006E6F69737365;
  LOBYTE(v2) = String.hasSuffix(_:)(v4);

  if (v2)
  {
    v19 = *v1;
    v20 = v1[1];
    sub_10004BB74();
    v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v7 = v6;
    if (qword_100172150 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(v19 + 16))
    {
      v8 = sub_10003EEC0(v5, v7);
      v10 = v9;

      if (v10)
      {
        v11 = *(*(v19 + 56) + 8 * v8);

        return v11;
      }
    }

    else
    {
    }

    return 0;
  }

  if (qword_100172150 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v18;
  if (v18)
  {
    v12 = *(v18 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v13 = *(v18 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
    v14 = *v1;
    v15 = v1[1];

    v16._countAndFlagsBits = v14;
    v16._object = v15;
    LOBYTE(v12) = String.hasPrefix(_:)(v16);

    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  return v11;
}

uint64_t sub_10007A24C()
{
  v0 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v1 + 88))(v4, v0) == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    (*(v1 + 96))(v4, v0);
    v5 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    v6 = *&v4[*(v5 + 48)];

    v7 = *(v5 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = v12[13] ^ 1;
    v9 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v9 - 8) + 8))(&v4[v7], v9);
    v10 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v10 - 8) + 8))(v4, v10);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v12[15] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v8 = v12[14] ^ 1;
    }

    else
    {
      v8 = 0;
    }

    (*(v1 + 8))(v4, v0);
  }

  return v8 & 1;
}

uint64_t sub_10007A994()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000077C8(&qword_100175CD0, &unk_10011D8C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v47 - v9;
  v11 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity;
  if (*(v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity))
  {
    v12 = sub_1000077C8(&qword_100175CD8, &qword_10011D8D0);
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);

    static ActivityUIDismissalPolicy.immediate.getter();
    dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

    (*(v3 + 8))(v6, v2);
    sub_1000159AC(v10, &qword_100175CD0, &unk_10011D8C0);
  }

  v13 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_startTime;
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  v15 = *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

  v16 = *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);

  v17 = *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);

  sub_1000159AC(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction, &unk_100173C50, &qword_10011D9D0);
  v18 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferAccepted;
  v19 = sub_1000077C8(&qword_100173728, qword_1001199F0);
  v20 = *(*(v19 - 8) + 8);
  v20(v1 + v18, v19);
  v21 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__numTotalItems;
  v22 = sub_1000077C8(&qword_100175D38, &qword_10011D9D8);
  v23 = *(*(v22 - 8) + 8);
  v23(v1 + v21, v22);
  v23(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__numCompletedItems, v22);
  v24 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__localizedTransferDescription;
  v25 = sub_1000077C8(&qword_100173D60, &qword_10011D3A0);
  (*(*(v25 - 8) + 8))(v1 + v24, v25);
  v26 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__progress;
  v27 = sub_1000077C8(&qword_100175D40, &qword_10011D9E0);
  (*(*(v27 - 8) + 8))(v1 + v26, v27);
  v28 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferState;
  v29 = sub_1000077C8(&qword_100175D48, &qword_10011D9E8);
  (*(*(v29 - 8) + 8))(v1 + v28, v29);
  v30 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v31 = sub_1000077C8(&qword_100173D58, &unk_10011A540);
  (*(*(v31 - 8) + 8))(v1 + v30, v31);
  v32 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__permissionRequest;
  v33 = sub_1000077C8(&qword_100173D48, &unk_10011A530);
  (*(*(v33 - 8) + 8))(v1 + v32, v33);
  v34 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImage;
  v35 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v36 = *(*(v35 - 8) + 8);
  v36(v1 + v34, v35);
  v36(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__fallbackPreviewImage, v35);
  v20(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImageIsSensitive, v19);
  v20(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldShowSensitiveImage, v19);
  v20(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldDisplayPreviewImage, v19);
  v36(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__contactImage, v35);
  v36(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__airdropIconImage, v35);
  v37 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__lockState;
  v38 = sub_1000077C8(&qword_100175D50, &qword_10011D9F0);
  (*(*(v38 - 8) + 8))(v1 + v37, v38);
  v39 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__jindoLayoutMaxWidth;
  v40 = sub_1000077C8(&qword_100175D58, &qword_10011D9F8);
  (*(*(v40 - 8) + 8))(v1 + v39, v40);
  v41 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__displayPriority;
  v42 = sub_1000077C8(&qword_100175D60, &qword_10011DA00);
  (*(*(v42 - 8) + 8))(v1 + v41, v42);
  v43 = *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);

  v44 = *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);

  sub_100087F80(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate);
  sub_100087F80(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_sessionUpdateDelegate);
  v45 = *(v1 + v11);

  sub_1000159AC(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime, &unk_100174FA0, &qword_10011A700);
  sub_1000159AC(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime, &unk_100174FA0, &qword_10011A700);
  return v1;
}

uint64_t sub_10007B088()
{
  sub_10007A994();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirDropTransferSession()
{
  result = qword_100175550;
  if (!qword_100175550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007B134()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v29 = *(v0 - 8) + 64;
    sub_1000833E4(319, &qword_100175560, &type metadata accessor for SFAirDrop.DeclineAction, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v30 = *(v2 - 8) + 64;
      sub_10002263C(319, &qword_1001736A0);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_10002263C(319, &qword_100175568);
        if (v8 <= 0x3F)
        {
          v31 = *(v7 - 8) + 64;
          sub_100031B98(319, &qword_100175570, &qword_100172AA0, &unk_1001187F0);
          if (v10 <= 0x3F)
          {
            v32 = *(v9 - 8) + 64;
            sub_10008337C();
            if (v12 <= 0x3F)
            {
              v33 = *(v11 - 8) + 64;
              sub_1000833E4(319, &qword_100175580, &type metadata accessor for SFAirDropReceive.Transfer.State, &type metadata accessor for Published);
              if (v14 <= 0x3F)
              {
                v34 = *(v13 - 8) + 64;
                sub_100031B98(319, &qword_100175588, &qword_100172FD0, &qword_10011A210);
                if (v16 <= 0x3F)
                {
                  v35 = *(v15 - 8) + 64;
                  sub_100031B98(319, &qword_100175590, &qword_100173D50, &unk_10011D120);
                  if (v18 <= 0x3F)
                  {
                    v36 = *(v17 - 8) + 64;
                    sub_100031B98(319, &unk_100174300, &qword_100173D68, &qword_10011A550);
                    if (v20 <= 0x3F)
                    {
                      v37 = *(v19 - 8) + 64;
                      sub_1000833E4(319, &qword_100175598, &type metadata accessor for DeviceLockState, &type metadata accessor for Published);
                      if (v22 <= 0x3F)
                      {
                        v38 = *(v21 - 8) + 64;
                        sub_10002263C(319, &qword_1001755A0);
                        if (v24 <= 0x3F)
                        {
                          v39 = *(v23 - 8) + 64;
                          sub_1000833E4(319, &qword_1001755A8, &type metadata accessor for SFAirDrop.DisplayPriority, &type metadata accessor for Published);
                          if (v26 <= 0x3F)
                          {
                            v40 = *(v25 - 8) + 64;
                            sub_1000833E4(319, &unk_1001755B0, &type metadata accessor for Date, &type metadata accessor for Optional);
                            if (v28 <= 0x3F)
                            {
                              v41 = *(v27 - 8) + 64;
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
      }
    }
  }
}

uint64_t sub_10007B6A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ActivityPresentationOptions();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v49[0] = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001721E0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_100007D20(v9, qword_100175480);

  v49[1] = v10;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v54[0] = v14;
    *v13 = 136315138;
    v15 = *(v3 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v16 = *(v3 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    v17 = sub_10003E81C(v15, v16, v54);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Creating ActivityKit activity for transfer: %s", v13, 0xCu);
    sub_100007920(v14);
  }

  if (a2)
  {
    v18 = a2;
  }

  else
  {
    a1 = *(v3 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v18 = *(v3 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  }

  v19._countAndFlagsBits = 0x732D72656E6E6162;
  v19._object = 0xEE006E6F69737365;
  v20 = String.hasSuffix(_:)(v19);
  v21 = *(v3 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled);
  sub_1000077C8(&qword_100175D30, &qword_10011D980);
  v22 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1001186F0;
  v27 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:);
  if (!v21)
  {
    v27 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:);
  }

  if (!v20)
  {
    v27 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:);
  }

  (*(v23 + 104))(v26 + v25, *v27, v22);
  v28 = v49[0];
  ActivityPresentationOptions.init(destinations:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = v54[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v30 = v54[0];
  sub_1000077C8(&unk_100173E40, &qword_10011A6F8);
  v54[0] = a1;
  v54[1] = v18;
  v52 = v29;
  v53 = v30;
  v31 = v49[2];
  v32 = static Activity.request(attributes:contentState:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:)();
  if (v31)
  {
    (*(v50 + 8))(v28, v51);

    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54[0] = v36;
      *v35 = 136315138;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = sub_10003E81C(v37, v38, v54);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Error requesting activity %s", v35, 0xCu);
      sub_100007920(v36);
    }

    swift_willThrow();
  }

  else
  {

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v28;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54[0] = v44;
      *v43 = 136315138;
      v45 = Activity.id.getter();
      v47 = sub_10003E81C(v45, v46, v54);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "Requested activity successfully: %s", v43, 0xCu);
      sub_100007920(v44);

      (*(v50 + 8))(v42, v51);
    }

    else
    {

      (*(v50 + 8))(v28, v51);
    }
  }

  return v32;
}

void sub_10007BD28()
{
  v1 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity;
  if (!*(v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v9 == 1)
    {
      v2 = v0;
      if (qword_1001721E0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100007D20(v3, qword_100175480);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Starting ActivityKit activity because incoming transfer was accepted", v6, 2u);
      }

      v7 = sub_10007B6A8(0, 0);
      v8 = *(v2 + v1);
      *(v2 + v1) = v7;
    }
  }
}

uint64_t sub_10007BEA8(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100087D7C(&qword_100175D18, &type metadata accessor for SFAirDropReceive.Transfer.State);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = v3[1];
  result = v11(v9, v2);
  if ((v10 & 1) == 0)
  {
    sub_10007C0CC(a1);
    v13 = v3[2];
    v13(v9, a1, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v13(v7, v9, v2);

    static Published.subscript.setter();
    return v11(v9, v2);
  }

  return result;
}

uint64_t sub_10007C0CC(uint64_t a1)
{
  v95 = type metadata accessor for DispatchWorkItemFlags();
  v92 = *(v95 - 8);
  v3 = *(v92 + 64);
  __chkstk_darwin(v95);
  v90 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchQoS();
  v89 = *(v91 - 8);
  v5 = *(v89 + 64);
  __chkstk_darwin(v91);
  v88 = (&v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = type metadata accessor for DispatchTime();
  v87 = *(v98 - 8);
  v7 = *(v87 + 64);
  v8 = __chkstk_darwin(v98);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v85 - v11;
  v12 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v94 = &v85 - v14;
  v15 = type metadata accessor for SFAirDrop.Progress();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v96 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v85 - v20;
  v22 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v97 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v93 = &v85 - v28;
  __chkstk_darwin(v27);
  v30 = &v85 - v29;
  (*(v23 + 16))(&v85 - v29, a1, v22);
  v99 = *(v23 + 88);
  v31 = v99(v30, v22);
  if (v31 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    v88 = *(v23 + 96);
    v89 = v23 + 96;
    v88(v30, v22);
    v32 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
    v33 = *(v32 + 48);
    v90 = v32;
    v34 = *&v30[*(v32 + 64) + 8];

    v91 = v30;
    v92 = v16;
    v35 = *(v16 + 32);
    v98 = v21;
    v36 = v15;
    v35(v21, &v30[v33], v15);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 1;

    static Published.subscript.setter();
    sub_10007D4EC(a1);
    v95 = v1;
    if (*(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled))
    {
LABEL_14:
      v58 = v92;
      v59 = v96;
      (*(v92 + 16))(v96, v98, v36);
      v60 = (*(v58 + 88))(v59, v36);
      v61 = enum case for SFAirDrop.Progress.completed(_:);
      v62 = *(v58 + 8);
      v62(v59, v36);
      if (v60 == v61)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(aBlock[0]) = 0;

        static Published.subscript.setter();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v63 = v97;
      static Published.subscript.getter();
      v64 = v63;

      v65 = v99(v63, v22);
      v40 = v91;
      if (v65 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
      {
        v88(v64, v22);
        v66 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
        (*(*(v66 - 8) + 8))(v64, v66);
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(aBlock[0]) = 1;

        static Published.subscript.setter();
        v62(v98, v36);
      }

      else
      {
        v62(v98, v36);
        (*(v23 + 8))(v64, v22);
      }

      v67 = *(v90 + 20);
      v68 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v68 - 8) + 8))(&v40[v67], v68);
      goto LABEL_20;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v93;
    static Published.subscript.getter();

    v38 = v99(v37, v22);
    if (v38 != enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
    {
      if (v38 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
      {
        v88(v37, v22);
        v52 = *(sub_1000077C8(&qword_100173088, &unk_10011C520) + 48);
        v53 = sub_1000077C8(&unk_100174F80, &unk_10011AE60);
        (*(*(v53 - 8) + 8))(&v37[v52], v53);
        v39 = type metadata accessor for SFAirDrop.ContactInfo();
        goto LABEL_12;
      }

      if (v38 != enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
      {
        if (v38 != enum case for SFAirDropReceive.Transfer.State.created(_:) && v38 != enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:) && v38 != enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:))
        {
          (*(v23 + 8))(v37, v22);
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    v88(v37, v22);
    v39 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
LABEL_12:
    (*(*(v39 - 8) + 8))(v37, v39);
LABEL_13:
    v54 = v94;
    static Date.now.getter();
    v55 = type metadata accessor for Date();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v56 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
    v57 = v95;
    swift_beginAccess();
    sub_100087AA0(v54, v57 + v56);
    swift_endAccess();
    goto LABEL_14;
  }

  v40 = v30;
  v41 = v1;
  if (v31 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
  {
    (*(v23 + 96))(v40, v22);
    v42 = sub_1000077C8(&unk_100173CD0, &unk_10011C510);
    v43 = *&v40[*(v42 + 48)];

    v44 = *(v42 + 80);
    v45 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v45 - 8) + 8))(&v40[v44], v45);
LABEL_7:
    v46 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v46 - 8) + 8))(v40, v46);
    return sub_10007D4EC(a1);
  }

  if (v31 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    (*(v23 + 96))(v40, v22);
    v48 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    v49 = *&v40[*(v48 + 48)];

    v50 = *(v48 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 1;

    static Published.subscript.setter();
    v51 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v51 - 8) + 8))(&v40[v50], v51);
  }

  else
  {
    if (v31 == enum case for SFAirDropReceive.Transfer.State.importing(_:))
    {
      (*(v23 + 96))(v40, v22);
      v70 = *&v40[*(sub_1000077C8(&unk_100174F60, &qword_10011C4C0) + 48)];

      goto LABEL_7;
    }

    if (v31 != enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
    {
      return (*(v23 + 8))(v40, v22);
    }

    (*(v23 + 96))(v40, v22);
    v71 = sub_1000077C8(&qword_100173078, &unk_100118F60);
    v72 = *&v40[v71[12]];

    v73 = *&v40[v71[16]];

    v99 = v71[20];
    v74 = v94;
    static Date.now.getter();
    v75 = type metadata accessor for Date();
    (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
    v76 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    sub_100087AA0(v74, v41 + v76);
    swift_endAccess();
    sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
    v96 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v77 = v86;
    + infix(_:_:)();
    v97 = *(v87 + 8);
    (v97)(v10, v98);
    v78 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100087F68;
    aBlock[5] = v78;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100106B40;
    aBlock[3] = &unk_10015F720;
    v79 = _Block_copy(aBlock);

    v80 = v88;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100087D7C(&qword_100175D20, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000077C8(&unk_100176420, &unk_10011D928);
    sub_1000199C8(&qword_100175D28, &unk_100176420, &unk_10011D928);
    v81 = v90;
    v82 = v95;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v83 = v96;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v79);

    (*(v92 + 8))(v81, v82);
    (*(v89 + 8))(v80, v91);
    (v97)(v77, v98);
    v84 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v84 - 8) + 8))(v99 + v40, v84);
  }

LABEL_20:
  v69 = type metadata accessor for SFAirDropReceive.ItemDestination();
  return (*(*(v69 - 8) + 8))(v40, v69);
}

uint64_t sub_10007CFC4()
{
  v0 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_100172150 != -1)
    {
      swift_once();
    }

    v7 = qword_10017F1E0;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v29)
    {
      v28[1] = v7;
      v8 = *(v29 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v9 = *(v29 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
      v10 = (v6 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v11 = *(v6 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v12 = *(v6 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

      v13._countAndFlagsBits = v11;
      v13._object = v12;
      LOBYTE(v8) = String.hasPrefix(_:)(v13);

      if (v8)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if ((*(v1 + 88))(v4, v0) != enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
        {

          return (*(v1 + 8))(v4, v0);
        }

        (*(v1 + 96))(v4, v0);
        v14 = sub_1000077C8(&qword_100173078, &unk_100118F60);
        v15 = *&v4[v14[12]];

        v16 = *&v4[v14[16]];

        v17 = v14[20];
        v18 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
        (*(*(v18 - 8) + 8))(&v4[v17], v18);
        v19 = type metadata accessor for SFAirDropReceive.ItemDestination();
        (*(*(v19 - 8) + 8))(v4, v19);
        if (qword_1001721E0 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100007D20(v20, qword_100175480);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v29 = v24;
          *v23 = 136315138;
          v25 = *v10;
          v26 = v10[1];

          v27 = sub_10003E81C(v25, v26, &v29);

          *(v23 + 4) = v27;
          _os_log_impl(&_mh_execute_header, v21, v22, "Dismissing waitingForOpenResponse banner for transfer %s", v23, 0xCu);
          sub_100007920(v24);
        }

        sub_100028718();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v29)
        {
        }

        else
        {
          if (qword_100172250 != -1)
          {
            swift_once();
          }

          sub_1000FBF64();
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_10007D528(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDropSend.Transfer.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v37 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000077C8(&qword_100175CF0, &qword_10011D8F0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v35[-v11];
  v13 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v42 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v41 = &v35[-v18];
  v19 = __chkstk_darwin(v17);
  v45 = &v35[-v20];
  v21 = __chkstk_darwin(v19);
  v23 = &v35[-v22];
  __chkstk_darwin(v21);
  v25 = &v35[-v24];
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = v2;
  static Published.subscript.getter();

  v26 = *(v5 + 16);
  v43 = a1;
  v39 = v26;
  v40 = v5 + 16;
  v26(v23, a1, v4);
  v38 = *(v5 + 56);
  v38(v23, 0, 1, v4);
  v27 = *(v9 + 56);
  sub_100007BA4(v25, v12, &qword_100172FD0, &qword_10011A210);
  sub_100007BA4(v23, &v12[v27], &qword_100172FD0, &qword_10011A210);
  v28 = *(v5 + 48);
  if (v28(v12, 1, v4) == 1)
  {
    sub_1000159AC(v23, &qword_100172FD0, &qword_10011A210);
    sub_1000159AC(v25, &qword_100172FD0, &qword_10011A210);
    if (v28(&v12[v27], 1, v4) == 1)
    {
      return sub_1000159AC(v12, &qword_100172FD0, &qword_10011A210);
    }

    goto LABEL_6;
  }

  sub_100007BA4(v12, v45, &qword_100172FD0, &qword_10011A210);
  if (v28(&v12[v27], 1, v4) == 1)
  {
    sub_1000159AC(v23, &qword_100172FD0, &qword_10011A210);
    sub_1000159AC(v25, &qword_100172FD0, &qword_10011A210);
    (*(v5 + 8))(v45, v4);
LABEL_6:
    sub_1000159AC(v12, &qword_100175CF0, &qword_10011D8F0);
LABEL_7:
    v29 = v43;
    sub_10007DABC(v43);
    v12 = v41;
    v39(v41, v29, v4);
    v38(v12, 0, 1, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100007BA4(v12, v42, &qword_100172FD0, &qword_10011A210);

    static Published.subscript.setter();
    return sub_1000159AC(v12, &qword_100172FD0, &qword_10011A210);
  }

  v31 = &v12[v27];
  v32 = v37;
  (*(v5 + 32))(v37, v31, v4);
  sub_100087D7C(&qword_100175D10, &type metadata accessor for SFAirDropSend.Transfer.State);
  v33 = v45;
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v5 + 8);
  v34(v32, v4);
  sub_1000159AC(v23, &qword_100172FD0, &qword_10011A210);
  sub_1000159AC(v25, &qword_100172FD0, &qword_10011A210);
  v34(v33, v4);
  result = sub_1000159AC(v12, &qword_100172FD0, &qword_10011A210);
  if ((v36 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10007DABC(uint64_t a1)
{
  v3 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v49 = &KeyPath - v5;
  v6 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v52 = &KeyPath - v8;
  v9 = type metadata accessor for SFAirDropSend.Transfer.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v50 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v51 = &KeyPath - v15;
  __chkstk_darwin(v14);
  v17 = &KeyPath - v16;
  v18 = *(v10 + 16);
  v18(&KeyPath - v16, a1, v9);
  v19 = *(v10 + 88);
  v20 = v19(v17, v9);
  v21 = enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:);
  if (v20 != enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    if (v20 != enum case for SFAirDropSend.Transfer.State.transferring(_:))
    {
      return (*(v10 + 8))(v17, v9);
    }

    v45 = *(v10 + 96);
    v46 = v10 + 96;
    v45(v17, v9);
    v25 = *(v17 + 1);

    v47 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
    v26 = *&v17[v47[16] + 8];

    v48 = v1;
    sub_10007E120(a1);
    if (*(v48 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled))
    {
      goto LABEL_14;
    }

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    v27 = v52;
    static Published.subscript.getter();

    if ((*(v10 + 48))(v27, 1, v9) == 1)
    {
      sub_1000159AC(v27, &qword_100172FD0, &qword_10011A210);
LABEL_14:
      v23 = v47[12];
      v41 = v47[20];
      v42 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v42 - 8) + 8))(&v17[v41], v42);
      v24 = type metadata accessor for SFAirDrop.Progress();
      return (*(*(v24 - 8) + 8))(&v17[v23], v24);
    }

    v29 = v51;
    (*(v10 + 32))(v51, v27, v9);
    v30 = v50;
    v18(v50, v29, v9);
    v31 = v19(v30, v9);
    if (v31 == enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:))
    {
      v45(v30, v9);
      v32 = *v30;

      v33 = v30;
      v34 = *(sub_1000077C8(&qword_100174130, &qword_10011C540) + 64);
      v35 = type metadata accessor for SFAirDrop.DeclineAction();
    }

    else
    {
      if (v31 != v21)
      {
        if (v31 != enum case for SFAirDropSend.Transfer.State.created(_:) && v31 != enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:))
        {
          v43 = *(v10 + 8);
          v43(v29, v9);
          v43(v30, v9);
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v45(v30, v9);
      v36 = *v30;

      v33 = v30;
      v34 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
      v35 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
    }

    (*(*(v35 - 8) + 8))(&v33[v34], v35);
LABEL_13:
    v37 = v49;
    static Date.now.getter();
    (*(v10 + 8))(v29, v9);
    v38 = type metadata accessor for Date();
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    v39 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
    v40 = v48;
    swift_beginAccess();
    sub_100087AA0(v37, v40 + v39);
    swift_endAccess();
    goto LABEL_14;
  }

  (*(v10 + 96))(v17, v9);
  v22 = *v17;

  v23 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = 1;

  static Published.subscript.setter();
  v24 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
  return (*(*(v24 - 8) + 8))(&v17[v23], v24);
}

uint64_t sub_10007E15C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v26[1] = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  __chkstk_darwin(v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v26 - v18;
  sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  swift_weakInit();
  (*(v16 + 16))(v19, a1, v15);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v16 + 32))(v22 + v21, v19, v15);
  aBlock[4] = v28;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100106B40;
  aBlock[3] = v29;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100087D7C(&qword_100175D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000077C8(&unk_100176420, &unk_10011D928);
  sub_1000199C8(&qword_100175D28, &unk_100176420, &unk_10011D928);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v32 + 8))(v10, v7);
  return (*(v30 + 8))(v14, v31);
}

uint64_t sub_10007E52C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = a3();
    v8 = [objc_opt_self() progressWithTotalUnitCount:v7];
    [v8 setCompletedUnitCount:a4()];
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10007E610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v88 = a4;
  v9 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v92 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v91 = &v77 - v13;
  v14 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v89 = *(v14 - 8);
  v90 = v14;
  v15 = *(v89 + 64);
  v16 = __chkstk_darwin(v14);
  v87 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = &v77 - v18;
  v19 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v85 = &v77 - v21;
  v22 = type metadata accessor for SFAirDrop.DisplayPriority();
  v83 = *(v22 - 8);
  v84 = v22;
  v23 = *(v83 + 64);
  v24 = __chkstk_darwin(v22);
  v82 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v81 = &v77 - v26;
  v80 = type metadata accessor for DeviceLockState();
  v79 = *(v80 - 8);
  v27 = *(v79 + 64);
  v28 = __chkstk_darwin(v80);
  v78 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v77 - v30;
  v32 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v36 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v77 - v37;
  v39 = (v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v40 = *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  *v39 = a2;
  v39[1] = a3;

  v41 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);
  v42 = (v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v43 = *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);
  *v42 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v42[1] = v41;

  v44 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);
  v45 = (v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  v46 = *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);
  *v45 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  v45[1] = v44;

  *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe) = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v47 = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v93) = v47;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v48 = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v48;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v49 = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v49;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v51 = v93;
  v50 = v94;
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v51;
  v94 = v50;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v52 = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v52;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v38, v36, &qword_100173D50, &unk_10011D120);

  static Published.subscript.setter();
  sub_1000159AC(v38, &qword_100173D50, &unk_10011D120);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v53 = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v53;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v54 = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v54;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v54) = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v93) = v54;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v54) = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v93) = v54;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v54) = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v93) = v54;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v55 = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v55;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v56 = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v56;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v79;
  v58 = v80;
  (*(v79 + 16))(v78, v31, v80);

  static Published.subscript.setter();
  (*(v57 + 8))(v31, v58);
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = v81;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v83;
  v61 = v59;
  v62 = v59;
  v63 = v84;
  (*(v83 + 16))(v82, v61, v84);

  static Published.subscript.setter();
  (*(v60 + 8))(v62, v63);
  v64 = *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);
  *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions) = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);

  v65 = *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);
  *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs) = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);

  v66 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  swift_beginAccess();
  v67 = v85;
  sub_100007BA4(a1 + v66, v85, &unk_100174FA0, &qword_10011A700);
  v68 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  swift_beginAccess();
  sub_100087AA0(v67, v5 + v68);
  swift_endAccess();
  v69 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
  swift_beginAccess();
  sub_100007BA4(a1 + v69, v67, &unk_100174FA0, &qword_10011A700);
  v70 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
  swift_beginAccess();
  sub_100087AA0(v67, v5 + v70);
  swift_endAccess();
  v71 = *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity);
  *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = v88;

  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v86;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v74 = v89;
  v73 = v90;
  (*(v89 + 16))(v87, v72, v90);

  static Published.subscript.setter();
  (*(v74 + 8))(v72, v73);
  swift_getKeyPath();
  swift_getKeyPath();
  v75 = v91;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v75, v92, &qword_100172FD0, &qword_10011A210);

  static Published.subscript.setter();
  return sub_1000159AC(v75, &qword_100172FD0, &qword_10011A210);
}

void sub_10007F568(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v82 = a7;
  v83 = a8;
  v84 = a6;
  v86 = a5;
  v80 = a3;
  v81 = a4;
  v79 = a2;
  v11 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v78 = &v77 - v13;
  v14 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v77 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100087D7C(&qword_100175D18, &type metadata accessor for SFAirDropReceive.Transfer.State);
  v87 = a1;
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = v15[1];
  v85 = v14;
  v23(v21, v14);
  if ((v22 & 1) == 0)
  {
    v24 = v15[2];
    v25 = v85;
    v24(v21, v87, v85);
    swift_getKeyPath();
    swift_getKeyPath();
    v24(v19, v21, v25);

    static Published.subscript.setter();
    v23(v21, v25);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = v79 & 1;
  if (v88 != (v79 & 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v88) = v26;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = v88;
  v29 = v80;
  v28 = v81;
  v30 = v83;
  v31 = v84;
  v32 = v82;
  if (v88 != v80)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v88 = v29;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v88 == v28)
  {
    if (v27 == v29)
    {
      if (!v31)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v88 = v28;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v33 = v88;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  [v33 setCompletedUnitCount:v88];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v34 = v88;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  [v34 setTotalUnitCount:v88];

  if (!v31)
  {
    goto LABEL_20;
  }

LABEL_13:
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (!v89)
  {
    goto LABEL_19;
  }

  if (v88 == v86 && v89 == v31)
  {

    goto LABEL_20;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
  }

  else
  {
LABEL_19:
    swift_getKeyPath();
    swift_getKeyPath();
    v88 = v86;
    v89 = v31;

    static Published.subscript.setter();
  }

LABEL_20:
  v36 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions;
  if (!v32)
  {
    v40 = &_swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v37 = *(v9 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);

  v39 = sub_100008598(v38, v32);

  v40 = v32;
  if ((v39 & 1) == 0)
  {
LABEL_24:
    v41 = *(v9 + v36);
    *(v9 + v36) = v40;
  }

  v42 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs;
  if (v30)
  {
    v43 = *(v9 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);

    v45 = sub_1000087E8(v44, v30);

    v46 = v30;
    if (v45)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v46 = &_swiftEmptyArrayStorage;
  }

  v47 = *(v9 + v42);
  *(v9 + v42) = v46;

LABEL_30:
  sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
  v48 = static NSUserDefaults.airdrop.getter();
  v49 = SFAirDropUserDefaults.moveToAppEnabled.getter();

  if (SFAirDropReceive.Transfer.State.sfTransferState.getter() == 7 && (v49 & 1) == 0 && (*(v9 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v51 = Strong;
      sub_10003BB64(v9);
    }
  }

  sub_10007BD28();
  v52 = *(v9 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity);
  if (v52)
  {
    sub_100087D7C(&qword_100173D78, &type metadata accessor for SFAirDropReceive.Transfer.State);

    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    if (qword_1001721E0 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100007D20(v56, qword_100175480);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = v31;
      v60 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v60 = 136315906;
      v61 = Activity.id.getter();
      v63 = sub_10003E81C(v61, v62, &v88);
      v87 = v53;
      v64 = v63;

      *(v60 + 4) = v64;
      *(v60 + 12) = 2048;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v65 = v90;
      [v90 fractionCompleted];
      v67 = v66;

      *(v60 + 14) = v67;
      *(v60 + 22) = 2080;
      v68 = sub_10003E81C(v87, v55, &v88);

      *(v60 + 24) = v68;
      *(v60 + 32) = 2080;
      if (v59)
      {
        v69 = v86;
      }

      else
      {
        v69 = 0x3E656E6F6E3CLL;
      }

      if (v59)
      {
        v70 = v59;
      }

      else
      {
        v70 = 0xE600000000000000;
      }

      v71 = sub_10003E81C(v69, v70, &v88);

      *(v60 + 34) = v71;
      _os_log_impl(&_mh_execute_header, v57, v58, "Updating ActivityKit activity %s with progress: %f, transferState: %s, description: %s", v60, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v72 = v88;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v73 = v88;
    v74 = type metadata accessor for TaskPriority();
    v75 = v78;
    (*(*(v74 - 8) + 56))(v78, 1, 1, v74);
    v76 = swift_allocObject();
    v76[2] = v52;
    v76[3] = v72;
    v76[4] = v73;

    static Task<>.noThrow(priority:operation:)();

    sub_1000159AC(v75, &qword_100172F50, &qword_10011E500);
  }
}

uint64_t sub_100080154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = *(&async function pointer to dispatch thunk of Activity.update(using:) + 1);
  v8 = (&async function pointer to dispatch thunk of Activity.update(using:) + async function pointer to dispatch thunk of Activity.update(using:));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_10008020C;

  return v8(v4 + 2);
}

uint64_t sub_10008020C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100080300()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000077C8(&qword_100175CD0, &unk_10011D8C0);
  v8 = *(*(v7 - 8) + 64);
  result = __chkstk_darwin(v7 - 8);
  v11 = &v28[-v10];
  v12 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity;
  if (*(v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity))
  {
    v13 = qword_1001721E0;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100007D20(v14, qword_100175480);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = v12;
      v18 = v17;
      v30 = swift_slowAlloc();
      v32 = v30;
      *v18 = 136315138;
      v29 = v16;
      v19 = Activity.id.getter();
      v21 = v6;
      v22 = v3;
      v23 = v2;
      v24 = v1;
      v25 = sub_10003E81C(v19, v20, &v32);

      *(v18 + 4) = v25;
      v1 = v24;
      v2 = v23;
      v3 = v22;
      v6 = v21;
      _os_log_impl(&_mh_execute_header, v15, v29, "Ending activity %s", v18, 0xCu);
      sub_100007920(v30);

      v12 = v31;
    }

    v26 = sub_1000077C8(&qword_100175CD8, &qword_10011D8D0);
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    static ActivityUIDismissalPolicy.immediate.getter();
    dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

    (*(v3 + 8))(v6, v2);
    sub_1000159AC(v11, &qword_100175CD0, &unk_10011D8C0);
    v27 = *(v1 + v12);
    *(v1 + v12) = 0;
  }

  return result;
}

void sub_10008065C(const char *a1, void (*a2)(uint64_t))
{
  v5 = v2;
  if (qword_1001721E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100007D20(v6, qword_100175480);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    a2(v5);
  }
}

void sub_1000807A4()
{
  v0 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v32 = &v30 - v2;
  v3 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v31 = &v30 - v15;
  if (qword_1001721E0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100007D20(v16, qword_100175480);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Requested 'showInterventionMoreInfo' on AirDropTransferSession", v19, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v33;
  static Published.subscript.getter();

  SFAirDropReceive.Transfer.State.permissionRequest.getter();
  (*(v8 + 8))(v11, v7);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    sub_1000159AC(v6, &qword_100173D50, &unk_10011D120);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Invalid transfer state for 'showInterventionMoreInfo'", v23, 2u);
    }
  }

  else
  {
    v24 = v31;
    (*(v13 + 32))(v31, v6, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      type metadata accessor for AirDropTransferSessionsController();
      sub_10003C81C();
    }

    v27 = type metadata accessor for TaskPriority();
    v28 = v32;
    (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
    v29 = swift_allocObject();
    *(v29 + 16) = &unk_10011D900;
    *(v29 + 24) = v20;

    sub_1000077C8(&unk_100173C60, &qword_10011D910);
    static Task<>.noThrow(priority:operation:)();

    sub_1000159AC(v28, &qword_100172F50, &qword_10011E500);
    (*(v13 + 8))(v24, v12);
  }
}

uint64_t sub_100080CBC(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100080D54, v3, v2);
}

uint64_t sub_100080D54()
{
  v2 = v0[2];
  v1 = v0[3];

  if (*(v2 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) != 1)
  {
    if (qword_100172250 != -1)
    {
      swift_once();
    }

    sub_1000FBF64();

    goto LABEL_7;
  }

  v3 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100069868();

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = 1;
LABEL_8:
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_100080E48(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  v5 = __chkstk_darwin(v3);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v36 - v7;
  v8 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v36 - v13;
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = type metadata accessor for SFAirDropSend.Transfer.State();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v37 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v36 - v22;
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v2;
  static Published.subscript.getter();

  v24 = v18[6];
  if (v24(v16, 1, v17) == 1)
  {
    v14 = v16;
  }

  else
  {
    v36 = v3;
    v25 = v16;
    v26 = v18[4];
    v26(v23, v25, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v24(v14, 1, v17) != 1)
    {
      v33 = v37;
      v26(v37, v14, v17);
      v31 = SFAirDropSend.Transfer.State.sameCase(as:)();
      v34 = v18[1];
      v34(v33, v17);
      v34(v23, v17);
      return v31 & 1;
    }

    (v18[1])(v23, v17);
    v3 = v36;
  }

  sub_1000159AC(v14, &qword_100172FD0, &qword_10011A210);
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v41;
  static Published.subscript.getter();

  v28 = v24(v27, 1, v17);
  sub_1000159AC(v27, &qword_100172FD0, &qword_10011A210);
  if (v28 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v38;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v39;
    static Published.subscript.getter();

    v31 = SFAirDropReceive.Transfer.State.sameCase(as:)();
    v32 = *(v40 + 8);
    v32(v30, v3);
    v32(v29, v3);
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_100081358(uint64_t a1)
{
  v183 = type metadata accessor for Date();
  v182 = *(v183 - 8);
  v3 = *(v182 + 64);
  __chkstk_darwin(v183);
  v180 = &v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1000077C8(&qword_100175CE0, &qword_10011D8E0);
  v5 = *(*(v177 - 8) + 64);
  v6 = __chkstk_darwin(v177);
  v181 = &v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v176 = &v173 - v8;
  v9 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v179 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v178 = &v173 - v14;
  v15 = __chkstk_darwin(v13);
  v175 = &v173 - v16;
  __chkstk_darwin(v15);
  v174 = &v173 - v17;
  v191 = type metadata accessor for SFAirDrop.DisplayPriority();
  v190 = *(v191 - 8);
  v18 = *(v190 + 64);
  v19 = __chkstk_darwin(v191);
  v189 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v188 = &v173 - v21;
  v187 = type metadata accessor for DeviceLockState();
  v186 = *(v187 - 8);
  v22 = *(v186 + 64);
  v23 = __chkstk_darwin(v187);
  v185 = &v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v184 = &v173 - v25;
  v195 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v196 = *(v195 - 8);
  v26 = *(v196 + 64);
  __chkstk_darwin(v195);
  v192 = &v173 - v27;
  v194 = sub_1000077C8(&qword_100175CE8, &qword_10011D8E8);
  v28 = *(*(v194 - 8) + 64);
  __chkstk_darwin(v194);
  v197 = &v173 - v29;
  v30 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v193 = &v173 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v198 = &v173 - v35;
  __chkstk_darwin(v34);
  v199 = &v173 - v36;
  v204 = type metadata accessor for SFAirDropSend.Transfer.State();
  v207 = *(v204 - 8);
  v37 = *(v207 + 64);
  __chkstk_darwin(v204);
  v200 = &v173 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_1000077C8(&qword_100175CF0, &qword_10011D8F0);
  v39 = *(*(v202 - 8) + 64);
  __chkstk_darwin(v202);
  v203 = &v173 - v40;
  v41 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v201 = &v173 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v205 = &v173 - v46;
  __chkstk_darwin(v45);
  v206 = &v173 - v47;
  v48 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  v51 = __chkstk_darwin(v48);
  v53 = &v173 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v55 = &v173 - v54;
  v56 = v1;
  v58 = *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v57 = *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  v59 = a1;
  v60 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v61 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

  v62._countAndFlagsBits = v60;
  v62._object = v61;
  LOBYTE(v60) = String.hasPrefix(_:)(v62);

  if ((v60 & 1) == 0)
  {
    goto LABEL_10;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v63 = static SFAirDropReceive.Transfer.State.== infix(_:_:)();
  v64 = *(v49 + 8);
  v64(v53, v48);
  v64(v55, v48);
  if ((v63 & 1) == 0)
  {
    goto LABEL_10;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v206;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v205;
  v173 = v59;
  static Published.subscript.getter();

  v67 = v203;
  v68 = *(v202 + 48);
  sub_100007BA4(v65, v203, &qword_100172FD0, &qword_10011A210);
  sub_100007BA4(v66, v67 + v68, &qword_100172FD0, &qword_10011A210);
  v69 = *(v207 + 48);
  v70 = v204;
  if (v69(v67, 1, v204) == 1)
  {
    sub_1000159AC(v66, &qword_100172FD0, &qword_10011A210);
    sub_1000159AC(v65, &qword_100172FD0, &qword_10011A210);
    if (v69(v67 + v68, 1, v70) == 1)
    {
      sub_1000159AC(v67, &qword_100172FD0, &qword_10011A210);
      goto LABEL_13;
    }
  }

  else
  {
    v71 = v56;
    v72 = v201;
    sub_100007BA4(v67, v201, &qword_100172FD0, &qword_10011A210);
    if (v69(v67 + v68, 1, v70) != 1)
    {
      v78 = v72;
      v79 = v207;
      v80 = v200;
      (*(v207 + 32))(v200, v67 + v68, v70);
      sub_100087D7C(&qword_100175D10, &type metadata accessor for SFAirDropSend.Transfer.State);
      v81 = v71;
      v82 = dispatch thunk of static Equatable.== infix(_:_:)();
      v83 = *(v79 + 8);
      v83(v80, v70);
      sub_1000159AC(v205, &qword_100172FD0, &qword_10011A210);
      sub_1000159AC(v206, &qword_100172FD0, &qword_10011A210);
      v83(v78, v70);
      v56 = v81;
      sub_1000159AC(v67, &qword_100172FD0, &qword_10011A210);
      if ((v82 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_13:
      v84 = *(v56 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);
      v85 = v173;
      v86 = *(v173 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);
      if (v84)
      {
        if (!v86 || (*(v56 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName) != *(v173 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName) || v84 != v86) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v86)
      {
        goto LABEL_10;
      }

      v87 = *(v56 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);
      v88 = *(v85 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);
      if (v87)
      {
        if (!v88 || (*(v56 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName) != *(v85 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName) || v87 != v88) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v88)
      {
        goto LABEL_10;
      }

      if (*(v56 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe) != *(v85 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe))
      {
        goto LABEL_10;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v89 = v208;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v89 != v208)
      {
        goto LABEL_10;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v90 = v208;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v90 != v208)
      {
        goto LABEL_10;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v91 = v208;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v91 != v208)
      {
        goto LABEL_10;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v93 = v208;
      v92 = v209;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v92)
      {
        if (v209)
        {
          if (v93 == v208 && v92 == v209)
          {
          }

          else
          {
            v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v94 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

LABEL_39:
          sub_1000165C4(0, &qword_100175CF8, NSObject_ptr);
          swift_getKeyPath();
          swift_getKeyPath();
          v207 = v56;
          static Published.subscript.getter();

          v95 = v208;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v96 = v208;
          v97 = static NSObject.== infix(_:_:)();

          if ((v97 & 1) == 0)
          {
            goto LABEL_10;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v98 = v199;
          static Published.subscript.getter();

          swift_getKeyPath();
          swift_getKeyPath();
          v99 = v198;
          static Published.subscript.getter();

          v100 = *(v194 + 48);
          v101 = v197;
          sub_100007BA4(v98, v197, &qword_100173D50, &unk_10011D120);
          sub_100007BA4(v99, v101 + v100, &qword_100173D50, &unk_10011D120);
          v102 = *(v196 + 48);
          v103 = v195;
          if (v102(v101, 1, v195) == 1)
          {
            sub_1000159AC(v198, &qword_100173D50, &unk_10011D120);
            sub_1000159AC(v199, &qword_100173D50, &unk_10011D120);
            v104 = v102(v101 + v100, 1, v103) == 1;
            v75 = v101;
            if (!v104)
            {
              goto LABEL_46;
            }

            sub_1000159AC(v101, &qword_100173D50, &unk_10011D120);
          }

          else
          {
            v105 = v193;
            sub_100007BA4(v101, v193, &qword_100173D50, &unk_10011D120);
            v106 = v102(v101 + v100, 1, v103);
            v107 = v103;
            if (v106 == 1)
            {
              sub_1000159AC(v198, &qword_100173D50, &unk_10011D120);
              sub_1000159AC(v199, &qword_100173D50, &unk_10011D120);
              (*(v196 + 8))(v105, v103);
              v75 = v197;
LABEL_46:
              v73 = &qword_100175CE8;
              v74 = &qword_10011D8E8;
              goto LABEL_9;
            }

            v108 = v196;
            v109 = v197;
            v110 = v197 + v100;
            v111 = v192;
            (*(v196 + 32))(v192, v110, v107);
            sub_1000199C8(&qword_100175D08, &unk_100173CB0, &unk_10011AE50);
            v112 = dispatch thunk of static Equatable.== infix(_:_:)();
            v113 = *(v108 + 8);
            v113(v111, v107);
            sub_1000159AC(v198, &qword_100173D50, &unk_10011D120);
            sub_1000159AC(v199, &qword_100173D50, &unk_10011D120);
            v113(v105, v107);
            sub_1000159AC(v109, &qword_100173D50, &unk_10011D120);
            if ((v112 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v114 = v208;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v115 = v208;
          if (v114)
          {
            if (!v208)
            {
              goto LABEL_71;
            }

            sub_1000165C4(0, &qword_100175E50, UIImage_ptr);
            v116 = static NSObject.== infix(_:_:)();

            if ((v116 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          else if (v208)
          {
            goto LABEL_58;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v114 = v208;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v115 = v208;
          if (v114)
          {
            if (!v208)
            {
              goto LABEL_71;
            }

            sub_1000165C4(0, &qword_100175E50, UIImage_ptr);
            v117 = static NSObject.== infix(_:_:)();

            if ((v117 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          else if (v208)
          {
            goto LABEL_58;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v118 = v208;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v118 != v208)
          {
            goto LABEL_10;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v119 = v208;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v119 != v208)
          {
            goto LABEL_10;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v120 = v208;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v120 != v208)
          {
            goto LABEL_10;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v114 = v208;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v115 = v208;
          if (v114)
          {
            if (!v208)
            {
              goto LABEL_71;
            }

            sub_1000165C4(0, &qword_100175E50, UIImage_ptr);
            v121 = static NSObject.== infix(_:_:)();

            if ((v121 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          else if (v208)
          {
            goto LABEL_58;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v114 = v208;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v115 = v208;
          if (v114)
          {
            if (v208)
            {
              sub_1000165C4(0, &qword_100175E50, UIImage_ptr);
              v122 = static NSObject.== infix(_:_:)();

              if ((v122 & 1) == 0)
              {
                goto LABEL_10;
              }

LABEL_73:
              swift_getKeyPath();
              swift_getKeyPath();
              v123 = v184;
              static Published.subscript.getter();

              swift_getKeyPath();
              swift_getKeyPath();
              v124 = v185;
              static Published.subscript.getter();

              v125 = static DeviceLockState.== infix(_:_:)();
              v126 = *(v186 + 8);
              v127 = v124;
              v128 = v187;
              v126(v127, v187);
              v126(v123, v128);
              if ((v125 & 1) == 0)
              {
                goto LABEL_10;
              }

              swift_getKeyPath();
              swift_getKeyPath();
              v129 = v188;
              static Published.subscript.getter();

              swift_getKeyPath();
              swift_getKeyPath();
              v130 = v189;
              static Published.subscript.getter();

              v131 = static SFAirDrop.DisplayPriority.== infix(_:_:)();
              v132 = *(v190 + 8);
              v133 = v130;
              v134 = v191;
              v132(v133, v191);
              v132(v129, v134);
              if ((v131 & 1) == 0)
              {
                goto LABEL_10;
              }

              v135 = *(v207 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);
              v136 = *(v85 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);

              v137 = sub_100008598(v135, v136);

              if ((v137 & 1) == 0)
              {
                goto LABEL_10;
              }

              v138 = *(v207 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);
              v139 = *(v85 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);

              v140 = sub_1000087E8(v138, v139);

              if ((v140 & 1) == 0)
              {
                goto LABEL_10;
              }

              v141 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
              v142 = v207;
              swift_beginAccess();
              v143 = v174;
              sub_100007BA4(v142 + v141, v174, &unk_100174FA0, &qword_10011A700);
              v144 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
              swift_beginAccess();
              v145 = *(v177 + 48);
              v146 = v143;
              v147 = v176;
              sub_100007BA4(v146, v176, &unk_100174FA0, &qword_10011A700);
              sub_100007BA4(v85 + v144, v147 + v145, &unk_100174FA0, &qword_10011A700);
              v148 = *(v182 + 48);
              if (v148(v147, 1, v183) == 1)
              {
                sub_1000159AC(v174, &unk_100174FA0, &qword_10011A700);
                if (v148(v176 + v145, 1, v183) == 1)
                {
                  sub_1000159AC(v176, &unk_100174FA0, &qword_10011A700);
                  goto LABEL_84;
                }
              }

              else
              {
                v149 = v176;
                sub_100007BA4(v176, v175, &unk_100174FA0, &qword_10011A700);
                if (v148(v149 + v145, 1, v183) != 1)
                {
                  v150 = v182;
                  v151 = v176;
                  v152 = v176 + v145;
                  v153 = v180;
                  v154 = v183;
                  (*(v182 + 32))(v180, v152, v183);
                  sub_100087D7C(&qword_100175D00, &type metadata accessor for Date);
                  v155 = v175;
                  LODWORD(v206) = dispatch thunk of static Equatable.== infix(_:_:)();
                  v156 = *(v150 + 8);
                  v156(v153, v154);
                  sub_1000159AC(v174, &unk_100174FA0, &qword_10011A700);
                  v156(v155, v154);
                  sub_1000159AC(v151, &unk_100174FA0, &qword_10011A700);
                  if ((v206 & 1) == 0)
                  {
                    goto LABEL_10;
                  }

LABEL_84:
                  v157 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
                  v158 = v207;
                  swift_beginAccess();
                  v159 = v178;
                  sub_100007BA4(v158 + v157, v178, &unk_100174FA0, &qword_10011A700);
                  v160 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
                  swift_beginAccess();
                  v161 = *(v177 + 48);
                  v162 = v159;
                  v163 = v181;
                  sub_100007BA4(v162, v181, &unk_100174FA0, &qword_10011A700);
                  sub_100007BA4(v85 + v160, v163 + v161, &unk_100174FA0, &qword_10011A700);
                  if (v148(v163, 1, v183) == 1)
                  {
                    sub_1000159AC(v178, &unk_100174FA0, &qword_10011A700);
                    if (v148(v181 + v161, 1, v183) == 1)
                    {
                      sub_1000159AC(v181, &unk_100174FA0, &qword_10011A700);
                      goto LABEL_91;
                    }
                  }

                  else
                  {
                    v164 = v181;
                    sub_100007BA4(v181, v179, &unk_100174FA0, &qword_10011A700);
                    if (v148(v164 + v161, 1, v183) != 1)
                    {
                      v165 = v182;
                      v166 = v181;
                      v167 = v181 + v161;
                      v168 = v180;
                      v169 = v183;
                      (*(v182 + 32))(v180, v167, v183);
                      sub_100087D7C(&qword_100175D00, &type metadata accessor for Date);
                      v170 = v179;
                      v171 = dispatch thunk of static Equatable.== infix(_:_:)();
                      v172 = *(v165 + 8);
                      v172(v168, v169);
                      sub_1000159AC(v178, &unk_100174FA0, &qword_10011A700);
                      v172(v170, v169);
                      sub_1000159AC(v166, &unk_100174FA0, &qword_10011A700);
                      if ((v171 & 1) == 0)
                      {
                        goto LABEL_10;
                      }

LABEL_91:
                      v76 = *(v207 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) ^ *(v85 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) ^ 1;
                      return v76 & 1;
                    }

                    sub_1000159AC(v178, &unk_100174FA0, &qword_10011A700);
                    (*(v182 + 8))(v179, v183);
                  }

                  v73 = &qword_100175CE0;
                  v74 = &qword_10011D8E0;
                  v75 = v181;
                  goto LABEL_9;
                }

                sub_1000159AC(v174, &unk_100174FA0, &qword_10011A700);
                (*(v182 + 8))(v175, v183);
              }

              v73 = &qword_100175CE0;
              v74 = &qword_10011D8E0;
              v75 = v176;
              goto LABEL_9;
            }

LABEL_71:

            goto LABEL_10;
          }

          if (!v208)
          {
            goto LABEL_73;
          }

LABEL_58:

          goto LABEL_10;
        }
      }

      else if (!v209)
      {
        goto LABEL_39;
      }

      goto LABEL_10;
    }

    sub_1000159AC(v205, &qword_100172FD0, &qword_10011A210);
    sub_1000159AC(v206, &qword_100172FD0, &qword_10011A210);
    (*(v207 + 8))(v72, v70);
  }

  v73 = &qword_100175CF0;
  v74 = &qword_10011D8F0;
  v75 = v67;
LABEL_9:
  sub_1000159AC(v75, v73, v74);
LABEL_10:
  v76 = 0;
  return v76 & 1;
}

void sub_10008337C()
{
  if (!qword_100175578)
  {
    sub_1000165C4(255, &qword_100173D70, NSProgress_ptr);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100175578);
    }
  }
}

void sub_1000833E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10008345C()
{
  result = qword_100175C70;
  if (!qword_100175C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C70);
  }

  return result;
}

unint64_t sub_1000834B4()
{
  result = qword_100175C78;
  if (!qword_100175C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C78);
  }

  return result;
}

unint64_t sub_10008350C()
{
  result = qword_100175C80;
  if (!qword_100175C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C80);
  }

  return result;
}

unint64_t sub_100083564()
{
  result = qword_100175C88;
  if (!qword_100175C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C88);
  }

  return result;
}

unint64_t sub_1000835BC()
{
  result = qword_100175C90;
  if (!qword_100175C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C90);
  }

  return result;
}

unint64_t sub_100083614()
{
  result = qword_100175C98;
  if (!qword_100175C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C98);
  }

  return result;
}

uint64_t sub_100083668@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AirDropTransferSession();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000836CC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v4 = *v3 == *(*a2 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier) && v3[1] == *(v2 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return sub_100081358(v2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100083784(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10008381C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10008389C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100083918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100083998(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return static Published.subscript.setter();
}

double sub_100083A10@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100083A90(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100083B14(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100083B90(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100007BA4(a1, &v13 - v9, &qword_100173D50, &unk_10011D120);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v10, v7, &qword_100173D50, &unk_10011D120);

  static Published.subscript.setter();
  return sub_1000159AC(v10, &qword_100173D50, &unk_10011D120);
}

uint64_t sub_100083DB0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return static Published.subscript.setter();
}

void sub_100083E4C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_100083E84()
{
  v0 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for ActivityUIDismissalPolicy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&qword_100175CD0, &unk_10011D8C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  sub_1000077C8(&unk_100173E40, &qword_10011A6F8);
  result = static Activity.activities.getter();
  v14 = result;
  if (!(result >> 62))
  {
    v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    static Task<>.noThrow(priority:operation:)();

    return sub_1000159AC(v3, &qword_100172F50, &qword_10011E500);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v15 >= 1)
  {
    v21 = v3;
    v16 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      ++v16;
      v17 = sub_1000077C8(&qword_100175CD8, &qword_10011D8D0);
      (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
      static ActivityUIDismissalPolicy.immediate.getter();
      dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

      (*(v5 + 8))(v8, v4);
      sub_1000159AC(v12, &qword_100175CD0, &unk_10011D8C0);
    }

    while (v15 != v16);

    v3 = v21;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000841B4(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v180 = a4;
  v154 = a3;
  v152 = a2;
  v153 = a1;
  v179 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v178 = *(v179 - 8);
  v5 = *(v178 + 64);
  v6 = __chkstk_darwin(v179);
  v177 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v176 = &v140 - v8;
  v9 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v175 = &v140 - v11;
  v174 = type metadata accessor for SFAirDrop.DisplayPriority();
  v173 = *(v174 - 8);
  v12 = *(v173 + 64);
  v13 = __chkstk_darwin(v174);
  v172 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v171 = &v140 - v15;
  v170 = type metadata accessor for DeviceLockState();
  v169 = *(v170 - 8);
  v16 = *(v169 + 64);
  v17 = __chkstk_darwin(v170);
  v168 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v166 = &v140 - v19;
  v181 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v187 = *(v181 - 8);
  v20 = *(v187 + 8);
  __chkstk_darwin(v181);
  v164 = &v140 - v21;
  v22 = sub_1000077C8(&qword_100173D48, &unk_10011A530);
  v23 = *(v22 - 8);
  v185 = v22;
  v186 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v192 = &v140 - v25;
  v184 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  v26 = *(*(v184 - 8) + 64);
  v27 = __chkstk_darwin(v184);
  v183 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v182 = &v140 - v29;
  v30 = sub_1000077C8(&qword_100173D58, &unk_10011A540);
  v190 = *(v30 - 8);
  v191 = v30;
  v31 = *(v190 + 64);
  __chkstk_darwin(v30);
  v163 = &v140 - v32;
  v189 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v33 = *(*(v189 - 8) + 64);
  v34 = __chkstk_darwin(v189);
  v188 = &v140 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v140 - v36;
  v38 = sub_1000077C8(&qword_100173D60, &qword_10011D3A0);
  v146 = v38;
  v147 = *(v38 - 8);
  v39 = v147;
  v40 = *(v147 + 64);
  __chkstk_darwin(v38);
  v42 = &v140 - v41;
  v43 = sub_1000077C8(&qword_100173728, qword_1001199F0);
  v141 = v43;
  v193 = *(v43 - 8);
  v44 = v193;
  v45 = *(v193 + 64);
  __chkstk_darwin(v43);
  v47 = &v140 - v46;
  Date.init()();
  v48 = (v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v142 = (v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  *v48 = 0;
  v48[1] = 0;
  v49 = (v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  v143 = (v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  *v49 = 0;
  v49[1] = 0;
  v50 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction;
  v51 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v51 - 8) + 56))(v4 + v50, 1, 1, v51);
  v52 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferAccepted;
  v144 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferAccepted;
  LOBYTE(v196) = 0;
  Published.init(initialValue:)();
  v53 = *(v44 + 32);
  v161 = v44 + 32;
  v162 = v53;
  v53(v4 + v52, v47, v43);
  v54 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__localizedTransferDescription;
  v145 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__localizedTransferDescription;
  v196 = 0;
  v197 = 0;
  v149 = sub_1000077C8(&qword_100172AA0, &unk_1001187F0);
  Published.init(initialValue:)();
  (*(v39 + 32))(v4 + v54, v42, v38);
  v55 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v165 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v56 = type metadata accessor for SFAirDropSend.Transfer.State();
  (*(*(v56 - 8) + 56))(v37, 1, 1, v56);
  v167 = v37;
  sub_100007BA4(v37, v188, &qword_100172FD0, &qword_10011A210);
  v57 = v163;
  Published.init(initialValue:)();
  sub_1000159AC(v37, &qword_100172FD0, &qword_10011A210);
  (*(v190 + 32))(v4 + v55, v57, v191);
  v58 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__permissionRequest;
  v148 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__permissionRequest;
  v59 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v60 = v182;
  (*(*(v59 - 8) + 56))(v182, 1, 1, v59);
  sub_100007BA4(v60, v183, &qword_100173D50, &unk_10011D120);
  v61 = v192;
  Published.init(initialValue:)();
  sub_1000159AC(v60, &qword_100173D50, &unk_10011D120);
  (*(v186 + 32))(v4 + v58, v61, v185);
  v62 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImage;
  v150 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImage;
  v196 = 0;
  v63 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
  v64 = v164;
  v192 = v63;
  Published.init(initialValue:)();
  v65 = *(v187 + 4);
  v66 = v181;
  v65(v4 + v62, v64, v181);
  v163 = v65;
  v67 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__fallbackPreviewImage;
  v151 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__fallbackPreviewImage;
  v196 = 0;
  Published.init(initialValue:)();
  v65(v4 + v67, v64, v66);
  v68 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldShowSensitiveImage;
  v155 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldShowSensitiveImage;
  LOBYTE(v196) = 0;
  Published.init(initialValue:)();
  v69 = v4 + v68;
  v70 = v141;
  v71 = v162;
  v162(v69, v47, v141);
  v72 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldDisplayPreviewImage;
  v156 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldDisplayPreviewImage;
  LOBYTE(v196) = 1;
  Published.init(initialValue:)();
  v73 = v4 + v72;
  v74 = v70;
  v71(v73, v47, v70);
  v75 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__contactImage;
  v157 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__contactImage;
  v196 = 0;
  Published.init(initialValue:)();
  v76 = v163;
  (v163)(v4 + v75, v64, v66);
  v77 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__airdropIconImage;
  v158 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__airdropIconImage;
  v196 = 0;
  Published.init(initialValue:)();
  v76(v4 + v77, v64, v66);
  v159 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions;
  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions) = &_swiftEmptyArrayStorage;
  v161 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs;
  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs) = &_swiftEmptyArrayStorage;
  v162 = (v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate);
  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_sessionUpdateDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v164 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity;
  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = 0;
  v78 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  v160 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  v79 = type metadata accessor for Date();
  v80 = *(*(v79 - 8) + 56);
  v80(v4 + v78, 1, 1, v79);
  v163 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
  v80(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime, 1, 1, v79);
  v81 = (v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v82 = v154;
  *v81 = v152;
  v81[1] = v82;
  v83 = v153;
  v84 = *(v153 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);
  v85 = v142;
  v86 = v142[1];
  *v142 = *(v153 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v85[1] = v84;

  v87 = *(v83 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);
  v88 = v143;
  v89 = v143[1];
  *v143 = *(v83 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  v88[1] = v87;

  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe) = *(v83 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v78) = v196;
  v90 = v144;
  swift_beginAccess();
  v91 = *(v193 + 8);
  v193 += 8;
  v154 = v91;
  v91(v4 + v90, v74);
  LOBYTE(v194) = v78;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v92 = v196;
  swift_beginAccess();
  v194 = v92;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v93 = v196;
  swift_beginAccess();
  v194 = v93;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v94 = v196;
  v95 = v197;
  v96 = v145;
  swift_beginAccess();
  (*(v147 + 8))(v4 + v96, v146);
  v194 = v94;
  v195 = v95;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v97 = v196;
  swift_beginAccess();
  v194 = v97;
  sub_1000165C4(0, &qword_100173D70, NSProgress_ptr);
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v98 = v182;
  static Published.subscript.getter();

  v99 = v148;
  swift_beginAccess();
  (*(v186 + 8))(v4 + v99, v185);
  sub_100007BA4(v98, v183, &qword_100173D50, &unk_10011D120);
  Published.init(initialValue:)();
  sub_1000159AC(v98, &qword_100173D50, &unk_10011D120);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v100 = v196;
  v101 = v150;
  swift_beginAccess();
  v102 = *(v187 + 1);
  v102(v4 + v101, v66);
  v187 = v102;
  v194 = v100;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v103 = v196;
  v104 = v151;
  swift_beginAccess();
  v102(v4 + v104, v66);
  v194 = v103;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v103) = v196;
  swift_beginAccess();
  LOBYTE(v194) = v103;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v103) = v196;
  v105 = v155;
  swift_beginAccess();
  v106 = v154;
  v154(v4 + v105, v74);
  LOBYTE(v194) = v103;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v103) = v196;
  v107 = v156;
  swift_beginAccess();
  v106(v4 + v107, v74);
  LOBYTE(v194) = v103;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v108 = v196;
  v109 = v157;
  swift_beginAccess();
  v110 = v181;
  v111 = v187;
  v187(v4 + v109, v181);
  v194 = v108;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v112 = v196;
  v113 = v158;
  swift_beginAccess();
  v111(v4 + v113, v110);
  v194 = v112;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v114 = v166;
  static Published.subscript.getter();

  swift_beginAccess();
  v115 = v169;
  v116 = v170;
  (*(v169 + 16))(v168, v114, v170);
  Published.init(initialValue:)();
  (*(v115 + 8))(v114, v116);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v117 = v196;
  swift_beginAccess();
  v194 = v117;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v118 = v171;
  static Published.subscript.getter();

  swift_beginAccess();
  v119 = v173;
  v120 = v174;
  (*(v173 + 16))(v172, v118, v174);
  Published.init(initialValue:)();
  (*(v119 + 8))(v118, v120);
  swift_endAccess();
  v121 = *(v4 + v159);
  *(v4 + v159) = *(v83 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);

  v122 = *(v4 + v161);
  *(v4 + v161) = *(v83 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);

  v123 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  swift_beginAccess();
  v124 = v83 + v123;
  v125 = v175;
  sub_100007BA4(v124, v175, &unk_100174FA0, &qword_10011A700);
  v126 = v160;
  swift_beginAccess();
  v127 = v4 + v126;
  v128 = v125;
  sub_100087AA0(v125, v127);
  swift_endAccess();
  v129 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
  swift_beginAccess();
  sub_100007BA4(v83 + v129, v128, &unk_100174FA0, &qword_10011A700);
  v130 = v163;
  swift_beginAccess();
  sub_100087AA0(v128, &v130[v4]);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v131 = v176;
  static Published.subscript.getter();

  swift_beginAccess();
  v132 = v178;
  v133 = v179;
  (*(v178 + 16))(v177, v131, v179);
  Published.init(initialValue:)();
  (*(v132 + 8))(v131, v133);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v134 = v167;
  static Published.subscript.getter();

  v135 = v165;
  swift_beginAccess();
  (*(v190 + 8))(v4 + v135, v191);
  sub_100007BA4(v134, v188, &qword_100172FD0, &qword_10011A210);
  Published.init(initialValue:)();
  sub_1000159AC(v134, &qword_100172FD0, &qword_10011A210);
  swift_endAccess();
  v136 = v83 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v162 + 1) = *(v136 + 8);
  swift_unknownObjectWeakAssign();

  v138 = *&v164[v4];
  *&v164[v4] = v180;

  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) = SBUIIsSystemApertureEnabled();
  return v4;
}