id ICCloudSyncingObject.MoveAction.init(object:fromParentObject:toParentObject:isCopy:)(void *a1, void *a2, void *a3, char a4)
{
  v6 = a1;
  if (!a2)
  {

    v6 = a3;
    goto LABEL_7;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v9 = a3;
  v10 = a2;
  v11 = sub_1004653E0(v10, v9);
  if (v12)
  {

LABEL_7:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = [v4 initWithType:v11 object:v6 fromParentObject:v10 toParentObject:v9 isCopy:a4 & 1];

  return v14;
}

id ICCloudSyncingObject.MoveAction.__allocating_init(folder:toParentObject:isCopy:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = [a1 parent];
  if (!v9)
  {
    v9 = [a1 account];
  }

  v10 = [v8 initWithObject:a1 fromParentObject:v9 toParentObject:a2 isCopy:a3 & 1];

  return v10;
}

id ICCloudSyncingObject.MoveAction.init(folder:toParentObject:isCopy:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = [a1 parent];
  if (!v8)
  {
    v8 = [a1 account];
  }

  v9 = [v4 initWithObject:a1 fromParentObject:v8 toParentObject:a2 isCopy:a3 & 1];

  return v9;
}

id ICCloudSyncingObject.MoveAction.__allocating_init(note:toFolder:isCopy:)(void *a1, void *a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = [a1 folder];
  v9 = [v7 initWithObject:a1 fromParentObject:v8 toParentObject:a2 isCopy:a3 & 1];

  return v9;
}

id ICCloudSyncingObject.MoveAction.init(note:toFolder:isCopy:)(void *a1, void *a2, char a3)
{
  v7 = [a1 folder];
  v8 = [v3 initWithObject:a1 fromParentObject:v7 toParentObject:a2 isCopy:a3 & 1];

  return v8;
}

Swift::Void __swiftcall ICCloudSyncingObject.persistParticipantActivityEvents(oldShare:newShare:)(CKShare_optional oldShare, CKShare_optional newShare)
{
  v3 = v2;
  v4 = *&oldShare.is_nil;
  isa = oldShare.value.super.super.isa;
  v6 = sub_10015DA04(&qword_1006C8DD0);
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = sub_10015DA04(&qword_1006C8DD8);
  v10 = __chkstk_darwin(isa);
  v12 = &v27 - v11;
  if (v10)
  {
    v13 = [v10 ic_nonCurrentUserParticipants];
    sub_1000054A4(0, &qword_1006C5F80);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v15 = sub_1004640E0(v14);
  if (v4)
  {
    v16 = [v4 ic_nonCurrentUserParticipants];
    sub_1000054A4(0, &qword_1006C5F80);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v30[0] = sub_1004640E0(v17);
  v30[4] = v15;
  sub_10015DA04(&qword_1006C5ED0);
  sub_1000060B4(&qword_1006C8DE0, &qword_1006C5ED0);
  sub_100465A5C();
  BidirectionalCollection<>.difference<A>(from:)();

  v19 = v28;
  v18 = v29;
  (*(v28 + 16))(v12, v8, v29);
  v20 = *(v9 + 36);
  sub_1000060B4(&qword_1006C8DF0, &qword_1006C8DD0);
  dispatch thunk of Collection.startIndex.getter();
  (*(v19 + 8))(v8, v18);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v12[v20] == v30[0])
    {
      break;
    }

    v21 = dispatch thunk of Collection.subscript.read();
    v23 = *(v22 + 8);
    v24 = *(v22 + 25);
    v25 = v23;
    v21(v30, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v26 = &selRef_persistRemoveParticipantActivityEventForObject_participant_;
    if (!v24)
    {
      v26 = &selRef_persistAddParticipantActivityEventForObject_participant_;
    }
  }

  sub_1000073B4(v12, &qword_1006C8DD8);
}

uint64_t sub_100465080(unsigned int *a1)
{
  v18 = a1;
  v19 = type metadata accessor for Date();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PersistedActivityEvent.Activities();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10015DA04(&qword_1006C28A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ActivityEventParticipant();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1;
  ActivityEventParticipant.init(cloudSyncingObject:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000073B4(v11, &qword_1006C28A0);
  }

  (*(v13 + 32))(v15, v11, v12);
  (*(v13 + 16))(v8, v15, v12);
  (*(v6 + 104))(v8, *v18, v5);
  Date.init()();

  (*(v2 + 8))(v4, v19);
  (*(v6 + 8))(v8, v5);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1004653E0(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && [v4 isTrashFolder] || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0) && objc_msgSend(v5, "isTrashFolder"))
  {

    return 0;
  }

  if ([a1 isSharedViaICloud] && objc_msgSend(a2, "isSharedViaICloud"))
  {
    v7 = [a1 sharedRootObject];
    v8 = [a2 sharedRootObject];
    v9 = v8;
    if (v7)
    {
      if (v8)
      {
        sub_1000054A4(0, &qword_1006C1B60);
        v10 = static NSObject.== infix(_:_:)();

        if ((v10 & 1) == 0)
        {
          return 2;
        }

        return 3;
      }

      v9 = a2;
    }

    else
    {

      if (!v9)
      {
        return 3;
      }
    }

    return 2;
  }

  if ([a1 isSharedViaICloud])
  {
    v11 = [a2 isSharedViaICloud];

    if (v11)
    {
      return 0;
    }

    else
    {
      return 4;
    }
  }

  else
  {

    return 1;
  }
}

unint64_t sub_10046559C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

void _sSo20ICCloudSyncingObjectC11MobileNotesE29undoablyPersistActivityEvents3for03oldC003newC0yAbCE10MoveActionC_ABSgAJtFZ_0(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_type);
  if (v3 <= 1)
  {
    if (!v3)
    {
      return;
    }

    if (v3 != 1)
    {
      goto LABEL_39;
    }

    if (!a3)
    {
      return;
    }

    v9 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject);
    v30 = a3;
    if (*(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      if (!a3)
      {
        return;
      }

      v4 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject);
      v5 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject);
      v30 = a3;
      if (*(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
      {
        v6 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object);
        v7 = a3;
        v8 = [v7 persistCopyActivityEventForObject:v7 originalObject:v6 fromParentObject:v4 toParentObject:v5];
      }

      else
      {
        v21 = a3;
        v8 = [v21 persistMoveActivityEventForObject:v21 fromParentObject:v4 toParentObject:v5];
      }

      goto LABEL_32;
    }

    if (v3 == 4)
    {
      if (!a2)
      {
        return;
      }

      v16 = a1;
      v17 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject);
      v30 = a2;
      v18 = [v17 sharedRootObject];
      if (!v18)
      {
        v22 = v30;
LABEL_34:

        return;
      }

      v19 = v18;
      if (*(v16 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
      {
        v20 = [v18 persistCopyActivityEventForObject:v30 originalObject:*(v16 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object) fromParentObject:v17 toParentObject:0];
      }

      else
      {
        v20 = [v18 persistMoveActivityEventForObject:v30 fromParentObject:v17 toParentObject:0];
      }

      v28 = v20;
      v29 = [objc_opt_self() shared];
      [v29 registerUndoForCloudSyncingObjectActivityEvent:v28 cloudSyncingObject:v19];

LABEL_33:
      v22 = v29;
      goto LABEL_34;
    }

LABEL_39:
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  v30 = a3;
  if (a2)
  {
    v10 = a1;
    v11 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject);
    v12 = a2;
    v13 = [v11 sharedRootObject];
    if (v13)
    {
      v14 = v13;
      if (*(v10 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
      {
        v15 = [v13 persistCopyActivityEventForObject:v12 originalObject:*(v10 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object) fromParentObject:v11 toParentObject:0];
      }

      else
      {
        v15 = [v13 persistMoveActivityEventForObject:v12 fromParentObject:v11 toParentObject:0];
      }

      v23 = v15;
      v24 = [objc_opt_self() shared];
      [v24 registerUndoForCloudSyncingObjectActivityEvent:v23 cloudSyncingObject:v14];

      v12 = v24;
    }

    a1 = v10;
    a3 = v30;
  }

  if (a3)
  {
    v9 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject);
    if (*(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) == 1)
    {
LABEL_29:
      v25 = *(a1 + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object);
      v26 = a3;
      v8 = [v26 persistCopyActivityEventForObject:v26 originalObject:v25 fromParentObject:0 toParentObject:v9];
LABEL_32:
      v28 = v8;
      v29 = [objc_opt_self() shared];
      [v29 registerUndoForCloudSyncingObjectActivityEvent:v28 cloudSyncingObject:v30];
      goto LABEL_33;
    }

LABEL_31:
    v27 = a3;
    v8 = [v27 persistMoveActivityEventForObject:v27 fromParentObject:0 toParentObject:v9];
    goto LABEL_32;
  }
}

unint64_t sub_100465A5C()
{
  result = qword_1006C8DE8;
  if (!qword_1006C8DE8)
  {
    sub_1000054A4(255, &qword_1006C5F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8DE8);
  }

  return result;
}

unint64_t sub_100465AD0()
{
  result = qword_1006C8DF8;
  if (!qword_1006C8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8DF8);
  }

  return result;
}

uint64_t OpenNoteIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for NoteEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_1001AD0E0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1001AD144(a1);
}

uint64_t sub_100465BF8()
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
  sub_100025918(v6, static OpenNoteIntent.title);
  sub_10002597C(v6, static OpenNoteIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenNoteIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC978 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static OpenNoteIntent.title);
}

uint64_t static OpenNoteIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC978 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static OpenNoteIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenNoteIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t static OpenNoteIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C8E28);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C8E30);
  __chkstk_darwin(v1);
  sub_10002128C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x206E65704FLL;
  v2._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C7E98);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*OpenNoteIntent.target.modify(uint64_t *a1))()
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

uint64_t (*OpenNoteIntent.loggingConfiguration.modify(uint64_t *a1))()
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

uint64_t sub_10046646C(uint64_t a1)
{
  v2 = type metadata accessor for NoteEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_1001AD0E0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1001AD144(a1);
}

uint64_t (*sub_1004664FC(uint64_t *a1))()
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

uint64_t sub_100466570()
{
  v0 = sub_10015DA04(&qword_1006C8E28);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C8E30);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x206E65704FLL;
  v2._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C7E98);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100466704@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes14OpenNoteIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t _s11MobileNotes14OpenNoteIntentVACycfC_0()
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
  v6 = sub_10015DA04(&unk_1006BCAC0);
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
  v26 = sub_10015DA04(&unk_1006BE580);
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
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_100466F24(&qword_1006BCAD0);
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

unint64_t sub_100466DD0(uint64_t a1)
{
  result = sub_100466DF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100466DF8()
{
  result = qword_1006C8E68;
  if (!qword_1006C8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8E68);
  }

  return result;
}

unint64_t sub_100466E50()
{
  result = qword_1006C8E70;
  if (!qword_1006C8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8E70);
  }

  return result;
}

uint64_t sub_100466F24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NoteEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100466FD0(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a1 <= 1)
  {
    if (!a1)
    {
      (*(v8 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v7);
      UICollectionLayoutListConfiguration.init(appearance:)();
      sub_1003E41A8();
      v16 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
      [v16 contentInsets];
      [v16 setContentInsets:0.0];
      goto LABEL_11;
    }

    if (a1 != 1)
    {
      return result;
    }

    (*(v8 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v7);
    UICollectionLayoutListConfiguration.init(appearance:)();
LABEL_9:
    sub_1003E41A8();
    v16 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
LABEL_11:
    (*(v12 + 8))(v14, v11);
    return v16;
  }

  if (a1 == 2)
  {
    return sub_1004673A8(v18);
  }

  if (a1 != 3)
  {
    return result;
  }

  if (ICInternalSettingsSmartFoldersCanIncludeRecentlyDeletedNotes())
  {
    (*(v8 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v7);
    UICollectionLayoutListConfiguration.init(appearance:)();
    (*(v4 + 104))(v6, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v3);
    UICollectionLayoutListConfiguration.footerMode.setter();
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1004673A8(uint64_t a1)
{
  v32 = a1;
  v1 = type metadata accessor for UIListSeparatorConfiguration();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = __chkstk_darwin(v1);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v25 - v4;
  v28 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v9 = *(v26 - 8);
  __chkstk_darwin(v26);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UICollectionLayoutListConfiguration();
  v16 = *(v27 - 8);
  __chkstk_darwin(v27);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v12);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v26);
  UICollectionLayoutListConfiguration.footerMode.setter();
  (*(v6 + 104))(v8, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v28);
  UICollectionLayoutListConfiguration.headerMode.setter();
  UICollectionLayoutListConfiguration.separatorConfiguration.getter();
  v19 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
  *(v20 + 8) = 0;
  v19(v33, 0);
  v21 = v30;
  v22 = v31;
  (*(v30 + 16))(v29, v5, v31);
  UICollectionLayoutListConfiguration.separatorConfiguration.setter();
  sub_1003E41A8();
  v23 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  (*(v21 + 8))(v5, v22);
  (*(v16 + 8))(v18, v27);
  return v23;
}

uint64_t static ManagedEntity.entities<A>(for:in:includeContents:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a2;
  *(v8 + 40) = a4;
  *(v8 + 248) = a3;
  *(v8 + 24) = a1;
  v11 = type metadata accessor for Logger();
  *(v8 + 80) = v11;
  *(v8 + 88) = *(v11 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 120) = AssociatedTypeWitness;
  *(v8 + 128) = *(AssociatedTypeWitness - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  type metadata accessor for Optional();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = *(a5 - 8);
  *(v8 + 168) = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  *(v8 + 176) = v13;
  *(v8 + 184) = *(v13 - 8);
  *(v8 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_100467A50, 0, 0);
}

{
  *(v8 + 72) = a7;
  *(v8 + 80) = v7;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a2;
  *(v8 + 48) = a4;
  *(v8 + 168) = a3;
  *(v8 + 32) = a1;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = *(a5 - 8);
  *(v8 + 104) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 112) = AssociatedTypeWitness;
  *(v8 + 120) = *(AssociatedTypeWitness - 8);
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100468EC0, 0, 0);
}

uint64_t sub_100467A50()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[6];
  v4 = v0[3];
  v0[2] = static Array._allocateUninitialized(_:)();
  (*(v2 + 16))(v1, v4, v3);
  dispatch thunk of Sequence.makeIterator()();
  v5 = v0[19];
  v6 = v0[15];
  v7 = v0[16];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v17 = v0[7];
    (*(v0[16] + 32))(v0[18], v0[19], v0[15]);
    v16 = (*(v17 + 56) + **(v17 + 56));
    v11 = swift_task_alloc();
    v0[25] = v11;
    *v11 = v0;
    v11[1] = sub_100467D08;
    v12 = v0[18];
    v13 = v0[7];
    v14 = v0[4];
    v15 = v0[5];

    return v16(v12, v14, v15, v13);
  }
}

uint64_t sub_100467D08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {

    v4 = sub_1004688B0;
  }

  else
  {
    v4 = sub_100467E24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100467E24()
{
  v63 = v0;
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = *(v0 + 216);
    v3 = static ManagedEntity.managedObjectContext(for:in:)(*(v0 + 208), *(v0 + 32));
    *(v0 + 224) = v3;
    if (v2)
    {
      v5 = *(v0 + 184);
      v4 = *(v0 + 192);
      v6 = *(v0 + 176);
      v7 = *(v0 + 144);
      v8 = *(v0 + 120);
      v9 = *(v0 + 128);

      (*(v9 + 8))(v7, v8);
      (*(v5 + 8))(v4, v6);

      v10 = *(v0 + 8);

      return v10();
    }

    else
    {
      v32 = v3;
      v33 = *(v0 + 32);
      v34 = *(*(v0 + 56) + 48);
      v35 = v1;
      v36 = v32;
      v37 = v33;
      v58 = (v34 + *v34);
      v38 = swift_task_alloc();
      *(v0 + 232) = v38;
      *v38 = v0;
      v38[1] = sub_1004684E0;
      v39 = *(v0 + 104);
      v40 = *(v0 + 248);

      return v58(v39, v35, v36, v40, v37);
    }
  }

  else
  {
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    static Logger.link.getter();
    (*(v15 + 16))(v12, v13, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 136);
    v20 = *(v0 + 144);
    v21 = *(v0 + 120);
    v22 = *(v0 + 128);
    if (v18)
    {
      v56 = *(v0 + 88);
      v57 = *(v0 + 80);
      v60 = *(v0 + 96);
      v55 = *(v0 + 144);
      v23 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v23 = 136315394;
      v24 = _typeName(_:qualified:)();
      v26 = sub_100009D88(v24, v25, v62);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      swift_getAssociatedConformanceWitness();
      v27 = dispatch thunk of EntityIdentifierConvertible.entityIdentifierString.getter();
      v29 = v28;
      v30 = *(v22 + 8);
      v30(v19, v21);
      v31 = sub_100009D88(v27, v29, v62);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: Managed object not found with entity identifier: %s", v23, 0x16u);
      swift_arrayDestroy();

      (*(v56 + 8))(v60, v57);
      v30(v55, v21);
    }

    else
    {
      v42 = *(v0 + 88);
      v41 = *(v0 + 96);
      v43 = *(v0 + 80);

      v44 = *(v22 + 8);
      v44(v19, v21);
      (*(v42 + 8))(v41, v43);
      v44(v20, v21);
    }

    v45 = *(v0 + 152);
    v46 = *(v0 + 120);
    v47 = *(v0 + 128);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    if ((*(v47 + 48))(v45, 1, v46) == 1)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v48 = *(v0 + 16);

      v49 = *(v0 + 8);

      return v49(v48);
    }

    else
    {
      v61 = *(v0 + 56);
      (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 152), *(v0 + 120));
      v59 = (*(v61 + 56) + **(v61 + 56));
      v50 = swift_task_alloc();
      *(v0 + 200) = v50;
      *v50 = v0;
      v50[1] = sub_100467D08;
      v51 = *(v0 + 144);
      v52 = *(v0 + 56);
      v53 = *(v0 + 32);
      v54 = *(v0 + 40);

      return v59(v51, v53, v54, v52);
    }
  }
}

