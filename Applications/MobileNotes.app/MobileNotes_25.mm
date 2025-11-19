unint64_t sub_100373498()
{
  result = qword_1006C5160;
  if (!qword_1006C5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5160);
  }

  return result;
}

uint64_t sub_10037354C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DeleteTagsIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = type metadata accessor for ConfirmationActionName();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for ConfirmationConditions();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = type metadata accessor for IntentDialog();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for TagEntity();
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[30] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[31] = v10;
  v4[32] = v9;

  return _swift_task_switch(sub_1003737A0, v10, v9);
}

uint64_t sub_1003737A0()
{
  v1 = *(v0 + 136);
  if (!v1)
  {

    type metadata accessor for ICError(0);
    *(v0 + 64) = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_100375414(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
LABEL_7:

    v14 = *(v0 + 8);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v2 ic_viewControllerManager];
  *(v0 + 264) = v3;
  if (!v3)
  {

    type metadata accessor for ICError(0);
    *(v0 + 80) = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_100375414(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    goto LABEL_7;
  }

  v4 = v3;
  v5 = v2;
  v6 = [v4 noteEditorViewController];
  v7 = [v6 eventReporter];

  v8 = type metadata accessor for TagDeletionAlertController();
  v9 = objc_allocWithZone(v8);
  v10 = objc_opt_self();
  v11 = [v10 sharedContext];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 workerManagedObjectContext];
  }

  else
  {
    v13 = 0;
  }

  *&v9[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_workerContext] = v13;
  v16 = [v10 sharedContext];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 managedObjectContext];
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v0 + 136);
  *&v9[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_viewContext] = v18;
  v20 = &v9[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_deletionMethod];
  *v20 = 0;
  v20[8] = 0;
  v9[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_shouldSendNotification] = 1;
  *&v9[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_viewControllerManager] = v4;
  *&v9[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_window] = v19;
  *&v9[OBJC_IVAR____TtC11MobileNotes26TagDeletionAlertController_eventReporter] = v7;
  *v20 = 5;
  v20[8] = 0;
  *(v0 + 40) = v9;
  *(v0 + 48) = v8;
  v53 = objc_msgSendSuper2((v0 + 40), "init");
  *(v0 + 272) = v53;
  IntentParameter.wrappedValue.getter();
  v21 = *(v0 + 88);
  v22 = v21[2];
  v23 = _swiftEmptyArrayStorage;
  if (v22)
  {
    v24 = *(v0 + 224);
    v54 = *(v0 + 216);
    specialized ContiguousArray.reserveCapacity(_:)();
    v25 = 0;
    v55 = v24;
    v26 = v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    while (v25 < v21[2])
    {
      sub_10018F484(&v26[*(v55 + 72) * v25], *(v0 + 232));
      AppDependency.wrappedValue.getter();
      v27 = *(v0 + 96);
      URL._bridgeToObjectiveC()(*(v54 + 20));
      v29 = v28;
      v30 = [v27 managedObjectIDForURIRepresentation:v28];

      if (!v30)
      {
        goto LABEL_44;
      }

      v31 = [v27 managedObjectContextForObjectID:v30];
      if (!v31)
      {
        goto LABEL_45;
      }

      v36 = v31;
      ++v25;
      v37 = *(v0 + 232);
      v23 = [v31 objectWithID:v30];

      sub_10018F4E8(v37);
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v22 == v25)
      {

        v21 = _swiftEmptyArrayStorage;
        v23 = _swiftEmptyArrayStorage;
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_23:
  *(v0 + 280) = _swiftEmptyArrayStorage;
  v38 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C63E0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v40 = [v38 smartFoldersThatWillBeDeletedAfterDeletingHashtags:isa];

  sub_1000054A4(0, &qword_1006BF450);
  sub_10029C908();
  v41 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v41 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_25:
      v22 = sub_1003751A8(v41, sub_1001CDCFC, sub_1001CA19C);

      if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
      {
        v42 = *(v22 + 2);
        if (!v42)
        {
LABEL_39:

          v47 = _swiftEmptyArrayStorage;
          goto LABEL_40;
        }

LABEL_28:
        v31 = specialized ContiguousArray.reserveCapacity(_:)();
        if (v42 < 0)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          return AppIntent.requestConfirmation(conditions:actionName:dialog:)(v31, v32, v33, v34, v35);
        }

        v43 = 0;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v44 = *&v22[8 * v43 + 32];
          }

          v45 = v44;
          ++v43;
          v46 = [v44 objectID];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v42 != v43);

        v47 = v23;
        v23 = _swiftEmptyArrayStorage;
LABEL_40:
        *(v0 + 288) = v47;
        v51 = *(v0 + 136);
        v56 = *(v0 + 120);
        sub_10029A860(v47, v21, *(v0 + 208));
        *(v0 + 16) = v56;
        *(v0 + 32) = v51;
        *(v0 + 104) = v23;
        sub_100375414(&qword_1006C5178, &type metadata accessor for ConfirmationConditions);
        sub_10015DA04(&qword_1006C5180);
        sub_1000060B4(&qword_1006C5188, &qword_1006C5180);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        static ConfirmationActionName.continue.getter();
        v52 = swift_task_alloc();
        *(v0 + 296) = v52;
        v35 = sub_10002098C();
        *v52 = v0;
        v52[1] = sub_10037409C;
        v33 = *(v0 + 208);
        v31 = *(v0 + 184);
        v32 = *(v0 + 160);
        v34 = &type metadata for DeleteTagsIntent;

        return AppIntent.requestConfirmation(conditions:actionName:dialog:)(v31, v32, v33, v34, v35);
      }

LABEL_38:
      v42 = _CocoaArrayWrapper.endIndex.getter();
      if (!v42)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }
  }

  else if (*(v41 + 16))
  {
    goto LABEL_25;
  }

  sub_10029AE74(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);

  v49 = *(v0 + 264);
  v48 = *(v0 + 272);
  v50 = *(v0 + 136);
  static IntentResult.result<>()();

  v14 = *(v0 + 8);
LABEL_8:

  return v14();
}

uint64_t sub_10037409C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = v2[22];
    v3 = v2[23];
    v6 = v2[20];
    v5 = v2[21];
    v7 = v2[18];
    v8 = v2[19];

    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v3, v5);
    v9 = v2[31];
    v10 = v2[32];
    v11 = sub_100374354;
  }

  else
  {
    v13 = v2[22];
    v12 = v2[23];
    v14 = v2[21];
    (*(v2[19] + 8))(v2[20], v2[18]);
    (*(v13 + 8))(v12, v14);
    v9 = v2[31];
    v10 = v2[32];
    v11 = sub_100374248;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100374248()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];

  sub_10029AE74(v2, v1);

  (*(v4 + 8))(v3, v5);
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[17];
  static IntentResult.result<>()();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100374354()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v0[17];

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100374438()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static DeleteTagsIntent.title);
  sub_10002597C(v6, static DeleteTagsIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t DeleteTagsIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC810 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static DeleteTagsIntent.title);
}

uint64_t static DeleteTagsIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC810 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static DeleteTagsIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteTagsIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static DeleteTagsIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C5190);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C5198);
  __chkstk_darwin(v1);
  sub_10002098C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206574656C6544;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C51A0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x7367617420;
  v3._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

void (*DeleteTagsIntent.entities.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9E0;
}

uint64_t sub_100374C44()
{
  v0 = sub_10015DA04(&qword_1006C5190);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C5198);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206574656C6544;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C51A0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x7367617420;
  v3._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100374DEC(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A600;

  return DeleteTagsIntent.perform()(a1, v4, v5, v6);
}

uint64_t sub_100374EA0@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes16DeleteTagsIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_100374EE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1000054A4(0, &qword_1006C5F80);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10015DA04(&unk_1006BD390);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100374FF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10015DA04(&unk_1006BD390);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_1003751A8(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_10019E530();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return a2;
}

void *sub_100375268(unint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = a2(v3, 0);

    specialized _ArrayBuffer._copyContents(initializing:)();
    v5 = v4;

    if (v5 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return a2;
}

uint64_t (*sub_10037530C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100375ACC;
  }

  __break(1u);
  return result;
}

void (*sub_10037538C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10037540C;
  }

  __break(1u);
  return result;
}

uint64_t sub_100375414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s11MobileNotes16DeleteTagsIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v26 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v23 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v24 = v23 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23[1] = sub_10015DA04(&qword_1006BCB00);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v24;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v32 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v25, 1, 1, v19);
  v20(v26, 1, 1, v19);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_100375414(&qword_1006BCB08, type metadata accessor for TagEntity);
  v21 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&qword_1006C34B0);
  v30 = 0xD000000000000021;
  v31 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v21;
}

unint64_t sub_1003759E4()
{
  result = qword_1006C51A8;
  if (!qword_1006C51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C51A8);
  }

  return result;
}

uint64_t OpenAttachmentIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentEntity();
  __chkstk_darwin(v2 - 8);
  sub_100311C5C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1001EAA40(a1);
}

uint64_t sub_100375B70()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static OpenAttachmentIntent.title);
  sub_10002597C(v6, static OpenAttachmentIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenAttachmentIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC818 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static OpenAttachmentIntent.title);
}

uint64_t static OpenAttachmentIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC818 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static OpenAttachmentIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenAttachmentIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static OpenAttachmentIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C51D0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C51D8);
  __chkstk_darwin(v1);
  sub_100020F2C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x656874206E65704FLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C51E0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x6D68636174746120;
  v3._object = 0xEB00000000746E65;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*OpenAttachmentIntent.target.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*OpenAttachmentIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_100376408(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentEntity();
  __chkstk_darwin(v2 - 8);
  sub_100311C5C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1001EAA40(a1);
}

uint64_t (*sub_100376498(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t sub_10037650C()
{
  v0 = sub_10015DA04(&qword_1006C51D0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C51D8);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x656874206E65704FLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C51E0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x6D68636174746120;
  v3._object = 0xEB00000000746E65;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1003766BC@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes20OpenAttachmentIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t _s11MobileNotes20OpenAttachmentIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v26 - v5;
  v6 = sub_10015DA04(&unk_1006BCD50);
  __chkstk_darwin(v6 - 8);
  v28 = &v26 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v27 = &v26 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v26 = sub_10015DA04(&unk_1006C6BF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v27;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for AttachmentEntity();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_100376EE8(&qword_1006BCCF0);
  v24 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&unk_1006BCA40);
  v34 = 0xD000000000000024;
  v35 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  v34 = 0xD000000000000021;
  v35 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v24;
}

unint64_t sub_100376D94(uint64_t a1)
{
  result = sub_100376DBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100376DBC()
{
  result = qword_1006C5218;
  if (!qword_1006C5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5218);
  }

  return result;
}

unint64_t sub_100376E14()
{
  result = qword_1006C5220;
  if (!qword_1006C5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5220);
  }

  return result;
}

uint64_t sub_100376EE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttachmentEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100376F2C()
{
  sub_10015DA04(&qword_1006C5278);
  v0 = swift_allocObject();
  *&result = 7;
  *(v0 + 16) = xmmword_100539C50;
  *(v0 + 32) = &_s15ApplicationMenuVN;
  *(v0 + 40) = &off_10065CE80;
  *(v0 + 48) = &_s8FileMenuVN;
  *(v0 + 56) = &off_10065C3C0;
  *(v0 + 64) = &_s8EditMenuVN;
  *(v0 + 72) = &off_100650570;
  *(v0 + 80) = &_s10FormatMenuVN;
  *(v0 + 88) = &off_1006603C8;
  *(v0 + 96) = &_s8ViewMenuVN;
  *(v0 + 104) = &off_1006555F8;
  *(v0 + 112) = &_s10WindowMenuVN;
  *(v0 + 120) = &off_1006556F0;
  *(v0 + 128) = &_s16KeyboardCommandsVN;
  *(v0 + 136) = &off_1006540A8;
  qword_1006EF818 = v0;
  return result;
}

ICApplicationMainMenu __swiftcall ICApplicationMainMenu.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_100377104()
{
  v0 = objc_opt_self();
  v1 = &selRef_setPrintPageRenderer_;
  v2 = [v0 sharedInstance];
  if (!v2)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v3 = v2;
  v4 = [v2 viewControllerManagers];

  if (!v4)
  {
    return;
  }

  sub_1000054A4(0, &qword_1006BF348);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = v5 >> 62;
  if (v5 >> 62)
  {
LABEL_37:
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_32;
    }

LABEL_5:
    sub_10015DA04(&qword_1006C5280);
    sub_100377548();
    Collection.only.getter();
    if (v23)
    {
LABEL_6:

      return;
    }

    v7 = [v0 v1[440]];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 mainWindowIdentifier];

      if (v9)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        v12 = v5 & 0xFFFFFFFFFFFFFF8;
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v22 = 0;
        v11 = 0;
        v12 = v5 & 0xFFFFFFFFFFFFFF8;
        if (!v6)
        {
LABEL_10:
          v13 = *(v12 + 16);
          if (v13)
          {
LABEL_11:
            v6 = 0;
            while (1)
            {
              if ((v5 & 0xC000000000000001) != 0)
              {
                v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_40;
                }

                v14 = *(v5 + 8 * v6 + 32);
              }

              v15 = v14;
              v0 = (v6 + 1);
              if (__OFADD__(v6, 1))
              {
                __break(1u);
                goto LABEL_37;
              }

              v16 = [v14 window];
              if (v16 && (v1 = v16, v17 = [(SEL *)v16 windowIdentifier], v1, v17))
              {
                v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v1 = v19;

                if (v11)
                {
                  if (v18 == v22 && v11 == v1)
                  {

                    goto LABEL_6;
                  }

                  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v21)
                  {

                    goto LABEL_6;
                  }
                }

                else
                {
                }
              }

              else if (!v11)
              {
                goto LABEL_6;
              }

              ++v6;
              if (v0 == v13)
              {
                goto LABEL_31;
              }
            }
          }

          goto LABEL_31;
        }
      }

      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13)
      {
        goto LABEL_11;
      }

LABEL_31:

      goto LABEL_32;
    }

LABEL_41:
    __break(1u);
    return;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_5;
  }

LABEL_32:
}

uint64_t sub_100377420(uint64_t result)
{
  if (result)
  {
    v1 = qword_1006BC820;
    swift_unknownObjectRetain();
    if (v1 != -1)
    {
      swift_once();
    }

    v2 = qword_1006EF818;
    v3 = *(qword_1006EF818 + 16);
    if (v3)
    {

      v4 = v2 + 40;
      do
      {
        v5 = *(v4 - 8);
        v6 = *v4;
        v7 = *(*v4 + 8);
        v8 = swift_unknownObjectRetain();
        v7(v8, v5, v6);
        swift_unknownObjectRelease();
        v4 += 16;
        --v3;
      }

      while (v3);
      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_100377548()
{
  result = qword_1006C5288;
  if (!qword_1006C5288)
  {
    sub_10017992C(&qword_1006C5280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5288);
  }

  return result;
}

uint64_t NoteEntity.init(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for NoteEntity(0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[10] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v3[11] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100377724, 0, 0);
}

uint64_t sub_100377724()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v30 = v0[5];
  v29 = v0[4];
  v5 = v0[2];
  v4 = v0[3];
  *(v5 + v30[8]) = 0;
  v21 = v30[9];
  v28 = v4;
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v6 = *(v2 + 104);
  v6(v1);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v7 = EntityProperty<>.init(title:)();
  v0[13] = v7;
  *(v5 + v21) = v7;
  v22 = v30[10];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v6)(v1, v31, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v8 = EntityProperty<>.init(title:)();
  v0[14] = v8;
  *(v5 + v22) = v8;
  v23 = v30[11];
  sub_10015DA04(&unk_1006BCD60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v6)(v1, v31, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v9 = EntityProperty<>.init(title:)();
  v0[15] = v9;
  *(v5 + v23) = v9;
  v24 = v30[12];
  sub_10015DA04(&unk_1006C5290);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v6)(v1, v31, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001DEA0(&qword_1006C45A0, type metadata accessor for FolderEntity);
  v10 = EntityProperty<>.init(title:)();
  v0[16] = v10;
  *(v5 + v24) = v10;
  v25 = v30[13];
  sub_10015DA04(&unk_1006BCD70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v6)(v1, v31, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001DEA0(&qword_1006BCB08, type metadata accessor for TagEntity);
  v11 = EntityProperty<>.init(title:)();
  v0[17] = v11;
  *(v5 + v25) = v11;
  v26 = v30[14];
  sub_10015DA04(&unk_1006C52A0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v6)(v1, v31, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v12 = EntityProperty<>.init(title:)();
  v0[18] = v12;
  *(v5 + v26) = v12;
  v27 = v30[15];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v6)(v1, v31, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v13 = EntityProperty<>.init(title:)();
  v0[19] = v13;
  *(v5 + v27) = v13;
  *(v5 + v30[16]) = 0;
  v14 = v28;
  v15 = v29;
  v16 = swift_task_alloc();
  v0[20] = v16;
  *v16 = v0;
  v16[1] = sub_100377D34;
  v17 = v0[6];
  v18 = v0[3];
  v19 = v0[4];

  return NoteEntity.init(for:in:includeContents:noteContext:)(v17, v18, v19, 1, 0);
}

uint64_t sub_100377D34()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1003857AC;
  }

  else
  {
    v2 = sub_100385788;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t static NoteEntity.managedObjectID(for:in:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B70EC;

  return sub_100384000(a1, a2);
}

uint64_t NoteEntity.init(for:in:includeContents:noteContext:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 352) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = a5;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  sub_10015DA04(&qword_1006C2170);
  *(v5 + 56) = swift_task_alloc();
  v6 = type metadata accessor for NoteEntity.ContentResult(0);
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = sub_10015DA04(&qword_1006C52B0);
  *(v5 + 96) = swift_task_alloc();
  sub_10015DA04(&qword_1006C52B8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = type metadata accessor for NoteEntity(0);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v7 = type metadata accessor for LocalizedStringResource.BundleDescription();
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v5 + 176) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v5 + 184) = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  *(v5 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_1003781A4, 0, 0);
}

uint64_t sub_1003781A4()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v36 = *(v0 + 120);
  v37 = *(v0 + 24);
  *(v37 + v36[8]) = 0;
  v29 = v36[9];
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v38 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v4 = *(v2 + 104);
  v4(v1);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v5 = EntityProperty<>.init(title:)();
  *(v0 + 200) = v5;
  *(v37 + v29) = v5;
  v30 = v36[10];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v4)(v1, v38, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v6 = EntityProperty<>.init(title:)();
  *(v0 + 208) = v6;
  *(v37 + v30) = v6;
  v31 = v36[11];
  sub_10015DA04(&unk_1006BCD60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v4)(v1, v38, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v7 = EntityProperty<>.init(title:)();
  *(v0 + 216) = v7;
  *(v37 + v31) = v7;
  v32 = v36[12];
  sub_10015DA04(&unk_1006C5290);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v4)(v1, v38, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001DEA0(&qword_1006C45A0, type metadata accessor for FolderEntity);
  v8 = EntityProperty<>.init(title:)();
  *(v0 + 224) = v8;
  *(v37 + v32) = v8;
  v33 = v36[13];
  sub_10015DA04(&unk_1006BCD70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v4)(v1, v38, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001DEA0(&qword_1006BCB08, type metadata accessor for TagEntity);
  v9 = EntityProperty<>.init(title:)();
  *(v0 + 232) = v9;
  *(v37 + v33) = v9;
  v34 = v36[14];
  sub_10015DA04(&unk_1006C52A0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v4)(v1, v38, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v10 = EntityProperty<>.init(title:)();
  *(v0 + 240) = v10;
  *(v37 + v34) = v10;
  v35 = v36[15];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v4)(v1, v38, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v11 = EntityProperty<>.init(title:)();
  *(v0 + 248) = v11;
  *(v37 + v35) = v11;
  *(v37 + v36[16]) = 0;
  if (qword_1006BC890 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 16);
  *(v0 + 256) = v12;
  if (v12)
  {
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = *(v0 + 352);
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    v19 = swift_allocObject();
    *(v0 + 264) = v19;
    *(v19 + 16) = v17;
    *(v19 + 24) = v16;
    *(v19 + 32) = v15;
    *(v19 + 40) = v14;
    v20 = v16;
    v21 = v17;
    v22 = v14;
    v23 = swift_task_alloc();
    *(v0 + 272) = v23;
    *v23 = v0;
    v23[1] = sub_100378904;
    v24 = *(v0 + 128);
    v25 = *(v0 + 56);

    return sub_100381140(v24, v25, &unk_100545720, v19);
  }

  else
  {
    type metadata accessor for MainActor();
    *(v0 + 288) = static MainActor.shared.getter();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100378A68, v28, v27);
  }
}

uint64_t sub_100378904()
{
  v2 = *(*v1 + 56);
  *(*v1 + 280) = v0;

  sub_1000073B4(v2, &qword_1006C2170);

  if (v0)
  {
    v3 = sub_100379818;
  }

  else
  {
    v3 = sub_10037968C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100378A68()
{

  [objc_opt_self() ic_scale];
  *(v0 + 296) = v1;
  *(v0 + 304) = [objc_opt_self() currentInfo];

  return _swift_task_switch(sub_100378B10, 0, 0);
}

uint64_t sub_100378B10()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 352);
  v6 = *(v0 + 32);
  v7 = swift_allocObject();
  *(v0 + 312) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  *(v7 + 56) = v3;
  v8 = v4;
  v9 = v6;
  v10 = v1;
  v11 = v3;
  v12 = swift_task_alloc();
  *(v0 + 320) = v12;
  *v12 = v0;
  v12[1] = sub_100378C30;
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);

  return NSManagedObjectContext.perform<A>(_:)(v13, sub_100384C2C, v7, v14);
}

uint64_t sub_100378C30()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100379054;
  }

  else
  {

    v2 = sub_100378D4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100378D4C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[9];
  v6 = *(v0[11] + 48);
  sub_100384C44(v3, v0[17], type metadata accessor for NoteEntity);
  sub_1001F7498(v3 + v6, v2, &qword_1006C52B8);
  sub_100006038(v2, v1, &qword_1006C52B8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v7 = v0[38];
    sub_1000073B4(v0[14], &qword_1006C52B8);

    v9 = v0[17];
    v8 = v0[18];
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];
    sub_1000073B4(v0[13], &qword_1006C52B8);
    sub_100384C44(v9, v8, type metadata accessor for NoteEntity);

    sub_100384C44(v0[18], v0[3], type metadata accessor for NoteEntity);

    v13 = v0[1];

    return v13();
  }

  else
  {
    sub_100384C44(v0[13], v0[10], type metadata accessor for NoteEntity.ContentResult);
    v15 = swift_task_alloc();
    v0[42] = v15;
    *v15 = v0;
    v15[1] = sub_1003791CC;
    v16 = v0[10];

    return sub_10037AED4(v16);
  }
}

uint64_t sub_100379054()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003791CC()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1003794C0;
  }

  else
  {
    v2 = sub_1003792E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003792E0()
{
  v1 = *(v0 + 80);

  sub_100384CAC(v1, type metadata accessor for NoteEntity.ContentResult);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  sub_1000073B4(*(v0 + 112), &qword_1006C52B8);
  sub_100384C44(v2, v3, type metadata accessor for NoteEntity);

  sub_100384C44(*(v0 + 144), *(v0 + 24), type metadata accessor for NoteEntity);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003794C0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);

  sub_100384CAC(v3, type metadata accessor for NoteEntity.ContentResult);
  sub_1000073B4(v2, &qword_1006C52B8);
  sub_100384CAC(v1, type metadata accessor for NoteEntity);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10037968C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  sub_100384C44(*(v0 + 128), *(v0 + 24), type metadata accessor for NoteEntity);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100379818()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t NoteEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  sub_10015DA04(&qword_1006BE030);
  v3[14] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for DisplayRepresentation.Components();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  sub_10015DA04(&unk_1006BEA80);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for LocalizedStringResource();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_100379B68, 0, 0);
}

