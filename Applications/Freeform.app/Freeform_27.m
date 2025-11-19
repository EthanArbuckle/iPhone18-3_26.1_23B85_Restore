uint64_t sub_1005E9A1C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_1005EB418;
  }

  else
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = sub_1005E9BA0;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_1005E9BA0()
{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = v1 != 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1005E9C34(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_1005E9D1C;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_1005E9D1C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1005E9E50, 0, 0);
  }
}

uint64_t sub_1005E9E50()
{
  v1 = *(v0 + 32);
  static Task<>.checkCancellation()();
  if (!v1)
  {
    sub_1005EAA7C();
    swift_allocError();
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005E9EE8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_1005B981C(&qword_1019FB750);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1005E9F90, 0, 0);
}

uint64_t sub_1005E9F90()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v22 = **(v0 + 72);
    v3 = (v1 + 32);
    v4 = type metadata accessor for TaskPriority();
    v5 = *(v4 - 8);
    v21 = *(v5 + 56);
    v20 = (v5 + 48);
    v19 = (v5 + 8);
    do
    {
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v23 = *v3;
      v21(v8, 1, 1, v4);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = (v10 + 16);
      *(v10 + 24) = 0;
      *(v10 + 32) = v23;
      sub_100041E54(v8, v9);
      LODWORD(v9) = (*v20)(v9, 1, v4);
      swift_retain_n();
      v12 = *(v0 + 88);
      if (v9 == 1)
      {
        sub_10000CAAC(*(v0 + 88), &qword_1019FB750);
        if (*v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v19)(v12, v4);
        if (*v11)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v13 = dispatch thunk of Actor.unownedExecutor.getter();
          v14 = v15;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v13 = 0;
      v14 = 0;
LABEL_10:

      if (v14 | v13)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v13;
        *(v0 + 40) = v14;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v22;
      swift_task_create();

      sub_10000CAAC(v7, &qword_1019FB750);
      ++v3;
      --v2;
    }

    while (v2);
  }

  v16 = swift_task_alloc();
  *(v0 + 104) = v16;
  v17 = sub_1005B981C(&unk_1019F5280);
  *v16 = v0;
  v16[1] = sub_1005EA2B4;

  return ThrowingTaskGroup.next(isolation:)(v0 + 120, 0, 0, v17);
}

uint64_t sub_1005EA2B4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1005EA484;
  }

  else
  {
    v2 = sub_1005EA3C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005EA3C8()
{
  sub_1005B981C(&unk_1019F6B40);
  ThrowingTaskGroup.cancelAll()();
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1005EA484()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005EA4F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10002D3D4;

  return v8(a1);
}

uint64_t sub_1005EA5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1005EA688;

  return sub_1005E9EE8(a2, a3);
}

uint64_t sub_1005EA688(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1005EA79C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002D4C8;

  return sub_1005E5F1C(a1, v5, v4);
}

uint64_t sub_1005EA848(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1005EA858()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_1005E9C14(v2);
}

uint64_t sub_1005EA900(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002D4C8;

  return sub_1005EA5E8(a1, a2, v6);
}

uint64_t sub_1005EA9BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_1005EA4F0(a1, v4, v5, v6);
}

unint64_t sub_1005EAA7C()
{
  result = qword_1019F5290;
  if (!qword_1019F5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5290);
  }

  return result;
}

unint64_t sub_1005EAAD0()
{
  result = qword_1019F52A0;
  if (!qword_1019F52A0)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F52A0);
  }

  return result;
}

void sub_1005EAB28()
{
  if (v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] == 1)
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v1 = static OS_os_log.crlDefault;
    v2 = static os_log_type_t.info.getter();

    sub_100005404(v1, &_mh_execute_header, v2, "Skipping request to update toolbar buttons after teardown.", 58, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v3 = [v0 traitCollection];
    sub_100642864(v3, [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly], v4);
    sub_100642CDC(v4, 0);
    sub_1005EB2D4(v4);
  }
}

uint64_t sub_1005EAC48()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v5 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v4 + v5, v3);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v3, type metadata accessor for CRLBoardCRDTData);
  return v7[1];
}

void sub_1005EAD5C()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v26[-v3];
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v14 = *(*(*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v15 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v14 + v15, v7);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v7, type metadata accessor for CRLBoardCRDTData);
  v16 = UUID.description.getter();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  v19 = static os_log_type_t.default.getter();
  sub_100005404(v12, &_mh_execute_header, v19, "Stopped sharing for board %@", 28, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  type metadata accessor for MainActor();
  v21 = v1;
  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v21;
  sub_100796D64(0, 0, v4, &unk_10146D488, v23);

  v24 = *&v21[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController];
  if (v24)
  {
    v25 = v24;
    sub_100F9F8FC();
  }
}

uint64_t sub_1005EB0FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1005E8A68(a1, v4, v5, v6);
}

uint64_t sub_1005EB1B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1005E83C0(a1, v4, v5, v7, v6);
}

uint64_t sub_1005EB270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005EB328(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_1005E996C(a1);
}

uint64_t sub_1005EB3DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1005EB428()
{
  v0 = _UISolariumEnabled();
  v1 = &UIFontTextStyleTitle3;
  if (!v0)
  {
    v1 = &UIFontTextStyleTitle2;
  }

  result = *v1;
  qword_101AD5E30 = result;
  return result;
}

UIFontWeight sub_1005EB468()
{
  result = UIFontWeightBold;
  qword_101AD5E38 = *&UIFontWeightBold;
  return result;
}

uint64_t sub_1005EB494()
{
  result = _UISolariumEnabled();
  v1 = 8.0;
  if (result)
  {
    v1 = 0.0;
  }

  qword_101AD5E48 = *&v1;
  return result;
}

UIFontWeight sub_1005EB4DC()
{
  result = UIFontWeightRegular;
  qword_101AD5E58 = *&UIFontWeightRegular;
  return result;
}

uint64_t sub_1005EB508()
{
  result = _UISolariumEnabled();
  if (result)
  {
    result = sub_1004A48FC();
    v1 = 2;
    if (!result)
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 1;
  }

  qword_101AD5E68 = v1;
  return result;
}

void sub_1005EB544()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier);
  v3 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 48);
  v8 = 0;
  if ((v3 - 192) <= 0x3D)
  {
    v4 = vorrq_s8(v2[1], v2[2]);
    v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v2->i64[1];
    v6 = v3 == 192 && v2->i64[0] == 1;
    if (v6 && v5 == 0)
    {
      v8 = 1;
    }
  }

  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_showsRecentlyDeletedInfo) = v8;
  sub_1005EBAB4();
  v9 = v2[3].u8[0];
  if (v9 <= 0xFD)
  {
    v12 = v2->i64[0];
    v13 = v2->i64[1];
    v14 = v2[1].i64[0];
    v15 = v2[1].i64[1];
    v16 = v2[2].i64[0];
    v17 = v2[2].i64[1];
    sub_100076F8C(v2->i64[0], v13, v14, v15, v16, v17, v9);
    sub_100068F28();
    sub_1000771A8(v12, v13, v14, v15, v16, v17, v9);
    v11 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_titleLabel);
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
    v11 = *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_titleLabel);
  }

  [v11 setText:v10];

  *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_shouldAnimateNextCollapseStateToggle) = 0;

  sub_1005EB6D8();
}

void sub_1005EB6D8()
{
  v1 = &v0[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier];
  v2 = v0[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 48];
  if (v2 <= 0xFD)
  {
    v4 = vorrq_s8(v1[1], v1[2]);
    v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v1->i64[1] | v1->i64[0];
    v3 = v2 == 192 && v5 == 0;
  }

  else
  {
    v3 = 0;
  }

  v7 = *&v0[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_collapseButton];
  [v7 setHidden:v3 ^ 1];
  [*&v0[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_pinLabelToLeadingEdgeOfCollapseButtonConstraint] setActive:v3];
  v8 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_isCollapsed;
  if (v0[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_isCollapsed] == 1)
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

    if (v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    v12 = [v13 localizedStringForKey:v14 value:v15 table:0];

    if (v12)
    {
      goto LABEL_14;
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = String._bridgeToObjectiveC()();

LABEL_14:
  [v7 setAccessibilityLabel:v12];

  v16 = 0.0;
  if (v0[v8])
  {
    v17 = 90.0;
  }

  else
  {
    v17 = 0.0;
  }

  if (sub_100076BAC())
  {
    v17 = -v17;
  }

  if (v0[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_shouldAnimateNextCollapseStateToggle])
  {
    v16 = 0.2;
  }

  v18 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  *(v19 + 24) = v17;
  v22[4] = sub_1005ED258;
  v22[5] = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = *"";
  v22[2] = sub_100007638;
  v22[3] = &unk_10187C668;
  v20 = _Block_copy(v22);
  v21 = v0;

  [v18 animateWithDuration:v20 animations:v16];
  _Block_release(v20);
}

void sub_1005EBA24(uint64_t a1, double a2)
{
  v3 = [*(a1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_collapseButton) imageView];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1005ED264(a2);
    CGAffineTransformMakeRotation(&v6, v5);
    [v4 setTransform:&v6];
  }
}

void sub_1005EBAB4()
{
  if (*(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_showsRecentlyDeletedInfo) == 1)
  {
    if (qword_1019F12F8 != -1)
    {
      swift_once();
    }

    v1 = qword_1019F1300;
    v2 = qword_101AD5E50;
    if (v1 != -1)
    {
      swift_once();
    }

    if (qword_1019F1308 != -1)
    {
      swift_once();
    }

    v3 = qword_1019F1310;
    v10 = qword_101AD5E60;
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = qword_101AD5E68;
  }

  else
  {
    if (qword_1019F12D8 != -1)
    {
      swift_once();
    }

    v5 = qword_1019F12E0;
    v2 = qword_101AD5E30;
    if (v5 != -1)
    {
      swift_once();
    }

    if (qword_1019F12E8 != -1)
    {
      swift_once();
    }

    v10 = qword_101AD5E40;
    if (sub_100076BAC())
    {
      v4 = 0;
    }

    else
    {
      v4 = 2;
    }
  }

  v6 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_titleLabel);
  v7 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v2];
  v8 = objc_opt_self();
  [v7 pointSize];
  v9 = [v8 systemFontOfSize:? weight:?];

  [v6 setFont:v9];
  [v6 setTextColor:v10];

  [v6 setTextAlignment:v4];
}

char *sub_1005EBDAC(double a1, double a2, double a3, double a4)
{
  v9 = sub_1005B981C(&unk_1019F4CD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v79 - v10;
  v12 = &v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  v12[48] = -2;
  v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_showsRecentlyDeletedInfo] = 0;
  v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_isCollapsed] = 0;
  v13 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_titleLabel;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_pinLabelToLeadingEdgeOfCollapseButtonConstraint] = 0;
  *&v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_titleLabelTopConstraint] = 0;
  v14 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_collapseButton;
  *&v4[v14] = [objc_allocWithZone(UIButton) init];
  v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_shouldAnimateNextCollapseStateToggle] = 0;
  *&v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = _s13SectionHeaderCMa();
  v86.receiver = v4;
  v86.super_class = v15;
  v16 = objc_msgSendSuper2(&v86, "initWithFrame:", a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_titleLabel;
  v18 = *&v16[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_titleLabel];
  v19 = v16;
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v16[v17] setNumberOfLines:0];
  LODWORD(v20) = 1148846080;
  [*&v16[v17] setContentCompressionResistancePriority:1 forAxis:v20];
  if (_UISolariumEnabled())
  {
    LODWORD(v21) = 1148846080;
    [*&v16[v17] setContentHuggingPriority:1 forAxis:v21];
  }

  sub_1005EBAB4();
  v22 = v19;
  v23 = v17;
  v24 = *&v16[v17];
  v25 = v22;
  [v25 addSubview:v24];
  v26 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_collapseButton;
  v27 = *&v25[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_collapseButton];
  static UIButton.Configuration.plain()();
  v28 = String._bridgeToObjectiveC()();
  v29 = [objc_opt_self() systemImageNamed:v28];

  UIButton.Configuration.image.setter();
  v30 = type metadata accessor for UIButton.Configuration();
  (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
  UIButton.configuration.setter();

  [*&v25[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v31) = 1148846080;
  [*&v25[v26] setContentCompressionResistancePriority:0 forAxis:v31];
  [*&v25[v26] addTarget:v25 action:"collapseButtonTapped:" forControlEvents:64];
  [*&v25[v26] setContentHorizontalAlignment:5];
  v32 = *&v25[v26];
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 mainBundle];
  v36 = String._bridgeToObjectiveC()();
  v37 = String._bridgeToObjectiveC()();
  v38 = [v35 localizedStringForKey:v36 value:v37 table:0];

  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  [v34 setAccessibilityLabel:v38];

  v39 = [*&v25[v26] imageView];
  if (v39)
  {
    v40 = v39;
    [v39 setClipsToBounds:0];
  }

  v41 = [*&v25[v26] imageView];
  if (v41)
  {
    v42 = v41;
    [v41 setContentMode:4];
  }

  [v25 addSubview:*&v25[v26]];
  v43 = [v25 trailingAnchor];

  v44 = v23;
  v45 = [*&v16[v23] trailingAnchor];
  v46 = [v43 constraintEqualToAnchor:v45];
  v80 = v46;

  type metadata accessor for UILayoutPriority(0);
  v83 = 1065353216;
  v84 = 1148846080;
  sub_1005ED390();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v47) = v85;
  [v46 setPriority:v47];
  v48 = [*&v25[v26] leadingAnchor];
  v49 = [*&v16[v23] trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:12.0];

  v51 = *&v25[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_pinLabelToLeadingEdgeOfCollapseButtonConstraint];
  *&v25[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_pinLabelToLeadingEdgeOfCollapseButtonConstraint] = v50;
  v82 = v50;

  v52 = [*&v16[v23] topAnchor];
  v53 = [v25 topAnchor];

  v54 = [v52 constraintEqualToAnchor:v53];
  v55 = *&v25[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_titleLabelTopConstraint];
  *&v25[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_titleLabelTopConstraint] = v54;
  v56 = v54;

  sub_1005B981C(&unk_1019F4D60);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10146D4C0;
  *(v57 + 32) = v56;
  v58 = *&v16[v23];
  v81 = v56;
  v59 = [v58 leadingAnchor];
  v60 = [v25 leadingAnchor];

  v61 = [v59 constraintEqualToAnchor:v60];
  v62 = v80;
  *(v57 + 40) = v61;
  *(v57 + 48) = v62;
  v63 = v62;
  v64 = [v25 bottomAnchor];

  v65 = [*&v16[v44] bottomAnchor];
  if (qword_1019F12F0 != -1)
  {
    swift_once();
  }

  v66 = [v64 constraintEqualToAnchor:v65 constant:*&qword_101AD5E48];

  *(v57 + 56) = v66;
  v67 = [*&v25[v26] centerYAnchor];
  v68 = [*&v16[v44] centerYAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v57 + 64) = v69;
  v70 = [v25 trailingAnchor];

  v71 = [*&v25[v26] trailingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v57 + 72) = v72;
  v73 = [*&v25[v26] heightAnchor];
  v74 = [*&v16[v44] heightAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v57 + 80) = v75;
  v76 = objc_opt_self();
  sub_100078784();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:isa];

  return v25;
}

void *sub_1005EC854(double a1, double a2, double a3, double a4)
{
  v20.receiver = v4;
  v20.super_class = _s13GridSeparatorCMa();
  v9 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v10 = qword_1019F1318;
  v11 = v9;
  if (v10 != -1)
  {
    v19 = v11;
    swift_once();
    v11 = v19;
  }

  v12 = v11;
  [v11 setBackgroundColor:qword_101AD5E70];
  v13 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101465920;
  v15 = [v12 heightAnchor];

  v16 = [v15 constraintEqualToConstant:0.5];
  *(v14 + 32) = v16;
  sub_100078784();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:isa];

  return v12;
}

id sub_1005ECA84(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005ECABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005ECB54, v6, v5);
}

uint64_t sub_1005ECB54()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_iCloudStatusLabel) setHidden:0];
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1005ECBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a2;
  sub_10064191C(0, 0, v8, a4, v11);
}

uint64_t sub_1005ECD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005ECDB4, v6, v5);
}

uint64_t sub_1005ECDB4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_iCloudStatusLabel) setHidden:1];
  }

  v3 = *(v0 + 8);

  return v3();
}

id sub_1005ECEFC()
{
  v1 = *&v0[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_syncDidEndObserver];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *&v0[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_syncDidBeginObserver];
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }

  v8.receiver = v0;
  v8.super_class = _s18iCloudStatusFooterCMa();
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_1005ED0F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_1005ECD1C(a1, v4, v5, v6);
}

uint64_t sub_1005ED1A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1005ECABC(a1, v4, v5, v6);
}

void sub_1005ED274()
{
  v1 = v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = -2;
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_showsRecentlyDeletedInfo) = 0;
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_isCollapsed) = 0;
  v2 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_pinLabelToLeadingEdgeOfCollapseButtonConstraint) = 0;
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_titleLabelTopConstraint) = 0;
  v3 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_collapseButton;
  *(v0 + v3) = [objc_allocWithZone(UIButton) init];
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_shouldAnimateNextCollapseStateToggle) = 0;
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1005ED390()
{
  result = qword_1019F53D0;
  if (!qword_1019F53D0)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F53D0);
  }

  return result;
}

double sub_1005ED404(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v4 = v2[3];
  v3 = v2[4];
  sub_100020E58(v2, v4);
  v5 = (*(*(v3 + 32) + 8))(v4);
  v7 = v2[3];
  v6 = v2[4];
  sub_100020E58(v2, v7);
  return v5 + (*(*(v6 + 32) + 32))(v7);
}

double sub_1005ED4AC()
{
  v1 = *(v0 + 8);
  sub_10078935C(*v0);
  return v1 + v2;
}

double sub_1005ED4DC()
{
  v1 = *(v0 + 16);
  sub_1007CF5B4(*(v0 + 8), *v0);
  return v1 + v2;
}

double sub_1005ED510()
{
  v1 = *(v0 + 8);
  sub_10088201C(*v0);
  return v1 + v2;
}

double sub_1005ED540(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  sub_1009AE4FC();
  return v2 + v3;
}

double sub_1005ED56C()
{
  v1 = *(v0 + 8);
  sub_100CCF400(*v0);
  return v1 + v2;
}

double sub_1005ED5C4()
{
  v1 = *(v0 + 32);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v2 = CACurrentMediaTime();
  v3 = sub_10123553C(&v7, v2);
  sub_1005ED63C(&v7);
  [v3 duration];
  v5 = v4;

  return v1 + v5;
}

uint64_t sub_1005ED63C(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A09F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSString sub_1005ED6A4()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD5E78 = result;
  return result;
}

NSString sub_1005ED6DC()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD5E80 = result;
  return result;
}

uint64_t sub_1005ED77C()
{
  _StringGuts.grow(_:)(82);
  v1._countAndFlagsBits = 0x203A4C5255;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  type metadata accessor for URL();
  sub_100055E7C(&qword_101A15B10, &type metadata accessor for URL);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3A656C7469542020;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardTitle));
  v4._countAndFlagsBits = 0x69746E6564492020;
  v4._object = 0xEE00203A72656966;
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_10084B8C8();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x5320656D69542020;
  v6._object = 0xEE00203A706D6174;
  String.append(_:)(v6);
  type metadata accessor for Date();
  sub_100055E7C(&unk_1019F5540, &type metadata accessor for Date);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x7470656363412020;
  v8._object = 0xEC000000203A6465;
  String.append(_:)(v8);
  if (*(v0 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_accepted))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_accepted))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._object = 0x8000000101557090;
  v12._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v12);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_shareString));
  return 0;
}

