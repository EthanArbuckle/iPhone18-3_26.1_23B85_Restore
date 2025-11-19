uint64_t sub_1003253E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100325430()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077E8C8);
  v1 = sub_100003E30(v0, qword_10077E8C8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100325674()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077E908);
  v1 = sub_100003E30(v0, qword_10077E908);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10032573C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1007671D8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_10077E908);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100004060(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "PencilAutoCommitTracker will begin writing in %s", v9, 0xCu);
    sub_100004758(v10);
  }

  v3[4] = a1;
  v3[5] = a2;

  if (v3[2])
  {

    swift_unknownObjectRetain();
    sub_1004F46FC();

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1003258FC(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v57 = a1;
  v56 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v56 - 8);
  __chkstk_darwin(v56);
  v48[0] = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100058000(&qword_10076DCB8);
  __chkstk_darwin(v51);
  v52 = v48 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v48 - v11;
  v13 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v13 - 8);
  v49 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v55 = v48 - v16;
  v19 = __chkstk_darwin(v17);
  v20 = v48 - v18;
  v54 = v2;
  v21 = *(v2 + 16);
  if (v21)
  {
    v22 = *(v7 + 16);
    v22(v12, v21 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_item, v6, v19);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v7 + 8))(v12, v6);
    v23 = *(v3 + 56);
    (v23)(v20, 0, 1, v56);
  }

  else
  {
    v23 = *(v3 + 56);
    v23(v48 - v18, 1, 1, v56, v19);
    v22 = *(v7 + 16);
  }

  v48[1] = OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_item;
  (v22)(v9, v57 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_item, v6);
  v24 = v55;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v25 = *(v7 + 8);
  v50 = v6;
  v25(v9, v6);
  v26 = v56;
  (v23)(v24, 0, 1, v56);
  v27 = v52;
  v28 = *(v51 + 48);
  sub_100326354(v20, v52);
  sub_100326354(v24, v27 + v28);
  v29 = v3;
  v30 = *(v3 + 48);
  if (v30(v27, 1, v26) == 1)
  {
    sub_1000079B4(v24, &unk_10076BB50);
    sub_1000079B4(v20, &unk_10076BB50);
    v31 = v30(v27 + v28, 1, v26);
    v32 = v57;
    if (v31 == 1)
    {
      sub_1000079B4(v27, &unk_10076BB50);
      goto LABEL_15;
    }
  }

  else
  {
    v33 = v49;
    sub_100326354(v27, v49);
    if (v30(v27 + v28, 1, v26) != 1)
    {
      v45 = v48[0];
      (*(v29 + 32))(v48[0], v27 + v28, v26);
      sub_1003263C4(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *(v29 + 8);
      v47(v45, v26);
      sub_1000079B4(v55, &unk_10076BB50);
      sub_1000079B4(v20, &unk_10076BB50);
      v47(v33, v26);
      sub_1000079B4(v27, &unk_10076BB50);
      v32 = v57;
      if (v46)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    sub_1000079B4(v55, &unk_10076BB50);
    sub_1000079B4(v20, &unk_10076BB50);
    (*(v29 + 8))(v33, v26);
    v32 = v57;
  }

  sub_1000079B4(v27, &qword_10076DCB8);
LABEL_10:
  if (qword_1007671D8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100003E30(v34, qword_10077E908);
  swift_unknownObjectRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v58 = v38;
    *v37 = 136315138;
    sub_1003263C4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v39 = TTRTreeStorageItem.treeItemDescription.getter();
    v41 = sub_100004060(v39, v40, &v58);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "PencilAutoCommitTracker got pencilWritingStateReporter for %s", v37, 0xCu);
    sub_100004758(v38);
  }

LABEL_15:
  v43 = v53;
  v42 = v54;
  *(v54 + 16) = v32;
  *(v42 + 24) = v43;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t sub_100326040(uint64_t a1, unint64_t a2)
{
  if (qword_1007671D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_10077E908);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100004060(a1, a2, v20);
    _os_log_impl(&_mh_execute_header, v6, v7, "PencilAutoCommitTracker did finish writing in %s", v8, 0xCu);
    sub_100004758(v9);
  }

  v10 = v2[5];
  v11 = v2 + 4;
  if (!v10 || (v2[4] != a1 || v10 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      *v20 = *v11;
      sub_100058000(qword_100771B80);
      v16 = Optional.descriptionOrNil.getter();
      v18 = sub_100004060(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "PencilAutoCommitTracker: not getting didFinish first for %s", v14, 0xCu);
      sub_100004758(v15);
    }
  }

  *v11 = 0;
  v2[5] = 0;

  if (v2[2])
  {
    swift_unknownObjectRetain();
    sub_1004F3C70();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003262F0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100326354(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076BB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003263C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100326598@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = result;
    v6 = v3;
    if (![v5 _isKeyWindowScene])
    {

      goto LABEL_7;
    }

    v7 = [v5 delegate];

    if (!v7)
    {
LABEL_7:
      result = 0;
      goto LABEL_8;
    }

    type metadata accessor for TTRIWindowSceneController(0);
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

LABEL_8:
  *a2 = result;
  return result;
}

void sub_1003269BC(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TTRIAppDelegate();
  objc_msgSendSuper2(&v12, "buildMenuWithBuilder:", a1);
  sub_100003540(0, &qword_10077EB98);
  v3 = [a1 system];
  v4 = [objc_opt_self() mainSystem];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    [a1 removeMenuForIdentifier:UIMenuFormat];
    sub_10028ED88(a1);
    sub_100508B90(a1);
    if (UIApp)
    {
      v6 = [UIApp connectedScenes];
      sub_100003540(0, &qword_10077EB68);
      sub_1000072CC(&qword_10077EB70, &qword_10077EB68);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100058000(&qword_10077EB78);
      type metadata accessor for TTRIWindowSceneController(0);
      sub_10000E188(&qword_10077EB80, &qword_10077EB78);
      Sequence.firstMap<A>(_:)();

      if (v11)
      {
        v7 = &v11[OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface];
        swift_beginAccess();
        v8 = *(v7 + 3);
        if (v8)
        {
          v9 = sub_10000C36C(v7, v8);
          sub_10000C36C((*v9 + 48), *(*v9 + 72));
          swift_unknownObjectRetain();
          v10 = sub_10044CE40();
          swift_unknownObjectRelease();
        }

        else
        {
          v10 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v10 = _swiftEmptyArrayStorage;
      }

      sub_10005BAA8(a1, v10);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100326CE4()
{
  v1 = OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___siriVocabularyUpdater;
  if (*(v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___siriVocabularyUpdater))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate____lazy_storage___siriVocabularyUpdater);
  }

  else
  {
    v3 = v0;
    type metadata accessor for RDIDispatchQueue();
    v4 = static RDIDispatchQueue.backgroundQueue.getter();
    type metadata accessor for TTRSiriVocabularyUpdater();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    *(v2 + 16) = v4;
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_100326D8C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100326E84()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store);
    v2 = result;
    type metadata accessor for TTRUserDefaults();
    v3 = v1;
    v4 = static TTRUserDefaults.appUserDefaults.getter();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    type metadata accessor for TTRStoreReviewController();
    v6 = swift_allocObject();
    sub_100079270(v3, v4, sub_100079600, v5, v6);
    sub_10046791C();
  }

  return result;
}

uint64_t sub_100326F78()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1007671E0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003E30(v2, qword_10077E9D0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Donating list names to Siri", v5, 2u);
    }

    sub_100326CE4();
    sub_100321DBC();
  }

  return result;
}

void sub_1003270DC(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_1003271F4()
{
  sub_10000927C();
  v1 = [objc_opt_self() sharedApplication];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_100328190;
  v10[5] = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10001047C;
  v10[3] = &unk_100720840;
  v3 = _Block_copy(v10);

  v4 = [v1 beginBackgroundTaskWithExpirationHandler:v3];
  _Block_release(v3);

  v5 = v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_backgroundTaskIdentifierForApplicationVisibilityChangeHandler;
  *v5 = v4;
  *(v5 + 8) = 0;
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_10077E9D0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "application did set up background task for application visibility change handler", v9, 2u);
  }
}

uint64_t sub_1003273C4()
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_10077E9D0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "application will expire background task for application visibility change handler", v3, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1000090D0();

    sub_100010360();
    sub_1000093DC(1, 0);
  }

  return result;
}

uint64_t sub_1003274F4(uint64_t a1, uint64_t a2)
{
  result = UIApp;
  if (UIApp)
  {
    v5 = [UIApp connectedScenes];
    sub_100003540(0, &qword_10077EB68);
    sub_1000072CC(&qword_10077EB70, &qword_10077EB68);
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    *&v16 = v6;
    sub_100058000(&qword_10077EB78);
    type metadata accessor for TTRIWindowSceneController(0);
    sub_10000E188(&qword_10077EB80, &qword_10077EB78);
    Sequence.firstMap<A>(_:)();

    v7 = v18[0];
    if (v18[0])
    {
      v8 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
      swift_beginAccess();
      sub_10000794C(v18[0] + v8, &v16, &qword_10077EBB0);
      if (v17)
      {
        sub_100005FD0(&v16, v18);
        if (*(a2 + 16) && (v9 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v10 & 1) != 0) && (sub_1000046FC(*(a2 + 56) + 32 * v9, &v16), swift_dynamicCast()))
        {
          if (v14 == 0xD000000000000023 && 0x80000001006821E0 == v15)
          {

            v11 = 2;
          }

          else
          {
            v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v13)
            {
              v11 = 2;
            }

            else
            {
              v11 = 0;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        sub_10000C36C(v18, v18[3]);
        v12 = sub_100341B68(a1, v11);
        sub_100004758(v18);

        return v12;
      }

      sub_1000079B4(&v16, &qword_10077EBB0);
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1003277D0(void *a1, void (**aBlock)(void, void))
{
  if (UIApp)
  {
    v4 = [UIApp connectedScenes];
    sub_100003540(0, &qword_10077EB68);
    sub_1000072CC(&qword_10077EB70, &qword_10077EB68);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100058000(&qword_10077EB78);
    type metadata accessor for TTRIWindowSceneController(0);
    sub_10000E188(&qword_10077EB80, &qword_10077EB78);
    Sequence.firstMap<A>(_:)();

    if (v6)
    {
      v5 = sub_100608F88(a1);
    }

    else
    {
      v5 = 0;
    }

    (aBlock)[2](aBlock, v5);
  }

  else
  {
    _Block_release(aBlock);
    __break(1u);
  }
}

uint64_t sub_100327974(uint64_t a1, unint64_t a2)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10077E9D0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004060(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "UNEXPECTED: application willContinueUserActivityWithType {userActivityType: %s}", v7, 0xCu);
    sub_100004758(v8);
  }

  return 0;
}

void sub_100327AC0(void *a1)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10077E9D0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = NSUserActivity.ttrDescription.getter();
    v9 = sub_100004060(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "application didUpdate userActivity {userActivity: %s}", v5, 0xCu);
    sub_100004758(v6);
  }
}

uint64_t sub_100327C20(void *a1)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10077E9D0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = NSUserActivity.ttrDescription.getter();
    v10 = sub_100004060(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "UNEXPECTED: application continue userActivity {userActivity: %s}", v6, 0xCu);
    sub_100004758(v7);
  }

  return 0;
}

void sub_100327D74(void *a1)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10077E9D0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "UNEXPECTED: application userDidAcceptCloudKitShareWith {cloudKitShareMetadata: %@}", v5, 0xCu);
    sub_1000079B4(v6, &unk_10076DF80);
  }
}

uint64_t sub_100327EC0()
{
  v1 = type metadata accessor for TTRAppDelegateUtils.TriggerSyncReason();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_10077E9D0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v6 = *(v0 + OBJC_IVAR____TtC9Reminders15TTRIAppDelegate_store);
  (*(v2 + 104))(v4, enum case for TTRAppDelegateUtils.TriggerSyncReason.appDeactivation(_:), v1);
  v7 = v6;
  static TTRAppDelegateUtils.triggerSync(store:reason:)();

  (*(v2 + 8))(v4, v1);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Update AppShortcut parameters", v10, 2u);
  }

  sub_10032813C();
  static AppShortcutsProvider.updateAppShortcutParameters()();
  TTRWidgetRefresher.tearDownSubscriptionToReloadWidgetTimelinesUponStoreChange()();
  TTRWidgetRefresher.reloadWidgetTimelines()();
  v11 = sub_1000090D0();
  v12 = [objc_opt_self() sharedApplication];
  v13 = [v12 applicationState];

  v14 = *(v11 + 32);
  *(v11 + 32) = v13 == 0;
  sub_10001012C(v14);
}

unint64_t sub_10032813C()
{
  result = qword_10077EB50;
  if (!qword_10077EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB50);
  }

  return result;
}

uint64_t sub_1003281A0(void *a1, uint64_t a2)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10077E9D0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = [v5 request];
    v11 = [v10 content];

    v12 = [v11 body];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100004060(v13, v15, &v19);

    *(v8 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "App willPresent notification: %s", v8, 0xCu);
    sub_100004758(v9);
  }

  v17 = *(a2 + 16);

  return v17(a2, 27);
}

void sub_100328388(void *a1, void (**a2)(void))
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10077E9D0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v5 actionIdentifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_100004060(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "App did receive UNNotificationResponse: {actionIdentifier=%s}", v8, 0xCu);
    sub_100004758(v9);
  }

  if (UIApp)
  {
    v15 = [UIApp connectedScenes];
    sub_100003540(0, &qword_10077EB68);
    sub_1000072CC(&qword_10077EB70, &qword_10077EB68);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100058000(&qword_10077EB78);
    type metadata accessor for TTRIWindowSceneController(0);
    sub_10000E188(&qword_10077EB80, &qword_10077EB78);
    Sequence.firstMap<A>(_:)();

    v16 = v17;
    if (v17)
    {
      sub_1006095D4(v5);
    }

    a2[2](a2);
  }

  else
  {
    _Block_release(a2);
    __break(1u);
  }
}

void sub_100328668(void *a1)
{
  if (qword_1007671E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10077E9D0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = [v3 request];
      v8 = [v7 content];

      v9 = [v8 body];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = sub_100004060(v10, v12, &v15);

    *(v5 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v4, "App openSettingsFor: %s", v5, 0xCu);
    sub_100004758(v6);
  }
}

uint64_t sub_10032884C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077EBC0);
  v1 = sub_100003E30(v0, qword_10077EBC0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10032892C()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10078D450);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.List();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_list;
  swift_beginAccess();
  v15 = v1 + v14;
  v16 = v10;
  sub_10000794C(v15, v9, &unk_10078D450);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000079B4(v9, &unk_10078D450);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    TTRAccountsListsViewModel.List.pinState.getter();
    v18 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
    (*(v34 + 8))(v6, v35);
    if ((v18 & 1) != 0 || ![v1 indentationLevel])
    {
      v19 = 0;
      v21 = 0;
    }

    else
    {
      v19 = TTRAccountsListsViewModel.List.groupName.getter();
      v21 = v20;
    }

    if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
    {
      sub_100058000(&unk_100771E10);
      v22 = swift_allocObject();
      *(v22 + 1) = xmmword_10062D400;
      v22[4] = static TTRAccesibility.AccountsList.Label.SmartList.getter();
      v22[5] = v23;
    }

    else
    {
      v22 = _swiftEmptyArrayStorage;
    }

    v35 = v11;
    v24 = v36;
    sub_10003139C(v36);
    v25 = sub_10016D594(v24, v22);
    v27 = v26;

    (*(v37 + 8))(v24, v38);
    v28 = TTRAccountsListsViewModel.List.count.getter();
    if (v21)
    {
      static TTRAccesibility.AccountsList.Format.GroupMemberName_ItemCount.getter();
      sub_100058000(&unk_100786CB0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10062F800;
      v38 = v16;
      *(v29 + 56) = &type metadata for String;
      v30 = sub_10005C390();
      *(v29 + 32) = v25;
      *(v29 + 40) = v27;
      *(v29 + 96) = &type metadata for Int;
      *(v29 + 104) = &protocol witness table for Int;
      *(v29 + 64) = v30;
      *(v29 + 72) = v28;
      *(v29 + 136) = &type metadata for String;
      *(v29 + 144) = v30;
      *(v29 + 112) = v19;
      *(v29 + 120) = v21;
      v31 = String.init(format:_:)();

      (*(v35 + 8))(v13, v38);
    }

    else
    {
      static TTRAccesibility.AccountsList.Format.Name_ItemCount.getter();
      sub_100058000(&unk_100786CB0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10062D3F0;
      *(v32 + 56) = &type metadata for String;
      v33 = sub_10005C390();
      *(v32 + 32) = v25;
      *(v32 + 40) = v27;
      *(v32 + 96) = &type metadata for Int;
      *(v32 + 104) = &protocol witness table for Int;
      *(v32 + 64) = v33;
      *(v32 + 72) = v28;
      v31 = String.init(format:_:)();

      (*(v35 + 8))(v13, v16);
    }

    return v31;
  }
}