uint64_t sub_1004684E0()
{
  *(*v1 + 240) = v0;

  if (v0)
  {

    v2 = sub_1004689A4;
  }

  else
  {
    v2 = sub_1004685FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004685FC()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  type metadata accessor for Array();
  Array.append(_:)();

  (*(v5 + 8))(v3, v4);
  v6 = v0[19];
  v7 = v0[15];
  v8 = v0[16];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    v9 = v0[2];

    v10 = v0[1];

    return v10(v9);
  }

  else
  {
    v18 = v0[7];
    (*(v0[16] + 32))(v0[18], v0[19], v0[15]);
    v17 = (*(v18 + 56) + **(v18 + 56));
    v12 = swift_task_alloc();
    v0[25] = v12;
    *v12 = v0;
    v12[1] = sub_100467D08;
    v13 = v0[18];
    v14 = v0[7];
    v15 = v0[4];
    v16 = v0[5];

    return v17(v13, v15, v16, v14);
  }
}

uint64_t sub_1004688B0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  (*(v0[16] + 8))(v0[18], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004689A4()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

id static ManagedEntity.managedObjectContext(for:in:)(uint64_t a1, id a2)
{
  result = [a2 managedObjectContextForObjectID:a1];
  if (!result)
  {
    v3 = __chkstk_darwin(0);
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    sub_10046AF44(v4, 225, sub_10046AF38);

    swift_willThrow();
    return v3;
  }

  return result;
}

void ManagedEntity.object(in:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 24))(a2, a3);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13 = [a1 managedObjectIDForURIRepresentation:v12];

  if (v13)
  {
    v14 = [a1 managedObjectContextForObjectID:v13];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 objectWithID:v13];

      swift_getAssociatedTypeWitness();
      swift_dynamicCastUnknownClassUnconditional();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100468EC0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  *(v0 + 16) = static Array._allocateUninitialized(_:)();
  (*(v2 + 16))(v1, v4, v3);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v5 = *(v0 + 24);
  if (v5)
  {
    while (1)
    {
      *(v0 + 136) = v5;
      if (![v5 isTemporaryID])
      {
        break;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of IteratorProtocol.next()();
      v5 = *(v0 + 24);
      if (!v5)
      {
        goto LABEL_4;
      }
    }

    v9 = static ManagedEntity.managedObjectContext(for:in:)(v5, *(v0 + 40));
    *(v0 + 144) = v9;
    v10 = v9;
    v11 = *(v0 + 40);
    v12 = *(*(v0 + 64) + 48);
    v13 = v5;
    v14 = v10;
    v15 = v11;
    v19 = (v12 + *v12);
    v16 = swift_task_alloc();
    *(v0 + 152) = v16;
    *v16 = v0;
    v16[1] = sub_100469254;
    v17 = *(v0 + 88);
    v18 = *(v0 + 168);

    return v19(v17, v13, v14, v18, v15);
  }

  else
  {
LABEL_4:
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v6 = *(v0 + 16);

    v7 = *(v0 + 8);

    return v7(v6);
  }
}

uint64_t sub_100469254()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_1004696E8;
  }

  else
  {
    v2 = sub_100469370;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100469370()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  type metadata accessor for Array();
  Array.append(_:)();

  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v0 + 160);
    while (1)
    {
      *(v0 + 136) = v3;
      if (![v3 isTemporaryID])
      {
        break;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of IteratorProtocol.next()();
      v3 = *(v0 + 24);
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    v8 = static ManagedEntity.managedObjectContext(for:in:)(v3, *(v0 + 40));
    *(v0 + 144) = v8;
    if (v4)
    {
      v10 = *(v0 + 120);
      v9 = *(v0 + 128);
      v11 = *(v0 + 112);

      (*(v10 + 8))(v9, v11);

      v12 = *(v0 + 8);

      return v12();
    }

    else
    {
      v13 = v8;
      v14 = *(v0 + 40);
      v15 = *(*(v0 + 64) + 48);
      v16 = v3;
      v17 = v13;
      v18 = v14;
      v22 = (v15 + *v15);
      v19 = swift_task_alloc();
      *(v0 + 152) = v19;
      *v19 = v0;
      v19[1] = sub_100469254;
      v20 = *(v0 + 88);
      v21 = *(v0 + 168);

      return v22(v20, v16, v17, v21, v18);
    }
  }

  else
  {
LABEL_5:
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v5 = *(v0 + 16);

    v6 = *(v0 + 8);

    return v6(v5);
  }
}

uint64_t sub_1004696E8()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t static ManagedEntity.managedObjects<A>(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v10 = type metadata accessor for Logger();
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[16] = AssociatedTypeWitness;
  v7[17] = *(AssociatedTypeWitness - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  type metadata accessor for Optional();
  v7[20] = swift_task_alloc();
  v7[21] = *(a4 - 8);
  v7[22] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v7[23] = v12;
  v7[24] = *(v12 - 8);
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_100469A0C, 0, 0);
}

uint64_t sub_100469A0C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[8];
  v4 = v0[5];
  v0[26] = swift_getAssociatedTypeWitness();
  v0[2] = static Array._allocateUninitialized(_:)();
  (*(v2 + 16))(v1, v4, v3);
  dispatch thunk of Sequence.makeIterator()();
  v5 = v0[20];
  v6 = v0[16];
  v7 = v0[17];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v17 = v0[9];
    (*(v0[17] + 32))(v0[19], v0[20], v0[16]);
    v16 = (*(v17 + 56) + **(v17 + 56));
    v11 = swift_task_alloc();
    v0[27] = v11;
    *v11 = v0;
    v11[1] = sub_100469CCC;
    v12 = v0[19];
    v13 = v0[9];
    v14 = v0[6];
    v15 = v0[7];

    return v16(v12, v14, v15, v13);
  }
}

uint64_t sub_100469CCC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {

    v4 = sub_10046A818;
  }

  else
  {
    v4 = sub_100469DE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100469DE8()
{
  v59 = v0;
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 232);
    v3 = static ManagedEntity.managedObjectContext(for:in:)(*(v0 + 224), *(v0 + 48));
    *(v0 + 240) = v3;
    if (v2)
    {
      v5 = *(v0 + 192);
      v4 = *(v0 + 200);
      v6 = *(v0 + 184);
      v7 = *(v0 + 152);
      v8 = *(v0 + 128);
      v9 = *(v0 + 136);

      (*(v9 + 8))(v7, v8);
      (*(v5 + 8))(v4, v6);

      v10 = *(v0 + 8);

      return v10();
    }

    else
    {
      v32 = v3;
      v33 = swift_allocObject();
      *(v0 + 248) = v33;
      v34 = *(v0 + 72);
      *(v33 + 16) = *(v0 + 56);
      *(v33 + 32) = v34;
      *(v33 + 48) = v32;
      *(v33 + 56) = v1;
      v32;
      v35 = v1;
      v36 = swift_task_alloc();
      *(v0 + 256) = v36;
      *v36 = v0;
      v36[1] = sub_10046A440;
      v37 = *(v0 + 208);

      return NSManagedObjectContext.perform<A>(_:)(v0 + 24, sub_10046B07C, v33, v37);
    }
  }

  else
  {
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);
    static Logger.link.getter();
    (*(v15 + 16))(v12, v13, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 144);
    v20 = *(v0 + 152);
    v21 = *(v0 + 128);
    v22 = *(v0 + 136);
    if (v18)
    {
      v53 = *(v0 + 104);
      v54 = *(v0 + 96);
      v56 = *(v0 + 112);
      v52 = *(v0 + 152);
      v23 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v23 = 136315394;
      v24 = _typeName(_:qualified:)();
      v26 = sub_100009D88(v24, v25, v58);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      swift_getAssociatedConformanceWitness();
      v27 = dispatch thunk of EntityIdentifierConvertible.entityIdentifierString.getter();
      v29 = v28;
      v30 = *(v22 + 8);
      v30(v19, v21);
      v31 = sub_100009D88(v27, v29, v58);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: Managed object not found with entity identifier: %s", v23, 0x16u);
      swift_arrayDestroy();

      (*(v53 + 8))(v56, v54);
      v30(v52, v21);
    }

    else
    {
      v39 = *(v0 + 104);
      v38 = *(v0 + 112);
      v40 = *(v0 + 96);

      v41 = *(v22 + 8);
      v41(v19, v21);
      (*(v39 + 8))(v38, v40);
      v41(v20, v21);
    }

    v42 = *(v0 + 160);
    v43 = *(v0 + 128);
    v44 = *(v0 + 136);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    if ((*(v44 + 48))(v42, 1, v43) == 1)
    {
      (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
      v45 = *(v0 + 16);

      v46 = *(v0 + 8);

      return v46(v45);
    }

    else
    {
      v57 = *(v0 + 72);
      (*(*(v0 + 136) + 32))(*(v0 + 152), *(v0 + 160), *(v0 + 128));
      v55 = (*(v57 + 56) + **(v57 + 56));
      v47 = swift_task_alloc();
      *(v0 + 216) = v47;
      *v47 = v0;
      v47[1] = sub_100469CCC;
      v48 = *(v0 + 152);
      v49 = *(v0 + 72);
      v50 = *(v0 + 48);
      v51 = *(v0 + 56);

      return v55(v48, v50, v51, v49);
    }
  }
}

uint64_t sub_10046A440()
{
  *(*v1 + 264) = v0;

  if (v0)
  {

    v2 = sub_10046A8FC;
  }

  else
  {

    v2 = sub_10046A570;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10046A570()
{
  v0[4] = v0[3];
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  type metadata accessor for Array();
  Array.append(_:)();

  (*(v5 + 8))(v3, v4);
  v6 = v0[20];
  v7 = v0[16];
  v8 = v0[17];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);
    v9 = v0[2];

    v10 = v0[1];

    return v10(v9);
  }

  else
  {
    v18 = v0[9];
    (*(v0[17] + 32))(v0[19], v0[20], v0[16]);
    v17 = (*(v18 + 56) + **(v18 + 56));
    v12 = swift_task_alloc();
    v0[27] = v12;
    *v12 = v0;
    v12[1] = sub_100469CCC;
    v13 = v0[19];
    v14 = v0[9];
    v15 = v0[6];
    v16 = v0[7];

    return v17(v13, v15, v16, v14);
  }
}

uint64_t sub_10046A818()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[17] + 8))(v0[19], v0[16]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10046A8FC()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

id sub_10046AA00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = 0;
  v4 = [a1 existingObjectWithID:a2 error:&v8];
  v5 = v8;
  if (v4)
  {
    swift_getAssociatedTypeWitness();
    *a3 = swift_dynamicCastUnknownClassUnconditional();
    return v5;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_10046AB04(void *a1)
{
  _StringGuts.grow(_:)(87);
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._object = 0x80000001005603E0;
  v3._countAndFlagsBits = 0xD000000000000053;
  String.append(_:)(v3);
  v4 = [a1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  return 0;
}

char *sub_10046ABDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_10046AC28(a1, a2);
  sub_10046AD58(&off_10064B948);
  return v3;
}

char *sub_10046AC28(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1002A852C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1002A852C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10046AD58(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10046AE44(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10046AE44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10015DA04(&qword_1006C2860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_10046AF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    type metadata accessor for ICError(0);
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    v9 = a3();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v9;
    *(inited + 56) = v10;
    sub_1001E27A0(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1003319A8();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_beginAccess();
    v11 = *v4;
    *v4 = v14;
    v5 = v14;

    v3 = 0;
  }

  v12 = v3;
  return v5;
}

void sub_10046B0A0()
{
  v1 = sub_10046B32C(&OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell____lazy_storage___allAction);
  v2 = OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_filterSelection;
  v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_filterSelection);
  v4 = v3 && ![v3 joinOperator];
  [v1 setState:v4];

  v7 = sub_10046B32C(&OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell____lazy_storage___anyAction);
  v5 = *(v0 + v2);
  v6 = v5 && [v5 joinOperator] == 1;
  [v7 setState:v6];
}

uint64_t sub_10046B1B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_filterSelection);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 summaryWithJoinOperatorMenu];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

UIMenu sub_10046B228()
{
  sub_1000054A4(0, &unk_1006C6410);
  sub_10015DA04(&unk_1006BD390);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100531E20;
  *(preferredElementSize + 32) = sub_10046B32C(&OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell____lazy_storage___allAction);
  *(preferredElementSize + 40) = sub_10046B32C(&OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell____lazy_storage___anyAction);
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v1, 0, v4, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v3);
}

id sub_10046B32C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *&v1[*a1];
  if (v3)
  {
    v4 = *&v1[*a1];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v5 = NSStringFromICFilterSelectionJoinOperator();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    *(swift_allocObject() + 16) = v1;
    v6 = v1;
    v7 = v1;
    v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v9 = *&v1[v2];
    *&v7[v2] = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

id sub_10046B43C(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *&a2[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_filterSelection];
  if (v5)
  {
    v5 = [v5 setJoinOperator:a3];
  }

  sub_10046B0A0(v5);
  result = [a2 setNeedsUpdateConfiguration];
  v7 = *&a2[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_joinOperatorChanged];
  if (v7)
  {

    v7(a3);

    return sub_10000C840(v7);
  }

  return result;
}

id sub_10046B594(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_filterSelection] = 0;
  v4 = &v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_joinOperatorChanged];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell____lazy_storage___allAction] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell____lazy_storage___anyAction] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_10046B65C()
{
  sub_10000C840(*(v0 + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_joinOperatorChanged));

  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell____lazy_storage___anyAction);
}

uint64_t sub_10046B79C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

unint64_t sub_10046B968()
{
  result = qword_1006C8F40;
  if (!qword_1006C8F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C8F40);
  }

  return result;
}

void sub_10046C16C()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong traitCollection];
      v4 = [v3 ic_hasCompactWidth];

      if (v4)
      {
        [v2 setEditing:0 animated:1];
      }
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    [v5 noteEditorActionMenuWillShow:v0];
    swift_unknownObjectRelease();
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v10 = v6;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 eventReporter];

      if (!v8)
      {
        return;
      }

      [v8 submitNoteActionMenuEventForNoteEditorWithUsageType:1 activityType:0];
      v9 = v8;
    }

    else
    {
      v9 = v10;
    }
  }
}

void *sub_10046C324()
{
  if (!*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_invitation))
  {
    v6 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
    if (!v6 || [v6 isEmpty])
    {
      sub_10046C5B8();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return _swiftEmptyArrayStorage;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_6:
    sub_10046C690();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_10046C7BC();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    isa = sub_10046CA2C().super.super.isa;
    sub_10015DA04(&qword_1006C32B8);
    Array.appendNonNil(_:)();

    return _swiftEmptyArrayStorage;
  }

  v2 = Strong;
  result = [Strong view];
  if (result)
  {
    v4 = result;
    v5 = [result ic_isInSecureWindow];

    if (v5)
    {
      return _swiftEmptyArrayStorage;
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_10046C5B8()
{
  v4 = sub_10046DB50();
  sub_10015DA04(&qword_1006C32B8);
  Array.appendNonNil(_:)();

  v0 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 ic_inlineMenuWithChildren:{isa, v4, _swiftEmptyArrayStorage}];

  return v2;
}

id sub_10046C690()
{
  v0 = sub_10046CEE0();
  sub_10015DA04(&qword_1006C32B8);
  Array.appendNonNil(_:)();

  v1 = sub_10046D164();
  Array.appendNonNil(_:)();

  v6 = sub_10046D33C();
  Array.appendNonNil(_:)();

  v2 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 ic_inlineMenuWithElementSize:1 children:{isa, v6, _swiftEmptyArrayStorage}];

  return v4;
}

id sub_10046C7BC()
{
  v1 = v0;
  v2 = sub_10046D724();
  sub_10015DA04(&qword_1006C32B8);
  Array.appendNonNil(_:)();

  v19 = sub_10046D978();
  Array.appendNonNil(_:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_10032E384(Strong);
  }

  else
  {
    v5 = 0;
  }

  v20 = v5;
  Array.appendNonNil(_:)();

  v6 = *(v1 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR___ICNoteEditorActionMenu_isMathEnabled);
    v8 = objc_allocWithZone(ICCalculatePreviewBehaviorMenu);
    v9 = v6;
    v10 = [v8 initWithNote:v9 isMathEnabled:{v7, v20, _swiftEmptyArrayStorage}];
    v11 = [v10 makeMenu];
  }

  else
  {
    v11 = 0;
  }

  Array.appendNonNil(_:)();

  v12 = sub_10046DB50();
  Array.appendNonNil(_:)();

  v13 = sub_10046DECC();
  Array.appendNonNil(_:)();

  v14 = sub_10046E0FC();
  Array.appendNonNil(_:)();

  v21 = sub_10046E31C();
  Array.appendNonNil(_:)();

  v15 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v15 ic_inlineMenuWithChildren:{isa, v21}];

  return v17;
}

