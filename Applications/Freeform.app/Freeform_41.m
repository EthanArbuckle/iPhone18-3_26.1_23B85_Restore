uint64_t sub_1007501D8()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Update drawableAddSummaryData", 29, 2, _swiftEmptyArrayStorage);

  sub_1005B981C(&qword_1019FE480);
  v2 = type metadata accessor for DataEventTrait();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  (*(v3 + 104))(v5 + v4, enum case for DataEventTrait.unique(_:), v2);
  sub_100751038();
  AccessTracker.push<A>(data:traits:file:line:)();
}

char *sub_100750410(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = v51 - v9;
  __chkstk_darwin(v10);
  v54 = v51 - v11;
  __chkstk_darwin(v12);
  v60 = v51 - v13;
  __chkstk_darwin(v14);
  v16 = v51 - v15;
  v17 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v17 - 8);
  v55 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v51 - v20;
  v22 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v23 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v24 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v23 + v24, v4);
  v53 = sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v4, type metadata accessor for CRLBoardCRDTData);
  v56 = a1;
  v25 = (*(a1 + v22) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v27 = *v25;
  v26 = v25[1];

  sub_10084BD4C(v16, v27, v26, v21);
  v28 = &v21[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
  v29 = *v28;
  v30 = *(v28 + 1);

  sub_10003D45C(v21, type metadata accessor for CRLBoardIdentifier);
  if (v29 || v30 != 0xE000000000000000)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {

    v31 = 1;
  }

  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  v32 = static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userInfo;
  swift_beginAccess();
  v33 = type metadata accessor for AASUserInfo();
  if ((*(*(v33 - 8) + 48))(v32, 1, v33))
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v34 = static OS_os_log.crlAppAnalytics;
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v35, "Failed to retrieve UserID while generating BoardData", 52, 2, _swiftEmptyArrayStorage);

    sub_1007510F4();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v51[1] = v31;
    v36 = *(v33 + 20);
    v52 = *(v6 + 16);
    v37 = v54;
    v52(v54, v32 + v36, v5);
    (*(v6 + 32))(v60, v37, v5);
    v38 = v56;
    v39 = *(v56 + v22);
    v40 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_1005E2B78(v39 + v40, v4);
    CRRegister.wrappedValue.getter();
    sub_10003D45C(v4, type metadata accessor for CRLBoardCRDTData);
    v41 = (*(v38 + v22) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v43 = *v41;
    v42 = v41[1];

    v44 = v55;
    sub_10084BD4C(v16, v43, v42, v55);
    v4 = v59;
    v52(v59, v44, v5);
    v45 = v60;
    sub_10003D45C(v44, type metadata accessor for CRLBoardIdentifier);
    v47 = v57;
    v46 = v58;
    UUID.aas_hashSHA256(with:)(v57);
    if (v46)
    {
      v48 = *(v6 + 8);
      v48(v4, v5);
      v48(v45, v5);
    }

    else
    {
      v50 = *(v6 + 8);
      v50(v4, v5);
      v4 = UUID.uuidString.getter();
      v50(v47, v5);
      v50(v45, v5);
    }
  }

  return v4;
}

uint64_t sub_100750A68(double a1, double a2)
{
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  [v4 setUsesSignificantDigits:1];
  [v4 setMinimumSignificantDigits:2];
  [v4 setMaximumSignificantDigits:2];
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  v6 = [v4 stringFromNumber:v5];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 12589;
  }

  v8 = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  v9 = [v4 stringFromNumber:v8];

  if (v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return v7;
}

uint64_t sub_100750BE8(void *a1)
{
  v2 = (*((swift_isaMask & *a1) + 0xC8))();
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_77;
  }

  if (!(v2 | v3) && v4 == 0)
  {
    goto LABEL_77;
  }

  if (v2 == 1 && v3 == 0 && v4 == 0)
  {
    goto LABEL_65;
  }

  v8 = v2 == 2 && v3 == 0;
  if (v8 && v4 == 0)
  {
    goto LABEL_65;
  }

  v11 = v2 == 3 && v3 == 0 && v4 == 0;
  if (v11 || (v2 == 4 ? (v12 = v3 == 0) : (v12 = 0), v12 ? (v13 = v4 == 0) : (v13 = 0), v13))
  {
    v34 = 2;
    goto LABEL_78;
  }

  if (v2 == 5 && v3 == 0 && v4 == 0)
  {
    v34 = 3;
    goto LABEL_78;
  }

  v16 = v2 == 6 && v3 == 0;
  v17 = v16 && v4 == 0;
  if (v17 || (v2 == 7 ? (v18 = v3 == 0) : (v18 = 0), v18 ? (v19 = v4 == 0) : (v19 = 0), v19))
  {
LABEL_77:
    v34 = 5;
    goto LABEL_78;
  }

  v21 = v2 == 8 && v3 == 0 && v4 == 0;
  if (!v21 && (v2 != 9 || v3 || v4))
  {
    if (v2 == 10 && !v3 && !v4)
    {
      v34 = 4;
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_65:
  type metadata accessor for CRLWPShapeItem();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
LABEL_68:
    v34 = 1;
    goto LABEL_78;
  }

  v23 = v22;
  v24 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v25 = *(**(v22 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
  v26 = a1;

  v28 = v25(v27);

  v29 = [v28 widthValid];

  if (v29)
  {
    v30 = *(**(v23 + v24) + 296);

    v32 = v30(v31);

    v33 = [v32 heightValid];

    if (v33)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v34 = 0;
LABEL_78:
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v35 = static OS_os_log.crlAppAnalytics;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v37 = *((swift_isaMask & *a1) + 0xD0);
  v38 = v35;
  v39 = v37();
  v41 = v40;
  *(inited + 56) = &type metadata for String;
  v42 = sub_1000053B0();
  *(inited + 32) = v39;
  *(inited + 64) = v42;
  *(inited + 40) = v41;
  if (v34 > 2)
  {
    if (v34 == 3)
    {
      v43 = 0xE800000000000000;
      v44 = 0x746E656D75636F64;
    }

    else
    {
      v43 = 0xE700000000000000;
      if (v34 == 4)
      {
        v44 = 0x746E656D6D6F63;
      }

      else
      {
        v44 = 0x6E776F6E6B6E75;
      }
    }
  }

  else if (v34)
  {
    v43 = 0xE500000000000000;
    if (v34 == 1)
    {
      v44 = 0x6570616873;
    }

    else
    {
      v44 = 0x616964656DLL;
    }
  }

  else
  {
    v43 = 0xE400000000000000;
    v44 = 1954047348;
  }

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v42;
  *(inited + 72) = v44;
  *(inited + 80) = v43;
  v45 = static os_log_type_t.debug.getter();
  sub_100005404(v38, &_mh_execute_header, v45, "User inserted drawables: %@ analytics type: %@", 46, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  return v34;
}

unint64_t sub_100751038()
{
  result = qword_1019FE488;
  if (!qword_1019FE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE488);
  }

  return result;
}

unint64_t sub_1007510A0()
{
  result = qword_1019FE4A0;
  if (!qword_1019FE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE4A0);
  }

  return result;
}

unint64_t sub_1007510F4()
{
  result = qword_1019FE4A8;
  if (!qword_1019FE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE4A8);
  }

  return result;
}

unint64_t sub_100751148()
{
  result = qword_1019FE4B0;
  if (!qword_1019FE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE4B0);
  }

  return result;
}

unint64_t sub_10075119C()
{
  result = qword_1019FE4B8;
  if (!qword_1019FE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE4B8);
  }

  return result;
}

uint64_t sub_100751204(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100751260()
{
  result = qword_1019FE4C8;
  if (!qword_1019FE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE4C8);
  }

  return result;
}

unint64_t sub_1007512B8()
{
  result = qword_1019FE4D0;
  if (!qword_1019FE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE4D0);
  }

  return result;
}

unint64_t sub_100751310()
{
  result = qword_1019FE4D8;
  if (!qword_1019FE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE4D8);
  }

  return result;
}

uint64_t sub_1007513E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  v9 = sub_1005B981C(&qword_1019FC3D8);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  v12 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v12 - 8);
  v14 = v19 - v13;
  sub_1005B981C(&qword_1019FC3E0);
  v15 = type metadata accessor for LocalizedStringResource();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = type metadata accessor for String.IntentInputOptions();
  v19[3] = 0;
  v19[4] = 0;
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = type metadata accessor for IntentDialog();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  (*(v3 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v2);
  *a1 = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_1005B981C(&qword_1019F6280);
  v19[1] = 0xD00000000000001FLL;
  v19[2] = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  a1[1] = result;
  a1[5] = &type metadata for CRLCreateBoardIntentPerformer;
  a1[6] = &off_101896C18;
  return result;
}

uint64_t sub_10075172C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for InputConnectionBehavior();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v13 = sub_1005B981C(&qword_1019FC3D8);
  __chkstk_darwin(v13 - 8);
  v15 = v23 - v14;
  v16 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v16 - 8);
  v18 = v23 - v17;
  sub_1005B981C(&qword_1019FC3E0);
  v19 = type metadata accessor for LocalizedStringResource();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = type metadata accessor for String.IntentInputOptions();
  v24 = 0;
  v25 = 0;
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = type metadata accessor for IntentDialog();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  (*(v7 + 104))(v9, enum case for InputConnectionBehavior.default(_:), v6);
  *a3 = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_1005B981C(&qword_1019F6280);
  v23[1] = 0xD00000000000001FLL;
  v23[2] = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  a3[1] = AppDependency.__allocating_init(key:manager:)();
  a3[5] = &type metadata for CRLCreateBoardIntentPerformer;
  a3[6] = &off_101896C18;
  v24 = a1;
  v25 = a2;
  return IntentParameter.wrappedValue.setter();
}

uint64_t sub_100751A94(uint64_t a1)
{
  v2[76] = v1;
  v2[75] = a1;
  type metadata accessor for LocalizedStringResource();
  v2[77] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6260);
  v2[78] = swift_task_alloc();
  v2[79] = type metadata accessor for CRLBoardEntity();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();

  return _swift_task_switch(sub_100751BB4, 0, 0);
}

uint64_t sub_100751BB4()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = v0[76];
  v2 = static OS_os_log.appIntents;
  v0[84] = static OS_os_log.appIntents;
  v0[85] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[86] = *v1;
  IntentParameter.wrappedValue.getter();
  v4 = v0[62];
  v0[63] = v0[61];
  v0[64] = v4;
  v0[87] = sub_1005B981C(&unk_1019F6C70);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  v0[88] = v8;
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = static os_log_type_t.info.getter();
  sub_100005404(v2, &_mh_execute_header, v9, "Performing CRLCreateBoardIntent with title: %@", 46, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_100020E58(v1 + 2, v1[5]);
  IntentParameter.wrappedValue.getter();
  v10 = v0[65];
  v11 = v0[66];
  v0[89] = v11;
  AppDependency.wrappedValue.getter();
  v0[47] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[48] = &off_1018AD9D0;
  v12 = swift_task_alloc();
  v0[90] = v12;
  *v12 = v0;
  v12[1] = sub_100751DC4;
  v13 = v0[83];

  return sub_100B2C204(v13, v10, v11, (v0 + 44));
}

