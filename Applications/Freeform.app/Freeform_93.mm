uint64_t sub_100C1E3AC(char a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C1E4F0, v3, v2);
}

uint64_t sub_100C1E4F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100C1E55C(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v2[40] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[41] = swift_task_alloc();
  sub_1005B981C(&unk_1019FA3E0);
  v2[42] = swift_task_alloc();
  v3 = _s5BoardVMa(0);
  v2[43] = v3;
  v2[44] = *(v3 - 8);
  v2[45] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[46] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[47] = v5;
  v2[48] = v4;

  return _swift_task_switch(sub_100C1E6B8, v5, v4);
}

void sub_100C1E6B8()
{
  sub_10005013C();
  if (v1)
  {
    v2 = v1;
    sub_1010AB99C(v0[38], v0[42]);
    v3 = v0[43];
    v4 = v0[44];
    v5 = v0[42];
    v6 = v0[45];

    (*(v4 + 56))(v5, 0, 1, v3);
    sub_100025530(v5, v6, _s5BoardVMa);
    if (qword_1019F2220 != -1)
    {
      swift_once();
    }

    v7 = v0[45];
    v8 = v0[41];
    v9 = v0[39];
    v10 = static OS_os_log.sceneManagement;
    v0[49] = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = type metadata accessor for CRLSceneDelegate();
    *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate);
    *(inited + 32) = v9;
    v12 = v9;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    *(inited + 96) = &type metadata for String;
    v16 = sub_1000053B0();
    v0[50] = v16;
    *(inited + 104) = v16;
    *(inited + 72) = v13;
    *(inited + 80) = v15;
    v17 = static os_log_type_t.default.getter();
    sub_100005404(v10, &_mh_execute_header, v17, "Scene Delegate (%p) opening board with UUID: %@.", 48, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    sub_10004FE64(v7, v8, _s5BoardVMa);
    swift_storeEnumTagMultiPayload();
    sub_1000513C8();
    v19 = v18;
    [v18 loadViewIfNeeded];

    v20 = swift_task_alloc();
    v0[51] = v20;
    *v20 = v0;
    v20[1] = sub_100C1EB14;
    v21 = v0[41];

    sub_100C176F4(v21, 1, 1, 0, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C1EB14(void *a1)
{
  v4 = *v2;
  *(*v2 + 416) = v1;

  if (v1)
  {
    v5 = *(v4 + 376);
    v6 = *(v4 + 384);
    v7 = sub_100C1ECF4;
  }

  else
  {

    v5 = *(v4 + 376);
    v6 = *(v4 + 384);
    v7 = sub_100C1EC3C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C1EC3C()
{

  v1 = v0[45];
  sub_10005117C(v0[41], type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10005117C(v1, _s5BoardVMa);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100C1ECF4()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = static OS_os_log.crlError;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v6, "Caught error trying to show view controller: %@", 47, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = v0[45];
  sub_10005117C(v0[41], type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10005117C(v7, _s5BoardVMa);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C1EE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 217) = a7;
  *(v7 + 216) = a6;
  *(v7 + 144) = a4;
  *(v7 + 152) = a5;
  type metadata accessor for MainActor();
  *(v7 + 160) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 168) = v9;
  *(v7 + 176) = v8;

  return _swift_task_switch(sub_100C1EF30, v9, v8);
}

uint64_t sub_100C1EF30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_100C1F204;
    v3 = *(v0 + 217);
    v4 = *(v0 + 216);
    v5 = *(v0 + 152);

    return sub_100C176F4(v5, v4, v3, 0, 0);
  }

  else
  {

    _StringGuts.grow(_:)(84);
    v7._object = 0x80000001015923F0;
    v7._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v7);
    v8._countAndFlagsBits = sub_100F8903C();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0xD00000000000002CLL;
    v9._object = 0x8000000101592420;
    String.append(_:)(v9);
    sub_100C2E7E0();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 2;
    swift_willThrow();
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlError;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = v14;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    v16 = static os_log_type_t.debug.getter();
    sub_100005404(v11, &_mh_execute_header, v16, "Caught error trying to show view controller for PPT: %@", 55, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100C1F204(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = *(v4 + 168);
    v6 = *(v4 + 176);
    v7 = sub_100C1F39C;
  }

  else
  {

    *(v4 + 208) = a1;
    v5 = *(v4 + 168);
    v6 = *(v4 + 176);
    v7 = sub_100C1F334;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C1F334()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C1F39C()
{
  v1 = *(v0 + 184);

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlError;
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
  v7 = static os_log_type_t.debug.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Caught error trying to show view controller for PPT: %@", 55, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v8 = *(v0 + 8);

  return v8();
}

id sub_100C1F524(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100C1F6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  type metadata accessor for MainActor();
  v5[20] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[21] = v7;
  v5[22] = v6;

  return _swift_task_switch(sub_100C1F750, v7, v6);
}

uint64_t sub_100C1F750()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[24] = v2;
    *v2 = v0;
    v2[1] = sub_100C1F858;
    v3 = v0[19];

    return sub_100C176F4(v3, 0, 0, 0, 1);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100C1F858(void *a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[21];
    v6 = v4[22];
    v7 = sub_100C1F9E4;
  }

  else
  {
    v8 = v4[23];

    v5 = v4[21];
    v6 = v4[22];
    v7 = sub_100C1F984;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C1F984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C1F9E4()
{
  v1 = *(v0 + 184);

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlError;
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
  sub_100005404(v2, &_mh_execute_header, v7, "Caught error trying to show view controller from sidebar: %@", 60, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100C1FB50(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_100C1FC00;

  return sub_100C1FDB0();
}

uint64_t sub_100C1FC00(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C1FD44, v3, v2);
}

uint64_t sub_100C1FD44()
{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_100C1FDB0()
{
  v1[44] = v0;
  v1[45] = type metadata accessor for CRLAppIntentsDonationManager.DonatableAppIntent();
  v1[46] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6268);
  v1[47] = swift_task_alloc();
  v2 = type metadata accessor for CRLBoardEntity();
  v1[48] = v2;
  v1[49] = *(v2 - 8);
  v1[50] = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  v1[51] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[52] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v1[55] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[56] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[57] = v4;
  v1[58] = v3;

  return _swift_task_switch(sub_100C1FFC8, v4, v3);
}

uint64_t sub_100C1FFC8()
{
  v1 = *(v0[44] + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
  if (!v1 || (v2 = [v1 rootViewController]) == 0 || (v3 = v2, v4 = objc_msgSend(v2, "crl_windowWrapper"), v3, !v4) || (v5 = objc_msgSend(v4, "newWrapperBeginningIgnoringUserInteractionSafely"), v4, !v5))
  {
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.crlError;
    v7 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v7, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
    v5 = 0;
  }

  v0[59] = v5;
  v8 = v0[55];
  v9 = sub_1005B981C(&qword_1019F3480);
  (*(*(v9 - 8) + 56))(v8, 1, 5, v9);
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v0[60] = v16;
  v17 = swift_task_alloc();
  v0[61] = v17;
  *v17 = v0;
  v17[1] = sub_100C20248;
  v18 = v0[55];

  return sub_100C0E89C(v18, v14, v16, 1, 0);
}

uint64_t sub_100C20248(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  *(*v1 + 496) = a1;

  sub_10005117C(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v4 = *(v2 + 464);
  v5 = *(v2 + 456);

  return _swift_task_switch(sub_100C203C4, v5, v4);
}

void sub_100C203C4()
{
  v1 = *(v0 + 496);
  if (v1)
  {
    v3 = *(v0 + 424);
    v2 = *(v0 + 432);
    v4 = *(v0 + 408);
    v5 = *(v0 + 416);
    v6 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v7 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v8 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FE64(v7 + v8, v4, type metadata accessor for CRLBoardCRDTData);
    v9 = v1;
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10005117C(v4, type metadata accessor for CRLBoardCRDTData);
    v10 = (*&v1[v6] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v11 = *v10;
    v12 = v10[1];

    sub_10084BD4C(v5, v11, v12, v3);

    sub_100025530(v3, v2, type metadata accessor for CRLBoardIdentifier);
    sub_10005013C();
    *(v0 + 504) = v13;
    if (v13)
    {
      v14 = swift_task_alloc();
      *(v0 + 512) = v14;
      *v14 = v0;
      v14[1] = sub_100C206CC;
      v15 = *(v0 + 432);
      v16 = *(v0 + 376);

      sub_1010940DC(v16, v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v17 = *(v0 + 352);
    v18 = [*(v0 + 472) endIgnoringUserInteractionSafely];
    v19 = (*((swift_isaMask & *v17) + 0x1A0))(v18);
    if (v19)
    {
      v20 = v19;
      [*(v19 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
    }

    v21 = *(v0 + 8);
    v22 = *(v0 + 496);

    v21(v22);
  }
}

uint64_t sub_100C206CC()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 456);
    v4 = *(v2 + 464);
    v5 = sub_100C20D94;
  }

  else
  {

    v3 = *(v2 + 456);
    v4 = *(v2 + 464);
    v5 = sub_100C207E8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100C207E8()
{
  v1 = *(v0 + 376);
  if ((*(*(v0 + 392) + 48))(v1, 1, *(v0 + 384)) == 1)
  {
    sub_10005117C(*(v0 + 432), type metadata accessor for CRLBoardIdentifier);

    sub_10000CAAC(v1, &qword_1019F6268);
    v2 = *(v0 + 352);
    v3 = [*(v0 + 472) endIgnoringUserInteractionSafely];
    v4 = (*((swift_isaMask & *v2) + 0x1A0))(v3);
    if (v4)
    {
      v5 = v4;
      [*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
    }

    v6 = *(v0 + 8);
    v7 = *(v0 + 496);

    return v6(v7);
  }

  else
  {
    sub_100025530(v1, *(v0 + 400), type metadata accessor for CRLBoardEntity);
    if (qword_1019F1348 != -1)
    {
      swift_once();
    }

    sub_10004FE64(*(v0 + 400), *(v0 + 368), type metadata accessor for CRLBoardEntity);
    swift_storeEnumTagMultiPayload();
    v9 = swift_task_alloc();
    *(v0 + 528) = v9;
    *v9 = v0;
    v9[1] = sub_100C20AA4;
    v10 = *(v0 + 368);

    return sub_100687F74(v10);
  }
}

uint64_t sub_100C20AA4()
{
  v1 = *v0;
  v2 = *(*v0 + 368);

  sub_10005117C(v2, type metadata accessor for CRLAppIntentsDonationManager.DonatableAppIntent);
  v3 = *(v1 + 464);
  v4 = *(v1 + 456);

  return _swift_task_switch(sub_100C20BFC, v4, v3);
}

uint64_t sub_100C20BFC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 400);

  sub_10005117C(v2, type metadata accessor for CRLBoardEntity);
  sub_10005117C(v1, type metadata accessor for CRLBoardIdentifier);
  v3 = *(v0 + 352);
  v4 = [*(v0 + 472) endIgnoringUserInteractionSafely];
  v5 = (*((swift_isaMask & *v3) + 0x1A0))(v4);
  if (v5)
  {
    v6 = v5;
    [*(v5 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 496);

  return v7(v8);
}

uint64_t sub_100C20D94()
{
  v56 = v0;
  v7 = v0[65];
  v1 = v0[63];

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[43] = v7;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 32) = v3;
  v53 = v6;
  v54 = inited + 32;
  *(inited + 64) = v6;
  *(inited + 40) = v5;
  v49 = objc_opt_self();
  LODWORD(v7) = [v49 _atomicIncrementAssertCount];
  v55 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v55);
  StaticString.description.getter();
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v8 lastPathComponent];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v13 = static OS_os_log.crlAssert;
    v50 = v0;
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_10146CA70;
    *(v14 + 56) = &type metadata for Int32;
    *(v14 + 64) = &protocol witness table for Int32;
    *(v14 + 32) = v7;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(v14 + 96) = v15;
    v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v14 + 72) = v51;
    *(v14 + 136) = &type metadata for String;
    *(v14 + 144) = v53;
    *(v14 + 104) = v16;
    *(v14 + 112) = v10;
    *(v14 + 120) = v12;
    *(v14 + 176) = &type metadata for UInt;
    *(v14 + 184) = &protocol witness table for UInt;
    *(v14 + 152) = 1286;
    v17 = v55;
    *(v14 + 216) = v15;
    *(v14 + 224) = v16;
    *(v14 + 192) = v17;
    v18 = v51;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v14);
    swift_setDeallocating();
    v53 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "There was a problem fetch new board for donation %@", 51, 2, inited);

    type metadata accessor for __VaListBuilder();
    v12 = swift_allocObject();
    v12[2] = 8;
    v12[3] = 0;
    v22 = v12 + 3;
    v12[4] = 0;
    v12[5] = 0;
    v23 = *(inited + 16);
    v0 = inited;
    if (!v23)
    {
      break;
    }

    v24 = 0;
    while (1)
    {
      v25 = (v54 + 40 * v24);
      v10 = v25[4];
      LODWORD(v7) = sub_100020E58(v25, v25[3]);
      v26 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v27 = *v22;
      v28 = *(v26 + 16);
      v29 = __OFADD__(*v22, v28);
      v30 = *v22 + v28;
      if (v29)
      {
        break;
      }

      v7 = v12[4];
      if (v7 >= v30)
      {
        goto LABEL_19;
      }

      if (v7 + 0x4000000000000000 < 0)
      {
        goto LABEL_34;
      }

      v10 = v12[5];
      if (2 * v7 > v30)
      {
        v30 = 2 * v7;
      }

      v12[4] = v30;
      if ((v30 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_35;
      }

      inited = v26;
      v31 = swift_slowAlloc();
      v32 = v31;
      v12[5] = v31;
      if (v10)
      {
        if (v31 != v10 || v31 >= &v10[8 * v27])
        {
          memmove(v31, v10, 8 * v27);
        }

        LODWORD(v7) = v12;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v26 = inited;
LABEL_19:
        v32 = v12[5];
        if (!v32)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }

      v26 = inited;
      if (!v32)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_20:
      v34 = *(v26 + 16);
      if (v34)
      {
        v35 = (v26 + 32);
        v36 = *v22;
        while (1)
        {
          v37 = *v35++;
          *&v32[8 * v36] = v37;
          v36 = *v22 + 1;
          if (__OFADD__(*v22, 1))
          {
            break;
          }

          *v22 = v36;
          if (!--v34)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:

      if (++v24 == v23)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_27:
  v52 = v50[54];
  v38 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v39 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v40 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  [v49 handleFailureInFunction:v39 file:v40 lineNumber:1286 isFatal:0 format:v41 args:v38];

  swift_setDeallocating();
  swift_arrayDestroy();

  sub_10005117C(v52, type metadata accessor for CRLBoardIdentifier);
  v42 = v50[44];
  v43 = [v50[59] endIgnoringUserInteractionSafely];
  v44 = (*((swift_isaMask & *v42) + 0x1A0))(v43);
  if (v44)
  {
    v45 = v44;
    [*(v44 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
  }

  v46 = v50[1];
  v47 = v50[62];

  return v46(v47);
}

uint64_t sub_100C21490@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100051290();
  v3 = [v2 isCollapsed];

  if (v3)
  {
    v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }

  else
  {

    return sub_100C0AF94(a1);
  }
}

BOOL sub_100C21550()
{
  v0 = sub_100051290();
  v1 = [v0 traitCollection];

  v2 = [v1 horizontalSizeClass];
  return v2 == 1;
}

id sub_100C215B0()
{
  v0 = sub_100051290();
  v1 = [v0 isCollapsed];

  return v1;
}

uint64_t sub_100C215F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100C0B3C0();
  v3 = result;
  if (result)
  {
    result = type metadata accessor for CRLiOSFolderGridViewController();
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  return result;
}

uint64_t sub_100C21634(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_100C216D4, v5, v4);
}

void sub_100C216D4()
{
  sub_1000505F0();
  *(v0 + 8) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 9) = v2;
    *v2 = v0;
    v2[1] = sub_100C21798;
    v3 = v0[3];
    v4 = *(v0 + 2);

    sub_1006ED3F8(v4, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C21798(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    v7 = sub_100C21930;
  }

  else
  {

    *(v4 + 88) = a1;
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    v7 = sub_100C218C8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C218C8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_100C21930()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C2199C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v6[32] = a4;
  v6[35] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v6[36] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[37] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[38] = v8;
  v6[39] = v7;

  return _swift_task_switch(sub_100C21A68, v8, v7);
}

uint64_t sub_100C21A68()
{
  sub_10004FE64(v0[32], v0[36], type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = v0[33];
    sub_10005117C(v0[36], _s5BoardVMa);
    swift_beginAccess();
    v2 = *(v1 + 16);
    if (v2)
    {
      [v2 endIgnoringUserInteractionSafely];
    }

    v3 = v0[33];
    swift_beginAccess();
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;

    v5 = swift_task_alloc();
    v0[40] = v5;
    *v5 = v0;
    v5[1] = sub_100C21C40;
    v6 = v0[32];

    return sub_100C225F4(v6);
  }

  else
  {
    sub_10005117C(v0[36], type metadata accessor for CRLBoardLibraryViewModel.Item);
    v8 = swift_task_alloc();
    v0[42] = v8;
    *v8 = v0;
    v8[1] = sub_100C21F24;
    v9 = v0[32];

    return sub_100C176F4(v9, 1, 1, 0, 0);
  }
}

uint64_t sub_100C21C40()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 312);
  v4 = *(v2 + 304);
  if (v0)
  {
    v5 = sub_100C2215C;
  }

  else
  {
    v5 = sub_100C21D7C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100C21D7C()
{
  v1 = *(v0[34] + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
  if (!v1 || (v2 = [v1 rootViewController]) == 0 || (v3 = v2, v4 = objc_msgSend(v2, "crl_windowWrapper"), v3, !v4) || (v5 = objc_msgSend(v4, "newWrapperBeginningIgnoringUserInteractionSafely"), v4, !v5))
  {
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.crlError;
    v7 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v7, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
    v5 = 0;
  }

  v8 = v0[33];
  swift_beginAccess();
  v9 = *(v8 + 16);
  *(v8 + 16) = v5;

  v10 = swift_task_alloc();
  v0[42] = v10;
  *v10 = v0;
  v10[1] = sub_100C21F24;
  v11 = v0[32];

  return sub_100C176F4(v11, 1, 1, 0, 0);
}

uint64_t sub_100C21F24(void *a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = *(v4 + 304);
    v6 = *(v4 + 312);
    v7 = sub_100C223A8;
  }

  else
  {

    v5 = *(v4 + 304);
    v6 = *(v4 + 312);
    v7 = sub_100C2204C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C2204C()
{

  v1 = v0[33];
  v2 = v0[34];
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = [v3 endIgnoringUserInteractionSafely];
  v5 = (*((swift_isaMask & *v2) + 0x1A0))(v4);
  if (v5)
  {
    v6 = v5;
    [*(v5 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C2215C()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v3 = sub_100F8903C();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Caught error trying to navigate to view model item %@: %@", 57, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v10 = v0[33];
  v11 = v0[34];
  swift_beginAccess();
  v12 = *(v10 + 16);
  v13 = [v12 endIgnoringUserInteractionSafely];
  v14 = (*((swift_isaMask & *v11) + 0x1A0))(v13);
  if (v14)
  {
    v15 = v14;
    [*(v14 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100C223A8()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v3 = sub_100F8903C();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Caught error trying to navigate to view model item %@: %@", 57, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v10 = v0[33];
  v11 = v0[34];
  swift_beginAccess();
  v12 = *(v10 + 16);
  v13 = [v12 endIgnoringUserInteractionSafely];
  v14 = (*((swift_isaMask & *v11) + 0x1A0))(v13);
  if (v14)
  {
    v15 = v14;
    [*(v14 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100C225F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[8] = swift_task_alloc();
  v2[9] = _s5BoardVMa(0);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v5;
  v2[13] = v4;

  return _swift_task_switch(sub_100C2274C, v5, v4);
}

uint64_t sub_100C2274C()
{
  sub_10004FE64(v0[2], v0[8], type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = v0[9];
    v2 = v0[10];
    sub_100025530(v0[8], v2, _s5BoardVMa);
    if (*(v2 + *(v1 + 72)))
    {
      if (qword_1019F20B0 != -1)
      {
        swift_once();
      }

      v3 = static OS_os_log.crlWarning;
      v4 = static os_log_type_t.debug.getter();
      sub_100005404(v3, &_mh_execute_header, v4, "Tried to open unsupported board.", 32, 2, _swiftEmptyArrayStorage);
      v5 = swift_task_alloc();
      v0[14] = v5;
      *v5 = v0;
      v5[1] = sub_100C229C0;

      return sub_100C2CE2C();
    }

    sub_10005117C(v0[10], _s5BoardVMa);
  }

  else
  {
    v7 = v0[8];

    sub_10005117C(v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlError;
    v9 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v9, "presentOpenBoardErrorAlertIfNeeded(for:) requires item to be a .board", 69, 2, _swiftEmptyArrayStorage);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C229C0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_100C22AE0, v3, v2);
}

void sub_100C22AE0()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = [v1 BOOLForKey:@"CRLAllowInteractionWithUnsupportedBoardAndBoardItemsUserDefault"];

  if (v2)
  {
    sub_10005013C();
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    v5 = v0[10];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];

    sub_10004FE64(v5, v6, type metadata accessor for CRLBoardIdentifier);
    v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v10 = swift_allocObject();
    sub_100025530(v6, v10 + v9, type metadata accessor for CRLBoardIdentifier);
    *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
    v11 = v4;
    sub_100E132DC(sub_100C31C00, v10);
  }

  v12 = v0[10];
  sub_100C31BAC();
  swift_allocError();
  swift_willThrow();
  sub_10005117C(v12, _s5BoardVMa);

  v13 = v0[1];

  v13();
}

uint64_t sub_100C22CE4(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_100C22D94;

  return sub_100C1FDB0();
}

uint64_t sub_100C22D94(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C33538, v3, v2);
}

uint64_t sub_100C22ED8(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 376) = a4;
  *(v5 + 384) = v4;
  *(v5 + 441) = a3;
  *(v5 + 440) = a2;
  *(v5 + 368) = a1;
  type metadata accessor for MainActor();
  *(v5 + 392) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 400) = v7;
  *(v5 + 408) = v6;

  return _swift_task_switch(sub_100C22F7C, v7, v6);
}

uint64_t sub_100C22F7C()
{
  v63 = v0;
  v1 = sub_100051290();
  v2 = [v1 viewControllerForColumn:2];
  *(v0 + 416) = v2;

  if (!v2)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_11:
    v60 = objc_opt_self();
    v25 = [v60 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v62);
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    v28 = [v27 lastPathComponent];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v25;
    v34 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v34;
    v35 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v35;
    *(inited + 72) = v26;
    *(inited + 136) = &type metadata for String;
    v36 = sub_1000053B0();
    *(inited + 112) = v29;
    *(inited + 120) = v31;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v36;
    *(inited + 152) = 1784;
    v37 = v62;
    *(inited + 216) = v34;
    *(inited + 224) = v35;
    *(inited + 192) = v37;
    v38 = v26;
    v39 = v37;
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v32, &_mh_execute_header, v40, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v41 = static os_log_type_t.error.getter();
    sub_100005404(v32, &_mh_execute_header, v41, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v42 = swift_allocObject();
    v42[2] = 8;
    v42[3] = 0;
    v42[4] = 0;
    v42[5] = 0;
    v43 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    [v60 handleFailureInFunction:v44 file:v45 lineNumber:1784 isFatal:0 format:v46 args:v43];

    goto LABEL_14;
  }

  v4 = v3;
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 384);
  v6 = static OS_os_log.sceneManagement;
  sub_1005B981C(&qword_1019F54E0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_10146BDE0;
  *(v7 + 56) = type metadata accessor for CRLSceneDelegate();
  *(v7 + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate);
  *(v7 + 32) = v5;
  *(v0 + 360) = swift_getObjectType();
  v8 = v5;
  sub_1005B981C(&unk_101A28720);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = sub_1000053B0();
  *(v7 + 72) = v9;
  *(v7 + 80) = v11;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v12, "Scene Delegate (%p) showing view controller of type: %@", 55, 2, v7);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v13 = [v4 topViewController];
  if (v13)
  {
    v14 = v13;
    v15 = *(v0 + 368);
    sub_100006370(0, &qword_101A10AB0);
    v16 = v15;
    v17 = static NSObject.== infix(_:_:)();

    if (v17)
    {
      v18 = *(v0 + 384);

      [*(v18 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController) showColumn:2];

LABEL_15:
      v47 = *(v0 + 8);

      return v47();
    }
  }

  v19 = *(v0 + 368);
  type metadata accessor for CRLiOSFolderGridViewController();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v22 = *(v0 + 441);
    v23 = *(v0 + 440);
    v24 = v19;

    sub_100C2BEAC(v21, v23, 1, v22);

    goto LABEL_15;
  }

  type metadata accessor for CRLiOSBoardViewController();
  v49 = swift_dynamicCastClass();
  if (!v49)
  {

LABEL_14:

    goto LABEL_15;
  }

  v50 = v49;
  if ((*((swift_isaMask & **(v0 + 384)) + 0x1A8))(v19))
  {
    v51 = (*((swift_isaMask & **(v0 + 384)) + 0x1A0))();
    if (v51)
    {
      v52 = v51;
      v53 = *(v0 + 368);
      v54 = static NSObject.== infix(_:_:)();

      if (v54)
      {
        v55 = *(v0 + 368);

        goto LABEL_15;
      }
    }
  }

  v56 = *((swift_isaMask & **(v0 + 384)) + 0x200);
  v61 = (v56 + *v56);
  v57 = swift_task_alloc();
  *(v0 + 424) = v57;
  *v57 = v0;
  v57[1] = sub_100C23840;
  v58 = *(v0 + 376);
  v59 = *(v0 + 441);

  return v61(v50, v59, v58);
}

uint64_t sub_100C23840()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = sub_100C239F4;
  }

  else
  {
    v5 = sub_100C2397C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100C2397C()
{
  v1 = *(v0 + 368);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C239F4()
{
  v1 = *(v0 + 416);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C23A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_100C23B10, v6, v5);
}

uint64_t sub_100C23B10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_100C23C14;

    return sub_100C1B480();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100C23C14()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100C23D54, v4, v3);
}

uint64_t sub_100C23D54()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C23DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 224) = a5;
  *(v5 + 144) = a4;
  type metadata accessor for MainActor();
  *(v5 + 152) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 160) = v7;
  *(v5 + 168) = v6;

  return _swift_task_switch(sub_100C23E64, v7, v6);
}

uint64_t sub_100C23E64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {
    *(v0 + 184) = sub_100C2F6B0(*(v0 + 224));
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_100C23F60;

    return sub_100C1BD24();
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100C23F60()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_100C24080, v3, v2);
}

uint64_t sub_100C24080()
{
  *(v0 + 200) = (*((swift_isaMask & **(v0 + 176)) + 0x360))();
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_100C24160;
  v2 = *(v0 + 184);

  return sub_100D1C8E8(v2, 1);
}

uint64_t sub_100C24160()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_100C2430C;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_100C2427C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100C2427C()
{
  v1 = v0[23];

  sub_1011047E4(v1);

  v2 = v0[22];
  *&v2[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt] = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C2430C()
{
  v1 = v0[25];

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v5 = Error.localizedDescription.getter();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v8, "Caught error trying to present failed-to-download-shared-copy alert: %@", 71, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v9 = v0[22];
  *&v9[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt] = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C244A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100C24540, v6, v5);
}

uint64_t sub_100C24540()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAlertController))
    {
      v2 = swift_task_alloc();
      v0[10] = v2;
      *v2 = v0;
      v2[1] = sub_100C24668;

      return sub_100C1BD24();
    }

    v4 = v0[9];
    *&v4[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt] = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C24668()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100C24788, v3, v2);
}

uint64_t sub_100C24788()
{

  v1 = *(v0 + 72);
  *&v1[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt] = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C24808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5[7] = v6;
  v5[8] = *(v6 + 64);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v8;
  v5[13] = v7;

  return _swift_task_switch(sub_100C2490C, v8, v7);
}

uint64_t sub_100C2490C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAlertController))
    {
      v2 = swift_task_alloc();
      *(v0 + 120) = v2;
      *v2 = v0;
      v2[1] = sub_100C24DAC;

      return sub_100C1BD24();
    }

    v5 = *((swift_isaMask & *Strong) + 0x360);
    v6 = v5();
    v7 = [v6 presentedViewController];
    *(v0 + 128) = v7;

    if (v7)
    {
      sub_100006370(0, &unk_101A15AF8);
      if ([v7 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        *(v0 + 136) = v5();
        v8 = swift_task_alloc();
        *(v0 + 144) = v8;
        *v8 = v0;
        v8[1] = sub_100C252C0;

        return sub_100D1CCA4(1);
      }
    }

    if (sub_100C0BA2C())
    {
      v9 = swift_task_alloc();
      *(v0 + 160) = v9;
      *v9 = v0;
      v9[1] = sub_100C256B0;

      return sub_100C0DBF8();
    }

    v10 = *(v0 + 112);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 56);
    sub_10004FE64(*(v0 + 48), v11, type metadata accessor for CRLBoardIdentifier);
    sub_10004FE64(v11, v12, type metadata accessor for CRLBoardIdentifier);
    v14 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v0 + 168) = v15;
    *(v15 + 16) = v10;
    sub_100025530(v11, v15 + v14, type metadata accessor for CRLBoardIdentifier);
    v16 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt;
    *(v0 + 176) = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt;
    v17 = *(v10 + v16);
    if (v17 && *(v17 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_didEncounterUnsupportedContent) == 1)
    {
      v18 = *(v0 + 72);
      v19 = *(v0 + 112);
      sub_10005117C(v18, type metadata accessor for CRLBoardIdentifier);
      v20 = swift_task_alloc();
      *(v0 + 184) = v20;
      *v20 = v0;
      v20[1] = sub_100C25A20;

      return sub_100C1C580(sub_100C31DFC, v15);
    }

    v21 = *(v0 + 72);
    v22 = *(v0 + 112);

    sub_100C25C88(v22, v21);

    sub_10005117C(v21, type metadata accessor for CRLBoardIdentifier);
    v23 = *(v0 + 112);
    *&v23[*(v0 + 176)] = 0;
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100C24DAC()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_100C24ECC, v3, v2);
}

uint64_t sub_100C24ECC()
{
  v1 = *((swift_isaMask & **(v0 + 112)) + 0x360);
  v2 = v1();
  v3 = [v2 presentedViewController];
  *(v0 + 128) = v3;

  if (v3)
  {
    sub_100006370(0, &unk_101A15AF8);
    if ([v3 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      *(v0 + 136) = v1();
      v4 = swift_task_alloc();
      *(v0 + 144) = v4;
      *v4 = v0;
      v4[1] = sub_100C252C0;

      return sub_100D1CCA4(1);
    }
  }

  if (sub_100C0BA2C())
  {
    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    *v6 = v0;
    v6[1] = sub_100C256B0;

    return sub_100C0DBF8();
  }

  else
  {
    v7 = *(v0 + 112);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 56);
    sub_10004FE64(*(v0 + 48), v8, type metadata accessor for CRLBoardIdentifier);
    sub_10004FE64(v8, v9, type metadata accessor for CRLBoardIdentifier);
    v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v12 = swift_allocObject();
    *(v0 + 168) = v12;
    *(v12 + 16) = v7;
    sub_100025530(v8, v12 + v11, type metadata accessor for CRLBoardIdentifier);
    v13 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt;
    *(v0 + 176) = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt;
    v14 = *(v7 + v13);
    if (v14 && *(v14 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_didEncounterUnsupportedContent) == 1)
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 112);
      sub_10005117C(v15, type metadata accessor for CRLBoardIdentifier);
      v17 = swift_task_alloc();
      *(v0 + 184) = v17;
      *v17 = v0;
      v17[1] = sub_100C25A20;

      return sub_100C1C580(sub_100C31DFC, v12);
    }

    else
    {
      v18 = *(v0 + 72);
      v19 = *(v0 + 112);

      sub_100C25C88(v19, v18);

      sub_10005117C(v18, type metadata accessor for CRLBoardIdentifier);
      v20 = *(v0 + 112);
      *&v20[*(v0 + 176)] = 0;

      v21 = *(v0 + 8);

      return v21();
    }
  }
}

uint64_t sub_100C252C0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100C25BE8;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100C253DC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100C253DC()
{
  if (sub_100C0BA2C())
  {
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_100C256B0;

    return sub_100C0DBF8();
  }

  else
  {
    v3 = *(v0 + 112);
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 56);
    sub_10004FE64(*(v0 + 48), v4, type metadata accessor for CRLBoardIdentifier);
    sub_10004FE64(v4, v5, type metadata accessor for CRLBoardIdentifier);
    v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v0 + 168) = v8;
    *(v8 + 16) = v3;
    sub_100025530(v4, v8 + v7, type metadata accessor for CRLBoardIdentifier);
    v9 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt;
    *(v0 + 176) = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt;
    v10 = *(v3 + v9);
    if (v10 && *(v10 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_didEncounterUnsupportedContent) == 1)
    {
      v11 = *(v0 + 72);
      v12 = *(v0 + 112);
      sub_10005117C(v11, type metadata accessor for CRLBoardIdentifier);
      v13 = swift_task_alloc();
      *(v0 + 184) = v13;
      *v13 = v0;
      v13[1] = sub_100C25A20;

      return sub_100C1C580(sub_100C31DFC, v8);
    }

    else
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 112);

      sub_100C25C88(v15, v14);

      sub_10005117C(v14, type metadata accessor for CRLBoardIdentifier);
      v16 = *(v0 + 112);
      *&v16[*(v0 + 176)] = 0;

      v17 = *(v0 + 8);

      return v17();
    }
  }
}