UIMenu sub_10046CA2C()
{
  v0 = sub_10046E670();
  sub_10015DA04(&qword_1006C32B8);
  Array.appendNonNil(_:)();

  v1 = sub_10046D4F0();
  Array.appendNonNil(_:)();

  v2 = sub_10046E7D4();
  Array.appendNonNil(_:)();

  v3 = sub_10046E9E8();
  Array.appendNonNil(_:)();

  v4 = sub_10046EC00();
  Array.appendNonNil(_:)();

  v5 = sub_10046ED78();
  Array.appendNonNil(_:)();

  v6 = sub_10046EF04();
  Array.appendNonNil(_:)();

  v7 = sub_10046F134();
  Array.appendNonNil(_:)();

  v8 = sub_10046F2DC();
  Array.appendNonNil(_:)();

  v9 = sub_10046F434();
  Array.appendNonNil(_:)();

  v10 = sub_10046F5B8();
  Array.appendNonNil(_:)();

  v26 = sub_10046F6D4();
  Array.appendNonNil(_:)();

  if (ICDebugModeEnabled())
  {
    v11 = [objc_opt_self() standardUserDefaults];
    [v11 _ICDebugWindowEnabled];

    sub_1000054A4(0, &qword_1006BF850);
    v25._rawValue = 0;
    v12 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() systemImageNamed:{v13, _swiftEmptyArrayStorage}];

    [v12 setImage:v14];
  }

  else
  {
    v12 = 0;
  }

  Array.appendNonNil(_:)();

  v27 = sub_10046F844();
  Array.appendNonNil(_:)();

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }
  }

  else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    v15 = [objc_opt_self() mainBundle];
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 localizedStringForKey:v16 value:0 table:0];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = String._bridgeToObjectiveC()();
    v22 = [objc_opt_self() systemImageNamed:v21];

    sub_1000054A4(0, &unk_1006C6410);
    v23._countAndFlagsBits = v18;
    v23._object = v20;
    v28.value.super.isa = v22;
    v28.is_nil = 0;
    return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, 0, v28, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v25);
  }

  return 0;
}

id sub_10046CEE0()
{
  v1 = *&v0[OBJC_IVAR___ICNoteEditorActionMenu_note];
  if (!v1)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = v1;
  if ([v2 ic_isVision])
  {

    return 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = objc_allocWithZone(ICScanDocumentsNoteActivity);
  v21 = sub_100470728;
  v22 = v5;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10028DCE8;
  v20 = &unk_10065EF10;
  v7 = _Block_copy(&v17);
  v8 = v0;

  v9 = [v6 initWithScanDocumentsBlock:v7];
  _Block_release(v7);
  if (*&v8[OBJC_IVAR___ICNoteEditorActionMenu_completion])
  {
    v10 = *&v8[OBJC_IVAR___ICNoteEditorActionMenu_completion + 8];
    v21 = *&v8[OBJC_IVAR___ICNoteEditorActionMenu_completion];
    v22 = v10;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_10017C07C;
    v20 = &unk_10065EF38;
    v11 = _Block_copy(&v17);
  }

  else
  {
    v11 = 0;
  }

  v4 = [v9 actionWithCompletion:v11];
  _Block_release(v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = [Strong noteEditorActionMenuCanScanDocuments:v8];
    swift_unknownObjectRelease();
    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 1;
  }

  if ([v3 isPasswordProtectedAndLocked])
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v15 = [v3 isEditable] ^ 1 | v14;
  }

  [v4 setIc_disabled:v15 & 1];

  return v4;
}

id sub_10046D164()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v8 = v1;
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v3 = Strong;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = v1;
  if (!v4)
  {

    goto LABEL_8;
  }

  v6 = [v4 eventReporter];

LABEL_9:
  v9 = objc_allocWithZone(ICPinNoteActivity);
  v10 = v1;
  v11 = [v9 initWithNote:v10 eventReporter:v6];

  v12 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v16[4] = v12;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10017C07C;
    v16[3] = &unk_10065EEC0;
    v14 = _Block_copy(v16);
  }

  else
  {
    v14 = 0;
  }

  v7 = [v11 actionWithCompletion:v14];
  _Block_release(v14);
  [v7 setIc_disabled:{objc_msgSend(v10, "isPinnable") ^ 1}];

  return v7;
}

id sub_10046D33C()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (![v2 isLockable] || (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v4 = Strong, v5 = objc_msgSend(Strong, "ic_behavior"), v4, v5 == 1))
  {

    return 0;
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  v8 = objc_allocWithZone(ICLockNoteActivity);
  v9 = v2;
  v10 = [v8 initWithNote:v9 presentingViewController:v7];

  [v10 setContextPath:1];
  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v11 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v14[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10017C07C;
    v14[3] = &unk_10065EE98;
    v12 = _Block_copy(v14);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 actionWithCompletion:v12];

  _Block_release(v12);
  return v13;
}

id sub_10046D4F0()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (!ICInternalSettingsIsAlexandriaEnabled())
  {
LABEL_7:

    return 0;
  }

  v2 = v2;
  if (![v2 allowsExporting])
  {

    goto LABEL_7;
  }

  sub_10015DA04(&unk_1006BD390);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100534670;
  *(v3 + 32) = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem);
  v6 = objc_allocWithZone(ICExportArchiveActivity);
  sub_1000054A4(0, &qword_1006C1B60);
  v7 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithObjects:isa presentingViewController:Strong presentingBarButtonItem:v7 presentingSourceView:0];

  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v10 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v14[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10017C07C;
    v14[3] = &unk_10065EE70;
    v11 = _Block_copy(v14);
  }

  else
  {
    v11 = 0;
  }

  v13 = [v9 actionWithCompletion:v11];
  _Block_release(v11);
  [v13 setIc_disabled:{objc_msgSend(v2, "isSharable") ^ 1}];

  return v13;
}

id sub_10046D724()
{
  v1 = *&v0[OBJC_IVAR___ICNoteEditorActionMenu_note];
  if (!v1)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = objc_allocWithZone(ICFindInNoteActivity);
  v18 = sub_100470704;
  v19 = v2;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10028DCE8;
  v17 = &unk_10065EE20;
  v4 = _Block_copy(&v14);
  v5 = v0;
  v6 = v1;

  v7 = [v3 initWithPerformActivity:v4];
  _Block_release(v4);
  if (*&v5[OBJC_IVAR___ICNoteEditorActionMenu_completion])
  {
    v8 = *&v5[OBJC_IVAR___ICNoteEditorActionMenu_completion + 8];
    v18 = *&v5[OBJC_IVAR___ICNoteEditorActionMenu_completion];
    v19 = v8;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_10017C07C;
    v17 = &unk_10065EE48;
    v9 = _Block_copy(&v14);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 actionWithCompletion:v9];
  _Block_release(v9);
  if (([v6 isPasswordProtectedAndLocked] & 1) != 0 || (objc_msgSend(v6, "isDeletedOrInTrash") & 1) != 0 || (objc_msgSend(v6, "isEmpty") & 1) != 0 || (v11 = objc_msgSend(v6, "identifier")) == 0)
  {
    v12 = 1;
  }

  else
  {

    v12 = 0;
  }

  [v10 setIc_disabled:v12];

  return v10;
}

id sub_10046D978()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v1;
  if (Strong)
  {
    v4 = [Strong traitCollection];

    v5 = [v4 ic_behavior];
    if (v5 == 1)
    {

      return 0;
    }
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  v8 = objc_allocWithZone(ICMoveNoteActivity);
  v9 = v3;
  v10 = [v8 initWithNote:v9 presentingViewController:v7];

  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v11 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v14[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10017C07C;
    v14[3] = &unk_10065EDD0;
    v12 = _Block_copy(v14);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 actionWithCompletion:v12];
  _Block_release(v12);
  [v13 setIc_disabled:{objc_msgSend(v9, "isMovable") ^ 1}];

  return v13;
}

id sub_10046DB50()
{
  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_invitation))
  {
    return 0;
  }

  v18 = OBJC_IVAR___ICNoteEditorActionMenu_note;
  v2 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    v7 = v2;
    if (v6)
    {
      v6 = [v6 eventReporter];
    }
  }

  else
  {
    v7 = v2;
    v6 = 0;
  }

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = objc_allocWithZone(ICLinesAndGridsNoteActivity);
  v23 = sub_1004706FC;
  v24 = v8;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10046FD7C;
  v22 = &unk_10065ED80;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 initWithNote:v7 presentingViewController:Strong eventReporter:v6 shouldCreateNewNoteBlock:v10];
  _Block_release(v10);

  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v12 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v23 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v24 = v12;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10017C07C;
    v22 = &unk_10065EDA8;
    v13 = _Block_copy(&aBlock);
  }

  else
  {
    v13 = 0;
  }

  v1 = [v11 actionWithCompletion:v13];
  _Block_release(v13);
  v14 = *(v0 + v18);
  if (v14)
  {
    v15 = v14;
    if ([v15 isPasswordProtectedAndLocked])
    {
      v16 = 1;
    }

    else
    {
      v16 = [v15 isEditable] ^ 1;
    }

    [v1 setIc_disabled:v16];
  }

  return v1;
}

uint64_t sub_10046DE28()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = [Strong noteEditorActionMenuShouldCreateNewNote:v1];
      swift_unknownObjectRelease();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_10046DECC()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  v2 = objc_allocWithZone(ICSetPreferredAttachmentSizeActivity);
  v3 = v1;
  v4 = [v2 initWithNote:v3];
  if (([v3 isPasswordProtectedAndLocked] & 1) != 0 || (objc_msgSend(v3, "isEditable") & 1) == 0)
  {
    v8 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    if (v8)
    {
      v9 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
      v17 = v8;
      v18 = v9;
      v13 = _NSConcreteStackBlock;
      v14 = 1107296256;
      v15 = sub_10017C07C;
      v16 = &unk_10065ED08;
      v10 = _Block_copy(&v13);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v4 actionWithCompletion:v10];
    _Block_release(v10);
    [v11 setIc_disabled:1];
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    if (v5)
    {
      v6 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
      v17 = v5;
      v18 = v6;
      v13 = _NSConcreteStackBlock;
      v14 = 1107296256;
      v15 = sub_10017C07C;
      v16 = &unk_10065ED30;
      v7 = _Block_copy(&v13);
    }

    else
    {
      v7 = 0;
    }

    v11 = [v4 menuWithCompletion:v7];

    _Block_release(v7);
    v3 = v4;
  }

  return v11;
}

id sub_10046E0FC()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = v1;
  result = [v3 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result window];

  if (!v6)
  {

    return 0;
  }

  v7 = [v6 traitCollection];
  v8 = [v7 ic_isDark];

  if (v8 & 1) == 0 || ([objc_opt_self() ic_alwaysShowLightContent] & 1) != 0 || (objc_msgSend(objc_opt_self(), "ic_isVision"))
  {

    return 0;
  }

  v9 = [objc_allocWithZone(ICLightContentActivity) initWithNote:v4];
  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v10 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v13[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10017C07C;
    v13[3] = &unk_10065ECE0;
    v11 = _Block_copy(v13);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v9 actionWithCompletion:v11];

  _Block_release(v11);
  return v12;
}

id sub_10046E31C()
{
  v1 = *&v0[OBJC_IVAR___ICNoteEditorActionMenu_note];
  if (!v1)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = objc_allocWithZone(ICDeleteNoteActivity);
  v16 = sub_1004706F4;
  v17 = v2;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10028DCE8;
  v15 = &unk_10065EC90;
  v4 = _Block_copy(&v12);
  v5 = v0;
  v6 = v1;
  v7 = [v3 initWithDeleteBlock:v4];
  _Block_release(v4);

  if (*&v5[OBJC_IVAR___ICNoteEditorActionMenu_completion])
  {
    v8 = *&v5[OBJC_IVAR___ICNoteEditorActionMenu_completion + 8];
    v16 = *&v5[OBJC_IVAR___ICNoteEditorActionMenu_completion];
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_10017C07C;
    v15 = &unk_10065ECB8;
    v9 = _Block_copy(&v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 actionWithCompletion:v9];
  _Block_release(v9);
  [v10 setIc_destructive:1];
  [v10 setIc_disabled:{objc_msgSend(v6, "isDeletable") ^ 1}];

  return v10;
}

void sub_10046E524(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 eventReporter];

      if (!v5)
      {
        goto LABEL_6;
      }

      [v5 pushContextPathDataWithContextPathEnum:1];
      v3 = v5;
    }
  }

LABEL_6:
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    [v6 noteEditorActionMenuShouldDeleteNote:a1];
    swift_unknownObjectRelease();
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = [v9 eventReporter];
    }

    else
    {
      v10 = 0;
    }

    v7 = v10;
  }

  v11 = v7;
  [v7 popContextPathData];
}

id sub_10046E670()
{
  if (!ICDebugModeEnabled())
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(ICCopyUUIDActivity) initWithUUIDString:v3];

    if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
    {
      v6 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
      v10[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
      v10[5] = v6;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_10017C07C;
      v10[3] = &unk_10065EC40;
      v7 = _Block_copy(v10);
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 actionWithCompletion:v7];

    _Block_release(v7);
    return v9;
  }

  else
  {

    return 0;
  }
}

id sub_10046E7D4()
{
  if (!ICDebugModeEnabled())
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 attachmentsInOrder];
  sub_1000054A4(0, &unk_1006C2C90);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {

    return 0;
  }

  isa = [v2 attachmentsInOrder];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = [objc_allocWithZone(ICInspectAttachmentsNoteActivity) initWithAttachments:isa presentingViewController:Strong];

  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v9 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v13[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v13[5] = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10017C07C;
    v13[3] = &unk_10065EC18;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v12 = [v8 actionWithCompletion:v10];

  _Block_release(v10);
  return v12;
}

id sub_10046E9E8()
{
  if (![objc_opt_self() archiveExportingEnabled])
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 visibleAttachmentsWithType:11];
  sub_1000054A4(0, &unk_1006C2C90);
  sub_1001D9A38();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  if (!v5)
  {

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem);
  v8 = objc_allocWithZone(ICArchiveNoteDocScansActivity);
  v9 = v2;
  v10 = [v8 initWithNote:v9 presentingViewController:Strong presentingBarButtonItem:v7];

  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v11 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v15[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v15[5] = v11;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_10017C07C;
    v15[3] = &unk_10065EBF0;
    v12 = _Block_copy(v15);
  }

  else
  {
    v12 = 0;
  }

  v14 = [v10 actionWithCompletion:v12];

  _Block_release(v12);
  return v14;
}

id sub_10046EC00()
{
  if (!ICDebugModeEnabled())
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem);
  v4 = objc_allocWithZone(ICChangeNoteDatesActivity);
  v5 = v1;
  v6 = [v4 initWithNote:v5 presentingViewController:Strong presentingBarButtonItem:v3];

  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v7 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v11[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10017C07C;
    v11[3] = &unk_10065EBC8;
    v8 = _Block_copy(v11);
  }

  else
  {
    v8 = 0;
  }

  v10 = [v6 actionWithCompletion:v8];

  _Block_release(v8);
  return v10;
}

id sub_10046ED78()
{
  if (![objc_opt_self() showInternalInstallUI])
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem);
  v4 = objc_allocWithZone(ICDrawingRegressionTestsActivity);
  v5 = v1;
  v6 = [v4 initWithNote:v5 presentingViewController:Strong presentingBarButtonItem:v3];

  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v7 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v11[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10017C07C;
    v11[3] = &unk_10065EBA0;
    v8 = _Block_copy(v11);
  }

  else
  {
    v8 = 0;
  }

  v10 = [v6 actionWithCompletion:v8];

  _Block_release(v8);
  return v10;
}

id sub_10046EF04()
{
  if (![objc_opt_self() showInternalInstallUI])
  {
    return 0;
  }

  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_allocWithZone(ICHandwritingDebugNoteActivity);
  v14 = sub_1004706D0;
  v15 = v1;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_10028DCE8;
  v13 = &unk_10065EB50;
  v3 = _Block_copy(&v10);
  v4 = v0;
  v5 = [v2 initWithShowHandwritingDebugBlock:v3];
  _Block_release(v3);

  if (*&v4[OBJC_IVAR___ICNoteEditorActionMenu_completion])
  {
    v6 = *&v4[OBJC_IVAR___ICNoteEditorActionMenu_completion + 8];
    v14 = *&v4[OBJC_IVAR___ICNoteEditorActionMenu_completion];
    v15 = v6;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_10017C07C;
    v13 = &unk_10065EB78;
    v7 = _Block_copy(&v10);
  }

  else
  {
    v7 = 0;
  }

  v9 = [v5 actionWithCompletion:v7];

  _Block_release(v7);
  return v9;
}