uint64_t sub_100751DC4()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v3 = sub_100752078;
  }

  else
  {
    sub_100005070(v2 + 352);
    v3 = sub_100751EF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100751EF0()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  sub_1006B05D0(v1, v2);
  v5 = sub_100B0768C();
  sub_1006B05D0(v2, v3);
  sub_1006B05D0(v3, v4);
  IntentParameter.wrappedValue.setter();
  sub_100689004(v3);
  sub_100689004(v2);
  v0[74] = v5;
  sub_1007527B0(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100689004(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100752078()
{
  v1 = *(v0 + 728);
  sub_100005070(v0 + 352);
  *(v0 + 568) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 704);
    v3 = *(v0 + 624);
    v27 = *(v0 + 672);

    v4 = *(v0 + 440);
    v5 = *(v0 + 448);
    v6 = *(v0 + 456);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C4D0;
    IntentParameter.wrappedValue.getter();
    v8 = *(v0 + 544);
    *(v0 + 552) = *(v0 + 536);
    *(v0 + 560) = v8;
    v9 = String.init<A>(describing:)();
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v2;
    *(inited + 32) = v9;
    *(inited + 40) = v10;
    v11 = sub_100B6F42C(v4, v5, v6);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v2;
    *(inited + 72) = v11;
    *(inited + 80) = v12;
    *(v0 + 464) = v4;
    *(v0 + 472) = v5;
    *(v0 + 480) = v6;
    sub_10070C1F4(v4, v5, v6);
    v13 = String.init<A>(reflecting:)();
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v2;
    *(inited + 112) = v13;
    *(inited + 120) = v14;
    v15 = static os_log_type_t.debug.getter();
    sub_100005404(v27, &_mh_execute_header, v15, "Invalid name for board provided: %@ - %{public}@ <%@>", 53, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    IntentParameter.projectedValue.getter();
    sub_1007B020C(v4, v5, v6);
    sub_10070C20C(v4, v5, v6);
    IntentDialog.init(_:)();
    v16 = type metadata accessor for IntentDialog();
    (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
    type metadata accessor for AppIntentError();
    sub_1007527B0(&qword_1019F8B08, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_100752748(v3);
  }

  else
  {
    v17 = *(v0 + 704);
    v18 = *(v0 + 672);

    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v20 = Error.publicDescription.getter(*(v0 + 400), *(v0 + 408));
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = v17;
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    swift_getErrorValue();
    v22 = Error.fullDescription.getter(*(v0 + 424));
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v17;
    *(v19 + 72) = v22;
    *(v19 + 80) = v23;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v24, "Error creating a board: %{public}@ <%@>", 39, 2, v19);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    type metadata accessor for AppIntentError();
    sub_1007527B0(&qword_1019F8B08, &type metadata accessor for AppIntentError);
    swift_allocError();
    static AppIntentError.Unrecoverable.unknown.getter();
  }

  swift_willThrow();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100752500(uint64_t a1)
{
  v2 = sub_1007527F8();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_100752550(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_100751A94(a1);
}

uint64_t sub_1007525EC(uint64_t a1)
{
  v2 = sub_1006896D0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10075262C()
{
  result = qword_1019FE4E0;
  if (!qword_1019FE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE4E0);
  }

  return result;
}

__n128 sub_100752688(uint64_t a1, uint64_t a2)
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

uint64_t sub_1007526A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1007526EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100752748(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019F6260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007527B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1007527F8()
{
  result = qword_1019FE4E8;
  if (!qword_1019FE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE4E8);
  }

  return result;
}

uint64_t sub_10075284C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D3D4;

  return sub_1007528DC();
}

uint64_t sub_1007528DC()
{
  *(v1 + 256) = v0;
  sub_1005B981C(&qword_1019FB750);
  *(v1 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_100752978, v0, 0);
}

uint64_t sub_100752978()
{
  v1 = v0[32];
  v2 = *(v1 + 136);
  if (v2 || (v3 = v0[33], v4 = type metadata accessor for TaskPriority(), (*(*(v4 - 8) + 56))(v3, 1, 1, v4), v5 = swift_allocObject(), swift_weakInit(), v6 = swift_allocObject(), v6[2] = 0, v6[3] = 0, v6[4] = v5, *(v1 + 136) = sub_10079702C(0, 0, v3, &unk_10147A020, v6), , (v2 = *(v1 + 136)) != 0))
  {
    v0[34] = v2;

    v7 = swift_task_alloc();
    v0[35] = v7;
    v8 = sub_1005B981C(&qword_1019FE618);
    v9 = sub_1005B981C(&unk_1019F6B40);
    v0[36] = v9;
    *v7 = v0;
    v7[1] = sub_100752B78;

    return Task.value.getter(v0 + 2, v2, v8, v9, &protocol self-conformance witness table for Error);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100752B78()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    v4 = sub_100752D74;
  }

  else
  {
    v4 = sub_100752C90;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100752C90()
{
  v1 = *(v0 + 256);

  *(v0 + 96) = *(v1 + 152);
  v2 = *(v1 + 168);
  v3 = *(v1 + 184);
  v4 = *(v1 + 200);
  *(v0 + 153) = *(v1 + 209);
  *(v0 + 128) = v3;
  *(v0 + 144) = v4;
  *(v0 + 112) = v2;
  v6 = *(v0 + 48);
  v5 = *(v0 + 64);
  v7 = *(v0 + 73);
  *(v1 + 168) = *(v0 + 32);
  *(v1 + 209) = v7;
  *(v1 + 200) = v5;
  *(v1 + 184) = v6;
  *(v1 + 152) = *(v0 + 16);
  sub_10000CAAC(v0 + 96, &qword_1019FE618);
  v8 = *(v0 + 256);
  *(v8 + 144) = 1;
  *(v8 + 136) = 0;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100752D74()
{
  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[31] = v1;
  swift_errorRetain();
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.debug.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error trying to fetch view state from database. %@", 50, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v8 = v0[32];
  *(v8 + 144) = 1;
  *(v8 + 136) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_100752F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a1;
  *(v4 + 128) = a4;
  return _swift_task_switch(sub_100752F24, 0, 0);
}

uint64_t sub_100752F24()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100752FFC, Strong, 0);
  }

  else
  {
    v2 = v0[15];
    *(v2 + 64) = 0;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 72) = 2;
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100752FFC()
{
  v1 = *(v0[17] + 112);
  v0[18] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1007530AC;

  return sub_100EB673C((v0 + 2));
}

uint64_t sub_1007530AC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_100753250;
  }

  else
  {

    v3 = sub_1007531C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007531C8()
{
  v1 = *(v0 + 120);

  *v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 + 57) = *(v0 + 73);
  v1[2] = v3;
  v1[3] = v4;
  v1[1] = v2;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100753250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007532BC()
{

  sub_100753644(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_10075335C(void *a1, void *a2, void *a3)
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  swift_defaultActor_initialize();
  *(v3 + 144) = 0;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0;
  *(v3 + 224) = 2;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3;
  *(v3 + 136) = 0;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v12 = a1;
  v13 = a2;
  v14 = a3;

  sub_100CA64C8(0, 0, v9, &unk_10147A010, v11);

  sub_10000CAAC(v9, &qword_1019FB750);
  return v3;
}

uint64_t sub_1007534DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D3D4;

  return sub_10075284C();
}

uint64_t sub_100753590(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100752F04(a1, v4, v5, v6);
}

void sub_100753644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, char a10)
{
  if (a10 != 2)
  {
    sub_100025870(a6, a7);

    sub_100025870(a8, a9);
  }
}

void *sub_100753708()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
    v3 = result;
    v4 = [result layoutForInfo:v2];

    result = 0;
    if (v4)
    {
      type metadata accessor for CRLWPLayout();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        if (([v5 layoutIsValid] & 1) == 0)
        {
          [v6 validate];
        }

        return v6;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

char *sub_1007537F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS);
  if (!v3)
  {
    return 0;
  }

  v4 = *&v2[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v5 = objc_allocWithZone(type metadata accessor for CRLTextPosition());
  v6 = v2;
  v7 = v3;
  v8 = [v5 init:v4 caretAffinity:0];
  NSNotFound.getter();
  v9 = *&v8[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v10 = *&v8[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v11 = type metadata accessor for CRLTextRange();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v14 = &v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v14 = v9;
  *(v14 + 1) = v9;
  *&v12[v13] = v10;
  v20.receiver = v12;
  v20.super_class = v11;
  v15 = objc_msgSendSuper2(&v20, "init");

  v16 = [v7 start];
  v17 = *&v16[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v18 = sub_10078D9DC(v17);
  return v18;
}

char *sub_1007539C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong[OBJC_IVAR____TtC8Freeform11CRLWPEditor_isResigning];

    if (v2)
    {
      return 0;
    }
  }

  if (!*(*(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage) + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
    v5 = v3;
    return v3;
  }

  return sub_1007537F8();
}

void sub_100753B78()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong[OBJC_IVAR____TtC8Freeform11CRLWPEditor_isResigning], Strong, (v2 & 1) == 0))
  {
    if (*(*(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage) + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      v3 = sub_1007537F8();
      if (!v3)
      {
        return;
      }
    }

    else
    {
      v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
      v6 = v3;
      if (!v3)
      {
        return;
      }
    }

    v4 = [v3 start];
    v5 = *&v4[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    if (v5 == NSNotFound.getter())
    {
    }

    else
    {
      v7 = *&v3[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      v8 = *&v3[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

      if (__OFSUB__(v8, v7))
      {
        __break(1u);
      }
    }
  }
}

void sub_100753E00()
{
  v1 = sub_1005B981C(&qword_1019FC080);
  v42 = *(v1 - 8);
  __chkstk_darwin(v1);
  v41 = &v37 - v2;
  v3 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v17 = Strong[OBJC_IVAR____TtC8Freeform11CRLWPEditor_isResigning], Strong, (v17 & 1) == 0))
  {
    v40 = v1;
    v18 = OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage;
    if (*(*(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage) + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      v19 = sub_1007537F8();
      if (v19)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v19 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
      v36 = v19;
      if (v19)
      {
LABEL_5:
        v20 = *&v19[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
        v38 = *&v19[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v39 = v20;

        v21 = *(v0 + v18);
        sub_100A28D8C();
        v23 = v22;

        v24 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
        v25 = *&v23[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
        if (v25)
        {
          (*(*v25 + 896))();
          sub_1005E0A78(&v9[*(v7 + 20)], v15);
          sub_1005E0ADC(v9, type metadata accessor for CRLWPShapeItemCRDTData);
          (*(v4 + 16))(v6, v15, v3);
          sub_1005E0ADC(v15, type metadata accessor for CRLWPStorageCRDTData);
          v26 = CRAttributedString.count.getter();
          v27 = (*(v4 + 8))(v6, v3);
          if (v26 >= (v38 & ~(v38 >> 63)))
          {
            v28 = v38 & ~(v38 >> 63);
          }

          else
          {
            v28 = v26;
          }

          if ((v39 & ~(v39 >> 63)) >= v28)
          {
            v29 = *&v23[v24];
            if (v29)
            {
              (*(*v29 + 896))(v27);
              sub_1005E0A78(&v9[*(v7 + 20)], v12);
              v30 = v23;
              sub_1005E0ADC(v9, type metadata accessor for CRLWPShapeItemCRDTData);
              v31 = v41;
              CRAttributedString.subscript.getter();
              sub_1005E0ADC(v12, type metadata accessor for CRLWPStorageCRDTData);
              v32 = v40;
              v33 = CRAttributedString.Substring.attributedString.getter();
              (*(v42 + 8))(v31, v32);
              v34 = [v33 string];
              if (v34)
              {
                v35 = v34;

                String.init(_:)(v35);
                return;
              }

              goto LABEL_18;
            }

LABEL_17:
            __break(1u);
LABEL_18:
            __break(1u);
            return;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_17;
      }
    }
  }
}

void *sub_1007543E8(double a1, double a2)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = v2;
  v8 = sub_1007562D8(0, a1, a2);
  v9 = [*&v6[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper] rangeForSelectionAtCharIndex:v8 caretIndex:v8];
  v11 = v10;
  v12 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v13 = sub_10078CDF0(v9, v11);
  v14 = *(v7 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
  *(v7 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange) = v13;
  v15 = v13;

  (*((swift_isaMask & *v7) + 0x268))();
  return v13;
}

id sub_1007545B4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_minimumCaretHitRegionWidth] = 0;
  v8 = OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v51 = OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_lastEditingShape] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage] = a1;
  v53 = a1;
  v9 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:objc_msgSend(v53 caretAffinity:{"length"), 0}];
  NSNotFound.getter();
  v10 = *&v9[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v11 = *&v9[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v12 = type metadata accessor for CRLTextRange();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v13[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v13[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v15 = &v13[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v15 = v10;
  *(v15 + 1) = v10;
  *&v13[v14] = v11;
  v16 = a3;
  v57.receiver = v13;
  v57.super_class = v12;
  v17 = objc_msgSendSuper2(&v57, "init");

  v18 = *&v4[v8];
  *&v4[v8] = v17;

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v55[3] = &type metadata for CRLUIKitFeatureFlags;
    v55[4] = sub_100757068();
    v19 = isFeatureEnabled(_:)();
    sub_100005070(v55);
    if (v19)
    {
      v20 = objc_allocWithZone(type metadata accessor for CRLSelectionViewController_i());
      *&v20[OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_textSelectionInteraction] = 0;
      *&v20[OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_lastRotation] = 0;
      v21 = a2;
      v22 = a3;
      v23 = sub_100912954(v21);
    }

    else
    {
      v23 = 0;
    }

    v48 = *&v4[v51];
    *&v4[v51] = v23;

    v54.receiver = v4;
    v54.super_class = type metadata accessor for CRLWPTextSelectionManager();
    v47 = objc_msgSendSuper2(&v54, "init");
  }

  else
  {
    v52 = a3;
    v50 = objc_opt_self();
    v24 = [v50 _atomicIncrementAssertCount];
    v55[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v55);
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    v27 = [v26 lastPathComponent];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v24;
    v33 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v33;
    v34 = sub_1005CF04C();
    *(inited + 104) = v34;
    *(inited + 72) = v25;
    *(inited + 136) = &type metadata for String;
    v35 = sub_1000053B0();
    *(inited + 112) = v28;
    *(inited + 120) = v30;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v35;
    *(inited + 152) = 150;
    v36 = v55[0];
    *(inited + 216) = v33;
    *(inited + 224) = v34;
    *(inited + 192) = v36;
    v37 = v25;
    v38 = v36;
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v40, "Need an icc here!", 17, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v41 = swift_allocObject();
    v41[2] = 8;
    v41[3] = 0;
    v41[4] = 0;
    v41[5] = 0;
    v42 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    [v50 handleFailureInFunction:v43 file:v44 lineNumber:150 isFatal:0 format:v45 args:v42];

    v46 = type metadata accessor for CRLWPTextSelectionManager();
    v56.receiver = v4;
    v56.super_class = v46;
    v47 = objc_msgSendSuper2(&v56, "init");
    v16 = v52;
  }

  return v47;
}

id sub_100754B9C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController];
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_icc];
    v4 = v2;
    v5 = [v3 removeDecorator:v4];
    (*((swift_isaMask & *v4) + 0x188))(v5);
    sub_100912664();
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for CRLWPTextSelectionManager();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100754D24(uint64_t a1)
{
  v38 = a1;
  v2 = sub_1005B981C(&qword_1019FC080);
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v34 = &v33 - v3;
  v4 = sub_1005B981C(&unk_1019FFD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
  sub_100A28D8C();
  v19 = v18;

  v20 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v21 = *&v19[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = *(v38 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8);
  v37 = *(v38 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v38 = v22;
  (*(*v21 + 896))();
  v33 = v8;
  sub_1005E0A78(&v10[*(v8 + 20)], v16);
  sub_1005E0ADC(v10, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v5 + 16))(v7, v16, v4);
  sub_1005E0ADC(v16, type metadata accessor for CRLWPStorageCRDTData);
  v23 = CRAttributedString.count.getter();
  v24 = (*(v5 + 8))(v7, v4);
  if (v23 >= (v37 & ~(v37 >> 63)))
  {
    v25 = v37 & ~(v37 >> 63);
  }

  else
  {
    v25 = v23;
  }

  if ((v38 & ~(v38 >> 63)) < v25)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = *&v19[v20];
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  (*(*v26 + 896))(v24);
  sub_1005E0A78(&v10[*(v33 + 20)], v13);
  v27 = v19;
  sub_1005E0ADC(v10, type metadata accessor for CRLWPShapeItemCRDTData);
  v28 = v34;
  CRAttributedString.subscript.getter();
  sub_1005E0ADC(v13, type metadata accessor for CRLWPStorageCRDTData);
  v29 = v36;
  v30 = CRAttributedString.Substring.attributedString.getter();
  (*(v35 + 8))(v28, v29);
  v31 = [v30 string];
  if (v31)
  {
    v32 = v31;

    String.init(_:)(v32);
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1007553C8(uint64_t a1@<X0>, void *a2@<X1>, CGPoint *a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v7 = Strong;
  v8 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v8)
  {
    goto LABEL_10;
  }

  type metadata accessor for CRLWPLayout();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

LABEL_10:
    origin = CGRectInfinite.origin;
    size = CGRectInfinite.size;
    goto LABEL_11;
  }

  v10 = v9;
  if (([v9 layoutIsValid] & 1) == 0)
  {
    [v10 validate];
  }

  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v16[3] = type metadata accessor for CRLTextRange();
  v16[0] = a2;
  sub_1007A16F8(*&v10, a2, v15);
  sub_100005070(v16);
  v13 = v15[1];
  v14 = v15[0];

  size = v13;
  origin = v14;
LABEL_11:
  *a3 = origin;
  a3[1] = size;
}

void sub_10075553C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v63 = a4;
  *&v65 = a2;
  v8 = sub_1005B981C(&unk_1019FFD10);
  *&v64 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v62 = OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage;
  v18 = Strong;
  v19 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = v19;
  type metadata accessor for CRLWPLayout();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    goto LABEL_7;
  }

  v22 = v21;
  if (([v21 layoutIsValid] & 1) == 0)
  {
    [v22 validate];
  }

  if (NSNotFound.getter() == v65)
  {
LABEL_7:

LABEL_8:
    *a5 = 0u;
    a5[1] = 0u;
    return;
  }

  v56 = *&v22;
  v60 = v20;
  v61 = a3;
  v23 = *(a1 + v62);
  sub_100A28D8C();
  v25 = v24;

  v26 = *&v25[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v26)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = v25;
  (*(*v26 + 896))();
  sub_1005E0A78(&v13[*(v11 + 20)], v16);
  sub_1005E0ADC(v13, type metadata accessor for CRLWPShapeItemCRDTData);
  v28 = v64;
  v29 = *(v64 + 16);
  v59 = v64 + 16;
  v58 = v29;
  v29(v10, v16, v8);
  sub_1005E0ADC(v16, type metadata accessor for CRLWPStorageCRDTData);
  v30 = CRAttributedString.attributedString.getter();
  v31 = *(v28 + 8);
  *&v64 = v28 + 8;
  v57 = v31;
  v31(v10, v8);
  v32 = [v30 length];

  if (v32 < v65)
  {

    goto LABEL_8;
  }

  v33 = *(a1 + v62);
  sub_100A28D8C();
  v35 = v34;

  v36 = *&v35[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v36)
  {
    goto LABEL_22;
  }

  v55 = v61 + v65;
  (*(*v36 + 896))();
  sub_1005E0A78(&v13[*(v11 + 20)], v16);
  sub_1005E0ADC(v13, type metadata accessor for CRLWPShapeItemCRDTData);
  v58(v10, v16, v8);
  sub_1005E0ADC(v16, type metadata accessor for CRLWPStorageCRDTData);
  v37 = CRAttributedString.attributedString.getter();
  v57(v10, v8);
  v38 = [v37 length];

  v39 = v65;
  v40 = v61;
  if (v38 < v55)
  {
    v41 = *(a1 + v62);
    sub_100A28D8C();
    v43 = v42;

    v44 = *&v43[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v44)
    {
      (*(*v44 + 896))();
      sub_1005E0A78(&v13[*(v11 + 20)], v16);
      sub_1005E0ADC(v13, type metadata accessor for CRLWPShapeItemCRDTData);
      v58(v10, v16, v8);
      sub_1005E0ADC(v16, type metadata accessor for CRLWPStorageCRDTData);
      v45 = CRAttributedString.attributedString.getter();
      v57(v10, v8);
      v39 = [v45 length];

      v40 = 0;
      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_16:
  v46 = v63;
  if (v63)
  {
    *v63 = v39;
    v46[1] = v40;
  }

  v47 = type metadata accessor for CRLTextRange();
  v48 = objc_allocWithZone(v47);
  v49 = sub_10078CDF0(v65, v61);
  v50 = v56;
  if (qword_1019F1570 != -1)
  {
    v53 = v49;
    swift_once();
    v49 = v53;
  }

  v67[3] = v47;
  v67[0] = v49;
  v51 = v49;
  sub_1007A16F8(v50, v51, v66);
  sub_100005070(v67);
  v64 = v66[1];
  v65 = v66[0];

  v52 = v64;
  *a5 = v65;
  a5[1] = v52;
}

void sub_100755C68(uint64_t a1@<X0>, void *a2@<X1>, CGFloat *a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v7 = Strong;
  v8 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v8)
  {
    goto LABEL_8;
  }

  type metadata accessor for CRLWPLayout();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

LABEL_8:
    x = CGRectInfinite.origin.x;
    y = CGRectInfinite.origin.y;
    width = CGRectInfinite.size.width;
    height = CGRectInfinite.size.height;
    goto LABEL_9;
  }

  v10 = v9;
  if (([v9 layoutIsValid] & 1) == 0)
  {
    [v10 validate];
  }

  x = sub_1007A2160(a2);
  y = v12;
  width = v14;
  height = v16;

LABEL_9:
  *a3 = x;
  a3[1] = y;
  a3[2] = width;
  a3[3] = height;
}

double sub_100755D94(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), void (*a5)(double *__return_ptr, id, id))
{
  v8 = qword_1019F1570;
  v9 = a3;
  v10 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v15[3] = a4(0);
  v15[0] = v9;
  v11 = v9;
  a5(&v14, v10, v11);
  sub_100005070(v15);
  v12 = v14;

  return v12;
}

void sub_100755E80(uint64_t a1@<X0>, void *a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v5 = Strong;
  v6 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v6)
  {
    goto LABEL_10;
  }

  type metadata accessor for CRLWPLayout();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v8 = v7;
  if (([v7 layoutIsValid] & 1) == 0)
  {
    [v8 validate];
  }

  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  sub_1007A3814(v8, &v10);

  v9 = v10;
LABEL_11:
  *a2 = v9;
}

void sub_10075603C(uint64_t a1@<X0>, void *a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v5 = Strong;
  v6 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v6)
  {
    goto LABEL_10;
  }

  type metadata accessor for CRLWPLayout();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v8 = v7;
  if (([v7 layoutIsValid] & 1) == 0)
  {
    [v8 validate];
  }

  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  sub_1007A36F4(v8, &v10);

  v9 = v10;
LABEL_11:
  *a2 = v9;
}

uint64_t sub_1007562D8(char a1, double a2, double a3)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  type metadata accessor for CGPoint(0);
  v15[8] = v7;
  v15[5] = *&a2;
  v15[6] = *&a3;
  v17 = &type metadata for Bool;
  v16 = a1 & 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v9 = Strong;
  v10 = [Strong layoutForInfo:*(v3 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v10)
  {
    goto LABEL_11;
  }

  type metadata accessor for CRLWPLayout();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

LABEL_11:
    v13 = NSNotFound.getter();
    goto LABEL_12;
  }

  v12 = v11;
  if (([v11 layoutIsValid] & 1) == 0)
  {
    [v12 validate];
  }

  sub_1007A3814(v12, v15);

  if (!v15[0])
  {
    goto LABEL_11;
  }

  v13 = *(v15[0] + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);

LABEL_12:
  swift_arrayDestroy();
  return v13;
}

void sub_1007564CC(double a1, double a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v27 = [Strong layoutForInfo:*(v2 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v27)
  {
    return;
  }

  type metadata accessor for CRLWPLayout();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  if (([v7 layoutIsValid] & 1) == 0)
  {
    [v8 validate];
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v26 = v9;
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10 && (v11 = v10, v25 = [v10 hitRep:{a1, a2}], v11, v25))
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        [v8 convertNaturalPointFromUnscaledCanvas:{a1, a2}];
        if (qword_1019F1570 != -1)
        {
          swift_once();
        }

        sub_1007A3814(v8, &v29);
        v14 = v29;
        if (v29)
        {
          v15 = *&v29[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
          if ((sub_10075726C(v15, v13, a1, a2) & 1) != 0 && (v16 = __OFSUB__(v15, 1), --v15, v16))
          {
            __break(1u);
          }

          else
          {
            v17 = type metadata accessor for CRLTextRange();
            v18 = objc_allocWithZone(v17);
            v19 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
            *&v18[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
            *&v18[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
            v20 = &v18[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
            *v20 = v15;
            v20[1] = v15;
            *&v18[v19] = 0;
            v28.receiver = v18;
            v28.super_class = v17;
            v21 = objc_msgSendSuper2(&v28, "init");
            v22 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
            *(v2 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange) = v21;
            v23 = v21;

            (*((swift_isaMask & *v2) + 0x268))();
            sub_10093DDE0(0, 1);
          }

          return;
        }
      }

      v24 = v25;
    }

    else
    {

      v24 = v26;
    }
  }

  else
  {
LABEL_17:
    v24 = v27;
  }
}

void sub_100756968()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
  if (v1)
  {
    v2 = *((swift_isaMask & *v1) + 0x190);
    v3 = v1;
    v2();
  }
}

id sub_100756EC0(void *a1)
{
  v1 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:objc_msgSend(a1 caretAffinity:{"length"), 0}];
  NSNotFound.getter();
  v2 = *&v1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v3 = *&v1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v4 = type metadata accessor for CRLTextRange();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v7 = &v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v7 = v2;
  *(v7 + 1) = v2;
  *&v5[v6] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

char *sub_100756FAC(void *a1, void *a2, void *a3)
{
  v12 = &type metadata for CRLUIKitFeatureFlags;
  v13 = sub_100757068();
  v6 = isFeatureEnabled(_:)();
  sub_100005070(v11);
  if (v6)
  {
    v7 = type metadata accessor for CRLWPTextSelectionManager_i();
  }

  else
  {
    v7 = type metadata accessor for CRLWPTextSelectionManager_x();
  }

  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC8Freeform27CRLWPTextSelectionManager_i_loupeSession] = 0;
  v9 = a2;
  result = sub_1007545B4(a1, a2, a3);
  *&result[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_minimumCaretHitRegionWidth] = 0x4044000000000000;
  return result;
}

unint64_t sub_100757068()
{
  result = qword_1019FE680;
  if (!qword_1019FE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE680);
  }

  return result;
}

id sub_1007570BC()
{
  v0 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:0 caretAffinity:0];
  NSNotFound.getter();
  v1 = *&v0[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v2 = *&v0[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v3 = type metadata accessor for CRLTextRange();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v6 = &v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v6 = v1;
  *(v6 + 1) = v1;
  *&v4[v5] = v2;
  v9.receiver = v4;
  v9.super_class = v3;
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

uint64_t sub_100757198(char *a1, char *a2)
{
  swift_getObjectType();
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v4 = *&a2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v5 = *&a1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v6 = a1;
  v7 = a2;
  swift_arrayDestroy();
  result = v4 - v5;
  if (__OFSUB__(v4, v5))
  {
    __break(1u);
  }

  return result;
}

id sub_10075726C(uint64_t a1, id a2, double a3, double a4)
{
  v4 = a1 - 1;
  if (a1 < 1)
  {
    return 0;
  }

  result = [a2 selection];
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = [result caretAffinity];

  [a2 convertNaturalPointFromUnscaledCanvas:{a3, a4}];
  v39 = v13;
  v40 = v12;
  [a2 caretRectForCharIndex:a1 caretAffinity:v11];
  v15 = v14;
  v41 = v16;
  v18 = v17;
  v20 = v19;
  [a2 caretRectForCharIndex:v4 caretAffinity:v11];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [a2 caretRect];
  v30 = v29 * 0.5;
  v42.origin.x = v22;
  v42.origin.y = v24;
  v37 = v26;
  v42.size.width = v26;
  v42.size.height = v28;
  MidY = CGRectGetMidY(v42);
  v38 = v20;
  v43.origin.x = v15;
  v43.origin.y = v41;
  v43.size.width = v18;
  v43.size.height = v20;
  if (v30 > vabdd_f64(MidY, CGRectGetMidY(v43)))
  {
    return 0;
  }

  v32 = sub_100120414(v22, v24, v37, v28);
  v34 = sub_100120090(v40, v39, v32, v33);
  v35 = sub_100120414(v15, v41, v18, v38);
  return (v34 < sub_100120090(v40, v39, v35, v36));
}

uint64_t sub_100757450()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD6370);
  sub_1005EB3DC(v0, qword_101AD6370);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100757500()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD6388);
  sub_1005EB3DC(v0, qword_101AD6388);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1007575B0()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD63A0);
  sub_1005EB3DC(v0, qword_101AD63A0);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100757660()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD63B8);
  sub_1005EB3DC(v0, qword_101AD63B8);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100757718()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  sub_10061655C(v0, qword_101AD63D0);
  sub_1005EB3DC(v0, qword_101AD63D0);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_100757788@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v13 = a1;
  v3 = sub_1005B981C(&qword_1019FE720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = sub_1005B981C(&qword_1019FE728);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10001A2F8(&qword_1019FE730, &qword_1019FE728);
  static PredicateExpressions.build_Arg<A>(_:)();
  v14 = v13;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_1005B981C(&qword_1019FE738);
  a2[4] = sub_100758DC4();
  sub_10002C58C(a2);
  sub_10001A2F8(&qword_1019FE758, &qword_1019FE720);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1007579F8@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v45 = *(v1 - 8);
  v46 = v1;
  __chkstk_darwin(v1);
  v44 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019FE6A0);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  __chkstk_darwin(v3);
  v43 = &v35 - v5;
  v6 = type metadata accessor for Tips.DonationTimeRange();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019FE6A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = sub_1005B981C(&qword_1019FE6B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_1005B981C(&qword_1019FE6B8);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v21 = sub_1005B981C(&qword_1019FE6C0);
  v22 = *(v21 - 8);
  v41 = v21;
  v42 = v22;
  __chkstk_darwin(v21);
  v36 = &v35 - v23;
  sub_10001A2F8(&qword_1019FE6C8, &qword_1019FE6A8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  static Tips.DonationTimeRange.day.getter();
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690);
  sub_100758B68(&qword_1019FE698);
  sub_100758BAC();
  static PredicateExpressions.build_donatedWithin<A, B>(_:_:)();
  (*(v39 + 8))(v8, v40);
  (*(v14 + 8))(v16, v13);
  swift_getKeyPath();
  sub_10001A2F8(&qword_1019FE6E0, &qword_1019FE6B8);
  v25 = v36;
  v24 = v37;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v38 + 8))(v20, v24);
  v50 = 1;
  v26 = v43;
  static PredicateExpressions.build_Arg<A>(_:)();
  v28 = v44;
  v27 = v45;
  v29 = v46;
  (*(v45 + 104))(v44, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v46);
  v30 = sub_1005B981C(&qword_1019FE6E8);
  v31 = v47;
  v47[3] = v30;
  v31[4] = sub_100758C5C();
  sub_10002C58C(v31);
  sub_10001A2F8(&qword_1019FE710, &qword_1019FE6C0);
  sub_10001A2F8(&qword_1019FE718, &qword_1019FE6A0);
  v32 = v41;
  v33 = v48;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v27 + 8))(v28, v29);
  (*(v49 + 8))(v26, v33);
  return (*(v42 + 8))(v25, v32);
}

