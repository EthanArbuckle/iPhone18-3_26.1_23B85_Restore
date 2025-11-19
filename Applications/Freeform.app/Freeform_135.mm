void sub_10103C50C()
{
  v0 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v12 = [objc_opt_self() pathSourceForShapeType:11 naturalSize:{165.0, 165.0}];
  sub_101013118();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong editingCoordinator];

    if (v5)
    {
      v6 = *&v5[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

      v7 = type metadata accessor for CRLWPStorageCRDTData(0);
      (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
      sub_1006950BC(v13);
      v15[12] = v13[12];
      v15[13] = v13[13];
      v15[14] = v13[14];
      v16 = v14;
      v15[8] = v13[8];
      v15[9] = v13[9];
      v15[10] = v13[10];
      v15[11] = v13[11];
      v15[4] = v13[4];
      v15[5] = v13[5];
      v15[6] = v13[6];
      v15[7] = v13[7];
      v15[0] = v13[0];
      v15[1] = v13[1];
      v15[2] = v13[2];
      v15[3] = v13[3];
      v8 = sub_1011133FC(11, 0, v12, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, 0, v2, v15, 0, 0, 0, 0, 1u);

      sub_10000CAAC(v2, &unk_101A0B1C0);
      sub_1005B981C(&unk_1019F4D60);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_101465920;
      *(v9 + 32) = v8;

      v10 = v8;
      sub_1006799F0(v9, 0, 0);

      return;
    }
  }

  else
  {
  }

  v11 = v12;
}

uint64_t sub_10103C838()
{
  sub_101013118();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong editingCoordinator];

    if (v2)
    {
      v4 = *&v2[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

      v5 = sub_10110C390();
      sub_1005B981C(&unk_1019F4D60);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_101465920;
      *(v6 + 32) = v5;

      v7 = v5;
      sub_1006799F0(v6, 0, 0);
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_10103C9A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  sub_101013118();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong editingCoordinator];

    if (v8)
    {
      v10 = *&v8[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

      v11 = type metadata accessor for CRLWPStorageCRDTData(0);
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      sub_1006950BC(v16);
      v18[12] = v16[12];
      v18[13] = v16[13];
      v18[14] = v16[14];
      v19 = v17;
      v18[8] = v16[8];
      v18[9] = v16[9];
      v18[10] = v16[10];
      v18[11] = v16[11];
      v18[4] = v16[4];
      v18[5] = v16[5];
      v18[6] = v16[6];
      v18[7] = v16[7];
      v18[0] = v16[0];
      v18[1] = v16[1];
      v18[2] = v16[2];
      v18[3] = v16[3];
      v12 = sub_1011133FC(a2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, 0, v5, v18, 0, 0, 0, 0, 1u);

      sub_10000CAAC(v5, &unk_101A0B1C0);
      sub_1005B981C(&unk_1019F4D60);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_101465920;
      *(v13 + 32) = v12;

      v14 = v12;
      sub_1006799F0(v13, 0, 0);
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_10103CC84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  sub_10103C9A4(v7, a4);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

void sub_10103CD10()
{
  v1 = v0;
  v22 = type metadata accessor for PHPickerConfiguration.AssetRepresentationMode();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PHPickerConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_1005B981C(&qword_101A10B10);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v18 = type metadata accessor for PHPickerFilter();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_100006760(&qword_1019F6D20, type metadata accessor for CRLiOSBoardViewController);
  PHPickerConfiguration.init()();
  (*(v2 + 104))(v4, enum case for PHPickerConfiguration.AssetRepresentationMode.current(_:), v22);
  PHPickerConfiguration.preferredAssetRepresentationMode.setter();
  PHPickerConfiguration.selectionLimit.setter();
  sub_10000BE14(v17, v14, &qword_101A10B10);
  PHPickerConfiguration.filter.setter();
  sub_100006370(0, &unk_1019F6BC0);
  (*(v6 + 16))(v8, v11, v5);
  v19 = PHPickerViewController.init(configuration:)();
  swift_unknownObjectRetain();
  PHPickerViewController.delegate.setter();
  (*(v6 + 8))(v11, v5);
  sub_10000CAAC(v17, &qword_101A10B10);
  [v1 presentViewController:v19 animated:1 completion:0];

  v20 = *(*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  sub_1008FEE94(1);
}

uint64_t sub_10103D0A4(uint64_t a1)
{
  sub_10000BE14(a1, v10, &unk_1019F4D00);
  v2 = v11;
  if (v11)
  {
    v3 = sub_100020E58(v10, v11);
    v4 = *(v2 - 8);
    v5 = __chkstk_darwin(v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v7, v2);
    sub_100005070(v10);
  }

  else
  {
    v8 = 0;
  }

  [v1 presentGenerativePlayground:v8];
  return swift_unknownObjectRelease();
}

uint64_t sub_10103D204(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

void sub_10103D344()
{
  isa = [objc_opt_self() supportedFileUTTypes];
  if (!isa)
  {
    type metadata accessor for UTType();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v2 = [objc_allocWithZone(UIDocumentPickerViewController) initForOpeningContentTypes:isa asCopy:1];

  [v2 setDelegate:v0];
  [v2 setAllowsMultipleSelection:1];
  [v0 presentViewController:v2 animated:1 completion:0];
  v3 = *(*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  sub_1008FEE94(1);
}

uint64_t sub_10103D4FC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(BOOL))
{
  if (a3)
  {
    v10 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    v14 = a1;
  }

  v15 = *a4;
  v16 = a1[v15];
  if (v16 == 2)
  {
    LOBYTE(v16) = a5(v16, v11, v12, v13);
    a1[v15] = v16 & 1;
  }

  a6((v16 & 1) == 0);

  return sub_10000CAAC(v18, &unk_1019F4D00);
}

uint64_t sub_10103D6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AppStorage.init<A>(wrappedValue:_:store:)();
  AppStorage.wrappedValue.getter();
  AppStorage.wrappedValue.setter();

  return sub_10000CAAC(v4, &unk_1019F4D00);
}

uint64_t sub_10103D92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 128) = a5;
  *(v5 + 40) = a4;
  type metadata accessor for CRLBoardCRDTData(0);
  *(v5 + 48) = swift_task_alloc();
  type metadata accessor for UUID();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  *(v5 + 72) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 80) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 88) = v7;
  *(v5 + 96) = v6;

  return _swift_task_switch(sub_10103DA78, v7, v6);
}

void sub_10103DA78()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 128);
  v6 = *(*(*(v0 + 40) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v7 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v8 = *&v6[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v8 + v9, v3, type metadata accessor for CRLBoardCRDTData);
  v10 = v6;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v3, type metadata accessor for CRLBoardCRDTData);
  v11 = (*&v6[v7] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v12 = *v11;
  v13 = v11[1];

  sub_10084BD4C(v4, v12, v13, v1);

  sub_1005B981C(&unk_101A19BD0);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10146C6B0;
  sub_100050004(v1, v15 + v14, type metadata accessor for CRLBoardIdentifier);
  v16 = sub_1005BF2F8(v15);
  swift_setDeallocating();
  sub_10003D7BC(v15 + v14, type metadata accessor for CRLBoardIdentifier);
  swift_deallocClassInstance();
  v17 = objc_allocWithZone(type metadata accessor for CRLBoardFavoriteCommand());
  v18 = sub_100FAAC84(v16, (v5 & 1) == 0);
  *(v0 + 104) = v18;
  sub_10003D7BC(v1, type metadata accessor for CRLBoardIdentifier);
  sub_101052810();
  *(v0 + 112) = v19;
  if (v19)
  {
    v20 = swift_task_alloc();
    *(v0 + 120) = v20;
    *v20 = v0;
    v20[1] = sub_10103DD0C;

    sub_100FAEB7C(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10103DD0C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 112);
  if (v0)
  {

    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = sub_10105B428;
  }

  else
  {

    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = sub_10103DE48;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10103DE48()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10103E084()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF;
  if (v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF])
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.crlDefault;
    v6 = static os_log_type_t.default.getter();

    return sub_100005404(v5, &_mh_execute_header, v6, "Already exporting to PDF. Skipping.", 35, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v8 = *(*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardActor);
    v9 = qword_1019F2098;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlDefault;
    v11 = static os_log_type_t.default.getter();
    sub_100005404(v10, &_mh_execute_header, v11, "Exporting Board to PDF.", 23, 2, _swiftEmptyArrayStorage);
    v0[v4] = 1;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    type metadata accessor for MainActor();

    v13 = v0;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    v15[5] = v8;
    sub_10064191C(0, 0, v3, &unk_1014C20B0, v15);
  }
}

uint64_t sub_10103E2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[26] = type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v7;
  v5[29] = v6;

  return _swift_task_switch(sub_10103E394, v7, v6);
}

id sub_10103E394()
{
  v1 = sub_101012FD4();
  v2 = [v1 mode];

  LODWORD(v1) = [v2 wantsToEndForNonPopoverPresentations];
  if (v1)
  {
    [*(*(v0 + 192) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
  }

  v3 = [*(v0 + 192) navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v11 = 0;
    v13 = 0;
  }

  *(v0 + 256) = v11;
  *(v0 + 264) = v13;
  *(v0 + 240) = v7;
  *(v0 + 248) = v9;
  result = [*(v0 + 192) view];
  *(v0 + 272) = result;
  if (result)
  {
    *(v0 + 280) = static MainActor.shared.getter();
    v15 = swift_task_alloc();
    *(v0 + 288) = v15;
    *v15 = v0;
    v15[1] = sub_10103E548;
    v16 = *(v0 + 200);

    return sub_1009936A8(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10103E548(uint64_t a1)
{
  v3 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[39] = v5;
  v3[40] = v4;
  if (v1)
  {
    v6 = sub_10103E888;
  }

  else
  {
    v6 = sub_10103E6AC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10103E6AC()
{
  if ([objc_opt_self() crl_padUI])
  {
    v1 = *(v0 + 296);
    [v1 setModalPresentationStyle:7];
    v2 = [v1 popoverPresentationController];
    if (v2)
    {
      v3 = v2;
      [v2 setSourceView:*(v0 + 272)];
    }

    v4 = *(v0 + 296);
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = [v4 popoverPresentationController];

    [v9 setSourceRect:{v8, v7, v6, v5}];
  }

  v10 = *(v0 + 296);
  v11 = *(v0 + 192);
  v12 = static MainActor.shared.getter();
  *(v0 + 328) = v12;
  v13 = swift_task_alloc();
  *(v0 + 336) = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  v14 = swift_task_alloc();
  *(v0 + 344) = v14;
  *v14 = v0;
  v14[1] = sub_10103EAB4;

  return withCheckedContinuation<A>(isolation:function:_:)(v14, v12, &protocol witness table for MainActor, 0xD000000000000067, 0x800000010157D890, sub_100F7889C, v13, &type metadata for () + 8);
}

uint64_t sub_10103E888()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_10103E8F4, v1, v2);
}

uint64_t sub_10103E8F4()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v3 = Error.publicDescription.getter(v0[17], v0[18]);
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.fullDescription.getter(v0[20]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Error retrieving immutable board or exporting to PDF: %{public}@ <%@>", 69, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  *(v0[24] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF) = 0;
  v10 = v0[1];

  return v10();
}

uint64_t sub_10103EAB4()
{
  v1 = *v0;

  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return _swift_task_switch(sub_10103EC14, v3, v2);
}

uint64_t sub_10103EC14()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 224);
  v3 = *(v0 + 232);

  return _swift_task_switch(sub_10103EC88, v2, v3);
}

uint64_t sub_10103EC88()
{

  *(*(v0 + 192) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10103ED10(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

uint64_t sub_10103EECC()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v6 = sub_100EC8784();

  [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] endEditing];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v1;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  *(v10 + 32) = v8;
  *(v10 + 40) = 1;
  *(v10 + 48) = v6;
  sub_10064191C(0, 0, v4, &unk_10146F9D0, v10);
}

void sub_10103F3AC(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController))
  {
    v5 = sub_101012FD4();
    v6 = [v5 mode];

    LODWORD(v5) = [v6 wantsToEndForNonPopoverPresentations];
    if (v5)
    {
      if (a1 != 7 && a2 != 7 || a2 != -1 && a2 != 7)
      {
        v7 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController);

        [v7 resetToDefaultModeAnimated:1];
      }
    }
  }
}

void sub_10103F720()
{
  v1 = sub_101012FD4();
  v2 = [v1 mode];

  v3 = [v2 pencilModeType];
  if (v3 != 1)
  {
    v4 = [v0 interactiveCanvasControllerForFreehandDrawingTools];
    v5 = [objc_allocWithZone(CRLiOSDocumentModeFreehandDrawing) initWithBoardViewController:v0 andInteractiveCanvasController:v4];

    [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController] setMode:v5 animated:1];
    [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] collapseAllExpandedCollaboratorHUDs];
  }
}

void sub_10103F924()
{
  v0 = sub_101012FD4();
  v1 = [v0 mode];

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    v25 = objc_opt_self();
    v3 = [v25 _atomicIncrementAssertCount];
    v26 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v26);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 4001;
    v15 = v26;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v25 handleFailureInFunction:v22 file:v23 lineNumber:4001 isFatal:0 format:v24 args:v21];
  }

  [v2 beginDrawingTransformMode];
}

void sub_10103FD88()
{
  v1 = [v0 interactiveCanvasControllerForFreehandDrawingTools];
  v2 = [v1 layerHost];

  if (v2 && (([v2 respondsToSelector:"asiOSCVC"] & 1) == 0 ? (v3 = 0) : (v3 = objc_msgSend(v2, "asiOSCVC")), swift_unknownObjectRelease(), v4 = objc_msgSend(v3, "pencilMediator"), v3, v4))
  {
    [v4 markPencilUsedForMode:1];
    v5 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker];
    if (v5)
    {
      v6 = qword_1019F2118;

      if (v6 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = static OS_os_log.crlAppAnalytics;
      v8 = static os_log_type_t.error.getter();
      sub_100005404(v7, &_mh_execute_header, v8, "pencil used for given session", 29, 2, _swiftEmptyArrayStorage);

      swift_unknownObjectRelease();
      *(v5 + 72) = 1;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = objc_opt_self();
    v10 = [v9 _atomicIncrementAssertCount];
    v32 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v32);
    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v10;
    v19 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v19;
    v20 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v20;
    *(inited + 72) = v11;
    *(inited + 136) = &type metadata for String;
    v21 = sub_1000053B0();
    *(inited + 112) = v14;
    *(inited + 120) = v16;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v21;
    *(inited + 152) = 4008;
    v22 = v32;
    *(inited + 216) = v19;
    *(inited + 224) = v20;
    *(inited + 192) = v22;
    v23 = v11;
    v24 = v22;
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v26, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v27 = swift_allocObject();
    v27[2] = 8;
    v27[3] = 0;
    v27[4] = 0;
    v27[5] = 0;
    v28 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    [v9 handleFailureInFunction:v29 file:v30 lineNumber:4008 isFatal:0 format:v31 args:v28];
  }
}

void sub_1010403A0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = [v4 interactiveCanvasControllerForFreehandDrawingTools];
  v8 = [v7 layerHost];

  if (v8 && (([v8 respondsToSelector:"asiOSCVC"] & 1) == 0 ? (v9 = 0) : (v9 = objc_msgSend(v8, "asiOSCVC")), swift_unknownObjectRelease(), v10 = objc_msgSend(v9, "pencilMediator"), v9, v10))
  {
    [v10 *a4];

    swift_unknownObjectRelease();
  }

  else
  {
    v34 = a3;
    v33 = objc_opt_self();
    v11 = [v33 _atomicIncrementAssertCount];
    v35 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v35);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v20;
    v21 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = v34;
    v23 = v35;
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v33 handleFailureInFunction:v30 file:v31 lineNumber:v34 isFatal:0 format:v32 args:v29];
  }
}

uint64_t sub_1010408B8(double a1, double a2)
{
  v5 = sub_101012FD4();
  v6 = [v5 mode];

  v7 = [v6 pencilModeType];
  if (v7)
  {
    if (v7 == 1)
    {
      return 3;
    }

    if (v7 == 2)
    {
      return 0;
    }

    type metadata accessor for CRLiOSPencilModeType(0);
    v37 = v7;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v9 = [v2 interactiveCanvasControllerForFreehandDrawingTools];
    v10 = [v9 layerHost];

    if (!v10)
    {
LABEL_14:
      v14 = objc_opt_self();
      v15 = [v14 _atomicIncrementAssertCount];
      v37 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v37);
      StaticString.description.getter();
      v16 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v17 = String._bridgeToObjectiveC()();

      v18 = [v17 lastPathComponent];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v22 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v15;
      v24 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v24;
      v25 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v25;
      *(inited + 72) = v16;
      *(inited + 136) = &type metadata for String;
      v26 = sub_1000053B0();
      *(inited + 112) = v19;
      *(inited + 120) = v21;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v26;
      *(inited + 152) = 4039;
      v27 = v37;
      *(inited + 216) = v24;
      *(inited + 224) = v25;
      *(inited + 192) = v27;
      v28 = v16;
      v29 = v27;
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v31, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v32 = swift_allocObject();
      v32[2] = 8;
      v32[3] = 0;
      v32[4] = 0;
      v32[5] = 0;
      v33 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v36 = String._bridgeToObjectiveC()();

      [v14 handleFailureInFunction:v34 file:v35 lineNumber:4039 isFatal:0 format:v36 args:v33];

      return 0;
    }

    if ([v10 respondsToSelector:"asiOSCVC"])
    {
      v11 = [v10 asiOSCVC];
      goto LABEL_10;
    }
  }

  v11 = 0;
LABEL_10:
  swift_unknownObjectRelease();
  v12 = [v11 pencilMediator];

  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = [v12 pencilBehaviorOutsideModesAtUnscaledPoint:{a1, a2}];
  swift_unknownObjectRelease();
  if (v13 == 1)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

id sub_101040F74(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = sub_101012FD4();
  v6 = [v5 mode];

  v7 = [v6 *a3];
  return v7;
}

uint64_t sub_101040FE4(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v2 = [v1 interactiveCanvasControllerForFreehandDrawingTools];
      v3 = [objc_allocWithZone(CRLiOSDocumentModeFreehandDrawing) initWithBoardViewController:v1 andInteractiveCanvasController:v2];
LABEL_5:
      v6 = v3;

      return v6;
    case 2:
      v2 = [v1 interactiveCanvasControllerForFreehandDrawingTools];
      v4 = type metadata accessor for CRLiOSDocumentModeHandwriting();
      v5 = objc_allocWithZone(v4);
      v5[OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_currentlyChangingModes] = 0;
      v5[OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_stayInHandwritingModeForSelectionChange] = 0;
      v5[OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_endModeCheckQueuedAfterTextGestures] = 0;
      *&v5[OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_subscriptions] = _swiftEmptySetSingleton;
      swift_unknownObjectUnownedInit();
      v34.receiver = v5;
      v34.super_class = v4;
      v3 = objc_msgSendSuper2(&v34, "initWithBoardViewController:", v1);
      goto LABEL_5;
    case 0:
      v8 = objc_opt_self();
      v9 = [v8 _atomicIncrementAssertCount];
      v35 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v35);
      StaticString.description.getter();
      v10 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v11 = String._bridgeToObjectiveC()();

      v12 = [v11 lastPathComponent];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v16 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v9;
      v18 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v18;
      v19 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v19;
      *(inited + 72) = v10;
      *(inited + 136) = &type metadata for String;
      v20 = sub_1000053B0();
      *(inited + 112) = v13;
      *(inited + 120) = v15;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v20;
      *(inited + 152) = 4093;
      v21 = v35;
      *(inited + 216) = v18;
      *(inited + 224) = v19;
      *(inited + 192) = v21;
      v22 = v10;
      v23 = v21;
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v25 = static os_log_type_t.error.getter();

      type metadata accessor for __VaListBuilder();
      v26 = swift_allocObject();
      v26[2] = 8;
      v26[3] = 0;
      v26[4] = 0;
      v26[5] = 0;
      v27 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v28 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      [v8 handleFailureInFunction:v28 file:v29 lineNumber:4093 isFatal:1 format:v30 args:v27];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v31, v32);
      a1 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  v33 = a1;
  type metadata accessor for CRLiOSPencilModeType(0);
  v35 = v33;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_101041604(unint64_t a1, NSString a2, id a3, char a4, unsigned __int8 a5)
{
  LOBYTE(v7) = a4;
  v11 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_28:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12 < 1)
    {
      return;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 < 1)
    {
      return;
    }
  }

  v13 = *(v5 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_statusHUDManager);
  v14 = qword_1019F21C0;
  v53 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.crlJoinLeave;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v12;
  v17 = static os_log_type_t.default.getter();
  sub_100005404(v15, &_mh_execute_header, v17, a2, a3, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  if (v12 == 1)
  {
    if (v11)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_8:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_40;
          }

          v18 = *(a1 + 32);
        }

        v19 = v18;
        sub_1007D7988();
        v12 = v20;
        swift_getKeyPath();
        swift_getKeyPath();
        v15 = v19;
        static Published.subscript.getter();

        v21 = v54;
        if (v54 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_13:
            if ((v21 & 0xC000000000000001) == 0)
            {
              if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return;
              }

              v22 = *(v21 + 32);
LABEL_16:
              v23 = v22;

              Strong = swift_unknownObjectWeakLoadStrong();

              if (Strong)
              {
                v25 = *&Strong[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact];

LABEL_34:
                v39 = [objc_opt_self() blueColor];
                v40 = v25;
                if (v12)
                {
                  v41 = String._bridgeToObjectiveC()();
                }

                else
                {
                  v41 = 0;
                }

                v42 = [objc_allocWithZone(CRLLobbySession_mi) initWithDisplayName:v41 indicatorDarkColor:v39 cnContact:v25];

                sub_1005B981C(&unk_1019F4D60);
                v43 = swift_allocObject();
                *(v43 + 16) = xmmword_101465920;
                *(v43 + 32) = v42;
                v44 = objc_allocWithZone(type metadata accessor for CRLCollaboratorStatusHUDController_mi());
                *&v44[OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi__cachedAccessoryView] = 0;
                v45 = &v44[OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi_event];
                *v45 = v43;
                *(v45 + 1) = 0;
                v45[16] = v7;
                v46 = v53;
                v47 = v42;

                v48 = sub_10105173C(v46, 0, v44);
                v49 = sub_100F951FC(v43, 0, v7);
                v51 = v50;

                v52 = &v48[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_accessibilityAnnouncement];
                *v52 = v49;
                v52[1] = v51;

                sub_10104E784(v48, v46, &unk_1018AE300, sub_1010532B4, &unk_1018AE318, 0.0);

                return;
              }

LABEL_33:
              v25 = 0;
              goto LABEL_34;
            }