id sub_100328E54(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100328ED4()
{
  v1 = [v0 isEditing];
  if (v1)
  {
    v2 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = static TTRAccesibility.AccountsList.Hint.List.getter();
    v5 = v4;

    v2 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100546970((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = v3;
    *(v8 + 5) = v5;
  }

  v9 = static TTRAccesibility.AccountsList.Hint.DragAndDrop.getter();
  v11 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100546970(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100546970((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = v9;
  *(v14 + 5) = v11;
  static TTRAccesibility.General.Label.SentenceEnd.getter();
  sub_100058000(&unk_100781F20);
  sub_10006089C();
  v15 = BidirectionalCollection<>.joined(separator:)();

  if ((v1 & 1) == 0)
  {
  }

  return v15;
}

void *sub_100329108()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&unk_10078D450);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_list;
  swift_beginAccess();
  sub_10000794C(v1 + v10, v5, &unk_10078D450);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000079B4(v5, &unk_10078D450);
    return _swiftEmptyArrayStorage;
  }

  (*(v7 + 32))(v9, v5, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_8:
    v44.receiver = v1;
    v44.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v44, "accessibilityCustomActions");
    if (v16)
    {
      v17 = v16;
      sub_100003540(0, &qword_10076BCE0);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v45 = v15;
    v18 = static TTRAccesibility.AccountsList.Action.ListInfo.getter();
    if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
    {
      v37 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v36 = v18;
      if (TTRAccountsListsViewModel.List.isShared.getter())
      {
        v20 = static TTRAccesibility.AccountsList.Action.ManageSharedList.getter();
        v21 = v22;
        v19 = 0x8000000100672620;
        v37 = 0xD000000000000022;
      }

      else
      {
        v37 = 0xD000000000000013;
        v20 = static TTRAccesibility.AccountsList.Action.ShareList.getter();
        v21 = v23;
        v19 = 0x8000000100672650;
      }
    }

    if ([v1 isEditing])
    {
      v35[0] = v19;
      v35[1] = v20;
      v36 = v21;
      sub_100003540(0, &qword_10076FCB0);
      v24 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = objc_allocWithZone(UIAccessibilityCustomAction);

      v27 = String._bridgeToObjectiveC()();

      v42 = sub_100329E28;
      v43 = v25;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10044E9F0;
      v41 = &unk_100720930;
      v28 = _Block_copy(&aBlock);
      [v26 initWithName:v27 image:v24 actionHandler:v28];

      _Block_release(v28);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v45;
      v19 = v35[0];
      if (!v36)
      {
        goto LABEL_26;
      }
    }

    else
    {

      if (!v21)
      {
        goto LABEL_26;
      }
    }

    if (v19)
    {
      sub_100003540(0, &qword_10076FCB0);
      v29 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();

      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = objc_allocWithZone(UIAccessibilityCustomAction);

      v32 = String._bridgeToObjectiveC()();

      v42 = sub_100329E20;
      v43 = v30;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10044E9F0;
      v41 = &unk_100720908;
      v33 = _Block_copy(&aBlock);
      [v31 initWithName:v32 image:v29 actionHandler:v33];

      _Block_release(v33);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v45;
      if (v45 >> 62)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

LABEL_26:

    if (v15 >> 62)
    {
LABEL_24:
      v34 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_28;
    }

LABEL_27:
    v34 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
    (*(v7 + 8))(v9, v6);
    if (!v34)
    {

      return 0;
    }

    return v15;
  }

  result = [Strong collectionView];
  if (result)
  {
    v13 = result;
    v14 = [result hasActiveDrag];
    swift_unknownObjectRelease();

    if (v14)
    {
      (*(v7 + 8))(v9, v6);
      return _swiftEmptyArrayStorage;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

BOOL sub_10032989C()
{
  v0 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10048B088(v2);
      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {

        swift_unknownObjectRelease();
        sub_1000079B4(v2, &unk_100771B40);
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        sub_10042BF78(v6);

        (*(v4 + 8))(v6, v3);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return Strong != 0;
}

BOOL sub_100329AA0()
{
  v0 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10048B088(v2);
      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {

        swift_unknownObjectRelease();
        sub_1000079B4(v2, &unk_100771B40);
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        sub_10042F45C(v6, 0);

        (*(v4 + 8))(v6, v3);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return Strong != 0;
}

void sub_100329E38(uint64_t a1)
{
  v3 = [v1 containerView];
  *&v3[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v1[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

  v4 = [v1 containerView];
  if (v4)
  {
    v5 = v4;
    *&v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedLists] = a1;

    sub_1000265C4();
  }

  else
  {
    __break(1u);
  }
}

void sub_100329F14(char a1)
{
  v3 = [v1 containerView];
  *&v3[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v1[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

  v4 = [v1 containerView];
  if (v4)
  {
    v5 = v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedStateShowsPinnedListColor];
    v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedStateShowsPinnedListColor] = a1 & 1;
    if (v5 != (a1 & 1))
    {
      v6 = v4;
      sub_1000265C4();
      v4 = v6;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100329FF4(uint64_t a1, char a2)
{
  v5 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C688(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10032B068(v7);
    v12 = [v2 containerView];
    *&v12[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v2[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

    v13 = [v2 containerView];
    if (v13)
    {
      v14 = v13;
      sub_10002F124(a2 & 1);

      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  (*(v9 + 32))(v11, v7, v8);
  v15 = [v2 containerView];
  *&v15[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v2[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

  v16 = [v2 containerView];
  if (!v16)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v17 = v16;
  sub_1003176FC(v11, a2 & 1);

  (*(v9 + 8))(v11, v8);
}

id sub_10032A290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache] = 0;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = v8;
  sub_10032A35C();

  return v9;
}

void sub_10032A35C()
{
  v1 = [v0 containerView];
  [v1 setPreservesSuperviewLayoutMargins:0];

  v2 = [v0 containerView];
  [v2 setLayoutMargins:{16.0, 0.0, 0.0, 0.0}];

  v3 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v3];

  [v0 _setContinuousCornerRadius:0.0];
  [v0 setSelectionStyle:0];
  v4 = [v0 containerView];
  *&v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v0[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

  v5 = [v0 containerView];
  if (v5)
  {
    v6 = v5;
    *&v5[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate + 8] = &off_100720958;
    swift_unknownObjectWeakAssign();

    sub_10032A5C0();
  }

  else
  {
    __break(1u);
  }
}

void sub_10032A5C0()
{
  v1 = [v0 containerView];
  *&v1[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v0[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

  v9 = [v0 containerView];
  if (v9)
  {
    [v0 directionalLayoutMargins];
    v2 = v9;
    v4 = *&v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 16];
    v3 = *&v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 32];
    v5 = v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 48];
    v6 = *&v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 8];
    *&v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 8] = v7;
    if (v7 != v6 || (v8 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v4, v4), vceqq_f64(v3, v3)))), v8.i16[0] = vmaxv_u16(v8), ((v5 ^ 1) & v8.i32[0] & 1) != 0))
    {
      sub_1000265C4();
      v2 = v9;
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_10032A858()
{
  v1 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 containerView];
  v10 = OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache;
  *&v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v0[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache];

  result = [v0 containerView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = result;
  v13 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedPinnedList;
  swift_beginAccess();
  sub_10002C688(v12 + v13, v3);

  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v8, v3, v4);
    v14 = [v0 containerView];
    *&v14[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = *&v0[v10];

    result = [v0 containerView];
    if (result)
    {
      v15 = result;
      v16 = sub_100027EE8();
      __chkstk_darwin(v16);
      *(&v19 - 2) = v8;
      v17 = sub_1002ECA94(sub_1001C5E40, (&v19 - 4), v16);

      if (v17)
      {
        sub_100058000(&qword_10076B780);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_10062D420;
        *(v18 + 32) = v17;
        (*(v5 + 8))(v8, v4);
        return v18;
      }

      (*(v5 + 8))(v8, v4);
      return _swiftEmptyArrayStorage;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  sub_10032B068(v3);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10032AD80(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000FD9F8(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10032ADE0(uint64_t a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100455928(a2);
  v4 = v3;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_10032AE3C(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = sub_100454688(a2);
    swift_unknownObjectRelease();
    return v4 & 1;
  }

  return result;
}

id sub_10032AE8C(uint64_t a1, uint64_t a2, void *a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = sub_1000FDEBC(a2, a3);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    v7 = objc_allocWithZone(UIDropProposal);

    return [v7 initWithDropOperation:0];
  }
}

uint64_t sub_10032AF28(uint64_t a1, uint64_t a2, void *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000FE03C(a2, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10032AFA0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100432D0C(a2);
    v5 = v4;
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

uint64_t sub_10032B004(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004344B8(a2);
    v5 = v4;
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

uint64_t sub_10032B068(uint64_t a1)
{
  v2 = sub_100058000(&qword_100771DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10032B0D0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077ED10);
  v1 = sub_100003E30(v0, qword_10077ED10);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10032B198()
{
  v0 = sub_100058000(&qword_10077E850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v20 - v4;
  if (qword_1007674F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1007A8A40;
  v25 = qword_1007A8A40;
  v20[1] = sub_100058000(&qword_100774070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  v24[0] = 0;
  sub_10032D514();

  AnyHashable.init<A>(_:)();
  *(inited + 72) = 1;
  v24[0] = 1;
  AnyHashable.init<A>(_:)();
  *(inited + 120) = 1;
  *v5 = 5;
  v5[40] = 0;
  v22 = v1;
  v8 = *(v1 + 104);
  v8(v5, enum case for TTRRelativeInsertionPosition.after<A>(_:), v0);
  sub_100323F28();
  v9 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v10)
  {
    v11 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v24, &qword_10077E868);
    if (v11)
    {
      v9 = *(v6 + 16);
    }

    else
    {
      v9 = 0;
    }
  }

  sub_1000FE4D8(v9, v9, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = *(v22 + 8);
  v12(v5, v0);
  v23[0] = 2;
  AnyHashable.init<A>(_:)();
  v24[40] = 1;
  v13 = v21;
  v8(v21, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v0);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10062D400;
  sub_100233FB0(v24, v14 + 32);
  v15 = v25;
  v16 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v17)
  {
    v18 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v23, &qword_10077E868);
    if (v18)
    {
      v16 = *(v15 + 16);
    }

    else
    {
      v16 = 0;
    }
  }

  sub_1000FE4D8(v16, v16, v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12(v13, v0);
  sub_10023400C(v24);
  return v25;
}

uint64_t sub_10032B57C()
{
  v1 = v0;
  v2 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v2 - 8);
  v4 = &v45[-v3];
  v5 = sub_100058000(&unk_100776650);
  __chkstk_darwin(v5);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v45[-v9];
  AnyHashable.base.getter();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v11 = v45[15];
  v12 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  if (v11)
  {
    if (v11 != 1)
    {
      (*(v12 + 152))(ObjectType, v12);
      v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
      v7 = *(v5 - 8);
      if ((*(v7 + 6))(v4, 1, v5) == 1)
      {
        sub_1000079B4(v4, &unk_10078A380);
        return 0;
      }

      goto LABEL_21;
    }

    if (!(*(v12 + 80))(ObjectType, v12))
    {
      v41 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
      return 0;
    }

    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
    swift_unknownObjectRelease();
    v14 = type metadata accessor for REMHashtagLabelSpecifier();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v7, 0, 1, v14);
    v16 = (*(v15 + 88))(v7, v14);
    if (v16 == enum case for REMHashtagLabelSpecifier.labels(_:))
    {
      (*(v15 + 96))(v7, v14);
      v17 = *v7;

      v18 = *(sub_100058000(&qword_10076B830) + 64);
      if (*(v17 + 16))
      {
        v19 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
        (*(*(v19 - 8) + 8))(&v7[v18], v19);
        v20 = *(v1 + OBJC_IVAR____TtC9Reminders23TTRIShowTaggedPresenter_hashtagAssociationModule + 8);
        v21 = swift_getObjectType();
        (*(v20 + 8))(v21, v20);
        sub_100323E20();
        static TTRLocalizableStrings.Hashtags.deleteTagMenuItem(tagCount:)();
        v22 = String._bridgeToObjectiveC()();
        [objc_opt_self() _systemImageNamed:v22];

        v23 = swift_allocObject();
        swift_weakInit();
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v17;
        return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      }

      v43 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
      (*(*(v43 - 8) + 8))(&v7[v18], v43);
      return 0;
    }

LABEL_16:
    if (v16 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v16 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      return 0;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_21:
    CustomSmartListForHashtags = TTRRemindersListViewModel.ListInfo.canCreateCustomSmartListForHashtagsState.getter();
    (*(v7 + 1))(v4, v5);
    if (CustomSmartListForHashtags)
    {
      v39 = String._bridgeToObjectiveC()();
      [objc_opt_self() _systemImageNamed:v39];

      sub_100323E20();
      static TTRLocalizableStrings.RemindersList.createSmartList.getter();
      swift_allocObject();
      swift_weakInit();
      return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    return 0;
  }

  if (!(*(v12 + 80))(ObjectType, v12))
  {
    v42 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
    return 0;
  }

  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v25 = type metadata accessor for REMHashtagLabelSpecifier();
  v7 = *(v25 - 8);
  (*(v7 + 7))(v10, 0, 1, v25);
  v16 = (*(v7 + 11))(v10, v25);
  if (v16 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    goto LABEL_16;
  }

  (*(v7 + 12))(v10, v25);
  v26 = *v10;

  v27 = *(sub_100058000(&qword_10076B830) + 64);
  if (*(v26 + 16))
  {
    v28 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v28 - 8) + 8))(v10 + v27, v28);
    v29 = *(v1 + OBJC_IVAR____TtC9Reminders23TTRIShowTaggedPresenter_hashtagAssociationModule + 8);
    v30 = swift_getObjectType();
    (*(v29 + 8))(v30, v29);
    if (*(v26 + 16) == 1)
    {
      v31 = sub_1000A9A4C(v26);
      v33 = v32;

      if (v33)
      {
        sub_100323E20();
        static TTRLocalizableStrings.Hashtags.renameTagMenuItem.getter();
        v34 = String._bridgeToObjectiveC()();
        [objc_opt_self() _systemImageNamed:v34];

        v35 = swift_allocObject();
        swift_weakInit();
        v36 = swift_allocObject();
        v36[2] = v35;
        v36[3] = v31;
        v36[4] = v33;
        return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      }
    }

    else
    {
    }
  }

  else
  {

    v44 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v44 - 8) + 8))(v10 + v27, v44);
  }

  return 0;
}

uint64_t sub_10032BE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v5 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = sub_100058000(&unk_10076FCD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  __chkstk_darwin(v8 - 8);
  v43 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = type metadata accessor for TTRHashtagAssociationOperation();
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  __chkstk_darwin(v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (v41 - v18);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v42 = v9;
    v21 = result;
    v44 = v7;
    if (qword_1007671F0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_10077ED10);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    v23 = v21;
    v24 = *(v21 + 88);
    v25 = v46;
    *v19 = v45;
    v19[1] = a4;
    (*(v25 + 104))(v19, enum case for TTRHashtagAssociationOperation.renameHashtagLabel(_:), v14);
    v26 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    v45 = v24;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = type metadata accessor for TaskPriority();
      (*(*(v29 - 8) + 56))(v44, 1, 1, v29);
      (*(v25 + 16))(v16, v19, v14);
      v30 = v43;
      sub_1001626EC(v13, v43);
      v31 = *(v46 + 80);
      v41[0] = a4;
      v41[1] = v23;
      v32 = (v31 + 40) & ~v31;
      v33 = v42[80];
      v42 = v13;
      v34 = (v15 + v33 + v32) & ~v33;
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      *(v36 + 2) = 0;
      *(v36 + 3) = 0;
      v37 = v46;
      *(v36 + 4) = v45;
      (*(v37 + 32))(&v36[v32], v16, v14);
      v38 = &v36[v34];
      v13 = v42;
      v39 = v30;
      v25 = v46;
      sub_100275BC8(v39, v38);
      *&v36[v35] = v28;
      swift_unknownObjectRetain_n();

      v40 = v28;
      sub_10009E31C(0, 0, v44, &unk_10063B4C8, v36);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1000079B4(v13, &unk_10076FCD0);
    return (*(v25 + 8))(v19, v14);
  }

  return result;
}

uint64_t sub_10032C2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v4 - 8);
  v6 = v39 - v5;
  v7 = sub_100058000(&unk_10076FCD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  __chkstk_darwin(v7 - 8);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v39 - v11;
  v13 = type metadata accessor for TTRHashtagAssociationOperation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = (v39 - v18);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v41 = v8;
    v20 = result;
    v43 = v6;
    if (qword_1007671F0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_10077ED10);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    v22 = v20;
    v23 = *(v20 + 88);
    v24 = v44;
    *v44 = a3;
    (*(v14 + 104))(v24, enum case for TTRHashtagAssociationOperation.deleteHashtagLabels(_:), v13);
    v25 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
    v40 = v23;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      v28 = type metadata accessor for TaskPriority();
      (*(*(v28 - 8) + 56))(v43, 1, 1, v28);
      (*(v14 + 16))(v16, v24, v13);
      v29 = v42;
      sub_1001626EC(v12, v42);
      v30 = *(v14 + 80);
      v39[0] = a3;
      v39[1] = v22;
      v31 = (v30 + 40) & ~v30;
      v32 = v41[80];
      v41 = v12;
      v33 = (v15 + v32 + v31) & ~v32;
      v34 = (v9 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      *(v35 + 2) = 0;
      *(v35 + 3) = 0;
      *(v35 + 4) = v40;
      (*(v14 + 32))(&v35[v31], v16, v13);
      v36 = &v35[v33];
      v12 = v41;
      v37 = v29;
      v24 = v44;
      sub_100275BC8(v37, v36);
      *&v35[v34] = v27;
      swift_unknownObjectRetain_n();

      v38 = v27;
      sub_10009E31C(0, 0, v43, &unk_10063B4D0, v35);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1000079B4(v12, &unk_10076FCD0);
    return (*(v14 + 8))(v24, v13);
  }

  return result;
}

uint64_t sub_10032C7AC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001EAE00();
  }

  return result;
}

uint64_t sub_10032C804(uint64_t a1)
{
  sub_1001F6B24(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10000C36C((v3 + 48), *(v3 + 72));
      sub_100396340(a1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10032C89C()
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_10032C8DC()
{
  sub_1001E6A30();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowTaggedPresenter()
{
  result = qword_10077ED60;
  if (!qword_10077ED60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10032CA0C(int a1)
{
  LODWORD(v47) = a1;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v46 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v8 = &v43[-v7];
  __chkstk_darwin(v6);
  v10 = &v43[-v9];
  v11 = type metadata accessor for REMHashtagLabelCollection();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = v1;
  swift_getObjectType();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.allHashtagLabels.getter();
  REMHashtagLabelCollection.init(labels:)();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  v50 = v13;
  REMHashtagLabelSpecifier.adjusted(toBeCompatibleWith:allowsLenientFallback:)();
  v14 = v2;
  v49 = *(v3 + 8);
  v49(v8, v2);
  if (REMHashtagLabelSpecifier.isEmpty.getter())
  {
    if (qword_1007671F0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_10077ED10);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "TTRIShowTaggedPresenter: represented list was deleted", v18, 2u);
    }

    [v48 representedListWasDeleted];
    goto LABEL_12;
  }

  if ((v47 & 1) == 0)
  {
LABEL_12:
    swift_unknownObjectRelease();
    v49(v10, v2);
    return (*(v51 + 8))(v50, v52);
  }

  if (qword_1007671F0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003E30(v19, qword_10077ED10);
  v20 = v46;
  (*(v3 + 16))(v46, v10, v14);
  swift_unknownObjectRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v45 = v21;
    v24 = v20;
    v25 = v23;
    v47 = swift_slowAlloc();
    v53 = v47;
    *v25 = 136315394;
    v44 = v22;
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
    v26 = REMHashtagLabelSpecifier.description.getter();
    v28 = v27;
    v29 = v8;
    v30 = v14;
    v31 = v14;
    v32 = v49;
    v49(v29, v30);
    v33 = sub_100004060(v26, v28, &v53);

    *(v25 + 4) = v33;
    *(v25 + 12) = 2080;
    v34 = REMHashtagLabelSpecifier.description.getter();
    v36 = v35;
    v32(v24, v31);
    v37 = sub_100004060(v34, v36, &v53);

    *(v25 + 14) = v37;
    v38 = v45;
    _os_log_impl(&_mh_execute_header, v45, v44, "TTRIShowTaggedPresenter: adjust current selection {from: %s, to: %s}", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v40 = v14;
    v31 = v14;
    v32 = v49;
    v49(v20, v40);
  }

  sub_1001F6B24(v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_20:
    swift_unknownObjectRelease();
    v32(v10, v31);
    return (*(v51 + 8))(v50, v52);
  }

  v42 = Strong;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  sub_10000C36C((v42 + 48), *(v42 + 72));
  sub_100396340(v10);
  swift_unknownObjectRelease();
  v32(v10, v31);
  (*(v51 + 8))(v50, v52);
  return swift_unknownObjectRelease();
}

uint64_t sub_10032D01C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRHashtagAssociationOperation() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100058000(&unk_10076FCD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001AA38;

  return sub_100134A9C(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_10032D1B8()
{
  v1 = type metadata accessor for TTRHashtagAssociationOperation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_100058000(&unk_10076FCD0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for TTRIPopoverAnchor();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v12 + 8, v3 | v7 | 7);
}

uint64_t sub_10032D378(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRHashtagAssociationOperation() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100058000(&unk_10076FCD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001AA3C;

  return sub_100134A9C(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

unint64_t sub_10032D514()
{
  result = qword_10077F7B0;
  if (!qword_10077F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F7B0);
  }

  return result;
}

unint64_t sub_10032D57C()
{
  result = qword_10077F7B8;
  if (!qword_10077F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F7B8);
  }

  return result;
}

uint64_t sub_10032D5D0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077F7C0);
  v1 = sub_100003E30(v0, qword_10077F7C0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10032D698(uint64_t a1, void *a2)
{
  v3 = static TTRLocalizableStrings.Hashtags.deletingTagMessage(hashtags:)();
  v5 = v4;
  sub_10000C36C(a2, a2[3]);
  v6 = sub_1005DE1F4();
  sub_10048DE3C(v3, v5, v6);
}

uint64_t sub_10032D728(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10032D7C0, v3, v2);
}

uint64_t sub_10032D7C0()
{
  sub_10000C36C(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10032D85C;

  return sub_1005DE37C();
}

uint64_t sub_10032D85C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10001E8F0, v3, v2);
}

uint64_t sub_10032D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[6] = a2;
  v5 = type metadata accessor for TTRHashtagAssociationDeleteTagPreferences();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_10032DA74, v7, v6);
}

uint64_t sub_10032DA74()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = *(v0[6] + 40);
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(v1, v4, v3);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_10032DB6C;
  v8 = v0[11];
  v9 = v0[7];

  return dispatch thunk of TTRHashtagAssociationInteractorType.removeReminderAssociationWithHashtagLabels(_:preferences:)(v9, v8, ObjectType, v5);
}

uint64_t sub_10032DB6C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_10032DD6C;
  }

  else
  {
    v8 = sub_10032DD04;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10032DD04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032DD6C()
{
  v12 = v0;

  if (qword_1007671F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10077F7C0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRIHashtagAssociationPresenter: failed to start deleting tags {error: %s}", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10032DF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  v8 = type metadata accessor for Locale();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v9 = type metadata accessor for TTRHashtagAssociationAffectedObjectCounts();
  v7[18] = v9;
  v7[19] = *(v9 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[22] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[23] = v11;
  v7[24] = v10;

  return _swift_task_switch(sub_10032E0A4, v11, v10);
}

uint64_t sub_10032E0A4()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v17 = v0[14];
  v16 = v0[9];
  v15 = v0[8];
  static TTRLocalizableStrings.Hashtags.renameTagMenuItem.getter();
  TTRHashtagAssociationRenameTagConfirmationMessage.affectedObjectCounts.getter();
  TTRHashtagAssociationAffectedObjectCounts.reminders.getter();
  v5 = *(v3 + 8);
  v5(v1, v4);
  TTRHashtagAssociationRenameTagConfirmationMessage.affectedObjectCounts.getter();
  TTRHashtagAssociationAffectedObjectCounts.customSmartLists.getter();
  v5(v2, v4);
  static TTRLocalizableStrings.Hashtags.renameTagConfirmationMessage(hashtag:numberOfRemindersToBeUpdated:numberOfCustomSmartListsToBeUpdated:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v0[25] = v8;

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v15;
  v10[4] = v16;
  v0[6] = sub_1003338D4;
  v0[7] = v10;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1001762CC;
  v0[5] = &unk_100720C40;
  v11 = _Block_copy(v0 + 2);

  [v8 addTextFieldWithConfigurationHandler:v11];
  _Block_release(v11);
  sub_100058000(&qword_10076B260);
  sub_100058000(&unk_100775890);
  v12 = swift_allocObject();
  v0[26] = v12;
  *(v12 + 16) = xmmword_10062D3F0;
  static TTRLocalizableStrings.Common.alertOKButton.getter();
  *(v0 + 224) = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  *(v0 + 225) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  sub_10000C36C(v17, v17[3]);
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_10032E44C;

  return sub_100330184(v8, v12);
}

uint64_t sub_10032E44C(char a1)
{
  v2 = *v1;
  *(*v1 + 226) = a1;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return _swift_task_switch(sub_10032E598, v4, v3);
}

uint64_t sub_10032E598()
{
  v1 = *(v0 + 226);

  if (v1 == 2)
  {

LABEL_13:
    v14 = 0;
    v16 = 0;
    goto LABEL_17;
  }

  v2 = *(v0 + 200);
  if ((*(v0 + 226) & 1) == 0)
  {

    goto LABEL_13;
  }

  v3 = [v2 textFields];
  if (!v3)
  {
LABEL_16:

    v14 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_17;
  }

  v4 = v3;
  sub_100003540(0, &qword_100771E60);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_7:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

  v9 = [v8 text];

  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = *(v0 + 200);
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = *(v0 + 120);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static Locale.current.getter();
  v14 = String.safeNameForHashtag(locale:)();
  v16 = v15;

  (*(v12 + 8))(v11, v13);

LABEL_17:

  v17 = *(v0 + 8);

  return v17(v14, v16);
}

uint64_t sub_10032E7B8(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = String._bridgeToObjectiveC()();
      [a1 setText:v5];

      [a1 setClearButtonMode:3];
      [a1 addTarget:v4 action:"renameTagAlertTextFieldDidChange:" forControlEvents:0x20000];

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10032E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for TTRHashtagAssociationAffectedObjectCounts();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[13] = v9;
  v6[14] = v8;

  return _swift_task_switch(sub_10032E9B0, v9, v8);
}

uint64_t sub_10032E9B0()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v12 = *(v0 + 56);
  TTRHashtagAssociationRenameTagConfirmationMessage.affectedObjectCounts.getter();
  TTRHashtagAssociationAffectedObjectCounts.reminders.getter();
  v5 = *(v4 + 8);
  v5(v1, v3);
  TTRHashtagAssociationRenameTagConfirmationMessage.affectedObjectCounts.getter();
  TTRHashtagAssociationAffectedObjectCounts.customSmartLists.getter();
  v5(v2, v3);
  static TTRLocalizableStrings.Hashtags.tagAlreadyExistsMessage(from:to:numberOfRemindersToBeUpdated:numberOfCustomSmartListsToBeUpdated:)();
  static TTRLocalizableStrings.Hashtags.tagAlreadyExistsAlertTitle.getter();
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  *(v0 + 120) = v8;

  sub_100058000(&qword_10076B260);
  sub_100058000(&unk_100775890);
  v9 = swift_allocObject();
  *(v0 + 128) = v9;
  *(v9 + 16) = xmmword_10062D3F0;
  static TTRLocalizableStrings.Hashtags.tagAlreadyExistsAlertReplaceButton.getter();
  *(v0 + 144) = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Hashtags.tagAlreadyExistsAlertDiscardButton.getter();
  *(v0 + 145) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  sub_10000C36C(v12, v12[3]);
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_10032EC70;

  return sub_100330184(v8, v9);
}

uint64_t sub_10032EC70(char a1)
{
  v2 = *v1;
  *(*v1 + 146) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return _swift_task_switch(sub_10032EDBC, v4, v3);
}

uint64_t sub_10032EDBC()
{
  v1 = *(v0 + 146);

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

void sub_10032EE4C(void *a1)
{
  v2 = static TTRLocalizableStrings.Hashtags.renamingTagMessage.getter();
  v4 = v3;
  sub_10000C36C(a1, a1[3]);
  v5 = sub_1005DE1F4();
  sub_10048DE3C(v2, v4, v5);
}

uint64_t sub_10032EEDC(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10032EF74, v3, v2);
}

uint64_t sub_10032EF74()
{
  sub_10000C36C(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1002DDB08;

  return sub_1005DE37C();
}

uint64_t sub_10032F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[6] = a2;
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v8;
  v6[13] = v7;

  return _swift_task_switch(sub_10032F0B0, v8, v7);
}

uint64_t sub_10032F0B0()
{
  v1 = *(v0[6] + 40);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10032F170;
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  return dispatch thunk of TTRHashtagAssociationInteractorType.replaceReminderAssociationWithHashtagLabel(from:to:)(v7, v6, v4, v5, ObjectType, v1);
}

uint64_t sub_10032F170()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_10032F30C;
  }

  else
  {
    v5 = sub_10032F2AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10032F2AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032F30C()
{
  v12 = v0;

  if (qword_1007671F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10077F7C0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRIHashtagAssociationPresenter: failed to start renaming tag {error: %s}", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10032F4D4()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders31TTRIHashtagAssociationPresenter_currentOperation, &qword_10077F8B0);

  return swift_deallocClassInstance();
}

uint64_t sub_10032F568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = type metadata accessor for TTRHashtagAssociationOperation();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  sub_100058000(&unk_10076FCD0);
  v4[18] = swift_task_alloc();
  sub_100058000(&qword_10077F8B0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v7;
  v4[23] = v6;

  return _swift_task_switch(sub_10032F6DC, v7, v6);
}

uint64_t sub_10032F6DC()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = OBJC_IVAR____TtC9Reminders31TTRIHashtagAssociationPresenter_currentOperation;
  v0[24] = OBJC_IVAR____TtC9Reminders31TTRIHashtagAssociationPresenter_currentOperation;
  swift_beginAccess();
  sub_10000794C(v4 + v5, v1, &qword_10077F8B0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = v0[19];
    v7 = v0[18];
    v8 = v0[15];
    v9 = v0[16];
    v32 = v0[13];
    v33 = v0[17];
    v31 = v0[12];
    v10 = v0[11];
    sub_1000079B4(v0[20], &qword_10077F8B0);
    v11 = *(v9 + 16);
    v11(v6, v10, v8);
    v12 = *(v9 + 56);
    v0[25] = v12;
    v0[26] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 0, 1, v8);
    swift_beginAccess();
    sub_100330114(v6, v4 + v5);
    swift_endAccess();
    sub_10000794C(v31, v7, &unk_10076FCD0);
    type metadata accessor for TTRIHashtagAssociationRouter();
    swift_allocObject();
    v13 = sub_1005DE0F4(v32, v7);
    v0[27] = v13;
    v11(v33, v10, v8);
    v14 = (*(v9 + 88))(v33, v8);
    if (v14 == enum case for TTRHashtagAssociationOperation.deleteHashtagLabels(_:))
    {
      v15 = v0[17];
      (*(v0[16] + 96))(v15, v0[15]);
      v16 = *v15;
      v0[28] = v16;

      v17 = swift_task_alloc();
      v0[29] = v17;
      *v17 = v0;
      v17[1] = sub_10032FBA8;
      v18 = v0[14];

      return sub_100330764(v16, v13, v18);
    }

    else if (v14 == enum case for TTRHashtagAssociationOperation.renameHashtagLabel(_:))
    {
      v26 = v0[17];
      (*(v0[16] + 96))(v26, v0[15]);
      v28 = *v26;
      v27 = v26[1];
      v0[30] = v27;

      v29 = swift_task_alloc();
      v0[31] = v29;
      *v29 = v0;
      v29[1] = sub_10032FDF8;
      v30 = v0[14];

      return sub_100332510(v28, v27, v13, v30);
    }

    else
    {

      return _diagnoseUnexpectedEnumCase<A>(type:)();
    }
  }

  else
  {
    v20 = v0[20];

    sub_1000079B4(v20, &qword_10077F8B0);
    if (qword_1007671F8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_10077F7C0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "TTRIHashtagAssociationPresenter: start() called while busy", v24, 2u);
    }

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10032FBA8()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_10032FD08, v3, v2);
}

uint64_t sub_10032FD08()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[19];
  v5 = v0[14];
  v4 = v0[15];

  v1(v3, 1, 1, v4);
  swift_beginAccess();
  sub_100330114(v3, v5 + v2);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10032FDF8()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_1003338E0, v3, v2);
}

BOOL sub_10032FF58()
{
  v1 = sub_100058000(&qword_10077F8B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRIHashtagAssociationPresenter_currentOperation;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &qword_10077F8B0);
  v5 = type metadata accessor for TTRHashtagAssociationOperation();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000079B4(v3, &qword_10077F8B0);
  return v6;
}

uint64_t sub_100330068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001AA3C;

  return sub_10032F568(a1, a2, a3);
}

uint64_t sub_100330114(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10077F8B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100330184(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100058000(&unk_10076FCD0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for TTRIPopoverAnchor();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v6;
  v3[11] = v5;

  return _swift_task_switch(sub_1003302B4, v6, v5);
}

uint64_t sub_1003302B4()
{
  v1 = sub_1005DE1F4();
  *(v0 + 96) = v1;
  if (v1)
  {
    if (![*(v0 + 16) preferredStyle])
    {
      v2 = *(v0 + 48);
      v3 = *(v0 + 56);
      v4 = *(v0 + 40);
      sub_10000794C(*(v0 + 32) + OBJC_IVAR____TtC9Reminders28TTRIHashtagAssociationRouter_popoverAnchor, v4, &unk_10076FCD0);
      if ((*(v3 + 48))(v4, 1, v2) == 1)
      {
        sub_1000079B4(*(v0 + 40), &unk_10076FCD0);
        v5 = [objc_opt_self() currentDevice];
        v6 = [v5 userInterfaceIdiom];

        if (v6 == 1)
        {
          [*(v0 + 16) setPreferredStyle:1];
        }
      }

      else
      {
        v14 = *(v0 + 56);
        v13 = *(v0 + 64);
        v15 = *(v0 + 48);
        (*(v14 + 32))(v13, *(v0 + 40), v15);
        UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
        (*(v14 + 8))(v13, v15);
      }
    }

    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    *v16 = v0;
    v16[1] = sub_1003305B4;
    v17 = *(v0 + 16);
    v18 = *(v0 + 24);

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 112, v17, v18, 0, 0, 1, &type metadata for Bool);
  }

  else
  {

    if (qword_1007674E0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_100791440);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "TTRIHashtagAssociationRouter: failed to present alert; missing a presentingViewController", v10, 2u);
    }

    v11 = *(v0 + 8);

    return v11(2);
  }
}

uint64_t sub_1003305B4()
{
  v1 = *v0;

  *(v1 + 113) = *(v1 + 112);
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1003306E0, v3, v2);
}

uint64_t sub_1003306E0()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 113);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100330764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a1;
  v3[26] = a3;
  v5 = type metadata accessor for TTRHashtagAssociationDeleteTagPreferences.DeletableCustomSmartListIntent();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  sub_100058000(&qword_10077F8B8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v6 = type metadata accessor for TTRHashtagAssociationDeleteTagPreferences();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  v7 = type metadata accessor for TTRHashtagAssociationAffectedObjectCounts();
  v3[35] = v7;
  v3[36] = *(v7 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v8 = type metadata accessor for TTRHashtagAssociationDeleteTagConfirmationMessage();
  v3[39] = v8;
  v3[40] = *(v8 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[5] = type metadata accessor for TTRIHashtagAssociationRouter();
  v3[6] = &off_100732898;
  v3[2] = a2;
  type metadata accessor for MainActor();

  v3[43] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[44] = v10;
  v3[45] = v9;

  return _swift_task_switch(sub_1003309EC, v10, v9);
}

uint64_t sub_1003309EC()
{
  v1 = *(v0[26] + 40);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_100330AAC;
  v4 = v0[41];
  v5 = v0[25];

  return dispatch thunk of TTRHashtagAssociationInteractorType.confirmationMessage(forRemovingHashtagLabels:)(v4, v5, ObjectType, v1);
}

uint64_t sub_100330AAC()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_10033176C;
  }

  else
  {
    v5 = sub_100330BE8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100330BE8()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  (*(*(v0 + 320) + 32))(*(v0 + 336), *(v0 + 328), *(v0 + 312));
  static TTRLocalizableStrings.Hashtags.deleteTagMenuItem(tagCount:)();
  TTRHashtagAssociationDeleteTagConfirmationMessage.affectedObjectCounts.getter();
  TTRHashtagAssociationAffectedObjectCounts.reminders.getter();
  v5 = *(v4 + 8);
  v5(v1, v3);
  TTRHashtagAssociationDeleteTagConfirmationMessage.affectedObjectCounts.getter();
  TTRHashtagAssociationAffectedObjectCounts.customSmartLists.getter();
  v5(v2, v3);
  static TTRLocalizableStrings.Hashtags.deleteTagConfirmationMessage(hashtags:numberOfRemindersToBeUpdated:numberOfCustomSmartListsToBeUpdated:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = objc_opt_self();
  *(v0 + 384) = v8;
  v9 = [v8 alertControllerWithTitle:v6 message:v7 preferredStyle:0];
  *(v0 + 392) = v9;

  *(v0 + 400) = sub_100058000(&qword_10076B260);
  v10 = *(sub_100058000(&unk_100775890) - 8);
  *(v0 + 408) = *(v10 + 72);
  *(v0 + 480) = *(v10 + 80);
  v11 = swift_allocObject();
  *(v0 + 416) = v11;
  *(v11 + 16) = xmmword_10062D3F0;
  static TTRLocalizableStrings.Common.alertDeleteButton.getter();
  *(v0 + 484) = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  *(v0 + 485) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  sub_10000C36C((v0 + 16), *(v0 + 40));
  v12 = swift_task_alloc();
  *(v0 + 424) = v12;
  *v12 = v0;
  v12[1] = sub_100330ED0;

  return sub_100330184(v9, v11);
}

uint64_t sub_100330ED0(char a1)
{
  v2 = *v1;
  *(*v1 + 488) = a1;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);

  return _swift_task_switch(sub_10033101C, v4, v3);
}

uint64_t sub_10033101C()
{
  v1 = *(v0 + 488);

  if (v1 != 2 && (*(v0 + 488) & 1) != 0)
  {
    sub_100333198(_swiftEmptyArrayStorage);
    TTRHashtagAssociationDeleteTagPreferences.init(intentBySmartListID:)();
    v2 = TTRHashtagAssociationDeleteTagConfirmationMessage.deletableCustomSmartLists.getter();
    if (v2 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();

      if (v22)
      {
LABEL_5:
        if (TTRHashtagAssociationDeleteTagConfirmationMessage.deletableCustomSmartLists.getter() >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        static TTRLocalizableStrings.Hashtags.deleteSmartListAlertTitle(smartListCount:)();
        v4 = TTRHashtagAssociationDeleteTagConfirmationMessage.deletableCustomSmartLists.getter();
        if (v4 >> 62)
        {
          v29 = v4;
          v5 = _CocoaArrayWrapper.endIndex.getter();
          v4 = v29;
          if (v5)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v5)
          {
LABEL_9:
            v6 = v4;
            sub_1004A1CD0(0, v5 & ~(v5 >> 63), 0);
            if ((v5 & 0x8000000000000000) == 0)
            {
              v7 = 0;
              v8 = v6;
              v36 = v6 & 0xC000000000000001;
              v9 = v6;
              v10 = v5;
              do
              {
                if (v36)
                {
                  v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v11 = *(v8 + 8 * v7 + 32);
                }

                v12 = v11;
                v13 = [v11 name];
                v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v16 = v15;

                v18 = _swiftEmptyArrayStorage[2];
                v17 = _swiftEmptyArrayStorage[3];
                if (v18 >= v17 >> 1)
                {
                  sub_1004A1CD0((v17 > 1), v18 + 1, 1);
                }

                ++v7;
                _swiftEmptyArrayStorage[2] = v18 + 1;
                v19 = &_swiftEmptyArrayStorage[2 * v18];
                v19[4] = v14;
                v19[5] = v16;
                v8 = v9;
              }

              while (v10 != v7);
              goto LABEL_27;
            }

            __break(1u);
            goto LABEL_33;
          }
        }

LABEL_27:

        static TTRLocalizableStrings.Hashtags.deleteSmartListAlertMessage(hashtagCount:smartListNames:)();

        if (TTRHashtagAssociationDeleteTagConfirmationMessage.deletableCustomSmartLists.getter() >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        v30 = *(v0 + 384);

        static TTRLocalizableStrings.Hashtags.deleteSmartListAlertDeleteButton(hashtagCount:smartListCount:)();
        v31 = String._bridgeToObjectiveC()();

        v32 = String._bridgeToObjectiveC()();

        v33 = [v30 alertControllerWithTitle:v31 message:v32 preferredStyle:1];
        *(v0 + 456) = v33;

        v34 = swift_allocObject();
        *(v0 + 464) = v34;
        *(v34 + 16) = xmmword_10062D3F0;
        *(v0 + 486) = 1;
        TTRIValueBasedAlertAction.init(title:style:value:)();
        static TTRLocalizableStrings.Common.alertCancelButton.getter();
        *(v0 + 487) = 0;
        TTRIValueBasedAlertAction.init(title:style:value:)();
        sub_10000C36C((v0 + 16), *(v0 + 40));
        v35 = swift_task_alloc();
        *(v0 + 472) = v35;
        *v35 = v0;
        v35[1] = sub_100331BF8;

        return sub_100330184(v33, v34);
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v3)
      {
        goto LABEL_5;
      }
    }

    if (qword_1007671F8 == -1)
    {
LABEL_23:
      v23 = *(v0 + 272);
      v24 = type metadata accessor for Logger();
      v37 = *(v0 + 200);
      sub_100003E30(v24, qword_10077F7C0);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_10000FD44();

      type metadata accessor for TTRHashtagAssociationPresenterCapability();
      static TTRHashtagAssociationPresenterCapability.longOperationDurationThreshold.getter();
      sub_10000B0D8(v0 + 16, v0 + 56);
      v25 = swift_allocObject();
      *(v25 + 16) = v37.i64[0];
      sub_100005FD0((v0 + 56), v25 + 24);
      sub_10000B0D8(v0 + 16, v0 + 96);
      v26 = swift_allocObject();
      sub_100005FD0((v0 + 96), v26 + 16);
      type metadata accessor for TTRPotentiallyLongOperationPerformer();
      swift_allocObject();

      *(v0 + 432) = TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)();
      v27 = swift_task_alloc();
      *(v0 + 440) = v27;
      v27[1] = vextq_s8(v37, v37, 8uLL);
      v27[2].i64[0] = v23;
      v28 = swift_task_alloc();
      *(v0 + 448) = v28;
      *v28 = v0;
      v28[1] = sub_100331998;

      return TTRPotentiallyLongOperationPerformer.perform<A>(_:)(v28, &unk_10063B6B8, v27, &type metadata for () + 8);
    }

LABEL_33:
    swift_once();
    goto LABEL_23;
  }

  (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));

  sub_100004758(v0 + 16);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10033176C()
{
  v12 = v0;

  if (qword_1007671F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10077F7C0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRIHashtagAssociationPresenter: failed to fetch confirmation message {error: %s}", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  sub_100004758(v0 + 16);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100331998()
{
  v1 = *v0;

  v2 = *(v1 + 360);
  v3 = *(v1 + 352);

  return _swift_task_switch(sub_100331ADC, v3, v2);
}

uint64_t sub_100331ADC()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  sub_100004758((v0 + 2));

  v7 = v0[1];

  return v7();
}

uint64_t sub_100331BF8(char a1)
{
  v2 = *v1;
  *(*v1 + 489) = a1;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);

  return _swift_task_switch(sub_100331D44, v4, v3);
}

uint64_t sub_100331D44()
{
  v1 = *(v0 + 489);
  if (v1 != 2 && (v1 & 1) != 0)
  {
    v2 = TTRHashtagAssociationDeleteTagConfirmationMessage.deletableCustomSmartLists.getter();
    v3 = v2;
    if (v2 >> 62)
    {
LABEL_41:
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_5:
        v5 = 0;
        v6 = *(v0 + 224);
        v58 = v3 & 0xC000000000000001;
        v50 = v3 & 0xFFFFFFFFFFFFFF8;
        v57 = (v6 + 104);
        v56 = enum case for TTRHashtagAssociationDeleteTagPreferences.DeletableCustomSmartListIntent.delete(_:);
        v59 = (v6 + 56);
        v54 = (v6 + 32);
        v55 = (v6 + 48);
        v51 = v6;
        v52 = v3;
        v53 = v4;
        do
        {
          if (v58)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v10 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_37;
            }
          }

          else
          {
            if (v5 >= *(v50 + 16))
            {
              goto LABEL_39;
            }

            v9 = *(v3 + 8 * v5 + 32);
            v10 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }
          }

          v11 = *(v0 + 248);
          v12 = *(v0 + 216);
          v61 = v9;
          v13 = [v9 objectID];
          (*v57)(v11, v56, v12);
          v14 = *v59;
          (*v59)(v11, 0, 1, v12);
          v60 = TTRHashtagAssociationDeleteTagPreferences.intentBySmartListID.modify();
          v16 = v15;
          if ((*v55)(v11, 1, v12) == 1)
          {
            sub_1000079B4(*(v0 + 248), &qword_10077F8B8);
            v17 = sub_1002613B0(v13);
            if (v18)
            {
              v19 = v17;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v63 = *v16;
              *v16 = 0x8000000000000000;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1003B0278();
              }

              v21 = *(v0 + 240);
              v22 = *(v0 + 216);

              (*(v51 + 32))(v21, *(v63 + 56) + *(v51 + 72) * v19, v22);
              sub_1003ADBEC(v19, v63);

              *v16 = v63;

              v7 = 0;
              v3 = v52;
            }

            else
            {

              v7 = 1;
            }

            v8 = *(v0 + 240);
            v14(v8, v7, 1, *(v0 + 216));
            sub_1000079B4(v8, &qword_10077F8B8);
          }

          else
          {
            v23 = *v54;
            (*v54)(*(v0 + 232), *(v0 + 248), *(v0 + 216));
            v3 = swift_isUniquelyReferenced_nonNull_native();
            v24 = *v16;
            v64 = *v16;
            *v16 = 0x8000000000000000;
            v26 = sub_1002613B0(v13);
            v27 = *(v24 + 16);
            v28 = (v25 & 1) == 0;
            v29 = v27 + v28;
            if (__OFADD__(v27, v28))
            {
              goto LABEL_38;
            }

            v30 = v25;
            if (*(v24 + 24) >= v29)
            {
              if ((v3 & 1) == 0)
              {
                sub_1003B0278();
              }
            }

            else
            {
              sub_10054D4CC(v29, v3);
              v31 = sub_1002613B0(v13);
              if ((v30 & 1) != (v32 & 1))
              {
                sub_100003540(0, &qword_10076BA50);

                return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              }

              v26 = v31;
            }

            v33 = *(v0 + 232);
            v34 = *(v0 + 216);
            v3 = v52;
            if (v30)
            {
              (*(v51 + 40))(v64[7] + *(v51 + 72) * v26, v33, v34);
            }

            else
            {
              v64[(v26 >> 6) + 8] |= 1 << v26;
              *(v64[6] + 8 * v26) = v13;
              v23(v64[7] + *(v51 + 72) * v26, v33, v34);
              v35 = v64[2];
              v36 = __OFADD__(v35, 1);
              v37 = v35 + 1;
              if (v36)
              {
                goto LABEL_40;
              }

              v64[2] = v37;
            }

            *v16 = v64;
          }

          v60(v0 + 136, 0);

          ++v5;
        }

        while (v10 != v53);
      }
    }

    if (qword_1007671F8 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 272);
    v45 = type metadata accessor for Logger();
    v62 = *(v0 + 200);
    sub_100003E30(v45, qword_10077F7C0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    type metadata accessor for TTRHashtagAssociationPresenterCapability();
    static TTRHashtagAssociationPresenterCapability.longOperationDurationThreshold.getter();
    sub_10000B0D8(v0 + 16, v0 + 56);
    v46 = swift_allocObject();
    *(v46 + 16) = v62.i64[0];
    sub_100005FD0((v0 + 56), v46 + 24);
    sub_10000B0D8(v0 + 16, v0 + 96);
    v47 = swift_allocObject();
    sub_100005FD0((v0 + 96), v47 + 16);
    type metadata accessor for TTRPotentiallyLongOperationPerformer();
    swift_allocObject();

    *(v0 + 432) = TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)();
    v48 = swift_task_alloc();
    *(v0 + 440) = v48;
    v48[1] = vextq_s8(v62, v62, 8uLL);
    v48[2].i64[0] = v44;
    v49 = swift_task_alloc();
    *(v0 + 448) = v49;
    *v49 = v0;
    v49[1] = sub_100331998;

    return TTRPotentiallyLongOperationPerformer.perform<A>(_:)(v49, &unk_10063B6B8, v48, &type metadata for () + 8);
  }

  v38 = *(v0 + 456);
  v40 = *(v0 + 264);
  v39 = *(v0 + 272);
  v41 = *(v0 + 256);
  (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));

  (*(v40 + 8))(v39, v41);
  sub_100004758(v0 + 16);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_100332510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a2;
  v4[23] = a4;
  v4[21] = a1;
  v6 = type metadata accessor for TTRHashtagAssociationRenameTagConfirmationMessage();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[5] = type metadata accessor for TTRIHashtagAssociationRouter();
  v4[6] = &off_100732898;
  v4[2] = a3;
  type metadata accessor for MainActor();

  v4[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[29] = v8;
  v4[30] = v7;

  return _swift_task_switch(sub_100332638, v8, v7);
}

uint64_t sub_100332638()
{
  v1 = *(v0[23] + 40);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_1003326F8;
  v4 = v0[26];
  v5 = v0[21];
  v6 = v0[22];

  return dispatch thunk of TTRHashtagAssociationInteractorType.confirmationMessage(forRenamingHashtagLabel:)(v4, v5, v6, ObjectType, v1);
}

uint64_t sub_1003326F8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_100332DA8;
  }

  else
  {
    v5 = sub_100332834;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100332834()
{
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  (*(v0[25] + 32))(v1, v0[26], v0[24]);
  v5 = swift_task_alloc();
  v0[33] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v1;
  v5[5] = v2;
  v5[6] = v0 + 2;
  v6 = swift_task_alloc();
  v0[34] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v1;
  v6[5] = v0 + 2;
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_100332974;
  v9 = v0[21];
  v8 = v0[22];

  return TTRHashtagAssociationPresenterCapability.obtainNewHashtagNameFromUser(srcLabel:showInputUI:showMergeUI:)(v9, v8, &unk_10063B6D8, v5, &unk_10063B6E8, v6);
}

uint64_t sub_100332974(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 288) = a1;
  *(v4 + 296) = a2;

  v5 = *(v3 + 240);
  v6 = *(v3 + 232);

  return _swift_task_switch(sub_100332ADC, v6, v5);
}

uint64_t sub_100332ADC()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    if (qword_1007671F8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 288);
    v3 = *(v0 + 184);
    v14 = *(v0 + 168);
    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_10077F7C0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    type metadata accessor for TTRHashtagAssociationPresenterCapability();
    static TTRHashtagAssociationPresenterCapability.longOperationDurationThreshold.getter();
    sub_10000B0D8(v0 + 16, v0 + 56);
    v5 = swift_allocObject();
    sub_100005FD0((v0 + 56), v5 + 16);
    sub_10000B0D8(v0 + 16, v0 + 96);
    v6 = swift_allocObject();
    sub_100005FD0((v0 + 96), v6 + 16);
    type metadata accessor for TTRPotentiallyLongOperationPerformer();
    swift_allocObject();
    *(v0 + 304) = TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)();
    v7 = swift_task_alloc();
    *(v0 + 312) = v7;
    *(v7 + 16) = v3;
    *(v7 + 24) = v14;
    *(v7 + 40) = v2;
    *(v7 + 48) = v1;
    v8 = swift_task_alloc();
    *(v0 + 320) = v8;
    *v8 = v0;
    v8[1] = sub_100332F8C;

    return TTRPotentiallyLongOperationPerformer.perform<A>(_:)(v8, &unk_10063B708, v7, &type metadata for () + 8);
  }

  else
  {
    v9 = *(v0 + 216);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);

    (*(v11 + 8))(v9, v10);
    sub_100004758(v0 + 16);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100332DA8()
{
  v12 = v0;

  if (qword_1007671F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10077F7C0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRIHashtagAssociationPresenter: failed to fetch confirmation message {error: %s}", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  sub_100004758(v0 + 16);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100332F8C()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1003330EC, v3, v2);
}

uint64_t sub_1003330EC()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];

  (*(v3 + 8))(v1, v2);
  sub_100004758((v0 + 2));

  v4 = v0[1];

  return v4();
}