void *sub_10046F0CC(uint64_t a1, SEL *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10046F134()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (![v2 isEditable] || (v3 = objc_opt_self(), (objc_msgSend(v3, "showInternalInstallUI") & 1) == 0) && !objc_msgSend(v3, "isSeedInstall"))
  {

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = objc_allocWithZone(ICHandwritingFeedbackNoteActivity);
  v6 = v2;
  v7 = [v5 initWithNote:v6 presentingViewController:Strong];

  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v8 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v12[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10017C07C;
    v12[3] = &unk_10065EB00;
    v9 = _Block_copy(v12);
  }

  else
  {
    v9 = 0;
  }

  v11 = [v7 actionWithCompletion:v9];

  _Block_release(v9);
  return v11;
}

id sub_10046F2DC()
{
  if (!ICDebugModeEnabled())
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  updated = type metadata accessor for UpdatePaperThumbnailsActivity();
  v3 = objc_allocWithZone(updated);
  *&v3[OBJC_IVAR___ICUpdatePaperThumbnailsActivity_note] = v1;
  v11.receiver = v3;
  v11.super_class = updated;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v11, "init");
  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v6 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v10[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10017C07C;
    v10[3] = &unk_10065EAD8;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v9 = [v5 actionWithCompletion:v7];

  _Block_release(v7);
  return v9;
}

id sub_10046F434()
{
  if (!ICDebugModeEnabled())
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (![v2 isSharedViaICloud] || (objc_msgSend(v2, "isSharedReadOnly") & 1) != 0)
  {

    return 0;
  }

  v4 = type metadata accessor for ClearActivityCachesActivity();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___ICClearActivityCachesActivity_note] = v2;
  v12.receiver = v5;
  v12.super_class = v4;
  v6 = v2;
  v7 = objc_msgSendSuper2(&v12, "init");
  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v8 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v11[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10017C07C;
    v11[3] = &unk_10065EAB0;
    v9 = _Block_copy(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 actionWithCompletion:v9];

  _Block_release(v9);
  return v10;
}

id sub_10046F5B8()
{
  if (!ICInternalSettingsGetBundleBoolSettingValue())
  {
    return 0;
  }

  v1 = [objc_allocWithZone(ICSetQuickNoteActivity) init];
  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v2 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v6[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v6[5] = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10017C07C;
    v6[3] = &unk_10065EA88;
    v3 = _Block_copy(v6);
  }

  else
  {
    v3 = 0;
  }

  v5 = [v1 actionWithCompletion:v3];

  _Block_release(v3);
  return v5;
}

id sub_10046F6D4()
{
  if (!ICDebugModeEnabled())
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (![v2 isInICloudAccount])
  {

    return 0;
  }

  v3 = type metadata accessor for SimulateQuotaExceededActivity();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___ICSimulateQuotaExceededActivity_note] = v2;
  v12.receiver = v4;
  v12.super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(&v12, "init");
  if (*(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v7 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v11[4] = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10017C07C;
    v11[3] = &unk_10065EA60;
    v8 = _Block_copy(v11);
  }

  else
  {
    v8 = 0;
  }

  v10 = [v6 actionWithCompletion:v8];

  _Block_release(v8);
  return v10;
}

id sub_10046F844()
{
  if (ICDebugModeEnabled())
  {
    v1 = *&v0[OBJC_IVAR___ICNoteEditorActionMenu_note];
    if (v1)
    {
      v2 = v1;
      if ([v2 isEditable])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v4 = Strong;
          v5 = objc_opt_self();
          v6 = String._bridgeToObjectiveC()();
          v7 = String._bridgeToObjectiveC()();
          v8 = swift_allocObject();
          *(v8 + 16) = v0;
          *(v8 + 24) = v4;
          v14[4] = sub_1004706C8;
          v14[5] = v8;
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 1107296256;
          v14[2] = sub_1002DEFE0;
          v14[3] = &unk_10065EA38;
          v9 = _Block_copy(v14);
          v10 = v0;
          v11 = v4;

          v12 = [v5 ic_actionWithTitle:v6 imageName:v7 handler:v9];

          _Block_release(v9);
          return v12;
        }
      }
    }
  }

  return 0;
}

void sub_10046FA00(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10015DA04(&unk_1006C9010);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_100531E30;
  static UTType.movie.getter();
  v5 = objc_allocWithZone(UIDocumentPickerViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initForOpeningContentTypes:isa];

  [v7 setDelegate:a2];
  [a3 presentViewController:v7 animated:1 completion:0];
}

id sub_10046FB90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoteEditorActionMenu();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10046FC78()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_completion);
  sub_100010854(v1);
  return v1;
}

void *sub_10046FCC8()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem);
  v2 = v1;
  return v1;
}

id sub_10046FD7C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_10046FDCC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR___ICNoteEditorActionMenu_note;
  *&v8[OBJC_IVAR___ICNoteEditorActionMenu_note] = 0;
  v11 = OBJC_IVAR___ICNoteEditorActionMenu_invitation;
  *&v8[OBJC_IVAR___ICNoteEditorActionMenu_invitation] = 0;
  v12 = OBJC_IVAR___ICNoteEditorActionMenu_isMathEnabled;
  v8[v12] = ICInternalSettingsIsMathEnabled();
  v13 = OBJC_IVAR___ICNoteEditorActionMenu_temporaryExportURLToRemove;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(&v8[v13], 1, 1, v14);
  swift_unknownObjectWeakInit();
  v15 = &v8[OBJC_IVAR___ICNoteEditorActionMenu_completion];
  *v15 = 0;
  v15[1] = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem;
  *&v8[OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem] = 0;
  swift_unknownObjectWeakInit();
  v17 = *&v8[v10];
  *&v8[v10] = a1;
  v18 = a1;

  v19 = *&v8[v11];
  *&v8[v11] = a2;
  v20 = a2;

  swift_unknownObjectWeakAssign();
  v21 = *&v8[v16];
  *&v8[v16] = a4;
  v22 = a4;

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v23 = *v15;
  *v15 = a7;
  v15[1] = a8;
  sub_100010854(a7);
  sub_10000C840(v23);
  v29.receiver = v8;
  v29.super_class = type metadata accessor for NoteEditorActionMenu();
  return objc_msgSendSuper2(&v29, "init");
}

Class sub_10046FF80(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = type metadata accessor for NoteEditorActionMenu();
  v9 = objc_allocWithZone(v29);
  v10 = OBJC_IVAR___ICNoteEditorActionMenu_note;
  *&v9[OBJC_IVAR___ICNoteEditorActionMenu_note] = 0;
  v11 = OBJC_IVAR___ICNoteEditorActionMenu_invitation;
  *&v9[OBJC_IVAR___ICNoteEditorActionMenu_invitation] = 0;
  v12 = OBJC_IVAR___ICNoteEditorActionMenu_isMathEnabled;
  v9[v12] = ICInternalSettingsIsMathEnabled();
  v13 = OBJC_IVAR___ICNoteEditorActionMenu_temporaryExportURLToRemove;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(&v9[v13], 1, 1, v14);
  swift_unknownObjectWeakInit();
  v15 = &v9[OBJC_IVAR___ICNoteEditorActionMenu_completion];
  *v15 = 0;
  v15[1] = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem;
  *&v9[OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem] = 0;
  swift_unknownObjectWeakInit();
  v17 = *&v9[v10];
  *&v9[v10] = a1;
  v18 = a1;

  v19 = *&v9[v11];
  *&v9[v11] = a2;
  v20 = a2;

  swift_unknownObjectWeakAssign();
  v21 = *&v9[v16];
  *&v9[v16] = a4;
  v22 = a4;

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v23 = *v15;
  *v15 = a7;
  v15[1] = a8;
  sub_100010854(a7);
  sub_10000C840(v23);
  v32.receiver = v9;
  v32.super_class = v29;
  v24 = objc_msgSendSuper2(&v32, "init");
  sub_10001D2C8();
  isa = ActionMenuProvider.makeMenu(deferredChildren:)(1).super.super.isa;

  return isa;
}

Class sub_100470168(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, Swift::Bool a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = type metadata accessor for NoteEditorActionMenu();
  v10 = objc_allocWithZone(v30);
  v11 = OBJC_IVAR___ICNoteEditorActionMenu_note;
  *&v10[OBJC_IVAR___ICNoteEditorActionMenu_note] = 0;
  v12 = OBJC_IVAR___ICNoteEditorActionMenu_invitation;
  *&v10[OBJC_IVAR___ICNoteEditorActionMenu_invitation] = 0;
  v13 = OBJC_IVAR___ICNoteEditorActionMenu_isMathEnabled;
  v10[v13] = ICInternalSettingsIsMathEnabled();
  v14 = OBJC_IVAR___ICNoteEditorActionMenu_temporaryExportURLToRemove;
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  swift_unknownObjectWeakInit();
  v16 = &v10[OBJC_IVAR___ICNoteEditorActionMenu_completion];
  *v16 = 0;
  v16[1] = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem;
  *&v10[OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem] = 0;
  swift_unknownObjectWeakInit();
  v18 = *&v10[v11];
  *&v10[v11] = a1;
  v19 = a1;

  v20 = *&v10[v12];
  *&v10[v12] = a2;
  v21 = a2;

  swift_unknownObjectWeakAssign();
  v22 = *&v10[v17];
  *&v10[v17] = a4;
  v23 = a4;

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v24 = *v16;
  *v16 = a8;
  v16[1] = a9;
  sub_100010854(a8);
  sub_10000C840(v24);
  v33.receiver = v10;
  v33.super_class = v30;
  v25 = objc_msgSendSuper2(&v33, "init");
  sub_10001D2C8();
  isa = ActionMenuProvider.makeMenu(deferredChildren:)(a6).super.super.isa;

  return isa;
}

void sub_100470364(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = *(v1 + OBJC_IVAR___ICNoteEditorActionMenu_note);
  if (v10 && *(a1 + 16))
  {
    v11 = *(v4 + 80);
    v24 = *(v4 + 16);
    v24(&v23 - v8, a1 + ((v11 + 32) & ~v11), v3);
    v12 = objc_opt_self();
    v13 = v10;
    v14 = [v12 sharedContext];
    if (v14 && (v15 = v14, v16 = [v14 managedObjectContext], v15, v16))
    {
      v24(v7, v9, v3);
      v17 = v13;
      v18 = (v11 + 24) & ~v11;
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      (*(v4 + 32))(v19 + v18, v7, v3);
      *(v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
      aBlock[4] = sub_100470638;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10028DCE8;
      aBlock[3] = &unk_10065E9E8;
      v20 = _Block_copy(aBlock);
      v21 = v17;
      v22 = v16;

      [v22 performBlock:v20];
      _Block_release(v20);

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      (*(v4 + 8))(v9, v3);
    }
  }
}

void sub_100470638()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100242D9C(v3, v0 + v2, v4);
}

uint64_t static FolderEntity.managedObjectID(for:in:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B70EC;

  return sub_100473598(a1, a2);
}

uint64_t FolderEntity.init(for:in:includeContents:noteContext:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = type metadata accessor for FolderEntity();
  v5[7] = swift_task_alloc();
  v8 = a2;
  v9 = a3;

  return _swift_task_switch(sub_10047099C, 0, 0);
}

uint64_t sub_10047099C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_100470A88;
  v8 = v0[6];
  v7 = v0[7];

  return NSManagedObjectContext.perform<A>(_:)(v7, sub_1001926B4, v3, v8);
}

uint64_t sub_100470A88()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100314400;
  }

  else
  {

    v2 = sub_100470BA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100470BA4()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  sub_1002C3358(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t FolderEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10015DA04(&qword_1006BE030);
  v3[5] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for DisplayRepresentation.Components();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_10015DA04(&unk_1006BEA80);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for LocalizedStringResource();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100470E30, 0, 0);
}

uint64_t sub_100470E30()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v5 = type metadata accessor for DisplayRepresentation.Image();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  static DisplayRepresentation.Components.text.getter();
  sub_100474544(&qword_1006C52C0, &type metadata accessor for DisplayRepresentation.Components);
  v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v8 = *(v3 + 8);
  v8(v2, v4);
  if (v7)
  {
    v37 = v0[17];
    v38 = v0[16];
    v40 = v6;
    v9 = v0[14];
    v10 = v0[15];
    v11 = v0[4];
    v36 = v0[13];
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
    v35 = type metadata accessor for FolderEntity();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*(v11 + *(v35 + 24)));
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
    v14 = v10;
    LocalizedStringResource.init(stringInterpolation:)();
    v15 = *(v9 + 8);
    v15(v37, v36);
    v41 = v5;
    v16 = *(v9 + 32);
    v17 = v14;
    v16(v37, v14, v36);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*(v11 + *(v35 + 28)));
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
    LocalizedStringResource.init(stringInterpolation:)();
    v15(v38, v36);
    v6 = v40;
    v16(v38, v17, v36);
    v5 = v41;
  }

  v20 = v0[9];
  v21 = v0[7];
  static DisplayRepresentation.Components.image.getter();
  v22 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v8(v20, v21);
  if (v22)
  {
    type metadata accessor for FolderEntity();
    v24 = v0[11];
    v23 = v0[12];
    DisplayRepresentation.Image.init(systemName:isTemplate:)();
    sub_100474124(v23);
    v6(v24, 0, 1, v5);
    sub_10047418C(v24, v23);
  }

  v25 = v0[16];
  v26 = v0[17];
  v27 = v0[14];
  v29 = v0[12];
  v28 = v0[13];
  v30 = v0[5];
  v39 = v0[10];
  v31 = *(v27 + 16);
  v31(v0[15], v26, v28);
  v31(v30, v25, v28);
  (*(v27 + 56))(v30, 0, 1, v28);
  sub_1004740B4(v29, v39);
  DisplayRepresentation.init(title:subtitle:image:)();
  sub_100474124(v29);
  v32 = *(v27 + 8);
  v32(v25, v28);
  v32(v26, v28);

  v33 = v0[1];

  return v33();
}

uint64_t FolderEntity.init(for:in:)(uint64_t a1, void *a2, void *a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for FolderEntity();
  v3[6] = swift_task_alloc();
  v6 = a2;
  v7 = a3;

  return _swift_task_switch(sub_1004713B0, 0, 0);
}

uint64_t sub_1004713B0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_10047149C;
  v8 = v0[5];
  v7 = v0[6];

  return NSManagedObjectContext.perform<A>(_:)(v7, sub_10019ED94, v3, v8);
}

uint64_t sub_10047149C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100313B00;
  }

  else
  {

    v2 = sub_1004715B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004715B8()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  sub_1002C3358(v1, v4);

  v5 = v0[1];

  return v5();
}

void FolderEntity.init<A>(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  ICFolderObject<>.entityIdentifier.getter();
  v4 = [a1 objectID];
  v5 = [v4 URIRepresentation];

  v6 = type metadata accessor for FolderEntity();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [a1 localizedTitle];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = (a2 + v6[6]);
  *v11 = v8;
  v11[1] = v10;
  v12 = [a1 account];
  v13 = [v12 localizedName];

  if (v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = (a2 + v6[7]);
  *v17 = v14;
  v17[1] = v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = a1;
    *(a2 + v6[9]) = [v19 folderType] == 2;
    LOBYTE(v19) = [v19 isSharedViaICloud];

    *(a2 + v6[8]) = v19;
  }

  else
  {

    *(a2 + v6[9]) = 0;
    *(a2 + v6[8]) = 0;
  }
}

uint64_t sub_100471804()
{
  result = _s11MobileNotes20VisibleAccountsQueryVACycfC_0();
  static FolderEntity.defaultQuery = result;
  *algn_1006EFB48 = v1;
  byte_1006EFB50 = v2 & 1;
  byte_1006EFB51 = v3 & 1;
  byte_1006EFB52 = v4 & 1;
  byte_1006EFB53 = v5 & 1;
  return result;
}

uint64_t *FolderEntity.defaultQuery.unsafeMutableAddressor()
{
  if (qword_1006BC980 != -1)
  {
    swift_once();
  }

  return &static FolderEntity.defaultQuery;
}

uint64_t static FolderEntity.defaultQuery.getter()
{
  if (qword_1006BC980 != -1)
  {
    swift_once();
  }

  v0 = static FolderEntity.defaultQuery;

  return v0;
}

uint64_t sub_100471950()
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
  sub_100025918(v10, static FolderEntity.typeDisplayRepresentation);
  sub_10002597C(v10, static FolderEntity.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v9 + 56))(v2, 0, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t FolderEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1006BC988 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10002597C(v0, static FolderEntity.typeDisplayRepresentation);
}

uint64_t static FolderEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC988 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10002597C(v2, static FolderEntity.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FolderEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FolderID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FolderEntity.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for FolderID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FolderEntity.managedObjectURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FolderEntity() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FolderEntity.managedObjectURI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FolderEntity() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FolderEntity.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for FolderEntity() + 24));

  return v1;
}

uint64_t FolderEntity.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FolderEntity() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FolderEntity.accountTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for FolderEntity() + 28));

  return v1;
}

uint64_t FolderEntity.accountTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FolderEntity() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FolderEntity.isSharedFolder.setter(char a1)
{
  result = type metadata accessor for FolderEntity();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t FolderEntity.isSmartFolder.setter(char a1)
{
  result = type metadata accessor for FolderEntity();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t FolderEntity.image.getter()
{
  type metadata accessor for FolderEntity();

  return DisplayRepresentation.Image.init(systemName:isTemplate:)();
}

void FolderEntity.hash(into:)()
{
  type metadata accessor for FolderID();
  sub_100474544(&qword_1006C1B50, &type metadata accessor for FolderID);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for FolderEntity();
  type metadata accessor for URL();
  sub_100474544(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v1 + 32)));
  Hasher._combine(_:)(*(v0 + *(v1 + 36)));
}

Swift::Int FolderEntity.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for FolderID();
  sub_100474544(&qword_1006C1B50, &type metadata accessor for FolderID);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for FolderEntity();
  type metadata accessor for URL();
  sub_100474544(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v1 + 32)));
  Hasher._combine(_:)(*(v0 + *(v1 + 36)));
  return Hasher._finalize()();
}

void sub_100472560(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FolderID();
  sub_100474544(&qword_1006C1B50, &type metadata accessor for FolderID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_100474544(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 32)));
  Hasher._combine(_:)(*(v2 + *(a2 + 36)));
}

Swift::Int sub_100472684(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for FolderID();
  sub_100474544(&qword_1006C1B50, &type metadata accessor for FolderID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_100474544(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 32)));
  Hasher._combine(_:)(*(v2 + *(a2 + 36)));
  return Hasher._finalize()();
}

uint64_t sub_1004727B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC980 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1006EFB48;
  v2 = byte_1006EFB50;
  v3 = byte_1006EFB51;
  v4 = byte_1006EFB52;
  v5 = byte_1006EFB53;
  *a1 = static FolderEntity.defaultQuery;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 17) = v3;
  *(a1 + 18) = v4;
  *(a1 + 19) = v5;
}

uint64_t sub_100472854(uint64_t a1)
{
  v2 = sub_100474544(&qword_1006C45A0, type metadata accessor for FolderEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t FolderEntity.debugDescription.getter()
{
  _StringGuts.grow(_:)(20);

  type metadata accessor for FolderID();
  sub_100474544(&qword_1006BE550, &type metadata accessor for FolderID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000011;
}

uint64_t FolderEntity.displayRepresentation.getter()
{
  v1 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  v12 = type metadata accessor for FolderEntity();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*(v0 + *(v12 + 24)));
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  LocalizedStringResource.init(stringInterpolation:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*(v0 + *(v12 + 28)));
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v8 + 56))(v6, 0, 1, v7);
  DisplayRepresentation.Image.init(systemName:isTemplate:)();
  v16 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_100472CF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A600;

  return FolderEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_100472DA0(uint64_t a1)
{
  v2 = sub_100474544(&qword_1006C9078, type metadata accessor for FolderEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t FolderEntity.init(for:in:includeContents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100472E40, 0, 0);
}

uint64_t sub_100472E40()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = type metadata accessor for FolderEntity();
  *v6 = v0;
  v6[1] = sub_100313CA8;
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_10019ED94, v3, v7);
}