uint64_t sub_100758108()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  return Text.init<A>(_:)();
}

uint64_t sub_100758218()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  return Text.init<A>(_:)();
}

uint64_t sub_100758304()
{
  v0 = sub_1005B981C(&qword_1019FE760);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  Image.init(systemName:)();
  static SymbolRenderingMode.multicolor.getter();
  v3 = type metadata accessor for SymbolRenderingMode();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = Image.symbolRenderingMode(_:)();

  sub_100758F00(v2);
  return v4;
}

uint64_t sub_100758418@<X0>(uint64_t *a1@<X8>)
{
  sub_10067E97C();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10075845C()
{
  result = qword_1019FE688;
  if (!qword_1019FE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE688);
  }

  return result;
}

unint64_t sub_1007584B0(uint64_t a1)
{
  result = sub_10067E97C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1007584D8()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v24 = v21 - v1;
  v2 = sub_1005B981C(&unk_1019F6CF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - v4;
  v6 = type metadata accessor for Tips.Rule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F1538 != -1)
  {
    swift_once();
  }

  v10 = sub_1005EB3DC(v2, qword_101AD6370);
  swift_beginAccess();
  v11 = *(v3 + 16);
  v11(v5, v10, v2);
  Tips.Rule.init<A>(_:_:)();
  v21[2] = static Tips.RuleBuilder.buildExpression(_:)();
  v12 = *(v7 + 8);
  v12(v9, v6);
  if (qword_1019F1540 != -1)
  {
    swift_once();
  }

  v13 = sub_1005EB3DC(v2, qword_101AD6388);
  swift_beginAccess();
  v11(v5, v13, v2);
  Tips.Rule.init<A>(_:_:)();
  v21[1] = static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v6);
  if (qword_1019F1548 != -1)
  {
    swift_once();
  }

  v14 = sub_1005EB3DC(v2, qword_101AD63A0);
  swift_beginAccess();
  v11(v5, v14, v2);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v6);
  v15 = v6;
  if (qword_1019F1550 != -1)
  {
    swift_once();
  }

  v16 = sub_1005EB3DC(v2, qword_101AD63B8);
  swift_beginAccess();
  v11(v5, v16, v2);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v15);
  if (qword_1019F1558 != -1)
  {
    swift_once();
  }

  v17 = v23;
  v18 = sub_1005EB3DC(v23, qword_101AD63D0);
  (*(v22 + 16))(v24, v18, v17);
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690);
  sub_100758B68(&qword_1019FE698);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v15);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v19 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v19;
}

uint64_t sub_100758B68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Tips.EmptyDonation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100758BAC()
{
  result = qword_1019FE6D0;
  if (!qword_1019FE6D0)
  {
    sub_1005C4E5C(&qword_1019FE6B0);
    sub_10001A2F8(&qword_1019FE6D8, &qword_1019FE6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE6D0);
  }

  return result;
}

unint64_t sub_100758C5C()
{
  result = qword_1019FE6F0;
  if (!qword_1019FE6F0)
  {
    sub_1005C4E5C(&qword_1019FE6E8);
    sub_100758D14();
    sub_10001A2F8(&qword_1019FE708, &qword_1019FE6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE6F0);
  }

  return result;
}

unint64_t sub_100758D14()
{
  result = qword_1019FE6F8;
  if (!qword_1019FE6F8)
  {
    sub_1005C4E5C(&qword_1019FE6C0);
    sub_10001A2F8(&qword_1019FE700, &qword_1019FE6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE6F8);
  }

  return result;
}

unint64_t sub_100758DC4()
{
  result = qword_1019FE740;
  if (!qword_1019FE740)
  {
    sub_1005C4E5C(&qword_1019FE738);
    sub_10001A2F8(&qword_1019FE748, &qword_1019FE728);
    sub_100758E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE740);
  }

  return result;
}

unint64_t sub_100758E7C()
{
  result = qword_1019FE750;
  if (!qword_1019FE750)
  {
    sub_1005C4E5C(&qword_1019FE720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE750);
  }

  return result;
}

uint64_t sub_100758F00(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FE760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100758F90(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 colorRGBSpace];
  if (v6 >= 3)
  {
    v19 = 0xD00000000000001FLL;
    v18 = 0x8000000101564740;
    [a1 colorRGBSpace];
    type metadata accessor for CRLColorRGBSpace(0);
    _print_unlocked<A, B>(_:_:)();
    v20 = 0xE000000000000000;
    sub_10075915C();
    swift_willThrowTypedImpl();
    goto LABEL_5;
  }

  v7 = v6;
  [a1 redComponent];
  v9 = v8;
  [a1 greenComponent];
  v11 = v10;
  [a1 blueComponent];
  v13 = v12;
  [a1 alphaComponent];
  v15 = v14;
  v16 = (v7 & 1) == 0;
  TSContentLanguage.Models.Color.RGBA.validate()();
  if (v17)
  {
    v18 = 0x8000000101564760;
    v19 = 0xD000000000000026;
    sub_10075915C();
    swift_willThrowTypedImpl();

    v20 = 0;
LABEL_5:
    *a2 = v19;
    a2[1] = v18;
    a2[2] = 0;
    a2[3] = v20;
    return;
  }

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
}

unint64_t sub_10075915C()
{
  result = qword_101A02630;
  if (!qword_101A02630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A02630);
  }

  return result;
}

uint64_t sub_1007591B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a2;
  v128 = type metadata accessor for CRLBoardLibraryViewModel.LegacyItem(0);
  __chkstk_darwin(v128);
  v129 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v6 - 8);
  v119 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v126 = &v118 - v9;
  v10 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v10 - 8);
  v118 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v125 = &v118 - v13;
  __chkstk_darwin(v14);
  v139 = &v118 - v15;
  __chkstk_darwin(v16);
  v124 = &v118 - v17;
  v138 = type metadata accessor for UUID();
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v131 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v118 - v20;
  __chkstk_darwin(v22);
  v130 = &v118 - v23;
  v127 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v127);
  v25 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v118 - v27;
  __chkstk_darwin(v29);
  v123 = &v118 - v30;
  __chkstk_darwin(v31);
  v122 = &v118 - v32;
  v33 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v33 - 8);
  v35 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v118 - v37;
  __chkstk_darwin(v39);
  v120 = &v118 - v40;
  __chkstk_darwin(v41);
  v121 = &v118 - v42;
  v43 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v134 = v43;
  v135 = a3;
  v132 = v44 + 56;
  v133 = v45;
  (v45)(a3, 1, 1);
  v46 = a1;
  v47 = [a1 activityType];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = sub_100080A80(v48, v50);
  if (v51 != 5)
  {
    if (v51 == 8)
    {
      v52 = [v46 userInfo];
      if (v52)
      {
        v53 = v52;
        v54 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v140[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v140[1] = v55;
        AnyHashable.init<A>(_:)();
        if (*(v54 + 16))
        {
          v56 = sub_1000640CC(&v141);
          if (v57)
          {
            sub_100064288(*(v54 + 56) + 32 * v56, &v143);
            sub_100064234(&v141);

            if (*(&v144 + 1))
            {
              result = swift_dynamicCast();
              if (result)
              {
                v59 = v130;
                v60 = sub_10084CD4C(v130, v141, v142);
                v62 = v61;

                v63 = v123;
                (*(v136 + 32))(v123, v59, v138);
                v64 = &v63[*(v127 + 20)];
                *v64 = v60;
                v64[1] = v62;
                v65 = v63;
                v66 = v122;
                sub_10075F6B8(v65, v122, type metadata accessor for CRLBoardIdentifierStorage);
                v67 = v66;
                v68 = v120;
                sub_10075F6B8(v67, v120, type metadata accessor for CRLBoardIdentifierStorage);
                v69 = v68;
                v70 = v121;
                sub_10075F6B8(v69, v121, type metadata accessor for CRLBoardIdentifier);
                v71 = v124;
                sub_1010AB99C(v70, v124);
                sub_10000B924(v70, type metadata accessor for CRLBoardIdentifier);
                v114 = v135;
                sub_10000CAAC(v135, &unk_101A15B20);
                v115 = v134;
                swift_storeEnumTagMultiPayload();
                v133(v71, 0, 1, v115);
                v116 = v71;
                return sub_10075F5F8(v116, v114);
              }

              return result;
            }

            return sub_10000CAAC(&v143, &unk_1019F4D00);
          }
        }

        goto LABEL_30;
      }

LABEL_31:
      v143 = 0u;
      v144 = 0u;
      return sub_10000CAAC(&v143, &unk_1019F4D00);
    }

    v85 = [v46 userInfo];
    if (v85)
    {
      v86 = v85;
      v87 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v140[0] = 0xD000000000000017;
      v140[1] = 0x80000001015647C0;
      AnyHashable.init<A>(_:)();
      if (*(v87 + 16))
      {
        v88 = sub_1000640CC(&v141);
        if (v89)
        {
          sub_100064288(*(v87 + 56) + 32 * v88, &v143);
          sub_100064234(&v141);

          if (*(&v144 + 1))
          {
            if (swift_dynamicCast())
            {
              v90 = v141;
              v91 = v142;
              type metadata accessor for JSONDecoder();
              swift_allocObject();
              JSONDecoder.init()();
              sub_10075F668(&qword_1019F43A8, &type metadata accessor for UUID);
              v92 = v131;
              v93 = v138;
              dispatch thunk of JSONDecoder.decode<A>(_:from:)();

              v104 = *(v137 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
              __chkstk_darwin(v94);
              *(&v118 - 2) = v92;

              v105 = v126;
              sub_10003CF3C(1, sub_10075F6B0, (&v118 - 4), v104, v126);

              sub_10002640C(v90, v91);
              v106 = v135;
              sub_10000CAAC(v135, &unk_101A15B20);
              v107 = _s4NodeVMa(0);
              if ((*(*(v107 - 8) + 48))(v105, 1, v107) == 1)
              {
                sub_10000CAAC(v105, &unk_1019FB770);
                v108 = v125;
                v133(v125, 1, 1, v134);
              }

              else
              {
                v108 = v125;
                sub_10075ABD8(v105, v125);
                sub_10000B924(v105, _s4NodeVMa);
                v133(v108, 0, 1, v134);
              }

              sub_10075F5F8(v108, v106);
              return (*(v136 + 8))(v92, v93);
            }

LABEL_24:
            v95 = [v46 userInfo];
            if (v95)
            {
              v96 = v95;
              v97 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              strcpy(v140, "viewModelItem");
              HIWORD(v140[1]) = -4864;
              AnyHashable.init<A>(_:)();
              if (*(v97 + 16))
              {
                v98 = sub_1000640CC(&v141);
                if (v99)
                {
                  sub_100064288(*(v97 + 56) + 32 * v98, &v143);
                  sub_100064234(&v141);

                  if (*(&v144 + 1))
                  {
                    result = swift_dynamicCast();
                    if (result)
                    {
                      v100 = v141;
                      v101 = v142;
                      type metadata accessor for JSONDecoder();
                      swift_allocObject();
                      JSONDecoder.init()();
                      sub_10075F668(&qword_1019FE808, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
                      v102 = v129;
                      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

                      v109 = *(v137 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
                      __chkstk_darwin(v103);
                      *(&v118 - 2) = v102;

                      v110 = v119;
                      sub_10003CF3C(1, sub_10075F5F0, (&v118 - 4), v109, v119);

                      sub_10002640C(v100, v101);
                      v111 = v135;
                      sub_10000CAAC(v135, &unk_101A15B20);
                      v112 = _s4NodeVMa(0);
                      if ((*(*(v112 - 8) + 48))(v110, 1, v112) == 1)
                      {
                        sub_10000CAAC(v110, &unk_1019FB770);
                        v113 = v118;
                        v133(v118, 1, 1, v134);
                      }

                      else
                      {
                        v113 = v118;
                        sub_10075ABD8(v110, v118);
                        sub_10000B924(v110, _s4NodeVMa);
                        v133(v113, 0, 1, v134);
                      }

                      sub_10075F5F8(v113, v111);
                      return sub_10000B924(v102, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
                    }

                    return result;
                  }

                  return sub_10000CAAC(&v143, &unk_1019F4D00);
                }
              }

              goto LABEL_30;
            }

            goto LABEL_31;
          }

LABEL_23:
          sub_10000CAAC(&v143, &unk_1019F4D00);
          goto LABEL_24;
        }
      }

      sub_100064234(&v141);
    }

    v143 = 0u;
    v144 = 0u;
    goto LABEL_23;
  }

  v130 = v35;
  v131 = v38;
  v72 = v139;
  v73 = [v46 userInfo];
  if (!v73)
  {
    goto LABEL_31;
  }

  v74 = v73;
  v75 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v140, "boardId");
  v140[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v75 + 16) || (v76 = sub_1000640CC(&v141), (v77 & 1) == 0))
  {
LABEL_30:

    sub_100064234(&v141);
    goto LABEL_31;
  }

  sub_100064288(*(v75 + 56) + 32 * v76, &v143);
  sub_100064234(&v141);

  if (!*(&v144 + 1))
  {
    return sub_10000CAAC(&v143, &unk_1019F4D00);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v78 = sub_10084CD4C(v21, v141, v142);
    v80 = v79;

    (*(v136 + 32))(v25, v21, v138);
    v81 = &v25[*(v127 + 20)];
    *v81 = v78;
    v81[1] = v80;
    sub_10075F6B8(v25, v28, type metadata accessor for CRLBoardIdentifierStorage);
    v82 = v130;
    sub_10075F6B8(v28, v130, type metadata accessor for CRLBoardIdentifierStorage);
    v83 = v82;
    v84 = v131;
    sub_10075F6B8(v83, v131, type metadata accessor for CRLBoardIdentifier);
    sub_1010AB99C(v84, v72);
    sub_10000B924(v84, type metadata accessor for CRLBoardIdentifier);
    v114 = v135;
    sub_10000CAAC(v135, &unk_101A15B20);
    v117 = v134;
    swift_storeEnumTagMultiPayload();
    v133(v72, 0, 1, v117);
    v116 = v72;
    return sub_10075F5F8(v116, v114);
  }

  return result;
}

uint64_t sub_10075A4B0()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100F87E04(v3);
  v4 = static UUID.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_10075A594()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_100F87E04(&v10 - v5);
  sub_100F88674(v3);
  v7 = static UUID.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

BOOL sub_10075A720(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = _s5BoardVMa(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  sub_10075ABD8(a1, v10);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v18 = v10;
LABEL_6:
    sub_10000B924(v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
    return 0;
  }

  sub_10075F6B8(v10, v16, _s5BoardVMa);
  sub_10075ABD8(a2, v8);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10000B924(v16, _s5BoardVMa);
    v18 = v8;
    goto LABEL_6;
  }

  sub_10075F6B8(v8, v14, _s5BoardVMa);
  v17 = sub_10075A6B8();
  sub_10000B924(v14, _s5BoardVMa);
  sub_10000B924(v16, _s5BoardVMa);
  return v17;
}

uint64_t sub_10075A97C(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = _s5BoardVMa(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  sub_10075ABD8(a1, v10);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v18 = v10;
LABEL_6:
    sub_10000B924(v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v17 = 0;
    return v17 & 1;
  }

  sub_10075F6B8(v10, v16, _s5BoardVMa);
  sub_10075ABD8(a2, v8);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10000B924(v16, _s5BoardVMa);
    v18 = v8;
    goto LABEL_6;
  }

  sub_10075F6B8(v8, v14, _s5BoardVMa);
  v17 = static Date.< infix(_:_:)();
  sub_10000B924(v14, _s5BoardVMa);
  sub_10000B924(v16, _s5BoardVMa);
  return v17 & 1;
}

uint64_t sub_10075ABD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10075AC3C(uint64_t a1, uint64_t a2, int a3)
{
  v41 = a3;
  v5 = sub_1005B981C(&qword_1019F33D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v40[-v9];
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v40[-v15];
  v17 = _s5BoardVMa(0);
  v18 = __chkstk_darwin(v17);
  v42 = &v40[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v21 = &v40[-v20];
  sub_10075ABD8(a1, v16);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v26 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v27 = v16;
LABEL_26:
    sub_10000B924(v27, v26);
    v37 = 0;
    return v37 & 1;
  }

  sub_10075F6B8(v16, v21, _s5BoardVMa);
  sub_10075ABD8(a2, v14);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10000B924(v21, _s5BoardVMa);
    v26 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v27 = v14;
    goto LABEL_26;
  }

  sub_10075F6B8(v14, v42, _s5BoardVMa);
  sub_10075F580(&v21[*(v17 + 80)], v10);
  v22 = _s5BoardV13ShareMetadataVMa(0);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v10, 1, v22) == 1)
  {
    sub_10000CAAC(v10, &qword_1019F33D0);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v28 = &v10[*(v22 + 32)];
    if (v28[1])
    {
      v24 = *v28;
      v25 = v28[1];
    }

    else
    {
      v29 = &v10[*(v22 + 24)];
      v24 = *v29;
      v25 = v29[1];
    }

    sub_10000B924(v10, _s5BoardV13ShareMetadataVMa);
  }

  v30 = v42;
  sub_10075F580(&v42[*(v17 + 80)], v8);
  if (v23(v8, 1, v22) == 1)
  {
    sub_10000CAAC(v8, &qword_1019F33D0);
    if (v25)
    {

LABEL_28:
      sub_10000B924(v30, _s5BoardVMa);
      sub_10000B924(v21, _s5BoardVMa);
      v37 = 1;
      return v37 & 1;
    }

LABEL_30:
    if (v41)
    {
      v39 = static Date.< infix(_:_:)();
    }

    else
    {
      v39 = static Date.> infix(_:_:)();
    }

    v37 = v39;
    sub_10000B924(v30, _s5BoardVMa);
    sub_10000B924(v21, _s5BoardVMa);
    return v37 & 1;
  }

  v31 = &v8[*(v22 + 32)];
  if (v31[1])
  {
    v32 = *v31;
    v33 = v31[1];
  }

  else
  {
    v34 = &v8[*(v22 + 24)];
    v32 = *v34;
    v33 = v34[1];
  }

  sub_10000B924(v8, _s5BoardV13ShareMetadataVMa);
  if (!v25)
  {

    v36 = v42;
LABEL_25:
    sub_10000B924(v36, _s5BoardVMa);
    v27 = v21;
    v26 = _s5BoardVMa;
    goto LABEL_26;
  }

  if (v41)
  {
    v45 = v24;
    v46 = v25;
    v43 = v32;
    v44 = v33;
  }

  else
  {
    v45 = v32;
    v46 = v33;
    v43 = v24;
    v44 = v25;
  }

  sub_100017CD8();
  v35 = StringProtocol.localizedStandardCompare<A>(_:)();

  v30 = v42;
  switch(v35)
  {
    case -1:
      goto LABEL_28;
    case 1:
      v36 = v42;
      goto LABEL_25;
    case 0:
      goto LABEL_30;
  }

  type metadata accessor for ComparisonResult(0);
  v45 = v35;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Int sub_10075B1E4(void **a1, char a2, void (*a3)(void *, _BYTE *, uint64_t, Swift::Int, void), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t, void))
{
  v8 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100068B28(v9);
  }

  v10 = v9[2];
  v12[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12[1] = v10;
  result = sub_10075B2B4(v12, a2 & 1, a3, a4);
  *a1 = v9;
  return result;
}

Swift::Int sub_10075B2B4(uint64_t a1, char a2, void (*a3)(void *, _BYTE *, uint64_t, Swift::Int, void), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t, void))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      if (v8 <= 1)
      {
        v11 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLBoardLibraryViewModel.Item(0);
        v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v11[2] = v8 / 2;
      }

      v12 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
      v13[0] = v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v13[1] = v8 / 2;
      a3(v13, v14, a1, v10, a2 & 1);
      v11[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1, a2 & 1);
  }

  return result;
}