unint64_t sub_100333198(uint64_t a1)
{
  v2 = sub_100058000(&qword_10077F8C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_10077F8C8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_10077F8C0);
      v11 = *v5;
      result = sub_1002613B0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for TTRHashtagAssociationDeleteTagPreferences.DeletableCustomSmartListIntent();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_10033338C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001AA38;

  return sub_10032D728(v0 + 16);
}

uint64_t sub_100333420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_10032D97C(a1, v4, v5, v6);
}

uint64_t sub_1003334D4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1003335A8;

  return sub_10032DF3C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1003335A8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1003336AC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1001E4BC8;

  return sub_10032E8A8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100333778()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001AA3C;

  return sub_10032EEDC(v0 + 16);
}

uint64_t sub_10033380C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_10032F010(a1, v4, v5, v6, v7, v8);
}

id sub_1003338E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = a3[3];
  if (v7)
  {
    v8 = sub_10000C36C(a3, a3[3]);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    sub_100004758(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v6 target:v12 selector:a4];

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_100333A5C(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v8, v2 + v11, v4);
  sub_100337B00(&qword_10077F958, &type metadata accessor for TTRCloudKitMigrationManager.MigrationState);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  if ((v11 & 1) == 0)
  {
    sub_100336E24();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

uint64_t sub_100333C6C(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_networkActivityState;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v8, v2 + v11, v4);
  sub_100337B00(&qword_10077F950, &type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  if ((v11 & 1) == 0)
  {
    sub_100333E7C();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void sub_100333E7C()
{
  v1 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v21[-v10];
  v12 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_networkActivityState;
  swift_beginAccess();
  (*(v6 + 16))(v11, v0 + v12, v5);
  (*(v6 + 104))(v9, enum case for TTRCloudKitNetworkActivityMonitor.Activity.some(_:), v5);
  v13 = static TTRCloudKitNetworkActivityMonitor.Activity.== infix(_:_:)();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  v15 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v15, v1);
  v16 = (*(v2 + 88))(v4, v1);
  if (v16 != enum case for TTRCloudKitMigrationManager.MigrationState.notStarted(_:) && v16 != enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:))
  {
    if (v16 == enum case for TTRCloudKitMigrationManager.MigrationState.inProgress(_:))
    {
      goto LABEL_9;
    }

    if (v16 != enum case for TTRCloudKitMigrationManager.MigrationState.error(_:) && v16 != enum case for TTRCloudKitMigrationManager.MigrationState.finished(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_14;
    }
  }

  if ((v13 & 1) == 0)
  {
    [*(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner) stopAnimating];
    return;
  }

LABEL_9:
  v18 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner);
  if (!v18)
  {
LABEL_14:
    v19 = sub_100334194(v0);
    v18 = 0;
    goto LABEL_15;
  }

  v19 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner);
LABEL_15:
  v20 = v18;
  [v19 startAnimating];
}

id sub_100334194(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v2 setHidesWhenStopped:1];
  [v2 frame];
  v4 = v3;
  LODWORD(v3) = 1148846080;
  [v2 setLayoutSize:v4 withContentPriority:{v5, v3}];
  [*(a1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView) addArrangedSubview:v2];
  v6 = *(a1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner);
  *(a1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner) = v2;
  v7 = v2;

  return v7;
}