uint64_t sub_100379B68()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v5 = type metadata accessor for DisplayRepresentation.Image();
  v6 = *(*(v5 - 8) + 56);
  v41 = v5;
  v6(v1, 1, 1);
  static DisplayRepresentation.Components.text.getter();
  sub_10001DEA0(&qword_1006C52C0, &type metadata accessor for DisplayRepresentation.Components);
  v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v42 = *(v3 + 8);
  v42(v2, v4);
  if (v7)
  {
    v8 = *(v0 + 200);
    v39 = *(v0 + 192);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v11 = *(v0 + 168);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
    type metadata accessor for NoteEntity(0);
    EntityProperty.wrappedValue.getter();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*(v0 + 56));

    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
    LocalizedStringResource.init(stringInterpolation:)();
    v38 = *(v9 + 8);
    v38(v8, v11);
    v14 = *(v9 + 32);
    v14(v8, v10, v11);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
    EntityProperty.wrappedValue.getter();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*(v0 + 72));

    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
    LocalizedStringResource.init(stringInterpolation:)();
    v38(v39, v11);
    v14(v39, v10, v11);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 128);
  static DisplayRepresentation.Components.image.getter();
  v19 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v42(v17, v18);
  if (v19)
  {
    *(v0 + 40) = &type metadata for NotesFeature;
    *(v0 + 48) = sub_100025864();
    *(v0 + 16) = "AppShortcuts";
    *(v0 + 24) = 12;
    *(v0 + 32) = 2;
    v20 = isFeatureEnabled(_:)();
    sub_100009F60(v0 + 16);
    if (v20)
    {
      v21 = *(v0 + 104);
      v22 = *(v21 + *(type metadata accessor for NoteEntity(0) + 64));
      if (v22)
      {
        v23 = [v22 image];
        if (v23)
        {
          v24 = v23;
          v25 = UIImagePNGRepresentation(v23);

          if (v25)
          {
            v27 = *(v0 + 152);
            v26 = *(v0 + 160);
            static Data._unconditionallyBridgeFromObjectiveC(_:)();

            DisplayRepresentation.Image.init(data:isTemplate:)();
            sub_1000073B4(v26, &unk_1006BEA80);
            (v6)(v27, 0, 1, v41);
            sub_1001F7498(v27, v26, &unk_1006BEA80);
          }
        }
      }
    }
  }

  v28 = *(v0 + 192);
  v29 = *(v0 + 200);
  v30 = *(v0 + 176);
  v31 = *(v0 + 160);
  v32 = *(v0 + 168);
  v33 = *(v0 + 112);
  v40 = *(v0 + 152);
  v34 = *(v30 + 16);
  v34(*(v0 + 184), v29, v32);
  v34(v33, v28, v32);
  (*(v30 + 56))(v33, 0, 1, v32);
  sub_100006038(v31, v40, &unk_1006BEA80);
  DisplayRepresentation.init(title:subtitle:image:)();
  sub_1000073B4(v31, &unk_1006BEA80);
  v35 = *(v30 + 8);
  v35(v28, v32);
  v35(v29, v32);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_10037A224(unsigned __int8 a1)
{
  v2 = type metadata accessor for String.StandardComparator();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 != 2)
    {
LABEL_8:
      swift_getKeyPath();
      static String.StandardComparator.localizedStandard.getter();
      (*(v3 + 16))(v6, v8, v2);
      SortDescriptor.init<A>(_:comparator:order:)();
      return (*(v3 + 8))(v8, v2);
    }
  }

  else if (!(a1 >> 6))
  {
    goto LABEL_8;
  }

  swift_getKeyPath();

  return SortDescriptor.init<A>(_:order:)();
}

uint64_t sub_10037A3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10015DA04(&qword_1006BEA90);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  sub_100006038(a1, &v18 - v7, &qword_1006BEA90);
  v9 = type metadata accessor for ManagedEntityContextType();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = (*(v10 + 88))(v8, v9);
    if (v11 != enum case for ManagedEntityContextType.modern(_:))
    {
      if (v11 == enum case for ManagedEntityContextType.html(_:))
      {
        (*(a3 + 32))(a2, a3);
        v12 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        v17 = v16;

        if (v17)
        {
          return v12;
        }

        __break(1u);
      }

      (*(v10 + 8))(v8, v9);
      return 0;
    }
  }

  (*(a3 + 24))(a2, a3);
  v12 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  v14 = v13;

  if (v14)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10037A5CC()
{
  result = sub_100270AF8();
  *&static NoteEntity.defaultQuery = result;
  *(&static NoteEntity.defaultQuery + 1) = v1;
  qword_1006EF830 = v2;
  dword_1006EF838 = v3;
  byte_1006EF83C = v4;
  return result;
}

__int128 *NoteEntity.defaultQuery.unsafeMutableAddressor()
{
  if (qword_1006BC828 != -1)
  {
    swift_once();
  }

  return &static NoteEntity.defaultQuery;
}

uint64_t static NoteEntity.defaultQuery.getter()
{
  if (qword_1006BC828 != -1)
  {
    swift_once();
  }

  *v2 = static NoteEntity.defaultQuery;
  *&v2[13] = *(&static NoteEntity.defaultQuery + 13);
  sub_100384DD0(v2, &v1);
  return *v2;
}

uint64_t sub_10037A6D4()
{
  v0 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100025918(v10, static NoteEntity.typeDisplayRepresentation);
  sub_10002597C(v10, static NoteEntity.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v9 + 56))(v2, 0, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t NoteEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1006BC830 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10002597C(v0, static NoteEntity.typeDisplayRepresentation);
}

uint64_t static NoteEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC830 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10002597C(v2, static NoteEntity.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t NoteEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NoteID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NoteEntity.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for NoteID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NoteEntity.managedObjectURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NoteEntity(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NoteEntity.managedObjectURI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NoteEntity(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NoteEntity.isModernNote.setter(char a1)
{
  result = type metadata accessor for NoteEntity(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t NoteEntity.isPasswordProtected.setter(char a1)
{
  result = type metadata accessor for NoteEntity(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

void *NoteEntity.noteContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for NoteEntity(0) + 32));
  v2 = v1;
  return v1;
}

void NoteEntity.noteContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NoteEntity(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t sub_10037AED4(uint64_t a1)
{
  v2[47] = a1;
  v2[48] = v1;
  sub_10015DA04(&unk_1006C5400);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = sub_10015DA04(&unk_1006C55A0);
  v2[52] = swift_task_alloc();
  v2[53] = sub_10015DA04(&qword_1006C0900);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = sub_10015DA04(&qword_1006C55B0);
  v2[57] = swift_task_alloc();
  sub_10015DA04(&qword_1006C55B8);
  v2[58] = swift_task_alloc();
  v3 = type metadata accessor for AttributedString.CharacterView();
  v2[59] = v3;
  v2[60] = *(v3 - 8);
  v2[61] = swift_task_alloc();
  sub_10015DA04(&qword_1006C55C0);
  v2[62] = swift_task_alloc();
  v4 = type metadata accessor for AttributedString.Index();
  v2[63] = v4;
  v2[64] = *(v4 - 8);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  sub_10015DA04(&qword_1006C55C8);
  v2[67] = swift_task_alloc();
  sub_10015DA04(&qword_1006C55D0);
  v2[68] = swift_task_alloc();
  v5 = sub_10015DA04(&unk_1006C0908);
  v2[69] = v5;
  v2[70] = *(v5 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v6 = type metadata accessor for CharacterSet();
  v2[73] = v6;
  v2[74] = *(v6 - 8);
  v2[75] = swift_task_alloc();
  v2[76] = type metadata accessor for NoteEntity.ContentResult(0);
  v2[77] = swift_task_alloc();
  v7 = type metadata accessor for AttributedString();
  v2[78] = v7;
  v2[79] = *(v7 - 8);
  v2[80] = swift_task_alloc();

  return _swift_task_switch(sub_10037B33C, 0, 0);
}

uint64_t sub_10037B33C()
{
  sub_100385618(v0[47], v0[77]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0 + 2;
    v2 = objc_opt_self();
    v3 = String._bridgeToObjectiveC()();
    v0[83] = v3;

    sub_1001898C4(_swiftEmptyArrayStorage);
    type metadata accessor for DocumentReadingOptionKey(0);
    sub_10001DEA0(&qword_1006BD5F0, type metadata accessor for DocumentReadingOptionKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v0[84] = isa;

    v0[2] = v0;
    v0[7] = v0 + 38;
    v0[3] = sub_10037CAF0;
    v5 = swift_continuation_init();
    v0[25] = sub_10015DA04(&unk_1006C55D8);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_10037D76C;
    v0[21] = &unk_100659658;
    v0[22] = v5;
    [v2 loadFromHTMLWithString:v3 options:isa completionHandler:v0 + 18];
    goto LABEL_5;
  }

  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[77];
  v10 = *(v9 + *(sub_10015DA04(&qword_1006C5608) + 48));
  v0[81] = v10;
  (*(v7 + 32))(v6, v9, v8);
  if (v10)
  {
    v1 = v0 + 10;
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 sharedThumbnailService];
    v0[82] = v13;
    v0[10] = v0;
    v0[15] = v0 + 46;
    v0[11] = sub_10037C008;
    v14 = swift_continuation_init();
    v0[33] = sub_10015DA04(&qword_1006C5610);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_10037D8A4;
    v0[29] = &unk_100659680;
    v0[30] = v14;
    [v13 thumbnailWithConfiguration:v12 completion:v0 + 26];
LABEL_5:
    v15 = v1;

    return _swift_continuation_await(v15);
  }

  v16 = v0[75];
  v17 = v0[74];
  v18 = v0[73];
  type metadata accessor for NoteEntity(0);
  EntityProperty.wrappedValue.getter();
  v19 = v0[41];
  v0[42] = v0[40];
  v0[43] = v19;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10019E0AC();
  v20 = StringProtocol.trimmingCharacters(in:)();
  v22 = v21;
  (*(v17 + 8))(v16, v18);

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = v0[70];
    v25 = v0[69];
    v26 = v0[68];
    v27 = v0[67];
    v0[44] = v20;
    v0[45] = v22;
    v28 = type metadata accessor for Locale();
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    sub_10001DEA0(&qword_1006C55E8, &type metadata accessor for AttributedString);
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_1000073B4(v27, &qword_1006C55C8);

    if ((*(v24 + 48))(v26, 1, v25) == 1)
    {
      v29 = v0[68];
      v30 = &unk_1006C55D0;
LABEL_29:
      sub_1000073B4(v29, v30);
      goto LABEL_30;
    }

    v31 = v0[72];
    v32 = v0[69];
    sub_1001F7498(v0[68], v31, &unk_1006C0908);
    AttributedString.characters.getter();
    v80 = v32;
    v33 = *(v32 + 36);
    sub_10001DEA0(&unk_1006C55F0, &type metadata accessor for AttributedString.Index);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    if (v15)
    {
      v34 = v0[63];
      v36 = v0[60];
      v35 = v0[61];
      v37 = v0[58];
      v85 = v0[59];
      v38 = v0[57];
      v86 = v0[56];
      v87 = v0[65];
      v39 = *(v0[64] + 16);
      v39(v37, v31 + v33, v34);
      sub_10022916C(v37, v38);
      sub_1000073B4(v37, &qword_1006C55B8);
      (*(v36 + 8))(v35, v85);
      v81 = v39;
      v39(v87, v38, v34);
      v40 = v38;
      v41 = *(v86 + 36);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = v0[64];
      if (v42)
      {
        v44 = *(v43 + 8);
LABEL_21:
        v54 = v0[57];
        v83 = v44;
        v44(v0[65], v0[63]);
        sub_1000073B4(v54, &qword_1006C55B0);
        v55 = 1;
      }

      else
      {
        v79 = (v43 + 32);
        v77 = v0[53];
        v78 = (v43 + 8);
        v75 = v38;
        v76 = v41;
        while (1)
        {
          v45 = v0[63];
          v84 = v0[71];
          v47 = v0[54];
          v46 = v0[55];
          v81(v46);
          (v81)(v46 + *(v77 + 48), v40 + v41, v45);
          sub_100006038(v46, v47, &qword_1006C0900);
          v82 = *(v77 + 48);
          v48 = *v79;
          (*v79)(v84, v47, v45);
          v49 = *v78;
          (*v78)(v47 + v82, v45);
          sub_1001F7498(v46, v47, &qword_1006C0900);
          v50 = v48;
          v48(v84 + *(v80 + 36), v47 + *(v77 + 48), v45);
          v83 = v49;
          v49(v47, v45);
          sub_10001DEA0(&unk_1006BFA40, &type metadata accessor for AttributedString.CharacterView);
          dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
          sub_1000073B4(v84, &unk_1006C0908);
          v51 = dispatch thunk of Collection.subscript.read();

          (v51)(v0 + 34, 0);
          LOBYTE(v51) = Character.isWhitespace.getter();

          v52 = v0[65];
          v53 = v0[63];
          if ((v51 & 1) == 0)
          {
            break;
          }

          dispatch thunk of Collection.formIndex(after:)();
          v41 = v76;
          v40 = v75;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v44 = v49;
            goto LABEL_21;
          }
        }

        v56 = v0[62];
        sub_1000073B4(v0[57], &qword_1006C55B0);
        v50(v56, v52, v53);
        v55 = 0;
      }

      v57 = v0[63];
      v58 = v0[64];
      v59 = v0[62];
      (*(v58 + 56))(v59, v55, 1, v57);
      v60 = *(v58 + 48);
      v61 = v60(v59, 1, v57);
      v63 = v0[62];
      v62 = v0[63];
      if (v61 == 1)
      {
        AttributedString.endIndex.getter();
        if (v60(v63, 1, v62) != 1)
        {
          sub_1000073B4(v0[62], &qword_1006C55C0);
        }
      }

      else
      {
        (*(v0[64] + 32))(v0[66], v0[62], v0[63]);
      }

      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      if (v15)
      {
        v64 = v0[72];
        v65 = v0[66];
        v66 = v0[63];
        v67 = v0[52];
        (v81)(v67, v65, v66);
        sub_1000060B4(&qword_1006C5600, &unk_1006C55A0);
        AttributedString.removeSubrange<A>(_:)();
        sub_1000073B4(v67, &unk_1006C55A0);
        v83(v65, v66);
        v30 = &unk_1006C0908;
        v29 = v64;
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return _swift_continuation_await(v15);
  }

LABEL_30:
  v68 = v0[80];
  v69 = v0[79];
  v70 = v0[78];
  v71 = v0[49];
  v72 = v0[50];
  (*(v69 + 16))(v72, v68, v70);
  (*(v69 + 56))(v72, 0, 1, v70);
  sub_100006038(v72, v71, &unk_1006C5400);
  EntityProperty.wrappedValue.setter();
  sub_1000073B4(v72, &unk_1006C5400);
  (*(v69 + 8))(v68, v70);

  v73 = v0[1];

  return v73();
}

uint64_t sub_10037C008()
{

  return _swift_task_switch(sub_10037C0E8, 0, 0);
}

uint64_t sub_10037C0E8()
{
  v1 = v0[82];
  v2 = v0[48];

  v3 = v0[46];
  v4 = *(type metadata accessor for NoteEntity(0) + 64);

  *(v2 + v4) = v3;
  v70 = v0[81];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  EntityProperty.wrappedValue.getter();
  v8 = v0[41];
  v0[42] = v0[40];
  v0[43] = v8;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10019E0AC();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  (*(v6 + 8))(v5, v7);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = v0[70];
    v14 = v0[69];
    v15 = v0[68];
    v16 = v0[67];
    v0[44] = v9;
    v0[45] = v11;
    v17 = type metadata accessor for Locale();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    sub_10001DEA0(&qword_1006C55E8, &type metadata accessor for AttributedString);
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_1000073B4(v16, &qword_1006C55C8);

    if ((*(v13 + 48))(v15, 1, v14) == 1)
    {
      v18 = v0[68];
      v19 = &unk_1006C55D0;
LABEL_22:
      sub_1000073B4(v18, v19);
      goto LABEL_23;
    }

    v20 = v0[72];
    v21 = v0[69];
    sub_1001F7498(v0[68], v20, &unk_1006C0908);
    AttributedString.characters.getter();
    v76 = v21;
    v22 = *(v21 + 36);
    sub_10001DEA0(&unk_1006C55F0, &type metadata accessor for AttributedString.Index);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      v80 = v0[65];
      v24 = v0[63];
      v25 = v0[64];
      v26 = v0[61];
      v79 = v0;
      v27 = v0[60];
      v28 = v0[59];
      v29 = v0[58];
      v30 = v20;
      v31 = v0[57];
      v32 = v0[56];
      v33 = *(v25 + 16);
      (v33)(v79[58], v30 + v22, v24);
      sub_10022916C(v29, v31);
      sub_1000073B4(v29, &qword_1006C55B8);
      (*(v27 + 8))(v26, v28);
      v34 = v79;
      v78 = v33;
      (v33)(v80, v31, v24);
      v35 = v31;
      v36 = *(v32 + 36);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = v79[64];
      if (v37)
      {
        v39 = *(v38 + 8);
LABEL_14:
        v50 = v34[57];
        v77 = v39;
        v39(v34[65], v34[63]);
        sub_1000073B4(v50, &qword_1006C55B0);
        v51 = 1;
      }

      else
      {
        v75 = (v38 + 32);
        v73 = v79[53];
        v74 = (v38 + 8);
        v71 = v31;
        v72 = v36;
        while (1)
        {
          v40 = v34[71];
          v41 = v34[63];
          v43 = v34[54];
          v42 = v34[55];
          v78(v42);
          (v78)(v42 + *(v73 + 48), v35 + v36, v41);
          sub_100006038(v42, v43, &qword_1006C0900);
          v44 = *(v73 + 48);
          v45 = *v75;
          (*v75)(v40, v43, v41);
          v46 = *v74;
          (*v74)(v43 + v44, v41);
          sub_1001F7498(v42, v43, &qword_1006C0900);
          v34 = v79;
          v45(v40 + *(v76 + 36), v43 + *(v73 + 48), v41);
          v77 = v46;
          v46(v43, v41);
          sub_10001DEA0(&unk_1006BFA40, &type metadata accessor for AttributedString.CharacterView);
          dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
          sub_1000073B4(v40, &unk_1006C0908);
          v47 = dispatch thunk of Collection.subscript.read();

          (v47)(v79 + 34, 0);
          LOBYTE(v47) = Character.isWhitespace.getter();

          v48 = v79[65];
          v49 = v79[63];
          if ((v47 & 1) == 0)
          {
            break;
          }

          dispatch thunk of Collection.formIndex(after:)();
          v36 = v72;
          v35 = v71;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v39 = v46;
            goto LABEL_14;
          }
        }

        v52 = v79[62];
        sub_1000073B4(v79[57], &qword_1006C55B0);
        v45(v52, v48, v49);
        v51 = 0;
      }

      v53 = v34[63];
      v54 = v34[64];
      v55 = v34[62];
      (*(v54 + 56))(v55, v51, 1, v53);
      v56 = *(v54 + 48);
      v57 = v56(v55, 1, v53);
      v59 = v34[62];
      v58 = v34[63];
      if (v57 == 1)
      {
        AttributedString.endIndex.getter();
        if (v56(v59, 1, v58) != 1)
        {
          sub_1000073B4(v34[62], &qword_1006C55C0);
        }
      }

      else
      {
        (*(v34[64] + 32))(v34[66], v34[62], v34[63]);
      }

      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        v60 = v34[72];
        v61 = v34[66];
        v62 = v34[63];
        v63 = v34[52];
        (v78)(v63, v61, v62);
        sub_1000060B4(&qword_1006C5600, &unk_1006C55A0);
        AttributedString.removeSubrange<A>(_:)();
        v0 = v79;
        sub_1000073B4(v63, &unk_1006C55A0);
        v77(v61, v62);
        v19 = &unk_1006C0908;
        v18 = v60;
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_23:
  v64 = v0[80];
  v65 = v0[79];
  v66 = v0[78];
  v67 = v0[49];
  v68 = v0[50];
  (*(v65 + 16))(v68, v64, v66);
  (*(v65 + 56))(v68, 0, 1, v66);
  sub_100006038(v68, v67, &unk_1006C5400);
  EntityProperty.wrappedValue.setter();

  sub_1000073B4(v68, &unk_1006C5400);
  (*(v65 + 8))(v64, v66);

  v69 = v0[1];

  return v69();
}

uint64_t sub_10037CAF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 680) = v1;
  if (v1)
  {
    v2 = sub_10037D5F8;
  }

  else
  {
    v2 = sub_10037CC00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10037CC00()
{
  v1 = v0[84];
  v2 = v0[83];

  AttributedString.init(_:)();
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[73];
  type metadata accessor for NoteEntity(0);
  EntityProperty.wrappedValue.getter();
  v6 = v0[41];
  v0[42] = v0[40];
  v0[43] = v6;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10019E0AC();
  v7 = StringProtocol.trimmingCharacters(in:)();
  v9 = v8;
  (*(v4 + 8))(v3, v5);

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = v0[70];
    v12 = v0[69];
    v13 = v0[68];
    v14 = v0[67];
    v0[44] = v7;
    v0[45] = v9;
    v15 = type metadata accessor for Locale();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    sub_10001DEA0(&qword_1006C55E8, &type metadata accessor for AttributedString);
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_1000073B4(v14, &qword_1006C55C8);

    if ((*(v11 + 48))(v13, 1, v12) == 1)
    {
      v16 = v0[68];
      v17 = &unk_1006C55D0;
LABEL_22:
      sub_1000073B4(v16, v17);
      goto LABEL_23;
    }

    v18 = v0[72];
    v19 = v0[69];
    sub_1001F7498(v0[68], v18, &unk_1006C0908);
    AttributedString.characters.getter();
    v73 = v19;
    v20 = *(v19 + 36);
    sub_10001DEA0(&unk_1006C55F0, &type metadata accessor for AttributedString.Index);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      v77 = v0[65];
      v22 = v0[63];
      v23 = v0[64];
      v24 = v0[61];
      v76 = v0;
      v25 = v0[60];
      v26 = v0[59];
      v27 = v0[58];
      v28 = v18;
      v29 = v0[57];
      v30 = v0[56];
      v31 = *(v23 + 16);
      (v31)(v76[58], v28 + v20, v22);
      sub_10022916C(v27, v29);
      sub_1000073B4(v27, &qword_1006C55B8);
      (*(v25 + 8))(v24, v26);
      v32 = v76;
      v75 = v31;
      (v31)(v77, v29, v22);
      v33 = v29;
      v34 = *(v30 + 36);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = v76[64];
      if (v35)
      {
        v37 = *(v36 + 8);
LABEL_14:
        v48 = v32[57];
        v74 = v37;
        v37(v32[65], v32[63]);
        sub_1000073B4(v48, &qword_1006C55B0);
        v49 = 1;
      }

      else
      {
        v72 = (v36 + 32);
        v70 = v76[53];
        v71 = (v36 + 8);
        v68 = v29;
        v69 = v34;
        while (1)
        {
          v38 = v32[71];
          v39 = v32[63];
          v41 = v32[54];
          v40 = v32[55];
          v75(v40);
          (v75)(v40 + *(v70 + 48), v33 + v34, v39);
          sub_100006038(v40, v41, &qword_1006C0900);
          v42 = *(v70 + 48);
          v43 = *v72;
          (*v72)(v38, v41, v39);
          v44 = *v71;
          (*v71)(v41 + v42, v39);
          sub_1001F7498(v40, v41, &qword_1006C0900);
          v32 = v76;
          v43(v38 + *(v73 + 36), v41 + *(v70 + 48), v39);
          v74 = v44;
          v44(v41, v39);
          sub_10001DEA0(&unk_1006BFA40, &type metadata accessor for AttributedString.CharacterView);
          dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
          sub_1000073B4(v38, &unk_1006C0908);
          v45 = dispatch thunk of Collection.subscript.read();

          (v45)(v76 + 34, 0);
          LOBYTE(v45) = Character.isWhitespace.getter();

          v46 = v76[65];
          v47 = v76[63];
          if ((v45 & 1) == 0)
          {
            break;
          }

          dispatch thunk of Collection.formIndex(after:)();
          v34 = v69;
          v33 = v68;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v37 = v44;
            goto LABEL_14;
          }
        }

        v50 = v76[62];
        sub_1000073B4(v76[57], &qword_1006C55B0);
        v43(v50, v46, v47);
        v49 = 0;
      }

      v51 = v32[63];
      v52 = v32[64];
      v53 = v32[62];
      (*(v52 + 56))(v53, v49, 1, v51);
      v54 = *(v52 + 48);
      v55 = v54(v53, 1, v51);
      v57 = v32[62];
      v56 = v32[63];
      if (v55 == 1)
      {
        AttributedString.endIndex.getter();
        if (v54(v57, 1, v56) != 1)
        {
          sub_1000073B4(v32[62], &qword_1006C55C0);
        }
      }

      else
      {
        (*(v32[64] + 32))(v32[66], v32[62], v32[63]);
      }

      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        v58 = v32[72];
        v59 = v32[66];
        v60 = v32[63];
        v61 = v32[52];
        (v75)(v61, v59, v60);
        sub_1000060B4(&qword_1006C5600, &unk_1006C55A0);
        AttributedString.removeSubrange<A>(_:)();
        v0 = v76;
        sub_1000073B4(v61, &unk_1006C55A0);
        v74(v59, v60);
        v17 = &unk_1006C0908;
        v16 = v58;
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_23:
  v62 = v0[80];
  v63 = v0[79];
  v64 = v0[78];
  v65 = v0[49];
  v66 = v0[50];
  (*(v63 + 16))(v66, v62, v64);
  (*(v63 + 56))(v66, 0, 1, v64);
  sub_100006038(v66, v65, &unk_1006C5400);
  EntityProperty.wrappedValue.setter();
  sub_1000073B4(v66, &unk_1006C5400);
  (*(v63 + 8))(v62, v64);

  v67 = v0[1];

  return v67();
}

uint64_t sub_10037D5F8()
{
  v1 = v0[84];
  v2 = v0[83];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t *sub_10037D76C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  result = sub_10017CC60((a1 + 32), *(a1 + 56));
  v7 = *result;
  if (a4)
  {
    sub_10015DA04(&unk_1006C9B40);
    swift_allocError();
    *v8 = a4;
    v9 = a4;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    type metadata accessor for DocumentAttributeKey(0);
    sub_10001DEA0(&qword_1006BD5E0, type metadata accessor for DocumentAttributeKey);
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = v10;
    v12 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10037D8A4(uint64_t a1, void *a2)
{
  **(*(*sub_10017CC60((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t sub_10037D908@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1006BC828 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v5[0] = static NoteEntity.defaultQuery;
  v1 = *(&static NoteEntity.defaultQuery + 13);
  *(v5 + 13) = *(&static NoteEntity.defaultQuery + 13);
  *a1 = static NoteEntity.defaultQuery;
  *(a1 + 13) = v1;
  return sub_100384DD0(v5, &v4);
}

uint64_t sub_10037D990(uint64_t a1)
{
  v2 = sub_10001DEA0(&qword_1006BCAD0, type metadata accessor for NoteEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t NoteEntity.debugDescription.getter()
{
  _StringGuts.grow(_:)(18);

  type metadata accessor for NoteID();
  sub_10001DEA0(&unk_1006BE4C0, &type metadata accessor for NoteID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0x69746E4565746F4ELL;
}

uint64_t NoteEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v3 - 8);
  v38 = &v33 - v4;
  v5 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v37 = type metadata accessor for LocalizedStringResource();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v36 = type metadata accessor for DisplayRepresentation.Image();
  v11 = *(v36 - 8);
  __chkstk_darwin(v36);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = &type metadata for NotesFeature;
  v43 = sub_100025864();
  v40._countAndFlagsBits = "AppShortcuts";
  v40._object = 12;
  v41 = 2;
  v14 = isFeatureEnabled(_:)();
  sub_100009F60(&v40);
  if ((v14 & 1) != 0 && (v35 = type metadata accessor for NoteEntity(0), (v15 = *(v2 + *(v35 + 64))) != 0) && (v16 = [v15 image]) != 0 && (v17 = v16, v18 = UIImagePNGRepresentation(v16), v17, v18))
  {
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v20;
    v34 = v19;
    v21 = v20;

    sub_1001C4E38(v34, v21);
    DisplayRepresentation.Image.init(data:isTemplate:)();
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
    EntityProperty.wrappedValue.getter();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v40);

    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
    LocalizedStringResource.init(stringInterpolation:)();
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
    EntityProperty.wrappedValue.getter();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v40);

    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
    LocalizedStringResource.init(stringInterpolation:)();
    (*(v8 + 56))(v7, 0, 1, v37);
    v26 = v38;
    v27 = v36;
    (*(v11 + 16))(v38, v13, v36);
    (*(v11 + 56))(v26, 0, 1, v27);
    DisplayRepresentation.init(title:subtitle:image:)();
    sub_10019671C(v34, v33);
    return (*(v11 + 8))(v13, v27);
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
    type metadata accessor for NoteEntity(0);
    EntityProperty.wrappedValue.getter();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v40);

    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
    LocalizedStringResource.init(stringInterpolation:)();
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
    EntityProperty.wrappedValue.getter();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v40);

    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
    LocalizedStringResource.init(stringInterpolation:)();
    (*(v8 + 56))(v7, 0, 1, v37);
    (*(v11 + 56))(v38, 1, 1, v36);
    return DisplayRepresentation.init(title:subtitle:image:)();
  }
}

uint64_t sub_10037E08C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A600;

  return NoteEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_10037E134(uint64_t a1)
{
  v2 = sub_10001DEA0(&qword_1006C5338, type metadata accessor for NoteEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t static NoteEntity.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v38 = sub_10015DA04(&qword_1006C52C8);
  __chkstk_darwin(v38);
  v32 = &v27 - v1;
  v2 = type metadata accessor for UTType();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10015DA04(&qword_1006C52D0);
  v29 = *(v3 - 8);
  v4 = v29;
  v5 = __chkstk_darwin(v3);
  v37 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v30 = &v27 - v8;
  v9 = __chkstk_darwin(v7);
  v31 = &v27 - v10;
  v11 = __chkstk_darwin(v9);
  v34 = &v27 - v12;
  v13 = __chkstk_darwin(v11);
  v35 = &v27 - v14;
  __chkstk_darwin(v13);
  v36 = &v27 - v15;
  static UTType.plainText.getter();
  type metadata accessor for NoteEntity(0);
  sub_10001DEA0(&qword_1006C52D8, type metadata accessor for NoteEntity);
  DataRepresentation.init(exportedContentType:exporting:)();
  static UTType.utf8PlainText.getter();
  DataRepresentation.init(exportedContentType:exporting:)();
  static UTType.rtf.getter();
  DataRepresentation.init(exportedContentType:exporting:)();
  static UTType.flatRTFD.getter();
  DataRepresentation.init(exportedContentType:exporting:)();
  static UTType.html.getter();
  DataRepresentation.init(exportedContentType:exporting:)();
  static UTType.webArchive.getter();
  DataRepresentation.init(exportedContentType:exporting:)();
  v16 = v38[12];
  v17 = v38[16];
  v18 = v38[20];
  v19 = v38[28];
  v27 = v38[24];
  v28 = v19;
  v20 = *(v4 + 16);
  v21 = v32;
  v20(v32, v36, v3);
  v20(&v21[v16], v35, v3);
  v20(&v21[v17], v34, v3);
  v22 = v31;
  v20(&v21[v18], v31, v3);
  v23 = v30;
  v20(&v21[v27], v30, v3);
  v24 = v37;
  v20(&v21[v28], v37, v3);
  TupleTransferRepresentation.init(_:)();
  v25 = *(v29 + 8);
  v25(v24, v3);
  v25(v23, v3);
  v25(v22, v3);
  v25(v34, v3);
  v25(v35, v3);
  return (v25)(v36, v3);
}

uint64_t sub_10037E6B4(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10037E774, 0, 0);
}

uint64_t sub_10037E774()
{
  static UTType.utf8PlainText.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10037E814;
  v2 = *(v0 + 40);

  return sub_10037E9CC(v2);
}

uint64_t sub_10037E814(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 56) = v2;

  (*(v6[4] + 8))(v6[5], v6[3]);
  if (v2)
  {

    return _swift_task_switch(sub_100385790, 0, 0);
  }

  else
  {

    v8 = v7[1];

    return v8(a1, a2);
  }
}

uint64_t sub_10037E9CC(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for UTType();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v2[20] = *(v4 + 64);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10037EA94, 0, 0);
}

uint64_t sub_10037EA94()
{
  v1 = v0[17];
  v2 = *(v1 + *(type metadata accessor for NoteEntity(0) + 32));
  v0[22] = v2;
  if (v2)
  {
    v3 = v0[21];
    v4 = v0[18];
    v5 = v0[19];
    (*(v5 + 16))(v3, v0[16], v4);
    v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v7 = swift_allocObject();
    v0[23] = v7;
    (*(v5 + 32))(v7 + v6, v3, v4);
    v8 = v2;
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_10037EDC8;

    return sub_1001AB78C((v0 + 12), v8, sub_1003851D4, v7);
  }

  else
  {
    type metadata accessor for ICError(0);
    v0[15] = 227;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v12;
    v13 = [objc_opt_self() mainBundle];
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 localizedStringForKey:v14 value:0 table:0];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v16;
    *(inited + 56) = v18;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &unk_1006BFA10);
    sub_10001DEA0(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_10037EDC8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_10037F144;
  }

  else
  {

    v2 = sub_10037EEE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10037EEE4()
{
  v1 = *(v0 + 104);
  if (v1 >> 60 == 15)
  {
    type metadata accessor for ICError(0);
    *(v0 + 120) = 227;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v3;
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v7;
    *(inited + 56) = v9;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &unk_1006BFA10);
    sub_10001DEA0(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 96);

    v13 = *(v0 + 8);

    return v13(v12, v1);
  }
}

uint64_t sub_10037F144()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10037F1B4(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10037F274, 0, 0);
}

uint64_t sub_10037F274()
{
  static UTType.utf8PlainText.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10037F314;
  v2 = *(v0 + 40);

  return sub_10037E9CC(v2);
}

uint64_t sub_10037F314(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 56) = v2;

  (*(v6[4] + 8))(v6[5], v6[3]);
  if (v2)
  {

    return _swift_task_switch(sub_100352820, 0, 0);
  }

  else
  {

    v8 = v7[1];

    return v8(a1, a2);
  }
}

uint64_t sub_10037F4CC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10037F58C, 0, 0);
}

uint64_t sub_10037F58C()
{
  static UTType.rtf.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10037E814;
  v2 = *(v0 + 40);

  return sub_10037E9CC(v2);
}

uint64_t sub_10037F62C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10037F6EC, 0, 0);
}