uint64_t type metadata accessor for CRLSharedHighlight()
{
  result = qword_1019F5410;
  if (!qword_1019F5410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005EDBB0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CRLBoardIdentifierStorage(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1005EDCE0()
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.crlDefault;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Highlight initial sync timer fired.", 35, 2, _swiftEmptyArrayStorage);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_isSyncing) = 0;
    v4 = [objc_opt_self() defaultCenter];
    if (qword_1019F1320 != -1)
    {
      swift_once();
    }

    [v4 postNotificationName:qword_101AD5E78 object:v3 userInfo:0];
  }
}

uint64_t sub_1005EDE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005EDEB8, v6, v5);
}

void sub_1005EDEB8()
{
  v1 = *(v0 + 16);

  v2 = [*(v1 + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_highlightObservers) allObjects];
  sub_1005B981C(&unk_1019F5530);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = v0;
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = v3;
  do
  {
    if (v6)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
    }

    v9 = *(v17 + 16);
    ++v5;
    type metadata accessor for CRLSharedHighlight();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 highlightControllerHighlightsDidChange:v9 highlights:isa];

    swift_unknownObjectRelease();
    v3 = v7;
  }

  while (v4 != v5);
LABEL_10:
  v11 = *(v17 + 16);

  v12 = OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_initialSyncTimer;
  v13 = *(v11 + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_initialSyncTimer);
  if (v13)
  {
    v14 = *(v17 + 16);
    [v13 fire];
    v15 = *(v11 + v12);
    *(v11 + v12) = 0;

    *(v14 + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_isSyncing) = 0;
  }

  v16 = *(v17 + 8);

  v16();
}

uint64_t sub_1005EE0B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [*&v4[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight] hideContextMenu];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 actionBlock];

        v9[2](v9);
        _Block_release(v9);
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return sub_1005EE734(a1);
}

void sub_1005EE20C(void *a1)
{
  v57 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v52 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
  v49 = v3;
  v50 = v1;
  v53 = v5;
  v54 = v2;
  v55 = v12;
  v56 = v8;
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights;
  if (v11 >> 62)
  {
LABEL_27:
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v14 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      sub_100006370(0, &qword_1019F54D0);
      if (static NSObject.== infix(_:_:)())
      {
        break;
      }

      ++v14;
      if (v17 == v13)
      {
        goto LABEL_13;
      }
    }

    v57 = *&v16[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight];
    v18 = v51;
    v19 = *(v52 + 16);
    v19(v51, &v16[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_shareURL], v55);
    v20 = *&v16[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardTitle];
    v46 = *&v16[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardTitle + 8];
    v47 = v20;
    sub_1005F1308(&v16[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier], v56);
    v21 = v49;
    v22 = *(v49 + 16);
    v22(v53, &v16[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_timeStamp], v54);
    v45 = v16[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_accepted];
    v23 = *&v16[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_shareString];
    v43 = *&v16[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_shareString + 8];
    v44 = v23;
    v42 = *&v16[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_previewImage];
    v24 = type metadata accessor for CRLSharedHighlight();
    v25 = objc_allocWithZone(v24);
    v26 = v57;
    *&v25[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight] = v57;
    v19(&v25[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_shareURL], v18, v55);
    v27 = &v25[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardTitle];
    v28 = v46;
    *v27 = v47;
    v27[1] = v28;
    sub_1005F1308(v56, &v25[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier]);
    v30 = v53;
    v29 = v54;
    v22(&v25[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_timeStamp], v53, v54);
    v25[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_accepted] = (v45 & 1) == 0;
    v31 = &v25[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_shareString];
    v32 = v43;
    *v31 = v44;
    v31[1] = v32;
    v33 = v42;
    *&v25[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_previewImage] = v42;
    v58.receiver = v25;
    v58.super_class = v24;
    v34 = v26;

    v35 = v33;
    v36 = objc_msgSendSuper2(&v58, "init");
    (*(v21 + 8))(v30, v29);
    sub_100086F34(v56);
    (*(v52 + 8))(v51, v55);
    v37 = *(v50 + v48);
    swift_bridgeObjectRetain_n();
    v38 = sub_10100EF84(v16, v37);
    LOBYTE(v24) = v39;

    if (v24)
    {
LABEL_24:
      sub_10007EA74(v37);

      return;
    }

    v40 = v36;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v37 < 0 || (v37 & 0x4000000000000000) != 0)
    {
      v37 = sub_10113E260(v37);
    }

    if ((v38 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v38 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v41 = *((v37 & 0xFFFFFFFFFFFFFF8) + 8 * v38 + 0x20);
      *((v37 & 0xFFFFFFFFFFFFFF8) + 8 * v38 + 0x20) = v40;

      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_1005EE734(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v4 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
      v16 = _swiftEmptyArrayStorage;
      v5 = v4 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v5)
      {
        break;
      }

      v13[1] = v1;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v1 = v13;
        v15 = v8;
        __chkstk_darwin(v8);
        v12[2] = &v15;
        if (sub_100C33540(sub_1005F2064, v12, a1))
        {
        }

        else
        {
          v1 = &v16;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v14 = v7;
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v7 = v14;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v6;
        if (v10 == v5)
        {
          v11 = v16;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        return result;
      }
    }

    v11 = _swiftEmptyArrayStorage;
LABEL_18:

    return sub_10007EA74(v11);
  }

  return result;
}

uint64_t sub_1005EE930(void *a1, uint64_t a2)
{
  v3 = *a1 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v5 = *(v3 + v4);
  v6 = *(v3 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

id sub_1005EE9D8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1005EEA7C(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2 & 1;
  *(v12 + 48) = a3;
  *(v12 + 56) = a4;
  sub_1005F16CC(a1, a2 & 1);

  v13 = a4;
  sub_10064191C(0, 0, v10, &unk_10146D640, v12);
}

uint64_t sub_1005EEBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 208) = a6;
  *(v7 + 216) = a7;
  *(v7 + 540) = a5;
  *(v7 + 200) = a4;
  v8 = type metadata accessor for Calendar();
  *(v7 + 224) = v8;
  *(v7 + 232) = *(v8 - 8);
  *(v7 + 240) = swift_task_alloc();
  v9 = type metadata accessor for DateComponents();
  *(v7 + 248) = v9;
  *(v7 + 256) = *(v9 - 8);
  *(v7 + 264) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v7 + 272) = v10;
  *(v7 + 280) = *(v10 - 8);
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  sub_1005B981C(&unk_1019F52D0);
  *(v7 + 304) = swift_task_alloc();
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  *(v7 + 312) = v11;
  *(v7 + 320) = *(v11 - 8);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  sub_1005B981C(&qword_101A0A320);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v7 + 360) = v12;
  *(v7 + 368) = *(v12 - 8);
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  sub_1005B981C(&unk_1019F5500);
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();

  return _swift_task_switch(sub_1005EEED0, 0, 0);
}

uint64_t sub_1005EEED0()
{
  v1 = *(v0 + 200);
  if (*(v0 + 540))
  {
    sub_10007EA74(_swiftEmptyArrayStorage);
    if (qword_1019F2098 != -1)
    {
LABEL_63:
      swift_once();
    }

    v2 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v6 = v5;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v4;
    *(inited + 40) = v6;
    v7 = static os_log_type_t.error.getter();
    sub_100005404(v2, &_mh_execute_header, v7, "Unable to retrieve metadata for highlights. Error: ", 51, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
LABEL_48:

    v72 = *(v0 + 8);

    return v72();
  }

  *(v0 + 168) = _swiftEmptyArrayStorage;
  v8 = *(v1 + 32);
  *(v0 + 541) = v8;
  v9 = 1 << v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v1 + 64);
  *(v0 + 408) = CKFreeformShareType;
  *(v0 + 536) = enum case for Calendar.Component.day(_:);

  v12 = 0;
  for (i = 0; ; i = *(v0 + 440))
  {
    *(v0 + 416) = _swiftEmptyArrayStorage;
    *(v0 + 424) = _swiftEmptyArrayStorage;
    if (!v11)
    {
      v15 = ((1 << *(v0 + 541)) + 63) >> 6;
      if (v15 <= i + 1)
      {
        v16 = i + 1;
      }

      else
      {
        v16 = ((1 << *(v0 + 541)) + 63) >> 6;
      }

      v17 = (v16 - 1);
      while (1)
      {
        v18 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v18 >= v15)
        {
          v53 = *(v0 + 392);
          v54 = sub_1005B981C(&unk_1019F5510);
          (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
          v28 = 0;
          goto LABEL_21;
        }

        v14 = *(v0 + 200);
        v11 = *(v14 + 8 * v18 + 64);
        ++i;
        if (v11)
        {
          v95 = v12;
          i = v18;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_56:

      goto LABEL_57;
    }

    v95 = v12;
    v14 = *(v0 + 200);
LABEL_20:
    v20 = *(v0 + 384);
    v19 = *(v0 + 392);
    v22 = *(v0 + 360);
    v21 = *(v0 + 368);
    v94 = (v11 - 1) & v11;
    v23 = __clz(__rbit64(v11)) | (i << 6);
    (*(v21 + 16))(v20, *(v14 + 48) + *(v21 + 72) * v23, v22);
    v24 = *(*(v14 + 56) + 8 * v23);
    v25 = sub_1005B981C(&unk_1019F5510);
    v26 = *(v25 + 48);
    (*(v21 + 32))(v19, v20, v22);
    *(v19 + v26) = v24;
    (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
    v27 = v24;
    v28 = v94;
    v12 = v95;
    v17 = i;
LABEL_21:
    *(v0 + 432) = v28;
    *(v0 + 440) = v17;
    v29 = *(v0 + 400);
    sub_1005F16D8(*(v0 + 392), v29);
    v30 = sub_1005B981C(&unk_1019F5510);
    if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
    {

      sub_10007EA74(_swiftEmptyArrayStorage);
      goto LABEL_48;
    }

    v31 = *(v0 + 368);
    v32 = *(v0 + 376);
    v33 = *(v0 + 208);
    v17 = *(*(v0 + 400) + *(v30 + 48));
    *(v0 + 448) = v17;
    (*(v31 + 32))(v32);
    v34 = swift_task_alloc();
    v34[2] = v32;

    v35 = sub_1009ADBA8(sub_1005F1748, v34, v33);
    *(v0 + 456) = v12;

    if (v35 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    if ((v35 & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_63;
      }

      v36 = *(v35 + 32);
    }

    v37 = v36;
    *(v0 + 464) = v36;
    v38 = *(v0 + 352);
    v40 = *(v0 + 272);
    v39 = *(v0 + 280);

    v41 = [v37 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v39 + 56))(v38, 0, 1, v40);
    v42 = [v17 share];
    v43 = [v42 values];

    sub_1005B981C(&qword_101A1B0B0);
    v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = static CKShare.SystemFieldKey.shareType.getter();
    if (!*(v44 + 16))
    {

LABEL_33:

LABEL_34:
      v52 = 0;
      v51 = 0xE000000000000000;
      goto LABEL_35;
    }

    v47 = sub_10000BE7C(v45, v46);
    v49 = v48;

    if ((v49 & 1) == 0)
    {
      goto LABEL_33;
    }

    v50 = *(*(v44 + 56) + 8 * v47);
    swift_unknownObjectRetain();

    *(v0 + 192) = v50;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    v52 = *(v0 + 144);
    v51 = *(v0 + 152);
LABEL_35:
    if (v52 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v55)
    {
      break;
    }

    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v56)
    {
      goto LABEL_39;
    }

    sub_10000CAAC(*(v0 + 352), &qword_101A0A320);

LABEL_9:
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    v12 = *(v0 + 456);
    v11 = *(v0 + 432);
  }

LABEL_39:
  v58 = *(v0 + 312);
  v57 = *(v0 + 320);
  v59 = *(v0 + 304);
  v60 = [v17 share];
  v61 = [v60 recordID];

  v62 = [v61 zoneID];
  sub_100EE9190(v59);

  v63 = (*(v57 + 48))(v59, 1, v58);
  v64 = *(v0 + 352);
  if (v63 == 1)
  {
    v65 = *(v0 + 304);
    sub_10000CAAC(*(v0 + 352), &qword_101A0A320);

    sub_10000CAAC(v65, &unk_1019F52D0);
    goto LABEL_9;
  }

  v66 = *(v0 + 344);
  v68 = *(v0 + 272);
  v67 = *(v0 + 280);
  sub_1005EB270(*(v0 + 304), *(v0 + 336));
  sub_10005F954(v64, v66);
  if ((*(v67 + 48))(v66, 1, v68) == 1)
  {
    v70 = *(v0 + 344);
    v69 = *(v0 + 352);
    v71 = *(v0 + 336);

    sub_100086F34(v71);
    sub_10000CAAC(v69, &qword_101A0A320);
    sub_10000CAAC(v70, &qword_101A0A320);
    goto LABEL_9;
  }

  (*(*(v0 + 280) + 32))(*(v0 + 296), *(v0 + 344), *(v0 + 272));
  *(v0 + 472) = [v17 participantStatus];
  v74 = [v17 share];
  v75 = [v74 values];

  v76 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = static CKShare.SystemFieldKey.title.getter();
  if (!*(v76 + 16))
  {
    goto LABEL_56;
  }

  v79 = sub_10000BE7C(v77, v78);
  v81 = v80;

  if ((v81 & 1) == 0)
  {
LABEL_57:

    goto LABEL_58;
  }

  v82 = *(*(v76 + 56) + 8 * v79);
  swift_unknownObjectRetain();

  *(v0 + 184) = v82;
  if (swift_dynamicCast())
  {
    v83 = *(v0 + 128);
    v84 = *(v0 + 136);
    goto LABEL_59;
  }

LABEL_58:
  v83 = 0;
  v84 = 0xE000000000000000;
LABEL_59:
  *(v0 + 480) = v83;
  *(v0 + 488) = v84;
  v85 = [v17 share];
  v86 = [v85 participants];
  sub_100006370(0, &qword_1019F5520);
  v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100CE9894(v87);
  v89 = v88;
  v91 = v90;

  *(v0 + 496) = v91;
  *(v0 + 504) = v89;
  v92 = [v17 share];
  *(v0 + 512) = v92;
  v93 = swift_task_alloc();
  *(v0 + 520) = v93;
  *v93 = v0;
  v93[1] = sub_1005EF9E4;

  return sub_1005F1768(v92);
}

uint64_t sub_1005EF9E4(uint64_t a1)
{
  v2 = *(*v1 + 512);
  *(*v1 + 528) = a1;

  return _swift_task_switch(sub_1005EFB00, 0, 0);
}

uint64_t sub_1005EFB00()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 288);
  v3 = *(v0 + 280);
  v176 = *(v0 + 272);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v183 = *(v0 + 224);
  static Calendar.current.getter();
  sub_1005B981C(&qword_1019F5528);
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146C6B0;
  (*(v7 + 104))(v9 + v8, v1, v6);
  sub_10001644C(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  static Date.now.getter();
  Calendar.dateComponents(_:from:to:)();

  v10 = *(v3 + 8);
  v10(v2, v176);
  (*(v5 + 8))(v4, v183);
  v11 = DateComponents.day.getter();
  if ((v12 & 1) == 0)
  {
    v174 = v10;
    v185 = *(v0 + 528);
    if (v11 > 29)
    {
      v52 = *(v0 + 464);
      v180 = *(v0 + 352);
      v53 = *(v0 + 336);
      v54 = *(v0 + 296);
      v56 = *(v0 + 264);
      v55 = *(v0 + 272);
      v58 = *(v0 + 248);
      v57 = *(v0 + 256);

      (*(v57 + 8))(v56, v58);
      v174(v54, v55);
      sub_100086F34(v53);
      v18 = v180;
      goto LABEL_33;
    }

    v20 = *(v0 + 496);
    v19 = *(v0 + 504);
    v166 = *(v0 + 480);
    v167 = *(v0 + 488);
    v178 = *(v0 + 464);
    v21 = *(v0 + 384);
    v170 = *(v0 + 416);
    v171 = *(v0 + 368);
    v23 = *(v0 + 328);
    v22 = *(v0 + 336);
    v24 = v20 == 0;
    v26 = *(v0 + 288);
    v25 = *(v0 + 296);
    v164 = v23;
    if (!v20)
    {
      v20 = 0xE000000000000000;
    }

    v172 = v20;
    if (v24)
    {
      v19 = 0;
    }

    v169 = v19;
    v28 = *(v0 + 272);
    v27 = *(v0 + 280);
    v163 = *(v0 + 360);
    v165 = *(v0 + 472) == 2;
    v29 = *(*(v0 + 368) + 16);
    v29(v21, *(v0 + 376));
    sub_1005F1308(v22, v23);
    v30 = *(v27 + 16);
    v30(v26, v25, v28);
    v31 = type metadata accessor for CRLSharedHighlight();
    v32 = objc_allocWithZone(v31);
    *&v32[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight] = v178;
    (v29)(&v32[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_shareURL], v21, v163);
    v33 = &v32[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardTitle];
    *v33 = v166;
    v33[1] = v167;
    sub_1005F1308(v164, &v32[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier]);
    v30(&v32[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_timeStamp], v26, v28);
    v32[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_accepted] = v165;
    v34 = &v32[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_shareString];
    *v34 = v169;
    v34[1] = v172;
    *&v32[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_previewImage] = v185;
    *(v0 + 112) = v32;
    *(v0 + 120) = v31;
    v35 = v170;
    v36 = v178;
    v37 = v185;
    v173 = objc_msgSendSuper2((v0 + 112), "init");
    v174(v26, v28);
    sub_100086F34(v164);
    (*(v171 + 8))(v21, v163);
    *(v0 + 176) = _swiftEmptyArrayStorage;
    v168 = v37;
    if (v170 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v39 = 0;
      v40 = &v173[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier];
      v41 = v35 & 0xFFFFFFFFFFFFFF8;
      v35 &= 0xC000000000000001;
      v42 = *(v0 + 416) + 32;
      v186 = i;
      v179 = v42;
      while (1)
      {
        if (v35)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *(v41 + 16))
          {
            goto LABEL_27;
          }

          v43 = *(v42 + 8 * v39);
        }

        v44 = v43;
        v45 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v46 = &v43[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier];
        if (static UUID.== infix(_:_:)() & 1) != 0 && ((v47 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20), v48 = *&v46[v47], v49 = *&v46[v47 + 8], v50 = &v40[v47], v48 == *v50) ? (v51 = v49 == *(v50 + 1)) : (v51 = 0), v51 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v42 = v179;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v39;
        if (v45 == v186)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_29:
    v59 = *(v0 + 176);
    if (v59 < 0 || (v59 & 0x4000000000000000) != 0)
    {
      v69 = _CocoaArrayWrapper.endIndex.getter();

      if (v69)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v60 = *(v59 + 16);

      if (v60)
      {
LABEL_32:
        v61 = *(v0 + 464);
        v62 = *(v0 + 352);
        v63 = *(v0 + 336);
        v64 = *(v0 + 296);
        v66 = *(v0 + 264);
        v65 = *(v0 + 272);
        v68 = *(v0 + 248);
        v67 = *(v0 + 256);

        (*(v67 + 8))(v66, v68);
        v174(v64, v65);
        sub_100086F34(v63);
        v18 = v62;
        goto LABEL_33;
      }
    }

    v70 = v173;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 168) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_90;
    }

    goto LABEL_36;
  }

  v13 = *(v0 + 528);
  v14 = *(v0 + 464);
  v184 = *(v0 + 352);
  v175 = *(v0 + 296);
  v177 = *(v0 + 336);
  v15 = *(v0 + 264);
  v174 = *(v0 + 272);
  v17 = *(v0 + 248);
  v16 = *(v0 + 256);

  (*(v16 + 8))(v15, v17);
  v10(v175, v174);
  sub_100086F34(v177);
  v18 = v184;
