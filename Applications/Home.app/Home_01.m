id sub_100048AFC(void *a1)
{
  v4 = sub_1000573D8(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(HFActionSetBuilder) initWithExistingObject:v4 inHome:a1];
    v1 = [objc_allocWithZone(HUSceneActionEditorViewController) initWithActionSetBuilder:v6 mode:0];
    [v1 setModalPresentationStyle:2];
  }

  return v1;
}

void sub_100048BA8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    v10 = [v8 tableView];
    if (v10)
    {
      v11 = v10;
      v12 = sub_100070AEC(a3);
      v24 = sub_100077518(v12, v13, v11, a4, 0);

      v23 = [v24 asGeneric];

      return;
    }

    sub_100057794();
    v14 = swift_allocError();
    *v22 = 0x656956656C626174;
    *(v22 + 8) = 0xE900000000000077;
    *(v22 + 16) = v8;
    *(v22 + 48) = 0;
  }

  else
  {
    sub_100057794();
    v14 = swift_allocError();
    v16 = v15;
    _StringGuts.grow(_:)(48);

    v17 = [a1 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    *v16 = 0xD00000000000002ELL;
    *(v16 + 8) = 0x800000010009A240;
    *(v16 + 48) = 4;
  }

  swift_willThrow();
  swift_errorRetain();
  sub_10007095C(a3, v14);
}

BOOL sub_100048E18(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 hf_affectedServices];
  sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
  sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  v7 = [v3 hf_affectedServices];
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  if (v6 != v9)
  {
    return v9 < v6;
  }

  v10 = [v2 name];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [v3 name];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == v11 && v17 == v13)
  {

    return 0;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v19 & 1;
  }
}

id sub_100049010(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 topViewController];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

LABEL_6:
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 hf_errorWithCode:30 description:v19];

    v21 = _convertErrorToNSError(_:)();
    v22 = [objc_opt_self() futureWithError:v21];

    return v22;
  }

  v9 = [v8 itemManager];
  v10 = [v9 home];

  if (v10)
  {
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = v10;
    v11[5] = a1;
    v28[4] = sub_100057CC8;
    v28[5] = v11;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 1107296256;
    v28[2] = sub_100077B88;
    v28[3] = &unk_1000C5BC0;
    v12 = _Block_copy(v28);
    v13 = objc_opt_self();

    v14 = v10;
    v15 = a1;
    v16 = [v13 futureWithBlock:v12];

    _Block_release(v12);

    return v16;
  }

  else
  {
    v23 = objc_opt_self();
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 hf_errorWithCode:59 description:v24];

    v26 = _convertErrorToNSError(_:)();
    v27 = [objc_opt_self() futureWithError:v26];

    return v27;
  }
}

uint64_t sub_1000492E8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = [objc_opt_self() mainThreadScheduler];
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a1;
  v18[4] = sub_100057D24;
  v18[5] = v11;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100077B44;
  v18[3] = &unk_1000C5C10;
  v12 = _Block_copy(v18);

  v13 = a4;
  v14 = a5;
  v15 = a1;

  v16 = [v10 afterDelay:v12 performBlock:0.3];
  _Block_release(v12);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_100049444(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a1(a3);
  v8 = [a4 hu_presentPreloadableViewController:v7 animated:1];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a5;
    *(v10 + 24) = v7;
    aBlock[4] = sub_100057D74;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100073438;
    aBlock[3] = &unk_1000C5C60;
    v11 = _Block_copy(aBlock);
    v12 = a5;
    v13 = v7;

    v14 = [v9 addCompletionBlock:v11];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

id sub_1000495E4(int a1, uint64_t a2, id a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    v5 = _convertErrorToNSError(_:)();
    [a3 finishWithError:v5];
  }

  else
  {

    return [a3 finishWithResult:a4];
  }
}

void sub_1000496D4(void *a1, void *a2, char a3, void *a4)
{
  v7 = [a1 topViewController];
  if (v7 && (v8 = v7, objc_opt_self(), v9 = swift_dynamicCastObjCClass(), v8, v9))
  {
    sub_100070AEC(a3);
    v10 = String._bridgeToObjectiveC()();

    [a2 startedTest:v10];

    v11 = [a4 firstReadCompleteFuture];
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v26 = sub_10005D7AC;
    v27 = v12;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10005D794;
    v25 = &unk_1000C4DB0;
    v13 = _Block_copy(&aBlock);
    v14 = a2;

    v15 = [v11 addSuccessBlock:v13];
    _Block_release(v13);

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = a3;
    v26 = sub_10005D77C;
    v27 = v16;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100047498;
    v25 = &unk_1000C4E00;
    v17 = _Block_copy(&aBlock);
    v18 = v14;

    v19 = [v15 addFailureBlock:v17];
    _Block_release(v17);
  }

  else
  {
    sub_100057794();
    v20 = swift_allocError();
    *v21 = 0xD000000000000024;
    *(v21 + 8) = 0x8000000100099FF0;
    *(v21 + 48) = 4;
    swift_willThrow();
    swift_errorRetain();
    sub_10007095C(a3, v20);
  }
}

void sub_1000499C0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = 1;
    *(v8 + 32) = a2;
    *(v8 + 40) = a1;
    v13[4] = sub_100057820;
    v13[5] = v8;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10005D794;
    v13[3] = &unk_1000C4E50;
    v9 = _Block_copy(v13);
    v10 = v3;

    v11 = a1;

    v12 = [v7 addSuccessBlock:v9];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_100049B04(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = [a1 topViewController];
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v11 = sub_10007739C(v8, a3, a4);

      return;
    }
  }

  sub_100057794();
  v9 = swift_allocError();
  *v10 = 0xD000000000000024;
  *(v10 + 8) = 0x8000000100099FF0;
  *(v10 + 48) = 4;
  swift_willThrow();
  swift_errorRetain();
  sub_10007095C(a3, v9);
}

id sub_100049C54(int a1, id a2)
{
  v2 = [a2 selectTabWithIdentifier:HFHomeAppTabIdentifierTriggers];
  v3 = [v2 asGeneric];

  return v3;
}

id sub_100049CB8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

id sub_100049D20(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v8 = objc_opt_self();
  v9 = a2;
  v10 = a4;
  v11 = [v8 mainThreadScheduler];
  v15[4] = sub_1000582FC;
  v15[5] = v7;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100077B88;
  v15[3] = &unk_1000C5F08;
  v12 = _Block_copy(v15);
  v13 = [objc_opt_self() futureWithBlock:v12 scheduler:v11];
  swift_unknownObjectRelease();
  _Block_release(v12);

  return v13;
}