uint64_t sub_10037F6EC()
{
  static UTType.flatRTFD.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10037E814;
  v2 = *(v0 + 40);

  return sub_10037E9CC(v2);
}

uint64_t sub_10037F78C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10037F84C, 0, 0);
}

uint64_t sub_10037F84C()
{
  static UTType.html.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10037E814;
  v2 = *(v0 + 40);

  return sub_10037E9CC(v2);
}

uint64_t sub_10037F8EC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10037F9AC, 0, 0);
}

uint64_t sub_10037F9AC()
{
  static UTType.webArchive.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10037E814;
  v2 = *(v0 + 40);

  return sub_10037E9CC(v2);
}

void sub_10037FA4C(void *a1@<X0>, void *a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = a1;
    v6 = [v4 textStorage];
    if (v6)
    {
      v7 = v6;
      UTType.identifier.getter();
      v8 = String._bridgeToObjectiveC()();

      v9 = [v7 ic_range];
      v11 = [v7 copyDataForUTI:v8 range:v9 persistenceHelper:{v10, v4}];

      v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      goto LABEL_6;
    }

    v4 = 0;
  }

  v13 = 0xF000000000000000;
LABEL_6:
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = a1;
    UTType.identifier.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v15 dataForTypeIdentifier:v17];

    if (v18)
    {
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      sub_1001C60E4(v4, v13);

      v16 = v18;
      v4 = v19;
      v13 = v21;
    }

    else
    {
      sub_1001C60E4(v4, v13);
      v4 = 0;
      v13 = 0xF000000000000000;
    }
  }

  *a2 = v4;
  a2[1] = v13;
}

uint64_t NoteEntity.init(for:in:includeContents:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 176) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for NoteEntity(0);
  *(v4 + 48) = swift_task_alloc();
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v4 + 80) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v4 + 88) = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  *(v4 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10037FDAC, 0, 0);
}

uint64_t sub_10037FDAC()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v31 = *(v0 + 40);
  v30 = *(v0 + 32);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v5 + v31[8]) = 0;
  v22 = v31[9];
  v29 = v4;
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v6 = *(v2 + 104);
  v6(v1);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v7 = EntityProperty<>.init(title:)();
  *(v0 + 104) = v7;
  *(v5 + v22) = v7;
  v23 = v31[10];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v6)(v1, v32, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v8 = EntityProperty<>.init(title:)();
  *(v0 + 112) = v8;
  *(v5 + v23) = v8;
  v24 = v31[11];
  sub_10015DA04(&unk_1006BCD60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v6)(v1, v32, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v9 = EntityProperty<>.init(title:)();
  *(v0 + 120) = v9;
  *(v5 + v24) = v9;
  v25 = v31[12];
  sub_10015DA04(&unk_1006C5290);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v6)(v1, v32, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001DEA0(&qword_1006C45A0, type metadata accessor for FolderEntity);
  v10 = EntityProperty<>.init(title:)();
  *(v0 + 128) = v10;
  *(v5 + v25) = v10;
  v26 = v31[13];
  sub_10015DA04(&unk_1006BCD70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v6)(v1, v32, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001DEA0(&qword_1006BCB08, type metadata accessor for TagEntity);
  v11 = EntityProperty<>.init(title:)();
  *(v0 + 136) = v11;
  *(v5 + v26) = v11;
  v27 = v31[14];
  sub_10015DA04(&unk_1006C52A0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v6)(v1, v32, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v12 = EntityProperty<>.init(title:)();
  *(v0 + 144) = v12;
  *(v5 + v27) = v12;
  v28 = v31[15];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v6)(v1, v32, v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v13 = EntityProperty<>.init(title:)();
  *(v0 + 152) = v13;
  *(v5 + v28) = v13;
  *(v5 + v31[16]) = 0;
  v14 = v29;
  v15 = v30;
  v16 = swift_task_alloc();
  *(v0 + 160) = v16;
  *v16 = v0;
  v16[1] = sub_1003803BC;
  v17 = *(v0 + 48);
  v18 = *(v0 + 176);
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);

  return NoteEntity.init(for:in:includeContents:noteContext:)(v17, v19, v20, v18, 0);
}

uint64_t sub_1003803BC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100380604;
  }

  else
  {
    v2 = sub_1003804D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003804D0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);

  sub_100384C44(v1, v3, type metadata accessor for NoteEntity);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100380604()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100380710(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 168) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for NoteEntity.ContentResult(0);
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = sub_10015DA04(&qword_1006C52B0);
  *(v5 + 80) = swift_task_alloc();
  sub_10015DA04(&qword_1006C52B8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100380858, 0, 0);
}

uint64_t sub_100380858()
{
  type metadata accessor for MainActor();
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003808EC, v2, v1);
}

uint64_t sub_1003808EC()
{

  [objc_opt_self() ic_scale];
  *(v0 + 112) = v1;
  *(v0 + 120) = [objc_opt_self() currentInfo];

  return _swift_task_switch(sub_100380994, 0, 0);
}

uint64_t sub_100380994()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 168);
  v6 = *(v0 + 24);
  v7 = swift_allocObject();
  *(v0 + 128) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  *(v7 + 56) = v3;
  v8 = v4;
  v9 = v6;
  v10 = v1;
  v11 = v3;
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = sub_100380AB4;
  v14 = *(v0 + 72);
  v13 = *(v0 + 80);

  return NSManagedObjectContext.perform<A>(_:)(v13, sub_100385794, v7, v14);
}

uint64_t sub_100380AB4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100380DD0;
  }

  else
  {

    v2 = sub_100380BD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100380BD0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[7];
  v6 = *(v0[9] + 48);
  sub_100384C44(v3, v0[2], type metadata accessor for NoteEntity);
  sub_1001F7498(v3 + v6, v2, &qword_1006C52B8);
  sub_100006038(v2, v1, &qword_1006C52B8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v7 = v0[15];
    sub_1000073B4(v0[12], &qword_1006C52B8);

    sub_1000073B4(v0[11], &qword_1006C52B8);

    v8 = v0[1];

    return v8();
  }

  else
  {
    sub_100384C44(v0[11], v0[8], type metadata accessor for NoteEntity.ContentResult);
    v10 = swift_task_alloc();
    v0[19] = v10;
    *v10 = v0;
    v10[1] = sub_100380E6C;
    v11 = v0[8];

    return sub_10037AED4(v11);
  }
}

uint64_t sub_100380DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100380E6C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100381050;
  }

  else
  {
    v2 = sub_100380F80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100380F80()
{
  v1 = *(v0 + 64);

  sub_100384CAC(v1, type metadata accessor for NoteEntity.ContentResult);
  sub_1000073B4(*(v0 + 96), &qword_1006C52B8);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100381050()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);

  sub_100384CAC(v2, type metadata accessor for NoteEntity.ContentResult);
  sub_1000073B4(v1, &qword_1006C52B8);
  sub_100384CAC(v3, type metadata accessor for NoteEntity);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100381140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = type metadata accessor for Logger();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  sub_10015DA04(&qword_1006C2170);
  v5[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = type metadata accessor for MainActor();
  v5[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[26] = v9;
  v5[27] = v8;

  return _swift_task_switch(sub_1003812E0, v9, v8);
}

uint64_t sub_1003812E0()
{
  v26 = v0;
  v1 = v0[15];
  if (*(v1 + 32))
  {

    type metadata accessor for CancellationError();
    sub_10001DEA0(&qword_1006C4950, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v24 = *(v1 + 24);
    v5 = v0[22];
    v4 = v0[23];
    v6 = v0[20];
    v7 = v0[21];
    v8 = v0[19];
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    UUID.init()();
    sub_100006038(v11, v8, &qword_1006C2170);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = v9;

    v13 = sub_1004746C4(0, 0, v8, &unk_100545D40, v12);
    v0[28] = v13;
    v14 = *(v7 + 16);
    v0[29] = v14;
    v0[30] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v5, v4, v6);
    v25[3] = sub_10015DA04(&unk_1006C5590);
    v25[4] = &off_10065BF28;
    v25[0] = v13;
    swift_beginAccess();

    sub_100249514(v25, v5);
    swift_endAccess();
    v15 = [objc_opt_self() standardUserDefaults];
    v16 = String._bridgeToObjectiveC()();
    LOBYTE(v6) = [v15 BOOLForKey:v16];

    if (v6)
    {
      static Logger.ui.getter();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134218240;
        *(v19 + 4) = v24;
        *(v19 + 12) = 2048;
        *(v19 + 14) = *(*(v1 + 16) + 16);

        _os_log_impl(&_mh_execute_header, v17, v18, "Added subtask to provisional background task (id=%ld, subtasks=%ld).", v19, 0x16u);
      }

      else
      {
      }

      (*(v0[17] + 8))(v0[18], v0[16]);
    }

    v20 = static MainActor.shared.getter();
    v0[31] = v20;
    v21 = swift_task_alloc();
    v0[32] = v21;
    v22 = type metadata accessor for NoteEntity(0);
    *v21 = v0;
    v21[1] = sub_100381728;
    v23 = v0[11];

    return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v23, &unk_100545D58, v13, sub_100385598, v13, v20, &protocol witness table for MainActor, v22);
  }
}

