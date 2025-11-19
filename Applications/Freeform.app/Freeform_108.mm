uint64_t sub_100DA3148()
{
  v2 = *v1;
  *(v2 + 448) = v0;

  if (v0)
  {
    v3 = *(v2 + 408);
    v4 = *(v2 + 416);

    return _swift_task_switch(sub_100DA3474, v3, v4);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v2 + 456) = v5;
    *v5 = v2;
    v5[1] = sub_100DA32BC;
    v6 = *(v2 + 344);

    return sub_100C0C7FC(v6);
  }
}

uint64_t sub_100DA32BC()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_100DA33DC, v3, v2);
}

uint64_t sub_100DA33DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DA3474()
{
  v1 = v0[53];
  v2 = v0[54];

  v3 = v0[1];

  return v3();
}

void sub_100DA3508(void *a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v22 - v5;
  v7 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window;
  v8 = *&v1[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window];
  if (v8 && [v8 isUserInteractionEnabled])
  {
    v9 = *&v1[v7];
    if (!v9 || (v10 = [v9 rootViewController]) == 0 || (v11 = v10, v12 = objc_msgSend(v10, "crl_windowWrapper"), v11, !v12) || (v13 = objc_msgSend(v12, "newWrapperBeginningIgnoringUserInteractionSafely"), v12, !v13))
    {
      if (qword_1019F20A8 != -1)
      {
        swift_once();
      }

      v14 = static OS_os_log.crlError;
      v15 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v15, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
      v13 = 0;
    }

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    type metadata accessor for MainActor();
    v17 = v13;
    v18 = v1;
    v19 = a1;
    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v18;
    v21[5] = v19;
    v21[6] = v13;
    sub_10064191C(0, 0, v6, &unk_1014B2410, v21);
  }
}

uint64_t sub_100DA374C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a4;
  v6[16] = a6;
  v6[17] = type metadata accessor for MainActor();
  v6[18] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[19] = v8;
  *v8 = v6;
  v8[1] = sub_100DA380C;

  return sub_100DA272C(a5);
}

uint64_t sub_100DA380C()
{
  *(*v1 + 160) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100DA3A6C;
  }

  else
  {
    v4 = sub_100DA3968;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100DA3968()
{

  [*(v0 + 128) endIgnoringUserInteractionSafely];
  if ([objc_opt_self() isOSFeatureEnabled:12])
  {
    v1 = [objc_opt_self() defaultCenter];
    if (qword_1019F1F18 != -1)
    {
      swift_once();
    }

    [v1 postNotificationName:qword_101AD7910 object:*(v0 + 120)];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100DA3A6C()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "Caught error trying to close board view controller: %@", 54, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  [*(v0 + 128) endIgnoringUserInteractionSafely];
  if ([objc_opt_self() isOSFeatureEnabled:12])
  {
    v7 = [objc_opt_self() defaultCenter];
    if (qword_1019F1F18 != -1)
    {
      swift_once();
    }

    [v7 postNotificationName:qword_101AD7910 object:*(v0 + 120)];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100DA3C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  sub_1005B981C(&unk_1019F33C0);
  v5[26] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[30] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[31] = v8;
  v5[32] = v7;

  return _swift_task_switch(sub_100DA3DA8, v8, v7);
}

uint64_t sub_100DA3DA8()
{
  v1 = v0[24];
  v2 = [objc_allocWithZone(type metadata accessor for CRLQAImportFileDocumentPickerDelegate()) init];
  v0[33] = v2;
  sub_1005B981C(&qword_101A054A0);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_10146C6B0;
  static UTType.data.getter();
  v3 = objc_allocWithZone(UIDocumentPickerViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initForOpeningContentTypes:isa asCopy:1];
  v0[34] = v5;

  [v5 setAllowsMultipleSelection:0];
  [v5 setDelegate:v2];
  [v1 presentViewController:v5 animated:1 completion:0];
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_100DA3F9C;
  v7 = v0[26];

  return sub_1006C3FC4(v7);
}

uint64_t sub_100DA3F9C()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_100DA40BC, v3, v2);
}

uint64_t sub_100DA40BC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[33];
    v4 = v0[34];

    sub_100686028(v3);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v2 + 32))(v0[29], v3, v1);
    v8 = swift_task_alloc();
    v0[36] = v8;
    *v8 = v0;
    v8[1] = sub_100DA420C;
    v9 = v0[29];

    return sub_100DA46A8(v9);
  }
}

uint64_t sub_100DA420C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_100DA43F4;
  }

  else
  {
    v5 = sub_100DA4348;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100DA4348()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[28];

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100DA43F4()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v18 = v0[34];
  v19 = v0[33];
  v1 = v0[28];
  v20 = v0[27];
  v16 = v0[24];
  v17 = v0[29];
  v2 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v4 = URL.path.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 64) = v7;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  swift_getErrorValue();
  v8 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v10, "Error loading board from %@: %@", 31, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_getErrorValue();
  Error.localizedDescription.getter();
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  [v16 presentViewController:v13 animated:1 completion:0];
  sub_1011047E4(v13);

  (*(v1 + 8))(v17, v20);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100DA46A8(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  type metadata accessor for CRLBoardIdentifier(0);
  v2[30] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v2[31] = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  v2[32] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[39] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[40] = v6;
  v2[41] = v5;

  return _swift_task_switch(sub_100DA487C, v6, v5);
}

void sub_100DA487C()
{
  sub_10005013C();
  if (v1)
  {
    v2 = v1;
    v3 = *&v1[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store];
    *(v0 + 336) = v3;
    v4 = v3;

    v29 = v4;
    v5 = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext];
    *(v0 + 344) = v5;
    v6 = qword_1019F2098;
    v28 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 296);
    v8 = *(v0 + 304);
    v9 = *(v0 + 288);
    v10 = *(v0 + 224);
    v11 = static OS_os_log.crlDefault;
    *(v0 + 352) = static OS_os_log.crlDefault;
    *(v0 + 360) = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v13 = URL.absoluteString.getter();
    v15 = v14;
    *(inited + 56) = &type metadata for String;
    v16 = sub_1000053B0();
    *(v0 + 368) = v16;
    *(inited + 64) = v16;
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    v17 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v17, "QA Import file %{public}@", 25, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v18 = *(v7 + 16);
    v18(v8, v10, v9);
    if (qword_1019F2778 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 296);
    v19 = *(v0 + 304);
    v21 = *(v0 + 288);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = (*(v0 + 456) & 1) == 0;
    Assistant = type metadata accessor for CRLBoardFileReadAssistant();
    v24 = objc_allocWithZone(Assistant);
    *&v24[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_readAssistant] = 0;
    v18(&v24[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_url], v19, v21);
    *&v24[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_store] = v29;
    *&v24[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_context] = v28;
    *&v24[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_options] = v22;
    *(v0 + 208) = v24;
    *(v0 + 216) = Assistant;
    v25 = v29;
    v26 = v28;
    *(v0 + 376) = objc_msgSendSuper2((v0 + 208), "init");
    (*(v20 + 8))(v19, v21);
    v27 = swift_task_alloc();
    *(v0 + 384) = v27;
    *v27 = v0;
    v27[1] = sub_100DA4BC4;

    sub_100713020();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100DA4BC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 392) = a1;
  *(v4 + 400) = v1;

  v5 = *(v3 + 328);
  v6 = *(v3 + 320);
  if (v1)
  {
    v7 = sub_100DA54A0;
  }

  else
  {
    v7 = sub_100DA4D08;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100DA4D08()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[44];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[32];
  v7 = v0[33];
  v23 = v0[29];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v9 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v0[51] = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v10 = *(v1 + v9);
  v11 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v10 + v11, v6, type metadata accessor for CRLBoardCRDTData);
  v0[52] = sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D63C(v6, type metadata accessor for CRLBoardCRDTData);
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v5 + 8))(v4, v7);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v2;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  v15 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v15, "QA Import read board from file %{public}@, attempting to save.", 62, 2, inited);
  swift_setDeallocating();
  result = sub_100005070(inited + 32);
  v17 = *(v23 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___boardLibrary);
  v0[53] = v17;
  if (v17)
  {
    v18 = v0[31];
    v19 = sub_1005B981C(&qword_1019F3480);
    (*(*(v19 - 8) + 56))(v18, 1, 5, v19);
    v17;
    v20 = swift_task_alloc();
    v0[54] = v20;
    *v20 = v0;
    v20[1] = sub_100DA4F7C;
    v21 = v0[49];
    v22 = v0[31];

    return sub_1010B2B24(v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100DA4F7C()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *(*v1 + 248);
  *(*v1 + 440) = v0;

  sub_10003D63C(v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_100C33594(v3);
  v5 = *(v2 + 328);
  v6 = *(v2 + 320);
  if (v0)
  {
    v7 = sub_100DA555C;
  }

  else
  {
    v7 = sub_100DA510C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100DA510C()
{
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[30];
  v6 = *(v2 + v1);
  v7 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v6 + v7, v4, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_10003D63C(v4, type metadata accessor for CRLBoardCRDTData);
  v8 = (*(v2 + v1) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v9 = *v8;
  v10 = v8[1];

  sub_10084BD4C(v3, v9, v10, v5);
  v11 = swift_task_alloc();
  v0[56] = v11;
  *v11 = v0;
  v11[1] = sub_100DA5270;
  v12 = v0[30];

  return sub_100C1E55C(v12);
}

uint64_t sub_100DA5270()
{
  v1 = *v0;
  v2 = *(*v0 + 240);

  sub_10003D63C(v2, type metadata accessor for CRLBoardIdentifier);
  v3 = *(v1 + 328);
  v4 = *(v1 + 320);

  return _swift_task_switch(sub_100DA53C8, v4, v3);
}

uint64_t sub_100DA53C8()
{
  v1 = *(v0 + 376);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100DA54A0()
{
  v1 = v0[47];
  v3 = v0[42];
  v2 = v0[43];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DA555C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);

  v4 = *(v0 + 8);

  return v4();
}

id sub_100DA5778(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v55 = a5;
  v52 = a4;
  v53 = a3;
  v47 = a1;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for UTType();
  v49 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(LPLinkMetadata) init];
  v51 = v13;
  v14 = String._bridgeToObjectiveC()();
  [v13 setTitle:v14];

  v54 = [objc_allocWithZone(NSItemProvider) init];
  static UTType.png.getter();
  UTType.identifier.getter();
  v15 = *(v10 + 8);
  v48 = v10 + 8;
  v50 = v15;
  v15(v12, v9);
  v16 = String._bridgeToObjectiveC()();

  v46 = type metadata accessor for CRLBoardIdentifier;
  v17 = a1;
  v18 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v18;
  sub_10004FD94(v17, v18, type metadata accessor for CRLBoardIdentifier);
  v19 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = v20;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = v21;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1005EB270(v18, v23 + v19);
  v24 = (v23 + v20);
  v26 = v52;
  v25 = v53;
  *v24 = a2;
  v24[1] = v25;
  v27 = (v23 + v21);
  *v27 = v26;
  v27[1] = &off_10189AB78;
  *(v23 + v22) = v55;
  v60 = sub_100DA6228;
  v61 = v23;
  aBlock = _NSConcreteStackBlock;
  v57 = *"";
  v43 = &v58;
  v58 = sub_100648E30;
  v59 = &unk_1018A46D0;
  v28 = _Block_copy(&aBlock);

  v29 = v26;

  v30 = v54;
  [v54 registerDataRepresentationForTypeIdentifier:v16 visibility:0 loadHandler:v28];
  _Block_release(v28);

  v31 = v51;
  [v51 setImageProvider:v30];
  v32 = [objc_allocWithZone(NSItemProvider) init];
  static UTType.png.getter();
  UTType.identifier.getter();
  v50(v12, v49);
  v33 = String._bridgeToObjectiveC()();

  v34 = v42;
  sub_10004FD94(v47, v42, v46);
  v35 = swift_allocObject();
  sub_1005EB270(v34, v35 + v19);
  v36 = (v35 + v44);
  *v36 = a2;
  v36[1] = v53;
  v37 = (v35 + v45);
  *v37 = v29;
  v37[1] = &off_10189AB78;
  *(v35 + v22) = v55;
  v60 = sub_100DA6240;
  v61 = v35;
  aBlock = _NSConcreteStackBlock;
  v57 = *"";
  v58 = sub_100648E30;
  v59 = &unk_1018A4720;
  v38 = _Block_copy(&aBlock);

  v39 = v29;

  [v32 registerDataRepresentationForTypeIdentifier:v33 visibility:0 loadHandler:v38];
  _Block_release(v38);

  [v31 setIconProvider:v32];
  return v31;
}

id sub_100DA5C84()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() crl_padUI];
  if (result)
  {
    if (CHGetPersonalizedSynthesisSupportState() < 1)
    {
      return 0;
    }

    else
    {
      static Locale.current.getter();
      isa = Locale._bridgeToObjectiveC()().super.isa;
      (*(v1 + 8))(v3, v0);
      v6 = CHGetPersonalizedSynthesisSupportStateForLocale();

      return (v6 > 0);
    }
  }

  return result;
}

uint64_t sub_100DA5D94()
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
      result = sub_100C0BA2C();
      if ((result & 1) == 0)
      {
        v6 = objc_opt_self();
        v7 = String._bridgeToObjectiveC()();
        _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(5);
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
        sub_100641F30(0, 0, v4, &unk_1014B2400, v12);
      }
    }
  }

  return result;
}

uint64_t sub_100DA5F90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_100C1FB50(a1);
}

uint64_t sub_100DA6044(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100DA374C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100DA610C()
{
  result = qword_101A1F8D8;
  if (!qword_101A1F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1F8D8);
  }

  return result;
}

uint64_t sub_100DA6160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100DA3C7C(a1, v4, v5, v7, v6);
}

uint64_t sub_100DA6258(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v3 + v8);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v3 + v9);
  v14 = *(v3 + v9 + 8);
  v15 = *(v3 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v3 + v7, v11, v12, v13, v14, v15);
}