uint64_t sub_100049E5C(void *a1, void *a2, char a3, void *a4)
{
  v8 = [objc_opt_self() mainThreadScheduler];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = a1;
  v16[4] = sub_100058354;
  v16[5] = v9;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100077B44;
  v16[3] = &unk_1000C5F58;
  v10 = _Block_copy(v16);
  v11 = a2;
  v12 = a4;
  v13 = a1;

  v14 = [v8 afterDelay:v10 performBlock:0.5];
  _Block_release(v10);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_100049F9C(void *a1, char a2, void *a3, void *a4)
{
  sub_100070AEC(a2);
  v7 = String._bridgeToObjectiveC()();

  [a1 startedTest:v7];

  v8 = [a3 selectTabWithIdentifier:HFHomeAppTabIdentifierHome];
  v9 = [v8 asGeneric];

  v10 = [a4 completionHandlerAdapter];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10005839C;
  *(v12 + 24) = v11;
  v15[4] = sub_1000583A4;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100073438;
  v15[3] = &unk_1000C5FD0;
  v13 = _Block_copy(v15);

  v14 = [v9 addCompletionBlock:v13];
  _Block_release(v13);
}

void sub_10004A150(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10005D10C(a1, v12, &qword_1000D9D88, &qword_100093400);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = sub_1000583BC(v12, v13);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v7 + 8))(v10, v5);
  sub_1000578FC(v12);
  if (a2)
  {
LABEL_3:
    a2 = _convertErrorToNSError(_:)();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_10004A2C4(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    *&v7 = a1;
    sub_1000583AC(&v7, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  swift_unknownObjectRetain();
  a3(v9, a2);
  return sub_10005C664(v9, &qword_1000D9D88, &qword_100093400);
}

void sub_10004A35C(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a1 topViewController];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_beginAccess();
      v13 = *(a4 + 16);
      if (v13)
      {
        v14 = v13;
        v15 = sub_10006EA70(v14);

        v16 = swift_allocObject();
        *(v16 + 16) = a5;
        *(v16 + 24) = a6;
        v29 = sub_100058F30;
        v30 = v16;
        aBlock = _NSConcreteStackBlock;
        v26 = 1107296256;
        v27 = sub_10005D794;
        v28 = &unk_1000C60C0;
        v17 = _Block_copy(&aBlock);

        v18 = [v15 addSuccessBlock:v17];
        _Block_release(v17);

        v19 = swift_allocObject();
        *(v19 + 16) = a2;
        *(v19 + 24) = a3;
        v29 = sub_10005D77C;
        v30 = v19;
        aBlock = _NSConcreteStackBlock;
        v26 = 1107296256;
        v27 = sub_100047498;
        v28 = &unk_1000C6110;
        v20 = _Block_copy(&aBlock);
        v21 = a2;

        v22 = [v18 addFailureBlock:v20];
        _Block_release(v20);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  sub_100057794();
  v23 = swift_allocError();
  *v24 = 0xD000000000000024;
  *(v24 + 8) = 0x8000000100099FF0;
  *(v24 + 48) = 4;
  sub_10007095C(a3, v23);
}

void sub_10004A630(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_10004A69C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  swift_beginAccess();
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = [v12 asGeneric];
    v14 = [objc_allocWithZone(HUTriggerSummaryViewController) initWithTriggerBuilder:v13 mode:0 isPresentedModally:1 delegate:0];

    v15 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v14];
    v16 = [a1 topViewController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 hu_presentPreloadableViewController:v15 animated:1];

      if (v18)
      {
        v19 = swift_allocObject();
        v19[2] = a3;
        v19[3] = a4;
        v19[4] = v14;
        v31 = sub_100059F40;
        v32 = v19;
        aBlock = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_10005D79C;
        v30 = &unk_1000C6318;
        v20 = _Block_copy(&aBlock);
        v21 = v18;

        v22 = v14;

        v14 = [v21 addSuccessBlock:v20];
        _Block_release(v20);

        v23 = swift_allocObject();
        *(v23 + 16) = a5;
        *(v23 + 24) = a6;
        v31 = sub_10005D77C;
        v32 = v23;
        aBlock = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_100047498;
        v30 = &unk_1000C6368;
        v24 = _Block_copy(&aBlock);
        v25 = a5;

        v26 = [v14 addFailureBlock:v24];

        _Block_release(v24);
        v15 = v26;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10004A964(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100070AEC(a3);
  v13 = String._bridgeToObjectiveC()();

  [a2 startedTest:v13];

  swift_beginAccess();
  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = [v14 home];
    v16 = [v15 areAutomationBuildersSupported];

    v17 = [a1 commitChanges];
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *(v18 + 33) = v16;
    *(v18 + 40) = a4;
    aBlock[4] = a6;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005D79C;
    aBlock[3] = a7;
    v19 = _Block_copy(aBlock);
    v20 = a1;
    v21 = a2;

    v22 = [v17 addSuccessBlock:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004AB18(int a1, id a2, void *a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  sub_1000578B4(&qword_1000D9D90, &qword_1000931B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100093140;
  strcpy(&aBlock, "usingBuilders");
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = a5;
  sub_100058F7C(inited);
  swift_setDeallocating();
  sub_10005C664(inited + 32, &qword_1000D9D98, &qword_1000931B8);
  sub_100070AEC(a4);
  swift_retain_n();
  v15 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v21 = a7;
  v22 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v19 = sub_100077B44;
  v20 = a8;
  v17 = _Block_copy(&aBlock);

  [a3 finishedTest:v15 waitForCommit:1 extraResults:isa withTeardownBlock:v17];

  _Block_release(v17);
}

void *sub_10004AD30(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {

    return sleep(3u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004AD98(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10004AE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a2;
  swift_errorRetain();

  if (a1)
  {
    sub_10005B9DC(0, &qword_1000D9DB8, HRERecommendation_ptr);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  swift_beginAccess();
  v9 = *(a4 + 16);
  *(a4 + 16) = _swiftEmptyArrayStorage;
}

id sub_10004AEFC(int a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a3;
  v64 = a2;
  v10 = sub_1000578B4(&qword_1000D9E28, &unk_1000931D0);
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  __chkstk_darwin(v10 - 8);
  v61 = &v57 - v12;
  v13 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v59 = *(v13 - 8);
  v14 = *(v59 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v57 - v17;
  v19 = static os_log_type_t.default.getter();
  sub_10005B9DC(0, &qword_1000D9D80, OS_os_log_ptr);
  v20 = static OS_os_log.default.getter();
  v21 = os_log_type_enabled(v20, v19);
  v65 = v18;
  v62 = a1;
  if (v21)
  {
    v57 = a5;
    v58 = v6;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136315138;
    v24 = 0xEC00000079726F73;
    v25 = 0x7365636341796E61;
    v26 = 0x8000000100099AF0;
    v27 = 0x617373696D736964;
    if (a1 == 2)
    {
      v27 = 0xD000000000000015;
    }

    else
    {
      v26 = 0xE90000000000006CLL;
    }

    if (a1)
    {
      v25 = 0xD000000000000016;
      v24 = 0x8000000100099AD0;
    }

    if (a1 <= 1u)
    {
      v28 = v25;
    }

    else
    {
      v28 = v27;
    }

    if (a1 <= 1u)
    {
      v29 = v24;
    }

    else
    {
      v29 = v26;
    }

    v30 = sub_10006B744(v28, v29, &aBlock);

    *(v22 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v20, v19, "PPT - Launching quick controls for %s", v22, 0xCu);
    sub_1000578FC(v23);

    v18 = v65;
    v6 = v58;
    a5 = v57;
  }

  else
  {
  }

  v72 = 0x726F737365636361;
  v73 = 0xEB00000000444979;
  AnyHashable.init<A>(_:)();
  if (*(a4 + 16) && (v31 = sub_10007C3AC(&aBlock), (v32 & 1) != 0))
  {
    sub_10005A46C(*(a4 + 56) + 32 * v31, v74);
    sub_10005A088(&aBlock);
    if ((swift_dynamicCast() & 1) != 0 && v73)
    {
      UUID.init(uuidString:)();
      goto LABEL_22;
    }
  }

  else
  {
    sub_10005A088(&aBlock);
  }

  v33 = type metadata accessor for UUID();
  (*(*(v33 - 8) + 56))(v18, 1, 1, v33);
LABEL_22:
  result = [v6 _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
  if (result)
  {
    v35 = result;

    sub_10005D10C(v18, v16, &unk_1000D9E30, &qword_1000933F0);
    v36 = a5;
    v37 = v61;
    sub_10005D10C(v36, v61, &qword_1000D9E28, &unk_1000931D0);
    v38 = (*(v59 + 80) + 25) & ~*(v59 + 80);
    v39 = (v14 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v60 + 80) + v39 + 9) & ~*(v60 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v6;
    *(v41 + 24) = v62;
    sub_10005A2F8(v16, v41 + v38, &unk_1000D9E30, &qword_1000933F0);
    v42 = v41 + v39;
    v43 = v63;
    *v42 = v63;
    v44 = v64;
    *(v42 + 8) = v64;
    sub_10005A2F8(v37, v41 + v40, &qword_1000D9E28, &unk_1000931D0);
    v70 = sub_10005A360;
    v71 = v41;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_10005D798;
    v69 = &unk_1000C6480;
    v45 = _Block_copy(&aBlock);
    v46 = v6;
    v47 = v43;

    v48 = [v35 flatMap:v45];
    _Block_release(v45);

    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    *(v49 + 24) = v44;
    v70 = sub_10005D7A4;
    v71 = v49;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_10005D79C;
    v69 = &unk_1000C64D0;
    v50 = _Block_copy(&aBlock);
    v51 = v47;

    v52 = [v48 addSuccessBlock:v50];
    _Block_release(v50);

    v53 = swift_allocObject();
    *(v53 + 16) = v51;
    *(v53 + 24) = v44;
    v70 = sub_10005D77C;
    v71 = v53;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_100047498;
    v69 = &unk_1000C6520;
    v54 = _Block_copy(&aBlock);
    v55 = v51;

    v56 = [v52 addFailureBlock:v54];
    _Block_release(v54);

    return sub_10005C664(v65, &unk_1000D9E30, &qword_1000933F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004B648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = type metadata accessor for MainActor();
  v6[4] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_10004B71C;

  return sub_10005AAA8(a6);
}

uint64_t sub_10004B71C()
{
  v2 = v0;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 48) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10004B878;
  }

  else
  {
    v8 = sub_10005D7B4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10004B878()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];

  swift_errorRetain();
  sub_10007095C(30, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004B904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = type metadata accessor for MainActor();
  v6[4] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_10004B9D8;

  return sub_10005BA24(a6);
}

uint64_t sub_10004B9D8()
{
  v2 = v0;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 48) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10004BB34;
  }

  else
  {
    v8 = sub_10005D7B4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10004BB34()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];

  swift_errorRetain();
  sub_10007095C(31, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004BBC0()
{
  v1[3] = v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10004BC58, v3, v2);
}

uint64_t sub_10004BC58()
{
  v1 = [*(v0 + 24) _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
  *(v0 + 56) = v1;
  if (v1)
  {
    v3 = v1;
    v4 = async function pointer to static NAFutureHelper.continuation<A>(_:)[1];
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    v2 = sub_10005B9DC(0, &qword_1000D9FA0, UINavigationController_ptr);
    *v5 = v0;
    v5[1] = sub_10004BD40;
    v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return static NAFutureHelper.continuation<A>(_:)(v1, v2);
}

uint64_t sub_10004BD40(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v9 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = sub_10004C030;
  }

  else
  {

    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = sub_10004BE5C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10004BE5C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);

  v3 = [v1 topViewController];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;

      v7 = *(v0 + 8);

      return v7(v6);
    }
  }

  v9 = *(v0 + 72);
  sub_100057794();
  swift_allocError();
  v11 = v10;
  _StringGuts.grow(_:)(83);
  v12._object = 0x800000010009A320;
  v12._countAndFlagsBits = 0xD000000000000051;
  String.append(_:)(v12);
  *(v0 + 16) = [v9 topViewController];
  sub_1000578B4(&unk_1000DA8B0, &unk_1000931E0);
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  *v11 = 0;
  *(v11 + 8) = 0xE000000000000000;
  *(v11 + 48) = 4;
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10004C030()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[10];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10004C09C()
{
  v0 = type metadata accessor for Device.Control.Kind.Primitive();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v34 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v33 = &v23 - v5;
  v31 = type metadata accessor for Device.Control.Kind();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device.Control();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Device.ControlModule.controls(in:)();
  v15 = 0;
  v32 = *(result + 16);
  v27 = (v6 + 8);
  v28 = v10 + 16;
  v26 = enum case for Device.Control.Kind.Primitive.incremental(_:);
  v16 = (v1 + 8);
  v24 = (v10 + 8);
  v25 = (v1 + 104);
  v29 = result;
  while (1)
  {
    v19 = v15;
    if (v32 == v15)
    {
LABEL_9:
      v22 = v32 != v19;

      return v22;
    }

    if (v15 >= *(result + 16))
    {
      break;
    }

    v20 = v9;
    (*(v10 + 16))(v13, result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v15, v9);
    v21 = v30;
    Device.Control.kind.getter();
    Device.Control.Kind.primitive.getter();
    (*v27)(v21, v31);
    (*v25)(v34, v26, v0);
    sub_10005A6F4(&unk_1000D9EA0, &type metadata accessor for Device.Control.Kind.Primitive);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v37 == v35 && v38 == v36)
    {
      v17 = 1;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v18 = *v16;
    (*v16)(v34, v0);
    v18(v33, v0);
    v9 = v20;
    (*v24)(v13, v20);

    v15 = v19 + 1;
    result = v29;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C488(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000015;
      v4 = 0x8000000100099AF0;
    }

    else
    {
      v3 = 0x617373696D736964;
      v4 = 0xE90000000000006CLL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x7365636341796E61;
    }

    if (v2)
    {
      v4 = 0x8000000100099AD0;
    }

    else
    {
      v4 = 0xEC00000079726F73;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x8000000100099AF0;
      if (v3 != 0xD000000000000015)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE90000000000006CLL;
      if (v3 != 0x617373696D736964)
      {
LABEL_26:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x7365636341796E61;
    }

    if (a2)
    {
      v6 = 0x8000000100099AD0;
    }

    else
    {
      v6 = 0xEC00000079726F73;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_10004C5F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a3;
  v37 = a4;
  v7 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v10 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v35 - v15;
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v38 = v5;
  v20 = [v5 homeKitObjectIDFrom:isa userDefaultsEnabled:1];

  if (v20)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  }

  else
  {
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  }

  sub_10005A2F8(v16, v18, &unk_1000D9E30, &qword_1000933F0);
  v22 = [a2 itemManager];
  sub_10005D10C(v18, v13, &unk_1000D9E30, &qword_1000933F0);
  type metadata accessor for UUID();
  v23 = *(v21 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v13, 1, v21) != 1)
  {
    v24 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v23 + 8))(v13, v21);
  }

  sub_10005D10C(v18, v10, &unk_1000D9E30, &qword_1000933F0);
  v25 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v26 = (v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_10005A2F8(v10, v27 + v25, &unk_1000D9E30, &qword_1000933F0);
  v28 = (v27 + v26);
  v29 = v37;
  *v28 = v36;
  v28[1] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10005B920;
  *(v30 + 24) = v27;
  aBlock[4] = sub_10005D7B0;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004DAF0;
  aBlock[3] = &unk_1000C6868;
  v31 = _Block_copy(aBlock);

  v32 = [v38 findAccessoryWithItemManager:v22 accessoryID:v24 testBlock:v31];
  _Block_release(v31);

  sub_10005C664(v18, &unk_1000D9E30, &qword_1000933F0);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v32;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004CAB0(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.ViewSize();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  __chkstk_darwin(v2);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AccessoryControl.ViewSizeConstraint();
  v46 = *(v48 - 8);
  v5 = *(v46 + 64);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000578B4(&qword_1000D9EB0, &qword_100093250);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for ControlViewType();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  v13 = __chkstk_darwin(v11);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v43 = &v43 - v15;
  v16 = type metadata accessor for Device.Control.Kind.Primitive();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v43 - v22;
  v24 = type metadata accessor for Device.Control.Kind();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  Device.Control.kind.getter();
  Device.Control.Kind.primitive.getter();
  (*(v25 + 8))(v28, v24);
  (*(v17 + 104))(v21, enum case for Device.Control.Kind.Primitive.binary(_:), v16);
  sub_10005A6F4(&unk_1000D9EA0, &type metadata accessor for Device.Control.Kind.Primitive);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v55 == v53 && v56 == v54)
  {
    v29 = *(v17 + 8);
    v29(v21, v16);
    v29(v23, v16);
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v31 = *(v17 + 8);
    v31(v21, v16);
    v31(v23, v16);

    if ((v30 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  Device.Control.preferredViewType.getter();
  v32 = v51;
  if ((*(v51 + 48))(v10, 1, v11) != 1)
  {
    v33 = v43;
    (*(v32 + 32))(v43, v10, v11);
    v34 = v44;
    (*(v32 + 104))(v44, enum case for ControlViewType.largeSwitch(_:), v11);
    sub_10005A6F4(&qword_1000D9EB8, &type metadata accessor for ControlViewType);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    v36 = *(v32 + 8);
    v36(v34, v11);
    v36(v33, v11);
    if (v35)
    {
      goto LABEL_8;
    }

LABEL_9:
    v41 = 0;
    return v41 & 1;
  }

  sub_10005C664(v10, &qword_1000D9EB0, &qword_100093250);
LABEL_8:
  v37 = v45;
  Device.Control.sizeConstraint.getter();
  v39 = v49;
  v38 = v50;
  v40 = v47;
  (*(v49 + 104))(v47, enum case for AccessoryControl.ViewSize.large(_:), v50);
  v41 = AccessoryControl.ViewSizeConstraint.allows(size:)();
  (*(v39 + 8))(v40, v38);
  (*(v46 + 8))(v37, v48);
  return v41 & 1;
}

uint64_t sub_10004D104()
{
  v0 = type metadata accessor for Device.Control();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Device.ControlModule.controls(in:)();
  v6 = result;
  v7 = 0;
  v8 = *(result + 16);
  while (1)
  {
    v9 = v7;
    if (v8 == v7)
    {
LABEL_5:

      return v8 != v9;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    (*(v1 + 16))(v4, v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v7++, v0);
    v10 = sub_10004CAB0(v4);
    result = (*(v1 + 8))(v4, v0);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004D268(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v30 - v10;
  v34 = &OBJC_PROTOCOL___HFAccessoryRepresentableItem;
  v12 = swift_dynamicCastObjCProtocolConditional();
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  v30 = a4;
  v31 = a3;
  v32 = a1;
  v14 = [v13 accessoryRepresentableObject];
  swift_getObjectType();
  v15 = HFAccessoryRepresentable.containedServices.getter();
  swift_unknownObjectRelease();
  v16 = sub_10004D58C(v15);

  sub_1000578B4(&unk_1000DA8A0, &qword_100093230);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100093140;
  v22 = [objc_msgSend(v13 "homeKitObject")];
  swift_unknownObjectRelease();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v16;
  sub_100053B30(v21);
  v23 = v33;
  v24 = *(v18 + 48);
  if (v24(a2, 1, v17) == 1)
  {

LABEL_6:
    type metadata accessor for AccessoryControlsHelper();
    v27 = [v13 accessoryRepresentableObject];
    v28 = static AccessoryControlsHelper.controlModules(for:)();
    swift_unknownObjectRelease();
    v29 = v31(v28);

    return v29 & 1;
  }

  sub_10005D10C(a2, v11, &unk_1000D9E30, &qword_1000933F0);
  result = (v24)(v11, 1, v17);
  if (result != 1)
  {
    v26 = sub_10004D998(v11, v23);

    (*(v18 + 8))(v11, v17);
    if (v26)
    {
      goto LABEL_6;
    }

LABEL_8:
    v29 = 0;
    return v29 & 1;
  }

  __break(1u);
  return result;
}

void *sub_10004D58C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_100053C5C(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_10007CCB0(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 uniqueIdentifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v46;
        v51 = v46;
        v25 = v46[2];
        v24 = v46[3];
        if (v25 >= v24 >> 1)
        {
          sub_100053C5C(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        v23[2] = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          sub_1000578B4(&qword_1000D9E98, &qword_100093238);
          v14 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_10005B9CC(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_10005B9CC(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_10005B9CC(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
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

BOOL sub_10004D998(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for UUID() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10005A6F4(&qword_1000D9E90, &type metadata accessor for UUID);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_10004DAF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  LOBYTE(v2) = v3();

  return v2 & 1;
}

uint64_t sub_10004DB34(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  [swift_unknownObjectRetain() tap:{a2, a3}];
  [a1 dragWithStartPoint:a2 endPoint:a3 duration:{a4, a5, 2.0}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 2.0}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.5}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.5}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.5}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.5}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.5}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.5}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.5}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.5}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.5}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.5}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  [a1 dragWithStartPoint:a6 endPoint:a7 duration:{a4, a5, 0.1}];
  [a1 dragWithStartPoint:a4 endPoint:a5 duration:{a6, a7, 0.1}];
  for (i = 0; i != 11; ++i)
  {
    v32.origin.x = a8;
    v32.origin.y = a9;
    v32.size.width = a10;
    v32.size.height = a11;
    MinY = CGRectGetMinY(v32);
    v33.origin.x = a8;
    v33.origin.y = a9;
    v33.size.width = a10;
    v33.size.height = a11;
    v27 = MinY + CGRectGetHeight(v33) / 10.0 * i;
    v34.origin.x = a8;
    v34.origin.y = a9;
    v34.size.width = a10;
    v34.size.height = a11;
    [a1 tap:{CGRectGetMidX(v34), v27}];
    [a1 advanceTime:0.2];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10004E114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a6;
  *(v7 + 56) = a5;
  *(v7 + 24) = type metadata accessor for MainActor();
  *(v7 + 32) = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  *(v7 + 40) = v11;
  *v11 = v7;
  v11[1] = sub_10004E1F0;

  return sub_10004E34C(a5, a6, a7);
}

uint64_t sub_10004E1F0()
{
  v2 = v0;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 48) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10005D610;
  }

  else
  {
    v8 = sub_10005D7B4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10004E34C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  *(v4 + 128) = a2;
  *(v4 + 288) = a1;
  v5 = *(*(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8) + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 160) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 168) = v7;
  *(v4 + 176) = v6;

  return _swift_task_switch(sub_10004E424, v7, v6);
}

uint64_t sub_10004E424()
{
  v26 = v0;
  v1 = static os_log_type_t.default.getter();
  *(v0 + 184) = sub_10005B9DC(0, &qword_1000D9D80, OS_os_log_ptr);
  v2 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = *(v0 + 288);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136315138;
    v6 = sub_100070AEC(v3);
    v8 = sub_10006B744(v6, v7, &v25);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v1, "PPT - Launching accessory settings for %s", v4, 0xCu);
    sub_1000578FC(v5);
  }

  v9 = *(v0 + 136);
  *(v0 + 88) = 0x726F737365636361;
  *(v0 + 96) = 0xEB00000000444979;
  AnyHashable.init<A>(_:)();
  if (*(v9 + 16) && (v10 = *(v0 + 136), v11 = sub_10007C3AC(v0 + 16), (v12 & 1) != 0))
  {
    sub_10005A46C(*(*(v0 + 136) + 56) + 32 * v11, v0 + 56);
    sub_10005A088(v0 + 16);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 112);
      if (v13)
      {
        v14 = *(v0 + 104);
        v15 = *(v0 + 152);
        v16 = *(v0 + 112);
        UUID.init(uuidString:)();
        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_10005A088(v0 + 16);
  }

  v17 = *(v0 + 152);
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v13 = 0;
LABEL_10:
  *(v0 + 192) = v13;
  v19 = [*(v0 + 144) _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
  *(v0 + 200) = v19;
  if (v19)
  {
    v21 = v19;
    v22 = async function pointer to static NAFutureHelper.continuation<A>(_:)[1];
    v23 = swift_task_alloc();
    *(v0 + 208) = v23;
    v20 = sub_10005B9DC(0, &qword_1000D9FA0, UINavigationController_ptr);
    *v23 = v0;
    v23[1] = sub_10004E714;
    v19 = v21;
  }

  else
  {
    __break(1u);
  }

  return static NAFutureHelper.continuation<A>(_:)(v19, v20);
}

uint64_t sub_10004E714(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v10 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v5 = v3[24];

    v6 = v3[21];
    v7 = v3[22];
    v8 = sub_10004F2F0;
  }

  else
  {
    v6 = v3[21];
    v7 = v3[22];
    v8 = sub_10004E830;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10004E830()
{
  v1 = [*(v0 + 216) topViewController];
  *(v0 + 232) = v1;
  if (!v1)
  {
    v19 = *(v0 + 192);
    v20 = *(v0 + 160);
LABEL_11:

    v23 = *(v0 + 216);
    v2 = *(v0 + 200);
    sub_100057794();
    swift_allocError();
    v25 = v24;
    _StringGuts.grow(_:)(83);
    v26._countAndFlagsBits = 0xD000000000000051;
    v26._object = 0x800000010009A320;
    String.append(_:)(v26);
    *(v0 + 120) = [v23 topViewController];
    sub_1000578B4(&unk_1000DA8B0, &unk_1000931E0);
    v27._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v27);

    *v25 = 0;
    *(v25 + 8) = 0xE000000000000000;
    *(v25 + 48) = 4;
    swift_willThrow();
    goto LABEL_12;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  *(v0 + 240) = v3;
  if (!v3)
  {
    v21 = *(v0 + 192);
    v22 = *(v0 + 160);

    goto LABEL_11;
  }

  v4 = v3;
  v5 = [*(v0 + 144) appNavigator];
  *(v0 + 248) = v5;
  if (v5)
  {
    v6 = v5;
    v7 = *(v0 + 184);
    static os_log_type_t.default.getter();
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v9 = [v4 collectionView];
    if (!v9)
    {
      __break(1u);
      return static NAFutureHelper.continuation<A>(_:)(v9, v10);
    }

    v11 = v9;
    v12 = *(v0 + 192);
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 288);

    v16 = [v4 itemManager];
    v17 = sub_10005C6C4(v15, v16, v14, v13, &off_1000C4658);
    *(v0 + 256) = v17;

    if (v17)
    {
      if (sub_100070AEC(*(v0 + 288)) == 0xD000000000000018 && 0x8000000100099E70 == v18)
      {
        goto LABEL_8;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        goto LABEL_18;
      }

      if (sub_100070AEC(*(v0 + 288)) == 0xD000000000000015 && 0x8000000100099EF0 == v43)
      {
LABEL_8:
      }

      else
      {
        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v44 & 1) == 0)
        {
LABEL_19:
          v40 = [v6 showAccessory:v17 secondaryDestination:1];
          *(v0 + 264) = v40;
          v41 = async function pointer to static NAFutureHelper.continuation<A>(_:)[1];
          v42 = swift_task_alloc();
          *(v0 + 272) = v42;
          *v42 = v0;
          v42[1] = sub_10004ED60;
          v10 = &type metadata for Swift.AnyObject + 8;
          v9 = v40;

          return static NAFutureHelper.continuation<A>(_:)(v9, v10);
        }
      }

LABEL_18:
      v38 = *(v0 + 128);
      sub_100070AEC(*(v0 + 288));
      v39 = String._bridgeToObjectiveC()();

      [v38 startedTest:v39];

      goto LABEL_19;
    }

    v34 = *(v0 + 216);
    v23 = *(v0 + 200);
    v35 = *(v0 + 160);

    sub_100057794();
    swift_allocError();
    *v36 = 0xD000000000000031;
    *(v36 + 8) = 0x800000010009A590;
    *(v36 + 48) = 4;
    swift_willThrow();
  }

  else
  {
    v30 = *(v0 + 216);
    v31 = *(v0 + 192);
    v23 = *(v0 + 200);
    v32 = *(v0 + 160);

    sub_100057794();
    swift_allocError();
    *v33 = 1;
    *(v33 + 8) = 0u;
    *(v33 + 24) = 0u;
    *(v33 + 40) = 0;
    *(v33 + 48) = 5;
    swift_willThrow();
  }

LABEL_12:

  sub_10005C664(*(v0 + 152), &unk_1000D9E30, &qword_1000933F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10004ED60()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 176);
    v7 = sub_10004F380;
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = *(v2 + 168);
    v6 = *(v2 + 176);
    v7 = sub_10004EE8C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10004EE8C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 288);

  if (sub_100070AEC(v2) == 0xD000000000000018 && 0x8000000100099E70 == v3)
  {
LABEL_8:

    goto LABEL_9;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    if (sub_100070AEC(*(v0 + 288)) != 0xD000000000000015 || 0x8000000100099EF0 != v6)
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v51 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  v7 = *(v0 + 128);
  sub_100070AEC(*(v0 + 288));
  v8 = String._bridgeToObjectiveC()();

  [v7 finishedTest:v8 waitForCommit:1 extraResults:0];

LABEL_10:
  if (sub_100070AEC(*(v0 + 288)) == 0xD000000000000017 && 0x8000000100099E90 == v9)
  {
    goto LABEL_12;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    if (sub_100070AEC(*(v0 + 288)) == 0xD00000000000001ELL && 0x8000000100099EB0 == v43)
    {
LABEL_12:

      goto LABEL_14;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {
      v45 = *(v0 + 256);
      v46 = *(v0 + 264);
      v47 = *(v0 + 248);
      v48 = *(v0 + 232);
      v49 = *(v0 + 216);
      v50 = *(v0 + 200);
      sub_10005C664(*(v0 + 152), &unk_1000D9E30, &qword_1000933F0);

      goto LABEL_35;
    }
  }

LABEL_14:
  v11 = *(v0 + 240);
  v12 = *(v0 + 232);
  v13 = [v11 presentedViewController];
  if (!v13)
  {
LABEL_22:
    v32 = *(v0 + 256);
    v33 = *(v0 + 264);
    v34 = *(v0 + 240);
    v35 = *(v0 + 248);
    v36 = *(v0 + 232);
    v37 = *(v0 + 216);
    v54 = *(v0 + 200);
    sub_100057794();
    swift_allocError();
    v39 = v38;
    v40 = [v34 presentedViewController];

    *v39 = 0xD00000000000001ELL;
    *(v39 + 8) = 0x800000010009A5D0;
    v26 = v36;
    *(v39 + 16) = v40;
    *(v39 + 48) = 0;
    swift_willThrow();

    goto LABEL_23;
  }

  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15 || (v16 = [v15 topViewController]) == 0)
  {
    v17 = v14;
LABEL_21:

    goto LABEL_22;
  }

  v17 = v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

    goto LABEL_21;
  }

  v19 = v18;
  v20 = *(v0 + 280);
  v22 = *(v0 + 136);
  v21 = *(v0 + 144);
  v23 = *(v0 + 288);

  v24 = sub_1000780FC(v19, v23, v22);
  v25 = v20;
  v26 = *(v0 + 256);
  v27 = *(v0 + 264);
  v28 = *(v0 + 248);
  v29 = *(v0 + 232);
  v30 = *(v0 + 216);
  v31 = *(v0 + 200);
  if (v25)
  {

LABEL_23:
    sub_10005C664(*(v0 + 152), &unk_1000D9E30, &qword_1000933F0);

    v41 = *(v0 + 8);
    goto LABEL_24;
  }

  v52 = *(v0 + 152);

  sub_10005C664(v52, &unk_1000D9E30, &qword_1000933F0);
LABEL_35:
  v53 = *(v0 + 152);

  v41 = *(v0 + 8);
LABEL_24:

  return v41();
}

uint64_t sub_10004F2F0()
{
  v1 = v0[25];
  v2 = v0[20];

  v3 = v0[28];
  sub_10005C664(v0[19], &unk_1000D9E30, &qword_1000933F0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004F380()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[20];

  v8 = v0[35];
  sub_10005C664(v0[19], &unk_1000D9E30, &qword_1000933F0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10004F444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a6;
  *(v7 + 56) = a5;
  *(v7 + 24) = type metadata accessor for MainActor();
  *(v7 + 32) = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  *(v7 + 40) = v11;
  *v11 = v7;
  v11[1] = sub_10004F520;

  return sub_10004E34C(a5, a6, a7);
}

uint64_t sub_10004F520()
{
  v2 = v0;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 48) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10004F6DC;
  }

  else
  {
    v8 = sub_10004F67C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10004F67C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004F6DC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 56);

  sub_100070AEC(v4);
  v5 = String._bridgeToObjectiveC()();

  [v3 failedTest:v5 withFailure:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10004F790(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = a1;
  v7 = [v5 mediaAccessoryItemType];
  v8 = *(a2 + 16);
  v9 = (a2 + 32);
  do
  {
    v10 = v8-- != 0;
    v11 = v10;
    if (!v10)
    {
      break;
    }

    v12 = *v9++;
  }

  while (v12 != v7);

  return v11;
}

BOOL sub_10004F824(void *a1)
{
  v1 = [a1 services];
  sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
  sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return v3 == 1;
}

Swift::Int sub_10004F8F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004F9C0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10004FA7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10004FB48@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005D0B8(*a1);
  *a2 = result;
  return result;
}

void sub_10004FB78(unint64_t *a1@<X8>)
{
  v2 = 0xEC00000079726F73;
  v3 = 0x7365636341796E61;
  v4 = 0x8000000100099AF0;
  v5 = 0x617373696D736964;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v4 = 0xE90000000000006CLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x8000000100099AD0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10004FC04(void *a1, void *a2, unsigned __int8 a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  v103 = a7;
  v106 = a6;
  v107 = a5;
  v11 = sub_1000578B4(&qword_1000D9E28, &unk_1000931D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v95 - v13;
  v15 = type metadata accessor for DispatchTimeInterval();
  v104 = *(v15 - 8);
  v105 = v15;
  v16 = *(v104 + 64);
  v17 = __chkstk_darwin(v15);
  v101 = v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = v95 - v18;
  v19 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v95 - v24;
  v26 = [a1 topViewController];
  if (!v26)
  {
    goto LABEL_13;
  }

  v27 = v26;
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  v29 = v27;
  if (!v28)
  {

LABEL_13:
    sub_100057794();
    swift_allocError();
    v54 = v53;
    aBlock = 0;
    v109 = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    v55._countAndFlagsBits = 0xD000000000000051;
    v55._object = 0x800000010009A320;
    String.append(_:)(v55);
    v114 = [a1 topViewController];
    sub_1000578B4(&unk_1000DA8B0, &unk_1000931E0);
    v56._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v56);

    v57 = v109;
    *v54 = aBlock;
    *(v54 + 8) = v57;
    *(v54 + 48) = 4;
    v58 = _convertErrorToNSError(_:)();
    v59 = [objc_opt_self() futureWithError:v58];

    return v59;
  }

  v30 = v28;
  v100 = v29;
  v31 = [a2 appNavigator];
  if (!v31)
  {
LABEL_16:
    sub_100057794();
    swift_allocError();
    *v60 = 1;
    *(v60 + 8) = 0u;
    *(v60 + 24) = 0u;
    *(v60 + 40) = 0;
    *(v60 + 48) = 5;
    v61 = _convertErrorToNSError(_:)();
    v62 = [objc_opt_self() futureWithError:v61];

    return v62;
  }

  v32 = v31;
  v33 = [a2 baseViewController];
  if (!v33)
  {

    goto LABEL_16;
  }

  v97 = v33;
  v99 = v32;
  v34 = a3;
  static os_log_type_t.default.getter();
  sub_10005B9DC(0, &qword_1000D9D80, OS_os_log_ptr);
  v35 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v98 = v34;
  v36 = [v30 itemManager];
  v37 = v36;
  if ((v34 - 1) >= 2)
  {
    sub_10005D10C(a4, v25, &unk_1000D9E30, &qword_1000933F0);
    v63 = type metadata accessor for UUID();
    v64 = *(v63 - 8);
    isa = 0;
    if ((*(v64 + 48))(v25, 1, v63) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v64 + 8))(v25, v63);
    }

    v112 = sub_100050A8C;
    v113 = 0;
    aBlock = _NSConcreteStackBlock;
    v109 = 1107296256;
    v110 = sub_100050A90;
    v111 = &unk_1000C6660;
    v66 = _Block_copy(&aBlock);

    v48 = [a2 findPreferredAccessoryWithItemManager:v37 accessoryID:isa with:v66];

    _Block_release(v66);
    result = swift_isEscapingClosureAtFileLocation();
    v51 = v99;
    if ((result & 1) == 0)
    {
      v52 = 0;
      v42 = 0;
      v43 = v98;
      if (v48)
      {
LABEL_10:
        v95[1] = v42;
        if (v43 <= 1 || v43 == 2)
        {
          v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v72 & 1) == 0)
          {
            sub_100070AEC(v106);
            v73 = String._bridgeToObjectiveC()();

            [v107 startedTest:v73];
          }
        }

        else
        {
        }

        v74 = [v51 showAccessory:v48 secondaryDestination:0];
        sub_10005D10C(v103, v14, &qword_1000D9E28, &unk_1000931D0);
        v76 = v104;
        v75 = v105;
        if ((*(v104 + 48))(v14, 1, v105) == 1)
        {
          sub_10005C664(v14, &qword_1000D9E28, &unk_1000931D0);
        }

        else
        {
          v77 = *(v76 + 32);
          v96 = v52;
          v78 = v102;
          v77(v102, v14, v75);
          v79 = v48;
          v80 = v101;
          (*(v76 + 16))(v101, v78, v75);
          v81 = (*(v76 + 80) + 16) & ~*(v76 + 80);
          v82 = v75;
          v83 = swift_allocObject();
          v84 = v80;
          v48 = v79;
          v77((v83 + v81), v84, v82);
          v43 = v98;
          v112 = sub_10005A57C;
          v113 = v83;
          aBlock = _NSConcreteStackBlock;
          v109 = 1107296256;
          v110 = sub_100077BF0;
          v111 = &unk_1000C6638;
          v85 = _Block_copy(&aBlock);

          v86 = [v74 flatMap:v85];
          _Block_release(v85);

          v87 = v78;
          v52 = v96;
          (*(v76 + 8))(v87, v82);
          v74 = v86;
        }

        if (v43 > 2)
        {
        }

        else
        {
          v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v88 & 1) == 0)
          {

            sub_10005A51C(v52);
            return v74;
          }
        }

        v89 = swift_allocObject();
        v90 = v97;
        v91 = v107;
        *(v89 + 16) = v97;
        *(v89 + 24) = v91;
        *(v89 + 32) = v106;
        v112 = sub_10005A56C;
        v113 = v89;
        aBlock = _NSConcreteStackBlock;
        v109 = 1107296256;
        v110 = sub_100077BF0;
        v111 = &unk_1000C65E8;
        v92 = _Block_copy(&aBlock);
        v93 = v90;
        v94 = v91;

        v59 = [v74 flatMap:v92];

        _Block_release(v92);
        sub_10005A51C(v52);
        return v59;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v38 = v36;
    sub_10005D10C(a4, v23, &unk_1000D9E30, &qword_1000933F0);
    v39 = type metadata accessor for UUID();
    v40 = *(v39 - 8);
    v41 = 0;
    if ((*(v40 + 48))(v23, 1, v39) != 1)
    {
      v41 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v40 + 8))(v23, v39);
    }

    v42 = swift_allocObject();
    v43 = v98;
    *(v42 + 16) = v98;
    v44 = swift_allocObject();
    v96 = sub_10005A4D8;
    *(v44 + 16) = sub_10005A4D8;
    *(v44 + 24) = v42;
    v112 = sub_10005A4F0;
    v113 = v44;
    aBlock = _NSConcreteStackBlock;
    v109 = 1107296256;
    v110 = sub_10004DAF0;
    v111 = &unk_1000C6598;
    v45 = _Block_copy(&aBlock);

    v46 = a2;
    v47 = v38;
    v48 = [v46 findAccessoryWithItemManager:v38 accessoryID:v41 testBlock:v45];

    _Block_release(v45);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v51 = v99;
      v52 = v96;
      if (v48)
      {
        goto LABEL_10;
      }

LABEL_22:
      sub_100057794();
      swift_allocError();
      v68 = v67;
      aBlock = 0;
      v109 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);
      v69._countAndFlagsBits = 0xD00000000000002ALL;
      v69._object = 0x800000010009A3D0;
      String.append(_:)(v69);
      LOBYTE(v114) = v43;
      _print_unlocked<A, B>(_:_:)();
      v70 = v109;
      *v68 = aBlock;
      *(v68 + 8) = v70;
      *(v68 + 48) = 4;
      v71 = _convertErrorToNSError(_:)();
      v62 = [objc_opt_self() futureWithError:v71];

      sub_10005A51C(v52);
      return v62;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_100050964(void *a1, void *a2)
{
  v3 = [a1 services];
  sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
  sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  v6 = [a2 services];
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(v7 + 16);
  }

  return v8 < v5;
}

uint64_t sub_100050A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5 & 1;
}

BOOL sub_100050AF8(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = [a1 accessories];
      sub_10005B9DC(0, &unk_1000DA2C0, HMAccessory_ptr);
      sub_100057D7C(&qword_1000D9E70, &unk_1000DA2C0, HMAccessory_ptr);
      v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *(v7 + 16);
      }

      if (v8 != 1)
      {
        return 0;
      }

      v14 = [a1 services];
      sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
      sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
      v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = __CocoaSet.count.getter();
      }

      else
      {
        v16 = *(v15 + 16);
      }

      v12 = v16 <= 1;
      return !v12;
    }

LABEL_8:
    v9 = [a1 services];
    sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
    sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *(v10 + 16);
    }

    v12 = v11 <= 0;
    return !v12;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v2 = [a1 services];
  sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
  sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *(v3 + 16);
  }

  return v4 == 1;
}