uint64_t sub_100381728()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_100381974;
  }

  else
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_100381844;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100381844()
{
  v10 = v0;
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];

  v1(v2, v3, v4);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  swift_beginAccess();
  sub_100249514(v8, v2);
  swift_endAccess();
  sub_1003D76E0();

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100381974()
{
  v10 = v0;
  v1 = v0[29];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];

  v1(v3, v2, v4);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  swift_beginAccess();
  sub_100249514(v8, v3);
  swift_endAccess();
  sub_1003D76E0();

  (*(v5 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

id sub_100381AA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, id a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v181 = a4;
  LODWORD(v205) = a3;
  v191 = a6;
  v202 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v207 = *(v202 - 8);
  __chkstk_darwin(v202);
  v185 = &v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v196 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v187 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v16 - 8);
  v186 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10015DA04(&unk_1006BF9D0);
  v19 = __chkstk_darwin(v18 - 8);
  v189 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v190 = &v171 - v22;
  __chkstk_darwin(v21);
  v200 = &v171 - v23;
  v24 = sub_10015DA04(&unk_1006C1710);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v188 = &v171 - v29;
  v30 = __chkstk_darwin(v28);
  v198 = &v171 - v31;
  __chkstk_darwin(v30);
  v203 = &v171 - v32;
  v199 = type metadata accessor for NoteID();
  v197 = *(v199 - 8);
  __chkstk_darwin(v199);
  v34 = &v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for Logger();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v171 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for UTType();
  v36 = *(v182 - 8);
  v37 = __chkstk_darwin(v182);
  v180 = &v171 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v171 - v39;
  v41 = sub_10015DA04(&unk_1006C5400);
  __chkstk_darwin(v41 - 8);
  v43 = &v171 - v42;
  v204 = type metadata accessor for AttributedString();
  v194 = *(v204 - 8);
  v44 = __chkstk_darwin(v204);
  v179 = &v171 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v47 = &v171 - v46;
  v206 = type metadata accessor for NoteEntity(0);
  __chkstk_darwin(v206);
  v201 = &v171 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10015DA04(&qword_1006C52B8);
  __chkstk_darwin(v49 - 8);
  v195 = (&v171 - v50);
  v212 = 0;
  v51 = [a1 existingObjectWithID:a2 error:&v212];
  v52 = v212;
  if (!v51)
  {
    v60 = v212;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v183 = v27;
  v214 = &OBJC_PROTOCOL___ICSearchIndexableNote;
  v192 = v51;
  v53 = swift_dynamicCastObjCProtocolUnconditional();
  objc_opt_self();
  v54 = swift_dynamicCastObjCClass();
  v55 = v52;
  v184 = a5;
  if (v54)
  {
    v56 = v192;
    v57 = [v54 textStorage];
    if (v57)
    {
      v58 = v57;
      if ([v54 isPasswordProtected])
      {
        v59 = type metadata accessor for NoteEntity.ContentResult(0);
        (*(*(v59 - 8) + 56))(v195, 1, 1, v59);
LABEL_27:
        v108 = [v54 isPasswordProtected];

        goto LABEL_28;
      }

      v175 = v56;
      v174 = v58;
      if (v205)
      {
        v205 = v54;
        static UTType.rtf.getter();
        v70 = v58;
        v173 = [v70 ic_range];
        v171 = v70;
        v71 = [v70 string];
        v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        v173 = Range<>.init(_:in:)();
        LOBYTE(v71) = v72;

        if (v71)
        {
          __break(1u);
          goto LABEL_44;
        }

        ICNote.attributedString(for:range:)();
        v73 = *(v36 + 8);
        v173 = (v36 + 8);
        v172 = v73;
        (v73)(v40, v182);
        v74 = v194;
        v75 = v204;
        if ((v194[6])(v43, 1, v204) == 1)
        {
          sub_1000073B4(v43, &unk_1006C5400);
          v76 = v176;
          static Logger.link.getter();
          v77 = v175;
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            v212 = v181;
            *v80 = 136315138;
            v81 = [v205 loggingDescription];
            v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v84 = v83;

            v85 = sub_100009D88(v82, v84, &v212);

            *(v80 + 4) = v85;
            _os_log_impl(&_mh_execute_header, v78, v79, "NoteEntity: styled text was unexpected nil for note: %s", v80, 0xCu);
            sub_100009F60(v181);
          }

          (*(v177 + 8))(v76, v178);
          v86 = v180;
          v87 = v171;
          static UTType.rtf.getter();
          v181 = [v87 ic_range];
          v88 = [v87 string];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v89 = Range<>.init(_:in:)();
          v91 = v90;
          v93 = v92;

          if ((v93 & 1) == 0)
          {

            v212 = v89;
            v213 = v91;
            v94 = [v87 string];
            v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v97 = v96;

            v208 = v95;
            v209 = v97;
            sub_10015DA04(&qword_1006C5618);
            sub_1000060B4(&unk_1006C5620, &qword_1006C5618);
            sub_10019E0AC();
            v98 = _NSRange.init<A, B>(_:in:)();
            v100 = v99;
            UTType.identifier.getter();
            v101 = String._bridgeToObjectiveC()();

            v102 = [v87 filteredAttributedStringForUTI:v101 range:{v98, v100}];

            v103 = v179;
            AttributedString.init(_:)();
            v172(v86, v182);
            v104 = *(sub_10015DA04(&qword_1006C5608) + 48);
            v105 = v195;
            (v194)[4](v195, v103, v204);
            *(v105 + v104) = 0;
            v106 = type metadata accessor for NoteEntity.ContentResult(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
            v56 = v175;
            v54 = v205;
LABEL_26:
            v58 = v174;
            goto LABEL_27;
          }

LABEL_44:
          __break(1u);
          return result;
        }

        v54 = v205;
      }

      else
      {
        AttributedString.init(stringLiteral:)();
        v74 = v194;
        v75 = v204;
        (v194[7])(v43, 0, 1, v204);
      }

      v109 = v74[4];
      v109(v47, v43, v75);
      v110 = objc_allocWithZone(ICThumbnailConfiguration);
      v111 = [v110 initForShortcutsWithNote:v54 preferredSize:v181 scale:52.0 appearanceInfo:{52.0, a7}];
      v112 = v54;
      v113 = *(sub_10015DA04(&qword_1006C5608) + 48);
      v114 = v75;
      v115 = v195;
      v109(v195, v47, v114);
      *(v115 + v113) = v111;
      v54 = v112;
      v116 = type metadata accessor for NoteEntity.ContentResult(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v116 - 8) + 56))(v115, 0, 1, v116);
      v56 = v175;
      goto LABEL_26;
    }
  }

  if (v205)
  {
    v210 = &OBJC_PROTOCOL___ICLegacyNote;
    v62 = swift_dynamicCastObjCProtocolConditional();
    if (!v62 || (v63 = [v62 htmlString]) == 0)
    {
      v107 = type metadata accessor for NoteEntity.ContentResult(0);
      (*(*(v107 - 8) + 56))(v195, 1, 1, v107);
      goto LABEL_22;
    }

    v64 = v63;
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0xE000000000000000;
  }

  v68 = v195;
  *v195 = v65;
  v68[1] = v67;
  v69 = type metadata accessor for NoteEntity.ContentResult(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
LABEL_22:
  v108 = 0;
LABEL_28:
  swift_getObjectType();
  ICSearchIndexableNote<>.entityIdentifier.getter();
  v117 = [v53 objectID];
  v118 = [v53 title];
  if (v118)
  {
    v119 = v118;
    v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v172 = v120;
  }

  else
  {
    v173 = 0;
    v172 = 0xE000000000000000;
  }

  v121 = v203;
  v122 = v34;
  v123 = [v53 contentInfoText];
  v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v126 = v125;

  v127 = [v53 creationDate];
  v194 = v117;
  LODWORD(v182) = v108;
  v181 = v124;
  v180 = v126;
  if (v127)
  {
    v128 = v127;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v129 = 0;
  }

  else
  {
    v129 = 1;
  }

  v130 = v121;
  v131 = type metadata accessor for Date();
  v132 = *(*(v131 - 8) + 56);
  v133 = 1;
  v132(v130, v129, 1, v131);
  v134 = [v53 modificationDate];
  v193 = v122;
  v135 = v53;
  if (v134)
  {
    v136 = v198;
    v137 = v134;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v138 = v136;
    v133 = 0;
  }

  else
  {
    v138 = v198;
  }

  v139 = v185;
  v140 = 1;
  v132(v138, v133, 1, v131);
  if ([v135 folder])
  {
    v211 = &OBJC_PROTOCOL___ICFolderObject;
    v141 = swift_dynamicCastObjCProtocolConditional();
    if (v141 && (v142 = v141, swift_getObjectType(), sub_1000054A4(0, &qword_1006C2D00), swift_dynamicCastMetatype()))
    {
      sub_1004B15DC(v142, v200);
      v140 = 0;
    }

    else
    {
      swift_unknownObjectRelease();
      v140 = 1;
    }
  }

  v143 = type metadata accessor for FolderEntity();
  (*(*(v143 - 8) + 56))(v200, v140, 1, v143);
  v144 = v206;
  v179 = v206[8];
  v145 = v201;
  *&v179[v201] = 0;
  v177 = v144[9];
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  LODWORD(v204) = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v205 = *(v207 + 104);
  v207 += 104;
  v146 = v202;
  (v205)(v139);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v178 = EntityProperty<>.init(title:)();
  *&v145[v177] = v178;
  v147 = v145;
  v148 = v206;
  v176 = v206[10];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v149 = v205;
  (v205)(v139, v204, v146);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v177 = EntityProperty<>.init(title:)();
  *&v147[v176] = v177;
  v176 = v148[11];
  v175 = sub_10015DA04(&unk_1006BCD60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v150 = v202;
  v149(v139, v204, v202);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *&v147[v176] = EntityProperty<>.init(title:)();
  v175 = v148[12];
  sub_10015DA04(&unk_1006C5290);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v151 = v204;
  v152 = v150;
  v153 = v150;
  v154 = v205;
  (v205)(v139, v204, v152);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001DEA0(&qword_1006C45A0, type metadata accessor for FolderEntity);
  v176 = EntityProperty<>.init(title:)();
  *&v201[v175] = v176;
  v175 = v206[13];
  sub_10015DA04(&unk_1006BCD70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v154(v139, v151, v153);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001DEA0(&qword_1006BCB08, type metadata accessor for TagEntity);
  v155 = EntityProperty<>.init(title:)();
  v156 = v201;
  *&v201[v175] = v155;
  v157 = v206;
  v174 = v206[14];
  sub_10015DA04(&unk_1006C52A0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v158 = v204;
  v159 = v202;
  (v205)(v139, v204, v202);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v175 = EntityProperty<>.init(title:)();
  *(v174 + v156) = v175;
  v174 = v157[15];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v205)(v139, v158, v159);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v207 = EntityProperty<>.init(title:)();
  *(v174 + v156) = v207;
  *&v156[v157[16]] = 0;
  v160 = v156;
  (*(v197 + 16))(v156, v193, v199);
  v161 = v194;
  v162 = [v194 URIRepresentation];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v156[v157[6]] = [v161 ic_isModernNoteType];
  v156[v157[7]] = v182;
  v212 = v173;
  v213 = v172;
  EntityProperty.wrappedValue.setter();
  v212 = v181;
  v213 = v180;
  EntityProperty.wrappedValue.setter();
  v163 = v188;
  sub_100006038(v203, v188, &unk_1006C1710);
  v164 = v183;
  sub_100006038(v163, v183, &unk_1006C1710);
  EntityProperty.wrappedValue.setter();
  sub_1000073B4(v163, &unk_1006C1710);
  v165 = v198;
  sub_100006038(v198, v163, &unk_1006C1710);
  sub_100006038(v163, v164, &unk_1006C1710);
  EntityProperty.wrappedValue.setter();
  sub_1000073B4(v163, &unk_1006C1710);
  v166 = v200;
  v167 = v190;
  sub_100006038(v200, v190, &unk_1006BF9D0);
  sub_100006038(v167, v189, &unk_1006BF9D0);
  EntityProperty.wrappedValue.setter();

  sub_1000073B4(v167, &unk_1006BF9D0);
  sub_1000073B4(v166, &unk_1006BF9D0);
  sub_1000073B4(v165, &unk_1006C1710);
  sub_1000073B4(v203, &unk_1006C1710);
  (*(v197 + 8))(v193, v199);
  v168 = v184;
  *&v179[v160] = v184;
  v169 = *(sub_10015DA04(&qword_1006C52B0) + 48);
  v170 = v191;
  sub_100384C44(v160, v191, type metadata accessor for NoteEntity);
  sub_1001F7498(v195, v170 + v169, &qword_1006C52B8);
  return v168;
}

void sub_1003834EC(uint64_t a1@<X1>, void *a2@<X8>)
{
  NoteID.managedIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() noteWithIdentifier:v4 context:a1];

  if (v5)
  {
    v6 = [v5 objectID];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1003835A4(void *a1@<X0>, void *a2@<X8>)
{
  NoteID.managedIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [a1 legacyNoteWithIdentifier:v4];

  if (v5)
  {
    v6 = [v5 objectID];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t sub_100383654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000A1FC;

  return NoteEntity.init(for:in:)(a1, a2, a3);
}

uint64_t sub_100383704(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000A1FC;

  return NoteEntity.init(for:in:includeContents:)(a1, a2, a3, a4);
}

uint64_t sub_1003837BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000A600;

  return NoteEntity.init(for:in:includeContents:noteContext:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100383884(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B75E8;

  return sub_100384000(a1, a2);
}

uint64_t sub_100383938@<X0>(_BYTE *a1@<X8>)
{
  sub_10015DA04(&qword_1006C5580);
  v2 = EntityQuerySort.by.getter();
  EntityQuerySort.order.getter();
  type metadata accessor for NoteEntity(0);
  sub_10001DEA0(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  v3 = static EntityQuerySort.Ordering.== infix(_:_:)();
  result = sub_100385274(v2, (v3 & 1) == 0);
  *a1 = result;
  return result;
}

void sub_1003839F8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  sub_100006038(a1, &v15 - v9, &unk_1006C1710);
  v11 = *a2;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void sub_100383B34(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_100383B8C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000A1FC;

  return v8(a1);
}

uint64_t sub_100383C84(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  v6 = type metadata accessor for NoteEntity(0);
  v7 = sub_10015DA04(&unk_1006C9B40);
  *v5 = v2;
  v5[1] = sub_100383D78;

  return Task.value.getter(a1, a2, v6, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_100383D78()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100383F38;
  }

  else
  {
    v4 = sub_100383ED4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100383ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100383F38()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100383F9C()
{
  type metadata accessor for NoteEntity(0);
  sub_10015DA04(&unk_1006C9B40);

  Task.cancel()();
}

uint64_t sub_100384000(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for NoteID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  sub_10015DA04(&qword_1006BEA90);
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for ManagedEntityContextType();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1003841D0, 0, 0);
}

uint64_t sub_1003841D0()
{
  v60 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  NoteID.contextType.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 32);
    sub_1000073B4(*(v0 + 112), &qword_1006BEA90);
    static Logger.link.getter();
    (*(v6 + 16))(v4, v7, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    if (v10)
    {
      v58 = *(v0 + 88);
      v17 = swift_slowAlloc();
      v56 = v9;
      v18 = swift_slowAlloc();
      v59 = v18;
      *v17 = 136315138;
      sub_10001DEA0(&unk_1006BE4C0, &type metadata accessor for NoteID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v11;
      v21 = v20;
      (*(v15 + 8))(v13, v16);
      v22 = sub_100009D88(v19, v21, &v59);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v8, v56, "NoteEntity: Unexpectedly found nil context type, default to modern context for id: %s", v17, 0xCu);
      sub_100009F60(v18);

      (*(v12 + 8))(v57, v58);
    }

    else
    {

      (*(v15 + 8))(v13, v16);
      (*(v12 + 8))(v11, v14);
    }

    v23 = enum case for ManagedEntityContextType.modern(_:);
    (*(*(v0 + 128) + 104))(*(v0 + 144), enum case for ManagedEntityContextType.modern(_:), *(v0 + 120));
  }

  else
  {
    (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 112), *(v0 + 120));
    v23 = enum case for ManagedEntityContextType.modern(_:);
  }

  v24 = *(v0 + 136);
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);
  (*(v26 + 16))(v24, *(v0 + 144), v25);
  v27 = (*(v26 + 88))(v24, v25);
  if (v27 == v23)
  {
    v29 = *(v0 + 64);
    v28 = *(v0 + 72);
    v30 = *(v0 + 48);
    v31 = *(v0 + 56);
    v32 = *(v0 + 32);
    v33 = [*(v0 + 40) modernManagedObjectContext];
    *(v0 + 152) = v33;
    (*(v31 + 16))(v28, v32, v30);
    v34 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v35 = swift_allocObject();
    *(v0 + 160) = v35;
    (*(v31 + 32))(v35 + v34, v28, v30);
    *(v35 + ((v29 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v33;
    v36 = swift_task_alloc();
    *(v0 + 168) = v36;
    v37 = sub_10015DA04(&unk_1006BFED0);
    *v36 = v0;
    v36[1] = sub_1003847FC;
    v38 = sub_1003856EC;
    v39 = v0 + 24;
    v40 = v35;
LABEL_12:

    return NSManagedObjectContext.perform<A>(_:)(v39, v38, v40, v37);
  }

  if (v27 == enum case for ManagedEntityContextType.html(_:))
  {
    v41 = [*(v0 + 40) htmlManagedObjectContext];
    *(v0 + 176) = v41;
    if (v41)
    {
      v42 = v41;
      v43 = *(v0 + 72);
      v44 = *(v0 + 48);
      v45 = *(v0 + 56);
      v46 = *(v0 + 40);
      (*(v45 + 16))(v43, *(v0 + 32), v44);
      v47 = (*(v45 + 80) + 24) & ~*(v45 + 80);
      v48 = swift_allocObject();
      *(v0 + 184) = v48;
      *(v48 + 16) = v46;
      (*(v45 + 32))(v48 + v47, v43, v44);
      v42;
      v49 = v46;
      v50 = swift_task_alloc();
      *(v0 + 192) = v50;
      v37 = sub_10015DA04(&unk_1006BFED0);
      *v50 = v0;
      v50[1] = sub_100384A04;
      v38 = sub_10038567C;
      v39 = v0 + 16;
      v40 = v48;
      goto LABEL_12;
    }

    (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
  }

  else
  {
    v51 = *(v0 + 136);
    v52 = *(v0 + 120);
    v53 = *(*(v0 + 128) + 8);
    v53(*(v0 + 144), v52);
    v53(v51, v52);
  }

  v54 = *(v0 + 8);

  return v54(0);
}

uint64_t sub_1003847FC()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100384938, 0, 0);
  }
}

uint64_t sub_100384938()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 24);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100384A04()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 176);

    return _swift_task_switch(sub_100384B44, 0, 0);
  }
}

uint64_t sub_100384B44()
{
  v1 = *(v0 + 16);
  (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100384C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100384CAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100384D0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A600;

  return sub_100380710(a1, v4, v5, v6, v7);
}

uint64_t sub_100384ED4(uint64_t a1)
{
  result = sub_10001DEA0(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NoteEntity.SortType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for NoteEntity.SortType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1003850F0()
{
  sub_100385158();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100385158()
{
  if (!qword_1006C5540)
  {
    type metadata accessor for AttributedString();
    sub_10017992C(&unk_1006C5548);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006C5540);
    }
  }
}

uint64_t sub_100385274(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C5588);

  v3 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v3)
  {

    return a2 & 1;
  }

  swift_getKeyPath();

  v5 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v5)
  {

    v6 = 64;
  }

  else
  {
    swift_getKeyPath();

    v7 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v7)
    {

      v6 = -128;
    }

    else
    {
      swift_getKeyPath();
      v8 = dispatch thunk of static Equatable.== infix(_:_:)();

      if ((v8 & 1) == 0)
      {
        return 254;
      }

      v6 = -64;
    }
  }

  return v6 & 0xFFFFFFFE | a2 & 1;
}

uint64_t sub_100385430(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A1FC;

  return sub_100383B8C(a1, v4, v5, v6);
}

uint64_t sub_1003854FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000A1FC;

  return sub_100383C84(a1, v1);
}

uint64_t sub_1003855A0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100385618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteEntity.ContentResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1003857B0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidChange];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidEnter];
  *v11 = 0;
  *(v11 + 1) = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v13 = sub_100435D90();
  [v13 setDelegate:v12];

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = &v12[OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell_textDidChange];
  v16 = *&v12[OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell_textDidChange];
  *v15 = sub_100385F80;
  *(v15 + 1) = v14;

  sub_10000C840(v16);

  return v12;
}

char *sub_100385904(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidChange];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidEnter];
  *v5 = 0;
  *(v5 + 1) = 0;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);
  if (v6)
  {
    v7 = sub_100435D90();
    [v7 setDelegate:v6];

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = &v6[OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell_textDidChange];
    v10 = *&v6[OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell_textDidChange];
    *v9 = sub_100385F78;
    v9[1] = v8;
    v11 = v6;

    sub_10000C840(v10);
  }

  else
  {
  }

  return v6;
}