void sub_100472F38(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v9];
  v5 = v9[0];
  if (v4)
  {
    v9[1] = &OBJC_PROTOCOL___ICFolderObject;
    v6 = swift_dynamicCastObjCProtocolUnconditional();
    v7 = v5;
    sub_1004B15DC(v6, a3);
  }

  else
  {
    v8 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100473020(uint64_t a1@<X1>, void *a2@<X8>)
{
  FolderID.managedIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() folderWithIdentifier:v4 context:a1];

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

void sub_1004730D8(void *a1@<X0>, void *a2@<X8>)
{
  FolderID.managedIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [a1 legacyFolderWithIdentifier:v4];

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

uint64_t sub_100473188(uint64_t a1, void *a2, void *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000A1FC;

  return FolderEntity.init(for:in:)(a1, a2, a3);
}

uint64_t sub_100473238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  return _swift_task_switch(sub_10047325C, 0, 0);
}

uint64_t sub_10047325C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100314968;
  v7 = v0[5];
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_10019ED94, v3, v7);
}

uint64_t sub_100473348(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10000A600;

  return FolderEntity.init(for:in:includeContents:noteContext:)(a1, a2, a3, 0, a5);
}

uint64_t sub_100473404(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B75E8;

  return sub_100473598(a1, a2);
}

uint64_t _s11MobileNotes12FolderEntityV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (static FolderID.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for FolderEntity(), (static URL.== infix(_:_:)()) && ((v5 = v4[6], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v10 = v4[7], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + v4[8]) == *(a2 + v4[8]))))
  {
    v15 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100473598(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for FolderID();
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
  v2[14] = sub_10015DA04(&qword_1006BEA90);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100473704, 0, 0);
}

uint64_t sub_100473704()
{
  v56 = v0;
  v1 = *(v0 + 120);
  FolderID.contextType.getter();
  v2 = type metadata accessor for ManagedEntityContextType();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 40);
    FolderID.managedIdentifier.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 managedObjectIDForURIString:v5];

    if (v6)
    {
LABEL_18:

      v50 = *(v0 + 8);

      return v50(v6);
    }

    v7 = *(v0 + 80);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    v10 = *(v0 + 32);
    static Logger.link.getter();
    (*(v9 + 16))(v7, v10, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    if (v13)
    {
      v54 = *(v0 + 88);
      v20 = swift_slowAlloc();
      v52 = v12;
      v21 = swift_slowAlloc();
      v55 = v21;
      *v20 = 136315138;
      sub_100474544(&qword_1006BE550, &type metadata accessor for FolderID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v14;
      v24 = v23;
      (*(v18 + 8))(v16, v19);
      v25 = sub_100009D88(v22, v24, &v55);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v11, v52, "FolderEntity: Unable to resolve managed object ID for entity ID: %s", v20, 0xCu);
      sub_100009F60(v21);

      (*(v15 + 8))(v53, v54);
    }

    else
    {

      (*(v18 + 8))(v16, v19);
      (*(v15 + 8))(v14, v17);
    }

LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  v26 = (*(v3 + 88))(*(v0 + 120), v2);
  if (v26 == enum case for ManagedEntityContextType.modern(_:))
  {
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    v31 = *(v0 + 32);
    v32 = [*(v0 + 40) modernManagedObjectContext];
    *(v0 + 128) = v32;
    (*(v30 + 16))(v27, v31, v29);
    v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v34 = swift_allocObject();
    *(v0 + 136) = v34;
    (*(v30 + 32))(v34 + v33, v27, v29);
    *(v34 + ((v28 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
    v32;
    v35 = swift_task_alloc();
    *(v0 + 144) = v35;
    v36 = sub_10015DA04(&unk_1006BFED0);
    *v35 = v0;
    v35[1] = sub_100473D08;
    v37 = sub_100474624;
    v38 = v0 + 24;
    v39 = v34;
LABEL_10:

    return NSManagedObjectContext.perform<A>(_:)(v38, v37, v39, v36);
  }

  if (v26 == enum case for ManagedEntityContextType.html(_:))
  {
    v40 = [*(v0 + 40) htmlManagedObjectContext];
    *(v0 + 152) = v40;
    if (!v40)
    {
      goto LABEL_17;
    }

    v41 = v40;
    v42 = *(v0 + 72);
    v43 = *(v0 + 48);
    v44 = *(v0 + 56);
    v45 = *(v0 + 40);
    (*(v44 + 16))(v42, *(v0 + 32), v43);
    v46 = (*(v44 + 80) + 24) & ~*(v44 + 80);
    v47 = swift_allocObject();
    *(v0 + 160) = v47;
    *(v47 + 16) = v45;
    (*(v44 + 32))(v47 + v46, v42, v43);
    v41;
    v48 = v45;
    v49 = swift_task_alloc();
    *(v0 + 168) = v49;
    v36 = sub_10015DA04(&unk_1006BFED0);
    *v49 = v0;
    v49[1] = sub_100473EDC;
    v37 = sub_1004745B4;
    v38 = v0 + 16;
    v39 = v47;
    goto LABEL_10;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_100473D08()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100473E44, 0, 0);
  }
}

uint64_t sub_100473E44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100473EDC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 152);

    return _swift_task_switch(sub_10047401C, 0, 0);
  }
}