uint64_t sub_100334258(uint64_t a1)
{
  v69 = type metadata accessor for TTRITreeViewExpandedState();
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v59 - v5;
  v66 = sub_100058000(&unk_100771B50);
  __chkstk_darwin(v66);
  v68 = &v59 - v6;
  v7 = sub_100058000(&qword_10076B9C0);
  __chkstk_darwin(v7 - 8);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v59 - v10;
  __chkstk_darwin(v11);
  v70 = &v59 - v12;
  v13 = type metadata accessor for TTRITreeViewCellModel();
  v73 = *(v13 - 8);
  __chkstk_darwin(v13);
  v72 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_1007884E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v59 - v19;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  __chkstk_darwin(v24);
  v26 = &v59 - v25;
  v27 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewModel;
  swift_beginAccess();
  sub_10000794C(v1 + v27, v26, &unk_1007884E0);
  sub_10000794C(a1, v23, &unk_1007884E0);
  swift_beginAccess();
  v63 = v1;
  sub_100337758(v23, v1 + v27);
  swift_endAccess();
  v28 = v73;
  sub_10000794C(a1, v20, &unk_1007884E0);
  v29 = *(v28 + 48);
  if (v29(v20, 1, v13) != 1)
  {
    (*(v28 + 32))(v72, v20, v13);
    v60 = v26;
    sub_10000794C(v26, v17, &unk_1007884E0);
    v31 = v29(v17, 1, v13);
    v61 = v13;
    if (v31 == 1)
    {
      sub_1000079B4(v17, &unk_1007884E0);
      v32 = 1;
      v33 = v69;
      v34 = v70;
    }

    else
    {
      v34 = v70;
      TTRITreeViewCellModel.expandedState.getter();
      (*(v28 + 8))(v17, v13);
      v32 = 0;
      v33 = v69;
    }

    v35 = v71;
    v36 = *(v71 + 56);
    v36(v34, v32, 1, v33);
    v37 = v67;
    TTRITreeViewCellModel.expandedState.getter();
    v36(v37, 0, 1, v33);
    v38 = *(v66 + 48);
    v39 = v68;
    sub_10000794C(v34, v68, &qword_10076B9C0);
    sub_10000794C(v37, v39 + v38, &qword_10076B9C0);
    v40 = *(v35 + 48);
    if (v40(v39, 1, v33) == 1)
    {
      sub_1000079B4(v37, &qword_10076B9C0);
      sub_1000079B4(v34, &qword_10076B9C0);
      v41 = v40(v39 + v38, 1, v33);
      v42 = v61;
      if (v41 == 1)
      {
        sub_1000079B4(v39, &qword_10076B9C0);
        v43 = v72;
LABEL_16:
        v52 = v73;
LABEL_17:
        (*(v52 + 8))(v43, v42);
        v30 = v60;
        return sub_1000079B4(v30, &unk_1007884E0);
      }
    }

    else
    {
      v44 = v62;
      sub_10000794C(v39, v62, &qword_10076B9C0);
      if (v40(v39 + v38, 1, v33) != 1)
      {
        v53 = v37;
        v54 = v44;
        v55 = v71;
        v45 = v65;
        (*(v71 + 32))(v65, v39 + v38, v33);
        sub_100337B00(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        v57 = *(v55 + 8);
        v57(v45, v33);
        sub_1000079B4(v53, &qword_10076B9C0);
        sub_1000079B4(v70, &qword_10076B9C0);
        v57(v54, v33);
        sub_1000079B4(v39, &qword_10076B9C0);
        v42 = v61;
        v43 = v72;
        if (v56)
        {
          goto LABEL_16;
        }

LABEL_12:
        v46 = *(v63 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView);
        TTRITreeViewCellModel.expandedState.getter();
        v47 = v71;
        v48 = v64;
        (*(v71 + 104))(v64, enum case for TTRITreeViewExpandedState.expanded(_:), v33);
        v49 = static TTRITreeViewExpandedState.== infix(_:_:)();
        v50 = *(v47 + 8);
        v50(v48, v33);
        v50(v45, v33);
        v51 = *(v46 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_isExpanded);
        *(v46 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_isExpanded) = v49 & 1;
        if ((v49 & 1) != v51)
        {
          sub_1004B2404();
        }

        v43 = v72;
        v52 = v73;
        goto LABEL_17;
      }

      sub_1000079B4(v37, &qword_10076B9C0);
      sub_1000079B4(v34, &qword_10076B9C0);
      (*(v71 + 8))(v44, v33);
      v42 = v61;
    }

    sub_1000079B4(v39, &unk_100771B50);
    v45 = v65;
    goto LABEL_12;
  }

  sub_1000079B4(v26, &unk_1007884E0);
  v30 = v20;
  return sub_1000079B4(v30, &unk_1007884E0);
}

char *sub_100334A98(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = &v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_identifier];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  v6 = enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:);
  v7 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  (*(*(v7 - 8) + 104))(&v2[v5], v6, v7);
  v8 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_networkActivityState;
  v9 = enum case for TTRCloudKitNetworkActivityMonitor.Activity.none(_:);
  v10 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  (*(*(v10 - 8) + 104))(&v2[v8], v9, v10);
  v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl] = 1;
  v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount] = 0;
  v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_upgradeHintCardShowingForAccount] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID] = 0;
  v11 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewModel;
  v12 = type metadata accessor for TTRITreeViewCellModel();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_outerStackView;
  *&v2[v13] = [objc_allocWithZone(NUIContainerStackView) init];
  v14 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView;
  *&v2[v14] = [objc_allocWithZone(NUIContainerStackView) init];
  v15 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView;
  *&v2[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton;
  *&v2[v16] = sub_100166DE0(0);
  *&v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner] = 0;
  v17 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView;
  type metadata accessor for TTRIAccountsListsCellAccessoryView();
  *&v2[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_collapseGestureRecognizers] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted] = 0;
  v18 = objc_allocWithZone(NSUserDefaults);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 initWithSuiteName:v19];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 BOOLForKey:v21];
  }

  else
  {
    v22 = 0;
  }

  v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isStoreDemoMode] = v22;
  if (a2)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v85.receiver = v2;
  v85.super_class = type metadata accessor for TTRIAccountsListsSectionHeaderView();
  v24 = objc_msgSendSuper2(&v85, "initWithReuseIdentifier:", v23);

  v25 = v24;
  [v25 setUserInteractionEnabled:1];
  v26 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_outerStackView;
  v27 = *&v25[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_outerStackView];
  sub_100058000(&qword_10076B780);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10062D410;
  v29 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView;
  v30 = *&v25[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView];
  *(v28 + 32) = v30;
  v83 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView;
  v31 = *&v25[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView];
  *(v28 + 40) = v31;
  sub_100003540(0, &qword_10076B020);
  v32 = v27;
  v33 = v30;
  v34 = v31;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 setArrangedSubviews:isa];

  [*&v25[v26] setUserInteractionEnabled:1];
  v36 = *&v25[v26];
  [v25 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  [v36 setFrame:{v38, v40, v42, v44}];
  [*&v25[v26] setAutoresizingMask:18];
  [*&v25[v26] setPreservesSuperviewLayoutMargins:0];
  [*&v25[v26] setLayoutMarginsRelativeArrangement:1];
  [*&v25[v26] setDebugBoundingBoxesEnabled:0];
  [*&v25[v26] setDirectionalLayoutMargins:{12.0, 12.0, 8.0, 16.0}];
  v45 = v25;
  v46 = [v45 contentView];
  [v46 addSubview:*&v25[v26]];

  v47 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v45 action:"toggleExpandState"];
  v48 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v45 action:"handleLongPressGesture:"];
  [v48 setMinimumPressDuration:0.2];
  v49 = v47;
  [v45 addGestureRecognizer:v49];
  v50 = v48;
  [v45 addGestureRecognizer:v50];
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10062D410;
  v81 = v50;
  v82 = v49;
  *(v51 + 32) = v49;
  *(v51 + 40) = v50;
  *&v45[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_collapseGestureRecognizers] = v51;

  v52 = *&v25[v29];
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_10062D410;
  v54 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView;
  v55 = *&v45[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView];
  *(v53 + 32) = v55;
  v56 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton;
  v57 = *&v45[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton];
  *(v53 + 40) = v57;
  v58 = v52;
  v59 = v55;
  v60 = v57;
  v61 = Array._bridgeToObjectiveC()().super.isa;

  [v58 setArrangedSubviews:v61];

  [*&v25[v29] setUserInteractionEnabled:1];
  [*&v25[v29] setDebugBoundingBoxesEnabled:0];
  v62 = *&v45[v54];
  v63 = objc_opt_self();
  v64 = v62;
  v65 = [v63 labelColor];
  [v64 setTextColor:v65];

  v66 = *&v45[v54];
  sub_100003540(0, &qword_100771DF0);
  v67 = v66;
  v68 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v67 setFont:v68];

  LODWORD(v69) = 1144750080;
  [*&v45[v54] setLayoutSize:NUIContainerViewSizeUnbounded[0] withContentPriority:{NUIContainerViewSizeUnbounded[1], v69}];
  [*&v45[v54] setAdjustsFontForContentSizeCategory:1];
  v70 = NUIContainerViewSizeUseDefault[0];
  v71 = NUIContainerViewSizeUseDefault[1];
  LODWORD(v72) = 1148846080;
  [*&v25[v83] setLayoutSize:NUIContainerViewSizeUseDefault[0] withContentPriority:{v71, v72}];
  result = *(*&v25[v83] + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView);
  if (result)
  {
    [result setMinimumLayoutSize:{22.0, 32.0}];
    v74 = *&v25[v83];
    v75 = [v63 tintColor];
    sub_1004B32C8(v75);

    v76 = *&v45[v56];
    type metadata accessor for UILayoutPriority(0);
    sub_100337B00(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
    v77 = v76;
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v78) = v84;
    [v77 setLayoutSize:v70 withContentPriority:{v71, v78}];

    [*&v45[v56] addTarget:v45 action:"migrateButtonAction:" forControlEvents:0x2000];
    [*&v45[v56] setHidden:1];
    sub_100058000(&unk_10076BD70);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_10062D400;
    *(v79 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v79 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    (*((swift_isaMask & *v45) + 0x250))(v80);
    [*&v25[v83] setIsAccessibilityElement:1];

    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100335620(void *a1)
{
  v3 = [a1 state];
  if ((v3 - 4) < 2)
  {
    v8 = v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted];
    v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted] = 0;
    if (v8 != 1)
    {
      return;
    }

    v5 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    __asm { FMOV            V0.2D, #1.0 }

    *(v9 + 24) = _Q0;
    v35 = sub_1003376EC;
    v36 = v9;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v7 = &unk_100720C90;
    goto LABEL_13;
  }

  if (v3 == 3)
  {
    [v1 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [a1 locationInView:v1];
    v37.x = v23;
    v37.y = v24;
    v38.origin.x = v16;
    v38.origin.y = v18;
    v38.size.width = v20;
    v38.size.height = v22;
    if (CGRectContainsPoint(v38, v37))
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v34 = type metadata accessor for TTRIAccountsListsSectionHeaderView();
        v35 = sub_100337B00(&qword_10077F948, type metadata accessor for TTRIAccountsListsSectionHeaderView);
        aBlock = v1;
        v25 = v1;
        dispatch thunk of TTRITreeViewCellDelegate.treeCellViewToggleExpandState(_:)();
        swift_unknownObjectRelease();
        sub_100004758(&aBlock);
      }
    }

    v26 = v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted];
    v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted] = 0;
    if (v26 == 1)
    {
      v5 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 16) = v1;
      __asm { FMOV            V0.2D, #1.0 }

      *(v27 + 24) = _Q0;
      v35 = sub_100337B50;
      v36 = v27;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v7 = &unk_100720CE0;
      goto LABEL_13;
    }
  }

  else if (v3 == 1)
  {
    v4 = v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted];
    v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted] = 1;
    if ((v4 & 1) == 0)
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      *(v6 + 24) = xmmword_10063B710;
      v35 = sub_100337B50;
      v36 = v6;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v7 = &unk_100720D30;
LABEL_13:
      v33 = sub_10001047C;
      v34 = v7;
      v29 = _Block_copy(&aBlock);
      v30 = v1;

      [v5 animateWithDuration:v29 animations:0.2];
      _Block_release(v29);
    }
  }
}

void sub_100335A24()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID);
  if (v1 && swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount);
    v3 = qword_100766F00;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_10076B2A0);
    sub_100058000(&unk_100775610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x49746E756F636361;
    *(inited + 40) = 0xE900000000000044;
    *(inited + 72) = sub_100003540(0, &qword_10076BA50);
    *(inited + 48) = v4;
    v7 = v4;
    sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70);
    sub_10000FD44();

    sub_100426100(v7, v2);

    swift_unknownObjectRelease();
  }
}

id sub_100335C30()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  [v4 setAxis:v3 & 1];

  return [v4 setAlignment:v5];
}

uint64_t sub_1003360C0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITreeViewExpandedState();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_1007884E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for TTRITreeViewCellModel();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewModel;
  swift_beginAccess();
  sub_10000794C(v1 + v15, v10, &unk_1007884E0);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
    swift_beginAccess();
    (*(v5 + 16))(v7, v1 + v16, v4);
    v17 = TTRCloudKitMigrationManager.MigrationState.isNotStarted.getter();
    (*(v5 + 8))(v7, v4);
    if (v17)
    {
      v18 = static TTRAccesibility.AccountsList.Hint.HeadingUpgrade.getter();
    }

    else
    {
      if (*(v1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl) != 1 || (v21 = v24, TTRITreeViewCellModel.expandedState.getter(), v22 = (*(v25 + 88))(v21, v26), v22 == enum case for TTRITreeViewExpandedState.notExpandable(_:)))
      {
        (*(v12 + 8))(v14, v11);
        return 0;
      }

      if (v22 == enum case for TTRITreeViewExpandedState.collapsed(_:))
      {
        v18 = static TTRAccesibility.AccountsList.Hint.HeadingExpand.getter();
      }

      else
      {
        if (v22 != enum case for TTRITreeViewExpandedState.expanded(_:))
        {
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        v18 = static TTRAccesibility.AccountsList.Hint.HeadingCollapse.getter();
      }
    }

    v19 = v18;
    (*(v12 + 8))(v14, v11);
    return v19;
  }

  sub_1000079B4(v10, &unk_1007884E0);
  return 0;
}

void sub_1003364B4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a1;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for TTRIAccountsListsSectionHeaderView();
  objc_msgSendSuper2(&v9, *a4, v7);
}

uint64_t sub_100336548()
{
  v1 = v0[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl];
  if (v1 == 1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v4[3] = type metadata accessor for TTRIAccountsListsSectionHeaderView();
      v4[4] = sub_100337B00(&qword_10077F948, type metadata accessor for TTRIAccountsListsSectionHeaderView);
      v4[0] = v0;
      v2 = v0;
      dispatch thunk of TTRITreeViewCellDelegate.treeCellViewToggleExpandState(_:)();
      swift_unknownObjectRelease();
      sub_100004758(v4);
    }
  }

  return v1;
}

uint64_t sub_1003366F4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);
  LOBYTE(v6) = TTRCloudKitMigrationManager.MigrationState.isNotStarted.getter();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0 && v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount] != 1)
  {
    return 0;
  }

  v7 = static TTRLocalizableStrings.AccountsList.upgradeButtonTitle.getter();
  v9 = v8;
  sub_100003540(0, &qword_10076BCE0);
  v14[3] = type metadata accessor for TTRIAccountsListsSectionHeaderView();
  v14[0] = v1;
  v10 = v1;
  v11 = sub_1003338E4(v7, v9, v14, "migrateButtonAction:");
  sub_100058000(&qword_10076B780);
  result = swift_allocObject();
  *(result + 16) = xmmword_10062D420;
  *(result + 32) = v11;
  return result;
}

char *sub_100336960()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITreeViewExpandedState();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_1007884E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for TTRITreeViewCellModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  swift_beginAccess();
  (*(v12 + 16))(v14, v1 + v15, v11);
  LOBYTE(v15) = TTRCloudKitMigrationManager.MigrationState.isNotStarted.getter();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v36 = v2;
    v16 = static TTRAccesibility.AccountsList.Attributes.Upgradable.getter();
    v18 = v17;
    v19 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_100546970((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v22 = &v19[16 * v21];
    *(v22 + 4) = v16;
    *(v22 + 5) = v18;
    v2 = v36;
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  if (*(v1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl) == 1)
  {
    v23 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewModel;
    swift_beginAccess();
    sub_10000794C(v1 + v23, v6, &unk_1007884E0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000079B4(v6, &unk_1007884E0);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v24 = v37;
      TTRITreeViewCellModel.expandedState.getter();
      v25 = v38;
      v26 = (*(v38 + 88))(v24, v2);
      if (v26 == enum case for TTRITreeViewExpandedState.collapsed(_:))
      {
        v27 = static TTRAccesibility.AccountsList.Attributes.Collapsed.getter();
      }

      else
      {
        if (v26 != enum case for TTRITreeViewExpandedState.expanded(_:))
        {
          (*(v8 + 8))(v10, v7);
          (*(v25 + 8))(v24, v2);
          return v19;
        }

        v27 = static TTRAccesibility.AccountsList.Attributes.Expanded.getter();
      }

      v29 = v27;
      v30 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100546970(0, *(v19 + 2) + 1, 1, v19);
      }

      v32 = *(v19 + 2);
      v31 = *(v19 + 3);
      if (v32 >= v31 >> 1)
      {
        v19 = sub_100546970((v31 > 1), v32 + 1, 1, v19);
      }

      (*(v8 + 8))(v10, v7);
      *(v19 + 2) = v32 + 1;
      v33 = &v19[16 * v32];
      *(v33 + 4) = v29;
      *(v33 + 5) = v30;
    }
  }

  return v19;
}

void sub_100336E24()
{
  v1 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for TTRCloudKitMigrationManager.MigrationState.notStarted(_:))
  {
LABEL_2:
    v7 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton);
    goto LABEL_5;
  }

  if (v6 != enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:))
  {
    if (v6 == enum case for TTRCloudKitMigrationManager.MigrationState.inProgress(_:))
    {
      v7 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton);
      [v7 setHidden:1];
      goto LABEL_7;
    }

    if (v6 == enum case for TTRCloudKitMigrationManager.MigrationState.error(_:))
    {
      goto LABEL_2;
    }

    if (v6 != enum case for TTRCloudKitMigrationManager.MigrationState.finished(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }
  }

  v7 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton);
  if (*(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount) != 1)
  {
    v8 = 1;
    goto LABEL_6;
  }

LABEL_5:
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_upgradeHintCardShowingForAccount);
LABEL_6:
  [v7 setHidden:v8];
LABEL_7:
  if (([v7 isHidden] & 1) == 0 && *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isStoreDemoMode) == 1)
  {
    [v7 setHidden:1];
  }

  sub_100333E7C();
}

id sub_10033704C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAccountsListsSectionHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TTRIAccountsListsSectionHeaderView()
{
  result = qword_10077F938;
  if (!qword_10077F938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100337258()
{
  type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
    if (v1 <= 0x3F)
    {
      sub_1003373BC();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1003373BC()
{
  if (!qword_100788230)
  {
    type metadata accessor for TTRITreeViewCellModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100788230);
    }
  }
}

uint64_t sub_100337414@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewModel;
  swift_beginAccess();
  return sub_10000794C(v3 + v4, a1, &unk_1007884E0);
}

uint64_t sub_1003374D4(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100337544(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_10017D654;
}

void sub_10033760C(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;
  v6 = [a2 preferredContentSizeCategory];
  LODWORD(v5) = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;

  if (v4 != v5)
  {
    (*((swift_isaMask & *a1) + 0x250))();
  }
}

id sub_1003376F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  [*(v1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView) setAlpha:*(v0 + 24)];
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView);

  return [v3 setAlpha:v2];
}