uint64_t sub_100DA6338(uint64_t a1)
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

  return sub_100D9DB3C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100DA6428()
{
  if (*v0)
  {
    return 0xD00000000000003ELL;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_100DA6468()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_100DA64E0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v9 = result;
    type metadata accessor for CRLBoardItem(0);
    swift_unknownObjectRetain();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v11 = [v9 canHandleInsertionOfBoardItems:isa insertionContext:a4];

    if (v11)
    {
      swift_beginAccess();
      *(a5 + 16) = v9;
      result = swift_unknownObjectRelease();
      *a2 = 1;
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100DA65CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100DA6640()
{
  result = qword_101A1FB50[0];
  if (!qword_101A1FB50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_101A1FB50);
  }

  return result;
}

uint64_t sub_100DA6694()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100DA677C(void *a1, uint64_t a2, int a3)
{
  v5 = v3;
  v43 = a3;
  v7 = *((swift_isaMask & *v3) + 0xD0);
  v42 = *(v7 - 8);
  __chkstk_darwin(a1);
  v9 = &v42 - v8;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = [a1 getBoardItemForUUID:isa];

  if (v11)
  {
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = v11;
      sub_1012E0400(v13, &off_10188FE10);

      if (v4)
      {
      }

      else
      {
        (*(v42 + 16))(v9, &v5[*((swift_isaMask & *v5) + 0xE0)], v7);
        v44 = v13;
        v15 = v14;
        swift_setAtReferenceWritableKeyPath();

        v16 = v15;
        sub_1012CF6CC(v13, &off_10188FE10, v43);
      }

      return;
    }
  }

  v17 = objc_opt_self();
  v18 = [v17 _atomicIncrementAssertCount];
  v44 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v44);
  StaticString.description.getter();
  v19 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  v21 = [v20 lastPathComponent];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v25 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v18;
  v27 = sub_1005CF000();
  *(inited + 96) = v27;
  v28 = sub_1005CF04C();
  *(inited + 104) = v28;
  *(inited + 72) = v19;
  *(inited + 136) = &type metadata for String;
  v29 = sub_1000053B0();
  *(inited + 112) = v22;
  *(inited + 120) = v24;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v29;
  *(inited + 152) = 30;
  v30 = v44;
  *(inited + 216) = v27;
  *(inited + 224) = v28;
  *(inited + 192) = v30;
  v31 = v19;
  v32 = v30;
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v34 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v34, "Unable to retrieve board item", 29, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve board item");
  type metadata accessor for __VaListBuilder();
  v35 = swift_allocObject();
  v35[2] = 8;
  v35[3] = 0;
  v35[4] = 0;
  v35[5] = 0;
  v36 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v39 = String._bridgeToObjectiveC()();

  [v17 handleFailureInFunction:v37 file:v38 lineNumber:30 isFatal:1 format:v39 args:v36];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v40, v41);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100DA6D88()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0xD8);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  (*(*(*((v2 & v1) + 0xD0) - 8) + 8))(&v0[*((swift_isaMask & *v0) + 0xE0)]);
}

id sub_100DA6EC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetValue();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100DA6F34(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *a1) + 0xD8);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
  (*(*(*((v3 & v2) + 0xD0) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0xE0)]);
}