uint64_t sub_100C256B0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_100C257D0, v3, v2);
}

uint64_t sub_100C257D0()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  sub_10004FE64(*(v0 + 48), v2, type metadata accessor for CRLBoardIdentifier);
  sub_10004FE64(v2, v3, type metadata accessor for CRLBoardIdentifier);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 168) = v6;
  *(v6 + 16) = v1;
  sub_100025530(v2, v6 + v5, type metadata accessor for CRLBoardIdentifier);
  v7 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt;
  *(v0 + 176) = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt;
  v8 = *(v1 + v7);
  if (v8 && *(v8 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_didEncounterUnsupportedContent) == 1)
  {
    v9 = *(v0 + 72);
    v10 = *(v0 + 112);
    sub_10005117C(v9, type metadata accessor for CRLBoardIdentifier);
    v11 = swift_task_alloc();
    *(v0 + 184) = v11;
    *v11 = v0;
    v11[1] = sub_100C25A20;

    return sub_100C1C580(sub_100C31DFC, v6);
  }

  else
  {
    v13 = *(v0 + 72);
    v14 = *(v0 + 112);

    sub_100C25C88(v14, v13);

    sub_10005117C(v13, type metadata accessor for CRLBoardIdentifier);
    v15 = *(v0 + 112);
    *&v15[*(v0 + 176)] = 0;

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100C25A20()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_100C25B40, v3, v2);
}

uint64_t sub_100C25B40()
{

  v1 = v0[14];
  *&v1[v0[22]] = 0;

  v2 = v0[1];

  return v2();
}

uint64_t sub_100C25BE8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  v3 = *(v0 + 8);

  return v3();
}

void sub_100C25C88(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-v7];
  v9 = _s5BoardVMa(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10005013C();
  if (v13)
  {
    v14 = v13;
    sub_1010AB99C(a2, v8);

    (*(v10 + 56))(v8, 0, 1, v9);
    sub_100025530(v8, v12, _s5BoardVMa);
    sub_10004FE64(v12, v5, _s5BoardVMa);
    swift_storeEnumTagMultiPayload();
    v15 = sub_100C0B3C0();
    if (v15)
    {
      v16 = v15;
      sub_100C3143C(v5);
    }

    sub_10005117C(v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10005117C(v12, _s5BoardVMa);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C26028(uint64_t a1, char a2)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = v7;
  *(v9 + 40) = a2;

  sub_10064191C(0, 0, v5, &unk_1014A0DB0, v9);
}

uint64_t sub_100C261F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_100C2628C, v6, v5);
}

uint64_t sub_100C2628C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_100C26390;

    return sub_100C19C18();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100C26390()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100C3358C, v4, v3);
}

uint64_t sub_100C264D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[41] = a4;
  v5[42] = a5;
  type metadata accessor for MainActor();
  v5[43] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[44] = v7;
  v5[45] = v6;

  return _swift_task_switch(sub_100C26568, v7, v6);
}

uint64_t sub_100C26568()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v0[37] = v0[42];
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    swift_dynamicCast();
    if (qword_1019F1ED0 != -1)
    {
      swift_once();
    }

    v3 = qword_1019F1ED8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = String._bridgeToObjectiveC()();

    v5 = String._bridgeToObjectiveC()();

    v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];
    v0[47] = v6;

    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();

    v12 = [objc_opt_self() actionWithTitle:v11 style:0 handler:0];

    [v6 addAction:v12];
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlError;
    v0[48] = static OS_os_log.crlError;
    v0[49] = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v15 = Error.publicDescription.getter(v0[29], v0[30]);
    v17 = v16;
    *(inited + 56) = &type metadata for String;
    v18 = sub_1000053B0();
    v0[50] = v18;
    *(inited + 64) = v18;
    *(inited + 32) = v15;
    *(inited + 40) = v17;
    swift_getErrorValue();
    v19 = Error.fullDescription.getter(v0[32]);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v18;
    *(inited + 72) = v19;
    *(inited + 80) = v20;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "Could not join or download board. Error: %{public}@ <%@>", 58, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    v22 = swift_arrayDestroy();
    v0[51] = (*((swift_isaMask & *v2) + 0x360))(v22);
    v23 = swift_task_alloc();
    v0[52] = v23;
    *v23 = v0;
    v23[1] = sub_100C26A4C;

    return sub_100D1C8E8(v6, 1);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_100C26A4C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_100C26BF8;
  }

  else
  {

    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_100C26B68;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100C26B68()
{
  v1 = v0[47];

  sub_1011047E4(v1);

  v2 = v0[46];
  *&v2[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt] = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C26BF8()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[48];
  v4 = v0[47];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v6 = Error.localizedDescription.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v2;
  *(inited + 32) = v6;
  *(inited + 40) = v7;
  v8 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v8, "Caught error trying to present failed-to-join alert: %@", 55, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v9 = v0[46];
  *&v9[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt] = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C26D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100C26DCC, v6, v5);
}

uint64_t sub_100C26DCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAlertController))
    {
      v2 = swift_task_alloc();
      v0[10] = v2;
      *v2 = v0;
      v2[1] = sub_100C26EF4;

      return sub_100C1A5AC();
    }

    v4 = v0[9];
    *&v4[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt] = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C26EF4()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100C27014, v3, v2);
}

uint64_t sub_100C27014()
{

  v1 = *(v0 + 72);
  *&v1[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt] = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C27094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[16] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v5[17] = swift_task_alloc();
  sub_1005B981C(&unk_1019FA3E0);
  v5[18] = swift_task_alloc();
  v6 = _s5BoardVMa(0);
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[22] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[23] = v8;
  v5[24] = v7;

  return _swift_task_switch(sub_100C271F0, v8, v7);
}

void sub_100C271F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAlertController))
    {
      v2 = swift_task_alloc();
      v0[26] = v2;
      *v2 = v0;
      v2[1] = sub_100C27758;

      sub_100C1A5AC();
      return;
    }

    v4 = *((swift_isaMask & *Strong) + 0x360);
    v5 = v4();
    v6 = [v5 presentedViewController];
    v0[27] = v6;

    if (v6)
    {
      sub_100006370(0, &unk_101A15AF8);
      if ([v6 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        v0[28] = v4();
        v7 = swift_task_alloc();
        v0[29] = v7;
        *v7 = v0;
        v7[1] = sub_100C27D2C;

        sub_100D1CCA4(1);
        return;
      }
    }

    v0[31] = 0;
    if (sub_100C0BA2C())
    {
      v8 = swift_task_alloc();
      v0[32] = v8;
      *v8 = v0;
      v8[1] = sub_100C281D8;

      sub_100C0DBF8();
      return;
    }

    sub_10005013C();
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    v11 = v0[31];
    v12 = v0[18];
    v13 = v0[15];

    sub_1010AB99C(v13, v12);
    if (v11)
    {
      v14 = v0[19];
      v15 = v0[20];
      v16 = v0[18];

      (*(v15 + 56))(v16, 1, 1, v14);
      sub_10000CAAC(v16, &unk_1019FA3E0);
      if (qword_1019F2128 != -1)
      {
        swift_once();
      }

      v17 = v0[25];
      v18 = static OS_os_log.crlFolderUI;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v20 = sub_10084B8C8();
      v22 = v21;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v23, "Could not retrieve view model for board with identifier %@", 58, 2, inited);

      swift_setDeallocating();
      sub_100005070(inited + 32);
      goto LABEL_7;
    }

    v25 = v0[20];
    v24 = v0[21];
    v27 = v0[18];
    v26 = v0[19];
    v28 = v0[17];

    (*(v25 + 56))(v27, 0, 1, v26);
    sub_100025530(v27, v24, _s5BoardVMa);
    sub_10004FE64(v24, v28, _s5BoardVMa);
    swift_storeEnumTagMultiPayload();
    v29 = sub_100C0B3C0();
    if (v29)
    {
      v30 = v29;
      sub_100C3143C(v0[17]);
    }

    v31 = v0[25];
    v32 = v0[21];
    sub_10005117C(v0[17], type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10005117C(v32, _s5BoardVMa);
    *&v31[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt] = 0;
  }

LABEL_7:

  v3 = v0[1];

  v3();
}

uint64_t sub_100C27758()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_100C27878, v3, v2);
}