uint64_t sub_100337758(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_1007884E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1003377C8()
{
  v1 = (v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_identifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
  v3 = enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:);
  v4 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  (*(*(v4 - 8) + 104))(v0 + v2, v3, v4);
  v5 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_networkActivityState;
  v6 = enum case for TTRCloudKitNetworkActivityMonitor.Activity.none(_:);
  v7 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl) = 1;
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_upgradeHintCardShowingForAccount) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID) = 0;
  v8 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewModel;
  v9 = type metadata accessor for TTRITreeViewCellModel();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_treeCellViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_outerStackView;
  *(v0 + v10) = [objc_allocWithZone(NUIContainerStackView) init];
  v11 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView;
  *(v0 + v11) = [objc_allocWithZone(NUIContainerStackView) init];
  v12 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButton;
  *(v0 + v13) = sub_100166DE0(0);
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner) = 0;
  v14 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView;
  type metadata accessor for TTRIAccountsListsCellAccessoryView();
  *(v0 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_collapseGestureRecognizers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isHighlighted) = 0;
  v15 = objc_allocWithZone(NSUserDefaults);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithSuiteName:v16];

  if (v17)
  {
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 BOOLForKey:v18];
  }

  else
  {
    v19 = 0;
  }

  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_isStoreDemoMode) = v19;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100337B00(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100337B6C(uint64_t *a1, void **a2, uint64_t a3)
{
  v92 = a3;
  v95 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v101 = *(v4 - 8);
  v102 = v4;
  v5 = __chkstk_darwin(v4);
  v83 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v94 = &v82 - v8;
  v9 = __chkstk_darwin(v7);
  v82 = &v82 - v10;
  __chkstk_darwin(v9);
  v96 = &v82 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v13 = __chkstk_darwin(v12 - 8);
  v91 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v89 = &v82 - v15;
  v88 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v88);
  v100 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRListType.SortingCapability();
  v98 = *(v18 - 8);
  v99 = v18;
  v19 = __chkstk_darwin(v18);
  v86 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v97 = &v82 - v21;
  v85 = type metadata accessor for TTRRemindersListDefaultListType();
  v22 = *(v85 - 8);
  __chkstk_darwin(v85);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v25);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v28 - 8);
  v30 = (&v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = a2;
  v31 = *a2;
  type metadata accessor for TTRShowCompletedByDateBucketsDataModelSource();
  swift_allocObject();
  v32 = v31;
  v33 = TTRShowCompletedByDateBucketsDataModelSource.init(store:countCompleted:)();
  sub_10010BD5C(a2, v30, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v108[0] = &_swiftEmptyArrayStorage;
  sub_100338C14(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218);
  sub_10010BA44();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v22 + 104))(v24, enum case for TTRRemindersListDefaultListType.cloudKitOnly(_:), v85);
  sub_10007786C(v30, v27, v24, v108);
  v90[13](v87, enum case for REMRemindersListDataView.SortingStyle.default(_:), v93);
  v34 = v97;
  TTRListType.SortingCapability.init(canChangeSortingStyle:canSortByManual:initialSortingStyle:)();
  v35 = v108[0];
  v36 = v86;
  (*(v98 + 16))(v86, v34, v99);
  type metadata accessor for TTRShowCompletedViewModelSource();
  v37 = swift_allocObject();

  v38 = v35;
  v93 = v33;
  v90 = v38;
  v39 = sub_1003387DC(v33, v38, v36, v37);
  sub_10010BD5C(v84, v30, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v108, v105);
  v40 = sub_100338C14(&qword_10077FA00, type metadata accessor for TTRShowCompletedViewModelSource);
  v41 = v100;
  sub_10010BD5C(v30, v100, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v42 = v88;
  sub_10010BCAC(v105, v41 + *(v88 + 28));
  v43 = (v41 + *(v42 + 32));
  *v43 = v39;
  v43[1] = v40;
  v44 = v105[0];
  sub_100058000(&qword_10076C230);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v107, v104, &qword_100769608);
  v46 = *(v104[5] + 8);
  *(v45 + 32) = v104[4];
  *(v45 + 40) = v46;
  sub_10000794C(&v106, v103, &qword_100769600);
  swift_retain_n();
  v47 = v44;
  swift_unknownObjectRelease();
  *(v45 + 48) = v103[3];
  sub_100004758(v103);
  sub_100004758(v104);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v48 = swift_allocObject();
  v49 = sub_1003A8140(v47, v39, v45, v48);

  sub_10010BD08(v105);
  sub_10010BE0C(v30, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v50 = *(v42 + 36);
  v87 = v49;
  *(v41 + v50) = v49;
  v51 = v89;
  sub_100078BBC(v89);
  v88 = type metadata accessor for TTRIShowCompletedPresenter();
  v52 = swift_allocObject();
  v53 = v91;
  sub_10010BD5C(v51, v91, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v54 = v92;
  swift_unknownObjectRetain();
  v55 = sub_1003A56E4(v53, v54, v52);
  sub_10010BE0C(v51, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v56 = *(v55 + 144);
  ObjectType = swift_getObjectType();
  v58 = *(v56 + 112);

  if (v58(ObjectType, v56))
  {
    swift_getObjectType();
    v59 = v82;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v60 = v96;
    (*(v101 + 32))(v96, v59, v102);
  }

  else
  {
    v60 = v96;
    (*(v101 + 104))(v96, enum case for TTRRemindersListLayout.list(_:), v102);
  }

  v61 = sub_1003A4A1C(v60, v55);
  v91 = v62;
  v64 = v63;
  v66 = v65;
  (*(v101 + 8))(v60, v102);
  v92 = swift_getObjectType();
  *(v55 + 24) = *(v66 + 8);
  v96 = v64;
  swift_unknownObjectWeakAssign();
  v67 = *(v55 + 144);
  v68 = swift_getObjectType();
  v69 = *(v67 + 112);

  if (v69(v68, v67))
  {
    swift_getObjectType();
    v70 = v83;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v71 = v94;
    (*(v101 + 32))(v94, v70, v102);
  }

  else
  {

    v71 = v94;
    (*(v101 + 104))(v94, enum case for TTRRemindersListLayout.list(_:), v102);
  }

  v72 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v73 = v61;
  v74 = sub_1003A8174(v55, v73, v91, v71, 0, 1, 0, v72);

  v75 = *(v66 + 32);
  v76 = v74;
  v75(v74, &off_100723D78, v92, v66);
  sub_100338C14(&qword_10077FA08, type metadata accessor for TTRIShowCompletedPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_100338C14(&qword_10077FA10, type metadata accessor for TTRShowCompletedViewModelSource);

  v77 = v76;
  dispatch thunk of TTRShowCompletedByDateBucketsDataModelSource.delegate.setter();

  sub_10056FEB0(v78, &off_10071A9B0);

  *(v87 + 3) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v109, v105, &qword_100769600);
  v79 = v105[4];
  swift_unknownObjectRelease();
  *(v79 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v105);
  sub_10000794C(&v110, v105, &qword_100769608);
  swift_getObjectType();
  sub_100338C14(&qword_10077FA18, type metadata accessor for TTRIShowCompletedPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v105);
  v80 = v95;
  v95[3] = v88;
  v80[4] = &off_100720D58;

  swift_unknownObjectRelease();
  *v80 = v55;
  (*(v98 + 8))(v97, v99);
  sub_10010BE0C(v100, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v108);
  return v77;
}

uint64_t sub_1003387DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v35 = a1;
  v36 = a2;
  v6 = *a4;
  v38 = a3;
  v39 = v6;
  v40 = type metadata accessor for REMAnalyticsEvent();
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for TTRListType.SortingCapability();
  v37 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9Reminders31TTRShowCompletedViewModelSource_cachedEmptyListMessaging;
  v18 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v19 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v19 - 8) + 104))(&a4[v17], v18, v19);
  v20 = &a4[OBJC_IVAR____TtC9Reminders31TTRShowCompletedViewModelSource_completedRemindersCount];
  *v20 = 0;
  v20[8] = 1;
  (*(v14 + 16))(v16, a3, v13);
  v21 = sub_1003A649C(v35, v36, v16, a4);

  sub_10006ADA4(v12);
  v22 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
  sub_10056F540(v12);
  sub_10010BE6C(v12);
  type metadata accessor for TTRUserDefaults();
  v23 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v24 = sub_100058000(&qword_100770980);
  v25 = &v9[*(v24 + 48)];
  v26 = &v9[*(v24 + 80)];
  v27 = enum case for REMRemindersOpenUserOperation.SmartListType.completed(_:);
  v28 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v28 - 8) + 104))(v9, v27, v28);
  v29 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v30 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v30 - 8) + 104))(v9, v29, v30);
  *v25 = TTRUserDefaults.activitySessionId.getter();
  v25[1] = v31;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v26 = _typeName(_:qualified:)();
  v26[1] = v32;
  v33 = v40;
  (*(v7 + 104))(v9, enum case for REMAnalyticsEvent.openListUserOperation(_:), v40);
  REMAnalyticsManager.post(event:)();

  (*(v14 + 8))(v38, v37);
  (*(v7 + 8))(v9, v33);
  return v21;
}

uint64_t sub_100338C14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100338C5C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077FA20);
  v1 = sub_100003E30(v0, qword_10077FA20);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100338DB8()
{
  ObjectType = swift_getObjectType();
  v20 = type metadata accessor for TTRTemplateSharingViewModel.Purpose();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRTemplateSharingViewModel();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v0;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewDidLoad", v7);
  result = [v0 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() systemBackgroundColor];
    [v11 setBackgroundColor:v12];

    v13 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"didTapClose:"];
    v14 = [v0 navigationItem];
    [v14 setRightBarButtonItem:v13];

    v15 = [v0 navigationItem];
    [v15 setLargeTitleDisplayMode:2];

    [v0 ttr_setNeedsUpdateContentUnavailableConfiguration];
    v16 = *&v0[OBJC_IVAR____TtC9Reminders39TTRITemplateSharingOffineViewController_presenter];
    v17 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_viewModel;
    swift_beginAccess();
    (*(v6 + 16))(v9, v16 + v17, v5);
    v18 = [v0 navigationItem];
    TTRTemplateSharingViewModel.purpose.getter();
    TTRTemplateSharingViewModel.Purpose.viewTitle.getter();
    (*(v2 + 8))(v4, v20);
    v19 = String._bridgeToObjectiveC()();

    [v18 setTitle:v19];

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10033919C()
{
  v1 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders39TTRITemplateSharingOffineViewController_presenter);
  if (qword_100766EF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_10076B0D8);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v4;
  sub_10009E31C(0, 0, v3, &unk_10063B918, v8);
}

uint64_t sub_1003394EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_1000A2D98(a1, v4, v5, v6);
}

void sub_1003395A0()
{
  v1 = v0;
  v14 = [objc_opt_self() emptyProminentConfiguration];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  [v14 setImage:v3];
  static TTRLocalizableStrings.Templates.publicTemplateSharingOfflineTitle.getter();
  v4 = String._bridgeToObjectiveC()();

  [v14 setText:v4];

  v5 = [v14 textProperties];
  v6 = [v14 textProperties];
  v7 = [v6 font];

  isa = UIFont.withRoundedDesign()().super.isa;
  [v5 setFont:isa];

  static TTRLocalizableStrings.Templates.publicTemplateSharingOfflineMessage.getter();
  v9 = String._bridgeToObjectiveC()();

  [v14 setSecondaryText:v9];

  v10 = [v14 secondaryTextProperties];
  v11 = [v14 secondaryTextProperties];
  v12 = [v11 font];

  v13 = UIFont.withRoundedDesign()().super.isa;
  [v10 setFont:v13];

  [v1 ttr_setContentUnavailableConfiguration:v14];
}

id sub_1003398CC(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders32TTRIRemindersBoardBackgroundView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  if (v4)
  {
    v5 = objc_allocWithZone(UITapGestureRecognizer);
    v6 = v4;
    v7 = [v5 initWithTarget:v6 action:"tapGestureAction:"];
    [v6 addGestureRecognizer:v7];

    a1 = v7;
  }

  return v4;
}

void sub_1003399D4(uint64_t a1)
{
  sub_1001AAABC(a1, v3);
  if (v4)
  {
    sub_100339B5C();
    if (swift_dynamicCast())
    {
      if (UIAccessibilityIsVoiceOverRunning() || ([v2 locationInView:v1], !swift_unknownObjectWeakLoadStrong()))
      {
      }

      else
      {
        sub_100482250(v1);

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_10000B070(v3);
  }
}

unint64_t sub_100339B5C()
{
  result = qword_10077FA98;
  if (!qword_10077FA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10077FA98);
  }

  return result;
}

uint64_t type metadata accessor for TTRIRemindersListPublicTemplatePreviewStatusCell()
{
  result = qword_10077FAA8;
  if (!qword_10077FAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100339C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(UILabel) init];
  static TTRLocalizableStrings.Templates.templatePreview.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setText:v9];

  sub_100003540(0, &qword_100771DF0);
  v10 = static UIFont.roundedBodyFont.getter();
  [v8 setFont:v10];

  v11 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor:v11];

  [v8 setAdjustsFontForContentSizeCategory:1];
  [v8 setNumberOfLines:0];
  v12 = v8;
  LODWORD(v13) = 1132068864;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];
  *&v4[qword_10077FAA0] = v12;
  v14 = v12;
  if (a3)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, "initWithStyle:reuseIdentifier:", a1, v15);

  v17 = v16;
  v18 = TTRITableViewContainerCell.containerView.getter();
  [v18 setHorizontalAlignment:1];
  [v18 setVerticalAlignment:0];
  sub_100058000(&qword_10076B780);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10062D420;
  *(v19 + 32) = v12;
  sub_100003540(0, &qword_10076B020);
  v20 = v18;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setArrangedSubviews:isa];

  [v17 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();

  return v17;
}

id sub_100339F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100339C44(a3, a4, v6);
}

Class sub_10033A004(uint64_t a1)
{
  sub_100058000(&unk_100777760);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10062D400;
  v3 = *(a1 + qword_10077FAA0);
  *(v2 + 56) = sub_100003540(0, &qword_100776820);
  *(v2 + 32) = v3;
  v4 = v3;
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t sub_10033A0E4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077FB00);
  v1 = sub_100003E30(v0, qword_10077FB00);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10033A2DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&qword_10077FBE0);
  v74 = *(v3 - 8);
  v75 = v3;
  __chkstk_darwin(v3);
  v70 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v4;
  __chkstk_darwin(v5);
  v79 = v67 - v6;
  v78 = sub_100058000(&qword_10077FBE8);
  v73 = *(v78 - 8);
  __chkstk_darwin(v78);
  v68 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67[1] = v7;
  __chkstk_darwin(v8);
  v77 = v67 - v9;
  v76 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v10 = *(v76 - 1);
  __chkstk_darwin(v76);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UICollectionLayoutListConfiguration();
  v71 = *(v17 - 8);
  v72 = v17;
  __chkstk_darwin(v17);
  v80 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRTemplatesListStyle();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82.receiver = v1;
  v82.super_class = ObjectType;
  objc_msgSendSuper2(&v82, "viewDidLoad", v21);
  v24 = [v1 navigationItem];
  (*(v20 + 16))(v23, &v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_style], v19);
  v25 = (*(v20 + 88))(v23, v19);
  if (v25 == enum case for TTRTemplatesListStyle.listCreation(_:))
  {
    v26._countAndFlagsBits = 0x7473694C2077654ELL;
    v27._object = 0x8000000100682BE0;
    v28._object = 0x8000000100682C00;
    v27._countAndFlagsBits = 0xD00000000000001ALL;
    v26._object = 0xE800000000000000;
    v28._countAndFlagsBits = 0xD00000000000001ALL;
    TTRLocalizedString(_:value:comment:)(v27, v26, v28);
  }

  else
  {
    if (v25 != enum case for TTRTemplatesListStyle.browser(_:))
    {
      goto LABEL_10;
    }

    static TTRLocalizableStrings.Templates.templatesListTitle.getter();
  }

  v29 = String._bridgeToObjectiveC()();

  [v24 setTitle:v29];

  (*(v14 + 104))(v16, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v13);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v10 + 104))(v12, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v76);
  UICollectionLayoutListConfiguration.footerMode.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
  sub_100003540(0, &qword_10077BFE0);
  v30 = static UICollectionViewCompositionalLayout.list(using:)();
  v31 = [v1 view];
  if (v31)
  {
    v32 = v31;
    [v31 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v41 = objc_allocWithZone(UICollectionView);
    v76 = v30;
    v42 = [v41 initWithFrame:v30 collectionViewLayout:{v34, v36, v38, v40}];
    [v42 setAutoresizingMask:18];
    v43 = [v1 view];
    if (v43)
    {
      v44 = v43;
      [v43 addSubview:v42];

      [v42 setDelegate:v1];
      [v42 setAllowsSelection:1];
      swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for TTRITemplatesListCell(0);
      sub_100003540(0, &qword_10076BA50);
      v45 = v77;
      UICollectionView.CellRegistration.init(handler:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003540(0, &qword_10077FBF0);
      v46 = v79;
      UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
      v47 = v73;
      v48 = v68;
      v49 = v78;
      (*(v73 + 16))(v68, v45, v78);
      v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v51 = swift_allocObject();
      (*(v47 + 32))(v51 + v50, v48, v49);
      v52 = objc_allocWithZone(sub_100058000(&qword_10077FBF8));
      v53 = v42;
      v54 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
      v55 = v74;
      v56 = v75;
      v57 = v70;
      (*(v74 + 16))(v70, v46, v75);
      v58 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v59 = swift_allocObject();
      (*(v55 + 32))(v59 + v58, v57, v56);
      dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
      v60 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
      sub_100058000(&qword_10077FC00);
      UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.setter();
      v60(v81, 0);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v61 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
      UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.setter();
      v61(v81, 0);
      v62 = *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView];
      *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView] = v53;
      v63 = v53;

      v64 = *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource];
      *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource] = v54;
      v65 = v54;

      sub_10033D258(0);
      sub_10033D6A0();

      (*(v55 + 8))(v79, v56);
      (*(v47 + 8))(v77, v78);
      return (*(v71 + 8))(v80, v72);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_10033AD5C(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  static TTRLocalizableStrings.Templates.deleteTemplate.getter();
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v3 + 16))(&aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  (*(v3 + 32))(v8 + v7, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);

  v9 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100340D10;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100422764;
  aBlock[3] = &unk_100720F68;
  v10 = _Block_copy(aBlock);
  v11 = [objc_opt_self() contextualActionWithStyle:1 title:v9 handler:v10];

  _Block_release(v10);

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [objc_opt_self() _systemImageNamed:v12];

    [v11 setImage:v13];
  }

  sub_100058000(&qword_10076B780);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D420;
  *(v14 + 32) = v11;
  sub_100003540(0, &qword_10076BC40);
  v15 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [objc_opt_self() configurationWithActions:isa];

  return v17;
}

uint64_t sub_10033B0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v8 = type metadata accessor for IndexPath();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v35 = &v31 - v11;
  v36 = sub_100058000(&qword_10077FC30);
  v13 = *(v36 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v36);
  v32 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v40 = sub_1001A0210;
  v41 = v18;

  sub_100058000(&qword_10077FC38);
  v34 = v17;
  TTRUnsafeSendable.init(_:)();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v23 = v37;
  v22 = v38;
  (*(v37 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v38);
  v24 = v36;
  (*(v13 + 16))(&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v36);
  type metadata accessor for MainActor();

  v25 = static MainActor.shared.getter();
  v26 = v23;
  v27 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v28 = (v9 + *(v13 + 80) + v27) & ~*(v13 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = v25;
  *(v29 + 3) = &protocol witness table for MainActor;
  *(v29 + 4) = v20;
  (*(v26 + 32))(&v29[v27], v33, v22);
  (*(v13 + 32))(&v29[v28], v32, v24);

  sub_10009E31C(0, 0, v35, &unk_10063BAD8, v29);

  return (*(v13 + 8))(v34, v24);
}

uint64_t sub_10033B49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  sub_100058000(&unk_10076FCD0);
  v6[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[16] = v8;
  v6[17] = v7;

  return _swift_task_switch(sub_10033B570, v8, v7);
}

void sub_10033B570()
{
  v15 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource);
    v3 = Strong;
    v4 = v2;

    if (!v2)
    {
      __break(1u);
      return;
    }

    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v5 = v0[10];
    v0[18] = v5;
    if (v5)
    {
      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v0[14];
        v0[19] = *(v6 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter);
        v8 = v6;
        swift_unknownObjectRetain();

        v9 = type metadata accessor for TTRIPopoverAnchor();
        (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
        v10 = swift_task_alloc();
        v0[20] = v10;
        *v10 = v0;
        v10[1] = sub_10033B798;
        v11 = v0[14];

        sub_1002852E8(v5, v11);
        return;
      }
    }
  }

  sub_100058000(&qword_10077FC30);
  TTRUnsafeSendable.wrapped.getter();
  v12 = v0[8];
  v14 = 0;
  v12(&v14);

  v13 = v0[1];

  v13();
}

uint64_t sub_10033B798(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 168) = a1;

  swift_unknownObjectRelease();
  sub_1000079B4(v3, &unk_10076FCD0);
  v4 = *(v2 + 136);
  v5 = *(v2 + 128);

  return _swift_task_switch(sub_10033B910, v5, v4);
}

uint64_t sub_10033B910()
{
  v7 = v0;
  v1 = *(v0 + 144);

  v2 = *(v0 + 168);
  sub_100058000(&qword_10077FC30);
  TTRUnsafeSendable.wrapped.getter();
  v3 = *(v0 + 64);
  v6 = v2;
  v3(&v6);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10033B9C8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource);
    if (v2)
    {
      v3 = v2;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if (v5)
      {
        swift_unknownObjectRetain();
        v4 = sub_100287C6C(v5);

        swift_unknownObjectRelease();
        return v4;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10033BA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a1;
  v5 = type metadata accessor for UICellAccessory.DeleteOptions();
  v82 = *(v5 - 8);
  v83 = v5;
  __chkstk_darwin(v5);
  v81 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v7 - 8);
  v79 = &v66 - v8;
  v75 = type metadata accessor for UICellAccessory.ReorderOptions();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for UICellAccessory.DisplayedState();
  v85 = *(v88 - 8);
  __chkstk_darwin(v88);
  v76 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UICellAccessory.Placement();
  v11 = *(v71 - 8);
  __chkstk_darwin(v71);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for UICellAccessory();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v87 = &v66 - v16;
  __chkstk_darwin(v17);
  v86 = &v66 - v18;
  v19 = type metadata accessor for TTRTemplatesListViewModel();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100058000(&unk_10077FBB0);
  v68 = *(v23 - 8);
  v24 = *(v68 + 64);
  __chkstk_darwin(v23 - 8);
  v69 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v66 - v26;
  swift_beginAccess();
  v72 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = v27;
    v31 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter);
    swift_unknownObjectRetain();

    v32 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
    swift_beginAccess();
    (*(v20 + 16))(v22, v31 + v32, v19);
    v27 = v30;
    swift_unknownObjectRelease();
    TTRTemplatesListViewModel.template(with:)();
    (*(v20 + 8))(v22, v19);
  }

  else
  {
    v33 = type metadata accessor for TTRTemplatesListViewModel.Template();
    (*(*(v33 - 8) + 56))(v27, 1, 1, v33);
  }

  sub_10048EE70(v27);
  v34 = &v13[*(sub_100058000(&qword_100779498) + 48)];
  v35 = v27;
  v70 = v27;
  v67 = *(v85 + 104);
  v84 = v85 + 104;
  v67(v13, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v88);
  *v34 = variable initialization expression of TTRSmartListFilterEditorInteractor.listFetchOperationManager;
  v34[1] = 0;
  v36 = v71;
  (*(v11 + 104))(v13, enum case for UICellAccessory.Placement.trailing(_:), v71);
  v37 = swift_allocObject();
  swift_beginAccess();
  v38 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v39 = v69;
  sub_10000794C(v35, v69, &unk_10077FBB0);
  v40 = (*(v68 + 80) + 24) & ~*(v68 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  sub_100340B64(v39, v41 + v40);

  sub_10048F1B0(v13, sub_100340BD4, v41, v86);

  (*(v11 + 8))(v13, v36);

  v42 = enum case for UICellAccessory.DisplayedState.whenEditing(_:);
  v43 = v76;
  v44 = v88;
  v45 = v67;
  v67(v76, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v88);
  v46 = type metadata accessor for UICellAccessory.LayoutDimension();
  v47 = *(*(v46 - 8) + 56);
  v48 = v79;
  v47(v79, 1, 1, v46);
  v49 = v73;
  UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
  static UICellAccessory.reorder(displayed:options:)();
  (*(v74 + 8))(v49, v75);
  v50 = *(v85 + 8);
  v50(v43, v44);
  v45(v43, v42, v44);
  v47(v48, 1, 1, v46);
  v51 = v81;
  UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
  v52 = v77;
  static UICellAccessory.delete(displayed:options:actionHandler:)();
  (*(v82 + 8))(v51, v83);
  v50(v43, v44);
  sub_100058000(&unk_10077C050);
  v53 = v78;
  v54 = *(v78 + 72);
  v55 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v56 = 2 * v54;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10062F800;
  v58 = v57 + v55;
  v59 = *(v53 + 16);
  v60 = v86;
  v61 = v80;
  v59(v57 + v55, v86, v80);
  v62 = v58 + v54;
  v63 = v87;
  v59(v62, v87, v61);
  v59(v58 + v56, v52, v61);
  UICollectionViewListCell.accessories.setter();
  v64 = *(v53 + 8);
  v64(v52, v61);
  v64(v63, v61);
  v64(v60, v61);
  return sub_1000079B4(v70, &unk_10077FBB0);
}