void sub_100385A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a2)
    {
      v31 = a1;
      v32 = a2;
      v10 = objc_opt_self();
      v29 = v10;

      v11 = [v10 ic_hashtagTokenizingCharacterSet];
      static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10019E0AC();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v30 = v12;
      v13 = *(v5 + 8);
      v13(v7, v4);
      sub_10042D890(76);

      static String._fromSubstring(_:)();

      v14 = [v29 ic_hashtagAllowedCharacterSet];
      static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = String.removingCharacters(notContainedIn:)();
      v17 = v16;

      v13(v7, v4);
      v18 = v9;
      v19 = sub_100435D90();
      v20 = String._bridgeToObjectiveC()();
      [v19 setText:v20];

      v21 = *&v18[OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidChange];
      if (v21)
      {

        v21(v15, v17);
        sub_10000C840(v21);
      }

      if ((v30 & 1) != 0 || (v22 = *&v18[OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidEnter]) == 0)
      {
      }

      else
      {

        v23 = sub_100435D90();
        v24 = [v23 text];

        if (v24)
        {
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v22(v25, v27);

        sub_10000C840(v22);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100385DAC()
{
  sub_10000C840(*(v0 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidChange));
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidEnter);

  return sub_10000C840(v1);
}

uint64_t sub_100385EB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidEnter);
  if (v1)
  {

    v2 = sub_100435D90();
    v3 = [v2 text];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v1(v4, v6);
    sub_10000C840(v1);
  }

  return 1;
}

uint64_t sub_100385F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_100006038(a1, v18 - v8, &qword_1006C2170);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000073B4(v9, &qword_1006C2170);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_100386174(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 130) = a1;
  v3 = sub_10015DA04(&qword_1006C5858);
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100386244, 0, 0);
}

uint64_t sub_100386244()
{
  if (*(v0 + 130) == 1)
  {
    *(v0 + 64) = **(v0 + 32);
    *(v0 + 72) = sub_10015DA04(&unk_1006C9B40);
    ThrowingTaskGroup.makeAsyncIterator()();
    v1 = swift_task_alloc();
    *(v0 + 120) = v1;
    *v1 = v0;
    v1[1] = sub_100386864;
    v2 = *(v0 + 40);

    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 129, 0, 0, v2, v0 + 16);
  }

  else
  {

    return _swift_task_switch(sub_100386380, 0, 0);
  }
}

uint64_t sub_100386380()
{
  *(v0 + 80) = **(v0 + 32);
  *(v0 + 88) = sub_10015DA04(&unk_1006C9B40);
  if (ThrowingTaskGroup.isEmpty.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 96) = 0;
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    v4 = sub_10015DA04(&qword_1006C5860);
    *v3 = v0;
    v3[1] = sub_1003864C4;

    return ThrowingTaskGroup.next(isolation:)(v0 + 128, 0, 0, v4);
  }
}

uint64_t sub_1003864C4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_10038671C;
  }

  else
  {
    *(v2 + 131) = *(v2 + 128);
    v3 = sub_1003865E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003865E0()
{
  if (*(v0 + 131))
  {
    v1 = *(v0 + 96);
    if (ThrowingTaskGroup.isEmpty.getter())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 96) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  v5 = sub_10015DA04(&qword_1006C5860);
  *v4 = v0;
  v4[1] = sub_1003864C4;

  return ThrowingTaskGroup.next(isolation:)(v0 + 128, 0, 0, v5);
}

uint64_t sub_10038671C()
{
  v1 = v0[14];
  if (v0[12])
  {

    v1 = v0[12];
  }

  if (ThrowingTaskGroup.isEmpty.getter())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[12] = v1;
    v4 = swift_task_alloc();
    v0[13] = v4;
    v5 = sub_10015DA04(&qword_1006C5860);
    *v4 = v0;
    v4[1] = sub_1003864C4;

    return ThrowingTaskGroup.next(isolation:)(v0 + 16, 0, 0, v5);
  }
}

uint64_t sub_100386864()
{

  if (v0)
  {
    v1 = sub_100386A7C;
  }

  else
  {
    v1 = sub_100386974;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100386974()
{
  if (*(v0 + 129))
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = sub_100386864;
    v4 = *(v0 + 40);

    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 129, 0, 0, v4, v0 + 16);
  }
}

uint64_t sub_100386A7C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[2];
  ThrowingTaskGroup.cancelAll()();
  v0[3] = v1;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100386B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100006038(a3, v25 - v10, &qword_1006C2170);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000073B4(v11, &qword_1006C2170);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100386E44@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = a2;
  v55 = a1;
  v6 = sub_10015DA04(&qword_1006BFC50);
  __chkstk_darwin(v6 - 8);
  v49 = &v45 - v7;
  v8 = type metadata accessor for EditNoteActivity();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FastSyncEditorActivityChangeHandler(0);
  v12 = __chkstk_darwin(v51);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v45 - v15;
  v17 = type metadata accessor for Logger();
  v53 = *(v17 - 8);
  v54 = v17;
  __chkstk_darwin(v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.fastSyncPresence.getter();
  sub_100391E88(v4, v16, type metadata accessor for FastSyncEditorActivityChangeHandler);
  v52 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = a3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v47 = v11;
    v25 = v24;
    v56 = v24;
    *v23 = 136315138;
    v26 = sub_100387450();
    v46 = v4;
    v27 = v9;
    v28 = v8;
    v30 = v29;
    sub_100391B88(v16, type metadata accessor for FastSyncEditorActivityChangeHandler);
    v31 = sub_100009D88(v26, v30, &v56);
    v8 = v28;
    v9 = v27;
    v4 = v46;

    *(v23 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "[Performing] %s", v23, 0xCu);
    sub_100009F60(v25);
    v11 = v47;

    a3 = v48;
  }

  else
  {

    sub_100391B88(v16, type metadata accessor for FastSyncEditorActivityChangeHandler);
  }

  sub_100391E88(v4, v14, type metadata accessor for FastSyncEditorActivityChangeHandler);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v33 = *&v14[*(sub_10015DA04(&qword_1006C57F0) + 48)];
      (*(v9 + 32))(v11, v14, v8);
      sub_100363C18(v11, v33, a3);

      (*(v9 + 8))(v11, v8);
      return (*(v53 + 8))(v52, v54);
    }

    else
    {
      v43 = *&v14[*(sub_10015DA04(&qword_1006C57F0) + 48)];
      (*(v9 + 32))(v11, v14, v8);
      sub_100364868(v11, v43);

      (*(v9 + 8))(v11, v8);
      (*(v53 + 8))(v52, v54);
      v44 = sub_10015DA04(&qword_1006C4E40);
      return (*(*(v44 - 8) + 56))(a3, 1, 1, v44);
    }
  }

  else
  {
    v35 = sub_10015DA04(&qword_1006C57F8);
    v36 = *(v35 + 48);
    v37 = *&v14[*(v35 + 64)];
    (*(v9 + 32))(v11, v14, v8);
    v38 = v49;
    sub_1001F7498(&v14[v36], v49, &qword_1006BFC50);
    v39 = sub_10015DA04(&qword_1006C4E40);
    v40 = v11;
    v41 = *(v39 + 48);
    v42 = sub_1003625FC(a3, v40, v38, v37, v50);

    sub_1000073B4(v38, &qword_1006BFC50);
    (*(v9 + 8))(v40, v8);
    (*(v53 + 8))(v52, v54);
    *(a3 + v41) = v42;
    return (*(*(v39 - 8) + 56))(a3, 0, 1, v39);
  }
}

unint64_t sub_100387450()
{
  v1 = v0;
  v2 = sub_10015DA04(&qword_1006BFC50);
  __chkstk_darwin(v2);
  v4 = &v35 - v3;
  v5 = type metadata accessor for EditNoteActivity();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FastSyncEditorActivityChangeHandler(0);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100391E88(v1, v11, type metadata accessor for FastSyncEditorActivityChangeHandler);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *&v11[*(sub_10015DA04(&qword_1006C57F0) + 48)];
      (*(v6 + 32))(v8, v11, v5);
      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v35 = 0xD000000000000010;
      v36 = 0x800000010056E9E0;
    }

    else
    {
      v13 = *&v11[*(sub_10015DA04(&qword_1006C57F0) + 48)];
      (*(v6 + 32))(v8, v11, v5);
      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v35 = 0xD000000000000019;
      v36 = 0x800000010056E9C0;
    }

    sub_100391E1C(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x726F74696465202CLL;
    v15._object = 0xEA0000000000203ALL;
    String.append(_:)(v15);
    v29 = [v13 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    v28 = v35;
  }

  else
  {
    v16 = sub_10015DA04(&qword_1006C57F8);
    v17 = *(v16 + 48);
    v18 = *&v11[*(v16 + 64)];
    (*(v6 + 32))(v8, v11, v5);
    sub_1001F7498(&v11[v17], v4, &qword_1006BFC50);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v35 = 0x746361206E696F4ALL;
    v36 = 0xEF203A7974697669;
    sub_100391E1C(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0xD000000000000011;
    v20._object = 0x800000010056EA00;
    String.append(_:)(v20);
    v21._countAndFlagsBits = Optional.debugDescription.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 0x726F74696465202CLL;
    v22._object = 0xEA0000000000203ALL;
    String.append(_:)(v22);
    v23 = [v18 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28 = v35;
    sub_1000073B4(v4, &qword_1006BFC50);
  }

  (*(v6 + 8))(v8, v5);
  return v28;
}

id FastSyncPresenceController.__allocating_init(logger:verboseLoggingCategory:noteContext:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_100006B04(a1, a2, a3, a4);

  return v10;
}

uint64_t sub_100387A68()
{
  v1 = *(*v0 + 336);

  return _swift_task_switch(sub_100387B7C, 0, 0);
}

uint64_t sub_100387B7C()
{
  static Logger.fastSyncPresence.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Waiting for editor activity changes...", v3, 2u);
  }

  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[33];

  v4(v5, v6);
  v7 = swift_task_alloc();
  v0[44] = v7;
  *v7 = v0;
  v7[1] = sub_100387CB8;

  return sub_100388A40();
}

uint64_t sub_100387CB8()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_100388398;
  }

  else
  {
    v2 = sub_100387DCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100387DCC()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    static Logger.fastSyncPresence.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Waiting for delayed launch...", v5, 2u);
    }

    v6 = v0[38];
    v7 = v0[33];
    v8 = v0[34];

    v9 = *(v8 + 8);
    v0[40] = v9;
    v9(v6, v7);
    v0[41] = static MainActor.shared.getter();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000274F4, v11, v10);
  }
}

uint64_t sub_100387F80()
{
  v1 = *v0;
  v4 = *v0;
  *(v1 + 368) = *(*v0 + 200);
  v2 = swift_task_alloc();
  *(v1 + 376) = v2;
  *v2 = v4;
  v2[1] = sub_1003880C8;

  return ICCloudConfiguration.waitForConfigurationChange(where:)(sub_1003890D0, 0);
}

uint64_t sub_1003880C8()
{
  v1 = *(*v0 + 368);

  return _swift_task_switch(sub_1003881DC, 0, 0);
}

uint64_t sub_1003881DC()
{

  if (static Task<>.isCancelled.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    static Logger.fastSyncPresence.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Waiting for delayed launch...", v5, 2u);
    }

    v6 = v0[38];
    v7 = v0[33];
    v8 = v0[34];

    v9 = *(v8 + 8);
    v0[40] = v9;
    v9(v6, v7);
    v0[41] = static MainActor.shared.getter();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000274F4, v11, v10);
  }
}

uint64_t sub_100388398()
{
  v44 = v0;
  *(v0 + 176) = *(v0 + 360);
  swift_errorRetain();
  sub_10015DA04(&unk_1006C9B40);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 384);
    if ((*(*(v0 + 224) + 88))(*(v0 + 232), *(v0 + 216)) == v1)
    {

      static Logger.fastSyncPresence.getter();
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "Fast sync is disabled. Turning off presence monitoring.", v4, 2u);
      }

      v5 = *(v0 + 320);
      v6 = *(v0 + 288);
      v7 = *(v0 + 264);

      v5(v6, v7);
      v8 = objc_opt_self();
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 200;
      *(v0 + 24) = sub_100387F80;
      v9 = swift_continuation_init();
      *(v0 + 136) = sub_10015DA04(&qword_1006C5800);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_10037D8A4;
      *(v0 + 104) = &unk_100659888;
      *(v0 + 112) = v9;
      [v8 loadSharedConfigurationWithCompletionHandler:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  }

  v10 = *(v0 + 360);

  *(v0 + 184) = v10;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);
    v13 = *(v0 + 240);

    (*(v12 + 8))(v11, v13);

LABEL_19:

    v38 = *(v0 + 8);

    return v38();
  }

  swift_errorRetain();
  static Logger.fastSyncPresence.getter();
  v14 = static os_log_type_t.fault.getter();
  v15 = Logger.logObject.getter();
  v16 = os_log_type_enabled(v15, v14);
  v17 = *(v0 + 360);
  v18 = *(v0 + 320);
  v19 = *(v0 + 280);
  v20 = *(v0 + 264);
  if (v16)
  {
    v42 = *(v0 + 280);
    v40 = v14;
    v21 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v21 = 136315650;
    v22 = StaticString.description.getter();
    v41 = v20;
    v24 = sub_100009D88(v22, v23, &v43);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2048;
    *(v21 + 14) = 96;
    *(v21 + 22) = 2080;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v25 = *(v0 + 168);
    *(v0 + 144) = *(v0 + 160);
    *(v0 + 152) = v25;
    v26._object = 0x800000010056E920;
    v26._countAndFlagsBits = 0xD00000000000004FLL;
    String.append(_:)(v26);
    *(v0 + 192) = v17;
    _print_unlocked<A, B>(_:_:)();
    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v28 = sub_100009D88(*(v0 + 144), *(v0 + 152), &v43);

    *(v21 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v15, v40, "Failed assertion at %s:%lu: %s", v21, 0x20u);
    swift_arrayDestroy();

    v18(v42, v41);
    if (static Task<>.isCancelled.getter())
    {
      goto LABEL_19;
    }
  }

  else
  {

    v18(v19, v20);
    if (static Task<>.isCancelled.getter())
    {
      goto LABEL_19;
    }
  }

  static Logger.fastSyncPresence.getter();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Waiting for delayed launch...", v31, 2u);
  }

  v32 = *(v0 + 304);
  v33 = *(v0 + 264);
  v34 = *(v0 + 272);

  v35 = *(v34 + 8);
  *(v0 + 320) = v35;
  v35(v32, v33);
  *(v0 + 328) = static MainActor.shared.getter();
  v37 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000274F4, v37, v36);
}

uint64_t sub_100388A40()
{
  v1[14] = v0;
  sub_10015DA04(&qword_1006C57C0);
  v1[15] = swift_task_alloc();
  sub_10015DA04(&qword_1006C57B8);
  v1[16] = swift_task_alloc();
  v1[17] = type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_100388B4C, v3, v2);
}

uint64_t sub_100388B4C()
{
  v1 = v0[14];
  sub_100006DE0();
  v0[21] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_100388C58;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100388C58()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_100388F18;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_100388D7C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100388D7C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  v4 = sub_10015DA04(&qword_1006BCD80);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR___ICFastSyncPresenceController_editorActivityChanges;
  swift_beginAccess();
  sub_10000A49C(v1, v3 + v5, &qword_1006C57B8);
  swift_endAccess();
  v6 = sub_10015DA04(&qword_1006BCD88);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = OBJC_IVAR___ICFastSyncPresenceController_noteActivityShareChanges;
  swift_beginAccess();
  sub_10000A49C(v2, v3 + v7, &qword_1006C57C0);
  swift_endAccess();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100388F18()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  v4 = sub_10015DA04(&qword_1006BCD80);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR___ICFastSyncPresenceController_editorActivityChanges;
  swift_beginAccess();
  sub_10000A49C(v1, v3 + v5, &qword_1006C57B8);
  swift_endAccess();
  v6 = sub_10015DA04(&qword_1006BCD88);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = OBJC_IVAR___ICFastSyncPresenceController_noteActivityShareChanges;
  swift_beginAccess();
  sub_10000A49C(v2, v3 + v7, &qword_1006C57C0);
  swift_endAccess();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003890D0()
{
  swift_getKeyPath();
  ICCloudConfiguration.Snapshot.subscript.getter();

  return v1 & 1;
}

id FastSyncPresenceController.init(logger:verboseLoggingCategory:noteContext:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_100006B04(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_100389158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v5 = type metadata accessor for Notification();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&qword_1006BFC50);
  __chkstk_darwin(v8 - 8);
  v10 = v34 - v9;
  v11 = sub_10015DA04(&qword_1006BFCC8);
  v38 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v34 - v12;
  v14 = sub_10015DA04(&qword_1006C57E8);
  __chkstk_darwin(v14 - 8);
  v16 = v34 - v15;
  v17 = type metadata accessor for EditNoteActivity();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (v42)
  {
    sub_1000054A4(0, &qword_1006C1420);
    if (swift_dynamicCast())
    {
      v35 = a3;
      v21 = v40;
      EditNoteActivity.init(note:)();
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {

        v22 = &qword_1006C57E8;
        v23 = v16;
      }

      else
      {
        v34[0] = *(v18 + 32);
        v34[1] = v18 + 32;
        (v34[0])(v20, v16, v17);
        sub_1000054A4(0, &qword_1006BFD38);
        (*(v36 + 16))(v7, a1, v37);
        CloudRecordSnapshot<>.init(record:from:)();

        v24 = v38;
        if ((*(v38 + 48))(v10, 1, v11) != 1)
        {
          v30 = *(v24 + 32);
          v30(v13, v10, v11);
          v31 = sub_10015DA04(&qword_1006C57E0);
          v32 = *(v31 + 48);
          v33 = v35;
          (v34[0])(v35, v20, v17);
          v30((v33 + v32), v13, v11);
          return (*(*(v31 - 8) + 56))(v33, 0, 1, v31);
        }

        (*(v18 + 8))(v20, v17);
        v22 = &qword_1006BFC50;
        v23 = v10;
      }

      sub_1000073B4(v23, v22);
      a3 = v35;
    }
  }

  else
  {
    sub_1000073B4(v41, &qword_1006BE7A0);
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Couldn't get note, activity, or share from note. Ineligible for fast sync.", v27, 2u);
  }

  v28 = sub_10015DA04(&qword_1006C57E0);
  return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
}

uint64_t sub_1003896B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  sub_10015DA04(&qword_1006C5670);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_10015DA04(&qword_1006C2170);
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for MainActor();
  v3[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[18] = v6;
  v3[19] = v5;

  return _swift_task_switch(sub_100389824, v6, v5);
}

uint64_t sub_100389824()
{
  v1 = v0[9];
  type metadata accessor for FastSyncPresenceController.PresenceChangeEvent(0);
  sub_10015DA04(&qword_1006C5808);
  swift_allocObject();
  v2 = AsyncChannel.init(element:)();
  v3 = OBJC_IVAR___ICFastSyncPresenceController_cloudConfiguration;
  v0[20] = v2;
  v0[21] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v0[24] = v4;
    v5 = v4;
    sub_100353C4C(v5);
    v10 = v0[14];
    v11 = v0[9];

    v12 = OBJC_IVAR___ICFastSyncPresenceController_controllerPool;
    swift_beginAccess();
    sub_100006038(v11 + v12, v10, &qword_1006C5670);
    v13 = type metadata accessor for FastSyncControllerPool(0);
    v14 = *(v13 - 1);
    v15 = (*(v14 + 48))(v10, 1, v13);
    sub_1000073B4(v10, &qword_1006C5670);
    if (v15 == 1)
    {
      v16 = v0[13];
      v17 = v0[9];
      v18 = *(v17 + OBJC_IVAR___ICFastSyncPresenceController_noteContext);
      (*(v0[11] + 16))(v0[12], v17 + OBJC_IVAR___ICFastSyncPresenceController_logger, v0[10]);
      *(v16 + v13[7]) = _swiftEmptyArrayStorage;
      v19 = v13[8];
      v42 = v5;
      v20 = v18;
      *(v16 + v19) = sub_1001914FC(_swiftEmptyArrayStorage);
      v21 = &_swiftEmptySetSingleton;
      if (_swiftEmptyArrayStorage >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_10045951C(_swiftEmptyArrayStorage);
        }

        else
        {
          v21 = &_swiftEmptySetSingleton;
        }
      }

      v22 = v0[12];
      v23 = v0[13];
      v24 = v0[10];
      v25 = v0[11];
      *&v23[v13[9]] = v21;
      *&v23[v13[10]] = &_swiftEmptySetSingleton;
      *v23 = v42;
      (*(v25 + 32))(&v23[v13[5]], v22, v24);
      *&v23[v13[6]] = v20;
      (*(v14 + 56))(v23, 0, 1, v13);
      swift_beginAccess();
      sub_10000A49C(v23, v11 + v12, &qword_1006C5670);
      swift_endAccess();
    }

    v26 = v0[20];
    v27 = v0[15];
    v28 = v0[8];
    v29 = v0[9];
    static TaskPriority.userInitiated.getter();
    v30 = type metadata accessor for TaskPriority();
    v31 = *(*(v30 - 8) + 56);
    v31(v27, 0, 1, v30);
    v32 = v29;

    v33 = static MainActor.shared.getter();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v32;
    v34[5] = v26;
    sub_100385F84(v27, &unk_100545FB0, v34);
    sub_1000073B4(v27, &qword_1006C2170);
    v31(v27, 1, 1, v30);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v32;
    v35[5] = v26;
    v36 = v32;

    sub_100385F84(v27, &unk_100545FC0, v35);
    sub_1000073B4(v27, &qword_1006C2170);
    v37 = swift_task_alloc();
    v0[25] = v37;
    v37[2] = v26;
    v37[3] = v36;
    v37[4] = v5;
    v37[5] = v28;
    v38 = static MainActor.shared.getter();
    v0[26] = v38;
    v39 = swift_task_alloc();
    v0[27] = v39;
    *v39 = v0;
    v39[1] = sub_10038A514;
    v40 = v0[20];

    return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v39, &unk_100545FD0, v37, j___s15AsyncAlgorithms0A7ChannelC6finishyyF, v40, v38, &protocol witness table for MainActor, &type metadata for () + 8);
  }

  else
  {
    v6 = v0[15];
    sub_1000054A4(0, &qword_1006C4DC8);
    static TaskPriority.userInitiated.getter();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v8[1] = sub_100389E80;
    v9 = v0[15];

    return static ICCloudConfiguration.loadSharedConfiguration(priority:)(v9);
  }
}