void sub_100DA7104()
{
  sub_100DC590C(319, &qword_101A1FC48, &type metadata for UInt32, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &qword_101A1FC50, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100DA725C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100DA7308()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100DA7408(uint64_t a1@<X8>)
{
  sub_100DC7478();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_100DA744C(uint64_t a1@<X8>)
{
  sub_100DC7478();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_100DA7484(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DC4F74();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_100DA74D0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_100DA74E8()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_100DA7514@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_100DA7530(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_100DA7550(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DC51B4();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_100DA759C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

unint64_t sub_100DA75D8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_100DA7600@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int sub_100DA761C()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100DA7688(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DC5208();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100DA76D4()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100DA7754()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t sub_100DA77C4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for CRLProto_Data(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100DA7910(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20178, type metadata accessor for CRLProto_Data);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA79B0(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA7A1C()
{
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);

  return Message.hash(into:)();
}

uint64_t sub_100DA7A98(uint64_t a1, uint64_t a2)
{
  if ((sub_1009F9488(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DA7B5C()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t sub_100DA7BCC()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    type metadata accessor for CRLProto_Date(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DA7CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20190, type metadata accessor for CRLProto_Date);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA7D78(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A20140, type metadata accessor for CRLProto_Date);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA7DE4()
{
  sub_100DBA678(&qword_101A20140, type metadata accessor for CRLProto_Date);

  return Message.hash(into:)();
}

uint64_t sub_100DA7E60(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DA7F04()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8190);
  sub_1005EB3DC(v0, qword_101AD8190);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DA8118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20198, type metadata accessor for CRLProto_Point);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA81B8(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA8224()
{
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point);

  return Message.hash(into:)();
}

uint64_t sub_100DA82A0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD81A8);
  sub_1005EB3DC(v0, qword_101AD81A8);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DA8468()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
    }
  }

  return result;
}

uint64_t sub_100DA84E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*v4 || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v5))
  {
    if (!v4[1] || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v5))
    {
      a4(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DA85F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201A0, type metadata accessor for CRLProto_Size);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA8694(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A10308, type metadata accessor for CRLProto_Size);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA8700()
{
  sub_100DBA678(&qword_101A10308, type metadata accessor for CRLProto_Size);

  return Message.hash(into:)();
}

uint64_t sub_100DA877C(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DA8830()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD81C0);
  sub_1005EB3DC(v0, qword_101AD81C0);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 8) = 1;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DA8A78()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DA8B24()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v1))
    {
      if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v1))
      {
        if (!v0[3] || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v1))
        {
          type metadata accessor for CRLProto_Rect(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100DA8C18@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  return UnknownStorage.init()();
}

uint64_t sub_100DA8C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201A8, type metadata accessor for CRLProto_Rect);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA8D30(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A10330, type metadata accessor for CRLProto_Rect);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA8D9C()
{
  sub_100DBA678(&qword_101A10330, type metadata accessor for CRLProto_Rect);

  return Message.hash(into:)();
}

uint64_t sub_100DA8E34()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CRLProto_Path.Element(0);
        sub_100DBA678(&qword_101A200C0, type metadata accessor for CRLProto_Path.Element);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DA8F14()
{
  if (!*(*v0 + 16) || (type metadata accessor for CRLProto_Path.Element(0), sub_100DBA678(&qword_101A200C0, type metadata accessor for CRLProto_Path.Element), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    type metadata accessor for CRLProto_Path(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DA9078(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201B0, type metadata accessor for CRLProto_Path);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA9118(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A16D68, type metadata accessor for CRLProto_Path);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA9184()
{
  sub_100DBA678(&qword_101A16D68, type metadata accessor for CRLProto_Path);

  return Message.hash(into:)();
}

uint64_t sub_100DA9200(uint64_t *a1, uint64_t *a2)
{
  if ((sub_10066E698(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DA92A8()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD81F0);
  sub_1005EB3DC(v0, qword_101AD81F0);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "moveTo";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "lineTo";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "curveTo";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "close";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_100DA9510()
{
  strcpy(v1, "CRLProto.Path");
  HIWORD(v1[1]) = -4864;
  v0._countAndFlagsBits = 0x746E656D656C452ELL;
  v0._object = 0xE800000000000000;
  String.append(_:)(v0);
  qword_101AD8208 = v1[0];
  unk_101AD8210 = v1[1];
}

uint64_t sub_100DA9584()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8218);
  sub_1005EB3DC(v0, qword_101AD8218);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endPoint";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "controlPoint1";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "controlPoint2";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DA97D4()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        }
      }

      else if (result == 1)
      {
        sub_100DC4F74();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        goto LABEL_4;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DA98B8()
{
  if (!*v0 || (sub_100DC4F74(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0[2];
    v4 = v0[3];
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
    }

    else
    {
      if (!v5)
      {
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v6 = v3;
      v7 = v3 >> 32;
    }

    if (v6 == v7)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

LABEL_12:
    v8 = v0[4];
    v9 = v0[5];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_21;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 == v12)
    {
      goto LABEL_21;
    }

LABEL_20:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

LABEL_21:
    v13 = v0[6];
    v14 = v0[7];
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_30;
      }

      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
    }

    else
    {
      if (!v15)
      {
        if ((v14 & 0xFF000000000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_29:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        goto LABEL_30;
      }

      v16 = v13;
      v17 = v13 >> 32;
    }

    if (v16 != v17)
    {
      goto LABEL_29;
    }

LABEL_30:
    type metadata accessor for CRLProto_Path.Element(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DA9A74@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_10146F370;
  *(a1 + 32) = xmmword_10146F370;
  *(a1 + 48) = xmmword_10146F370;
  return UnknownStorage.init()();
}

uint64_t sub_100DA9B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201B8, type metadata accessor for CRLProto_Path.Element);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA9BA8(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A200C0, type metadata accessor for CRLProto_Path.Element);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA9C14()
{
  sub_100DBA678(&qword_101A200C0, type metadata accessor for CRLProto_Path.Element);

  return Message.hash(into:)();
}

uint64_t sub_100DA9C94()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8230);
  sub_1005EB3DC(v0, qword_101AD8230);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1014A50F0;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "strokePoints";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "maskPath";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "randomSeed";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "creationDate";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "renderScaleX";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "renderScaleY";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "anchorPointForTexture";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "renderGroupID";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "shouldSolveMath";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "isSynthesizedStroke";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "particleOffset";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "secondaryParticleOffset";
  *(v28 + 1) = 23;
  v28[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAA0CC()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 6)
      {
        if (result > 9)
        {
          if (result == 10)
          {
            goto LABEL_25;
          }

          if (result == 11 || result == 12)
          {
            type metadata accessor for CRLProto_PKStrokePathData(0);
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          }
        }

        else
        {
          if (result == 7)
          {
            sub_100DAA4E4();
            goto LABEL_5;
          }

          if (result != 8)
          {
LABEL_25:
            type metadata accessor for CRLProto_PKStrokePathData(0);
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            goto LABEL_5;
          }

          sub_100DAA598();
        }
      }

      else if (result > 3)
      {
        if (result == 4)
        {
          sub_100DAA430();
        }

        else
        {
          type metadata accessor for CRLProto_PKStrokePathData(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for CRLProto_PKStrokePathData.StrokePoint(0);
            sub_100DBA678(&qword_101A20088, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 2:
            sub_100DAA37C();
            break;
          case 3:
            type metadata accessor for CRLProto_PKStrokePathData(0);
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DAA37C()
{
  type metadata accessor for CRLProto_PKStrokePathData(0);
  type metadata accessor for CRLProto_Path(0);
  sub_100DBA678(&qword_101A16D68, type metadata accessor for CRLProto_Path);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAA430()
{
  type metadata accessor for CRLProto_PKStrokePathData(0);
  type metadata accessor for CRLProto_Date(0);
  sub_100DBA678(&qword_101A20140, type metadata accessor for CRLProto_Date);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAA4E4()
{
  type metadata accessor for CRLProto_PKStrokePathData(0);
  type metadata accessor for CRLProto_Point(0);
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAA598()
{
  type metadata accessor for CRLProto_PKStrokePathData(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAA64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CRLProto_PKStrokePathData.StrokePoint(0), sub_100DBA678(&qword_101A20088, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = sub_100DAA840(v3, a1, a2, a3);
    if (!v4)
    {
      sub_100DAAA50(v3);
      sub_100DAAAC8(v3, a1, a2, a3);
      sub_100DAACD8(v3);
      sub_100DAAD50(v3);
      sub_100DAADC8(v3, a1, a2, a3);
      sub_100DAAFD8(v3, a1, a2, a3);
      sub_100DAB1E8(v3);
      sub_100DAB260(v3);
      sub_100DAB2D8(v3);
      sub_100DAB350(v3);
      type metadata accessor for CRLProto_PKStrokePathData(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DAA840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_101A1ACF8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Path(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_PKStrokePathData(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_101A1ACF8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_101A1ACF8);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Path);
  sub_100DBA678(&qword_101A16D68, type metadata accessor for CRLProto_Path);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Path);
}

uint64_t sub_100DAAA50(uint64_t a1)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAAAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_101A1ACE8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Date(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_PKStrokePathData(0);
  sub_10000BE14(a1 + *(v12 + 32), v7, &qword_101A1ACE8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_101A1ACE8);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Date);
  sub_100DBA678(&qword_101A20140, type metadata accessor for CRLProto_Date);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Date);
}

uint64_t sub_100DAACD8(uint64_t a1)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAAD50(uint64_t a1)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_101A15CE8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Point(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_PKStrokePathData(0);
  sub_10000BE14(a1 + *(v12 + 44), v7, &qword_101A15CE8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_101A15CE8);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Point);
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Point);
}

uint64_t sub_100DAAFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_PKStrokePathData(0);
  sub_10000BE14(a1 + *(v12 + 48), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DAB1E8(uint64_t a1)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAB260(uint64_t a1)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if (*(a1 + *(result + 56)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAB2D8(uint64_t a1)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if ((*(a1 + *(result + 60) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAB350(uint64_t a1)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if ((*(a1 + *(result + 64) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAB3C8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = type metadata accessor for CRLProto_Path(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  v7 = &a2[a1[7]];
  *v7 = 0;
  v7[4] = 1;
  v8 = type metadata accessor for CRLProto_Date(0);
  (*(*(v8 - 8) + 56))(&a2[v6], 1, 1, v8);
  v9 = a1[10];
  v10 = &a2[a1[9]];
  *v10 = 0;
  v10[4] = 1;
  v11 = &a2[v9];
  *v11 = 0;
  v11[4] = 1;
  v12 = a1[11];
  v13 = type metadata accessor for CRLProto_Point(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = a1[12];
  v15 = type metadata accessor for CRLProto_Data(0);
  result = (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  v17 = a1[14];
  a2[a1[13]] = 2;
  a2[v17] = 2;
  v18 = a1[16];
  v19 = &a2[a1[15]];
  *v19 = 0;
  v19[8] = 1;
  v20 = &a2[v18];
  *v20 = 0;
  v20[8] = 1;
  return result;
}

uint64_t sub_100DAB5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201C8, type metadata accessor for CRLProto_PKStrokePathData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DAB660(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1ACF0, type metadata accessor for CRLProto_PKStrokePathData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DAB6CC()
{
  sub_100DBA678(&qword_101A1ACF0, type metadata accessor for CRLProto_PKStrokePathData);

  return Message.hash(into:)();
}

void sub_100DAB74C()
{
  v0._countAndFlagsBits = 0x50656B6F7274532ELL;
  v0._object = 0xEC000000746E696FLL;
  String.append(_:)(v0);
  qword_101AD8248 = 0xD000000000000019;
  unk_101AD8250 = 0x80000001015A1E10;
}

uint64_t sub_100DAB7C0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8258);
  sub_1005EB3DC(v0, qword_101AD8258);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1014A04A0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "altitude";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "azimuth";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "force";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "opacity";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "size";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "timeOffset";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "radius2";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "edgeWidth";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "threshold";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DABB38()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        break;
      }

      if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_9;
      }

LABEL_10:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 9)
    {
      goto LABEL_10;
    }

LABEL_9:
    dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100DABC44()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v0[2];
  v9 = v0[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_19:
  v13 = v0[4];
  v14 = v0[5];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_28;
    }

    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 == v17)
  {
    goto LABEL_28;
  }

LABEL_27:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_28:
  v18 = v0[6];
  v19 = v0[7];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_37;
    }

    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
  }

  else
  {
    if (!v20)
    {
      if ((v19 & 0xFF000000000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v21 = v18;
    v22 = v18 >> 32;
  }

  if (v21 == v22)
  {
    goto LABEL_37;
  }

LABEL_36:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_37:
  v23 = v0[8];
  v24 = v0[9];
  v25 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v25 != 2)
    {
      goto LABEL_46;
    }

    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
  }

  else
  {
    if (!v25)
    {
      if ((v24 & 0xFF000000000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v26 = v23;
    v27 = v23 >> 32;
  }

  if (v26 == v27)
  {
    goto LABEL_46;
  }

LABEL_45:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_46:
  v28 = v0[10];
  v29 = v0[11];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_55;
    }

    v31 = *(v28 + 16);
    v32 = *(v28 + 24);
  }

  else
  {
    if (!v30)
    {
      if ((v29 & 0xFF000000000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    v31 = v28;
    v32 = v28 >> 32;
  }

  if (v31 == v32)
  {
    goto LABEL_55;
  }

LABEL_54:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_55:
  v33 = v0[12];
  v34 = v0[13];
  v35 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v35 != 2)
    {
      goto LABEL_64;
    }

    v36 = *(v33 + 16);
    v37 = *(v33 + 24);
  }

  else
  {
    if (!v35)
    {
      if ((v34 & 0xFF000000000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v36 = v33;
    v37 = v33 >> 32;
  }

  if (v36 == v37)
  {
    goto LABEL_64;
  }

LABEL_63:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_64:
  v38 = v0[14];
  v39 = v0[15];
  v40 = v39 >> 62;
  if ((v39 >> 62) > 1)
  {
    if (v40 != 2)
    {
      goto LABEL_73;
    }

    v41 = *(v38 + 16);
    v42 = *(v38 + 24);
  }

  else
  {
    if (!v40)
    {
      if ((v39 & 0xFF000000000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v41 = v38;
    v42 = v38 >> 32;
  }

  if (v41 == v42)
  {
    goto LABEL_73;
  }

LABEL_72:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_73:
  v43 = v0[16];
  v44 = v0[17];
  v45 = v44 >> 62;
  if ((v44 >> 62) > 1)
  {
    if (v45 != 2)
    {
      goto LABEL_82;
    }

    v46 = *(v43 + 16);
    v47 = *(v43 + 24);
  }

  else
  {
    if (!v45)
    {
      if ((v44 & 0xFF000000000000) == 0)
      {
        goto LABEL_82;
      }

LABEL_81:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_82;
    }

    v46 = v43;
    v47 = v43 >> 32;
  }

  if (v46 != v47)
  {
    goto LABEL_81;
  }

LABEL_82:
  type metadata accessor for CRLProto_PKStrokePathData.StrokePoint(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100DABFC0@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_10146F370;
  a1[1] = xmmword_10146F370;
  a1[2] = xmmword_10146F370;
  a1[3] = xmmword_10146F370;
  a1[4] = xmmword_10146F370;
  a1[5] = xmmword_10146F370;
  a1[6] = xmmword_10146F370;
  a1[7] = xmmword_10146F370;
  a1[8] = xmmword_10146F370;
  return UnknownStorage.init()();
}

uint64_t sub_100DAC024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100DAC098(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100DAC13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201E8, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DAC1DC(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A20088, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DAC248()
{
  sub_100DBA678(&qword_101A20088, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);

  return Message.hash(into:)();
}

uint64_t sub_100DAC2C8()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8270);
  sub_1005EB3DC(v0, qword_101AD8270);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101483930;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "insertionPointCursor";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "rangeSelectionHeadCursor";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "rangeSelectionTailCursor";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "eolAffinity";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "isVisual";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "insertionEdge";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAC5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_100DC51B4();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            sub_100DAC778();
            break;
          case 3:
            sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_TextSelection);
            break;
        }
      }

      else if (result > 5)
      {
        if (result != 6)
        {
          if (result != 7)
          {
            goto LABEL_5;
          }

LABEL_17:
          type metadata accessor for CRLProto_TextSelection(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        type metadata accessor for CRLProto_TextSelection(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else
      {
        if (result != 4)
        {
          goto LABEL_17;
        }

        sub_100DAC82C();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DAC778()
{
  type metadata accessor for CRLProto_TextSelection(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAC82C()
{
  type metadata accessor for CRLProto_TextSelection(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAC8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_100DC51B4(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = sub_100DACA3C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_TextSelection, 3);
      sub_100DACC4C(v3, a1, a2, a3);
      sub_100DACE5C(v3);
      sub_100DACED4(v3);
      sub_100DACF4C(v3);
      type metadata accessor for CRLProto_TextSelection(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DACA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_TextSelection(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DACC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_TextSelection(0);
  sub_10000BE14(a1 + *(v12 + 32), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DACE5C(uint64_t a1)
{
  result = type metadata accessor for CRLProto_TextSelection(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DACED4(uint64_t a1)
{
  result = type metadata accessor for CRLProto_TextSelection(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DACF4C(uint64_t a1)
{
  result = type metadata accessor for CRLProto_TextSelection(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DACFC4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[7], 1, 1, v5);
  result = (v6)(a2 + a1[8], 1, 1, v5);
  v8 = a1[10];
  v9 = a2 + a1[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  *(a2 + v8) = 2;
  v10 = a2 + a1[11];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_100DAD114(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201F0, type metadata accessor for CRLProto_TextSelection);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DAD1B4(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A20068, type metadata accessor for CRLProto_TextSelection);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DAD220()
{
  sub_100DBA678(&qword_101A20068, type metadata accessor for CRLProto_TextSelection);

  return Message.hash(into:)();
}

uint64_t sub_100DAD2A0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8288);
  sub_1005EB3DC(v0, qword_101AD8288);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "insertionPoint";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "range";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAD48C()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD82A0);
  sub_1005EB3DC(v0, qword_101AD82A0);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tableCellRange";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAD654()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_100DC5208();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        sub_100DAD714();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DAD714()
{
  type metadata accessor for CRLProto_TableCellSelection(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAD7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_100DC5208(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = sub_100DAD894(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for CRLProto_TableCellSelection(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DAD894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_TableCellSelection(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DADAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_100DADB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20200, type metadata accessor for CRLProto_TableCellSelection);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DADC1C(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A20048, type metadata accessor for CRLProto_TableCellSelection);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DADC88()
{
  sub_100DBA678(&qword_101A20048, type metadata accessor for CRLProto_TableCellSelection);

  return Message.hash(into:)();
}

uint64_t sub_100DADD08()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD82B8);
  sub_1005EB3DC(v0, qword_101AD82B8);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C4D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "range";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "row";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "col";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DADF38()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD82D0);
  sub_1005EB3DC(v0, qword_101AD82D0);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mostSpecificItemSelectionUUIDs";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isGroup";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "textSelection";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tableCellSelection";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAE180()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_100DAE2CC();
        }

        else if (result == 4)
        {
          sub_100DAE380();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for CRLProto_Data(0);
        sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DAE2CC()
{
  type metadata accessor for CRLProto_PersistableSelectionPath(0);
  type metadata accessor for CRLProto_TextSelection(0);
  sub_100DBA678(&qword_101A20068, type metadata accessor for CRLProto_TextSelection);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAE380()
{
  type metadata accessor for CRLProto_PersistableSelectionPath(0);
  type metadata accessor for CRLProto_TableCellSelection(0);
  sub_100DBA678(&qword_101A20048, type metadata accessor for CRLProto_TableCellSelection);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAE434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CRLProto_Data(0), sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (v3[8] != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      result = sub_100DAE570(v3, a1, a2, a3);
      if (!v4)
      {
        sub_100DAE780(v3, a1, a2, a3);
        type metadata accessor for CRLProto_PersistableSelectionPath(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_100DAE570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019FC398);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_TextSelection(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_PersistableSelectionPath(0);
  sub_10000BE14(a1 + *(v12 + 28), v7, &qword_1019FC398);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019FC398);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_TextSelection);
  sub_100DBA678(&qword_101A20068, type metadata accessor for CRLProto_TextSelection);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_TextSelection);
}

uint64_t sub_100DAE780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019FC390);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_TableCellSelection(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_PersistableSelectionPath(0);
  sub_10000BE14(a1 + *(v12 + 32), v7, &qword_1019FC390);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019FC390);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_TableCellSelection);
  sub_100DBA678(&qword_101A20048, type metadata accessor for CRLProto_TableCellSelection);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_TableCellSelection);
}

uint64_t sub_100DAE990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for CRLProto_TextSelection(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for CRLProto_TableCellSelection(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_100DAEAB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20210, type metadata accessor for CRLProto_PersistableSelectionPath);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DAEB58(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019FC3A8, type metadata accessor for CRLProto_PersistableSelectionPath);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DAEBC4()
{
  sub_100DBA678(&qword_1019FC3A8, type metadata accessor for CRLProto_PersistableSelectionPath);

  return Message.hash(into:)();
}

uint64_t sub_100DAEC44()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD82E8);
  sub_1005EB3DC(v0, qword_101AD82E8);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C4D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "presenceUuidData";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeStamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "persistableSelectionPathData";
  *(v11 + 8) = 28;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAEE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_CollaboratorCursor);
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 1:
        sub_100DAEF20();
        break;
    }
  }

  return result;
}

uint64_t sub_100DAEF20()
{
  type metadata accessor for CRLProto_CollaboratorCursor(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAEFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DAF0A4(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_CollaboratorCursor, 3);
    type metadata accessor for CRLProto_CollaboratorCursor(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DAF0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_CollaboratorCursor(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DAF2B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRLProto_Data(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];

  return v8(v6, 1, 1, v5);
}

uint64_t sub_100DAF3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20228, type metadata accessor for CRLProto_CollaboratorCursor);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DAF464(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A11F80, type metadata accessor for CRLProto_CollaboratorCursor);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DAF4D0()
{
  sub_100DBA678(&qword_101A11F80, type metadata accessor for CRLProto_CollaboratorCursor);

  return Message.hash(into:)();
}

uint64_t sub_100DAF550()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8300);
  sub_1005EB3DC(v0, qword_101AD8300);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "presenceUuidData";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "colorIndex";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAF718()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100DAF7A8();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t sub_100DAF7A8()
{
  type metadata accessor for CRLProto_CollaboratorCursorColor(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAF85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DAF8F8(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    type metadata accessor for CRLProto_CollaboratorCursorColor(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DAF8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_CollaboratorCursorColor(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DAFB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20230, type metadata accessor for CRLProto_CollaboratorCursorColor);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DAFBF4(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019F67C8, type metadata accessor for CRLProto_CollaboratorCursorColor);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DAFC60()
{
  sub_100DBA678(&qword_1019F67C8, type metadata accessor for CRLProto_CollaboratorCursorColor);

  return Message.hash(into:)();
}

uint64_t sub_100DAFCE0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8318);
  sub_1005EB3DC(v0, qword_101AD8318);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ckUserIdentityData";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "presenceUuidData";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "timeStamp";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isFollowable";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAFF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 4)
      {
        type metadata accessor for CRLProto_RealTimeEnter(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      sub_100DB0034();
    }

    else if (result == 2)
    {
      sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_RealTimeEnter);
    }
  }

  return result;
}

uint64_t sub_100DB0034()
{
  type metadata accessor for CRLProto_RealTimeEnter(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB00E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB01D0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_RealTimeEnter, 2);
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100DB03E0(v3);
    type metadata accessor for CRLProto_RealTimeEnter(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB01D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_RealTimeEnter(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB03E0(uint64_t a1)
{
  result = type metadata accessor for CRLProto_RealTimeEnter(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DB0458@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  result = (v6)(&a2[a1[7]], 1, 1, v5);
  a2[a1[8]] = 2;
  return result;
}

uint64_t sub_100DB055C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20238, type metadata accessor for CRLProto_RealTimeEnter);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB05FC(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A0B5E8, type metadata accessor for CRLProto_RealTimeEnter);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB0668()
{
  sub_100DBA678(&qword_101A0B5E8, type metadata accessor for CRLProto_RealTimeEnter);

  return Message.hash(into:)();
}

uint64_t sub_100DB0774(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20240, type metadata accessor for CRLProto_RealTimeLeave);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB0814(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019F67E0, type metadata accessor for CRLProto_RealTimeLeave);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB0880()
{
  sub_100DBA678(&qword_1019F67E0, type metadata accessor for CRLProto_RealTimeLeave);

  return Message.hash(into:)();
}

uint64_t sub_100DB092C()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8348);
  sub_1005EB3DC(v0, qword_101AD8348);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1014A04A0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "persistenceType";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "minRequiredVersion";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "childObjectReferences";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "assetReferences";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "dataDirectoryEntries";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "objectOptions";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "minRequiredVersionForGoodEnoughFidelity";
  *(v19 + 1) = 39;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "minRequiredVersionForFullFidelity";
  *(v21 + 1) = 33;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "persistenceSubType";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB0CB0()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        break;
      }

      if (result <= 6)
      {
        if (result == 5)
        {
          v3 = v0;
          type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0);
          sub_100DBA678(&qword_101A1FF58, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_6;
        }

        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else
      {
        if (result == 7 || result == 8)
        {
          goto LABEL_25;
        }

        if (result == 9)
        {
          type metadata accessor for CRLProto_ObjectInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 2)
    {
      v3 = v0;
      if (result == 3)
      {
        type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference(0);
        sub_100DBA678(&qword_101A1FF98, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);
      }

      else
      {
        type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
        sub_100DBA678(&qword_101A1FF78, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
      }

      goto LABEL_5;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      goto LABEL_6;
    }

    if (result != 2)
    {
      goto LABEL_6;
    }

LABEL_25:
    dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100DB0F18()
{
  if (*v0)
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(*(v0 + 8) + 16))
  {
    result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v3 = v1;
  if (*(*(v0 + 16) + 16))
  {
    type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference(0);
    sub_100DBA678(&qword_101A1FF98, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v3 = 0;
  }

  if (*(*(v0 + 24) + 16))
  {
    type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
    sub_100DBA678(&qword_101A1FF78, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v3)
    {
      return result;
    }

    v3 = 0;
  }

  if (*(*(v0 + 32) + 16))
  {
    type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0);
    sub_100DBA678(&qword_101A1FF58, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    v4 = v3;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v3)
    {
      return result;
    }

    if (!*(v0 + 40))
    {
      goto LABEL_17;
    }

LABEL_16:
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_17;
  }

  v4 = v3;
  if (*(v0 + 40))
  {
    goto LABEL_16;
  }

LABEL_17:
  if (!*(*(v0 + 48) + 16) || (result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(*(v0 + 56) + 16) || (result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)(), !v4))
    {
      result = sub_100DB11C0(v0);
      if (!v4)
      {
        type metadata accessor for CRLProto_ObjectInfo(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_100DB11C0(uint64_t a1)
{
  result = type metadata accessor for CRLProto_ObjectInfo(0);
  if ((*(a1 + *(result + 52) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DB1238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  *(a2 + 40) = 0;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 56) = _swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 52);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_100DB12B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100DB1328(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100DB13CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20248, type metadata accessor for CRLProto_ObjectInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB146C(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019F69B0, type metadata accessor for CRLProto_ObjectInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB14D8()
{
  sub_100DBA678(&qword_1019F69B0, type metadata accessor for CRLProto_ObjectInfo);

  return Message.hash(into:)();
}

void sub_100DB1558()
{
  v0._countAndFlagsBits = 0xD000000000000015;
  v0._object = 0x80000001015A21F0;
  String.append(_:)(v0);
  qword_101AD8360 = 0xD000000000000013;
  *algn_101AD8368 = 0x80000001015A2150;
}

uint64_t sub_100DB15DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100DB67B4(a1, v7, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_100DB1660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128))
{
  result = sub_100DB686C(v4, a1, a2, a3, a4);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB16BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_100DB17B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20250, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB1854(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FF98, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB18C0()
{
  sub_100DBA678(&qword_101A1FF98, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);

  return Message.hash(into:)();
}

void sub_100DB196C()
{
  v0._countAndFlagsBits = 0x655274657373412ELL;
  v0._object = 0xEF65636E65726566;
  String.append(_:)(v0);
  qword_101AD8388 = 0xD000000000000013;
  unk_101AD8390 = 0x80000001015A2150;
}

uint64_t sub_100DB19E4()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8398);
  sub_1005EB3DC(v0, qword_101AD8398);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assetUUID";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB1BAC()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      sub_100DB1C3C();
    }
  }

  return result;
}

uint64_t sub_100DB1C3C()
{
  type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB1CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    result = sub_100DB1D9C(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DB1D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB1FAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_100DB208C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20258, type metadata accessor for CRLProto_ObjectInfo.AssetReference);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB212C(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FF78, type metadata accessor for CRLProto_ObjectInfo.AssetReference);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB2198()
{
  sub_100DBA678(&qword_101A1FF78, type metadata accessor for CRLProto_ObjectInfo.AssetReference);

  return Message.hash(into:)();
}

void sub_100DB2218()
{
  v0._object = 0x80000001015A2220;
  v0._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v0);
  qword_101AD83B0 = 0xD000000000000013;
  *algn_101AD83B8 = 0x80000001015A2150;
}

uint64_t sub_100DB2288()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD83C0);
  sub_1005EB3DC(v0, qword_101AD83C0);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "size";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB2450()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t sub_100DB24DC()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DB2590@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  return UnknownStorage.init()();
}

uint64_t sub_100DB2614(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20260, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB26B4(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FF58, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB2720()
{
  sub_100DBA678(&qword_101A1FF58, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);

  return Message.hash(into:)();
}

uint64_t sub_100DB279C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DB2868()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD83D8);
  sub_1005EB3DC(v0, qword_101AD83D8);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C4D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rootObjectUUID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minRequiredVersion";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "assetInfos";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB2A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
          sub_100DBA678(&qword_101A1FF20, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
          break;
        case 1:
          sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_ObjectMetadata);
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DB2BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_ObjectMetadata, 1);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
      sub_100DBA678(&qword_101A1FF20, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CRLProto_ObjectMetadata(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB2CEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 1) = _swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_100DB2DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20268, type metadata accessor for CRLProto_ObjectMetadata);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB2E64(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A0FE58, type metadata accessor for CRLProto_ObjectMetadata);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB2ED0()
{
  sub_100DBA678(&qword_101A0FE58, type metadata accessor for CRLProto_ObjectMetadata);

  return Message.hash(into:)();
}

void sub_100DB2F50()
{
  v0._countAndFlagsBits = 0x6E4974657373412ELL;
  v0._object = 0xEA00000000006F66;
  String.append(_:)(v0);
  qword_101AD83F0 = 0xD000000000000017;
  *algn_101AD83F8 = 0x80000001015A2240;
}

uint64_t sub_100DB2FC0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8400);
  sub_1005EB3DC(v0, qword_101AD8400);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C4D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assetUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "filename";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "size";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB31D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 1:
        sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
        break;
    }
  }

  return result;
}

uint64_t sub_100DB3298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo, 1);
  if (!v4)
  {
    v6 = v3[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    if (v3[2])
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB3380@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_100DB3434(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a3 != -1)
  {
    v6 = a4;
    swift_once();
    a4 = v6;
  }

  v4 = *a4;

  return v4;
}

uint64_t sub_100DB34C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20270, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB3564(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FF20, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB35D0()
{
  sub_100DBA678(&qword_101A1FF20, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);

  return Message.hash(into:)();
}

uint64_t sub_100DB3650()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8418);
  sub_1005EB3DC(v0, qword_101AD8418);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "followerUuidData";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hostUuidData";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB3818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100DB67B4(a1, v5, a2, a3, type metadata accessor for CRLProto_StartOrEndFollow);
    }

    else if (result == 2)
    {
      sub_100DB38C0();
    }
  }

  return result;
}

uint64_t sub_100DB38C0()
{
  type metadata accessor for CRLProto_StartOrEndFollow(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB3974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB686C(v3, a1, a2, a3, type metadata accessor for CRLProto_StartOrEndFollow);
  if (!v4)
  {
    sub_100DB39F8(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB39F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_StartOrEndFollow(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB3C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CRLProto_Data(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_100DB3D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20278, type metadata accessor for CRLProto_StartOrEndFollow);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB3DAC(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A130F8, type metadata accessor for CRLProto_StartOrEndFollow);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB3E18()
{
  sub_100DBA678(&qword_101A130F8, type metadata accessor for CRLProto_StartOrEndFollow);

  return Message.hash(into:)();
}

uint64_t sub_100DB3E98()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8430);
  sub_1005EB3DC(v0, qword_101AD8430);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146CA70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "presenceUuidData";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "viewScale";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "visibleRectOrigin";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "visibleRectSize";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "timestamp";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB412C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_FollowViewportState);
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_100DB4240();
          break;
        case 4:
          sub_100DB42F4();
          break;
        case 5:
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_100DB4240()
{
  type metadata accessor for CRLProto_FollowViewportState(0);
  type metadata accessor for CRLProto_Point(0);
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB42F4()
{
  type metadata accessor for CRLProto_FollowViewportState(0);
  type metadata accessor for CRLProto_Size(0);
  sub_100DBA678(&qword_101A10308, type metadata accessor for CRLProto_Size);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB43A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_FollowViewportState, 1);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    sub_100DB44B0(v3, a1, a2, a3);
    sub_100DB46C0(v3, a1, a2, a3);
    if (*(v3 + 8))
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    type metadata accessor for CRLProto_FollowViewportState(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB44B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_101A15CE8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Point(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_FollowViewportState(0);
  sub_10000BE14(a1 + *(v12 + 32), v7, &qword_101A15CE8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_101A15CE8);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Point);
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Point);
}

uint64_t sub_100DB46C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_101A15CF0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Size(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_FollowViewportState(0);
  sub_10000BE14(a1 + *(v12 + 36), v7, &qword_101A15CF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_101A15CF0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Size);
  sub_100DBA678(&qword_101A10308, type metadata accessor for CRLProto_Size);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Size);
}

uint64_t sub_100DB48D0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v4 = a1[7];
  v5 = type metadata accessor for CRLProto_Data(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = type metadata accessor for CRLProto_Point(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[9];
  v9 = type metadata accessor for CRLProto_Size(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_100DB4A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20280, type metadata accessor for CRLProto_FollowViewportState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB4AD4(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A15CF8, type metadata accessor for CRLProto_FollowViewportState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB4B40()
{
  sub_100DBA678(&qword_101A15CF8, type metadata accessor for CRLProto_FollowViewportState);

  return Message.hash(into:)();
}

uint64_t sub_100DB4BC0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8448);
  sub_1005EB3DC(v0, qword_101AD8448);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hostUuidData";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB4D88()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100DB4E18();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t sub_100DB4E18()
{
  type metadata accessor for CRLProto_RefuseOrEndFollow(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB4ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB4F68(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    type metadata accessor for CRLProto_RefuseOrEndFollow(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB4F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_RefuseOrEndFollow(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB51C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20290, type metadata accessor for CRLProto_RefuseOrEndFollow);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB5264(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FED0, type metadata accessor for CRLProto_RefuseOrEndFollow);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB52D0()
{
  sub_100DBA678(&qword_101A1FED0, type metadata accessor for CRLProto_RefuseOrEndFollow);

  return Message.hash(into:)();
}

uint64_t sub_100DB5350()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8460);
  sub_1005EB3DC(v0, qword_101AD8460);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101478A90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ownerUuidData";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "manipulationState";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "viewScale";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "unscaledContentOffset";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isAutoscrolling";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "timestamp";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB561C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_100DB57F4();
          break;
        case 5:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 6:
LABEL_15:
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_100DB573C(a1, v5, a2, a3, type metadata accessor for CRLProto_CopresenceViewportState);
          break;
        case 2:
          goto LABEL_15;
        case 3:
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          break;
      }
    }
  }
}

uint64_t sub_100DB573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB57F4()
{
  type metadata accessor for CRLProto_CopresenceViewportState(0);
  type metadata accessor for CRLProto_Point(0);
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB58A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB59E4(v3, a1, a2, a3, type metadata accessor for CRLProto_CopresenceViewportState, 1);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    if (*(v3 + 8))
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    sub_100DB5BFC(v3, a1, a2, a3);
    if (*(v3 + 12) == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v3 + 16))
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    type metadata accessor for CRLProto_CopresenceViewportState(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB59E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), uint64_t a6)
{
  v18[2] = a6;
  v18[3] = a3;
  v18[5] = a4;
  v18[1] = a2;
  v8 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for CRLProto_Data(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0, v13);
  sub_10000BE14(a1 + *(v16 + 36), v10, &qword_1019F67C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000CAAC(v10, &qword_1019F67C0);
  }

  sub_100DC50EC(v10, v15, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v15, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB5BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_101A15CE8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Point(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_CopresenceViewportState(0);
  sub_10000BE14(a1 + *(v12 + 40), v7, &qword_101A15CE8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_101A15CE8);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Point);
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Point);
}

uint64_t sub_100DB5E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for CRLProto_Data(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 40);
  v7 = type metadata accessor for CRLProto_Point(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_100DB5F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100DB5F78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100DB601C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20298, type metadata accessor for CRLProto_CopresenceViewportState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB60BC(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FEB0, type metadata accessor for CRLProto_CopresenceViewportState);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB6128()
{
  sub_100DBA678(&qword_101A1FEB0, type metadata accessor for CRLProto_CopresenceViewportState);

  return Message.hash(into:)();
}

uint64_t sub_100DB6234(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202A0, type metadata accessor for CRLProto_BoardItemIdentifier);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB62D4(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019F67D8, type metadata accessor for CRLProto_BoardItemIdentifier);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB6340()
{
  sub_100DBA678(&qword_1019F67D8, type metadata accessor for CRLProto_BoardItemIdentifier);

  return Message.hash(into:)();
}

uint64_t sub_100DB6478(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202A8, type metadata accessor for CRLProto_BoardIdentifier);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB6518(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FE78, type metadata accessor for CRLProto_BoardIdentifier);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB6584()
{
  sub_100DBA678(&qword_101A1FE78, type metadata accessor for CRLProto_BoardIdentifier);

  return Message.hash(into:)();
}

uint64_t sub_100DB6648(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  sub_10061655C(v7, a2);
  sub_1005EB3DC(v7, a2);
  sub_1005B981C(&qword_101A20180);
  v8 = (sub_1005B981C(&qword_101A20188) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10146C6B0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.same(_:);
  v13 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB67B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB686C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128))
{
  v17[3] = a4;
  v17[0] = a2;
  v17[1] = a3;
  v7 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for CRLProto_Data(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0, v12);
  sub_10000BE14(a1 + *(v15 + 20), v9, &qword_1019F67C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10000CAAC(v9, &qword_1019F67C0);
  }

  sub_100DC50EC(v9, v14, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v14, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB6A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100DB6B04(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_100DB6BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202B0, type metadata accessor for CRLProto_FolderIdentifier);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB6C64(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FE58, type metadata accessor for CRLProto_FolderIdentifier);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB6CD0()
{
  sub_100DBA678(&qword_101A1FE58, type metadata accessor for CRLProto_FolderIdentifier);

  return Message.hash(into:)();
}

uint64_t sub_100DB6D7C()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD84C0);
  sub_1005EB3DC(v0, qword_101AD84C0);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "payloadTypeValue";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "payload";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB6F44()
{
  type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB6FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB7208@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_100DB733C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202B8, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB73DC(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A137B0, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB7448()
{
  sub_100DBA678(&qword_101A137B0, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord);

  return Message.hash(into:)();
}

uint64_t sub_100DB74F4()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD84D8);
  sub_1005EB3DC(v0, qword_101AD84D8);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "opaqueChangeRecordDatas";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB76BC()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CRLProto_Data(0);
        sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DB77B8()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for CRLProto_Data(0), sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      type metadata accessor for CRLProto_RealTimeMessage(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DB78BC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = _swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t sub_100DB7904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100DB7978(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100DB7A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202C0, type metadata accessor for CRLProto_RealTimeMessage);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB7ABC(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A137B8, type metadata accessor for CRLProto_RealTimeMessage);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB7B28()
{
  sub_100DBA678(&qword_101A137B8, type metadata accessor for CRLProto_RealTimeMessage);

  return Message.hash(into:)();
}

uint64_t sub_100DB7BA4(void *a1, void *a2)
{
  if (*a1 != *a2 || (sub_10066C774(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DB7C5C()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD84F0);
  sub_1005EB3DC(v0, qword_101AD84F0);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptedCKRecordData";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB7E24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_100DB7ECC()
{
  type metadata accessor for CRLProto_EncryptedRealTimeMessage(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB7F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  if (!*v6 || (result = a4(*v6, 1, a2, a3), !v7))
  {
    result = a5(v6, a1, a2, a3);
    if (!v7)
    {
      a6(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DB803C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_EncryptedRealTimeMessage(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB82FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202C8, type metadata accessor for CRLProto_EncryptedRealTimeMessage);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB839C(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019F7050, type metadata accessor for CRLProto_EncryptedRealTimeMessage);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB8408()
{
  sub_100DBA678(&qword_1019F7050, type metadata accessor for CRLProto_EncryptedRealTimeMessage);

  return Message.hash(into:)();
}

uint64_t sub_100DB84B4()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8508);
  sub_1005EB3DC(v0, qword_101AD8508);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10146CA70;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "chainID";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "index";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "lastIndex";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "encrypted";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "data";
  *(v14 + 8) = 4;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB873C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_100DB883C();
      }

      else if (result == 2)
      {
LABEL_12:
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_12;
        case 4:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 5:
          sub_100DB573C(a1, v5, a2, a3, type metadata accessor for CRLProto_ChunkedRealTimeMessage);
          break;
      }
    }
  }
}

uint64_t sub_100DB883C()
{
  type metadata accessor for CRLProto_ChunkedRealTimeMessage(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB88F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB8A08(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + 4))
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + 8) == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    sub_100DB59E4(v3, a1, a2, a3, type metadata accessor for CRLProto_ChunkedRealTimeMessage, 5);
    type metadata accessor for CRLProto_ChunkedRealTimeMessage(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB8A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_ChunkedRealTimeMessage(0);
  sub_10000BE14(a1 + *(v12 + 32), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB8C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for CRLProto_Data(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 36);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_100DB8CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100DB8D70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100DB8E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202D0, type metadata accessor for CRLProto_ChunkedRealTimeMessage);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB8EB4(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A0BB88, type metadata accessor for CRLProto_ChunkedRealTimeMessage);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB8F20()
{
  sub_100DBA678(&qword_101A0BB88, type metadata accessor for CRLProto_ChunkedRealTimeMessage);

  return Message.hash(into:)();
}

uint64_t sub_100DB8FA0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8520);
  sub_1005EB3DC(v0, qword_101AD8520);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB9168()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 2)
    {
      sub_100DB91F8();
    }
  }

  return result;
}

uint64_t sub_100DB91F8()
{
  type metadata accessor for CRLProto_RealTimeMessageContainer(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB92AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = sub_100DB9348(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for CRLProto_RealTimeMessageContainer(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DB9348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_RealTimeMessageContainer(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB9558@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_100DB9628(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202D8, type metadata accessor for CRLProto_RealTimeMessageContainer);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB96C8(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FDD8, type metadata accessor for CRLProto_RealTimeMessageContainer);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB9734()
{
  sub_100DBA678(&qword_101A1FDD8, type metadata accessor for CRLProto_RealTimeMessageContainer);

  return Message.hash(into:)();
}

uint64_t sub_100DB97B4()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8538);
  sub_1005EB3DC(v0, qword_101AD8538);
  sub_1005B981C(&qword_101A20180);
  v1 = (sub_1005B981C(&qword_101A20188) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C4D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "boardIdentifier";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "data";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB99C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        break;
      case 1:
        sub_100DB9A8C();
        break;
    }
  }

  return result;
}

uint64_t sub_100DB9A8C()
{
  type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord(0);
  type metadata accessor for CRLProto_BoardIdentifier(0);
  sub_100DBA678(&qword_101A1FE78, type metadata accessor for CRLProto_BoardIdentifier);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB9B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB9BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB9CC8(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord, 3);
    type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB9CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019FC100);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_BoardIdentifier(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019FC100);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019FC100);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_BoardIdentifier);
  sub_100DBA678(&qword_101A1FE78, type metadata accessor for CRLProto_BoardIdentifier);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_BoardIdentifier);
}

uint64_t sub_100DB9ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), uint64_t a6)
{
  v18[2] = a6;
  v18[3] = a3;
  v18[5] = a4;
  v18[1] = a2;
  v8 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for CRLProto_Data(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0, v13);
  sub_10000BE14(a1 + *(v16 + 28), v10, &qword_1019F67C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000CAAC(v10, &qword_1019F67C0);
  }

  sub_100DC50EC(v10, v15, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v15, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DBA0F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRLProto_BoardIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for CRLProto_Data(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_100DBA1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100DBA250(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100DBA2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202E0, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DBA394@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_1005EB3DC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100DBA430(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019FC108, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_100DBA49C()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100DBA4F4()
{
  sub_100DBA678(&qword_1019FC108, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);

  return Message.hash(into:)();
}

Swift::Int sub_100DBA570()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100DBA678(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100DBD170(_DWORD *a1, _DWORD *a2)
{
  v46 = a2;
  v3 = type metadata accessor for CRLProto_Data(0);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v39 = &v37 - v6;
  v40 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v40);
  v44 = &v37 - v7;
  v8 = type metadata accessor for CRLProto_BoardIdentifier(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019FC100);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_1005B981C(&qword_101A202E8);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v41 = type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord(0);
  v19 = *(v41 + 24);
  v20 = *(v16 + 56);
  v45 = a1;
  sub_10000BE14(a1 + v19, v18, &qword_1019FC100);
  v21 = v46;
  sub_10000BE14(v46 + v19, &v18[v20], &qword_1019FC100);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_10000CAAC(v18, &qword_1019FC100);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &qword_101A202E8;
    v24 = v18;
LABEL_7:
    sub_10000CAAC(v24, v23);
    goto LABEL_20;
  }

  sub_10000BE14(v18, v14, &qword_1019FC100);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_100DC5154(v14, type metadata accessor for CRLProto_BoardIdentifier);
    goto LABEL_6;
  }

  sub_100DC50EC(&v18[v20], v11, type metadata accessor for CRLProto_BoardIdentifier);
  v25 = sub_100DC4A98(v14, v11, type metadata accessor for CRLProto_BoardIdentifier);
  sub_100DC5154(v11, type metadata accessor for CRLProto_BoardIdentifier);
  sub_100DC5154(v14, type metadata accessor for CRLProto_BoardIdentifier);
  sub_10000CAAC(v18, &qword_1019FC100);
  if ((v25 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  if (*v45 != *v21)
  {
    goto LABEL_20;
  }

  v26 = *(v41 + 28);
  v27 = *(v40 + 48);
  v28 = v44;
  sub_10000BE14(v45 + v26, v44, &qword_1019F67C0);
  sub_10000BE14(v21 + v26, v28 + v27, &qword_1019F67C0);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) != 1)
  {
    v32 = v39;
    sub_10000BE14(v28, v39, &qword_1019F67C0);
    if (v30(v28 + v27, 1, v29) != 1)
    {
      v33 = v28 + v27;
      v34 = v38;
      sub_100DC50EC(v33, v38, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v32, *(v32 + 8), *v34, *(v34 + 8)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v34, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v28, &qword_1019F67C0);
        if (v35)
        {
          goto LABEL_13;
        }

LABEL_20:
        v31 = 0;
        return v31 & 1;
      }

      sub_100DC5154(v34, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
      v23 = &qword_1019F67C0;
      goto LABEL_17;
    }

    sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
LABEL_16:
    v23 = &qword_1019F6CA0;
LABEL_17:
    v24 = v28;
    goto LABEL_7;
  }

  if (v30(v28 + v27, 1, v29) != 1)
  {
    goto LABEL_16;
  }

  sub_10000CAAC(v28, &qword_1019F67C0);
LABEL_13:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v31 & 1;
}

uint64_t sub_100DBD83C(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_10;
  }

  v21 = type metadata accessor for CRLProto_RealTimeMessageContainer(0);
  v22 = a2;
  v14 = *(v21 + 24);
  v15 = *(v11 + 48);
  sub_10000BE14(a1 + v14, v13, &qword_1019F67C0);
  sub_10000BE14(v22 + v14, &v13[v15], &qword_1019F67C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000BE14(v13, v10, &qword_1019F67C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_100DC50EC(&v13[v15], v7, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v10, *(v10 + 1), *v7, *(v7 + 1)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v7, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v13, &qword_1019F67C0);
        if (v20)
        {
          goto LABEL_5;
        }

LABEL_10:
        v17 = 0;
        return v17 & 1;
      }

      sub_100DC5154(v7, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
      v18 = &qword_1019F67C0;
LABEL_9:
      sub_10000CAAC(v13, v18);
      goto LABEL_10;
    }

    sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
LABEL_8:
    v18 = &qword_1019F6CA0;
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_10000CAAC(v13, &qword_1019F67C0);
LABEL_5:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t sub_100DBDC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_TableCellSelection(0);
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1005B981C(&qword_1019FC390);
  __chkstk_darwin(v7 - 8);
  v44 = (&v40 - v8);
  v45 = sub_1005B981C(&qword_101A20218);
  __chkstk_darwin(v45);
  v10 = &v40 - v9;
  v11 = type metadata accessor for CRLProto_TextSelection(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1005B981C(&qword_1019FC398);
  __chkstk_darwin(v15 - 8);
  v17 = (&v40 - v16);
  v18 = sub_1005B981C(&qword_101A20220);
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  if ((sub_10066C774(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_17;
  }

  v42 = v10;
  v40 = v6;
  v41 = type metadata accessor for CRLProto_PersistableSelectionPath(0);
  v21 = *(v41 + 28);
  v22 = *(v18 + 48);
  v43 = a1;
  sub_10000BE14(a1 + v21, v20, &qword_1019FC398);
  v23 = a2 + v21;
  v24 = a2;
  sub_10000BE14(v23, &v20[v22], &qword_1019FC398);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) != 1)
  {
    sub_10000BE14(v20, v17, &qword_1019FC398);
    if (v25(&v20[v22], 1, v11) != 1)
    {
      sub_100DC50EC(&v20[v22], v14, type metadata accessor for CRLProto_TextSelection);
      v28 = sub_100DC335C(v17, v14);
      sub_100DC5154(v14, type metadata accessor for CRLProto_TextSelection);
      sub_100DC5154(v17, type metadata accessor for CRLProto_TextSelection);
      sub_10000CAAC(v20, &qword_1019FC398);
      if ((v28 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    sub_100DC5154(v17, type metadata accessor for CRLProto_TextSelection);
LABEL_8:
    v26 = &qword_101A20220;
    v27 = v20;
LABEL_16:
    sub_10000CAAC(v27, v26);
    goto LABEL_17;
  }

  if (v25(&v20[v22], 1, v11) != 1)
  {
    goto LABEL_8;
  }

  sub_10000CAAC(v20, &qword_1019FC398);
LABEL_10:
  v29 = v42;
  v30 = *(v41 + 32);
  v31 = *(v45 + 48);
  sub_10000BE14(v43 + v30, v42, &qword_1019FC390);
  sub_10000BE14(v24 + v30, v29 + v31, &qword_1019FC390);
  v32 = v47;
  v33 = *(v46 + 48);
  if (v33(v29, 1, v47) == 1)
  {
    if (v33(v29 + v31, 1, v32) == 1)
    {
      sub_10000CAAC(v29, &qword_1019FC390);
LABEL_20:
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v35 & 1;
    }

    goto LABEL_15;
  }

  v34 = v44;
  sub_10000BE14(v29, v44, &qword_1019FC390);
  if (v33(v29 + v31, 1, v32) == 1)
  {
    sub_100DC5154(v34, type metadata accessor for CRLProto_TableCellSelection);
LABEL_15:
    v26 = &qword_101A20218;
    v27 = v29;
    goto LABEL_16;
  }

  v37 = v29 + v31;
  v38 = v40;
  sub_100DC50EC(v37, v40, type metadata accessor for CRLProto_TableCellSelection);
  v39 = sub_100DC0434(v34, v38);
  sub_100DC5154(v38, type metadata accessor for CRLProto_TableCellSelection);
  sub_100DC5154(v34, type metadata accessor for CRLProto_TableCellSelection);
  sub_10000CAAC(v29, &qword_1019FC390);
  if (v39)
  {
    goto LABEL_20;
  }

LABEL_17:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_100DBE27C(void *a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v6 = type metadata accessor for CRLProto_Data(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_1005B981C(&qword_1019F6CA0);
  v14 = __chkstk_darwin(v13);
  v16 = &v24 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_10;
  }

  v24 = a3(0, v14);
  v25 = a2;
  v17 = *(v24 + 24);
  v18 = *(v13 + 48);
  sub_10000BE14(a1 + v17, v16, &qword_1019F67C0);
  sub_10000BE14(v25 + v17, &v16[v18], &qword_1019F67C0);
  v19 = *(v7 + 48);
  if (v19(v16, 1, v6) != 1)
  {
    sub_10000BE14(v16, v12, &qword_1019F67C0);
    if (v19(&v16[v18], 1, v6) != 1)
    {
      sub_100DC50EC(&v16[v18], v9, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v12, *(v12 + 1), *v9, *(v9 + 1)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v12, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v16, &qword_1019F67C0);
        if (v23)
        {
          goto LABEL_5;
        }

LABEL_10:
        v20 = 0;
        return v20 & 1;
      }

      sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v12, type metadata accessor for CRLProto_Data);
      v21 = &qword_1019F67C0;
LABEL_9:
      sub_10000CAAC(v16, v21);
      goto LABEL_10;
    }

    sub_100DC5154(v12, type metadata accessor for CRLProto_Data);
LABEL_8:
    v21 = &qword_1019F6CA0;
    goto LABEL_9;
  }

  if (v19(&v16[v18], 1, v6) != 1)
  {
    goto LABEL_8;
  }

  sub_10000CAAC(v16, &qword_1019F67C0);
LABEL_5:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t sub_100DBE698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Point(0);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v39 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1005B981C(&qword_101A15CE8);
  __chkstk_darwin(v6 - 8);
  v40 = (&v38 - v7);
  v41 = sub_1005B981C(&qword_101A201D0);
  __chkstk_darwin(v41);
  v45 = &v38 - v8;
  v9 = type metadata accessor for CRLProto_Data(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_1005B981C(&qword_1019F6CA0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v38 - v17;
  v42 = type metadata accessor for CRLProto_CopresenceViewportState(0);
  v19 = *(v42 + 36);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_10000BE14(a1 + v19, v18, &qword_1019F67C0);
  sub_10000BE14(a2 + v19, &v18[v20], &qword_1019F67C0);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      sub_10000CAAC(v18, &qword_1019F67C0);
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_10000BE14(v18, v14, &qword_1019F67C0);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    sub_100DC5154(v14, type metadata accessor for CRLProto_Data);
LABEL_13:
    v29 = &qword_1019F6CA0;
LABEL_14:
    v30 = v18;
LABEL_15:
    sub_10000CAAC(v30, v29);
LABEL_16:
    v28 = 0;
    return v28 & 1;
  }

  v32 = v46;
  sub_100DC50EC(&v18[v20], v46, type metadata accessor for CRLProto_Data);
  if ((sub_1009F9488(*v14, *(v14 + 1), *v32, *(v32 + 8)) & 1) == 0)
  {
    sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v14, type metadata accessor for CRLProto_Data);
    v29 = &qword_1019F67C0;
    goto LABEL_14;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v14, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v18, &qword_1019F67C0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  v22 = v47;
  if (*v47 != *a2 || *(v47 + 8) != *(a2 + 8))
  {
    goto LABEL_16;
  }

  v23 = *(v42 + 40);
  v24 = *(v41 + 48);
  v25 = v45;
  sub_10000BE14(v47 + v23, v45, &qword_101A15CE8);
  sub_10000BE14(a2 + v23, v25 + v24, &qword_101A15CE8);
  v26 = v44;
  v27 = *(v43 + 48);
  if (v27(v25, 1, v44) != 1)
  {
    v34 = v40;
    sub_10000BE14(v25, v40, &qword_101A15CE8);
    if (v27(v25 + v24, 1, v26) != 1)
    {
      v35 = v25 + v24;
      v36 = v39;
      sub_100DC50EC(v35, v39, type metadata accessor for CRLProto_Point);
      if (*v34 == *v36 && v34[1] == v36[1])
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v36, type metadata accessor for CRLProto_Point);
        if (v37)
        {
          sub_100DC5154(v34, type metadata accessor for CRLProto_Point);
          goto LABEL_8;
        }
      }

      else
      {
        sub_100DC5154(v36, type metadata accessor for CRLProto_Point);
      }

      sub_100DC5154(v34, type metadata accessor for CRLProto_Point);
      v29 = &qword_101A15CE8;
      v30 = v25;
      goto LABEL_15;
    }

    sub_100DC5154(v34, type metadata accessor for CRLProto_Point);
    goto LABEL_24;
  }

  if (v27(v25 + v24, 1, v26) != 1)
  {
LABEL_24:
    v29 = &qword_101A201D0;
    v30 = v25;
    goto LABEL_15;
  }

LABEL_8:
  sub_10000CAAC(v25, &qword_101A15CE8);
  if (*(v22 + 12) != *(a2 + 12) || *(v22 + 16) != *(a2 + 16))
  {
    goto LABEL_16;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v28 & 1;
}

uint64_t sub_100DBEE40(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1005B981C(&qword_1019F6CA0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for CRLProto_CollaboratorCursorColor(0);
  v14 = *(v23 + 24);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_10000BE14(a1 + v14, v13, &qword_1019F67C0);
  sub_10000BE14(a2 + v14, &v13[v15], &qword_1019F67C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10000CAAC(v13, &qword_1019F67C0);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10000BE14(v13, v9, &qword_1019F67C0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
LABEL_8:
    v18 = &qword_1019F6CA0;
LABEL_9:
    sub_10000CAAC(v13, v18);
    goto LABEL_10;
  }

  v20 = v24;
  sub_100DC50EC(&v13[v15], v24, type metadata accessor for CRLProto_Data);
  if ((sub_1009F9488(*v9, *(v9 + 1), *v20, *(v20 + 8)) & 1) == 0)
  {
    sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
    v18 = &qword_1019F67C0;
    goto LABEL_9;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v13, &qword_1019F67C0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (*v25 != *a2)
  {
LABEL_10:
    v17 = 0;
    return v17 & 1;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t sub_100DBF250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v35 - v8;
  v9 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v9 - 8);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v14);
  v39 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v40 = type metadata accessor for CRLProto_ChunkedRealTimeMessage(0);
  v19 = *(v40 + 32);
  v38 = v14;
  v20 = *(v14 + 48);
  v42 = a1;
  sub_10000BE14(a1 + v19, v18, &qword_1019F67C0);
  sub_10000BE14(a2 + v19, &v18[v20], &qword_1019F67C0);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      sub_10000CAAC(v18, &qword_1019F67C0);
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_10000BE14(v18, v13, &qword_1019F67C0);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
LABEL_13:
    v27 = &qword_1019F6CA0;
LABEL_14:
    v28 = v18;
    goto LABEL_15;
  }

  v30 = v41;
  sub_100DC50EC(&v18[v20], v41, type metadata accessor for CRLProto_Data);
  if ((sub_1009F9488(*v13, *(v13 + 1), *v30, *(v30 + 8)) & 1) == 0)
  {
    sub_100DC5154(v30, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
    v27 = &qword_1019F67C0;
    goto LABEL_14;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v30, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v18, &qword_1019F67C0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (*v42 != *a2 || *(v42 + 4) != *(a2 + 4) || *(v42 + 8) != *(a2 + 8))
  {
    goto LABEL_16;
  }

  v22 = *(v40 + 36);
  v23 = *(v38 + 48);
  v24 = v4;
  v25 = v39;
  sub_10000BE14(v42 + v22, v39, &qword_1019F67C0);
  sub_10000BE14(a2 + v22, v25 + v23, &qword_1019F67C0);
  if (v21(v25, 1, v24) != 1)
  {
    v32 = v37;
    sub_10000BE14(v25, v37, &qword_1019F67C0);
    if (v21((v25 + v23), 1, v24) == 1)
    {
      sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
      goto LABEL_24;
    }

    v33 = v36;
    sub_100DC50EC(v25 + v23, v36, type metadata accessor for CRLProto_Data);
    if (sub_1009F9488(*v32, *(v32 + 8), *v33, *(v33 + 8)))
    {
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
      sub_10000CAAC(v25, &qword_1019F67C0);
      if (v34)
      {
        goto LABEL_10;
      }

LABEL_16:
      v26 = 0;
      return v26 & 1;
    }

    sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
    v27 = &qword_1019F67C0;
    v28 = v25;
LABEL_15:
    sub_10000CAAC(v28, v27);
    goto LABEL_16;
  }

  if (v21((v25 + v23), 1, v24) != 1)
  {
LABEL_24:
    v27 = &qword_1019F6CA0;
    v28 = v25;
    goto LABEL_15;
  }

  sub_10000CAAC(v25, &qword_1019F67C0);
LABEL_10:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v26 & 1;
}

uint64_t sub_100DBF93C(float *a1, uint64_t a2)
{
  v71 = a2;
  v3 = type metadata accessor for CRLProto_Size(0);
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v57 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1005B981C(&qword_101A15CF0);
  __chkstk_darwin(v5 - 8);
  v58 = (&v56 - v6);
  v60 = sub_1005B981C(&qword_101A20288);
  __chkstk_darwin(v60);
  v63 = &v56 - v7;
  v8 = type metadata accessor for CRLProto_Point(0);
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v59 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1005B981C(&qword_101A15CE8);
  __chkstk_darwin(v10 - 8);
  v64 = (&v56 - v11);
  v65 = sub_1005B981C(&qword_101A201D0);
  __chkstk_darwin(v65);
  v68 = &v56 - v12;
  v13 = type metadata accessor for CRLProto_Data(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v56 - v18;
  v20 = sub_1005B981C(&qword_1019F6CA0);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v56 - v22;
  v69 = type metadata accessor for CRLProto_FollowViewportState(0);
  v70 = a1;
  v24 = *(v69 + 28);
  v25 = *(v21 + 56);
  sub_10000BE14(a1 + v24, v23, &qword_1019F67C0);
  v26 = v71 + v24;
  v27 = v71;
  sub_10000BE14(v26, &v23[v25], &qword_1019F67C0);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) == 1)
  {
    if (v28(&v23[v25], 1, v13) == 1)
    {
      sub_10000CAAC(v23, &qword_1019F67C0);
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_10000BE14(v23, v19, &qword_1019F67C0);
  if (v28(&v23[v25], 1, v13) == 1)
  {
    sub_100DC5154(v19, type metadata accessor for CRLProto_Data);
LABEL_13:
    v44 = &qword_1019F6CA0;
LABEL_14:
    v45 = v23;
LABEL_15:
    sub_10000CAAC(v45, v44);
    goto LABEL_16;
  }

  sub_100DC50EC(&v23[v25], v16, type metadata accessor for CRLProto_Data);
  if ((sub_1009F9488(*v19, *(v19 + 1), *v16, *(v16 + 1)) & 1) == 0)
  {
    sub_100DC5154(v16, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v19, type metadata accessor for CRLProto_Data);
    v44 = &qword_1019F67C0;
    goto LABEL_14;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v16, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v19, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v23, &qword_1019F67C0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  v29 = v70;
  if (*v70 != *v27)
  {
LABEL_16:
    v43 = 0;
    return v43 & 1;
  }

  v30 = v68;
  v31 = v69;
  v32 = *(v69 + 32);
  v33 = *(v65 + 48);
  sub_10000BE14(v70 + v32, v68, &qword_101A15CE8);
  sub_10000BE14(v27 + v32, v30 + v33, &qword_101A15CE8);
  v34 = v67;
  v35 = *(v66 + 48);
  if (v35(v30, 1, v67) == 1)
  {
    if (v35(v30 + v33, 1, v34) == 1)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

  v48 = v64;
  sub_10000BE14(v30, v64, &qword_101A15CE8);
  if (v35(v30 + v33, 1, v34) == 1)
  {
    sub_100DC5154(v48, type metadata accessor for CRLProto_Point);
LABEL_24:
    v44 = &qword_101A201D0;
    v45 = v30;
    goto LABEL_15;
  }

  v49 = v30 + v33;
  v50 = v59;
  sub_100DC50EC(v49, v59, type metadata accessor for CRLProto_Point);
  if (*v48 != *v50 || v48[1] != v50[1])
  {
    sub_100DC5154(v50, type metadata accessor for CRLProto_Point);
    goto LABEL_30;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v50, type metadata accessor for CRLProto_Point);
  if ((v51 & 1) == 0)
  {
LABEL_30:
    sub_100DC5154(v48, type metadata accessor for CRLProto_Point);
    v44 = &qword_101A15CE8;
    v45 = v30;
    goto LABEL_15;
  }

  sub_100DC5154(v48, type metadata accessor for CRLProto_Point);
LABEL_7:
  sub_10000CAAC(v30, &qword_101A15CE8);
  v36 = *(v31 + 36);
  v37 = *(v60 + 48);
  v38 = v63;
  sub_10000BE14(v29 + v36, v63, &qword_101A15CF0);
  v39 = v27 + v36;
  v40 = v38;
  sub_10000BE14(v39, v38 + v37, &qword_101A15CF0);
  v41 = v62;
  v42 = *(v61 + 48);
  if (v42(v38, 1, v62) == 1)
  {
    if (v42(v38 + v37, 1, v41) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

  v52 = v58;
  sub_10000BE14(v40, v58, &qword_101A15CF0);
  if (v42(v40 + v37, 1, v41) == 1)
  {
    sub_100DC5154(v52, type metadata accessor for CRLProto_Size);
LABEL_33:
    v44 = &qword_101A20288;
    v45 = v40;
    goto LABEL_15;
  }

  v53 = v40 + v37;
  v54 = v57;
  sub_100DC50EC(v53, v57, type metadata accessor for CRLProto_Size);
  if (*v52 != *v54 || v52[1] != v54[1])
  {
    sub_100DC5154(v54, type metadata accessor for CRLProto_Size);
    goto LABEL_39;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v54, type metadata accessor for CRLProto_Size);
  if ((v55 & 1) == 0)
  {
LABEL_39:
    sub_100DC5154(v52, type metadata accessor for CRLProto_Size);
    v44 = &qword_101A15CF0;
    v45 = v40;
    goto LABEL_15;
  }

  sub_100DC5154(v52, type metadata accessor for CRLProto_Size);
LABEL_9:
  sub_10000CAAC(v40, &qword_101A15CF0);
  if (*(v29 + 1) != *(v27 + 8))
  {
    goto LABEL_16;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v43 & 1;
}

uint64_t sub_100DC0434(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v11);
  v13 = v25 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v14 != v15)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (!v15)
  {
    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_19:
    v21 = 0;
    return v21 & 1;
  }

  if (v15 != 1)
  {
    if (v14 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if (v14 != 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v16 = type metadata accessor for CRLProto_TableCellSelection(0);
  v17 = a1;
  v25[0] = v16;
  v25[1] = a1;
  v18 = *(v16 + 24);
  v19 = *(v11 + 48);
  sub_10000BE14(v17 + v18, v13, &qword_1019F67C0);
  sub_10000BE14(a2 + v18, &v13[v19], &qword_1019F67C0);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_10000CAAC(v13, &qword_1019F67C0);
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  sub_10000BE14(v13, v10, &qword_1019F67C0);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
LABEL_17:
    v22 = &qword_1019F6CA0;
LABEL_18:
    sub_10000CAAC(v13, v22);
    goto LABEL_19;
  }

  sub_100DC50EC(&v13[v19], v7, type metadata accessor for CRLProto_Data);
  if ((sub_1009F9488(*v10, *(v10 + 1), *v7, *(v7 + 1)) & 1) == 0)
  {
    sub_100DC5154(v7, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
    v22 = &qword_1019F67C0;
    goto LABEL_18;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v7, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v13, &qword_1019F67C0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t sub_100DC0880(double *a1, double *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v37 - v8;
  v9 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v9 - 8);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v14);
  v40 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v42 = type metadata accessor for CRLProto_CollaboratorCursor(0);
  v43 = a1;
  v19 = *(v42 + 24);
  v39 = v14;
  v20 = *(v14 + 48);
  sub_10000BE14(a1 + v19, v18, &qword_1019F67C0);
  v44 = a2;
  sub_10000BE14(a2 + v19, &v18[v20], &qword_1019F67C0);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      v22 = v4;
      sub_10000CAAC(v18, &qword_1019F67C0);
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  sub_10000BE14(v18, v13, &qword_1019F67C0);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
LABEL_11:
    v28 = &qword_1019F6CA0;
LABEL_12:
    v29 = v18;
LABEL_13:
    sub_10000CAAC(v29, v28);
    goto LABEL_14;
  }

  v31 = v41;
  sub_100DC50EC(&v18[v20], v41, type metadata accessor for CRLProto_Data);
  if ((sub_1009F9488(*v13, *(v13 + 1), *v31, *(v31 + 8)) & 1) == 0)
  {
    sub_100DC5154(v31, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
    v28 = &qword_1019F67C0;
    goto LABEL_12;
  }

  v22 = v4;
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v31, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v18, &qword_1019F67C0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  v23 = v44;
  if (*v43 != *v44)
  {
    goto LABEL_14;
  }

  v24 = *(v42 + 28);
  v25 = v40;
  v26 = *(v39 + 48);
  sub_10000BE14(v43 + v24, v40, &qword_1019F67C0);
  sub_10000BE14(v23 + v24, v25 + v26, &qword_1019F67C0);
  if (v21(v25, 1, v22) != 1)
  {
    v33 = v38;
    sub_10000BE14(v25, v38, &qword_1019F67C0);
    if (v21((v25 + v26), 1, v22) == 1)
    {
      sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
      goto LABEL_22;
    }

    v34 = v25 + v26;
    v35 = v37;
    sub_100DC50EC(v34, v37, type metadata accessor for CRLProto_Data);
    if ((sub_1009F9488(*v33, *(v33 + 8), *v35, *(v35 + 8)) & 1) == 0)
    {
      sub_100DC5154(v35, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
      v28 = &qword_1019F67C0;
      v29 = v25;
      goto LABEL_13;
    }

    type metadata accessor for UnknownStorage();
    sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100DC5154(v35, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
    sub_10000CAAC(v25, &qword_1019F67C0);
    if (v36)
    {
      goto LABEL_8;
    }

LABEL_14:
    v27 = 0;
    return v27 & 1;
  }

  if (v21((v25 + v26), 1, v22) != 1)
  {
LABEL_22:
    v28 = &qword_1019F6CA0;
    v29 = v25;
    goto LABEL_13;
  }

  sub_10000CAAC(v25, &qword_1019F67C0);
LABEL_8:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v27 & 1;
}

uint64_t sub_100DC0F48(void *a1, void *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1005B981C(&qword_1019F6CA0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for CRLProto_RefuseOrEndFollow(0);
  v14 = *(v23 + 24);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_10000BE14(a1 + v14, v13, &qword_1019F67C0);
  sub_10000BE14(a2 + v14, &v13[v15], &qword_1019F67C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10000CAAC(v13, &qword_1019F67C0);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10000BE14(v13, v9, &qword_1019F67C0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
LABEL_8:
    v18 = &qword_1019F6CA0;
LABEL_9:
    sub_10000CAAC(v13, v18);
    goto LABEL_10;
  }

  v20 = v24;
  sub_100DC50EC(&v13[v15], v24, type metadata accessor for CRLProto_Data);
  if ((sub_1009F9488(*v9, *(v9 + 1), *v20, *(v20 + 8)) & 1) == 0)
  {
    sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
    v18 = &qword_1019F67C0;
    goto LABEL_9;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v13, &qword_1019F67C0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (*v25 != *a2)
  {
LABEL_10:
    v17 = 0;
    return v17 & 1;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t sub_100DC1358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v36 - v8;
  v9 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v9 - 8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v14);
  v41 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v39 = type metadata accessor for CRLProto_StartOrEndFollow(0);
  v40 = v14;
  v19 = *(v39 + 20);
  v20 = *(v14 + 48);
  v42 = a1;
  sub_10000BE14(a1 + v19, v18, &qword_1019F67C0);
  v43 = a2;
  sub_10000BE14(a2 + v19, &v18[v20], &qword_1019F67C0);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      v22 = v4;
      sub_10000CAAC(v18, &qword_1019F67C0);
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  sub_10000BE14(v18, v13, &qword_1019F67C0);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
LABEL_10:
    v27 = &qword_1019F6CA0;
LABEL_11:
    v28 = v18;
    goto LABEL_12;
  }

  v30 = v38;
  sub_100DC50EC(&v18[v20], v38, type metadata accessor for CRLProto_Data);
  if ((sub_1009F9488(*v13, *(v13 + 1), *v30, *(v30 + 8)) & 1) == 0)
  {
    sub_100DC5154(v30, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
    v27 = &qword_1019F67C0;
    goto LABEL_11;
  }

  v22 = v4;
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v30, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v18, &qword_1019F67C0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  v23 = *(v39 + 24);
  v24 = *(v40 + 48);
  v25 = v41;
  sub_10000BE14(v42 + v23, v41, &qword_1019F67C0);
  sub_10000BE14(v43 + v23, v25 + v24, &qword_1019F67C0);
  if (v21(v25, 1, v22) != 1)
  {
    v32 = v37;
    sub_10000BE14(v25, v37, &qword_1019F67C0);
    if (v21((v25 + v24), 1, v22) == 1)
    {
      sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
      goto LABEL_20;
    }

    v33 = v25 + v24;
    v34 = v36;
    sub_100DC50EC(v33, v36, type metadata accessor for CRLProto_Data);
    if (sub_1009F9488(*v32, *(v32 + 8), *v34, *(v34 + 8)))
    {
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100DC5154(v34, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
      sub_10000CAAC(v25, &qword_1019F67C0);
      if (v35)
      {
        goto LABEL_7;
      }

LABEL_13:
      v26 = 0;
      return v26 & 1;
    }

    sub_100DC5154(v34, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
    v27 = &qword_1019F67C0;
    v28 = v25;
LABEL_12:
    sub_10000CAAC(v28, v27);
    goto LABEL_13;
  }

  if (v21((v25 + v24), 1, v22) != 1)
  {
LABEL_20:
    v27 = &qword_1019F6CA0;
    v28 = v25;
    goto LABEL_12;
  }

  sub_10000CAAC(v25, &qword_1019F67C0);
LABEL_7:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v26 & 1;
}

uint64_t sub_100DC1A0C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v112 = *(v4 - 8);
  v113 = v4;
  __chkstk_darwin(v4);
  v108 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v6 - 8);
  v109 = &v104 - v7;
  v111 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v111);
  v9 = &v104 - v8;
  v10 = type metadata accessor for CRLProto_Point(0);
  v116 = *(v10 - 8);
  v117 = v10;
  __chkstk_darwin(v10);
  v110 = (&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1005B981C(&qword_101A15CE8);
  __chkstk_darwin(v12 - 8);
  v114 = (&v104 - v13);
  v115 = sub_1005B981C(&qword_101A201D0);
  __chkstk_darwin(v115);
  v118 = &v104 - v14;
  v15 = type metadata accessor for CRLProto_Date(0);
  v121 = *(v15 - 8);
  v122 = v15;
  __chkstk_darwin(v15);
  v119 = (&v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1005B981C(&qword_101A1ACE8);
  __chkstk_darwin(v17 - 8);
  v120 = (&v104 - v18);
  v19 = sub_1005B981C(&qword_101A201D8);
  __chkstk_darwin(v19);
  v123 = &v104 - v20;
  v21 = type metadata accessor for CRLProto_Path(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1005B981C(&qword_101A1ACF8);
  __chkstk_darwin(v25 - 8);
  v27 = (&v104 - v26);
  v28 = sub_1005B981C(&qword_101A201E0);
  __chkstk_darwin(v28);
  v30 = &v104 - v29;
  if ((sub_10066D064(*a1, *a2) & 1) == 0)
  {
    goto LABEL_13;
  }

  v105 = v9;
  v31 = type metadata accessor for CRLProto_PKStrokePathData(0);
  v124 = a2;
  v32 = *(v31 + 24);
  v33 = a1;
  v34 = *(v28 + 48);
  v106 = v31;
  v107 = v33;
  sub_10000BE14(v33 + v32, v30, &qword_101A1ACF8);
  v35 = v124 + v32;
  v36 = v124;
  sub_10000BE14(v35, &v30[v34], &qword_101A1ACF8);
  v37 = *(v22 + 48);
  if (v37(v30, 1, v21) == 1)
  {
    if (v37(&v30[v34], 1, v21) == 1)
    {
      sub_10000CAAC(v30, &qword_101A1ACF8);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  sub_10000BE14(v30, v27, &qword_101A1ACF8);
  if (v37(&v30[v34], 1, v21) == 1)
  {
    sub_100DC5154(v27, type metadata accessor for CRLProto_Path);
LABEL_10:
    v44 = &qword_101A201E0;
LABEL_11:
    v45 = v30;
    goto LABEL_12;
  }

  sub_100DC50EC(&v30[v34], v24, type metadata accessor for CRLProto_Path);
  if ((sub_10066E698(*v27, *v24) & 1) == 0)
  {
    sub_100DC5154(v24, type metadata accessor for CRLProto_Path);
    sub_100DC5154(v27, type metadata accessor for CRLProto_Path);
    v44 = &qword_101A1ACF8;
    goto LABEL_11;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v24, type metadata accessor for CRLProto_Path);
  sub_100DC5154(v27, type metadata accessor for CRLProto_Path);
  sub_10000CAAC(v30, &qword_101A1ACF8);
  if ((v48 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v38 = v106;
  v39 = v106[7];
  v40 = (v107 + v39);
  v41 = *(v107 + v39 + 4);
  v42 = (v36 + v39);
  v43 = *(v36 + v39 + 4);
  if (v41)
  {
    if (!v43)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if (v43)
    {
      goto LABEL_13;
    }
  }

  v49 = v106[8];
  v50 = *(v19 + 48);
  v51 = v123;
  sub_10000BE14(v107 + v49, v123, &qword_101A1ACE8);
  sub_10000BE14(v36 + v49, v51 + v50, &qword_101A1ACE8);
  v52 = v122;
  v53 = *(v121 + 48);
  if (v53(v51, 1, v122) == 1)
  {
    if (v53(v51 + v50, 1, v52) == 1)
    {
      sub_10000CAAC(v51, &qword_101A1ACE8);
      goto LABEL_30;
    }

LABEL_27:
    v44 = &qword_101A201D8;
    v45 = v51;
    goto LABEL_12;
  }

  v54 = v120;
  sub_10000BE14(v51, v120, &qword_101A1ACE8);
  if (v53(v51 + v50, 1, v52) == 1)
  {
    sub_100DC5154(v54, type metadata accessor for CRLProto_Date);
    goto LABEL_27;
  }

  v55 = v51 + v50;
  v56 = v119;
  sub_100DC50EC(v55, v119, type metadata accessor for CRLProto_Date);
  if (*v54 != *v56)
  {
    sub_100DC5154(v56, type metadata accessor for CRLProto_Date);
    sub_100DC5154(v54, type metadata accessor for CRLProto_Date);
    v44 = &qword_101A1ACE8;
    v45 = v51;
    goto LABEL_12;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v56, type metadata accessor for CRLProto_Date);
  sub_100DC5154(v54, type metadata accessor for CRLProto_Date);
  sub_10000CAAC(v51, &qword_101A1ACE8);
  if ((v57 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_30:
  v58 = v38[9];
  v59 = (v107 + v58);
  v60 = *(v107 + v58 + 4);
  v61 = (v36 + v58);
  v62 = *(v36 + v58 + 4);
  if (v60)
  {
    if (!v62)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v59 != *v61)
    {
      LOBYTE(v62) = 1;
    }

    if (v62)
    {
      goto LABEL_13;
    }
  }

  v63 = v38[10];
  v64 = (v107 + v63);
  v65 = *(v107 + v63 + 4);
  v66 = (v36 + v63);
  v67 = *(v36 + v63 + 4);
  if (v65)
  {
    if (!v67)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v64 != *v66)
    {
      LOBYTE(v67) = 1;
    }

    if (v67)
    {
      goto LABEL_13;
    }
  }

  v68 = v38[11];
  v69 = *(v115 + 48);
  v70 = v118;
  sub_10000BE14(v107 + v68, v118, &qword_101A15CE8);
  v71 = v36 + v68;
  v72 = v70;
  sub_10000BE14(v71, v70 + v69, &qword_101A15CE8);
  v73 = v117;
  v74 = *(v116 + 48);
  if (v74(v70, 1, v117) == 1)
  {
    if (v74(v70 + v69, 1, v73) == 1)
    {
      goto LABEL_45;
    }

LABEL_53:
    v44 = &qword_101A201D0;
    v45 = v72;
    goto LABEL_12;
  }

  v83 = v114;
  sub_10000BE14(v72, v114, &qword_101A15CE8);
  if (v74(v72 + v69, 1, v73) == 1)
  {
    sub_100DC5154(v83, type metadata accessor for CRLProto_Point);
    goto LABEL_53;
  }

  v84 = v72 + v69;
  v85 = v110;
  sub_100DC50EC(v84, v110, type metadata accessor for CRLProto_Point);
  if (*v83 != *v85 || v83[1] != v85[1])
  {
    sub_100DC5154(v85, type metadata accessor for CRLProto_Point);
    goto LABEL_59;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v86 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v85, type metadata accessor for CRLProto_Point);
  if ((v86 & 1) == 0)
  {
LABEL_59:
    sub_100DC5154(v83, type metadata accessor for CRLProto_Point);
    v44 = &qword_101A15CE8;
    v45 = v72;
    goto LABEL_12;
  }

  sub_100DC5154(v83, type metadata accessor for CRLProto_Point);
LABEL_45:
  sub_10000CAAC(v72, &qword_101A15CE8);
  v75 = v38[12];
  v76 = *(v111 + 48);
  v77 = v105;
  sub_10000BE14(v107 + v75, v105, &qword_1019F67C0);
  sub_10000BE14(v36 + v75, v77 + v76, &qword_1019F67C0);
  v78 = v113;
  v79 = *(v112 + 48);
  if (v79(v77, 1, v113) != 1)
  {
    v87 = v109;
    sub_10000BE14(v77, v109, &qword_1019F67C0);
    if (v79(v77 + v76, 1, v78) == 1)
    {
      sub_100DC5154(v87, type metadata accessor for CRLProto_Data);
      goto LABEL_62;
    }

    v88 = v77 + v76;
    v89 = v108;
    sub_100DC50EC(v88, v108, type metadata accessor for CRLProto_Data);
    if (sub_1009F9488(*v87, *(v87 + 8), *v89, *(v89 + 8)))
    {
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
      v90 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100DC5154(v89, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v87, type metadata accessor for CRLProto_Data);
      sub_10000CAAC(v77, &qword_1019F67C0);
      if ((v90 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_48;
    }

    sub_100DC5154(v89, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v87, type metadata accessor for CRLProto_Data);
    v44 = &qword_1019F67C0;
    v45 = v77;
LABEL_12:
    sub_10000CAAC(v45, v44);
    goto LABEL_13;
  }

  if (v79(v77 + v76, 1, v78) != 1)
  {
LABEL_62:
    v44 = &qword_1019F6CA0;
    v45 = v77;
    goto LABEL_12;
  }

  sub_10000CAAC(v77, &qword_1019F67C0);
LABEL_48:
  v80 = v38[13];
  v81 = *(v107 + v80);
  v82 = *(v36 + v80);
  if (v81 == 2)
  {
    if (v82 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v82 == 2 || ((v81 ^ v82) & 1) != 0)
  {
    goto LABEL_13;
  }

  v91 = v38[14];
  v92 = *(v107 + v91);
  v93 = *(v36 + v91);
  if (v92 == 2)
  {
    if (v93 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v93 == 2 || ((v92 ^ v93) & 1) != 0)
  {
    goto LABEL_13;
  }

  v94 = v38[15];
  v95 = (v107 + v94);
  v96 = *(v107 + v94 + 8);
  v97 = (v36 + v94);
  v98 = *(v36 + v94 + 8);
  if (v96)
  {
    if (!v98)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v95 != *v97)
    {
      LOBYTE(v98) = 1;
    }

    if (v98)
    {
      goto LABEL_13;
    }
  }

  v99 = v106[16];
  v100 = (v107 + v99);
  v101 = *(v107 + v99 + 8);
  v102 = (v124 + v99);
  v103 = *(v124 + v99 + 8);
  if (v101)
  {
    if (v103)
    {
LABEL_86:
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v46 & 1;
    }
  }

  else
  {
    if (*v100 != *v102)
    {
      LOBYTE(v103) = 1;
    }

    if ((v103 & 1) == 0)
    {
      goto LABEL_86;
    }
  }

LABEL_13:
  v46 = 0;
  return v46 & 1;
}

uint64_t sub_100DC29D8(uint64_t a1, uint64_t a2)
{
  if ((sub_1009F9488(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_1009F9488(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0 || (sub_1009F9488(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) & 1) == 0 || (sub_1009F9488(*(a1 + 48), *(a1 + 56), *(a2 + 48), *(a2 + 56)) & 1) == 0 || (sub_1009F9488(*(a1 + 64), *(a1 + 72), *(a2 + 64), *(a2 + 72)) & 1) == 0 || (sub_1009F9488(*(a1 + 80), *(a1 + 88), *(a2 + 80), *(a2 + 88)) & 1) == 0 || (sub_1009F9488(*(a1 + 96), *(a1 + 104), *(a2 + 96), *(a2 + 104)) & 1) == 0 || (sub_1009F9488(*(a1 + 112), *(a1 + 120), *(a2 + 112), *(a2 + 120)) & 1) == 0 || (sub_1009F9488(*(a1 + 128), *(a1 + 136), *(a2 + 128), *(a2 + 136)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CRLProto_PKStrokePathData.StrokePoint(0);
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DC2B08(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_1005B981C(&qword_1019F6CA0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v24 = type metadata accessor for CRLProto_ObjectMetadata(0);
  v14 = *(v24 + 28);
  v15 = *(v11 + 56);
  v26 = a1;
  sub_10000BE14(a1 + v14, v13, &qword_1019F67C0);
  sub_10000BE14(a2 + v14, &v13[v15], &qword_1019F67C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000BE14(v13, v9, &qword_1019F67C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = v25;
      sub_100DC50EC(&v13[v15], v25, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v9, *(v9 + 1), *v21, *(v21 + 8)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v21, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v13, &qword_1019F67C0);
        if (v22)
        {
          goto LABEL_4;
        }

LABEL_11:
        v18 = 0;
        return v18 & 1;
      }

      sub_100DC5154(v21, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
      v19 = &qword_1019F67C0;
LABEL_10:
      sub_10000CAAC(v13, v19);
      goto LABEL_11;
    }

    sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
LABEL_9:
    v19 = &qword_1019F6CA0;
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_10000CAAC(v13, &qword_1019F67C0);
LABEL_4:
  v17 = v26;
  if ((sub_10066FCE0(*v26, *a2) & 1) == 0 || (sub_10066FD3C(v17[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v18 & 1;
}

uint64_t sub_100DC2F28(void *a1, void *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_1005B981C(&qword_1019F6CA0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v24 = type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
  v14 = *(v24 + 28);
  v15 = *(v11 + 56);
  v26 = a1;
  sub_10000BE14(a1 + v14, v13, &qword_1019F67C0);
  sub_10000BE14(a2 + v14, &v13[v15], &qword_1019F67C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000BE14(v13, v9, &qword_1019F67C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = v25;
      sub_100DC50EC(&v13[v15], v25, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v9, *(v9 + 1), *v21, *(v21 + 8)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v21, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v13, &qword_1019F67C0);
        if (v22)
        {
          goto LABEL_4;
        }

LABEL_13:
        v18 = 0;
        return v18 & 1;
      }

      sub_100DC5154(v21, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
      v19 = &qword_1019F67C0;
LABEL_12:
      sub_10000CAAC(v13, v19);
      goto LABEL_13;
    }

    sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
LABEL_11:
    v19 = &qword_1019F6CA0;
    goto LABEL_12;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_10000CAAC(v13, &qword_1019F67C0);
LABEL_4:
  v17 = v26;
  if ((*v26 != *a2 || v26[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v17[2] != a2[2])
  {
    goto LABEL_13;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v18 & 1;
}

uint64_t sub_100DC335C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v75 = &v68 - v9;
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = &v68 - v17;
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  v77 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v77);
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  __chkstk_darwin(v24);
  v27 = &v68 - v26;
  v28 = *a1;
  v29 = *a2;
  if (*(a1 + 8))
  {
    v28 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v29)
    {
      if (v28 != 1)
      {
        goto LABEL_27;
      }
    }

    else if (v28)
    {
      goto LABEL_27;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_27;
  }

  v70 = v15;
  v71 = v25;
  v69 = v7;
  v73 = type metadata accessor for CRLProto_TextSelection(0);
  v74 = v4;
  v30 = v73[6];
  v31 = *(v77 + 48);
  v72 = a1;
  sub_10000BE14(a1 + v30, v27, &qword_1019F67C0);
  v32 = v74;
  sub_10000BE14(a2 + v30, &v27[v31], &qword_1019F67C0);
  v33 = *(v5 + 48);
  if (v33(v27, 1, v32) == 1)
  {
    if (v33(&v27[v31], 1, v32) == 1)
    {
      v68 = a2;
      sub_10000CAAC(v27, &qword_1019F67C0);
      goto LABEL_13;
    }

    goto LABEL_24;
  }

  sub_10000BE14(v27, v20, &qword_1019F67C0);
  if (v33(&v27[v31], 1, v32) == 1)
  {
    sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
LABEL_24:
    v46 = &qword_1019F6CA0;
LABEL_25:
    v47 = v27;
    goto LABEL_26;
  }

  sub_100DC50EC(&v27[v31], v12, type metadata accessor for CRLProto_Data);
  if ((sub_1009F9488(*v20, *(v20 + 1), *v12, *(v12 + 1)) & 1) == 0)
  {
    sub_100DC5154(v12, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
    v46 = &qword_1019F67C0;
    goto LABEL_25;
  }

  v68 = a2;
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v12, type metadata accessor for CRLProto_Data);
  v32 = v74;
  sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v27, &qword_1019F67C0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  v34 = v73[7];
  v35 = *(v77 + 48);
  v36 = v72;
  sub_10000BE14(v72 + v34, v23, &qword_1019F67C0);
  sub_10000BE14(v68 + v34, &v23[v35], &qword_1019F67C0);
  if (v33(v23, 1, v32) == 1)
  {
    v37 = v33(&v23[v35], 1, v32);
    v38 = v71;
    if (v37 == 1)
    {
      sub_10000CAAC(v23, &qword_1019F67C0);
      goto LABEL_16;
    }

LABEL_34:
    v46 = &qword_1019F6CA0;
    v47 = v23;
    goto LABEL_26;
  }

  v51 = v76;
  sub_10000BE14(v23, v76, &qword_1019F67C0);
  v52 = v33(&v23[v35], 1, v32);
  v38 = v71;
  if (v52 == 1)
  {
    sub_100DC5154(v51, type metadata accessor for CRLProto_Data);
    goto LABEL_34;
  }

  v53 = &v23[v35];
  v54 = v75;
  sub_100DC50EC(v53, v75, type metadata accessor for CRLProto_Data);
  if ((sub_1009F9488(*v51, *(v51 + 8), *v54, *(v54 + 8)) & 1) == 0)
  {
    sub_100DC5154(v54, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v51, type metadata accessor for CRLProto_Data);
    v46 = &qword_1019F67C0;
    v47 = v23;
    goto LABEL_26;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v54, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v51, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v23, &qword_1019F67C0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  v39 = v73[8];
  v40 = *(v77 + 48);
  sub_10000BE14(v36 + v39, v38, &qword_1019F67C0);
  sub_10000BE14(v68 + v39, v38 + v40, &qword_1019F67C0);
  if (v33(v38, 1, v32) != 1)
  {
    v56 = v70;
    sub_10000BE14(v38, v70, &qword_1019F67C0);
    if (v33((v38 + v40), 1, v32) == 1)
    {
      sub_100DC5154(v56, type metadata accessor for CRLProto_Data);
      goto LABEL_41;
    }

    v57 = v38 + v40;
    v58 = v69;
    sub_100DC50EC(v57, v69, type metadata accessor for CRLProto_Data);
    if (sub_1009F9488(*v56, *(v56 + 8), *v58, *(v58 + 8)))
    {
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100DC5154(v58, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v56, type metadata accessor for CRLProto_Data);
      sub_10000CAAC(v38, &qword_1019F67C0);
      if ((v59 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    sub_100DC5154(v58, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v56, type metadata accessor for CRLProto_Data);
    v46 = &qword_1019F67C0;
    v47 = v38;
LABEL_26:
    sub_10000CAAC(v47, v46);
    goto LABEL_27;
  }

  if (v33((v38 + v40), 1, v32) != 1)
  {
LABEL_41:
    v46 = &qword_1019F6CA0;
    v47 = v38;
    goto LABEL_26;
  }

  sub_10000CAAC(v38, &qword_1019F67C0);
LABEL_19:
  v41 = v73[9];
  v42 = (v36 + v41);
  v43 = *(v36 + v41 + 4);
  v44 = (v68 + v41);
  v45 = *(v68 + v41 + 4);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_27;
    }
  }

  v60 = v73[10];
  v61 = *(v36 + v60);
  v62 = *(v68 + v60);
  if (v61 == 2)
  {
    if (v62 != 2)
    {
      goto LABEL_27;
    }
  }

  else if (v62 == 2 || ((v61 ^ v62) & 1) != 0)
  {
    goto LABEL_27;
  }

  v63 = v73[11];
  v64 = (v36 + v63);
  v65 = *(v36 + v63 + 4);
  v66 = (v68 + v63);
  v67 = *(v68 + v63 + 4);
  if ((v65 & 1) == 0)
  {
    if (*v64 != *v66)
    {
      LOBYTE(v67) = 1;
    }

    if (v67)
    {
      goto LABEL_27;
    }

LABEL_61:
    type metadata accessor for UnknownStorage();
    sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v48 & 1;
  }

  if (v67)
  {
    goto LABEL_61;
  }

LABEL_27:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_100DC3DC8(double *a1, double *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v43 - v8;
  v9 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v9 - 8);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v14);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  v50 = type metadata accessor for CRLProto_RealTimeEnter(0);
  v19 = v50[6];
  v46 = v14;
  v20 = *(v14 + 48);
  v48 = a1;
  sub_10000BE14(a1 + v19, v18, &qword_1019F67C0);
  v49 = a2;
  sub_10000BE14(a2 + v19, &v18[v20], &qword_1019F67C0);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      sub_10000CAAC(v18, &qword_1019F67C0);
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_10000BE14(v18, v13, &qword_1019F67C0);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
LABEL_13:
    v31 = &qword_1019F6CA0;
LABEL_14:
    v32 = v18;
    goto LABEL_15;
  }

  v35 = &v18[v20];
  v36 = v45;
  sub_100DC50EC(v35, v45, type metadata accessor for CRLProto_Data);
  if ((sub_1009F9488(*v13, *(v13 + 1), *v36, *(v36 + 8)) & 1) == 0)
  {
    sub_100DC5154(v36, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
    v31 = &qword_1019F67C0;
    goto LABEL_14;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v36, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v18, &qword_1019F67C0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  v22 = v50[7];
  v23 = v47;
  v24 = *(v46 + 48);
  v25 = v48;
  sub_10000BE14(v48 + v22, v47, &qword_1019F67C0);
  v26 = v49 + v22;
  v27 = v49;
  sub_10000BE14(v26, v23 + v24, &qword_1019F67C0);
  if (v21(v23, 1, v4) != 1)
  {
    v38 = v4;
    v39 = v44;
    sub_10000BE14(v23, v44, &qword_1019F67C0);
    if (v21((v23 + v24), 1, v38) == 1)
    {
      sub_100DC5154(v39, type metadata accessor for CRLProto_Data);
      goto LABEL_23;
    }

    v40 = v23 + v24;
    v41 = v43;
    sub_100DC50EC(v40, v43, type metadata accessor for CRLProto_Data);
    if (sub_1009F9488(*v39, *(v39 + 8), *v41, *(v41 + 8)))
    {
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100DC5154(v41, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v39, type metadata accessor for CRLProto_Data);
      sub_10000CAAC(v23, &qword_1019F67C0);
      if ((v42 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    sub_100DC5154(v41, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v39, type metadata accessor for CRLProto_Data);
    v31 = &qword_1019F67C0;
    v32 = v23;
LABEL_15:
    sub_10000CAAC(v32, v31);
    goto LABEL_16;
  }

  if (v21((v23 + v24), 1, v4) != 1)
  {
LABEL_23:
    v31 = &qword_1019F6CA0;
    v32 = v23;
    goto LABEL_15;
  }

  sub_10000CAAC(v23, &qword_1019F67C0);
LABEL_7:
  if (*v25 == *v27)
  {
    v28 = v50[8];
    v29 = *(v25 + v28);
    v30 = *(v27 + v28);
    if (v29 == 2)
    {
      if (v30 == 2)
      {
LABEL_31:
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v33 & 1;
      }
    }

    else if (v30 != 2 && ((v29 ^ v30) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

LABEL_16:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_100DC44D0(uint64_t result, uint64_t a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v2 = *(result + 8);
  v3 = *(a2 + 8);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    v8 = result;
    if ((sub_100670A08(*(result + 16), *(a2 + 16)) & 1) == 0 || (sub_100671390(v8[3], *(a2 + 24)) & 1) == 0 || (sub_100671AE4(v8[4], *(a2 + 32)) & 1) == 0 || v8[5] != *(a2 + 40) || (sub_10066FCE0(v8[6], *(a2 + 48)) & 1) == 0 || (sub_10066FCE0(v8[7], *(a2 + 56)) & 1) == 0)
    {
      return 0;
    }

    v10 = *(type metadata accessor for CRLProto_ObjectInfo(0) + 52);
    v11 = (v8 + v10);
    v12 = *(v8 + v10 + 4);
    v13 = (a2 + v10);
    v14 = *(a2 + v10 + 4);
    if (v12)
    {
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      if (*v11 != *v13)
      {
        LOBYTE(v14) = 1;
      }

      if (v14)
      {
        return 0;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DC4670(void *a1, void *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  v23 = v7;
  v24 = type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
  v14 = *(v24 + 24);
  v15 = *(v11 + 48);
  sub_10000BE14(a1 + v14, v13, &qword_1019F67C0);
  sub_10000BE14(a2 + v14, &v13[v15], &qword_1019F67C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000BE14(v13, v10, &qword_1019F67C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = &v13[v15];
      v21 = v23;
      sub_100DC50EC(v20, v23, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v10, *(v10 + 1), *v21, *(v21 + 8)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v21, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v13, &qword_1019F67C0);
        if (v22)
        {
          goto LABEL_7;
        }

LABEL_12:
        v17 = 0;
        return v17 & 1;
      }

      sub_100DC5154(v21, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
      v18 = &qword_1019F67C0;
LABEL_11:
      sub_10000CAAC(v13, v18);
      goto LABEL_12;
    }

    sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
LABEL_10:
    v18 = &qword_1019F6CA0;
    goto LABEL_11;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_10000CAAC(v13, &qword_1019F67C0);
LABEL_7:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t sub_100DC4A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128))
{
  v6 = type metadata accessor for CRLProto_Data(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v9 - 8);
  v26 = &v25 - v10;
  v11 = sub_1005B981C(&qword_1019F6CA0);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = *(a3(0, v13) + 20);
  v17 = *(v12 + 56);
  sub_10000BE14(a1 + v16, v15, &qword_1019F67C0);
  sub_10000BE14(a2 + v16, &v15[v17], &qword_1019F67C0);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) != 1)
  {
    v20 = v26;
    sub_10000BE14(v15, v26, &qword_1019F67C0);
    if (v18(&v15[v17], 1, v6) != 1)
    {
      v23 = v25;
      sub_100DC50EC(&v15[v17], v25, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v20, *(v20 + 8), *v23, *(v23 + 8)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v23, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v15, &qword_1019F67C0);
        if (v24)
        {
          goto LABEL_4;
        }

LABEL_9:
        v19 = 0;
        return v19 & 1;
      }

      sub_100DC5154(v23, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
      v21 = &qword_1019F67C0;
LABEL_8:
      sub_10000CAAC(v15, v21);
      goto LABEL_9;
    }

    sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
LABEL_7:
    v21 = &qword_1019F6CA0;
    goto LABEL_8;
  }

  if (v18(&v15[v17], 1, v6) != 1)
  {
    goto LABEL_7;
  }

  sub_10000CAAC(v15, &qword_1019F67C0);
LABEL_4:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v19 & 1;
}

uint64_t sub_100DC4E9C(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for CRLProto_Rect(0);
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_100DC4F74()
{
  result = qword_101A201C0;
  if (!qword_101A201C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A201C0);
  }

  return result;
}

uint64_t sub_100DC4FC8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_1009F9488(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) & 1) != 0 && (sub_1009F9488(a1[4], a1[5], *(a2 + 32), *(a2 + 40)) & 1) != 0 && (sub_1009F9488(a1[6], a1[7], *(a2 + 48), *(a2 + 56)))
  {
    type metadata accessor for CRLProto_Path.Element(0);
    type metadata accessor for UnknownStorage();
    sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}