uint64_t sub_10033C47C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&unk_10077FBB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_10000794C(a2, v5, &unk_10077FBB0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_1000079B4(v5, &unk_10077FBB0);
      return 0;
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v12 = sub_10033C658(v9);

      (*(v7 + 8))(v9, v6);
      return v12;
    }
  }

  return result;
}

Class sub_10033C658(uint64_t a1)
{
  v50 = a1;
  v2 = type metadata accessor for TTRTemplatePublicLinkData();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = v6;
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100003540(0, &qword_10076BA60);
  v47 = static TTRLocalizableStrings.Templates.editTemplate.getter();
  v43 = v8;
  v9 = String._bridgeToObjectiveC()();
  v46 = objc_opt_self();
  v41 = [v46 _systemImageNamed:v9];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = *(v5 + 16);
  v39 = v4;
  v51(v7, a1, v4);
  v42 = v5 + 16;
  v11 = v5;
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = *(v11 + 32);
  v14(v13 + v12, v7, v4);
  v47 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v15 = v44;
  v16 = v50;
  TTRTemplatesListViewModel.Template.publicLinkData.getter();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v39;
  v51(v7, v16, v39);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v14(v19 + v12, v7, v18);

  v43 = sub_10014E6B8(v15, 1, sub_100340838, v19);

  (*(v48 + 8))(v15, v49);

  v20 = static TTRLocalizableStrings.Templates.deleteTemplate.getter();
  v48 = v21;
  v49 = v20;
  v22 = String._bridgeToObjectiveC()();
  v23 = [v46 _systemImageNamed:v22];

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51(v7, v50, v18);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v14(v25 + v12, v7, v18);
  v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100003540(0, &unk_10076B890);
  sub_100058000(&qword_100775868);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10062F800;
  v28 = v47;
  v29 = v43;
  *(v27 + 32) = v47;
  *(v27 + 40) = v29;
  *(v27 + 48) = v26;
  v52 = v27;
  v30 = v29;
  v31 = v26;
  v32 = v28;
  sub_100058000(&unk_10077FBC0);
  sub_100003540(0, &qword_10076C550);
  sub_10034094C();
  v33 = Sequence.removingNils<A>()();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v53.value.super.isa = 0;
  v53.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v34, 0, v53, 0, 0xFFFFFFFFFFFFFFFFLL, v33, v37).super.super.isa;

  return isa;
}

void sub_10033CC18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10033CC88();
  }
}

uint64_t sub_10033CC88()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10077FBD8);
  __chkstk_darwin(v2);
  v4 = &v18[-1] - v3;
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionViewListCell.defaultContentConfiguration()();
  v9 = *&v0[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource];
  if (v9)
  {
    v10 = v9;
    IndexPath.section.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

    v11 = type metadata accessor for TTRTemplatesListViewModel.SectionIdentifier();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v4, 1, v11) == 1)
    {
LABEL_7:
      v18[3] = v5;
      v18[4] = &protocol witness table for UIListContentConfiguration;
      v15 = sub_1000317B8(v18);
      (*(v6 + 16))(v15, v8, v5);
      UICollectionViewCell.contentConfiguration.setter();
      return (*(v6 + 8))(v8, v5);
    }

    if ((*(v12 + 88))(v4, v11) == enum case for TTRTemplatesListViewModel.SectionIdentifier.main(_:))
    {
      if (([v1 isEditing] & 1) == 0)
      {
        v13._countAndFlagsBits = 0xD000000000000023;
        v13._object = 0x8000000100682B80;
        v14._object = 0x8000000100682BB0;
        v14._countAndFlagsBits = 0xD000000000000020;
        TTRLocalizedString(_:comment:)(v13, v14);
      }

      UIListContentConfiguration.text.setter();
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10033CF30(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  type metadata accessor for TTRITemplatesListCell(0);
  sub_100003540(0, &qword_10076BA50);
  v4 = v3;
  v5 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  return v5;
}

void sub_10033CFD0()
{
  v0 = sub_100058000(&qword_10077FC08);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - v2;
  v4 = sub_100058000(&qword_10077FC10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_100058000(&qword_10077FC18);
    v13 = NSDiffableDataSourceTransaction.sectionTransactions.getter();
    if (*(v13 + 16))
    {
      (*(v5 + 16))(v7, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      (*(v5 + 32))(v10, v7, v4);
      NSDiffableDataSourceSectionTransaction.finalSnapshot.getter();
      NSDiffableDataSourceSectionSnapshot.items.getter();
      (*(v1 + 8))(v3, v0);
      sub_100287858();

      (*(v5 + 8))(v10, v4);
    }

    else
    {
    }
  }
}

uint64_t sub_10033D258(int a1)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_100058000(&qword_10077FBA0);
  __chkstk_darwin(v3 - 8);
  v35 = &v29[-v4];
  v5 = sub_100058000(&qword_10077FBA8);
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v37 = &v29[-v6];
  v7 = type metadata accessor for TTRTemplatesListViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v29[-v12];
  v14 = *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter];
  v15 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
  swift_beginAccess();
  v16 = (v14 + v15);
  v17 = *(v8 + 16);
  v17(v13, v16, v7);
  v18 = OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_lastConsumedViewModel;
  swift_beginAccess();
  v19 = *(v8 + 48);
  v20 = v19(&v2[v18], 1, v7);
  v36 = v8;
  v31 = v17;
  if (v20)
  {
    v21 = v13;
    TTRTemplatesListViewModel.shouldShowContentUnavailableMessage.getter();
  }

  else
  {
    v17(v10, &v2[v18], v7);
    LOBYTE(v30) = TTRTemplatesListViewModel.shouldShowContentUnavailableMessage.getter() & 1;
    v30 = v30;
    (*(v8 + 8))(v10, v7);
    v21 = v13;
    if ((TTRTemplatesListViewModel.shouldShowContentUnavailableMessage.getter() & 1) == v30)
    {
      goto LABEL_5;
    }
  }

  [v2 ttr_setNeedsUpdateContentUnavailableConfiguration];
LABEL_5:
  v22 = v19(&v2[v18], 1, v7);
  v23 = v37;
  if (!v22)
  {
    v31(v10, &v2[v18], v7);
    TTRTemplatesListViewModel.isEmpty.getter();
    (*(v36 + 8))(v10, v7);
    v23 = v37;
  }

  v24 = v35;
  sub_10000794C(&v2[v18], v35, &qword_10077FBA0);
  TTRTemplatesListViewModel.snapshot(previousViewModel:)();
  result = sub_1000079B4(v24, &qword_10077FBA0);
  v26 = *&v2[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource];
  if (v26)
  {
    v27 = v26;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v32 + 8))(v23, v33);
    v28 = v36;
    (*(v36 + 32))(v24, v21, v7);
    (*(v28 + 56))(v24, 0, 1, v7);
    swift_beginAccess();
    sub_10033FB5C(v24, &v2[v18]);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10033D6A0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRTemplatesListViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRTemplatesListStyle();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, &v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_style], v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for TTRTemplatesListStyle.listCreation(_:))
  {
    v12 = [v1 navigationItem];
    v13 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___cancelButton, &selRef_didTapCancel_, 1);
    [v12 setLeftBarButtonItem:v13];

    v14 = [v1 navigationItem];
    v15 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___doneButton, &selRef_didTapDone_, 0);
    [v14 setRightBarButtonItem:v15];

    [*&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___doneButton] setEnabled:0];
    if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
    {
      sub_100058000(&qword_10076B780);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10062D410;
      *(v20 + 32) = [objc_opt_self() flexibleSpaceItem];
      *(v20 + 40) = [v1 editButtonItem];
    }

    sub_100003540(0, &qword_10076B800);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_14:
    [v1 setToolbarItems:v21.super.isa];

    return;
  }

  if (v11 == enum case for TTRTemplatesListStyle.browser(_:))
  {
    v16 = [v1 navigationItem];
    v17 = [v1 editButtonItem];
    [v16 setLeftBarButtonItem:v17];

    v18 = [v1 navigationItem];
    if ([v1 isEditing])
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___doneButton, &selRef_didTapDone_, 0);
    }

    [v18 setRightBarButtonItem:v19];

    v22 = [v1 editButtonItem];
    if ([v1 isEditing])
    {
      v23 = 1;
    }

    else
    {
      v24 = *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter];
      v25 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
      swift_beginAccess();
      (*(v3 + 16))(v5, v24 + v25, v2);
      LOBYTE(v24) = TTRTemplatesListViewModel.isEmpty.getter();
      (*(v3 + 8))(v5, v2);
      v23 = v24 ^ 1;
    }

    [v22 setEnabled:v23 & 1];

    sub_100003540(0, &qword_10076B800);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
    goto LABEL_14;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_10033DBD4(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRTemplatesListStyle();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v6);
  v9 = UIViewController.effectiveNavigationControllerForBars.getter();
  if (v9)
  {
    v10 = v9;
    (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_style, v4);
    v11 = (*(v5 + 88))(v8, v4);
    if (v11 == enum case for TTRTemplatesListStyle.listCreation(_:))
    {
      v12 = static REMFeatureFlags.isSolariumEnabled.getter();
    }

    else
    {
      if (v11 != enum case for TTRTemplatesListStyle.browser(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v12 = 1;
    }

    [v10 setToolbarHidden:v12 & 1 animated:a1 & 1];
  }
}

void sub_10033DED0(char a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v27 = type metadata accessor for IndexPath();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRTemplatesListViewModel.SectionIdentifier();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v3;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "setEditing:animated:", a1 & 1, a2 & 1, v12);
  v15 = OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView;
  v16 = *&v3[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView];
  if (!v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v16 setEditing:a1 & 1];
  sub_10033D6A0();
  v17 = *&v3[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  (*(v11 + 104))(v14, enum case for TTRTemplatesListViewModel.SectionIdentifier.main(_:), v10);
  v18 = v17;
  dispatch thunk of UICollectionViewDiffableDataSource.index(for:)();
  v20 = v19;

  (*(v11 + 8))(v14, v10);
  if (v20)
  {
    return;
  }

  IndexPath.init(row:section:)();
  v21 = *&v3[v15];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v22 = UICollectionElementKindSectionFooter;
  v23 = v21;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = [v23 supplementaryViewForElementKind:v22 atIndexPath:isa];

  if (v25)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_10033CC88();
    }
  }

  (*(v7 + 8))(v9, v27);
}

void sub_10033E254()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter);
    v2 = Strong;
    swift_unknownObjectRetain();

    v3 = TTRTemplatesListViewModel.Template.objectID.getter();
    if (qword_100767098 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_100777798);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    if (*(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) == 1 || (swift_getObjectType(), (v5 = TTRTemplatesListInteractorType.template(with:)()) == 0))
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v6 = v5;
      [*(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_editorUndoManager) removeAllActions];
      sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router), *(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router + 24));
      v7 = dispatch thunk of TTRTemplatesListInteractorType.store.getter();
      sub_10033FBCC(v6, v7, v1);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10033E414(char *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRetain();

    v4 = TTRTemplatesListViewModel.Template.objectID.getter();
    sub_1002884FC(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10033E4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v5 + 16))(v7, a3, v4);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v14;
  *(v16 + 3) = &protocol witness table for MainActor;
  *(v16 + 4) = v12;
  (*(v5 + 32))(&v16[v15], v7, v4);

  sub_10009E31C(0, 0, v10, &unk_10063BA60, v16);
}

uint64_t sub_10033E6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_100058000(&unk_100771B10);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for IndexPath();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  sub_100058000(&unk_10076FCD0);
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_10033E860, v8, v7);
}

uint64_t sub_10033E860()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = Strong;
    result = TTRTemplatesListViewModel.Template.objectID.getter();
    v4 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource);
    if (v4)
    {
      v5 = result;
      v6 = v0[9];
      v7 = v0[10];
      v8 = v0[8];
      v0[5] = result;
      v9 = v4;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

      if ((*(v7 + 48))(v8, 1, v6) == 1)
      {
        sub_1000079B4(v0[8], &unk_100771B10);
        goto LABEL_12;
      }

      result = (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView);
      if (v11)
      {
        v12 = v11;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v14 = [v12 cellForItemAtIndexPath:isa];

        if (v14)
        {
          v15 = v0[11];
          v16 = v0[9];
          v17 = v0[10];
          static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();

          (*(v17 + 8))(v15, v16);
          v18 = 0;
LABEL_13:
          v19 = v0[12];
          v20 = type metadata accessor for TTRIPopoverAnchor();
          (*(*(v20 - 8) + 56))(v19, v18, 1, v20);

          v21 = TTRTemplatesListViewModel.Template.objectID.getter();
          v0[17] = v21;
          v22 = swift_task_alloc();
          v0[18] = v22;
          *v22 = v0;
          v22[1] = sub_10033EB3C;
          v23 = v0[12];

          return sub_1002852E8(v21, v23);
        }

        (*(v0[10] + 8))(v0[11], v0[9]);
LABEL_12:
        v18 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10033EB3C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return _swift_task_switch(sub_10033EC7C, v4, v3);
}

uint64_t sub_10033EC7C()
{
  v1 = v0[16];
  v2 = v0[12];

  sub_1000079B4(v2, &unk_10076FCD0);

  v3 = v0[1];

  return v3();
}

void sub_10033ED18()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter);

  if (qword_100767098 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100777798);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  if ((*(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004BE910();

      swift_unknownObjectRelease();
    }

    else
    {
      sub_100288C94();
      sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router), *(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router + 24));
      if (qword_1007674F8 != -1)
      {
        swift_once();
      }

      sub_100003E30(v2, qword_1007925F0);
      sub_1003F99F4(0x6574616C706D6554, 0xEE007473694C2073);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = [Strong presentingViewController];

        if (v5)
        {
          [v5 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}

void sub_10033EF48()
{
  UIViewController.endFirstResponderEditing()();
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter);
  if (qword_100767098 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100777798);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  if ((*(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004BE910();

      swift_unknownObjectRelease();
    }

    else
    {
      sub_100288C94();
      sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router), *(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router + 24));
      if (qword_1007674F8 != -1)
      {
        swift_once();
      }

      sub_100003E30(v2, qword_1007925F0);
      sub_1003F99F4(0x6574616C706D6554, 0xEE007473694C2073);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = [Strong presentingViewController];

        if (v5)
        {
          [v5 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}

uint64_t sub_10033F160(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
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

  return sub_1000079B4(v9, &qword_10076AE40);
}

uint64_t type metadata accessor for TTRITemplatesListViewController()
{
  result = qword_10077FB80;
  if (!qword_10077FB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033F360()
{
  type metadata accessor for TTRTemplatesListStyle();
  if (v0 <= 0x3F)
  {
    sub_10033F450();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10033F450()
{
  if (!qword_10077FB90)
  {
    type metadata accessor for TTRTemplatesListViewModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10077FB90);
    }
  }
}

uint64_t sub_10033F4A8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRTemplatesListStyle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for TTRTemplatesListStyle.listCreation(_:), v2, v4);
  sub_10033FB04();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    if (qword_100767208 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_10077FB00);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "TTRITemplatesListViewController: unexpected call to popoverAnchorForDiscardChangesAlert", v11, 2u);
    }
  }

  v12 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___cancelButton, &selRef_didTapCancel_, 1);
  static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();

  v13 = type metadata accessor for TTRIPopoverAnchor();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

void sub_10033F6E8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIPopoverAnchor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  v9 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource);
  if (v9)
  {
    v10 = v9;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v11 = v15;
    if (v15)
    {
      v12 = IndexPath._bridgeToObjectiveC()().super.isa;
      v13 = [a1 cellForItemAtIndexPath:v12];

      if (v13)
      {
        static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
        sub_100285EE0();

        (*(v5 + 8))(v7, v4);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Class sub_10033F988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = sub_10033C658(a3);

  return v6;
}

unint64_t sub_10033FB04()
{
  result = qword_10077FB98;
  if (!qword_10077FB98)
  {
    type metadata accessor for TTRTemplatesListStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077FB98);
  }

  return result;
}

uint64_t sub_10033FB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10077FBA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10033FBCC(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = type metadata accessor for TTRAttachmentThumbnailSizeProvider();
    v12 = static TTRAttachmentThumbnailSizeProviding<>.remindersList.getter();
    v23[3] = v11;
    v23[4] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
    v23[0] = v12;
    sub_100003540(0, &qword_100777780);
    static OS_dispatch_queue.main.getter();
    type metadata accessor for RDIDispatchQueue();
    static RDIDispatchQueue.utilityQueue.getter();
    v13 = type metadata accessor for TTRThumbnailGenerator();
    swift_allocObject();
    v14 = TTRThumbnailGenerator.init(queue:backgroundQueue:)();
    v22[3] = v13;
    v22[4] = &protocol witness table for TTRThumbnailGenerator;
    v22[0] = v14;
    type metadata accessor for TTRAttachmentThumbnailsManager();
    swift_allocObject();
    v15 = TTRAttachmentThumbnailsManager.init(thumbnailSizeProvider:thumbnailGenerator:)();
    v16 = v6[5];
    v17 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v17 - 8) + 56))(&v8[v16], 1, 1, v17);
    type metadata accessor for TTRIHashtagAssociationNoOpModuleInterface();
    v18 = swift_allocObject();
    *v8 = a2;
    *&v8[v6[6]] = v15;
    v19 = &v8[v6[7]];
    *v19 = v18;
    v19[1] = &off_10071ECD0;
    v8[v6[8]] = 0;
    type metadata accessor for TTRIShowTemplateAssembly();
    v20 = a2;
    v21 = sub_1004D2E70(v23, v8, a1, a3);
    sub_100004758(v23);
    [v10 presentViewController:v21 animated:1 completion:0];

    sub_100079664(v8);
    swift_unknownObjectWeakAssign();
  }
}

void sub_10033FE28()
{
  v1 = v0;
  v2 = type metadata accessor for TTRTemplatesListViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter];
  v7 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  LOBYTE(v6) = TTRTemplatesListViewModel.shouldShowContentUnavailableMessage.getter();
  (*(v3 + 8))(v5, v2);
  v8 = 0;
  if (v6)
  {
    v9 = [objc_opt_self() emptyProminentConfiguration];
    v10 = String._bridgeToObjectiveC()();
    v11 = objc_opt_self();
    v12 = [v11 _systemImageNamed:v10];

    [v9 setImage:v12];
    static TTRLocalizableStrings.Templates.noTemplates.getter();
    v13 = String._bridgeToObjectiveC()();

    [v9 setText:v13];

    v14 = [v9 textProperties];
    v15 = [v9 textProperties];
    v16 = [v15 font];

    isa = UIFont.withRoundedDesign()().super.isa;
    [v14 setFont:isa];

    v18 = [v9 secondaryTextProperties];
    v19 = [v9 secondaryTextProperties];
    v20 = [v19 font];

    v21 = UIFont.withRoundedDesign()().super.isa;
    [v18 setFont:v21];

    v22._countAndFlagsBits = 0xD00000000000002BLL;
    v22._object = 0x8000000100682A50;
    v23._countAndFlagsBits = 0xD000000000000062;
    v23._object = 0x8000000100682A80;
    v24._countAndFlagsBits = 0xD00000000000008ELL;
    v24._object = 0x8000000100682AF0;
    TTRLocalizedString(_:value:comment:)(v22, v23, v24);
    v25 = String._bridgeToObjectiveC()();
    v26 = [v11 _systemImageNamed:v25];

    v39[1] = v26;
    sub_100058000(&qword_10077FBD0);
    Optional<A>.ensureNonNil()();

    v27 = v39[2];
    v28 = [v9 secondaryTextProperties];
    v29 = [v28 font];

    v30 = [objc_opt_self() configurationWithFont:v29];
    v31 = [v27 imageWithConfiguration:v30];

    v32 = [v9 secondaryTextProperties];
    v33 = [v32 color];

    v34 = [v31 imageWithTintColor:v33];
    v35 = objc_allocWithZone(NSMutableAttributedString);
    v36 = String._bridgeToObjectiveC()();

    v37 = [v35 initWithString:v36];

    v38._countAndFlagsBits = 0x3E4E4F43493CLL;
    v38._object = 0xE600000000000000;
    NSMutableAttributedString.replace(placeholder:with:)(v38, v34);
    [v9 setSecondaryAttributedText:v37];

    v8 = v9;
  }

  [v1 ttr_setContentUnavailableConfiguration:v8];
}