id sub_100050DC0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_10005A674;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100077B88;
  aBlock[3] = &unk_1000C66B0;
  v8 = _Block_copy(aBlock);
  v9 = [objc_opt_self() futureWithBlock:v8];
  _Block_release(v8);

  v10 = [v9 asGeneric];

  return v10;
}

uint64_t sub_100050F90(void *a1)
{
  v24 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v1 - 8);
  v2 = *(v28 + 64);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  sub_10005B9DC(0, &qword_1000D9E40, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  DispatchTime.advanced(by:)();
  v25 = *(v10 + 8);
  v25(v14, v9);
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = v24;
  aBlock[4] = sub_10005A6E4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100077B44;
  aBlock[3] = &unk_1000C6700;
  v20 = _Block_copy(aBlock);
  v21 = v19;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005A6F4(&qword_1000D9E48, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000578B4(&qword_1000D9E50, &qword_1000931F0);
  sub_10005A73C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v28 + 8))(v4, v1);
  (*(v26 + 8))(v8, v27);
  return (v25)(v16, v9);
}

id sub_100051340(int a1, id a2, void *a3, char a4)
{
  v7 = [a2 presentedViewController];
  if (v7)
  {
    v8 = v7;
    sub_1000578B4(&unk_1000D9E60, &qword_1000931F8);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      sub_100070AEC(a4);
      v11 = String._bridgeToObjectiveC()();

      [a3 startedTest:v11];

      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      aBlock[4] = sub_10005A7E8;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100077B88;
      aBlock[3] = &unk_1000C6750;
      v13 = _Block_copy(aBlock);
      v14 = objc_opt_self();
      v15 = v8;
      v16 = [v14 futureWithBlock:v13];
      _Block_release(v13);

      v17 = [v16 asGeneric];

      return v17;
    }
  }

  sub_100057794();
  swift_allocError();
  v20 = v19;
  _StringGuts.grow(_:)(57);
  v21._object = 0x800000010009A440;
  v21._countAndFlagsBits = 0xD000000000000037;
  String.append(_:)(v21);
  [a2 presentedViewController];
  sub_1000578B4(&unk_1000DA8B0, &unk_1000931E0);
  v22._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v22);

  *v20 = 0;
  *(v20 + 8) = 0xE000000000000000;
  *(v20 + 48) = 4;
  v23 = _convertErrorToNSError(_:)();
  v24 = [objc_opt_self() futureWithError:v23];

  return v24;
}