LABEL_40:
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_16;
          }
        }

        else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        goto LABEL_33;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    v25 = 0;
    v12 = 0;
    v15 = 0;
    goto LABEL_34;
  }

  v26 = [objc_opt_self() blueColor];
  v27 = objc_allocWithZone(CRLLobbySession_mi);
  a2 = String._bridgeToObjectiveC()();
  a3 = [v27 initWithDisplayName:a2 indicatorDarkColor:v26 cnContact:0];

  v54 = _swiftEmptyArrayStorage;
  v11 = 1;
  while (1)
  {
    v7 = a3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      a2 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v5 = &v54;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (v12 == v11)
    {
      break;
    }

    if (__OFADD__(v11++, 1))
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  v29 = v54;
  v30 = objc_allocWithZone(type metadata accessor for CRLCollaboratorStatusHUDController_mi());
  *&v30[OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi__cachedAccessoryView] = 0;
  v31 = &v30[OBJC_IVAR____TtC8Freeform37CRLCollaboratorStatusHUDController_mi_event];
  *v31 = v29;
  *(v31 + 1) = 0;
  v31[16] = a5;
  v32 = v53;

  v33 = sub_10105173C(v32, 0, v30);
  v34 = sub_100F951FC(v29, 0, a5);
  v36 = v35;

  v37 = &v33[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_accessibilityAnnouncement];
  *v37 = v34;
  v37[1] = v36;

  v38 = v33;
  sub_10104E784(v38, v32, &unk_1018AE300, sub_1010532B4, &unk_1018AE318, 0.0);
}

void sub_101041E08(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) endEditing];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1010137CC();
    v4 = [v3 searchString];

    if (!v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = String._bridgeToObjectiveC()();
    }

    [v2 setSearchText:v4];
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 presentFindNavigatorShowingReplace:0];
  }
}

void *sub_101042160()
{
  v49 = _swiftEmptyArrayStorage;
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  v2 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  v4 = v1;
  if (!v3)
  {
    sub_10096C7D4();
    v3 = *&v1[v2];
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v48 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v8 conformsToProtocol:&OBJC_PROTOCOL___CRLSearchable])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v7;
      if (v10 == i)
      {
        v11 = v48;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v12 = *(v11 + 16);
    if (v12)
    {
LABEL_26:
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
        v15 = _swiftEmptyArrayStorage;
        v16 = &off_1018DC000;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v17 = *(v11 + 8 * v13 + 32);
          }

          v18 = v17;
          v19 = [v14 layoutForInfo:v17];
          if (v19)
          {
            v20 = v19;
            if ([v19 conformsToProtocol:v16[501]])
            {
              v21 = v20;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v16 = &off_1018DC000;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v15 = v49;
              goto LABEL_30;
            }
          }

LABEL_30:
          if (v12 == ++v13)
          {
            goto LABEL_41;
          }
        }
      }

      __break(1u);
      goto LABEL_50;
    }
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_41:

  if ([objc_opt_self() isOSFeatureEnabled:5])
  {
    v22 = *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingItemsSearchTarget];
    if (v22)
    {
      v5 = v22;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_44:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return v49;
      }

LABEL_50:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_44;
    }

    v47 = objc_opt_self();
    v23 = [v47 _atomicIncrementAssertCount];
    v48 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v48);
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    v26 = [v25 lastPathComponent];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v23;
    v32 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v32;
    v33 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v33;
    *(inited + 72) = v24;
    *(inited + 136) = &type metadata for String;
    v34 = sub_1000053B0();
    *(inited + 112) = v27;
    *(inited + 120) = v29;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v34;
    *(inited + 152) = 4255;
    v35 = v48;
    *(inited + 216) = v32;
    *(inited + 224) = v33;
    *(inited + 192) = v35;
    v36 = v24;
    v37 = v35;
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v39, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v40 = swift_allocObject();
    v40[2] = 8;
    v40[3] = 0;
    v40[4] = 0;
    v40[5] = 0;
    v41 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    [v47 handleFailureInFunction:v42 file:v43 lineNumber:4255 isFatal:0 format:v44 args:v41];
  }

  return v15;
}

uint64_t sub_1010428DC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator];
  v3 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator;
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  v5 = sub_1008FB7A4();

  if (v5)
  {
    v6 = *(v2 + v3);
    v7 = sub_10090E86C();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return 0;
    }

    v9 = Strong;
    sub_1008FEE94(1);

    return 1;
  }

  v10 = &v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_delegate];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v22.receiver = v1;
    v22.super_class = type metadata accessor for CRLiOSBoardViewController();
    return objc_msgSendSuper2(&v22, "accessibilityPerformEscape");
  }

  v11 = *(v10 + 1);
  v12 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled;
  v13 = v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled];
  if (v13 != 2)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    sub_101029C04(0);
    v17 = [v1 view];
    v18 = [objc_opt_self() mainBundle];
    v19 = String._bridgeToObjectiveC()();
    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

    if (!v21)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = String._bridgeToObjectiveC()();
    }

    CRLAccessibilityPostAnnouncementNotification(v17, v21);

    goto LABEL_14;
  }

  v14 = sub_10102A558();
  v1[v12] = v14 & 1;
  if (v14)
  {
    goto LABEL_11;
  }

LABEL_7:
  ObjectType = swift_getObjectType();
  (*(v11 + 8))(v1, ObjectType, v11);
LABEL_14:
  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_101042B68()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
  v3 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator;
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  v5 = sub_10090E86C();

  v6 = *(v2 + v3);
  LOBYTE(v2) = sub_1008FB7A4();

  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = 1;
      sub_1008FEE94(1);
LABEL_11:

      goto LABEL_12;
    }
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followHUD))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1005CB570(1, ObjectType);
      swift_unknownObjectRelease();
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v8 = v11;
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        sub_100900650(v12, 0);

        v9 = 1;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

uint64_t sub_101042CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[41] = a4;
  v5[42] = a5;
  v6 = type metadata accessor for URL();
  v5[43] = v6;
  v5[44] = *(v6 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v5[48] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[49] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[50] = v7;
  v5[51] = v8;

  return _swift_task_switch(sub_101042E58, v7, v8);
}

uint64_t sub_101042E58()
{
  v1 = v0[48];
  v2 = v0[43];
  v3 = v0[44];
  v4 = *(v3 + 56);
  v0[52] = v4;
  v0[53] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = objc_allocWithZone(CRLTemporaryDirectory);
  v6 = String._bridgeToObjectiveC()();
  v0[36] = 0;
  v7 = [v5 initWithSignature:v6 error:v0 + 36];
  v0[54] = v7;

  v8 = v0[36];
  if (v7)
  {
    v9 = *(*(v0[41] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardActor);
    v0[55] = v9;
    v10 = v8;

    return _swift_task_switch(sub_1010432EC, v9, 0);
  }

  else
  {
    v11 = v8;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v12 = v0[48];
    v13 = v0[43];
    v14 = v0[44];
    v15 = static OS_os_log.crlError;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    if ((*(v14 + 48))(v12, 1, v13))
    {
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v20 = v0[44];
      v19 = v0[45];
      v21 = v0[43];
      (*(v20 + 16))(v19, v0[48], v21);
      v17 = URL.path.getter();
      v18 = v22;
      (*(v20 + 8))(v19, v21);
    }

    v23 = v0[41];
    *(inited + 56) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 64) = v24;
    if (v18)
    {
      v25 = v17;
    }

    else
    {
      v25 = 0;
    }

    v26 = 0xE000000000000000;
    if (v18)
    {
      v26 = v18;
    }

    *(inited + 32) = v25;
    *(inited + 40) = v26;
    swift_getErrorValue();
    v27 = Error.localizedDescription.getter();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v24;
    *(inited + 72) = v27;
    *(inited + 80) = v28;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v29, "Error exporting board to file %@: %@", 36, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_getErrorValue();
    Error.localizedDescription.getter();
    v30 = String._bridgeToObjectiveC()();
    v31 = String._bridgeToObjectiveC()();

    v32 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

    [v23 presentViewController:v32 animated:1 completion:0];

    sub_10000CAAC(v0[48], &unk_1019F33C0);

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_1010432EC()
{
  v1 = *(v0 + 440);
  type metadata accessor for CRLImmutableBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 448) = v4;
  *v4 = v0;
  v4[1] = sub_1010433E8;

  return sub_100797820(v2, v1 + v3, 1);
}

uint64_t sub_1010433E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[57] = a1;
  v4[58] = v1;

  v5 = v3[55];
  if (v1)
  {
    v6 = sub_10104382C;
    v7 = 0;
  }

  else
  {

    v5 = v4[50];
    v7 = v4[51];
    v6 = sub_10104357C;
  }

  return _swift_task_switch(v6, v5, v7);
}

uint64_t sub_10104357C()
{
  v1 = v0;
  v2 = [*(v0 + 432) URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = swift_task_alloc();
  v1[59] = v3;
  *v3 = v1;
  v3[1] = sub_101043678;
  v4 = v1[57];
  v6 = v1[46];
  v5 = v1[47];

  return sub_100ACEDBC(v5, v4, v6);
}

uint64_t sub_101043678()
{
  v2 = *v1;
  v2[60] = v0;

  v3 = v2[46];
  v4 = v2[44];
  v5 = v2[43];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = v2[50];
    v10 = v2[51];
    v11 = sub_101044198;
  }

  else
  {
    v2[61] = v7;
    v2[62] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = v2[50];
    v10 = v2[51];
    v11 = sub_101043C10;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10104382C()
{

  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return _swift_task_switch(sub_1010438BC, v1, v2);
}

uint64_t sub_1010438BC()
{
  v1 = v0[54];

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = v0[48];
  v3 = v0[43];
  v4 = v0[44];
  v5 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = v0[44];
    v9 = v0[45];
    v11 = v0[43];
    (*(v10 + 16))(v9, v0[48], v11);
    v7 = URL.path.getter();
    v8 = v12;
    (*(v10 + 8))(v9, v11);
  }

  v13 = v0[41];
  *(inited + 56) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 64) = v14;
  if (v8)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v8)
  {
    v16 = v8;
  }

  *(inited + 32) = v15;
  *(inited + 40) = v16;
  swift_getErrorValue();
  v17 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v14;
  *(inited + 72) = v17;
  *(inited + 80) = v18;
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v5, &_mh_execute_header, v19, "Error exporting board to file %@: %@", 36, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_getErrorValue();
  Error.localizedDescription.getter();
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();

  v22 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

  [v13 presentViewController:v22 animated:1 completion:0];

  sub_10000CAAC(v0[48], &unk_1019F33C0);

  v23 = v0[1];

  return v23();
}

uint64_t sub_101043C10()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[47];
  v5 = v0[43];
  v6 = v0[44];

  sub_10000CAAC(v3, &unk_1019F33C0);
  v7 = *(v6 + 16);
  v7(v3, v4, v5);
  v2(v3, 0, 1, v5);
  sub_1005B981C(&unk_101A23C50);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146C6B0;
  *(v8 + 56) = v5;
  v9 = sub_10002C58C((v8 + 32));
  v7(v9, v4, v5);
  v10 = objc_allocWithZone(type metadata accessor for CRLSelectionAwareActivityViewController());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithActivityItems:isa applicationActivities:0];

  v13 = sub_100F7D680(v12);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v0[20] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
  v0[21] = v14;
  v0[16] = _NSConcreteStackBlock;
  v0[17] = *"";
  v0[18] = sub_100992704;
  v0[19] = &unk_1018AE1D8;
  v15 = _Block_copy(v0 + 16);
  v16 = v13;
  v17 = v1;

  [v16 setCompletionWithItemsHandler:v15];
  _Block_release(v15);

  if ([objc_opt_self() crl_padUI])
  {
    v18 = v0[42];
    v19 = v16;
    [v19 setModalPresentationStyle:7];
    sub_10000BE14(v18, (v0 + 22), &unk_1019F4D00);
    if (v0[25])
    {
      sub_100006370(0, &qword_1019F6BF0);
      if (swift_dynamicCast())
      {
        v20 = v0[40];
        v21 = [v19 popoverPresentationController];

        if (!v21)
        {
LABEL_19:

          goto LABEL_20;
        }

        [v21 setBarButtonItem:v20];
LABEL_12:

        goto LABEL_19;
      }
    }

    else
    {
      sub_10000CAAC((v0 + 22), &unk_1019F4D00);
    }

    sub_10000BE14(v0[42], (v0 + 26), &unk_1019F4D00);
    if (v0[29])
    {
      sub_100006370(0, &qword_1019F6D00);
      if (swift_dynamicCast())
      {
        v20 = v0[39];
        v22 = [v19 popoverPresentationController];
        if (v22)
        {
          v23 = v22;
          [v22 setSourceView:v20];
        }

        v21 = [v19 popoverPresentationController];

        [v21 setCanOverlapSourceViewRect:1];
        goto LABEL_12;
      }
    }

    else
    {
      sub_10000CAAC((v0 + 26), &unk_1019F4D00);
    }

    v24 = [v19 popoverPresentationController];
    if (v24)
    {
      v25 = v24;
      v26 = [v0[41] view];
      [v25 setSourceView:v26];
    }

    v27 = [v19 popoverPresentationController];
    if (v27)
    {
      v28 = v27;
      [v27 setSourceRect:{0.0, 0.0, 0.0, 0.0}];
    }

    v20 = [v19 popoverPresentationController];

    [v20 setCanOverlapSourceViewRect:1];
    goto LABEL_19;
  }

LABEL_20:
  v29 = v0[61];
  v30 = v0[57];
  v31 = v0[54];
  v32 = v0[47];
  v33 = v0[43];
  [v0[41] presentViewController:v16 animated:1 completion:0];

  v29(v32, v33);
  sub_10000CAAC(v0[48], &unk_1019F33C0);

  v34 = v0[1];

  return v34();
}

uint64_t sub_101044198()
{
  v1 = *(v0 + 456);

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 384);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = *(v0 + 352);
    v9 = *(v0 + 360);
    v11 = *(v0 + 344);
    (*(v10 + 16))(v9, *(v0 + 384), v11);
    v7 = URL.path.getter();
    v8 = v12;
    (*(v10 + 8))(v9, v11);
  }

  v13 = *(v0 + 328);
  *(inited + 56) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 64) = v14;
  if (v8)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v8)
  {
    v16 = v8;
  }

  *(inited + 32) = v15;
  *(inited + 40) = v16;
  swift_getErrorValue();
  v17 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v14;
  *(inited + 72) = v17;
  *(inited + 80) = v18;
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v5, &_mh_execute_header, v19, "Error exporting board to file %@: %@", 36, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_getErrorValue();
  Error.localizedDescription.getter();
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();

  v22 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

  [v13 presentViewController:v22 animated:1 completion:0];

  sub_10000CAAC(*(v0 + 384), &unk_1019F33C0);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1010444F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[41] = a4;
  v5[42] = a5;
  v6 = type metadata accessor for URL();
  v5[43] = v6;
  v5[44] = *(v6 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v5[48] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[49] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[50] = v7;
  v5[51] = v8;

  return _swift_task_switch(sub_101044670, v7, v8);
}

uint64_t sub_101044670()
{
  v1 = v0[48];
  v2 = v0[43];
  v3 = v0[44];
  v4 = *(v3 + 56);
  v0[52] = v4;
  v0[53] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = objc_allocWithZone(CRLTemporaryDirectory);
  v6 = String._bridgeToObjectiveC()();
  v0[36] = 0;
  v7 = [v5 initWithSignature:v6 error:v0 + 36];
  v0[54] = v7;

  v8 = v0[36];
  if (v7)
  {
    v9 = *(*(v0[41] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardActor);
    v0[55] = v9;
    v10 = v8;

    return _swift_task_switch(sub_101044B00, v9, 0);
  }

  else
  {
    v11 = v8;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v12 = v0[48];
    v13 = v0[43];
    v14 = v0[44];
    v15 = static OS_os_log.crlError;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    if ((*(v14 + 48))(v12, 1, v13))
    {
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v20 = v0[44];
      v19 = v0[45];
      v21 = v0[43];
      (*(v20 + 16))(v19, v0[48], v21);
      v17 = URL.path.getter();
      v18 = v22;
      (*(v20 + 8))(v19, v21);
    }

    v23 = v0[41];
    *(inited + 56) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 64) = v24;
    if (v18)
    {
      v25 = v17;
    }

    else
    {
      v25 = 0;
    }

    v26 = 0xE000000000000000;
    if (v18)
    {
      v26 = v18;
    }

    *(inited + 32) = v25;
    *(inited + 40) = v26;
    swift_getErrorValue();
    v27 = Error.localizedDescription.getter();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v24;
    *(inited + 72) = v27;
    *(inited + 80) = v28;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v29, "Error exporting board drawings to file %@: %@", 45, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_getErrorValue();
    Error.localizedDescription.getter();
    v30 = String._bridgeToObjectiveC()();
    v31 = String._bridgeToObjectiveC()();

    v32 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

    [v23 presentViewController:v32 animated:1 completion:0];

    sub_10000CAAC(v0[48], &unk_1019F33C0);

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_101044B00()
{
  v1 = *(v0 + 440);
  type metadata accessor for CRLImmutableBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 448) = v4;
  *v4 = v0;
  v4[1] = sub_101044BFC;

  return sub_100797820(v2, v1 + v3, 1);
}

uint64_t sub_101044BFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[57] = a1;
  v4[58] = v1;

  v5 = v3[55];
  if (v1)
  {
    v6 = sub_101045040;
    v7 = 0;
  }

  else
  {

    v5 = v4[50];
    v7 = v4[51];
    v6 = sub_101044D90;
  }

  return _swift_task_switch(v6, v5, v7);
}

uint64_t sub_101044D90()
{
  v1 = v0;
  v2 = [*(v0 + 432) URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = swift_task_alloc();
  v1[59] = v3;
  *v3 = v1;
  v3[1] = sub_101044E8C;
  v4 = v1[57];
  v6 = v1[46];
  v5 = v1[47];

  return sub_100ACF6A4(v5, v4, v6);
}

uint64_t sub_101044E8C()
{
  v2 = *v1;
  v2[60] = v0;

  v3 = v2[46];
  v4 = v2[44];
  v5 = v2[43];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = v2[50];
    v10 = v2[51];
    v11 = sub_1010459AC;
  }

  else
  {
    v2[61] = v7;
    v2[62] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = v2[50];
    v10 = v2[51];
    v11 = sub_101045424;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_101045040()
{

  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return _swift_task_switch(sub_1010450D0, v1, v2);
}

uint64_t sub_1010450D0()
{
  v1 = v0[54];

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = v0[48];
  v3 = v0[43];
  v4 = v0[44];
  v5 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = v0[44];
    v9 = v0[45];
    v11 = v0[43];
    (*(v10 + 16))(v9, v0[48], v11);
    v7 = URL.path.getter();
    v8 = v12;
    (*(v10 + 8))(v9, v11);
  }

  v13 = v0[41];
  *(inited + 56) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 64) = v14;
  if (v8)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v8)
  {
    v16 = v8;
  }

  *(inited + 32) = v15;
  *(inited + 40) = v16;
  swift_getErrorValue();
  v17 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v14;
  *(inited + 72) = v17;
  *(inited + 80) = v18;
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v5, &_mh_execute_header, v19, "Error exporting board drawings to file %@: %@", 45, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_getErrorValue();
  Error.localizedDescription.getter();
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();

  v22 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

  [v13 presentViewController:v22 animated:1 completion:0];

  sub_10000CAAC(v0[48], &unk_1019F33C0);

  v23 = v0[1];

  return v23();
}