void sub_100340354()
{
  v1 = type metadata accessor for TTRTemplatesListViewModel();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_10077FBB0);
  __chkstk_darwin(v5 - 8);
  v7 = v28 - v6;
  v8 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v29 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v30 = v28 - v11;
  v12 = *&v0[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource];
  if (v12)
  {
    v13 = v12;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v14 = aBlock[0];
    if (aBlock[0])
    {
      v28[1] = v0;
      v15 = *&v0[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter];
      v16 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
      swift_beginAccess();
      v17 = v15 + v16;
      v18 = v31;
      (*(v2 + 16))(v4, v17, v1);
      TTRTemplatesListViewModel.template(with:)();
      (*(v2 + 8))(v4, v1);
      if ((*(v18 + 48))(v7, 1, v8) == 1)
      {

        sub_1000079B4(v7, &unk_10077FBB0);
      }

      else
      {
        v19 = *(v18 + 32);
        v28[0] = v14;
        v20 = v30;
        v19(v30, v7, v8);
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = v29;
        (*(v18 + 16))(v29, v20, v8);
        v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
        v24 = v18;
        v25 = swift_allocObject();
        *(v25 + 16) = v21;
        v19((v25 + v23), v22, v8);
        v26 = objc_opt_self();
        aBlock[4] = sub_1003407AC;
        aBlock[5] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10044EA48;
        aBlock[3] = &unk_100720E00;
        v27 = _Block_copy(aBlock);

        [v26 configurationWithIdentifier:0 previewProvider:0 actionProvider:v27];

        _Block_release(v27);

        (*(v24 + 8))(v20, v8);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Class sub_1003407AC(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTemplatesListViewModel.Template() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10033F988(a1, v4, v5);
}

uint64_t sub_100340838(char *a1)
{
  type metadata accessor for TTRTemplatesListViewModel.Template();

  return sub_10033E414(a1);
}

uint64_t sub_1003408C4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TTRTemplatesListViewModel.Template() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

unint64_t sub_10034094C()
{
  result = qword_1007758A0;
  if (!qword_1007758A0)
  {
    sub_10005D20C(&unk_10077FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007758A0);
  }

  return result;
}

uint64_t sub_1003409B0(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRTemplatesListViewModel.Template() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_10033E6FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100340AC8(uint64_t a1, uint64_t a2, void **a3)
{
  sub_100058000(&qword_10077FBE8);

  return sub_10033CF30(a1, a2, a3);
}

uint64_t sub_100340B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077FBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100340BD4()
{
  v1 = *(sub_100058000(&unk_10077FBB0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10033C47C(v2, v3);
}

uint64_t sub_100340C44(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100340D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for IndexPath() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_10033B0BC(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100340DAC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100058000(&qword_10077FC30) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001AA3C;

  return sub_10033B49C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100340F20()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100341064, v3, v2);
}

uint64_t sub_100341064()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);

  v3 = *(v0 + 130);
  static Date.now.getter();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  swift_beginAccess();
  sub_10000AE84(v1 + 32, *(v1 + 56));
  dispatch thunk of TTRICloudIsOffUserDefaults.lastICloudIsOffPromptDate.setter();
  swift_endAccess();
  if (v3 == 2)
  {
    v5 = *(v0 + 104);
  }

  else
  {
    v5 = *(v0 + 104);
    if (v3)
    {
      sub_1005AD97C();
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10034119C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_1003412F8, v4, v3);
}

uint64_t sub_1003412F8()
{
  *(v0 + 32) = *(v0 + 80);
  v1 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
  *(v0 + 136) = v1;
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_1003413BC;
  v3 = *(v0 + 128);

  return TTRPrivacyChecker.checkAndPromptAccessForRemindersWithLocation(with:)(v1, v3, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1003413BC()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100341518, v4, v3);
}

uint64_t sub_100341518()
{

  sub_100003540(0, &qword_10077FE10);
  static CNContactStore.requestContactsAuthorizationIfNeeded()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100341598()
{
  v1 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2 - 8];
  v4 = type metadata accessor for TTRListOrCustomSmartList();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v10 = &v15[-v9 - 8];
  v11 = *sub_10000C36C((v0 + 48), *(v0 + 72));
  if (!sub_10001D354())
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_6;
  }

  swift_beginAccess();
  sub_100010540(v11 + 96, v15);
  sub_100396F88(v3);
  sub_100015124(v15);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_6:
    sub_1000079B4(v3, &unk_10076DF20);
    return 0;
  }

  v12 = *(v5 + 32);
  v12(v10, v3, v4);
  v12(v8, v10, v4);
  if ((*(v5 + 88))(v8, v4) == enum case for TTRListOrCustomSmartList.list(_:))
  {
    (*(v5 + 96))(v8, v4);
    return *v8;
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t sub_100341810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_1003418AC, v8, v7);
}

uint64_t sub_1003418AC()
{
  sub_10000C36C((v0[3] + 48), *(v0[3] + 72));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100341968;
  v3 = v0[4];
  v2 = v0[5];

  return sub_1003951F8(v3, v2);
}

uint64_t sub_100341968(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);

  *v4 = a1;
  v5 = *(v3 + 64);
  v6 = *(v3 + 56);

  return _swift_task_switch(sub_1001E2124, v6, v5);
}

id *sub_100341AAC()
{
  sub_10003B788((v0 + 2));
  swift_unknownObjectRelease();
  sub_100004758((v0 + 6));

  return v0;
}

uint64_t sub_100341B24()
{
  sub_100341AAC();

  return swift_deallocClassInstance();
}

BOOL sub_100341B68(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for URL();
  v46 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v43 - v6;
  v8 = sub_100058000(&unk_100792F80);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for REMNavigationSpecifier();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v11);
  v43 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v47 = &v43 - v14;
  if (qword_100767210 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_10077FC40);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  v17 = URL.absoluteString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v19 = v46;
  v20 = *(v46 + 16);
  v20(v7, a1, v3);
  REMNavigationSpecifier.init(_:)();
  v21 = (*(v48 + 48))(v10, 1, v49);
  v22 = v21;
  if (v21 == 1)
  {
    v32 = v3;
    sub_1000079B4(v10, &unk_100792F80);
    v33 = v44;
    v20(v44, a1, v32);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v37;
      *v36 = 136315138;
      v38 = URL.absoluteString.getter();
      v40 = v39;
      (*(v19 + 8))(v33, v32);
      v41 = sub_100004060(v38, v40, &v50);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to parse navigation specifier from url - failed to navigate to url {url: %s}", v36, 0xCu);
      sub_100004758(v37);
    }

    else
    {

      (*(v19 + 8))(v33, v32);
    }
  }

  else
  {
    v23 = v47;
    v24 = v48;
    v25 = *(v48 + 32);
    LODWORD(v46) = v21;
    v26 = v49;
    v25(v47, v10, v49);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = v43;
    (*(v24 + 16))(v43, v23, v26);
    v29 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    v25((v30 + v29), v28, v26);
    *(v30 + ((v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_100371F60;
    *(v31 + 24) = v30;

    TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

    v22 = v46;
    (*(v24 + 8))(v47, v26);
  }

  return v22 != 1;
}

uint64_t sub_100342154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_1003423DC(a2, a3);
  }

  else
  {
    v5 = type metadata accessor for PromiseError();
    sub_10036ED08(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for PromiseError.abandoned(_:), v5);
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1003423DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMNavigationSpecifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767210 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_10077FC40);
  v14 = *(v10 + 16);
  v32 = a1;
  v14(v12, a1, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = a2;
    v27 = v18;
    v33 = v18;
    *v17 = 136315138;
    REMNavigationSpecifier.url.getter();
    sub_10036ED08(&unk_100792F90, &type metadata accessor for URL);
    v19 = v31;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v3;
    v22 = v21;
    (*(v30 + 8))(v8, v19);
    (*(v10 + 8))(v12, v9);
    v23 = sub_100004060(v20, v22, &v33);
    v3 = v28;

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "TTRIRootPresenter: handle navigation specifier: %s", v17, 0xCu);
    sub_100004758(v27);
    a2 = v29;
  }

  else
  {

    v24 = (*(v10 + 8))(v12, v9);
  }

  __chkstk_darwin(v24);
  *(&v26 - 4) = v32;
  *(&v26 - 3) = v3;
  *(&v26 - 2) = a2;
  return firstly<A>(closure:)();
}

uint64_t sub_100342760(uint64_t a1, void *a2, uint64_t a3)
{
  v196 = a3;
  v181 = a2;
  v185 = type metadata accessor for URL();
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v183 = &v180 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v189 = *(v188 - 8);
  v4 = __chkstk_darwin(v188);
  v182 = &v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v187 = &v180 - v6;
  v195 = type metadata accessor for REMNavigationSpecifier();
  v194 = *(v195 - 8);
  v7 = *(v194 + 64);
  v8 = __chkstk_darwin(v195);
  v190 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v197 = &v180 - v9;
  v193 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v10 = __chkstk_darwin(v193);
  v180 = (&v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v191 = (&v180 - v13);
  __chkstk_darwin(v12);
  v192 = (&v180 - v14);
  v15 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v15 - 8);
  v17 = &v180 - v16;
  v18 = sub_100058000(&unk_10076BB50);
  v19 = __chkstk_darwin(v18 - 8);
  v186 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  *&v198 = &v180 - v22;
  __chkstk_darwin(v21);
  *&v200 = &v180 - v23;
  v24 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v180 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003540(0, &qword_100777780);
  *v31 = static OS_dispatch_queue.main.getter();
  (*(v29 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v28);
  v32 = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v31, v28);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  TTRUserActivityWindowSceneRestorationPayload.state.getter();
  v33 = (*(v25 + 88))(v27, v24);
  if (v33 == enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedListID(_:))
  {
    (*(v25 + 96))(v27, v24);
    v34 = *v27;
    v35 = sub_100058000(&qword_10076E920);
    sub_100371B24(v27 + *(v35 + 48), v200);
    v36 = v199;
    v37 = v199[4];
    swift_getObjectType();
    *&v203 = v37;
    swift_unknownObjectRetain();
    v38 = dispatch thunk of TTRItemFetchingInteractorCapability.fetchListSynchronously(for:)();
    swift_unknownObjectRelease();
    if (v38)
    {
      v39 = [v38 isGroup];
      swift_getObjectType();
      *v17 = v34;
      if (v39)
      {
        v17[8] = 1;
        v40 = enum case for TTRListType.list(_:);
        v41 = type metadata accessor for TTRListType();
        v42 = *(v41 - 8);
        (*(v42 + 104))(v17, v40, v41);
        (*(v42 + 56))(v17, 0, 1, v41);
        v43 = v34;
        dispatch thunk of TTRPerWindowLastSelectedListStorage.lastSelectedListInWindow.setter();
        v44 = *sub_10000C36C(v36 + 6, v36[9]);
        v45 = [v38 store];
        v46 = *(v44 + 56);
        v47 = v193;
        v48 = v192;
        sub_10000794C(v200, v192 + *(v193 + 20), &unk_10076BB50);
        *v48 = v45;
        v49 = v47[6];
        v198 = *(v44 + 64);
        v50 = v198;
        *(v48 + v49) = v46;
        *(v48 + v47[7]) = v50;
        *(v48 + v47[8]) = 0;
        type metadata accessor for TTRIShowGroupAssembly();

        swift_unknownObjectRetain();
        v51 = sub_1003A3078(&v207, v48, v38, v36);
        sub_10000B0D8(&v207, &v203);
        v206 = 2;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v53 = Strong;
          v54 = *(Strong + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController);
          sub_100058000(&qword_10076B780);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_10062D420;
          *(v55 + 32) = v51;
          sub_100003540(0, &qword_10076AD28);
          v56 = v51;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v54 setViewControllers:isa animated:0];

          sub_1002FB7EC(0);
        }

        sub_10000E224(v201);
        if (v202)
        {
          sub_1000079B4(v201, &unk_100792FE0);
          v58 = swift_unknownObjectWeakLoadStrong();

          if (v58)
          {
            swift_unknownObjectRelease();
          }

          sub_100079664(v192);
        }

        else
        {
          sub_100079664(v192);

          sub_1000079B4(v201, &unk_100792FE0);
        }

        swift_beginAccess();
        sub_100371B94(&v203, v44 + 96);
        swift_endAccess();

        sub_100004758(&v207);
        sub_1000079B4(v200, &unk_10076BB50);
        return 1;
      }

      v17[8] = 0;
      v121 = enum case for TTRListType.list(_:);
      v122 = type metadata accessor for TTRListType();
      v123 = *(v122 - 8);
      (*(v123 + 104))(v17, v121, v122);
      v68 = 1;
      (*(v123 + 56))(v17, 0, 1, v122);
      v124 = v34;
      dispatch thunk of TTRPerWindowLastSelectedListStorage.lastSelectedListInWindow.setter();
      sub_10000C36C(v36 + 6, v36[9]);
      v125 = v200;
      sub_1003935C0(v38, v200, v36, &off_100721110, &v203);

      sub_100004758(&v203);
      v126 = v125;
      goto LABEL_37;
    }

    v109 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
    v110 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
    v111 = v197;
    (*(*(v110 - 8) + 104))(v197, v109, v110);
    v112 = v194;
    v113 = v195;
    (*(v194 + 104))(v111, enum case for REMNavigationSpecifier.root(_:), v195);
    v114 = swift_allocObject();
    swift_weakInit();
    v115 = v190;
    (*(v112 + 16))(v190, v111, v113);
    v116 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v117 = (v7 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
    v118 = swift_allocObject();
    *(v118 + 16) = v114;
    (*(v112 + 32))(v118 + v116, v115, v113);
    *(v118 + v117) = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = sub_100371F60;
    *(v119 + 24) = v118;

    TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

    (*(v112 + 8))(v111, v113);
    v120 = v200;
LABEL_29:
    sub_1000079B4(v120, &unk_10076BB50);

    return 1;
  }

  if (v33 == enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedCustomSmartListID(_:))
  {
    (*(v25 + 96))(v27, v24);
    v59 = *v27;
    v60 = sub_100058000(&qword_10076E920);
    v61 = v198;
    sub_100371B24(v27 + *(v60 + 48), v198);
    v62 = v199;
    v63 = v199[4];
    swift_getObjectType();
    *&v203 = v63;
    swift_unknownObjectRetain();
    v64 = dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartListSynchronously(for:)();
    swift_unknownObjectRelease();
    if (v64)
    {
      swift_getObjectType();
      *v17 = v59;
      v65 = enum case for TTRListType.customSmartList(_:);
      v66 = type metadata accessor for TTRListType();
      v67 = *(v66 - 8);
      (*(v67 + 104))(v17, v65, v66);
      v68 = 1;
      (*(v67 + 56))(v17, 0, 1, v66);
      v69 = v59;
      dispatch thunk of TTRPerWindowLastSelectedListStorage.lastSelectedListInWindow.setter();
      v70 = *sub_10000C36C(v62 + 6, v62[9]);
      v71 = [v64 store];
      v72 = *(v70 + 56);
      v73 = v193;
      v74 = v191;
      sub_10000794C(v198, v191 + *(v193 + 20), &unk_10076BB50);
      *v74 = v71;
      v75 = v73[6];
      v200 = *(v70 + 64);
      v76 = v200;
      *(v74 + v75) = v72;
      *(v74 + v73[7]) = v76;
      *(v74 + v73[8]) = 0;
      type metadata accessor for TTRIShowCustomSmartListAssembly();

      swift_unknownObjectRetain();
      v77 = sub_1004F97FC(&v207, v74, v64, v62, &off_100721100, 1);
      sub_10000B0D8(&v207, &v203);
      v206 = 1;
      v78 = swift_unknownObjectWeakLoadStrong();
      if (v78)
      {
        v79 = v78;
        v80 = *(v78 + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController);
        sub_100058000(&qword_10076B780);
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_10062D420;
        *(v81 + 32) = v77;
        sub_100003540(0, &qword_10076AD28);
        v82 = v77;
        v83 = Array._bridgeToObjectiveC()().super.isa;

        [v80 setViewControllers:v83 animated:0];

        sub_1002FB7EC(0);
      }

      sub_10000E224(v201);
      if (v202)
      {
        sub_1000079B4(v201, &unk_100792FE0);
        v84 = swift_unknownObjectWeakLoadStrong();

        if (v84)
        {
          swift_unknownObjectRelease();
        }

        sub_100079664(v191);
      }

      else
      {
        sub_100079664(v191);

        sub_1000079B4(v201, &unk_100792FE0);
      }

      swift_beginAccess();
      sub_100371B94(&v203, v70 + 96);
      swift_endAccess();

      sub_100004758(&v207);
      v126 = v198;
LABEL_37:
      sub_1000079B4(v126, &unk_10076BB50);
      return v68;
    }

    v128 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
    v129 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
    v130 = v197;
    (*(*(v129 - 8) + 104))(v197, v128, v129);
    v131 = v194;
    v132 = v130;
    v133 = v195;
    (*(v194 + 104))(v130, enum case for REMNavigationSpecifier.root(_:), v195);
    v134 = swift_allocObject();
    swift_weakInit();
    v135 = v190;
    (*(v131 + 16))(v190, v132, v133);
    v136 = (*(v131 + 80) + 24) & ~*(v131 + 80);
    v137 = (v7 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
    v138 = swift_allocObject();
    *(v138 + 16) = v134;
    (*(v131 + 32))(v138 + v136, v135, v133);
    *(v138 + v137) = 0;
    v139 = swift_allocObject();
    *(v139 + 16) = sub_100371F60;
    *(v139 + 24) = v138;

    TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

    (*(v131 + 8))(v197, v133);
    v120 = v61;
    goto LABEL_29;
  }

  if (v33 != enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:))
  {
    if (v33 == enum case for TTRUserActivityWindowSceneRestorationPayload.State.search(_:))
    {
      goto LABEL_39;
    }

    if (v33 == enum case for TTRUserActivityWindowSceneRestorationPayload.State.tagged(_:))
    {
      (*(v25 + 96))(v27, v24);
      v127 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v127 - 8) + 8))(v27, v127);
LABEL_40:
      v151 = v197;
      TTRUserActivityWindowSceneRestorationPayload.navigationSpecifier.getter();
      v152 = v183;
      REMNavigationSpecifier.url.getter();
      (*(v194 + 8))(v151, v195);
      v68 = sub_100341B68(v152, 0);
      (*(v184 + 8))(v152, v185);
      return v68;
    }

    if (v33 == enum case for TTRUserActivityWindowSceneRestorationPayload.State.reminderDetail(_:))
    {
LABEL_39:
      (*(v25 + 8))(v27, v24);
      goto LABEL_40;
    }

LABEL_60:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_61;
  }

  (*(v25 + 96))(v27, v24);
  v85 = *(sub_100058000(&qword_1007693A0) + 48);
  v86 = v189;
  v87 = v187;
  v88 = v188;
  (*(v189 + 32))(v187, v27, v188);
  v89 = v186;
  sub_100371B24(v27 + v85, v186);
  v90 = v182;
  (*(v86 + 16))(v182, v87, v88);
  v91 = (*(v86 + 88))(v90, v88);
  if (v91 == enum case for TTRListType.PredefinedSmartListType.today(_:))
  {
    v92 = v199;
    v93 = *sub_10000C36C(v199 + 6, v199[9]);
    swift_beginAccess();
    sub_100010540(v93 + 96, &v203);
    if (v206 != 6)
    {
      sub_100015124(&v203);
      v94 = *(v93 + 56);
      v95 = v193;
      v96 = v87;
      v97 = v180;
      sub_10000794C(v89, v180 + *(v193 + 20), &unk_10076BB50);
      v98 = v181;
      *v97 = v181;
      v99 = v95[6];
      v200 = *(v93 + 64);
      v100 = v200;
      *(v97 + v99) = v94;
      *(v97 + v95[7]) = v100;
      *(v97 + v95[8]) = 0;
      type metadata accessor for TTRIShowTodayAssembly();
      v101 = v89;
      v102 = v98;

      swift_unknownObjectRetain();
      v103 = sub_100323FE4(&v207, v97, v92);
      v104 = v208;
      v105 = v209;
      v106 = sub_10000C36C(&v207, v208);
      v204 = v104;
      v205 = *(v105 + 8);
      v107 = sub_1000317B8(&v203);
      (*(*(v104 - 8) + 16))(v107, v106, v104);
      v108 = 6;
LABEL_50:
      v206 = v108;
      sub_1003944FC(&v203, v103);

      sub_100079664(v97);
      sub_1000079B4(v101, &unk_10076BB50);
      (*(v86 + 8))(v96, v88);
      sub_100015124(&v203);
      goto LABEL_51;
    }

    goto LABEL_46;
  }

  v140 = v199;
  if (v91 == enum case for TTRListType.PredefinedSmartListType.scheduled(_:))
  {
    v93 = *sub_10000C36C(v199 + 6, v199[9]);
    swift_beginAccess();
    sub_100010540(v93 + 96, &v203);
    if (v206 != 3)
    {
      sub_100015124(&v203);
      v141 = *(v93 + 56);
      v142 = v193;
      v96 = v87;
      v97 = v180;
      sub_10000794C(v89, v180 + *(v193 + 20), &unk_10076BB50);
      v143 = v181;
      *v97 = v181;
      v144 = v142[6];
      v200 = *(v93 + 64);
      v145 = v200;
      *(v97 + v144) = v141;
      *(v97 + v142[7]) = v145;
      *(v97 + v142[8]) = 0;
      type metadata accessor for TTRIShowScheduledAssembly();
      v101 = v89;
      v146 = v143;

      swift_unknownObjectRetain();
      v103 = sub_100182D54(&v207, v97, v140);
      v147 = v208;
      v148 = v209;
      v149 = sub_10000C36C(&v207, v208);
      v204 = v147;
      v205 = *(v148 + 8);
      v150 = sub_1000317B8(&v203);
      (*(*(v147 - 8) + 16))(v150, v149, v147);
      v108 = 3;
      goto LABEL_50;
    }

LABEL_46:
    sub_100005FD0(&v203, &v207);
    v163 = v208;
    v164 = v209;
    v165 = sub_10000C36C(&v207, v208);
    sub_1003982D4(v165, v93, v163, v164);
    sub_1000079B4(v89, &unk_10076BB50);
    (*(v86 + 8))(v87, v88);
LABEL_51:
    sub_100004758(&v207);
    return 1;
  }

  if (v91 == enum case for TTRListType.PredefinedSmartListType.all(_:))
  {
    v93 = *sub_10000C36C(v199 + 6, v199[9]);
    swift_beginAccess();
    sub_100010540(v93 + 96, &v203);
    if (v206 != 5)
    {
      sub_100015124(&v203);
      v153 = *(v93 + 56);
      v154 = v193;
      v96 = v87;
      v97 = v180;
      sub_10000794C(v89, v180 + *(v193 + 20), &unk_10076BB50);
      v155 = v181;
      *v97 = v181;
      v156 = v154[6];
      v200 = *(v93 + 64);
      v157 = v200;
      *(v97 + v156) = v153;
      *(v97 + v154[7]) = v157;
      *(v97 + v154[8]) = 0;
      type metadata accessor for TTRIShowAllRemindersAssembly();
      v101 = v89;

      swift_unknownObjectRetain();
      v158 = v155;
      v103 = sub_1003F1080(&v207, v97, v140);
      v159 = v208;
      v160 = v209;
      v161 = sub_10000C36C(&v207, v208);
      v204 = v159;
      v205 = *(v160 + 8);
      v162 = sub_1000317B8(&v203);
      (*(*(v159 - 8) + 16))(v162, v161, v159);
      v108 = 5;
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v91 == enum case for TTRListType.PredefinedSmartListType.flagged(_:))
  {
    v93 = *sub_10000C36C(v199 + 6, v199[9]);
    swift_beginAccess();
    sub_100010540(v93 + 96, &v203);
    if (v206 != 4)
    {
      sub_100015124(&v203);
      v167 = *(v93 + 56);
      v168 = v193;
      v96 = v87;
      v97 = v180;
      sub_10000794C(v89, v180 + *(v193 + 20), &unk_10076BB50);
      v169 = v181;
      *v97 = v181;
      v170 = v168[6];
      v200 = *(v93 + 64);
      v171 = v200;
      *(v97 + v170) = v167;
      *(v97 + v168[7]) = v171;
      *(v97 + v168[8]) = 0;
      type metadata accessor for TTRIShowFlaggedAssembly();
      v101 = v89;
      v172 = v169;

      swift_unknownObjectRetain();
      v103 = sub_10028D05C(&v207, v97, v140);
      v173 = v208;
      v174 = v209;
      v175 = sub_10000C36C(&v207, v208);
      v204 = v173;
      v205 = *(v174 + 8);
      v176 = sub_1000317B8(&v203);
      (*(*(v173 - 8) + 16))(v176, v175, v173);
      v108 = 4;
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v91 == enum case for TTRListType.PredefinedSmartListType.assigned(_:))
  {
    v166 = sub_10000C36C(v199 + 6, v199[9]);
    sub_10044ECFC(v181, v89, v140, *v166);
LABEL_58:
    sub_1000079B4(v89, &unk_10076BB50);
    (*(v86 + 8))(v87, v88);
    return 1;
  }

  if (v91 == enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:))
  {
    v178 = sub_10000C36C(v199 + 6, v199[9]);
    sub_10044EAD8(v181, v89, v140, *v178);
    goto LABEL_58;
  }

  if (v91 == enum case for TTRListType.PredefinedSmartListType.completed(_:))
  {
    v179 = sub_10000C36C(v199 + 6, v199[9]);
    sub_10044EF20(v181, v89, v140, *v179);
    goto LABEL_58;
  }

LABEL_61:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100344304()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100344424, v3, v2);
}