void sub_100C27878()
{
  v1 = *((swift_isaMask & **(v0 + 200)) + 0x360);
  v2 = v1();
  v3 = [v2 presentedViewController];
  *(v0 + 216) = v3;

  if (v3)
  {
    sub_100006370(0, &unk_101A15AF8);
    if ([v3 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      *(v0 + 224) = v1();
      v4 = swift_task_alloc();
      *(v0 + 232) = v4;
      *v4 = v0;
      v4[1] = sub_100C27D2C;

      sub_100D1CCA4(1);
      return;
    }
  }

  *(v0 + 248) = 0;
  if (sub_100C0BA2C())
  {
    v5 = swift_task_alloc();
    *(v0 + 256) = v5;
    *v5 = v0;
    v5[1] = sub_100C281D8;

    sub_100C0DBF8();
  }

  else
  {
    sub_10005013C();
    if (v6)
    {
      v7 = v6;
      v8 = *(v0 + 248);
      v9 = *(v0 + 144);
      v10 = *(v0 + 120);

      sub_1010AB99C(v10, v9);
      if (v8)
      {
        v11 = *(v0 + 152);
        v12 = *(v0 + 160);
        v13 = *(v0 + 144);

        (*(v12 + 56))(v13, 1, 1, v11);
        sub_10000CAAC(v13, &unk_1019FA3E0);
        if (qword_1019F2128 != -1)
        {
          swift_once();
        }

        v14 = *(v0 + 200);
        v15 = static OS_os_log.crlFolderUI;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v17 = sub_10084B8C8();
        v19 = v18;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v17;
        *(inited + 40) = v19;
        v20 = static os_log_type_t.error.getter();
        sub_100005404(v15, &_mh_execute_header, v20, "Could not retrieve view model for board with identifier %@", 58, 2, inited);

        swift_setDeallocating();
        sub_100005070(inited + 32);
      }

      else
      {
        v22 = *(v0 + 160);
        v21 = *(v0 + 168);
        v24 = *(v0 + 144);
        v23 = *(v0 + 152);
        v25 = *(v0 + 136);

        (*(v22 + 56))(v24, 0, 1, v23);
        sub_100025530(v24, v21, _s5BoardVMa);
        sub_10004FE64(v21, v25, _s5BoardVMa);
        swift_storeEnumTagMultiPayload();
        v26 = sub_100C0B3C0();
        if (v26)
        {
          v27 = v26;
          sub_100C3143C(*(v0 + 136));
        }

        v28 = *(v0 + 200);
        v29 = *(v0 + 168);
        sub_10005117C(*(v0 + 136), type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10005117C(v29, _s5BoardVMa);
        *&v28[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt] = 0;
      }

      v30 = *(v0 + 8);

      v30();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100C27D2C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_100C285F4;
  }

  else
  {

    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_100C27E48;
  }

  return _swift_task_switch(v5, v3, v4);
}

void sub_100C27E48()
{
  *(v0 + 248) = *(v0 + 240);
  if (sub_100C0BA2C())
  {
    v1 = swift_task_alloc();
    *(v0 + 256) = v1;
    *v1 = v0;
    v1[1] = sub_100C281D8;

    sub_100C0DBF8();
  }

  else
  {
    sub_10005013C();
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + 248);
      v5 = *(v0 + 144);
      v6 = *(v0 + 120);

      sub_1010AB99C(v6, v5);
      if (v4)
      {
        v7 = *(v0 + 152);
        v8 = *(v0 + 160);
        v9 = *(v0 + 144);

        (*(v8 + 56))(v9, 1, 1, v7);
        sub_10000CAAC(v9, &unk_1019FA3E0);
        if (qword_1019F2128 != -1)
        {
          swift_once();
        }

        v10 = *(v0 + 200);
        v11 = static OS_os_log.crlFolderUI;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v13 = sub_10084B8C8();
        v15 = v14;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v13;
        *(inited + 40) = v15;
        v16 = static os_log_type_t.error.getter();
        sub_100005404(v11, &_mh_execute_header, v16, "Could not retrieve view model for board with identifier %@", 58, 2, inited);

        swift_setDeallocating();
        sub_100005070(inited + 32);
      }

      else
      {
        v18 = *(v0 + 160);
        v17 = *(v0 + 168);
        v20 = *(v0 + 144);
        v19 = *(v0 + 152);
        v21 = *(v0 + 136);

        (*(v18 + 56))(v20, 0, 1, v19);
        sub_100025530(v20, v17, _s5BoardVMa);
        sub_10004FE64(v17, v21, _s5BoardVMa);
        swift_storeEnumTagMultiPayload();
        v22 = sub_100C0B3C0();
        if (v22)
        {
          v23 = v22;
          sub_100C3143C(*(v0 + 136));
        }

        v24 = *(v0 + 200);
        v25 = *(v0 + 168);
        sub_10005117C(*(v0 + 136), type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10005117C(v25, _s5BoardVMa);
        *&v24[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt] = 0;
      }

      v26 = *(v0 + 8);

      v26();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100C281D8()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_100C282F8, v3, v2);
}

void sub_100C282F8()
{
  sub_10005013C();
  if (v1)
  {
    v2 = v1;
    v3 = v0[31];
    v4 = v0[18];
    v5 = v0[15];

    sub_1010AB99C(v5, v4);
    if (v3)
    {
      v6 = v0[19];
      v7 = v0[20];
      v8 = v0[18];

      (*(v7 + 56))(v8, 1, 1, v6);
      sub_10000CAAC(v8, &unk_1019FA3E0);
      if (qword_1019F2128 != -1)
      {
        swift_once();
      }

      v9 = v0[25];
      v10 = static OS_os_log.crlFolderUI;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v12 = sub_10084B8C8();
      v14 = v13;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v12;
      *(inited + 40) = v14;
      v15 = static os_log_type_t.error.getter();
      sub_100005404(v10, &_mh_execute_header, v15, "Could not retrieve view model for board with identifier %@", 58, 2, inited);

      swift_setDeallocating();
      sub_100005070(inited + 32);
    }

    else
    {
      v17 = v0[20];
      v16 = v0[21];
      v19 = v0[18];
      v18 = v0[19];
      v20 = v0[17];

      (*(v17 + 56))(v19, 0, 1, v18);
      sub_100025530(v19, v16, _s5BoardVMa);
      sub_10004FE64(v16, v20, _s5BoardVMa);
      swift_storeEnumTagMultiPayload();
      v21 = sub_100C0B3C0();
      if (v21)
      {
        v22 = v21;
        sub_100C3143C(v0[17]);
      }

      v23 = v0[25];
      v24 = v0[21];
      sub_10005117C(v0[17], type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10005117C(v24, _s5BoardVMa);
      *&v23[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt] = 0;
    }

    v25 = v0[1];

    v25();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C285F4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100C286D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  swift_errorRetain();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v9[5] = a2;

  sub_10064191C(0, 0, v5, &unk_1014A0DF0, v9);
}

uint64_t sub_100C28868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, char *, uint64_t, void *))
{
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;

  a6(0, 0, v10, a5, v14);
}

uint64_t sub_100C289F4()
{
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sceneManagement;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = type metadata accessor for CRLSceneDelegate();
  *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate);
  *(inited + 32) = v0;
  v0;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v3, "Scene delegate (%p) showing Welcome.", 36, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v171 = objc_opt_self();
  v4 = [v171 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v174 = v8;

  v9 = String._bridgeToObjectiveC()();
  v10 = objc_opt_self();
  v11 = [v10 imageNamed:v9];

  if (v11 && (v169 = objc_opt_self(), v12 = [v169 systemCyanColor], sub_1005B981C(&unk_1019F4D60), v13 = swift_allocObject(), *(v13 + 16) = xmmword_101465920, *(v13 + 32) = v12, sub_100006370(0, &qword_101A11110), v14 = v12, v15 = Array._bridgeToObjectiveC()().super.isa, , v16 = objc_opt_self(), v17 = objc_msgSend(v16, "configurationWithPaletteColors:", v15), v15, v18 = objc_msgSend(v16, "configurationPreferringMonochrome"), v19 = objc_msgSend(v17, "configurationByApplyingConfiguration:", v18), v18, v17, v20 = v19, v21 = objc_msgSend(v16, "configurationWithScale:", 2), v22 = objc_msgSend(v20, "configurationByApplyingConfiguration:", v21), v20, v21, v23 = objc_msgSend(v11, "imageWithConfiguration:", v22), v20, v14, v22, v11, v23))
  {
    v167 = v23;
    v24 = String._bridgeToObjectiveC()();
    v25 = [v10 imageNamed:v24];

    if (v25 && (v26 = [v169 systemCyanColor], v27 = swift_allocObject(), *(v27 + 16) = xmmword_101465920, *(v27 + 32) = v26, v165 = v26, v28 = Array._bridgeToObjectiveC()().super.isa, , v29 = objc_msgSend(v16, "configurationWithPaletteColors:", v28), v28, v30 = objc_msgSend(v16, "configurationPreferringMonochrome"), v31 = objc_msgSend(v29, "configurationByApplyingConfiguration:", v30), v30, v29, v32 = v31, v33 = objc_msgSend(v16, "configurationWithScale:", 2), v34 = objc_msgSend(v32, "configurationByApplyingConfiguration:", v33), v32, v33, v35 = objc_msgSend(v25, "imageWithConfiguration:", v34), v32, v165, v34, v25, v35))
    {
      v166 = v35;
      v36 = String._bridgeToObjectiveC()();
      v37 = [v10 imageNamed:v36];

      if (v37)
      {
        v38 = [v169 systemCyanColor];
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_101465920;
        *(v39 + 32) = v38;
        v40 = v38;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v42 = [v16 configurationWithPaletteColors:isa];

        v43 = [v16 configurationPreferringMonochrome];
        v44 = [v42 configurationByApplyingConfiguration:v43];

        v45 = v44;
        v46 = [v16 configurationWithScale:2];
        v47 = [v45 configurationByApplyingConfiguration:v46];

        v48 = [v37 imageWithConfiguration:v47];
        if (v48)
        {
          v49 = [v171 mainBundle];
          v161 = v48;
          v50 = String._bridgeToObjectiveC()();
          v51 = String._bridgeToObjectiveC()();
          v52 = [v49 localizedStringForKey:v50 value:v51 table:0];

          v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v170 = v53;

          v54 = [v171 mainBundle];
          v55 = String._bridgeToObjectiveC()();
          v56 = String._bridgeToObjectiveC()();
          v57 = [v54 localizedStringForKey:v55 value:v56 table:0];

          v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v164 = v58;

          v59 = [v171 mainBundle];
          v60 = String._bridgeToObjectiveC()();
          v61 = String._bridgeToObjectiveC()();
          v62 = [v59 localizedStringForKey:v60 value:v61 table:0];

          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v162 = v64;
          v163 = v63;

          v65 = [v171 mainBundle];
          v66 = String._bridgeToObjectiveC()();
          v67 = String._bridgeToObjectiveC()();
          v68 = [v65 localizedStringForKey:v66 value:v67 table:0];

          v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v71 = v70;

          v72 = [v171 mainBundle];
          v73 = String._bridgeToObjectiveC()();
          v74 = String._bridgeToObjectiveC()();
          v75 = [v72 localizedStringForKey:v73 value:v74 table:0];

          v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = v77;

          v79 = [v171 mainBundle];
          v80 = String._bridgeToObjectiveC()();
          v81 = String._bridgeToObjectiveC()();
          v82 = [v79 localizedStringForKey:v80 value:v81 table:0];

          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v84;

          sub_1005B981C(&qword_101A11D10);
          v86 = swift_initStackObject();
          *(v86 + 16) = xmmword_10146C4D0;
          *(v86 + 32) = v173;
          *(v86 + 40) = v170;
          *(v86 + 48) = v69;
          *(v86 + 56) = v71;
          *(v86 + 64) = v167;
          *(v86 + 72) = v168;
          *(v86 + 80) = v164;
          *(v86 + 88) = v76;
          *(v86 + 96) = v78;
          *(v86 + 104) = v166;
          *(v86 + 112) = v163;
          *(v86 + 120) = v162;
          *(v86 + 128) = v83;
          *(v86 + 136) = v85;
          *(v86 + 144) = v161;
          v87 = v167;
          v88 = v166;
          v89 = v161;
          sub_100C2A1F0(v172, v174, v86);

          swift_setDeallocating();
          sub_1005B981C(&qword_1019F6DE0);
          return swift_arrayDestroy();
        }
      }

      v138 = objc_opt_self();
      v139 = [v138 _atomicIncrementAssertCount];
      v175 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v175);
      StaticString.description.getter();
      v140 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v141 = String._bridgeToObjectiveC()();

      v142 = [v141 lastPathComponent];

      v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = v144;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v146 = static OS_os_log.crlAssert;
      v147 = swift_initStackObject();
      *(v147 + 16) = xmmword_10146CA70;
      *(v147 + 56) = &type metadata for Int32;
      *(v147 + 64) = &protocol witness table for Int32;
      *(v147 + 32) = v139;
      v148 = sub_100006370(0, &qword_1019F4D30);
      *(v147 + 96) = v148;
      v149 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v147 + 104) = v149;
      *(v147 + 72) = v140;
      *(v147 + 136) = &type metadata for String;
      v150 = sub_1000053B0();
      *(v147 + 112) = v143;
      *(v147 + 120) = v145;
      *(v147 + 176) = &type metadata for UInt;
      *(v147 + 184) = &protocol witness table for UInt;
      *(v147 + 144) = v150;
      *(v147 + 152) = 1571;
      v151 = v175;
      *(v147 + 216) = v148;
      *(v147 + 224) = v149;
      *(v147 + 192) = v151;
      v152 = v140;
      v153 = v151;
      v154 = static os_log_type_t.error.getter();
      sub_100005404(v146, &_mh_execute_header, v154, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v147);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v155 = static os_log_type_t.error.getter();
      sub_100005404(v146, &_mh_execute_header, v155, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v156 = swift_allocObject();
      v156[2] = 8;
      v156[3] = 0;
      v156[4] = 0;
      v156[5] = 0;
      v157 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v158 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v159 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v160 = String._bridgeToObjectiveC()();

      [v138 handleFailureInFunction:v158 file:v159 lineNumber:1571 isFatal:0 format:v160 args:v157];

      v137 = v166;
    }

    else
    {
      v114 = objc_opt_self();
      v115 = [v114 _atomicIncrementAssertCount];
      v175 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v175);
      StaticString.description.getter();
      v116 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v117 = String._bridgeToObjectiveC()();

      v118 = [v117 lastPathComponent];

      v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v120;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v122 = static OS_os_log.crlAssert;
      v123 = swift_initStackObject();
      *(v123 + 16) = xmmword_10146CA70;
      *(v123 + 56) = &type metadata for Int32;
      *(v123 + 64) = &protocol witness table for Int32;
      *(v123 + 32) = v115;
      v124 = sub_100006370(0, &qword_1019F4D30);
      *(v123 + 96) = v124;
      v125 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v123 + 104) = v125;
      *(v123 + 72) = v116;
      *(v123 + 136) = &type metadata for String;
      v126 = sub_1000053B0();
      *(v123 + 112) = v119;
      *(v123 + 120) = v121;
      *(v123 + 176) = &type metadata for UInt;
      *(v123 + 184) = &protocol witness table for UInt;
      *(v123 + 144) = v126;
      *(v123 + 152) = 1570;
      v127 = v175;
      *(v123 + 216) = v124;
      *(v123 + 224) = v125;
      *(v123 + 192) = v127;
      v128 = v116;
      v129 = v127;
      v130 = static os_log_type_t.error.getter();
      sub_100005404(v122, &_mh_execute_header, v130, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v123);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v131 = static os_log_type_t.error.getter();
      sub_100005404(v122, &_mh_execute_header, v131, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v132 = swift_allocObject();
      v132[2] = 8;
      v132[3] = 0;
      v132[4] = 0;
      v132[5] = 0;
      v133 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v134 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v135 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v136 = String._bridgeToObjectiveC()();

      [v114 handleFailureInFunction:v134 file:v135 lineNumber:1570 isFatal:0 format:v136 args:v133];

      v137 = v167;
    }
  }

  else
  {
    v91 = objc_opt_self();
    v92 = [v91 _atomicIncrementAssertCount];
    v175 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v175);
    StaticString.description.getter();
    v93 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v94 = String._bridgeToObjectiveC()();

    v95 = [v94 lastPathComponent];

    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v99 = static OS_os_log.crlAssert;
    v100 = swift_initStackObject();
    *(v100 + 16) = xmmword_10146CA70;
    *(v100 + 56) = &type metadata for Int32;
    *(v100 + 64) = &protocol witness table for Int32;
    *(v100 + 32) = v92;
    v101 = sub_100006370(0, &qword_1019F4D30);
    *(v100 + 96) = v101;
    v102 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v100 + 104) = v102;
    *(v100 + 72) = v93;
    *(v100 + 136) = &type metadata for String;
    v103 = sub_1000053B0();
    *(v100 + 112) = v96;
    *(v100 + 120) = v98;
    *(v100 + 176) = &type metadata for UInt;
    *(v100 + 184) = &protocol witness table for UInt;
    *(v100 + 144) = v103;
    *(v100 + 152) = 1569;
    v104 = v175;
    *(v100 + 216) = v101;
    *(v100 + 224) = v102;
    *(v100 + 192) = v104;
    v105 = v93;
    v106 = v104;
    v107 = static os_log_type_t.error.getter();
    sub_100005404(v99, &_mh_execute_header, v107, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v100);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v108 = static os_log_type_t.error.getter();
    sub_100005404(v99, &_mh_execute_header, v108, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v109 = swift_allocObject();
    v109[2] = 8;
    v109[3] = 0;
    v109[4] = 0;
    v109[5] = 0;
    v110 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v111 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v112 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v113 = String._bridgeToObjectiveC()();

    [v91 handleFailureInFunction:v111 file:v112 lineNumber:1569 isFatal:0 format:v113 args:v110];
  }
}

uint64_t sub_100C29FB8()
{
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sceneManagement;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = type metadata accessor for CRLSceneDelegate();
  *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate);
  *(inited + 32) = v0;
  v3 = v0;
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v4, "Scene delegate (%p) showing What's New.", 39, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = (*((swift_isaMask & *v3) + 0x1F8))();
  sub_100C2A1F0(v9, v11, v12);
}

void sub_100C2A1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v76 - v5;
  v7 = *(a3 + 16);
  if (v7)
  {
    v77 = v6;
    v8 = objc_opt_self();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 _applicationIconImageForBundleIdentifier:v9 format:2];

    v11 = objc_allocWithZone(OBWelcomeController);
    v12 = v10;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v11 initWithTitle:v13 detailText:0 icon:v12];
    v78 = v12;

    v15 = (a3 + 64);
    do
    {
      v16 = *v15;
      v15 += 5;

      v17 = v16;
      v18 = String._bridgeToObjectiveC()();

      v19 = String._bridgeToObjectiveC()();

      [v14 addBulletedListItemWithTitle:v18 description:v19 image:v17 tintColor:0];

      --v7;
    }

    while (v7);
    v20 = [objc_opt_self() boldButton];
    v21 = [objc_opt_self() mainBundle];
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

    if (!v24)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = String._bridgeToObjectiveC()();
    }

    [v20 setTitle:v24 forState:0];

    v25 = v79;
    [v20 addTarget:v79 action:"didTapWelcomeContinueButton:" forControlEvents:64];
    v26 = [v14 buttonTray];
    [v26 addButton:v20];

    swift_unknownObjectWeakAssign();
    v27 = type metadata accessor for TaskPriority();
    v28 = v77;
    (*(*(v27 - 8) + 56))(v77, 1, 1, v27);
    type metadata accessor for MainActor();
    v29 = v25;
    v30 = v14;
    v31 = static MainActor.shared.getter();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = &protocol witness table for MainActor;
    v32[4] = v29;
    v32[5] = v30;
    sub_10064191C(0, 0, v28, &unk_1014A0E18, v32);

    v33 = [v30 presentationController];
    if (v33)
    {
      v34 = v33;
      [v33 setDelegate:v29];

      v35 = v78;
    }

    else
    {
      v79 = objc_opt_self();
      v55 = [v79 _atomicIncrementAssertCount];
      v80[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v80);
      StaticString.description.getter();
      v77 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v56 = String._bridgeToObjectiveC()();

      v57 = [v56 lastPathComponent];

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v59;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v60 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v55;
      v62 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v62;
      v63 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v63;
      v64 = v77;
      *(inited + 72) = v77;
      *(inited + 136) = &type metadata for String;
      v65 = sub_1000053B0();
      v66 = v76;
      *(inited + 112) = v58;
      *(inited + 120) = v66;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v65;
      *(inited + 152) = 1669;
      v67 = v80[0];
      *(inited + 216) = v62;
      *(inited + 224) = v63;
      *(inited + 192) = v67;
      v68 = v64;
      v69 = v67;
      v70 = static os_log_type_t.error.getter();
      sub_100005404(v60, &_mh_execute_header, v70, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v71 = static os_log_type_t.error.getter();
      sub_100005404(v60, &_mh_execute_header, v71, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v72 = swift_allocObject();
      v72[2] = 8;
      v72[3] = 0;
      v72[4] = 0;
      v72[5] = 0;
      v73 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v74 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v75 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      [v79 handleFailureInFunction:v74 file:v75 lineNumber:1669 isFatal:0 format:v35 args:v73];

      v20 = v74;
      v30 = v75;
    }
  }

  else
  {
    v79 = objc_opt_self();
    v36 = [v79 _atomicIncrementAssertCount];
    v80[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v80);
    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    v39 = [v38 lastPathComponent];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v43 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_10146CA70;
    *(v44 + 56) = &type metadata for Int32;
    *(v44 + 64) = &protocol witness table for Int32;
    *(v44 + 32) = v36;
    v45 = sub_100006370(0, &qword_1019F4D30);
    *(v44 + 96) = v45;
    v46 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v44 + 104) = v46;
    *(v44 + 72) = v37;
    *(v44 + 136) = &type metadata for String;
    v47 = sub_1000053B0();
    *(v44 + 112) = v40;
    *(v44 + 120) = v42;
    *(v44 + 176) = &type metadata for UInt;
    *(v44 + 184) = &protocol witness table for UInt;
    *(v44 + 144) = v47;
    *(v44 + 152) = 1640;
    v48 = v80[0];
    *(v44 + 216) = v45;
    *(v44 + 224) = v46;
    *(v44 + 192) = v48;
    v49 = v37;
    v50 = v48;
    v51 = static os_log_type_t.error.getter();
    sub_100005404(v43, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v44);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v43, &_mh_execute_header, v52, "No first launch bullets! Exiting.", 33, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v53 = swift_allocObject();
    v53[2] = 8;
    v53[3] = 0;
    v53[4] = 0;
    v53[5] = 0;
    v54 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    [v79 handleFailureInFunction:v20 file:v30 lineNumber:1640 isFatal:0 format:v35 args:v54];
  }
}

uint64_t sub_100C2AD44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v10 = (*((swift_isaMask & *a4) + 0x358) + **((swift_isaMask & *a4) + 0x358));
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_10007EE50;

  return v10(a5);
}

void sub_100C2AEA8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v8 = [Strong presentationController];
  }

  else
  {
    v8 = 0;
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v8;
    *(v5 + 24) = v4;
    aBlock[4] = sub_100C325B8;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10189AEE0;
    v6 = _Block_copy(aBlock);
    v7 = v8;

    [v3 dismissViewControllerAnimated:1 completion:v6];

    _Block_release(v6);
  }

  else
  {
  }
}

void sub_100C2B02C(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    [Strong presentationControllerDidDismiss:a1];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v26 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v26);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 1676;
    v17 = v26;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:1676 isFatal:0 format:v3 args:v23];
  }
}

uint64_t sub_100C2B4AC(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A15AC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1005B981C(&qword_101A15A30);
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  return sub_100C0B810(v4);
}

uint64_t sub_100C2B5B8(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  _s5BoardVMa(0);
  v2[33] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v2[34] = swift_task_alloc();
  v2[35] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[36] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[37] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[38] = v4;
  v2[39] = v3;

  return _swift_task_switch(sub_100C2B6D8, v4, v3);
}