uint64_t sub_1000515F0(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  dispatch thunk of AccessoryControlViewController.dismissControlView(animated:completion:)();
}

id sub_100051670(void *a1, uint64_t a2)
{
  v5 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v9 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &aBlock - v10;
  sub_100051AF8(a2, &aBlock - v10);
  sub_10005D10C(v11, v9, &unk_1000D9E30, &qword_1000933F0);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  sub_10005A2F8(v9, v13 + v12, &unk_1000D9E30, &qword_1000933F0);
  v14 = v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v14 = a1;
  *(v14 + 8) = 35;
  v15 = HFHomeAppTabIdentifierHome;
  v16 = v2;
  v17 = a1;
  result = [v16 _selectAndFinishFirstReadForTabWithIdentifier:v15];
  if (result)
  {
    v19 = result;
    v38 = sub_10007A0C8;
    v39 = 0;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_10005D798;
    v37 = &unk_1000C69A8;
    v20 = _Block_copy(&aBlock);
    v21 = [v19 flatMap:v20];
    _Block_release(v20);

    v22 = swift_allocObject();
    v22[2] = v16;
    v22[3] = sub_10005CFB0;
    v22[4] = v13;
    v38 = sub_10005D614;
    v39 = v22;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_10005D798;
    v37 = &unk_1000C69F8;
    v23 = _Block_copy(&aBlock);
    v24 = v16;

    v25 = [v21 flatMap:v23];
    _Block_release(v23);

    v26 = swift_allocObject();
    *(v26 + 16) = v17;
    *(v26 + 24) = 35;
    v38 = sub_10005D7A4;
    v39 = v26;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_10005D79C;
    v37 = &unk_1000C6A48;
    v27 = _Block_copy(&aBlock);
    v28 = v17;

    v29 = [v25 addSuccessBlock:v27];
    _Block_release(v27);

    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = 35;
    v38 = sub_10005D77C;
    v39 = v30;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100047498;
    v37 = &unk_1000C6A98;
    v31 = _Block_copy(&aBlock);
    v32 = v28;

    v33 = [v29 addFailureBlock:v31];
    _Block_release(v31);

    return sub_10005C664(v11, &unk_1000D9E30, &qword_1000933F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100051AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v4 = sub_10007C3AC(v8), (v5 & 1) != 0))
  {
    sub_10005A46C(*(a1 + 56) + 32 * v4, v9);
    sub_10005A088(v8);
    if (swift_dynamicCast())
    {
      UUID.init(uuidString:)();
    }
  }

  else
  {
    sub_10005A088(v8);
  }

  v7 = type metadata accessor for UUID();
  return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
}

void sub_100051C14(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, char a7)
{
  v12 = sub_10007CF40(a3, a5);
  if (!v7)
  {
    if (v12)
    {
      v13 = v12;
      v14 = [a4 baseViewController];
      if (v14)
      {
        v15 = v14;
        sub_100070AEC(a7);
        v16 = String._bridgeToObjectiveC()();

        [a6 startedTest:v16];

        v17 = [a2 showCameraProfile:v13 clipID:0];
        v18 = swift_allocObject();
        *(v18 + 16) = v15;
        v23[4] = sub_10005D104;
        v23[5] = v18;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 1107296256;
        v23[2] = sub_100077BF0;
        v23[3] = &unk_1000C6AE8;
        v19 = _Block_copy(v23);
        v20 = v15;

        [v17 flatMap:v19];
        _Block_release(v19);
      }

      else
      {
        sub_100057794();
        swift_allocError();
        *v22 = 1;
        *(v22 + 8) = 0u;
        *(v22 + 24) = 0u;
        *(v22 + 40) = 0;
        *(v22 + 48) = 5;
        swift_willThrow();
      }
    }

    else
    {
      sub_100057794();
      swift_allocError();
      strcpy(v21, "cameraProfile");
      *(v21 + 7) = -4864;
      v21[48] = 2;
      swift_willThrow();
    }
  }
}

id sub_100051E70(int a1, id a2)
{
  v2 = [a2 hu_dismissViewControllerAnimated:1];
  v3 = [v2 asGeneric];

  return v3;
}

void sub_100051ECC(uint64_t a1, void *a2, char a3, char a4)
{
  sub_100070AEC(a3);
  v6 = String._bridgeToObjectiveC()();

  [a2 finishedTest:v6 waitForCommit:a4 & 1 extraResults:0];
}

uint64_t sub_100051F4C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10007EAB8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100052580(v6);
  return specialized ContiguousArray._endMutation()();
}

id sub_100051FC8(void *a1, id a2, uint64_t (*a3)(void *, void *, id))
{
  v5 = [a2 appNavigator];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 itemManager];
    v8 = [v7 home];

    if (!v8)
    {
      v11 = objc_opt_self();
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 hf_errorWithCode:30 description:v12];

      v14 = _convertErrorToNSError(_:)();
      v15 = [objc_opt_self() futureWithError:v14];

      return v15;
    }

    v17 = a3(a1, v6, v8);
    v18 = [v17 asGeneric];
  }

  else
  {
    sub_100057794();
    swift_allocError();
    *v9 = 1;
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0;
    *(v9 + 48) = 5;
    v10 = _convertErrorToNSError(_:)();
    v18 = [objc_opt_self() futureWithError:v10];
  }

  return v18;
}

id sub_100052220(void *a1)
{
  v24 = &OBJC_PROTOCOL___HUPerformanceTestableViewController;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 hu_performanceTestReadyFuture];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v21 = sub_10005D7A0;
    v22 = v6;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_10005D798;
    v20 = &unk_1000C50F8;
    v7 = _Block_copy(&v17);
    v8 = v4;

    v9 = [v5 flatMap:v7];
LABEL_6:
    v15 = v9;
    _Block_release(v7);

    return v15;
  }

  v23 = &OBJC_PROTOCOL___HUPreloadableViewController;
  v10 = swift_dynamicCastObjCProtocolConditional();
  if (v10)
  {
    v11 = v10;
    v12 = a1;
    result = [v11 hu_preloadContent];
    if (result)
    {
      v5 = result;
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      v21 = sub_100057948;
      v22 = v14;
      v17 = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_10005D798;
      v20 = &unk_1000C50A8;
      v7 = _Block_copy(&v17);
      v8 = v12;

      v9 = [v5 flatMap:v7];
      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
    v16 = [objc_opt_self() futureWithResult:a1];

    return v16;
  }

  return result;
}

id sub_100052498(uint64_t a1, void *a2)
{
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  v6 = a2;
  v7 = v5();

  return v7;
}