uint64_t sub_101045424()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[47];
  v5 = v0[43];
  v6 = v0[44];

  sub_10000CAAC(v3, &unk_1019F33C0);
  v7 = *(v6 + 16);
  v7(v3, v4, v5);
  v2(v3, 0, 1, v5);
  sub_1005B981C(&unk_101A23C50);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146C6B0;
  *(v8 + 56) = v5;
  v9 = sub_10002C58C((v8 + 32));
  v7(v9, v4, v5);
  v10 = objc_allocWithZone(type metadata accessor for CRLSelectionAwareActivityViewController());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithActivityItems:isa applicationActivities:0];

  v13 = sub_100F7D680(v12);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v0[20] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
  v0[21] = v14;
  v0[16] = _NSConcreteStackBlock;
  v0[17] = *"";
  v0[18] = sub_100992704;
  v0[19] = &unk_1018AE228;
  v15 = _Block_copy(v0 + 16);
  v16 = v13;
  v17 = v1;

  [v16 setCompletionWithItemsHandler:v15];
  _Block_release(v15);

  if ([objc_opt_self() crl_padUI])
  {
    v18 = v0[42];
    v19 = v16;
    [v19 setModalPresentationStyle:7];
    sub_10000BE14(v18, (v0 + 22), &unk_1019F4D00);
    if (v0[25])
    {
      sub_100006370(0, &qword_1019F6BF0);
      if (swift_dynamicCast())
      {
        v20 = v0[40];
        v21 = [v19 popoverPresentationController];

        if (!v21)
        {
LABEL_19:

          goto LABEL_20;
        }

        [v21 setBarButtonItem:v20];
LABEL_12:

        goto LABEL_19;
      }
    }

    else
    {
      sub_10000CAAC((v0 + 22), &unk_1019F4D00);
    }

    sub_10000BE14(v0[42], (v0 + 26), &unk_1019F4D00);
    if (v0[29])
    {
      sub_100006370(0, &qword_1019F6D00);
      if (swift_dynamicCast())
      {
        v20 = v0[39];
        v22 = [v19 popoverPresentationController];
        if (v22)
        {
          v23 = v22;
          [v22 setSourceView:v20];
        }

        v21 = [v19 popoverPresentationController];

        [v21 setCanOverlapSourceViewRect:1];
        goto LABEL_12;
      }
    }

    else
    {
      sub_10000CAAC((v0 + 26), &unk_1019F4D00);
    }

    v24 = [v19 popoverPresentationController];
    if (v24)
    {
      v25 = v24;
      v26 = [v0[41] view];
      [v25 setSourceView:v26];
    }

    v27 = [v19 popoverPresentationController];
    if (v27)
    {
      v28 = v27;
      [v27 setSourceRect:{0.0, 0.0, 0.0, 0.0}];
    }

    v20 = [v19 popoverPresentationController];

    [v20 setCanOverlapSourceViewRect:1];
    goto LABEL_19;
  }

LABEL_20:
  v29 = v0[61];
  v30 = v0[57];
  v31 = v0[54];
  v32 = v0[47];
  v33 = v0[43];
  [v0[41] presentViewController:v16 animated:1 completion:0];

  v29(v32, v33);
  sub_10000CAAC(v0[48], &unk_1019F33C0);

  v34 = v0[1];

  return v34();
}

uint64_t sub_1010459AC()
{
  v1 = *(v0 + 456);

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 384);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = *(v0 + 352);
    v9 = *(v0 + 360);
    v11 = *(v0 + 344);
    (*(v10 + 16))(v9, *(v0 + 384), v11);
    v7 = URL.path.getter();
    v8 = v12;
    (*(v10 + 8))(v9, v11);
  }

  v13 = *(v0 + 328);
  *(inited + 56) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 64) = v14;
  if (v8)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v8)
  {
    v16 = v8;
  }

  *(inited + 32) = v15;
  *(inited + 40) = v16;
  swift_getErrorValue();
  v17 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v14;
  *(inited + 72) = v17;
  *(inited + 80) = v18;
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v5, &_mh_execute_header, v19, "Error exporting board drawings to file %@: %@", 45, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_getErrorValue();
  Error.localizedDescription.getter();
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();

  v22 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

  [v13 presentViewController:v22 animated:1 completion:0];

  sub_10000CAAC(*(v0 + 384), &unk_1019F33C0);

  v23 = *(v0 + 8);

  return v23();
}

void sub_10104605C()
{
  sub_10101D0E4(0);
  v1 = v0;
  v2 = v1;
  while (1)
  {
    v3 = v2;
    v10 = [v2 presentedViewController];

    if (!v10)
    {
      break;
    }

    type metadata accessor for CRLScenesViewController_iv();
    if (swift_dynamicCastClass())
    {
      goto LABEL_10;
    }

    type metadata accessor for CRLCompactScenesViewController_i();
    v4 = swift_dynamicCastClass();
    v2 = v10;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  v10 = [objc_opt_self() sharedKeyboardMonitor];
  [v10 onScreenHeight];
  if (v5 <= 0.0)
  {
LABEL_10:
    v2 = v10;
    goto LABEL_11;
  }

  [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] scrollCurrentSelectionToVisibleWithOptions:0];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  [v6 setNeedsLayout];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 layoutIfNeeded];

  v2 = v9;
LABEL_11:
}

double sub_1010462B8(double a1, double a2, double a3, double a4)
{
  v9 = [v4 view];
  v10 = 0.0;
  if (v9)
  {
    v11 = v9;
    v12 = [v9 window];
    if (v12 && (v13 = v12, v14 = [v12 screen], v13, v15 = objc_msgSend(v14, "coordinateSpace"), v14, v15))
    {
      [v11 convertRect:v15 fromCoordinateSpace:{a1, a2, a3, a4}];
      x = v24.origin.x;
      y = v24.origin.y;
      width = v24.size.width;
      height = v24.size.height;
      MinY = CGRectGetMinY(v24);
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      MaxY = CGRectGetMaxY(v25);
      [v11 bounds];
      v22 = CGRectGetMaxY(v26);
      swift_unknownObjectRelease();

      if (MaxY >= v22)
      {
        if (v22 - MinY < 0.0)
        {
          return 0.0;
        }

        else
        {
          return v22 - MinY;
        }
      }
    }

    else
    {
    }
  }

  return v10;
}

uint64_t sub_101046420(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010464B8, v4, v3);
}

uint64_t sub_1010464B8()
{
  v1 = v0[9];

  v2 = [*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) editingCoordinator];
  v3 = v2;
  if (v2)
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = *&v2[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

    sub_1005B981C(&unk_1019F4D60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101465920;
    *(v7 + 32) = v5;
    v8 = objc_allocWithZone(CRLiOSItemProviderItemSource);
    sub_100006370(0, &unk_101A23D20);
    v9 = v5;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v8 initWithItemProviders:isa];

    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    v0[6] = sub_10105A38C;
    v0[7] = v12;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = *"";
    v0[4] = sub_101213480;
    v0[5] = &unk_1018AE408;
    v13 = _Block_copy(v0 + 2);
    v14 = v4;

    v15 = [v11 loadProvidersForImportedBoardItemsUsingBoardItemFactory:v6 WithLoadHandler:v13];

    _Block_release(v13);
  }

  v16 = v0[1];

  return v16(v3 != 0);
}

void sub_1010466DC(uint64_t a1, char *a2)
{
  v4 = [*&a2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] editingCoordinator];
  if (v4)
  {
    v5 = v4;
    v13 = *&v4[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

    if (a1)
    {
      v6 = objc_allocWithZone(CRLPasteboardMultipleImportableBoardItemProvider);
      sub_1005B981C(&qword_1019F8DC0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v8 = [v6 initWithImportableBoardItemProviders:isa];

      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = a2;
      aBlock[4] = sub_10105A394;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018AE458;
      v10 = _Block_copy(aBlock);
      v11 = v8;
      v12 = a2;

      [v11 provideBoardItemsWithFactory:v13 completionHandler:v10];
      _Block_release(v10);
    }

    else
    {
    }
  }
}

uint64_t sub_101046A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101046AB4, v5, v4);
}

uint64_t sub_101046AB4()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_101046B78;
  v7 = v0[2];

  return sub_101046420(v7);
}

uint64_t sub_101046B78(char a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

void sub_101046CD8(void *a1, char *a2)
{
  v3 = [a1 boardItems];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  type metadata accessor for CRLBoardItem(0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_4:
      v6 = [*&a2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] layerHost];
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = a2;
        *(v8 + 24) = v5;
        v11[4] = sub_10105A39C;
        v11[5] = v8;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = *"";
        v11[2] = sub_100007638;
        v11[3] = &unk_1018AE4A8;
        v9 = _Block_copy(v11);
        v10 = a2;

        [v7 continueAsynchronousWorkOnMainThreadUsingBlock:v9];
        swift_unknownObjectRelease();
        _Block_release(v9);
        return;
      }
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }
}

uint64_t sub_101046E68(uint64_t a1, unint64_t a2)
{
  sub_101059690(a2);
  sub_101013118();
  sub_1006799F0(a2, 0, 0);
}

void sub_101046EC0()
{
  v1 = v0;
  sub_10103A51C();
  v2 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  [v2 endEditing];
  [v1 endDrawingModeIfNeeded];
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong dismissFindNavigator];

  [v2 visibleUnscaledRect];
  v4 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
  v5 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
  v8 = v6 / v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v5;
  static Published.subscript.getter();

  if (!sub_1007C87EC(v8, v43[0]))
  {
    v10 = *&v1[v4];
    swift_getKeyPath();
    swift_getKeyPath();
    v43[0] = v8;
    v11 = v10;
    static Published.subscript.setter();
  }

  v12 = *&v1[v4];
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  v14 = static Published.subscript.modify();
  *v15 = !*v15;
  v14(v43, 0);

  v16 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
  if (v16)
  {
    v17 = v16;
    v18 = [v1 presentedViewController];
    if (v18)
    {
      v19 = v18;
      sub_100006370(0, &qword_101A10AB0);
      v20 = v17;
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        v22 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesPresenter];
        if (v22)
        {
          v23 = v22;
          sub_100698F6C(v20);
        }

LABEL_14:

        return;
      }
    }
  }

  v24 = [v1 traitCollection];
  if ([v24 horizontalSizeClass] == 1)
  {

LABEL_12:
    v26 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesPresenter];
    if (!v26)
    {
      return;
    }

    v20 = v26;
    sub_100698F6C(v1);
    goto LABEL_14;
  }

  v25 = [objc_opt_self() crl_phoneUI];

  if (v25)
  {
    goto LABEL_12;
  }

  v27 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController;
  v28 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController];
  if (v28)
  {
    v29 = [v28 view];
    if (v29)
    {
      v20 = v29;
      v30 = *&v1[v27];
      if (v30)
      {
        v31 = v30;
        v32 = sub_100F25480();

        v33 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
        v34 = [v33 miniFormatterPresenter];
        if (v34)
        {
          v35 = v34;
          if ([v34 isPresentingMiniFormatter])
          {
            [v35 dismissMiniFormatter];
          }

          swift_unknownObjectRelease();
        }

        sub_1005B981C(&unk_1019F4D60);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_101465920;
        *(v36 + 32) = v20;
        v20 = v20;
        v37 = [v33 passthroughViewsToAllowCanvasInteractionDuringPopoverPresentation];
        if (!v37)
        {
          __break(1u);
          return;
        }

        v38 = v37;
        sub_100006370(0, &qword_1019F6D00);
        v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v43[0] = *&v36;
        sub_1007993B0(v39);
        v40 = *&v43[0];
        v41 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPresenter];
        if (v41)
        {
          v42 = v41;
          sub_100697B40(v1, v32, v40);
        }

        else
        {
        }
      }

      goto LABEL_14;
    }
  }
}

uint64_t sub_101047340(uint64_t a1, char a2)
{
  *(v3 + 536) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  *(v3 + 256) = type metadata accessor for CRLPreviewImages.Item(0);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  *(v3 + 280) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v3 + 288) = v4;
  *(v3 + 296) = *(v4 - 8);
  *(v3 + 304) = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = type metadata accessor for MainActor();
  *(v3 + 328) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 336) = v6;
  *(v3 + 344) = v5;

  return _swift_task_switch(sub_1010474D0, v6, v5);
}

uint64_t sub_1010474D0()
{
  v1 = *(*(v0 + 248) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v2 = [v1 board];
  *(v0 + 352) = v2;
  if (v2)
  {
    v3 = v2;
    v5 = *(v0 + 240);
    v4 = *(v0 + 248);
    v6 = [v4 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    *(v0 + 537) = sub_101052E24(v7);
    [v1 visibleUnscaledRect];
    *(v0 + 360) = sub_100121F30(1, v8, v9, *(v5 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect), *(v5 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8), *(v5 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16), *(v5 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24));
    *(v0 + 368) = v10;
    *(v0 + 376) = v11;
    *(v0 + 384) = v12;
    v13 = [v4 view];
    if (!v13)
    {
      __break(1u);
      return _swift_task_switch(v13, v14, v15);
    }

    v16 = v13;
    v17 = [v13 window];

    if (v17)
    {
      v18 = [v17 windowScene];

      if (v18)
      {
        v19 = [v18 delegate];
        *(v0 + 392) = v19;

        if (v19)
        {
          type metadata accessor for CRLiOSSceneDelegate();
          v20 = swift_dynamicCastClass();
          *(v0 + 400) = v20;
          if (v20)
          {
            v21 = *(v0 + 312);
            v22 = *(v0 + 304);
            v23 = *(v0 + 280);
            *(v0 + 408) = OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID;
            v24 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
            v25 = *&v3[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
            v26 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
            swift_beginAccess();
            sub_100050004(v25 + v26, v23, type metadata accessor for CRLBoardCRDTData);
            swift_unknownObjectRetain();
            sub_1005B981C(&unk_1019F5250);
            CRRegister.wrappedValue.getter();
            sub_10003D7BC(v23, type metadata accessor for CRLBoardCRDTData);
            v27 = (*&v3[v24] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
            v29 = *v27;
            v28 = v27[1];

            sub_10084BD4C(v22, v29, v28, v21);
            *(v0 + 416) = static MainActor.shared.getter();
            v30 = dispatch thunk of Actor.unownedExecutor.getter();
            v15 = v31;
            *(v0 + 424) = v30;
            *(v0 + 432) = v31;
            v13 = sub_1010479CC;
            v14 = v30;

            return _swift_task_switch(v13, v14, v15);
          }

          swift_unknownObjectRelease();
        }
      }
    }

    v32 = *(v0 + 352);
    v33 = *(v0 + 240);
    sub_1005B981C(&unk_1019F4D60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101465920;
    *(inited + 32) = v33;
    v35 = v33;
    sub_1005C1D24(inited);
    v37 = v36;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_101048558(v37);
  }

  else
  {

    if (qword_1019F21D0 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.crlScenes;
    sub_1005B981C(&qword_1019F54E0);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_10146C6B0;
    v40 = UUID.uuidString.getter();
    v42 = v41;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_1000053B0();
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v43, "Failed to generate thumbnail image for scene %{public} due to a nil board", 73, 2, v39);
    swift_setDeallocating();
    sub_100005070(v39 + 32);
  }

  v44 = *(v0 + 8);

  return v44(0);
}

uint64_t sub_1010479CC()
{
  sub_1000505F0();
  v0[55] = v1;
  if (v1)
  {
    v0[56] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v0[57] = v4;
    v0[58] = v5;
    v1 = sub_101047A6C;
    v2 = v4;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_101047A6C()
{
  v1 = *(v0 + 408);
  v21 = *(v0 + 537);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 272);
  v20 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = sub_1005B981C(&unk_1019FB780);
  v8 = *(v7 + 48);
  v9 = (v5 + *(v7 + 64));
  v18 = *(v0 + 376);
  v19 = *(v0 + 360);
  sub_100050004(v2, v5, type metadata accessor for CRLBoardIdentifier);
  (*(v4 + 16))(v5 + v8, v6 + v1, v3);
  *v9 = v19;
  v9[1] = v18;
  swift_storeEnumTagMultiPayload();
  sub_100050004(v5, v20, type metadata accessor for CRLPreviewImages.Item);
  if (v21)
  {
    v10 = 0x4052C00000000000;
  }

  else
  {
    v10 = 0x4049000000000000;
  }

  v11 = type metadata accessor for CRLPreviewImages.LookupKey(0);
  v12 = objc_allocWithZone(v11);
  sub_100050004(v20, &v12[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item], type metadata accessor for CRLPreviewImages.Item);
  v13 = &v12[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
  *v13 = v10;
  *(v13 + 1) = v10;
  v13[16] = 0;
  *&v12[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale] = 0x4000000000000000;
  *(v0 + 224) = v12;
  *(v0 + 232) = v11;
  v14 = objc_msgSendSuper2((v0 + 224), "init");
  *(v0 + 472) = v14;
  sub_10003D7BC(v20, type metadata accessor for CRLPreviewImages.Item);
  v15 = swift_task_alloc();
  *(v0 + 480) = v15;
  *v15 = v0;
  v15[1] = sub_101047CA8;
  v16 = *(v0 + 536);

  return sub_1006DE618(v14, v16);
}

uint64_t sub_101047CA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 488) = v1;

  if (v1)
  {
    v6 = v4[57];
    v7 = v4[58];

    return _swift_task_switch(sub_101047F74, v6, v7);
  }

  else
  {
    v4[62] = a1;
    v8 = swift_task_alloc();
    v4[63] = v8;
    *v8 = v5;
    v8[1] = sub_101047E28;

    return sub_1006C6600();
  }
}

uint64_t sub_101047E28(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v5 = v4[57];
    v6 = v4[58];
    v7 = sub_10104827C;
  }

  else
  {
    v4[65] = a1;
    v5 = v4[57];
    v6 = v4[58];
    v7 = sub_101048018;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_101047F74()
{
  *(v0 + 528) = *(v0 + 488);
  v1 = *(v0 + 440);
  v2 = *(v0 + 272);

  sub_10003D7BC(v2, type metadata accessor for CRLPreviewImages.Item);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);

  return _swift_task_switch(sub_101048320, v3, v4);
}

uint64_t sub_101048018()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 272);

  sub_10003D7BC(v2, type metadata accessor for CRLPreviewImages.Item);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);

  return _swift_task_switch(sub_1010480B4, v3, v4);
}

uint64_t sub_1010480B4()
{
  v1 = v0[39];

  swift_unknownObjectRelease();
  sub_10003D7BC(v1, type metadata accessor for CRLBoardIdentifier);
  v2 = v0[42];
  v3 = v0[43];

  return _swift_task_switch(sub_101048144, v2, v3);
}

uint64_t sub_101048144()
{
  v1 = v0[65];

  v2 = v0[50];
  v3 = v0[44];
  v4 = v0[30];
  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = v4;
  v6 = v4;
  sub_1005C1D24(inited);
  v8 = v7;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_101048558(v8);

  v9 = v0[1];

  return v9(v1);
}

uint64_t sub_10104827C()
{
  *(v0 + 528) = *(v0 + 512);
  v1 = *(v0 + 440);
  v2 = *(v0 + 272);

  sub_10003D7BC(v2, type metadata accessor for CRLPreviewImages.Item);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);

  return _swift_task_switch(sub_101048320, v3, v4);
}

uint64_t sub_101048320()
{
  v1 = v0[39];

  swift_unknownObjectRelease();
  sub_10003D7BC(v1, type metadata accessor for CRLBoardIdentifier);
  v2 = v0[42];
  v3 = v0[43];

  return _swift_task_switch(sub_1010483B0, v2, v3);
}

uint64_t sub_1010483B0()
{
  swift_unknownObjectRelease();

  if (qword_1019F21D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = static OS_os_log.crlScenes;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v4 = UUID.uuidString.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Failed to generate thumbnail image for scene %{public}", 54, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  v8 = *(v0 + 8);

  return v8(0);
}

void sub_101048558(uint64_t a1)
{
  v2 = v1;
  v67 = type metadata accessor for UUID();
  v63 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v54 - v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLSceneInfo();
    sub_100006760(&qword_101A28670, type metadata accessor for CRLSceneInfo);
    Set.Iterator.init(_cocoa:)();
    a1 = v70;
    v7 = v71;
    v8 = v72;
    v9 = v73;
    v10 = v74;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v12 = ~v11;
    v13 = -v11;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(a1 + 56);

    v8 = v12;
    v9 = 0;
  }

  v54 = v8;
  v15 = (v8 + 64) >> 6;
  v65 = (v63 + 32);
  v58 = v2;
  v57 = a1;
  v56 = v7;
  v55 = v15;
  while (a1 < 0)
  {
    v26 = __CocoaSet.Iterator.next()();
    if (!v26 || (v68 = v26, type metadata accessor for CRLSceneInfo(), swift_dynamicCast(), v25 = v69, v23 = v9, v24 = v10, !v69))
    {
LABEL_39:
      sub_100035F90();
      return;
    }

LABEL_19:
    v61 = v23;
    v27 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    [v27 visibleUnscaledRect];
    v59 = v25;
    v30 = sub_100121F30(1, v28, v29, *&v25[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect], *&v25[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8], *&v25[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16], *&v25[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24]);
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [v27 canvas];
    v38 = [v37 layoutController];

    v39 = [v38 layoutsInRect:1 deep:{v30, v32, v34, v36}];
    sub_100006370(0, &qword_101A287B0);
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v40 >> 62)
    {
      v41 = _CocoaArrayWrapper.endIndex.getter();
      v60 = v24;
      if (v41)
      {
LABEL_21:
        v42 = 0;
        v43 = v40 & 0xC000000000000001;
        v44 = v40 & 0xFFFFFFFFFFFFFF8;
        v16 = _swiftEmptyArrayStorage;
        v45 = &selRef_ignoreUrl_;
        v64 = v40;
        while (1)
        {
          if (v43)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v42 >= *(v44 + 16))
            {
              goto LABEL_41;
            }

            v46 = *(v40 + 8 * v42 + 32);
          }

          v47 = v46;
          v48 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if ([v46 v45[130]])
          {
            type metadata accessor for CRLBoardItem(0);
            v49 = swift_dynamicCastClass();
            if (v49)
            {
              v50 = v62;
              (*((swift_isaMask & *v49) + 0x88))();
              swift_unknownObjectRelease();

              v51 = *v65;
              (*v65)(v66, v50, v67);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v16 = sub_100B356D0(0, *(v16 + 2) + 1, 1, v16);
              }

              v53 = *(v16 + 2);
              v52 = *(v16 + 3);
              v45 = &selRef_ignoreUrl_;
              if (v53 >= v52 >> 1)
              {
                v16 = sub_100B356D0(v52 > 1, v53 + 1, 1, v16);
              }

              *(v16 + 2) = v53 + 1;
              v51(&v16[((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v53], v66, v67);
              v40 = v64;
            }

            else
            {

              swift_unknownObjectRelease();
            }
          }

          else
          {
          }

          ++v42;
          if (v48 == v41)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v60 = v24;
      if (v41)
      {
        goto LABEL_21;
      }
    }

    v16 = _swiftEmptyArrayStorage;
LABEL_9:

    v17 = v59;
    v18 = sub_100E93A84(v16);

    v19 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_sceneToContentDict;
    v2 = v58;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v2 + v19);
    *(v2 + v19) = 0x8000000000000000;
    sub_100AA1784(v18, v17, isUniquelyReferenced_nonNull_native);

    *(v2 + v19) = v68;
    swift_endAccess();

    v10 = v60;
    v9 = v61;
    a1 = v57;
    v7 = v56;
    v15 = v55;
  }

  v21 = v9;
  v22 = v10;
  v23 = v9;
  if (v10)
  {
LABEL_15:
    v24 = (v22 - 1) & v22;
    v25 = *(*(a1 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      goto LABEL_39;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v15)
    {
      goto LABEL_39;
    }

    v22 = *(v7 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_15;
    }
  }

LABEL_42:
  __break(1u);
}

id sub_101048BD8()
{
  v1 = [v0 traitCollection];
  if ([v1 horizontalSizeClass] == 1)
  {

    goto LABEL_4;
  }

  v2 = [objc_opt_self() crl_phoneUI];

  if (v2)
  {
LABEL_4:
    result = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesPresenter];
    if (!result)
    {
      return result;
    }

    return [result isBeingDismissed];
  }

  result = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPresenter];
  if (!result)
  {
    return result;
  }

  return [result isBeingDismissed];
}