uint64_t sub_10047401C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004740B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006BEA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100474124(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BEA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10047418C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006BEA80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004743F8()
{
  result = qword_1006C9068;
  if (!qword_1006C9068)
  {
    sub_10017992C(&qword_1006C9070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9068);
  }

  return result;
}

uint64_t sub_1004744EC(uint64_t a1)
{
  result = sub_100474544(&qword_1006C45A0, type metadata accessor for FolderEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100474544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004746C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100478DC4(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100008B8C(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = String.utf8CString.getter() + 32;
      type metadata accessor for NoteEntity(0);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100008B8C(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B8C(a3);
  type metadata accessor for NoteEntity(0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10047493C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100478DC4(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100008B8C(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      sub_10015DA04(&qword_1006BFD18);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100008B8C(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B8C(a3);
  sub_10015DA04(&qword_1006BFD18);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100474BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100478DC4(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100008B8C(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100008B8C(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B8C(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100474E24(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100474ED0(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100474F78(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_100475028(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100475150(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;

      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v7 += 4;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

char *sub_100475214()
{
  v0 = objc_allocWithZone(type metadata accessor for GroupActivityDebugStatusController());
  result = sub_10047534C();
  qword_1006EFB70 = result;
  return result;
}

uint64_t sub_1004752D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_10047534C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_10015DA04(&qword_1006C91D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  *&v0[OBJC_IVAR___ICGroupActivityDebugStatusController_observeNotificationsTask] = 0;
  *&v0[OBJC_IVAR___ICGroupActivityDebugStatusController_groupActivities] = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR___ICGroupActivityDebugStatusController__states;
  v18 = sub_10018FABC(_swiftEmptyArrayStorage);
  sub_10015DA04(&qword_1006C91C8);
  Published.init(initialValue:)();
  (*(v6 + 32))(&v0[v9], v8, v5);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v17, "init");
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = v10;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  *&v12[OBJC_IVAR___ICGroupActivityDebugStatusController_observeNotificationsTask] = sub_10023D268(0, 0, v4, &unk_10054C038, v14);

  return v12;
}

uint64_t sub_1004755B4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100341C78;

  return sub_100475660();
}

uint64_t sub_100475660()
{
  v1[20] = v0;
  v2 = type metadata accessor for Notification();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  sub_10015DA04(qword_1006C0920);
  v1[24] = swift_task_alloc();
  v3 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_1004757B4, 0, 0);
}

uint64_t sub_1004757B4()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1006BC7D0 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = sub_100478E78(&qword_1006C8860, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_100475910;
  v4 = v0[24];
  v5 = v0[25];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_100475910()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100475BA8;
  }

  else
  {
    v2 = sub_100475A24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100475A40()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[23], v1, v2);
    v6 = Notification.userInfo.getter();
    v0[30] = v6;
    if (v6)
    {

      v6 = sub_100478B04(v9);
      v0[31] = v6;
      v0[32] = v7;
      v0[33] = v8;
      v0[34] = v10;
      if (v7)
      {
        v0[35] = type metadata accessor for MainActor();
        v0[36] = static MainActor.shared.getter();
        v6 = sub_100475C34;
        v7 = 0;
        v8 = 0;

        return _swift_task_switch(v6, v7, v8);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return _swift_task_switch(v6, v7, v8);
  }

  (*(v0[26] + 8))(v0[27], v0[25]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100475BA8()
{
  *(v0 + 152) = *(v0 + 232);
  sub_10015DA04(&unk_1006C9B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100475C34()
{
  *(v0 + 296) = static MainActor.shared.getter();

  return _swift_task_switch(sub_100475CA0, 0, 0);
}

uint64_t sub_100475CA0()
{
  *(v0 + 120) = 0xD000000000000015;
  v1 = *(v0 + 240);
  *(v0 + 128) = 0x800000010056D9F0;
  v2 = AnyHashable.init<A>(_:)();
  if (!*(v1 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_100024E34(v0 + 16);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  sub_10000A2A0(*(*(v0 + 240) + 56) + 32 * v5, v0 + 88);

  sub_100024F9C(v0 + 16);
  sub_10001FA64((v0 + 88), (v0 + 56));
  swift_dynamicCast();
  *(v0 + 304) = *(v0 + 136);
  *(v0 + 145) = *(v0 + 144);
  *(v0 + 312) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v10 = v9;
  v2 = sub_100475E28;
  v3 = v8;
  v4 = v10;

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100475E28()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 145);

  sub_100475FF0(v1, v6, v5, v4, v3, v2);

  return _swift_task_switch(sub_100475EE4, 0, 0);
}

uint64_t sub_100475EE4()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  sub_1002EC030(*(v0 + 304), *(v0 + 145));
  (*(v2 + 8))(v1, v3);
  v4 = sub_100478E78(&qword_1006C8860, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  *v5 = v0;
  v5[1] = sub_100475910;
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

uint64_t sub_100475FF0(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v47 = a2;
  v46 = a1;
  v12 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v50[0];
  if (*(v50[0] + 16))
  {
    v16 = sub_1002DF298(a3, a4, a5, a6);
    v17 = a5;
    if (v18)
    {
      v19 = *(*(v15 + 56) + 24 * v16 + 16);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v17 = a5;
  }

  v20 = OBJC_IVAR___ICGroupActivityDebugStatusController_groupActivities;
  v21 = swift_beginAccess();
  v22 = *&v7[v20];
  v48 = a3;
  v50[0] = a3;
  v50[1] = a4;
  v23 = v17;
  v50[2] = v17;
  v50[3] = a6;
  __chkstk_darwin(v21);
  *(&v44 - 2) = v50;

  v24 = sub_100475150(sub_100478CB4, (&v44 - 4), v22);

  if ((v24 & 1) == 0)
  {
    swift_beginAccess();
    v25 = *&v7[v20];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v7[v20] = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1001CC0C8(0, *(v25 + 2) + 1, 1, v25);
      *&v7[v20] = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      v25 = sub_1001CC0C8((v27 > 1), v28 + 1, 1, v25);
    }

    *(v25 + 2) = v28 + 1;
    v29 = &v25[32 * v28];
    *(v29 + 4) = v48;
    *(v29 + 5) = a4;
    *(v29 + 6) = v23;
    *(v29 + 7) = a6;
    *&v7[v20] = v25;
    swift_endAccess();
  }

  v45 = v23;
  if (v47 <= 1u)
  {
    if (!v47 || v46 > 1)
    {
      goto LABEL_22;
    }
  }

  else if (v47 != 2 && (v47 == 3 || v46 == 1))
  {
LABEL_22:
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    type metadata accessor for MainActor();

    v32 = v7;

    v33 = static MainActor.shared.getter();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = &protocol witness table for MainActor;
    v35 = v48;
    v34[4] = v32;
    v34[5] = v35;
    v34[6] = a4;
    v34[7] = v23;
    v34[8] = a6;
    v30 = sub_100474BB8(0, 0, v14, &unk_10054C098, v34);

    goto LABEL_23;
  }

  if (v19)
  {

    sub_10015DA04(&unk_1006C9B40);
    Task.cancel()();
  }

  v30 = 0;
LABEL_23:
  swift_getKeyPath();
  swift_getKeyPath();

  v36 = v46;
  v37 = a4;
  v38 = v47;
  sub_1001912A0(v46, v47);

  v39 = static Published.subscript.modify();
  v41 = v40;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v41;
  *v41 = 0x8000000000000000;
  sub_1002E7458(v36, v38, v30, v48, v37, v45, a6, v42);

  *v41 = v49;
  v39(v50, 0);
}

uint64_t type metadata accessor for GroupActivityDebugStatusController()
{
  result = qword_1006C91B0;
  if (!qword_1006C91B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004765FC()
{
  sub_1004766A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004766A4()
{
  if (!qword_1006C91C0)
  {
    sub_10017992C(&qword_1006C91C8);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C91C0);
    }
  }
}

uint64_t sub_100476708(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100476764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100476808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t, uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v17 + 16) && (v10 = sub_1002DF298(a1, a2, a3, a4), (v11 & 1) != 0))
  {
    v12 = *(v17 + 56) + 24 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    sub_1001912A0(*v12, *(v12 + 8));

    v15 = a5(v13, v14);

    sub_1002EC030(v13, v14);
  }

  else
  {
    v15 = 0x6E776F6E6B6E55;
  }

  return v15;
}

uint64_t sub_100476948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = type metadata accessor for ContinuousClock();
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock.Instant();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[25] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[26] = v12;
  v8[27] = v11;

  return _swift_task_switch(sub_100476AAC, v12, v11);
}

uint64_t sub_100476AAC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v4 = *(v3 + 8);
  *(v0 + 224) = v4;
  *(v0 + 232) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 80) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 1;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  v6 = sub_100478E78(&qword_1006C91E0, &type metadata accessor for ContinuousClock);
  *v5 = v0;
  v5[1] = sub_100476C08;
  v7 = *(v0 + 192);
  v8 = *(v0 + 160);
  v9 = *(v0 + 144);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v7, v0 + 72, v8, v9, v6);
}

uint64_t sub_100476C08()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = v2[28];
  if (v0)
  {
    v4 = v2[24];
    v5 = v2[21];
    (*(v2[19] + 8))(v2[20], v2[18]);
    v3(v4, v5);
    v6 = v2[26];
    v7 = v2[27];
    v8 = sub_1004770B8;
  }

  else
  {
    v9 = v2[24];
    v10 = v2[21];
    (*(v2[19] + 8))(v2[20], v2[18]);
    v3(v9, v10);
    v6 = v2[26];
    v7 = v2[27];
    v8 = sub_100476D84;
  }

  return _swift_task_switch(v8, v6, v7);
}

int64_t sub_100476D84()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v0[12];
  if (!*(v1 + 16) || (v2 = sub_1002DF298(v0[14], v0[15], v0[16], v0[17]), (v3 & 1) == 0))
  {

    goto LABEL_8;
  }

  v4 = *(v1 + 56) + 24 * v2;
  v5 = *v4;
  v6 = *(v4 + 8);
  sub_1001912A0(*v4, *(v4 + 8));

  if (v6 <= 1)
  {
    if (!v6)
    {

      v7 = v5;
      v8 = 0;
      goto LABEL_25;
    }

    if (v5)
    {
      if (v5 != 1)
      {
        v7 = v5;
        v8 = 1;
        goto LABEL_25;
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = 1;
LABEL_23:
    sub_1002EC030(v11, v12);
    goto LABEL_8;
  }

  if (v6 == 2)
  {

    v11 = v5;
    v12 = 2;
    goto LABEL_23;
  }

  if (v6 != 3)
  {
    if (v5 > 1 || !v5)
    {

      goto LABEL_8;
    }

    goto LABEL_26;
  }

  v7 = v5;
  v8 = 3;
LABEL_25:
  sub_1002EC030(v7, v8);
LABEL_26:
  v13 = v0[31];
  v14 = v0[16];
  v15 = v0[17];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[13];
  v19 = OBJC_IVAR___ICGroupActivityDebugStatusController_groupActivities;
  swift_beginAccess();

  result = sub_1004786D8((v18 + v19), v17, v16, v14, v15);
  if (v13)
  {

    return swift_endAccess();
  }

  v20 = *(*(v18 + v19) + 16);
  if (v20 < result)
  {
    __break(1u);
    return result;
  }

  v22 = v0[16];
  v21 = v0[17];
  v24 = v0[14];
  v23 = v0[15];
  sub_10030F9D8(result, v20);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = static Published.subscript.modify();
  v26 = sub_100477654(v24, v23, v22, v21);
  sub_100478E34(v26, v27, v28);
  v25(v0 + 2, 0);

LABEL_8:

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004770B8()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Int sub_100477144()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
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

void sub_1004771D0()
{
  v1 = *(v0 + 24);
  String.hash(into:)();
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

Swift::Int sub_10047724C()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
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

uint64_t sub_1004772D4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1004772E0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_100477384()
{
  result = qword_1006C91D0;
  if (!qword_1006C91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C91D0);
  }

  return result;
}

uint64_t sub_1004773D8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100477458(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

double sub_1004774D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1002DF048(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002E7BFC();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_100192680((*(v9 + 56) + 40 * v7), a2);
    sub_100477720(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1004775B4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1002ED088(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002E8A0C();
      v9 = v11;
    }

    sub_10001FA64((*(v9 + 56) + 32 * v7), a2);
    sub_100477D64(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100477654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = sub_1002DF298(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002EA070();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 24 * v8);
  sub_10047841C(v8, v10);
  *v5 = v10;
  return v11;
}

unint64_t sub_100477720(int64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for UUID();
  v4 = *(v42 - 8);
  result = __chkstk_darwin(v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      sub_100478E78(&qword_1006C07C8, &type metadata accessor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_100477A44(int64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for URL();
  v4 = *(v41 - 8);
  result = __chkstk_darwin(v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      sub_100478E78(&qword_1006C07C0, &type metadata accessor for URL);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 32 * a1);
          v30 = (v28 + 32 * v10);
          if (a1 != v10 || v29 >= v30 + 2)
          {
            v31 = v30[1];
            *v29 = *v30;
            v29[1] = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

void sub_100477D64(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_100477F2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10047809C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10047824C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for FastSyncPresenceController.EditorDebounceState(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10047841C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 32 * v6 + 24);
      Hasher.init(_seed:)();

      String.hash(into:)();
      if (v10)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v12)
      {
LABEL_13:
        v13 = *(a2 + 48);
        v14 = (v13 + 32 * v3);
        v15 = (v13 + 32 * v6);
        if (v3 != v6 || v14 >= v15 + 2)
        {
          v16 = v15[1];
          *v14 = *v15;
          v14[1] = v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 24 * v3;
        v19 = (v17 + 24 * v6);
        if (v3 != v6 || v18 >= v19 + 24)
        {
          v9 = *v19;
          *(v18 + 16) = *(v19 + 2);
          *v18 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10047861C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1004786D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a1;
  result = sub_100478A04(*a1, a2, a3, a4, a5);
  if (v5)
  {
    goto LABEL_6;
  }

  v36 = a2;
  v37 = a3;
  if (v14)
  {
    v6 = *(v12 + 16);

LABEL_7:

    return v6;
  }

  v6 = result;
  v15 = result + 1;
  v16 = a3;
  if (__OFADD__(result, 1))
  {
    goto LABEL_35;
  }

  v35 = a5;
  v17 = *(v12 + 16);
  v18 = v36;
  if (v15 == v17)
  {
LABEL_6:

    goto LABEL_7;
  }

  v31 = a4;
  v32 = a1;
  v19 = 32 * result + 88;
  while (v15 < v17)
  {
    v21 = *(v12 + v19 - 24);
    v20 = *(v12 + v19 - 16);
    v23 = *(v12 + v19 - 8);
    v22 = *(v12 + v19);
    v24 = v21 == v18 && v20 == v16;
    if (v24 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v18 = v36, v16 = v37, (result & 1) != 0))
    {
      if (v22)
      {
        if (v35)
        {
          if (v23 == v31 && v22 == v35)
          {
            goto LABEL_10;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v18 = v36;
          v16 = v37;
          if (result)
          {
            goto LABEL_10;
          }
        }
      }

      else if (!v35)
      {
        goto LABEL_10;
      }
    }

    if (v15 != v6)
    {
      if (v6 >= v17)
      {
        goto LABEL_33;
      }

      v26 = (v12 + 32 + 32 * v6);
      v27 = v26[1];
      v34 = *v26;
      v28 = v26[3];
      v33 = v26[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_10030D5F0(v12);
      }

      v29 = (v12 + 32 * v6);
      v29[4] = v21;
      v29[5] = v20;
      v29[6] = v23;
      v29[7] = v22;

      if (v15 >= *(v12 + 16))
      {
        goto LABEL_34;
      }

      v30 = (v12 + v19);
      *(v30 - 3) = v34;
      *(v30 - 2) = v27;
      *(v30 - 1) = v33;
      *v30 = v28;

      *v32 = v12;
      v16 = v37;
      v18 = v36;
    }

    ++v6;
LABEL_10:
    ++v15;
    v17 = *(v12 + 16);
    v19 += 32;
    if (v15 == v17)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100478950()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000A600;

  return sub_1004755B4();
}

uint64_t sub_100478A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = 0;
  v10 = (a1 + 56);
  do
  {
    v12 = *(v10 - 1);
    v11 = *v10;
    v13 = *(v10 - 3) == a2 && *(v10 - 2) == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (v11)
      {
        if (a5)
        {
          v14 = v12 == a4 && v11 == a5;
          if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v9;
          }
        }
      }

      else if (!a5)
      {
        return v9;
      }
    }

    v10 += 4;
    ++v9;
  }

  while (v5 != v9);
  return 0;
}

unint64_t sub_100478B04(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v2 = sub_100024E34(v7), (v3 & 1) == 0))
  {

    sub_100024F9C(v7);
    return 0;
  }

  sub_10000A2A0(*(a1 + 56) + 32 * v2, v8);
  sub_100024F9C(v7);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  strcpy(v8, "RCCNoteTitle");
  HIBYTE(v8[6]) = 0;
  v8[7] = -5120;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v4 = sub_100024E34(v7), (v5 & 1) != 0))
  {
    sub_10000A2A0(*(a1 + 56) + 32 * v4, v8);
    sub_100024F9C(v7);

    swift_dynamicCast();
  }

  else
  {

    sub_100024F9C(v7);
  }

  return 0xD000000000000011;
}

uint64_t sub_100478CE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000A600;

  return sub_100476948(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100478DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C2170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100478E34(unint64_t result, unsigned __int8 a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_1002EC030(result, a2);
  }

  return result;
}

uint64_t sub_100478E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100478EF8()
{
  type metadata accessor for SiriVocabulary.Corpus();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  sub_10015DA04(&unk_1006BD390);
  v1 = swift_allocObject();
  *(v0 + 2808) = v1;
  *(v1 + 16) = xmmword_100531E10;

  return _swift_asyncLet_get_throwing(v0 + 656, v0 + 2760, sub_100479048, v0 + 2768);
}

uint64_t sub_100479048()
{
  *(v1 + 2856) = v0;
  if (v0)
  {
    v2 = sub_100479538;
  }

  else
  {
    v2 = sub_10047907C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10047907C()
{
  *(*(v0 + 2808) + 32) = *(v0 + 2760);

  return _swift_asyncLet_get_throwing(v0 + 1936, v0 + 2664, sub_1004790F0, v0 + 3008);
}

uint64_t sub_1004790F0()
{
  *(v1 + 2904) = v0;
  if (v0)
  {
    v2 = sub_100479690;
  }

  else
  {
    v2 = sub_100479124;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100479124()
{
  *(*(v0 + 2808) + 40) = *(v0 + 2664);

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 2616, sub_100479198, v0 + 3248);
}

uint64_t sub_100479198()
{
  *(v1 + 2952) = v0;
  if (v0)
  {
    v2 = sub_1004797F4;
  }

  else
  {
    v2 = sub_1004791CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004791CC()
{
  *(*(v0 + 2808) + 48) = *(v0 + 2616);

  return _swift_asyncLet_get_throwing(v0 + 1296, v0 + 2712, sub_100479240, v0 + 3488);
}

uint64_t sub_100479240()
{
  *(v1 + 3000) = v0;
  if (v0)
  {
    v2 = sub_100479960;
  }

  else
  {
    v2 = sub_100479274;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100479274()
{
  *(v0[351] + 56) = v0[339];

  v1 = swift_task_alloc();
  v0[381] = v1;
  *v1 = v0;
  v1[1] = sub_100479320;
  v2 = v0[351];

  return static SiriVocabulary.setCorporaByPriority(_:)(v2);
}

uint64_t sub_100479320()
{
  v2 = *v1;
  *(*v1 + 3096) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100479AD4, 0, 0);
  }

  else
  {

    return _swift_asyncLet_finish(v2 + 1296, v2 + 2712, sub_100479468, v2 + 3872);
  }
}

uint64_t sub_100479538()
{
  *(*(v0 + 2808) + 16) = 0;

  return _swift_asyncLet_finish(v0 + 1296, v0 + 2712, sub_1004795A8, v0 + 2816);
}

uint64_t sub_100479690()
{
  v1 = *(v0 + 2808);

  *(v1 + 16) = 0;

  return _swift_asyncLet_finish(v0 + 1296, v0 + 2712, sub_10047970C, v0 + 3056);
}

uint64_t sub_1004797F4()
{
  v1 = *(v0 + 2808);

  *(v1 + 16) = 0;

  return _swift_asyncLet_finish(v0 + 1296, v0 + 2712, sub_100479878, v0 + 3296);
}

uint64_t sub_100479960()
{
  v1 = *(v0 + 2808);

  *(v1 + 16) = 0;

  return _swift_asyncLet_finish(v0 + 1296, v0 + 2712, sub_1004799EC, v0 + 3536);
}

uint64_t sub_100479AD4()
{

  return _swift_asyncLet_finish(v0 + 1296, v0 + 2712, sub_100479B40, v0 + 3728);
}

uint64_t sub_100479C28(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100199D20;

  return sub_100479CB8();
}

uint64_t sub_100479CB8()
{
  v1 = type metadata accessor for AccountEntity();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v2 = type metadata accessor for SiriVocabulary.DynamicTerm();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();

  return _swift_task_switch(sub_100479DDC, 0, 0);
}

uint64_t sub_100479DDC()
{
  VACycfC_0 = _s11MobileNotes20VisibleAccountsQueryVACycfC_0();
  v3 = v2;
  v5 = v4;
  v0[9] = VACycfC_0;
  v0[10] = v2;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_100479E94;

  return VisibleAccountsQuery.suggestedEntities()(VACycfC_0, v3, v5 & 1);
}

uint64_t sub_100479E94(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_10047B7A8;
  }

  else
  {

    v4 = sub_100479FB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100479FB8()
{
  v1 = v0;
  v2 = v0[12];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[7];
    v5 = v0[3];
    sub_100189844(0, v3, 0);
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      v8 = v1[4];
      v7 = v1[5];
      sub_10047B5B8(v6, v7, type metadata accessor for AccountEntity);
      sub_10047B5B8(v7, v8, type metadata accessor for AccountEntity);
      sub_10047B620(&qword_1006C4160, type metadata accessor for AccountEntity);

      SiriVocabulary.DynamicTerm.init<A>(_:entity:)();
      sub_10047B668(v7, type metadata accessor for AccountEntity);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_100189844(v9 > 1, v10 + 1, 1);
      }

      v11 = v1[8];
      v12 = v1[6];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v11, v12);
      v6 += v16;
      --v3;
    }

    while (v3);
  }

  type metadata accessor for SiriVocabulary.Corpus();
  swift_allocObject();
  v13 = SiriVocabulary.Corpus.init(contents:capacity:)();

  v14 = v1[1];

  return v14(v13);
}

uint64_t sub_10047A23C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100199F0C;

  return sub_10047A2CC();
}

uint64_t sub_10047A2CC()
{
  v1 = type metadata accessor for FolderEntity();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v2 = type metadata accessor for SiriVocabulary.DynamicTerm();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();

  return _swift_task_switch(sub_10047A3F0, 0, 0);
}

uint64_t sub_10047A3F0()
{
  VACycfC_0 = _s11MobileNotes20VisibleAccountsQueryVACycfC_0();
  v3 = v2;
  v5 = v4;
  v0[9] = VACycfC_0;
  v0[10] = v2;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_10047A4A8;

  return VisibleFoldersQuery.suggestedEntities()(VACycfC_0, v3, v5 & 0x1010101);
}

uint64_t sub_10047A4A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_10047A850;
  }

  else
  {

    v4 = sub_10047A5CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10047A5CC()
{
  v1 = v0;
  v2 = v0[12];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[7];
    v5 = v0[3];
    sub_100189844(0, v3, 0);
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      v8 = v1[4];
      v7 = v1[5];
      sub_10047B5B8(v6, v7, type metadata accessor for FolderEntity);
      sub_10047B5B8(v7, v8, type metadata accessor for FolderEntity);
      sub_10047B620(&qword_1006C45A0, type metadata accessor for FolderEntity);

      SiriVocabulary.DynamicTerm.init<A>(_:entity:)();
      sub_10047B668(v7, type metadata accessor for FolderEntity);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_100189844(v9 > 1, v10 + 1, 1);
      }

      v11 = v1[8];
      v12 = v1[6];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v11, v12);
      v6 += v16;
      --v3;
    }

    while (v3);
  }

  type metadata accessor for SiriVocabulary.Corpus();
  swift_allocObject();
  v13 = SiriVocabulary.Corpus.init(contents:capacity:)();

  v14 = v1[1];

  return v14(v13);
}

uint64_t sub_10047A850()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047A8E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100199D20;

  return sub_10047A974();
}

uint64_t sub_10047A974()
{
  v1 = type metadata accessor for TagEntity();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v2 = type metadata accessor for SiriVocabulary.DynamicTerm();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();

  return _swift_task_switch(sub_10047AA98, 0, 0);
}

uint64_t sub_10047AA98()
{
  VACycfC_0 = _s11MobileNotes18VisibleTablesQueryVACycfC_0();
  v3 = v2;
  v0[9] = VACycfC_0;
  v0[10] = v2;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10047AB40;

  return VisibleTagsQuery.suggestedEntities()(VACycfC_0, v3);
}

uint64_t sub_10047AB40(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_10047B7A8;
  }

  else
  {

    v4 = sub_10047AC64;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10047AC64()
{
  v1 = v0;
  v2 = v0[12];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[7];
    v5 = v0[3];
    sub_100189844(0, v3, 0);
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      v8 = v1[4];
      v7 = v1[5];
      sub_10047B5B8(v6, v7, type metadata accessor for TagEntity);
      sub_10047B5B8(v7, v8, type metadata accessor for TagEntity);
      sub_10047B620(&qword_1006BCB08, type metadata accessor for TagEntity);

      SiriVocabulary.DynamicTerm.init<A>(_:entity:)();
      sub_10047B668(v7, type metadata accessor for TagEntity);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_100189844(v9 > 1, v10 + 1, 1);
      }

      v11 = v1[8];
      v12 = v1[6];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v11, v12);
      v6 += v16;
      --v3;
    }

    while (v3);
  }

  type metadata accessor for SiriVocabulary.Corpus();
  swift_allocObject();
  v13 = SiriVocabulary.Corpus.init(contents:capacity:)();

  v14 = v1[1];

  return v14(v13);
}

uint64_t sub_10047AEE8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100199D20;

  return sub_10047AF78();
}

uint64_t sub_10047AF78()
{
  v1 = type metadata accessor for NoteEntity(0);
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v2 = type metadata accessor for SiriVocabulary.DynamicTerm();
  v0[8] = v2;
  v0[9] = *(v2 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_10047B09C, 0, 0);
}

uint64_t sub_10047B09C()
{
  v1 = sub_100270AF8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v4;
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_10047B168;

  return VisibleNotesQuery.suggestedEntities()(v1, v3, v5, v7 & 0x101010101);
}

uint64_t sub_10047B168(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_10047B514;
  }

  else
  {

    v4 = sub_10047B2A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10047B2A0()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[5];
    sub_100189844(0, v2, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v17 = *(v4 + 72);
    do
    {
      v18 = v5;
      v8 = v0[6];
      v7 = v0[7];
      sub_10047B5B8(v6, v7, type metadata accessor for NoteEntity);
      EntityProperty.wrappedValue.getter();
      sub_10047B5B8(v7, v8, type metadata accessor for NoteEntity);
      sub_10047B620(&qword_1006BCAD0, type metadata accessor for NoteEntity);
      SiriVocabulary.DynamicTerm.init<A>(_:entity:)();
      v9 = v7;
      v5 = v18;
      sub_10047B668(v9, type metadata accessor for NoteEntity);
      v11 = v18[2];
      v10 = v18[3];
      if (v11 >= v10 >> 1)
      {
        sub_100189844(v10 > 1, v11 + 1, 1);
        v5 = v18;
      }

      v12 = v0[10];
      v13 = v0[8];
      v5[2] = v11 + 1;
      (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v6 += v17;
      --v2;
    }

    while (v2);
  }

  type metadata accessor for SiriVocabulary.Corpus();
  swift_allocObject();
  v14 = SiriVocabulary.Corpus.init(contents:capacity:)();

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_10047B514()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047B5B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10047B620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10047B668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for AppIntentsVocabularyManager()
{
  result = qword_1006C9240;
  if (!qword_1006C9240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10047B73C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10047B8C4()
{
  result = qword_1006C92A0[0];
  if (!qword_1006C92A0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1006C92A0);
  }

  return result;
}

uint64_t AsyncChannel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10047B9A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_10047B9E4(void *a1)
{
  v1 = a1[1];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10047BA00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 16))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10047BA78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10047BAF4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    result[1] = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

objc_class *sub_10047BB44()
{
  v1 = OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menu;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menu);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menu);
  }

  else
  {
    sub_1000054A4(0, &unk_1006C6410);
    sub_10015DA04(&unk_1006BD390);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_100531E20;
    v5 = v0;
    *(preferredElementSize + 32) = sub_10047BFEC();
    *(preferredElementSize + 40) = sub_10047C164();
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v16.value.super.isa = 0;
    v16.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v14).super.super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100531E20;
    *(v8 + 32) = sub_10047BDE4();
    *(v8 + 40) = isa;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v17.value.super.isa = 0;
    v17.is_nil = 0;
    v10.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v17, 0, 0xFFFFFFFFFFFFFFFFLL, v8, v15).super.super.isa;
    v11 = *(v0 + v1);
    *(v5 + v1) = v10;
    v3 = v10.super.super.isa;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_10047BC9C()
{
  v1 = sub_10047BDE4();
  v2 = OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection;
  v3 = 1;
  if (*(v0 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v3 = 0;
    }
  }

  [v1 setState:v3];

  v4 = sub_10047BFEC();
  v6 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      if (![v5 inclusionType])
      {
        v6 = 1;
      }
    }
  }

  [v4 setState:v6];

  v9 = sub_10047C164();
  v8 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      if ([v7 inclusionType] == 1)
      {
        v8 = 1;
      }
    }
  }

  [v9 setState:v8];
}

id sub_10047BDE4()
{
  v1 = OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionOff;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionOff];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionOff];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_10047BF50(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
  *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = 0;

  [a2 setNeedsUpdateConfiguration];
  sub_10047BC9C();
  v4 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  if (v4)
  {

    v4(v5);

    sub_10000C840(v4);
  }
}

id sub_10047BFEC()
{
  v1 = OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionInclude;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionInclude];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionInclude];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_10047C164()
{
  v1 = OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionExclude;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionExclude];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionExclude];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_10047C2DC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && (v4 = [objc_opt_self() sharedContext]) != 0 && (v5 = v4, v6 = objc_msgSend(v4, "managedObjectContext"), v5, v6))
  {
    v7 = OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection;
    if (*&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection])
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = [v8 folderIdentifiers];
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    v15 = objc_allocWithZone(ICFoldersFilterTypeSelection);
    v16 = v6;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v15 initWithManagedObjectContext:v16 inclusionType:a1 folderIdentifiers:isa];

    v19 = *&v2[v7];
    *&v2[v7] = v18;
    v20 = v18;

    [v2 setNeedsUpdateConfiguration];
  }

  else
  {
    v10 = *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
    *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = 0;

    v11 = [v2 setNeedsUpdateConfiguration];
  }

  result = sub_10047BC9C(v11);
  v13 = *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  if (v13)
  {

    v13(v14);

    return sub_10000C840(v13);
  }

  return result;
}

id sub_10047C578(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menu] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionOff] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionInclude] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionExclude] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FolderComposerFilterCellFolders();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_10047C638()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionExclude);
}