uint64_t sub_100389E80(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  *(*v1 + 184) = a1;

  sub_1000073B4(v3, &qword_1006C2170);
  v4 = *(v2 + 152);
  v5 = *(v2 + 144);

  return _swift_task_switch(sub_100389FDC, v5, v4);
}

uint64_t sub_100389FDC()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[9];
  v4 = *(v3 + v2);
  *(v3 + v2) = v1;
  v5 = v1;

  v6 = v0[23];
  v0[24] = v6;
  sub_100353C4C(v6);
  v7 = v0[14];
  v8 = v0[9];

  v9 = OBJC_IVAR___ICFastSyncPresenceController_controllerPool;
  swift_beginAccess();
  sub_100006038(v8 + v9, v7, &qword_1006C5670);
  v10 = type metadata accessor for FastSyncControllerPool(0);
  v11 = *(v10 - 1);
  v12 = (*(v11 + 48))(v7, 1, v10);
  sub_1000073B4(v7, &qword_1006C5670);
  if (v12 == 1)
  {
    v13 = v0[13];
    v14 = v0[9];
    v15 = *(v14 + OBJC_IVAR___ICFastSyncPresenceController_noteContext);
    (*(v0[11] + 16))(v0[12], v14 + OBJC_IVAR___ICFastSyncPresenceController_logger, v0[10]);
    *(v13 + v10[7]) = _swiftEmptyArrayStorage;
    v16 = v10[8];
    v39 = v6;
    v17 = v15;
    *(v13 + v16) = sub_1001914FC(_swiftEmptyArrayStorage);
    v18 = &_swiftEmptySetSingleton;
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_10045951C(_swiftEmptyArrayStorage);
      }

      else
      {
        v18 = &_swiftEmptySetSingleton;
      }
    }

    v19 = v0[12];
    v20 = v0[13];
    v21 = v0[10];
    v22 = v0[11];
    *&v20[v10[9]] = v18;
    *&v20[v10[10]] = &_swiftEmptySetSingleton;
    *v20 = v39;
    (*(v22 + 32))(&v20[v10[5]], v19, v21);
    *&v20[v10[6]] = v17;
    (*(v11 + 56))(v20, 0, 1, v10);
    swift_beginAccess();
    sub_10000A49C(v20, v8 + v9, &qword_1006C5670);
    swift_endAccess();
  }

  v23 = v0[20];
  v24 = v0[15];
  v25 = v0[8];
  v26 = v0[9];
  static TaskPriority.userInitiated.getter();
  v27 = type metadata accessor for TaskPriority();
  v28 = *(*(v27 - 8) + 56);
  v28(v24, 0, 1, v27);
  v29 = v26;

  v30 = static MainActor.shared.getter();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = &protocol witness table for MainActor;
  v31[4] = v29;
  v31[5] = v23;
  sub_100385F84(v24, &unk_100545FB0, v31);
  sub_1000073B4(v24, &qword_1006C2170);
  v28(v24, 1, 1, v27);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v29;
  v32[5] = v23;
  v33 = v29;

  sub_100385F84(v24, &unk_100545FC0, v32);
  sub_1000073B4(v24, &qword_1006C2170);
  v34 = swift_task_alloc();
  v0[25] = v34;
  v34[2] = v23;
  v34[3] = v33;
  v34[4] = v6;
  v34[5] = v25;
  v35 = static MainActor.shared.getter();
  v0[26] = v35;
  v36 = swift_task_alloc();
  v0[27] = v36;
  *v36 = v0;
  v36[1] = sub_10038A514;
  v37 = v0[20];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v36, &unk_100545FD0, v34, j___s15AsyncAlgorithms0A7ChannelC6finishyyF, v37, v35, &protocol witness table for MainActor, &type metadata for () + 8);
}

uint64_t sub_10038A514()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 144);
    v5 = *(v2 + 152);

    return _swift_task_switch(sub_10038A654, v4, v5);
  }
}

uint64_t sub_10038A654()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10038A704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[11] = type metadata accessor for FastSyncPresenceController.PresenceChangeEvent(0);
  v5[12] = swift_task_alloc();
  sub_10015DA04(&qword_1006C4E58);
  v5[13] = swift_task_alloc();
  v5[14] = sub_10015DA04(&qword_1006C5880);
  v5[15] = swift_task_alloc();
  type metadata accessor for FastSyncControllerPool.PresenceAction(0);
  v5[16] = swift_task_alloc();
  v6 = type metadata accessor for FastSyncEditorActivityChangeHandler(0);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  sub_10015DA04(&qword_1006C5888);
  v5[21] = swift_task_alloc();
  sub_10015DA04(&qword_1006C57B8);
  v5[22] = swift_task_alloc();
  v7 = sub_10015DA04(&qword_1006C5890);
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v9;
  v5[29] = v8;

  return _swift_task_switch(sub_10038A9B0, v9, v8);
}

uint64_t sub_10038A9B0()
{
  v1 = v0[22];
  v2 = v0[9];
  v3 = OBJC_IVAR___ICFastSyncPresenceController_editorActivityChanges;
  swift_beginAccess();
  sub_100006038(v2 + v3, v1, &qword_1006C57B8);
  v4 = sub_10015DA04(&qword_1006BCD80);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[22];
    NotificationSource.makeAsyncIterator()();
    (*(v5 + 8))(v9, v4);
    v10 = OBJC_IVAR___ICFastSyncPresenceController_controllerPool;
    v0[30] = OBJC_IVAR___ICFastSyncPresenceController_logger;
    v0[31] = v10;
    v0[32] = static MainActor.shared.getter();
    v11 = sub_1000060B4(&qword_1006C5898, &qword_1006C5890);
    v12 = swift_task_alloc();
    v0[33] = v12;
    *v12 = v0;
    v12[1] = sub_10038AB84;
    v7 = v0[23];
    v6 = v0[21];
    v8 = v11;
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v8);
}

uint64_t sub_10038AB84()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10038B314;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10038AD1C;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10038AD1C()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_10038AD80, v1, v2);
}

uint64_t sub_10038AD80()
{
  v40 = v0;
  v1 = v0[21];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v2 = v0[1];

    return v2();
  }

  v5 = v0[19];
  v4 = v0[20];
  sub_100391B20(v1, v4, type metadata accessor for FastSyncEditorActivityChangeHandler);
  sub_100391E88(v4, v5, type metadata accessor for FastSyncEditorActivityChangeHandler);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39 = v11;
    *v10 = 136315138;
    v12 = sub_100387450();
    v14 = v13;
    sub_100391B88(v9, type metadata accessor for FastSyncEditorActivityChangeHandler);
    v15 = sub_100009D88(v12, v14, &v39);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Incoming editorActivityChange: %s", v10, 0xCu);
    sub_100009F60(v11);
  }

  else
  {

    sub_100391B88(v9, type metadata accessor for FastSyncEditorActivityChangeHandler);
  }

  v16 = v0[31];
  v17 = v0[9];
  swift_beginAccess();
  v18 = type metadata accessor for FastSyncControllerPool(0);
  v19 = (*(*(v18 - 8) + 48))(v17 + v16, 1, v18);
  if (v19 == 1)
  {
    __break(1u);
    return dispatch thunk of AsyncIteratorProtocol.next()(v19, v20, v21);
  }

  v22 = v0[13];
  sub_100386E44(v0[9] + v0[31], v0[9], v22);
  swift_endAccess();
  v23 = sub_10015DA04(&qword_1006C4E40);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
  {
    v24 = v0[13];
    sub_100391B88(v0[20], type metadata accessor for FastSyncEditorActivityChangeHandler);
    sub_1000073B4(v24, &qword_1006C4E58);
    v0[32] = static MainActor.shared.getter();
    v25 = sub_1000060B4(&qword_1006C5898, &qword_1006C5890);
    v26 = swift_task_alloc();
    v0[33] = v26;
    *v26 = v0;
    v26[1] = sub_10038AB84;
    v20 = v0[23];
    v19 = v0[21];
    v21 = v25;

    return dispatch thunk of AsyncIteratorProtocol.next()(v19, v20, v21);
  }

  v28 = v0[15];
  v27 = v0[16];
  v29 = v0[13];
  v30 = v0[14];
  v31 = v0[12];
  v32 = *(v29 + *(v23 + 48));
  v33 = *(v30 + 48);
  sub_100391B20(v29, v28, type metadata accessor for FastSyncControllerPool.PresenceAction);
  *(v28 + v33) = v32;
  v34 = *(v28 + *(v30 + 48));
  v0[35] = v34;
  sub_100391B20(v28, v27, type metadata accessor for FastSyncControllerPool.PresenceAction);
  v35 = *(sub_10015DA04(&qword_1006C5838) + 48);
  sub_100391E88(v27, v31, type metadata accessor for FastSyncControllerPool.PresenceAction);
  *(v31 + v35) = v34;
  swift_storeEnumTagMultiPayload();
  v36 = v34;
  v37 = swift_task_alloc();
  v0[36] = v37;
  *v37 = v0;
  v37[1] = sub_10038B3A0;
  v38 = v0[12];

  return AsyncChannel.send(_:)(v38);
}

uint64_t sub_10038B314()
{
  *(v0 + 64) = *(v0 + 272);
  sub_10015DA04(&unk_1006C9B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10038B3A0()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  sub_100391B88(v2, type metadata accessor for FastSyncPresenceController.PresenceChangeEvent);
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return _swift_task_switch(sub_10038B4F8, v4, v3);
}

uint64_t sub_10038B4F8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);

  sub_100391B88(v2, type metadata accessor for FastSyncControllerPool.PresenceAction);
  sub_100391B88(v1, type metadata accessor for FastSyncEditorActivityChangeHandler);
  *(v0 + 256) = static MainActor.shared.getter();
  v3 = sub_1000060B4(&qword_1006C5898, &qword_1006C5890);
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_10038AB84;
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v5, v3);
}

uint64_t sub_10038B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[11] = type metadata accessor for FastSyncPresenceController.PresenceChangeEvent(0);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for FastSyncEditorShareChangedEvent(0);
  v5[14] = swift_task_alloc();
  sub_10015DA04(&qword_1006C5670);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v6 = sub_10015DA04(&qword_1006BFCC8);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = type metadata accessor for EditNoteActivity();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_10015DA04(&qword_1006C5868);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v8 = sub_10015DA04(&qword_1006BCD88);
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  v9 = sub_10015DA04(&qword_1006C5870);
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();

  return _swift_task_switch(sub_10038B91C, 0, 0);
}

uint64_t sub_10038B91C()
{
  v0[33] = OBJC_IVAR___ICFastSyncPresenceController_noteActivityShareChanges;
  v0[34] = type metadata accessor for MainActor();
  v0[35] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10038B9C0, v2, v1);
}

uint64_t sub_10038B9C0()
{
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[9];
  swift_beginAccess();
  v5 = (*(v3 + 48))(v4 + v1, 1, v2);
  if (v5 == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v0[28] + 16))(v0[29], v0[9] + v0[33], v0[27]);

    v5 = sub_10038BAA0;
    v6 = 0;
    v7 = 0;
  }

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10038BAA0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  NotificationSource.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = OBJC_IVAR___ICFastSyncPresenceController_controllerPool;
  v0[36] = OBJC_IVAR___ICFastSyncPresenceController_logger;
  v0[37] = v4;
  swift_beginAccess();
  v5 = sub_1000060B4(&qword_1006C5878, &qword_1006C5870);
  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_10038BBD8;
  v7 = v0[30];
  v8 = v0[25];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v7, v5);
}

uint64_t sub_10038BBD8()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_10038C1BC;
  }

  else
  {
    v2 = sub_10038BCEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038BD08()
{
  v44 = v0;
  v1 = v0[26];
  sub_1001F7498(v0[25], v1, &qword_1006C5868);
  v2 = sub_10015DA04(&qword_1006C57E0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[26];
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[21];
    v9 = v0[22];
    v10 = v0[20];
    v39 = v0[19];
    v12 = v0[17];
    v11 = v0[18];
    v13 = *(v2 + 48);
    (*(v9 + 32))(v6, v5, v8);
    (*(v11 + 32))(v10, v5 + v13, v12);
    v14 = *(v9 + 16);
    v0[40] = v14;
    v0[41] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v7, v6, v8);
    v15 = *(v11 + 16);
    v0[42] = v15;
    v0[43] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v39, v10, v12);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[22];
    v19 = v0[23];
    v21 = v0[21];
    v22 = v0[18];
    v23 = v0[19];
    v24 = v0[17];
    if (v18)
    {
      v41 = v17;
      v25 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v25 = 136315394;
      sub_100391E1C(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v21;
      v28 = v24;
      v29 = v23;
      v31 = v30;
      v38 = v16;
      v32 = *(v20 + 8);
      v32(v19, v27);
      v33 = sub_100009D88(v26, v31, &v43);

      *(v25 + 4) = v33;
      *(v25 + 12) = 2112;
      v34 = CloudRecordSnapshot.id.getter();
      v35 = *(v22 + 8);
      v35(v29, v28);
      *(v25 + 14) = v34;
      *v40 = v34;
      _os_log_impl(&_mh_execute_header, v38, v41, "Incoming share change. Activity: %s, Share: %@", v25, 0x16u);
      sub_1000073B4(v40, &qword_1006C1440);

      sub_100009F60(v42);
    }

    else
    {

      v35 = *(v22 + 8);
      v35(v23, v24);
      v32 = *(v20 + 8);
      v32(v19, v21);
    }

    v0[44] = v32;
    v0[45] = v35;
    v0[46] = static MainActor.shared.getter();
    v37 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[47] = v37;
    v0[48] = v36;

    return _swift_task_switch(sub_10038C248, v37, v36);
  }
}

uint64_t sub_10038C1BC()
{
  *(v0 + 64) = *(v0 + 312);
  sub_10015DA04(&unk_1006C9B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10038C248()
{
  v1 = v0[16];
  sub_100006038(v0[9] + v0[37], v1, &qword_1006C5670);
  v2 = type metadata accessor for FastSyncControllerPool(0);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  if (v4 == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v0[16];
  sub_100361F00(v0[24]);
  v9 = v8;
  sub_100391B88(v7, type metadata accessor for FastSyncControllerPool);
  if (!v9)
  {

    v4 = sub_10038C750;
    v5 = 0;
    v6 = 0;

    return _swift_task_switch(v4, v5, v6);
  }

  v10 = v0[15];
  sub_100006038(v0[9] + v0[37], v10, &qword_1006C5670);
  v4 = v3(v10, 1, v2);
  if (v4 == 1)
  {
LABEL_11:
    __break(1u);
    return _swift_task_switch(v4, v5, v6);
  }

  v30 = v0[42];
  v27 = v0[40];
  v26 = v0[24];
  v11 = v0[21];
  v28 = v0[17];
  v29 = v0[20];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[12];
  v15 = v0[13];
  v16 = *(v12 + *(v2 + 36));
  v17 = swift_allocObject();
  *(v17 + 16) = v9;

  v18 = v9;
  sub_100391B88(v12, type metadata accessor for FastSyncControllerPool);
  sub_100252CA8(v16, sub_1003923D0, v17);
  v20 = v19;
  v27(&v13[*(v15 + 24)], v26, v11);
  v30(&v13[*(v15 + 28)], v29, v28);
  *v13 = v18;
  *(v13 + 1) = v20;
  v21 = *(sub_10015DA04(&qword_1006C5830) + 48);
  sub_100391E88(v13, v14, type metadata accessor for FastSyncEditorShareChangedEvent);
  *(v14 + v21) = v18;
  swift_storeEnumTagMultiPayload();
  v22 = v18;
  v23 = swift_task_alloc();
  v0[49] = v23;
  *v23 = v0;
  v23[1] = sub_10038C570;
  v24 = v0[12];

  return AsyncChannel.send(_:)(v24);
}

uint64_t sub_10038C570()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  sub_100391B88(v2, type metadata accessor for FastSyncPresenceController.PresenceChangeEvent);
  v3 = *(v1 + 384);
  v4 = *(v1 + 376);

  return _swift_task_switch(sub_10038C6C8, v4, v3);
}

uint64_t sub_10038C6C8()
{
  v1 = *(v0 + 112);

  sub_100391B88(v1, type metadata accessor for FastSyncEditorShareChangedEvent);

  return _swift_task_switch(sub_10038C750, 0, 0);
}

uint64_t sub_10038C750()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  (*(v0 + 360))(*(v0 + 160), *(v0 + 136));
  v1(v2, v3);
  v4 = sub_1000060B4(&qword_1006C5878, &qword_1006C5870);
  v5 = swift_task_alloc();
  *(v0 + 304) = v5;
  *v5 = v0;
  v5[1] = sub_10038BBD8;
  v6 = *(v0 + 240);
  v7 = *(v0 + 200);

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v4);
}

uint64_t sub_10038C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v6 = type metadata accessor for CancellationError();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = type metadata accessor for FastSyncEditorShareChangedEvent(0);
  v5[30] = swift_task_alloc();
  sub_10015DA04(&qword_1006C2170);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v7 = type metadata accessor for SuspendingClock.Instant();
  v5[33] = v7;
  v8 = *(v7 - 8);
  v5[34] = v8;
  v5[35] = *(v8 + 64);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  sub_10015DA04(&qword_1006C5810);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  sub_10015DA04(&qword_1006BFC50);
  v5[40] = swift_task_alloc();
  v9 = type metadata accessor for EditNoteActivity();
  v5[41] = v9;
  v5[42] = *(v9 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = type metadata accessor for FastSyncControllerPool.PresenceAction(0);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v10 = type metadata accessor for FastSyncPresenceController.PresenceChangeEvent(0);
  v5[50] = v10;
  v5[51] = *(v10 - 8);
  v5[52] = swift_task_alloc();
  sub_10015DA04(&qword_1006C5818);
  v5[53] = swift_task_alloc();
  v11 = type metadata accessor for SuspendingClock();
  v5[54] = v11;
  v12 = *(v11 - 8);
  v5[55] = v12;
  v5[56] = *(v12 + 64);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = type metadata accessor for MainActor();
  v5[60] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[61] = v14;
  v5[62] = v13;

  return _swift_task_switch(sub_10038CC88, v14, v13);
}

uint64_t sub_10038CC88()
{
  SuspendingClock.init()();
  v1 = sub_1001915F8(_swiftEmptyArrayStorage);
  sub_10015DA04(&qword_1006C5820);
  v2 = swift_allocObject();
  *(v0 + 504) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = AsyncChannel.makeAsyncIterator()();
  *(v0 + 512) = v3;
  *(v0 + 128) = v3;
  *(v0 + 136) = v4 & 1;
  *(v0 + 520) = 0;
  *(v0 + 528) = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  *(v0 + 536) = v5;
  v6 = sub_10015DA04(&qword_1006C5828);
  *v5 = v0;
  v5[1] = sub_10038CDAC;
  v7 = *(v0 + 424);

  return AsyncChannel.Iterator.next()(v7, v6);
}

uint64_t sub_10038CDAC()
{
  v1 = *(*v0 + 528);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_10038CEE8, v2, v4);
}

uint64_t sub_10038CEE8()
{

  v1 = *(v0 + 488);
  v2 = *(v0 + 496);

  return _swift_task_switch(sub_10038CF4C, v1, v2);
}