void sub_101048C88(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  v13[4] = sub_10104DDD0;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = *"";
  v13[2] = sub_100007638;
  v13[3] = &unk_1018ADEB8;
  v12 = _Block_copy(v13);

  [a1 presentViewController:a2 animated:(a3 & 1) == 0 completion:v12];
  _Block_release(v12);
}

void sub_101048DB0(uint64_t a1, void (*a2)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_willPresentCompactScenesNavigator) = 0;
    v4 = Strong;
    a2([*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) unobscuredFrameDidChange]);
  }
}

void sub_101048E40(void *a1)
{
  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_presentedSceneAlert;
  if (*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_presentedSceneAlert])
  {
    if (qword_1019F21D0 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.crlScenes;
    v4 = static os_log_type_t.default.getter();

    sub_100005404(v3, &_mh_execute_header, v4, "Attempt to capture a scene while an alert was still presented.", 62, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v5 = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong dismissFindNavigator];

    v8 = [objc_opt_self() isReduceMotionEnabled];
    sub_10102E160(v8 ^ 1, 0, 0);
    v9 = sub_101066BD8();
    if (v9)
    {
      v69 = v2;
      if (v9 == 1)
      {
        v10 = objc_opt_self();
        v11 = [v10 mainBundle];
        v12 = String._bridgeToObjectiveC()();
        v13 = String._bridgeToObjectiveC()();
        v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = [v10 mainBundle];
        v16 = String._bridgeToObjectiveC()();
        v17 = String._bridgeToObjectiveC()();
        v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = String._bridgeToObjectiveC()();

        v20 = String._bridgeToObjectiveC()();

        v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

        v22 = [objc_opt_self() mainBundle];
        v23 = String._bridgeToObjectiveC()();
        v24 = String._bridgeToObjectiveC()();
        v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = swift_allocObject();
        *(v26 + 16) = v5;
        v27 = v5;
        v28 = String._bridgeToObjectiveC()();

        v74 = sub_10104DDDC;
        v75 = v26;
        aBlock = _NSConcreteStackBlock;
        v71 = *"";
        v72 = sub_10068B39C;
        v73 = &unk_1018ADF08;
        v29 = _Block_copy(&aBlock);

        v30 = objc_opt_self();
        v31 = [v30 actionWithTitle:v28 style:0 handler:v29];
        _Block_release(v29);

        v32 = [objc_opt_self() mainBundle];
        v33 = String._bridgeToObjectiveC()();
        v55 = String._bridgeToObjectiveC()();
        v56 = [v32 localizedStringForKey:v33 value:v55 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = swift_allocObject();
        *(v57 + 16) = v27;
        *(v57 + 24) = a1;
        v58 = a1;
        v59 = v27;
        v60 = String._bridgeToObjectiveC()();

        v74 = sub_10105B510;
        v75 = v57;
        aBlock = _NSConcreteStackBlock;
        v71 = *"";
        v72 = sub_10068B39C;
        v73 = &unk_1018ADF58;
      }

      else
      {
        v34 = objc_opt_self();
        v35 = [v34 mainBundle];
        v36 = String._bridgeToObjectiveC()();
        v37 = String._bridgeToObjectiveC()();
        v38 = [v35 localizedStringForKey:v36 value:v37 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = [v34 mainBundle];
        v40 = String._bridgeToObjectiveC()();
        v41 = String._bridgeToObjectiveC()();
        v42 = [v39 localizedStringForKey:v40 value:v41 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = String._bridgeToObjectiveC()();

        v44 = String._bridgeToObjectiveC()();

        v21 = [objc_opt_self() alertControllerWithTitle:v43 message:v44 preferredStyle:1];

        v45 = [objc_opt_self() mainBundle];
        v46 = String._bridgeToObjectiveC()();
        v47 = String._bridgeToObjectiveC()();
        v48 = [v45 localizedStringForKey:v46 value:v47 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = swift_allocObject();
        *(v49 + 16) = v5;
        v50 = v5;
        v51 = String._bridgeToObjectiveC()();

        v74 = sub_10105B524;
        v75 = v49;
        aBlock = _NSConcreteStackBlock;
        v71 = *"";
        v72 = sub_10068B39C;
        v73 = &unk_1018ADFA8;
        v52 = _Block_copy(&aBlock);

        v30 = objc_opt_self();
        v31 = [v30 actionWithTitle:v51 style:0 handler:v52];
        _Block_release(v52);

        v53 = [objc_opt_self() mainBundle];
        v54 = String._bridgeToObjectiveC()();
        v62 = String._bridgeToObjectiveC()();
        v63 = [v53 localizedStringForKey:v54 value:v62 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = swift_allocObject();
        *(v64 + 16) = v50;
        *(v64 + 24) = a1;
        v65 = a1;
        v59 = v50;
        v60 = String._bridgeToObjectiveC()();

        v74 = sub_101052C70;
        v75 = v64;
        aBlock = _NSConcreteStackBlock;
        v71 = *"";
        v72 = sub_10068B39C;
        v73 = &unk_1018ADFF8;
      }

      v61 = _Block_copy(&aBlock);

      v66 = [v30 actionWithTitle:v60 style:0 handler:v61];
      _Block_release(v61);

      [v21 addAction:v31];
      [v21 addAction:v66];
      [v21 setPreferredAction:v31];
      v67 = *&v5[v69];
      *&v5[v69] = v21;
      v68 = v21;

      sub_1011047E4(v68);
      [v59 presentViewController:v68 animated:1 completion:0];
    }

    else
    {

      sub_101049A50(a1, v5);
    }
  }
}

void sub_101049A50(char *a1, char *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v101 - v9;
  v11 = [a2 traitCollection];
  if ([v11 horizontalSizeClass] == 1)
  {
    v106 = 1;
  }

  else
  {
    v106 = [objc_opt_self() crl_phoneUI];
  }

  v107 = v10;
  if (a1)
  {
    v104 = *(v5 + 16);
    v104(v10, &a1[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID], v4);
    v12 = *&a2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
    Scene = a1;
    [v12 visibleUnscaledRect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v102 = type metadata accessor for CRLCommandRecaptureScene();
    v21 = objc_allocWithZone(v102);
    v105 = a2;
    v22 = v21;
    v23 = &v21[OBJC_IVAR____TtC8Freeform24CRLCommandRecaptureScene_actionString];
    v24 = [objc_opt_self() mainBundle];
    v25 = v4;
    v26 = String._bridgeToObjectiveC()();
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    v101 = a1;
    v29 = v28;
    v30 = [v24 localizedStringForKey:v26 value:v27 table:v28];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    *v23 = v31;
    v23[1] = v33;
    v34 = Scene;
    v35 = v107;
    v104(&v22[OBJC_IVAR____TtC8Freeform24CRLCommandRecaptureScene_sceneID], v107, v25);
    v36 = &v22[OBJC_IVAR____TtC8Freeform24CRLCommandRecaptureScene_newSavedRect];
    *v36 = v14;
    *(v36 + 1) = v16;
    *(v36 + 2) = v18;
    *(v36 + 3) = v20;
    v37 = v105;
    v108.receiver = v22;
    v108.super_class = v102;
    v38 = objc_msgSendSuper2(&v108, "init");
    (*(v5 + 8))(v35, v25);
    v39 = *(*(v37 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
    sub_100888700(v38, 0, 0, 4, 0);

    v40 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
    v41 = *(v37 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);
    swift_getKeyPath();
    swift_getKeyPath();
    v42 = v41;
    static Published.subscript.getter();

    v43 = sub_10100F338(v34, v109, type metadata accessor for CRLSceneInfo);
    LOBYTE(v42) = v44;

    if ((v42 & 1) == 0)
    {
      v45 = *(v37 + v40);
      swift_getKeyPath();
      swift_getKeyPath();
      v109 = v101;
      v34 = v34;
      v46 = v45;
      static Published.subscript.setter();
      sub_1010193C0();
      v47 = v37 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex;
      *v47 = v43;
      *(v47 + 8) = 0;
      sub_10104A3B0(v106);
    }
  }

  else
  {
    UUID.init()();
    v48 = v5;
    v104 = *(v5 + 16);
    v104(v10, v8, v4);
    [*&a2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] visibleUnscaledRect];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    Scene = type metadata accessor for CRLCommandCreateScene();
    v57 = objc_allocWithZone(Scene);
    v102 = &v57[OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_actionString];
    v58 = [objc_opt_self() mainBundle];
    v105 = v8;
    v59 = v58;
    v60 = String._bridgeToObjectiveC()();
    v61 = String._bridgeToObjectiveC()();
    v62 = v4;
    v63 = String._bridgeToObjectiveC()();
    v64 = a2;
    v65 = [v59 localizedStringForKey:v60 value:v61 table:v63];

    v66 = v62;
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = v64;
    v71 = v102;
    *v102 = v67;
    *(v71 + 1) = v69;
    v72 = v107;
    v104(&v57[OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_sceneID], v107, v66);
    v73 = &v57[OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_savedRect];
    *v73 = v50;
    *(v73 + 1) = v52;
    *(v73 + 2) = v54;
    *(v73 + 3) = v56;
    v110.receiver = v57;
    v110.super_class = Scene;
    v74 = objc_msgSendSuper2(&v110, "init");
    v75 = *(v48 + 8);
    v107 = (v48 + 8);
    v75(v72, v66);
    v76 = *&v70[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator];
    v77 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController;
    v78 = *(v76 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
    sub_10088E3FC(0);

    v79 = *(v76 + v77);
    sub_100888700(v74, 0, 0, 4, 0);

    v80 = *(v76 + v77);
    sub_10088E600(0);

    v81 = *(v76 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v82 = v105;
    v83 = sub_100EC94FC(v105);

    if (v83)
    {
      v104 = v75;
      v84 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
      v85 = *&v70[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
      swift_getKeyPath();
      swift_getKeyPath();
      v86 = v85;
      static Published.subscript.getter();

      v87 = sub_10100F338(v83, v109, type metadata accessor for CRLSceneInfo);
      v89 = v88;

      if ((v89 & 1) == 0)
      {
        v96 = *&v70[v84];
        swift_getKeyPath();
        swift_getKeyPath();
        v109 = v83;
        v97 = v66;
        v98 = v83;
        v99 = v96;
        static Published.subscript.setter();
        sub_1010193C0();
        v100 = &v70[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex];
        *v100 = v87;
        v100[8] = 0;
        sub_10104A3B0(v106);

        (v104)(v82, v97);
        return;
      }

      v75 = v104;
    }

    if (qword_1019F21D0 != -1)
    {
      swift_once();
    }

    v90 = static OS_os_log.crlScenes;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v92 = UUID.uuidString.getter();
    v94 = v93;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v92;
    *(inited + 40) = v94;
    v95 = static os_log_type_t.default.getter();
    sub_100005404(v90, &_mh_execute_header, v95, "Failed to create scene with UUID %{public}.", 43, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    v75(v82, v66);
  }
}

void sub_10104A3B0(char a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  if ((a1 & 1) == 0 || (v7 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController]) == 0)
  {
    v18 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
    sub_10091FD94();

    v19 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController];
    if (!v19)
    {
      goto LABEL_10;
    }

    *(*&v19[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState] + OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_captureIsAnimating) = 1;
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 isReduceMotionEnabled];
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    type metadata accessor for MainActor();
    v24 = v21;
    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = &protocol witness table for MainActor;
    *(v26 + 32) = v24;
    *(v26 + 40) = v22;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    sub_10064191C(0, 0, v6, &unk_1014C1F00, v26);
LABEL_9:

    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v2 presentedViewController];
  if (!v9 || (v10 = v9, sub_100006370(0, &qword_101A10AB0), v11 = v8, v12 = static NSObject.== infix(_:_:)(), v11, v10, (v12 & 1) == 0))
  {
    v27 = swift_allocObject();
    *(v27 + 16) = v8;
    v24 = v8;
    sub_1010100AC(sub_101052D94, v27);
    goto LABEL_9;
  }

  *(*&v11[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState] + OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_captureIsAnimating) = 1;
  v13 = [objc_opt_self() isReduceMotionEnabled];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = v11;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = v15;
  *(v17 + 40) = v13;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  sub_10064191C(0, 0, v6, &unk_1014C1F08, v17);

LABEL_10:
  v28 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  v29 = *(*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  sub_100EB8D4C();

  sub_1005B981C(&qword_1019F5720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 setInfosToDisplay:isa];
}

uint64_t sub_10104A7B0(char *a1)
{
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  *(*&a1[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState] + OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_captureIsAnimating) = 1;
  v5 = [objc_opt_self() isReduceMotionEnabled];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = a1;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = v7;
  *(v9 + 40) = v5;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  sub_10064191C(0, 0, v4, &unk_1014C1F10, v9);
}

void sub_10104A928(char *a1)
{
  v3 = *&a1[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect];
  v4 = *&a1[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8];
  v5 = *&a1[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16];
  v6 = *&a1[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24];
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v8 = [v7 editorController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 selectionPath];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 layerHost];
  if (v11)
  {
    v12 = [v11 miniFormatterPresenter];
    swift_unknownObjectRelease();
    if (v12 && [v12 isPresentingMiniFormatter])
    {
      [v12 dismissMiniFormatterWithAnimated:0];
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  *(v15 + 32) = v13;
  *(v15 + 40) = v12;
  *(v15 + 48) = v10;
  v16 = v10;

  v17 = a1;
  swift_unknownObjectRetain();
  sub_1008D82F4(0, 0, sub_10105313C, v15, v3, v4, v5, v6);

  v18 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  sub_1008FEE94(1);

  swift_unknownObjectRelease();
}

void sub_10104AB60(char *a1)
{
  v2 = v1;
  if ((sub_101048BD8() & 1) == 0)
  {
    v4 = [objc_opt_self() isReduceMotionEnabled];
    sub_10102E160(v4 ^ 1, 0, 0);
    v5 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
    v6 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v6;
    static Published.subscript.getter();

    if (!v17 || (type metadata accessor for CRLSceneInfo(), v8 = a1, v9 = static NSObject.== infix(_:_:)(), v17, v8, (v9 & 1) == 0))
    {
      v10 = *&v2[v5];
      swift_getKeyPath();
      swift_getKeyPath();
      v11 = v10;
      static Published.subscript.getter();

      v12 = sub_10100F338(a1, v17, type metadata accessor for CRLSceneInfo);
      LOBYTE(v11) = v13;

      if ((v11 & 1) == 0)
      {
        v14 = &v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex];
        *v14 = v12;
        v14[8] = 0;
        sub_10104A928(a1);
      }
    }

    v15 = [v2 traitCollection];
    if ([v15 horizontalSizeClass] == 1)
    {
    }

    else
    {
      v16 = [objc_opt_self() crl_phoneUI];

      if (!v16)
      {
        return;
      }
    }

    sub_1010100AC(SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0);
  }
}

void sub_10104AD84(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = a2;
    v12 = v11;
    v13 = a2;
    static Published.subscript.setter();
    sub_1010193C0();
    if ((a3 & 1) != 0 && a4)
    {
      if (a5)
      {
        [a4 presentMiniFormatterForSelectionPath:{a5, a2}];
      }
    }

    [*&v10[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] invalidateCollaboratorHUDControllers];
    sub_10104AE8C();
  }
}

void sub_10104AE8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  if (v12)
  {
    v4 = *&v12[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name];
    v3 = *&v12[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name + 8];

    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = [objc_opt_self() mainBundle];
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1005B981C(&qword_1019F54E0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_10146C6B0;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_1000053B0();
      *(v10 + 32) = v4;
      *(v10 + 40) = v3;
      static String.localizedStringWithFormat(_:_:)();

      LODWORD(v8) = UIAccessibilityAnnouncementNotification;
      v11 = String._bridgeToObjectiveC()();

      UIAccessibilityPostNotification(v8, v11);
    }

    else
    {
    }
  }
}

void sub_10104B0AC(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for CRLBoardScenesCRDTData(0);
  __chkstk_darwin(v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = *(v3 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
    v12 = *(v11 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v13 = *&v12[OBJC_IVAR____TtC8Freeform8CRLBoard_data] + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v14 = type metadata accessor for CRLBoardCRDTData(0);
    sub_100050004(v13 + *(v14 + 36), v9, type metadata accessor for CRLBoardScenesCRDTData);
    v15 = v12;

    sub_1005B981C(&qword_1019FCC98);
    CRDictionary.subscript.getter();

    sub_10003D7BC(v9, type metadata accessor for CRLBoardScenesCRDTData);
    if (v21)
    {
      if (v20[1] == a2 && v21 == a3)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          v17 = a1;

          v18 = sub_1012CBF94(v17, a2, a3);
          v19 = *(v11 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
          sub_100888700(v18, 0, 0, 4, 0);
        }
      }
    }
  }
}

void sub_10104B2F0(void *a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v4 = sub_100EC8784();

  sub_10100F338(a1, v4, type metadata accessor for CRLSceneInfo);
  LOBYTE(v3) = v5;

  if (v3)
  {
    if (qword_1019F21D0 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.crlScenes;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v8 = UUID.uuidString.getter();
    v10 = v9;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v8;
    *(inited + 40) = v10;
    v11 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v11, "Can't recapture saved rect on a scene that doesn't exist. (Scene ID: %{public}@)", 80, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
  }

  else
  {

    sub_101048E40(a1);
  }
}

uint64_t sub_10104B498(unint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v72 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v64 - v7;
  v70 = v1;
  KeyPath = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
  v10 = *(KeyPath + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v11 = sub_100EC8784();

  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v73 = i;
    v74 = a1;
    v68 = KeyPath;
    v69 = v8;
    v64 = v5;
    v67 = i & ~(i >> 63);
    if (i)
    {
      v13 = i;
      v77 = _swiftEmptyArrayStorage;
      result = sub_100776984(0, i & ~(i >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
        goto LABEL_61;
      }

      v15 = v13;
      v16 = a1;
      v17 = v3;
      v18 = v77;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = 0;
        do
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = sub_10100F338(v20, v11, type metadata accessor for CRLSceneInfo);
          v22 = v21;
          swift_unknownObjectRelease();
          v77 = v18;
          v24 = v18[2];
          v23 = v18[3];
          if (v24 >= v23 >> 1)
          {
            sub_100776984((v23 > 1), v24 + 1, 1);
            v18 = v77;
          }

          ++v19;
          v18[2] = v24 + 1;
          v25 = &v18[2 * v24];
          v25[4] = v5;
          *(v25 + 40) = v22 & 1;
        }

        while (v73 != v19);
      }

      else
      {
        v26 = (v16 + 32);
        do
        {
          v27 = *v26;
          v28 = sub_10100F338(v27, v11, type metadata accessor for CRLSceneInfo);
          v5 = v29;

          v77 = v18;
          v31 = v18[2];
          v30 = v18[3];
          if (v31 >= v30 >> 1)
          {
            sub_100776984((v30 > 1), v31 + 1, 1);
            v18 = v77;
          }

          v18[2] = v31 + 1;
          v32 = &v18[2 * v31];
          v32[4] = v28;
          *(v32 + 40) = v5 & 1;
          ++v26;
          --v15;
        }

        while (v15);
      }

      v3 = v17;
      a1 = v74;
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    v33 = *(v70 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    v34 = v33;
    static Published.subscript.getter();

    v35 = v77;
    v77 = _swiftEmptyArrayStorage;
    if (v35 >> 62)
    {
      break;
    }

    v8 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_34;
    }

LABEL_19:
    v65 = v34;
    v66 = v3;
    v3 = 0;
    v11 = 0;
    v71 = v35 & 0xC000000000000001;
    v36 = v35 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v71)
      {
        v37 = v35;
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v36 + 16))
        {
          goto LABEL_31;
        }

        v37 = v35;
        v38 = *(v35 + 8 * v3 + 32);
      }

      v5 = v38;
      KeyPath = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v76 = v38;
      __chkstk_darwin(v38);
      *(&v64 - 2) = &v76;
      if (sub_100C33540(sub_10105325C, (&v64 - 4), a1))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v74;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      v35 = v37;
      if (KeyPath == v8)
      {
        v39 = v77;
        v34 = v65;
        v3 = v66;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  KeyPath = v35;
  v8 = _CocoaArrayWrapper.endIndex.getter();
  v35 = KeyPath;
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_34:
  v39 = _swiftEmptyArrayStorage;
LABEL_35:

  sub_100B03B88(v39);

  v40 = _swiftEmptyArrayStorage;
  v41 = v69;
  if (!v73)
  {
LABEL_47:
    v53 = type metadata accessor for CRLCommandDeleteScenes();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC8Freeform22CRLCommandDeleteScenes_sceneIDs] = v40;
    v75.receiver = v54;
    v75.super_class = v53;
    v55 = objc_msgSendSuper2(&v75, "init");
    v56 = *(v68 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
    sub_100888700(v55, 0, 0, 4, 0);

    v57 = v18[2];
    if (!v57)
    {
LABEL_59:
    }

    v58 = v70 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex;
    v59 = *(v70 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex);
    v60 = *(v70 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex + 8);
    v61 = v18 + 5;
    while (1)
    {
      if (v60)
      {
        v60 = 1;
      }

      else
      {
        if ((*v61 & 1) == 0)
        {
          v62 = *(v61 - 1);
          v60 = v62 >= v59;
          if (v62 < v59)
          {
            v63 = v59 - 1;
            goto LABEL_58;
          }

          if (v62 == v59)
          {
            v63 = 0;
LABEL_58:
            *v58 = v63;
            *(v58 + 8) = v62 >= v59;
            v59 = v63;
            goto LABEL_50;
          }
        }

        v60 = 0;
      }

LABEL_50:
      v61 += 16;
      if (!--v57)
      {
        goto LABEL_59;
      }
    }
  }

  v77 = _swiftEmptyArrayStorage;
  result = sub_100776524(0, v67, 0);
  v42 = v73;
  if ((v73 & 0x8000000000000000) == 0)
  {
    v40 = v77;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v43 = 0;
      v44 = (v72 + 16);
      do
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*v44)(v41, v45 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID, v3);
        swift_unknownObjectRelease();
        v77 = v40;
        v47 = v40[2];
        v46 = v40[3];
        if (v47 >= v46 >> 1)
        {
          sub_100776524(v46 > 1, v47 + 1, 1);
          v40 = v77;
        }

        ++v43;
        v40[2] = v47 + 1;
        (*(v72 + 32))(v40 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v47, v41, v3);
      }

      while (v73 != v43);
    }

    else
    {
      v48 = (a1 + 32);
      v74 = *(v72 + 16);
      v49 = v64;
      do
      {
        v74(v49, *v48 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID, v3);
        v77 = v40;
        v50 = v3;
        v52 = v40[2];
        v51 = v40[3];
        if (v52 >= v51 >> 1)
        {
          sub_100776524(v51 > 1, v52 + 1, 1);
          v40 = v77;
        }

        v40[2] = v52 + 1;
        (*(v72 + 32))(v40 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v52, v49, v50);
        ++v48;
        --v42;
        v3 = v50;
      }

      while (v42);
    }

    goto LABEL_47;
  }

LABEL_61:
  __break(1u);
  return result;
}

void sub_10104BC24(unint64_t a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex);
  v27 = v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex;
  if (*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex + 8))
  {
    v28 = 0;
    goto LABEL_9;
  }

  v5 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v6 = sub_100EC8784();

  if (v4[1])
  {
LABEL_17:
    __break(1u);
    return;
  }

  v7 = *v4;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(v6 + 8 * v7 + 32);
LABEL_8:
  v28 = v8;

LABEL_9:
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);

  sub_100B03B88(v10);

  v11 = type metadata accessor for CRLCommandReorderScenes();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC8Freeform23CRLCommandReorderScenes_actionString];
  v14 = [objc_opt_self() mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *v13 = v19;
  v13[1] = v21;
  *&v12[OBJC_IVAR____TtC8Freeform23CRLCommandReorderScenes_reorderedScenes] = a1;
  v29.receiver = v12;
  v29.super_class = v11;

  v22 = objc_msgSendSuper2(&v29, "init");
  v23 = *(*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
  sub_100888700(v22, 0, 0, 4, 0);

  if (v28)
  {
    v24 = sub_10100F338(v28, a1, type metadata accessor for CRLSceneInfo);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      *v27 = v24;
      *(v27 + 8) = 0;
    }
  }

  else
  {
  }
}

void sub_10104BEF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF;
  if (v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF])
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlDefault;
    v9 = static os_log_type_t.default.getter();

    sub_100005404(v8, &_mh_execute_header, v9, "Already exporting to PDF. Skipping.", 35, 2, _swiftEmptyArrayStorage);
    return;
  }

  v10 = *(*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardActor);

  v40 = [v1 view];
  if (!v40)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = [v1 view];
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = v11;
  [v11 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [v2 traitCollection];
  v22 = [v21 crl_isCompactWidth];

  if (v22)
  {
LABEL_13:
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.crlDefault;
    v33 = static os_log_type_t.default.getter();
    sub_100005404(v32, &_mh_execute_header, v33, "Exporting to PDF.", 17, 2, _swiftEmptyArrayStorage);
    v2[v7] = 1;
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v6, 1, 1, v34);
    type metadata accessor for MainActor();

    v35 = v2;

    v36 = static MainActor.shared.getter();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = &protocol witness table for MainActor;
    v37[4] = v35;
    v37[5] = v10;
    v37[6] = v40;
    v37[7] = v14;
    v37[8] = v16;
    v37[9] = v18;
    v37[10] = v20;
    v37[11] = a1;
    sub_10064191C(0, 0, v6, &unk_1014C1FE8, v37);

    return;
  }

  v23 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController];
  if (v23)
  {
    v24 = v23;
    v25 = [v24 view];
    if (v25)
    {
      v26 = v25;

      v27 = sub_100F25480();
      [v27 frame];
      v14 = v28;
      v16 = v29;
      v18 = v30;
      v20 = v31;

      v40 = v26;
      goto LABEL_13;
    }

LABEL_21:
    __break(1u);
    return;
  }

  v38 = v40;
}