uint64_t sub_10075B404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v68 = a5;
  v9 = sub_1005B981C(&qword_1019F33D0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v61[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v73 = &v61[-v13];
  v85 = _s5BoardVMa(0);
  v14 = __chkstk_darwin(v85);
  v16 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v76 = &v61[-v17];
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v19 = __chkstk_darwin(v18);
  v71 = &v61[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v74 = &v61[-v22];
  v23 = __chkstk_darwin(v21);
  v75 = &v61[-v24];
  v25 = __chkstk_darwin(v23);
  v27 = &v61[-v26];
  result = __chkstk_darwin(v25);
  v79 = &v61[-v30];
  v63 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v31 = *a4;
  v32 = *(v29 + 72);
  v33 = *a4 + v32 * (a3 - 1);
  v69 = -v32;
  v70 = v31;
  v34 = a1 - a3;
  v62 = v32;
  v35 = v31 + v32 * a3;
  v72 = v18;
  v80 = v27;
LABEL_7:
  v66 = v33;
  v67 = a3;
  v64 = v35;
  v65 = v34;
  v36 = v34;
  v37 = v76;
  while (1)
  {
    v38 = v79;
    sub_10075ABD8(v35, v79);
    sub_10075ABD8(v33, v27);
    v39 = v38;
    v40 = v75;
    sub_10075ABD8(v39, v75);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_38;
    }

    sub_10075F6B8(v40, v37, _s5BoardVMa);
    v40 = v74;
    sub_10075ABD8(v27, v74);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10000B924(v37, _s5BoardVMa);
LABEL_38:
      v59 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v60 = v40;
      goto LABEL_39;
    }

    sub_10075F6B8(v40, v16, _s5BoardVMa);
    v41 = &v37[*(v85 + 80)];
    v42 = v73;
    sub_10075F580(v41, v73);
    v43 = _s5BoardV13ShareMetadataVMa(0);
    v44 = *(*(v43 - 8) + 48);
    v45 = v44(v42, 1, v43);
    v78 = v36;
    if (v45 == 1)
    {
      sub_10000CAAC(v42, &qword_1019F33D0);
      v77 = 0;
      v46 = 0;
    }

    else
    {
      v47 = &v42[*(v43 + 32)];
      v48 = v47[1];
      if (v48)
      {
        v77 = *v47;
        v49 = v42;
        v46 = v48;
      }

      else
      {
        v50 = &v42[*(v43 + 24)];
        v77 = *v50;
        v49 = v42;
        v46 = v50[1];
      }

      sub_10000B924(v49, _s5BoardV13ShareMetadataVMa);
      v36 = v78;
    }

    sub_10075F580(&v16[*(v85 + 80)], v12);
    if (v44(v12, 1, v43) == 1)
    {
      sub_10000CAAC(v12, &qword_1019F33D0);
      v27 = v80;
      if (v46)
      {

LABEL_30:
        sub_10000B924(v16, _s5BoardVMa);
        v37 = v76;
        sub_10000B924(v76, _s5BoardVMa);
        v55 = type metadata accessor for CRLBoardLibraryViewModel.Item;
        sub_10000B924(v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000B924(v79, type metadata accessor for CRLBoardLibraryViewModel.Item);
        goto LABEL_33;
      }
    }

    else
    {
      v51 = &v12[*(v43 + 32)];
      if (v51[1])
      {
        v52 = *v51;
        v53 = v51[1];
      }

      else
      {
        v54 = &v12[*(v43 + 24)];
        v52 = *v54;
        v53 = v54[1];
      }

      sub_10000B924(v12, _s5BoardV13ShareMetadataVMa);
      if (!v46)
      {

        sub_10000B924(v16, _s5BoardVMa);
        sub_10000B924(v76, _s5BoardVMa);
        v27 = v80;
LABEL_5:
        sub_10000B924(v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
        result = sub_10000B924(v79, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_6:
        a3 = v67 + 1;
        v33 = v66 + v62;
        v34 = v65 - 1;
        v35 = v64 + v62;
        if (v67 + 1 == v63)
        {
          return result;
        }

        goto LABEL_7;
      }

      if (v68)
      {
        v83 = v77;
        v84 = v46;
        v81 = v52;
        v82 = v53;
      }

      else
      {
        v83 = v52;
        v84 = v53;
        v81 = v77;
        v82 = v46;
      }

      sub_100017CD8();
      v55 = StringProtocol.localizedStandardCompare<A>(_:)();

      type metadata accessor for ComparisonResult(0);
      v27 = v80;
      if (v55 == -1)
      {
        goto LABEL_30;
      }

      if (v55)
      {
        if (v55 != 1)
        {
          goto LABEL_43;
        }

        sub_10000B924(v16, _s5BoardVMa);
        v60 = v76;
        v59 = _s5BoardVMa;
LABEL_39:
        sub_10000B924(v60, v59);
        goto LABEL_5;
      }
    }

    v37 = v76;
    if (v68)
    {
      v56 = static Date.< infix(_:_:)();
    }

    else
    {
      v56 = static Date.> infix(_:_:)();
    }

    v55 = v56;
    sub_10000B924(v16, _s5BoardVMa);
    sub_10000B924(v37, _s5BoardVMa);
    v27 = v80;
    sub_10000B924(v80, type metadata accessor for CRLBoardLibraryViewModel.Item);
    result = sub_10000B924(v79, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v36 = v78;
    if ((v55 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_33:
    if (!v70)
    {
      break;
    }

    v57 = v71;
    sub_10075F6B8(v35, v71, type metadata accessor for CRLBoardLibraryViewModel.Item);
    swift_arrayInitWithTakeFrontToBack();
    result = sub_10075F6B8(v57, v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v33 += v69;
    v35 += v69;
    v58 = __CFADD__(v36++, 1);
    v27 = v80;
    if (v58)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_43:
  v83 = v55;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10075BC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v64 = a5;
  v63 = _s5BoardVMa(0);
  v9 = __chkstk_darwin(v63);
  v65 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v51 - v11;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v14 = __chkstk_darwin(v13);
  v60 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v66 = &v51 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v51 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v51 - v22;
  result = __chkstk_darwin(v21);
  v71 = &v51 - v26;
  v53 = a2;
  if (a3 != a2)
  {
    v27 = v12;
    v28 = *a4;
    v29 = *(v25 + 72);
    v30 = *a4 + v29 * (a3 - 1);
    v58 = -v29;
    v59 = v28;
    v31 = a1 - a3;
    v52 = v29;
    v32 = v28 + v29 * a3;
    v61 = result;
    v62 = v12;
    while (2)
    {
      v56 = v30;
      v57 = a3;
      v54 = v32;
      v55 = v31;
      v34 = v30;
      while (1)
      {
        v35 = v71;
        sub_10075ABD8(v32, v71);
        sub_10075ABD8(v34, v23);
        sub_10075ABD8(v35, v20);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          break;
        }

        sub_10075F6B8(v20, v27, _s5BoardVMa);
        sub_10075ABD8(v23, v66);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_10000B924(v27, _s5BoardVMa);
          v33 = v66;
          goto LABEL_5;
        }

        v36 = v65;
        sub_10075F6B8(v66, v65, _s5BoardVMa);
        v37 = *(v63 + 24);
        v39 = *(v27 + v37);
        v38 = *(v27 + v37 + 8);
        v40 = (v36 + v37);
        v42 = *v40;
        v41 = v40[1];
        if (v64)
        {
          v69 = v39;
          v70 = v38;
          v67 = v42;
          v68 = v41;
        }

        else
        {
          v69 = v42;
          v70 = v41;
          v67 = v39;
          v68 = v38;
        }

        sub_100017CD8();
        v43 = StringProtocol.localizedStandardCompare<A>(_:)();
        sub_10000B924(v65, _s5BoardVMa);
        v44 = v62;
        sub_10000B924(v62, _s5BoardVMa);
        sub_10000B924(v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v27 = v44;
        result = sub_10000B924(v71, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (v43 != -1)
        {
          goto LABEL_6;
        }

        if (!v59)
        {
          __break(1u);
          return result;
        }

        v45 = v23;
        v46 = v20;
        v47 = v32;
        v48 = v32;
        v49 = v60;
        sub_10075F6B8(v48, v60, type metadata accessor for CRLBoardLibraryViewModel.Item);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10075F6B8(v49, v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v34 += v58;
        v32 = v47 + v58;
        v50 = __CFADD__(v31++, 1);
        v20 = v46;
        v23 = v45;
        v27 = v44;
        if (v50)
        {
          goto LABEL_6;
        }
      }

      v33 = v20;
LABEL_5:
      sub_10000B924(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
      result = sub_10000B924(v71, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_6:
      a3 = v57 + 1;
      v30 = v56 + v52;
      v31 = v55 - 1;
      v32 = v54 + v52;
      if (v57 + 1 == v53)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_10075C0E4(int64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4, int a5)
{
  v6 = v5;
  v210 = a5;
  v182 = a1;
  v9 = sub_1005B981C(&qword_1019F33D0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v177 - v14;
  v16 = __chkstk_darwin(v13);
  v184 = &v177 - v17;
  __chkstk_darwin(v16);
  v183 = &v177 - v18;
  v215 = _s5BoardVMa(0);
  v19 = __chkstk_darwin(v215);
  v212 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v177 - v22;
  v24 = __chkstk_darwin(v21);
  v191 = &v177 - v25;
  __chkstk_darwin(v24);
  v192 = &v177 - v26;
  v27 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v197 = *(v27 - 8);
  v28 = __chkstk_darwin(v27);
  v189 = &v177 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v204 = &v177 - v31;
  v32 = __chkstk_darwin(v30);
  v207 = &v177 - v33;
  v34 = __chkstk_darwin(v32);
  v35 = __chkstk_darwin(v34);
  v36 = __chkstk_darwin(v35);
  v214 = &v177 - v37;
  v38 = __chkstk_darwin(v36);
  v39 = __chkstk_darwin(v38);
  v196 = &v177 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v177 - v42;
  v44 = __chkstk_darwin(v41);
  v200 = &v177 - v45;
  v46 = __chkstk_darwin(v44);
  v179 = &v177 - v47;
  __chkstk_darwin(v46);
  v198 = a3;
  v52 = a3[1];
  if (v52 < 1)
  {
    v54 = _swiftEmptyArrayStorage;
LABEL_164:
    v56 = *v182;
    if (!*v182)
    {
      goto LABEL_206;
    }

    a4 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_200;
    }

    v171 = a4;
LABEL_167:
    v220 = v171;
    a4 = *(v171 + 2);
    if (a4 >= 2)
    {
      while (*v198)
      {
        v172 = *&v171[16 * a4];
        v173 = v171;
        v174 = *&v171[16 * a4 + 24];
        sub_10075E650(*v198 + *(v197 + 72) * v172, *v198 + *(v197 + 72) * *&v171[16 * a4 + 16], *v198 + *(v197 + 72) * v174, v56, v210 & 1);
        if (v6)
        {
        }

        if (v174 < v172)
        {
          goto LABEL_193;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = sub_10113DE48(v173);
        }

        if (a4 - 2 >= *(v173 + 2))
        {
          goto LABEL_194;
        }

        v175 = &v173[16 * a4];
        *v175 = v172;
        *(v175 + 1) = v174;
        v220 = v173;
        sub_10113DDBC(a4 - 1);
        v171 = v220;
        a4 = *(v220 + 2);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_204;
    }
  }

  v178 = &v177 - v48;
  v199 = v43;
  v188 = v51;
  v213 = v50;
  v209 = v49;
  v205 = v15;
  v53 = 0;
  v54 = _swiftEmptyArrayStorage;
  v181 = a4;
  v206 = v12;
  v55 = v212;
  v208 = v23;
  v211 = v27;
  while (1)
  {
    v56 = v53;
    v57 = v53 + 1;
    v190 = v54;
    if (v53 + 1 >= v52)
    {
      v68 = v53 + 1;
      goto LABEL_55;
    }

    v201 = v52;
    v58 = *v198;
    v59 = *(v197 + 72);
    v60 = *v198 + v59 * v57;
    v61 = v178;
    sub_10075ABD8(v60, v178);
    v62 = v179;
    sub_10075ABD8(v58 + v59 * v56, v179);
    LODWORD(v203) = sub_10075AC3C(v61, v62, v210 & 1);
    if (v6)
    {
      sub_10000B924(v62, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v61, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    sub_10000B924(v62, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000B924(v61, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v180 = v56;
    v63 = v56 + 2;
    v64 = v58 + v59 * (v56 + 2);
    v185 = 0;
    while (1)
    {
      v68 = v201;
      if (v201 == v63)
      {
        break;
      }

      v69 = v200;
      sub_10075ABD8(v64, v200);
      v70 = v199;
      sub_10075ABD8(v60, v199);
      v71 = v69;
      v72 = v196;
      sub_10075ABD8(v71, v196);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v73 = v72;
        v74 = v192;
        sub_10075F6B8(v73, v192, _s5BoardVMa);
        v75 = v70;
        v76 = v188;
        sub_10075ABD8(v75, v188);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_10075F6B8(v76, v191, _s5BoardVMa);
          v77 = v183;
          sub_10075F580(v74 + *(v215 + 80), v183);
          v78 = _s5BoardV13ShareMetadataVMa(0);
          v79 = *(*(v78 - 8) + 48);
          if (v79(v77, 1, v78) == 1)
          {
            sub_10000CAAC(v77, &qword_1019F33D0);
            v80 = 0;
            v202 = 0;
          }

          else
          {
            v81 = (v77 + *(v78 + 32));
            if (v81[1])
            {
              v80 = *v81;
              v202 = v81[1];
            }

            else
            {
              v82 = (v77 + *(v78 + 24));
              v80 = *v82;
              v202 = v82[1];
            }

            sub_10000B924(v77, _s5BoardV13ShareMetadataVMa);
          }

          v83 = v184;
          sub_10075F580(v191 + *(v215 + 80), v184);
          if (v79(v83, 1, v78) == 1)
          {
            sub_10000CAAC(v83, &qword_1019F33D0);
            v6 = v185;
            v23 = v208;
            if (!v202)
            {
              goto LABEL_32;
            }

LABEL_38:
            sub_10000B924(v191, _s5BoardVMa);
            sub_10000B924(v192, _s5BoardVMa);
            v67 = 1;
            goto LABEL_8;
          }

          v84 = (v83 + *(v78 + 32));
          v23 = v208;
          if (v84[1])
          {
            v85 = *v84;
            v86 = v84[1];
          }

          else
          {
            v87 = (v83 + *(v78 + 24));
            v85 = *v87;
            v86 = v87[1];
          }

          sub_10000B924(v83, _s5BoardV13ShareMetadataVMa);
          if (!v202)
          {

            sub_10000B924(v191, _s5BoardVMa);
            sub_10000B924(v192, _s5BoardVMa);
            v67 = 0;
            v6 = v185;
            goto LABEL_8;
          }

          if (v210)
          {
            v218 = v80;
            v219 = v202;
            v216 = v85;
            v217 = v86;
          }

          else
          {
            v218 = v85;
            v219 = v86;
            v216 = v80;
            v217 = v202;
          }

          sub_100017CD8();
          a4 = StringProtocol.localizedStandardCompare<A>(_:)();

          type metadata accessor for ComparisonResult(0);
          v6 = v185;
          if (a4 != 1)
          {
            if (!a4)
            {
LABEL_32:
              v88 = v191;
              if (v210)
              {
                v89 = static Date.< infix(_:_:)();
              }

              else
              {
                v89 = static Date.> infix(_:_:)();
              }

              v67 = v89;
              sub_10000B924(v88, _s5BoardVMa);
              sub_10000B924(v192, _s5BoardVMa);
              goto LABEL_8;
            }

            if (a4 != -1)
            {
              goto LABEL_207;
            }

            goto LABEL_38;
          }

          sub_10000B924(v191, _s5BoardVMa);
          v66 = v192;
          v65 = _s5BoardVMa;
        }

        else
        {
          sub_10000B924(v74, _s5BoardVMa);
          v65 = type metadata accessor for CRLBoardLibraryViewModel.Item;
          v66 = v76;
        }
      }

      else
      {
        v65 = type metadata accessor for CRLBoardLibraryViewModel.Item;
        v66 = v72;
      }

      sub_10000B924(v66, v65);
      v67 = 0;
LABEL_8:
      sub_10000B924(v199, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v200, type metadata accessor for CRLBoardLibraryViewModel.Item);
      ++v63;
      v64 += v59;
      v60 += v59;
      if ((v203 ^ v67))
      {
        v68 = v63 - 1;
        break;
      }
    }

    a4 = v181;
    v55 = v212;
    v56 = v180;
    if ((v203 & 1) == 0)
    {
      goto LABEL_55;
    }

    if (v68 < v180)
    {
      goto LABEL_199;
    }

    if (v180 < v68)
    {
      a4 = v59 * (v68 - 1);
      v90 = v68 * v59;
      v201 = v68;
      v91 = v180;
      v92 = v180 * v59;
      do
      {
        if (v91 != --v68)
        {
          v93 = *v198;
          if (!*v198)
          {
            goto LABEL_203;
          }

          sub_10075F6B8(v93 + v92, v189, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v92 < a4 || v93 + v92 >= (v93 + v90))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v92 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_10075F6B8(v189, v93 + a4, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        ++v91;
        a4 -= v59;
        v90 -= v59;
        v92 += v59;
      }

      while (v91 < v68);
      v6 = v185;
      a4 = v181;
      v55 = v212;
      v56 = v180;
      v68 = v201;
    }

LABEL_55:
    v94 = v198[1];
    if (v68 >= v94)
    {
      goto LABEL_64;
    }

    if (__OFSUB__(v68, v56))
    {
      goto LABEL_196;
    }

    if (v68 - v56 >= a4)
    {
LABEL_64:
      v53 = v68;
      if (v68 < v56)
      {
        goto LABEL_195;
      }

      goto LABEL_65;
    }

    if (__OFADD__(v56, a4))
    {
      goto LABEL_197;
    }

    if ((v56 + a4) >= v94)
    {
      v95 = v198[1];
    }

    else
    {
      v95 = v56 + a4;
    }

    a4 = v207;
    if (v95 < v56)
    {
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      v171 = sub_10113DE48(a4);
      goto LABEL_167;
    }

    if (v68 == v95)
    {
      goto LABEL_64;
    }

    v185 = v6;
    v141 = *v198;
    v142 = *(v197 + 72);
    v143 = *v198 + v142 * (v68 - 1);
    v202 = -v142;
    v180 = v56;
    v144 = v56 - v68;
    v203 = v141;
    v186 = v142;
    v145 = v141 + v68 * v142;
    v187 = v95;
LABEL_123:
    v201 = v68;
    v193 = v145;
    v194 = v144;
    v195 = v143;
LABEL_124:
    v147 = v23;
    v148 = v214;
    sub_10075ABD8(v145, v214);
    v149 = v213;
    sub_10075ABD8(v143, v213);
    v150 = v148;
    v151 = v209;
    sub_10075ABD8(v150, v209);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v146 = v151;
      goto LABEL_120;
    }

    sub_10075F6B8(v151, v147, _s5BoardVMa);
    sub_10075ABD8(v149, a4);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10000B924(v147, _s5BoardVMa);
      v146 = a4;
LABEL_120:
      sub_10000B924(v146, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v23 = v147;
LABEL_121:
      sub_10000B924(v213, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v214, type metadata accessor for CRLBoardLibraryViewModel.Item);
      goto LABEL_122;
    }

    sub_10075F6B8(a4, v55, _s5BoardVMa);
    v152 = v147 + *(v215 + 80);
    v153 = v205;
    sub_10075F580(v152, v205);
    v154 = _s5BoardV13ShareMetadataVMa(0);
    v155 = *(*(v154 - 8) + 48);
    if (v155(v153, 1, v154) == 1)
    {
      sub_10000CAAC(v153, &qword_1019F33D0);
      v156 = 0;
      v157 = 0;
    }

    else
    {
      v158 = (v153 + *(v154 + 32));
      if (v158[1])
      {
        v156 = *v158;
        v159 = v153;
        v157 = v158[1];
      }

      else
      {
        v160 = (v153 + *(v154 + 24));
        v159 = v153;
        v156 = *v160;
        v157 = v160[1];
      }

      sub_10000B924(v159, _s5BoardV13ShareMetadataVMa);
      v55 = v212;
    }

    v161 = v55 + *(v215 + 80);
    v162 = v206;
    sub_10075F580(v161, v206);
    if (v155(v162, 1, v154) != 1)
    {
      v163 = (v162 + *(v154 + 32));
      v164 = v162;
      if (v163[1])
      {
        v165 = *v163;
        v166 = v163[1];
      }

      else
      {
        v167 = (v162 + *(v154 + 24));
        v165 = *v167;
        v166 = v167[1];
      }

      v55 = v212;

      sub_10000B924(v164, _s5BoardV13ShareMetadataVMa);
      if (!v157)
      {

        sub_10000B924(v55, _s5BoardVMa);
        v23 = v208;
        goto LABEL_158;
      }

      if (v210)
      {
        v218 = v156;
        v219 = v157;
        v216 = v165;
        v217 = v166;
      }

      else
      {
        v218 = v165;
        v219 = v166;
        v216 = v156;
        v217 = v157;
      }

      sub_100017CD8();
      a4 = StringProtocol.localizedStandardCompare<A>(_:)();

      type metadata accessor for ComparisonResult(0);
      v23 = v208;
      if (a4 == -1)
      {
LABEL_146:
        sub_10000B924(v55, _s5BoardVMa);
        sub_10000B924(v23, _s5BoardVMa);
        a4 = type metadata accessor for CRLBoardLibraryViewModel.Item;
        sub_10000B924(v213, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000B924(v214, type metadata accessor for CRLBoardLibraryViewModel.Item);
        break;
      }

      if (!a4)
      {
        goto LABEL_144;
      }

      if (a4 != 1)
      {
        goto LABEL_207;
      }

      sub_10000B924(v55, _s5BoardVMa);
LABEL_158:
      sub_10000B924(v23, _s5BoardVMa);
      a4 = v207;
      goto LABEL_121;
    }

    sub_10000CAAC(v162, &qword_1019F33D0);
    v55 = v212;
    v23 = v208;
    if (v157)
    {

      goto LABEL_146;
    }

LABEL_144:
    v168 = (v210 & 1) != 0 ? static Date.< infix(_:_:)() : static Date.> infix(_:_:)();
    a4 = v168;
    sub_10000B924(v55, _s5BoardVMa);
    sub_10000B924(v23, _s5BoardVMa);
    sub_10000B924(v213, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000B924(v214, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (a4)
    {
      break;
    }

    a4 = v207;
LABEL_122:
    v68 = v201 + 1;
    v143 = v195 + v186;
    v144 = v194 - 1;
    v145 = v193 + v186;
    v53 = v187;
    if (v201 + 1 != v187)
    {
      goto LABEL_123;
    }

    v6 = v185;
    v56 = v180;
    if (v187 < v180)
    {
      goto LABEL_195;
    }

LABEL_65:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v54 = v190;
    }

    else
    {
      v54 = sub_100B355CC(0, *(v190 + 2) + 1, 1, v190);
    }

    v97 = *(v54 + 2);
    v96 = *(v54 + 3);
    a4 = v97 + 1;
    if (v97 >= v96 >> 1)
    {
      v54 = sub_100B355CC((v96 > 1), v97 + 1, 1, v54);
    }

    *(v54 + 2) = a4;
    v98 = &v54[16 * v97];
    *(v98 + 4) = v56;
    *(v98 + 5) = v53;
    v56 = *v182;
    if (!*v182)
    {
      goto LABEL_205;
    }

    if (v97)
    {
      v55 = v212;
      while (1)
      {
        v99 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v100 = *(v54 + 4);
          v101 = *(v54 + 5);
          v110 = __OFSUB__(v101, v100);
          v102 = v101 - v100;
          v103 = v110;
LABEL_85:
          if (v103)
          {
            goto LABEL_184;
          }

          v116 = &v54[16 * a4];
          v118 = *v116;
          v117 = *(v116 + 1);
          v119 = __OFSUB__(v117, v118);
          v120 = v117 - v118;
          v121 = v119;
          if (v119)
          {
            goto LABEL_187;
          }

          v122 = &v54[16 * v99 + 32];
          v124 = *v122;
          v123 = *(v122 + 1);
          v110 = __OFSUB__(v123, v124);
          v125 = v123 - v124;
          if (v110)
          {
            goto LABEL_190;
          }

          if (__OFADD__(v120, v125))
          {
            goto LABEL_191;
          }

          if (v120 + v125 >= v102)
          {
            if (v102 < v125)
            {
              v99 = a4 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        v126 = &v54[16 * a4];
        v128 = *v126;
        v127 = *(v126 + 1);
        v110 = __OFSUB__(v127, v128);
        v120 = v127 - v128;
        v121 = v110;
LABEL_99:
        if (v121)
        {
          goto LABEL_186;
        }

        v129 = &v54[16 * v99];
        v131 = *(v129 + 4);
        v130 = *(v129 + 5);
        v110 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v110)
        {
          goto LABEL_189;
        }

        if (v132 < v120)
        {
          goto LABEL_116;
        }

LABEL_106:
        v137 = v99 - 1;
        if (v99 - 1 >= a4)
        {
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
          goto LABEL_198;
        }

        if (!*v198)
        {
          goto LABEL_202;
        }

        v138 = v54;
        a4 = *&v54[16 * v137 + 32];
        v139 = *&v54[16 * v99 + 40];
        sub_10075E650(*v198 + *(v197 + 72) * a4, *v198 + *(v197 + 72) * *&v54[16 * v99 + 32], *v198 + *(v197 + 72) * v139, v56, v210 & 1);
        if (v6)
        {
        }

        if (v139 < a4)
        {
          goto LABEL_180;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_10113DE48(v138);
        }

        if (v137 >= *(v138 + 2))
        {
          goto LABEL_181;
        }

        v140 = &v138[16 * v137];
        *(v140 + 4) = a4;
        *(v140 + 5) = v139;
        v220 = v138;
        sub_10113DDBC(v99);
        v54 = v220;
        a4 = *(v220 + 2);
        v55 = v212;
        if (a4 <= 1)
        {
          goto LABEL_116;
        }
      }

      v104 = &v54[16 * a4 + 32];
      v105 = *(v104 - 64);
      v106 = *(v104 - 56);
      v110 = __OFSUB__(v106, v105);
      v107 = v106 - v105;
      if (v110)
      {
        goto LABEL_182;
      }

      v109 = *(v104 - 48);
      v108 = *(v104 - 40);
      v110 = __OFSUB__(v108, v109);
      v102 = v108 - v109;
      v103 = v110;
      if (v110)
      {
        goto LABEL_183;
      }

      v111 = &v54[16 * a4];
      v113 = *v111;
      v112 = *(v111 + 1);
      v110 = __OFSUB__(v112, v113);
      v114 = v112 - v113;
      if (v110)
      {
        goto LABEL_185;
      }

      v110 = __OFADD__(v102, v114);
      v115 = v102 + v114;
      if (v110)
      {
        goto LABEL_188;
      }

      if (v115 >= v107)
      {
        v133 = &v54[16 * v99 + 32];
        v135 = *v133;
        v134 = *(v133 + 1);
        v110 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v110)
        {
          goto LABEL_192;
        }

        if (v102 < v136)
        {
          v99 = a4 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_85;
    }

    v55 = v212;
LABEL_116:
    v52 = v198[1];
    a4 = v181;
    if (v53 >= v52)
    {
      goto LABEL_164;
    }
  }

  if (v203)
  {
    v169 = v204;
    sub_10075F6B8(v145, v204, type metadata accessor for CRLBoardLibraryViewModel.Item);
    swift_arrayInitWithTakeFrontToBack();
    sub_10075F6B8(v169, v143, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v143 += v202;
    v145 += v202;
    v170 = __CFADD__(v144++, 1);
    a4 = v207;
    if (v170)
    {
      goto LABEL_122;
    }

    goto LABEL_124;
  }

  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  v218 = a4;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10075D71C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v176 = a5;
  v157 = a1;
  v175 = _s5BoardVMa(0);
  v8 = __chkstk_darwin(v175);
  v179 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v149 - v11;
  v13 = __chkstk_darwin(v10);
  v160 = &v149 - v14;
  __chkstk_darwin(v13);
  v16 = &v149 - v15;
  v17 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v167 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v161 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v173 = &v149 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v149 - v23;
  v25 = __chkstk_darwin(v22);
  v26 = __chkstk_darwin(v25);
  v151 = &v149 - v27;
  v28 = __chkstk_darwin(v26);
  v181 = &v149 - v29;
  v30 = __chkstk_darwin(v28);
  v159 = &v149 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v149 - v33;
  v35 = __chkstk_darwin(v32);
  v170 = &v149 - v36;
  v37 = __chkstk_darwin(v35);
  v169 = &v149 - v38;
  v39 = __chkstk_darwin(v37);
  v153 = &v149 - v40;
  result = __chkstk_darwin(v39);
  v152 = &v149 - v44;
  v45 = v43[1];
  if (v45 < 1)
  {
    v47 = _swiftEmptyArrayStorage;
LABEL_116:
    a4 = *v157;
    if (!*v157)
    {
      goto LABEL_159;
    }

    v46 = v43;
    v17 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_153;
    }

    result = v17;
LABEL_119:
    v186 = result;
    v17 = *(result + 16);
    if (v17 >= 2)
    {
      v144 = v167;
      while (*v46)
      {
        v145 = *(result + 16 * v17);
        v146 = result;
        v147 = *(result + 16 * (v17 - 1) + 40);
        sub_10075EC54(*v46 + *(v144 + 72) * v145, *v46 + *(v144 + 72) * *(result + 16 * (v17 - 1) + 32), *v46 + *(v144 + 72) * v147, a4, v176 & 1);
        if (v6)
        {
        }

        if (v147 < v145)
        {
          goto LABEL_146;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_10113DE48(v146);
        }

        if (v17 - 2 >= *(v146 + 2))
        {
          goto LABEL_147;
        }

        v148 = &v146[16 * v17];
        *v148 = v145;
        *(v148 + 1) = v147;
        v186 = v146;
        sub_10113DDBC(v17 - 1);
        result = v186;
        v17 = *(v186 + 16);
        if (v17 <= 1)
        {
        }
      }

      goto LABEL_157;
    }
  }

  v174 = v42;
  v46 = 0;
  v47 = _swiftEmptyArrayStorage;
  v168 = v43;
  v156 = a4;
  v180 = v12;
  v177 = v17;
  v178 = v24;
  while (1)
  {
    v48 = v46 + 1;
    v162 = v47;
    if (v46 + 1 >= v45)
    {
      goto LABEL_35;
    }

    v171 = v45;
    v49 = *v43;
    v50 = *(v167 + 72);
    v51 = *v43 + v50 * v48;
    v52 = v152;
    sub_10075ABD8(v51, v152);
    v53 = v153;
    sub_10075ABD8(v49 + v50 * v46, v153);
    LODWORD(v172) = sub_10075A720(v52, v53, v176 & 1);
    if (v6)
    {
      sub_10000B924(v53, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v52, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    v155 = 0;
    sub_10000B924(v53, type metadata accessor for CRLBoardLibraryViewModel.Item);
    result = sub_10000B924(v52, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v154 = v46;
    v54 = (v46 + 2);
    v55 = v49 + v50 * (v46 + 2);
    do
    {
      v17 = v177;
      v24 = v178;
      if (v171 == v54)
      {
        v48 = v171;
        goto LABEL_20;
      }

      v58 = v169;
      sub_10075ABD8(v55, v169);
      v59 = v170;
      sub_10075ABD8(v51, v170);
      sub_10075ABD8(v58, v34);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v56 = v34;
LABEL_8:
        sub_10000B924(v56, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v57 = 0;
        goto LABEL_9;
      }

      sub_10075F6B8(v34, v16, _s5BoardVMa);
      v60 = v59;
      v61 = v159;
      sub_10075ABD8(v60, v159);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_10000B924(v16, _s5BoardVMa);
        v56 = v61;
        goto LABEL_8;
      }

      v62 = v160;
      sub_10075F6B8(v61, v160, _s5BoardVMa);
      v63 = *(v175 + 24);
      v65 = *&v16[v63];
      v64 = *&v16[v63 + 8];
      v66 = (v62 + v63);
      v68 = *v66;
      v67 = v66[1];
      if (v176)
      {
        v184 = v65;
        v185 = v64;
        v182 = v68;
        v183 = v67;
      }

      else
      {
        v184 = v68;
        v185 = v67;
        v182 = v65;
        v183 = v64;
      }

      sub_100017CD8();
      v57 = StringProtocol.localizedStandardCompare<A>(_:)() == -1;
      sub_10000B924(v160, _s5BoardVMa);
      sub_10000B924(v16, _s5BoardVMa);
LABEL_9:
      sub_10000B924(v170, type metadata accessor for CRLBoardLibraryViewModel.Item);
      result = sub_10000B924(v169, type metadata accessor for CRLBoardLibraryViewModel.Item);
      ++v54;
      v55 += v50;
      v51 += v50;
    }

    while ((v172 & 1) == v57);
    v48 = (v54 - 1);
    v17 = v177;
    v24 = v178;
LABEL_20:
    v43 = v168;
    a4 = v156;
    v6 = v155;
    v46 = v154;
    if ((v172 & 1) == 0)
    {
      goto LABEL_33;
    }

    if (v48 < v154)
    {
      goto LABEL_152;
    }

    if (v154 >= v48)
    {
LABEL_33:
      v12 = v180;
      goto LABEL_35;
    }

    v149 = v34;
    v150 = v16;
    v69 = v48;
    v70 = v50 * (v48 - 1);
    v71 = v48 * v50;
    v72 = v154;
    v73 = v154 * v50;
    do
    {
      if (v72 != --v69)
      {
        v74 = *v43;
        if (!*v43)
        {
          goto LABEL_156;
        }

        sub_10075F6B8(v74 + v73, v161, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (v73 < v70 || v74 + v73 >= (v74 + v71))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v73 != v70)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        result = sub_10075F6B8(v161, v74 + v70, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v43 = v168;
        v17 = v177;
      }

      ++v72;
      v70 -= v50;
      v71 -= v50;
      v73 += v50;
    }

    while (v72 < v69);
    v6 = v155;
    a4 = v156;
    v12 = v180;
    v16 = v150;
    v24 = v178;
    v34 = v149;
    v46 = v154;
LABEL_35:
    v75 = v43[1];
    if (v48 >= v75)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v48, v46))
    {
      goto LABEL_149;
    }

    if (v48 - v46 >= a4)
    {
      goto LABEL_62;
    }

    if (__OFADD__(v46, a4))
    {
      goto LABEL_150;
    }

    if ((v46 + a4) < v75)
    {
      v75 = (v46 + a4);
    }

    if (v75 < v46)
    {
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      result = sub_10113DE48(v17);
      goto LABEL_119;
    }

    v163 = v75;
    if (v48 == v75)
    {
      goto LABEL_62;
    }

    v149 = v34;
    v150 = v16;
    v155 = v6;
    v76 = *v43;
    v77 = *(v167 + 72);
    v78 = *v43 + v77 * (v48 - 1);
    v79 = -v77;
    v154 = v46;
    v80 = (v46 - v48);
    v158 = v77;
    v172 = v76;
    v81 = v76 + v48 * v77;
    v82 = v151;
LABEL_48:
    v171 = v48;
    v164 = v81;
    v165 = v80;
    v166 = v78;
    v84 = v78;
LABEL_49:
    v85 = v181;
    sub_10075ABD8(v81, v181);
    sub_10075ABD8(v84, v82);
    v86 = v85;
    a4 = v82;
    v87 = v174;
    sub_10075ABD8(v86, v174);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v83 = v87;
      v82 = a4;
      goto LABEL_45;
    }

    sub_10075F6B8(v87, v12, _s5BoardVMa);
    sub_10075ABD8(a4, v24);
    v82 = a4;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      break;
    }

    sub_10000B924(v12, _s5BoardVMa);
    v83 = v24;
LABEL_45:
    sub_10000B924(v83, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000B924(v82, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000B924(v181, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_46:
    v17 = v177;
LABEL_47:
    v48 = v171 + 1;
    v78 = v166 + v158;
    v80 = v165 - 1;
    v81 = v164 + v158;
    if ((v171 + 1) != v163)
    {
      goto LABEL_48;
    }

    v6 = v155;
    v16 = v150;
    v34 = v149;
    v46 = v154;
    v48 = v163;
LABEL_62:
    if (v48 < v46)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v47 = v162;
    }

    else
    {
      result = sub_100B355CC(0, *(v162 + 2) + 1, 1, v162);
      v47 = result;
    }

    a4 = *(v47 + 2);
    v99 = *(v47 + 3);
    v17 = a4 + 1;
    v43 = v168;
    if (a4 >= v99 >> 1)
    {
      result = sub_100B355CC((v99 > 1), a4 + 1, 1, v47);
      v47 = result;
      v43 = v168;
    }

    *(v47 + 2) = v17;
    v100 = &v47[16 * a4];
    *(v100 + 4) = v46;
    *(v100 + 5) = v48;
    v172 = *v157;
    if (!v172)
    {
      goto LABEL_158;
    }

    v163 = v48;
    if (a4)
    {
      while (1)
      {
        v101 = v17 - 1;
        if (v17 >= 4)
        {
          break;
        }

        if (v17 == 3)
        {
          v102 = *(v47 + 4);
          v103 = *(v47 + 5);
          v112 = __OFSUB__(v103, v102);
          v104 = v103 - v102;
          v105 = v112;
LABEL_82:
          if (v105)
          {
            goto LABEL_137;
          }

          v118 = &v47[16 * v17];
          v120 = *v118;
          v119 = *(v118 + 1);
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_140;
          }

          v124 = &v47[16 * v101 + 32];
          v126 = *v124;
          v125 = *(v124 + 1);
          v112 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v112)
          {
            goto LABEL_143;
          }

          if (__OFADD__(v122, v127))
          {
            goto LABEL_144;
          }

          if (v122 + v127 >= v104)
          {
            if (v104 < v127)
            {
              v101 = v17 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v128 = &v47[16 * v17];
        v130 = *v128;
        v129 = *(v128 + 1);
        v112 = __OFSUB__(v129, v130);
        v122 = v129 - v130;
        v123 = v112;
LABEL_96:
        if (v123)
        {
          goto LABEL_139;
        }

        v131 = &v47[16 * v101];
        v133 = *(v131 + 4);
        v132 = *(v131 + 5);
        v112 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v112)
        {
          goto LABEL_142;
        }

        if (v134 < v122)
        {
          goto LABEL_3;
        }

LABEL_103:
        a4 = v101 - 1;
        if (v101 - 1 >= v17)
        {
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
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*v43)
        {
          goto LABEL_155;
        }

        v46 = v34;
        v139 = v16;
        v140 = v47;
        v17 = *&v47[16 * a4 + 32];
        v141 = *&v47[16 * v101 + 40];
        sub_10075EC54(*v43 + *(v167 + 72) * v17, *v43 + *(v167 + 72) * *&v47[16 * v101 + 32], *v43 + *(v167 + 72) * v141, v172, v176 & 1);
        if (v6)
        {
        }

        if (v141 < v17)
        {
          goto LABEL_133;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v142 = v140;
        }

        else
        {
          v142 = sub_10113DE48(v140);
        }

        if (a4 >= *(v142 + 2))
        {
          goto LABEL_134;
        }

        v16 = v139;
        v143 = &v142[16 * a4];
        *(v143 + 4) = v17;
        *(v143 + 5) = v141;
        v186 = v142;
        result = sub_10113DDBC(v101);
        v47 = v186;
        v17 = *(v186 + 16);
        v24 = v178;
        v34 = v46;
        v43 = v168;
        if (v17 <= 1)
        {
          goto LABEL_3;
        }
      }

      v106 = &v47[16 * v17 + 32];
      v107 = *(v106 - 64);
      v108 = *(v106 - 56);
      v112 = __OFSUB__(v108, v107);
      v109 = v108 - v107;
      if (v112)
      {
        goto LABEL_135;
      }

      v111 = *(v106 - 48);
      v110 = *(v106 - 40);
      v112 = __OFSUB__(v110, v111);
      v104 = v110 - v111;
      v105 = v112;
      if (v112)
      {
        goto LABEL_136;
      }

      v113 = &v47[16 * v17];
      v115 = *v113;
      v114 = *(v113 + 1);
      v112 = __OFSUB__(v114, v115);
      v116 = v114 - v115;
      if (v112)
      {
        goto LABEL_138;
      }

      v112 = __OFADD__(v104, v116);
      v117 = v104 + v116;
      if (v112)
      {
        goto LABEL_141;
      }

      if (v117 >= v109)
      {
        v135 = &v47[16 * v101 + 32];
        v137 = *v135;
        v136 = *(v135 + 1);
        v112 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v112)
        {
          goto LABEL_145;
        }

        if (v104 < v138)
        {
          v101 = v17 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v45 = v43[1];
    v46 = v163;
    a4 = v156;
    v17 = v177;
    if (v163 >= v45)
    {
      goto LABEL_116;
    }
  }

  v88 = v179;
  sub_10075F6B8(v24, v179, _s5BoardVMa);
  v89 = *(v175 + 24);
  v91 = *&v12[v89];
  v90 = *&v12[v89 + 8];
  v92 = (v88 + v89);
  v94 = *v92;
  v93 = v92[1];
  if (v176)
  {
    v184 = v91;
    v185 = v90;
    v182 = v94;
    v183 = v93;
  }

  else
  {
    v184 = v94;
    v185 = v93;
    v182 = v91;
    v183 = v90;
  }

  sub_100017CD8();
  v95 = StringProtocol.localizedStandardCompare<A>(_:)();
  sub_10000B924(v179, _s5BoardVMa);
  sub_10000B924(v180, _s5BoardVMa);
  sub_10000B924(a4, type metadata accessor for CRLBoardLibraryViewModel.Item);
  result = sub_10000B924(v181, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (v95 != -1)
  {
    v12 = v180;
    goto LABEL_46;
  }

  if (v172)
  {
    v96 = v173;
    sub_10075F6B8(v81, v173, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v97 = v177;
    swift_arrayInitWithTakeFrontToBack();
    v17 = v97;
    sub_10075F6B8(v96, v84, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v84 += v79;
    v81 += v79;
    v98 = __CFADD__(v80++, 1);
    v12 = v180;
    v24 = v178;
    if (v98)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}

uint64_t sub_10075E650(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v62 = a5;
  v61 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v11 = __chkstk_darwin(v61);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v15 = __chkstk_darwin(v14);
  v17 = &v52 - v16;
  result = __chkstk_darwin(v15);
  v21 = &v52 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_66;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v59 = v19;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v27 < 1)
    {
      v41 = a4 + v27;
    }

    else
    {
      v39 = -v23;
      v40 = a4 + v27;
      v41 = a4 + v27;
      v56 = v13;
      v57 = a1;
      v55 = -v23;
      do
      {
        v53 = v41;
        v42 = a2;
        a2 += v39;
        v58 = v42;
        while (1)
        {
          if (v42 <= a1)
          {
            v66 = v42;
            v63 = v6;
            v64 = v53;
            goto LABEL_63;
          }

          v44 = a3;
          v54 = v41;
          v45 = v6;
          v60 = v40;
          v46 = v40 + v39;
          v47 = v59;
          sub_10075ABD8(v40 + v39, v59);
          sub_10075ABD8(a2, v13);
          v48 = v45;
          v49 = sub_10075AC3C(v47, v13, v62 & 1);
          if (v48)
          {
            sub_10000B924(v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000B924(v47, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v66 = v58;
            v64 = v54;
            goto LABEL_63;
          }

          v63 = 0;
          v50 = a4;
          v51 = v44 + v39;
          sub_10000B924(v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_10000B924(v47, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v49)
          {
            break;
          }

          v41 = v46;
          a3 = v44 + v39;
          if (v44 < v60 || v51 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
            a4 = v50;
          }

          else
          {
            a4 = v50;
            if (v44 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v40 = v46;
          v43 = v46 > a4;
          v6 = v63;
          v13 = v56;
          a1 = v57;
          v39 = v55;
          v42 = v58;
          if (!v43)
          {
            a2 = v58;
            goto LABEL_62;
          }
        }

        a3 = v44 + v39;
        if (v44 < v58 || v51 >= v58)
        {
          swift_arrayInitWithTakeFrontToBack();
          a4 = v50;
          v41 = v54;
          v39 = v55;
        }

        else
        {
          a4 = v50;
          v41 = v54;
          v39 = v55;
          if (v44 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v40 = v60;
        v6 = v63;
        v13 = v56;
        a1 = v57;
      }

      while (v60 > a4);
    }

LABEL_62:
    v63 = v6;
    v64 = v41;
    v66 = a2;
  }

  else
  {
    v60 = v23;
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v26;
    v63 = v5;
    v64 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v58 = v17;
      v29 = v60;
      while (1)
      {
        v30 = a3;
        sub_10075ABD8(a2, v21);
        v31 = a4;
        v32 = a4;
        v33 = v21;
        v34 = v58;
        sub_10075ABD8(v32, v58);
        v35 = v63;
        v36 = sub_10075AC3C(v33, v34, v62 & 1);
        v63 = v35;
        if (v35)
        {
          break;
        }

        v37 = v36;
        v38 = a2;
        sub_10000B924(v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000B924(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v21 = v33;
        if (v37)
        {
          a2 += v29;
          a4 = v31;
          if (a1 < v38 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          a4 = v31 + v29;
          if (a1 < v31 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v31 + v29;
        }

        v29 = v60;
        a1 += v60;
        v66 = a1;
        if (a4 >= v59 || a2 >= a3)
        {
          goto LABEL_63;
        }
      }

      sub_10000B924(v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }
  }

LABEL_63:
  sub_10063F7DC(&v66, &v65, &v64);
  return 1;
}

uint64_t sub_10075EC54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v87 = a5;
  v86 = _s5BoardVMa(0);
  v9 = __chkstk_darwin(v86);
  v85 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v84 = &v82 - v12;
  v13 = __chkstk_darwin(v11);
  v92 = &v82 - v14;
  __chkstk_darwin(v13);
  v16 = &v82 - v15;
  v17 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v90 = &v82 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v82 - v22;
  v24 = __chkstk_darwin(v21);
  v94 = &v82 - v25;
  v26 = __chkstk_darwin(v24);
  v27 = __chkstk_darwin(v26);
  v29 = &v82 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v82 - v31;
  result = __chkstk_darwin(v30);
  v37 = &v82 - v36;
  v39 = *(v38 + 72);
  if (!v39)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_78;
  }

  v40 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_79;
  }

  v95 = result;
  v41 = (a2 - a1) / v39;
  v102 = a1;
  v101 = a4;
  if (v41 >= v40 / v39)
  {
    v43 = v40 / v39 * v39;
    v83 = v35;
    v93 = v23;
    if (a4 < a2 || a2 + v43 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = a4 + v43;
    if (v43 >= 1)
    {
      v62 = -v39;
      v63 = a4 + v43;
      v92 = -v39;
      while (2)
      {
        while (1)
        {
          v82 = v61;
          v64 = a2 + v62;
          v91 = a2 + v62;
          v89 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v102 = a2;
              v100 = v82;
              goto LABEL_76;
            }

            v66 = a3;
            v67 = v63 + v62;
            v68 = v94;
            sub_10075ABD8(v67, v94);
            v69 = v93;
            sub_10075ABD8(v64, v93);
            v70 = v68;
            v71 = v90;
            sub_10075ABD8(v70, v90);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v88 = v61;
              v72 = v84;
              sub_10075F6B8(v71, v84, _s5BoardVMa);
              v73 = v83;
              sub_10075ABD8(v69, v83);
              if (swift_getEnumCaseMultiPayload() == 2)
              {
                v74 = v85;
                sub_10075F6B8(v73, v85, _s5BoardVMa);
                v75 = *(v86 + 24);
                v77 = *(v72 + v75);
                v76 = *(v72 + v75 + 8);
                v78 = (v74 + v75);
                v80 = *v78;
                v79 = v78[1];
                if (v87)
                {
                  v98 = v77;
                  v99 = v76;
                  v96 = v80;
                  v97 = v79;
                }

                else
                {
                  v98 = v80;
                  v99 = v79;
                  v96 = v77;
                  v97 = v76;
                }

                sub_100017CD8();
                v81 = StringProtocol.localizedStandardCompare<A>(_:)() == -1;
                sub_10000B924(v85, _s5BoardVMa);
                sub_10000B924(v72, _s5BoardVMa);
              }

              else
              {
                sub_10000B924(v72, _s5BoardVMa);
                sub_10000B924(v73, type metadata accessor for CRLBoardLibraryViewModel.Item);
                v81 = 0;
              }

              v61 = v88;
            }

            else
            {
              sub_10000B924(v71, type metadata accessor for CRLBoardLibraryViewModel.Item);
              v81 = 0;
            }

            a3 = v66 + v92;
            sub_10000B924(v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000B924(v94, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (v81)
            {
              break;
            }

            v61 = v67;
            v64 = v91;
            if (v66 < v63 || a3 >= v63)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v66 != v63)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v63 = v67;
            v65 = v67 > a4;
            v62 = v92;
            a2 = v89;
            if (!v65)
            {
              goto LABEL_74;
            }
          }

          a2 = v91;
          if (v66 < v89 || a3 >= v89)
          {
            break;
          }

          v62 = v92;
          if (v66 != v89)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v63 <= a4)
          {
            goto LABEL_74;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v62 = v92;
        if (v63 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_74:
    v102 = a2;
    v100 = v61;
  }

  else
  {
    v93 = v16;
    v42 = v41 * v39;
    v90 = v34;
    if (a4 < a1 || a1 + v42 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v94 = a4 + v42;
    v100 = a4 + v42;
    if (v42 >= 1 && a2 < a3)
    {
      v88 = v37;
      v89 = a3;
      while (1)
      {
        sub_10075ABD8(a2, v37);
        sub_10075ABD8(a4, v32);
        sub_10075ABD8(v37, v29);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v46 = v29;
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_26;
        }

        v47 = v39;
        v48 = v93;
        sub_10075F6B8(v29, v93, _s5BoardVMa);
        v49 = v32;
        v50 = v32;
        v51 = v90;
        sub_10075ABD8(v50, v90);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          break;
        }

        v91 = a2;
        v52 = v92;
        sub_10075F6B8(v51, v92, _s5BoardVMa);
        v53 = *(v86 + 24);
        v55 = *(v48 + v53);
        v54 = *(v48 + v53 + 8);
        v56 = (v52 + v53);
        v58 = *v56;
        v57 = v56[1];
        if (v87)
        {
          v98 = v55;
          v99 = v54;
          v96 = v58;
          v97 = v57;
        }

        else
        {
          v98 = v58;
          v99 = v57;
          v96 = v55;
          v97 = v54;
        }

        sub_100017CD8();
        v59 = StringProtocol.localizedStandardCompare<A>(_:)();
        v39 = v47;
        v32 = v49;
        sub_10000B924(v92, _s5BoardVMa);
        sub_10000B924(v93, _s5BoardVMa);
        sub_10000B924(v49, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v37 = v88;
        sub_10000B924(v88, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v60 = v59 == -1;
        a2 = v91;
        a3 = v89;
        if (v60)
        {
          if (a1 < v91 || a1 >= v91 + v39)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v91)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v39;
          goto LABEL_33;
        }

LABEL_27:
        if (a1 < a4 || a1 >= a4 + v39)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v101 = a4 + v39;
        a4 += v39;
LABEL_33:
        a1 += v39;
        v102 = a1;
        if (a4 >= v94 || a2 >= a3)
        {
          goto LABEL_76;
        }
      }

      sub_10000B924(v48, _s5BoardVMa);
      v46 = v51;
      v39 = v47;
      v32 = v49;
      v37 = v88;
      a3 = v89;
LABEL_26:
      sub_10000B924(v46, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v37, type metadata accessor for CRLBoardLibraryViewModel.Item);
      goto LABEL_27;
    }
  }

LABEL_76:
  sub_10063F7DC(&v102, &v101, &v100);
  return 1;
}

uint64_t sub_10075F580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F33D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10075F5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A15B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10075F668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10075F6B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10075F720@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a1;
  v55 = a2;
  v60 = a4;
  v59 = type metadata accessor for URL();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for UUID();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v61 = v8;
  v62 = v9;
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v49 - v14;
  v16 = [v4 length];
  sub_1005B981C(&qword_1019FE810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = NSDocumentTypeDocumentAttribute;
  v18 = inited + 32;
  if (a3 >= 3)
  {
    v63 = a3;
    v48 = NSDocumentTypeDocumentAttribute;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v19 = inited;
    v20 = **(&off_1018856F8 + a3);
    type metadata accessor for DocumentType(0);
    *(v19 + 64) = v21;
    *(v19 + 40) = v20;
    v22 = NSDocumentTypeDocumentAttribute;
    sub_100BD6638(v19);
    swift_setDeallocating();
    sub_10075FEB0(v18);
    type metadata accessor for DocumentAttributeKey(0);
    sub_10075FF18();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v63 = 0;
    v24 = [v4 dataFromRange:0 documentAttributes:v16 error:{isa, &v63}];

    v25 = v63;
    if (v24)
    {
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v27;

      if (a3 == 2)
      {
        static UTType.flatRTFD.getter();
        v29 = v59;
        v28 = v60;
        v30 = v61;
        v32 = v54;
        v31 = v55;
      }

      else
      {
        v29 = v59;
        v28 = v60;
        v30 = v61;
        v32 = v54;
        v31 = v55;
        if (a3 == 1)
        {
          static UTType.rtfd.getter();
        }

        else
        {
          static UTType.rtf.getter();
        }
      }

      v60 = v26;
      (*(v62 + 32))(v15, v11, v30);
      v35 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v35 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {
        v36 = String._bridgeToObjectiveC()();
        v37 = String._bridgeToObjectiveC()();
        v38 = [v36 crl_filenameFromDisplayNameWithExtension:v37];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        UTType.localizedDescription.getter();
        if (!v39)
        {
          v40 = v50;
          UUID.init()();
          UUID.uuidString.getter();
          (*(v51 + 8))(v40, v52);
          sub_10105235C(5);

          static String._fromSubstring(_:)();
          v30 = v61;
        }
      }

      v41 = [objc_allocWithZone(NSFileManager) init];
      v42 = [v41 temporaryDirectory];

      v43 = v56;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.appendingPathComponent(_:conformingTo:)();

      v44 = *(v57 + 8);
      v44(v43, v29);
      v45 = v60;
      v46 = v53;
      v47 = v58;
      Data.write(to:options:)();
      sub_10002640C(v45, v46);
      if (v47)
      {
        v44(v28, v29);
      }

      return (*(v62 + 8))(v15, v30);
    }

    else
    {
      v33 = v25;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10075FEB0(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FE818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10075FF18()
{
  result = qword_1019F3C38;
  if (!qword_1019F3C38)
  {
    type metadata accessor for DocumentAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F3C38);
  }

  return result;
}

BOOL sub_10075FF70(void *a1)
{
  if (![a1 isEmpty])
  {
    return 0;
  }

  sub_100760078(a1, v5);
  if (!v6)
  {
    return 0;
  }

  if (v8)
  {
    if (v9)
    {
      sub_10000CAAC(v5, &qword_1019FE820);
      return 0;
    }

    else
    {
      v4 = v10 != 0;
      sub_10000CAAC(v5, &qword_1019FE820);
      return v4;
    }
  }

  else
  {
    v3 = v7;
    sub_10000CAAC(v5, &qword_1019FE820);
    return v3;
  }
}

uint64_t sub_100760078@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_1019FE828);
  __chkstk_darwin(v4 - 8);
  v6 = v49 - v5;
  v7 = sub_1005B981C(&qword_1019FE830);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v54 = v49 - v8;
  v9 = sub_1005B981C(&qword_1019FE838);
  v55 = *(v9 - 8);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v49 - v11;
  *&v53 = a1;
  v13 = [a1 start];
  v14 = *&v13[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  result = sub_100A1E7A0(v14);
  v18 = 0uLL;
  if (!result)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
LABEL_7:
    *a2 = v18;
    *(a2 + 16) = v22;
    *(a2 + 24) = v23;
    *(a2 + 32) = v24;
    *(a2 + 40) = v25;
    *(a2 + 48) = v26;
    *(a2 + 64) = v27;
    *(a2 + 80) = v28;
    *(a2 + 96) = v29;
    return result;
  }

  v19 = result;
  v20 = v16;
  v21 = v17;
  sub_1005B981C(&qword_1019FE840);
  sub_10001A2F8(&qword_1019FE848, &qword_1019FE838);
  Regex.init<A>(_:)();
  Regex.firstMatch(in:)();
  v31 = v56;
  v30 = v57;
  if ((*(v56 + 48))(v6, 1, v57) == 1)
  {
    (*(v55 + 8))(v12, v9);

    result = sub_10000CAAC(v6, &qword_1019FE828);
LABEL_6:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v18 = 0uLL;
    goto LABEL_7;
  }

  (*(v31 + 32))(v54, v6, v30);
  *&v67 = Regex.Match.range.getter();
  *(&v67 + 1) = v32;
  v63 = v20;
  v64 = v21;
  sub_1005B981C(&qword_1019FE850);
  sub_10001A2F8(&qword_1019FE858, &qword_1019FE850);
  sub_100017CD8();
  v33 = _NSRange.init<A, B>(_:in:)();
  v35 = v34;
  v36 = [v19 start];
  v37 = *&v36[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  result = NSNotFound.getter();
  v38 = &v19[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  if (v37 == result)
  {
    v38 = &xmmword_101464828;
  }

  v39 = *v38;
  v40 = __OFADD__(v33, v39);
  v41 = v33 + v39;
  if (!v40)
  {
    v42 = v41 + v35;
    v43 = v53;
    v44 = [v53 start];
    v45 = *&v44[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    v46 = NSNotFound.getter();
    v47 = (v43 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
    if (v45 == v46)
    {
      v47 = &xmmword_101464828;
    }

    if (v42 == *v47)
    {
      Regex.Match.output.getter();
      v53 = v67;
      v22 = v68;
      v23 = v69;

      Regex.Match.output.getter();
      v24 = v65;
      v52 = v66;

      v48 = v57;
      Regex.Match.output.getter();
      v50 = v61;
      v51 = v60;
      v49[1] = v62;

      Regex.Match.output.getter();

      (*(v56 + 8))(v54, v48);
      (*(v55 + 8))(v12, v9);

      v27 = v50;
      v26 = v51;
      v18 = v53;
      v28 = v58;
      v29 = v59;
      v70 = v52;
      v25 = v52;
      goto LABEL_7;
    }

    (*(v56 + 8))(v54, v57);
    result = (*(v55 + 8))(v12, v9);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007606D4()
{
  v0 = sub_1005B981C(&qword_1019FE860);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_1005B981C(&qword_1019FE840);
  ChoiceOf.init(_:)();
  sub_10001A2F8(&qword_1019FE868, &qword_1019FE860);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  return (v7)(v6, v0);
}

uint64_t sub_100760878@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_1005B981C(&qword_1019FE838);
  __chkstk_darwin(v1 - 8);
  v49 = &v38 - v2;
  v3 = sub_1005B981C(&qword_1019FE870);
  __chkstk_darwin(v3 - 8);
  v44 = &v38 - v4;
  v5 = sub_1005B981C(&qword_1019FE878);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  __chkstk_darwin(v5);
  v46 = &v38 - v7;
  v8 = sub_1005B981C(&qword_1019FE880);
  __chkstk_darwin(v8 - 8);
  v43 = &v38 - v9;
  v55 = type metadata accessor for _RegexFactory();
  v42 = *(v55 - 8);
  __chkstk_darwin(v55);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1005B981C(&qword_1019FE888);
  v45 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v38 - v12;
  v13 = sub_1005B981C(&qword_1019FE890);
  v58 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v51 = &v38 - v17;
  __chkstk_darwin(v18);
  v57 = &v38 - v19;
  v20 = sub_1005B981C(&qword_1019FE898);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v54 = &v38 - v25;
  sub_1005B981C(&qword_1019FE8A0);
  sub_10001A2F8(&qword_1019FE8A8, &qword_1019FE898);
  v53 = v20;
  Regex.init<A>(_:)();
  static AlternationBuilder.buildExpression<A>(_:)();
  v26 = *(v21 + 8);
  v40 = v21 + 8;
  v41 = v26;
  v26(v23, v20);
  sub_1005B981C(&qword_1019FE8B0);
  sub_10001A2F8(&qword_1019FE8B8, &qword_1019FE890);
  v27 = v51;
  Regex.init<A>(_:)();
  static AlternationBuilder.buildExpression<A>(_:)();
  v28 = v58 + 8;
  v29 = *(v58 + 8);
  v29(v27, v13);
  v39 = v29;
  v58 = v28;
  Regex.init<A>(_:)();
  static AlternationBuilder.buildExpression<A>(_:)();
  v29(v15, v13);
  makeFactory()();
  sub_1005B981C(&qword_1019FE8C0);
  _RegexFactory.orderedChoice<A, B>(_:)();
  v30 = *(v42 + 8);
  v31 = v55;
  v30(v11, v55);
  ChoiceOf.init(_:)();
  makeFactory()();
  sub_1005B981C(&qword_1019FE8C8);
  sub_10001A2F8(&qword_1019FE8D0, &qword_1019FE888);
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v30(v11, v31);
  v32 = v46;
  ChoiceOf.init(_:)();
  makeFactory()();
  sub_1005B981C(&qword_1019FE840);
  sub_10001A2F8(&qword_1019FE8D8, &qword_1019FE878);
  v33 = v51;
  v34 = v47;
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v30(v11, v55);
  ChoiceOf.init(_:)();
  (*(v48 + 8))(v32, v34);
  (*(v45 + 8))(v52, v56);
  v35 = v33;
  v36 = v39;
  v39(v35, v13);
  v36(v57, v13);
  return v41(v54, v53);
}

uint64_t sub_100761068@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = sub_1005B981C(&qword_1019FE908);
  v2 = *(v1 - 8);
  v94 = v1;
  v95 = v2;
  __chkstk_darwin(v1);
  v79 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = &v66 - v5;
  v6 = sub_1005B981C(&qword_1019FE918);
  __chkstk_darwin(v6 - 8);
  v69 = &v66 - v7;
  v74 = type metadata accessor for CharacterClass();
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019FE920);
  v11 = *(v10 - 8);
  v76 = v10;
  v77 = v11;
  __chkstk_darwin(v10);
  v72 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v73 = &v66 - v14;
  v15 = sub_1005B981C(&qword_1019FE898);
  v16 = *(v15 - 8);
  v80 = v15;
  v81 = v16;
  __chkstk_darwin(v15);
  v92 = &v66 - v17;
  v85 = type metadata accessor for _RegexFactory();
  v96 = *(v85 - 8);
  __chkstk_darwin(v85);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v68 = &v66 - v21;
  v88 = sub_1005B981C(&qword_1019FE928);
  v93 = *(v88 - 8);
  __chkstk_darwin(v88);
  v71 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v86 = &v66 - v24;
  v25 = sub_1005B981C(&qword_1019FE8E8);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v66 - v30;
  __chkstk_darwin(v32);
  v89 = &v66 - v33;
  v83 = v31;
  Regex.init(_regexString:version:)();
  v78 = &protocol conformance descriptor for Regex<A>;
  v91 = sub_10001A2F8(&qword_1019FE8F0, &qword_1019FE8E8);
  v67 = v25;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v34 = *(v26 + 8);
  v84 = v26 + 8;
  v87 = v34;
  v34(v31, v25);
  makeFactory()();
  v35 = v9;
  static RegexComponent<>.digit.getter();
  v36 = type metadata accessor for RegexRepetitionBehavior();
  v37 = v69;
  (*(*(v36 - 8) + 56))(v69, 1, 1, v36);
  makeFactory()();
  sub_100762AAC();
  v70 = v28;
  v38 = v37;
  v39 = v74;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v40 = *(v96 + 8);
  v96 += 8;
  v41 = v85;
  v40(v19, v85);
  v66 = v40;
  sub_10000CAAC(v38, &qword_1019FE918);
  (*(v75 + 8))(v35, v39);
  v42 = v72;
  OneOrMore.init(_:)();
  sub_10001A2F8(&qword_1019FE938, &qword_1019FE920);
  v43 = v73;
  v44 = v76;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v45 = *(v77 + 1);
  v45(v42, v44);
  v46 = v83;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v45(v43, v44);
  v47 = sub_1005B981C(&qword_1019FE8A0);
  v48 = v67;
  v75 = v47;
  v49 = v68;
  _RegexFactory.capture<A, B, C, D>(_:_:_:)();
  v87(v46, v48);
  v40(v49, v41);
  v50 = v71;
  Capture.init(_:)();
  sub_10001A2F8(&qword_1019FE940, &qword_1019FE928);
  v51 = v88;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v52 = *(v93 + 8);
  v93 += 8;
  v77 = v52;
  v52(v50, v51);
  v53 = v79;
  ChoiceOf.init(_:)();
  v74 = sub_10001A2F8(&qword_1019FE910, &qword_1019FE908);
  v54 = v94;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v55 = *(v95 + 8);
  v95 += 8;
  v76 = v55;
  v55(v53, v54);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  makeFactory()();
  v56 = v70;
  v57 = v49;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v58 = v56;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v59 = v87;
  v87(v56, v48);
  v60 = v49;
  v61 = v85;
  v62 = v66;
  v66(v60, v85);
  makeFactory()();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  sub_10001A2F8(&qword_1019FE8A8, &qword_1019FE898);
  v63 = v92;
  v64 = v80;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v59(v58, v48);
  v62(v57, v61);
  (*(v81 + 8))(v63, v64);
  v59(v83, v48);
  v76(v90, v94);
  v77(v86, v88);
  return (v59)(v89, v48);
}

uint64_t sub_100761B78@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if ((v4 ^ *a1) >= 0x4000)
  {
    v6 = a1[2];
    v5 = a1[3];
    result = sub_100EFF918(*a1, v4, v6, v5, 10);
    if ((v8 & 0x100) != 0)
    {

      v9 = sub_100EFF380(v3, v4, v6, v5, 10);
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        result = v9;
        goto LABEL_8;
      }
    }

    else if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  result = 0;
LABEL_8:
  *a2 = result;
  return result;
}

uint64_t sub_100761C3C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v38 = sub_1005B981C(&qword_1019FE908);
  v42 = *(v38 - 8);
  __chkstk_darwin(v38);
  v2 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v37 - v4;
  v6 = sub_1005B981C(&qword_1019FE890);
  __chkstk_darwin(v6 - 8);
  v46 = &v37 - v7;
  v8 = type metadata accessor for _RegexFactory();
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019FE8E0);
  v13 = *(v12 - 8);
  v47 = v12;
  v48 = v13;
  __chkstk_darwin(v12);
  v43 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v45 = &v37 - v16;
  v17 = sub_1005B981C(&qword_1019FE8E8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v44 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  __chkstk_darwin(v23);
  v41 = &v37 - v24;
  Regex.init(_regexString:version:)();
  v39 = sub_10001A2F8(&qword_1019FE8F0, &qword_1019FE8E8);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v50 = *(v18 + 8);
  v50(v22, v17);
  v40 = v18 + 8;
  makeFactory()();
  ChoiceOf.init(_:)();
  sub_10001A2F8(&qword_1019FE910, &qword_1019FE908);
  v25 = v5;
  v26 = v38;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v27 = *(v42 + 1);
  v27(v2, v26);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v27(v25, v26);
  v38 = sub_1005B981C(&qword_1019FE8B0);
  _RegexFactory.capture<A, B>(_:)();
  v50(v22, v17);
  v28 = *(v52 + 8);
  v52 += 8;
  v42 = v28;
  v28(v11, v51);
  v29 = v43;
  Capture.init(_:)();
  sub_10001A2F8(&qword_1019FE900, &qword_1019FE8E0);
  v30 = v45;
  v31 = v47;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v48 = *(v48 + 8);
  (v48)(v29, v31);
  v32 = v41;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  makeFactory()();
  v33 = v44;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v34 = v33;
  v35 = v50;
  v50(v34, v17);
  v42(v11, v51);
  v35(v22, v17);
  (v48)(v30, v31);
  return (v35)(v32, v17);
}

uint64_t sub_10076228C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v7 = sub_1005B981C(&qword_1019FE8E8);
  __chkstk_darwin(v7 - 8);
  v16[0] = type metadata accessor for _RegexFactory();
  v8 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019FE908);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v16 - v13;
  v19 = a1;
  v20 = 0xE100000000000000;
  sub_100762A58();
  static AlternationBuilder.buildExpression<A>(_:)();
  v17 = a2;
  v18 = a3;
  static AlternationBuilder.buildExpression<A>(_:)();
  v17 = v21;
  v18 = v22;
  static AlternationBuilder.buildPartialBlock<A>(first:)();

  v17 = v19;
  v18 = v20;
  makeFactory()();
  sub_10001A2F8(&qword_1019FE910, &qword_1019FE908);
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  (*(v8 + 8))(v10, v16[0]);

  ChoiceOf.init(_:)();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100762540@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_1005B981C(&qword_1019FE890);
  __chkstk_darwin(v1 - 8);
  v34 = v29 - v2;
  v3 = type metadata accessor for _RegexFactory();
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  __chkstk_darwin(v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019FE8E0);
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = v29 - v12;
  v13 = sub_1005B981C(&qword_1019FE8E8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v35 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v29 - v17;
  __chkstk_darwin(v19);
  v33 = v29 - v20;
  Regex.init(_regexString:version:)();
  sub_10001A2F8(&qword_1019FE8F0, &qword_1019FE8E8);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v21 = *(v14 + 8);
  v21(v18, v13);
  v31 = v14 + 8;
  v32 = v21;
  makeFactory()();
  v42 = 45;
  v43 = 0xE100000000000000;
  sub_100762A58();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v42 = v44;
  v43 = v45;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();

  v29[1] = sub_1005B981C(&qword_1019FE8B0);
  _RegexFactory.capture<A, B>(_:)();
  v21(v18, v13);
  v22 = *(v41 + 8);
  v41 += 8;
  v30 = v22;
  v22(v6, v40);
  Capture.init(_:)();
  sub_10001A2F8(&qword_1019FE900, &qword_1019FE8E0);
  v24 = v36;
  v23 = v37;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v38 = *(v38 + 8);
  (v38)(v10, v23);
  v25 = v33;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  makeFactory()();
  v26 = v35;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v27 = v32;
  v32(v26, v13);
  v30(v6, v40);
  v27(v18, v13);
  (v38)(v24, v23);
  return (v27)(v25, v13);
}

unint64_t sub_100762A58()
{
  result = qword_1019FE8F8;
  if (!qword_1019FE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE8F8);
  }

  return result;
}

unint64_t sub_100762AAC()
{
  result = qword_1019FE930;
  if (!qword_1019FE930)
  {
    type metadata accessor for CharacterClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE930);
  }

  return result;
}

__n128 sub_100762B14(uint64_t a1, __int128 *a2)
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

uint64_t sub_100762B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100762B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TSCLVersion.description.getter()
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3;
}

id TSCLVersion.__allocating_init(major:minor:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
  *&v5[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  v7 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
  *&v5[v6] = a1;
  *&v5[v7] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, "init");
}

id TSCLVersion.init(major:minor:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
  *&v2[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  v4 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
  *&v2[v3] = a1;
  *&v2[v4] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for TSCLVersion();
  return objc_msgSendSuper2(&v6, "init");
}

id TSCLVersion.__allocating_init(string:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  v3 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v4 = sub_100763420();
  v6 = v5;
  v8 = v7;

  if (v8)
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v1[v2] = v4;
    *&v1[v3] = v6;
    v10.receiver = v1;
    v10.super_class = v0;
    return objc_msgSendSuper2(&v10, "init");
  }
}

id TSCLVersion.init(string:)()
{
  v1 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
  *&v0[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  v2 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
  *&v0[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3 = sub_100763420();
  v5 = v4;
  v7 = v6;

  if (v7)
  {
    type metadata accessor for TSCLVersion();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v0[v1] = v3;
    *&v0[v2] = v5;
    v9.receiver = v0;
    v9.super_class = type metadata accessor for TSCLVersion();
    return objc_msgSendSuper2(&v9, "init");
  }
}

void *TSCLVersion.init(from:)(void *a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  v6 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v7 = sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    sub_100020E58(v14, v14[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = sub_100763420();
    v9 = v8;
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      *&v3[v5] = v7;
      *&v3[v6] = v9;
      sub_100005070(v14);
      v13.receiver = v3;
      v13.super_class = type metadata accessor for TSCLVersion();
      v7 = objc_msgSendSuper2(&v13, "init");
      sub_100005070(a1);
      return v7;
    }

    sub_1007638BC();
    swift_allocError();
    swift_willThrow();
    sub_100005070(v14);
  }

  sub_100005070(a1);
  type metadata accessor for TSCLVersion();
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t TSCLVersion.encode(to:)(void *a1)
{
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v2 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10002A948(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100005070(v4);
}

id TSCLVersion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TSCLVersion();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10076329C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for TSCLVersion());
  result = TSCLVersion.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1007632F0(void *a1)
{
  v2 = *v1;
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v3 = [v2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10002A948(v5, v6);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100005070(v5);
}

BOOL _s8Freeform11TSCLVersionC1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8Freeform11TSCLVersion_major);
  v3 = *(a2 + OBJC_IVAR____TtC8Freeform11TSCLVersion_major);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 == v3)
  {
    return *(a1 + OBJC_IVAR____TtC8Freeform11TSCLVersion_minor) < *(a2 + OBJC_IVAR____TtC8Freeform11TSCLVersion_minor);
  }

  return 0;
}

unsigned __int8 *sub_100763420()
{
  v0 = sub_1005B981C(&qword_1019FE998);
  __chkstk_darwin(v0 - 8);
  v2 = &v26 - v1;
  v3 = sub_1005B981C(&qword_1019FE9A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - v5;
  v7 = sub_1005B981C(&qword_1019FE9A8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_1005B981C(&unk_1019FE9B0);
  Regex.init(_regexString:version:)();
  Regex.wholeMatch(in:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(v8 + 8))(v10, v7);
    sub_1007639D0(v2);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  swift_getKeyPath();
  v28 = v6;
  Regex.Match.subscript.getter();

  v12 = v29;
  v13 = v30;
  if (!((v30 ^ v29) >> 14))
  {

    goto LABEL_10;
  }

  v14 = v31;
  v27 = v32;
  v15 = sub_100EFF918(v29, v30, v31, v32, 10);
  if ((v16 & 0x100) != 0)
  {
    v26 = sub_100EFF380(v12, v13, v14, v27, 10);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    (*(v4 + 8))(v28, v3);
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  v17 = v16;
  v26 = v15;

  if (v17)
  {
    goto LABEL_10;
  }

LABEL_11:
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v20 = v29;
  v21 = v30;
  v22 = v32;
  if ((v30 ^ v29) >> 14)
  {
    v23 = v31;
    v27 = sub_100EFF918(v29, v30, v31, v32, 10);
    if ((v24 & 0x100) != 0)
    {
      v27 = sub_100EFF380(v20, v21, v23, v22, 10);
    }

    v25 = v24;
    (*(v4 + 8))(v28, v3);
    (*(v8 + 8))(v10, v7);

    if ((v25 & 1) == 0)
    {
      return v26;
    }
  }

  else
  {
    (*(v4 + 8))(v28, v3);
    (*(v8 + 8))(v10, v7);
  }

  return 0;
}

unint64_t sub_1007638BC()
{
  result = qword_1019FE958;
  if (!qword_1019FE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE958);
  }

  return result;
}

unint64_t sub_100763914()
{
  result = qword_1019FE960;
  if (!qword_1019FE960)
  {
    type metadata accessor for TSCLVersion();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE960);
  }

  return result;
}

unint64_t sub_10076397C()
{
  result = qword_1019FE990;
  if (!qword_1019FE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE990);
  }

  return result;
}

uint64_t sub_1007639D0(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FE998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CRLiOSAlignmentToolsController.__allocating_init(delegate:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController] = 0;
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, "init");
  swift_unknownObjectRelease();
  return v2;
}

id CRLiOSAlignmentToolsController.init(delegate:)()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController] = 0;
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CRLiOSAlignmentToolsController();
  v1 = objc_msgSendSuper2(&v3, "init");
  swift_unknownObjectRelease();
  return v1;
}

id sub_100763C28()
{
  v1 = OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController];
  }

  else
  {
    v4 = sub_100763CD4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100763CD4(void *a1)
{
  v2 = a1;
  sub_100763D90(a1, v8);
  v3 = objc_allocWithZone(sub_1005B981C(&qword_1019FE9F8));
  v4 = UIHostingController.init(rootView:)();
  [v4 setModalPresentationStyle:2];
  v5 = [v4 presentationController];
  if (v5)
  {
    v6 = v5;
    [v5 setDelegate:v2];
  }

  return v4;
}

void sub_100763D90(void *a1@<X0>, void *a2@<X8>)
{
  swift_unknownObjectWeakInit();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  a2[1] = AppStorage.init<A>(wrappedValue:_:store:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  a2[2] = AppStorage.init<A>(wrappedValue:_:store:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  a2[3] = AppStorage.init<A>(wrappedValue:_:store:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  a2[4] = AppStorage.init<A>(wrappedValue:_:store:)();
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  a2[5] = v8;
  a2[6] = v10;
  v11 = [v3 mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  a2[7] = v15;
  a2[8] = v17;
  v18 = [v3 mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  a2[9] = v22;
  a2[10] = v24;
  v25 = [v3 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  a2[11] = v29;
  a2[12] = v31;
  v32 = [v3 mainBundle];
  v33 = String._bridgeToObjectiveC()();
  v34 = String._bridgeToObjectiveC()();
  v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  a2[13] = v36;
  a2[14] = v38;
  v39 = [v3 mainBundle];
  v40 = String._bridgeToObjectiveC()();
  v41 = String._bridgeToObjectiveC()();
  v42 = [v39 localizedStringForKey:v40 value:v41 table:0];

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  a2[15] = v43;
  a2[16] = v45;
  v46 = [v3 mainBundle];
  v47 = String._bridgeToObjectiveC()();
  v48 = String._bridgeToObjectiveC()();
  v49 = [v46 localizedStringForKey:v47 value:v48 table:0];

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  a2[17] = v50;
  a2[18] = v52;
  v53 = [v3 mainBundle];
  v54 = String._bridgeToObjectiveC()();
  v55 = String._bridgeToObjectiveC()();
  v56 = [v53 localizedStringForKey:v54 value:v55 table:0];

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  a2[19] = v57;
  a2[20] = v59;
  swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall CRLiOSAlignmentToolsController.dismissAlignmentTools()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong alignmentToolsControllerShouldDismiss:v0];

    swift_unknownObjectRelease();
  }
}

id CRLiOSAlignmentToolsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSAlignmentToolsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall CRLiOSAlignmentToolsController.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong userDismissedAlignmentToolsController:v1];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100764608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_100764650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1007646E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for ToolbarTitleDisplayMode();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019FEA20);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_1005B981C(&qword_1019FEA18);
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_1005B981C(&qword_1019FEA10);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v26 = a1;
  v36 = a1;
  sub_1005B981C(&qword_1019FEA58);
  sub_10001A2F8(&qword_1019FEA60, &qword_1019FEA58);
  Form.init(content:)();
  v35 = a1;
  v14 = sub_1005B981C(&qword_1019FEA28);
  v15 = sub_10001A2F8(&unk_1019FEA30, &qword_1019FEA20);
  v16 = sub_1005C4E5C(&qword_101A038B0);
  v17 = sub_10001A2F8(&unk_1019FEA40, &qword_101A038B0);
  v37 = v16;
  v38 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  (*(v27 + 8))(v6, v4);
  v19 = *(v26 + 48);
  v41 = *(v26 + 40);
  v42 = v19;
  v37 = v4;
  v38 = v14;
  v39 = v15;
  v40 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_100017CD8();
  View.navigationTitle<A>(_:)();
  (*(v28 + 8))(v9, v7);
  v22 = v31;
  static ToolbarTitleDisplayMode.inline.getter();
  v37 = v7;
  v38 = &type metadata for String;
  v39 = v20;
  v40 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v29;
  View.toolbarTitleDisplayMode(_:)();
  (*(v32 + 8))(v22, v34);
  return (*(v30 + 8))(v13, v23);
}

uint64_t sub_100764BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = sub_1005B981C(&qword_1019FEA98);
  v56 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v45 - v5;
  v49 = sub_1005B981C(&qword_1019FEAA0);
  v47 = *(v49 - 8);
  v6 = v47;
  __chkstk_darwin(v49);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v11 = sub_1005B981C(&qword_1019FEAA8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = sub_1005B981C(&qword_1019FEAB0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v53 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  __chkstk_darwin(v21);
  v23 = &v45 - v22;
  v59 = a1;
  sub_1005B981C(&qword_1019FEAB8);
  sub_1007662B0();
  Section<>.init(content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v12 + 32))(v20, v14, v11);
  v24 = &v20[*(v16 + 44)];
  v25 = v69;
  *(v24 + 4) = v68;
  *(v24 + 5) = v25;
  *(v24 + 6) = v70;
  v26 = v65;
  *v24 = v64;
  *(v24 + 1) = v26;
  v27 = v67;
  *(v24 + 2) = v66;
  *(v24 + 3) = v27;
  v48 = v23;
  sub_100766368(v20, v23);
  v58 = a1;
  sub_1005B981C(&qword_1019FEAD8);
  sub_10001A2F8(&qword_1019FEAE0, &qword_1019FEAD8);
  v46 = v10;
  Section<>.init(content:)();
  v28 = *(a1 + 96);
  v60 = *(a1 + 88);
  v61 = v28;
  sub_100017CD8();

  v60 = Text.init<A>(_:)();
  v61 = v29;
  v62 = v30 & 1;
  v63 = v31;
  v57 = a1;
  sub_1005B981C(&qword_1019FEAE8);
  sub_10001A2F8(&qword_1019FEAF0, &qword_1019FEAE8);
  v32 = v55;
  Section<>.init(header:content:)();
  v33 = v53;
  sub_1007663E8(v23, v53);
  v34 = *(v6 + 16);
  v35 = v54;
  v36 = v49;
  v34(v54, v10, v49);
  v37 = *(v56 + 16);
  v38 = v50;
  v39 = v51;
  v37(v50, v32, v51);
  v40 = v52;
  sub_1007663E8(v33, v52);
  v41 = sub_1005B981C(&qword_1019FEAF8);
  v34((v40 + *(v41 + 48)), v35, v36);
  v37((v40 + *(v41 + 64)), v38, v39);
  v42 = *(v56 + 8);
  v42(v55, v39);
  v43 = *(v47 + 8);
  v43(v46, v36);
  sub_100766458(v48);
  v42(v38, v39);
  v43(v54, v36);
  return sub_100766458(v53);
}

uint64_t sub_100765268@<X0>(uint64_t a1@<X8>)
{
  sub_100017CD8();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.footnote.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10007441C(v2, v4, v6 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v12 = Text.foregroundStyle<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10007441C(v7, v9, v11 & 1);

  static Color.clear.getter();
  result = AnyView.init<A>(_:)();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10076543C@<X0>(uint64_t a1@<X8>)
{
  sub_100017CD8();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1007654A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = sub_1005B981C(&qword_1019FEAD8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v33 = &v31 - v7;
  __chkstk_darwin(v8);
  v36 = &v31 - v9;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  AppStorage.projectedValue.getter();
  v39 = a1;
  v32 = v18;
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  v38 = a1;
  v19 = v15;
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  v37 = a1;
  v20 = v12;
  Toggle.init(isOn:label:)();
  v21 = *(v4 + 16);
  v22 = v36;
  v21(v36, v18, v3);
  v23 = v33;
  v24 = v19;
  v21(v33, v19, v3);
  v25 = v34;
  v26 = v20;
  v21(v34, v20, v3);
  v27 = v35;
  v21(v35, v22, v3);
  v28 = sub_1005B981C(&unk_1019FEB00);
  v21(&v27[*(v28 + 48)], v23, v3);
  v21(&v27[*(v28 + 64)], v25, v3);
  v29 = *(v4 + 8);
  v29(v26, v3);
  v29(v24, v3);
  v29(v32, v3);
  v29(v25, v3);
  v29(v23, v3);
  return (v29)(v36, v3);
}

uint64_t sub_100765864@<X0>(uint64_t a1@<X8>)
{
  sub_100017CD8();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1007658D0@<X0>(uint64_t a1@<X8>)
{
  sub_100017CD8();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10076593C@<X0>(uint64_t a1@<X8>)
{
  sub_100017CD8();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1007659A8(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1005B981C(&qword_101A038B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.topBarTrailing.getter();
  v9 = a1;
  sub_1005B981C(&qword_1019FEA68);
  sub_100766108();
  ToolbarItem<>.init(placement:content:)();
  sub_10001A2F8(&unk_1019FEA40, &qword_101A038B0);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100765B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_1019FEA78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6 - 8];
  v8 = *(a1 + 160);
  v16 = *(a1 + 152);
  v17 = v8;
  sub_100766230(a1, v15);
  v9 = swift_allocObject();
  sub_100766268(v15, v9 + 16);
  sub_100017CD8();

  Button<>.init<A>(_:action:)();
  static Font.Weight.bold.getter();
  sub_10001A2F8(&qword_1019FEA80, &qword_1019FEA78);
  View.fontWeight(_:)();
  (*(v5 + 8))(v7, v4);
  v10 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  result = sub_1005B981C(&qword_1019FEA68);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v10;
  return result;
}

void sub_100765D48()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v1 = swift_unknownObjectWeakLoadStrong();
    if (v1)
    {
      [v1 alignmentToolsControllerShouldDismiss:v2];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100765DCC@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_1005B981C(&qword_1019FEA00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v22 = v1;
  v20 = sub_1005B981C(&qword_1019FEA08);
  v19 = sub_1005C4E5C(&qword_1019FEA10);
  v6 = sub_1005C4E5C(&qword_1019FEA18);
  v7 = sub_1005C4E5C(&qword_1019FEA20);
  v8 = sub_1005C4E5C(&qword_1019FEA28);
  v9 = sub_10001A2F8(&unk_1019FEA30, &qword_1019FEA20);
  v10 = sub_1005C4E5C(&qword_101A038B0);
  v11 = sub_10001A2F8(&unk_1019FEA40, &qword_101A038B0);
  v23 = v10;
  v24 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = sub_100017CD8();
  v23 = v6;
  v24 = &type metadata for String;
  v25 = v13;
  v26 = v14;
  v15 = swift_getOpaqueTypeConformance2();
  v23 = v19;
  v24 = v15;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  v16 = [objc_opt_self() standardUserDefaults];
  sub_10001A2F8(&qword_1019FEA50, &qword_1019FEA00);
  View.defaultAppStorage(_:)();

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100766108()
{
  result = qword_1019FEA70;
  if (!qword_1019FEA70)
  {
    sub_1005C4E5C(&qword_1019FEA68);
    sub_1005C4E5C(&qword_1019FEA78);
    sub_10001A2F8(&qword_1019FEA80, &qword_1019FEA78);
    swift_getOpaqueTypeConformance2();
    sub_10001A2F8(&qword_1019FEA88, &qword_1019FEA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FEA70);
  }

  return result;
}

unint64_t sub_1007662B0()
{
  result = qword_1019FEAC0;
  if (!qword_1019FEAC0)
  {
    sub_1005C4E5C(&qword_1019FEAB8);
    sub_10001A2F8(&qword_1019FEAC8, &qword_1019FEAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FEAC0);
  }

  return result;
}

uint64_t sub_100766368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FEAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007663E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FEAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100766458(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FEAB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1007664E0(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v35 = &v32 - v10;
  v38 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_1000064D8(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v45;
    v12 = v46;
    v13 = v47;
    v14 = v48;
    v15 = v49;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v37 = v13;
  v42 = (v7 + 56);
  v43 = v6;
  v40 = (v7 + 16);
  v41 = (v7 + 48);
  v33 = v7;
  v34 = (v7 + 32);
  v39 = _swiftEmptyArrayStorage;
  while (a1 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22 || (v44 = v22, type metadata accessor for CRLTransactableHashableWrapper(), swift_dynamicCast(), !v50))
    {
LABEL_28:
      sub_100035F90();
      return v39;
    }

LABEL_17:
    type metadata accessor for CRLFreehandDrawingShapeItem();
    result = swift_dynamicCastClass();
    if (result)
    {
      v23 = *(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v23 != &off_1019FAE60)
      {
        goto LABEL_30;
      }

      v24 = qword_1019FB148;
      swift_beginAccess();
      v25 = v23 + v24;
      v26 = v43;
      (*v40)(v5, v25, v43);
      v27 = 0;
    }

    else
    {
      v27 = 1;
      v26 = v43;
    }

    (*v42)(v5, v27, 1, v26);

    if ((*v41)(v5, 1, v26) == 1)
    {
      result = sub_10000CAAC(v5, &qword_1019F6990);
    }

    else
    {
      v28 = *v34;
      (*v34)(v35, v5, v26);
      v28(v36, v35, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_100B356D0(0, v39[2] + 1, 1, v39);
      }

      v30 = v39[2];
      v29 = v39[3];
      if (v30 >= v29 >> 1)
      {
        v39 = sub_100B356D0(v29 > 1, v30 + 1, 1, v39);
      }

      v31 = v39;
      v39[2] = v30 + 1;
      result = (v28)(v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v30, v36, v43);
    }
  }

  v19 = v14;
  v20 = v15;
  if (v15)
  {
LABEL_13:
    v15 = (v20 - 1) & v20;
    v21 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v20)))));

    if (!v21)
    {
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v14 >= ((v13 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v20 = *(v12 + 8 * v14);
    ++v19;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *sub_1007669D0(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_100776524(0, v7 & ~(v7 >> 63), 0);
    v45 = v50;
    if (v44)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v47 = result;
    v48 = v9;
    v49 = v44 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v41 = v6;
      v10 = 0;
      v39 = v7;
      v40 = v43 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35 = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v47;
        v15 = v48;
        v16 = v49;
        v17 = a1;
        v18 = *(sub_100724840(v47, v48, v49, a1) + 24);
        ObjectType = swift_getObjectType();
        v20 = v41;
        (*(v18 + 32))(ObjectType, v18);

        v21 = v45;
        v50 = v45;
        v23 = v45[2];
        v22 = v45[3];
        if (v23 >= v22 >> 1)
        {
          sub_100776524(v22 > 1, v23 + 1, 1);
          v21 = v50;
        }

        v21[2] = v23 + 1;
        v24 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v45 = v21;
        result = (*(v43 + 32))(v21 + v24 + *(v43 + 72) * v23, v20, v42);
        if (v44)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          sub_1005B981C(&qword_1019FEFC8);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v12(v46, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_1000341AC(v47, v48, v49);
            return v45;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_1000341AC(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_1000341AC(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v47 = v25;
          v48 = v34;
          v49 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_100766DF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v55 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(ObjectType, a2);
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_id, v14, v11);
  type metadata accessor for CRLBoard(0);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = *(v16 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v18 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FD94(v17 + v18, v10, type metadata accessor for CRLBoardCRDTData);
    v19 = *(v17 + 56);
    v20 = *(v17 + 24);
    v55 = *(v17 + 40);
    v56 = v20;
    sub_10004FD94(v10, v8, type metadata accessor for CRLBoardCRDTData);
    v22 = *(v17 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v21 = *(v17 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);
    type metadata accessor for CRLBoardData(0);
    v23 = swift_allocObject();

    swift_unknownObjectRelease();
    sub_10003D45C(v10, type metadata accessor for CRLBoardCRDTData);
    *(v23 + 16) = 7;
    v24 = v56;
    *(v23 + 40) = v55;
    *(v23 + 24) = v24;
    *(v23 + 56) = v19;
    sub_100774F64(v8, v23 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, type metadata accessor for CRLBoardCRDTData);
    v25 = (v23 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    *v25 = v22;
    v25[1] = v21;
LABEL_5:
    *(v3 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data) = v23;
    return v3;
  }

  type metadata accessor for CRLBoardItem(0);
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = *((swift_isaMask & *v26) + 0x258);
    swift_unknownObjectRetain();
    v28 = v27(0);
    swift_unknownObjectRelease_n();
    v23 = v28 | 0x8000000000000000;
    goto LABEL_5;
  }

  v30 = objc_opt_self();
  v31 = [v30 _atomicIncrementAssertCount];
  v57 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v57);
  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  v34 = [v33 lastPathComponent];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v38 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v31;
  v40 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v40;
  v41 = sub_1005CF04C();
  *(inited + 104) = v41;
  *(inited + 72) = v32;
  *(inited + 136) = &type metadata for String;
  v42 = sub_1000053B0();
  *(inited + 112) = v35;
  *(inited + 120) = v37;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v42;
  *(inited + 152) = 42;
  v43 = v57;
  *(inited + 216) = v40;
  *(inited + 224) = v41;
  *(inited + 192) = v43;
  v44 = v32;
  v45 = v43;
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v47 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v47, "Invalid/unknown transactable type", 33, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Invalid/unknown transactable type");
  type metadata accessor for __VaListBuilder();
  v48 = swift_allocObject();
  v48[2] = 8;
  v48[3] = 0;
  v48[4] = 0;
  v48[5] = 0;
  v49 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v50 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v52 = String._bridgeToObjectiveC()();

  [v30 handleFailureInFunction:v50 file:v51 lineNumber:42 isFatal:1 format:v52 args:v49];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v53, v54);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007674A4()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLTransactableData_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10076757C()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100767620(uint64_t a1)
{
  v46 = sub_1005B981C(&qword_1019FEF98);
  v2 = __chkstk_darwin(v46);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v44 = &v39 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v54 = _swiftEmptyArrayStorage;
    v51 = v7;
    sub_100776524(0, v10, 0);
    v52 = v54;
    v12 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v14 = result;
    v15 = 0;
    v53 = *(a1 + 36);
    v42 = a1;
    v43 = v6 + 16;
    v50 = v6 + 32;
    v39 = a1 + 72;
    v40 = v10;
    v41 = a1 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (v53 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v47 = v15;
      v18 = *(a1 + 48);
      v49 = *(v6 + 72);
      v19 = v9;
      v20 = *(v6 + 16);
      v21 = v44;
      v20(v44, v18 + v49 * v14, v51);
      v22 = *(*(a1 + 56) + 8 * v14);
      v23 = v45;
      v24 = v21;
      v25 = v51;
      v48 = *(v6 + 32);
      v48(v45, v24, v51);
      *(v23 + *(v46 + 48)) = v22;
      v20(v19, v22 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_id, v25);

      sub_10000CAAC(v23, &qword_1019FEF98);
      v26 = v52;
      v54 = v52;
      v28 = v52[2];
      v27 = v52[3];
      if (v28 >= v27 >> 1)
      {
        sub_100776524(v27 > 1, v28 + 1, 1);
        v25 = v51;
        v26 = v54;
      }

      v26[2] = v28 + 1;
      v29 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v52 = v26;
      v30 = v26 + v29 + v28 * v49;
      v9 = v19;
      result = (v48)(v30, v19, v25);
      a1 = v42;
      v16 = 1 << *(v42 + 32);
      if (v14 >= v16)
      {
        goto LABEL_25;
      }

      v12 = v41;
      v31 = *(v41 + 8 * v17);
      if ((v31 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      if (v53 != *(v42 + 36))
      {
        goto LABEL_27;
      }

      v32 = v31 & (-2 << (v14 & 0x3F));
      if (v32)
      {
        v16 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v17 << 6;
        v34 = v17 + 1;
        v35 = (v39 + 8 * v17);
        while (v34 < (v16 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_1000341AC(v14, v53, 0);
            v16 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_1000341AC(v14, v53, 0);
      }

LABEL_4:
      v15 = v47 + 1;
      v14 = v16;
      if (v47 + 1 == v40)
      {
        v11 = v52;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v38 = sub_100E93A84(v11);

    return v38;
  }

  return result;
}

uint64_t sub_100767A60(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FEF98);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v12 = v11;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(a1 + 48);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 16))(v4, v15 + *(*(v16 - 8) + 72) * v14, v16);
    v17 = *(*(a1 + 56) + 8 * v14);
    *&v4[*(v2 + 48)] = v17;
    if ((*(v17 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data) & 0x8000000000000000) != 0)
    {

      sub_10000CAAC(v4, &qword_1019FEF98);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v19;
    }

    else
    {

      result = sub_10000CAAC(v4, &qword_1019FEF98);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return v5;
    }

    v8 = *(a1 + 64 + 8 * v11);
    ++v12;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_100767C8C(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v3 = sub_1005B981C(&qword_1019FEFA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v36 = type metadata accessor for CRLBoardItemDeltaChange(0);
  v6 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = &v30 - v9;
  v35 = sub_1005B981C(&qword_1019FEF98);
  __chkstk_darwin(v35);
  v11 = &v30 - v10;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v32 = v6;
  v16 = (v6 + 48);

  v18 = 0;
  v34 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v18;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = v20 | (v18 << 6);
    v22 = *(a2 + 48);
    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 16))(v11, v22 + *(*(v23 - 8) + 72) * v21, v23);
    v24 = *(*(a2 + 56) + 8 * v21);
    *&v11[*(v35 + 48)] = v24;

    sub_10076805C(v24, v37, v5);
    sub_10000CAAC(v11, &qword_1019FEF98);
    if ((*v16)(v5, 1, v36) == 1)
    {
      result = sub_10000CAAC(v5, &qword_1019FEFA0);
    }

    else
    {
      v25 = v31;
      sub_100774F64(v5, v31, type metadata accessor for CRLBoardItemDeltaChange);
      sub_100774F64(v25, v33, type metadata accessor for CRLBoardItemDeltaChange);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100B37718(0, v34[2] + 1, 1, v34);
      }

      v27 = v34[2];
      v26 = v34[3];
      if (v27 >= v26 >> 1)
      {
        v34 = sub_100B37718(v26 > 1, v27 + 1, 1, v34);
      }

      v28 = v33;
      v29 = v34;
      v34[2] = v27 + 1;
      result = sub_100774F64(v28, v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, type metadata accessor for CRLBoardItemDeltaChange);
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v34;
    }

    v14 = *(a2 + 64 + 8 * v18);
    ++v19;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10076805C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1005B981C(&qword_1019FEFA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v35[-v7];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  v36 = v11;
  v15 = v14 & 0x7FFFFFFFFFFFFFFFLL;
  v16 = objc_opt_self();

  v17 = [v16 standardUserDefaults];
  v18 = [v17 BOOLForKey:@"CRLAllowInteractionWithUnsupportedBoardAndBoardItemsUserDefault"];

  if (*v15 != &off_101A1BAC0 || (v18 & 1) != 0)
  {
    (*(*v15 + 264))();
    if (*(a2 + 16) && (sub_10003E994(v13), (v21 & 1) != 0) && (type metadata accessor for CRLBoardItemBase(0), (v22 = swift_dynamicCastClass()) != 0))
    {
      v23 = *(*(v22 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
      swift_unknownObjectRetain();
      v24 = v23;

      sub_100741A38(v25, v24, v8);
      (*(v10 + 8))(v13, v36);
      swift_unknownObjectRelease();

      v33 = type metadata accessor for CRLBoardItemDeltaChange(0);
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v8, 1, v33) != 1)
      {
        sub_100774F64(v8, a3, type metadata accessor for CRLBoardItemDeltaChange);
        return (*(v34 + 56))(a3, 0, 1, v33);
      }

      sub_10000CAAC(v8, &qword_1019FEFA0);
    }

    else
    {
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v26 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v28;
      *(inited + 40) = v30;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v31, "Could not calculate delta for board item %@ without snapshot.", 61, 2, inited);

      swift_setDeallocating();
      sub_100005070(inited + 32);
      (*(v10 + 8))(v13, v36);
    }

LABEL_14:
    v32 = type metadata accessor for CRLBoardItemDeltaChange(0);
    return (*(*(v32 - 8) + 56))(a3, 1, 1, v32);
  }

  v19 = type metadata accessor for CRLBoardItemDeltaChange(0);
  (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

Swift::Int sub_100768694()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10147AA14[v1]);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_10076871C()
{
  v1 = *(v0 + 2);
  Hasher._combine(_:)(dword_10147AA14[*v0]);
  if (v1)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1007687A0()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10147AA14[v1]);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100768824(char *a1, char *a2)
{
  if (dword_10147AA14[*a1] == dword_10147AA14[*a2])
  {
    v2 = *(a1 + 2);
    v3 = *(a2 + 2);
    if (v2)
    {
      if (v3)
      {
        v4 = *(a1 + 1) == *(a2 + 1) && v2 == v3;
        if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_100768904()
{
  if (*(*(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas) + 16))
  {
    return 1;
  }

  if (*(*(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas) + 16))
  {
    return 1;
  }

  if (*(*(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas) + 16))
  {
    return 1;
  }

  v1 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardAuxiliaryChanges;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 1;
  }

  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_coalescableBoardAuxiliaryChanges;
  swift_beginAccess();
  if (*(*(v0 + v2) + 16))
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
  swift_beginAccess();
  if (*(*(v0 + v3) + 16))
  {
    return 1;
  }

  v5 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatas;
  swift_beginAccess();
  return *(*(v0 + v5) + 16) != 0;
}

uint64_t sub_100768A10(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v24 = a3;
  v22 = a2;
  v20 = a1;
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) = 0;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatas) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatasToProcessAfterUnlock) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_processingQueue) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_undoableModifiedItemDatas) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_snapshots) = 0;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds) = _swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedFreehandItemIDsSubset) = _swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedAsOrphanItemIDs) = _swiftEmptySetSingleton;
  v8 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_uncommittedChangeAvailablePublisher;
  sub_1005B981C(&unk_101A22680);
  swift_allocObject();
  *(v3 + v8) = PassthroughSubject.init()();
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerCreatedItemDatas) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_realTimePeerDeletedItemIds) = _swiftEmptySetSingleton;
  sub_100006370(0, &qword_1019F2D90);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1000064D8(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1005B981C(&unk_1019FB800);
  v9 = v20;
  sub_1000067A8(&qword_101A1DE80, &unk_1019FB800);
  v10 = v22;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v21 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10004FD94(v9, v3 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v11 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_rootContainerUUID;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4 + v11, v10, v12);
  v14 = 0;
  if (v24)
  {
    v14 = sub_100BD4A5C(_swiftEmptyArrayStorage);
  }

  v15 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_snapshots;
  swift_beginAccess();
  *(v4 + v15) = v14;

  *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_boardAuxiliaryChanges) = _swiftEmptyArrayStorage;
  v16 = sub_100BD4C44(_swiftEmptyArrayStorage);
  (*(v13 + 8))(v10, v12);
  sub_10003D45C(v9, type metadata accessor for CRLBoardIdentifier);
  *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_coalescableBoardAuxiliaryChanges) = v16;
  return v4;
}

uint64_t sub_100768EB0(uint64_t a1)
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.realTimeSync;
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "CRLBoardChangeSet clearChanges()", 32, 2, _swiftEmptyArrayStorage);
  v5 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1007751F0;
  *(v7 + 24) = v6;
  v11[4] = sub_10002AAE4;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = *"";
  v11[2] = sub_10002AAB8;
  v11[3] = &unk_101885AD0;
  v8 = _Block_copy(v11);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100769088(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas) = _swiftEmptyDictionarySingleton;

  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_undoableModifiedItemDatas) = _swiftEmptyDictionarySingleton;

  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas) = _swiftEmptyDictionarySingleton;

  v4 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
  swift_beginAccess();
  *(a1 + v4) = _swiftEmptySetSingleton;

  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedFreehandItemIDsSubset) = _swiftEmptySetSingleton;

  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedAsOrphanItemIDs) = _swiftEmptySetSingleton;

  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas) = _swiftEmptyDictionarySingleton;

  v6 = sub_1007688A0();
  if (*v5)
  {
    v7 = v5;

    *v7 = _swiftEmptyDictionarySingleton;
  }

  (v6)(v10, 0);
  v8 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatas;
  swift_beginAccess();
  *(a1 + v8) = _swiftEmptyDictionarySingleton;

  if (a2)
  {
    swift_beginAccess();
    sub_100769208(a2);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100769208(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4);
  v7 = &i - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v28 = v5 + 16;
  v29 = v5;
  v27 = (v5 + 8);
  v30 = a1;

  v14 = 0;
  for (i = v7; v11; *v2 = v22)
  {
LABEL_10:
    while (1)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = *(v29 + 72);
      (*(v29 + 16))(v7, *(v30 + 48) + v17 * (v16 | (v14 << 6)), v4);
      v18 = sub_10003E994(v7);
      if (v19)
      {
        break;
      }

      result = (*v27)(v7, v4);
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    v20 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    v31 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA4714();
      v22 = v31;
    }

    v23 = *(v22 + 48) + v20 * v17;
    v24 = *v27;
    (*v27)(v23, v4);

    sub_100BDBB9C(v20, v22);
    v25 = i;
    result = v24(i, v4);
    v7 = v25;
  }

LABEL_6:
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10076944C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter) = v3;
  if (qword_1019F2288 != -1)
  {
LABEL_5:
    swift_once();
  }

  v4 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v8 = v7;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v9, "CRLBoardChangeSet lock() lockCounter: %{public}@", 48, 2, inited);
  swift_setDeallocating();
  return sub_100005070(inited + 32);
}

uint64_t sub_10076958C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter;
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_lockCounter);
  if (v3 <= 0)
  {
    v65 = objc_opt_self();
    v4 = [v65 _atomicIncrementAssertCount];
    v68 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v68);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 272;
    v16 = v68;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Cannot unlock if lockCounter is already 0, we're already unlocked", 65, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    [v65 handleFailureInFunction:v23 file:v24 lineNumber:272 isFatal:0 format:v25 args:v22];

    v3 = *(a1 + v2);
  }

  v26 = __OFSUB__(v3, 1);
  v27 = v3 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a1 + v2) = v27;
    if (qword_1019F2288 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v28 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10146C6B0;
  v68 = *(a1 + v2);
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_1000053B0();
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v33 = static os_log_type_t.default.getter();
  sub_100005404(v28, &_mh_execute_header, v33, "CRLBoardChangeSet unlock() lockCounter: %{public}@", 50, 2, v29);
  swift_setDeallocating();
  result = sub_100005070(v29 + 32);
  if (*(a1 + v2))
  {
    return result;
  }

  v35 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_processingQueue;
  swift_beginAccess();
  v36 = *(a1 + v35);
  if (v36 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
LABEL_10:
      v66 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas;
      v37 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas);
      v64 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas;
      v38 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas);
      v39 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
      swift_beginAccess();
      v61 = v39;
      v40 = *(a1 + v39);
      v41 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas;
      v42 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_modifiedItemDatas);
      v43 = *(a1 + v35);
      if (v43 >> 62)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
        if (v44)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v44)
        {
LABEL_12:
          if (v44 < 1)
          {
            __break(1u);

            __break(1u);
            return result;
          }

          v63 = v40;

          v62 = v42;

          for (i = 0; i != v44; ++i)
          {
            if ((v43 & 0xC000000000000001) != 0)
            {
              v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v46 = *(v43 + 8 * i + 32);
            }

            sub_10076A298(v46);
          }

          v42 = v62;
          v40 = v63;
LABEL_25:
          v48 = *&v66[a1];

          v49 = sub_100B33ED0(v37, v48);

          if (v49)
          {
            v50 = *(a1 + v64);

            v51 = sub_100B33ED0(v38, v50);

            if (v51)
            {
              v52 = *(a1 + v41);

              v53 = sub_100B33ED0(v42, v52);

              if (v53)
              {
                v54 = *(a1 + v61);

                v55 = sub_100BC5FB8(v40, v54);

                v47 = v55 ^ 1;
                goto LABEL_32;
              }

LABEL_31:

              v47 = 1;
              goto LABEL_32;
            }
          }

          else
          {
          }

          goto LABEL_31;
        }
      }

      goto LABEL_25;
    }
  }

  else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_10;
  }

  v47 = 0;
LABEL_32:
  *(a1 + v35) = _swiftEmptyArrayStorage;

  v56 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatasToProcessAfterUnlock;
  swift_beginAccess();
  v57 = *(a1 + v56);
  if (*(v57 + 16))
  {
    v58 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_peerServerSyncedItemDatas;
    swift_beginAccess();
    v59 = *(a1 + v58);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v59;
    sub_100774BC8(v57, sub_100771CA8, 0, isUniquelyReferenced_nonNull_native, &v67);

    *(a1 + v58) = v67;
  }

  *(a1 + v56) = _swiftEmptyDictionarySingleton;

  if (v47)
  {
    return sub_10076BD80();
  }

  return result;
}