void sub_10038CF4C()
{
  v1 = *(v0 + 424);
  if ((*(*(v0 + 408) + 48))(v1, 1, *(v0 + 400)) == 1)
  {

    v2 = swift_task_alloc();
    *(v0 + 544) = v2;
    *v2 = v0;
    v2[1] = sub_10038DB98;

    sub_100386174(1);
    return;
  }

  sub_100391B20(v1, *(v0 + 416), type metadata accessor for FastSyncPresenceController.PresenceChangeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 416);
  if (!EnumCaseMultiPayload)
  {
    v7 = *(v4 + *(sub_10015DA04(&qword_1006C5838) + 48));
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v23 = *(v0 + 504);
      v24 = *(v0 + 376);
      v117 = *(v0 + 312);
      v120 = *(v0 + 520);
      v25 = *(v0 + 192);
      v114 = *(v0 + 184);
      v115 = *(v0 + 464);
      sub_100391B20(v4, v24, type metadata accessor for FastSyncControllerPool.PresenceAction);
      v26 = v7;
      v27 = [v26 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = [v26 editorIdentifier];
      [v25 fastSyncPresenceDebounceDuration];
      v32 = static Duration.seconds(_:)();
      v34 = v33;
      v35 = swift_task_alloc();
      v35[2] = v31;
      v35[3] = v115;
      v35[4] = v32;
      v35[5] = v34;
      v35[6] = v114;
      v35[7] = v28;
      v35[8] = v30;
      v35[9] = v24;
      v35[10] = v26;
      os_unfair_lock_lock((v23 + 24));
      sub_100391BE8((v23 + 16), v117);
      os_unfair_lock_unlock((v23 + 24));
      if (v120)
      {
        return;
      }

      v118 = v26;
      v121 = v30;
      v55 = *(v0 + 304);
      v54 = *(v0 + 312);
      v56 = *(v0 + 264);
      v57 = *(v0 + 272);

      sub_100006038(v54, v55, &qword_1006C5810);
      if ((*(v57 + 48))(v55, 1, v56) == 1)
      {
        v58 = (v0 + 304);
        sub_1000073B4(*(v0 + 312), &qword_1006C5810);
      }

      else
      {
        v113 = *(v0 + 504);
        v104 = *(v0 + 464);
        v116 = *(v0 + 456);
        v71 = *(v0 + 448);
        v72 = *(v0 + 432);
        v101 = v72;
        v73 = *(v0 + 296);
        v74 = *(v0 + 288);
        v102 = v74;
        v103 = *(v0 + 440);
        v75 = *(v0 + 272);
        v76 = *(v0 + 256);
        v77 = *(v0 + 264);
        v109 = *(v0 + 184);
        v110 = *(v0 + 280);
        v111 = *(v0 + 176);
        v112 = *(v0 + 248);
        v108 = *(v75 + 32);
        v100 = v77;
        v108(v73, *(v0 + 304), v77);
        v78 = type metadata accessor for TaskPriority();
        v106 = *(v78 - 8);
        v107 = v78;
        (*(v106 + 56))(v76, 1, 1, v78);
        (*(v75 + 16))(v74, v73, v77);
        (*(v103 + 16))(v116, v104, v72);
        v79 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v80 = (v110 + *(v103 + 80) + v79) & ~*(v103 + 80);
        v99 = (v71 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
        v105 = v28;
        v81 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
        v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
        v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
        v84 = swift_allocObject();
        *(v84 + 16) = 0;
        *(v84 + 24) = 0;
        v108(v84 + v79, v102, v100);
        (*(v103 + 32))(v84 + v80, v116, v101);
        *(v84 + v99) = v113;
        *(v84 + v81) = v31;
        *(v84 + v82) = v109;
        v85 = (v84 + v83);
        *v85 = v105;
        v85[1] = v121;
        *(v84 + ((v83 + 23) & 0xFFFFFFFFFFFFFFF8)) = v111;
        sub_100006038(v76, v112, &qword_1006C2170);
        LODWORD(v83) = (*(v106 + 48))(v112, 1, v107);

        v86 = v109;

        v87 = *(v0 + 248);
        if (v83 == 1)
        {
          sub_1000073B4(*(v0 + 248), &qword_1006C2170);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v106 + 8))(v87, v107);
        }

        if (*(v84 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v88 = dispatch thunk of Actor.unownedExecutor.getter();
          v90 = v89;
          swift_unknownObjectRelease();
        }

        else
        {
          v88 = 0;
          v90 = 0;
        }

        v91 = **(v0 + 200);

        if (v90 | v88)
        {
          v92 = v0 + 56;
          *(v0 + 56) = 0;
          *(v0 + 64) = 0;
          *(v0 + 72) = v88;
          *(v0 + 80) = v90;
        }

        else
        {
          v92 = 0;
        }

        v93 = *(v0 + 296);
        v94 = *(v0 + 264);
        v95 = *(v0 + 272);
        v96 = *(v0 + 256);
        *(v0 + 88) = 1;
        *(v0 + 96) = v92;
        *(v0 + 104) = v91;
        swift_task_create();

        sub_1000073B4(v96, &qword_1006C2170);
        (*(v95 + 8))(v93, v94);
        v58 = (v0 + 312);
      }

      v97 = *v58;
      v98 = *(v0 + 376);
      sub_1000073B4(v97, &qword_1006C5810);
      sub_100391B88(v98, type metadata accessor for FastSyncControllerPool.PresenceAction);
      v67 = 0;
      goto LABEL_42;
    }

    v12 = *(v0 + 384);
    v11 = *(v0 + 392);
    swift_storeEnumTagMultiPayload();
    sub_100391E88(v11, v12, type metadata accessor for FastSyncControllerPool.PresenceAction);
    v13 = swift_getEnumCaseMultiPayload();
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = **(v0 + 384);
        RealtimeCollaborationController.leaveGroupActivity()();
      }
    }

    else
    {
      v59 = *(v0 + 384);
      v61 = *(v0 + 336);
      v60 = *(v0 + 344);
      v63 = *(v0 + 320);
      v62 = *(v0 + 328);
      v64 = sub_10015DA04(&qword_1006C4E48);
      v65 = *(v64 + 48);
      v66 = *(v59 + *(v64 + 64));
      (*(v61 + 32))(v60, v59, v62);
      sub_1001F7498(v59 + v65, v63, &qword_1006BFC50);
      RealtimeCollaborationController.joinGroupActivity(_:with:)(v60, v63);

      sub_1000073B4(v63, &qword_1006BFC50);
      (*(v61 + 8))(v60, v62);
    }

    v10 = *(v0 + 392);
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(v0 + 360);
    v5 = *(v0 + 368);
    v7 = *(v4 + *(sub_10015DA04(&qword_1006C5838) + 48));
    sub_100391B20(v4, v5, type metadata accessor for FastSyncControllerPool.PresenceAction);
    sub_100391E88(v5, v6, type metadata accessor for FastSyncControllerPool.PresenceAction);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = **(v0 + 360);
        RealtimeCollaborationController.leaveGroupActivity()();

        v10 = *(v0 + 368);
        goto LABEL_40;
      }
    }

    else
    {
      v46 = *(v0 + 360);
      v48 = *(v0 + 336);
      v47 = *(v0 + 344);
      v50 = *(v0 + 320);
      v49 = *(v0 + 328);
      v51 = sub_10015DA04(&qword_1006C4E48);
      v52 = *(v51 + 48);
      v53 = *(v46 + *(v51 + 64));
      (*(v48 + 32))(v47, v46, v49);
      sub_1001F7498(v46 + v52, v50, &qword_1006BFC50);
      RealtimeCollaborationController.joinGroupActivity(_:with:)(v47, v50);

      sub_1000073B4(v50, &qword_1006BFC50);
      (*(v48 + 8))(v47, v49);
    }

    v10 = *(v0 + 368);
LABEL_40:
    [v7 groupActivityDidChange];

    sub_100391B88(v10, type metadata accessor for FastSyncControllerPool.PresenceAction);
LABEL_41:
    v67 = *(v0 + 520);
LABEL_42:
    *(v0 + 520) = v67;
    *(v0 + 528) = static MainActor.shared.getter();
    v68 = swift_task_alloc();
    *(v0 + 536) = v68;
    v69 = sub_10015DA04(&qword_1006C5828);
    *v68 = v0;
    v68[1] = sub_10038CDAC;
    v70 = *(v0 + 424);

    AsyncChannel.Iterator.next()(v70, v69);
    return;
  }

  v15 = *(v0 + 232);
  v16 = *(v0 + 240);
  v17 = *(v4 + *(sub_10015DA04(&qword_1006C5830) + 48));
  sub_100391B20(v4, v16, type metadata accessor for FastSyncEditorShareChangedEvent);
  v119 = v17;
  RealtimeCollaborationController.shareChanged(for:with:)(v16 + *(v15 + 24), v16 + *(v15 + 28));
  v18 = *(v16 + 8);
  if ((v18 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C6420);
    sub_100391770();
    Set.Iterator.init(_cocoa:)();
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
  }

  else
  {
    v36 = -1 << *(v18 + 32);
    v19 = v18 + 56;
    v20 = ~v36;
    v37 = -v36;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v22 = v38 & *(v18 + 56);

    v21 = 0;
  }

  v39 = (v20 + 64) >> 6;
  if (v18 < 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v40 = v21;
    v41 = v22;
    v42 = v21;
    if (!v22)
    {
      break;
    }

LABEL_27:
    v43 = (v41 - 1) & v41;
    v44 = *(*(v18 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));
    if (!v44)
    {
LABEL_33:
      sub_100391B88(*(v0 + 240), type metadata accessor for FastSyncEditorShareChangedEvent);

      sub_10019E530();
      goto LABEL_41;
    }

    while (1)
    {
      [v44 groupActivityDidChange];

      v21 = v42;
      v22 = v43;
      if ((v18 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_29:
      v45 = __CocoaSet.Iterator.next()();
      if (v45)
      {
        *(v0 + 168) = v45;
        sub_1000054A4(0, &qword_1006C6420);
        swift_dynamicCast();
        v44 = *(v0 + 160);
        v42 = v21;
        v43 = v22;
        if (v44)
        {
          continue;
        }
      }

      goto LABEL_33;
    }
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v42 >= v39)
    {
      goto LABEL_33;
    }

    v41 = *(v19 + 8 * v42);
    ++v40;
    if (v41)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_10038DB98()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_10038DE5C;
  }

  else
  {
    v5 = sub_10038DCD4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10038DCD4()
{

  (*(v0[55] + 8))(v0[58], v0[54]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10038DE5C()
{
  v21 = v0;
  v1 = v0[69];

  v0[18] = v1;
  swift_errorRetain();
  sub_10015DA04(&unk_1006C9B40);
  if (swift_dynamicCast())
  {
    v3 = v0[27];
    v2 = v0[28];
    v4 = v0[26];

    (*(v3 + 8))(v2, v4);
  }

  else
  {

    swift_errorRetain();
    v5 = static os_log_type_t.fault.getter();
    v6 = Logger.logObject.getter();
    v7 = os_log_type_enabled(v6, v5);
    v8 = v0[69];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v9 = 136315650;
      v10 = StaticString.description.getter();
      v12 = sub_100009D88(v10, v11, &v18);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2048;
      *(v9 + 14) = 300;
      *(v9 + 22) = 2080;
      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);
      v13 = v20;
      v0[14] = v19;
      v0[15] = v13;
      v14._object = 0x800000010056E990;
      v14._countAndFlagsBits = 0xD00000000000002FLL;
      String.append(_:)(v14);
      v0[19] = v8;
      _print_unlocked<A, B>(_:_:)();
      v15 = sub_100009D88(v0[14], v0[15], &v18);

      *(v9 + 24) = v15;
      _os_log_impl(&_mh_execute_header, v6, v5, "Failed assertion at %s:%lu: %s", v9, 0x20u);
      swift_arrayDestroy();
    }
  }

  (*(v0[55] + 8))(v0[58], v0[54]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10038E228@<X0>(void *a1@<X0>, Swift::UInt a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, NSObject *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11)
{
  v120 = a8;
  v112 = a7;
  v114 = a6;
  v115 = a4;
  v116 = a5;
  v113 = a3;
  v128 = a9;
  v13 = type metadata accessor for SuspendingClock.Instant();
  v133 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v111 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v109 - v17;
  v19 = __chkstk_darwin(v16);
  v110 = &v109 - v20;
  v21 = __chkstk_darwin(v19);
  v123 = &v109 - v22;
  v23 = __chkstk_darwin(v21);
  v122 = &v109 - v24;
  v25 = __chkstk_darwin(v23);
  v132 = &v109 - v26;
  v27 = __chkstk_darwin(v25);
  v130 = &v109 - v28;
  __chkstk_darwin(v27);
  v129 = &v109 - v29;
  v30 = sub_10015DA04(&qword_1006C1160);
  v31 = __chkstk_darwin(v30 - 8);
  v117 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v109 - v34;
  __chkstk_darwin(v33);
  v37 = &v109 - v36;
  v38 = type metadata accessor for FastSyncPresenceController.EditorDebounceState(0);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v131 = &v109 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = a1;
  v41 = *a1;
  v42 = *(v41 + 16);
  v134 = v39;
  if (v42)
  {
    v43 = sub_1002ED08C(a2);
    if (v44)
    {
      v39 = v134;
      sub_100391E88(*(v41 + 56) + *(v134 + 72) * v43, v37, type metadata accessor for FastSyncPresenceController.EditorDebounceState);
      v45 = *(v39 + 56);
      v46 = v37;
      v47 = 0;
      goto LABEL_6;
    }

    v39 = v134;
  }

  v45 = *(v39 + 56);
  v46 = v37;
  v47 = 1;
LABEL_6:
  v124 = v45;
  v45(v46, v47, 1, v38);
  v121 = a10;
  sub_1001F7498(v37, v35, &qword_1006C1160);
  if ((*(v39 + 48))(v35, 1, v38) == 1)
  {
    v48 = sub_10015DA04(&qword_1006C5848);
    v49 = v131;
    (*(*(v48 - 8) + 56))(v131, 1, 1, v48);
    sub_1000073B4(v35, &qword_1006C1160);
  }

  else
  {
    v49 = v131;
    sub_100391B20(v35, v131, type metadata accessor for FastSyncPresenceController.EditorDebounceState);
  }

  v126 = a2;
  v119 = a11;
  v50 = sub_10015DA04(&qword_1006C5848);
  v118 = *(v50 - 1);
  v51 = (*(v118 + 48))(v49, 1, v50);
  v125 = v38;
  if (v51 == 1)
  {
    v52 = v50;
    SuspendingClock.now.getter();
    static SuspendingClock.Instant.+ infix(_:_:)();
    v53 = v120;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    v56 = v13;
    if (os_log_type_enabled(v54, v55))
    {
      v57 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      *v57 = 136315394;
      *(v57 + 4) = sub_100009D88(v112, v53, &v135);
      *(v57 + 12) = 2080;
      v58 = Duration.description.getter();
      v60 = sub_100009D88(v58, v59, &v135);

      *(v57 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "%s: Debouncing for %s", v57, 0x16u);
      swift_arrayDestroy();
    }

    v61 = v52[12];
    v62 = v52[16];
    v63 = v52[20];
    v64 = v133;
    v65 = *(v133 + 16);
    v66 = v117;
    v65(v117, v129, v56);
    v65((v66 + v61), v130, v56);
    sub_100391E88(v121, v66 + v62, type metadata accessor for FastSyncControllerPool.PresenceAction);
    v67 = v118;
    v68 = v119;
    *(v66 + v63) = v119;
    (*(v67 + 56))(v66, 0, 1, v52);
    v124(v66, 0, 1, v125);
    v69 = v68;
    sub_100249918(v66, v126);
    (*(v64 + 8))(v129, v56);
    v70 = v128;
    (*(v64 + 32))(v128, v130, v56);
    return (*(v64 + 56))(v70, 0, 1, v56);
  }

  else
  {
    v72 = v50[12];

    v73 = v133;
    v74 = *(v133 + 32);
    v74(v132, v49, v13);
    v75 = v49 + v72;
    v76 = v122;
    v74(v122, v75, v13);
    v77 = v110;
    SuspendingClock.now.getter();
    v78 = v123;
    static SuspendingClock.Instant.+ infix(_:_:)();
    v79 = v73 + 8;
    v130 = *(v73 + 8);
    (v130)(v77, v13);
    v80 = v73 + 16;
    v81 = *(v73 + 16);
    v81(v18, v78, v13);
    v82 = v111;
    v129 = v81;
    v115 = v80;
    v81(v111, v76, v13);
    v83 = v120;

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();

    v86 = os_log_type_enabled(v84, v85);
    v116 = v79;
    if (v86)
    {
      v87 = swift_slowAlloc();
      v114 = v84;
      v88 = v87;
      v135 = swift_slowAlloc();
      *v88 = 136315394;
      *(v88 + 4) = sub_100009D88(v112, v83, &v135);
      *(v88 + 12) = 2080;
      static SuspendingClock.Instant.- infix(_:_:)();
      v89 = Duration.description.getter();
      v90 = v82;
      v91 = v89;
      LODWORD(v120) = v85;
      v93 = v92;
      v94 = v130;
      (v130)(v90, v13);
      (v94)(v18, v13);
      v95 = sub_100009D88(v91, v93, &v135);

      *(v88 + 14) = v95;
      v96 = v114;
      _os_log_impl(&_mh_execute_header, v114, v120, "%s: Extending deadline for %s", v88, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v97 = v130;
      (v130)(v82, v13);
      (v97)(v18, v13);
    }

    v98 = v50[16];
    v99 = v50[12];
    v100 = v50[20];
    v101 = v117;
    v102 = v129;
    (v129)(v117, v132, v13);
    v103 = v123;
    (v102)(v101 + v99, v123, v13);
    sub_100391E88(v121, v101 + v98, type metadata accessor for FastSyncControllerPool.PresenceAction);
    v104 = v118;
    v105 = v119;
    *(v101 + v100) = v119;
    (*(v104 + 56))(v101, 0, 1, v50);
    v124(v101, 0, 1, v125);
    v106 = v105;
    sub_100249918(v101, v126);
    v107 = v103;
    v108 = v130;
    (v130)(v107, v13);
    (v108)(v122, v13);
    (v108)(v132, v13);
    (*(v133 + 56))(v128, 1, 1, v13);
    return sub_100391B88(v131 + v98, type metadata accessor for FastSyncControllerPool.PresenceAction);
  }
}

uint64_t sub_10038ED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v13;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  *(v8 + 104) = type metadata accessor for FastSyncPresenceController.PresenceChangeEvent(0);
  *(v8 + 112) = swift_task_alloc();
  type metadata accessor for FastSyncControllerPool.PresenceAction(0);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = type metadata accessor for FastSyncPresenceController.SleepResult(0);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v9 = type metadata accessor for SuspendingClock.Instant();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  sub_10015DA04(&qword_1006C5810);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();

  return _swift_task_switch(sub_10038EF3C, 0, 0);
}

uint64_t sub_10038EF3C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  (*(v4 + 16))(v2, *(v0 + 40), v3);
  v5 = *(v4 + 56);
  *(v0 + 192) = v5;
  *(v0 + 200) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v2, 0, 1, v3);
  sub_100006038(v2, v1, &qword_1006C5810);
  v6 = *(v4 + 48);
  *(v0 + 208) = v6;
  if (v6(v1, 1, v3) == 1)
  {
    v7 = *(v0 + 176);
    sub_1000073B4(*(v0 + 184), &qword_1006C5810);
    sub_1000073B4(v7, &qword_1006C5810);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v11 + 32);
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    *(v0 + 216) = v12;
    *(v0 + 224) = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v13, v14, v10);
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v15 = swift_task_alloc();
    *(v0 + 232) = v15;
    v16 = type metadata accessor for SuspendingClock();
    v17 = sub_100391E1C(&qword_1006C5840, &type metadata accessor for SuspendingClock);
    *v15 = v0;
    v15[1] = sub_10038F1D4;
    v18 = *(v0 + 168);
    v19 = *(v0 + 48);

    return static Task<>.sleep<A>(until:tolerance:clock:)(v18, v0 + 16, v19, v16, v17);
  }
}

uint64_t sub_10038F1D4()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10038FB78;
  }

  else
  {
    v2 = sub_10038F2E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10038F2E8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v2;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = v4;
  os_unfair_lock_lock((v8 + 24));
  sub_100391E64((v8 + 16), v3);
  os_unfair_lock_unlock((v8 + 24));
  if (!v1)
  {
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    sub_1000073B4(*(v0 + 184), &qword_1006C5810);

    sub_100391E88(v10, v11, type metadata accessor for FastSyncPresenceController.SleepResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = *(v0 + 192);
      v13 = *(v0 + 184);
      v14 = *(v0 + 152);
      v15 = *(v0 + 136);
      v17 = *(v0 + 112);
      v16 = *(v0 + 120);
      v18 = sub_10015DA04(&qword_1006C5838);
      v19 = *(v15 + *(v18 + 48));
      *(v0 + 248) = v19;
      sub_100391B20(v15, v16, type metadata accessor for FastSyncControllerPool.PresenceAction);
      v12(v13, 1, 1, v14);
      v20 = *(v18 + 48);
      sub_100391E88(v16, v17, type metadata accessor for FastSyncControllerPool.PresenceAction);
      *(v17 + v20) = v19;
      swift_storeEnumTagMultiPayload();
      v21 = v19;
      v22 = swift_task_alloc();
      *(v0 + 256) = v22;
      *v22 = v0;
      v22[1] = sub_10038F7A0;
      v23 = *(v0 + 112);

      AsyncChannel.send(_:)(v23);
    }

    else
    {
      v24 = *(v0 + 216);
      v25 = *(v0 + 192);
      v26 = *(v0 + 184);
      v27 = *(v0 + 152);
      v28 = *(v0 + 136);
      sub_100391B88(*(v0 + 144), type metadata accessor for FastSyncPresenceController.SleepResult);
      v24(v26, v28, v27);
      v25(v26, 0, 1, v27);
      v29 = *(v0 + 208);
      v30 = *(v0 + 176);
      v31 = *(v0 + 184);
      v32 = *(v0 + 152);
      (*(*(v0 + 160) + 8))(*(v0 + 168), v32);
      sub_100006038(v31, v30, &qword_1006C5810);
      if (v29(v30, 1, v32) == 1)
      {
        v33 = *(v0 + 176);
        sub_1000073B4(*(v0 + 184), &qword_1006C5810);
        sub_1000073B4(v33, &qword_1006C5810);

        v34 = *(v0 + 8);

        v34();
      }

      else
      {
        v35 = *(v0 + 216);
        v36 = *(v0 + 168);
        v37 = *(v0 + 176);
        v38 = *(v0 + 152);
        *(v0 + 224) = (*(v0 + 160) + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v35(v36, v37, v38);
        *(v0 + 24) = 0;
        *(v0 + 16) = 0;
        *(v0 + 32) = 1;
        v39 = swift_task_alloc();
        *(v0 + 232) = v39;
        v40 = type metadata accessor for SuspendingClock();
        v41 = sub_100391E1C(&qword_1006C5840, &type metadata accessor for SuspendingClock);
        *v39 = v0;
        v39[1] = sub_10038F1D4;
        v42 = *(v0 + 168);
        v43 = *(v0 + 48);

        static Task<>.sleep<A>(until:tolerance:clock:)(v42, v0 + 16, v43, v40, v41);
      }
    }
  }
}

uint64_t sub_10038F7A0()
{
  v1 = *(*v0 + 112);

  sub_100391B88(v1, type metadata accessor for FastSyncPresenceController.PresenceChangeEvent);

  return _swift_task_switch(sub_10038F8CC, 0, 0);
}

uint64_t sub_10038F8CC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);

  sub_100391B88(v2, type metadata accessor for FastSyncControllerPool.PresenceAction);
  sub_100391B88(v1, type metadata accessor for FastSyncPresenceController.SleepResult);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 152);
  (*(*(v0 + 160) + 8))(*(v0 + 168), v6);
  sub_100006038(v5, v4, &qword_1006C5810);
  if (v3(v4, 1, v6) == 1)
  {
    v7 = *(v0 + 176);
    sub_1000073B4(*(v0 + 184), &qword_1006C5810);
    sub_1000073B4(v7, &qword_1006C5810);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 216);
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v13 = *(v0 + 152);
    *(v0 + 224) = (*(v0 + 160) + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v10(v11, v12, v13);
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v14 = swift_task_alloc();
    *(v0 + 232) = v14;
    v15 = type metadata accessor for SuspendingClock();
    v16 = sub_100391E1C(&qword_1006C5840, &type metadata accessor for SuspendingClock);
    *v14 = v0;
    v14[1] = sub_10038F1D4;
    v17 = *(v0 + 168);
    v18 = *(v0 + 48);

    return static Task<>.sleep<A>(until:tolerance:clock:)(v17, v0 + 16, v18, v15, v16);
  }
}