uint64_t sub_100C2B6D8()
{
  v34 = v0;
  sub_10004FE64(v0[31], v0[36], type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    v32 = objc_opt_self();
    v6 = [v32 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v15;
    v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 1821;
    v18 = v33;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "Library should not be selectable", 32, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v25 file:v26 lineNumber:1821 isFatal:0 format:v27 args:v24];

    v5 = 0;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v2 = v0[36];
    v3 = v0[34];

    sub_100025530(v2, v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_100C2C3E8(v3);
    v5 = v4;
    sub_10005117C(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_7:

    v28 = v0[1];

    return v28(v5);
  }

  sub_100025530(v0[36], v0[33], _s5BoardVMa);
  v30 = swift_task_alloc();
  v0[40] = v30;
  *v30 = v0;
  v30[1] = sub_100C2BC30;
  v31 = v0[33];

  return sub_100C2EDFC(v31);
}

uint64_t sub_100C2BC30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = v4[38];
    v6 = v4[39];
    v7 = sub_100C2BE08;
  }

  else
  {
    v4[42] = a1;
    v5 = v4[38];
    v6 = v4[39];
    v7 = sub_100C2BD58;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C2BD58()
{
  v1 = v0[33];

  sub_10005117C(v1, _s5BoardVMa);
  v2 = v0[42];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100C2BE08()
{
  v1 = *(v0 + 264);

  sub_10005117C(v1, _s5BoardVMa);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100C2BEAC(void *a1, char a2, char a3, char a4)
{
  v9 = sub_100051290();
  v40 = [v9 viewControllerForColumn:2];

  if (v40)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      if (a2)
      {
        [v10 pushViewController:a1 animated:a4 & 1];
        if ((a3 & 1) == 0)
        {
LABEL_5:
          v11 = v40;
LABEL_12:

          return;
        }
      }

      else
      {
        v35 = v10;
        sub_1005B981C(&unk_1019F4D60);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_101465920;
        *(v36 + 32) = a1;
        sub_100006370(0, &qword_101A10AB0);
        v37 = a1;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v35 setViewControllers:isa animated:a4 & 1];

        if ((a3 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v39 = *(v4 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController);
      [v39 showColumn:2];

      v11 = v39;
      goto LABEL_12;
    }
  }

  v12 = objc_opt_self();
  v13 = [v12 _atomicIncrementAssertCount];
  v41 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v41);
  StaticString.description.getter();
  v14 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v15 lastPathComponent];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v20 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v13;
  v22 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v22;
  v23 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v23;
  *(inited + 72) = v14;
  *(inited + 136) = &type metadata for String;
  v24 = sub_1000053B0();
  *(inited + 112) = v17;
  *(inited + 120) = v19;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v24;
  *(inited + 152) = 1953;
  v25 = v41;
  *(inited + 216) = v22;
  *(inited + 224) = v23;
  *(inited + 192) = v25;
  v26 = v14;
  v27 = v25;
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v20, &_mh_execute_header, v29, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v30 = swift_allocObject();
  v30[2] = 8;
  v30[3] = 0;
  v30[4] = 0;
  v30[5] = 0;
  v31 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v34 = String._bridgeToObjectiveC()();

  [v12 handleFailureInFunction:v32 file:v33 lineNumber:1953 isFatal:0 format:v34 args:v31];
}

void sub_100C2C3E8(objc_class *a1)
{
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v66 - v7;
  v70 = sub_1005B981C(&qword_101A15AA0);
  __chkstk_darwin(v70);
  v9 = &v66 - v8;
  v10 = sub_1005B981C(&qword_101A15AA8);
  __chkstk_darwin(v10 - 8);
  v68 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v66 - v13;
  __chkstk_darwin(v15);
  v17 = &v66 - v16;
  v69 = a1;
  sub_10004FE64(a1, &v66 - v16, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v18 = *(v4 + 56);
  v19 = 1;
  v18(v17, 0, 1, v3);
  v20 = sub_100C0B3C0();
  if (v20)
  {
    v21 = v20;
    sub_10004FE64(v20 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v14, type metadata accessor for CRLBoardLibraryViewModel.Filter);

    v19 = 0;
  }

  v18(v14, v19, 1, v3);
  v22 = *(v70 + 48);
  sub_10000BE14(v17, v9, &qword_101A15AA8);
  sub_10000BE14(v14, &v9[v22], &qword_101A15AA8);
  v23 = *(v4 + 48);
  if (v23(v9, 1, v3) == 1)
  {
    sub_10000CAAC(v14, &qword_101A15AA8);
    sub_10000CAAC(v17, &qword_101A15AA8);
    if (v23(&v9[v22], 1, v3) == 1)
    {
      sub_10000CAAC(v9, &qword_101A15AA8);
LABEL_14:
      sub_100C0B3C0();
      return;
    }

    goto LABEL_8;
  }

  v24 = v68;
  sub_10000BE14(v9, v68, &qword_101A15AA8);
  if (v23(&v9[v22], 1, v3) == 1)
  {
    sub_10000CAAC(v14, &qword_101A15AA8);
    sub_10000CAAC(v17, &qword_101A15AA8);
    sub_10005117C(v24, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_8:
    sub_10000CAAC(v9, &qword_101A15AA0);
    goto LABEL_9;
  }

  v32 = v67;
  sub_100025530(&v9[v22], v67, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v33 = v24;
  v34 = sub_100068604(v24, v32);
  sub_10005117C(v32, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10000CAAC(v14, &qword_101A15AA8);
  sub_10000CAAC(v17, &qword_101A15AA8);
  sub_10005117C(v33, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10000CAAC(v9, &qword_101A15AA8);
  if (v34)
  {
    goto LABEL_14;
  }

LABEL_9:
  sub_10004FE64(v69, v71, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10005013C();
  if (!v25)
  {
    __break(1u);
    goto LABEL_19;
  }

  v26 = v25;
  sub_1000505F0();
  if (!v27)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v70 = v27;
  v28 = *&v1[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___boardLibrary];
  v68 = v26;
  if (v28)
  {
    v29 = type metadata accessor for CRLBoardLibrary();
    v30 = &off_1018B0BE8;
    v31 = v28;
  }

  else
  {
    v31 = 0;
    v29 = 0;
    v30 = 0;
    v74[1] = 0;
    v74[2] = 0;
  }

  v74[0] = v31;
  v74[3] = v29;
  v74[4] = v30;
  v69 = type metadata accessor for CRLiOSFolderGridViewController();
  v35 = objc_allocWithZone(v69);
  v36 = &v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate];
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_thumbnailProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___diffableDataSource] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_pendingBoardIdentifiersToRefresh] = _swiftEmptySetSingleton;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_storeMetadataObserver] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver] = 0;
  v37 = &v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString];
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchComplete] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_gridLayout] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_listLayout] = 0;
  v38 = &v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_iCloudStatusObserver];
  *v38 = 0u;
  v38[1] = 0u;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidEndObserver] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidBeginObserver] = 0;
  v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController] = 0;
  v39 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  v40 = sub_1005B981C(&unk_101A23860);
  (*(*(v40 - 8) + 56))(&v35[v39], 1, 1, v40);
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections] = _swiftEmptySetSingleton;
  v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___layoutBarButtonItem] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToAddBoard] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToSelectAllOrNone] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___editModeToolbarButtonToDuplicateSelectedItems] = 0;
  v41 = &v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_defaultTitleForToolbarItemToSelectAllOrNone];
  v42 = objc_opt_self();
  sub_1000505E0(v28);
  v67 = v1;
  v43 = [v42 mainBundle];
  v44 = String._bridgeToObjectiveC()();
  v45 = String._bridgeToObjectiveC()();
  v46 = [v43 localizedStringForKey:v44 value:v45 table:0];

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  *v41 = v47;
  v41[1] = v49;
  v50 = &v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_alternateTitleForToolbarItemToSelectAllOrNone];
  v51 = [v42 mainBundle];
  v52 = String._bridgeToObjectiveC()();
  v53 = String._bridgeToObjectiveC()();
  v54 = [v51 localizedStringForKey:v52 value:v53 table:0];

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  *v50 = v55;
  v50[1] = v57;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_cachedSearchController] = 0;
  swift_unknownObjectWeakInit();
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint] = 0;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight] = 0;
  v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView] = 0;
  v58 = v71;
  sub_10004FE64(v71, &v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter], type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v59 = &v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider];
  v60 = v67;
  *v59 = v68;
  v59[1] = &off_1018B0AB8;
  *(v36 + 1) = &off_10189AB48;
  swift_unknownObjectWeakAssign();
  v61 = v70;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_boardPreviewImageCache] = v70;
  sub_10000BE14(v74, v73, &qword_101A15AD0);
  type metadata accessor for CRLBoardSearchHelper();
  swift_allocObject();
  v62 = v61;
  *&v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_boardSearchHelper] = sub_100050DA4(v73);
  v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout] = 1;
  v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldRestoreViewState] = 1;
  v63 = &v35[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions];
  *v63 = 1;
  v63[2] = 0;
  v64 = [objc_allocWithZone(UICollectionViewLayout) init];
  v72.receiver = v35;
  v72.super_class = v69;
  v65 = [(objc_class *)&v72 initWithCollectionViewLayout:v64];

  [v65 setHidesBottomBarWhenPushed:1];
  sub_10000CAAC(v74, &qword_101A15AD0);
  sub_10005117C(v58, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  *&v65[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_thumbnailProvider + 8] = &off_10189AB78;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100C2CE2C()
{
  v1[21] = v0;
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(sub_100C2CEC4, v3, v2);
}

uint64_t sub_100C2CEC4()
{
  v1 = sub_100C2D894();
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_opt_self();
  if ([v7 crl_iPadDevice])
  {
    if (v1)
    {
LABEL_3:
      v8 = [v2 mainBundle];
      v9 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else if (v1)
  {
    goto LABEL_3;
  }

  [v7 crl_iPadDevice];
  v8 = [v2 mainBundle];
  v9 = String._bridgeToObjectiveC()();
LABEL_6:
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];
  v0[25] = v14;

  v15 = [v2 mainBundle];
  if (v1)
  {
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();

    v0[15] = sub_100C3355C;
    v0[16] = 0;
    v0[11] = _NSConcreteStackBlock;
    v0[12] = *"";
    v0[13] = sub_10068B39C;
    v0[14] = &unk_10189ACD8;
    v20 = _Block_copy(v0 + 11);

    v21 = objc_opt_self();
    v22 = [v21 actionWithTitle:v19 style:0 handler:v20];
    _Block_release(v20);

    [v14 addAction:v22];
    v23 = [v2 mainBundle];
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();

    v28 = [v21 actionWithTitle:v27 style:1 handler:0];

    [v14 addAction:v28];
  }

  else
  {
    v29 = String._bridgeToObjectiveC()();
    v30 = String._bridgeToObjectiveC()();
    v31 = [v15 localizedStringForKey:v29 value:v30 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();

    v22 = [objc_opt_self() actionWithTitle:v32 style:0 handler:0];

    [v14 addAction:v22];
  }

  v0[26] = (*((swift_isaMask & *v0[21]) + 0x360))();
  v33 = swift_task_alloc();
  v0[27] = v33;
  *v33 = v0;
  v33[1] = sub_100C2D58C;

  return sub_100D1C8E8(v14, 1);
}

uint64_t sub_100C2D58C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_100C2D718;
  }

  else
  {

    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_100C2D6A8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100C2D6A8()
{
  v1 = *(v0 + 200);

  sub_1011047E4(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C2D718()
{
  v1 = v0[26];

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v5 = Error.localizedDescription.getter();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v8, "Caught error trying to present alert for handling unsupported board: %@", 71, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v9 = v0[1];

  return v9();
}

uint64_t sub_100C2D894()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 dictionaryForKey:v2];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_100C08818(v4);

  if (!v5)
  {
    goto LABEL_7;
  }

  if (!*(v5 + 16) || (v6 = sub_10000BE7C(*(v0 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_CRLUnsupportedDevicesKey), *(v0 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_CRLUnsupportedDevicesKey + 8)), (v7 & 1) == 0))
  {

LABEL_7:
    v14 = 1;
    return v14 & 1;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  v9 = [objc_opt_self() crl_platformString];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v17[0] = v10;
  v17[1] = v12;
  __chkstk_darwin(v13);
  v16[2] = v17;
  LOBYTE(v9) = sub_100C08644(sub_100C31CAC, v16, v8);

  v14 = v9 ^ 1;
  return v14 & 1;
}

uint64_t sub_100C2DA64(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C2DAFC, v4, v3);
}

uint64_t sub_100C2DAFC()
{
  v1 = v0[3];

  v2 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
  if (v2)
  {
    v3 = [v2 rootViewController];
    if (v3)
    {
      v4 = v3;
      [v3 presentViewController:v0[2] animated:1 completion:0];
    }
  }

  v5 = v0[1];

  return v5();
}

void sub_100C2DBA8(void *a1)
{
  v3 = sub_1005B981C(&unk_101A15AC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v22 - v8;
  v24 = [a1 presentedViewController];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    if (Strong)
    {
      v23 = Strong;
      sub_100006370(0, &qword_101A10AB0);
      v11 = static NSObject.== infix(_:_:)();

      if ((v11 & 1) == 0)
      {
        return;
      }

      goto LABEL_6;
    }

    Strong = v24;
  }

  else if (!Strong)
  {
LABEL_6:
    v12 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_welcomeControllerDidDismissContinuation;
    swift_beginAccess();
    sub_10000BE14(v1 + v12, v9, &unk_101A15AC0);
    v13 = sub_1005B981C(&qword_101A15A30);
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v9, 1, v13);
    v16 = sub_10000CAAC(v9, &unk_101A15AC0);
    if (v15 == 1)
    {
      v17 = (*((swift_isaMask & *v1) + 0x360))(v16);
      sub_100C5D58C();
      if (v18)
      {
        sub_100C5D8C4(v17, 0, 0);
      }

      else
      {
        v19 = [objc_opt_self() standardUserDefaults];
        v20 = sub_100131204();
        v21 = String._bridgeToObjectiveC()();
        [v19 setInteger:v20 forKey:v21];
      }
    }

    else
    {
      (*(v14 + 56))(v5, 1, 1, v13);
      sub_100C0B810(v5);
    }

    return;
  }
}

uint64_t sub_100C2DF34(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100C2DF8C(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  v8 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v29[-v9];
  v30[3] = &type metadata for CRLSendACopyBoardDataHandler;
  v30[4] = &off_1018A8B80;
  v11 = swift_allocObject();
  v30[0] = v11;
  v12 = a3[1];
  v11[1] = *a3;
  v11[2] = v12;
  v11[3] = a3[2];
  type metadata accessor for CRLDownloadSharedCopyAttempt();
  v13 = swift_allocObject();
  v14 = sub_10002A948(v30, &type metadata for CRLSendACopyBoardDataHandler);
  v15 = __chkstk_darwin(v14);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v18 + 16))(v17, v15);
  v19 = (v13 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_dataHandler);
  v19[3] = &type metadata for CRLSendACopyBoardDataHandler;
  v19[4] = &off_1018A8B80;
  v20 = swift_allocObject();
  *v19 = v20;
  v21 = v17[1];
  v20[1] = *v17;
  v20[2] = v21;
  v20[3] = v17[2];
  v22 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifier;
  v23 = type metadata accessor for CRLBoardIdentifier(0);
  v24 = *(*(v23 - 8) + 56);
  v24(v13 + v22, 1, 1, v23);
  v24(v13 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifierToOpen, 1, 1, v23);
  *(v13 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_downloadTask) = 0;
  *(v13 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_didEncounterUnsupportedContent) = 0;
  *(v13 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v25 = (v13 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_snapshotUpdateObservationToken);
  *v25 = 0u;
  v25[1] = 0u;
  *(v13 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_didConfirmBoardIsReadyToOpen) = 0;
  v26 = (v13 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardLibrary);
  *v26 = a2;
  v26[1] = &off_1018B0AB8;
  *(v13 + OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_delegate + 8) = &off_10189AB20;
  swift_unknownObjectWeakAssign();

  sub_100025530(a1, v10, type metadata accessor for CRLBoardIdentifier);
  v24(v10, 0, 1, v23);
  v27 = OBJC_IVAR____TtC8Freeform28CRLDownloadSharedCopyAttempt_boardIdentifier;
  swift_beginAccess();
  sub_10002C638(v10, v13 + v27, &unk_1019F52D0);
  swift_endAccess();
  sub_100005070(v30);
  return v13;
}

uint64_t sub_100C2E2D0(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10004FE64(a1, v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  sub_100025530(v5, v13 + v12, type metadata accessor for CRLBoardLibraryViewModel.Item);

  sub_10064191C(0, 0, v8, &unk_1014A0D30, v13);
}

id sub_100C2E4F4()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v13 - v3;
  result = *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window];
  if (result)
  {
    result = [result isUserInteractionEnabled];
    if (result)
    {
      v6 = objc_opt_self();
      v7 = String._bridgeToObjectiveC()();
      _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(4);
      sub_100006370(0, &qword_1019F54D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v6 sendEventInDomain:v7 lazily:1 eventPayload:isa];

      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      type metadata accessor for MainActor();
      v10 = v0;
      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = v10;
      sub_100641F30(0, 0, v4, &unk_1014A0CC8, v12);
    }
  }

  return result;
}

uint64_t sub_100C2E6E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_100C1FB50(a1);
}

uint64_t sub_100C2E798(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100C2E7E0()
{
  result = qword_101A15AB8;
  if (!qword_101A15AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15AB8);
  }

  return result;
}