LABEL_33:
  sub_10000CAAC(v18, &qword_101A0A320);
  v181 = *(v0 + 416);
  while (1)
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    v80 = *(v0 + 456);
    v81 = *(v0 + 432);
    v82 = *(v0 + 440);
    *(v0 + 416) = v181;
    if (!v81)
    {
      v84 = ((1 << *(v0 + 541)) + 63) >> 6;
      if (v84 <= v82 + 1)
      {
        v85 = v82 + 1;
      }

      else
      {
        v85 = ((1 << *(v0 + 541)) + 63) >> 6;
      }

      v86 = (v85 - 1);
      while (1)
      {
        v87 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          break;
        }

        if (v87 >= v84)
        {
          v122 = *(v0 + 392);
          v123 = sub_1005B981C(&unk_1019F5510);
          (*(*(v123 - 8) + 56))(v122, 1, 1, v123);
          v92 = 0;
          goto LABEL_49;
        }

        v83 = *(v0 + 200);
        v81 = *(v83 + 8 * v87 + 64);
        ++v82;
        if (v81)
        {
          v188 = v80;
          v82 = v87;
          goto LABEL_48;
        }
      }

      __break(1u);
      goto LABEL_83;
    }

    v188 = v80;
    v83 = *(v0 + 200);
LABEL_48:
    v88 = *(v0 + 384);
    v89 = *(v0 + 392);
    v90 = *(v0 + 360);
    v91 = *(v0 + 368);
    v92 = (v81 - 1) & v81;
    v93 = __clz(__rbit64(v81)) | (v82 << 6);
    (*(v91 + 16))(v88, *(v83 + 48) + *(v91 + 72) * v93, v90);
    v94 = *(*(v83 + 56) + 8 * v93);
    v95 = sub_1005B981C(&unk_1019F5510);
    v96 = *(v95 + 48);
    (*(v91 + 32))(v89, v88, v90);
    *(v89 + v96) = v94;
    (*(*(v95 - 8) + 56))(v89, 0, 1, v95);
    v97 = v94;
    v86 = v82;
    v80 = v188;
LABEL_49:
    *(v0 + 432) = v92;
    *(v0 + 440) = v86;
    v98 = *(v0 + 400);
    sub_1005F16D8(*(v0 + 392), v98);
    v99 = sub_1005B981C(&unk_1019F5510);
    if ((*(*(v99 - 8) + 48))(v98, 1, v99) == 1)
    {
      break;
    }

    v100 = *(v0 + 368);
    v101 = *(v0 + 376);
    v102 = *(v0 + 208);
    v86 = *(*(v0 + 400) + *(v99 + 48));
    *(v0 + 448) = v86;
    (*(v100 + 32))(v101);
    v103 = swift_task_alloc();
    v103[2] = v101;

    v70 = v80;
    v104 = sub_1009ADBA8(sub_1005F1748, v103, v102);
    *(v0 + 456) = v80;

    if (v104 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_52;
      }

LABEL_37:
    }

    else
    {
      if (!*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

LABEL_52:
      if ((v104 & 0xC000000000000001) != 0)
      {
        v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_55:
        v106 = v105;
        *(v0 + 464) = v105;
        v107 = *(v0 + 352);
        v108 = *(v0 + 272);
        v109 = *(v0 + 280);

        v110 = [v106 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v109 + 56))(v107, 0, 1, v108);
        v111 = [v86 share];
        v112 = [v111 values];

        sub_1005B981C(&qword_101A1B0B0);
        v113 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v114 = static CKShare.SystemFieldKey.shareType.getter();
        if (!*(v113 + 16))
        {

LABEL_61:

          goto LABEL_62;
        }

        v116 = sub_10000BE7C(v114, v115);
        v118 = v117;

        if ((v118 & 1) == 0)
        {
          goto LABEL_61;
        }

        v119 = *(*(v113 + 56) + 8 * v116);
        swift_unknownObjectRetain();

        *(v0 + 192) = v119;
        if (swift_dynamicCast())
        {
          v121 = *(v0 + 144);
          v120 = *(v0 + 152);
          goto LABEL_63;
        }

LABEL_62:
        v121 = 0;
        v120 = 0xE000000000000000;
LABEL_63:
        if (v121 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v120 == v124)
        {

LABEL_67:
          v126 = *(v0 + 312);
          v127 = *(v0 + 320);
          v128 = *(v0 + 304);
          v129 = [v86 share];
          v130 = [v129 recordID];

          v131 = [v130 zoneID];
          sub_100EE9190(v128);

          v132 = (*(v127 + 48))(v128, 1, v126);
          v133 = *(v0 + 352);
          if (v132 == 1)
          {
            v134 = *(v0 + 304);
            sub_10000CAAC(*(v0 + 352), &qword_101A0A320);

            sub_10000CAAC(v134, &unk_1019F52D0);
          }

          else
          {
            v135 = *(v0 + 344);
            v136 = *(v0 + 272);
            v137 = *(v0 + 280);
            sub_1005EB270(*(v0 + 304), *(v0 + 336));
            sub_10005F954(v133, v135);
            if ((*(v137 + 48))(v135, 1, v136) != 1)
            {
              (*(*(v0 + 280) + 32))(*(v0 + 296), *(v0 + 344), *(v0 + 272));
              *(v0 + 472) = [v86 participantStatus];
              v143 = [v86 share];
              v144 = [v143 values];

              v145 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
              v146 = static CKShare.SystemFieldKey.title.getter();
              if (*(v145 + 16))
              {
                v148 = sub_10000BE7C(v146, v147);
                v150 = v149;

                if (v150)
                {
                  v151 = *(*(v145 + 56) + 8 * v148);
                  swift_unknownObjectRetain();

                  *(v0 + 184) = v151;
                  if (swift_dynamicCast())
                  {
                    v152 = *(v0 + 128);
                    v153 = *(v0 + 136);
LABEL_86:
                    *(v0 + 480) = v152;
                    *(v0 + 488) = v153;
                    v154 = [v86 share];
                    v155 = [v154 participants];
                    sub_100006370(0, &qword_1019F5520);
                    v156 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    sub_100CE9894(v156);
                    v158 = v157;
                    v160 = v159;

                    *(v0 + 496) = v160;
                    *(v0 + 504) = v158;
                    v161 = [v86 share];
                    *(v0 + 512) = v161;
                    v162 = swift_task_alloc();
                    *(v0 + 520) = v162;
                    *v162 = v0;
                    v162[1] = sub_1005EF9E4;

                    return sub_1005F1768(v161);
                  }

LABEL_85:
                  v152 = 0;
                  v153 = 0xE000000000000000;
                  goto LABEL_86;
                }

LABEL_84:

                goto LABEL_85;
              }

LABEL_83:

              goto LABEL_84;
            }

            v139 = *(v0 + 344);
            v138 = *(v0 + 352);
            v140 = *(v0 + 336);

            sub_100086F34(v140);
            sub_10000CAAC(v138, &qword_101A0A320);
            sub_10000CAAC(v139, &qword_101A0A320);
          }
        }

        else
        {
          v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v125)
          {
            goto LABEL_67;
          }

          sub_10000CAAC(*(v0 + 352), &qword_101A0A320);
        }
      }

      else
      {
        if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v105 = *(v104 + 32);
          goto LABEL_55;
        }

        __break(1u);
LABEL_90:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_36:
        v71 = *(v0 + 464);
        v72 = *(v0 + 448);
        v187 = *(v0 + 352);
        v182 = *(v0 + 336);
        v73 = *(v0 + 296);
        v75 = *(v0 + 264);
        v74 = *(v0 + 272);
        v76 = *(v0 + 248);
        v77 = *(v0 + 256);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*(v77 + 8))(v75, v76);
        v174(v73, v74);
        sub_100086F34(v182);
        sub_10000CAAC(v187, &qword_101A0A320);
        v78 = (v0 + 168);
        v79 = vld1q_dup_f64(v78);
        v181 = v79;
      }
    }
  }

  sub_10007EA74(*&v181.f64[1]);

  v141 = *(v0 + 8);

  return v141();
}

uint64_t sub_1005F0C4C(id *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = static URL.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

uint64_t sub_1005F0D58(uint64_t result, void *a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v5 = result;
    swift_beginAccess();
    v7 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_100A9B774(v7, v5, isUniquelyReferenced_nonNull_native);
    *(a4 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1005F0DF0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    return a3(a1, 1);
  }

  swift_beginAccess();

  a3(v5, 0);
}

uint64_t sub_1005F0E70(void *a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v8 = [a1 highlights];
  sub_100006370(0, &qword_1019F54E8);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(inited + 56) = sub_1005B981C(&qword_1019F54F0);
  *(inited + 64) = sub_10008765C();
  *(inited + 32) = v9;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v10, "Highlights changed. New highlights: %@", 38, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = v1;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  sub_10064191C(0, 0, v5, &unk_10146D628, v14);
}

uint64_t sub_1005F10B8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1005F1164;

  return sub_10007C740();
}

uint64_t sub_1005F1164()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005F2178, v1, v0);
}

uint64_t sub_1005F1308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F136C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_1005F10B8();
}

void sub_1005F142C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = _swiftEmptyDictionarySingleton;
  v6 = objc_allocWithZone(CKFetchShareMetadataOperation);
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9 = [v6 initWithShareURLs:isa];

  [v9 setShouldFetchRootRecord:1];

  CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v5;

  CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.setter();
  [v9 setQualityOfService:25];
  if (qword_1019F1588 != -1)
  {
    swift_once();
  }

  [qword_101AD6518 addOperation:v9];
}

uint64_t sub_1005F15F4(uint64_t a1)
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

  return sub_1005EEBB4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1005F16CC(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1005F16D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F5500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F1768(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for URL();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_1005F186C, v4, v3);
}

uint64_t sub_1005F186C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = CKRecord.subscript.getter();
  v0[14] = v1;

  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 fileURL];
      if (v3)
      {
        v4 = v0[8];
        v5 = v0[9];
        v6 = v0[6];
        v7 = v0[7];
        v8 = v3;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v7 + 32))(v5, v4, v6);
        v9 = [objc_opt_self() sharedApplication];
        v10 = [v9 delegate];

        if (v10)
        {
          type metadata accessor for CRLiOSAppDelegate();
          v14 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharedBoardThumbnailManager);

          v11 = swift_unknownObjectRelease();
          if (v14)
          {

            v0[15] = static MainActor.shared.getter();
            v15 = dispatch thunk of Actor.unownedExecutor.getter();
            v13 = v16;
            v0[16] = v15;
            v0[17] = v16;
            v11 = sub_1005F1B60;
            v12 = v15;

            return _swift_task_switch(v11, v12, v13);
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return _swift_task_switch(v11, v12, v13);
      }

      swift_unknownObjectRelease();

      goto LABEL_15;
    }

    swift_unknownObjectRelease();
  }

  static CKShare.SystemFieldKey.thumbnailImageData.getter();
  v17 = CKRecord.subscript.getter();

  if (v17)
  {
    v0[4] = v17;
    sub_1005B981C(&qword_101A1B0B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_16;
    }

    v18 = v0[2];
    v19 = v0[3];
    v20 = objc_allocWithZone(CRLImage);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v17 = [v20 initWithData:isa];

    sub_10002640C(v18, v19);
  }

LABEL_16:

  v22 = v0[1];

  return v22(v17);
}

uint64_t sub_1005F1B60()
{
  v1 = Data.init(contentsOf:options:)();
  v0[18] = v1;
  v0[19] = v2;
  v3 = v1;
  v4 = v2;
  type metadata accessor for CRLPreviewImages.CacheEntry();
  swift_allocObject();
  sub_100024E98(v3, v4);
  v0[20] = sub_1006C5BA4(v3, v4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1005F1CCC;

  return sub_1006C6600();
}

uint64_t sub_1005F1CCC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_1005F1F34;
  }

  else
  {
    v4[22] = a1;
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_1005F1DF8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1005F1DF8()
{
  v1 = v0[19];
  v2 = v0[18];

  sub_10002640C(v2, v1);

  v3 = v0[12];
  v4 = v0[13];

  return _swift_task_switch(sub_1005F1E80, v3, v4);
}

uint64_t sub_1005F1E80()
{
  v1 = v0[22];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_1005F1F34()
{
  v1 = v0[19];
  v2 = v0[18];

  sub_10002640C(v2, v1);
  v3 = v0[12];
  v4 = v0[13];

  return _swift_task_switch(sub_1005F1FBC, v3, v4);
}

uint64_t sub_1005F1FBC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];

  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1005F20BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_1005EDE20(a1, v4, v5, v6);
}

id sub_1005F2260()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUserInteractionTogglableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1005F2424(double a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale] = 0x3FF0000000000000;
  v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] = 0;
  v3 = &v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
  *v3 = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_lastValidContentsScaleFromDelegate] = 0x3FF0000000000000;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CRLCanvasBackgroundLayer();
  v4 = objc_msgSendSuper2(&v9, "init");
  v5 = *((swift_isaMask & *v4) + 0x120);
  v6 = v4;
  v7 = swift_unknownObjectRetain();
  v5(v7, a1);

  swift_unknownObjectRelease_n();
  return v6;
}

void *sub_1005F2590()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale] = 0x3FF0000000000000;
  v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] = 0;
  v1 = &v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
  *v1 = 0x3FF0000000000000;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0x3FF0000000000000;
  v1[4] = 0;
  v1[5] = 0;
  v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] = 1;
  *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_lastValidContentsScaleFromDelegate] = 0x3FF0000000000000;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CRLCanvasBackgroundLayer();
  v2 = objc_msgSendSuper2(&v6, "init");
  v3 = *((swift_isaMask & *v2) + 0x120);
  v4 = v2;
  v3(0, 1.0);

  return v4;
}

void *sub_1005F26BC(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale] = 0x3FF0000000000000;
  v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] = 0;
  v3 = &v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
  *v3 = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_lastValidContentsScaleFromDelegate] = 0x3FF0000000000000;
  sub_100020E58(a1, a1[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  v35.receiver = v1;
  v35.super_class = type metadata accessor for CRLCanvasBackgroundLayer();
  v5 = objc_msgSendSuper2(&v35, "initWithLayer:", v4);
  swift_unknownObjectRelease();
  sub_100064288(a1, v34);
  v6 = v5;
  if (swift_dynamicCast())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v8.n128_u64[0] = *&v33[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale];
    (*((swift_isaMask & *v6) + 0x120))(Strong, v8);

    swift_unknownObjectRelease();
  }

  else
  {
    v32 = objc_opt_self();
    v9 = [v32 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33);
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
    v18 = sub_1005CF000();
    *(inited + 96) = v18;
    v19 = sub_1005CF04C();
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 104;
    v21 = v33;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v32 handleFailureInFunction:v28 file:v29 lineNumber:104 isFatal:0 format:v30 args:v27];

    (*((swift_isaMask & *v6) + 0x120))(0, 1.0);
  }

  sub_100005070(a1);
  return v6;
}

void *sub_1005F2C54(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale] = 0x3FF0000000000000;
  v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] = 0;
  v3 = &v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
  *v3 = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_lastValidContentsScaleFromDelegate] = 0x3FF0000000000000;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CRLCanvasBackgroundLayer();
  v4 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = *((swift_isaMask & *v4) + 0x120);
    v7 = v4;
    v6(0, 1.0);
  }

  return v5;
}

id sub_1005F2D94(double a1)
{
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale] = a1;
  if (v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] == 1)
  {
    [v1 setNeedsLayout];
  }

  return [v1 setMasksToBounds:1];
}

id sub_1005F2ECC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005F3040()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v2)
  {
    sub_10096C7D4();
    v2 = *(v0 + v1);
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v3 >> 62)
  {
LABEL_20:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v8 = (*((swift_isaMask & *v6) + 0x300))();

    if (!v8)
    {

      return 0;
    }
  }

  v9 = _s13GroupExporterCMa();
  sub_1005F6AC8();
  return v9;
}

uint64_t sub_1005F31B4()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  result = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!result)
  {
    sub_10096C7D4();
    result = *(v0 + v1);
  }

  if (result)
  {
    v3 = result;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v3 >> 62)
  {
    v8 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    result = v8;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_15:

    goto LABEL_16;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    (*((swift_isaMask & *v6) + 0x210))();
  }

LABEL_16:
}

uint64_t sub_1005F342C(void *a1)
{
  v1 = (*((swift_isaMask & *a1) + 0xC8))();
  if ((v3 & 0x100) == 0)
  {
    return 1;
  }

  if (!(v1 | v2) && v3 == 0)
  {
    return 1;
  }

  v5 = v1 == 1 && v2 == 0;
  if (v5 && v3 == 0)
  {
    return 1;
  }

  v7 = v1 == 2 && v2 == 0;
  if (v7 && v3 == 0)
  {
    return 1;
  }

  v9 = v1 == 3 && v2 == 0;
  if (v9 && v3 == 0)
  {
    return 1;
  }

  v11 = v1 == 4 && v2 == 0;
  if (v11 && v3 == 0)
  {
    return 1;
  }

  v13 = v1 == 5 && v2 == 0;
  if (v13 && v3 == 0)
  {
    return 1;
  }

  v15 = v1 == 6 && v2 == 0;
  if (v15 && v3 == 0)
  {
    return 1;
  }

  v17 = v1 == 7 && v2 == 0;
  v18 = v17 && v3 == 0;
  if (v18 || v1 == 8 && !v2 && !v3 || v1 == 9 && !v2 && !v3 || v1 == 10 && !v2 && !v3)
  {
    return 1;
  }

  v21 = v1 == 11 && v2 == 0;
  return !v3 && v21;
}

void *sub_1005F36D4()
{
  v1 = _swiftEmptyArrayStorage;
  v2 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  result = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!result)
  {
    sub_10096C7D4();
    result = *(v0 + v2);
  }

  if (result)
  {
    v1 = result;
  }

  if (!(v1 >> 62))
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_19:

LABEL_20:

    return _swiftEmptyArrayStorage;
  }

  v10 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v10;
  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v4 >= 1)
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v1 + 8 * i + 32);
      }

      v7 = v6;
      type metadata accessor for CRLGroupItem();
      if (swift_dynamicCastClass())
      {
        v8 = sub_1005F36D4();
        sub_100798D00(v8);
      }

      v9 = v7;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void *sub_1005F387C()
{
  v40 = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v2)
  {
    sub_10096C7D4();
    v2 = *(v0 + v1);
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v3 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v34 = v3 & 0xFFFFFFFFFFFFFF8;
    v35 = v3 & 0xC000000000000001;
    v33 = (v3 + 32);

    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v31 = i;
    v32 = v3;
    while (1)
    {
      if (v35)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_55;
        }

        v7 = v33[v5];
      }

      v8 = v7;
      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        break;
      }

      type metadata accessor for CRLGroupItem();
      if (swift_dynamicCastClass())
      {
        v10 = sub_1005F387C();
        v11 = v10;
        v12 = v10 >> 62;
        if (v10 >> 62)
        {
          v13 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = v6 >> 62;
        if (v6 >> 62)
        {
          v15 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v13;
        v9 = __OFADD__(v15, v13);
        v16 = v15 + v13;
        if (v9)
        {
          goto LABEL_52;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v14)
          {
            goto LABEL_33;
          }

LABEL_32:
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_33;
        }

        if (v14)
        {
          goto LABEL_32;
        }

        v17 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v37 = v6;
          goto LABEL_34;
        }

LABEL_33:
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v37 & 0xFFFFFFFFFFFFFF8;
LABEL_34:
        v36 = v8;
        v19 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v12)
        {
          v21 = _CocoaArrayWrapper.endIndex.getter();
          if (!v21)
          {
LABEL_9:

            v6 = v37;
            if (v38 > 0)
            {
              goto LABEL_53;
            }

            goto LABEL_10;
          }
        }

        else
        {
          v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v21)
          {
            goto LABEL_9;
          }
        }

        if (((v20 >> 1) - v19) < v38)
        {
          goto LABEL_54;
        }

        v22 = v17 + 8 * v19 + 32;
        if (v12)
        {
          if (v21 < 1)
          {
            goto LABEL_57;
          }

          sub_1005F6B8C();
          for (j = 0; j != v21; ++j)
          {
            sub_1005B981C(&qword_1019F5740);
            v25 = sub_100777974(v39, j, v11);
            v27 = *v26;
            (v25)(v39, 0);
            *(v22 + 8 * j) = v27;
          }

          i = v31;
          v3 = v32;
          v23 = v38;
        }

        else
        {
          type metadata accessor for CRLBoardItem(0);
          v23 = v38;
          swift_arrayInitWithCopy();
        }

        v6 = v37;
        if (v23 > 0)
        {
          v28 = *(v17 + 16);
          v9 = __OFADD__(v28, v23);
          v29 = v28 + v23;
          if (v9)
          {
            goto LABEL_56;
          }

          *(v17 + 16) = v29;
        }

LABEL_10:
        v40 = v6;
        if (v5 == i)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v18 = v8;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v6 = v40;
        if (v5 == i)
        {
LABEL_50:

          return v6;
        }
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  return _swiftEmptyArrayStorage;
}

Class sub_1005F3CA0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  type metadata accessor for CRLBoardItem(0);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

void *sub_1005F3D0C()
{
  v45 = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v2)
  {
    sub_10096C7D4();
    v2 = *(v0 + v1);
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v3 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = v3 & 0xC000000000000001;
    v40 = (v3 + 32);
    v41 = v3 & 0xFFFFFFFFFFFFFF8;

    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v36 = v3;
    v37 = i;
    v38 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v41 + 16))
        {
          goto LABEL_56;
        }

        v8 = v40[v6];
      }

      v9 = v8;
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        break;
      }

      type metadata accessor for CRLGroupItem();
      v11 = swift_dynamicCastClass();
      if (!v11)
      {
        v13 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v7 = v45;
        goto LABEL_11;
      }

      if ((*((swift_isaMask & *v11) + 0x688))())
      {
        v12 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          i = v37;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v7 = v45;
        goto LABEL_11;
      }

      v14 = sub_1005F3D0C();
      v15 = v14;
      v16 = v14 >> 62;
      v43 = v9;
      if (v14 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v7 >> 62;
      if (v7 >> 62)
      {
        v34 = _CocoaArrayWrapper.endIndex.getter();
        v20 = v34 + v17;
        if (__OFADD__(v34, v17))
        {
LABEL_53:
          __break(1u);
LABEL_54:

          return v7;
        }
      }

      else
      {
        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = v19 + v17;
        if (__OFADD__(v19, v17))
        {
          goto LABEL_53;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v18)
        {
          v21 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v20 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

LABEL_34:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_35;
      }

      if (v18)
      {
        goto LABEL_34;
      }

LABEL_35:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_36:
      v42 = v7;
      v22 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v16)
      {
        v25 = v21;
        v26 = _CocoaArrayWrapper.endIndex.getter();
        v21 = v25;
        v24 = v26;
        if (v26)
        {
LABEL_40:
          if (((v23 >> 1) - v22) < v17)
          {
            goto LABEL_58;
          }

          v27 = v21 + 8 * v22 + 32;
          v39 = v21;
          if (v16)
          {
            if (v24 < 1)
            {
              goto LABEL_60;
            }

            sub_1005F6B8C();
            for (j = 0; j != v24; ++j)
            {
              sub_1005B981C(&qword_1019F5740);
              v29 = sub_100777974(v44, j, v15);
              v31 = *v30;
              (v29)(v44, 0);
              *(v27 + 8 * j) = v31;
            }

            v3 = v36;
            i = v37;
          }

          else
          {
            type metadata accessor for CRLBoardItem(0);
            swift_arrayInitWithCopy();
          }

          v7 = v42;
          if (v17 > 0)
          {
            v32 = *(v39 + 16);
            v10 = __OFADD__(v32, v17);
            v33 = v32 + v17;
            if (v10)
            {
              goto LABEL_59;
            }

            *(v39 + 16) = v33;
          }

          goto LABEL_10;
        }
      }

      else
      {
        v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_40;
        }
      }

      v7 = v42;
      if (v17 > 0)
      {
        goto LABEL_57;
      }

LABEL_10:
      v45 = v7;
      v5 = v38;
LABEL_11:
      if (v6 == i)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  return _swiftEmptyArrayStorage;
}

BOOL sub_1005F4200()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v2)
  {
    sub_10096C7D4();
    v2 = *(v0 + v1);
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v3 >> 62)
  {
LABEL_23:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    v6 = v5;
    if (v4 == v5)
    {
LABEL_18:

      return v4 == v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    type metadata accessor for CRLGroupItem();
    if (!swift_dynamicCastClass())
    {
      break;
    }

    v9 = sub_1005F4200();

    v5 = v6 + 1;
    if ((v9 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return v4 == v6;
}

BOOL sub_1005F436C()
{
  v0 = !sub_1009AE78C();
  if (v0)
  {
    return 1;
  }

  else
  {
    v1 = sub_1005F36D4();
    v2 = v1;
    v3 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
LABEL_18:
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    while (v4 != v5)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v3 + 16))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v8 = (*((swift_isaMask & *v6) + 0x3F0))();

      ++v5;
      if ((v8 & 1) == 0)
      {
        v0 = 1;
        break;
      }
    }
  }

  return v0;
}

void *sub_1005F44CC()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  result = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!result)
  {
    sub_10096C7D4();
    result = *(v0 + v1);
  }

  if (result)
  {
    v3 = result;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v3 >> 62)
  {
    v8 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    result = v8;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_18:

    v5 = 0;
LABEL_19:

    return (v5 & 1);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_8:
  if (v4 >= 1)
  {

    v5 = 0;
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v5)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
        if (v5)
        {
LABEL_16:
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = (*((swift_isaMask & *v7) + 0x378))();
LABEL_11:
      ++v6;

      if (v4 == v6)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1005F4654()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 368);

  LOBYTE(v1) = v1(v2);

  if (v1 & 1) != 0 || (sub_1009B07F4())
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v4)
  {
    sub_10096C7D4();
    v4 = *(v0 + v3);
  }

  v5 = (v4 ? v4 : _swiftEmptyArrayStorage);

  if (v5 >> 62)
  {
    sub_1005B981C(&qword_1019F5720);
    v6 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v5 = v6;
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v6 = v5;
  }

  v7 = v5 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v7)
  {
    return 1;
  }

  return sub_1005F4200();
}

uint64_t sub_1005F4814()
{
  if ((*((swift_isaMask & *v0) + 0x688))())
  {
    return 1;
  }

  v2 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v3)
  {
    sub_10096C7D4();
    v3 = *(v0 + v2);
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  if (v4 >> 62)
  {
LABEL_23:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v1 = v5 == v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v9 = (*((swift_isaMask & *v7) + 0x320))();

    ++v6;
  }

  while ((v9 & 1) != 0);

  return v1;
}