id sub_10047C698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerFilterCellFolders();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10047CAB0()
{
  v1 = v0;
  type metadata accessor for SystemPaperThumbnailService();
  v2 = static SystemPaperThumbnailService.shared.getter();
  SystemPaperThumbnailService.invalidate(for:)();

  v3 = static SystemPaperThumbnailService.shared.getter();
  SystemPaperThumbnailService.invalidate(for:)();

  v4 = static SystemPaperThumbnailService.shared.getter();
  SystemPaperThumbnailService.updateIfNeeded(for:completion:)();

  v5 = static SystemPaperThumbnailService.shared.getter();
  SystemPaperThumbnailService.updateIfNeeded(for:completion:)();

  return [v1 activityDidFinish:1];
}

uint64_t sub_10047CBAC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10015DA04(&qword_1006C9420);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR___ICGroupActivityDebugStatusController_groupActivities;
  swift_beginAccess();
  if (*(*&a2[v10] + 16))
  {
    v15 = *&a2[v10];
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;

    v12 = a2;
    sub_10015DA04(&qword_1006C9428);
    sub_10015DA04(&qword_1006C9430);
    sub_1000060B4(&qword_1006C9438, &qword_1006C9428);
    sub_10047E03C();
    sub_10047E1AC();
    ForEach<>.init(_:content:)();
    (*(v7 + 32))(a3, v9, v6);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v7 + 56))(a3, v13, 1, v6);
}

void *sub_10047CDD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = static HorizontalAlignment.leading.getter();
  v22 = 0;
  sub_10047CF64(v3, v4, v5, v6, __src);
  memcpy(__dst, __src, 0x121uLL);
  memcpy(v24, __src, 0x121uLL);
  sub_100006038(__dst, v19, &qword_1006C9470);
  sub_1000073B4(v24, &qword_1006C9470);
  memcpy(&v21[7], __dst, 0x121uLL);
  LOBYTE(v3) = v22;
  KeyPath = swift_getKeyPath();
  v19[0] = 0;
  v9 = static Edge.Set.horizontal.getter();
  [objc_opt_self() deviceIsMac];
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *a2 = v7;
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = v3;
  result = memcpy((a2 + 17), v21, 0x128uLL);
  *(a2 + 320) = KeyPath;
  *(a2 + 328) = 1;
  *(a2 + 336) = 0;
  *(a2 + 344) = v9;
  *(a2 + 352) = v11;
  *(a2 + 360) = v13;
  *(a2 + 368) = v15;
  *(a2 + 376) = v17;
  *(a2 + 384) = 0;
  return result;
}

void *sub_10047CF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  if (a4)
  {
    v9 = static VerticalAlignment.firstTextBaseline.getter();
    v97[0] = 1;
    sub_10047D94C(a3, a4, a1, a2, a3, a4, __dst);
    v72 = __dst[10];
    v73 = __dst[11];
    v74 = __dst[12];
    v68 = __dst[6];
    v69 = __dst[7];
    v70 = __dst[8];
    v71 = __dst[9];
    v64 = __dst[2];
    v65 = __dst[3];
    v66 = __dst[4];
    v67 = __dst[5];
    v62 = __dst[0];
    v63 = __dst[1];
    v76[10] = __dst[10];
    v76[11] = __dst[11];
    v76[12] = __dst[12];
    v76[6] = __dst[6];
    v76[7] = __dst[7];
    v76[8] = __dst[8];
    v76[9] = __dst[9];
    v76[2] = __dst[2];
    v76[3] = __dst[3];
    v76[4] = __dst[4];
    v76[5] = __dst[5];
    v75 = *&__dst[13];
    v77 = *&__dst[13];
    v76[0] = __dst[0];
    v76[1] = __dst[1];
    sub_100006038(&v62, __src, &qword_1006C9498);
    sub_1000073B4(v76, &qword_1006C9498);
    *(&__dst[10] + 7) = v72;
    *(&__dst[11] + 7) = v73;
    *(&__dst[12] + 7) = v74;
    *(&__dst[13] + 7) = v75;
    *(&__dst[6] + 7) = v68;
    *(&__dst[7] + 7) = v69;
    *(&__dst[8] + 7) = v70;
    *(&__dst[9] + 7) = v71;
    *(&__dst[2] + 7) = v64;
    *(&__dst[3] + 7) = v65;
    *(&__dst[4] + 7) = v66;
    *(&__dst[5] + 7) = v67;
    *(__dst + 7) = v62;
    *(&__dst[1] + 7) = v63;
    *(&v79[10] + 1) = __dst[10];
    *(&v79[11] + 1) = __dst[11];
    *(&v79[12] + 1) = __dst[12];
    v79[13] = *(&__dst[12] + 15);
    *(&v79[6] + 1) = __dst[6];
    *(&v79[7] + 1) = __dst[7];
    *(&v79[8] + 1) = __dst[8];
    *(&v79[9] + 1) = __dst[9];
    *(&v79[2] + 1) = __dst[2];
    *(&v79[3] + 1) = __dst[3];
    *(&v79[4] + 1) = __dst[4];
    *(&v79[5] + 1) = __dst[5];
    *(v79 + 1) = __dst[0];
    v78 = v9;
    LOBYTE(v79[0]) = v97[0];
    *(&v79[1] + 1) = __dst[1];
    *&__dst[0] = a1;
    *(&__dst[0] + 1) = a2;
    sub_10019E0AC();

    v10 = Text.init<A>(_:)();
    v12 = v11;
    v14 = v13;
    static Font.caption.getter();
    Font.monospacedDigit()();

    v15 = Text.font(_:)();
    v17 = v16;
    v19 = v18;
    v44 = v20;

    sub_1001B39D4(v10, v12, v14 & 1);

    KeyPath = swift_getKeyPath();
    v59 = v79[11];
    v60 = v79[12];
    v61 = v79[13];
    v55 = v79[7];
    v56 = v79[8];
    v57 = v79[9];
    v58 = v79[10];
    v51 = v79[3];
    v52 = v79[4];
    v53 = v79[5];
    v54 = v79[6];
    v47 = v78;
    v48 = v79[0];
    v49 = v79[1];
    v50 = v79[2];
    v80[12] = v79[11];
    v80[13] = v79[12];
    v80[8] = v79[7];
    v80[9] = v79[8];
    v80[10] = v79[9];
    v80[11] = v79[10];
    v80[4] = v79[3];
    v80[5] = v79[4];
    v80[6] = v79[5];
    v80[7] = v79[6];
    v80[0] = v78;
    v80[1] = v79[0];
    v80[2] = v79[1];
    v80[3] = v79[2];
    v92 = v79[10];
    v93 = v79[11];
    v94 = v79[12];
    v95 = v79[13];
    v88 = v79[6];
    v89 = v79[7];
    v90 = v79[8];
    v91 = v79[9];
    v84 = v79[2];
    v85 = v79[3];
    v86 = v79[4];
    v87 = v79[5];
    v80[14] = v79[13];
    v81 = v78;
    v82 = v79[0];
    v83 = v79[1];
    sub_100006038(&v78, __dst, &qword_1006C94A0);
    sub_1001B39C4(v15, v17, v19 & 1);

    sub_100006038(v80, __dst, &qword_1006C94A0);
    sub_1001B39C4(v15, v17, v19 & 1);

    sub_1001B39D4(v15, v17, v19 & 1);

    v96[12] = v59;
    v96[13] = v60;
    v96[14] = v61;
    v96[8] = v55;
    v96[9] = v56;
    v96[10] = v57;
    v96[11] = v58;
    v96[4] = v51;
    v96[5] = v52;
    v96[6] = v53;
    v96[7] = v54;
    v96[0] = v47;
    v96[1] = v48;
    v96[2] = v49;
    v96[3] = v50;
    sub_1000073B4(v96, &qword_1006C94A0);
    *&__src[176] = v92;
    *&__src[192] = v93;
    *&__src[208] = v94;
    *&__src[224] = v95;
    *&__src[112] = v88;
    *&__src[128] = v89;
    *&__src[144] = v90;
    *&__src[160] = v91;
    *&__src[48] = v84;
    *&__src[64] = v85;
    *&__src[80] = v86;
    *&__src[96] = v87;
    *__src = v81;
    *&__src[16] = v82;
    *&__src[32] = v83;
    *&__src[240] = v15;
    *&__src[248] = v17;
    __src[256] = v19 & 1;
    *&__src[264] = v44;
    *&__src[272] = KeyPath;
    *&__src[280] = 0x3FE0000000000000;
    sub_10047E20C(__src);
    memcpy(__dst, __src, 0x121uLL);
    sub_10015DA04(&qword_1006C9478);
    sub_10015DA04(&qword_1006C9480);
    sub_1000060B4(&qword_1006C9488, &qword_1006C9478);
    sub_1000060B4(&qword_1006C9490, &qword_1006C9480);
    _ConditionalContent<>.init(storage:)();
    sub_1001B39D4(v15, v17, v19 & 1);

    sub_1000073B4(&v78, &qword_1006C94A0);
  }

  else
  {
    sub_10019E0AC();

    v42 = a1;
    v22 = Text.init<A>(_:)();
    v24 = v23;
    v26 = v25;
    static Font.body.getter();
    Font.monospacedDigit()();

    v27 = Text.font(_:)();
    v43 = v28;
    v45 = v29;
    v41 = v30;

    sub_1001B39D4(v22, v24, v26 & 1);

    v31 = swift_getKeyPath();
    *&__dst[0] = sub_1004767D8(v42, a2, a3, 0);
    *(&__dst[0] + 1) = v32;
    v33 = Text.init<A>(_:)();
    v35 = v34;
    v37 = v36;
    LOBYTE(v81) = v41 & 1;
    v39 = v38 & 1;
    LOBYTE(v80[0]) = v38 & 1;
    LOBYTE(v42) = v38 & 1;
    sub_1001B39C4(v27, v43, v41 & 1);

    sub_1001B39C4(v33, v35, v39);

    sub_1001B39C4(v27, v43, v41 & 1);

    sub_1001B39C4(v33, v35, v39);

    sub_1001B39D4(v33, v35, v39);

    sub_1001B39D4(v27, v43, v41 & 1);

    *__src = v27;
    *&__src[8] = v43;
    __src[16] = v41 & 1;
    *&__src[24] = v45;
    *&__src[32] = v31;
    *&__src[40] = 0x3FE0000000000000;
    *&__src[48] = v33;
    *&__src[56] = v35;
    __src[64] = v42;
    *&__src[72] = v37;
    sub_10047E200(__src);
    memcpy(__dst, __src, 0x121uLL);
    sub_10015DA04(&qword_1006C9478);
    sub_10015DA04(&qword_1006C9480);
    sub_1000060B4(&qword_1006C9488, &qword_1006C9478);
    sub_1000060B4(&qword_1006C9490, &qword_1006C9480);
    _ConditionalContent<>.init(storage:)();
    sub_1001B39D4(v33, v35, v39);

    sub_1001B39D4(v27, v43, v41 & 1);
  }

  memcpy(__dst, v97, 0x121uLL);
  return memcpy(a5, __dst, 0x121uLL);
}

uint64_t sub_10047D94C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v10 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v12);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
  LocalizedStringKey.init(stringInterpolation:)();
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  LOBYTE(a2) = v17;
  static Font.Weight.medium.getter();
  v18 = Text.fontWeight(_:)();
  v42 = v19;
  v43 = v18;
  v41 = v20;
  v44 = v21;
  sub_1001B39D4(v14, v16, a2 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(a1) = static Axis.Set.horizontal.getter();
  sub_10047DDF4(a3, a4, a5, a6, v63);
  v55 = *&v63[64];
  v56 = *&v63[80];
  v57 = *&v63[96];
  v58 = *&v63[112];
  v51 = *v63;
  v52 = *&v63[16];
  v53 = *&v63[32];
  v54 = *&v63[48];
  v59[0] = *v63;
  v59[1] = *&v63[16];
  v59[2] = *&v63[32];
  v59[3] = *&v63[48];
  v59[4] = *&v63[64];
  v59[5] = *&v63[80];
  v59[6] = *&v63[96];
  v60 = *&v63[112];
  sub_100006038(&v51, v61, &qword_1006C94A8);
  sub_1000073B4(v59, &qword_1006C94A8);
  *(&v50[4] + 7) = v55;
  *(&v50[5] + 7) = v56;
  *(&v50[6] + 7) = v57;
  *(&v50[7] + 7) = v58;
  *(v50 + 7) = v51;
  *(&v50[1] + 7) = v52;
  *(&v50[2] + 7) = v53;
  *(&v50[3] + 7) = v54;
  v23 = static Color.secondary.getter();
  v24 = swift_getKeyPath();
  LOBYTE(v61[0]) = a1;
  v25 = v50[4];
  *(&v61[4] + 1) = v50[4];
  v26 = v50[5];
  *(&v61[5] + 1) = v50[5];
  v27 = v50[6];
  *(&v61[6] + 1) = v50[6];
  v61[7] = *(&v50[6] + 15);
  v28 = v50[0];
  *(v61 + 1) = v50[0];
  v29 = v50[1];
  *(&v61[1] + 1) = v50[1];
  v30 = v50[2];
  *(&v61[2] + 1) = v50[2];
  v31 = v50[3];
  *(&v61[3] + 1) = v50[3];
  *&v46[103] = v61[6];
  *&v46[87] = v61[5];
  *&v46[39] = v61[2];
  *&v46[23] = v61[1];
  *&v46[119] = *(&v50[6] + 15);
  *&v62 = v24;
  *(&v62 + 1) = v23;
  *&v46[55] = v61[3];
  *&v46[71] = v61[4];
  *&v46[7] = v61[0];
  *&v46[135] = v62;
  v32 = *&v46[112];
  *(a7 + 161) = *&v46[96];
  v33 = *&v46[48];
  *(a7 + 97) = *&v46[32];
  *(a7 + 177) = v32;
  *(a7 + 193) = *&v46[128];
  *(a7 + 113) = v33;
  v34 = *&v46[80];
  *(a7 + 129) = *&v46[64];
  *(a7 + 145) = v34;
  v35 = *&v46[16];
  *(a7 + 65) = *v46;
  *(a7 + 81) = v35;
  *&v63[65] = v25;
  *&v63[81] = v26;
  *&v63[97] = v27;
  *&v63[112] = *(&v50[6] + 15);
  *&v63[1] = v28;
  *&v63[17] = v29;
  *&v63[33] = v30;
  v49 = v41 & 1;
  v48 = 0;
  v47 = 0;
  *a7 = v43;
  *(a7 + 8) = v42;
  *(a7 + 16) = v41 & 1;
  *(a7 + 24) = v44;
  *(a7 + 32) = KeyPath;
  *(a7 + 40) = 2;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0x4010000000000000;
  *(a7 + 64) = 0;
  *(a7 + 208) = *&v46[143];
  v63[0] = a1;
  *&v63[49] = v31;
  v64 = v24;
  v65 = v23;
  sub_1001B39C4(v43, v42, v41 & 1);

  sub_100006038(v61, &v45, &qword_1006C94B0);
  sub_1000073B4(v63, &qword_1006C94B0);
  sub_1001B39D4(v43, v42, v41 & 1);
}

uint64_t sub_10047DDF4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v8 = a1;
  sub_1004767D8(a1, a2, a3, a4);
  sub_10019E0AC();
  v29 = Text.init<A>(_:)();
  v30 = v10;
  v28 = v11;
  v31 = v12;
  sub_1004767F0(v8, a2, a3, a4);
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v27 = v18;
  sub_1004767F0(v8, a2, a3, a4);
  v25 = Text.init<A>(_:)();
  v26 = v19;
  LOBYTE(v8) = v20;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  *a5 = v29;
  *(a5 + 8) = v30;
  *(a5 + 16) = v28 & 1;
  *(a5 + 24) = v31;
  *(a5 + 32) = 257;
  *(a5 + 40) = v13;
  *(a5 + 48) = v15;
  *(a5 + 56) = v17 & 1;
  *(a5 + 64) = v27;
  *(a5 + 72) = v25;
  *(a5 + 80) = v26;
  *(a5 + 88) = v8 & 1;
  *(a5 + 96) = v22;
  *(a5 + 104) = KeyPath;
  *(a5 + 112) = 0x3FE999999999999ALL;
  sub_1001B39C4(v29, v30, v28 & 1);

  sub_1001B39C4(v13, v15, v17 & 1);

  sub_1001B39C4(v25, v26, v8 & 1);

  sub_1001B39D4(v25, v26, v8 & 1);

  sub_1001B39D4(v13, v15, v17 & 1);

  sub_1001B39D4(v29, v30, v28 & 1);
}