void sub_100C2E834(void *a1)
{
  v2 = v1;
  if (sub_100AF3B84())
  {
    sub_10005013C();
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      *(v6 + 24) = a1;
      if (*(v5 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) == 1)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v1;
        *(v7 + 24) = a1;
        v8 = a1;
        v9 = v1;
        v10 = v8;
        sub_100C08AF8(sub_100C330BC, v7);
      }

      else
      {
        v13 = objc_opt_self();
        v14 = v2;
        v15 = a1;
        v16 = [v13 defaultCenter];
        v17 = swift_allocObject();
        *(v17 + 16) = 0;
        if (qword_1019F2748 != -1)
        {
          swift_once();
        }

        v18 = qword_101AD8948;
        v19 = [objc_opt_self() mainQueue];
        v20 = swift_allocObject();
        v20[2] = v17;
        v20[3] = v16;
        v20[4] = sub_100C330B4;
        v20[5] = v6;
        v24[4] = sub_1006EF73C;
        v24[5] = v20;
        v24[0] = _NSConcreteStackBlock;
        v24[1] = *"";
        v24[2] = sub_100059694;
        v24[3] = &unk_10189B3B8;
        v21 = _Block_copy(v24);

        v22 = v16;

        v23 = [v22 addObserverForName:v18 object:v5 queue:v19 usingBlock:v21];

        _Block_release(v21);

        swift_beginAccess();
        *(v17 + 16) = v23;

        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1019F20B0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlWarning;
    v12 = static os_log_type_t.info.getter();

    sub_100005404(v11, &_mh_execute_header, v12, "Skipping user activity from a newer version.", 44, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100C2EBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10004FE64(a1, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v12;
  sub_100025530(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for CRLBoardIdentifier);

  sub_100796D54(0, 0, v10, a3, v15);
}

uint64_t sub_100C2EDFC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  _s5BoardVMa(0);
  v2[7] = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  v2[8] = swift_task_alloc();
  type metadata accessor for UUID();
  v2[9] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v4;
  v2[13] = v3;

  return _swift_task_switch(sub_100C2EF44, v4, v3);
}

void sub_100C2EF44()
{
  v1 = *((swift_isaMask & **(v0 + 48)) + 0x1A0);
  v2 = v1();
  if (v2)
  {
    v29 = v1;
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 64);
    v6 = v2;
    v7 = *(*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);

    v8 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v9 = *&v7[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v10 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FE64(v9 + v10, v5, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10005117C(v5, type metadata accessor for CRLBoardCRDTData);
    v11 = (*&v7[v8] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v12 = *v11;
    v13 = v11[1];

    sub_10084BD4C(v4, v12, v13, v3);
    v14 = static UUID.== infix(_:_:)();
    v15 = *(v0 + 80);
    if (v14)
    {
      v16 = *(v0 + 40);
      v17 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
      v18 = *(v15 + v17);
      v19 = *(v15 + v17 + 8);
      v20 = (v16 + v17);
      if (v18 == *v20 && v19 == v20[1])
      {
        sub_10005117C(v15, type metadata accessor for CRLBoardIdentifier);
LABEL_12:

        v27 = (v29)(v26);

        v28 = *(v0 + 8);

        v28(v27);
        return;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10005117C(v15, type metadata accessor for CRLBoardIdentifier);
      if (v25)
      {
        goto LABEL_12;
      }
    }

    else
    {

      sub_10005117C(v15, type metadata accessor for CRLBoardIdentifier);
    }
  }

  sub_10005013C();
  if (v21)
  {
    v22 = v21;
    sub_1010AB99C(*(v0 + 40), *(v0 + 56));

    v23 = swift_task_alloc();
    *(v0 + 112) = v23;
    *v23 = v0;
    v23[1] = sub_100C2F320;
    v24 = *(v0 + 56);

    sub_100C1DA68(v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C2F320(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_100C2F500;
  }

  else
  {
    v4[16] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_100C2F448;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C2F448()
{
  v1 = v0[7];

  sub_10005117C(v1, _s5BoardVMa);
  v2 = v0[16];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100C2F500()
{
  v1 = *(v0 + 56);

  sub_10005117C(v1, _s5BoardVMa);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C2F5B8(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100C1F6B8(a1, v6, v7, v8, v1 + v5);
}

id sub_100C2F6B0(unsigned __int8 a1)
{
  v1 = a1;
  v2 = objc_opt_self();
  v3 = &selRef_longLongValue;
  v4 = [v2 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100896EA8();
  if (v1 != 2)
  {
    goto LABEL_17;
  }

  LOBYTE(v8) = sub_100EA63DC();
  v9 = [objc_opt_self() crl_iPadDevice];
  if (qword_1019F1798 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    if (v8)
    {
      if (v9)
      {
        v10 = qword_1019F17B0;

        if (v10 == -1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v12 = qword_1019F17A0;

        if (v12 == -1)
        {
LABEL_12:

          v13 = [v2 v3[17]];
          v14 = String._bridgeToObjectiveC()();
          v15 = String._bridgeToObjectiveC()();
          v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

          if (!v16)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v16 = String._bridgeToObjectiveC()();
          }

          v36[4] = sub_100C3355C;
          v36[5] = 0;
          v36[0] = _NSConcreteStackBlock;
          v36[1] = *"";
          v36[2] = sub_10068B39C;
          v36[3] = &unk_10189ADA0;
          v17 = _Block_copy(v36);

          v8 = [objc_opt_self() actionWithTitle:v16 style:0 handler:v17];
          _Block_release(v17);

          v3 = &selRef_longLongValue;
          goto LABEL_18;
        }
      }

      swift_once();
      goto LABEL_12;
    }

    if ((v9 & 1) == 0)
    {
      v18 = qword_1019F17A8;

      if (v18 == -1)
      {
        goto LABEL_16;
      }

LABEL_50:
      swift_once();
      goto LABEL_16;
    }

    v11 = qword_1019F17B8;

    if (v11 != -1)
    {
      goto LABEL_50;
    }

LABEL_16:

LABEL_17:
    v8 = 0;
LABEL_18:
    v19 = String._bridgeToObjectiveC()();

    v20 = String._bridgeToObjectiveC()();

    v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

    v36[0] = _swiftEmptyArrayStorage;
    if (v8)
    {
      v22 = v8;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v23 = [v2 v3[17]];
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

    if (!v26)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = String._bridgeToObjectiveC()();
    }

    v27 = [objc_opt_self() actionWithTitle:v26 style:0 handler:0];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_44:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v36[0];
    v28 = v36[0] >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v28)
    {
      break;
    }

    v29 = 0;
    v30 = v2 & 0xC000000000000001;
    do
    {
      if (v30)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v31 = *(v2 + 8 * v29 + 32);
      }

      v32 = v31;
      v3 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      [v21 addAction:v31];

      ++v29;
    }

    while (v3 != v28);

    if (v30)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_39;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v2 + 32);
LABEL_39:
      v28 = v33;
      goto LABEL_41;
    }

    __break(1u);
LABEL_48:
    v35 = v9;
    swift_once();
    v9 = v35;
  }

LABEL_41:

  [v21 setPreferredAction:v28];

  return v21;
}

void *sub_100C2FDB4(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v30 = &v29 - v4;
  v31 = type metadata accessor for URL();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v31);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.sceneManagement;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = type metadata accessor for CRLSceneDelegate();
  *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate);
  *(inited + 32) = v1;
  v16 = v1;
  v17 = static os_log_type_t.default.getter();
  sub_100005404(v14, &_mh_execute_header, v17, "Scene delegate (%p) incoming scene with openURLContents", 55, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  result = sub_10004F900(a1);
  if (result)
  {
    v19 = result;
    v20 = [result URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = *(v5 + 32);
    v22 = v10;
    v23 = v31;
    v21(v13, v22, v31);
    if ((v16[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_boardOpenInFlight] & 1) == 0)
    {
      v16[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_boardOpenInFlight] = 1;
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
      (*(v5 + 16))(v7, v13, v23);
      type metadata accessor for MainActor();
      v25 = v16;
      v26 = static MainActor.shared.getter();
      v27 = (*(v5 + 80) + 40) & ~*(v5 + 80);
      v28 = swift_allocObject();
      *(v28 + 2) = v26;
      *(v28 + 3) = &protocol witness table for MainActor;
      *(v28 + 4) = v25;
      v23 = v31;
      v21(&v28[v27], v7, v31);
      sub_10064191C(0, 0, v30, &unk_1014A0F58, v28);
    }

    return (*(v5 + 8))(v13, v23);
  }

  return result;
}

void sub_100C3018C()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v37 - v2;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*((swift_isaMask & *v0) + 0x1A0))(v12);
  if (v15)
  {
    v16 = v15;
    v39 = v0;
    v40 = v3;
    if (qword_1019F2220 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.sceneManagement;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v18 = *&v16[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator];
    v38 = v16;
    v19 = *(v18 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v20 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v21 = *&v19[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v22 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FE64(v21 + v22, v6, type metadata accessor for CRLBoardCRDTData);
    v23 = v19;
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10005117C(v6, type metadata accessor for CRLBoardCRDTData);
    v24 = (*&v19[v20] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v25 = *v24;
    v26 = v24[1];

    sub_10084BD4C(v10, v25, v26, v14);

    (*(v8 + 16))(v10, v14, v7);
    sub_10005117C(v14, type metadata accessor for CRLBoardIdentifier);
    v27 = UUID.uuidString.getter();
    v29 = v28;
    (*(v8 + 8))(v10, v7);
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v27;
    *(inited + 40) = v29;
    v30 = static os_log_type_t.default.getter();
    sub_100005404(v37, &_mh_execute_header, v30, "Tearing down the board view controller after disconnecting the scene for identifier %{public}@", 94, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v31 = type metadata accessor for TaskPriority();
    v32 = v40;
    (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
    type metadata accessor for MainActor();
    v33 = v39;
    v34 = v38;
    v35 = static MainActor.shared.getter();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = &protocol witness table for MainActor;
    v36[4] = v33;
    v36[5] = v34;
    sub_10064191C(0, 0, v32, &unk_1014A0F48, v36);
  }
}

uint64_t sub_100C30650(void *a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v18 - v5;
  v7 = [a1 type];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  v12 = _findStringSwitchCase(cases:string:)(&off_101876740, v11);

  if (!v12)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    type metadata accessor for MainActor();
    v15 = v1;
    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v15;
    sub_100641F30(0, 0, v6, &unk_1014A0F38, v17);
  }

  return result;
}

id sub_100C30B90()
{
  if ([objc_opt_self() isMainThread])
  {
    v0 = sub_100C13ED8();
    sub_100C140B8(v0);
  }

  else
  {
    v24 = objc_opt_self();
    v1 = [v24 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v25);
    StaticString.description.getter();
    v2 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    v4 = [v3 lastPathComponent];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v1;
    v10 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v10;
    v11 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v11;
    *(inited + 72) = v2;
    *(inited + 136) = &type metadata for String;
    v12 = sub_1000053B0();
    *(inited + 112) = v5;
    *(inited + 120) = v7;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v12;
    *(inited + 152) = 611;
    v13 = v25;
    *(inited + 216) = v10;
    *(inited + 224) = v11;
    *(inited + 192) = v13;
    v14 = v2;
    v15 = v13;
    v16 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v17, "Expected stateRestorationActivity(for:) to be called on the main thread.", 72, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v18 = swift_allocObject();
    v18[2] = 8;
    v18[3] = 0;
    v18[4] = 0;
    v18[5] = 0;
    v19 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    [v24 handleFailureInFunction:v20 file:v21 lineNumber:611 isFatal:0 format:v22 args:v19];
  }

  return sub_100C13ED8();
}

uint64_t sub_100C30F90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_100C3102C, v4, v3);
}

uint64_t sub_100C3102C()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v0[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[10] = v5;
  v0[11] = v4;

  return _swift_task_switch(sub_100C310D8, v5, v4);
}

uint64_t sub_100C310D8()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = static MainActor.shared.getter();
  v0[12] = v3;
  v4 = swift_task_alloc();
  v0[13] = v4;
  v4[2] = v2;
  v4[3] = &unk_1014A0E40;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_100C31204;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 15, v3, &protocol witness table for MainActor, 0xD000000000000035, 0x8000000101592650, sub_100C3278C, v4, &type metadata for Bool);
}

uint64_t sub_100C31204()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100C31364, v3, v2);
}

uint64_t sub_100C31364()
{

  *(v0 + 121) = *(v0 + 120);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_100C313D8, v1, v2);
}

uint64_t sub_100C313D8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 121);

  return v1(v2);
}

id sub_100C3143C(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019FB750);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window;
  result = *&v1[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window];
  if (result)
  {
    result = [result isUserInteractionEnabled];
    if (result)
    {
      v13 = *&v1[v11];
      if (!v13 || (v14 = [v13 rootViewController]) == 0 || (v15 = v14, v16 = objc_msgSend(v14, "crl_windowWrapper"), v15, !v16) || (v17 = objc_msgSend(v16, "newWrapperBeginningIgnoringUserInteractionSafely"), v16, !v17))
      {
        if (qword_1019F20A8 != -1)
        {
          swift_once();
        }

        v18 = static OS_os_log.crlError;
        v19 = static os_log_type_t.error.getter();
        sub_100005404(v18, &_mh_execute_header, v19, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
        v17 = 0;
      }

      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      v21 = type metadata accessor for TaskPriority();
      (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
      sub_10004FE64(a1, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardLibraryViewModel.Item);
      type metadata accessor for MainActor();

      v22 = v1;
      v23 = static MainActor.shared.getter();
      v24 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v25 = (v5 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      *(v26 + 16) = v23;
      *(v26 + 24) = &protocol witness table for MainActor;
      sub_100025530(v6, v26 + v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
      *(v26 + v25) = v20;
      *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
      sub_10064191C(0, 0, v10, &unk_1014A0D50, v26);
    }
  }

  return result;
}

void sub_100C31778()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_100051290();
  v15 = [v4 presentedViewController];

  v5 = v15;
  if (v15)
  {
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window];
    if (v6 && [v6 isUserInteractionEnabled])
    {
      v7 = objc_opt_self();
      v8 = String._bridgeToObjectiveC()();
      _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(4);
      sub_100006370(0, &qword_1019F54D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v7 sendEventInDomain:v8 lazily:1 eventPayload:isa];

      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
      type metadata accessor for MainActor();
      v11 = v0;
      v12 = static MainActor.shared.getter();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = &protocol witness table for MainActor;
      v13[4] = v11;
      sub_100641F30(0, 0, v3, &unk_1014A0D40, v13);
    }
  }
}

uint64_t sub_100C319C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_100C22CE4(a1);
}

uint64_t sub_100C31A74(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_100C2199C(a1, v7, v8, v1 + v5, v9, v10);
}

unint64_t sub_100C31BAC()
{
  result = qword_101A15AD8;
  if (!qword_101A15AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15AD8);
  }

  return result;
}

void sub_100C31C00(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1010CF278(a1, a2, v2 + v6, v7);
}

uint64_t sub_100C31CAC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100C31D04(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100C24808(a1, v6, v7, v8, v1 + v5);
}

void sub_100C31DFC()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100C25C88(v2, v3);
}

uint64_t sub_100C31E60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100C244A8(a1, v4, v5, v6);
}

uint64_t sub_100C31F14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100C23DC8(a1, v4, v5, v6, v7);
}

uint64_t sub_100C31FD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100C23A78(a1, v4, v5, v6);
}

uint64_t sub_100C3208C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100C3218C(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100C27094(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100C32284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100C26D34(a1, v4, v5, v6);
}

uint64_t sub_100C32338(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100C264D0(a1, v4, v5, v7, v6);
}

uint64_t sub_100C323F8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100C32444(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100C261F4(a1, v4, v5, v6);
}

uint64_t sub_100C324F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100C2AD44(a1, v4, v5, v7, v6);
}

uint64_t sub_100C325C0(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100C1E2EC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100C326F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_100C2DA64(a1, v4);
}

uint64_t sub_100C327A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100C1B170(a1, v4, v5, v7, v6);
}