uint64_t sub_10104C2FC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 248) = a11;
  *(v11 + 232) = a3;
  *(v11 + 240) = a4;
  *(v11 + 216) = a1;
  *(v11 + 224) = a2;
  *(v11 + 200) = a9;
  *(v11 + 208) = a10;
  *(v11 + 192) = a8;
  *(v11 + 256) = type metadata accessor for MainActor();
  *(v11 + 264) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v11 + 272) = v13;
  *(v11 + 280) = v12;

  return _swift_task_switch(sub_10104C3A8, v13, v12);
}

uint64_t sub_10104C3A8()
{
  v1 = sub_101012FD4();
  v2 = [v1 mode];

  LODWORD(v1) = [v2 wantsToEndForNonPopoverPresentations];
  if (v1)
  {
    [*(v0[24] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
  }

  v0[36] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[37] = v4;
  v0[38] = v3;

  return _swift_task_switch(sub_10104C498, v4, v3);
}

uint64_t sub_10104C498()
{
  v1 = v0[24];
  v2 = static MainActor.shared.getter();
  v0[39] = v2;
  v3 = swift_task_alloc();
  v0[40] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 1;
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_10104C5A8;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD000000000000048, 0x80000001015BA8D0, sub_10105B528, v3, &type metadata for () + 8);
}

uint64_t sub_10104C5A8()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return _swift_task_switch(sub_10104C708, v3, v2);
}

uint64_t sub_10104C708()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return _swift_task_switch(sub_10104C76C, v1, v2);
}

uint64_t sub_10104C76C()
{
  v1 = v0[24];
  v0[42] = sub_100D1D100();
  [*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) visibleUnscaledRect];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v0[43] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v0[44] = v10;
  *v10 = v0;
  v10[1] = sub_10104C868;
  v11 = v0[31];
  v12 = v0[25];

  return sub_100993EE8(v12, v11, v3, v5, v7, v9);
}

uint64_t sub_10104C868(uint64_t a1)
{
  v3 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[47] = v5;
  v3[48] = v4;
  if (v1)
  {
    v6 = sub_10104CBA8;
  }

  else
  {
    v6 = sub_10104C9CC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10104C9CC()
{
  if ([objc_opt_self() crl_padUI])
  {
    v1 = *(v0 + 360);
    [v1 setModalPresentationStyle:7];
    v2 = [v1 popoverPresentationController];
    if (v2)
    {
      v3 = v2;
      [v2 setSourceView:*(v0 + 208)];
    }

    v4 = *(v0 + 360);
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    v8 = *(v0 + 216);
    v7 = *(v0 + 224);
    v9 = [v4 popoverPresentationController];

    [v9 setSourceRect:{v8, v7, v6, v5}];
  }

  v10 = *(v0 + 360);
  v11 = *(v0 + 336);
  v12 = static MainActor.shared.getter();
  *(v0 + 392) = v12;
  v13 = swift_task_alloc();
  *(v0 + 400) = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  v14 = swift_task_alloc();
  *(v0 + 408) = v14;
  *v14 = v0;
  v14[1] = sub_10104CDD4;

  return withCheckedContinuation<A>(isolation:function:_:)(v14, v12, &protocol witness table for MainActor, 0xD000000000000094, 0x80000001015BAA00, sub_101053254, v13, &type metadata for () + 8);
}

uint64_t sub_10104CBA8()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return _swift_task_switch(sub_10104CC14, v1, v2);
}

uint64_t sub_10104CC14()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v3 = Error.publicDescription.getter(v0[17], v0[18]);
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.fullDescription.getter(v0[20]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Error retrieving immutable board or exporting to PDF: %{public}@ <%@>", 69, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  *(v0[24] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF) = 0;
  v10 = v0[1];

  return v10();
}

uint64_t sub_10104CDD4()
{
  v1 = *v0;

  v2 = *(v1 + 384);
  v3 = *(v1 + 376);

  return _swift_task_switch(sub_10104CF34, v3, v2);
}

uint64_t sub_10104CF34()
{
  v1 = *(v0 + 360);

  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return _swift_task_switch(sub_10104CFA8, v2, v3);
}

uint64_t sub_10104CFA8()
{

  *(*(v0 + 192) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF) = 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_10104D018(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v42 = &v36 - v7;
  sub_100064288(a2, v44);
  type metadata accessor for CRLBoard(0);
  if (swift_dynamicCast())
  {
    v8 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator];
    v9 = v43;
    v40 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
    v41 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
      if (a1 >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          return;
        }
      }

      else
      {
        v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          return;
        }
      }

      if (v12 < 1)
      {
        __break(1u);
      }

      else
      {
        v13 = 0;
        v14 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
        v38 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController;
        v15 = a1 & 0xC000000000000001;
        v39 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
        v37 = a1;
        do
        {
          if (v15)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v16 = *(a1 + 8 * v13 + 32);
          }

          v17 = v16;
          v18 = *&v16[OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details];
          v19 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
          swift_beginAccess();
          v20 = *(v18 + v19);
          if (*(v20 + 16) && (v21 = sub_1007CF108(), (v22 & 1) != 0))
          {
            sub_10000BE14(*(v20 + 56) + 32 * v21, v44, &unk_1019F4D00);
            sub_10000CAAC(v44, &unk_1019F4D50);
            v23 = *(v41 + v40);
            v24 = v14;
            v25 = *&v3[v14];
            v26 = v23;
            v27 = sub_100EC8784();

            sub_100B03B88(v27);
            v28 = sub_101066A04();
            if (v28)
            {
            }

            else
            {
              v29 = *&v3[v24];
              swift_getKeyPath();
              swift_getKeyPath();
              v44[0] = 0;
              v30 = v29;
              static Published.subscript.setter();
              sub_1010193C0();
            }

            v31 = type metadata accessor for TaskPriority();
            v32 = v42;
            (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
            type metadata accessor for MainActor();
            v33 = v3;
            v34 = static MainActor.shared.getter();
            v35 = swift_allocObject();
            v35[2] = v34;
            v35[3] = &protocol witness table for MainActor;
            v35[4] = v33;
            sub_10064191C(0, 0, v32, &unk_1014C2058, v35);

            v14 = v39;
            a1 = v37;
          }

          else
          {

            memset(v44, 0, 24);
            v44[3] = 1;
            sub_10000CAAC(v44, &unk_1019F4D50);
          }

          ++v13;
        }

        while (v12 != v13);
      }
    }
  }
}

uint64_t sub_10104D3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v6;
  v4[19] = v5;

  return _swift_task_switch(sub_10104D470, v6, v5);
}

void sub_10104D470()
{
  v1 = v0[16];
  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_sceneToContentDict;
  swift_beginAccess();
  v31 = v2;
  v3 = *(v1 + v2);
  v0[20] = v3;
  swift_bridgeObjectRetain_n();
  sub_100DCB208(v3);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  static Published.subscript.getter();

  v8 = sub_100E9523C(v0[13]);

  v9 = sub_1012CE2A8(v8, v5);
  v0[21] = v9;

  v30 = v9;
  if ((v9 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLSceneInfo();
    sub_100006760(&qword_101A28670, type metadata accessor for CRLSceneInfo);
    Set.Iterator.init(_cocoa:)();
    v9 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[6];
  }

  else
  {
    v14 = -1 << *(v9 + 32);
    v10 = (v9 + 56);
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);

    v11 = 0;
  }

  v17 = (v12 + 64) >> 6;
  v32 = v9;
  while (v9 < 0)
  {
    v23 = __CocoaSet.Iterator.next()();
    if (!v23 || (v0[15] = v23, type metadata accessor for CRLSceneInfo(), swift_dynamicCast(), v22 = v0[14], v20 = v11, v21 = v13, !v22))
    {
LABEL_22:
      sub_100035F90();
      v29 = swift_task_alloc();
      v0[22] = v29;
      *v29 = v0;
      v29[1] = sub_10104D828;

      sub_1010250B8(v30);
      return;
    }

LABEL_19:
    swift_beginAccess();
    v24 = sub_1007C9598(v22);
    if (v25)
    {
      v26 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v1 + v31);
      *(v1 + v31) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AAD0A0();
      }

      sub_100BDBBA8(v26, v28);
      *(v1 + v31) = v28;
    }

    swift_endAccess();

    v11 = v20;
    v13 = v21;
    v9 = v32;
  }

  v18 = v11;
  v19 = v13;
  v20 = v11;
  if (v13)
  {
LABEL_15:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_22;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_10104D828()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_10104D96C, v3, v2);
}

uint64_t sub_10104D96C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10104DADC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  if (![v3 shouldPreventSyncingContentOffset])
  {
    v4 = [v3 layerHost];
    if (v4)
    {
      v5 = [v4 canvasLayer];
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = v5;
        v7 = [v6 superlayer];
        if (v7)
        {
          v8 = v7;
          [v6 position];
          v10 = v9;
          v12 = v11;

          [v8 convertPoint:a1 toLayer:{v10, v12}];
          v14 = v13;
          v16 = v15;

          v17 = (v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastCanvasCenter);
          *v17 = v14;
          v17[1] = v16;
          return;
        }
      }
    }

    v18 = (v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastCanvasCenter);
    *v18 = 0;
    v18[1] = 0;
  }
}

void sub_10104DDDC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_presentedSceneAlert);
  *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_presentedSceneAlert) = 0;
}

double sub_10104DEAC@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10104DF2C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10104DFA4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10104E024(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_10104E0AC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10104E11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v11 = swift_unknownObjectWeakAssign();
  v15 = a6;
  v16 = a7(v11);
  v12 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentlyPresentedTip;
  swift_beginAccess();
  sub_10002C638(v14, a1 + v12, &unk_1019F6DA0);
  result = swift_endAccess();
  if (a4)
  {
    return a4(result);
  }

  return result;
}