uint64_t sub_10038FB78()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_1000073B4(v0[23], &qword_1006C5810);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10038FC70@<X0>(void *a1@<X0>, Swift::UInt a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v97 = a7;
  v88 = a6;
  v79 = a5;
  v83 = a4;
  v93 = a3;
  v9 = type metadata accessor for FastSyncControllerPool.PresenceAction(0);
  __chkstk_darwin(v9 - 8);
  v96 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SuspendingClock.Instant();
  v98 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v84 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v85 = &v77 - v15;
  v16 = __chkstk_darwin(v14);
  v95 = &v77 - v17;
  v18 = __chkstk_darwin(v16);
  v94 = &v77 - v19;
  __chkstk_darwin(v18);
  v21 = &v77 - v20;
  v22 = sub_10015DA04(&qword_1006C1160);
  v23 = __chkstk_darwin(v22 - 8);
  v89 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v77 - v26;
  __chkstk_darwin(v25);
  v29 = &v77 - v28;
  v30 = type metadata accessor for FastSyncPresenceController.EditorDebounceState(0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a1;
  v34 = *a1;
  if (*(v34 + 16))
  {
    v35 = sub_1002ED08C(a2);
    if (v36)
    {
      v37 = *(v34 + 56);
      v38 = v31;
      sub_100391E88(v37 + *(v31 + 72) * v35, v29, type metadata accessor for FastSyncPresenceController.EditorDebounceState);
      v39 = *(v31 + 56);
      v40 = v29;
      v41 = 0;
    }

    else
    {
      v38 = v31;
      v39 = *(v31 + 56);
      v40 = v29;
      v41 = 1;
    }

    v82 = v39;
    v39(v40, v41, 1, v30);
  }

  else
  {
    v82 = *(v31 + 56);
    v82(v29, 1, 1, v30);
    v38 = v31;
  }

  sub_1001F7498(v29, v27, &qword_1006C1160);
  v42 = a2;
  if ((*(v38 + 48))(v27, 1, v30) == 1)
  {
    v43 = sub_10015DA04(&qword_1006C5848);
    (*(*(v43 - 8) + 56))(v33, 1, 1, v43);
    sub_1000073B4(v27, &qword_1006C1160);
  }

  else
  {
    sub_100391B20(v27, v33, type metadata accessor for FastSyncPresenceController.EditorDebounceState);
  }

  v44 = v11;
  v45 = v98;
  v86 = v38;
  v87 = v30;
  v90 = v42;
  v46 = sub_10015DA04(&qword_1006C5848);
  v81 = *(v46 - 1);
  result = (*(v81 + 48))(v33, 1, v46);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v48 = v46[12];
    v92 = v46[16];
    v80 = v46;
    v49 = *&v33[v46[20]];
    v50 = v45[2];
    v50(v21, &v33[v48], v11);
    sub_100391E1C(&qword_1006C5850, &type metadata accessor for SuspendingClock.Instant);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v78 = v49;
      v51 = v45[1];
      v77 = v45 + 1;
      v93 = v51;
      v51(v21, v11);
      v52 = v45[4];
      v53 = v94;
      v52(v94, v33, v11);
      v54 = &v33[v48];
      v55 = v95;
      v52(v95, v54, v11);
      sub_100391B20(&v33[v92], v96, type metadata accessor for FastSyncControllerPool.PresenceAction);
      v56 = v85;
      v50(v85, v55, v11);
      v57 = v84;
      v50(v84, v53, v11);
      v58 = v88;

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v99 = v98;
        *v61 = 136315394;
        *(v61 + 4) = sub_100009D88(v79, v58, &v99);
        *(v61 + 12) = 2080;
        static SuspendingClock.Instant.- infix(_:_:)();
        v62 = Duration.description.getter();
        v64 = v63;
        v65 = v57;
        v66 = v93;
        v93(v65, v44);
        v66(v56, v44);
        v67 = sub_100009D88(v62, v64, &v99);

        *(v61 + 14) = v67;
        _os_log_impl(&_mh_execute_header, v59, v60, "%s: Debounce finished after %s", v61, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v69 = v93;
        v93(v57, v11);
        v69(v56, v11);
      }

      v71 = v89;
      v70 = v90;
      v72 = v87;
      v73 = v78;
      (*(v81 + 56))(v89, 1, 1, v80);
      v82(v71, 0, 1, v72);
      sub_100249918(v71, v70);
      v74 = v93;
      v93(v95, v44);
      v74(v94, v44);
      v75 = *(sub_10015DA04(&qword_1006C5838) + 48);
      v76 = v97;
      sub_100391B20(v96, v97, type metadata accessor for FastSyncControllerPool.PresenceAction);
      *(v76 + v75) = v73;
      type metadata accessor for FastSyncPresenceController.SleepResult(0);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {

      (v45[4])(v97, v21, v11);
      type metadata accessor for FastSyncPresenceController.SleepResult(0);
      swift_storeEnumTagMultiPayload();
      sub_100391B88(&v33[v92], type metadata accessor for FastSyncControllerPool.PresenceAction);
      v68 = v45[1];
      v68(&v33[v48], v11);
      return (v68)(v33, v11);
    }
  }

  return result;
}

void FastSyncPresenceController.realtimeCollaborationControllerSessionWillBegin(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_10015DA04(&qword_1006C5670);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FastSyncPresenceController.realtimeCollaborationControllerSessionWillBegin", v9, 2u);
  }

  v10 = OBJC_IVAR___ICFastSyncPresenceController_controllerPool;
  swift_beginAccess();
  sub_100006038(v2 + v10, v6, &qword_1006C5670);
  v11 = type metadata accessor for FastSyncControllerPool(0);
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) != 1)
  {
    v12 = *&v6[*(v11 + 36)];
    v13 = swift_allocObject();
    *(v13 + 16) = a1;

    v28 = a1;
    sub_100391B88(v6, type metadata accessor for FastSyncControllerPool);
    sub_100391690(v12, sub_10036596C, v13, v35);
    v14 = v35[0];
    v15 = v35[1];
    v16 = v37;
    v17 = v38;
    v29 = v36;
    v30 = v39;
    v18 = (v36 + 64) >> 6;
    while (1)
    {
      if (v14 < 0)
      {
        v24 = __CocoaSet.Iterator.next()();
        if (!v24 || (v31 = v24, sub_1000054A4(0, &qword_1006C6420), swift_dynamicCast(), v23 = v32, v21 = v16, v22 = v17, !v32))
        {
LABEL_19:
          sub_10019E530();

          return;
        }
      }

      else
      {
        v19 = v16;
        v20 = v17;
        v21 = v16;
        if (!v17)
        {
          while (1)
          {
            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v21 >= v18)
            {
              goto LABEL_19;
            }

            v20 = *(v15 + 8 * v21);
            ++v19;
            if (v20)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          break;
        }

LABEL_11:
        v22 = (v20 - 1) & v20;
        v23 = *(*(v14 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        if (!v23)
        {
          goto LABEL_19;
        }
      }

      v34 = v23;
      if (v30(&v34))
      {
        v33 = &OBJC_PROTOCOL___ICRealtimeCollaborationDelegate_0;
        v25 = swift_dynamicCastObjCProtocolConditional();
        if (v25)
        {
          v26 = v25;
          if ([v25 respondsToSelector:"realtimeCollaborationControllerSessionWillBegin:"])
          {
            [v26 realtimeCollaborationControllerSessionWillBegin:v28];
          }
        }
      }

      v16 = v21;
      v17 = v22;
    }
  }

  __break(1u);
}

void FastSyncPresenceController.realtimeCollaborationControllerSessionDidBegin(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_10015DA04(&qword_1006C5670);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FastSyncPresenceController.realtimeCollaborationControllerSessionDidBegin", v9, 2u);
  }

  v10 = OBJC_IVAR___ICFastSyncPresenceController_controllerPool;
  swift_beginAccess();
  sub_100006038(v2 + v10, v6, &qword_1006C5670);
  v11 = type metadata accessor for FastSyncControllerPool(0);
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) != 1)
  {
    v12 = *&v6[*(v11 + 36)];
    v13 = swift_allocObject();
    *(v13 + 16) = a1;

    v30 = a1;
    sub_100391B88(v6, type metadata accessor for FastSyncControllerPool);
    sub_100391690(v12, sub_1003923D0, v13, v37);
    v14 = v37[0];
    v15 = v37[1];
    v16 = v39;
    v17 = v40;
    v31 = v38;
    v32 = v41;
    v18 = (v38 + 64) >> 6;
    while (1)
    {
      if (v14 < 0)
      {
        v24 = __CocoaSet.Iterator.next()();
        if (!v24 || (v33 = v24, sub_1000054A4(0, &qword_1006C6420), swift_dynamicCast(), v23 = v34, v21 = v16, v22 = v17, !v34))
        {
LABEL_21:
          sub_10019E530();

          return;
        }
      }

      else
      {
        v19 = v16;
        v20 = v17;
        v21 = v16;
        if (!v17)
        {
          while (1)
          {
            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v21 >= v18)
            {
              goto LABEL_21;
            }

            v20 = *(v15 + 8 * v21);
            ++v19;
            if (v20)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          break;
        }

LABEL_11:
        v22 = (v20 - 1) & v20;
        v23 = *(*(v14 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        if (!v23)
        {
          goto LABEL_21;
        }
      }

      v36 = v23;
      if (v32(&v36))
      {
        v25 = [v23 note];
        if (v25)
        {
          v26 = v25;
          [v25 setIsFastSyncSessionActive:1];
        }

        v35 = &OBJC_PROTOCOL___ICRealtimeCollaborationDelegate_0;
        v27 = swift_dynamicCastObjCProtocolConditional();
        if (v27)
        {
          v28 = v27;
          if ([v27 respondsToSelector:"realtimeCollaborationControllerSessionDidBegin:"])
          {
            [v28 realtimeCollaborationControllerSessionDidBegin:v30];
          }
        }
      }

      v16 = v21;
      v17 = v22;
    }
  }

  __break(1u);
}

void FastSyncPresenceController.realtimeCollaborationControllerSessionDidTerminate(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_10015DA04(&qword_1006C5670);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FastSyncPresenceController.realtimeCollaborationControllerSessionDidTerminate", v9, 2u);
  }

  v10 = OBJC_IVAR___ICFastSyncPresenceController_controllerPool;
  swift_beginAccess();
  sub_100006038(v2 + v10, v6, &qword_1006C5670);
  v11 = type metadata accessor for FastSyncControllerPool(0);
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) != 1)
  {
    v12 = *&v6[*(v11 + 36)];
    v13 = swift_allocObject();
    *(v13 + 16) = a1;

    v30 = a1;
    sub_100391B88(v6, type metadata accessor for FastSyncControllerPool);
    sub_100391690(v12, sub_1003923D0, v13, v37);
    v14 = v37[0];
    v15 = v37[1];
    v16 = v39;
    v17 = v40;
    v31 = v38;
    v32 = v41;
    v18 = (v38 + 64) >> 6;
    while (1)
    {
      if (v14 < 0)
      {
        v24 = __CocoaSet.Iterator.next()();
        if (!v24 || (v33 = v24, sub_1000054A4(0, &qword_1006C6420), swift_dynamicCast(), v23 = v34, v21 = v16, v22 = v17, !v34))
        {
LABEL_21:
          sub_10019E530();

          return;
        }
      }

      else
      {
        v19 = v16;
        v20 = v17;
        v21 = v16;
        if (!v17)
        {
          while (1)
          {
            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v21 >= v18)
            {
              goto LABEL_21;
            }

            v20 = *(v15 + 8 * v21);
            ++v19;
            if (v20)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          break;
        }

LABEL_11:
        v22 = (v20 - 1) & v20;
        v23 = *(*(v14 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        if (!v23)
        {
          goto LABEL_21;
        }
      }

      v36 = v23;
      if (v32(&v36))
      {
        v25 = [v23 note];
        if (v25)
        {
          v26 = v25;
          [v25 setIsFastSyncSessionActive:0];
        }

        v35 = &OBJC_PROTOCOL___ICRealtimeCollaborationDelegate_0;
        v27 = swift_dynamicCastObjCProtocolConditional();
        if (v27)
        {
          v28 = v27;
          if ([v27 respondsToSelector:"realtimeCollaborationControllerSessionDidTerminate:"])
          {
            [v28 realtimeCollaborationControllerSessionDidTerminate:v30];
          }
        }
      }

      v16 = v21;
      v17 = v22;
    }
  }

  __break(1u);
}

void FastSyncPresenceController.realtimeCollaborationControllerDidChangeSelectionState(_:)(void *a1)
{
  v3 = sub_10015DA04(&qword_1006C5670);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = OBJC_IVAR___ICFastSyncPresenceController_controllerPool;
  swift_beginAccess();
  sub_100006038(v1 + v6, v5, &qword_1006C5670);
  v7 = type metadata accessor for FastSyncControllerPool(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) != 1)
  {
    v8 = *&v5[*(v7 + 36)];
    v9 = swift_allocObject();
    *(v9 + 16) = a1;

    v24 = a1;
    sub_100391B88(v5, type metadata accessor for FastSyncControllerPool);
    sub_100391690(v8, sub_1003923D0, v9, v31);
    v10 = v31[0];
    v11 = v31[1];
    v12 = v33;
    v13 = v34;
    v25 = v32;
    v26 = v35;
    v14 = (v32 + 64) >> 6;
    while (1)
    {
      if (v10 < 0)
      {
        v20 = __CocoaSet.Iterator.next()();
        if (!v20 || (v27 = v20, sub_1000054A4(0, &qword_1006C6420), swift_dynamicCast(), v19 = v28, v17 = v12, v18 = v13, !v28))
        {
LABEL_17:
          sub_10019E530();

          return;
        }
      }

      else
      {
        v15 = v12;
        v16 = v13;
        v17 = v12;
        if (!v13)
        {
          while (1)
          {
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v17 >= v14)
            {
              goto LABEL_17;
            }

            v16 = *(v11 + 8 * v17);
            ++v15;
            if (v16)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          break;
        }

LABEL_9:
        v18 = (v16 - 1) & v16;
        v19 = *(*(v10 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
        if (!v19)
        {
          goto LABEL_17;
        }
      }

      v30 = v19;
      if (v26(&v30))
      {
        v29 = &OBJC_PROTOCOL___ICRealtimeCollaborationDelegate_0;
        v21 = swift_dynamicCastObjCProtocolConditional();
        if (v21)
        {
          v22 = v21;
          if ([v21 respondsToSelector:"realtimeCollaborationControllerDidChangeSelectionState:"])
          {
            [v22 realtimeCollaborationControllerDidChangeSelectionState:v24];
          }
        }
      }

      v12 = v17;
      v13 = v18;
    }
  }

  __break(1u);
}

uint64_t sub_100391690@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C6420);
    sub_100391770();
    Set.Iterator.init(_cocoa:)();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

unint64_t sub_100391770()
{
  result = qword_1006C17E0;
  if (!qword_1006C17E0)
  {
    sub_1000054A4(255, &qword_1006C6420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C17E0);
  }

  return result;
}

uint64_t sub_1003917EC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000A600;

  return sub_1003896B0(a1, a2, v6);
}

uint64_t sub_1003918BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A1FC;

  return sub_10038A704(a1, v4, v5, v7, v6);
}

uint64_t sub_10039197C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A1FC;

  return sub_10038B624(a1, v4, v5, v7, v6);
}

uint64_t sub_100391A3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A1FC;

  return sub_10038C86C(a1, v4, v5, v7, v6);
}

uint64_t sub_100391B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100391B88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100391C20(uint64_t a1)
{
  v3 = *(type metadata accessor for SuspendingClock.Instant() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SuspendingClock() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v1 + v8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v15 = *(v1 + v9);
  v12 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10000A1FC;

  return sub_10038ED84(a1, v10, v11, v1 + v4, v1 + v7, v16, v15, v12);
}

uint64_t sub_100391E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100391E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100391F10()
{
  type metadata accessor for SuspendingClock.Instant();
  if (v0 <= 0x3F)
  {
    sub_100391F84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100391F84()
{
  if (!qword_1006C5920)
  {
    type metadata accessor for FastSyncControllerPool.PresenceAction(255);
    sub_1000054A4(255, &qword_1006C6420);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006C5920);
    }
  }
}

uint64_t sub_100392030()
{
  sub_100392088();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100392088()
{
  if (!qword_1006C59D0)
  {
    __chkstk_darwin(0);
    type metadata accessor for SuspendingClock.Instant();
    type metadata accessor for FastSyncControllerPool.PresenceAction(255);
    sub_1000054A4(255, &qword_1006C6420);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1006C59D0);
    }
  }
}

void sub_1003921C8()
{
  type metadata accessor for RealtimeCollaborationController(319);
  if (v0 <= 0x3F)
  {
    sub_10000A364();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EditNoteActivity();
      if (v2 <= 0x3F)
      {
        sub_10039227C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10039227C()
{
  if (!qword_1006C5A60)
  {
    sub_1000054A4(255, &qword_1006BFD38);
    v0 = type metadata accessor for CloudRecordSnapshot();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C5A60);
    }
  }
}

void sub_1003922E4()
{
  sub_100391F84();
  if (v0 <= 0x3F)
  {
    sub_100392358();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100392358()
{
  if (!qword_1006C5B18)
  {
    type metadata accessor for FastSyncEditorShareChangedEvent(255);
    type metadata accessor for RealtimeCollaborationController(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006C5B18);
    }
  }
}

uint64_t sub_1003923D4()
{
  v1 = v0;
  v2 = sub_10015DA04(&qword_1006BD9D8);
  __chkstk_darwin(v2 - 8);
  v4 = v52 - v3;
  v5 = type metadata accessor for UICellAccessory.CheckmarkOptions();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for UICellAccessory.DisplayedState();
  v9 = *(v57 - 8);
  __chkstk_darwin(v57);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10015DA04(&qword_1006C21C0);
  __chkstk_darwin(v12 - 8);
  v14 = v52 - v13;
  v15 = type metadata accessor for UIListContentConfiguration();
  v58 = *(v15 - 8);
  __chkstk_darwin(v15);
  v59 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v64 = _swiftEmptyArrayStorage;
  v18 = *&v1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_unknownParticipant];
  if (v18)
  {
    v53 = v8;
    v54 = v4;
    v55 = v6;
    v56 = v5;
    v19 = v18;
    v20 = [v19 displayName];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(v17 + 16) = v21;
    *(v17 + 24) = v23;

    goto LABEL_10;
  }

  v24 = *&v1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_participant];
  if (v24)
  {
    v56 = v5;
    v25 = v24;
    v26 = [v25 ic_cachedDisplayNameFromContacts];
    v54 = v4;
    v55 = v6;
    v53 = v8;
    if (v26 || (v26 = [v25 ic_participantName]) != 0)
    {
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    *(v17 + 16) = v28;
    *(v17 + 24) = v30;

    v31 = v25;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_10:
    UICollectionViewListCell.defaultContentConfiguration()();

    UIListContentConfiguration.text.setter();
    UICollectionViewCell.contentConfiguration.getter();
    v32 = v58;
    v33 = (v58 + 56);
    if (v61)
    {
      sub_10015DA04(&qword_1006C21D0);
      v34 = swift_dynamicCast();
      (*(v32 + 56))(v14, v34 ^ 1u, 1, v15);
      if ((*(v32 + 48))(v14, 1, v15) != 1)
      {
        v35 = UIListContentConfiguration.image.getter();
        (*(v32 + 8))(v14, v15);
        if (v35)
        {
LABEL_17:
          v36 = v59;
          UIListContentConfiguration.image.setter();
          v61 = v15;
          v62 = &protocol witness table for UIListContentConfiguration;
          v37 = sub_100180240(aBlock);
          (*(v32 + 16))(v37, v36, v15);
          UICollectionViewCell.contentConfiguration.setter();
          if (v1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_showCheckmark] == 1)
          {
            sub_10015DA04(&unk_1006BD9E0);
            v38 = *(type metadata accessor for UICellAccessory() - 8);
            v52[1] = (*(v38 + 80) + 32) & ~*(v38 + 80);
            *(swift_allocObject() + 16) = xmmword_100531E30;
            v39 = v57;
            (*(v9 + 104))(v11, enum case for UICellAccessory.DisplayedState.always(_:), v57);
            v40 = type metadata accessor for UICellAccessory.LayoutDimension();
            (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
            v41 = v53;
            UICellAccessory.CheckmarkOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
            static UICellAccessory.checkmark(displayed:options:)();
            (*(v55 + 8))(v41, v56);
            (*(v9 + 8))(v11, v39);
          }

          UICollectionViewListCell.accessories.setter();
          v42 = objc_allocWithZone(ICThumbnailConfiguration);
          sub_1000054A4(0, &qword_1006C5F80);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v44 = [v42 initForAvatarWithParticipants:isa preferredSize:0 hasBorder:{28.0, 28.0}];

          v45 = [v44 uniqueKey];
          v46 = [objc_opt_self() sharedThumbnailService];
          v47 = swift_allocObject();
          v47[2] = v45;
          v47[3] = v1;
          v47[4] = v17;
          v62 = sub_1003934F8;
          v63 = v47;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1002DEFE0;
          v61 = &unk_1006599A0;
          v48 = _Block_copy(aBlock);
          v49 = v45;
          v50 = v1;

          [v46 thumbnailWithConfiguration:v44 completion:v48];
          _Block_release(v48);

          (*(v58 + 8))(v59, v15);
        }

LABEL_16:
        sub_100393208();
        goto LABEL_17;
      }
    }

    else
    {
      sub_1000073B4(aBlock, &qword_1006C21C8);
      (*v33)(v14, 1, 1, v15);
    }

    sub_1000073B4(v14, &qword_1006C21C0);
    goto LABEL_16;
  }
}

uint64_t sub_100392C84(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006BE9E0);
  v22 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_100393504;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_1006599F0;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a2;
  v18 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002B0510();
  sub_10015DA04(&unk_1006C3F20);
  sub_100243E84();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

void sub_100392F3C(void *a1)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006C1730);
  v6 = [a1 configuration];
  v7 = [v6 uniqueKey];

  v8 = static NSObject.== infix(_:_:)();
  if (v8)
  {
    UICollectionViewListCell.defaultContentConfiguration()();
    swift_beginAccess();

    UIListContentConfiguration.text.setter();
    v9 = [a1 image];
    UIListContentConfiguration.image.setter();
    v11[3] = v2;
    v11[4] = &protocol witness table for UIListContentConfiguration;
    v10 = sub_100180240(v11);
    (*(v3 + 16))(v10, v5, v2);
    UICollectionViewCell.contentConfiguration.setter();
    (*(v3 + 8))(v5, v2);
  }
}