uint64_t sub_100C32874(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_101021E70(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_100C32950()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100C32998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100C12430(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100C32A6C(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100C10128(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100C32B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100C0E4C0(a1, v4, v5, v6);
}

uint64_t sub_100C32C44(uint64_t a1)
{
  v4 = *(sub_1005B981C(&qword_1019F6E18) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100C09894(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100C32DCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_100C11CB4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100C32EA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100C32EE8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100C32F30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100C114C8(a1, v4, v5, v7, v6);
}

unint64_t sub_100C32FF0()
{
  result = qword_101A15B80;
  if (!qword_101A15B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15B80);
  }

  return result;
}

uint64_t sub_100C33044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A15AC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C330C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100C1D138(a1, v4, v5, v7, v6);
}

uint64_t sub_100C33184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100C139EC(a1, v4, v5, v6);
}

uint64_t sub_100C33238()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100C33280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100C130D8(a1, v4, v5, v7, v6);
}

uint64_t sub_100C33340()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100C3340C(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100C12D94(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100C335E0(SEL *a1, uint64_t (*a2)(uint64_t))
{
  v4 = (**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 464);
  v5 = *v4;
  v6 = (*v4)();
  if ((v8 & 0x100) != 0 && (!(v6 | v7) ? (v9 = v8 == 0) : (v9 = 0), !v9 && (v6 == 1 ? (v10 = v7 == 0) : (v10 = 0), v10 ? (v11 = v8 == 0) : (v11 = 0), v11)))
  {
    v14 = (*((swift_isaMask & *v2) + 0x530))();
    v15 = [v14 *a1];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v16;
  }

  else
  {
    v12 = (v5)(v6);

    return a2(v12);
  }
}

uint64_t sub_100C337D0()
{
  if ((*((swift_isaMask & *v0) + 0x548))())
  {
    return 0;
  }

  v2 = (*((swift_isaMask & *v0) + 0x530))();
  v3 = [v2 bezierPath];

  LODWORD(v2) = [v3 isLineSegment];
  return v2 ^ 1;
}

uint64_t sub_100C338A4(uint64_t a1)
{
  swift_getObjectType();

  return sub_100C37E20(a1, v1);
}

uint64_t sub_100C338F4(char *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, ProtocolDescriptor *a5)
{
  ObjectType = swift_getObjectType();

  return sub_100C38590(a1, a2, a3, a4, v5, ObjectType, a5);
}

void sub_100C33968(void *a1)
{
  v2 = v1;
  v3 = (*((swift_isaMask & *v1) + 0x578))();
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 65;
    v17 = v37;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "Should not try to set a shadow on a shape in a freehand drawing.", 64, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:65 isFatal:0 format:v26 args:v23];

    return;
  }

  if ((sub_1011255D4(v3) & 1) == 0)
  {
    v32 = a1;
    goto LABEL_11;
  }

  v27 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v28 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 440);

  v30 = v28(v29);

  if (v30)
  {
    if (a1)
    {
      sub_100006370(0, &unk_101A11F40);
      v35 = a1;
      v31 = static NSObject.== infix(_:_:)();

      if (v31)
      {
        v32 = v35;
LABEL_11:

        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v33 = *(**(v2 + v27) + 448);
  v34 = a1;

  v33(a1);
}

uint64_t sub_100C33EC8()
{
  v1 = (*((swift_isaMask & *v0) + 0x530))();
  v2 = [v1 bezierPath];

  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v7 = [v2 isLineSegment];

  if (v6 >= 0.00000001)
  {
    return (v4 >= 0.00000001) & ~v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C33F94()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v2 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 368);

  v4 = v2(v3);

  if (v4)
  {
    v6 = 0;
  }

  else if ((*((swift_isaMask & *v0) + 0x548))(v5))
  {
    v7 = *(**(v0 + v1) + 392);

    LOBYTE(v7) = v7(v8);

    v6 = v7 & (v4 ^ 1);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_100C340BC()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 392);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    v3 = (*((swift_isaMask & *v0) + 0x330))(v3);
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  v4 = *((swift_isaMask & *v0) + 0x530);
  v5 = (v4)(v3);
  sub_100006370(0, &qword_101A10748);
  v6 = [v5 isKindOfClass:swift_getObjCClassFromMetadata()];

  if (v6)
  {
    return 1;
  }

  v8 = v4();
  sub_100006370(0, &unk_101A10750);
  v9 = [v8 isKindOfClass:swift_getObjCClassFromMetadata()];

  return v9;
}

uint64_t sub_100C34258()
{
  v1 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = *(v1 + 840);

    v5 = v3(v4);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100C34304(void *a1)
{
  if (sub_1011255D0(a1))
  {
    v2 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (swift_conformsToProtocol2())
    {
      v3 = *(v2 + 848);

      v3(a1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

id sub_100C343F4()
{
  v1 = (*((swift_isaMask & *v0) + 0x530))();
  v2 = [v1 bezierPath];

  v3 = [v2 isLineSegment];
  return v3;
}

uint64_t sub_100C34488()
{
  v1 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v6 = result;
    v7 = *(result + 16);

    v7(v4, v6);

    sub_1005B981C(&unk_101A10690);
    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v3, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v16 = v23;
    v17 = v24[0];
    v20 = v24[3];
    v21 = v24[4];
    v18 = v24[1];
    v19 = v24[2];
    v22 = v25;
    if (!v25)
    {
      return 0;
    }

    sub_100006370(0, &qword_101A00EB0);
    v14[3] = v20;
    v14[4] = v21;
    v15 = v22;
    v14[0] = v17;
    v14[1] = v18;
    v14[2] = v19;
    sub_10074A990(v24, &v13);
    v8 = sub_1008B0490(v14);
    if (BYTE8(v23) == 1)
    {
      if (qword_1019F2268 != -1)
      {
        swift_once();
      }

      v9 = static OS_os_log.persistence;
      v10 = static os_log_type_t.info.getter();
      sub_100005404(v9, &_mh_execute_header, v10, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
    }

    v11 = [objc_allocWithZone(CRLColorFill) initWithColor:v8];

    sub_10000CAAC(&v16, &qword_1019FFF80);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100C34730(void *a1)
{
  if (sub_1011255D0(a1))
  {
    if (a1)
    {
      v2 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      v3 = swift_conformsToProtocol2();
      if (v3)
      {
        v4 = v3;

        v5 = a1;
        v6 = sub_101247234(v5, &v16);
        v7 = (*(v4 + 32))(v15, v2, v4, v6);
        v14[4] = v20;
        v14[5] = v21;
        v14[6] = v22;
        v14[0] = v16;
        v14[1] = v17;
        v14[2] = v18;
        v14[3] = v19;
        sub_1005B981C(&unk_101A10690);
        CRRegister.wrappedValue.setter();
        v7(v15, 0);

LABEL_10:

        return;
      }

      __break(1u);
    }

    else
    {
      v8 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      v9 = swift_conformsToProtocol2();
      if (v9)
      {
        v10 = v9;
        v11 = *(v9 + 32);

        v12 = v11(v14, v8, v10);
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        sub_1005B981C(&unk_101A10690);
        CRRegister.wrappedValue.setter();
        v12(v14, 0);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_100C349A0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for CRLFreehandDrawingItem();
    if ([v1 isKindOfClass:swift_getObjCClassFromMetadata()])
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
      *(inited + 152) = 152;
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
      sub_100005404(v10, &_mh_execute_header, v19, "Regular shapes should not be inside freehand drawings.", 54, 2, _swiftEmptyArrayStorage);

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

      [v2 handleFailureInFunction:v22 file:v23 lineNumber:152 isFatal:0 format:v24 args:v21];
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_100C34D80()
{
  v1 = v0;
  v2 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((*((swift_isaMask & *v0) + 0x578))(v3) & 1) == 0)
  {
    v83 = objc_opt_self();
    v6 = [v83 _atomicIncrementAssertCount];
    *&v92 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v92);
    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    *(inited + 32) = v6;
    v13 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    v15 = v82;
    *(inited + 72) = v82;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v81;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 158;
    v17 = v92;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v17;
    v18 = v15;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v21, "Should only ask about being a fill for a freehand drawing on freehand drawing shapes.", 85, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v83 handleFailureInFunction:v24 file:v25 lineNumber:158 isFatal:0 format:v26 args:v23];
  }

  v27 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v29 = result;
    v30 = *(result + 16);

    v30(v27, v29);

    sub_1005B981C(&unk_101A10690);
    CRRegister.wrappedValue.getter();
    v31 = sub_100C3B20C(v5, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v85 = v92;
    v86 = v93[0];
    v90 = v93[4];
    v91 = v94;
    v88 = v93[2];
    v89 = v93[3];
    v87 = v93[1];
    if (v94)
    {
      sub_100006370(0, &qword_101A00EB0);
      v95[2] = v88;
      v95[3] = v89;
      v95[4] = v90;
      v96 = v91;
      v95[0] = v86;
      v95[1] = v87;
      sub_10074A990(v93, v84);
      v32 = sub_1008B0490(v95);
      if (BYTE8(v92) == 1)
      {
        if (qword_1019F2268 != -1)
        {
          swift_once();
        }

        v33 = static OS_os_log.persistence;
        v34 = static os_log_type_t.info.getter();
        sub_100005404(v33, &_mh_execute_header, v34, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
      }

      v35 = [objc_allocWithZone(CRLColorFill) initWithColor:v32];

      v31 = sub_10000CAAC(&v85, &qword_1019FFF80);
    }

    else
    {
      v35 = 0;
    }

    v36 = (*((swift_isaMask & *v1) + 0x4D8))(v31);
    v37 = v36;
    if (v35)
    {
      if (v36)
      {
        if ([v36 isNullStroke])
        {
        }

        else
        {
          v83 = objc_opt_self();
          v59 = [v83 _atomicIncrementAssertCount];
          v84[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v84);
          StaticString.description.getter();
          v82 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v60 = String._bridgeToObjectiveC()();

          v61 = [v60 lastPathComponent];

          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v64 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v65 = swift_allocObject();
          *(v65 + 16) = xmmword_10146CA70;
          *(v65 + 56) = &type metadata for Int32;
          *(v65 + 64) = &protocol witness table for Int32;
          *(v65 + 32) = v59;
          v66 = sub_100006370(0, &qword_1019F4D30);
          *(v65 + 96) = v66;
          v67 = sub_1005CF04C();
          *(v65 + 104) = v67;
          v68 = v82;
          *(v65 + 72) = v82;
          *(v65 + 136) = &type metadata for String;
          v69 = sub_1000053B0();
          *(v65 + 112) = v81;
          *(v65 + 120) = v63;
          *(v65 + 176) = &type metadata for UInt;
          *(v65 + 184) = &protocol witness table for UInt;
          *(v65 + 144) = v69;
          *(v65 + 152) = 165;
          v70 = v84[0];
          *(v65 + 216) = v66;
          *(v65 + 224) = v67;
          *(v65 + 192) = v70;
          v71 = v68;
          v72 = v70;
          v73 = static os_log_type_t.error.getter();
          sub_100005404(v64, &_mh_execute_header, v73, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v65);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v74 = static os_log_type_t.error.getter();
          sub_100005404(v64, &_mh_execute_header, v74, "Should not have both fill and stroke.", 37, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v75 = swift_allocObject();
          v75[2] = 8;
          v75[3] = 0;
          v75[4] = 0;
          v75[5] = 0;
          v76 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v77 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v78 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v79 = String._bridgeToObjectiveC()();

          [v83 handleFailureInFunction:v77 file:v78 lineNumber:165 isFatal:0 format:v79 args:v76];
        }
      }

      v37 = v35;
    }

    else if (!v36)
    {
      v83 = objc_opt_self();
      v38 = [v83 _atomicIncrementAssertCount];
      v84[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v84);
      StaticString.description.getter();
      v39 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v40 = String._bridgeToObjectiveC()();

      v41 = [v40 lastPathComponent];

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v45 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v46 = swift_initStackObject();
      *(v46 + 16) = xmmword_10146CA70;
      *(v46 + 56) = &type metadata for Int32;
      *(v46 + 64) = &protocol witness table for Int32;
      *(v46 + 32) = v38;
      v47 = sub_100006370(0, &qword_1019F4D30);
      *(v46 + 96) = v47;
      v48 = sub_1005CF04C();
      *(v46 + 104) = v48;
      *(v46 + 72) = v39;
      *(v46 + 136) = &type metadata for String;
      v49 = sub_1000053B0();
      *(v46 + 112) = v42;
      *(v46 + 120) = v44;
      *(v46 + 176) = &type metadata for UInt;
      *(v46 + 184) = &protocol witness table for UInt;
      *(v46 + 144) = v49;
      *(v46 + 152) = 171;
      v50 = v84[0];
      *(v46 + 216) = v47;
      *(v46 + 224) = v48;
      *(v46 + 192) = v50;
      v51 = v39;
      v52 = v50;
      v53 = static os_log_type_t.error.getter();
      sub_100005404(v45, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v46);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v54 = static os_log_type_t.error.getter();
      sub_100005404(v45, &_mh_execute_header, v54, "Should have a fill or a stroke.", 31, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v55 = swift_allocObject();
      v55[2] = 8;
      v55[3] = 0;
      v55[4] = 0;
      v55[5] = 0;
      v56 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v58 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v37 = String._bridgeToObjectiveC()();

      [v83 handleFailureInFunction:v57 file:v58 lineNumber:171 isFatal:0 format:v37 args:v56];
    }

    return v35 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100C35B0C()
{
  v1 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (((*((swift_isaMask & *v0) + 0x578))(v2) & 1) == 0)
  {
    v5 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    result = swift_conformsToProtocol2();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = *(result + 16);

    v8(v5, v7);

    sub_1005B981C(&unk_101A10680);
    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v4, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v9 = v21;
    if (v21)
    {
      v10 = v17[0];
      v11 = v17[1];
      v12 = v18;
      v13 = v19;
      v14 = v20;
      v16[0] = v18 & 1;
      LOBYTE(v18) = v18 & 1;
      HIDWORD(v18) = HIDWORD(v12);
      BYTE4(v19) &= 1u;
      sub_100006370(0, &qword_101A14D70);
      v15 = sub_1009CE208(v17);
      sub_100810A00(v10, v11, v12, v13, v14, v9);
      return v15;
    }
  }

  return 0;
}

void sub_100C35D48(void *a1)
{
  if (sub_1011255D0(a1))
  {
    if ((*((swift_isaMask & *v1) + 0x578))())
    {
      v2 = objc_opt_self();
      v3 = [v2 _atomicIncrementAssertCount];
      *&v37 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v37);
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
      *(inited + 152) = 194;
      v15 = v37;
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
      sub_100005404(v10, &_mh_execute_header, v19, "Should not try to set a line end on a shape in a freehand drawing.", 66, 2, _swiftEmptyArrayStorage);

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

      [v2 handleFailureInFunction:v22 file:v23 lineNumber:194 isFatal:0 format:v24 args:v21];

      return;
    }

    v25 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v26 = swift_conformsToProtocol2();
    if (a1)
    {
      if (v26)
      {

        v27 = a1;
        sub_1009CE67C(v27, &v37);
        *v33 = v39;
        v28 = v40;

        v29 = (*(v26 + 32))(v36, v25, v26);
        v34[0] = v37;
        v34[1] = v38;
        v34[2] = *v33;
        v35 = v28;
        type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
        sub_1005B981C(&unk_101A10680);
        CRRegister.wrappedValue.setter();
        v29(v36, 0);

LABEL_14:

        return;
      }

      __break(1u);
    }

    else if (v26)
    {
      v30 = *(v26 + 32);

      v31 = v30(v34, v25, v26);
      type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
      v37 = 0u;
      sub_1005B981C(&unk_101A10680);
      CRRegister.wrappedValue.setter();
      v31(v34, 0);
      goto LABEL_14;
    }

    __break(1u);
    return;
  }
}

uint64_t sub_100C3632C()
{
  v1 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (((*((swift_isaMask & *v0) + 0x578))(v2) & 1) == 0)
  {
    v5 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    result = swift_conformsToProtocol2();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = *(result + 16);

    v8(v5, v7);

    sub_1005B981C(&unk_101A10680);
    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v4, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v9 = v21;
    if (v21)
    {
      v10 = v17[0];
      v11 = v17[1];
      v12 = v18;
      v13 = v19;
      v14 = v20;
      v16[0] = v18 & 1;
      LOBYTE(v18) = v18 & 1;
      HIDWORD(v18) = HIDWORD(v12);
      BYTE4(v19) &= 1u;
      sub_100006370(0, &qword_101A14D70);
      v15 = sub_1009CE208(v17);
      sub_100810A00(v10, v11, v12, v13, v14, v9);
      return v15;
    }
  }

  return 0;
}

void sub_100C36568(void *a1)
{
  if (sub_1011255D0(a1))
  {
    if ((*((swift_isaMask & *v1) + 0x578))())
    {
      v2 = objc_opt_self();
      v3 = [v2 _atomicIncrementAssertCount];
      *&v37 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v37);
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
      *(inited + 152) = 222;
      v15 = v37;
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
      sub_100005404(v10, &_mh_execute_header, v19, "Should not try to set a line end on a shape in a freehand drawing.", 66, 2, _swiftEmptyArrayStorage);

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

      [v2 handleFailureInFunction:v22 file:v23 lineNumber:222 isFatal:0 format:v24 args:v21];

      return;
    }

    v25 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v26 = swift_conformsToProtocol2();
    if (a1)
    {
      if (v26)
      {

        v27 = a1;
        sub_1009CE67C(v27, &v37);
        *v33 = v39;
        v28 = v40;

        v29 = (*(v26 + 32))(v36, v25, v26);
        v34[0] = v37;
        v34[1] = v38;
        v34[2] = *v33;
        v35 = v28;
        type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
        sub_1005B981C(&unk_101A10680);
        CRRegister.wrappedValue.setter();
        v29(v36, 0);

LABEL_14:

        return;
      }

      __break(1u);
    }

    else if (v26)
    {
      v30 = *(v26 + 32);

      v31 = v30(v34, v25, v26);
      type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
      v37 = 0u;
      sub_1005B981C(&unk_101A10680);
      CRRegister.wrappedValue.setter();
      v31(v34, 0);
      goto LABEL_14;
    }

    __break(1u);
    return;
  }
}

uint64_t sub_100C36B4C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;

  sub_1009B27C4(sub_100C3BE48, v0);

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void *sub_100C36BE4@<X0>(uint64_t *a1@<X8>)
{
  sub_10109F9F8(v1, 1, v5);
  a1[3] = &type metadata for CRLShapePresetData;
  a1[4] = sub_100B6D5F0();
  v3 = swift_allocObject();
  *a1 = v3;
  return memcpy((v3 + 16), v5, 0x258uLL);
}

id sub_100C36F70(void *a1, uint64_t a2, SEL *a3, void (*a4)(uint64_t))
{
  v7 = (**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 464);
  v8 = *v7;
  v9 = (*v7)();
  if ((v11 & 0x100) != 0 && (!(v9 | v10) ? (v12 = v11 == 0) : (v12 = 0), !v12 && (v9 == 1 ? (v13 = v10 == 0) : (v13 = 0), v13 ? (v14 = v11 == 0) : (v14 = 0), v14)))
  {
    v18 = *((swift_isaMask & *a1) + 0x530);
    v19 = a1;
    v20 = v18();
    v21 = [v20 *a3];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = (v8)(v9);
    a4(v15);
  }

  v16 = String._bridgeToObjectiveC()();

  return v16;
}

id sub_100C37418(void *a1, uint64_t a2, SEL *a3)
{
  v4 = *((swift_isaMask & *a1) + 0x530);
  v5 = a1;
  v6 = v4();
  v7 = [v6 bezierPath];

  v8 = [v7 *a3];
  return v8;
}

void *sub_100C377B0(void *result, uint64_t a2)
{
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v3 = [result isTailEndOnLeft];
      result = swift_beginAccess();
      *(a2 + 16) = v3;
    }
  }

  return result;
}

id sub_100C37D5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLShapeItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLShapeItem()
{
  result = qword_101A15C28;
  if (!qword_101A15C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100C37E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  v10 = sub_1005B981C(&qword_101A15C38);
  __chkstk_darwin(v10 - 8);
  v12 = &v57 - v11;
  type metadata accessor for CRLShapeItem();
  v59 = a1;
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v57 = v4;
    v58 = v12;
    v15 = **(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      v17 = v16;
      v18 = *(v16 + 16);
      swift_unknownObjectRetain();

      v18(v15, v17);

      v19 = **(v14 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      v20 = swift_conformsToProtocol2();
      if (v20)
      {
        v21 = v20;
        v22 = *(v20 + 16);

        v22(v19, v21);

        sub_100C3B26C();
        v23 = v58;
        CRType.observableDifference(from:)();
        sub_100C3B20C(v6, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
        sub_100C3B20C(v9, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
        v24 = sub_1005B981C(&qword_101A15C48);
        if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
        {
          v25 = _swiftEmptyArrayStorage;
          if (!_swiftEmptyArrayStorage[2])
          {

            swift_unknownObjectRelease();
            v26 = _swiftEmptyDictionarySingleton;
LABEL_11:
            sub_10000CAAC(v23, &qword_101A15C38);
            return v26;
          }
        }

        else
        {
          v25 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
          v28 = *(v25 + 2);
          v27 = *(v25 + 3);
          if (v28 >= v27 >> 1)
          {
            v25 = sub_100024CBC((v27 > 1), v28 + 1, 1, v25);
          }

          *(v25 + 2) = v28 + 1;
          v29 = &v25[16 * v28];
          strcpy(v29 + 32, "shapeStyleData");
          v29[47] = -18;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = _swiftEmptyDictionarySingleton;
        sub_100A9B080(v25, 5, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();
        v26 = v60;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v32 = objc_opt_self();
  v33 = [v32 _atomicIncrementAssertCount];
  v60 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v60);
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
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v33;
  v42 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v42;
  v43 = sub_1005CF04C();
  *(inited + 104) = v43;
  *(inited + 72) = v34;
  *(inited + 136) = &type metadata for String;
  v44 = sub_1000053B0();
  *(inited + 112) = v37;
  *(inited + 120) = v39;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v44;
  *(inited + 152) = 325;
  v45 = v60;
  *(inited + 216) = v42;
  *(inited + 224) = v43;
  *(inited + 192) = v45;
  v46 = v34;
  v47 = v45;
  v48 = static os_log_type_t.error.getter();
  sub_100005404(v40, &_mh_execute_header, v48, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v49 = static os_log_type_t.error.getter();
  sub_100005404(v40, &_mh_execute_header, v49, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
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
  v54 = String._bridgeToObjectiveC()();

  [v32 handleFailureInFunction:v52 file:v53 lineNumber:325 isFatal:1 format:v54 args:v51];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v55, v56);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100C38590(char *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void *a5, uint64_t a6, ProtocolDescriptor *a7)
{
  v343 = a6;
  v344 = a7;
  v345 = a5;
  v328 = a4;
  *&v332[8] = a2;
  v340 = a1;
  v336 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v336);
  v330 = &v305 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v324 = &v305 - v10;
  __chkstk_darwin(v11);
  v326 = &v305 - v12;
  __chkstk_darwin(v13);
  v329 = &v305 - v14;
  __chkstk_darwin(v15);
  v327 = &v305 - v16;
  __chkstk_darwin(v17);
  v19 = &v305 - v18;
  __chkstk_darwin(v20);
  v22 = &v305 - v21;
  __chkstk_darwin(v23);
  v25 = &v305 - v24;
  __chkstk_darwin(v26);
  v28 = &v305 - v27;
  __chkstk_darwin(v29);
  v31 = &v305 - v30;
  __chkstk_darwin(v32);
  v34 = &v305 - v33;
  __chkstk_darwin(v35);
  v37 = &v305 - v36;
  __chkstk_darwin(v38);
  v40 = &v305 - v39;
  v41 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v41 - 8);
  v342 = &v305 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v341 = &v305 - v44;
  v339 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v339);
  v338 = &v305 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v337 = (&v305 - v47);
  v335 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v335);
  v334 = &v305 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v333 = &v305 - v50;
  if (a3 != 5)
  {
    if (a3)
    {
      v301 = v340;
      v302 = *&v332[8];
      v303 = v328;
      v304 = v345;

      return sub_1009BE298(v301, v302, a3, v303, v304);
    }

    type metadata accessor for CRLShapeItem();
    result = swift_dynamicCastClass();
    v52 = *&v332[8];
    if (!result)
    {
      return result;
    }

    v331 = result;
    v336 = *(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    *&v332[16] = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
    result = swift_conformsToProtocol2();
    if (result)
    {
      v53 = *(v52 + 16);
      if (v53)
      {
        *v332 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
        swift_unknownObjectRetain();

        v54 = (v52 + 40);
        v55 = v334;
        while (1)
        {
          v60 = *(v54 - 1) == 0x6641746E65726170 && *v54 == 0xEE007974696E6966;
          if (v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v343 = v54;
            v344 = v53;
            v61 = *(v345 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
            result = swift_conformsToProtocol2();
            if (!result)
            {
              goto LABEL_134;
            }

            v62 = v333;
            (*(*v336 + 752))();

            sub_1005B981C(&unk_101A0F410);
            v63 = v337;
            CRRegister.wrappedValue.getter();
            sub_10000CAAC(v62, &unk_101A0F400);
            v64 = v339;
            v65 = v341;
            sub_100C3B1A8(v63 + *(v339 + 20), v341);
            v66 = sub_100C3B20C(v63, type metadata accessor for CRLShapeItemParentAffinity);
            (*(*v61 + 752))(v66);
            v67 = v338;
            CRRegister.wrappedValue.getter();
            sub_10000CAAC(v55, &unk_101A0F400);
            v68 = v67 + *(v64 + 20);
            v69 = v342;
            sub_100C3B1A8(v68, v342);
            sub_100C3B20C(v67, type metadata accessor for CRLShapeItemParentAffinity);
            v70 = sub_100C48FE0(v65, v69);
            sub_100C3B20C(v69, type metadata accessor for CRLPathSourceData);
            sub_100C3B20C(v65, type metadata accessor for CRLPathSourceData);
            if (v70)
            {
            }

            else
            {
              v56 = *(*v61 + 864);

              v56(v57);

              v59 = (*((swift_isaMask & *v345) + 0x530))(v58);
              *(&v376[1] + 1) = sub_100006370(0, &qword_101A031A8);
              *&v376[0] = v59;
              sub_10000BE14(v376, v375, &unk_1019F4D00);
              swift_beginAccess();
              sub_100BC1F00(v375, 21);
              swift_endAccess();

              sub_10000CAAC(v376, &unk_1019F4D00);
            }

            v54 = v343;
            v53 = v344;
          }

          v54 += 2;
          v53 = (v53 - 1);
          if (!v53)
          {
            goto LABEL_126;
          }
        }
      }

      swift_unknownObjectRetain();

LABEL_126:
      swift_unknownObjectRetain();
      sub_100EB1AD8(v340, *&v332[8], 0, v331, v345);

      return swift_unknownObjectRelease_n();
    }

LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v325 = v40;
  v312 = v34;
  v317 = v25;
  v318 = v31;
  v315 = v22;
  v316 = v28;
  v322 = v19;
  type metadata accessor for CRLShapeItem();
  result = swift_dynamicCastClass();
  v71 = *&v332[8];
  if (!result)
  {
    return result;
  }

  v342 = *(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v344 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
  result = swift_conformsToProtocol2();
  v341 = result;
  if (!result)
  {
LABEL_145:
    __break(1u);
    return result;
  }

  v321 = *(v71 + 16);
  if (!v321)
  {
    return result;
  }

  v335 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v320 = v71 + 32;
  v339 = v341 + 16;
  v313 = &v376[14] + 8;
  swift_unknownObjectRetain();

  v72 = 0;
  v306 = xmmword_10146C6B0;
  v305 = xmmword_10146CA70;
  v319 = v37;
  v73 = v325;
  while (1)
  {
    v334 = v72;
    v78 = (v320 + 16 * v72);
    v80 = *v78;
    v79 = v78[1];
    v81 = *v78 == 0x7974536570616873 && v79 == 0xEE0061746144656CLL;
    if (!v81 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    v82 = *v342;
    v337 = *(v341 + 16);
    v338 = v82;
    v337(v82);
    sub_1005B981C(&unk_101A10690);
    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v73, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v411[4] = v376[4];
    v411[5] = v376[5];
    v412 = v376[6];
    v411[0] = v376[0];
    v411[1] = v376[1];
    v343 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v83 = *(v345 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v411[3] = v376[3];
    v411[2] = v376[2];
    v84 = *v83;
    result = swift_conformsToProtocol2();
    if (!result)
    {
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
      goto LABEL_144;
    }

    v85 = result;
    v86 = *(result + 16);

    v86(v84, v85);

    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v37, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v417 = v376[4];
    v418 = v376[5];
    v419 = v376[6];
    v413 = v376[0];
    v414 = v376[1];
    v416 = v376[3];
    v415 = v376[2];
    v87 = *&v411[0];
    v88 = BYTE8(v411[0]);
    v389 = *(&v411[2] + 9);
    v390 = *(&v411[3] + 9);
    v391[0] = *(&v411[4] + 9);
    *(v391 + 15) = *(&v411[5] + 1);
    v387 = *(v411 + 9);
    v388 = *(&v411[1] + 9);
    v89 = v412;
    v90 = v376[6];
    if (!v412)
    {
      if (*&v376[6])
      {
LABEL_36:
        *&v376[0] = *&v411[0];
        BYTE8(v376[0]) = BYTE8(v411[0]);
        *(&v376[2] + 9) = *(&v411[2] + 9);
        *(&v376[3] + 9) = *(&v411[3] + 9);
        *(&v376[4] + 9) = *(&v411[4] + 9);
        *(&v376[5] + 1) = *(&v411[5] + 1);
        *(v376 + 9) = *(v411 + 9);
        *(&v376[1] + 9) = *(&v411[1] + 9);
        v376[6] = v412;
        v376[7] = v413;
        v376[8] = v414;
        v376[11] = v417;
        v376[12] = v418;
        v376[9] = v415;
        v376[10] = v416;
        v376[13] = v90;
        sub_10000CAAC(v376, &qword_1019FFF90);
LABEL_66:
        v133 = **(v345 + v343);
        result = swift_conformsToProtocol2();
        if (!result)
        {
          goto LABEL_140;
        }

        v134 = result;
        v135 = *(result + 16);

        v136 = v133;
        v137 = v312;
        v135(v136, v134);

        CRRegister.wrappedValue.getter();
        sub_100C3B20C(v137, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
        v375[0] = v401[0];
        v375[1] = v401[1];
        v375[5] = v401[5];
        v375[6] = v402;
        v375[2] = v401[2];
        v375[3] = v401[3];
        v375[4] = v401[4];
        v376[1] = v401[1];
        v376[0] = v401[0];
        v376[6] = v402;
        v376[5] = v401[5];
        v376[4] = v401[4];
        v376[2] = v401[2];
        v376[3] = v401[3];
        if (v402)
        {
          sub_100006370(0, &qword_101A00EB0);
          v449[2] = v375[3];
          v449[3] = v375[4];
          v449[4] = v375[5];
          v450 = *&v375[6];
          v449[0] = v375[1];
          v449[1] = v375[2];
          sub_10074A990(&v376[1], v401);
          v138 = sub_1008B0490(v449);
          if (BYTE8(v376[0]))
          {
            if (qword_1019F2268 != -1)
            {
              swift_once();
            }

            v139 = static OS_os_log.persistence;
            v140 = static os_log_type_t.info.getter();
            sub_100005404(v139, &_mh_execute_header, v140, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
          }

          v141 = [objc_allocWithZone(CRLColorFill) initWithColor:v138];

          sub_10000CAAC(v375, &qword_1019FFF80);
          *(&v401[1] + 1) = sub_100006370(0, &qword_101A2BF30);
          *&v401[0] = v141;
        }

        else
        {
          memset(v401, 0, 32);
        }

        sub_10000BE14(v401, &v387, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(&v387, 22);
        swift_endAccess();
        v142 = v401;
        v143 = &unk_1019F4D00;
      }

      else
      {
        *&v376[0] = *&v411[0];
        BYTE8(v376[0]) = BYTE8(v411[0]);
        *(&v376[2] + 9) = *(&v411[2] + 9);
        *(&v376[3] + 9) = *(&v411[3] + 9);
        *(&v376[4] + 9) = *(&v411[4] + 9);
        *(&v376[5] + 1) = *(&v411[5] + 1);
        *(v376 + 9) = *(v411 + 9);
        *(&v376[1] + 9) = *(&v411[1] + 9);
        *&v376[6] = 0;
        *(&v376[6] + 1) = *(&v412 + 1);
        v142 = v376;
        v143 = &qword_1019FFF80;
      }

      sub_10000CAAC(v142, v143);
      goto LABEL_76;
    }

    if (!*&v376[6])
    {
      goto LABEL_36;
    }

    v376[0] = v413;
    v376[1] = v414;
    v376[5] = v418;
    v376[4] = v417;
    v376[3] = v416;
    v376[2] = v415;
    v401[1] = *(&v376[1] + 9);
    v401[0] = *(v376 + 9);
    *(&v401[4] + 15) = *(&v376[5] + 8);
    v401[4] = *(&v376[4] + 9);
    v401[3] = *(&v376[3] + 9);
    v401[2] = *(&v376[2] + 9);
    v377[1] = *(&v411[1] + 9);
    v377[0] = *(v411 + 9);
    *(&v377[4] + 15) = *(&v411[5] + 1);
    v377[4] = *(&v411[4] + 9);
    v377[3] = *(&v411[3] + 9);
    v377[2] = *(&v411[2] + 9);
    *&v360 = *&v411[0];
    BYTE8(v360) = BYTE8(v411[0]) & 1;
    *&v346[0] = v413;
    BYTE8(v346[0]) = BYTE8(v413) & 1;
    sub_10000BE14(v411, v375, &qword_1019FFF80);
    sub_10000BE14(&v413, v375, &qword_1019FFF80);
    sub_100A1B84C();
    if (static CRExtensible.== infix(_:_:)() & 1) != 0 && (v451[2] = *(&v377[2] + 7), v451[3] = *(&v377[3] + 7), v451[4] = *(&v377[4] + 7), v451[1] = *(&v377[1] + 7), v451[0] = *(v377 + 7), v452 = v89, v453[2] = *(&v401[2] + 7), v453[3] = *(&v401[3] + 7), v453[4] = *(&v401[4] + 7), v454 = *(&v401[5] + 7), v453[0] = *(v401 + 7), v453[1] = *(&v401[1] + 7), (sub_1008B1A4C(v451, v453)))
    {
      v91 = sub_100B3216C(*(&v89 + 1), *(&v90 + 1));
    }

    else
    {
      v91 = 0;
    }

    sub_10000CAAC(v376, &qword_1019FFF80);
    sub_10000CAAC(&v413, &qword_1019FFF80);
    sub_10000CAAC(v411, &qword_1019FFF80);
    *(&v375[2] + 9) = v389;
    *(&v375[3] + 9) = v390;
    *(&v375[4] + 9) = v391[0];
    *(v375 + 9) = v387;
    *&v375[0] = v87;
    BYTE8(v375[0]) = v88;
    *(&v375[5] + 1) = *(v391 + 15);
    *(&v375[1] + 9) = v388;
    v375[6] = v89;
    sub_10000CAAC(v375, &qword_1019FFF80);
    if ((v91 & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_76:
    v144 = v318;
    (v337)(v338, v341);
    sub_1005B981C(&unk_101A0D9D0);
    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v144, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v384 = v376[12];
    v385 = v376[13];
    v386 = *&v376[14];
    v380 = v376[8];
    v381 = v376[9];
    v383 = v376[11];
    v382 = v376[10];
    v377[4] = v376[4];
    v377[5] = v376[5];
    v379 = v376[7];
    v378 = v376[6];
    v377[0] = v376[0];
    v377[1] = v376[1];
    v145 = *(v345 + v343);
    v377[3] = v376[3];
    v377[2] = v376[2];
    v146 = *v145;
    result = swift_conformsToProtocol2();
    if (!result)
    {
      goto LABEL_136;
    }

    v147 = result;
    v148 = *(result + 16);

    v149 = v316;
    v148(v146, v147);

    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v149, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v398 = v376[12];
    v399 = v376[13];
    v394 = v376[8];
    v395 = v376[9];
    v397 = v376[11];
    v396 = v376[10];
    v391[0] = v376[4];
    v391[1] = v376[5];
    v393 = v376[7];
    v392 = v376[6];
    v387 = v376[0];
    v388 = v376[1];
    v390 = v376[3];
    v389 = v376[2];
    v150 = v384;
    v151 = v385;
    v376[12] = v384;
    v376[13] = v385;
    v152 = v380;
    v153 = v381;
    v376[8] = v380;
    v376[9] = v381;
    v154 = v383;
    v155 = v382;
    v376[11] = v383;
    v376[10] = v382;
    v156 = v377[4];
    v157 = v377[5];
    v376[4] = v377[4];
    v376[5] = v377[5];
    v158 = v379;
    v159 = v378;
    v376[7] = v379;
    v376[6] = v378;
    v160 = v377[0];
    v161 = v377[1];
    v376[0] = v377[0];
    v376[1] = v377[1];
    v162 = v377[3];
    v163 = v377[2];
    v376[3] = v377[3];
    v376[2] = v377[2];
    v164 = v399;
    v165 = v313;
    *(v313 + 12) = v398;
    *(v165 + 13) = v164;
    v166 = v395;
    *(v165 + 8) = v394;
    *(v165 + 9) = v166;
    v167 = v397;
    *(v165 + 10) = v396;
    *(v165 + 11) = v167;
    v168 = v391[1];
    *(v165 + 4) = v391[0];
    *(v165 + 5) = v168;
    v169 = v393;
    *(v165 + 6) = v392;
    *(v165 + 7) = v169;
    v170 = v388;
    *v165 = v387;
    *(v165 + 1) = v170;
    v171 = v390;
    *(v165 + 2) = v389;
    *(v165 + 3) = v171;
    v408 = v150;
    v409 = v151;
    v404 = v152;
    v405 = v153;
    v407 = v154;
    v406 = v155;
    v401[4] = v156;
    v401[5] = v157;
    v403 = v158;
    v402 = v159;
    v401[0] = v160;
    v401[1] = v161;
    v400 = *&v376[14];
    v172 = v386;
    *&v376[14] = v386;
    *(v165 + 28) = v400;
    v410 = v172;
    v401[3] = v162;
    v401[2] = v163;
    if (sub_1000C0FB4(v401) == 1)
    {
      v173 = *(v165 + 13);
      v375[12] = *(v165 + 12);
      v375[13] = v173;
      *&v375[14] = *(v165 + 28);
      v174 = *(v165 + 9);
      v375[8] = *(v165 + 8);
      v375[9] = v174;
      v175 = *(v165 + 11);
      v375[10] = *(v165 + 10);
      v375[11] = v175;
      v176 = *(v165 + 5);
      v375[4] = *(v165 + 4);
      v375[5] = v176;
      v177 = *(v165 + 7);
      v375[6] = *(v165 + 6);
      v375[7] = v177;
      v178 = *(v165 + 1);
      v375[0] = *v165;
      v375[1] = v178;
      v179 = *(v165 + 3);
      v375[2] = *(v165 + 2);
      v375[3] = v179;
      v180 = sub_1000C0FB4(v375);
      v181 = v317;
      if (v180 == 1)
      {
        v372 = v376[12];
        v373 = v376[13];
        v374 = *&v376[14];
        v368 = v376[8];
        v369 = v376[9];
        v370 = v376[10];
        v371 = v376[11];
        v364 = v376[4];
        v365 = v376[5];
        v366 = v376[6];
        v367 = v376[7];
        v360 = v376[0];
        v361 = v376[1];
        v362 = v376[2];
        v363 = v376[3];
        v182 = &v360;
        v183 = &unk_101A106C0;
      }

      else
      {
LABEL_81:
        memcpy(v375, v376, sizeof(v375));
        sub_10000CAAC(v375, &qword_1019F5EE0);
LABEL_82:
        v192 = v345;
        v193 = *(v345 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
        *(v345 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke) = 0;

        v194 = (*((swift_isaMask & *v192) + 0x4D8))();
        if (v194)
        {
          v195 = v194;
          *(&v376[1] + 1) = sub_100006370(0, &qword_101A0C7F0);
          *&v376[0] = v195;
        }

        else
        {
          memset(v376, 0, 32);
        }

        sub_10000BE14(v376, v375, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(v375, 16);
        swift_endAccess();
        v182 = v376;
        v183 = &unk_1019F4D00;
      }

      sub_10000CAAC(v182, v183);
      goto LABEL_89;
    }

    v184 = *(v165 + 13);
    v375[12] = *(v165 + 12);
    v375[13] = v184;
    *&v375[14] = *(v165 + 28);
    v185 = *(v165 + 9);
    v375[8] = *(v165 + 8);
    v375[9] = v185;
    v186 = *(v165 + 11);
    v375[10] = *(v165 + 10);
    v375[11] = v186;
    v187 = *(v165 + 5);
    v375[4] = *(v165 + 4);
    v375[5] = v187;
    v188 = *(v165 + 7);
    v375[6] = *(v165 + 6);
    v375[7] = v188;
    v189 = *(v165 + 1);
    v375[0] = *v165;
    v375[1] = v189;
    v190 = *(v165 + 3);
    v375[2] = *(v165 + 2);
    v375[3] = v190;
    v191 = sub_1000C0FB4(v375);
    v181 = v317;
    if (v191 == 1)
    {
      goto LABEL_81;
    }

    v196 = *(v165 + 11);
    v197 = *(v165 + 13);
    v357 = *(v165 + 12);
    v358 = v197;
    v198 = *(v165 + 7);
    v199 = *(v165 + 9);
    v353 = *(v165 + 8);
    v354 = v199;
    v200 = *(v165 + 9);
    v201 = *(v165 + 11);
    v355 = *(v165 + 10);
    v356 = v201;
    v202 = *(v165 + 3);
    v203 = *(v165 + 5);
    v349 = *(v165 + 4);
    v350 = v203;
    v204 = *(v165 + 5);
    v205 = *(v165 + 7);
    v351 = *(v165 + 6);
    v352 = v205;
    v206 = *(v165 + 1);
    v346[0] = *v165;
    v346[1] = v206;
    v207 = *(v165 + 3);
    v209 = *v165;
    v208 = *(v165 + 1);
    v347 = *(v165 + 2);
    v348 = v207;
    v210 = *(v165 + 13);
    v447[12] = v357;
    v447[13] = v210;
    v447[8] = v353;
    v447[9] = v200;
    v447[11] = v196;
    v447[10] = v355;
    v447[4] = v349;
    v447[5] = v204;
    v447[7] = v198;
    v447[6] = v351;
    v447[0] = v209;
    v447[1] = v208;
    v359 = *(v165 + 28);
    v448 = *(v165 + 28);
    v447[3] = v202;
    v447[2] = v347;
    v445[12] = v376[12];
    v445[13] = v376[13];
    v446 = *&v376[14];
    v445[8] = v376[8];
    v445[9] = v376[9];
    v445[11] = v376[11];
    v445[10] = v376[10];
    v445[4] = v376[4];
    v445[5] = v376[5];
    v445[7] = v376[7];
    v445[6] = v376[6];
    v445[0] = v376[0];
    v445[1] = v376[1];
    v445[3] = v376[3];
    v445[2] = v376[2];
    sub_10000BE14(v377, &v360, &unk_101A106C0);
    sub_10000BE14(&v387, &v360, &unk_101A106C0);
    v211 = sub_100B93EBC(v445, v447);
    sub_10000CAAC(&v387, &unk_101A106C0);
    sub_10000CAAC(v377, &unk_101A106C0);
    sub_10000CAAC(v346, &unk_101A106C0);
    v372 = v376[12];
    v373 = v376[13];
    v374 = *&v376[14];
    v368 = v376[8];
    v369 = v376[9];
    v370 = v376[10];
    v371 = v376[11];
    v364 = v376[4];
    v365 = v376[5];
    v366 = v376[6];
    v367 = v376[7];
    v360 = v376[0];
    v361 = v376[1];
    v362 = v376[2];
    v363 = v376[3];
    sub_10000CAAC(&v360, &unk_101A106C0);
    if ((v211 & 1) == 0)
    {
      goto LABEL_82;
    }

LABEL_89:
    (v337)(v338, v341);
    v212 = sub_1005B981C(&unk_101A10680);
    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v181, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    *v332 = *(&v376[0] + 1);
    v213 = *&v376[0];
    *&v332[8] = v376[1];
    v214 = *(&v376[2] + 1);
    v333 = *&v376[2];
    v215 = *(v345 + v343);
    v331 = *&v376[3];
    v216 = *v215;
    result = swift_conformsToProtocol2();
    if (!result)
    {
      goto LABEL_137;
    }

    v217 = result;
    v218 = *(result + 16);

    v219 = v217;
    v220 = v315;
    v218(v216, v219);

    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v220, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v221 = *&v376[0];
    v222 = v376[2];
    v223 = v212;
    v224 = v214;
    if (v214)
    {
      v225 = v330;
      if (*(&v376[2] + 1))
      {
        v443[0] = v376[0];
        v443[1] = v376[1];
        v443[2] = v376[2];
        v444 = *&v376[3];
        v323 = v212;
        v309 = v214;
        v310 = v213;
        v438[0] = v213;
        v438[1] = *v332;
        v314 = *&v376[3];
        v439 = *&v332[8];
        v226 = *&v376[2];
        v227 = v333;
        v440 = v333;
        v441 = v224;
        v442 = v331;
        v228 = *(&v376[0] + 1);
        v229 = v376[1];
        sub_100C3B15C(v213, *v332, *&v332[8], *&v332[16], v333, v224);
        v307 = v229;
        v308 = v226;
        sub_100C3B15C(v221, v228, v229, *(&v229 + 1), v226, *(&v222 + 1));
        LODWORD(v311) = sub_1009CE0AC(v438, v443);
        sub_100810A00(v221, v228, v229, *(&v229 + 1), v226, *(&v222 + 1));
        v230 = v310;
        v231 = *v332;
        v232 = *&v332[16];
        v233 = *&v332[8];
        v234 = v227;
        v235 = v309;
        sub_100810A00(v310, *v332, *&v332[8], *&v332[16], v234, v309);
        sub_100810A00(v221, v228, v307, *(&v307 + 1), v308, *(&v222 + 1));
        v223 = v323;
        v236 = v233;
        v225 = v330;
        v237 = sub_100810A00(v230, v231, v236, v232, v333, v235);
        v238 = v322;
        if (v311)
        {
          goto LABEL_102;
        }

        goto LABEL_96;
      }
    }

    else
    {
      v225 = v330;
      if (!*(&v376[2] + 1))
      {
        sub_100810A00(v213, *v332, *&v332[8], *&v332[16], v333, 0);
        v238 = v322;
        goto LABEL_102;
      }
    }

    v239 = *(&v376[0] + 1);
    v240 = v376[1];
    sub_100810A00(v213, *v332, *&v332[8], *&v332[16], v333, v224);
    v237 = sub_100810A00(v221, v239, v240, *(&v240 + 1), v222, *(&v222 + 1));
    v238 = v322;
LABEL_96:
    if ((*((swift_isaMask & *v345) + 0x578))(v237))
    {
      goto LABEL_100;
    }

    v241 = v225;
    v242 = v223;
    v243 = **(v345 + v343);
    result = swift_conformsToProtocol2();
    if (!result)
    {
      goto LABEL_142;
    }

    v244 = result;
    v245 = *(result + 16);

    v245(v243, v244);

    v223 = v242;
    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v241, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v246 = *(&v376[2] + 1);
    if (!*(&v376[2] + 1))
    {
LABEL_100:
      memset(v376, 0, 32);
    }

    else
    {
      v247 = *(&v376[0] + 1);
      v333 = *&v376[0];
      v249 = *(&v376[1] + 1);
      v248 = *&v376[1];
      v250 = *&v376[2];
      LOBYTE(v375[0]) = v376[1] & 1;
      v432 = v376[0];
      v433 = v376[1] & 1;
      v434 = *(&v376[1] + 4);
      v435 = BYTE12(v376[1]) & 1;
      v436 = v376[2];
      v437 = *&v376[3];
      v251 = sub_100006370(0, &qword_101A14D70);
      v252 = sub_1009CE208(&v432);
      v253 = v248;
      v223 = v242;
      v238 = v322;
      sub_100810A00(v333, v247, v253, v249, v250, v246);
      *(&v376[1] + 1) = v251;
      *&v376[0] = v252;
    }

    sub_10000BE14(v376, v375, &unk_1019F4D00);
    swift_beginAccess();
    sub_100BC1F00(v375, 23);
    swift_endAccess();
    sub_10000CAAC(v376, &unk_1019F4D00);
LABEL_102:
    (v337)(v338, v341);
    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v238, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v331 = *(&v376[0] + 1);
    v254 = *&v376[0];
    *v332 = v376[1];
    v255 = *(&v376[2] + 1);
    *&v332[16] = *&v376[2];
    v256 = *(v345 + v343);
    v333 = *&v376[3];
    v257 = *v256;
    result = swift_conformsToProtocol2();
    if (!result)
    {
      goto LABEL_138;
    }

    v258 = result;
    v259 = *(result + 16);

    v260 = v258;
    v261 = v327;
    v259(v257, v260);

    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v261, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v262 = *&v376[0];
    v263 = v376[1];
    v264 = v376[2];
    v265 = v255;
    if (v255)
    {
      if (*(&v376[2] + 1))
      {
        v430[0] = v376[0];
        v430[1] = v376[1];
        v430[2] = v376[2];
        v431 = *&v376[3];
        v323 = v223;
        v310 = v255;
        v311 = v254;
        v426[0] = v254;
        v266 = *&v376[1];
        v426[1] = v331;
        v426[2] = *v332;
        v267 = *(&v376[1] + 1);
        v268 = *&v332[8];
        v427 = *&v332[8];
        v269 = *&v376[3];
        v428 = v265;
        v429 = v333;
        v270 = v254;
        v271 = *(&v376[0] + 1);
        v272 = v265;
        sub_100C3B15C(v270, v331, *v332, *&v332[8], *&v332[16], v265);
        *(&v307 + 1) = v271;
        v308 = v267;
        v309 = v269;
        sub_100C3B15C(v262, v271, v266, v267, v264, *(&v264 + 1));
        LODWORD(v314) = sub_1009CE0AC(v426, v430);
        sub_100810A00(v262, v271, v266, v267, v264, *(&v264 + 1));
        v273 = v311;
        v274 = v331;
        v275 = *v332;
        v276 = v268;
        v277 = *&v332[16];
        sub_100810A00(v311, v331, *v332, v276, *&v332[16], v272);
        sub_100810A00(v262, *(&v307 + 1), v266, v308, v264, *(&v264 + 1));
        v278 = sub_100810A00(v273, v274, v275, *&v332[8], v277, v310);
        v279 = v324;
        if (v314)
        {
          goto LABEL_115;
        }

        goto LABEL_109;
      }
    }

    else if (!*(&v376[2] + 1))
    {
      sub_100810A00(v254, v331, *v332, *&v332[8], *&v332[16], 0);
      goto LABEL_115;
    }

    v280 = *(&v376[0] + 1);
    sub_100810A00(v254, v331, *v332, *&v332[8], *&v332[16], v265);
    v278 = sub_100810A00(v262, v280, v263, *(&v263 + 1), v264, *(&v264 + 1));
    v279 = v324;
LABEL_109:
    if ((*((swift_isaMask & *v345) + 0x578))(v278))
    {
      goto LABEL_113;
    }

    v281 = **(v345 + v343);
    result = swift_conformsToProtocol2();
    if (!result)
    {
      goto LABEL_143;
    }

    v282 = result;
    v283 = *(result + 16);

    v283(v281, v282);

    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v279, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v284 = *(&v376[2] + 1);
    if (!*(&v376[2] + 1))
    {
LABEL_113:
      memset(v376, 0, 32);
    }

    else
    {
      v285 = v376[0];
      v286 = v376[1];
      v287 = *&v376[2];
      LOBYTE(v375[0]) = v376[1] & 1;
      v420 = v376[0];
      v421 = v376[1] & 1;
      v422 = *(&v376[1] + 4);
      v423 = BYTE12(v376[1]) & 1;
      v424 = v376[2];
      v425 = *&v376[3];
      v288 = sub_100006370(0, &qword_101A14D70);
      v289 = sub_1009CE208(&v420);
      sub_100810A00(v285, *(&v285 + 1), v286, *(&v286 + 1), v287, v284);
      *(&v376[1] + 1) = v288;
      *&v376[0] = v289;
    }

    sub_10000BE14(v376, v375, &unk_1019F4D00);
    swift_beginAccess();
    sub_100BC1F00(v375, 24);
    swift_endAccess();
    sub_10000CAAC(v376, &unk_1019F4D00);
LABEL_115:
    v290 = v329;
    (v337)(v338, v341);
    sub_1005B981C(&unk_101A0D9C0);
    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v290, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v291 = *v376;
    v292 = **(v345 + v343);
    result = swift_conformsToProtocol2();
    if (!result)
    {
      goto LABEL_139;
    }

    v293 = result;
    v294 = *(result + 16);

    v295 = v326;
    v294(v292, v293);

    CRRegister.wrappedValue.getter();
    sub_100C3B20C(v295, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    if (v291 != *v376)
    {
      v296 = **(v345 + v343);
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_141;
      }

      v297 = result;
      v298 = *(result + 16);

      v299 = v296;
      v300 = v329;
      v298(v299, v297);

      CRRegister.wrappedValue.getter();
      sub_100C3B20C(v300, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      *(&v376[1] + 1) = &type metadata for CGFloat;
      *v376 = *v376;
      sub_10000BE14(v376, v375, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(v375, 25);
      swift_endAccess();
      sub_10000CAAC(v376, &unk_1019F4D00);
    }

LABEL_23:
    v72 = v334 + 1;
    v37 = v319;
    v73 = v325;
    if (v334 + 1 == v321)
    {
      goto LABEL_128;
    }
  }

  sub_1005B981C(&qword_1019F54E0);
  v92 = swift_allocObject();
  *(v92 + 16) = v306;
  *(v92 + 56) = &type metadata for String;
  v93 = sub_1000053B0();
  *(v92 + 32) = v80;
  v94 = v92 + 32;
  v343 = v93;
  *(v92 + 64) = v93;
  *(v92 + 40) = v79;
  v95 = objc_opt_self();

  v333 = v95;
  LODWORD(v338) = [v95 _atomicIncrementAssertCount];
  *&v376[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v92, v376);
  StaticString.description.getter();
  v337 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v96 = String._bridgeToObjectiveC()();

  v97 = [v96 lastPathComponent];

  v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v99;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v101 = static OS_os_log.crlAssert;
  v102 = swift_allocObject();
  *(v102 + 16) = v305;
  *(v102 + 56) = &type metadata for Int32;
  *(v102 + 64) = &protocol witness table for Int32;
  *(v102 + 32) = v338;
  v103 = sub_100006370(0, &qword_1019F4D30);
  *(v102 + 96) = v103;
  v104 = sub_1005CF04C();
  v105 = v337;
  *(v102 + 72) = v337;
  v106 = v343;
  *(v102 + 136) = &type metadata for String;
  *(v102 + 144) = v106;
  *(v102 + 104) = v104;
  *(v102 + 112) = v98;
  *(v102 + 120) = v100;
  *(v102 + 176) = &type metadata for UInt;
  *(v102 + 152) = 398;
  v107 = *&v376[0];
  *(v102 + 216) = v103;
  *(v102 + 224) = v104;
  *(v102 + 184) = &protocol witness table for UInt;
  *(v102 + 192) = v107;
  v108 = v105;
  v109 = v107;
  v110 = static os_log_type_t.error.getter();
  sub_100005404(v101, &_mh_execute_header, v110, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v102);
  swift_setDeallocating();
  v338 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v111 = static os_log_type_t.error.getter();

  type metadata accessor for __VaListBuilder();
  v112 = swift_allocObject();
  v112[2] = 8;
  v112[3] = 0;
  v113 = v112 + 3;
  v112[4] = 0;
  v112[5] = 0;
  v114 = *(v92 + 16);
  v115 = v92;
  if (!v114)
  {
LABEL_22:
    v74 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v75 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v76 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    [v333 handleFailureInFunction:v75 file:v76 lineNumber:398 isFatal:0 format:v77 args:v74];

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    goto LABEL_23;
  }

  v116 = 0;
  v343 = v114;
  while (2)
  {
    sub_100020E58((v94 + 40 * v116), *(v94 + 40 * v116 + 24));
    result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v117 = *v113;
    v118 = *(result + 16);
    v119 = __OFADD__(*v113, v118);
    v120 = *v113 + v118;
    if (v119)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v121 = v112[4];
    if (v121 >= v120)
    {
LABEL_56:
      v127 = v112[5];
      if (!v127)
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (v121 + 0x4000000000000000 < 0)
      {
        goto LABEL_131;
      }

      v122 = v112[5];
      if (2 * v121 > v120)
      {
        v120 = 2 * v121;
      }

      v112[4] = v120;
      if ((v120 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_132;
      }

      v123 = v94;
      v124 = v115;
      v125 = result;
      v126 = swift_slowAlloc();
      v127 = v126;
      v112[5] = v126;
      if (v122)
      {
        if (v126 != v122 || v126 >= &v122[8 * v117])
        {
          memmove(v126, v122, 8 * v117);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        result = v125;
        v115 = v124;
        v94 = v123;
        v114 = v343;
        goto LABEL_56;
      }

      result = v125;
      v115 = v124;
      v94 = v123;
      v114 = v343;
      if (!v127)
      {
        goto LABEL_133;
      }
    }

    v129 = *(result + 16);
    if (!v129)
    {
LABEL_41:

      if (++v116 == v114)
      {
        goto LABEL_22;
      }

      continue;
    }

    break;
  }

  v130 = (result + 32);
  v131 = *v113;
  while (1)
  {
    v132 = *v130++;
    *&v127[8 * v131] = v132;
    v131 = *v113 + 1;
    if (__OFADD__(*v113, 1))
    {
      break;
    }

    *v113 = v131;
    if (!--v129)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_128:
  swift_unknownObjectRelease();
}

uint64_t sub_100C3B15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t sub_100C3B1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLPathSourceData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C3B20C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100C3B26C()
{
  result = qword_101A15C40;
  if (!qword_101A15C40)
  {
    type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15C40);
  }

  return result;
}

unint64_t sub_100C3B2CC(__int128 *a1)
{
  v2 = v1;
  v89 = type metadata accessor for UUID();
  v4 = *(v89 - 8);
  v5 = __chkstk_darwin(v89);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = _swiftEmptyArrayStorage;
  if ((*((swift_isaMask & *v1) + 0x5E0))(v5))
  {
    v8 = *(a1 + 41);
    if (v8)
    {
      v9 = *(a1 + 240);
      sub_100006370(0, &qword_101A00EB0);
      v10 = *(a1 + 264);
      v11 = *(a1 + 296);
      v12 = *(a1 + 312);
      v130 = *(a1 + 280);
      v131 = v11;
      v132 = v12;
      v129[0] = *(a1 + 248);
      v129[1] = v10;
      v133 = v8;
      v113 = v8;
      v112[2] = v130;
      v112[3] = v11;
      v112[4] = v12;
      v112[0] = v129[0];
      v112[1] = v10;
      sub_10074A990(v129, &v114);
      v13 = sub_1008B0490(v112);
      if (v9)
      {
        if (qword_1019F2268 != -1)
        {
          swift_once();
        }

        v14 = static OS_os_log.persistence;
        v15 = static os_log_type_t.info.getter();
        sub_100005404(v14, &_mh_execute_header, v15, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
      }

      v8 = [objc_allocWithZone(CRLColorFill) initWithColor:v13];
    }

    v16 = objc_allocWithZone(type metadata accessor for CRLCommandSetFill());
    (*(**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v7, v89);
    [v16 initWithId:isa fill:v8];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v18 = a1[13];
  v126 = a1[12];
  v127 = v18;
  v128 = *(a1 + 28);
  v19 = a1[9];
  v122 = a1[8];
  v123 = v19;
  v20 = a1[11];
  v124 = a1[10];
  v125 = v20;
  v21 = a1[5];
  v118 = a1[4];
  v119 = v21;
  v22 = a1[7];
  v120 = a1[6];
  v121 = v22;
  v23 = a1[1];
  v114 = *a1;
  v115 = v23;
  v24 = a1[3];
  v116 = a1[2];
  v117 = v24;
  if (sub_1000C0FB4(&v114) == 1)
  {
    v25 = 0;
  }

  else
  {
    v110[12] = v126;
    v110[13] = v127;
    v111 = v128;
    v110[8] = v122;
    v110[9] = v123;
    v110[10] = v124;
    v110[11] = v125;
    v110[4] = v118;
    v110[5] = v119;
    v110[6] = v120;
    v110[7] = v121;
    v110[0] = v114;
    v110[1] = v115;
    v110[2] = v116;
    v110[3] = v117;
    v25 = sub_100B946C8(v110, 0);
  }

  v26 = objc_allocWithZone(type metadata accessor for CRLCommandSetStroke());
  v27 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  (*(**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  v28 = UUID._bridgeToObjectiveC()().super.isa;
  v31 = *(v4 + 8);
  v30 = v4 + 8;
  v29 = v31;
  v31(v7, v89);
  [v26 initWithId:v28 stroke:v25];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v32 = sub_10109C9BC();
  v33 = objc_allocWithZone(type metadata accessor for CRLCommandSetShadow());
  v87 = v2;
  v88 = v27;
  (*(**(v2 + v27) + 264))();
  v34 = UUID._bridgeToObjectiveC()().super.isa;
  v29(v7, v89);
  [v33 initWithId:v34 shadow:v32];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v35 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v36 = v91;
  if (*(a1 + 472))
  {
    v37 = v87;
    v38 = (*((swift_isaMask & *v87) + 0x530))(v35);
    v39 = [v38 bezierPath];

    LODWORD(v38) = [v39 isOpen];
    if (v38)
    {
      v85 = v30;
      v86 = v29;
      v40 = (*((swift_isaMask & *v37) + 0x5B8))();
      v41 = *(a1 + 65);
      if (v40)
      {
        if (v41)
        {
          v80 = *(a1 + 66);
          v42 = *(a1 + 63);
          v43 = *(a1 + 64);
          v44 = *(a1 + 61);
          v45 = *(a1 + 62);
          v46 = *(a1 + 60);
          v90[0] = v45 & 1;
          v101 = v46;
          v102 = v44;
          v83 = v46;
          v84 = v44;
          v47 = v44;
          v103 = v45 & 1;
          v104 = HIDWORD(v45);
          v105 = v42;
          v106 = BYTE4(v42) & 1;
          v107 = v43;
          v108 = v41;
          v82 = v43;
          v109 = v80;
          v81 = sub_100006370(0, &qword_101A14D70);
          *&v96 = v46;
          *(&v96 + 1) = v47;
          *&v97 = v45;
          *(&v97 + 1) = v42;
          v98 = v43;
          v99 = v41;
          v100 = v80;
          sub_1009CF284(&v96, &v92);
          v48 = sub_1009CE208(&v101);
          sub_100810A00(v83, v84, v45, v42, v82, v41);
        }

        else
        {
          v48 = 0;
        }

        v59 = v89;
        v60 = *(a1 + 568);
        v93 = *(a1 + 552);
        v94 = v60;
        v95 = *(a1 + 73);
        v92 = *(a1 + 536);
        v83 = v48;
        if (*(&v60 + 1))
        {
          v61 = *(a1 + 552);
          v96 = *(a1 + 536);
          v97 = v61;
          v98 = *(a1 + 71);
          v99 = *(&v60 + 1);
          v100 = v95;
          sub_100006370(0, &qword_101A14D70);
          v62 = v48;
          sub_10000BE14(&v92, v90, &unk_101A0DA00);
          v63 = sub_1009CE208(&v96);
          sub_10000CAAC(&v92, &unk_101A0DA00);
          v64 = v63;
        }

        else
        {
          v69 = v48;
          v63 = 0;
          v64 = 0;
        }

        v65 = v88;
      }

      else
      {
        if (v41)
        {
          v49 = *(a1 + 66);
          v51 = *(a1 + 63);
          v50 = *(a1 + 64);
          v52 = *(a1 + 61);
          v53 = *(a1 + 62);
          v54 = *(a1 + 60);
          v90[0] = v53 & 1;
          v101 = v54;
          v102 = v52;
          v82 = v54;
          v83 = v52;
          v55 = v52;
          v103 = v53 & 1;
          v104 = HIDWORD(v53);
          v105 = v51;
          v106 = BYTE4(v51) & 1;
          v107 = v50;
          v108 = v41;
          v84 = v7;
          v56 = v50;
          v109 = v49;
          v81 = sub_100006370(0, &qword_101A14D70);
          *&v96 = v54;
          *(&v96 + 1) = v55;
          *&v97 = v53;
          *(&v97 + 1) = v51;
          v98 = v56;
          v99 = v41;
          v100 = v49;
          sub_1009CF284(&v96, &v92);
          v57 = sub_1009CE208(&v101);
          v58 = v56;
          v7 = v84;
          sub_100810A00(v82, v83, v53, v51, v58, v41);
        }

        else
        {
          v57 = 0;
        }

        v59 = v89;
        v66 = *(a1 + 568);
        v93 = *(a1 + 552);
        v94 = v66;
        v95 = *(a1 + 73);
        v92 = *(a1 + 536);
        if (*(&v66 + 1))
        {
          v67 = *(a1 + 552);
          v96 = *(a1 + 536);
          v97 = v67;
          v98 = *(a1 + 71);
          v99 = *(&v66 + 1);
          v100 = v95;
          sub_100006370(0, &qword_101A14D70);
          v64 = v57;
          v68 = v57;
          sub_10000BE14(&v92, v90, &unk_101A0DA00);
          v63 = sub_1009CE208(&v96);
          sub_10000CAAC(&v92, &unk_101A0DA00);
        }

        else
        {
          v64 = v57;
          v70 = v57;
          v63 = 0;
        }

        v65 = v88;
        v83 = v63;
      }

      v71 = v63;
      v72 = type metadata accessor for CRLCommandSetLineEnd();
      v73 = objc_allocWithZone(v72);
      (*(**(v37 + v65) + 264))();
      v74 = UUID._bridgeToObjectiveC()().super.isa;
      v75 = v86;
      v86(v7, v59);
      [v73 initWithId:v74 lineEnd:v64 chirality:0];

      v84 = v64;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v82 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v59 = v89;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v76 = objc_allocWithZone(v72);
      (*(**(v37 + v88) + 264))();
      v77 = UUID._bridgeToObjectiveC()().super.isa;
      v75(v7, v59);
      v78 = v83;
      [v76 initWithId:v77 lineEnd:v83 chirality:1];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return v91;
    }
  }

  return v36;
}

uint64_t type metadata accessor for CRLFollowViewportState()
{
  result = qword_101A15CA8;
  if (!qword_101A15CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C3BEC0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100C3BF5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, float64_t a3@<X8>)
{
  v88.f64[0] = a3;
  v5 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v5 - 8);
  v86 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v74 - v8;
  v9 = sub_1005B981C(&qword_101A15CF0);
  __chkstk_darwin(v9 - 8);
  v85 = &v74 - v10;
  v92 = type metadata accessor for CRLProto_Size(0);
  v82 = *(v92 - 8);
  __chkstk_darwin(v92);
  v84 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1005B981C(&qword_101A15CE8);
  __chkstk_darwin(v12 - 8);
  v81 = &v74 - v13;
  v79 = type metadata accessor for CRLProto_Point(0);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v80 = (&v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v15 - 8);
  v91 = &v74 - v16;
  v90 = type metadata accessor for CRLProto_Data(0);
  v89.f64[0] = *(v90 - 8);
  __chkstk_darwin(v90);
  v18 = (&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for UUID();
  v83 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v74 - v23;
  v25 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v25 - 8);
  v26 = type metadata accessor for CRLProto_FollowViewportState(0);
  __chkstk_darwin(v26);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100C3D0F4();
  v29 = v93;
  Message.init(serializedData:extensions:partial:options:)();
  if (v29)
  {
    return sub_10002640C(a1, a2);
  }

  v93 = 0;
  v75 = v21;
  v77 = v24;
  v76 = v19;
  v31 = a1;
  v32 = a2;
  v33 = v28;
  v34 = v91;
  sub_10000BE14(&v28[v26[7]], v91, &qword_1019F67C0);
  v35 = *(*&v89.f64[0] + 48);
  v36 = v90;
  if (v35(v34, 1, v90) == 1)
  {
    *v18 = xmmword_10146F370;
    UnknownStorage.init()();
    v37 = v35(v34, 1, v36);
    v38 = v92;
    if (v37 != 1)
    {
      sub_10000CAAC(v34, &qword_1019F67C0);
    }
  }

  else
  {
    sub_100C3D08C(v34, v18, type metadata accessor for CRLProto_Data);
    v38 = v92;
  }

  v39 = *v18;
  v40 = v18[1];
  sub_100024E98(*v18, v40);
  sub_100C3D14C(v18, type metadata accessor for CRLProto_Data);
  v41 = v93;
  UUID.init(crl_data:)(v39, v40);
  v42 = v33;
  v93 = v41;
  if (v41)
  {
    sub_100C3D14C(v33, type metadata accessor for CRLProto_FollowViewportState);
    return sub_10002640C(v31, v32);
  }

  else
  {
    v92 = v31;
    v43 = *v33;
    v44 = v81;
    sub_10000BE14(v33 + v26[8], v81, &qword_101A15CE8);
    v45 = *(v78 + 48);
    v46 = v79;
    v47 = v45(v44, 1, v79);
    v91 = v32;
    if (v47 == 1)
    {
      v48 = v80;
      *v80 = 0;
      UnknownStorage.init()();
      v49 = v45(v44, 1, v46);
      v50 = v48;
      v52 = v86;
      v51 = v87;
      v53 = v76;
      v54 = v82;
      if (v49 != 1)
      {
        sub_10000CAAC(v44, &qword_101A15CE8);
      }
    }

    else
    {
      v50 = v80;
      sub_100C3D08C(v44, v80, type metadata accessor for CRLProto_Point);
      v52 = v86;
      v51 = v87;
      v53 = v76;
      v54 = v82;
    }

    v55 = *v50;
    sub_100C3D14C(v50, type metadata accessor for CRLProto_Point);
    v56 = v42 + v26[9];
    v57 = v85;
    sub_10000BE14(v56, v85, &qword_101A15CF0);
    v58 = *(v54 + 48);
    v59 = v58(v57, 1, v38);
    v60 = v84;
    if (v59 == 1)
    {
      *v84 = 0;
      UnknownStorage.init()();
      v61 = v58(v57, 1, v38);
      v62 = v88.f64[0];
      if (v61 != 1)
      {
        sub_10000CAAC(v57, &qword_101A15CF0);
      }
    }

    else
    {
      sub_100C3D08C(v57, v84, type metadata accessor for CRLProto_Size);
      v62 = v88.f64[0];
    }

    v63 = *v60;
    sub_100C3D14C(v60, type metadata accessor for CRLProto_Size);
    v90 = *(v42 + 1);
    v64 = v42;
    v65 = v83;
    v66 = v77;
    (*(v83 + 16))(v51, v77, v53);
    (*(v65 + 56))(v51, 0, 1, v53);
    sub_10000BE14(v51, v52, &qword_1019F6990);
    if ((*(v65 + 48))(v52, 1, v53) == 1)
    {
      sub_10000CAAC(v52, &qword_1019F6990);
      sub_1006B305C();
      swift_allocError();
      *v67 = 0;
      swift_willThrow();
      sub_10002640C(v92, v91);
      sub_10000CAAC(v51, &qword_1019F6990);
      (*(v65 + 8))(v66, v53);
      return sub_100C3D14C(v64, type metadata accessor for CRLProto_FollowViewportState);
    }

    else
    {
      v88 = vcvtq_f64_f32(v63);
      v89 = vcvtq_f64_f32(v55);
      sub_10002640C(v92, v91);
      v68 = *(v65 + 32);
      v69 = v64;
      v70 = v75;
      v68(v75, v52, v53);
      sub_10000CAAC(v51, &qword_1019F6990);
      (*(v65 + 8))(v66, v53);
      sub_100C3D14C(v69, type metadata accessor for CRLProto_FollowViewportState);
      v71 = type metadata accessor for CRLFollowViewportState();
      result = (v68)(*&v62 + v71[5], v70, v53);
      *(*&v62 + v71[6]) = v43;
      v72 = (*&v62 + v71[7]);
      v73 = v88;
      *v72 = v89;
      v72[1] = v73;
      **&v62 = v90;
    }
  }

  return result;
}

uint64_t sub_100C3CA50()
{
  v54 = type metadata accessor for CRLProto_Size(0);
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = (&v39 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for CRLProto_Point(0);
  v1 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = (&v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v3 - 8);
  v43 = &v39 - v4;
  v5 = type metadata accessor for CRLProto_Data(0);
  v40 = *(v5 - 8);
  v6 = v40;
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v39 - v10);
  v12 = type metadata accessor for CRLProto_FollowViewportState(0);
  __chkstk_darwin(v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 0;
  *(v14 + 1) = 0;
  UnknownStorage.init()();
  v15 = v12[7];
  v16 = *(v6 + 56);
  v16(&v14[v15], 1, 1, v5);
  v17 = *(v1 + 56);
  v46 = v12[8];
  v47 = v17;
  v45 = v1 + 56;
  v17(&v14[v46], 1, 1, v53);
  v18 = *(v56 + 56);
  v48 = v12[9];
  v56 += 56;
  v49 = v18;
  v50 = v12;
  v18(&v14[v48], 1, 1, v54);
  v39 = xmmword_10146F370;
  *v11 = xmmword_10146F370;
  UnknownStorage.init()();
  sub_10000CAAC(&v14[v15], &qword_1019F67C0);
  sub_100C3D08C(v11, &v14[v15], type metadata accessor for CRLProto_Data);
  v44 = v16;
  v16(&v14[v15], 0, 1, v5);
  v19 = v40;
  v20 = type metadata accessor for CRLFollowViewportState();
  v21 = UUID.crl_data()();
  v41 = v22;
  v42 = v21;
  v23 = v43;
  sub_10000BE14(&v14[v15], v43, &qword_1019F67C0);
  v24 = *(v19 + 48);
  if (v24(v23, 1, v5) == 1)
  {
    *v8 = v39;
    UnknownStorage.init()();
    if (v24(v23, 1, v5) != 1)
    {
      sub_10000CAAC(v23, &qword_1019F67C0);
    }
  }

  else
  {
    sub_100C3D08C(v23, v8, type metadata accessor for CRLProto_Data);
  }

  sub_10002640C(*v8, *(v8 + 1));
  v25 = v41;
  *v8 = v42;
  *(v8 + 1) = v25;
  sub_10000CAAC(&v14[v15], &qword_1019F67C0);
  sub_100C3D08C(v8, &v14[v15], type metadata accessor for CRLProto_Data);
  v44(&v14[v15], 0, 1, v5);
  v26 = *(v20 + 28);
  v27 = v55;
  *v14 = *(v55 + *(v20 + 24));
  v28 = (v27 + v26);
  v29 = v53;
  v30 = vcvt_f32_f64(*(v27 + v26));
  v31 = v51;
  UnknownStorage.init()();
  *v31 = v30;
  v32 = v46;
  sub_10000CAAC(&v14[v46], &qword_101A15CE8);
  sub_100C3D08C(v31, &v14[v32], type metadata accessor for CRLProto_Point);
  v47(&v14[v32], 0, 1, v29);
  v33 = v54;
  v34 = vcvt_f32_f64(v28[1]);
  v35 = v52;
  UnknownStorage.init()();
  *v35 = v34;
  v36 = v48;
  sub_10000CAAC(&v14[v48], &qword_101A15CF0);
  sub_100C3D08C(v35, &v14[v36], type metadata accessor for CRLProto_Size);
  v49(&v14[v36], 0, 1, v33);
  *(v14 + 1) = *v27;
  sub_100C3D0F4();
  v37 = Message.serializedData(partial:)();
  sub_100C3D14C(v14, type metadata accessor for CRLProto_FollowViewportState);
  return v37;
}