uint64_t sub_100052520(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100052580(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10005B9DC(0, &qword_1000D9D68, HMActionSet_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100052928(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100052694(0, v2, 1, a1);
  }
}

void sub_100052694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v31 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v29 = v4;
    v30 = a3;
    v6 = *(v31 + 8 * a3);
    v28 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 hf_affectedServices];
      sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
      sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
      v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = (v11 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v11 + 16);

      v13 = [v9 hf_affectedServices];
      v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = (v14 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v14 + 16);

      if (v12 == v15)
      {
        v16 = [v8 name];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = [v9 name];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        if (v21 == v17 && v23 == v19)
        {

LABEL_5:
          a3 = v30 + 1;
          v4 = v29 + 8;
          v5 = v28 - 1;
          if (v30 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {

        if (v15 >= v12)
        {
          goto LABEL_5;
        }
      }

      if (!v31)
      {
        break;
      }

      v25 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v25;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_100052928(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      v11 = v9;
      if (v9 + 1 >= v8)
      {
        v19 = v9 + 1;
      }

      else
      {
        v130 = v8;
        v12 = *v7;
        v135 = *(*v7 + 8 * (v9 + 1));
        v13 = v9;
        v134 = *(v12 + 8 * v9);
        v14 = v134;
        v5 = v135;
        v15 = v14;
        v132 = sub_100048E18(&v135, &v134);
        if (v6)
        {

          return;
        }

        v16 = v13 + 2;
        v119 = v13;
        v125 = v10;
        v127 = 8 * v13;
        v17 = (v12 + 8 * v13 + 16);
        while (1)
        {
          v19 = v130;
          if (v130 == v16)
          {
            break;
          }

          v20 = *(v17 - 1);
          v5 = *v17;
          v21 = v20;
          v22 = [v5 hf_affectedServices];
          sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
          sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
          v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if ((v23 & 0xC000000000000001) != 0)
          {
            v24 = __CocoaSet.count.getter();
          }

          else
          {
            v24 = *(v23 + 16);
          }

          v25 = [v21 hf_affectedServices];
          v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if ((v26 & 0xC000000000000001) != 0)
          {
            v27 = __CocoaSet.count.getter();
          }

          else
          {
            v27 = *(v26 + 16);
          }

          if (v24 == v27)
          {
            v28 = [v5 name];
            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;

            v32 = [v21 name];
            v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v35 = v34;

            if (v33 == v29 && v35 == v31)
            {
              v18 = 0;
            }

            else
            {
              v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v10 = v125;
          }

          else
          {

            v18 = v27 < v24;
            v10 = v125;
          }

          ++v16;
          ++v17;
          if ((v132 ^ v18))
          {
            v19 = v16 - 1;
            break;
          }
        }

        v11 = v119;
        v6 = 0;
        v7 = a3;
        v36 = v127;
        if (v132)
        {
          if (v19 < v119)
          {
            goto LABEL_145;
          }

          if (v119 < v19)
          {
            v37 = 8 * v19 - 8;
            v38 = v19;
            v39 = v119;
            do
            {
              if (v39 != --v38)
              {
                v40 = *a3;
                if (!*a3)
                {
                  goto LABEL_149;
                }

                v41 = *(v40 + v36);
                *(v40 + v36) = *(v40 + v37);
                *(v40 + v37) = v41;
              }

              ++v39;
              v37 -= 8;
              v36 += 8;
            }

            while (v39 < v38);
          }
        }
      }

      v42 = v7[1];
      if (v19 >= v42)
      {
        goto LABEL_40;
      }

      if (__OFSUB__(v19, v11))
      {
        goto LABEL_142;
      }

      if (v19 - v11 >= a4)
      {
LABEL_40:
        v43 = v19;
        if (v19 < v11)
        {
          goto LABEL_141;
        }

        goto LABEL_41;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_143;
      }

      if (v11 + a4 < v42)
      {
        v42 = v11 + a4;
      }

      if (v42 < v11)
      {
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v128 = v42;
      if (v19 == v42)
      {
        goto LABEL_40;
      }

      v126 = v10;
      v120 = v11;
      v121 = v6;
      v133 = *v7;
      v90 = *v7 + 8 * v19 - 8;
      v91 = v11 - v19;
LABEL_93:
      v131 = v19;
      v92 = *(v133 + 8 * v19);
      v123 = v91;
      v124 = v90;
      while (1)
      {
        v93 = *v90;
        v94 = v92;
        v5 = v93;
        v95 = [v94 hf_affectedServices];
        sub_10005B9DC(0, &qword_1000D9D70, HMService_ptr);
        sub_100057D7C(&qword_1000D9D78, &qword_1000D9D70, HMService_ptr);
        v96 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v97 = (v96 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v96 + 16);

        v98 = [v5 hf_affectedServices];
        v99 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v100 = (v99 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v99 + 16);

        if (v97 == v100)
        {
          break;
        }

        if (v100 >= v97)
        {
          goto LABEL_92;
        }

LABEL_106:
        if (!v133)
        {
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        v110 = *v90;
        v92 = *(v90 + 8);
        *v90 = v92;
        *(v90 + 8) = v110;
        v90 -= 8;
        if (__CFADD__(v91++, 1))
        {
          goto LABEL_92;
        }
      }

      v101 = [v94 name];
      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      v105 = [v5 name];
      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;

      if (v106 != v102 || v108 != v104)
      {
        break;
      }

LABEL_92:
      v19 = v131 + 1;
      v90 = v124 + 8;
      v91 = v123 - 1;
      if (v131 + 1 != v128)
      {
        goto LABEL_93;
      }

      v11 = v120;
      v6 = v121;
      v7 = a3;
      v10 = v126;
      v43 = v128;
      if (v128 < v120)
      {
        goto LABEL_141;
      }

LABEL_41:
      v129 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10007A8A0(0, *(v10 + 2) + 1, 1, v10);
      }

      v45 = *(v10 + 2);
      v44 = *(v10 + 3);
      v46 = v45 + 1;
      v9 = v43;
      v47 = v7;
      if (v45 >= v44 >> 1)
      {
        v112 = sub_10007A8A0((v44 > 1), v45 + 1, 1, v10);
        v9 = v129;
        v10 = v112;
      }

      *(v10 + 2) = v46;
      v48 = &v10[16 * v45];
      *(v48 + 4) = v11;
      *(v48 + 5) = v9;
      v7 = *a1;
      if (!*a1)
      {
        goto LABEL_151;
      }

      if (v45)
      {
        while (2)
        {
          v5 = v46 - 1;
          if (v46 >= 4)
          {
            v53 = &v10[16 * v46 + 32];
            v54 = *(v53 - 64);
            v55 = *(v53 - 56);
            v59 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            if (v59)
            {
              goto LABEL_128;
            }

            v58 = *(v53 - 48);
            v57 = *(v53 - 40);
            v59 = __OFSUB__(v57, v58);
            v51 = v57 - v58;
            v52 = v59;
            if (v59)
            {
              goto LABEL_129;
            }

            v60 = &v10[16 * v46];
            v62 = *v60;
            v61 = *(v60 + 1);
            v59 = __OFSUB__(v61, v62);
            v63 = v61 - v62;
            if (v59)
            {
              goto LABEL_131;
            }

            v59 = __OFADD__(v51, v63);
            v64 = v51 + v63;
            if (v59)
            {
              goto LABEL_134;
            }

            if (v64 >= v56)
            {
              v82 = &v10[16 * v5 + 32];
              v84 = *v82;
              v83 = *(v82 + 1);
              v59 = __OFSUB__(v83, v84);
              v85 = v83 - v84;
              if (v59)
              {
                goto LABEL_138;
              }

              if (v51 < v85)
              {
                v5 = v46 - 2;
              }
            }

            else
            {
LABEL_60:
              if (v52)
              {
                goto LABEL_130;
              }

              v65 = &v10[16 * v46];
              v67 = *v65;
              v66 = *(v65 + 1);
              v68 = __OFSUB__(v66, v67);
              v69 = v66 - v67;
              v70 = v68;
              if (v68)
              {
                goto LABEL_133;
              }

              v71 = &v10[16 * v5 + 32];
              v73 = *v71;
              v72 = *(v71 + 1);
              v59 = __OFSUB__(v72, v73);
              v74 = v72 - v73;
              if (v59)
              {
                goto LABEL_136;
              }

              if (__OFADD__(v69, v74))
              {
                goto LABEL_137;
              }

              if (v69 + v74 < v51)
              {
                goto LABEL_74;
              }

              if (v51 < v74)
              {
                v5 = v46 - 2;
              }
            }
          }

          else
          {
            if (v46 == 3)
            {
              v49 = *(v10 + 4);
              v50 = *(v10 + 5);
              v59 = __OFSUB__(v50, v49);
              v51 = v50 - v49;
              v52 = v59;
              goto LABEL_60;
            }

            v75 = &v10[16 * v46];
            v77 = *v75;
            v76 = *(v75 + 1);
            v59 = __OFSUB__(v76, v77);
            v69 = v76 - v77;
            v70 = v59;
LABEL_74:
            if (v70)
            {
              goto LABEL_132;
            }

            v78 = &v10[16 * v5];
            v80 = *(v78 + 4);
            v79 = *(v78 + 5);
            v59 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v59)
            {
              goto LABEL_135;
            }

            if (v81 < v69)
            {
              break;
            }
          }

          v86 = v5 - 1;
          if (v5 - 1 >= v46)
          {
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
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
            goto LABEL_144;
          }

          if (!*v47)
          {
            goto LABEL_148;
          }

          v87 = *&v10[16 * v86 + 32];
          v88 = *&v10[16 * v5 + 40];
          sub_1000532E0((*v47 + 8 * v87), (*v47 + 8 * *&v10[16 * v5 + 32]), (*v47 + 8 * v88), v7);
          if (v6)
          {
            goto LABEL_123;
          }

          if (v88 < v87)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10007C398(v10);
          }

          if (v86 >= *(v10 + 2))
          {
            goto LABEL_127;
          }

          v89 = &v10[16 * v86];
          *(v89 + 4) = v87;
          *(v89 + 5) = v88;
          v136 = v10;
          sub_10007C30C(v5);
          v10 = v136;
          v46 = *(v136 + 2);
          v9 = v129;
          if (v46 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = v47;
      v8 = v47[1];
      if (v9 >= v8)
      {
        goto LABEL_113;
      }
    }

    v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v109 & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_106;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_113:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_152;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_146:
    v10 = sub_10007C398(v10);
  }

  v136 = v10;
  v113 = *(v10 + 2);
  if (v113 < 2)
  {
LABEL_123:

    return;
  }

  while (*v7)
  {
    v114 = *&v10[16 * v113];
    v115 = *&v10[16 * v113 + 24];
    sub_1000532E0((*v7 + 8 * v114), (*v7 + 8 * *&v10[16 * v113 + 16]), (*v7 + 8 * v115), v5);
    if (v6)
    {
      goto LABEL_123;
    }

    if (v115 < v114)
    {
      goto LABEL_139;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10007C398(v10);
    }

    if (v113 - 2 >= *(v10 + 2))
    {
      goto LABEL_140;
    }

    v116 = &v10[16 * v113];
    *v116 = v114;
    *(v116 + 1) = v115;
    v136 = v10;
    sub_10007C30C(v113 - 1);
    v10 = v136;
    v113 = *(v136 + 2);
    if (v113 <= 1)
    {
      goto LABEL_123;
    }
  }

LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

uint64_t sub_1000532E0(id *__dst, id *__src, id *a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_100048E18(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_100048E18(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_10005367C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000578B4(&qword_1000D9C88, qword_100093190);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t *sub_1000538A4(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    sub_10005568C(v7, a2, a3);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_10005393C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000578B4(&qword_1000D9C88, qword_100093190);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100053B30(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_10007A9A4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for UUID();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

size_t sub_100053C5C(size_t a1, int64_t a2, char a3)
{
  result = sub_100053C7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100053C7C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000578B4(&unk_1000DA8A0, &qword_100093230);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_100053E54(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 4;
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = sub_100057830;
  v4[4] = v3;
  v5 = HFHomeAppTabIdentifierHome;
  v6 = a1;
  v7 = v1;

  v8 = [v7 _selectAndFinishFirstReadForTabWithIdentifier:v5];
  if (v8)
  {
    v9 = v8;
    v28 = sub_10007A0C8;
    v29 = 0;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D798;
    v27 = &unk_1000C4EC8;
    v10 = _Block_copy(&v24);
    v11 = [v9 flatMap:v10];
    _Block_release(v10);

    v12 = swift_allocObject();
    v12[2] = v7;
    v12[3] = sub_100057850;
    v12[4] = v4;
    v28 = sub_100057870;
    v29 = v12;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D798;
    v27 = &unk_1000C4F18;
    v13 = _Block_copy(&v24);
    v14 = v7;

    v15 = [v11 flatMap:v13];
    _Block_release(v13);

    v16 = swift_allocObject();
    *(v16 + 16) = v6;
    *(v16 + 24) = 4;
    v28 = sub_100057890;
    v29 = v16;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D794;
    v27 = &unk_1000C4F68;
    v17 = _Block_copy(&v24);
    v18 = v6;

    v19 = [v15 addSuccessBlock:v17];
    _Block_release(v17);

    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = 4;
    v28 = sub_10005D77C;
    v29 = v20;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100047498;
    v27 = &unk_1000C4FB8;
    v21 = _Block_copy(&v24);
    v22 = v18;

    v23 = [v19 addFailureBlock:v21];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_100054208(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 5;
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = sub_10005D608;
  v4[4] = v3;
  v5 = a1;
  v6 = v1;

  v7 = sub_100047FC4(1, sub_10005D5EC, v4);

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = 5;
  v20 = sub_10005D7A4;
  v21 = v8;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10005D794;
  v19 = &unk_1000C5198;
  v9 = _Block_copy(&v16);
  v10 = v5;

  v11 = [v7 addSuccessBlock:v9];
  _Block_release(v9);

  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = 5;
  v20 = sub_10005D77C;
  v21 = v12;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100047498;
  v19 = &unk_1000C51E8;
  v13 = _Block_copy(&v16);
  v14 = v10;

  v15 = [v11 addFailureBlock:v13];
  _Block_release(v13);
}

void sub_100054460(void *a1)
{
  v3 = [v1 appNavigator];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    v5[3] = 0;
    v5[4] = 0;
    v5[2] = v1;
    v6 = v1;
    v7 = sub_100047FC4(1, sub_10005D5EC, v5);

    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = 7;
    *(v8 + 32) = v4;
    v27 = sub_100057A10;
    v28 = v8;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10005D798;
    v26 = &unk_1000C5328;
    v9 = _Block_copy(&v23);
    v10 = a1;
    v11 = v4;

    v12 = [v7 flatMap:v9];
    _Block_release(v9);

    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = 7;
    v27 = sub_10005D7A4;
    v28 = v13;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10005D79C;
    v26 = &unk_1000C5378;
    v14 = _Block_copy(&v23);
    v15 = v10;

    v16 = [v12 addSuccessBlock:v14];
    _Block_release(v14);

    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = 7;
    v27 = sub_10005D77C;
    v28 = v17;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100047498;
    v26 = &unk_1000C53C8;
    v18 = _Block_copy(&v23);
    v19 = v15;

    v20 = [v16 addFailureBlock:v18];
    _Block_release(v18);
  }

  else
  {
    sub_100057794();
    v21 = swift_allocError();
    *v22 = 1;
    *(v22 + 8) = 0u;
    *(v22 + 24) = 0u;
    *(v22 + 40) = 0;
    *(v22 + 48) = 5;
    sub_10007095C(7, v21);
  }
}

void sub_1000547E0(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() lightAccessoryTypeGroup];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = 11;
  v6 = swift_allocObject();
  v6[2] = sub_10005D608;
  v6[3] = v5;
  v6[4] = v4;
  v7 = HFHomeAppTabIdentifierHome;
  v8 = a1;

  v25 = v4;
  v9 = [v2 _selectAndFinishFirstReadForTabWithIdentifier:v7];
  if (v9)
  {
    v10 = v9;
    v30 = sub_10007A0C8;
    v31 = 0;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10005D798;
    v29 = &unk_1000C5788;
    v11 = _Block_copy(&aBlock);
    v12 = [v10 flatMap:v11];
    _Block_release(v11);

    v13 = swift_allocObject();
    v13[2] = v2;
    v13[3] = sub_100057B04;
    v13[4] = v6;
    v30 = sub_10005D614;
    v31 = v13;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10005D798;
    v29 = &unk_1000C57D8;
    v14 = _Block_copy(&aBlock);
    v15 = v2;

    v16 = [v12 flatMap:v14];
    _Block_release(v14);

    v17 = swift_allocObject();
    *(v17 + 16) = v8;
    *(v17 + 24) = 11;
    v30 = sub_10005D7A4;
    v31 = v17;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10005D794;
    v29 = &unk_1000C5828;
    v18 = _Block_copy(&aBlock);
    v19 = v8;

    v20 = [v16 addSuccessBlock:v18];
    _Block_release(v18);

    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = 11;
    v30 = sub_10005D77C;
    v31 = v21;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100047498;
    v29 = &unk_1000C5878;
    v22 = _Block_copy(&aBlock);
    v23 = v19;

    v24 = [v20 addFailureBlock:v22];
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }
}

void sub_100054BC4(void *a1)
{
  v3 = [v1 appNavigator];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() lightAccessoryTypeGroup];
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v5;
    v7 = v5;
    v8 = sub_100047FC4(1, sub_10005D578, v6);

    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = 13;
    *(v9 + 32) = v4;
    v28 = sub_10005D618;
    v29 = v9;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D798;
    v27 = &unk_1000C59B8;
    v10 = _Block_copy(&v24);
    v11 = a1;
    v12 = v4;

    v13 = [v8 flatMap:v10];
    _Block_release(v10);

    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = 13;
    v28 = sub_10005D7A4;
    v29 = v14;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D79C;
    v27 = &unk_1000C5A08;
    v15 = _Block_copy(&v24);
    v16 = v11;

    v17 = [v13 addSuccessBlock:v15];
    _Block_release(v15);

    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = 13;
    v28 = sub_10005D77C;
    v29 = v18;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100047498;
    v27 = &unk_1000C5A58;
    v19 = _Block_copy(&v24);
    v20 = v16;

    v21 = [v17 addFailureBlock:v19];
    _Block_release(v19);
  }

  else
  {
    sub_100057794();
    v22 = swift_allocError();
    *v23 = 1;
    *(v23 + 8) = 0u;
    *(v23 + 24) = 0u;
    *(v23 + 40) = 0;
    *(v23 + 48) = 5;
    sub_10007095C(13, v22);
  }
}

void sub_100054F6C(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10005D608;
  *(v5 + 24) = v4;
  v6 = HFHomeAppTabIdentifierHome;
  v7 = a1;

  v8 = [v2 _selectAndFinishFirstReadForTabWithIdentifier:v6];
  if (v8)
  {
    v9 = v8;
    v28 = sub_10007A0C8;
    v29 = 0;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D798;
    v27 = &unk_1000C5440;
    v10 = _Block_copy(&v24);
    v11 = [v9 flatMap:v10];
    _Block_release(v10);

    v12 = swift_allocObject();
    v12[2] = v2;
    v12[3] = sub_100057A38;
    v12[4] = v5;
    v28 = sub_10005D614;
    v29 = v12;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D798;
    v27 = &unk_1000C5490;
    v13 = _Block_copy(&v24);
    v14 = v2;

    v15 = [v11 flatMap:v13];
    _Block_release(v13);

    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = 8;
    v28 = sub_10005D7A4;
    v29 = v16;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10005D794;
    v27 = &unk_1000C54E0;
    v17 = _Block_copy(&v24);
    v18 = v7;

    v19 = [v15 addSuccessBlock:v17];
    _Block_release(v17);

    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = 8;
    v28 = sub_10005D77C;
    v29 = v20;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100047498;
    v27 = &unk_1000C5530;
    v21 = _Block_copy(&v24);
    v22 = v18;

    v23 = [v19 addFailureBlock:v21];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_100055318(void *a1)
{
  v3 = [v1 appNavigator];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v6 = sub_100047FC4(1, sub_10005D560, v5);

    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = 10;
    *(v7 + 32) = v4;
    v26 = sub_10005D618;
    v27 = v7;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10005D798;
    v25 = &unk_1000C5670;
    v8 = _Block_copy(&v22);
    v9 = a1;
    v10 = v4;

    v11 = [v6 flatMap:v8];
    _Block_release(v8);

    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = 10;
    v26 = sub_10005D7A4;
    v27 = v12;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10005D79C;
    v25 = &unk_1000C56C0;
    v13 = _Block_copy(&v22);
    v14 = v9;

    v15 = [v11 addSuccessBlock:v13];
    _Block_release(v13);

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = 10;
    v26 = sub_10005D77C;
    v27 = v16;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100047498;
    v25 = &unk_1000C5710;
    v17 = _Block_copy(&v22);
    v18 = v14;

    v19 = [v15 addFailureBlock:v17];
    _Block_release(v17);
  }

  else
  {
    sub_100057794();
    v20 = swift_allocError();
    *v21 = 1;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0;
    *(v21 + 48) = 5;
    sub_10007095C(10, v20);
  }
}

void sub_10005568C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = dispatch thunk of DashboardContext.accessoryRepresentableHasStandardTileRepresentation(_:)();

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_15:

        sub_10005393C(a1, a2, v19, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1000557D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v7;
    v26 = v3;
    v24 = &v24;
    __chkstk_darwin(v9);
    v27 = &v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v8);
    v28 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v8 = v13 & *(a1 + 56);
    v3 = (v12 + 63) >> 6;
    while (v8)
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v17 = v14 | (v11 << 6);
      v7 = *(*(a1 + 48) + 8 * v17);
      v18 = dispatch thunk of DashboardContext.accessoryRepresentableHasStandardTileRepresentation(_:)();

      if (v18)
      {
        *&v27[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_10005393C(v27, v25, v28, a1);

          return v20;
        }
      }
    }

    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_16;
      }

      v16 = *(a1 + 56 + 8 * v11);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v8 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v10;
  v20 = sub_1000538A4(v22, v7, a1, v23);

  return v20;
}

Swift::Int sub_100055A40(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1000557D8(a1, a2);
  }

  v2 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    sub_10005B9DC(0, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
    do
    {
      swift_dynamicCast();
      if (dispatch thunk of DashboardContext.accessoryRepresentableHasStandardTileRepresentation(_:)())
      {
        v3 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v3)
        {
          sub_10005367C(v3 + 1);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v5 = &_swiftEmptySetSingleton + 56;
        v6 = -1 << *(&_swiftEmptySetSingleton + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7)) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v8 == v11;
            if (v8 == v11)
            {
              v8 = 0;
            }

            v10 |= v12;
            v13 = *&v5[8 * v8];
          }

          while (v13 == -1);
          v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        }

        *&v5[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v9) = v14;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100055C44(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 home];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for DashboardContext();
    v9 = dispatch thunk of static DashboardContext.roomDashboard(for:in:)();
    v10 = [a1 hf_accessoryLikeObjects];
    sub_10005B9DC(0, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
    sub_100057D7C(&qword_1000D9C80, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
    v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = v9;
    v13 = sub_100055A40(v11, v12);

    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = __CocoaSet.count.getter();

      return v14;
    }

    v24 = *(v13 + 16);
  }

  else
  {
    if (qword_1000D97E0 != -1)
    {
      swift_once();
    }

    v16 = qword_1000DB8A0;
    Logger.init(_:)();
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_10006B744(0xD000000000000024, 0x800000010009A100, &v26);
      *(v20 + 12) = 2112;
      *(v20 + 14) = v17;
      *v21 = v17;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s nil home for room %@", v20, 0x16u);
      sub_10005C664(v21, &qword_1000D9C70, &qword_1000936A0);

      sub_1000578FC(v22);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v24;
}

uint64_t sub_100055F90(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = sub_100055C44(v32);
          v35 = sub_100055C44(v33);

          if (v35 < v34)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = sub_100055C44(v17);
          v20 = sub_100055C44(v18);

          if (v20 >= v19)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

void sub_10005625C(char **a1, char *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_10007C398(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __dst = (v9 + 8 * *v10);
      v23 = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_100055F90(__dst, v23, v14, a2);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_1000563F8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void **a5)
{
  v157 = a4;
  v150 = a1;
  v166 = type metadata accessor for Logger();
  v7 = *(*(v166 - 8) + 64);
  v8 = __chkstk_darwin(v166);
  __chkstk_darwin(v8);
  v173 = _swiftEmptyArrayStorage;
  v159 = a3;
  v12 = a3[1];
  if (v12 >= 1)
  {
    v162 = &v150 - v10;
    v163 = v11;
    v165 = (v9 + 8);
    v161 = "rom dashboard item manager";
    v153 = a5;
    v13 = _swiftEmptyArrayStorage;
    v14 = &selRef_hasOptedToHH2;
    *&v15 = 136315394;
    v16 = 0;
    v160 = v15;
    v156 = a5;
    v17 = v157;
    while (1)
    {
      v18 = v16 + 1;
      v164 = v13;
      v152 = v16;
      if (v16 + 1 < v12)
      {
        v19 = v16;
        v20 = 8 * v16;
        v21 = (*v159 + 8 * v16);
        v23 = *v21;
        v22 = v21 + 2;
        v24 = *(*v159 + 8 * v18);
        v25 = v23;
        v170 = sub_100055C44(v24);
        v169 = sub_100055C44(v25);

        v26 = v19 + 2;
        while (v12 != v26)
        {
          v27 = v169 < v170;
          v28 = *(v22 - 1);
          v29 = *v22;
          v30 = v28;
          v31 = sub_100055C44(v29);
          v32 = sub_100055C44(v30);

          ++v26;
          ++v22;
          if (((v27 ^ (v32 >= v31)) & 1) == 0)
          {
            v12 = v26 - 1;
            break;
          }
        }

        a5 = v156;
        v17 = v157;
        v14 = &selRef_hasOptedToHH2;
        if (v169 >= v170)
        {
          goto LABEL_19;
        }

        v33 = v152;
        if (v12 < v152)
        {
          goto LABEL_139;
        }

        if (v152 >= v12)
        {
LABEL_19:
          v18 = v12;
        }

        else
        {
          v34 = 8 * v12 - 8;
          v35 = v12;
          do
          {
            if (v33 != --v35)
            {
              v37 = *v159;
              if (!*v159)
              {
                goto LABEL_144;
              }

              v36 = *(v37 + v20);
              *(v37 + v20) = *(v37 + v34);
              *(v37 + v34) = v36;
            }

            ++v33;
            v34 -= 8;
            v20 += 8;
          }

          while (v33 < v35);
          v18 = v12;
        }
      }

      v38 = v159[1];
      if (v18 >= v38)
      {
        v42 = v18;
      }

      else
      {
        v39 = v18;
        v104 = __OFSUB__(v18, v152);
        v40 = v18 - v152;
        if (v104)
        {
          goto LABEL_138;
        }

        if (v40 >= v17)
        {
          v42 = v39;
        }

        else
        {
          v41 = v152 + v17;
          if (__OFADD__(v152, v17))
          {
            goto LABEL_140;
          }

          if (v41 >= v38)
          {
            v41 = v159[1];
          }

          if (v41 < v152)
          {
LABEL_141:
            __break(1u);
LABEL_142:
            v146 = v153;

            __break(1u);
LABEL_143:
            v147 = v153;

            __break(1u);
LABEL_144:
            v148 = v153;

            __break(1u);
LABEL_145:
            v149 = v153;

            __break(1u);
            goto LABEL_146;
          }

          if (v39 == v41)
          {
            v42 = v39;
          }

          else
          {
            v167 = *v159;
            a5 = (v167 + 8 * v39 - 8);
            v43 = (v152 - v39);
            v151 = v41;
            do
            {
              v158 = v39;
              v44 = v43;
              v45 = *(v167 + 8 * v39);
              v154 = v44;
              v155 = a5;
              v46 = v44;
              do
              {
                v170 = v46;
                v47 = *a5;
                v48 = v45;
                v49 = v47;
                v50 = [v48 v14[72]];
                v169 = v48;
                if (v50)
                {
                  v51 = v50;
                  type metadata accessor for DashboardContext();
                  v52 = dispatch thunk of static DashboardContext.roomDashboard(for:in:)();
                  v53 = [v48 hf_accessoryLikeObjects];
                  sub_10005B9DC(0, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
                  sub_100057D7C(&qword_1000D9C80, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
                  v54 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

                  v55 = v52;
                  v56 = v171;
                  v57 = sub_100055A40(v54, v55);
                  v171 = v56;

                  if ((v57 & 0xC000000000000001) != 0)
                  {
                    v168 = __CocoaSet.count.getter();
                  }

                  else
                  {

                    v168 = *(v57 + 16);
                  }
                }

                else
                {
                  if (qword_1000D97E0 != -1)
                  {
                    swift_once();
                  }

                  v58 = qword_1000DB8A0;
                  v59 = v162;
                  Logger.init(_:)();
                  v60 = v48;
                  v61 = Logger.logObject.getter();
                  v62 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v61, v62))
                  {
                    v63 = swift_slowAlloc();
                    v64 = swift_slowAlloc();
                    v65 = swift_slowAlloc();
                    v172[0] = v65;
                    *v63 = v160;
                    *(v63 + 4) = sub_10006B744(0xD000000000000024, v161 | 0x8000000000000000, v172);
                    *(v63 + 12) = 2112;
                    *(v63 + 14) = v60;
                    *v64 = v60;
                    v66 = v60;
                    _os_log_impl(&_mh_execute_header, v61, v62, "%s nil home for room %@", v63, 0x16u);
                    sub_10005C664(v64, &qword_1000D9C70, &qword_1000936A0);

                    sub_1000578FC(v65);
                  }

                  (*v165)(v59, v166);
                  v168 = 0;
                  v14 = &selRef_hasOptedToHH2;
                }

                v67 = [v49 v14[72]];
                if (v67)
                {
                  v68 = v67;
                  type metadata accessor for DashboardContext();
                  v69 = dispatch thunk of static DashboardContext.roomDashboard(for:in:)();
                  v70 = [v49 hf_accessoryLikeObjects];
                  sub_10005B9DC(0, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
                  sub_100057D7C(&qword_1000D9C80, &qword_1000D9C78, HFAccessoryLikeObject_ptr);
                  v71 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

                  v72 = v69;
                  v73 = v171;
                  v74 = sub_100055A40(v71, v72);
                  v171 = v73;

                  if ((v74 & 0xC000000000000001) != 0)
                  {
                    v75 = __CocoaSet.count.getter();
                  }

                  else
                  {

                    v75 = *(v74 + 16);
                  }

                  v84 = v170;
                  if (v75 >= v168)
                  {
                    break;
                  }
                }

                else
                {
                  if (qword_1000D97E0 != -1)
                  {
                    swift_once();
                  }

                  v76 = qword_1000DB8A0;
                  v77 = v163;
                  Logger.init(_:)();
                  v78 = v49;
                  v79 = Logger.logObject.getter();
                  v80 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v79, v80))
                  {
                    v81 = swift_slowAlloc();
                    v82 = swift_slowAlloc();
                    v83 = swift_slowAlloc();
                    v172[0] = v83;
                    *v81 = v160;
                    *(v81 + 4) = sub_10006B744(0xD000000000000024, v161 | 0x8000000000000000, v172);
                    *(v81 + 12) = 2112;
                    *(v81 + 14) = v78;
                    *v82 = v78;
                    v78 = v78;
                    _os_log_impl(&_mh_execute_header, v79, v80, "%s nil home for room %@", v81, 0x16u);
                    sub_10005C664(v82, &qword_1000D9C70, &qword_1000936A0);

                    sub_1000578FC(v83);
                  }

                  (*v165)(v77, v166);
                  v84 = v170;
                  if (v168 < 1)
                  {
                    break;
                  }
                }

                if (!v167)
                {
                  goto LABEL_142;
                }

                v85 = *a5;
                v45 = a5[1];
                *a5 = v45;
                a5[1] = v85;
                --a5;
                v86 = __CFADD__(v84, 1);
                v46 = v84 + 1;
              }

              while (!v86);
              v39 = v158 + 1;
              a5 = v155 + 1;
              v43 = v154 - 1;
            }

            while (v158 + 1 != v151);
            v42 = v151;
            a5 = v156;
          }
        }
      }

      if (v42 < v152)
      {
        goto LABEL_137;
      }

      v158 = v42;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v13 = v164;
      }

      else
      {
        v13 = sub_10007A8A0(0, *(v164 + 2) + 1, 1, v164);
      }

      v88 = *(v13 + 2);
      v87 = *(v13 + 3);
      v89 = v88 + 1;
      if (v88 >= v87 >> 1)
      {
        v13 = sub_10007A8A0((v87 > 1), v88 + 1, 1, v13);
      }

      *(v13 + 2) = v89;
      v90 = v13 + 32;
      v91 = &v13[16 * v88 + 32];
      v92 = v158;
      *v91 = v152;
      *(v91 + 1) = v92;
      v170 = *v150;
      if (!v170)
      {
        goto LABEL_145;
      }

      if (v88)
      {
        v17 = v157;
        v164 = v13;
        v14 = &selRef_hasOptedToHH2;
        v169 = v13 + 32;
        while (1)
        {
          v93 = v89 - 1;
          if (v89 >= 4)
          {
            break;
          }

          if (v89 == 3)
          {
            v94 = *(v13 + 4);
            v95 = *(v13 + 5);
            v104 = __OFSUB__(v95, v94);
            v96 = v95 - v94;
            v97 = v104;
LABEL_81:
            if (v97)
            {
              goto LABEL_127;
            }

            v110 = &v164[16 * v89];
            v112 = *v110;
            v111 = *(v110 + 1);
            v113 = __OFSUB__(v111, v112);
            v114 = v111 - v112;
            v115 = v113;
            if (v113)
            {
              goto LABEL_129;
            }

            v116 = &v90[16 * v93];
            v118 = *v116;
            v117 = *(v116 + 1);
            v104 = __OFSUB__(v117, v118);
            v119 = v117 - v118;
            if (v104)
            {
              goto LABEL_132;
            }

            if (__OFADD__(v114, v119))
            {
              goto LABEL_134;
            }

            if (v114 + v119 >= v96)
            {
              if (v96 < v119)
              {
                v93 = v89 - 2;
              }

              goto LABEL_103;
            }

            goto LABEL_96;
          }

          if (v89 < 2)
          {
            goto LABEL_135;
          }

          v120 = &v13[16 * v89];
          v122 = *v120;
          v121 = *(v120 + 1);
          v104 = __OFSUB__(v121, v122);
          v114 = v121 - v122;
          v115 = v104;
LABEL_96:
          if (v115)
          {
            goto LABEL_131;
          }

          v123 = &v90[16 * v93];
          v125 = *v123;
          v124 = *(v123 + 1);
          v104 = __OFSUB__(v124, v125);
          v126 = v124 - v125;
          if (v104)
          {
            goto LABEL_133;
          }

          if (v126 < v114)
          {
            v13 = v164;
            goto LABEL_4;
          }

LABEL_103:
          if (v93 - 1 >= v89)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
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
            goto LABEL_141;
          }

          v131 = *v159;
          if (!*v159)
          {
            goto LABEL_143;
          }

          v132 = &v90[16 * v93 - 16];
          v133 = *v132;
          v134 = v93;
          a5 = &v90[16 * v93];
          v135 = a5[1];
          v136 = (v131 + 8 * *v132);
          v137 = (v131 + 8 * *a5);
          v138 = (v131 + 8 * v135);
          v139 = v153;
          v140 = v171;
          sub_100055F90(v136, v137, v138, v170);
          v171 = v140;
          if (v140)
          {

            v173 = v164;
            a5 = v156;
            goto LABEL_117;
          }

          if (v135 < v133)
          {
            goto LABEL_122;
          }

          v141 = *(v164 + 2);
          if (v134 > v141)
          {
            goto LABEL_123;
          }

          *v132 = v133;
          *(v132 + 1) = v135;
          if (v134 >= v141)
          {
            goto LABEL_124;
          }

          v89 = v141 - 1;
          memmove(a5, a5 + 2, 16 * (v141 - 1 - v134));
          v13 = v164;
          *(v164 + 2) = v141 - 1;
          a5 = v156;
          v17 = v157;
          v14 = &selRef_hasOptedToHH2;
          v90 = v169;
          if (v141 <= 2)
          {
            goto LABEL_4;
          }
        }

        v98 = &v90[16 * v89];
        v99 = *(v98 - 8);
        v100 = *(v98 - 7);
        v104 = __OFSUB__(v100, v99);
        v101 = v100 - v99;
        if (v104)
        {
          goto LABEL_125;
        }

        v103 = *(v98 - 6);
        v102 = *(v98 - 5);
        v104 = __OFSUB__(v102, v103);
        v96 = v102 - v103;
        v97 = v104;
        if (v104)
        {
          goto LABEL_126;
        }

        v105 = &v164[16 * v89];
        v107 = *v105;
        v106 = *(v105 + 1);
        v104 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v104)
        {
          goto LABEL_128;
        }

        v104 = __OFADD__(v96, v108);
        v109 = v96 + v108;
        if (v104)
        {
          goto LABEL_130;
        }

        if (v109 >= v101)
        {
          v127 = &v90[16 * v93];
          v129 = *v127;
          v128 = *(v127 + 1);
          v104 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v104)
          {
            goto LABEL_136;
          }

          if (v96 < v130)
          {
            v93 = v89 - 2;
          }

          goto LABEL_103;
        }

        goto LABEL_81;
      }

      v17 = v157;
      v14 = &selRef_hasOptedToHH2;
LABEL_4:
      v16 = v158;
      v12 = v159[1];
      if (v158 >= v12)
      {
        v173 = v13;
        goto LABEL_114;
      }
    }
  }

  v142 = a5;
LABEL_114:
  v143 = *v150;
  if (*v150)
  {
    v144 = a5;
    v145 = v171;
    sub_10005625C(&v173, v143, v159, v144);
    if (v145)
    {

LABEL_117:
    }

    else
    {
    }
  }

  else
  {
LABEL_146:

    __break(1u);
  }
}

void sub_100057108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v18 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      v13 = sub_100055C44(v11);
      v14 = sub_100055C44(v12);

      if (v14 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v15;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1000571F4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10005B9DC(0, &qword_1000DA870, HMRoom_ptr);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_1000563F8(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    sub_100057108(0, v3, 1, a1);
  }
}

void sub_100057338(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_10007EAB8(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_1000571F4(v8, v7);

  specialized ContiguousArray._endMutation()();
}

uint64_t sub_1000573D8(void *a1)
{
  v2 = [a1 actionSets];
  sub_10005B9DC(0, &qword_1000D9D68, HMActionSet_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_10007C600(v3);
  sub_100051F4C(&v9);
  if (!v1)
  {

    v4 = v9;
    if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*(v9 + 16))
    {
LABEL_5:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_8;
      }

      if (*(v4 + 16))
      {
        v5 = *(v4 + 32);
LABEL_8:
        v6 = v5;

        return v6;
      }

      __break(1u);
      goto LABEL_13;
    }

    sub_100057794();
    swift_allocError();
    *v8 = 0x65536E6F69746361;
    *(v8 + 8) = 0xE900000000000074;
    *(v8 + 48) = 2;
    return swift_willThrow();
  }

LABEL_13:

  __break(1u);
  return result;
}

void sub_10005753C(void *a1)
{
  v3 = [v1 _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = 0;
    *(v5 + 32) = v1;
    v18 = sub_10005776C;
    v19 = v5;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_10005D794;
    v17 = &unk_1000C4D10;
    v6 = _Block_copy(&v14);
    v7 = a1;
    v8 = v1;

    v9 = [v4 addSuccessBlock:v6];
    _Block_release(v6);

    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = 0;
    v18 = sub_10005D77C;
    v19 = v10;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100047498;
    v17 = &unk_1000C4D60;
    v11 = _Block_copy(&v14);
    v12 = v7;

    v13 = [v9 addFailureBlock:v11];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005772C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005777C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100057794()
{
  result = qword_1000D9C60;
  if (!qword_1000D9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C60);
  }

  return result;
}

uint64_t sub_1000577E8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000578B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000578FC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_10005794C()
{
  v1 = [objc_opt_self() futureWithResult:*(v0 + 16)];

  return v1;
}

uint64_t sub_1000579C8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057A54()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100057A94(int a1, id a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = *(v3 + 24);
    v6();
  }

  return [a2 showSpeakersAndTVsSectionWithTitle:0 forHome:a3 animated:1];
}

uint64_t sub_100057B1C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100057B64(int a1, id a2, uint64_t a3)
{
  v6 = v3[2];
  v7 = v3[4];
  if (v6)
  {
    v8 = v3[3];
    v6();
  }

  return [a2 showAccessoryTypeGroup:v7 forHome:a3 animated:1];
}

uint64_t sub_100057BDC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057C30()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057C80()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057CD4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100057D34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057D7C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10005B9DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100057DE8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100057E40(void *a1)
{
  v2 = v1;
  static os_log_type_t.default.getter();
  sub_10005B9DC(0, &qword_1000D9D80, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v5 = [v2 baseViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 firstReadCompleteFuture];
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v31 = sub_100058290;
    v32 = v8;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10005D798;
    v30 = &unk_1000C5DC8;
    v9 = _Block_copy(&v27);
    v10 = v6;

    v11 = [v7 flatMap:v9];
    _Block_release(v9);

    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = 17;
    *(v12 + 32) = v10;
    v31 = sub_100058298;
    v32 = v12;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100077BF0;
    v30 = &unk_1000C5E18;
    v13 = _Block_copy(&v27);
    v14 = v10;
    v15 = a1;

    v16 = [v11 flatMap:v13];
    _Block_release(v13);

    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = 17;
    v31 = sub_1000582A8;
    v32 = v17;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10005D79C;
    v30 = &unk_1000C5E68;
    v18 = _Block_copy(&v27);
    v19 = v15;

    v20 = [v16 addSuccessBlock:v18];
    _Block_release(v18);

    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = 17;
    v31 = sub_1000582CC;
    v32 = v21;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100047498;
    v30 = &unk_1000C5EB8;
    v22 = _Block_copy(&v27);
    v23 = v19;

    v24 = [v20 addFailureBlock:v22];
    _Block_release(v22);
  }

  else
  {
    sub_100057794();
    v25 = swift_allocError();
    *v26 = 1;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    *(v26 + 40) = 0;
    *(v26 + 48) = 5;
    sub_10007095C(17, v25);
  }
}

void sub_1000582CC(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  sub_10007095C(v3, a1);
}

uint64_t sub_10005830C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058364()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_1000583AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_1000583BC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100058400(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_100057794();
    swift_allocError();
    *v18 = 1701670760;
    *(v18 + 8) = 0xE400000000000000;
    *(v18 + 48) = 2;
    return swift_willThrow();
  }

  v58 = v1;
  v59 = v8;
  v60 = v6;
  v61 = v5;
  v9 = objc_allocWithZone(HRERecommendationEngine);
  v10 = a1;
  v11 = [v9 init];
  v12 = [v11 generateRecommendationsForHome:v10 options:113];

  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  aBlock[4] = sub_10005D4A0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004AD98;
  aBlock[3] = &unk_1000C6228;
  v16 = _Block_copy(aBlock);

  v17 = [v12 addCompletionBlock:v16];
  _Block_release(v16);

  swift_beginAccess();
  if (*(v14 + 16))
  {
    swift_willThrow();
    swift_errorRetain();
  }

  v63 = v14;
  v64 = v13;
  v62 = v12;
  v57 = v10;
  swift_beginAccess();
  v20 = *(v13 + 16);
  v67 = _swiftEmptyArrayStorage;
  v21 = (v20 & 0xFFFFFFFFFFFFFF8);
  if (v20 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v23 = 0;
      v24 = _swiftEmptyArrayStorage;
      do
      {
        v25 = v23;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v25 >= v21[2])
            {
              goto LABEL_56;
            }

            v26 = *(v20 + 8 * v25 + 32);
          }

          v27 = v26;
          v23 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v25;
          if (v23 == i)
          {
            goto LABEL_23;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v24 = v67;
      }

      while (v23 != i);
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }

LABEL_23:

    if (v24 >> 62)
    {
      break;
    }

    v29 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_62;
    }

LABEL_25:
    v30 = 0;
    v21 = (v24 & 0xC000000000000001);
    while (1)
    {
      if (v21)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v31 = *(v24 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v34 = [v31 sourceTemplate];
      if (v34)
      {
        v20 = v34;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v35 = objc_allocWithZone(HFActionSetBuilder);
          v36 = v32;
          v37 = [v35 initWithHome:v57];
          v38 = v59;
          UUID.init()();
          UUID.uuidString.getter();
          (*(v60 + 8))(v38, v61);
          v39 = String._bridgeToObjectiveC()();

          v61 = v37;
          [v37 setName:v39];

          v59 = v36;
          v21 = [v36 actions];
          v40 = sub_10005B9DC(0, &qword_1000D9DA8, HFActionBuilder_ptr);
          sub_100057D7C(&qword_1000D9DB0, &qword_1000D9DA8, HFActionBuilder_ptr);
          v41 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v56[1] = v41;
          v60 = v40;
          if ((v41 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v41 = aBlock[6];
            v42 = aBlock[7];
            v43 = aBlock[8];
            v44 = aBlock[9];
            v20 = aBlock[10];
          }

          else
          {
            v45 = -1 << *(v41 + 32);
            v42 = v41 + 56;
            v43 = ~v45;
            v46 = -v45;
            if (v46 < 64)
            {
              v47 = ~(-1 << v46);
            }

            else
            {
              v47 = -1;
            }

            v20 = v47 & *(v41 + 56);

            v44 = 0;
          }

          v56[0] = v43;
          if (v41 < 0)
          {
LABEL_43:
            v48 = __CocoaSet.Iterator.next()();
            if (v48)
            {
              v65 = v48;
              swift_dynamicCast();
              v21 = v67;
              v49 = v44;
              v50 = v20;
              v51 = v62;
              if (v67)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v51 = v62;
            }

LABEL_53:
            sub_100059150();

            v54 = v59;

            return v61;
          }

          while (1)
          {
            v52 = v44;
            v53 = v20;
            v49 = v44;
            v51 = v62;
            if (!v20)
            {
              break;
            }

LABEL_50:
            v50 = (v53 - 1) & v53;
            v21 = *(*(v41 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v53)))));
            if (!v21)
            {
              goto LABEL_53;
            }

LABEL_51:
            HFActionSetBuilder.add(actionBuilder:)();

            v44 = v49;
            v20 = v50;
            if (v41 < 0)
            {
              goto LABEL_43;
            }
          }

          while (1)
          {
            v49 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_59;
            }

            if (v49 >= ((v43 + 64) >> 6))
            {
              goto LABEL_53;
            }

            v53 = *(v42 + 8 * v49);
            ++v52;
            if (v53)
            {
              goto LABEL_50;
            }
          }
        }
      }

      else
      {
        v20 = v32;
      }

      ++v30;
      if (v33 == v29)
      {
        goto LABEL_62;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v29 = _CocoaArrayWrapper.endIndex.getter();
  if (v29)
  {
    goto LABEL_25;
  }

LABEL_62:

  sub_100057794();
  swift_allocError();
  *v55 = 0xD000000000000031;
  *(v55 + 8) = 0x800000010009A2E0;
  *(v55 + 48) = 4;
  swift_willThrow();
}

void sub_100058C48(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = [objc_opt_self() sharedDispatcher];
  v6 = [v5 home];

  v7 = sub_100058400(v6);
  *(v4 + 16) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 22;
  *(v8 + 32) = v4;
  v9 = HFHomeAppTabIdentifierHome;
  v10 = a1;

  v11 = [v2 _selectAndFinishFirstReadForTabWithIdentifier:v9];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = 22;
    *(v13 + 32) = v4;
    *(v13 + 40) = sub_100058E8C;
    *(v13 + 48) = v8;
    aBlock[4] = sub_100058F1C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005D794;
    aBlock[3] = &unk_1000C6070;
    v14 = _Block_copy(aBlock);
    v15 = v10;

    v16 = [v12 addSuccessBlock:v14];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100058ED4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100058F30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_100058F7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000578B4(&qword_1000D9DA0, &qword_1000931C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10005D10C(v4, v13, &qword_1000D9D98, &qword_1000931B8);
      result = sub_10007C3AC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000583AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000590DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059114()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100059158(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000578B4(&qword_1000D9EC0, &unk_100093280);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10005D10C(v4, &v13, &qword_1000D9EC8, &qword_1000934F0);
      v5 = v13;
      v6 = v14;
      result = sub_10007C3F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000583AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_100059288(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v6 = __chkstk_darwin(v5);
  if (!a1)
  {
    sub_100057794();
    swift_allocError();
    *v20 = 1701670760;
    *(v20 + 8) = 0xE400000000000000;
    *(v20 + 48) = 2;
    return swift_willThrow();
  }

  v71 = v1;
  v72 = v9;
  v73 = v68 - v7;
  v74 = v8;
  v75 = v6;
  v10 = objc_allocWithZone(HRERecommendationEngine);
  v11 = a1;
  v12 = [v10 init];
  v13 = [v12 generateRecommendationsForHome:v11 options:114];

  v14 = swift_allocObject();
  *(v14 + 16) = _swiftEmptyArrayStorage;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  aBlock[4] = sub_10005A06C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004AD98;
  aBlock[3] = &unk_1000C6430;
  v17 = _Block_copy(aBlock);

  v18 = [v13 addCompletionBlock:v17];
  _Block_release(v17);

  swift_beginAccess();
  if (*(v15 + 16))
  {
    v19 = *(v15 + 16);
    swift_willThrow();
    swift_errorRetain();

    goto LABEL_63;
  }

  v70 = v11;
  v76 = v15;
  v77 = v14;
  swift_beginAccess();
  v22 = *(v14 + 16);
  v81 = _swiftEmptyArrayStorage;
  v23 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v69 = v13;

    if (i)
    {
      v25 = 0;
      v26 = _swiftEmptyArrayStorage;
      v13 = &HFSymptomFixManagerStartSessionNotification_ptr;
      do
      {
        v27 = v25;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v27 >= *(v23 + 16))
            {
              goto LABEL_56;
            }

            v28 = *(v22 + 8 * v27 + 32);
          }

          v29 = v28;
          v25 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v27;
          if (v25 == i)
          {
            goto LABEL_23;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v30 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v26 = v81;
      }

      while (v25 != i);
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

LABEL_23:

    if (v26 >> 62)
    {
      break;
    }

    v31 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v76;
    if (!v31)
    {
      goto LABEL_62;
    }

LABEL_25:
    v32 = 0;
    v23 = v26 & 0xC000000000000001;
    v13 = &HFUserObserver__prots;
    while (1)
    {
      if (v23)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v32 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v34 = *(v26 + 8 * v32 + 32);
      }

      v35 = v34;
      v36 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v37 = [v34 sourceTemplate];
      if (v37)
      {
        v33 = v37;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v38 = [v35 actions];
          v39 = sub_10005B9DC(0, &qword_1000D9DA8, HFActionBuilder_ptr);
          v40 = sub_100057D7C(&qword_1000D9DB0, &qword_1000D9DA8, HFActionBuilder_ptr);
          v68[3] = v39;
          v68[1] = v40;
          v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = objc_allocWithZone(HUTriggerBuilderContext);
          v42 = v70;
          v43 = [v41 init];
          v44 = [objc_allocWithZone(HFEventTriggerBuilder) initWithHome:v42 context:v43];
          v70 = v42;

          v45 = [objc_allocWithZone(HFCalendarEventBuilder) init];
          v46 = v72;
          Date.init()();
          v47 = v73;
          Date.addingTimeInterval(_:)();
          v48 = v75;
          v49 = v74[1];
          v49(v46, v75);
          isa = Date._bridgeToObjectiveC()().super.isa;
          v49(v47, v48);
          [v45 setFireDate:isa];

          v75 = v44;
          v51 = [v44 timeInterface];
          v79 = &OBJC_PROTOCOL___HFTimeEventBuilder;
          v52 = v45;
          v53 = swift_dynamicCastObjCProtocolUnconditional();
          swift_getObjectType();
          sub_1000578B4(&qword_1000D9E20, &qword_1000931C8);
          result = swift_dynamicCastMetatype();
          if (!result)
          {
            __break(1u);
            return result;
          }

          [v51 setEventBuilder:v53];

          v68[2] = v22;
          v74 = v52;
          if ((v22 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v13 = aBlock[6];
            v54 = aBlock[7];
            v55 = aBlock[8];
            v56 = aBlock[9];
            v57 = aBlock[10];
          }

          else
          {
            v58 = -1 << *(v22 + 32);
            v54 = v22 + 56;
            v55 = ~v58;
            v59 = -v58;
            if (v59 < 64)
            {
              v60 = ~(-1 << v59);
            }

            else
            {
              v60 = -1;
            }

            v57 = v60 & *(v22 + 56);

            v56 = 0;
            v13 = v22;
          }

          v73 = v55;
          v23 = (v55 + 64) >> 6;
          if ((v13 & 0x8000000000000000) != 0)
          {
LABEL_44:
            v61 = __CocoaSet.Iterator.next()();
            if (v61)
            {
              v78 = v61;
              swift_dynamicCast();
              v62 = v81;
              v63 = v56;
              v22 = v57;
              if (v81)
              {
                goto LABEL_52;
              }
            }

LABEL_54:
            sub_100059150();

            return v75;
          }

          while (1)
          {
            v64 = v56;
            v65 = v57;
            v63 = v56;
            if (!v57)
            {
              break;
            }

LABEL_51:
            v22 = (v65 - 1) & v65;
            v62 = *(*(v13 + 48) + ((v63 << 9) | (8 * __clz(__rbit64(v65)))));
            if (!v62)
            {
              goto LABEL_54;
            }

LABEL_52:
            v66 = [v75 triggerActionSets];
            [v66 addAnonymousActionBuilder:v62];

            v56 = v63;
            v57 = v22;
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }
          }

          while (1)
          {
            v63 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_59;
            }

            if (v63 >= v23)
            {
              goto LABEL_54;
            }

            v65 = *(v54 + 8 * v63);
            ++v64;
            if (v65)
            {
              goto LABEL_51;
            }
          }
        }
      }

      else
      {
        v33 = v35;
      }

      ++v32;
      v22 = v76;
      if (v36 == v31)
      {
        goto LABEL_62;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v31 = _CocoaArrayWrapper.endIndex.getter();
  v22 = v76;
  if (v31)
  {
    goto LABEL_25;
  }

LABEL_62:

  sub_100057794();
  swift_allocError();
  *v67 = 0xD000000000000031;
  *(v67 + 8) = 0x800000010009A2E0;
  *(v67 + 48) = 4;
  swift_willThrow();

LABEL_63:
}

void sub_100059C20(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = [objc_opt_self() sharedDispatcher];
  v6 = [v5 home];

  v7 = sub_100059288(v6);
  *(v4 + 16) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 23;
  *(v8 + 32) = v4;
  v9 = HFHomeAppTabIdentifierTriggers;
  v10 = a1;

  v11 = [v2 _selectAndFinishFirstReadForTabWithIdentifier:v9];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    *(v13 + 24) = sub_100059E60;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    *(v13 + 48) = 23;
    aBlock[4] = sub_100059EF0;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005D794;
    aBlock[3] = &unk_1000C62C8;
    v14 = _Block_copy(aBlock);
    v15 = v10;

    v16 = [v12 addSuccessBlock:v14];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100059EA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100059F00()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100059F70()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005A02C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005A0DC()
{
  v1 = *(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1000578B4(&qword_1000D9E28, &unk_1000931D0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 9) & ~v6;
  v8 = *(v5 + 64);

  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return _swift_deallocObject(v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_10005A2F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000578B4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10005A360(void *a1)
{
  v3 = *(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8);
  v4 = (*(v3 + 80) + 25) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1000578B4(&qword_1000D9E28, &unk_1000931D0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = *(v1 + 24);
  v11 = v1 + ((v5 + *(v6 + 80) + 9) & ~*(v6 + 80));

  return sub_10004FC04(a1, v7, v10, v1 + v4, v8, v9, v11);
}

uint64_t sub_10005A46C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10005A4F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_10005A51C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10005A52C()
{

  return _swift_deallocObject(v0, 33, 7);
}

id sub_10005A57C(uint64_t a1)
{
  v3 = *(type metadata accessor for DispatchTimeInterval() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100050DC0(a1, v4);
}

uint64_t sub_10005A5EC()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005A674(void *a1)
{
  v2 = *(*(type metadata accessor for DispatchTimeInterval() - 8) + 80);

  return sub_100050F90(a1);
}

uint64_t sub_10005A6F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005A73C()
{
  result = qword_1000D9E58;
  if (!qword_1000D9E58)
  {
    sub_10005A7A0(&qword_1000D9E50, &qword_1000931F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E58);
  }

  return result;
}

uint64_t sub_10005A7A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_10005A7F0(char a1, uint64_t (*a2)(void *a1), uint64_t a3, CGFloat a4, double a5, CGFloat a6, double a7)
{
  v12 = a5 + 5.0;
  v13 = a7 + -10.0;
  CGRect.center.getter();
  v15 = v14;
  v17 = v16;
  v35.origin.x = a4;
  v35.origin.y = v12;
  v35.size.width = a6;
  v35.size.height = v13;
  MinY = CGRectGetMinY(v35);
  v36.origin.x = a4;
  v36.origin.y = v12;
  v36.size.width = a6;
  v36.size.height = v13;
  MaxY = CGRectGetMaxY(v36);
  sub_100070AEC(a1);
  sub_1000578B4(&unk_1000D9F80, &unk_100093218);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100093150;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v15;
  *(v21 + 40) = MinY;
  *(v21 + 48) = v15;
  *(v21 + 56) = MaxY;
  *(v21 + 64) = a4;
  *(v21 + 72) = v12;
  *(v21 + 80) = a6;
  *(v21 + 88) = v13;
  v22 = objc_allocWithZone(RPTBlockInteraction);
  v33 = sub_10005B7C4;
  v34 = v21;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10005D79C;
  v32 = &unk_1000C67C8;
  v23 = _Block_copy(&v29);
  v24 = [v22 initWithActions:v23];
  _Block_release(v23);

  *(v20 + 32) = v24;
  v25 = String._bridgeToObjectiveC()();

  sub_1000578B4(&unk_1000D9E80, &qword_100093228);
  v26.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a2)
  {
    v33 = a2;
    v34 = a3;
    v29 = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100077B44;
    v32 = &unk_1000C67F0;
    a2 = _Block_copy(&v29);
  }

  v27 = [objc_allocWithZone(RPTInteractionTestParameters) initWithTestName:v25 interactions:v26.super.isa completionHandler:a2];
  _Block_release(a2);

  return v27;
}

uint64_t sub_10005AAA8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Device.Control.Kind.Primitive();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v7;
  v2[14] = v6;

  return _swift_task_switch(sub_10005AB9C, v7, v6);
}

uint64_t sub_10005AB9C()
{
  v1 = objc_opt_self();
  *(v0 + 120) = v1;
  if ([v1 isRecapAvailable])
  {
    v2 = [*(v0 + 64) appNavigator];
    *(v0 + 128) = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      *(v0 + 136) = v3;
      *v3 = v0;
      v3[1] = sub_10005AD08;
      v4 = *(v0 + 64);

      return sub_10004BBC0();
    }

    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  v7 = *(v0 + 96);

  sub_100057794();
  swift_allocError();
  *v8 = v6;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0;
  *(v8 + 48) = 5;
  swift_willThrow();
  v9 = *(v0 + 88);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10005AD08(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v7 = *(v3 + 112);
  v8 = *(v3 + 104);
  if (v1)
  {
    v9 = sub_10005B61C;
  }

  else
  {
    v9 = sub_10005AE4C;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10005AE4C()
{
  v1 = *(v0 + 64);
  v2 = sub_10004C5F0(*(v0 + 56), *(v0 + 144), sub_10004C09C, 0);
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 128);
    sub_1000578B4(&unk_1000D9E60, &qword_1000931F8);
    v5 = v3;
    static AccessoryControlViewController.test_prepareForPerformanceTesting()();
    v6 = [v4 showAccessory:v5 secondaryDestination:0];
    *(v0 + 168) = v6;
    v7 = async function pointer to static NAFutureHelper.continuation<A>(_:)[1];
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    *v8 = v0;
    v8[1] = sub_10005B078;

    return static NAFutureHelper.continuation<A>(_:)(v6, &type metadata for Swift.AnyObject + 8);
  }

  else
  {
    v9 = *(v0 + 144);
    v10 = *(v0 + 128);
    v11 = *(v0 + 96);

    sub_100057794();
    swift_allocError();
    v13 = v12;
    _StringGuts.grow(_:)(69);
    v14._countAndFlagsBits = 0xD000000000000043;
    v14._object = 0x800000010009A480;
    String.append(_:)(v14);
    v15._object = 0x8000000100099E30;
    v15._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v15);
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 48) = 4;
    swift_willThrow();

    v16 = *(v0 + 88);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10005B078()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {
    v4 = v3[13];
    v5 = v3[14];

    return _swift_task_switch(sub_10005B690, v4, v5);
  }

  else
  {
    v6 = v3[21];
    swift_unknownObjectRelease();

    v7 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
    v8 = swift_task_alloc();
    v3[24] = v8;
    *v8 = v3;
    v8[1] = sub_10005B208;

    return static Task<>.sleep(nanoseconds:)(1000000000);
  }
}

uint64_t sub_10005B208()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_10005B724;
  }

  else
  {
    v7 = sub_10005B344;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005B344()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);

  v3 = [v1 presentedViewController];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  type metadata accessor for DataModelAccessoryControlViewController();
  if (!swift_dynamicCastClass())
  {

LABEL_6:
    v8 = *(v0 + 160);
    v9 = *(v0 + 144);
    v10 = *(v0 + 128);
    sub_100057794();
    swift_allocError();
    v15 = v14;
    v16 = [v9 presentedViewController];

    *v15 = 0xD00000000000001ELL;
    *(v15 + 8) = 0x800000010009A4D0;
    *(v15 + 16) = v16;
    *(v15 + 48) = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
  (*(v6 + 104))(v5, enum case for Device.Control.Kind.Primitive.incremental(_:), v7);
  AccessoryControlViewController.test_firstControlFrame(for:)();
  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 160);
  v9 = *(v0 + 144);
  v10 = *(v0 + 128);
  if (*(v0 + 48))
  {
    sub_100057794();
    swift_allocError();
    v12 = v11;
    v13 = [v9 presentedViewController];

    *v12 = 0xD000000000000036;
    *(v12 + 8) = 0x800000010009A4F0;
    *(v12 + 16) = v13;
    *(v12 + 48) = 0;
    swift_willThrow();

LABEL_7:
    v17 = *(v0 + 88);

    v18 = *(v0 + 8);
    goto LABEL_8;
  }

  v20 = *(v0 + 120);
  v21 = *(v0 + 88);
  v23 = *(v0 + 32);
  v22 = *(v0 + 40);
  v25 = *(v0 + 16);
  v24 = *(v0 + 24);

  [v20 runTestWithParameters:{sub_10005A7F0(30, sub_10005D604, 0, v25, v24, v23, v22)}];
  swift_unknownObjectRelease();

  v18 = *(v0 + 8);
LABEL_8:

  return v18();
}

uint64_t sub_10005B61C()
{
  v1 = v0[16];
  v2 = v0[12];

  v3 = v0[19];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10005B690()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[12];

  v6 = v0[23];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10005B724()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[12];

  v5 = v0[25];
  v6 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10005B7FC()
{
  v1 = *(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10005B920(void *a1)
{
  v3 = *(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_10004D268(a1, v1 + v4, v6, v7);
}

uint64_t sub_10005B9CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10005B9DC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10005BA24(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v4;
  v2[11] = v3;

  return _swift_task_switch(sub_10005BABC, v4, v3);
}

uint64_t sub_10005BABC()
{
  v1 = objc_opt_self();
  *(v0 + 96) = v1;
  if ([v1 isRecapAvailable])
  {
    v2 = [*(v0 + 64) appNavigator];
    *(v0 + 104) = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      *(v0 + 112) = v3;
      *v3 = v0;
      v3[1] = sub_10005BC20;
      v4 = *(v0 + 64);

      return sub_10004BBC0();
    }

    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  v7 = *(v0 + 72);

  sub_100057794();
  swift_allocError();
  *v8 = v6;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0;
  *(v8 + 48) = 5;
  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10005BC20(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v7 = *(v3 + 88);
  v8 = *(v3 + 80);
  if (v1)
  {
    v9 = sub_10005C4E4;
  }

  else
  {
    v9 = sub_10005BD64;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10005BD64()
{
  v1 = *(v0 + 64);
  v2 = sub_10004C5F0(*(v0 + 56), *(v0 + 120), sub_10004D104, 0);
  *(v0 + 136) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 104);
    sub_1000578B4(&unk_1000D9E60, &qword_1000931F8);
    v5 = v3;
    static AccessoryControlViewController.test_prepareForPerformanceTesting()();
    v6 = [v4 showAccessory:v5 secondaryDestination:0];
    *(v0 + 144) = v6;
    v7 = async function pointer to static NAFutureHelper.continuation<A>(_:)[1];
    v8 = swift_task_alloc();
    *(v0 + 152) = v8;
    *v8 = v0;
    v8[1] = sub_10005BF88;

    return static NAFutureHelper.continuation<A>(_:)(v6, &type metadata for Swift.AnyObject + 8);
  }

  else
  {
    v9 = *(v0 + 120);
    v10 = *(v0 + 104);
    v11 = *(v0 + 72);

    sub_100057794();
    swift_allocError();
    v13 = v12;
    _StringGuts.grow(_:)(64);
    v14._countAndFlagsBits = 0xD00000000000003ELL;
    v14._object = 0x800000010009A550;
    String.append(_:)(v14);
    v15._object = 0x8000000100099E50;
    v15._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v15);
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 48) = 4;
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10005BF88()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {
    v4 = v3[10];
    v5 = v3[11];

    return _swift_task_switch(sub_10005C550, v4, v5);
  }

  else
  {
    v6 = v3[18];
    swift_unknownObjectRelease();

    v7 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
    v8 = swift_task_alloc();
    v3[21] = v8;
    *v8 = v3;
    v8[1] = sub_10005C118;

    return static Task<>.sleep(nanoseconds:)(1000000000);
  }
}

uint64_t sub_10005C118()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_10005C5DC;
  }

  else
  {
    v7 = sub_10005C254;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005C254()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);

  v3 = [v1 presentedViewController];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  type metadata accessor for DataModelAccessoryControlViewController();
  if (!swift_dynamicCastClass())
  {

LABEL_6:
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = *(v0 + 104);
    sub_100057794();
    swift_allocError();
    v12 = v11;
    v13 = [v6 presentedViewController];

    *v12 = 0xD00000000000001ELL;
    *(v12 + 8) = 0x800000010009A4D0;
    *(v12 + 16) = v13;
    *(v12 + 48) = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  AccessoryControlViewController.test_firstControlFrame(_:)();
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  if (*(v0 + 48))
  {
    sub_100057794();
    swift_allocError();
    v9 = v8;
    v10 = [v6 presentedViewController];

    *v9 = 0xD000000000000036;
    *(v9 + 8) = 0x800000010009A4F0;
    *(v9 + 16) = v10;
    *(v9 + 48) = 0;
    swift_willThrow();

LABEL_7:
    v14 = *(v0 + 8);
    goto LABEL_8;
  }

  v16 = *(v0 + 96);
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  v20 = *(v0 + 16);
  v19 = *(v0 + 24);

  [v16 runTestWithParameters:{sub_10005A7F0(31, sub_10005D604, 0, v20, v19, v18, v17)}];
  swift_unknownObjectRelease();

  v14 = *(v0 + 8);
LABEL_8:

  return v14();
}

uint64_t sub_10005C4E4()
{
  v1 = v0[13];
  v2 = v0[9];

  v3 = v0[16];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10005C550()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[9];

  v6 = v0[20];
  v7 = v0[1];

  return v7();
}

uint64_t sub_10005C5DC()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];

  v5 = v0[22];
  v6 = v0[1];

  return v6();
}

uint64_t sub_10005C664(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000578B4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10005C6C4(char a1, uint64_t a2, void *a3, Class a4, uint64_t a5)
{
  v45 = a3;
  v9 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v44 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v44 - v18;
  __chkstk_darwin(v17);
  v21 = &v44 - v20;
  if (sub_100070AEC(a1) == 0xD00000000000001ELL && 0x8000000100099EB0 == v22)
  {

    goto LABEL_5;
  }

  v44 = a2;
  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  a2 = v44;

  if (v23)
  {
LABEL_5:
    sub_10005D10C(a4, v21, &unk_1000D9E30, &qword_1000933F0);
    v24 = type metadata accessor for UUID();
    v25 = *(v24 - 8);
    isa = 0;
    if ((*(v25 + 48))(v21, 1, v24) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v25 + 8))(v21, v24);
    }

    v27 = swift_allocObject();
    *(v27 + 16) = a5;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_10005CE74;
    *(v28 + 24) = v27;
    v50 = sub_10005D7B0;
    v51 = v28;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_10004DAF0;
    v49 = &unk_1000C6958;
    v29 = _Block_copy(&aBlock);

    v16 = [v45 findAccessoryWithItemManager:a2 accessoryID:isa testBlock:v29];

    _Block_release(v29);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      return v16;
    }

    goto LABEL_26;
  }

  if (sub_100070AEC(a1) == 0xD000000000000015 && 0x8000000100099EF0 == v31)
  {

    v32 = v45;
LABEL_13:
    sub_10005D10C(a4, v19, &unk_1000D9E30, &qword_1000933F0);
    v13 = type metadata accessor for UUID();
    v34 = *(v13 - 1);
    a4 = 0;
    if ((*(v34 + 48))(v19, 1, v13) != 1)
    {
      a4 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v34 + 8))(v19, v13);
    }

    v50 = sub_10004DAA4;
    v51 = 0;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_10004DAF0;
    v49 = &unk_1000C68E0;
    v35 = _Block_copy(&aBlock);

    v16 = [v32 findAccessoryWithItemManager:a2 accessoryID:a4 testBlock:v35];

    _Block_release(v35);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      return v16;
    }

    __break(1u);
    goto LABEL_17;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v32 = v45;
  if (v33)
  {
    goto LABEL_13;
  }

LABEL_17:
  sub_10005D10C(a4, v16, &unk_1000D9E30, &qword_1000933F0);
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v39 = 0;
  if (v38(v16, 1, v36) != 1)
  {
    v39 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v37 + 8))(v16, v36);
  }

  v50 = sub_10004DAE4;
  v51 = 0;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_10004DAF0;
  v49 = &unk_1000C6890;
  v40 = _Block_copy(&aBlock);

  v16 = [v32 findAccessoryWithItemManager:v44 accessoryID:v39 testBlock:v40];

  _Block_release(v40);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    goto LABEL_27;
  }

  if (v16)
  {
    return v16;
  }

  sub_10005D10C(a4, v13, &unk_1000D9E30, &qword_1000933F0);
  if (v38(v13, 1, v36) == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v37 + 8))(v13, v36);
  }

  v42 = v44;
  v50 = static BridgedNavigationError.__derived_enum_equals(_:_:);
  v51 = 0;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_10004DAF0;
  v49 = &unk_1000C68B8;
  v43 = _Block_copy(&aBlock);

  v16 = [v32 findAccessoryWithItemManager:v42 accessoryID:v41 testBlock:v43];

  _Block_release(v43);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v16;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10005CE7C()
{
  v1 = *(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 9, v2 | 7);
}