unint64_t sub_10047E03C()
{
  result = qword_1006C9440;
  if (!qword_1006C9440)
  {
    sub_10017992C(&qword_1006C9430);
    sub_10047E0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9440);
  }

  return result;
}

unint64_t sub_10047E0C8()
{
  result = qword_1006C9448;
  if (!qword_1006C9448)
  {
    sub_10017992C(&qword_1006C9450);
    sub_1000060B4(&qword_1006C9458, &qword_1006C9460);
    sub_1000060B4(&qword_1006C3248, &qword_1006C3250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9448);
  }

  return result;
}

unint64_t sub_10047E1AC()
{
  result = qword_1006C9468;
  if (!qword_1006C9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9468);
  }

  return result;
}

unint64_t sub_10047E214()
{
  result = qword_1006C94B8;
  if (!qword_1006C94B8)
  {
    sub_10017992C(&qword_1006C94C0);
    sub_10047E298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C94B8);
  }

  return result;
}

unint64_t sub_10047E298()
{
  result = qword_1006C94C8;
  if (!qword_1006C94C8)
  {
    sub_10017992C(&qword_1006C9420);
    sub_10047E03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C94C8);
  }

  return result;
}

uint64_t sub_10047E31C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19[-1] - v9;
  if ([v2 ic_inSidebar])
  {
    static UIListContentConfiguration.sidebarHeader()();
  }

  else
  {
    static UIListContentConfiguration.prominentInsetGroupedHeader()();
  }

  v11 = type metadata accessor for UICellConfigurationState();
  v20 = v11;
  v21 = &protocol witness table for UICellConfigurationState;
  v12 = sub_100180240(v19);
  (*(*(v11 - 8) + 16))(v12, a1, v11);
  UIListContentConfiguration.updated(for:)();
  v13 = *(v5 + 8);
  v13(v10, v4);
  sub_100009F60(v19);
  (*(v5 + 32))(v10, v8, v4);
  v14 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v15 + 8) = 0x4030000000000000;
  v14(v19, 0);

  UIListContentConfiguration.text.setter();
  v20 = v4;
  v21 = &protocol witness table for UIListContentConfiguration;
  v16 = sub_100180240(v19);
  (*(v5 + 16))(v16, v10, v4);
  UICollectionViewCell.contentConfiguration.setter();
  return (v13)(v10, v4);
}

void sub_10047E78C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___ICTagCell_displayImage);
  *(v1 + OBJC_IVAR___ICTagCell_displayImage) = a1;
  v7 = a1;

  if (a1)
  {
    [*(v1 + OBJC_IVAR___ICTagCell_imageView) setImage:v7];
    v4 = (v1 + OBJC_IVAR___ICTagCell_displayText);
    *v4 = 0;
    v4[1] = 0;

    v5 = *(v1 + OBJC_IVAR___ICTagCell_textLabel);
    [v5 setAttributedText:0];
    v6 = String._bridgeToObjectiveC()();
    [v5 setText:v6];

    sub_100480A74();
  }
}

void sub_10047E884(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = (v4 + OBJC_IVAR___ICTagCell_displayText);
  *v7 = a1;
  v7[1] = a2;

  [*(v4 + OBJC_IVAR___ICTagCell_imageView) setImage:0];
  v8 = *(v4 + OBJC_IVAR___ICTagCell_displayImage);
  *(v4 + OBJC_IVAR___ICTagCell_displayImage) = 0;

  *(v4 + OBJC_IVAR___ICTagCell_includeSymbolPrefix) = a3;
  *(v4 + OBJC_IVAR___ICTagCell_hasGroupInset) = a4;
  sub_10047EB28();

  sub_100480A74();
}

NSString sub_10047E930()
{
  result = String._bridgeToObjectiveC()();
  qword_1006EFB78 = result;
  return result;
}

void sub_10047EB28()
{
  v1 = [v0 superview];
  if (!v1)
  {
    return;
  }

  v25 = v1;
  if (v0[OBJC_IVAR___ICTagCell_hasGroupInset])
  {
    v2 = 32.0;
  }

  else
  {
    v3 = [objc_opt_self() ic_isVision] == 0;
    v1 = v25;
    if (v3)
    {
      v2 = 0.0;
    }

    else
    {
      v2 = 24.0;
    }
  }

  [v1 bounds];
  v4 = CGRectGetWidth(v27) - v2;
  v5 = OBJC_IVAR___ICTagCell_maxWidthConstraint;
  v6 = *&v0[OBJC_IVAR___ICTagCell_maxWidthConstraint];
  if (v6)
  {
    [v6 setConstant:v4];
  }

  else
  {
    v7 = [v0 contentView];
    v8 = [v7 widthAnchor];

    v9 = [v8 constraintLessThanOrEqualToConstant:v4];
    v10 = *&v0[v5];
    *&v0[v5] = v9;

    v11 = *&v0[v5];
    if (v11)
    {
      [v11 setActive:1];
    }
  }

  v12 = [objc_opt_self() defaultMetrics];
  v13 = [v0 traitCollection];
  v14 = 32.0;
  [v12 scaledValueForValue:v13 compatibleWithTraitCollection:32.0];
  v16 = v15;

  if (v16 > 32.0)
  {
    v14 = v16;
  }

  v17 = OBJC_IVAR___ICTagCell_minWidthConstraint;
  v18 = *&v0[OBJC_IVAR___ICTagCell_minWidthConstraint];
  if (v18)
  {
    v19 = v18;
    [v19 setConstant:v14];
LABEL_18:

    goto LABEL_19;
  }

  v20 = [v0 contentView];
  v21 = [v20 widthAnchor];

  v22 = [v21 constraintGreaterThanOrEqualToConstant:v14];
  v23 = *&v0[v17];
  *&v0[v17] = v22;

  v24 = *&v0[v17];
  if (v24)
  {
    v19 = v24;
    [v19 setActive:1];
    goto LABEL_18;
  }

LABEL_19:
}

void sub_10047EED4()
{
  v1 = [v0 contentView];
  if (*&v0[OBJC_IVAR___ICTagCell_displayImage])
  {
    v2 = sub_10047FF60();
LABEL_11:
    v3 = v2;
    goto LABEL_12;
  }

  if (v0[OBJC_IVAR___ICTagCell_isEmphasized] != 1)
  {
    if (v0[OBJC_IVAR___ICTagCell_isExcluded] == 1)
    {
      v8 = OBJC_IVAR___ICTagCell_excludedBackgroundColor;
    }

    else
    {
      v8 = OBJC_IVAR___ICTagCell_unemphasizedBackgroundColor;
    }

    v2 = *&v0[v8];
    goto LABEL_11;
  }

  v3 = [objc_opt_self() ICTintColor];
  v4 = [v0 traitCollection];
  v5 = [v4 accessibilityContrast];

  if (v5 == 1)
  {
    v6 = ICAccessibilitySystemDarkenedColor();
    if (!v6)
    {
LABEL_36:
      __break(1u);
      return;
    }

    v7 = v6;

    v3 = v7;
  }

LABEL_12:
  [v1 setBackgroundColor:v3];

  v9 = *&v0[OBJC_IVAR___ICTagCell_textLabel];
  if (v0[OBJC_IVAR___ICTagCell_isEmphasized] != 1)
  {
    v11 = v0[OBJC_IVAR___ICTagCell_isExcluded];
    v12 = objc_opt_self();
    if (v11 == 1)
    {
      v10 = [v12 ICTintColor];
      v13 = [v0 traitCollection];
      v14 = [v13 accessibilityContrast];

      if (v14 != 1)
      {
        goto LABEL_21;
      }

      v12 = ICAccessibilitySystemDarkenedColor();
      if (v12)
      {
LABEL_20:
        v17 = v12;

        v10 = v17;
        goto LABEL_21;
      }

      __break(1u);
    }

    v10 = [v12 secondaryLabelColor];
    v15 = [v0 traitCollection];
    v16 = [v15 accessibilityContrast];

    if (v16 != 1)
    {
      goto LABEL_21;
    }

    v12 = ICAccessibilitySystemDarkenedColor();
    if (!v12)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  v10 = *&v0[OBJC_IVAR___ICTagCell_emphasizedTextColor];
LABEL_21:
  [v9 setTextColor:v10];

  v18 = [v0 contentView];
  v19 = [v18 layer];

  v20 = OBJC_IVAR___ICTagCell_isExcluded;
  if (v0[OBJC_IVAR___ICTagCell_isExcluded] != 1 || (v0[OBJC_IVAR___ICTagCell_isPreviewing] & 1) != 0)
  {
    v21 = 0;
    goto LABEL_28;
  }

  v22 = [objc_opt_self() ICTintColor];
  v23 = [v0 traitCollection];
  v24 = [v23 accessibilityContrast];

  if (v24 == 1)
  {
    v25 = ICAccessibilitySystemDarkenedColor();
    if (v25)
    {
      v26 = v25;

      v22 = v26;
      goto LABEL_27;
    }

    goto LABEL_35;
  }

LABEL_27:
  v21 = [v22 CGColor];

LABEL_28:
  [v19 setBorderColor:v21];

  v27 = [v0 contentView];
  v28 = [v27 layer];

  if (v0[v20] != 1 || (v29 = 2.0, v0[OBJC_IVAR___ICTagCell_isPreviewing] == 1))
  {
    v29 = 0.0;
  }

  [v28 setBorderWidth:v29];

  sub_100480A74();
}

uint64_t TagCell.accessibilityLabel.getter()
{
  if (*(v0 + OBJC_IVAR___ICTagCell_identifier) && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___ICTagCell_displayText);
  }

  return v4;
}

uint64_t (*TagCell.accessibilityLabel.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR___ICTagCell_identifier) && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v9 = v1 + OBJC_IVAR___ICTagCell_displayText;
    v6 = *(v1 + OBJC_IVAR___ICTagCell_displayText);
    v8 = *(v9 + 8);
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_100481824;
}

uint64_t TagCell.accessibilityValue.getter()
{
  if (*(v0 + OBJC_IVAR___ICTagCell_isExcluded) != 1)
  {
    return 0;
  }

  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t (*TagCell.accessibilityValue.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR___ICTagCell_isExcluded) == 1)
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_100481824;
}

UIAccessibilityTraits TagCell.accessibilityTraits.getter()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v4, "accessibilityTraits");
  v2 = UIAccessibilityTraitButton;
  if ((UIAccessibilityTraitButton & ~v1) == 0)
  {
    v2 = 0;
  }

  return v2 | v1;
}

id TagCell.accessibilityTraits.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "setAccessibilityTraits:", a1);
}

void (*TagCell.accessibilityTraits.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  ObjectType = swift_getObjectType();
  v4[4].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v6 = [(objc_super *)v4 accessibilityTraits];
  v7 = UIAccessibilityTraitButton;
  if ((UIAccessibilityTraitButton & ~v6) == 0)
  {
    v7 = 0;
  }

  v4[3].receiver = (v7 | v6);
  return sub_10047F9EC;
}

void sub_10047F9EC(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 6);
  v5 = 32;
  if (a2)
  {
    v5 = 16;
  }

  v6 = 40;
  if (a2)
  {
    v6 = 24;
  }

  *&v2[v5] = *(*a1 + 7);
  *&v2[v6] = v3;
  objc_msgSendSuper2(&v2[v5], "setAccessibilityTraits:", v4);

  free(v2);
}

id sub_10047FA74(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t TagCell.accessibilityHint.getter()
{
  v1 = v0;
  sub_10047FD48(&v10);
  if (v11)
  {
    sub_100192680(&v10, v12);
    v2 = v13;
    v3 = v14;
    sub_10017CC60(v12, v13);
    v4 = (*(v3 + 8))(v0, v2, v3);
    sub_100009F60(v12);
    if (v4)
    {
      return 0;
    }
  }

  else
  {
    sub_1000073B4(&v10, &qword_1006C9518);
  }

  if (*(v1 + OBJC_IVAR___ICTagCell_identifier))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 0;
    }
  }

  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 localizedStringForKey:v7 value:0 table:0];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

double sub_10047FD48@<D0>(uint64_t a1@<X8>)
{
  v10 = v1;
  sub_1000054A4(0, &qword_1006C95E0);
  v3 = v10;
  sub_10015DA04(&qword_1006C95E8);
  if (swift_dynamicCast())
  {
LABEL_2:
    sub_1000073B4(&v7, &qword_1006C9518);
    goto LABEL_7;
  }

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  sub_1000073B4(&v7, &qword_1006C9518);
  v4 = [v3 superview];
  if (v4)
  {
    v5 = v4;
    do
    {

      v10 = v5;
      v3 = v5;
      sub_10015DA04(&qword_1006C95E8);
      if (swift_dynamicCast())
      {
        goto LABEL_2;
      }

      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_1000073B4(&v7, &qword_1006C9518);
      v5 = [v3 superview];
    }

    while (v5);
  }

LABEL_7:
  *&v7 = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t (*TagCell.accessibilityHint.modify(uint64_t *a1))()
{
  *a1 = TagCell.accessibilityHint.getter();
  a1[1] = v2;
  return sub_10047FF58;
}

id sub_10047FF60()
{
  v1 = OBJC_IVAR___ICTagCell____lazy_storage___imageViewBackgroundColor;
  v2 = *&v0[OBJC_IVAR___ICTagCell____lazy_storage___imageViewBackgroundColor];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___ICTagCell____lazy_storage___imageViewBackgroundColor];
  }

  else
  {
    v4 = [objc_opt_self() tintColor];
    v5 = [v0 traitCollection];
    v6 = [v5 ic_isDark];

    v7 = 0.1;
    if (v6)
    {
      v7 = 0.2;
    }

    v8 = [v4 colorWithAlphaComponent:v7];

    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id TagCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id TagCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___ICTagCell_displayText];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR___ICTagCell_includeSymbolPrefix] = 0;
  *&v4[OBJC_IVAR___ICTagCell_displayImage] = 0;
  v4[OBJC_IVAR___ICTagCell_hasGroupInset] = 1;
  v4[OBJC_IVAR___ICTagCell_isPreviewing] = 0;
  *&v4[OBJC_IVAR___ICTagCell_identifier] = 0;
  v11 = OBJC_IVAR___ICTagCell_imageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR___ICTagCell_textLabel;
  *&v4[v12] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR___ICTagCell_unemphasizedBackgroundColor;
  v14 = objc_opt_self();
  *&v4[v13] = [v14 tertiarySystemFillColor];
  v15 = OBJC_IVAR___ICTagCell_excludedBackgroundColor;
  *&v4[v15] = [v14 systemBackgroundColor];
  *&v4[OBJC_IVAR___ICTagCell____lazy_storage___imageViewBackgroundColor] = 0;
  v16 = OBJC_IVAR___ICTagCell_emphasizedTextColor;
  *&v4[v16] = [v14 whiteColor];
  *&v4[OBJC_IVAR___ICTagCell_maxWidthConstraint] = 0;
  *&v4[OBJC_IVAR___ICTagCell_minWidthConstraint] = 0;
  v4[OBJC_IVAR___ICTagCell_isEmphasized] = 0;
  v4[OBJC_IVAR___ICTagCell_isExcluded] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  sub_100480318();

  return v17;
}

id sub_100480318()
{
  v1 = v0;
  v2 = sub_10015DA04(&qword_1006C5030);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR___ICTagCell_textLabel];
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v9 setContentHuggingPriority:0 forAxis:v11];
  v12 = [objc_opt_self() secondaryLabelColor];
  v13 = [v1 traitCollection];
  v14 = [v13 accessibilityContrast];

  if (v14 != 1)
  {
    goto LABEL_4;
  }

  result = ICAccessibilitySystemDarkenedColor();
  if (result)
  {
    v16 = result;

    v12 = v16;
LABEL_4:
    [v9 setTextColor:v12];

    [v9 setLineBreakMode:5];
    [v9 setTextAlignment:1];
    v17 = [v1 contentView];
    [v17 addSubview:v9];

    [v9 ic_addAnchorsToFillSuperviewWithHorizontalPadding:0 verticalPadding:12.0 usesSafeAreaLayoutGuide:8.0];
    v18 = *&v1[OBJC_IVAR___ICTagCell_imageView];
    [v18 setContentMode:4];
    v19 = [v1 contentView];
    [v19 addSubview:v18];

    [v18 ic_addAnchorsToFillSuperviewWithHorizontalPadding:0 verticalPadding:8.0 usesSafeAreaLayoutGuide:0.0];
    v20 = [v1 contentView];
    [v20 ic_applyRoundedCornersWithRadius:8.0];

    sub_10047EED4();
    [v1 setIsAccessibilityElement:1];
    [v1 setFocusEffect:0];
    static UIBackgroundConfiguration.clear()();
    UIBackgroundConfiguration.cornerRadius.setter();
    (*(v6 + 16))(v4, v8, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    UICollectionViewCell.backgroundConfiguration.setter();
    v21 = [objc_opt_self() defaultCenter];
    [v21 addObserver:v1 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    sub_1000054A4(0, &qword_1006BDAB0);
    static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
    UIView.registerForTraitChanges(_:action:)();
    swift_unknownObjectRelease();

    static UITraitCollection.traitsAffectingSize.getter();
    UIView.registerForTraitChanges(_:action:)();
    swift_unknownObjectRelease();

    return (*(v6 + 8))(v8, v5);
  }

  __break(1u);
  return result;
}