uint64_t sub_1005F49A4(unint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;

  if (a1 >> 62)
  {
    sub_1005B981C(&qword_1019F5720);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v5 = objc_opt_self();
  sub_1005B981C(&qword_1019F5720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = a1;
  v12[4] = sub_1005F6BF8;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = *"";
  v12[2] = sub_10068B39C;
  v12[3] = &unk_10187C930;
  v8 = _Block_copy(v12);

  [v5 temporaryLayoutControllerForInfos:isa useInBlock:v8];
  _Block_release(v8);

  result = swift_beginAccess();
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = v10;

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005F4B98(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = sub_1005F6690(a4, a1);
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = v5;
}

id sub_1005F4C60(id result, double *a2)
{
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = a2[2];
    v5 = a2[3];
    v6 = a2[4];
    v7 = a2[5];
    v8 = v3;
    result = [v8 pureGeometry];
    if (result)
    {
      v9 = result;
      [result fullTransform];
      v15 = *&v17.c;
      v16 = *&v17.a;
      v14 = *&v17.tx;

      *&v17.a = v16;
      *&v17.c = v15;
      *&v17.tx = v14;
      v18.origin.x = 0.0;
      v18.origin.y = 0.0;
      v18.size.width = 1.0;
      v18.size.height = 1.0;
      v21 = CGRectApplyAffineTransform(v18, &v17);
      v19.origin.x = v4;
      v19.origin.y = v5;
      v19.size.width = v6;
      v19.size.height = v7;
      v20 = CGRectUnion(v19, v21);
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;

      result = swift_beginAccess();
      a2[2] = x;
      a2[3] = y;
      a2[4] = width;
      a2[5] = height;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1005F4F44(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v5 = *&v1[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  if (!v5)
  {
    sub_10096C7D4();
    v5 = *&v1[v4];
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  *&v73[0].a = a1;
  __chkstk_darwin(v5);
  v64[2] = v73;

  v7 = sub_100C33540(sub_1005F6B2C, v64, v6);

  if ((v7 & 1) == 0)
  {
    *&v70 = v2;
    *&v69 = objc_opt_self();
    v9 = [v69 _atomicIncrementAssertCount];
    *&v73[0].a = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v73);
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
    v19 = sub_1005CF04C();
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 234;
    a = v73[0].a;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = a;
    v22 = v10;
    v23 = *&a;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "Can't get ungrouped geometry for a board item which isn't a child of the group.", 79, 2, _swiftEmptyArrayStorage);

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

    [v69 handleFailureInFunction:v28 file:v29 lineNumber:234 isFatal:0 format:v30 args:v27];

    v2 = v70;
  }

  v31 = *((swift_isaMask & *a1) + 0xE0);
  v32 = v31(v8);
  if (((*((swift_isaMask & *a1) + 0x360))() & 1) != 0 && ((*((swift_isaMask & *a1) + 0x320))() & 1) == 0)
  {
    *&v65 = v31;
    v67 = v32;
    Strong = v2;
    b = 0.0;
    v39 = 1.0;
    *&v66 = Strong;
    c = 0.0;
    d = 1.0;
    tx = 0.0;
    ty = 0.0;
    do
    {
      v44 = *((swift_isaMask & *Strong) + 0xE0);
      v45 = Strong;
      v46 = v44();
      [v46 transform];
      v69 = *&v73[0].c;
      v70 = *&v73[0].a;
      v68 = *&v73[0].tx;

      v73[0].a = v39;
      v73[0].b = b;
      v73[0].c = c;
      v73[0].d = d;
      v73[0].tx = tx;
      v73[0].ty = ty;
      *&v72.a = v70;
      *&v72.c = v69;
      *&v72.tx = v68;
      CGAffineTransformConcat(&v71, v73, &v72);
      v39 = v71.a;
      b = v71.b;
      c = v71.c;
      d = v71.d;
      tx = v71.tx;
      ty = v71.ty;
      Strong = swift_unknownObjectWeakLoadStrong();
    }

    while (Strong);
    v47 = objc_opt_self();
    v48 = (v65)();
    [v48 transform];
    v69 = *&v73[0].c;
    v70 = *&v73[0].a;
    v68 = *&v73[0].tx;

    *&v73[0].a = v70;
    *&v73[0].c = v69;
    *&v73[0].tx = v68;
    v49 = sub_1001399E4(&v73[0].a);
    v73[0].a = v39;
    v73[0].b = b;
    v73[0].c = c;
    v73[0].d = d;
    v73[0].tx = tx;
    v73[0].ty = ty;
    v50 = [v47 infoGeometryForTransformInRoot:v73 isChildFlipped:v49];
    [v50 transform];
    v51 = v73[0].tx;
    v52 = v73[0].ty;
    v69 = *&v73[0].c;
    v70 = *&v73[0].a;
    v53 = *(**(v66 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v55 = v53(v54);

    [v55 transform];
    v68 = *&v73[0].a;
    v65 = *&v73[0].tx;
    v66 = *&v73[0].c;

    *&v73[0].a = v70;
    *&v73[0].c = v69;
    v73[0].tx = v51;
    v73[0].ty = v52;
    *&v72.a = v68;
    *&v72.c = v66;
    *&v72.tx = v65;
    CGAffineTransformConcat(&v71, v73, &v72);
    v56 = v71.tx;
    v57 = v71.ty;
    v69 = *&v71.c;
    v70 = *&v71.a;
    v35 = v67;
    [v67 fullTransform];
    *&v72.a = v70;
    *&v72.c = v69;
    v72.tx = v56;
    v72.ty = v57;
    CGAffineTransformConcat(&v71, v73, &v72);
    v58 = v71.tx;
    v59 = v71.ty;
    v69 = *&v71.c;
    v70 = *&v71.a;
    v60 = [v35 widthValid];
    v61 = [v35 heightValid];
    v62 = objc_allocWithZone(CRLCanvasInfoGeometry);
    *&v73[0].a = v70;
    *&v73[0].c = v69;
    v73[0].tx = v58;
    v73[0].ty = v59;
    v36 = [v62 initWithFullTransform:v73 widthValid:v60 heightValid:v61];
    v32 = v50;
  }

  else
  {
    v33 = *(**&v2[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

    v35 = v33(v34);

    v36 = [v32 geometryWithParentGeometry:v35];
  }

  return v36;
}

uint64_t sub_1005F582C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v3)
  {
    sub_10096C7D4();
    v3 = *(v0 + v2);
  }

  v36 = v0;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = 0;

  if (v4 >> 62)
  {
    sub_1005B981C(&qword_1019F5720);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v6 = objc_opt_self();
  sub_1005B981C(&qword_1019F5720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = ObjectType;
  v8[4] = v4;
  aBlock[4] = sub_1005F6B20;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_10187C8E0;
  v9 = _Block_copy(aBlock);

  [v6 temporaryLayoutControllerForInfos:isa useInBlock:v9];
  _Block_release(v9);

  result = swift_beginAccess();
  v11 = *(v5 + 16);
  if (!v11)
  {
    goto LABEL_31;
  }

  v12 = v11;

  v14 = v36;
  if ((sub_1011255D4(v13) & 1) != 0 && (v15 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData, v16 = *(**(v14 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296), v17 = , v18 = v16(v17), , sub_100006370(0, &unk_1019F5730), v19 = static NSObject.== infix(_:_:)(), v18, (v19 & 1) == 0))
  {
    v20 = *(**(v14 + v15) + 304);

    v20(v12);
  }

  else
  {
  }

  result = *(v14 + v2);
  if (!result)
  {
    sub_10096C7D4();
    result = *(v14 + v2);
  }

  if (result)
  {
    v21 = result;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  if (v21 >> 62)
  {
    v33 = result;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    result = v33;
    if (v22)
    {
      goto LABEL_20;
    }

LABEL_28:
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_28;
  }

LABEL_20:
  if (v22 >= 1)
  {
    v34 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v23 = v21 & 0xC000000000000001;

    v24 = 0;
    v25 = v21;
    do
    {
      if (v23)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v21 + 8 * v24 + 32);
      }

      v27 = v26;
      ++v24;
      v28 = (*((swift_isaMask & *v26) + 0xE0))();
      v29 = *(**(v36 + v34) + 296);

      v31 = v29(v30);

      v32 = [v28 geometryRelativeToGeometry:v31];

      (*((swift_isaMask & *v27) + 0xE8))(v32);
      v21 = v25;
    }

    while (v22 != v24);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1005F5D88()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 368);

  v3 = v1(v2);

  v5 = v3 ^ 1;
  if (((*((swift_isaMask & *v0) + 0x688))(v4) & 1) == 0 && (v3 & 1) == 0)
  {
    v6 = sub_1005F36D4();
    v7 = v6;
    if (v6 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      type metadata accessor for CRLBoardItem(0);
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (static NSObject.== infix(_:_:)())
        {
        }

        else
        {
          v13 = (*((swift_isaMask & *v11) + 0x338))();

          if ((v13 & 1) == 0)
          {
            v5 = 0;
            goto LABEL_20;
          }
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:
    v5 = 1;
LABEL_20:
  }

  return v5 & 1;
}

uint64_t sub_1005F5FC0()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v2 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v4 = v2(v3);

  [v4 transform];
  v19 = v22;
  v20 = v21;
  v18 = v23;

  v21 = v20;
  v22 = v19;
  v23 = v18;
  if (sub_100139B08(&v21, 0.0001))
  {
    v5 = *(**(v0 + v1) + 392);

    LOBYTE(v5) = v5(v6);

    if (v5)
    {
      v8 = (*((swift_isaMask & *v0) + 0x330))(v7);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  if (((*((swift_isaMask & *v0) + 0x688))() & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v10 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
    if (!v10)
    {
      sub_10096C7D4();
      v10 = *(v0 + v9);
    }

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    if (v11 >> 62)
    {
LABEL_27:
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    while (v12 != v13)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v16 = (*((swift_isaMask & *v14) + 0x338))();

      ++v13;
      if ((v16 & 1) == 0)
      {
        v8 = 0;
        break;
      }
    }
  }

  return v8 & 1;
}

id sub_1005F6308()
{
  v1 = v0;
  type metadata accessor for CRLContainerItemData(0);
  v2 = *(*swift_dynamicCastClassUnconditional() + 504);

  v3 = v2(0);

  v4 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v5 = objc_allocWithZone(type metadata accessor for CRLGroupItem());
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v4;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v3;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for CRLBoardItemBase(0);
  v6 = v4;
  return objc_msgSendSuper2(&v8, "init");
}

id sub_1005F646C(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a1;
  *&v5[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a2;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for CRLBoardItemBase(0);
  return objc_msgSendSuper2(&v7, "init");
}

id sub_1005F6534()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLGroupItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLGroupItem()
{
  result = qword_1019F56A8;
  if (!qword_1019F56A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1005F6690(unint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  size = CGRectNull.size;
  *(v4 + 16) = CGRectNull.origin;
  *(v4 + 32) = size;
  if (a1 >> 62)
  {
LABEL_16:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_17:
    swift_beginAccess();
    __asm { FMOV            V0.2D, #1.0 }

    *(v4 + 32) = _Q0;
    v35 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:*(v4 + 16) size:{*(v4 + 24), 1.0, 1.0}];

    return v35;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_3:
  v7 = a1 & 0xC000000000000001;
  swift_beginAccess();
  v8 = 0;
  while (1)
  {
    if (v7)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v15 = *(a1 + 8 * v8 + 32);
    }

    v16 = v15;
    v17 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v18 = [a2 layoutForInfo:v15];
    if (v18)
    {
      break;
    }

    v38 = objc_opt_self();
    sub_1005B981C(&unk_1019F4D60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_101465920;
    *(v9 + 32) = v16;

    v10 = v16;
    sub_1005B981C(&qword_1019F5720);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = swift_allocObject();
    v12[2] = sub_1005F6AB4;
    v12[3] = v4;
    v12[4] = v10;
    *&aBlock.tx = sub_1005F6ABC;
    *&aBlock.ty = v12;
    *&aBlock.a = _NSConcreteStackBlock;
    aBlock.b = *"";
    *&aBlock.c = sub_10068B39C;
    *&aBlock.d = &unk_10187C868;
    v13 = _Block_copy(&aBlock);
    v14 = v10;

    [v38 temporaryLayoutControllerForInfos:isa useInBlock:v13];
    _Block_release(v13);

    v7 = a1 & 0xC000000000000001;
LABEL_5:
    ++v8;
    if (v17 == v6)
    {
      goto LABEL_17;
    }
  }

  v19 = v18;
  v20 = *(v4 + 16);
  v21 = *(v4 + 24);
  v22 = *(v4 + 32);
  v23 = *(v4 + 40);
  result = [v18 pureGeometry];
  if (result)
  {
    v25 = result;
    [result fullTransform];
    v37 = *&aBlock.c;
    *v39 = *&aBlock.a;
    v36 = *&aBlock.tx;

    *&aBlock.a = *v39;
    *&aBlock.c = v37;
    *&aBlock.tx = v36;
    v41.origin.x = 0.0;
    v41.origin.y = 0.0;
    v41.size.width = 1.0;
    v41.size.height = 1.0;
    v44 = CGRectApplyAffineTransform(v41, &aBlock);
    v42.origin.x = v20;
    v42.origin.y = v21;
    v42.size.width = v22;
    v42.size.height = v23;
    v43 = CGRectUnion(v42, v44);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;

    *(v4 + 16) = x;
    *(v4 + 24) = y;
    *(v4 + 32) = width;
    *(v4 + 40) = height;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1005F6AC8()
{
  result = qword_1019F5728;
  if (!qword_1019F5728)
  {
    _s13GroupExporterCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5728);
  }

  return result;
}

uint64_t sub_1005F6B4C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1005F6B8C()
{
  result = qword_1019F5748;
  if (!qword_1019F5748)
  {
    sub_1005C4E5C(&qword_1019F5740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5748);
  }

  return result;
}

id sub_1005F6CFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCanvasBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for CRLSerializationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLSerializationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1005F6EA8()
{
  result = qword_1019F5798;
  if (!qword_1019F5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5798);
  }

  return result;
}

uint64_t sub_1005F6F18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v52 = a3;
  v7 = type metadata accessor for CRLTweenLayerAnimation();
  v51 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 28);
  UUID.init()();
  v12 = *(v7 + 36);
  v13 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v14 = *(*(v13 - 8) + 56);
  v14(v10 + v12, 1, 1, v13);
  v49 = v7;
  v15 = *(v7 + 40);
  v14(v10 + v15, 1, 1, v13);
  *v10 = a4;
  sub_10000630C(a1, (v10 + 1));
  sub_10000BE14(a2, (v10 + 6), &qword_1019F57A0);
  v50 = a2;
  sub_10000BE14(a2, v59, &qword_1019F57A0);
  if (*(&v59[1] + 1))
  {
    sub_100050F74(v59, v60);
    v17 = *&v60[24];
    v16 = *&v60[32];
    sub_100020E58(v60, *&v60[24]);
    v18 = (*(*(*(v16 + 24) + 8) + 8))(v17);
    v20 = a1[3];
    v19 = a1[4];
    sub_100020E58(a1, v20);
    v21 = v18 - (*(*(*(v19 + 24) + 8) + 40))(v20);
    sub_100005070(v60);
  }

  else
  {
    sub_10000CAAC(v59, &qword_1019F57A0);
    v23 = a1[3];
    v22 = a1[4];
    sub_100020E58(a1, v23);
    v21 = a4 - (*(*(*(v22 + 24) + 8) + 40))(v23);
  }

  v10[11] = v21;
  if (v21 <= 0.0)
  {
    sub_10000CAAC(v50, &qword_1019F57A0);
    sub_100005070(a1);
    sub_1005F89B4((v10 + 1));
    v44 = type metadata accessor for UUID();
    (*(*(v44 - 8) + 8))(v10 + v11, v44);
    sub_10000CAAC(v10 + v12, &qword_1019F57A8);
    sub_10000CAAC(v10 + v15, &qword_1019F57A8);
    return (*(v51 + 56))(v52, 1, 1, v49);
  }

  else
  {
    sub_1005F8A08((v10 + 1), v56);
    result = sub_100929780(v59);
    if (*&v59[5])
    {
      sub_100931458(&v60[24]);
      sub_1005F89B4(v56);
      sub_1005F8A64(v59);
      if (qword_1019F1E20 != -1)
      {
        swift_once();
      }

      v25 = qword_101AD7728;
      *&v60[8] = xmmword_10146D9F0;
      *v60 = qword_101AD7728;
      *&v60[288] = 0;
      *&v60[296] = 131586;
      v27 = a1[3];
      v26 = a1[4];
      sub_100020E58(a1, v27);
      v28 = *(*(v26 + 24) + 8);
      v29 = *(v28 + 40);
      v30 = v25;
      v31 = v29(v27, v28);
      sub_1005F8AB8(v60, v59);
      *(v59 + 1) = v31;
      sub_1005F8B14(v60);
      *&v59[1] = v21;
      v32 = *&v59[18];
      v33 = kCAFillModeRemoved;

      *&v59[18] = kCAFillModeRemoved;
      sub_1005F8AB8(v59, v60);
      v60[297] = 0;
      sub_1005F8B14(v59);
      v60[296] = 0;
      v34 = a1[3];
      v35 = a1[4];
      sub_100020E58(a1, v34);
      (*(v35 + 88))(v59, v34, v35);
      v36 = *(&v59[1] + 1);
      v37 = *&v59[2];
      sub_100020E58(v59, *(&v59[1] + 1));
      if ((*(v37 + 184))(v36, v37))
      {
        v38 = v50;
        sub_10000BE14(v50, v56, &qword_1019F57A0);
        v39 = v57;
        if (v57)
        {
          v40 = v58;
          sub_100020E58(v56, v57);
          (*(v40 + 88))(v53, v39, v40);
          v41 = v54;
          v42 = v55;
          sub_100020E58(v53, v54);
          v43 = (*(v42 + 184))(v41, v42);
          sub_10000CAAC(v38, &qword_1019F57A0);
          sub_100005070(v53);
          sub_100005070(v56);
        }

        else
        {
          sub_10000CAAC(v38, &qword_1019F57A0);
          sub_10000CAAC(v56, &qword_1019F57A0);
          v43 = 1;
        }
      }

      else
      {
        sub_10000CAAC(v50, &qword_1019F57A0);
        v43 = 0;
      }

      sub_100005070(v59);
      memcpy(v59, v60, 0x12BuLL);
      v45 = v43 & 1;
      v46 = v49;
      v47 = v10 + *(v49 + 32);
      memcpy(v47, v59, 0x12BuLL);
      v47[299] = v45;
      v48 = v52;
      sub_1005F8B68(v10, v52);
      (*(v51 + 56))(v48, 0, 1, v46);
      sub_100005070(a1);
      return sub_1005F8BCC(v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1005F7584()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_100020E58(v0 + 1, v1);
  v3 = (*(v2 + 64))(v1, v2);
  if (v3)
  {
    sub_10000BE14((v0 + 6), v35, &qword_1019F57A0);
    if (!v36)
    {
      sub_10000CAAC(v35, &qword_1019F57A0);
      return v3;
    }

    sub_100050F74(v35, v37);
    v4 = v38;
    v5 = v39;
    sub_100020E58(v37, v38);
    v6 = *(v5 + 64);
    v7 = v3;
    v8 = v6(v4, v5);
    if (v8)
    {
      v9 = v8;
      sub_100006370(0, &qword_1019FFFF0);
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        sub_100005070(v37);
        return v3;
      }
    }

    else
    {
    }

    v11 = objc_opt_self();
    v12 = [v11 _atomicIncrementAssertCount];
    v35[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v35);
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
    v22 = sub_1005CF04C();
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 56;
    v24 = v35[0];
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
    sub_100005404(v19, &_mh_execute_header, v28, "Incorrect API usage. Previous and next animations must have the same layerToAnimate. Returning nil.", 99, 2, _swiftEmptyArrayStorage);

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

    [v11 handleFailureInFunction:v31 file:v32 lineNumber:56 isFatal:0 format:v33 args:v30];

    sub_100005070(v37);
    return 0;
  }

  return v3;
}

uint64_t sub_1005F7A3C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 _atomicIncrementAssertCount];
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
  v13 = sub_1005CF04C();
  *(inited + 104) = v13;
  *(inited + 72) = v4;
  *(inited + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 112) = v7;
  *(inited + 120) = v9;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v14;
  *(inited + 152) = 76;
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
  sub_100005404(v10, &_mh_execute_header, v19, "Tried to set a property of a tween's def, but tween defs are calculated.", 72, 2, _swiftEmptyArrayStorage);

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

  [v2 handleFailureInFunction:v22 file:v23 lineNumber:76 isFatal:0 format:v24 args:v21];

  return sub_100005070(a1);
}

uint64_t sub_1005F7DDC(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A09F90);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = type metadata accessor for CRLTweenLayerAnimation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000630C(a1, v15);
  sub_1005B981C(&qword_1019F5870);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v11(v5, 0, 1, v6);
    sub_1005F8E3C(v5, v9);
    v12 = sub_1005F8EA0(v9, v1);
    sub_1005F8BCC(v9);
  }

  else
  {
    v11(v5, 1, 1, v6);
    sub_10000CAAC(v5, &qword_101A09F90);
    v12 = 0;
  }

  return v12 & 1;
}

id sub_1005F7F98(uint64_t a1, double a2)
{
  sub_10000BE14(a1, v43, &unk_101A09F80);
  sub_10000BE14(v43, &v36, &unk_101A09F80);
  v4 = v41;
  sub_10000CAAC(&v36, &unk_101A09F80);
  if (!v4)
  {
    sub_100929780(&v36);
    sub_10000CAAC(v43, &unk_101A09F80);
    v43[2] = v38;
    v43[3] = v39;
    v43[4] = v40;
    v44 = v41;
    v43[0] = v36;
    v43[1] = v37;
  }

  v5 = v2 + *(type metadata accessor for CRLTweenLayerAnimation() + 32);
  sub_1005F8AB8(v5, &v36);
  v6 = sub_100B7694C();
  sub_100B76520(v6);
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() animationWithKeyPath:v7];

  sub_1005F8B14(&v36);
  sub_10000BE14(v43, &v30, &unk_101A09F80);
  if (v35)
  {
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v36 = v30;
    v37 = v31;
    v38 = v32;
    sub_10000BE14(&v36, &v30, &unk_1019F4D00);
    v9 = *(&v31 + 1);
    if (*(&v31 + 1))
    {
      v10 = sub_100020E58(&v30, *(&v31 + 1));
      v11 = *(v9 - 8);
      v12 = __chkstk_darwin(v10);
      v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v11 + 8))(v14, v9);
      sub_100005070(&v30);
    }

    else
    {
      v15 = 0;
    }

    [v8 setFromValue:v15];
    swift_unknownObjectRelease();
    sub_10000BE14(&v38, &v30, &unk_1019F4D00);
    v16 = *(&v31 + 1);
    if (*(&v31 + 1))
    {
      v17 = sub_100020E58(&v30, *(&v31 + 1));
      v18 = *(v16 - 8);
      v19 = __chkstk_darwin(v17);
      v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      v22 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v18 + 8))(v21, v16);
      sub_100005070(&v30);
    }

    else
    {
      v22 = 0;
    }

    [v8 setToValue:v22];
    swift_unknownObjectRelease();
    sub_1005F8A64(&v36);
  }

  else
  {
    sub_10000CAAC(&v30, &unk_101A09F80);
  }

  v23 = *(v5 + 8) + a2;
  v24 = v8;
  [v24 setBeginTime:v23];
  [v24 setDuration:*(v5 + 16)];
  if (qword_1019F1E28 != -1)
  {
    swift_once();
  }

  [v24 setTimingFunction:qword_101AD7730];
  sub_1005F8AB8(v5, &v36);
  v25 = v42;
  if (v42)
  {
    v26 = v42;
  }

  else
  {
    v26 = [v24 fillMode];
    v25 = 0;
  }

  v27 = v25;
  sub_1005F8B14(&v36);
  [v24 setFillMode:v26];

  sub_10000CAAC(v43, &unk_101A09F80);
  return v24;
}

uint64_t sub_1005F8498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005F8534@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 32);
  a2[3] = &type metadata for CRLBasicLayerAnimation.Def;
  a2[4] = sub_1005F907C();
  v5 = swift_allocObject();
  *a2 = v5;

  return sub_1005F8AB8(v2 + v4, v5 + 16);
}

void (*sub_1005F85A8(uint64_t **a1, uint64_t a2))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[10] = v2;
  v7 = *(a2 + 32);
  v5[3] = &type metadata for CRLBasicLayerAnimation.Def;
  v5[4] = sub_1005F907C();
  v8 = swift_allocObject();
  *v6 = v8;
  sub_1005F8AB8(v2 + v7, v8 + 16);
  return sub_1005F865C;
}

void sub_1005F865C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10000630C(*a1, v2 + 40);
    sub_1005F7A3C(v2 + 40);
    sub_100005070(v2);
  }

  else
  {
    sub_1005F7A3C(*a1);
  }

  free(v2);
}

Swift::Int sub_1005F8730()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1005F8DF4(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1005F87CC()
{
  type metadata accessor for UUID();
  sub_1005F8DF4(&qword_1019FB870, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1005F884C()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1005F8DF4(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double (*sub_1005F8904(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *(a1 + 8) = v2;
  v3 = *(a2 + 32);
  *(a1 + 16) = v3;
  *a1 = *(v2 + v3 + 8);
  return sub_1005F8940;
}

double sub_1005F8940(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16) + 8) = *a1;
  return result;
}

uint64_t type metadata accessor for CRLTweenLayerAnimation()
{
  result = qword_1019F5808;
  if (!qword_1019F5808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005F8B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLTweenLayerAnimation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F8BCC(uint64_t a1)
{
  v2 = type metadata accessor for CRLTweenLayerAnimation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1005F8C50()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1005F8CFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005F8CFC()
{
  if (!qword_1019F5818)
  {
    type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F5818);
    }
  }
}

uint64_t sub_1005F8D9C(uint64_t a1)
{
  result = sub_1005F8DF4(&qword_1019F5868, type metadata accessor for CRLTweenLayerAnimation);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1005F8DF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005F8E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLTweenLayerAnimation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F8EA0(void *a1, uint64_t a2)
{
  sub_10000BE14((a1 + 6), &v13, &qword_1019F57A0);
  if (v14)
  {
    sub_100050F74(&v13, v15);
    sub_10000BE14(a2 + 48, &v11, &qword_1019F57A0);
    if (v12)
    {
      sub_100050F74(&v11, &v13);
      v4 = v16;
      v5 = v17;
      sub_100020E58(v15, v16);
      v6 = (*(v5 + 128))(&v13, v4, v5);
      sub_100005070(&v13);
      sub_100005070(v15);
      goto LABEL_9;
    }

    sub_10000CAAC(&v11, &qword_1019F57A0);
    sub_100005070(v15);
  }

  else
  {
    sub_10000CAAC(&v13, &qword_1019F57A0);
  }

  sub_10000BE14((a1 + 6), v15, &qword_1019F57A0);
  v7 = v16;
  sub_10000CAAC(v15, &qword_1019F57A0);
  if (v7)
  {
    v6 = 0;
  }

  else
  {
    sub_10000BE14(a2 + 48, v15, &qword_1019F57A0);
    v6 = v16 == 0;
    sub_10000CAAC(v15, &qword_1019F57A0);
  }

LABEL_9:
  v8 = a1[4];
  v9 = a1[5];
  sub_100020E58(a1 + 1, v8);
  return (*(v9 + 128))(a2 + 8, v8, v9) & v6 & 1;
}

unint64_t sub_1005F907C()
{
  result = qword_101A09F60;
  if (!qword_101A09F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09F60);
  }

  return result;
}

uint64_t sub_1005F90D0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x726F7461657263;
    v6 = 0x6E69706F6F4C7369;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x4F6F696475417369;
    if (a1 != 5)
    {
      v7 = 0x656C746974;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7461446569766F6DLL;
    v2 = 0x6954726574736F70;
    v3 = 0x6D69547472617473;
    if (a1 != 3)
    {
      v3 = 0x656D6954646E65;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6D49726574736F70;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_1005F924C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10146E788[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1005F92D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10146E788[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1005F9320@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100600954(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005F936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100600978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005F93AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100600954(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005F9410(uint64_t a1)
{
  v2 = sub_1005FF1C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F944C(uint64_t a1)
{
  v2 = sub_1005FF1C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F9488@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v46 - v8;
  v9 = type metadata accessor for CRLAssetData();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  sub_100C038F0(v1, &v46 - v14);
  v16 = *(v9 + 20);
  v17 = *(v1 + v16);
  v18 = *(v1 + v16 + 8);
  v19 = *(v1 + *(v9 + 24));
  v20 = &v15[v16];
  *v20 = v17;
  *(v20 + 1) = v18;
  v21 = *(v9 + 24);
  v47 = v15;
  *&v15[v21] = v19;
  v22 = v10;
  v23 = type metadata accessor for CRLMovieItemAssetData(0);
  sub_10000BE14(v1 + v23[5], v6, &unk_101A1B880);
  if ((*(v22 + 48))(v6, 1, v9) == 1)
  {

    sub_10000CAAC(v6, &unk_101A1B880);
    v24 = 1;
    v25 = v46;
  }

  else
  {
    sub_1006008F0(v6, v12);

    v25 = v46;
    sub_100C038F0(v12, v46);
    v26 = &v12[*(v9 + 20)];
    v28 = *v26;
    v27 = *(v26 + 1);
    v29 = *&v12[*(v9 + 24)];

    sub_100600890(v12, type metadata accessor for CRLAssetData);
    v24 = 0;
    v30 = (v25 + *(v9 + 20));
    *v30 = v28;
    v30[1] = v27;
    *(v25 + *(v9 + 24)) = v29;
  }

  (*(v22 + 56))(v25, v24, 1, v9);
  v31 = *(v2 + v23[6]);
  v32 = *(v2 + v23[7]);
  v33 = *(v2 + v23[8]);
  v34 = *(v2 + v23[9]);
  v35 = (v2 + v23[10]);
  v37 = *v35;
  v36 = v35[1];
  v38 = (v2 + v23[11]);
  v40 = *v38;
  v39 = v38[1];
  v41 = *(v2 + v23[12]);
  v42 = *(v2 + v23[13]);
  sub_1006008F0(v47, a1);
  sub_100601198(v25, a1 + v23[5]);
  *(a1 + v23[6]) = v31;
  *(a1 + v23[7]) = v32;
  *(a1 + v23[8]) = v33;
  *(a1 + v23[9]) = v34;
  v43 = (a1 + v23[10]);
  *v43 = v37;
  v43[1] = v36;
  v44 = (a1 + v23[11]);
  *v44 = v40;
  v44[1] = v39;
  *(a1 + v23[12]) = v41;
  *(a1 + v23[13]) = v42;
}

uint64_t sub_1005F9804(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019F5F30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100020E58(a1, a1[3]);
  sub_1005FF1C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for CRLAssetData();
  sub_1005FEF9C(&qword_1019F5F38, type metadata accessor for CRLAssetData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLMovieItemAssetData(0);
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = *(v3 + *(v9 + 52));
    v11[15] = 9;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005F9B68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for CRLAssetData();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1005B981C(&qword_1019F5F20);
  v10 = *(v38 - 8);
  __chkstk_darwin(v38);
  v12 = &v35 - v11;
  v13 = type metadata accessor for CRLMovieItemAssetData(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + 56);
  v42 = *(v14 + 20);
  v43 = v16;
  v17(&v16[v42], 1, 1, v6);
  v18 = a1[3];
  v41 = a1;
  sub_100020E58(a1, v18);
  sub_1005FF1C8();
  v39 = v12;
  v19 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    v21 = v43;
    sub_100005070(v41);
    sub_10000CAAC(v21 + v42, &unk_101A1B880);
  }

  else
  {
    v20 = v5;
    v40 = v10;
    LOBYTE(v45) = 0;
    sub_1005FEF9C(&qword_1019F5F28, type metadata accessor for CRLAssetData);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v43;
    sub_1006008F0(v9, v43);
    LOBYTE(v45) = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1006010C0(v20, v22 + v42);
    LOBYTE(v45) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v22 + v13[6]) = v23;
    LOBYTE(v45) = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v22 + v13[7]) = v24;
    LOBYTE(v45) = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v22 + v13[8]) = v25;
    LOBYTE(v45) = 5;
    *(v22 + v13[9]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v45) = 6;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v27 = (v22 + v13[10]);
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v45) = 7;
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v13;
    v30 = (v22 + v13[11]);
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v45) = 8;
    *(v22 + v36[12]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1005B981C(&unk_101A0D960);
    v44 = 9;
    sub_100600EA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v13[13];
    (*(v40 + 8))(v39, v38);
    v33 = v43;
    *&v43[v32] = v45;
    sub_100601130(v33, v37, type metadata accessor for CRLMovieItemAssetData);
    sub_100005070(v41);
    return sub_100600890(v33, type metadata accessor for CRLMovieItemAssetData);
  }
}

uint64_t sub_1005FA1D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1005FA264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005FEF9C(&qword_1019F5F40, type metadata accessor for CRLMovieItemAssetData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1005FA2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005FEF9C(&qword_1019F5F40, type metadata accessor for CRLMovieItemAssetData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1005FA36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005FEF9C(&qword_1019F5C70, type metadata accessor for CRLMovieItemAssetData);
  v7 = sub_1005FEF9C(&qword_1019F5F48, type metadata accessor for CRLMovieItemAssetData);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1005FA438(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005FEF9C(&qword_1019F5F40, type metadata accessor for CRLMovieItemAssetData);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_1005FA5AC(uint64_t a1)
{
  v2 = sub_1005FEF9C(&qword_1019F5E00, type metadata accessor for CRLMovieItemAssetData);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1005FA628()
{
  qword_101AD5EC0 = 97;
  *algn_101AD5EC8 = 0xE100000000000000;
  qword_101AD5ED0 = swift_getKeyPath();
  unk_101AD5ED8 = 98;
  qword_101AD5EE0 = 0xE100000000000000;
  qword_101AD5EE8 = swift_getKeyPath();
  qword_101AD5EF0 = 99;
  qword_101AD5EF8 = 0xE100000000000000;
  qword_101AD5F00 = swift_getKeyPath();
  unk_101AD5F08 = 100;
  qword_101AD5F10 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD5F18 = result;
  return result;
}

uint64_t sub_1005FA6B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1005B981C(&unk_101A2C7E0);
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = v25 - v3;
  v4 = sub_1005B981C(&unk_101A0D9D0);
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v29 = v25 - v5;
  v6 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  v12 = type metadata accessor for CRLAssetData();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2878 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for UUID();
  v17 = sub_1005EB3DC(v16, qword_101AD8F08);
  (*(*(v16 - 8) + 16))(v15, v17, v16);
  v18 = &v15[*(v12 + 20)];
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  *&v15[*(v12 + 24)] = _swiftEmptyDictionarySingleton;
  (*(v13 + 56))(v11, 1, 1, v12);
  sub_1005D0BD8(&v50);
  v19 = type metadata accessor for CRLMovieItemCRDTData(0);
  v28 = v19[5];
  v47 = v62;
  v48 = v63;
  v49 = v64;
  v43 = v58;
  v44 = v59;
  v45 = v60;
  v46 = v61;
  v39 = v54;
  v40 = v55;
  v41 = v56;
  v42 = v57;
  v35 = v50;
  v36 = v51;
  v37 = v52;
  v38 = v53;
  v25[2] = sub_1005B981C(&unk_101A106C0);
  v25[1] = sub_1005FE9E0();
  CRRegister.init(wrappedValue:)();
  v27 = v19[6];
  LODWORD(v35) = 0;
  BYTE4(v35) = 1;
  v25[0] = sub_1005B981C(&unk_101A095E0);
  sub_1005FEB28();
  v26 = v11;
  CRRegister.init(wrappedValue:)();
  *(a1 + v19[8]) = _swiftEmptyDictionarySingleton;
  sub_100601130(v15, v8, type metadata accessor for CRLAssetData);
  sub_10000BE14(v11, &v8[v6[5]], &unk_101A1B880);
  *&v8[v6[6]] = 0;
  *&v8[v6[7]] = 0;
  *&v8[v6[8]] = 0;
  v8[v6[9]] = 0;
  v20 = &v8[v6[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v8[v6[11]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v8[v6[12]] = 0;
  *&v8[v6[13]] = _swiftEmptyDictionarySingleton;
  sub_1005FEF9C(&qword_1019F5C70, type metadata accessor for CRLMovieItemAssetData);
  CRRegister.init(_:)();
  v47 = v62;
  v48 = v63;
  v49 = v64;
  v43 = v58;
  v44 = v59;
  v45 = v60;
  v46 = v61;
  v39 = v54;
  v40 = v55;
  v41 = v56;
  v42 = v57;
  v35 = v50;
  v36 = v51;
  v37 = v52;
  v38 = v53;
  v22 = v29;
  CRRegister.init(_:)();
  (*(v30 + 40))(a1 + v28, v22, v31);
  LODWORD(v35) = 0;
  BYTE4(v35) = 1;
  v23 = v32;
  CRRegister.init(_:)();
  (*(v33 + 40))(a1 + v27, v23, v34);
  LODWORD(v35) = 1097859072;
  *(&v35 + 1) = _swiftEmptyDictionarySingleton;
  sub_1005FEC00();
  CRRegister.init(_:)();
  sub_10000CAAC(v26, &unk_101A1B880);
  return sub_100600890(v15, type metadata accessor for CRLAssetData);
}

uint64_t sub_1005FACB0@<X0>(void *a1@<X8>)
{
  if (qword_1019F1330 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = *algn_101AD5EC8;
  v3 = qword_101AD5ED0;
  v2 = unk_101AD5ED8;
  v4 = qword_101AD5EE0;
  v5 = qword_101AD5EE8;
  v6 = qword_101AD5EF0;
  v7 = qword_101AD5EF8;
  v9 = qword_101AD5F00;
  v8 = unk_101AD5F08;
  v10 = qword_101AD5F10;
  v11 = qword_101AD5F18;
  *a1 = qword_101AD5EC0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v9;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v11;
}

uint64_t sub_1005FAD9C(uint64_t a1)
{
  v2 = sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return static CRStruct_4.fieldKeys.getter(a1, v2);
}

uint64_t sub_1005FAE0C(uint64_t a1)
{
  v2 = sub_1005FEF9C(&qword_1019F5E78, type metadata accessor for CRLMovieItemCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1005FAE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1005FAEF4()
{
  sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.actionUndoingDifference(from:)();
}

uint64_t sub_1005FAF78()
{
  sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.apply(_:)();
}

uint64_t sub_1005FAFF4()
{
  sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.hasDelta(from:)();
}

uint64_t sub_1005FB070()
{
  sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.delta(_:from:)();
}

uint64_t sub_1005FB104(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1005FB180()
{
  sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.merge(delta:)();
}

uint64_t sub_1005FB1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1005FB280(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1005FB304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1005FB398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1005FB414()
{
  sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.needToFinalizeTimestamps()();
}

uint64_t sub_1005FB480(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1005FB4FC()
{
  sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.merge(_:)();
}

uint64_t sub_1005FB580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.merge(_:)(a1, a2, v4);
}

uint64_t sub_1005FB804(uint64_t a1)
{
  v2 = sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

  return CRStruct_4.minEncodingVersion.getter(a1, v2);
}

Swift::Int sub_1005FB880()
{
  v1 = (*v0 << 63) >> 63;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1005FB8FC()
{
  v1 = (*v0 << 63) >> 63;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *sub_1005FB944@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == -1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1005FB974()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x615272656E726F63;
  }
}

uint64_t sub_1005FB9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_1005FBAB4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == -1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1005FBB0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static CodingKey<>.intCases.getter(a1, a2, v7, v8);
}

uint64_t sub_1005FBB78(uint64_t a1)
{
  v2 = sub_1005FF570();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FBBB4(uint64_t a1)
{
  v2 = sub_1005FF570();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005FBBF0(void *a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019F5F00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1005FF570();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[1] = a2;
    v11 = 1;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SyncEvent.FetchedDatabaseChanges.deletions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1005FBDDC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_100B3216C(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

void *sub_1005FBE00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100600CC4(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t sub_1005FBE50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100601018();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1005FBEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100601018();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1005FBEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005FEC00();
  v7 = sub_10060106C();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1005FBF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100601018();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_1005FC04C(uint64_t a1)
{
  v2 = sub_1005FF6BC();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1005FC0B0(_UNKNOWN ****a1)
{
  v2 = type metadata accessor for CRLMovieItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MergeResult();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 == &off_1019F58C8)
  {
    v10 = qword_101AD5F20;
    swift_beginAccess();
    sub_100601130(a1 + v10, v4, type metadata accessor for CRLMovieItemCRDTData);
    swift_beginAccess();
    sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

    CRStruct_4.merge(_:)();
    swift_endAccess();

    sub_100600890(v4, type metadata accessor for CRLMovieItemCRDTData);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t *sub_1005FC2E0(char a1)
{
  v2 = v1;
  v29 = *v2;
  v4 = v29;
  v28 = type metadata accessor for CRLMovieItemCRDTData(0);
  __chkstk_darwin(v28);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v19 = *(v4 + 736);
  swift_beginAccess();
  if (a1)
  {
    v27 = v9;
    sub_10000BE14(v2 + v19, v15, &unk_101A226A0);
    sub_10001A2F8(&qword_101A09E00, &unk_101A226A0);
    CRType.copy(renamingReferences:)();
    v9 = v27;
    sub_10000CAAC(v15, &unk_101A226A0);
    v20 = qword_101AD5F20;
    swift_beginAccess();
    sub_100601130(v2 + v20, v6, type metadata accessor for CRLMovieItemCRDTData);
    sub_1005FEF9C(&qword_1019F5E78, type metadata accessor for CRLMovieItemCRDTData);
    CRType.copy(renamingReferences:)();
    sub_100600890(v6, type metadata accessor for CRLMovieItemCRDTData);
  }

  else
  {
    sub_10000BE14(v2 + v19, v18, &unk_101A226A0);
    v21 = qword_101AD5F20;
    swift_beginAccess();
    sub_100601130(v2 + v21, v9, type metadata accessor for CRLMovieItemCRDTData);
  }

  sub_10000BE14(v18, v15, &unk_101A226A0);
  sub_100601130(v9, v6, type metadata accessor for CRLMovieItemCRDTData);
  v22 = *(v2 + 5);
  v30[0] = *(v2 + 3);
  v30[1] = v22;
  v31 = *(v2 + 56);
  v28 = v2[2];
  v23 = v9;
  v24 = swift_allocObject();
  sub_100601130(v6, v24 + qword_101AD5F20, type metadata accessor for CRLMovieItemCRDTData);
  sub_10000BE14(v15, v12, &unk_101A226A0);
  sub_10000BE14(v12, v24 + *(*v24 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v12, &unk_101A226A0);
  sub_100600890(v6, type metadata accessor for CRLMovieItemCRDTData);
  sub_10000CAAC(v15, &unk_101A226A0);
  sub_100600890(v23, type metadata accessor for CRLMovieItemCRDTData);
  sub_10000CAAC(v18, &unk_101A226A0);
  return sub_100747AF0(v30, v28);
}

uint64_t sub_1005FC784(uint64_t a1)
{
  v3 = type metadata accessor for CRLMovieItemCRDTData(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = sub_1005B981C(&unk_101A226A0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v35 - v20;
  if (*a1 != &off_1019F58C8)
  {
    goto LABEL_7;
  }

  v36 = v8;
  v37 = v6;
  v22 = *(*v1 + 736);
  swift_beginAccess();
  v38 = v1;
  sub_10000BE14(v1 + v22, v21, &unk_101A226A0);
  v23 = *(*a1 + 736);
  swift_beginAccess();
  sub_10000BE14(a1 + v23, v19, &unk_101A226A0);

  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  LOBYTE(v23) = static UUID.== infix(_:_:)();
  v24 = *(v10 + 8);
  v24(v13, v9);
  v24(v15, v9);
  if ((v23 & 1) == 0)
  {

    sub_10000CAAC(v19, &unk_101A226A0);
    sub_10000CAAC(v21, &unk_101A226A0);
LABEL_7:
    v33 = 0;
    return v33 & 1;
  }

  v25 = sub_101279020();
  sub_10000CAAC(v19, &unk_101A226A0);
  sub_10000CAAC(v21, &unk_101A226A0);
  if ((v25 & 1) == 0)
  {

    goto LABEL_7;
  }

  v26 = qword_101AD5F20;
  v27 = v38;
  swift_beginAccess();
  v28 = v27 + v26;
  v29 = v36;
  sub_100601130(v28, v36, type metadata accessor for CRLMovieItemCRDTData);
  v30 = qword_101AD5F20;
  swift_beginAccess();
  v31 = a1 + v30;
  v32 = v37;
  sub_100601130(v31, v37, type metadata accessor for CRLMovieItemCRDTData);
  v33 = sub_100600190();

  sub_100600890(v32, type metadata accessor for CRLMovieItemCRDTData);
  sub_100600890(v29, type metadata accessor for CRLMovieItemCRDTData);
  return v33 & 1;
}

uint64_t sub_1005FCBC4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CRLMovieItemCRDTData(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = qword_101AD5F20;
  swift_beginAccess();
  if (a2)
  {
    sub_100601130(v2 + v10, v7, type metadata accessor for CRLMovieItemCRDTData);
    sub_1005FEF9C(&qword_1019F5E78, type metadata accessor for CRLMovieItemCRDTData);
    CRType.copy(renamingReferences:)();
    sub_100600890(v7, type metadata accessor for CRLMovieItemCRDTData);
  }

  else
  {
    sub_100601130(v2 + v10, v9, type metadata accessor for CRLMovieItemCRDTData);
  }

  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v11, qword_101AD6348);
  sub_1005FEF9C(&qword_1019F5E98, type metadata accessor for CRLMovieItemCRDTData);
  v12 = CRDT.serializedData(_:version:)();
  sub_100600890(v9, type metadata accessor for CRLMovieItemCRDTData);
  return v12;
}

uint64_t sub_1005FCE14(_UNKNOWN ****a1)
{
  v3 = type metadata accessor for CRLMovieItemCRDTData(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  if (*a1 == &off_1019F58C8)
  {
    v9 = qword_101AD5F20;
    swift_beginAccess();
    sub_100601130(v1 + v9, v8, type metadata accessor for CRLMovieItemCRDTData);
    v10 = qword_101AD5F20;
    swift_beginAccess();
    sub_100601130(a1 + v10, v6, type metadata accessor for CRLMovieItemCRDTData);
    sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);
    v11 = CRStruct_4.hasDelta(from:)();
    sub_100600890(v6, type metadata accessor for CRLMovieItemCRDTData);
    sub_100600890(v8, type metadata accessor for CRLMovieItemCRDTData);
    return v11 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1005FD02C(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v27 = type metadata accessor for CRLMovieItemCRDTData(0);
  v3 = __chkstk_darwin(v27);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = sub_1005B981C(&qword_1019F5F58);
  v9 = __chkstk_darwin(v8 - 8);
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = qword_101AD5F20;
    swift_beginAccess();
    sub_100601130(v2 + v15, v7, type metadata accessor for CRLMovieItemCRDTData);
    v16 = qword_101AD5F20;
    swift_beginAccess();
    sub_100601130(v14 + v16, v5, type metadata accessor for CRLMovieItemCRDTData);
    sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);

    CRStruct_4.delta(_:from:)();
    sub_100600890(v5, type metadata accessor for CRLMovieItemCRDTData);
    sub_100600890(v7, type metadata accessor for CRLMovieItemCRDTData);
    v17 = v26;
    sub_10000BE14(v12, v26, &qword_1019F5F58);
    v18 = sub_1005B981C(&qword_1019F5E90);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_10000CAAC(v12, &qword_1019F5F58);

      sub_10000CAAC(v17, &qword_1019F5F58);
      return 0;
    }

    else
    {
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v21, qword_101AD6348);
      sub_10001A2F8(&qword_1019F5E88, &qword_1019F5E90);
      v22 = v29;
      v23 = PartialCRDT.deltaSerializedData(_:version:)();
      if (v22)
      {
        sub_10000CAAC(v12, &qword_1019F5F58);

        return (*(v19 + 8))(v17, v18);
      }

      else
      {
        v24 = v23;
        sub_10000CAAC(v12, &qword_1019F5F58);

        (*(v19 + 8))(v17, v18);
        return v24;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1005FD4E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v33 = *v3;
  v6 = type metadata accessor for UUID();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &unk_10146E320;
  v10 = sub_1005B981C(&qword_1019F5E90);
  v34 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  sub_100024E98(a1, a2);
  sub_10001A2F8(&qword_1019F5E88, &qword_1019F5E90);
  v13 = v35;
  PartialCRDT.init(serializedData:)();
  if (!v13)
  {
    v31 = v8;
    v35 = 0;
    swift_beginAccess();
    type metadata accessor for CRLMovieItemCRDTData(0);
    sub_1005FEF9C(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData);
    LOBYTE(v9) = CRStruct_4.merge(delta:)();
    swift_endAccess();
    if ((v9 & 1) == 0)
    {
      v14 = v3;
      v30 = v12;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v29 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v16 = *(*v3 + 744);
      swift_beginAccess();
      v17 = v32;
      v18 = v3 + v16;
      v19 = v31;
      (*(v32 + 16))(v31, v18, v6);
      v20 = UUID.uuidString.getter();
      v22 = v21;
      (*(v17 + 8))(v19, v6);
      *(inited + 56) = &type metadata for String;
      v23 = sub_1000053B0();
      *(inited + 64) = v23;
      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v36 = v14;

      v24 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v23;
      *(inited + 72) = v24;
      *(inited + 80) = v25;
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v29, &_mh_execute_header, v26, "Delta failed to apply for %{public}@%{public}@", 46, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v12 = v30;
    }

    (*(v34 + 8))(v12, v10);
  }

  return v9 & 1;
}

unint64_t sub_1005FD908()
{
  v33 = type metadata accessor for CRLAssetData();
  v31 = *(v33 - 8);
  v0 = __chkstk_darwin(v33);
  v26 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v0);
  v3 = &v25 - v2;
  v30 = type metadata accessor for CRLMovieItemAssetData(0) - 8;
  v4 = __chkstk_darwin(v30);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  sub_1005B981C(&qword_1019F5F50);
  v8 = sub_1005B981C(&qword_101A22780);
  v9 = *(v8 - 8);
  v28 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10146BDE0;
  v32 = v11;
  v12 = v11 + v10;
  v27 = *(v8 + 48);
  *v12 = 0x6569766F6DLL;
  *(v12 + 8) = 0xE500000000000000;
  swift_beginAccess();
  sub_1005B981C(&qword_101A28680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  sub_100601130(v7, v3, type metadata accessor for CRLAssetData);
  sub_100600890(v7, type metadata accessor for CRLMovieItemAssetData);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = v27;
  v25 = *(v14 + 16);
  v25(&v27[v12], v3, v13);
  sub_100600890(v3, type metadata accessor for CRLAssetData);
  v27 = *(v14 + 56);
  (v27)(&v15[v12], 0, 1, v13);
  v16 = (v12 + v28);
  v28 = v8;
  v17 = *(v8 + 48);
  *v16 = 0x6D49726574736F70;
  *(v16 + 1) = 0xEB00000000656761;
  swift_beginAccess();
  v18 = v29;
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  v19 = *(v30 + 28);
  if ((*(v31 + 48))(v18 + v19, 1, v33))
  {
    sub_100600890(v18, type metadata accessor for CRLMovieItemAssetData);
    v20 = 1;
  }

  else
  {
    v21 = v18 + v19;
    v22 = v26;
    sub_100601130(v21, v26, type metadata accessor for CRLAssetData);
    sub_100600890(v18, type metadata accessor for CRLMovieItemAssetData);
    v25(&v16[v17], v22, v13);
    sub_100600890(v22, type metadata accessor for CRLAssetData);
    v20 = 0;
  }

  (v27)(&v16[v17], v20, 1, v13);
  v23 = sub_100BD5554(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

uint64_t sub_1005FDDBC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v28 = type metadata accessor for UUID();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v7 - 8);
  v25 = &v24 - v8;
  v9 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  v18 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap;
  swift_beginAccess();
  if (*(*(a1 + v18) + 16))
  {
    swift_beginAccess();
    sub_1005B981C(&qword_101A28680);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
    sub_1005F9488(v17);
    v24 = v2;
    sub_100600890(v14, type metadata accessor for CRLMovieItemAssetData);
    sub_100601130(v17, v14, type metadata accessor for CRLMovieItemAssetData);
    swift_beginAccess();
    sub_100601130(v14, v11, type metadata accessor for CRLMovieItemAssetData);
    CRRegister.wrappedValue.setter();
    sub_100600890(v14, type metadata accessor for CRLMovieItemAssetData);
    swift_endAccess();
    v3 = v24;
    sub_100600890(v17, type metadata accessor for CRLMovieItemAssetData);
  }

  v19 = *(*v4 + 736);
  swift_beginAccess();
  sub_10124DE14(a1);
  result = swift_endAccess();
  if (!v3)
  {
    v21 = v25;
    sub_10000BE14(v4 + v19, v25, &unk_101A226A0);
    sub_1005B981C(&unk_1019F5250);
    v22 = v26;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v21, &unk_101A226A0);
    v23 = *(*v4 + 744);
    swift_beginAccess();
    (*(v27 + 40))(v4 + v23, v22, v28);
    return swift_endAccess();
  }

  return result;
}

void sub_1005FE170(float a1)
{
  if (a1 >= 0.0)
  {
    swift_beginAccess();
    type metadata accessor for CRLMovieItemCRDTData(0);
    sub_1005B981C(&qword_1019F4B60);
    v25 = CRRegister.wrappedValue.modify();
    *v26 = a1;
    v25(v27, 0);
    swift_endAccess();
  }

  else
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v27[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v27);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    *(inited + 32) = v2;
    v11 = sub_1005CF000();
    *(inited + 96) = v11;
    v12 = sub_1005FEF9C(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 285;
    v14 = v27[0];
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Only positive corner radius values are allowed.", 47, 2, _swiftEmptyArrayStorage);

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

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:285 isFatal:0 format:v23 args:v20];
  }
}

uint64_t sub_1005FE5EC()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A226A0);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100600890(v0 + qword_101AD5F20, type metadata accessor for CRLMovieItemCRDTData);

  return swift_deallocClassInstance();
}

uint64_t sub_1005FE704()
{
  result = type metadata accessor for CRLMovieItemCRDTData(319);
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

void sub_1005FE7DC()
{
  sub_1005FE92C();
  if (v0 <= 0x3F)
  {
    sub_1005FEAB8(319, &qword_1019F5C78, &unk_101A106C0, &unk_1014907B0, sub_1005FE9E0);
    if (v1 <= 0x3F)
    {
      sub_1005FEAB8(319, &qword_1019F5C80, &unk_101A095E0, &unk_10146DBA0, sub_1005FEB28);
      if (v2 <= 0x3F)
      {
        sub_1005FEBA4();
        if (v3 <= 0x3F)
        {
          sub_1005FEEE8(319, &qword_1019F48F8, &type metadata accessor for AnyCRDT);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1005FE92C()
{
  if (!qword_1019F5C68)
  {
    type metadata accessor for CRLMovieItemAssetData(255);
    sub_1005FEF9C(&qword_1019F5C70, type metadata accessor for CRLMovieItemAssetData);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F5C68);
    }
  }
}

unint64_t sub_1005FE9E0()
{
  result = qword_101A0D9F0;
  if (!qword_101A0D9F0)
  {
    sub_1005C4E5C(&unk_101A106C0);
    sub_1005FEA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D9F0);
  }

  return result;
}

unint64_t sub_1005FEA64()
{
  result = qword_101A106D0;
  if (!qword_101A106D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A106D0);
  }

  return result;
}

void sub_1005FEAB8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_1005C4E5C(a3);
    a5();
    v7 = type metadata accessor for CRRegister();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1005FEB28()
{
  result = qword_1019F5C88;
  if (!qword_1019F5C88)
  {
    sub_1005C4E5C(&unk_101A095E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5C88);
  }

  return result;
}

void sub_1005FEBA4()
{
  if (!qword_1019F5C90)
  {
    sub_1005FEC00();
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F5C90);
    }
  }
}

unint64_t sub_1005FEC00()
{
  result = qword_1019F5C98;
  if (!qword_1019F5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5C98);
  }

  return result;
}

uint64_t sub_1005FEC54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1005FEC9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1005FED10()
{
  type metadata accessor for CRLAssetData();
  if (v0 <= 0x3F)
  {
    sub_1005FEE44();
    if (v1 <= 0x3F)
    {
      sub_1005FEE9C(319, &qword_1019F5D48);
      if (v2 <= 0x3F)
      {
        sub_1005FEE9C(319, &qword_1019F5D50);
        if (v3 <= 0x3F)
        {
          sub_1005FEEE8(319, &qword_1019F5D58, &type metadata accessor for AnyCRValue);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1005FEE44()
{
  if (!qword_1019F5D40)
  {
    type metadata accessor for CRLAssetData();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F5D40);
    }
  }
}

void sub_1005FEE9C(uint64_t a1, unint64_t *a2)
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

void sub_1005FEEE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005FEF9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005FF0C0()
{
  result = qword_1019F5DC0;
  if (!qword_1019F5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5DC0);
  }

  return result;
}

unint64_t sub_1005FF118()
{
  result = qword_1019F5DC8;
  if (!qword_1019F5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5DC8);
  }

  return result;
}

unint64_t sub_1005FF170()
{
  result = qword_1019F5DD0;
  if (!qword_1019F5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5DD0);
  }

  return result;
}

unint64_t sub_1005FF1C8()
{
  result = qword_1019F5DD8;
  if (!qword_1019F5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5DD8);
  }

  return result;
}

unint64_t sub_1005FF220()
{
  result = qword_1019F5DE0;
  if (!qword_1019F5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5DE0);
  }

  return result;
}

unint64_t sub_1005FF278()
{
  result = qword_1019F5DE8;
  if (!qword_1019F5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5DE8);
  }

  return result;
}

unint64_t sub_1005FF35C()
{
  result = qword_1019F5E08;
  if (!qword_1019F5E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5E08);
  }

  return result;
}

unint64_t sub_1005FF3B8()
{
  result = qword_1019F5E10;
  if (!qword_1019F5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5E10);
  }

  return result;
}

unint64_t sub_1005FF410()
{
  result = qword_1019F5E18;
  if (!qword_1019F5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5E18);
  }

  return result;
}

unint64_t sub_1005FF468()
{
  result = qword_1019F5E20;
  if (!qword_1019F5E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5E20);
  }

  return result;
}

unint64_t sub_1005FF4C0()
{
  result = qword_1019F5E28;
  if (!qword_1019F5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5E28);
  }

  return result;
}

unint64_t sub_1005FF518()
{
  result = qword_1019F5E30;
  if (!qword_1019F5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5E30);
  }

  return result;
}

unint64_t sub_1005FF570()
{
  result = qword_1019F5E38;
  if (!qword_1019F5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5E38);
  }

  return result;
}

unint64_t sub_1005FF5C8()
{
  result = qword_1019F5E40;
  if (!qword_1019F5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5E40);
  }

  return result;
}

unint64_t sub_1005FF620()
{
  result = qword_1019F5E48;
  if (!qword_1019F5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5E48);
  }

  return result;
}

unint64_t sub_1005FF6BC()
{
  result = qword_1019F5E60;
  if (!qword_1019F5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5E60);
  }

  return result;
}

unint64_t sub_1005FFA60()
{
  result = qword_1019F5ED0;
  if (!qword_1019F5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5ED0);
  }

  return result;
}

__n128 sub_1005FFAFC@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  type metadata accessor for CRLMovieItemCRDTData(0);
  sub_1005B981C(&unk_101A0D9D0);
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  *(a1 + 192) = v15;
  *(a1 + 208) = v16;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 224) = v17;
  *(a1 + 160) = v13;
  *(a1 + 176) = v14;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1005FFBE0()
{
  swift_beginAccess();
  type metadata accessor for CRLMovieItemCRDTData(0);
  sub_1005B981C(&unk_101A0D9D0);
  CRRegister.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_1005FFCAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLAssetData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_1005B981C(&unk_101A01EC0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_31;
  }

  v14 = *(v4 + 20);
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v15 == *v17 && v16 == v17[1];
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_100B3216C(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0)
  {
    goto LABEL_31;
  }

  v48 = type metadata accessor for CRLMovieItemAssetData(0);
  v19 = v48[5];
  v20 = *(v11 + 48);
  sub_10000BE14(a1 + v19, v13, &unk_101A1B880);
  v21 = a2 + v19;
  v22 = v20;
  sub_10000BE14(v21, &v13[v20], &unk_101A1B880);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) == 1)
  {
    if (v23(&v13[v22], 1, v4) == 1)
    {
      sub_10000CAAC(v13, &unk_101A1B880);
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  sub_10000BE14(v13, v10, &unk_101A1B880);
  if (v23(&v13[v22], 1, v4) == 1)
  {
    sub_100600890(v10, type metadata accessor for CRLAssetData);
LABEL_20:
    v28 = &unk_101A01EC0;
LABEL_30:
    sub_10000CAAC(v13, v28);
    goto LABEL_31;
  }

  sub_1006008F0(&v13[v22], v7);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v29 = *(v4 + 20), v30 = *&v10[v29], v31 = *&v10[v29 + 8], v32 = &v7[v29], v30 == *v32) ? (v33 = v31 == *(v32 + 1)) : (v33 = 0), !v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_100600890(v7, type metadata accessor for CRLAssetData);
    sub_100600890(v10, type metadata accessor for CRLAssetData);
    v28 = &unk_101A1B880;
    goto LABEL_30;
  }

  v34 = sub_100B3216C(*&v10[*(v4 + 24)], *&v7[*(v4 + 24)]);
  sub_100600890(v7, type metadata accessor for CRLAssetData);
  sub_100600890(v10, type metadata accessor for CRLAssetData);
  sub_10000CAAC(v13, &unk_101A1B880);
  if ((v34 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v24 = v48;
  if (*(a1 + v48[6]) != *(a2 + v48[6]) || *(a1 + v48[7]) != *(a2 + v48[7]) || *(a1 + v48[8]) != *(a2 + v48[8]) || *(a1 + v48[9]) != *(a2 + v48[9]))
  {
    goto LABEL_31;
  }

  v25 = v48[12];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v35 = 0;
    if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
    {
      return v35 & 1;
    }
  }

  v37 = v48[10];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (!v39)
  {
    if (!v41)
    {
      goto LABEL_42;
    }

LABEL_31:
    v35 = 0;
    return v35 & 1;
  }

  if (!v41 || (*v38 != *v40 || v39 != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_42:
  v42 = v24[11];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  v35 = (v44 | v46) == 0;
  if (v44 && v46)
  {
    if (*v43 == *v45 && v44 == v46)
    {
      v35 = 1;
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v35 & 1;
}

uint64_t sub_100600190()
{
  v0 = type metadata accessor for CRLMovieItemAssetData(0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = v14 - v4;
  sub_1005B981C(&qword_101A28680);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v6 = sub_1005FFCAC(v5, v3);
  sub_100600890(v3, type metadata accessor for CRLMovieItemAssetData);
  sub_100600890(v5, type metadata accessor for CRLMovieItemAssetData);
  if ((v6 & 1) == 0)
  {
    goto LABEL_7;
  }

  type metadata accessor for CRLMovieItemCRDTData(0);
  sub_1005B981C(&unk_101A0D9D0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v21[12] = v34;
  v21[13] = v35;
  v21[8] = v30;
  v21[9] = v31;
  v21[11] = v33;
  v21[10] = v32;
  v21[4] = v26;
  v21[5] = v27;
  v21[7] = v29;
  v21[6] = v28;
  v21[0] = v22;
  v21[1] = v23;
  v21[3] = v25;
  v21[2] = v24;
  *(&v21[26] + 8) = v37[12];
  *(&v21[27] + 8) = v37[13];
  *(&v21[22] + 8) = v37[8];
  *(&v21[23] + 8) = v37[9];
  *(&v21[24] + 8) = v37[10];
  *(&v21[25] + 8) = v37[11];
  *(&v21[18] + 8) = v37[4];
  *(&v21[19] + 8) = v37[5];
  *(&v21[20] + 8) = v37[6];
  *(&v21[21] + 8) = v37[7];
  *(&v21[16] + 8) = v37[2];
  *(&v21[17] + 8) = v37[3];
  *(&v21[14] + 8) = v37[0];
  *(&v21[15] + 8) = v37[1];
  v39[12] = v34;
  v39[13] = v35;
  v39[8] = v30;
  v39[9] = v31;
  v39[11] = v33;
  v39[10] = v32;
  v39[4] = v26;
  v39[5] = v27;
  v39[7] = v29;
  v39[6] = v28;
  v39[0] = v22;
  v39[1] = v23;
  *&v21[14] = v36;
  *(&v21[28] + 1) = v38;
  v40 = v36;
  v39[3] = v25;
  v39[2] = v24;
  if (sub_1000C0FB4(v39) != 1)
  {
    v18[12] = *(&v21[26] + 8);
    v18[13] = *(&v21[27] + 8);
    v19 = *(&v21[28] + 1);
    v18[8] = *(&v21[22] + 8);
    v18[9] = *(&v21[23] + 8);
    v18[10] = *(&v21[24] + 8);
    v18[11] = *(&v21[25] + 8);
    v18[4] = *(&v21[18] + 8);
    v18[5] = *(&v21[19] + 8);
    v18[6] = *(&v21[20] + 8);
    v18[7] = *(&v21[21] + 8);
    v18[0] = *(&v21[14] + 8);
    v18[1] = *(&v21[15] + 8);
    v18[2] = *(&v21[16] + 8);
    v18[3] = *(&v21[17] + 8);
    if (sub_1000C0FB4(v18) != 1)
    {
      v14[12] = *(&v21[26] + 8);
      v14[13] = *(&v21[27] + 8);
      v14[8] = *(&v21[22] + 8);
      v14[9] = *(&v21[23] + 8);
      v14[10] = *(&v21[24] + 8);
      v14[11] = *(&v21[25] + 8);
      v14[4] = *(&v21[18] + 8);
      v14[5] = *(&v21[19] + 8);
      v14[6] = *(&v21[20] + 8);
      v14[7] = *(&v21[21] + 8);
      v14[0] = *(&v21[14] + 8);
      v14[1] = *(&v21[15] + 8);
      v14[2] = *(&v21[16] + 8);
      v14[3] = *(&v21[17] + 8);
      v20[12] = *(&v21[26] + 8);
      v20[13] = *(&v21[27] + 8);
      v20[8] = *(&v21[22] + 8);
      v20[9] = *(&v21[23] + 8);
      v20[10] = *(&v21[24] + 8);
      v20[11] = *(&v21[25] + 8);
      v20[4] = *(&v21[18] + 8);
      v20[5] = *(&v21[19] + 8);
      v20[6] = *(&v21[20] + 8);
      v20[7] = *(&v21[21] + 8);
      v20[0] = *(&v21[14] + 8);
      v20[1] = *(&v21[15] + 8);
      v15 = *(&v21[28] + 1);
      *&v20[14] = *(&v21[28] + 1);
      v20[2] = *(&v21[16] + 8);
      v20[3] = *(&v21[17] + 8);
      v53 = v21[12];
      v54 = v21[13];
      v55 = *&v21[14];
      v49 = v21[8];
      v50 = v21[9];
      v52 = v21[11];
      v51 = v21[10];
      v45 = v21[4];
      v46 = v21[5];
      v48 = v21[7];
      v47 = v21[6];
      v41 = v21[0];
      v42 = v21[1];
      v44 = v21[3];
      v43 = v21[2];
      sub_10000BE14(&v22, v16, &unk_101A106C0);
      sub_10000BE14(v37, v16, &unk_101A106C0);
      v9 = sub_100B931E0(&v41, v20);
      sub_10000CAAC(v14, &unk_101A106C0);
      sub_10000CAAC(v37, &unk_101A106C0);
      sub_10000CAAC(&v22, &unk_101A106C0);
      v16[12] = v21[12];
      v16[13] = v21[13];
      v17 = *&v21[14];
      v16[8] = v21[8];
      v16[9] = v21[9];
      v16[10] = v21[10];
      v16[11] = v21[11];
      v16[4] = v21[4];
      v16[5] = v21[5];
      v16[6] = v21[6];
      v16[7] = v21[7];
      v16[0] = v21[0];
      v16[1] = v21[1];
      v16[2] = v21[2];
      v16[3] = v21[3];
      sub_10000CAAC(v16, &unk_101A106C0);
      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

LABEL_6:
    memcpy(v20, v21, sizeof(v20));
    sub_10000CAAC(v20, &qword_1019F5EE0);
    goto LABEL_7;
  }

  v20[12] = *(&v21[26] + 8);
  v20[13] = *(&v21[27] + 8);
  *&v20[14] = *(&v21[28] + 1);
  v20[8] = *(&v21[22] + 8);
  v20[9] = *(&v21[23] + 8);
  v20[10] = *(&v21[24] + 8);
  v20[11] = *(&v21[25] + 8);
  v20[4] = *(&v21[18] + 8);
  v20[5] = *(&v21[19] + 8);
  v20[6] = *(&v21[20] + 8);
  v20[7] = *(&v21[21] + 8);
  v20[0] = *(&v21[14] + 8);
  v20[1] = *(&v21[15] + 8);
  v20[2] = *(&v21[16] + 8);
  v20[3] = *(&v21[17] + 8);
  if (sub_1000C0FB4(v20) != 1)
  {
    goto LABEL_6;
  }

  v53 = v21[12];
  v54 = v21[13];
  v55 = *&v21[14];
  v49 = v21[8];
  v50 = v21[9];
  v52 = v21[11];
  v51 = v21[10];
  v45 = v21[4];
  v46 = v21[5];
  v48 = v21[7];
  v47 = v21[6];
  v41 = v21[0];
  v42 = v21[1];
  v44 = v21[3];
  v43 = v21[2];
  sub_10000CAAC(&v41, &unk_101A106C0);
LABEL_10:
  sub_1005B981C(&unk_101A2C7E0);
  CRRegister.wrappedValue.getter();
  v10 = *v21;
  v11 = BYTE4(v21[0]);
  CRRegister.wrappedValue.getter();
  if (v11)
  {
    if ((BYTE4(v21[0]) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((BYTE4(v21[0]) & 1) != 0 || v10 != *v21)
  {
    goto LABEL_7;
  }

  sub_1005B981C(&qword_1019F4B60);
  CRRegister.wrappedValue.getter();
  v12 = *v21;
  v13 = *(&v21[0] + 1);
  CRRegister.wrappedValue.getter();
  if (v12 == *v21)
  {
    v7 = sub_100B3216C(v13, *(&v21[0] + 1));

    return v7 & 1;
  }

LABEL_7:
  v7 = 0;
  return v7 & 1;
}

uint64_t sub_100600890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006008F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLAssetData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100600954(uint64_t a1)
{
  if ((a1 + 1) > 9)
  {
    return 10;
  }

  else
  {
    return byte_10146E7D8[a1 + 1];
  }
}

uint64_t sub_100600978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446569766F6DLL && a2 == 0xE900000000000061;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D49726574736F70 && a2 == 0xEF61746144656761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6954726574736F70 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4F6F696475417369 && a2 == 0xEB00000000796C6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F7461657263 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E69706F6F4C7369 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void *sub_100600CC4(void *a1)
{
  v3 = sub_1005B981C(&qword_1019F5EF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100020E58(a1, a1[3]);
  sub_1005FF570();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005070(a1);
  }

  else
  {
    v11 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1005B981C(&unk_101A0D960);
    v10 = 1;
    sub_100600EA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100005070(a1);
  }

  return v7;
}

unint64_t sub_100600EA0()
{
  result = qword_1019F5EF8;
  if (!qword_1019F5EF8)
  {
    sub_1005C4E5C(&unk_101A0D960);
    sub_1005FEF9C(&qword_101A0D970, &type metadata accessor for AnyCRValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5EF8);
  }

  return result;
}

unint64_t sub_100600F5C()
{
  result = qword_101A0D990;
  if (!qword_101A0D990)
  {
    sub_1005C4E5C(&unk_101A0D960);
    sub_1005FEF9C(&qword_1019F5F08, &type metadata accessor for AnyCRValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D990);
  }

  return result;
}

unint64_t sub_100601018()
{
  result = qword_1019F5F10;
  if (!qword_1019F5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5F10);
  }

  return result;
}

unint64_t sub_10060106C()
{
  result = qword_1019F5F18;
  if (!qword_1019F5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5F18);
  }

  return result;
}

uint64_t sub_1006010C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A1B880);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100601130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100601198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A1B880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CRLMovieItemAssetData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLMovieItemAssetData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10060136C()
{
  result = qword_1019F5F60;
  if (!qword_1019F5F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5F60);
  }

  return result;
}

unint64_t sub_1006013C4()
{
  result = qword_1019F5F68;
  if (!qword_1019F5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5F68);
  }

  return result;
}

BOOL CRLiOSDocumentModeHandwriting.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_100601584(a1, v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      ObjectType = swift_getObjectType();
      v3 = swift_getObjectType();

      return ObjectType == v3;
    }
  }

  else
  {
    sub_1005E09AC(v6);
  }

  return 0;
}

uint64_t sub_100601584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F4D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *CRLiOSDocumentModeHandwriting.toolTray.getter()
{
  result = [v0 boardViewController];
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray;
    v4 = *&result[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v4 = sub_101023BFC();
      v6 = *&v2[v3];
      *&v2[v3] = v4;
      v7 = v4;

      v2 = v6;
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall CRLiOSDocumentModeHandwriting.modeWillBegin(from:forced:)(CRLiOSDocumentMode from, Swift::Bool forced)
{
  boardViewController = from._boardViewController;
  isa = from.super.isa;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CRLiOSDocumentModeHandwriting();
  objc_msgSendSuper2(&v8, "modeWillBeginFromMode:forced:", isa, boardViewController & 1);
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(11);
  sub_100006370(0, &qword_1019F54D0);
  v7 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 sendEventInDomain:v6 lazily:1 eventPayload:v7];

  sub_100601984();
}

void sub_100601984()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v0 = [Strong textInputResponder];
  if (!v0)
  {
    goto LABEL_4;
  }

  v29 = v0;
  if ([v0 crl_textInputSource] == 3)
  {

LABEL_4:
    v1 = Strong;
LABEL_7:

    return;
  }

  v2 = [Strong canvasEditor];
  if (v2)
  {
    v3 = v2;
    isa = Set._bridgeToObjectiveC()().super.isa;
    v5 = [v3 selectionPathWithInfos:isa];

    [Strong setSelectionPath:v5 withSelectionFlags:0];
    swift_unknownObjectRelease();

    v1 = v29;
    goto LABEL_7;
  }

  v6 = objc_opt_self();
  v7 = [v6 _atomicIncrementAssertCount];
  v31 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v31);
  StaticString.description.getter();
  v8 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v9 lastPathComponent];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v7;
  v16 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v16;
  v17 = sub_100604A48(&qword_1019F52E0);
  *(inited + 104) = v17;
  *(inited + 72) = v8;
  *(inited + 136) = &type metadata for String;
  v18 = sub_1000053B0();
  *(inited + 112) = v11;
  *(inited + 120) = v13;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v18;
  *(inited + 152) = 89;
  v19 = v31;
  *(inited + 216) = v16;
  *(inited + 224) = v17;
  *(inited + 192) = v19;
  v20 = v8;
  v21 = v19;
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v14, &_mh_execute_header, v23, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v24 = swift_allocObject();
  v24[2] = 8;
  v24[3] = 0;
  v24[4] = 0;
  v24[5] = 0;
  v25 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  [v6 handleFailureInFunction:v26 file:v27 lineNumber:89 isFatal:0 format:v28 args:v25];
}

Swift::Void __swiftcall CRLiOSDocumentModeHandwriting.modeDidBegin(from:forced:)(CRLiOSDocumentMode from, Swift::Bool forced)
{
  boardViewController = from._boardViewController;
  isa = from.super.isa;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for CRLiOSDocumentModeHandwriting();
  objc_msgSendSuper2(&v5, "modeDidBeginFromMode:forced:", isa, boardViewController & 1);
  sub_1006026D0();
}

Swift::Void __swiftcall CRLiOSDocumentModeHandwriting.modeWillEnd(for:forced:)(CRLiOSDocumentMode a1, Swift::Bool forced)
{
  v3 = v2;
  boardViewController = a1._boardViewController;
  isa = a1.super.isa;
  v6 = OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_subscriptions;
  swift_beginAccess();
  *&v3[v6] = _swiftEmptySetSingleton;

  v7 = [v3 boardViewController];
  if (v7)
  {
    v8 = v7;
    v9 = sub_101012FD4();

    [v9 removeModeObserver:v3];
    v10.receiver = v3;
    v10.super_class = type metadata accessor for CRLiOSDocumentModeHandwriting();
    objc_msgSendSuper2(&v10, "modeWillEndForMode:forced:", isa, boardViewController & 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRLiOSDocumentModeHandwriting.shouldSuppressKeyboard.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_currentlyChangingModes))
  {
    return 1;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong textGesturesInFlight];

  return v3;
}

Swift::Bool __swiftcall CRLiOSDocumentModeHandwriting.restrictedGestureModeShouldAllowGesture(_:)(UIGestureRecognizer a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong layerHost];

  if (!v2)
  {
    goto LABEL_6;
  }

  if (([v2 respondsToSelector:"asiOSCVC"] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v8 = objc_opt_self();
    v9 = [v8 _atomicIncrementAssertCount];
    v32 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v32);
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
    v19 = sub_100604A48(&qword_1019F52E0);
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 129;
    v21 = v32;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v8 handleFailureInFunction:v28 file:v29 lineNumber:129 isFatal:0 format:v30 args:v27];

    goto LABEL_9;
  }

  v3 = [v2 asiOSCVC];
  swift_unknownObjectRelease();
  v4 = [v3 pencilDownGestureRecognizer];
  if (!v4)
  {

LABEL_9:
    v7 = 1;
    return v7 & 1;
  }

  v5 = v4;
  sub_100006370(0, &qword_1019F54D0);
  v6 = static NSObject.== infix(_:_:)();

  v7 = v6 ^ 1;
  return v7 & 1;
}

void sub_1006026D0()
{
  v1 = type metadata accessor for NSNotificationCenter.Publisher();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v29 = &v27 - v6;
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = [objc_opt_self() defaultCenter];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = @"CRLEditorControllerDidChangeCurrentEditors";
  v12 = [Strong editorController];
  NSNotificationCenter.publisher(for:object:)();

  *(swift_allocObject() + 16) = v0;
  v13 = sub_100604A9C();
  v14 = v0;
  Publisher<>.sink(receiveValue:)();

  v15 = *(v2 + 8);
  v15(v8, v1);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v30 = Strong;
  v16 = [Strong gestureDispatcher];
  v17 = v29;
  v33 = v9;
  NSNotificationCenter.publisher(for:object:)();

  *(swift_allocObject() + 16) = v14;
  v18 = v14;
  v31 = v13;
  Publisher<>.sink(receiveValue:)();

  v28 = v1;
  v29 = v15;
  v15(v17, v1);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_1019F15D0 != -1)
  {
    swift_once();
  }

  v19 = v30;
  v20 = [v30 textInputResponder];
  v21 = v32;
  NSNotificationCenter.publisher(for:object:)();

  *(swift_allocObject() + 16) = v18;
  v22 = v18;
  v23 = v28;
  Publisher<>.sink(receiveValue:)();

  (v29)(v21, v23);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v24 = [v22 boardViewController];
  if (v24)
  {
    v25 = v24;
    v26 = sub_101012FD4();

    [v26 addModeObserver:v22];
  }

  else
  {
    __break(1u);
  }
}

void sub_100602B64(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Notification.userInfo.getter();
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  *&v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v103 + 1) = v10;
  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v11 = sub_1000640CC(v105), (v12 & 1) == 0))
  {

    sub_100064234(v105);
LABEL_9:
    v101 = 0u;
    v102 = 0u;
    goto LABEL_10;
  }

  sub_100064288(*(v9 + 56) + 32 * v11, &v101);
  sub_100064234(v105);

  if (!*(&v102 + 1))
  {
LABEL_10:
    sub_1005E09AC(&v101);
    goto LABEL_11;
  }

  sub_1005B981C(&qword_1019F5FC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v18 = objc_opt_self();
    v19 = [v18 _atomicIncrementAssertCount];
    v105[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v105);
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v19;
    v28 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v28;
    v29 = sub_100604A48(&qword_1019F52E0);
    *(inited + 104) = v29;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v30 = sub_1000053B0();
    *(inited + 112) = v23;
    *(inited + 120) = v25;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v30;
    *(inited + 152) = 180;
    v31 = v105[0];
    *(inited + 216) = v28;
    *(inited + 224) = v29;
    *(inited + 192) = v31;
    v32 = v20;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v35, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v36 = swift_allocObject();
    v36[2] = 8;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
    v37 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    [v18 handleFailureInFunction:v38 file:v39 lineNumber:180 isFatal:0 format:v40 args:{v37, v89}];
    goto LABEL_14;
  }

  v89 = v7;
  v90 = v5;
  v91 = v4;
  v92 = v2;
  v94 = v105[0];
  v95 = a1;
  if ((v105[0] & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F4D30);
    sub_100604A48(&qword_1019F5FD0);
    Set.Iterator.init(_cocoa:)();
    v13 = v105[0];
    v14 = v105[1];
    v15 = v105[2];
    v16 = v105[3];
    v17 = v105[4];
  }

  else
  {
    v41 = -1 << *(v105[0] + 32);
    v14 = v105[0] + 56;
    v15 = ~v41;
    v42 = -v41;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v17 = (v43 & *(v105[0] + 7));
    v16 = 0;
  }

  v93 = v15;
  v44 = (v15 + 64) >> 6;
  v98 = @"CRLWPImmediatePress";
  while (1)
  {
    v45 = v16;
    if (v13 < 0)
    {
      break;
    }

    v46 = v16;
    v47 = v17;
    if (!v17)
    {
      while (1)
      {
        v16 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v16 >= v44)
        {
          goto LABEL_36;
        }

        v47 = *&v14[8 * v16];
        ++v46;
        if (v47)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_60;
    }

LABEL_26:
    v4 = ((v47 - 1) & v47);
    v48 = *(*(v13 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v47)))));
    if (!v48)
    {
      goto LABEL_36;
    }

LABEL_30:
    v96 = v17;
    v97 = v45;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
    if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
    {

      v17 = v4;
    }

    else
    {
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = v4;
      if ((v55 & 1) == 0)
      {
        v56 = 0;
        goto LABEL_37;
      }
    }
  }

  v49 = __CocoaSet.Iterator.next()();
  if (v49)
  {
    *&v103 = v49;
    sub_100006370(0, &qword_1019F4D30);
    swift_dynamicCast();
    v48 = v101;
    v4 = v17;
    if (v101)
    {
      goto LABEL_30;
    }
  }

LABEL_36:
  v56 = 1;
LABEL_37:
  sub_100035F90();

  v57 = Notification.userInfo.getter();
  if (!v57)
  {
    goto LABEL_49;
  }

  v58 = v57;
  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v59;
  AnyHashable.init<A>(_:)();
  if (!*(v58 + 16) || (v60 = sub_1000640CC(&v101), (v61 & 1) == 0))
  {

    sub_100064234(&v101);
LABEL_49:
    v103 = 0u;
    v104 = 0u;
    goto LABEL_50;
  }

  sub_100064288(*(v58 + 56) + 32 * v60, &v103);
  sub_100064234(&v101);

  if (!*(&v104 + 1))
  {
LABEL_50:
    sub_1005E09AC(&v103);
    goto LABEL_51;
  }

  sub_100006370(0, &qword_1019F5FD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:
    v64 = objc_opt_self();
    v65 = [v64 _atomicIncrementAssertCount];
    *&v101 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v101);
    StaticString.description.getter();
    v66 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v67 = String._bridgeToObjectiveC()();

    v68 = [v67 lastPathComponent];

    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v72 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v73 = swift_initStackObject();
    *(v73 + 16) = xmmword_10146CA70;
    *(v73 + 56) = &type metadata for Int32;
    *(v73 + 64) = &protocol witness table for Int32;
    *(v73 + 32) = v65;
    v74 = sub_100006370(0, &qword_1019F4D30);
    *(v73 + 96) = v74;
    v75 = sub_100604A48(&qword_1019F52E0);
    *(v73 + 104) = v75;
    *(v73 + 72) = v66;
    *(v73 + 136) = &type metadata for String;
    v76 = sub_1000053B0();
    *(v73 + 112) = v69;
    *(v73 + 120) = v71;
    *(v73 + 176) = &type metadata for UInt;
    *(v73 + 184) = &protocol witness table for UInt;
    *(v73 + 144) = v76;
    *(v73 + 152) = 188;
    v77 = v101;
    *(v73 + 216) = v74;
    *(v73 + 224) = v75;
    *(v73 + 192) = v77;
    v78 = v66;
    v79 = v77;
    v80 = static os_log_type_t.error.getter();
    sub_100005404(v72, &_mh_execute_header, v80, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v73);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v81 = static os_log_type_t.error.getter();
    sub_100005404(v72, &_mh_execute_header, v81, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v82 = swift_allocObject();
    v82[2] = 8;
    v82[3] = 0;
    v82[4] = 0;
    v82[5] = 0;
    v83 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    [v64 handleFailureInFunction:v38 file:v39 lineNumber:188 isFatal:0 format:v40 args:{v83, v89}];
LABEL_14:

    return;
  }

  v4 = v101;
  v62 = v89;
  NSSet.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!*(&v102 + 1))
  {
LABEL_54:
    (*(v90 + 8))(v62, v91);
    v84 = OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_endModeCheckQueuedAfterTextGestures;
    v85 = v92;
    if (*(v92 + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_endModeCheckQueuedAfterTextGestures) == 1)
    {
      goto LABEL_57;
    }

    if (![v4 count])
    {
LABEL_60:

      return;
    }

    if (v56)
    {
LABEL_57:
      sub_100603878();
    }

    else
    {
      v86 = [v85 boardViewController];
      if (!v86)
      {
        __break(1u);
        return;
      }

      v87 = v86;
      v88 = sub_101012FD4();

      [v88 resetToDefaultModeAnimated:1];
      v4 = v88;
    }

    *(v85 + v84) = 0;
    return;
  }

  while (1)
  {
    sub_1005B981C(&qword_1019F6040);
    if (swift_dynamicCast())
    {
      v63 = [v103 inputType];
      swift_unknownObjectRelease();
      if (v63 == 2)
      {
        break;
      }
    }

    NSFastEnumerationIterator.next()();
    if (!*(&v102 + 1))
    {
      goto LABEL_54;
    }
  }

  (*(v90 + 8))(v62, v91);

  *(v92 + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_endModeCheckQueuedAfterTextGestures) = 0;
}