void sub_10005CFB0(uint64_t a1, void *a2, void *a3)
{
  v7 = *(sub_1000578B4(&unk_1000D9E30, &qword_1000933F0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_100051C14(a1, a2, a3, *(v3 + 16), v3 + v8, *v9, *(v9 + 8));
}

uint64_t sub_10005D078()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10005D0B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000C4688, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005D10C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000578B4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s25AccessoryControlsTestTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s25AccessoryControlsTestTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10005D2E8()
{
  result = qword_1000D9ED0;
  if (!qword_1000D9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9ED0);
  }

  return result;
}

void *sub_10005D7B8(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = &_swiftEmptyArrayStorage;
  v16 = &_swiftEmptyArrayStorage;
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v14 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = type metadata accessor for SidebarTabElementBuilder();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v15, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v14;
        }

        if (v15)
        {
          break;
        }

        if (v8 == v6)
        {
          return v14;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v16;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t sub_10005D938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000578B4(&unk_1000DA580, &unk_100093370);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10005D10C(a3, v27 - v11, &unk_1000DA580, &unk_100093370);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10005C664(v12, &unk_1000DA580, &unk_100093370);
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

      sub_10005C664(a3, &unk_1000DA580, &unk_100093370);

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

  sub_10005C664(a3, &unk_1000DA580, &unk_100093370);
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

uint64_t sub_10005DC38()
{
  v0 = type metadata accessor for Logger();
  sub_10006E590(v0, qword_1000D9EE0);
  sub_10006AF58(v0, qword_1000D9EE0);
  return Logger.init(subsystem:category:)();
}