void sub_10104E1D0(void *a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a2;
  if (!a1)
  {
    sub_10104E784(a2, a3, a4, a5, a6, 0.0);
    return;
  }

  v12 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  v42 = v12;
  v13 = *&a3[v12];
  swift_unknownObjectRetain();
  [v13 removeObject:a1];
  v14 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers;
  swift_beginAccess();
  v15 = *&a3[v14];
  if (v15 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v43 = v10;
    v44 = v8;
    v45 = v7;
    v7 = v6;
    v6 = v15 & 0xC000000000000001;
    v8 = v15 & 0xFFFFFFFFFFFFFF8;

    v10 = 0;
    while (1)
    {
      if (v6)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v17 = *(v15 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRelease();
      if (v17 == a1)
      {

        swift_beginAccess();
        sub_10106B650(v10);
        swift_endAccess();
        swift_unknownObjectRelease();
        v19 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
        swift_beginAccess();
        v20 = *&a3[v19];
        if (v20 >> 62)
        {
LABEL_53:
          v21 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v6 = v7;
        v8 = v44;
        v7 = v45;
        v10 = v43;
        v22 = *&a3[v14];
        if (v22 >> 62)
        {
          v39 = _CocoaArrayWrapper.endIndex.getter();
          v24 = __OFADD__(v21, v39);
          v15 = v21 + v39;
          if (!v24)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v24 = __OFADD__(v21, v23);
          v15 = v21 + v23;
          if (!v24)
          {
LABEL_18:
            v25 = [*&a3[v42] count];
            if (!__OFADD__(v15, v25))
            {
              [a3 setIsActive:(v25 + v15) > 0];
              goto LABEL_20;
            }

            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v18 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      ++v10;
      if (v18 == i)
      {

        v6 = v7;
        v8 = v44;
        v7 = v45;
        v10 = v43;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

LABEL_20:
  if (([a1 showing] & 1) == 0 && !objc_msgSend(a1, "animating") || (v26 = objc_msgSend(a1, "containerView"), v27 = objc_msgSend(v26, "superview"), v26, !v27) || (v27, a1 == v10))
  {
    sub_10104E784(v10, a3, v8, v7, v6, 0.0);
LABEL_46:
    swift_unknownObjectRelease();
    return;
  }

  if (![a1 type])
  {
    if (*&a3[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController] == a1)
    {
      *&a3[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController] = 0;
      swift_unknownObjectRelease();
    }

    goto LABEL_45;
  }

  v28 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
  swift_beginAccess();
  v41 = v28;
  v15 = *&a3[v28];
  if (v15 >> 62)
  {
LABEL_58:
    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (v29)
    {
      goto LABEL_27;
    }

    goto LABEL_45;
  }

  v29 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
LABEL_45:
    v38 = [a1 containerView];
    [v38 removeFromSuperview];

    sub_10104E784(v10, a3, v8, v7, v6, 0.0);
    a3[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_needsLayout] = 1;
    sub_10106EB14();
    goto LABEL_46;
  }

LABEL_27:
  v43 = v10;
  v44 = v8;
  v45 = v7;
  v7 = v6;
  v6 = v15 & 0xC000000000000001;
  v8 = v15 & 0xFFFFFFFFFFFFFF8;

  v10 = 0;
  while (1)
  {
    if (v6)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_53;
      }

      v30 = *(v15 + 8 * v10 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v30 == a1)
    {
      break;
    }

    v31 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_49;
    }

    ++v10;
    if (v31 == v29)
    {

      v6 = v7;
      v8 = v44;
      v7 = v45;
      v10 = v43;
      goto LABEL_45;
    }
  }

  swift_beginAccess();
  sub_10106B650(v10);
  swift_endAccess();
  swift_unknownObjectRelease();
  v32 = *&a3[v41];
  if (v32 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v7;
  v8 = v44;
  v7 = v45;
  v10 = v43;
  v34 = *&a3[v14];
  if (v34 >> 62)
  {
    v40 = _CocoaArrayWrapper.endIndex.getter();
    v24 = __OFADD__(v33, v40);
    v36 = v33 + v40;
    if (!v24)
    {
LABEL_43:
      v37 = [*&a3[v42] count];
      if (!__OFADD__(v36, v37))
      {
        [a3 setIsActive:v37 + v36 > 0];
        goto LABEL_45;
      }

      goto LABEL_64;
    }
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = __OFADD__(v33, v35);
    v36 = v33 + v35;
    if (!v24)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
}

void sub_10104E784(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v59 = a5;
  v58 = a4;
  v57[1] = a3;
  v66 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchTime();
  v60 = *(v67 - 8);
  __chkstk_darwin(v67);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v57 - v14;
  if (qword_1019F20C8 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.crlStatusHUD;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  aBlock[0] = a1;
  v18 = a1;
  sub_1005B981C(&unk_101A28660);
  sub_1005B981C(&unk_1019F5670);
  swift_dynamicCast();
  v19 = [v18 message];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (v23)
  {
    v25 = v23;
  }

  *(inited + 72) = v24;
  *(inited + 80) = v25;
  v26 = static os_log_type_t.default.getter();
  sub_100005404(v16, &_mh_execute_header, v26, "show hudController=%{public}@ message=%@", 42, 2, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v27 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  if ([*&a2[v27] containsObject:v18])
  {
    v28 = static os_log_type_t.default.getter();
    v29 = "Trying to delay the same hud controller, just sticking with the old delay";
    v30 = v16;
    v31 = 73;
LABEL_15:
    sub_100005404(v30, &_mh_execute_header, v28, v29, v31, 2, _swiftEmptyArrayStorage);
    return;
  }

  if (sub_10104F08C(v18, a2))
  {
    v28 = static os_log_type_t.default.getter();
    v29 = "Ignoring attempt to show hud controller that has aleady been shown or is waiting to show.";
    v30 = v16;
    v31 = 89;
    goto LABEL_15;
  }

  if (a6 != 0.0)
  {
    [*&a2[v27] addObject:v18];
    static DispatchTime.now()();
    + infix(_:_:)();
    v60 = *(v60 + 8);
    (v60)(v12, v67);
    sub_100006370(0, &qword_1019F2D90);
    v42 = static OS_dispatch_queue.main.getter();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = v18;
    aBlock[4] = v58;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = v59;
    v45 = _Block_copy(aBlock);
    v46 = v18;

    v47 = v61;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100006760(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    v48 = v63;
    v49 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v45);

    (*(v65 + 8))(v48, v49);
    (*(v62 + 8))(v47, v64);
    (v60)(v15, v67);
    return;
  }

  if (![v18 type])
  {
    v50 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController;
    v51 = *&a2[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController];
    if (v51)
    {
      swift_unknownObjectRetain();
      if (v51 == v18)
      {
        if ([v18 showing])
        {
          [v18 setShowing:1];
        }
      }

      else
      {
        v52 = [v51 containerView];
        v53 = [v52 superview];

        if (v53)
        {

          v54 = [v51 containerView];
          [v54 removeFromSuperview];
          swift_unknownObjectRelease();

          a2[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_needsLayout] = 1;
          goto LABEL_34;
        }
      }

      swift_unknownObjectRelease();
    }

LABEL_34:
    *&a2[v50] = v18;
    v55 = v18;
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v32 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers;
  swift_beginAccess();
  v33 = v18;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&a2[v32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v34 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
  swift_beginAccess();
  v35 = *&a2[v34];
  if (v35 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = *&a2[v32];
  if (!(v37 >> 62))
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = __OFADD__(v36, v38);
    v40 = v36 + v38;
    if (!v39)
    {
      goto LABEL_24;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v56 = _CocoaArrayWrapper.endIndex.getter();
  v39 = __OFADD__(v36, v56);
  v40 = v36 + v56;
  if (v39)
  {
    goto LABEL_39;
  }

LABEL_24:
  v41 = [*&a2[v27] count];
  if (!__OFADD__(v40, v41))
  {
    [a2 setIsActive:v41 + v40 > 0];
LABEL_35:
    sub_10106EB14();
    return;
  }

LABEL_40:
  __break(1u);
}

BOOL sub_10104F08C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_31:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v9 = *(v5 + 8 * v8 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v9 == a1)
    {
      v13 = 1;
      goto LABEL_26;
    }

    v10 = __OFADD__(v8++, 1);
    if (v10)
    {
      goto LABEL_28;
    }
  }

  v11 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers;
  swift_beginAccess();
  v5 = *(a2 + v11);
  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    a2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    a2 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  while (1)
  {
    v13 = a2 != v12;
    if (a2 == v12)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v14 = *(v5 + 8 * v12 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v14 == a1)
    {
      break;
    }

    v10 = __OFADD__(v12++, 1);
    if (v10)
    {
      goto LABEL_30;
    }
  }

LABEL_26:

  return v13;
}

uint64_t sub_10104F25C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = &a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lastRectangleObscuringCanvasScrollViewReportedToDelegate];
  size = CGRectNull.size;
  *v8 = CGRectNull.origin;
  v8[1] = size;
  a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_wasTearDownCalled] = 0;
  a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isInstalled] = 0;
  a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isObserving] = 0;
  a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isHidden] = 1;
  a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_needsToUpdateFillAndStrokeColors] = 0;
  a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_hasCommandGroupOpenForContinuousColorUpdates] = 0;
  *&a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager] = 0;
  *&a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_subscriptions] = _swiftEmptySetSingleton;
  *&a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_observedInfos] = _swiftEmptySetSingleton;
  a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_pendingLassoEditingViewUpdateFromSelectionChange] = 0;
  a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_updatingZOrderButtons] = 0;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  v10 = [a2 layerHost];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  if (([v10 respondsToSelector:"asiOSCVC"] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v28 = objc_opt_self();
    v29 = [v28 _atomicIncrementAssertCount];
    v97[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v97);
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = [v31 lastPathComponent];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v29;
    v38 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v38;
    v39 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v39;
    *(inited + 72) = v30;
    *(inited + 136) = &type metadata for String;
    v40 = sub_1000053B0();
    *(inited + 112) = v33;
    *(inited + 120) = v35;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v40;
    *(inited + 152) = 124;
    v41 = v97[0];
    *(inited + 216) = v38;
    *(inited + 224) = v39;
    *(inited + 192) = v41;
    v42 = v30;
    v43 = v41;
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v45, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v46 = swift_allocObject();
    v46[2] = 8;
    v46[3] = 0;
    v46[4] = 0;
    v46[5] = 0;
    v47 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    [v28 handleFailureInFunction:v48 file:v49 lineNumber:124 isFatal:0 format:v50 args:v47];
    goto LABEL_17;
  }

  v12 = [v11 asiOSCVC];
  swift_unknownObjectRelease();
  v13 = [a2 editorController];
  if (v13)
  {
    v14 = v13;
    v15 = [a2 freehandDrawingToolkit];
    if (v15)
    {
      v16 = v15;
      swift_unknownObjectUnownedInit();
      swift_unknownObjectUnownedInit();
      swift_unknownObjectUnownedInit();
      v17 = [v16 toolkitUIState];
      v18 = [v17 currentLassoType];

      v19 = [objc_allocWithZone(CRLLassoSegmentedViewController) initWithLassoType:v18];
      *&a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoSegmentedViewController] = v19;
      v20 = [objc_allocWithZone(CRLiOSPencilTrayLassoEditingView) init];
      *&a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView] = v20;
      *&a4[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingViewClippingWorkaround] = v20;
      v96.receiver = a4;
      v96.super_class = type metadata accessor for CRLiOSPencilTray();
      v21 = v20;
      v22 = objc_msgSendSuper2(&v96, "init");
      sub_100F0A7F8();
      sub_100F09EB4();
      sub_100F08B8C();
      v24 = v23;
      v25 = *&v23[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

      [v25 addObserver:v22];
      [*(*&v22[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager] + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker) set_delegate:v22];
      v26 = *&v22[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoSegmentedViewController];
      [v26 setDelegate:v22];

      return v22;
    }

    v93 = v14;
    v95 = v12;
    v71 = objc_opt_self();
    v72 = [v71 _atomicIncrementAssertCount];
    v97[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v97);
    StaticString.description.getter();
    v73 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v74 = String._bridgeToObjectiveC()();

    v75 = [v74 lastPathComponent];

    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v79 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v80 = swift_initStackObject();
    *(v80 + 16) = xmmword_10146CA70;
    *(v80 + 56) = &type metadata for Int32;
    *(v80 + 64) = &protocol witness table for Int32;
    *(v80 + 32) = v72;
    v81 = sub_100006370(0, &qword_1019F4D30);
    *(v80 + 96) = v81;
    v82 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v80 + 104) = v82;
    v83 = v73;
    *(v80 + 72) = v73;
    *(v80 + 136) = &type metadata for String;
    v84 = sub_1000053B0();
    *(v80 + 112) = v76;
    *(v80 + 120) = v78;
    *(v80 + 176) = &type metadata for UInt;
    *(v80 + 184) = &protocol witness table for UInt;
    *(v80 + 144) = v84;
    *(v80 + 152) = 126;
    v85 = v97[0];
    *(v80 + 216) = v81;
    *(v80 + 224) = v82;
    *(v80 + 192) = v85;
    v86 = v83;
    v87 = v85;
    v88 = static os_log_type_t.error.getter();
    sub_100005404(v79, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v80);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v89 = static os_log_type_t.error.getter();
    sub_100005404(v79, &_mh_execute_header, v89, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v90 = swift_allocObject();
    v90[2] = 8;
    v90[3] = 0;
    v90[4] = 0;
    v90[5] = 0;
    v91 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    [v71 handleFailureInFunction:v48 file:v49 lineNumber:126 isFatal:0 format:v50 args:v91];

    v70 = v93;
  }

  else
  {
    v94 = v12;
    v92 = objc_opt_self();
    v51 = [v92 _atomicIncrementAssertCount];
    v97[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v97);
    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    v54 = [v53 lastPathComponent];

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v58 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v59 = swift_initStackObject();
    *(v59 + 16) = xmmword_10146CA70;
    *(v59 + 56) = &type metadata for Int32;
    *(v59 + 64) = &protocol witness table for Int32;
    *(v59 + 32) = v51;
    v60 = sub_100006370(0, &qword_1019F4D30);
    *(v59 + 96) = v60;
    v61 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v59 + 104) = v61;
    *(v59 + 72) = v52;
    *(v59 + 136) = &type metadata for String;
    v62 = sub_1000053B0();
    *(v59 + 112) = v55;
    *(v59 + 120) = v57;
    *(v59 + 176) = &type metadata for UInt;
    *(v59 + 184) = &protocol witness table for UInt;
    *(v59 + 144) = v62;
    *(v59 + 152) = 125;
    v63 = v97[0];
    *(v59 + 216) = v60;
    *(v59 + 224) = v61;
    *(v59 + 192) = v63;
    v64 = v52;
    v65 = v63;
    v66 = static os_log_type_t.error.getter();
    sub_100005404(v58, &_mh_execute_header, v66, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v59);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v67 = static os_log_type_t.error.getter();
    sub_100005404(v58, &_mh_execute_header, v67, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v68 = swift_allocObject();
    v68[2] = 8;
    v68[3] = 0;
    v68[4] = 0;
    v68[5] = 0;
    v69 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    [v92 handleFailureInFunction:v48 file:v49 lineNumber:125 isFatal:0 format:v50 args:v69];
    v70 = v94;
  }

LABEL_17:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

char *sub_101050084(void *a1, _BYTE *a2)
{
  swift_unknownObjectWeakInit();
  a2[OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_isTornDown] = 0;
  *&a2[OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionManager] = 0;
  *&a2[OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionView] = 0;
  swift_unknownObjectUnownedInit();
  v65.receiver = a2;
  v65.super_class = type metadata accessor for CRLiOSPencilKitCanvasViewController();
  v4 = objc_msgSendSuper2(&v65, "initWithNibName:bundle:", 0, 0);
  v5 = [a1 interactiveCanvasControllerForPencilKitCanvasViewController:v4];
  v6 = [v5 drawingIntelligenceProvider];
  if (v6)
  {
    v7 = v6;
    if (sub_10098EABC(&_mh_execute_header, "setPencilKitCanvasViewController(_:)", 36, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 142))
    {
      swift_unknownObjectWeakAssign();
      sub_10117DAD0();
    }
  }

  else
  {
    v58 = v5;
    v60 = v4;
    v62 = a1;
    v56 = objc_opt_self();
    v8 = [v56 _atomicIncrementAssertCount];
    v64 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v64);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v17;
    v18 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 113;
    v20 = v64;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    [v56 handleFailureInFunction:v27 file:v28 lineNumber:113 isFatal:0 format:v7 args:v26];

    v4 = v60;
    a1 = v62;
    v5 = v58;
  }

  v29 = [objc_opt_self() defaultCenter];
  v30 = [v5 editingCoordinator];
  if (v30)
  {
    v31 = v30;
    v32 = *&v30[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_undoManager];

    [v29 addObserver:v4 selector:"willUndoOrRedo" name:NSUndoManagerWillUndoChangeNotification object:v32];
    [v29 addObserver:v4 selector:"willUndoOrRedo" name:NSUndoManagerWillRedoChangeNotification object:v32];
  }

  else
  {
    v59 = v5;
    v61 = v4;
    v63 = a1;
    v57 = objc_opt_self();
    v33 = [v57 _atomicIncrementAssertCount];
    v64 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v64);
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    v36 = [v35 lastPathComponent];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v40 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_10146CA70;
    *(v41 + 56) = &type metadata for Int32;
    *(v41 + 64) = &protocol witness table for Int32;
    *(v41 + 32) = v33;
    v42 = sub_100006370(0, &qword_1019F4D30);
    *(v41 + 96) = v42;
    v43 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v41 + 104) = v43;
    *(v41 + 72) = v34;
    *(v41 + 136) = &type metadata for String;
    v44 = sub_1000053B0();
    *(v41 + 112) = v37;
    *(v41 + 120) = v39;
    *(v41 + 176) = &type metadata for UInt;
    *(v41 + 184) = &protocol witness table for UInt;
    *(v41 + 144) = v44;
    *(v41 + 152) = 118;
    v45 = v64;
    *(v41 + 216) = v42;
    *(v41 + 224) = v43;
    *(v41 + 192) = v45;
    v46 = v34;
    v47 = v45;
    v48 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v48, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v41);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v49 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v49, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v50 = swift_allocObject();
    v50[2] = 8;
    v50[3] = 0;
    v50[4] = 0;
    v50[5] = 0;
    v51 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v57 handleFailureInFunction:v52 file:v53 lineNumber:118 isFatal:0 format:v32 args:v51];

    v4 = v61;
    a1 = v63;
    v5 = v59;
  }

  if ([objc_opt_self() isOSFeatureEnabled:9])
  {
    v54 = [objc_allocWithZone(CRLFreehandDrawingPKSelectionManager) initWithDelegate:v4];

    v29 = *&v4[OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionManager];
    *&v4[OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionManager] = v54;
  }

  else
  {
  }

  return v4;
}

void sub_101050A20(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView);
  v2 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v2];
}

id sub_101050AC0(void *a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_type] = 0;
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_minimumShowDuration] = 0;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_maximumShowDuration] = 0;
  v8 = OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_timeStartedShowing;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(&a5[v8], 1, 1, v9);
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hideTimer] = 0;
  a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_showing] = 0;
  a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_animating] = 0;
  a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hiding] = 0;
  v10 = &a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_accessibilityAnnouncement];
  *v10 = 0;
  v10[1] = 0;
  a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_swipable] = 0;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_swipeGestureRecognizer] = 0;
  a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hideOnTouch] = 0;
  a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_setupDone] = 0;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_height] = 0x4045000000000000;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_width] = 0;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_heightConstraint] = 0;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_constraints] = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v11 = &a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_stopButtonClickedHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = &a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_canvasWidth];
  *v12 = 0;
  v12[8] = 1;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController____lazy_storage___participantColor] = 0;
  v13 = &a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_stopFollowingString];
  v14 = [objc_opt_self() mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *v13 = v18;
  v13[1] = v20;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController____lazy_storage____label] = 0;
  swift_unknownObjectWeakAssign();
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_followingParticipant] = a2;
  swift_unknownObjectWeakAssign();
  v21 = objc_allocWithZone(UIView);
  v22 = a2;
  v23 = [v21 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = [objc_allocWithZone(type metadata accessor for HUDView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = v23;
  sub_1005CAFC0(v23);
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_contentView] = v25;
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hudView] = v24;
  v26 = objc_allocWithZone(UIView);
  v27 = v25;
  v28 = v24;
  v29 = [v26 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a5[OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_containerView] = v29;
  swift_unknownObjectWeakAssign();
  v33.receiver = a5;
  v33.super_class = type metadata accessor for CRLPersistentFollowHUDController();
  v30 = objc_msgSendSuper2(&v33, "init");

  swift_unknownObjectRelease();
  return v30;
}

id sub_101050F18(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_type] = 2;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_minimumShowDuration] = 0x3FF0000000000000;
  v7 = [objc_opt_self() isVoiceOverOrSwitchControlEnabled];
  v8 = 6.0;
  if (v7)
  {
    v8 = 30.0;
  }

  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_maximumShowDuration] = v8;
  v9 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_timeStartedShowing;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideTimer] = 0;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_shouldAutoHide] = 1;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_showing] = 0;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_animating] = 0;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hiding] = 0;
  v11 = &a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_accessibilityAnnouncement];
  *v11 = 0;
  v11[1] = 0;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_swipable] = 1;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_swipeGestureRecognizer] = 0;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideOnTouch] = 1;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_setupDone] = 0;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_height] = 0x4045000000000000;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_width] = 0;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_heightConstraint] = 0;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_constraints] = _swiftEmptyArrayStorage;
  v12 = &a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_refollowClickedHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_canvasWidth];
  *v13 = 0;
  v13[8] = 1;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController____lazy_storage___participantColor] = 0;
  v14 = &a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_resumeFollowingString];
  v15 = [objc_opt_self() mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *v14 = v19;
  v14[1] = v21;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController____lazy_storage____label] = 0;
  swift_unknownObjectWeakAssign();
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_followingParticipant] = a2;
  swift_unknownObjectWeakAssign();
  v22 = objc_allocWithZone(UIView);
  v23 = a2;
  v24 = [v22 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = [objc_allocWithZone(type metadata accessor for HUDView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v26 = v24;
  sub_1005CAFC0(v24);
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_contentView] = v26;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hudView] = v25;
  v27 = objc_allocWithZone(UIView);
  v28 = v26;
  v29 = v25;
  v30 = [v27 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_containerView] = v30;
  v33.receiver = a4;
  v33.super_class = type metadata accessor for CRLTransientRefollowHUDController();
  v31 = objc_msgSendSuper2(&v33, "init");

  swift_unknownObjectRelease();
  return v31;
}

id sub_101051384(void *a1, void *a2, char a3, uint64_t a4, char a5, _BYTE *a6)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_type] = 2;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_minimumShowDuration] = 0x3FF0000000000000;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_maximumShowDuration] = 0x4014000000000000;
  v11 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_timeStartedShowing;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(&a6[v11], 1, 1, v12);
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer] = 0;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_shouldAutoHide] = 1;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_showing] = 0;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_animating] = 0;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hiding] = 0;
  v13 = &a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_accessibilityAnnouncement];
  *v13 = 0;
  v13[1] = 0;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_swipable] = 1;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_swipeGestureRecognizer] = 0;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideOnTouch] = 0;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_setupDone] = 0;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_height] = 0x4045000000000000;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_width] = 0;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_heightConstraint] = 0;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_constraints] = _swiftEmptyArrayStorage;
  v14 = &a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_canvasWidth];
  *v14 = 0;
  v14[8] = 1;
  v15 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_isStartFollow;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_isStartFollow] = 0;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController____lazy_storage____label] = 0;
  swift_unknownObjectWeakAssign();
  v16 = &a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_followingParticipantInfo];
  *v16 = a2;
  a3 &= 1u;
  v16[8] = a3;
  swift_unknownObjectWeakAssign();
  a6[v15] = a5;
  v17 = objc_allocWithZone(UIView);
  sub_100809CC8(a2, a3);
  v18 = [v17 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = [objc_allocWithZone(type metadata accessor for HUDView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = v18;
  sub_1005CAFC0(v18);
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_contentView] = v21;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView] = v19;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView] = v20;
  v25.receiver = a6;
  v25.super_class = type metadata accessor for CRLTransientStartEndFollowHUDController();
  v22 = v19;
  v23 = objc_msgSendSuper2(&v25, "init");
  swift_unknownObjectRelease();
  sub_100809CD4(a2, a3);

  return v23;
}