uint64_t sub_100344424()
{

  TTRStartupItemQueue.start()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100344490(uint64_t a1, uint64_t *a2, void *a3)
{
  v209 = a3;
  v210 = a2;
  v4 = type metadata accessor for REMAnalyticsEvent();
  v201 = *(v4 - 8);
  v202 = v4;
  __chkstk_darwin(v4);
  v200 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v6 - 8);
  v175 = &v173 - v7;
  v8 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v198 = *(v8 - 8);
  v199 = v8;
  __chkstk_darwin(v8);
  v195 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v180 = *(v181 - 8);
  __chkstk_darwin(v181);
  v179 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v184 = *(v185 - 8);
  v12 = __chkstk_darwin(v185);
  v183 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v13;
  __chkstk_darwin(v12);
  v186 = &v173 - v14;
  v197 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v194 = *(v197 - 8);
  v15 = *(v194 + 64);
  v16 = __chkstk_darwin(v197);
  v193 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v196 = &v173 - v17;
  v18 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v191 = *(v18 - 8);
  v192 = v18;
  v19 = __chkstk_darwin(v18);
  v189 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v20;
  __chkstk_darwin(v19);
  v190 = &v173 - v21;
  v22 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v207 = *(v22 - 8);
  v208 = v22;
  v23 = __chkstk_darwin(v22);
  v205 = &v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v203 = &v173 - v26;
  v204 = v27;
  __chkstk_darwin(v25);
  v206 = &v173 - v28;
  v29 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  __chkstk_darwin(v32);
  v34 = &v173 - v33;
  v35 = type metadata accessor for REMNavigationSpecifier();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = (&v173 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *(v36 + 16);
  v187 = a1;
  v39(v38, a1, v35);
  v40 = (*(v36 + 88))(v38, v35);
  if (v40 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v36 + 96))(v38, v35);
    v209 = *v38;
    v41 = *(sub_100058000(&qword_100777A40) + 48);
    v42 = v210;
    v208 = *(v30 + 32);
    v173 = v29;
    v207 = &v173 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = v34;
    v174 = v34;
    v208(v34, v38 + v41, v29);
    v44 = v42[4];
    swift_getObjectType();
    v211 = v44;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v45 = zalgoIfMain.getter();
    v46 = v207;
    v47 = v43;
    v48 = v173;
    (*(v30 + 16))(v207, v47, v173);
    v49 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v42;
    v208((v50 + v49), v46, v48);

    v51 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v30 + 8))(v174, v48);
    return v51;
  }

  v52 = v210;
  if (v40 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v36 + 96))(v38, v35);
    v53 = *v38;
    v54 = *(sub_100058000(&unk_100793000) + 48);
    v55 = *(v207 + 4);
    v203 = v207 + 32;
    v199 = v55;
    v55(v206, v38 + v54, v208);
    v56 = v52;
    if ((v209 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v57 = sub_100058000(&qword_1007757E8);
      v58 = v200;
      v59 = &v200[v57[12]];
      v60 = v57[16];
      v61 = &v200[v57[20]];
      v62 = enum case for REMUserOperation.widgetShowList(_:);
      v63 = type metadata accessor for REMUserOperation();
      (*(*(v63 - 8) + 104))(v58, v62, v63);
      v64 = type metadata accessor for Date();
      *v59 = 0;
      *(v59 + 1) = 0;
      (*(*(v64 - 8) + 56))(&v58[v60], 1, 1, v64);
      *v61 = 0;
      *(v61 + 1) = 0;
      v66 = v201;
      v65 = v202;
      (*(v201 + 104))(v58, enum case for REMAnalyticsEvent.userOperation(_:), v202);
      REMAnalyticsManager.post(event:)();

      (*(v66 + 8))(v58, v65);
    }

    v67 = v56[4];
    swift_getObjectType();
    v211 = v67;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v68 = zalgoIfMain.getter();
    v70 = v207;
    v69 = v208;
    v71 = *(v207 + 2);
    v72 = v205;
    v210 = v53;
    v73 = v206;
    v71(v205, v206, v208);
    v74 = (v70[80] + 24) & ~v70[80];
    v75 = (v204 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 16) = v56;
    v199(v76 + v74, v72, v69);
    *(v76 + v75) = v209;

    v51 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v70 + 1))(v73, v69);
    return v51;
  }

  v77 = v209;
  if (v40 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v36 + 96))(v38, v35);
    v78 = *v38;
    v79 = sub_100058000(&unk_100793000);
    v80 = *(v207 + 4);
    v81 = v38 + *(v79 + 48);
    v206 = v207 + 32;
    v199 = v80;
    v80(v203, v81, v208);
    v82 = v52;
    if ((v77 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v83 = sub_100058000(&qword_1007757E8);
      v84 = v200;
      v85 = &v200[v83[12]];
      v86 = v83[16];
      v87 = &v200[v83[20]];
      v88 = enum case for REMUserOperation.widgetShowList(_:);
      v89 = type metadata accessor for REMUserOperation();
      (*(*(v89 - 8) + 104))(v84, v88, v89);
      v90 = type metadata accessor for Date();
      *v85 = 0;
      *(v85 + 1) = 0;
      (*(*(v90 - 8) + 56))(&v84[v86], 1, 1, v90);
      *v87 = 0;
      *(v87 + 1) = 0;
      v92 = v201;
      v91 = v202;
      (*(v201 + 104))(v84, enum case for REMAnalyticsEvent.userOperation(_:), v202);
      REMAnalyticsManager.post(event:)();

      (*(v92 + 8))(v84, v91);
    }

    v93 = v82[4];
    swift_getObjectType();
    v211 = v93;
    v94 = v82;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v95 = zalgoIfMain.getter();
    v97 = v207;
    v96 = v208;
    v98 = v205;
    v99 = v203;
    (*(v207 + 2))(v205, v203, v208);
    v100 = (v97[80] + 24) & ~v97[80];
    v101 = swift_allocObject();
    *(v101 + 16) = v94;
    v199(v101 + v100, v98, v96);

    v51 = dispatch thunk of Promise.then<A>(on:closure:)();

    goto LABEL_12;
  }

  if (v40 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v36 + 96))(v38, v35);
    v102 = v198;
    v103 = v195;
    v104 = v38;
    v105 = v199;
    (*(v198 + 32))(v195, v104, v199);
    v106 = sub_10000C36C(v52 + 6, v52[9]);
    __chkstk_darwin(v106);
    *(&v173 - 2) = v107;
    *(&v173 - 1) = v103;
    v51 = firstly<A>(closure:)();
    (*(v102 + 8))(v103, v105);
    return v51;
  }

  if (v40 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v36 + 96))(v38, v35);
    v209 = *v38;
    v109 = *(sub_100058000(&unk_10076DF50) + 48);
    v110 = v194;
    v208 = *(v194 + 32);
    v111 = v196;
    v208(v196, v38 + v109, v197);
    v112 = v52;
    v113 = v52[4];
    swift_getObjectType();
    v211 = v113;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v114 = zalgoIfMain.getter();
    v115 = v193;
    v116 = v111;
    v117 = v197;
    (*(v110 + 16))(v193, v116, v197);
    v118 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v119 = swift_allocObject();
    *(v119 + 16) = v112;
    v208((v119 + v118), v115, v117);

    v51 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v110 + 8))(v196, v117);
    return v51;
  }

  if (v40 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v36 + 96))(v38, v35);
    v209 = *v38;
    v120 = *(sub_100058000(&qword_100777A38) + 48);
    v97 = v191;
    v96 = v192;
    v208 = *(v191 + 4);
    v99 = v190;
    v208(v190, v38 + v120, v192);
    v121 = v52;
    v122 = v52[4];
    swift_getObjectType();
    v211 = v122;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v95 = zalgoIfMain.getter();
    v123 = v189;
    (*(v97 + 2))(v189, v99, v96);
    v124 = (v97[80] + 24) & ~v97[80];
    v125 = swift_allocObject();
    *(v125 + 16) = v121;
    v208((v125 + v124), v123, v96);

LABEL_22:
    v51 = dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_12:

    (*(v97 + 1))(v99, v96);
    return v51;
  }

  if (v40 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v36 + 96))(v38, v35);
    v209 = *v38;
    v126 = *(sub_100058000(&qword_100777A38) + 48);
    v97 = v191;
    v96 = v192;
    v208 = *(v191 + 4);
    v99 = v190;
    v208(v190, v38 + v126, v192);
    v127 = v52;
    v128 = v52[4];
    swift_getObjectType();
    v211 = v128;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v95 = zalgoIfMain.getter();
    v129 = v189;
    (*(v97 + 2))(v189, v99, v96);
    v130 = (v97[80] + 24) & ~v97[80];
    v131 = swift_allocObject();
    *(v131 + 16) = v127;
    v208((v131 + v130), v129, v96);

    goto LABEL_22;
  }

  if (v40 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v210 + 6, v210[9]);
    v51 = sub_100391414(0);
    (*(v36 + 8))(v38, v35);
    return v51;
  }

  if (v40 == enum case for REMNavigationSpecifier.today(_:) || v40 == enum case for REMNavigationSpecifier.scheduled(_:) || v40 == enum case for REMNavigationSpecifier.allReminders(_:) || v40 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_37;
  }

  if (v40 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v36 + 96))(v38, v35);
    v132 = v184;
    v133 = v52;
    v134 = *(v184 + 32);
    v135 = v186;
    v136 = v185;
    v134(v186, v38, v185);
    v137 = *sub_10000C36C(v133 + 6, v133[9]);
    sub_100391414(0);
    v138 = v183;
    (*(v132 + 16))(v183, v135, v136);
    v139 = (*(v132 + 80) + 16) & ~*(v132 + 80);
    v140 = (v182 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
    v141 = swift_allocObject();
    v134((v141 + v139), v138, v136);
    *(v141 + v140) = v137;

    v142 = zalgo.getter();
    v51 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v132 + 8))(v186, v136);
    return v51;
  }

  if (v40 == enum case for REMNavigationSpecifier.assigned(_:) || v40 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_37;
  }

  if (v40 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v36 + 96))(v38, v35);
    v143 = v180;
    v144 = v179;
    v145 = v181;
    (*(v180 + 32))(v179, v38, v181);
    sub_10000C36C(v52 + 6, v52[9]);
    v51 = sub_100369914(v144);
    (*(v143 + 8))(v144, v145);
    return v51;
  }

  if (v40 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_37:
    (*(v36 + 8))(v38, v35);
    v146 = v52;
    if ((v77 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v147 = sub_100058000(&qword_1007757E8);
      v148 = v200;
      v149 = &v200[v147[12]];
      v150 = v147[16];
      v151 = &v200[v147[20]];
      v152 = enum case for REMUserOperation.widgetShowList(_:);
      v153 = type metadata accessor for REMUserOperation();
      (*(*(v153 - 8) + 104))(v148, v152, v153);
      v154 = type metadata accessor for Date();
      *v149 = 0;
      *(v149 + 1) = 0;
      (*(*(v154 - 8) + 56))(&v148[v150], 1, 1, v154);
      *v151 = 0;
      *(v151 + 1) = 0;
      v156 = v201;
      v155 = v202;
      (*(v201 + 104))(v148, enum case for REMAnalyticsEvent.userOperation(_:), v202);
      REMAnalyticsManager.post(event:)();

      (*(v156 + 8))(v148, v155);
    }

    sub_10000C36C(v146 + 6, v146[9]);
    return sub_100361F8C(v187, v77 & 1, sub_1003629B0, &qword_10078A340, &unk_10063C8B0);
  }

  if (v40 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v36 + 96))(v38, v35);
    v157 = v177;
    v158 = v176;
    v159 = v178;
    (*(v177 + 32))(v176, v38, v178);
    v160 = sub_10000C36C(v52 + 6, v52[9]);
    v161 = v52[4];
    swift_getObjectType();
    v211 = v161;
    v162 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v158, v162, v52, *v160);

    v163 = objc_opt_self();
    v164 = String._bridgeToObjectiveC()();
    v165 = [v163 internalErrorWithDebugDescription:v164];

    sub_100058000(&qword_10078A340);
    swift_allocObject();
    v51 = Promise.init(error:)();
    (*(v157 + 8))(v158, v159);
    return v51;
  }

  if (v40 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v210 + 6, v210[9]);
    return firstly<A>(closure:)();
  }

  if (v40 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v166 = type metadata accessor for TaskPriority();
    v167 = v175;
    (*(*(v166 - 8) + 56))(v175, 1, 1, v166);
    type metadata accessor for MainActor();

    v168 = static MainActor.shared.getter();
    v169 = swift_allocObject();
    v169[2] = v168;
    v169[3] = &protocol witness table for MainActor;
    v169[4] = v52;
    sub_10009E31C(0, 0, v167, &unk_10063BD88, v169);

    v170 = objc_opt_self();
    v171 = String._bridgeToObjectiveC()();
    v172 = [v170 internalErrorWithDebugDescription:v171];

    sub_100058000(&qword_10078A340);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100345F60(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v196 = *(v3 - 1);
  v197 = v3;
  __chkstk_darwin(v3);
  v195 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v5 - 8);
  v172 = &v169 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v193 = *(v7 - 8);
  v194 = v7;
  __chkstk_darwin(v7);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v180 = *(v181 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v169 - v13;
  v191 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v189 = *(v191 - 8);
  v14 = *(v189 + 64);
  __chkstk_darwin(v191);
  v188 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v190 = &v169 - v16;
  v187 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v17;
  __chkstk_darwin(v18);
  v185 = &v169 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v202 = *(v20 - 8);
  v203 = v20;
  __chkstk_darwin(v20);
  v200 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v198 = (&v169 - v23);
  v199 = v24;
  __chkstk_darwin(v25);
  v201 = &v169 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v37, v206, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v39 = *(sub_100058000(&qword_100777A40) + 48);
    v204 = *(v28 + 32);
    v170 = v27;
    v203 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v32;
    v171 = v32;
    v204(v32, v37 + v39, v27);
    v41 = v205;
    v42 = v205[4];
    swift_getObjectType();
    v207 = v42;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v43 = zalgoIfMain.getter();
    v44 = v203;
    v45 = v40;
    v46 = v170;
    (*(v28 + 16))(v203, v45, v170);
    v47 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v41;
    v204((v48 + v47), v44, v46);

    sub_100058000(&qword_100775650);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v171, v46);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v37, v33);
    v50 = *v37;
    v51 = *(sub_100058000(&unk_100793000) + 48);
    v52 = *(v202 + 32);
    v206 = (v202 + 32);
    v198 = v52;
    v52(v201, v37 + v51, v203);
    if ((v204 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v53 = sub_100058000(&qword_1007757E8);
      v54 = v195;
      v55 = &v195[v53[12]];
      v56 = v53[16];
      v57 = &v195[v53[20]];
      v58 = enum case for REMUserOperation.widgetShowList(_:);
      v59 = type metadata accessor for REMUserOperation();
      (*(*(v59 - 8) + 104))(v54, v58, v59);
      v60 = type metadata accessor for Date();
      *v55 = 0;
      *(v55 + 1) = 0;
      (*(*(v60 - 8) + 56))(&v54[v56], 1, 1, v60);
      *v57 = 0;
      *(v57 + 1) = 0;
      v62 = v196;
      v61 = v197;
      (*(v196 + 104))(v54, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v62 + 8))(v54, v61);
    }

    v63 = v205;
    v64 = v205[4];
    swift_getObjectType();
    v207 = v64;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v65 = zalgoIfMain.getter();
    v66 = v201;
    v67 = v202;
    v68 = *(v202 + 16);
    v69 = v200;
    v197 = v50;
    v70 = v203;
    v68(v200, v201, v203);
    v71 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v72 = (v199 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v198(v73 + v71, v69, v70);
    *(v73 + v72) = v204;

    sub_100058000(&qword_100775650);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v67 + 8))(v66, v70);
    return v49;
  }

  v74 = v204;
  if (v38 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v75 = *v37;
    v76 = v37 + *(sub_100058000(&unk_100793000) + 48);
    v206 = *(v202 + 32);
    (v206)(v198, v76, v203);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v77 = sub_100058000(&qword_1007757E8);
      v78 = v195;
      v79 = &v195[v77[12]];
      v80 = v77[16];
      v81 = &v195[v77[20]];
      v82 = enum case for REMUserOperation.widgetShowList(_:);
      v83 = type metadata accessor for REMUserOperation();
      (*(*(v83 - 8) + 104))(v78, v82, v83);
      v84 = type metadata accessor for Date();
      *v79 = 0;
      *(v79 + 1) = 0;
      (*(*(v84 - 8) + 56))(&v78[v80], 1, 1, v84);
      *v81 = 0;
      *(v81 + 1) = 0;
      v86 = v196;
      v85 = v197;
      (*(v196 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v86 + 8))(v78, v85);
    }

    v87 = v205;
    v88 = v205[4];
    swift_getObjectType();
    v207 = v88;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v91 = v202;
    v90 = v203;
    v92 = *(v202 + 16);
    v204 = v75;
    v93 = v200;
    v94 = v198;
    v92(v200, v198, v203);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    (v206)(v96 + v95, v93, v90);

    sub_100058000(&qword_100775650);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v204;
    goto LABEL_12;
  }

  if (v38 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v99 = v192;
    v98 = v193;
    v100 = v194;
    (*(v193 + 32))(v192, v37, v194);
    v101 = sub_10000C36C(v205 + 6, v205[9]);
    __chkstk_darwin(v101);
    *(&v169 - 2) = v102;
    *(&v169 - 1) = v99;
    sub_100058000(&qword_100775650);
    v49 = firstly<A>(closure:)();
    (*(v98 + 8))(v99, v100);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v37, v33);
    v103 = *v37;
    v104 = *(sub_100058000(&unk_10076DF50) + 48);
    v105 = v189;
    v106 = v190;
    v206 = *(v189 + 32);
    (v206)(v190, v37 + v104, v191);
    v107 = v205;
    v108 = v205[4];
    swift_getObjectType();
    v207 = v108;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v109 = zalgoIfMain.getter();
    v110 = v188;
    v111 = v106;
    v112 = v191;
    (*(v105 + 16))(v188, v111, v191);
    v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v107;
    (v206)(v114 + v113, v110, v112);

    sub_100058000(&qword_100775650);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v105 + 8))(v190, v112);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v116 = *(sub_100058000(&qword_100777A38) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v116, v187);
    v117 = v205;
    v118 = v205[4];
    swift_getObjectType();
    v207 = v118;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v119 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v120 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v204((v121 + v120), v119, v90);

    sub_100058000(&qword_100775650);
LABEL_22:
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v206;
LABEL_12:

    (*(v91 + 8))(v94, v90);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v122 = *(sub_100058000(&qword_100777A38) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v122, v187);
    v123 = v205;
    v124 = v205[4];
    swift_getObjectType();
    v207 = v124;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v125 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v126 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v123;
    v204((v127 + v126), v125, v90);

    sub_100058000(&qword_100775650);
    goto LABEL_22;
  }

  v128 = v205;
  if (v38 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    v49 = sub_1003917A8(0);
    (*(v34 + 8))(v37, v33);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.today(_:) || v38 == enum case for REMNavigationSpecifier.scheduled(_:) || v38 == enum case for REMNavigationSpecifier.allReminders(_:) || v38 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v37, v33);
    v129 = v180;
    v130 = *(v180 + 32);
    v131 = v182;
    v132 = v181;
    v130(v182, v37, v181);
    v133 = *sub_10000C36C(v128 + 6, v128[9]);
    v206 = sub_100391414(0);
    v134 = v179;
    (*(v129 + 16))(v179, v131, v132);
    v135 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v136 = swift_allocObject();
    v130((v136 + v135), v134, v132);
    *(v136 + ((v11 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v133;

    v137 = zalgo.getter();
    sub_100058000(&qword_100775650);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v129 + 8))(v182, v132);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.assigned(_:) || v38 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v37, v33);
    v138 = v177;
    v139 = v176;
    v140 = v37;
    v141 = v178;
    (*(v177 + 32))(v176, v140, v178);
    sub_10000C36C(v128 + 6, v128[9]);
    v49 = sub_100369BFC(v139);
    (*(v138 + 8))(v139, v141);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v37, v33);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v142 = sub_100058000(&qword_1007757E8);
      v143 = v195;
      v144 = &v195[v142[12]];
      v145 = v142[16];
      v146 = &v195[v142[20]];
      v147 = enum case for REMUserOperation.widgetShowList(_:);
      v148 = type metadata accessor for REMUserOperation();
      (*(*(v148 - 8) + 104))(v143, v147, v148);
      v149 = type metadata accessor for Date();
      *v144 = 0;
      *(v144 + 1) = 0;
      (*(*(v149 - 8) + 56))(&v143[v145], 1, 1, v149);
      *v146 = 0;
      *(v146 + 1) = 0;
      v151 = v196;
      v150 = v197;
      (*(v196 + 104))(v143, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v151 + 8))(v143, v150);
    }

    sub_10000C36C(v128 + 6, v128[9]);
    return sub_100361F8C(v206, v74 & 1, sub_100363730, &qword_10077FD80, &unk_100648790);
  }

  if (v38 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v37, v33);
    v152 = v174;
    v153 = v173;
    v154 = v175;
    (*(v174 + 32))(v173, v37, v175);
    v155 = sub_10000C36C(v128 + 6, v128[9]);
    v156 = v128[4];
    swift_getObjectType();
    v207 = v156;
    v157 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v153, v157, v128, *v155);

    v158 = objc_opt_self();
    v159 = String._bridgeToObjectiveC()();
    v160 = [v158 internalErrorWithDebugDescription:v159];

    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    v49 = Promise.init(error:)();
    (*(v152 + 8))(v153, v154);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    sub_100058000(&qword_100775650);
    return firstly<A>(closure:)();
  }

  if (v38 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v161 = type metadata accessor for TaskPriority();
    v162 = v172;
    (*(*(v161 - 8) + 56))(v172, 1, 1, v161);
    type metadata accessor for MainActor();
    v163 = v205;

    v164 = static MainActor.shared.getter();
    v165 = swift_allocObject();
    v165[2] = v164;
    v165[3] = &protocol witness table for MainActor;
    v165[4] = v163;
    sub_10009E31C(0, 0, v162, &unk_10063BE20, v165);

    v166 = objc_opt_self();
    v167 = String._bridgeToObjectiveC()();
    v168 = [v166 internalErrorWithDebugDescription:v167];

    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}