char *sub_10105173C(void *a1, uint64_t a2, _BYTE *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_type] = 2;
  *&a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_minimumShowDuration] = 0x3FF0000000000000;
  *&a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_maximumShowDuration] = 0x4018000000000000;
  v5 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_timeStartedShowing;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  *&a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideTimer] = 0;
  a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_shouldAutoHide] = 1;
  a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_showing] = 0;
  a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_animating] = 0;
  a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hiding] = 0;
  v7 = &a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_accessibilityAnnouncement];
  *v7 = 0;
  v7[1] = 0;
  a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_swipable] = 1;
  *&a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_swipeGestureRecognizer] = 0;
  a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideOnTouch] = 1;
  a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_setupDone] = 0;
  *&a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_height] = 0x4045000000000000;
  *&a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_heightConstraint] = 0;
  *&a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_constraints] = _swiftEmptyArrayStorage;
  *&a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi____lazy_storage____label] = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = [objc_allocWithZone(type metadata accessor for HUDView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = v8;
  sub_1005CAFC0(v8);
  *&a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_contentView] = v10;
  *&a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hudView] = v9;
  v11 = objc_allocWithZone(UIView);
  v12 = v10;
  v13 = v9;
  v14 = [v11 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a3[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_containerView] = v14;
  v18.receiver = a3;
  v18.super_class = type metadata accessor for CRLCollaboratorBaseStatusHUDController_mi();
  v15 = objc_msgSendSuper2(&v18, "init");
  sub_1008064EC(v15);
  v16 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v15 action:"touchedHUDWithSender:"];
  [v16 setNumberOfTapsRequired:1];
  [*&v15[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hudView] addGestureRecognizer:v16];

  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_101051ABC(uint64_t a1, uint64_t a2)
{
  v87 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v87);
  v86 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v6 - 8);
  v85 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v96 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v69 - v12;
  v84 = type metadata accessor for CRLPreviewImages.Item(0);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v15 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *(a1 + 16);
  }

  v17 = _swiftEmptyArrayStorage;
  if (!v16)
  {
    return v17;
  }

  v82 = v15;
  v101 = _swiftEmptyArrayStorage;
  sub_100776D64(0, v16 & ~(v16 >> 63), 0);
  v17 = v101;
  if (v88)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v19 = *(a1 + 36);
  }

  v98 = result;
  v99 = v19;
  v100 = v88 != 0;
  if ((v16 & 0x8000000000000000) == 0)
  {
    v69[1] = v2;
    v20 = 0;
    v78 = *(a2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    v77 = *(a2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
    v95 = (v9 + 16);
    v76 = (v9 + 8);
    v75 = (v9 + 32);
    v71 = a1 + 56;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v21 = a1;
    }

    v72 = v21;
    v70 = a1 + 64;
    v74 = CKCurrentUserDefaultName;
    v73 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
    v81 = a1;
    v80 = v13;
    v79 = v16;
    while (v20 < v16)
    {
      v23 = __OFADD__(v20, 1);
      v24 = v20 + 1;
      if (v23)
      {
        goto LABEL_44;
      }

      v89 = v24;
      v93 = v98;
      v94 = v17;
      v92 = v99;
      v91 = v100;
      sub_100724FDC(v98, v99, v100, a1);
      v26 = v25;
      [v78 visibleUnscaledRect];
      v29 = sub_100121F30(1, v27, v28, *&v26[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect], *&v26[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8], *&v26[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16], *&v26[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24]);
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = *(v77 + v73);
      v37 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
      v38 = *&v36[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
      v39 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v40 = v38 + v39;
      v41 = v85;
      sub_100050004(v40, v85, type metadata accessor for CRLBoardCRDTData);
      v90 = v36;
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10003D7BC(v41, type metadata accessor for CRLBoardCRDTData);
      v42 = (*&v36[v37] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v44 = *v42;
      v43 = v42[1];
      v45 = *v95;
      (*v95)(v96, v13, v8);
      v47 = v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v46;
      if (v47 || (v48 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v48 & 1) != 0))
      {

        v44 = 0;
        v43 = 0xE000000000000000;
      }

      v49 = sub_1005B981C(&unk_1019FB780);
      v50 = *(v49 + 48);
      v51 = v82;
      v52 = &v82[*(v49 + 64)];
      (*v76)(v13, v8);
      v53 = v8;
      v54 = v86;
      (*v75)(v86, v96, v53);
      v55 = &v54[*(v87 + 20)];
      *v55 = v44;
      *(v55 + 1) = v43;
      v56 = v54;
      v8 = v53;
      sub_100046238(v56, v51, type metadata accessor for CRLBoardIdentifierStorage);

      v45((v51 + v50), &v26[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID], v53);
      *v52 = v29;
      *(v52 + 1) = v31;
      *(v52 + 2) = v33;
      *(v52 + 3) = v35;
      swift_storeEnumTagMultiPayload();

      v17 = v94;
      v101 = v94;
      v58 = v94[2];
      v57 = v94[3];
      if (v58 >= v57 >> 1)
      {
        sub_100776D64(v57 > 1, v58 + 1, 1);
        v51 = v82;
        v17 = v101;
      }

      v17[2] = v58 + 1;
      sub_100046238(v51, v17 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v58, type metadata accessor for CRLPreviewImages.Item);
      a1 = v81;
      v16 = v79;
      if (v88)
      {
        v13 = v80;
        result = v93;
        if (!v91)
        {
          goto LABEL_49;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_1005B981C(&qword_101A28678);
        v22 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v22(v97, 0);
      }

      else
      {
        v13 = v80;
        result = v93;
        if (v91)
        {
          goto LABEL_50;
        }

        if ((v93 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        v59 = 1 << *(v81 + 32);
        if (v93 >= v59)
        {
          goto LABEL_45;
        }

        v60 = v93 >> 6;
        v61 = *(v71 + 8 * (v93 >> 6));
        if (((v61 >> v93) & 1) == 0)
        {
          goto LABEL_46;
        }

        if (*(v81 + 36) != v92)
        {
          goto LABEL_47;
        }

        v62 = v61 & (-2 << (v93 & 0x3F));
        if (v62)
        {
          v59 = __clz(__rbit64(v62)) | v93 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v63 = v60 << 6;
          v64 = v60 + 1;
          v65 = (v70 + 8 * v60);
          while (v64 < (v59 + 63) >> 6)
          {
            v67 = *v65++;
            v66 = v67;
            v63 += 64;
            ++v64;
            if (v67)
            {
              result = sub_1000341AC(v93, v92, 0);
              v59 = __clz(__rbit64(v66)) + v63;
              goto LABEL_40;
            }
          }

          result = sub_1000341AC(v93, v92, 0);
        }

LABEL_40:
        v68 = *(a1 + 36);
        v98 = v59;
        v99 = v68;
        v100 = 0;
      }

      v20 = v89;
      if (v89 == v16)
      {
        sub_1000341AC(v98, v99, v100);
        return v17;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_10105235C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

void sub_1010523F8(void **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v54[1] = a5;
  v56 = a4;
  v64 = a3;
  v62 = type metadata accessor for UUID();
  v7 = *(v62 - 8);
  __chkstk_darwin(v62);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v61 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator;
  v58 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController;
  v55 = v10;
  v57 = &v10[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect];
  v15 = (v12 + 63) >> 6;
  v59 = v7 + 8;
  v60 = v7 + 16;
  v63 = a2;

  v16 = 0;
  while (v14)
  {
LABEL_9:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = v62;
    (*(v7 + 16))(v9, *(v63 + 48) + *(v7 + 72) * (v18 | (v16 << 6)), v62);
    v20 = *(*(v64 + v61) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v9, v19);
    v22 = [v20 getBoardItemForUUID:isa];

    if (v22)
    {
      v23 = *(v64 + v58);
      v24 = [v23 layoutForInfo:v22];
      if (v24)
      {
        v25 = v24;
        [v24 frameForCullingInRoot];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        [v23 visibleUnscaledRect];
        v36 = sub_100121F30(1, v34, v35, *v57, v57[1], v57[2], v57[3]);
        if (sub_10011FF38(v27, v29, v31, v33, v36, v37, v38, v39))
        {
          v41 = v55;
          v53 = v55;
          v40 = v56;
          sub_100E727D0(v65, v53);

LABEL_15:
          v42 = *v40;

          v43 = sub_1007A0498(v41, v42);

          if ((v43 & 1) == 0)
          {
            v44 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_sceneToContentDict;
            v45 = v64;
            swift_beginAccess();
            v46 = *(v45 + v44);
            if (*(v46 + 16))
            {

              v47 = sub_1007C9598(v41);
              if (v48)
              {
                v49 = *(*(v46 + 56) + 8 * v47);

                v51 = sub_10119E374(v50, v49);

                v52 = v51[2];

                if (v52)
                {
                  sub_100E727D0(&v66, v41);
                }
              }

              else
              {
              }
            }
          }

          return;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      v41 = v55;
      v40 = v56;
      goto LABEL_15;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_101052810()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for CRLiOSAppDelegate();
    v2 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibraryCommandController);
    if (v2)
    {
      v3 = v2;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = objc_opt_self();
      v4 = [v26 _atomicIncrementAssertCount];
      v27 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v27);
      StaticString.description.getter();
      v25 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v5 = String._bridgeToObjectiveC()();

      v6 = [v5 lastPathComponent];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v9 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v11 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v11;
      v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v12;
      *(inited + 72) = v25;
      *(inited + 136) = &type metadata for String;
      v13 = sub_1000053B0();
      *(inited + 112) = v24;
      *(inited + 120) = v8;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v13;
      *(inited + 152) = 261;
      v14 = v27;
      *(inited + 216) = v11;
      *(inited + 224) = v12;
      *(inited + 192) = v14;
      v15 = v25;
      v16 = v14;
      v17 = static os_log_type_t.error.getter();
      sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v18 = static os_log_type_t.error.getter();
      sub_100005404(v9, &_mh_execute_header, v18, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v19 = swift_allocObject();
      v19[2] = 8;
      v19[3] = 0;
      v19[4] = 0;
      v19[5] = 0;
      v20 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v21 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v22 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v23 = String._bridgeToObjectiveC()();

      [v26 handleFailureInFunction:v21 file:v22 lineNumber:261 isFatal:0 format:v23 args:v20];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_101052C74()
{
  v1 = *(v0 + 16);
  sub_101049A50(*(v0 + 24), v1);
  v2 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_presentedSceneAlert];
  *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_presentedSceneAlert] = 0;
}

uint64_t sub_101052CBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_100F2BFF0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_101052D9C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

BOOL sub_101052E24(void *a1)
{
  v2 = sub_1005B981C(&qword_101A287F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  DynamicTypeSize.init(_:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CAAC(v4, &qword_101A287F0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1005B981C(&qword_101A287F8);
    v11 = *(v6 + 72);
    v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10146C4D0;
    v14 = v13 + v12;
    v15 = *(v6 + 104);
    v15(v14, enum case for DynamicTypeSize.accessibility3(_:), v5);
    v15(v14 + v11, enum case for DynamicTypeSize.accessibility4(_:), v5);
    v15(v14 + 2 * v11, enum case for DynamicTypeSize.accessibility5(_:), v5);
    v10 = sub_1012CDFB0(v8, v13);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v6 + 8))(v8, v5);
  }

  return v10;
}

void sub_1010530A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray;
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray);
    v6 = v4;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = sub_101023BFC();
  v8 = *(v1 + v3);
  *(v1 + v3) = v7;
  v5 = v7;

  v9 = 0;
  if (a1)
  {
LABEL_3:
    sub_100F09EB4();
    sub_100F095C8();
  }

LABEL_4:

  sub_1010196BC();
}

uint64_t sub_101053154(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v13 = *(v1 + 11);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10002D4C8;

  return sub_10104C2FC(v9, v10, v11, v12, a1, v4, v5, v6, v7, v8, v13);
}

unint64_t sub_1010532BC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    v5 = _swiftEmptyArrayStorage;
    v100 = _swiftEmptyArrayStorage;
    v6 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomToolTray];
    if (v6)
    {
      if (([swift_unknownObjectRetain() hidden] & 1) != 0 || (objc_msgSend(v6, "rectangleObscuringCanvasScrollView"), x = v101.origin.x, y = v101.origin.y, width = v101.size.width, height = v101.size.height, CGRectIsNull(v101)))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        [v4 convertRect:v2 fromCoordinateSpace:{x, y, width, height}];
        v38 = [objc_opt_self() valueWithCGRect:{v34, v35, v36, v37}];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_unknownObjectRelease();
        v5 = v100;
      }
    }

    v39 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
    v40 = [v39 miniFormatterPresenter];
    if (v40)
    {
      v41 = [v40 isPresentingMiniFormatter];
      swift_unknownObjectRelease();
      if (v41)
      {
        v42 = [v0 traitCollection];
        if ([objc_opt_self() crl_phoneUI])
        {
        }

        else
        {
          v43 = [v42 crl_isCompactWidth];

          if (!v43)
          {
            goto LABEL_24;
          }
        }

        v44 = [v39 presentedViewController];
        if (v44)
        {
          v45 = v44;
          if (([v44 isBeingDismissed] & 1) != 0 || (v46 = objc_msgSend(v45, "view")) == 0)
          {
          }

          else
          {
            v47 = v46;
            [v46 bounds];
            [v47 convertRect:v2 toCoordinateSpace:?];
            [v4 convertRect:v2 fromCoordinateSpace:?];
            v52 = [objc_opt_self() valueWithCGRect:{v48, v49, v50, v51}];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v99 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v5 = v100;
          }
        }
      }
    }

LABEL_24:
    v53 = [v39 miniFormatterPresenter];
    if (v53)
    {
      v54 = [v53 isPresentingMiniFormatter];
      swift_unknownObjectRelease();
      if (v54)
      {
        v55 = [v1 traitCollection];
        if ([objc_opt_self() crl_phoneUI])
        {
        }

        else
        {
          v56 = [v55 crl_isCompactWidth];

          if (!v56)
          {
            goto LABEL_39;
          }
        }

        if ([v39 miniFormatterPresenter])
        {
          type metadata accessor for CRLiOSMiniFormatterPresenter();
          v57 = swift_dynamicCastClass();
          if (v57 && (v58 = *(v57 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC)) != 0 && (v59 = [v58 view]) != 0)
          {
            v60 = v59;
            [v59 bounds];
            [v60 convertRect:v2 toCoordinateSpace:?];
            [v4 convertRect:v2 fromCoordinateSpace:?];
            v62 = v61;
            v64 = v63;
            v66 = v65;
            v68 = v67;
            if ([*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] connectorKnobsEnabled])
            {
              v102.origin.x = v62;
              v102.origin.y = v64;
              v102.size.width = v66;
              v102.size.height = v68;
              v69 = CGRectGetWidth(v102);
              v103.origin.x = v62;
              v103.origin.y = v64;
              v103.size.width = v66;
              v103.size.height = v68;
              v68 = CGRectGetHeight(v103) + 20.0;
              v64 = v64 + -20.0;
              v66 = v69;
            }

            v70 = [objc_opt_self() valueWithCGRect:{v62, v64, v66, v68}];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_unknownObjectRelease();

            v5 = v100;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }
    }

LABEL_39:
    if ([v1 isPresentingCompactScenesNavigator])
    {
      v71 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
      if (v71)
      {
        v72 = v71;
        v73 = [v72 view];
        if (v73)
        {
          v74 = v73;
          v75 = *&v72[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_floatingView];
          [v75 bounds];
          v77 = v76;
          v79 = v78;
          v81 = v80;
          v83 = v82;
          v84 = [v72 view];
          [v75 convertRect:v84 toView:{v77, v79, v81, v83}];
          v86 = v85;
          v88 = v87;
          v90 = v89;
          v92 = v91;

          [v74 convertRect:v2 toCoordinateSpace:{v86, v88, v90, v92}];
          [v4 convertRect:v2 fromCoordinateSpace:?];
          v97 = [objc_opt_self() valueWithCGRect:{v93, v94, v95, v96}];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          return v100;
        }
      }
    }

    return v5;
  }

  v11 = objc_opt_self();
  v12 = [v11 _atomicIncrementAssertCount];
  v100 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v100);
  StaticString.description.getter();
  v13 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v14 lastPathComponent];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v19 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v12;
  v21 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v21;
  v22 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v22;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for String;
  v23 = sub_1000053B0();
  *(inited + 112) = v16;
  *(inited + 120) = v18;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v23;
  *(inited + 152) = 2201;
  v24 = v100;
  *(inited + 216) = v21;
  *(inited + 224) = v22;
  *(inited + 192) = v24;
  v25 = v13;
  v26 = v24;
  v27 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v28 = static os_log_type_t.error.getter();
  v5 = _swiftEmptyArrayStorage;
  sub_100005404(v19, &_mh_execute_header, v28, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v29 = swift_allocObject();
  v29[2] = 8;
  v29[3] = 0;
  v29[4] = 0;
  v29[5] = 0;
  v30 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  [v11 handleFailureInFunction:v31 file:v32 lineNumber:2201 isFatal:0 format:v33 args:v30];

  return v5;
}

void sub_101053D90()
{
  v1 = sub_1010137CC();
  [v1 invalidateSearchResults];

  [*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController) setStartingPointSearchReference:0];
  v2 = sub_101012FD4();
  v3 = [v2 mode];

  sub_100006370(0, &unk_101A287E0);
  LODWORD(v2) = [v3 isKindOfClass:swift_getObjCClassFromMetadata()];

  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController);

    [v4 resetToDefaultModeAnimated:1];
  }
}

void sub_101053E80()
{
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___editorController) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardEditor) = 0;
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_selectionModelTranslator;
  *(v0 + v1) = [objc_allocWithZone(CRLSelectionModelTranslator) init];
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertingHelper) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertingCancellableToken) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_traitChangeRegistration) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isSuppressingBottomToolTrayForPresentationController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardHasSyncedAtLeastOnce) = 0;
  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_cloudQuotaMessagingObserver;
  type metadata accessor for CRLCloudQuotaMessagingObserver();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shareSyncAwaitTask);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundLayer) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView) = 0;
  v5 = v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_CRLUpdateInfoKey;
  strcpy((v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_CRLUpdateInfoKey), "iOSUpdateInfo");
  *(v5 + 14) = -4864;
  v6 = (v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_CRLUnsupportedDevicesKey);
  *v6 = 0xD000000000000012;
  v6[1] = 0x80000001015935E0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_subscriptions) = _swiftEmptySetSingleton;
  v7 = (v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastContentOffset);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastCanvasCenter);
  *v8 = 0;
  v8[1] = 0;
  v9 = v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_toolbarButtonState;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___undoToolbarItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertTextBoxToolbarItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertAVMediaToolbarItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertStickyNoteToolbarItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertShapeToolbarItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___togglePencilModeToolbarItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertStencilToolbarItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___shareToolbarItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___newBoardToolbarItem) = 0;
  v10 = ICQCurrentInAppMessageChangedNotification;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___doneToolbarItem) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = v10;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___doneWithModeToolbarItem) = 0;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___doneWithScenesNavigatorToolbarItem) = 0;
  *(v3 + 80) = 0x4122750000000000;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___viewOnlyToolbarItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___collaborationButtonItem) = 1;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_photoPickerLoadingProgress) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_gpHelper) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertURLAlert) = 0;
  v11 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView;
  v12 = objc_allocWithZone(CRLScrollView);
  v13 = v10;
  *(v0 + v11) = [v12 init];
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasScrollViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomToolTray) = 0;
  v14 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_snapshotViewWrapper;
  *(v0 + v14) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___bottomSceneCaptureSnapshotHostingView) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___topSceneCaptureSnapshotHostingView) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___sceneNavigationSnapshotHostingView) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomAndScenesContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewController) = 0;
  v15 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewState;
  *(v0 + v15) = [objc_allocWithZone(type metadata accessor for CRLConnectorModeMessageViewState()) init];
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_skipNextToolbarUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController) = 0;
  v16 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState;
  *(v0 + v16) = [objc_allocWithZone(type metadata accessor for CRLScenesNavigatorState()) init];
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigationCrossfadeSnapshotLayers) = _swiftEmptyArrayStorage;
  v17 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
  *(v0 + v17) = [objc_allocWithZone(type metadata accessor for CRLScenesPopoverState(0)) init];
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesPresenter) = 0;
  v18 = v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_sceneToContentDict;
  *(v0 + v19) = sub_100BD99E8(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_presentedSceneAlert) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_willPresentCompactScenesNavigator) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_findSession) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingItemsSearchTarget) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_keyboardTopEdgeLayoutGuideConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_topUnobscuredRectLayoutGuideConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomUnobscuredRectLayoutGuideConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_leadingUnobscuredRectLayoutGuideConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_trailingUnobscuredRectLayoutGuideConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isChangingDocumentModeToHandwriting) = 0;
  v20 = (v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shapeLibrarySearchTerm);
  *v20 = 0;
  v20[1] = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipObservation) = 0;
  swift_unknownObjectWeakInit();
  v21 = v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentlyPresentedTip;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPresentationView) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_wantsToRestoreModeAfterGP) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_mediaReplacer) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___unobscuredRectLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___keyboardFrameLayoutGuide) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosing) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosed) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followHUD) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followBorderHighlightView) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_stateRestorationHelper) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_viewScaleObservation) = 0;
  v22 = (v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollObserver);
  *v22 = 0u;
  v22[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_didRestoreCanvasViewState) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled) = 2;
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled) = 2;
  v23 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastPrintContentDate;
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v0 + v23, 1, 1, v24);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1010545D8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = a3;
  v6 = type metadata accessor for EditMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for CRLCompactScenesListUI_i(0);
  v14 = v13 - 8;
  v15 = __chkstk_darwin(v13);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  a4[OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_isTornDown] = 0;
  (*(v7 + 104))(v12, enum case for EditMode.inactive(_:), v6, v15);
  v17[1] = &off_1018ADCE0;
  swift_unknownObjectWeakInit();
  v17[2] = 0x4074F00000000000;
  type metadata accessor for CRLScenesPopoverState(0);
  sub_100006760(&qword_101A10C98, type metadata accessor for CRLScenesPopoverState);
  v18 = a2;
  v17[3] = ObservedObject.init(wrappedValue:)();
  v17[4] = v19;
  v27 = _swiftEmptySetSingleton;
  sub_1005B981C(&qword_101A286C8);
  State.init(wrappedValue:)();
  v20 = *(&v28 + 1);
  v17[5] = v28;
  v17[6] = v20;
  (*(v7 + 16))(v9, v12, v6);
  State.init(wrappedValue:)();
  (*(v7 + 8))(v12, v6);
  v21 = *(v14 + 44);
  v27 = 0;
  sub_1005B981C(&qword_101A286D0);
  State.init(wrappedValue:)();
  *(v17 + v21) = v28;
  v22 = objc_allocWithZone(sub_1005B981C(&qword_101A286D8));
  *&a4[OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_hostingController] = UIHostingController.init(rootView:)();
  *&a4[OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_scenesPopoverState] = v18;
  *&a4[OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_icc] = v25;
  v23 = type metadata accessor for CRLCompactScenesViewController_i();
  v26.receiver = a4;
  v26.super_class = v23;
  return objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
}

id sub_1010548E8(uint64_t a1, char *a2)
{
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___stackView] = 0;
  *&a2[OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController_stackViewHeightConstraint] = 0;
  *&a2[OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___gridButton] = 0;
  *&a2[OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___connectorButton] = 0;
  *&a2[OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___separator] = 0;
  swift_unknownObjectWeakAssign();
  v4.receiver = a2;
  v4.super_class = type metadata accessor for CRLiOSFloatingBoardViewControlsViewController();
  return objc_msgSendSuper2(&v4, "initWithNibName:bundle:", 0, 0);
}

void sub_1010549A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasScrollViewController);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 safeAreaLayoutGuide];

  [v5 layoutFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v2 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v14 superview];

  if (v16)
  {
    v17 = [v2 view];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 safeAreaLayoutGuide];

      v20 = [v19 owningView];
      [v16 convertRect:v20 fromView:{v7, v9, v11, v13}];

      return;
    }

    goto LABEL_13;
  }

  v43 = objc_opt_self();
  v21 = [v43 _atomicIncrementAssertCount];
  v44 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v44);
  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v23 = String._bridgeToObjectiveC()();

  v24 = [v23 lastPathComponent];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v28 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v21;
  v30 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v30;
  v31 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v31;
  *(inited + 72) = v22;
  *(inited + 136) = &type metadata for String;
  v32 = sub_1000053B0();
  *(inited + 112) = v25;
  *(inited + 120) = v27;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v32;
  *(inited + 152) = 2270;
  v33 = v44;
  *(inited + 216) = v30;
  *(inited + 224) = v31;
  *(inited + 192) = v33;
  v34 = v22;
  v35 = v33;
  v36 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v37 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v37, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v38 = swift_allocObject();
  v38[2] = 8;
  v38[3] = 0;
  v38[4] = 0;
  v38[5] = 0;
  v39 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v40 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  [v43 handleFailureInFunction:v40 file:v41 lineNumber:2270 isFatal:0 format:v42 args:v39];
}

void sub_101054EEC(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019FB750);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = v47 - v6 + 46;
  v8 = [v1 traitCollection];
  p_class_meths = &OBJC_PROTOCOL___UIWritingToolsCoordinatorDelegate.class_meths;
  if (*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPresentationView])
  {
    v10 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentlyPresentedTip;
    swift_beginAccess();
    sub_10000BE14(&v2[v10], v47, &unk_1019F6DA0);
    if (v48)
    {
      sub_1005B981C(&qword_101A28748);
      if (swift_dynamicCast())
      {
        sub_101011590(1, 0);
        sub_1010116A8();
      }
    }

    else
    {
      sub_10000CAAC(v47, &unk_1019F6DA0);
    }
  }

  v11 = [v8 horizontalSizeClass];
  if (v11 == [a1 horizontalSizeClass])
  {
    v12 = objc_opt_self();
    v13 = [v12 crl_phoneUI];
    v14 = [v8 crl_isCompactWidth];
    v15 = v13 ^ 1;
    v16 = (v13 ^ 1) & v14;
    if (v15 & 1) == 0 && (v14)
    {
      v16 = [v8 crl_isCompactHeight] ^ 1;
    }

    v17 = [v12 crl_phoneUI];
    v18 = [a1 crl_isCompactWidth];
    if (!v17)
    {
LABEL_13:
      p_class_meths = &OBJC_PROTOCOL___UIWritingToolsCoordinatorDelegate.class_meths;
      if (v16 != v18)
      {
        goto LABEL_14;
      }

LABEL_20:
      v25 = v8;
LABEL_47:

      return;
    }

    if (v18)
    {
      v18 = [a1 crl_isCompactHeight] ^ 1;
      goto LABEL_13;
    }

    p_class_meths = (&OBJC_PROTOCOL___UIWritingToolsCoordinatorDelegate + 32);
    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_14:
  v19 = [v2 navigationItem];
  UINavigationItem.renameDelegate.setter();

  v20 = [v2 navigationItem];
  sub_100006760(&qword_101A28740, type metadata accessor for CRLiOSBoardViewController);
  swift_unknownObjectRetain();
  UINavigationItem.renameDelegate.setter();

  v21 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  sub_100642864(v8, [v21 documentIsSharedReadOnly], v50);
  sub_100642CDC(v50, 0);
  sub_1005EB2D4(v50);
  v22 = p_class_meths[101];
  swift_beginAccess();
  sub_10000BE14(v22 + v2, v47, &unk_1019F6DA0);
  if (v48)
  {
    sub_1005B981C(&qword_101A28748);
    if (swift_dynamicCast())
    {
      v23 = [v2 navigationItem];
      v24 = [v23 additionalOverflowItems];

      if (v24)
      {
      }

      else
      {
        sub_101011590(1, 1);
      }
    }
  }

  else
  {
    sub_10000CAAC(v47, &unk_1019F6DA0);
  }

  v48 = &type metadata for CRLFeatureFlags;
  v26 = sub_100004D60();
  v49 = v26;
  v47[0] = 20;
  v27 = isFeatureEnabled(_:)();
  sub_100005070(v47);
  if (v27)
  {
    sub_1010309F0(v8);
  }

  else
  {
    sub_101031D9C(v8);
  }

  v28 = [v21 editingCoordinator];
  if (v28)
  {
    v29 = v28;
    v25 = *&v28[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator];

    if (*(v25 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) == 1)
    {
      v25 = v25;
      sub_1009056EC(0, 1);
    }
  }

  else
  {
    v25 = 0;
  }

  v30 = [v8 horizontalSizeClass];
  if (v30 != [a1 horizontalSizeClass])
  {
    v31 = sub_101013290();
    v32 = [v2 traitCollection];
    v33 = [v32 crl_isCompactWidth];

    if (v33)
    {
      v34 = sub_10065248C();
    }

    else
    {
      v34 = sub_10065376C();
    }

    v35 = v34;
    [v31 setMenu:v34];
  }

  v36 = [v2 view];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 window];

    if (v38)
    {
      v39 = [v38 windowScene];

      if (v39)
      {
        if ([v39 activationState] != 2)
        {
          [v21 scrollToCurrentSelectionPathAfterLayoutWithOptions:257];
        }
      }
    }

    if (*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController])
    {
      v40 = type metadata accessor for TaskPriority();
      (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
      type metadata accessor for MainActor();
      v41 = v2;
      v42 = static MainActor.shared.getter();
      v43 = swift_allocObject();
      v43[2] = v42;
      v43[3] = &protocol witness table for MainActor;
      v43[4] = v41;
      sub_10064191C(0, 0, v7, &unk_1014C23C0, v43);
    }

    sub_1006632BC();
    v48 = &type metadata for CRLFeatureFlags;
    v49 = v26;
    v47[0] = 0;
    v44 = isFeatureEnabled(_:)();
    sub_100005070(v47);
    if (v44)
    {
      [v21 documentIsSharedReadOnly];
      sub_10067AD3C(v8);
    }

    v48 = &type metadata for CRLFeatureFlags;
    v49 = v26;
    v47[0] = 10;
    v45 = isFeatureEnabled(_:)();
    sub_100005070(v47);
    if (v45)
    {
      sub_1010326E8(v8);
    }

    goto LABEL_47;
  }

  __break(1u);
}

void sub_101055600()
{
  v1 = [v0 traitCollection];
  v2 = [v1 crl_isCompactWidth];

  if ((v2 & 1) == 0)
  {
    v3 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomAndScenesContainerView];
    if (v3)
    {
      [v3 frame];
      v8 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
      if (v8)
      {
        v9 = v4;
        v10 = v5;
        v11 = v6;
        v12 = v7;
        v13 = [v8 view];
        if (v13)
        {
          v14 = v13;
          [v13 frame];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;

          v33.origin.x = v9;
          v33.origin.y = v10;
          v33.size.width = v11;
          v33.size.height = v12;
          CGRectGetMinY(v33);
          v34.origin.x = v16;
          v34.origin.y = v18;
          v34.size.width = v20;
          v34.size.height = v22;
          CGRectGetMinY(v34);
          v23 = [v0 view];
          if (v23)
          {
            v24 = v23;
            [v23 frame];
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v32 = v31;

            v35.origin.x = v26;
            v35.origin.y = v28;
            v35.size.width = v30;
            v35.size.height = v32;
            CGRectGetMaxY(v35);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_10105579C(char *a1)
{
  v2 = v1;
  v80 = a1;
  v79 = type metadata accessor for CRLBoardIdentifier(0);
  v86 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77[0] = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1005B981C(&unk_101A28730);
  __chkstk_darwin(v81);
  v5 = v77 - v4;
  v6 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v6 - 8);
  v8 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9 - 8);
  v11 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v12 - 8);
  v85 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v78 = v77 - v15;
  __chkstk_darwin(v16);
  v18 = v77 - v17;
  v19 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
  v83 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v84 = v19;
  v20 = *(v19 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v21 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v22 = *&v20[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v23 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v22 + v23, v8, type metadata accessor for CRLBoardCRDTData);
  v24 = v20;
  v77[1] = sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v8, type metadata accessor for CRLBoardCRDTData);
  v25 = (*&v20[v21] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v27 = *v25;
  v26 = v25[1];

  sub_10084BD4C(v11, v27, v26, v18);

  v28 = v86[7];
  v82 = v18;
  v29 = v79;
  (v28)(v18, 0, 1);
  v30 = [v80 board];
  if (v30)
  {
    v31 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v32 = *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v33 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    v80 = v5;
    v34 = v30;
    swift_beginAccess();
    sub_100050004(v32 + v33, v8, type metadata accessor for CRLBoardCRDTData);
    CRRegister.wrappedValue.getter();
    sub_10003D7BC(v8, type metadata accessor for CRLBoardCRDTData);
    v35 = (*&v34[v31] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v36 = *v35;
    v37 = v35[1];

    v38 = v78;
    sub_10084BD4C(v11, v36, v37, v78);

    v5 = v80;
    v39 = v38;
  }

  else
  {
    v39 = v78;
  }

  v40 = v39;
  v41 = v29;
  v28();
  v42 = v82;
  v43 = *(v81 + 48);
  sub_10000BE14(v82, v5, &unk_1019F52D0);
  sub_10000BE14(v40, &v5[v43], &unk_1019F52D0);
  v44 = v86[6];
  if (v44(v5, 1, v41) == 1)
  {
    sub_10000CAAC(v40, &unk_1019F52D0);
    sub_10000CAAC(v42, &unk_1019F52D0);
    if (v44(&v5[v43], 1, v41) == 1)
    {
      v45 = v5;
LABEL_7:
      sub_10000CAAC(v45, &unk_1019F52D0);
      return *(*(v84 + v83) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
    }

    goto LABEL_10;
  }

  sub_10000BE14(v5, v85, &unk_1019F52D0);
  if (v44(&v5[v43], 1, v41) == 1)
  {
    sub_10000CAAC(v40, &unk_1019F52D0);
    sub_10000CAAC(v42, &unk_1019F52D0);
    sub_10003D7BC(v85, type metadata accessor for CRLBoardIdentifier);
LABEL_10:
    v46 = &unk_101A28730;
    v47 = v5;
LABEL_11:
    sub_10000CAAC(v47, v46);
    goto LABEL_12;
  }

  v71 = v77[0];
  sub_100046238(&v5[v43], v77[0], type metadata accessor for CRLBoardIdentifier);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    sub_10000CAAC(v40, &unk_1019F52D0);
    sub_10000CAAC(v42, &unk_1019F52D0);
    sub_10003D7BC(v71, type metadata accessor for CRLBoardIdentifier);
    sub_10003D7BC(v85, type metadata accessor for CRLBoardIdentifier);
    v47 = v5;
    v46 = &unk_1019F52D0;
    goto LABEL_11;
  }

  v72 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v73 = (v85 + v72);
  v74 = *(v85 + v72 + 8);
  v75 = (v71 + v72);
  if (*v73 == *v75 && v74 == v75[1])
  {
    sub_10000CAAC(v40, &unk_1019F52D0);
    sub_10000CAAC(v42, &unk_1019F52D0);
    sub_10003D7BC(v71, type metadata accessor for CRLBoardIdentifier);
    sub_10003D7BC(v85, type metadata accessor for CRLBoardIdentifier);
    v45 = v5;
    goto LABEL_7;
  }

  v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_10000CAAC(v40, &unk_1019F52D0);
  sub_10000CAAC(v42, &unk_1019F52D0);
  sub_10003D7BC(v71, type metadata accessor for CRLBoardIdentifier);
  sub_10003D7BC(v85, type metadata accessor for CRLBoardIdentifier);
  sub_10000CAAC(v5, &unk_1019F52D0);
  if (v76)
  {
    return *(*(v84 + v83) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  }

LABEL_12:
  v86 = objc_opt_self();
  v48 = [v86 _atomicIncrementAssertCount];
  v87 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v87);
  StaticString.description.getter();
  v49 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v50 = String._bridgeToObjectiveC()();

  v51 = [v50 lastPathComponent];

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v55 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v48;
  v57 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v57;
  v58 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v58;
  *(inited + 72) = v49;
  *(inited + 136) = &type metadata for String;
  v59 = sub_1000053B0();
  *(inited + 112) = v52;
  *(inited + 120) = v54;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v59;
  *(inited + 152) = 2078;
  v60 = v87;
  *(inited + 216) = v57;
  *(inited + 224) = v58;
  *(inited + 192) = v60;
  v61 = v49;
  v62 = v60;
  v63 = static os_log_type_t.error.getter();
  sub_100005404(v55, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v64 = static os_log_type_t.error.getter();
  sub_100005404(v55, &_mh_execute_header, v64, "Mismatch in Board IDs between ICC and ICC delegate!", 51, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v65 = swift_allocObject();
  v65[2] = 8;
  v65[3] = 0;
  v65[4] = 0;
  v65[5] = 0;
  v66 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v67 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v68 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v69 = String._bridgeToObjectiveC()();

  [v86 handleFailureInFunction:v67 file:v68 lineNumber:2078 isFatal:0 format:v69 args:v66];

  return *(*(v84 + v83) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
}

uint64_t sub_101056288()
{
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v43 = sub_100006370(0, &qword_1019F8508);
  sub_1005B981C(&qword_101A286F0);
  String.init<A>(describing:)();
  v1 = String._bridgeToObjectiveC()();

  v2 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v2;
  v3 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 32) = v1;
  v4 = inited + 32;
  v5 = inited;
  *(inited + 64) = v3;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v40 = objc_opt_self();
    LODWORD(v6) = [v40 _atomicIncrementAssertCount];
    v43 = [objc_allocWithZone(NSString) init];
    sub_100604538(v5, &v43);
    StaticString.description.getter();
    v41 = v5;
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v13 = static OS_os_log.crlAssert;
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_10146CA70;
      *(v14 + 56) = &type metadata for Int32;
      *(v14 + 64) = &protocol witness table for Int32;
      *(v14 + 32) = v6;
      *(v14 + 96) = v2;
      *(v14 + 104) = v3;
      *(v14 + 72) = v7;
      *(v14 + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(v14 + 112) = v10;
      *(v14 + 120) = v12;
      *(v14 + 176) = &type metadata for UInt;
      *(v14 + 184) = &protocol witness table for UInt;
      *(v14 + 144) = v15;
      *(v14 + 152) = 2092;
      v16 = v43;
      *(v14 + 216) = v2;
      *(v14 + 224) = v3;
      *(v14 + 192) = v16;
      v17 = v7;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v13, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v14);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v13, &_mh_execute_header, v20, "expected equality between two values of type %{public}@", 55, 2, v41);

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v2 = v21 + 3;
      v21[4] = 0;
      v21[5] = 0;
      v3 = *(v41 + 16);
      if (!v3)
      {
LABEL_29:
        v35 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v36 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v37 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v38 = String._bridgeToObjectiveC()();

        [v40 handleFailureInFunction:v36 file:v37 lineNumber:2092 isFatal:0 format:v38 args:v35];

        return *(v42 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_selectionModelTranslator);
      }

      v7 = 0;
      while (1)
      {
        v22 = (v4 + 40 * v7);
        v12 = v22[3];
        LODWORD(v6) = sub_100020E58(v22, v12);
        v23 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v10 = *v2;
        v24 = *(v23 + 16);
        v25 = __OFADD__(*v2, v24);
        v26 = *v2 + v24;
        if (v25)
        {
          break;
        }

        v12 = v21[4];
        if (v12 >= v26)
        {
          goto LABEL_21;
        }

        if (v12 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v6 = v21[5];
        if (2 * v12 > v26)
        {
          v26 = 2 * v12;
        }

        v21[4] = v26;
        if ((v26 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v27 = v23;
        v28 = swift_slowAlloc();
        v29 = v28;
        v21[5] = v28;
        if (v6)
        {
          if (v28 != v6 || v28 >= &v6[8 * v10])
          {
            memmove(v28, v6, 8 * v10);
          }

          LODWORD(v6) = v21;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v23 = v27;
LABEL_21:
          v29 = v21[5];
          if (!v29)
          {
            goto LABEL_28;
          }

          goto LABEL_22;
        }

        v23 = v27;
        if (!v29)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_22:
        v31 = *(v23 + 16);
        if (v31)
        {
          v32 = (v23 + 32);
          v33 = *v2;
          while (1)
          {
            v34 = *v32++;
            *&v29[8 * v33] = v34;
            v33 = *v2 + 1;
            if (__OFADD__(*v2, 1))
            {
              break;
            }

            *v2 = v33;
            if (!--v31)
            {
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }

LABEL_6:

        v7 = v7 + 1;
        if (v7 == v3)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

  return *(v42 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_selectionModelTranslator);
}

uint64_t sub_101056860()
{
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v43 = sub_100006370(0, &qword_1019F8508);
  sub_1005B981C(&qword_101A286F0);
  String.init<A>(describing:)();
  v1 = String._bridgeToObjectiveC()();

  v2 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v2;
  v3 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 32) = v1;
  v4 = inited + 32;
  v5 = inited;
  *(inited + 64) = v3;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v40 = objc_opt_self();
    LODWORD(v6) = [v40 _atomicIncrementAssertCount];
    v43 = [objc_allocWithZone(NSString) init];
    sub_100604538(v5, &v43);
    StaticString.description.getter();
    v41 = v5;
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v13 = static OS_os_log.crlAssert;
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_10146CA70;
      *(v14 + 56) = &type metadata for Int32;
      *(v14 + 64) = &protocol witness table for Int32;
      *(v14 + 32) = v6;
      *(v14 + 96) = v2;
      *(v14 + 104) = v3;
      *(v14 + 72) = v7;
      *(v14 + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(v14 + 112) = v10;
      *(v14 + 120) = v12;
      *(v14 + 176) = &type metadata for UInt;
      *(v14 + 184) = &protocol witness table for UInt;
      *(v14 + 144) = v15;
      *(v14 + 152) = 2097;
      v16 = v43;
      *(v14 + 216) = v2;
      *(v14 + 224) = v3;
      *(v14 + 192) = v16;
      v17 = v7;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v13, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v14);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v13, &_mh_execute_header, v20, "expected equality between two values of type %{public}@", 55, 2, v41);

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v2 = v21 + 3;
      v21[4] = 0;
      v21[5] = 0;
      v3 = *(v41 + 16);
      if (!v3)
      {
LABEL_29:
        v35 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v36 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v37 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v38 = String._bridgeToObjectiveC()();

        [v40 handleFailureInFunction:v36 file:v37 lineNumber:2097 isFatal:0 format:v38 args:v35];

        return *(v42 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
      }

      v7 = 0;
      while (1)
      {
        v22 = (v4 + 40 * v7);
        v12 = v22[3];
        LODWORD(v6) = sub_100020E58(v22, v12);
        v23 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v10 = *v2;
        v24 = *(v23 + 16);
        v25 = __OFADD__(*v2, v24);
        v26 = *v2 + v24;
        if (v25)
        {
          break;
        }

        v12 = v21[4];
        if (v12 >= v26)
        {
          goto LABEL_21;
        }

        if (v12 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v6 = v21[5];
        if (2 * v12 > v26)
        {
          v26 = 2 * v12;
        }

        v21[4] = v26;
        if ((v26 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v27 = v23;
        v28 = swift_slowAlloc();
        v29 = v28;
        v21[5] = v28;
        if (v6)
        {
          if (v28 != v6 || v28 >= &v6[8 * v10])
          {
            memmove(v28, v6, 8 * v10);
          }

          LODWORD(v6) = v21;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v23 = v27;
LABEL_21:
          v29 = v21[5];
          if (!v29)
          {
            goto LABEL_28;
          }

          goto LABEL_22;
        }

        v23 = v27;
        if (!v29)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_22:
        v31 = *(v23 + 16);
        if (v31)
        {
          v32 = (v23 + 32);
          v33 = *v2;
          while (1)
          {
            v34 = *v32++;
            *&v29[8 * v33] = v34;
            v33 = *v2 + 1;
            if (__OFADD__(*v2, 1))
            {
              break;
            }

            *v2 = v33;
            if (!--v31)
            {
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }

LABEL_6:

        v7 = v7 + 1;
        if (v7 == v3)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

  return *(v42 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
}