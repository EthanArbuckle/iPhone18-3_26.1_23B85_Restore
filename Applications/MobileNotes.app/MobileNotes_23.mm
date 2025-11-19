uint64_t sub_10033AC60(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_1000054A4(0, a3), v6 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10033AD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10033AE68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_10015DA04(&qword_1006C1790);
  __chkstk_darwin(v41);
  v9 = &v31[-v8];
  v10 = type metadata accessor for MarkdownStyle(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v31[-v15];
  if (!*(a2 + 16))
  {
    return 0;
  }

  v35 = v5;
  Hasher.init(_seed:)();
  sub_1002F804C();
  v17 = Hasher._finalize()();
  v18 = a2 + 56;
  v19 = -1 << *(a2 + 32);
  v20 = v17 & ~v19;
  if (((*(a2 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v36 = v14;
  v40 = a1;
  v21 = ~v19;
  v22 = *(v11 + 72);
  v38 = v21;
  v39 = v22;
  v23 = (v35 + 6);
  v37 = (v35 + 1);
  v34 = v7;
  v35 += 4;
  while (1)
  {
    sub_100354F74(*(a2 + 48) + v39 * v20, v16, type metadata accessor for MarkdownStyle);
    v24 = *(v41 + 48);
    sub_100354F74(v16, v9, type metadata accessor for MarkdownStyle);
    sub_100354F74(v40, &v9[v24], type metadata accessor for MarkdownStyle);
    v25 = *v23;
    v26 = (*v23)(v9, 6, v4);
    if (v26 > 2)
    {
      if (v26 > 4)
      {
        if (v26 == 5)
        {
          sub_100354E5C(v16, type metadata accessor for MarkdownStyle);
          if (v25(&v9[v24], 6, v4) == 5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_100354E5C(v16, type metadata accessor for MarkdownStyle);
          if (v25(&v9[v24], 6, v4) == 6)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v26 == 3)
      {
        sub_100354E5C(v16, type metadata accessor for MarkdownStyle);
        if (v25(&v9[v24], 6, v4) == 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_100354E5C(v16, type metadata accessor for MarkdownStyle);
        if (v25(&v9[v24], 6, v4) == 4)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    if (v26)
    {
      if (v26 == 1)
      {
        sub_100354E5C(v16, type metadata accessor for MarkdownStyle);
        if (v25(&v9[v24], 6, v4) == 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_100354E5C(v16, type metadata accessor for MarkdownStyle);
        if (v25(&v9[v24], 6, v4) == 2)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    v27 = v36;
    sub_100354F74(v9, v36, type metadata accessor for MarkdownStyle);
    if (!v25(&v9[v24], 6, v4))
    {
      break;
    }

    sub_100354E5C(v16, type metadata accessor for MarkdownStyle);
    (*v37)(v27, v4);
    v21 = v38;
LABEL_23:
    sub_1000073B4(v9, &qword_1006C1790);
LABEL_24:
    v20 = (v20 + 1) & v21;
    if (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  v28 = v34;
  (*v35)(v34, &v9[v24], v4);
  v32 = static URL.== infix(_:_:)();
  v33 = v18;
  v29 = *v37;
  (*v37)(v28, v4);
  sub_100354E5C(v16, type metadata accessor for MarkdownStyle);
  v29(v27, v4);
  v18 = v33;
  v21 = v38;
  if ((v32 & 1) == 0)
  {
    sub_100354E5C(v9, type metadata accessor for MarkdownStyle);
    goto LABEL_24;
  }

LABEL_29:
  sub_100354E5C(v9, type metadata accessor for MarkdownStyle);
  return 1;
}

void RealtimeCollaborationController.postLocalSelection(_:asDelta:)(void *a1, int a2)
{
  LODWORD(v64) = a2;
  v63 = a1;
  v3 = sub_10015DA04(&qword_1006C4720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v51 - v5;
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for EditNoteActivity();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v61 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10015DA04(&qword_1006C4728);
  __chkstk_darwin(v11 - 8);
  v62 = &v51 - v12;
  v13 = type metadata accessor for FastSync.SelectionMessage();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  if (*&v2[OBJC_IVAR___ICRealtimeCollaborationController_messageController])
  {
    v58 = v17;
    v59 = v9;
    v60 = &v51 - v16;
    v18 = OBJC_IVAR___ICRealtimeCollaborationController_selectionDocument;
    swift_beginAccess();
    v19 = *&v2[v18];
    if (v19)
    {
      v57 = v8;
      v20 = v14;
      v21 = v13;
      v22 = v6;
      v23 = v4;
      v24 = v3;
      v25 = OBJC_IVAR___ICRealtimeCollaborationController_activeSession;
      swift_beginAccess();
      v26 = v57;
      if (*&v2[v25])
      {
        v56 = v2;

        v27 = v19;
        v28 = RealtimeCollaborationSelectionDocument.mergeLocalSelection(_:)();
        if (v64)
        {
          if (v29 >> 60 == 15)
          {

            return;
          }

          v51 = v22;
          v63 = v27;
          v64 = v24;
          v39 = v28;
          v40 = v29;
          sub_1001C4E38(v28, v29);
          v54 = v40;
          v55 = v39;
          v53 = v39;
          v52 = v40;
        }

        else
        {
          v51 = v22;
          v54 = v29;
          v55 = v28;
          v63 = v27;
          v64 = v24;
          v37 = [v27 archivedData];
          v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v38;
        }

        v41 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
        v42 = v56;
        swift_beginAccess();
        v43 = v62;
        sub_100006038(&v42[v41], v62, &qword_1006C4728);
        v44 = type metadata accessor for FastSyncStateMachine();
        if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
        {
          __break(1u);
        }

        else
        {
          v45 = v59;
          v46 = v61;
          (*(v59 + 16))(v61, v43, v26);
          sub_100354E5C(v43, type metadata accessor for FastSyncStateMachine);
          EditNoteActivity.replicaID.getter();
          (*(v45 + 8))(v46, v26);
          v47 = v53;
          v48 = v52;
          sub_1001C4E38(v53, v52);
          v49 = v60;
          FastSync.SelectionMessage.init(replicaID:selectionStateData:)();
          (*(v20 + 16))(v58, v49, v21);
          sub_10015DA04(&qword_1006BD3C0);
          v50 = v51;
          AsyncStream.Continuation.yield(_:)();

          sub_1001C60E4(v55, v54);
          sub_10019671C(v47, v48);
          (*(v23 + 8))(v50, v64);
          (*(v20 + 8))(v49, v21);
        }
      }
    }
  }

  else
  {
    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10002597C(v30, qword_1006C46C8);
    v31 = v2;
    v64 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v31;
      *v34 = v31;
      v35 = v31;
      _os_log_impl(&_mh_execute_header, v64, v32, "%@: Message controller wasn't available when we tried to send a selection update.", v33, 0xCu);
      sub_1000073B4(v34, &qword_1006C1440);
    }

    v36 = v64;
  }
}

uint64_t RealtimeCollaborationController.removeSelection(forParticipantID:)()
{
  v1 = OBJC_IVAR___ICRealtimeCollaborationController_selectionDocument;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = v3;
    v5 = RealtimeCollaborationSelectionDocument.removeSelection(forParticipantID:)();
    v7 = v6;

    return sub_1001C60E4(v5, v7);
  }

  return result;
}

uint64_t RealtimeCollaborationController.localParticipantID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___ICRealtimeCollaborationController_selectionDocument;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    RealtimeCollaborationSelectionDocument.localParticipantID.getter();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for UUID();
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t RealtimeCollaborationController.participantSelections.getter()
{
  v1 = OBJC_IVAR___ICRealtimeCollaborationController_selectionDocument;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = RealtimeCollaborationSelectionDocument.selections.getter();

  return v4;
}

uint64_t sub_10033BCC4()
{
  v0 = sub_10015DA04(&qword_1006C8880);
  sub_100025918(v0, qword_1006C46E0);
  sub_10002597C(v0, qword_1006C46E0);
  return static Logger.verboseRealtimeCollaboration.getter();
}

uint64_t sub_10033BD1C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  sub_100025918(v4, qword_1006C46F8);
  sub_10002597C(v4, qword_1006C46F8);
  if (qword_1006BC7A0 != -1)
  {
    swift_once();
  }

  v5 = sub_10002597C(v0, qword_1006C46C8);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

uint64_t sub_10033BE58()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v11 - 8);
  __chkstk_darwin(v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006BE9E0);
  v10[1] = "Created from Fast Sync";
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.userInitiated(_:), v5);
  v10[0] = static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v5);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_100353E94(&qword_1006BCB80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10015DA04(&unk_1006BFD50);
  sub_1000060B4(&qword_1006BCB90, &unk_1006BFD50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1006C4710 = result;
  return result;
}

uint64_t sub_10033C19C()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v11 - 8);
  __chkstk_darwin(v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006BE9E0);
  v10[1] = "roller for fast sync: ";
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.userInitiated(_:), v5);
  v10[0] = static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v5);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_100353E94(&qword_1006BCB80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10015DA04(&unk_1006BFD50);
  sub_1000060B4(&qword_1006BCB90, &unk_1006BFD50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1006C4718 = result;
  return result;
}

uint64_t RealtimeCollaborationController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RealtimeCollaborationController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ICRealtimeCollaborationController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100281AE0;
}

BOOL RealtimeCollaborationController.hasActiveSession.getter()
{
  v1 = OBJC_IVAR___ICRealtimeCollaborationController_activeSession;
  swift_beginAccess();
  return *(v0 + v1) != 0;
}

uint64_t RealtimeCollaborationController.activeSession.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ICRealtimeCollaborationController_activeSession;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t RealtimeCollaborationController.currentNoteID.getter()
{
  v1 = type metadata accessor for EditNoteActivity();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
  swift_beginAccess();
  v6 = type metadata accessor for FastSyncStateMachine();
  v7 = (*(*(v6 - 8) + 48))(v0 + v5, 1, v6);
  result = 0;
  if (!v7)
  {
    (*(v2 + 16))(v4, v0 + v5, v1);
    v9 = EditNoteActivity.noteID.getter();
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return result;
}

char *RealtimeCollaborationController.init(id:cloudConfiguration:noteContext:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v39 = a1;
  v40 = a3;
  ObjectType = swift_getObjectType();
  v38 = ObjectType;
  v7 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_10015DA04(&qword_1006BCD10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = OBJC_IVAR___ICRealtimeCollaborationController_eventReporter;
  v42 = ObjectType;
  sub_10015DA04(&qword_1006BCD00);
  String.init<A>(describing:)();
  v15 = objc_allocWithZone(ICNAEventReporter);
  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 initWithSubTrackerName:v16];

  *&v4[v14] = v17;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___ICRealtimeCollaborationController_activeSession] = 0;
  *&v4[OBJC_IVAR___ICRealtimeCollaborationController_paperKitController] = 0;
  v18 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
  v19 = type metadata accessor for FastSyncStateMachine();
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = OBJC_IVAR___ICRealtimeCollaborationController_mergeableFieldStateCache;
  sub_10015DA04(&qword_1006BCD08);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *&v4[v20] = v21;
  *(v21 + 16) = &_swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR___ICRealtimeCollaborationController_messageController] = 0;
  v22 = OBJC_IVAR___ICRealtimeCollaborationController_contextNotifications;
  (*(v11 + 104))(v13, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v10);
  sub_10015DA04(&qword_1006BCD18);
  swift_allocObject();
  *&v4[v22] = sub_10017618C(v13);
  *&v4[OBJC_IVAR___ICRealtimeCollaborationController_watchForContextChangesTask] = 0;
  *&v4[OBJC_IVAR___ICRealtimeCollaborationController_selectionDocument] = 0;
  *&v4[OBJC_IVAR___ICRealtimeCollaborationController_id] = v39;
  *&v4[OBJC_IVAR___ICRealtimeCollaborationController_cloudConfiguration] = a2;
  v23 = a2;
  v24 = v40;
  v25 = [v40 workerManagedObjectContext];
  *&v4[OBJC_IVAR___ICRealtimeCollaborationController_context] = v25;
  v26 = v24;
  v27 = [v24 workerManagedObjectContext];
  *&v4[OBJC_IVAR___ICRealtimeCollaborationController_analyticsContext] = v27;
  v41.receiver = v4;
  v41.super_class = v38;
  v28 = objc_msgSendSuper2(&v41, "init");
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = *&v28[OBJC_IVAR___ICRealtimeCollaborationController_context];
  type metadata accessor for MainActor();
  v32 = v28;
  v33 = v31;

  v34 = static MainActor.shared.getter();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = &protocol witness table for MainActor;
  v35[4] = v33;
  v35[5] = v30;

  v36 = sub_10023D268(0, 0, v9, &unk_100543B00, v35);

  *&v32[OBJC_IVAR___ICRealtimeCollaborationController_watchForContextChangesTask] = v36;

  return v32;
}

void RealtimeCollaborationController.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR___ICRealtimeCollaborationController_watchForContextChangesTask])
  {
    ObjectType = swift_getObjectType();

    Task.cancel()();

    v2.receiver = v0;
    v2.super_class = ObjectType;
    objc_msgSendSuper2(&v2, "dealloc");
  }

  else
  {
    __break(1u);
  }
}

uint64_t RealtimeCollaborationController.joinGroupActivity(_:with:)(uint64_t a1, void *a2)
{
  v137 = a2;
  v141 = a1;
  v138 = type metadata accessor for FastSyncError();
  v130 = *(v138 - 8);
  v3 = __chkstk_darwin(v138);
  v133 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v135 = (&v121 - v6);
  v7 = __chkstk_darwin(v5);
  v134 = (&v121 - v8);
  v9 = __chkstk_darwin(v7);
  v129 = &v121 - v10;
  __chkstk_darwin(v9);
  v131 = &v121 - v11;
  v12 = type metadata accessor for FastSyncStateMachine();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v128 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10015DA04(&qword_1006BFC50);
  __chkstk_darwin(v15 - 8);
  v136 = &v121 - v16;
  v17 = type metadata accessor for EditNoteActivity();
  v139 = *(v17 - 8);
  v140 = v17;
  v18 = __chkstk_darwin(v17);
  v127 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v124 = &v121 - v21;
  v22 = __chkstk_darwin(v20);
  v132 = &v121 - v23;
  __chkstk_darwin(v22);
  v25 = &v121 - v24;
  v26 = sub_10015DA04(&qword_1006C4728);
  v27 = __chkstk_darwin(v26 - 8);
  v125 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v121 - v29;
  v31 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
  swift_beginAccess();
  sub_100006038(&v2[v31], v30, &qword_1006C4728);
  v126 = v13;
  v32 = *(v13 + 48);
  v33 = v32(v30, 1, v12);
  sub_1000073B4(v30, &qword_1006C4728);
  v34 = v33 == 1;
  v35 = v2;
  if (!v34)
  {
    goto LABEL_5;
  }

  v122 = v32;
  v121 = *&v2[OBJC_IVAR___ICRealtimeCollaborationController_id];
  v139[2](v25, v141, v140);
  sub_100006038(v137, v136, &qword_1006BFC50);
  v36 = v12[5];
  v37 = sub_10015DA04(&qword_1006BFCC8);
  v38 = *(*(v37 - 8) + 56);
  v39 = v128;
  v123 = v36;
  v38(&v128[v36], 1, 1, v37);
  v40 = v39 + v12[8];
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0xA000000000000000;
  v41 = (v39 + v12[9]);
  *v41 = 0;
  v41[1] = 0;
  v42 = [objc_opt_self() sharedContext];
  EditNoteActivity.accountID.getter();
  v43 = String._bridgeToObjectiveC()();

  v44 = [v42 containerForAccountID:v43];

  if (!v44)
  {
    v137 = v35;
    sub_100353E94(&qword_1006C8910, &type metadata accessor for FastSyncError);
    v49 = v138;
    v50 = swift_allocError();
    v52 = v51;
    *v51 = EditNoteActivity.accountID.getter();
    v52[1] = v53;
    (*(v130 + 104))(v52, enum case for FastSyncError.failedToCreateSession(_:), v49);
    swift_willThrow();
    sub_1000073B4(v136, &qword_1006BFC50);
    v54 = v139;
    v55 = v25;
    v56 = v140;
    (v139[1])(v55, v140);
    sub_1000073B4(v39 + v123, &qword_1006BFC50);
    v57 = v141;
    v142[0] = v50;
    swift_errorRetain();
    sub_10015DA04(&unk_1006C9B40);
    v58 = v131;
    v59 = swift_dynamicCast();
    v60 = v134;
    v61 = v135;
    v62 = v132;
    v63 = v133;
    if (!v59)
    {

      if (qword_1006BC7A0 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_10002597C(v68, qword_1006C46C8);
      v69 = v127;
      v54[2](v127, v57, v56);
      v70 = v56;
      v71 = v137;
      swift_errorRetain();
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v142[0] = v140;
        *v74 = 138412802;
        *(v74 + 4) = v71;
        *v75 = v71;
        *(v74 + 12) = 2080;
        sub_100353E94(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
        v76 = v71;
        LODWORD(v139) = v73;
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v79 = v78;
        (v54[1])(v69, v70);
        v80 = sub_100009D88(v77, v79, v142);

        *(v74 + 14) = v80;
        *(v74 + 22) = 2112;
        swift_errorRetain();
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 24) = v81;
        v75[1] = v81;
        _os_log_impl(&_mh_execute_header, v72, v139, "%@: Error transitioning to new activity %s: %@", v74, 0x20u);
        sub_10015DA04(&qword_1006C1440);
        swift_arrayDestroy();
        v57 = v141;

        sub_100009F60(v140);
      }

      else
      {

        (v54[1])(v69, v70);
      }

      swift_errorRetain();
      sub_10033EC94(v50, 0, v57, 0);
    }

    v64 = v129;
    v65 = v130;
    (*(v130 + 32))(v129, v58, v49);
    v66 = *(v65 + 16);
    v140 = v65 + 16;
    (v66)(v60, v64, v49);
    v67 = (*(v65 + 88))(v60, v49);
    v139 = v66;
    if (v67 == enum case for FastSyncError.unsupportedNote(_:))
    {
      (*(v65 + 8))(v60, v49);
    }

    else if (v67 != enum case for FastSyncError.fastSyncDisabled(_:))
    {
      if (qword_1006BC7A0 != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      sub_10002597C(v100, qword_1006C46C8);
      v101 = v124;
      v54[2](v124, v141, v56);
      (v66)(v63, v64, v49);
      v102 = v137;
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();

      LODWORD(v136) = v104;
      v105 = os_log_type_enabled(v103, v104);
      v137 = v102;
      if (v105)
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v143[0] = v108;
        *v106 = 138412802;
        *(v106 + 4) = v102;
        *v107 = v102;
        *(v106 + 12) = 2080;
        sub_100353E94(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
        v109 = v102;
        v135 = v103;
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = v111;
        (v54[1])(v101, v56);
        v113 = sub_100009D88(v110, v112, v143);

        *(v106 + 14) = v113;
        *(v106 + 22) = 2112;
        sub_100353E94(&qword_1006C8910, &type metadata accessor for FastSyncError);
        swift_allocError();
        v114 = v139;
        (v139)(v115, v63, v138);
        v116 = _swift_stdlib_bridgeErrorToNSError();
        v117 = *(v65 + 8);
        v117(v63, v138);
        *(v106 + 24) = v116;
        v107[1] = v116;
        v118 = v135;
        _os_log_impl(&_mh_execute_header, v135, v136, "%@: Error transitioning to new activity %s: %@", v106, 0x20u);
        sub_10015DA04(&qword_1006C1440);
        swift_arrayDestroy();

        sub_100009F60(v108);
        v64 = v129;

        v49 = v138;
      }

      else
      {

        v117 = *(v65 + 8);
        v117(v63, v49);
        (v54[1])(v101, v56);
        v114 = v139;
      }

      sub_100353E94(&qword_1006C8910, &type metadata accessor for FastSyncError);
      v119 = swift_allocError();
      (v114)(v120, v64, v49);
      sub_10033EC94(v119, 0, v141, 0);

      v117(v64, v49);
      v117(v134, v49);
    }

    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_10002597C(v82, qword_1006C46C8);
    v54[2](v62, v141, v56);
    (v66)(v61, v64, v49);
    v83 = v137;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();

    LODWORD(v137) = v85;
    v86 = os_log_type_enabled(v84, v85);
    v87 = v62;
    if (v86)
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v143[0] = v136;
      *v88 = 138412802;
      *(v88 + 4) = v83;
      *v89 = v83;
      *(v88 + 12) = 2080;
      sub_100353E94(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
      v90 = v83;
      v134 = v84;
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      (v54[1])(v87, v56);
      v94 = sub_100009D88(v91, v93, v143);

      *(v88 + 14) = v94;
      *(v88 + 22) = 2112;
      sub_100353E94(&qword_1006C8910, &type metadata accessor for FastSyncError);
      swift_allocError();
      v95 = v135;
      (v139)(v96, v135, v138);
      v97 = _swift_stdlib_bridgeErrorToNSError();
      v98 = *(v65 + 8);
      v98(v95, v138);
      *(v88 + 24) = v97;
      v89[1] = v97;
      v99 = v134;
      _os_log_impl(&_mh_execute_header, v134, v137, "%@: Error transitioning to new activity %s: %@", v88, 0x20u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();

      sub_100009F60(v136);
      v64 = v129;

      v49 = v138;
    }

    else
    {

      v98 = *(v65 + 8);
      v98(v135, v49);
      (v54[1])(v87, v56);
    }

    sub_10033EC94(1uLL, 4u, v141, 0);
    v98(v64, v49);
  }

  v139[4](v39, v25, v140);
  *(v39 + v12[6]) = v44;
  *(v39 + v12[7]) = v121;
  sub_10000A49C(v136, v39 + v123, &qword_1006BFC50);
  v45 = v125;
  sub_100354208(v39, v125, type metadata accessor for FastSyncStateMachine);
  (*(v126 + 56))(v45, 0, 1, v12);
  swift_beginAccess();
  sub_10000A49C(v45, &v35[v31], &qword_1006C4728);
  swift_endAccess();
  v32 = v122;
LABEL_5:
  v46 = swift_allocObject();
  *(v46 + 16) = v35;
  swift_beginAccess();
  result = v32(&v35[v31], 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v48 = v35;
    sub_1001F0EB4(v141, v137, &unk_100543B28, v46);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10033E600(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A1FC;

  return sub_10033E698(a1);
}

uint64_t sub_10033E698(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  type metadata accessor for FastSync.LeaveActivityAction(0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for FastSync.PresenceAction(0);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();

  return _swift_task_switch(sub_10033E770, 0, 0);
}

uint64_t sub_10033E770()
{
  sub_100354208(*(v0 + 40), *(v0 + 72), type metadata accessor for FastSync.PresenceAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100354208(*(v0 + 72), *(v0 + 56), type metadata accessor for FastSync.LeaveActivityAction);
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_10033EA74;
    v2 = *(v0 + 56);

    return sub_10033FC08(v2);
  }

  else
  {
    v4 = *(v0 + 72);
    v5 = *(v4 + 16);
    *(v0 + 16) = *v4;
    *(v0 + 32) = v5;
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_10033E8E0;

    return sub_100341328(v0 + 16);
  }
}

uint64_t sub_10033E8E0()
{

  return _swift_task_switch(sub_10033E9DC, 0, 0);
}

uint64_t sub_10033E9DC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  swift_storeEnumTagMultiPayload();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10033EC1C, v4, v3);
}

uint64_t sub_10033EA74()
{

  return _swift_task_switch(sub_10033EB70, 0, 0);
}

uint64_t sub_10033EB70()
{
  sub_100354208(*(v0 + 56), *(v0 + 40), type metadata accessor for FastSync.LeaveActivityAction);
  swift_storeEnumTagMultiPayload();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10033EC1C, v2, v1);
}

uint64_t sub_10033EC1C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10033EC94(unint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v65 = type metadata accessor for EditNoteActivity();
  v8 = *(v65 - 8);
  v9 = __chkstk_darwin(v65);
  v64 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v63 = &v61[-v11];
  sub_10015DA04(&unk_1006C60C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100535E30;
  v74 = 0xD000000000000011;
  v75 = 0x800000010056D9D0;
  AnyHashable.init<A>(_:)();
  v67 = a3;
  v13 = EditNoteActivity.noteID.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v13;
  *(inited + 80) = v14;
  v74 = 0xD000000000000015;
  v75 = 0x800000010056D9F0;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for RealtimeCollaborationController.GroupActivityState;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  sub_1001912A0(a1, a2);
  v15 = sub_1001913C0(inited);
  swift_setDeallocating();
  sub_10015DA04(&unk_1006C60D0);
  swift_arrayDestroy();
  if (a4)
  {
    *&v72 = 0x70756F7247434352;
    *(&v72 + 1) = 0xEF6E6F6973736553;

    AnyHashable.init<A>(_:)();
    v73 = sub_10015DA04(&qword_1006C2558);
    *&v72 = a4;
    sub_10001FA64(&v72, v69);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v15;
    sub_1002E6D48(v69, &v74, isUniquelyReferenced_nonNull_native);

    sub_100024F9C(&v74);
    v15 = v68;
  }

  v17 = EditNoteActivity.noteTitle.getter();
  v19 = v65;
  v20 = v8;
  if (v18)
  {
    v21 = v17;
    v22 = v18;
    strcpy(&v72, "RCCNoteTitle");
    BYTE13(v72) = 0;
    HIWORD(v72) = -5120;
    AnyHashable.init<A>(_:)();
    v73 = &type metadata for String;
    *&v72 = v21;
    *(&v72 + 1) = v22;
    sub_10001FA64(&v72, v69);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v15;
    sub_1002E6D48(v69, &v74, v23);
    sub_100024F9C(&v74);
    v15 = v68;
  }

  v24 = v64;
  if (a2 > 2u || a2 == 1 && a1 < 2)
  {
    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10002597C(v25, qword_1006C46C8);
    (*(v20 + 16))(v24, v67, v19);
    sub_1001912A0(a1, a2);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    sub_1002EC030(a1, a2);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74 = v67;
      *v28 = 136315394;
      sub_100353E94(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
      LODWORD(v64) = v27;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v20;
      v32 = v31;
      (*(v30 + 8))(v24, v19);
      v33 = sub_100009D88(v29, v32, &v74);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      v34 = sub_100350768(a1, a2);
      v36 = sub_100009D88(v34, v35, &v74);

      *(v28 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v26, v64, "%s: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v20 + 8))(v24, v19);
    }
  }

  else
  {
    *&v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v72 + 1) = v37;
    sub_1001912A0(a1, a2);
    AnyHashable.init<A>(_:)();
    swift_getErrorValue();
    v38 = v70;
    v39 = v71;
    v73 = v71;
    v40 = sub_100180240(&v72);
    (*(*(v39 - 1) + 16))(v40, v38, v39);
    sub_10001FA64(&v72, v69);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v15;
    sub_1002E6D48(v69, &v74, v41);
    sub_100024F9C(&v74);
    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10002597C(v42, qword_1006C46C8);
    v43 = v63;
    (*(v20 + 16))(v63, v67, v19);
    sub_1001912A0(a1, a2);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    sub_1002EC030(a1, a2);
    if (!os_log_type_enabled(v44, v45))
    {
      sub_1002EC030(a1, a2);

      (*(v20 + 8))(v43, v19);
      v57 = v66;
      goto LABEL_19;
    }

    v46 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v74 = v67;
    *v46 = 136315650;
    sub_100353E94(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
    v62 = v45;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v19;
    v50 = v49;
    (*(v20 + 8))(v43, v48);
    v51 = sub_100009D88(v47, v50, &v74);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    v52 = sub_100350768(a1, a2);
    v54 = sub_100009D88(v52, v53, &v74);

    *(v46 + 14) = v54;
    *(v46 + 22) = 2112;
    sub_1001912A0(a1, a2);
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 24) = v55;
    v56 = v64;
    *v64 = v55;
    _os_log_impl(&_mh_execute_header, v44, v62, "%s: %s (error: %@)", v46, 0x20u);
    sub_1000073B4(v56, &qword_1006C1440);

    swift_arrayDestroy();

    sub_1002EC030(a1, a2);
  }

  v57 = v66;
LABEL_19:
  v58 = [objc_opt_self() defaultCenter];
  if (qword_1006BC7D0 != -1)
  {
    swift_once();
  }

  v59 = qword_1006EF720;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v58 postNotificationName:v59 object:v57 userInfo:isa];
}

Swift::Void __swiftcall RealtimeCollaborationController.leaveGroupActivity()()
{
  v1 = v0;
  v2 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v2 - 8);
  v39 = &v34 - v3;
  v4 = type metadata accessor for EditNoteActivity();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&qword_1006C4728);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
  swift_beginAccess();
  sub_100006038(&v0[v13], v12, &qword_1006C4728);
  v14 = type metadata accessor for FastSyncStateMachine();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v40 = v15 + 48;
  v41 = v16;
  v17 = v16(v12, 1, v14);
  sub_1000073B4(v12, &qword_1006C4728);
  if (v17 != 1)
  {
    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10002597C(v18, qword_1006C46C8);
    v19 = v0;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v36 = v21;
      v22 = v19;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42[0] = v35;
      *v23 = 138412546;
      *(v23 + 4) = v22;
      v37 = v22;
      v34 = v24;
      *v24 = v22;
      *(v23 + 12) = 2080;
      sub_100006038(&v1[v13], v10, &qword_1006C4728);
      if (v41(v10, 1, v14) == 1)
      {
        goto LABEL_12;
      }

      v25 = v38;
      (*(v38 + 16))(v6, v10, v4);
      sub_100354E5C(v10, type metadata accessor for FastSyncStateMachine);
      v26 = EditNoteActivity.noteID.getter();
      v28 = v27;
      (*(v25 + 8))(v6, v4);
      v29 = sub_100009D88(v26, v28, v42);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v20, v36, "%@: Responding to leaveActivity(note=%s)", v23, 0x16u);
      sub_1000073B4(v34, &qword_1006C1440);

      sub_100009F60(v35);

      v19 = v37;
    }

    else
    {
    }

    v30 = v39;
    static TaskPriority.high.getter();
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    v32 = swift_allocObject();
    *(v32 + 16) = v19;
    swift_beginAccess();
    if (v41(&v1[v13], 1, v14) != 1)
    {
      v33 = v19;
      sub_1001EFA84(v30, &unk_100543B38, v32);
      swift_endAccess();

      sub_1000073B4(v30, &qword_1006C2170);
      return;
    }

    __break(1u);
LABEL_12:

    __break(1u);
  }
}

uint64_t sub_10033FB70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A1FC;

  return sub_10033FC08(a1);
}

uint64_t sub_10033FC08(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  type metadata accessor for FastSync.LeaveActivityAction(0);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for EditNoteActivity();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v5;
  v2[16] = v4;

  return _swift_task_switch(sub_10033FD28, v5, v4);
}

uint64_t sub_10033FD28()
{
  v1 = v0[9];
  v2 = OBJC_IVAR___ICRealtimeCollaborationController_activeSession;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    EditNoteActivity.id.getter();
    goto LABEL_7;
  }

  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  GroupSession.activity.getter();

  v6 = EditNoteActivity.id.getter();
  v8 = v7;
  (*(v4 + 8))(v3, v5);
  v9 = EditNoteActivity.id.getter();
  if (!v8)
  {
LABEL_7:

    goto LABEL_10;
  }

  if (v6 == v9 && v8 == v10)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  *(v1 + v2) = 0;

LABEL_10:
  sub_10033EC94(3uLL, 4u, v0[8], 0);
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_10033FEE8;

  return FastSync.LeaveActivityAction.perform()();
}

uint64_t sub_10033FEE8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_100340194;
  }

  else
  {
    v5 = sub_100340024;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100340024()
{
  v1 = v0[9];
  sub_100354F74(v0[8], v0[10], type metadata accessor for FastSync.LeaveActivityAction);
  v2 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
  swift_beginAccess();
  v3 = type metadata accessor for FastSyncStateMachine();
  result = (*(*(v3 - 8) + 48))(v1 + v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[10];
    v6 = v0[8];
    sub_1001F0C3C();
    swift_endAccess();

    sub_100354E5C(v5, type metadata accessor for FastSync.LeaveActivityAction);
    sub_10033EC94(0, 3u, v6, 0);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_100340194()
{
  if (qword_1006BC7A0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_10002597C(v2, qword_1006C46C8);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@: Failed to leave group session provider: %@", v7, 0x16u);
    sub_10015DA04(&qword_1006C1440);
    swift_arrayDestroy();
  }

  v11 = v0[18];

  swift_errorRetain();
  v12 = v0[9];
  sub_100354F74(v0[8], v0[10], type metadata accessor for FastSync.LeaveActivityAction);
  v13 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
  swift_beginAccess();
  v14 = type metadata accessor for FastSyncStateMachine();
  result = (*(*(v14 - 8) + 48))(v12 + v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = v0[10];
    v17 = v0[8];
    sub_1001F0C3C();
    swift_endAccess();

    sub_100354E5C(v16, type metadata accessor for FastSync.LeaveActivityAction);
    sub_10033EC94(v11, 3u, v17, 0);

    v18 = v0[1];

    return v18();
  }

  return result;
}

void RealtimeCollaborationController.shareChanged(for:with:)(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v119 = a1;
  v117 = sub_10015DA04(&qword_1006BFCC8);
  v115 = *(v117 - 8);
  v3 = __chkstk_darwin(v117);
  v103 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v109 = &v101 - v5;
  v6 = sub_10015DA04(&qword_1006BFC50);
  v7 = __chkstk_darwin(v6 - 8);
  v110 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = (&v101 - v9);
  v114 = type metadata accessor for EditNoteActivity();
  v120 = *(v114 - 8);
  v10 = __chkstk_darwin(v114);
  v104 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v108 = &v101 - v13;
  __chkstk_darwin(v12);
  v113 = &v101 - v14;
  v15 = sub_10015DA04(&qword_1006C4728);
  v16 = __chkstk_darwin(v15 - 8);
  v112 = (&v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v20 = &v101 - v19;
  __chkstk_darwin(v18);
  v22 = &v101 - v21;
  v23 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
  swift_beginAccess();
  sub_100006038(&v2[v23], v22, &qword_1006C4728);
  v24 = type metadata accessor for FastSyncStateMachine();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v25 + 48;
  v28 = v26(v22, 1, v24);
  sub_1000073B4(v22, &qword_1006C4728);
  if (v28 != 1)
  {
    v29 = EditNoteActivity.noteID.getter();
    v31 = v30;
    v116 = v2;
    v107 = v23;
    sub_100006038(&v2[v23], v20, &qword_1006C4728);
    v106 = v24;
    v105 = v27;
    if (v26(v20, 1, v24) == 1)
    {
      __break(1u);
    }

    else
    {
      v32 = v26;
      v33 = v120;
      v34 = v113;
      v35 = v114;
      v102 = *(v120 + 16);
      v102(v113, v20, v114);
      sub_100354E5C(v20, type metadata accessor for FastSyncStateMachine);
      v36 = EditNoteActivity.noteID.getter();
      v38 = v37;
      v39 = *(v33 + 8);
      v120 = v33 + 8;
      v39(v34, v35);
      if (v29 == v36 && v31 == v38)
      {
      }

      else
      {
        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v40 & 1) == 0)
        {
          if (qword_1006BC7A0 != -1)
          {
            swift_once();
          }

          v88 = type metadata accessor for Logger();
          sub_10002597C(v88, qword_1006C46C8);
          v89 = v104;
          v102(v104, v119, v35);
          v90 = v116;
          v55 = Logger.logObject.getter();
          v91 = static os_log_type_t.info.getter();

          if (!os_log_type_enabled(v55, v91))
          {

            v39(v89, v35);
            return;
          }

          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v94 = v39;
          v95 = swift_slowAlloc();
          v121[0] = v95;
          *v92 = 138412546;
          *(v92 + 4) = v90;
          *v93 = v90;
          *(v92 + 12) = 2080;
          v96 = v90;
          v97 = EditNoteActivity.noteID.getter();
          v99 = v98;
          v94(v89, v35);
          v100 = sub_100009D88(v97, v99, v121);

          *(v92 + 14) = v100;
          _os_log_impl(&_mh_execute_header, v55, v91, "%@: Ignoring updated share for unrelated note: %s", v92, 0x16u);
          sub_1000073B4(v93, &qword_1006C1440);

          sub_100009F60(v95);
          goto LABEL_26;
        }
      }

      v113 = v39;
      v41 = v117;
      v42 = CloudRecordSnapshot.id.getter();
      v43 = v112;
      sub_100006038(&v116[v107], v112, &qword_1006C4728);
      v44 = v106;
      if (v32(v43, 1, v106) != 1)
      {
        v45 = &v43[*(v44 + 20)];
        v46 = v111;
        sub_100006038(v45, v111, &qword_1006BFC50);
        sub_100354E5C(v43, type metadata accessor for FastSyncStateMachine);
        v47 = v115;
        if ((*(v115 + 48))(v46, 1, v41) == 1)
        {
          sub_1000073B4(v46, &qword_1006BFC50);

          v48 = v119;
          goto LABEL_15;
        }

        v49 = v46;
        v50 = CloudRecordSnapshot.id.getter();
        v51 = *(v47 + 8);
        v51(v49, v41);
        sub_1000054A4(0, &qword_1006C8870);
        LOBYTE(v49) = static NSObject.== infix(_:_:)();

        v48 = v119;
        if ((v49 & 1) == 0)
        {
LABEL_15:
          v112 = v32;
          if (qword_1006BC7A0 != -1)
          {
            swift_once();
          }

          v62 = type metadata accessor for Logger();
          v63 = sub_10002597C(v62, qword_1006C46C8);
          v64 = v108;
          v102(v108, v48, v35);
          v65 = v109;
          v66 = v118;
          v111 = *(v47 + 16);
          (v111)(v109, v118, v41);
          v67 = v116;
          v104 = v63;
          v68 = v47;
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            v121[0] = v103;
            *v71 = 138412802;
            *(v71 + 4) = v67;
            *v72 = v67;
            *(v71 + 12) = 2080;
            v73 = v67;
            v74 = EditNoteActivity.noteID.getter();
            v75 = v64;
            v76 = v65;
            v77 = v74;
            v79 = v78;
            (v113)(v75, v35);
            v80 = sub_100009D88(v77, v79, v121);

            *(v71 + 14) = v80;
            *(v71 + 22) = 2112;
            v81 = CloudRecordSnapshot.id.getter();
            v82 = v115;
            (*(v115 + 8))(v76, v117);
            *(v71 + 24) = v81;
            v72[1] = v81;
            _os_log_impl(&_mh_execute_header, v69, v70, "%@: Active note %s has updated its share to %@", v71, 0x20u);
            sub_10015DA04(&qword_1006C1440);
            swift_arrayDestroy();
            v41 = v117;

            sub_100009F60(v103);

            v66 = v118;
          }

          else
          {

            (*(v68 + 8))(v65, v41);
            (v113)(v64, v35);
            v82 = v68;
          }

          v83 = v110;
          (v111)(v110, v66, v41);
          (*(v82 + 56))(v83, 0, 1, v41);
          v84 = swift_allocObject();
          *(v84 + 16) = v67;
          v85 = v116;
          v86 = v107;
          swift_beginAccess();
          if (v112(&v85[v86], 1, v106) != 1)
          {
            v87 = v67;
            sub_1001F0EB4(v119, v83, &unk_100543B48, v84);
            swift_endAccess();

            sub_1000073B4(v83, &qword_1006BFC50);
            return;
          }

          goto LABEL_31;
        }

        if (qword_1006BC7A0 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_10002597C(v52, qword_1006C46C8);
        v53 = v103;
        (*(v47 + 16))(v103, v118, v41);
        v54 = v116;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v55, v56))
        {

          v51(v53, v41);
          return;
        }

        v57 = v41;
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412546;
        *(v58 + 4) = v54;
        *v59 = v54;
        *(v58 + 12) = 2112;
        v60 = v54;
        v61 = CloudRecordSnapshot.id.getter();
        v51(v53, v57);
        *(v58 + 14) = v61;
        v59[1] = v61;
        _os_log_impl(&_mh_execute_header, v55, v56, "%@: Received share changed notification but CKShare recordID was unchanged: %@", v58, 0x16u);
        sub_10015DA04(&qword_1006C1440);
        swift_arrayDestroy();
LABEL_26:

        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }
}

uint64_t sub_100341290(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A600;

  return sub_10033E698(a1);
}

uint64_t sub_100341328(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_10015DA04(&qword_1006C2170);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for EditNoteActivity();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for MainActor();
  v2[15] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[16] = v5;
  v2[17] = v4;

  return _swift_task_switch(sub_100341458, v5, v4);
}

uint64_t sub_100341458()
{
  swift_getObjectType();
  dispatch thunk of GroupSessionProvider.activity.getter();
  static Task<>.checkCancellation()();
  sub_10033EC94(0, 4u, *(v0 + 104), 0);
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1003416A4;

  return sub_1002CF040();
}

uint64_t sub_1003416A4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[19] = a1;
  v5[20] = v2;

  if (v2)
  {
    v6 = v5[16];
    v7 = v5[17];
    v8 = sub_100341A28;
  }

  else
  {
    v5[21] = a2;
    v9 = v5[16];
    v10 = v5[17];
    swift_unknownObjectRetain();
    v8 = sub_1003417F4;
    v6 = v9;
    v7 = v10;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1003417F4()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  swift_unknownObjectRetain();
  v7 = v3;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v2;
  v9[5] = v1;
  v9[6] = v7;
  v10 = sub_10023D268(0, 0, v4, &unk_100543D18, v9);
  v16 = *v5;
  v11 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
  swift_beginAccess();
  v12 = type metadata accessor for FastSyncStateMachine();
  result = (*(*(v12 - 8) + 48))(&v7[v11], 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = v0[13];
    sub_1001EF794(v10, v16);
    swift_endAccess();

    sub_10033EC94(2uLL, 4u, v14, 0);

    swift_unknownObjectRelease();
    (*(v0[12] + 8))(v0[13], v0[11]);

    v15 = v0[1];

    return v15();
  }

  return result;
}

uint64_t sub_100341A28()
{
  v1 = v0[20];
  v2 = v0[8];
  v3 = v0[9];
  v4 = *v2;
  v5 = v2[1];
  v6 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
  swift_beginAccess();
  v7 = type metadata accessor for FastSyncStateMachine();
  result = (*(*(v7 - 8) + 48))(v3 + v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[13];
    sub_1001EF3F0(v1, v4, v5);
    swift_endAccess();

    swift_errorRetain();
    sub_10033EC94(v1, 3u, v9, 0);

    (*(v0[12] + 8))(v0[13], v0[11]);

    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t sub_100341BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = sub_100341C78;

  return sub_100341E14(a4, ObjectType, a5);
}

uint64_t sub_100341C78()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100341DB4, v1, v0);
}

uint64_t sub_100341DB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100341E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = type metadata accessor for CancellationError();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for Participant();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  sub_10015DA04(&unk_1006BE0B0);
  v4[30] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[36] = v8;
  v4[37] = *(v8 - 8);
  v4[38] = swift_task_alloc();
  v9 = type metadata accessor for EditNoteActivity();
  v4[39] = v9;
  v4[40] = *(v9 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  sub_10015DA04(&qword_1006BFC50);
  v4[44] = swift_task_alloc();
  sub_10015DA04(&qword_1006C4728);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v10 = sub_10015DA04(&qword_1006C4918);
  v4[48] = v10;
  v4[49] = *(v10 - 8);
  v4[50] = swift_task_alloc();
  v11 = sub_10015DA04(&qword_1006C4920);
  v4[51] = v11;
  v4[52] = *(v11 - 8);
  v4[53] = swift_task_alloc();
  v4[54] = type metadata accessor for MainActor();
  v4[55] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[56] = v13;
  v4[57] = v12;

  return _swift_task_switch(sub_100342240, v13, v12);
}

uint64_t sub_100342240()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  GroupSessionProvider.sessions.getter();
  GroupSession.Sessions.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
  v0[58] = OBJC_IVAR___ICRealtimeCollaborationController_cloudConfiguration;
  v0[59] = v4;
  v5 = OBJC_IVAR___ICRealtimeCollaborationController_messageController;
  v0[60] = OBJC_IVAR___ICRealtimeCollaborationController_context;
  v0[61] = v5;
  v6 = OBJC_IVAR___ICRealtimeCollaborationController_selectionDocument;
  v0[62] = OBJC_IVAR___ICRealtimeCollaborationController_paperKitController;
  v0[63] = v6;
  swift_beginAccess();
  swift_beginAccess();
  v0[64] = static MainActor.shared.getter();
  v7 = sub_1000060B4(&qword_1006C4928, &qword_1006C4920);
  v8 = swift_task_alloc();
  v0[65] = v8;
  *v8 = v0;
  v8[1] = sub_1003423DC;
  v9 = v0[51];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v9, v7);
}

uint64_t sub_1003423DC()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 512);
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

    v7 = sub_100342E44;
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

    v7 = sub_100342574;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100342574()
{

  v0[67] = v0[16];
  v1 = v0[56];
  v2 = v0[57];

  return _swift_task_switch(sub_1003425E0, v1, v2);
}

uint64_t sub_1003425E0()
{
  if (!v0[67])
  {
    (*(v0[52] + 8))(v0[53], v0[51]);

    goto LABEL_6;
  }

  v1 = v0[66];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v0[18] = v1;
    swift_errorRetain();
    sub_10015DA04(&unk_1006C9B40);
    if (swift_dynamicCast())
    {
      v3 = v0[25];
      v2 = v0[26];
      v4 = v0[24];
      (*(v0[52] + 8))(v0[53], v0[51]);

      (*(v3 + 8))(v2, v4);

LABEL_6:

      v5 = v0[1];

      return v5();
    }

    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v23 = v0[23];
    sub_10002597C(v0[36], qword_1006C46C8);
    v24 = v23;
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[23];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412546;
      *(v28 + 4) = v27;
      *v29 = v27;
      *(v28 + 12) = 2112;
      v30 = v27;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v31;
      v29[1] = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "%@: Retrying after group session unexpectedly failed: %@", v28, 0x16u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();
    }

    v32 = v0[59];
    v33 = v0[45];
    v34 = v0[23];

    sub_100006038(v34 + v32, v33, &qword_1006C4728);
    v35 = type metadata accessor for FastSyncStateMachine();
    v14 = (*(*(v35 - 8) + 48))(v33, 1, v35);
    if (v14 != 1)
    {
      v36 = v0[67];
      v37 = v0[45];
      v39 = v0[40];
      v38 = v0[41];
      v40 = v0[39];
      (*(v39 + 16))(v38, v37, v40);
      swift_errorRetain();
      sub_100354E5C(v37, type metadata accessor for FastSyncStateMachine);

      sub_10033EC94(v1, 2u, v38, v36);

      (*(v39 + 8))(v38, v40);
      v0[64] = static MainActor.shared.getter();
      v41 = sub_1000060B4(&qword_1006C4928, &qword_1006C4920);
      v42 = swift_task_alloc();
      v0[65] = v42;
      *v42 = v0;
      v42[1] = sub_1003423DC;
      v15 = v0[51];
      v14 = (v0 + 16);
      v16 = v41;

      return dispatch thunk of AsyncIteratorProtocol.next()(v14, v15, v16);
    }

LABEL_29:
    __break(1u);
    return dispatch thunk of AsyncIteratorProtocol.next()(v14, v15, v16);
  }

  v8 = v0[58];
  v7 = v0[59];
  v9 = v0[47];
  v10 = v0[23];
  type metadata accessor for GroupSessionMessenger();
  swift_allocObject();

  v57 = GroupSessionMessenger.init<A>(session:)();
  v11 = *(v10 + v8);
  v0[68] = v11;
  sub_100006038(v10 + v7, v9, &qword_1006C4728);
  v12 = type metadata accessor for FastSyncStateMachine();
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v9, 1, v12);
  if (v14 == 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v17 = v0[44];
  sub_100006038(v0[47] + *(v12 + 20), v17, &qword_1006BFC50);
  v18 = sub_10015DA04(&qword_1006BFCC8);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v17, 1, v18);
  v21 = v11;
  v22 = v0[44];
  if (v20 == 1)
  {
    sub_1000073B4(v0[44], &qword_1006BFC50);
LABEL_21:
    v44 = &selRef_privateCloudDatabase;
    goto LABEL_23;
  }

  v43 = CloudRecordSnapshot<>.isOwnedByCurrentUser.getter();
  (*(v19 + 8))(v22, v18);
  if (v43)
  {
    goto LABEL_21;
  }

  v44 = &selRef_sharedCloudDatabase;
LABEL_23:
  v45 = v0[59];
  v47 = v0[46];
  v46 = v0[47];
  v48 = v0[23];
  v49 = [*(v46 + *(v12 + 24)) *v44];
  sub_100354E5C(v46, type metadata accessor for FastSyncStateMachine);
  sub_100006038(v48 + v45, v47, &qword_1006C4728);
  v14 = v13(v47, 1, v12);
  if (v14 == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v50 = v0[60];
  v51 = v0[46];
  v52 = v0[23];
  (*(v0[40] + 16))(v0[43], v51, v0[39]);
  sub_100354E5C(v51, type metadata accessor for FastSyncStateMachine);
  v53 = *(v52 + v50);
  type metadata accessor for RealtimeCollaborationMessageController();
  swift_allocObject();
  v54 = v53;
  v55 = swift_task_alloc();
  v0[69] = v55;
  *v55 = v0;
  v55[1] = sub_100342ED0;
  v56 = v0[43];

  return RealtimeCollaborationMessageController.init(messenger:cloudConfiguration:cloudDatabase:activity:context:)(v57, v21, v49, v56, v54);
}

uint64_t sub_100342E44()
{
  *(v0 + 136) = *(v0 + 528);
  sub_10015DA04(&unk_1006C9B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100342ED0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 560) = a1;
  *(v4 + 568) = v1;

  v5 = *(v3 + 456);
  v6 = *(v3 + 448);
  if (v1)
  {
    v7 = sub_1003437EC;
  }

  else
  {
    v7 = sub_100343018;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100343018()
{
  v74 = v0;
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[68];
  v4 = v0[42];
  *(v0[23] + v0[61]) = v2;

  GroupSession.activity.getter();
  type metadata accessor for RealtimeCollaborationPaperKitController(0);
  swift_allocObject();
  v5 = v3;

  v6 = sub_1003509B8(v4, v2, v5);
  v7 = v0[23];
  if (v1)
  {
    v8 = v7;
    swift_errorRetain();
    static Logger.realtimeCollaboration.getter();
    v9 = static os_log_type_t.fault.getter();
    v10 = Logger.logObject.getter();
    v11 = os_log_type_enabled(v10, v9);
    v13 = v0[37];
    v12 = v0[38];
    v14 = v0[36];
    v15 = v0[23];
    if (v11)
    {
      v16 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v16 = 136315650;
      v17 = StaticString.description.getter();
      v71 = v12;
      v69 = v14;
      v19 = sub_100009D88(v17, v18, &v73);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2048;
      *(v16 + 14) = 484;
      *(v16 + 22) = 2080;
      v0[14] = 0;
      v0[15] = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v20 = v0[15];
      v0[12] = v0[14];
      v0[13] = v20;
      v21 = [v15 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v15;
      v24 = v23;

      v25._countAndFlagsBits = v22;
      v25._object = v24;
      String.append(_:)(v25);

      v26._countAndFlagsBits = 0xD000000000000036;
      v26._object = 0x800000010056D870;
      String.append(_:)(v26);
      v0[19] = v1;
      sub_10015DA04(&unk_1006C9B40);
      _print_unlocked<A, B>(_:_:)();
      v27 = sub_100009D88(v0[12], v0[13], &v73);

      *(v16 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v10, v9, "Failed assertion at %s:%lu: %s", v16, 0x20u);
      swift_arrayDestroy();

      (*(v13 + 8))(v71, v69);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    *&v7[v0[62]] = v6;
  }

  v29 = v0[40];
  v28 = v0[41];
  v30 = v0[39];
  v31 = v0[31];
  v32 = v0[32];
  v33 = v0[30];
  GroupSession.activity.getter();
  EditNoteActivity.noteID.getter();
  v34 = *(v29 + 8);
  v34(v28, v30);
  UUID.init(uuidString:)();

  if ((*(v32 + 48))(v33, 1, v31) == 1)
  {
    sub_1000073B4(v0[30], &unk_1006BE0B0);
    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    sub_10002597C(v0[36], qword_1006C46C8);

    v35 = static os_log_type_t.fault.getter();
    v36 = Logger.logObject.getter();
    if (os_log_type_enabled(v36, v35))
    {
      v37 = v0[41];
      v68 = v0[39];
      v38 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v38 = 136315650;
      v39 = StaticString.description.getter();
      v41 = v34;
      v42 = sub_100009D88(v39, v40, &v73);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2048;
      *(v38 + 14) = 490;
      *(v38 + 22) = 2080;
      v0[10] = 0;
      v0[11] = 0xE000000000000000;
      _StringGuts.grow(_:)(67);
      v43 = v0[11];
      v0[8] = v0[10];
      v0[9] = v43;
      v44._countAndFlagsBits = 0xD00000000000002DLL;
      v44._object = 0x800000010056D820;
      String.append(_:)(v44);
      GroupSession.activity.getter();
      v45 = EditNoteActivity.noteID.getter();
      v47 = v46;
      v41(v37, v68);
      v48._countAndFlagsBits = v45;
      v48._object = v47;
      String.append(_:)(v48);

      v49._object = 0x800000010056D850;
      v49._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v49);
      v50 = sub_100009D88(v0[8], v0[9], &v73);

      *(v38 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v36, v35, "Failed assertion at %s:%lu: %s", v38, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v52 = v0[34];
    v51 = v0[35];
    v53 = v0[32];
    v54 = v0[31];
    v56 = v0[28];
    v55 = v0[29];
    v57 = v0[27];
    v70 = v0[23];
    v72 = v0[63];
    (*(v53 + 32))(v51, v0[30], v54);
    (*(v53 + 16))(v52, v51, v54);
    GroupSession.localParticipant.getter();
    Participant.id.getter();
    (*(v56 + 8))(v55, v57);
    v58 = objc_allocWithZone(type metadata accessor for RealtimeCollaborationSelectionDocument());
    v59 = RealtimeCollaborationSelectionDocument.init(identity:localParticipantID:)();
    (*(v53 + 8))(v51, v54);
    v60 = *(v70 + v72);
    *(v70 + v72) = v59;
  }

  v61 = v0[70];
  v62 = v0[67];
  v63 = v0[23];
  v0[72] = static MainActor.shared.getter();
  v64 = swift_task_alloc();
  v0[73] = v64;
  v64[2] = v63;
  v64[3] = v62;
  v64[4] = v61;
  v65 = swift_task_alloc();
  v0[74] = v65;
  *v65 = v0;
  v65[1] = sub_100343D00;
  v76 = &type metadata for () + 8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1003437EC()
{
  v1 = v0[71];
  v0[18] = v1;
  swift_errorRetain();
  sub_10015DA04(&unk_1006C9B40);
  if (swift_dynamicCast())
  {
    v3 = v0[25];
    v2 = v0[26];
    v4 = v0[24];
    (*(v0[52] + 8))(v0[53], v0[51]);

    (*(v3 + 8))(v2, v4);

    v5 = v0[1];

    return v5();
  }

  else
  {

    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v7 = v0[23];
    sub_10002597C(v0[36], qword_1006C46C8);
    v8 = v7;
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[23];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412546;
      *(v12 + 4) = v11;
      *v13 = v11;
      *(v12 + 12) = 2112;
      v14 = v11;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v15;
      v13[1] = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "%@: Retrying after group session unexpectedly failed: %@", v12, 0x16u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();
    }

    v16 = v0[59];
    v17 = v0[45];
    v18 = v0[23];

    sub_100006038(v18 + v16, v17, &qword_1006C4728);
    v19 = type metadata accessor for FastSyncStateMachine();
    v20 = (*(*(v19 - 8) + 48))(v17, 1, v19);
    if (v20 == 1)
    {
      __break(1u);
    }

    else
    {
      v23 = v0[67];
      v24 = v0[45];
      v26 = v0[40];
      v25 = v0[41];
      v27 = v0[39];
      (*(v26 + 16))(v25, v24, v27);
      swift_errorRetain();
      sub_100354E5C(v24, type metadata accessor for FastSyncStateMachine);

      sub_10033EC94(v1, 2u, v25, v23);

      (*(v26 + 8))(v25, v27);
      v0[64] = static MainActor.shared.getter();
      v28 = sub_1000060B4(&qword_1006C4928, &qword_1006C4920);
      v29 = swift_task_alloc();
      v0[65] = v29;
      *v29 = v0;
      v29[1] = sub_1003423DC;
      v21 = v0[51];
      v20 = (v0 + 16);
      v22 = v28;
    }

    return dispatch thunk of AsyncIteratorProtocol.next()(v20, v21, v22);
  }
}

uint64_t sub_100343D00()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v3 = *(v2 + 448);
    v4 = *(v2 + 456);
    v5 = sub_100343F68;
  }

  else
  {

    v3 = *(v2 + 448);
    v4 = *(v2 + 456);
    v5 = sub_100343E28;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100343E28()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];
  v4 = v0[23];
  RealtimeCollaborationMessageController.finish()();

  *(v4 + v3) = 0;

  *(v4 + v2) = 0;

  v5 = *(v4 + v1);
  *(v4 + v1) = 0;

  v0[64] = static MainActor.shared.getter();
  v6 = sub_1000060B4(&qword_1006C4928, &qword_1006C4920);
  v7 = swift_task_alloc();
  v0[65] = v7;
  *v7 = v0;
  v7[1] = sub_1003423DC;
  v8 = v0[51];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v8, v6);
}

uint64_t sub_100343F68()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];
  v4 = v0[23];

  RealtimeCollaborationMessageController.finish()();

  *(v4 + v3) = 0;

  *(v4 + v2) = 0;

  v5 = *(v4 + v1);
  *(v4 + v1) = 0;

  v6 = v0[75];
  v0[18] = v6;
  swift_errorRetain();
  sub_10015DA04(&unk_1006C9B40);
  if (swift_dynamicCast())
  {
    v8 = v0[25];
    v7 = v0[26];
    v9 = v0[24];
    (*(v0[52] + 8))(v0[53], v0[51]);

    (*(v8 + 8))(v7, v9);

    v10 = v0[1];

    return v10();
  }

  else
  {

    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v12 = v0[23];
    sub_10002597C(v0[36], qword_1006C46C8);
    v13 = v12;
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[23];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      *(v17 + 4) = v16;
      *v18 = v16;
      *(v17 + 12) = 2112;
      v19 = v16;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v20;
      v18[1] = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "%@: Retrying after group session unexpectedly failed: %@", v17, 0x16u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();
    }

    v21 = v0[59];
    v22 = v0[45];
    v23 = v0[23];

    sub_100006038(v23 + v21, v22, &qword_1006C4728);
    v24 = type metadata accessor for FastSyncStateMachine();
    v25 = (*(*(v24 - 8) + 48))(v22, 1, v24);
    if (v25 == 1)
    {
      __break(1u);
    }

    else
    {
      v28 = v0[67];
      v29 = v0[45];
      v31 = v0[40];
      v30 = v0[41];
      v32 = v0[39];
      (*(v31 + 16))(v30, v29, v32);
      swift_errorRetain();
      sub_100354E5C(v29, type metadata accessor for FastSyncStateMachine);

      sub_10033EC94(v6, 2u, v30, v28);

      (*(v31 + 8))(v30, v32);
      v0[64] = static MainActor.shared.getter();
      v33 = sub_1000060B4(&qword_1006C4928, &qword_1006C4920);
      v34 = swift_task_alloc();
      v0[65] = v34;
      *v34 = v0;
      v34[1] = sub_1003423DC;
      v26 = v0[51];
      v25 = (v0 + 16);
      v27 = v33;
    }

    return dispatch thunk of AsyncIteratorProtocol.next()(v25, v26, v27);
  }
}

void *sub_1003444D4(void *a1, id a2)
{
  v26 = 0;
  [a2 rangeForAttachment:a1 withTextAttachment:&v26];
  v5 = v26;
  if (v26)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    v7 = v5;
    if (v6)
    {
      v8 = v7;
      v9 = [a2 viewForBaseTextAttachmentNoCreate:v6];
      if (v9)
      {
        v10 = v9;
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {

          return v10;
        }
      }
    }
  }

  if (qword_1006BC7A0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10002597C(v12, qword_1006C46C8);
  v13 = v2;
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v17 = 138412546;
    *(v17 + 4) = v13;
    *v18 = v13;
    *(v17 + 12) = 2080;
    v20 = v13;
    v21 = [v14 ic_loggingDescription];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_100009D88(v22, v24, &v26);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "%@: Could not find PaperKit attachment view for attachment: %s", v17, 0x16u);
    sub_1000073B4(v18, &qword_1006C1440);

    sub_100009F60(v19);
  }

  return 0;
}

Swift::Void __swiftcall RealtimeCollaborationController.configurePaperKitAttachmentViewIfNecessary(_:)(UIView a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___ICRealtimeCollaborationController_paperKitController];
  if (v3)
  {
    swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5 && a1.super.super.isa)
    {
      v6 = v5;
      isa = a1.super.super.isa;
      v64 = v5;
      swift_getObjectType();
      v61 = a1.super.super.isa;
      v7 = a1.super.super.isa;

      v8 = dispatch thunk of PaperKitStreamableAttachment.liveStreamMessenger.getter();
      if (!v8 || (v9 = v8, swift_unknownObjectRelease(), v9 != v3))
      {
        if (qword_1006BC7A0 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_10002597C(v10, qword_1006C46C8);

        v11 = v2;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v60 = v58;
          *v14 = 138412802;
          *(v14 + 4) = v11;
          *v15 = v11;
          *(v14 + 12) = 2080;
          v61 = 0;
          v62 = 0xE000000000000000;

          v16 = v11;
          _StringGuts.grow(_:)(52);
          v17._object = 0x800000010056D480;
          v17._countAndFlagsBits = 0xD000000000000031;
          String.append(_:)(v17);
          type metadata accessor for EditNoteActivity();
          sub_100353E94(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
          v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v18);

          v19._countAndFlagsBits = 41;
          v19._object = 0xE100000000000000;
          String.append(_:)(v19);

          v20 = sub_100009D88(0, 0xE000000000000000, &v60);

          *(v14 + 14) = v20;
          *(v14 + 22) = 2112;
          *(v14 + 24) = v7;
          v15[1] = v7;
          v21 = v7;
          _os_log_impl(&_mh_execute_header, v12, v13, "%@: Updating PaperKit messenger to %s for attachment view %@", v14, 0x20u);
          sub_10015DA04(&qword_1006C1440);
          swift_arrayDestroy();

          sub_100009F60(v58);
        }

        sub_100353E94(&qword_1006C47A0, type metadata accessor for RealtimeCollaborationPaperKitController);
        swift_beginAccess();
        swift_getObjectType();
        v60 = v7;

        dispatch thunk of PaperKitStreamableAttachment.liveStreamMessenger.setter();
        v7 = v60;
        isa = v60;
        v64 = v6;
        swift_endAccess();
      }

      swift_getObjectType();
      v61 = v7;
      v22 = dispatch thunk of PaperKitStreamableAttachment.participantDetailsDataSource.getter();
      if (v22 && (v23 = v22, swift_unknownObjectRelease(), v23 == v3))
      {
      }

      else
      {
        if (qword_1006BC7A0 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_10002597C(v44, qword_1006C46C8);

        v45 = v2;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v60 = v50;
          v61 = 0;
          *v48 = 138412802;
          *(v48 + 4) = v45;
          *v49 = v45;
          *(v48 + 12) = 2080;
          v62 = 0xE000000000000000;
          v51 = v45;
          _StringGuts.grow(_:)(52);
          v52._object = 0x800000010056D480;
          v52._countAndFlagsBits = 0xD000000000000031;
          String.append(_:)(v52);
          type metadata accessor for EditNoteActivity();
          sub_100353E94(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
          v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v53);

          v54._countAndFlagsBits = 41;
          v54._object = 0xE100000000000000;
          String.append(_:)(v54);
          v55 = sub_100009D88(v61, v62, &v60);

          *(v48 + 14) = v55;
          *(v48 + 22) = 2112;
          *(v48 + 24) = v7;
          v49[1] = v7;
          v56 = v7;
          _os_log_impl(&_mh_execute_header, v46, v47, "%@: Updating PaperKit data source to %s for attachment view %@", v48, 0x20u);
          sub_10015DA04(&qword_1006C1440);
          swift_arrayDestroy();

          sub_100009F60(v50);
        }

        sub_100353E94(&qword_1006C47A8, type metadata accessor for RealtimeCollaborationPaperKitController);
        swift_beginAccess();
        swift_getObjectType();
        v60 = v7;

        dispatch thunk of PaperKitStreamableAttachment.participantDetailsDataSource.setter();
        v57 = v60;
        isa = v60;
        v64 = v6;
        swift_endAccess();
        [*(v3 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_note) showsCollaboratorCursors];
        swift_getObjectType();
        v61 = v57;
        dispatch thunk of PaperKitStreamableAttachment.showParticipantCursors.setter();
      }
    }

    else
    {
      v24 = qword_1006BC7A0;

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10002597C(v25, qword_1006C46C8);
      v26 = a1.super.super.isa;
      v59 = v2;
      v27 = static os_log_type_t.fault.getter();
      v28 = Logger.logObject.getter();
      if (os_log_type_enabled(v28, v27))
      {
        v29 = swift_slowAlloc();
        isa = swift_slowAlloc();
        *v29 = 136315650;
        v30 = StaticString.description.getter();
        v32 = sub_100009D88(v30, v31, &isa);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2048;
        *(v29 + 14) = 440;
        *(v29 + 22) = 2080;
        _StringGuts.grow(_:)(45);
        v33 = [v59 description];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v61 = v34;
        v37._countAndFlagsBits = 0xD000000000000029;
        v37._object = 0x800000010056D450;
        String.append(_:)(v37);
        v38 = [(objc_class *)v26 ic_loggingDescription];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v42._countAndFlagsBits = v39;
        v42._object = v41;
        String.append(_:)(v42);

        v43 = sub_100009D88(v61, v36, &isa);

        *(v29 + 24) = v43;
        _os_log_impl(&_mh_execute_header, v28, v27, "Failed assertion at %s:%lu: %s", v29, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall RealtimeCollaborationController.removePaperKitMessengerIfNecessary(for:)(UIView a1)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  v4 = qword_1006BC7A0;
  if (v3 && a1.super.super.isa)
  {
    v5 = a1.super.super.isa;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10002597C(v6, qword_1006C46C8);
    v7 = v1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v5;
      *v11 = v7;
      v11[1] = v5;
      v12 = v5;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "%@: Clearing PaperKit messenger and data source for attachment view %@", v10, 0x16u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();
    }

    swift_getObjectType();
    dispatch thunk of PaperKitStreamableAttachment.liveStreamMessenger.setter();
    swift_getObjectType();
    dispatch thunk of PaperKitStreamableAttachment.participantDetailsDataSource.setter();
  }

  else
  {
    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10002597C(v14, qword_1006C46C8);
    v15 = a1.super.super.isa;
    v33 = v1;
    v16 = static os_log_type_t.fault.getter();
    v17 = Logger.logObject.getter();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v18 = 136315650;
      v19 = StaticString.description.getter();
      v21 = sub_100009D88(v19, v20, &v35);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2048;
      *(v18 + 14) = 426;
      *(v18 + 22) = 2080;
      _StringGuts.grow(_:)(45);
      v22 = [v33 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v34 = v23;
      v26._object = 0x800000010056D450;
      v26._countAndFlagsBits = 0xD000000000000029;
      String.append(_:)(v26);
      v27 = [(objc_class *)v15 ic_loggingDescription];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31._countAndFlagsBits = v28;
      v31._object = v30;
      String.append(_:)(v31);

      v32 = sub_100009D88(v34, v25, &v35);

      *(v18 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v17, v16, "Failed assertion at %s:%lu: %s", v18, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void *sub_100345654(void *a1, id a2)
{
  v50 = 0;
  v5 = [a2 rangeForAttachment:a1 withTextAttachment:&v50];
  v6 = v50;
  if (!v50 || (v7 = v5, objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) == 0))
  {
    v15 = qword_1006BC7A0;
    v10 = v6;
    if (v15 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10002597C(v16, qword_1006C46C8);
    v17 = v2;
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v50 = v23;
      *v21 = 138412546;
      *(v21 + 4) = v17;
      *v22 = v17;
      *(v21 + 12) = 2080;
      v24 = v17;
      v25 = [v18 ic_loggingDescription];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = sub_100009D88(v26, v28, &v50);

      *(v21 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "%@: Could not find PaperKit text attachment for attachment: %s", v21, 0x16u);
      sub_1000073B4(v22, &qword_1006C1440);

      sub_100009F60(v23);
    }

    goto LABEL_27;
  }

  v9 = v8;
  v10 = v6;
  v11 = [v9 viewIdentifier];
  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  v12 = [a2 existingAttachmentViewForIdentifier:v11];

  if (v12)
  {
    v13 = v12;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
LABEL_7:

      return v13;
    }
  }

  v30 = [a2 textContainer];
  if (!v30)
  {
    goto LABEL_22;
  }

  v31 = v30;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32 || (v33 = [v32 tk2TextView]) == 0)
  {
    v13 = v31;
LABEL_21:

    goto LABEL_22;
  }

  v13 = v33;
  v34 = [v33 _pk_viewProviderForAttachment:v9 atCharacterIndex:v7 createIfNeeded:0];
  if (!v34)
  {

    goto LABEL_21;
  }

  v35 = v34;
  v36 = [v34 view];

  if (v36)
  {
    v13 = v36;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_22:
  if (qword_1006BC7A0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10002597C(v37, qword_1006C46C8);
  v38 = v2;
  v39 = a1;
  v19 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50 = v43;
    *v41 = 138412546;
    *(v41 + 4) = v38;
    *v42 = v38;
    *(v41 + 12) = 2080;
    v44 = v38;
    v45 = [v39 ic_loggingDescription];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = sub_100009D88(v46, v48, &v50);

    *(v41 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v19, v40, "%@: Could not find PaperKit attachment view for attachment: %s", v41, 0x16u);
    sub_1000073B4(v42, &qword_1006C1440);

    sub_100009F60(v43);
  }

LABEL_27:
  return 0;
}

void sub_100345C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  v5 = a3();
  if (v5)
  {
    v6 = v5;
    a4();
  }
}

void sub_100345D0C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(id, id), void (*a6)(void))
{
  v10 = a3;
  v11 = a4;
  v14 = a1;
  v12 = a5(v10, v11);
  if (v12)
  {
    v13 = v12;
    a6();
  }
}

void sub_100345DCC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t (*a6)(id, id))
{
  v9 = a4;
  v10 = a5;
  v13 = a1;
  v11 = a6(v9, v10);
  if (v11)
  {
    v12 = v11;
    swift_getObjectType();
    dispatch thunk of PaperKitStreamableAttachment.showParticipantCursors.setter();
  }

  else
  {
  }
}

uint64_t sub_100345F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  sub_10015DA04(&qword_1006C2170);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_100346058, v7, v6);
}

uint64_t sub_100346058()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v7[5] = v4;

  v8 = v4;
  sub_100385F84(v1, &unk_100543D58, v7);
  sub_1000073B4(v1, &qword_1006C2170);
  v6(v1, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = v3;
  v9[6] = v2;

  v10 = v8;

  sub_100385F84(v1, &unk_100543D68, v9);
  sub_1000073B4(v1, &qword_1006C2170);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_100346264;

  return sub_100386174(1);
}

uint64_t sub_100346264()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_10034640C;
  }

  else
  {
    v5 = sub_1003463A0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003463A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10034640C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100346478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_10015DA04(&qword_1006C4978);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_10015DA04(&qword_1006C4980);
  v5[8] = swift_task_alloc();
  v7 = sub_10015DA04(&qword_1006C4988);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = sub_10015DA04(&qword_1006C4990);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = sub_10015DA04(&qword_1006C4998);
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_1003466B4, 0, 0);
}

uint64_t sub_1003466B4()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  GroupSession.$state.getter();
  sub_1000060B4(&qword_1006C49A0, &qword_1006C4990);
  Publisher<>.values.getter();
  (*(v2 + 8))(v1, v3);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v4, v5);
  v7 = sub_1000060B4(&qword_1006C49A8, &qword_1006C4998);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_100346844;
  v9 = v0[15];
  v10 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v10, v9, v7);
}

uint64_t sub_100346844()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100346BF4;
  }

  else
  {
    v2 = sub_100346958;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100346974()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v4 = v0[1];
LABEL_5:

    return v4();
  }

  v5 = v0[19];
  v6 = v0[7];
  v7 = v0[3];
  (*(v3 + 32))(v6, v1, v2);
  sub_100346C80(v7, v6);
  if (v5)
  {
    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v9 + 8))(v8, v10);

    v4 = v0[1];
    goto LABEL_5;
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v12 = sub_1000060B4(&qword_1006C49A8, &qword_1006C4998);
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_100346844;
  v14 = v0[15];
  v15 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v15, v14, v12);
}

uint64_t sub_100346BF4()
{
  *(v0 + 16) = *(v0 + 152);
  sub_10015DA04(&unk_1006C9B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100346C80(uint64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for EditNoteActivity();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10015DA04(&qword_1006C4978);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  (*(v7 + 16))(&v34 - v9, a2, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 != enum case for GroupSession.State.invalidated<A>(_:))
  {
    if (v11 == enum case for GroupSession.State.waiting<A>(_:))
    {
      v24 = 0;
    }

    else
    {
      if (v11 != enum case for GroupSession.State.joined<A>(_:))
      {
        v36 = type metadata accessor for FastSyncError();
        sub_100353E94(&qword_1006C8910, &type metadata accessor for FastSyncError);
        swift_allocError();
        v35 = v25;
        v38[0] = 0;
        v38[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(44);

        strcpy(v38, "Unknown state ");
        HIBYTE(v38[1]) = -18;
        GroupSession.state.getter();
        v26._countAndFlagsBits = String.init<A>(reflecting:)();
        String.append(_:)(v26);

        v27._object = 0x800000010056D980;
        v27._countAndFlagsBits = 0xD000000000000019;
        String.append(_:)(v27);
        GroupSession.activity.getter();
        sub_100353E94(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
        v28 = v39;
        v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v29);

        (*(v37 + 8))(v5, v28);
        v30._countAndFlagsBits = 46;
        v30._object = 0xE100000000000000;
        String.append(_:)(v30);
        v31 = v38[1];
        v32 = v35;
        v33 = v36;
        *v35 = v38[0];
        v32[1] = v31;
        (*(*(v33 - 8) + 104))();
        swift_willThrow();
        return (*(v7 + 8))(v10, v6);
      }

      v24 = 1;
    }

    GroupSession.activity.getter();
    sub_10033EC94(v24, 1u, v5, a1);
    return (*(v37 + 8))(v5, v39);
  }

  (*(v7 + 96))(v10, v6);
  if (qword_1006BC7A0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10002597C(v12, qword_1006C46C8);

  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38[0] = v36;
    *v15 = 136315394;
    GroupSession.activity.getter();
    sub_100353E94(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
    v17 = v39;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v37 + 8))(v5, v17);
    v21 = sub_100009D88(v18, v20, v38);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v16 = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: Responding to session invalidation (error: %@).", v15, 0x16u);
    sub_1000073B4(v16, &qword_1006C1440);

    sub_100009F60(v36);
  }

  return swift_willThrow();
}

uint64_t sub_1003472BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10000A600;

  return sub_100347368(a5, a6);
}

uint64_t sub_100347368(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = swift_getObjectType();

  return _swift_task_switch(sub_1003473DC, 0, 0);
}

uint64_t sub_1003473DC()
{
  *(v0 + 72) = type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100347474, v2, v1);
}

uint64_t sub_100347474()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong respondsToSelector:"realtimeCollaborationControllerSessionWillBegin:"])
    {
      [v2 realtimeCollaborationControllerSessionWillBegin:*(v0 + 56)];
    }

    swift_unknownObjectRelease();
  }

  return _swift_task_switch(sub_10034753C, 0, 0);
}

uint64_t sub_10034753C()
{
  if (qword_1006BC7B8 != -1)
  {
    swift_once();
  }

  v1 = qword_1006C4710;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_100347620;

  return sub_100347D58(v1);
}

uint64_t sub_100347620()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100347A64;
  }

  else
  {
    v2 = sub_100347734;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100347734()
{
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003477C0, v2, v1);
}

uint64_t sub_1003477C0()
{
  v1 = *(v0 + 40);

  sub_1003480A8(v1);

  return _swift_task_switch(sub_100347838, 0, 0);
}

uint64_t sub_100347838()
{
  v1 = v0[4].i64[0];
  v2 = v0[2].i64[1];
  v3 = swift_task_alloc();
  v0[7].i64[0] = v3;
  v3[1] = vextq_s8(v0[3], v0[3], 8uLL);
  v3[2].i64[0] = v2;
  v3[2].i64[1] = v1;
  v4 = swift_task_alloc();
  v0[7].i64[1] = v4;
  *v4 = v0;
  v4[1] = sub_100347934;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100543D88, v3, &type metadata for () + 8);
}

uint64_t sub_100347934()
{

  return _swift_task_switch(sub_100347A4C, 0, 0);
}

uint64_t sub_100347A64()
{
  if (qword_1006BC7A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  sub_10002597C(v2, qword_1006C46C8);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@: Error joining group session: %@", v7, 0x16u);
    sub_10015DA04(&qword_1006C1440);
    swift_arrayDestroy();
  }

  swift_errorRetain();
  *(v0 + 128) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100347C64, v12, v11);
}

uint64_t sub_100347C64()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);

  sub_100348278(v2, v1);

  return _swift_task_switch(sub_100347CF4, 0, 0);
}

uint64_t sub_100347CF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100347D58(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_100347D78, 0, 0);
}

uint64_t sub_100347D78()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_10015DA04(&qword_1006C4948);
  inited = swift_initStackObject();
  v0[9] = inited;
  *(inited + 32) = 0;
  *(inited + 16) = v1;
  *(inited + 24) = 0;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = inited;
  *(v4 + 24) = v2;

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_100347EA4;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_100543E48, v4, sub_100354CF8, inited, 0, 0, &type metadata for () + 8);
}

uint64_t sub_100347EA4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100348030;
  }

  else
  {

    v2 = sub_100347FC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100347FC0()
{
  v1 = *(v0 + 72);
  swift_setDeallocating();
  sub_100354D00(*(v1 + 16), *(v1 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100348030()
{
  v1 = *(v0 + 72);
  swift_setDeallocating();
  sub_100354D00(*(v1 + 16), *(v1 + 24));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003480A8(uint64_t a1)
{
  v3 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-v4];
  v6 = OBJC_IVAR___ICRealtimeCollaborationController_activeSession;
  swift_beginAccess();
  *&v1[v6] = a1;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong respondsToSelector:"realtimeCollaborationControllerSessionDidBegin:"];

    if (v9)
    {
      [v8 realtimeCollaborationControllerSessionDidBegin:v1];
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = a1;

  v12 = v1;
  sub_100386B84(0, 0, v5, &unk_100543E18, v11);

  return sub_1000073B4(v5, &qword_1006C2170);
}

uint64_t sub_100348278(uint64_t a1, uint64_t a2)
{
  v5 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = *&v2[OBJC_IVAR___ICRealtimeCollaborationController_messageController];
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_nonFatalErrorCount);

    os_unfair_lock_lock((v9 + 24));
    v10 = *(v9 + 16);
    os_unfair_lock_unlock((v9 + 24));
  }

  else
  {
    v10 = 0;
  }

  v11 = OBJC_IVAR___ICRealtimeCollaborationController_activeSession;
  swift_beginAccess();
  *&v2[v11] = 0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ([Strong respondsToSelector:"realtimeCollaborationControllerSessionDidTerminate:"])
    {
      [v13 realtimeCollaborationControllerSessionDidTerminate:v2];
    }

    swift_unknownObjectRelease();
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v2;
  v15[5] = a1;
  v15[6] = v10;
  v15[7] = a2;
  v16 = v2;

  swift_errorRetain();
  sub_100386B84(0, 0, v7, &unk_100543E30, v15);

  return sub_1000073B4(v7, &qword_1006C2170);
}

uint64_t sub_100348490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  sub_10015DA04(&qword_1006C2170);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100348530, 0, 0);
}

uint64_t sub_100348530()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for TaskPriority();
  v13 = *(*(v5 - 8) + 56);
  v13(v1, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;
  v7 = v4;

  sub_10033AA28(v1, &unk_100543D98, v6, &unk_1006585B0, &type metadata for () + 8, &unk_100543DE8);
  sub_1000073B4(v1, &qword_1006C2170);
  v13(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = v3;
  v9 = v7;

  sub_10033AA28(v1, &unk_100543DA8, v8, &unk_1006585B0, &type metadata for () + 8, &unk_100543DE8);
  sub_1000073B4(v1, &qword_1006C2170);
  v10 = swift_task_alloc();
  v0[7] = v10;
  v11 = sub_10015DA04(&qword_1006C4930);
  *v10 = v0;
  v10[1] = sub_100348798;

  return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v11);
}

uint64_t sub_100348798()
{

  return _swift_task_switch(sub_100348894, 0, 0);
}

uint64_t sub_100348894()
{
  if (qword_1006BC7C0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = qword_1006C4718;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1003489C0;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x6E6F28657661656CLL, 0xEA0000000000293ALL, sub_100354824, v3, &type metadata for () + 8);
}

uint64_t sub_1003489C0()
{

  return _swift_task_switch(sub_100348AD8, 0, 0);
}

uint64_t sub_100348AD8()
{
  type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100348B6C, v2, v1);
}

uint64_t sub_100348B6C()
{
  v1 = *(v0 + 40);

  sub_100348278(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100348BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10000A1FC;

  return sub_100348C9C(a5, a6);
}

uint64_t sub_100348C9C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for EditNoteActivity();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = sub_10015DA04(&unk_1006C8900);
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_100348DDC, 0, 0);
}

uint64_t sub_100348DDC()
{
  sub_10015DA04(&qword_1006BD3C8);
  AsyncStream.makeAsyncIterator()();
  v1 = OBJC_IVAR___ICRealtimeCollaborationController_mergeableFieldStateCache;
  v0[14] = OBJC_IVAR___ICRealtimeCollaborationController_context;
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_100348EEC;
  v3 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v3);
}

uint64_t sub_100348EEC()
{

  return _swift_task_switch(sub_100348FE8, 0, 0);
}

uint64_t sub_100348FE8()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[15];
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[7];
    v17 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    v18 = v4;
    v20 = *&v7[v0[14]];
    GroupSession.activity.getter();
    v19 = *&v7[v2];
    v8 = *(v5 + 32);
    v8(v4, v3, v6);
    v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v10 = (v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    v0[17] = v12;
    *(v12 + 16) = v1;
    v8(v12 + v9, v18, v6);
    *(v12 + v10) = v20;
    *(v12 + v11) = v7;
    *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
    v20;

    v13 = v7;
    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_10034921C;

    return NSManagedObjectContext.perform<A>(_:)(v14, sub_100354954, v12, &type metadata for () + 8);
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10034921C()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100349358, 0, 0);
  }
}

uint64_t sub_100349358()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100348EEC;
  v2 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v2);
}

uint64_t sub_100349400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000A1FC;

  return sub_10034949C(a5);
}

uint64_t sub_10034949C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for FastSync.SelectionMessage();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_10015DA04(&qword_1006C4938);
  v2[22] = swift_task_alloc();
  v4 = sub_10015DA04(&unk_1006C88D0);
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for MainActor();
  v2[27] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[28] = v6;
  v2[29] = v5;

  return _swift_task_switch(sub_100349688, v6, v5);
}

uint64_t sub_100349688()
{
  sub_10015DA04(&qword_1006BD3B0);
  AsyncStream.makeAsyncIterator()();
  v1 = OBJC_IVAR___ICRealtimeCollaborationController_delegate;
  v0[30] = OBJC_IVAR___ICRealtimeCollaborationController_selectionDocument;
  v0[31] = v1;
  swift_beginAccess();
  swift_beginAccess();
  v0[33] = _swiftEmptyArrayStorage;
  v0[34] = _swiftEmptyArrayStorage;
  v0[32] = 0;
  v2 = static MainActor.shared.getter();
  v0[35] = v2;
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_1003497E0;
  v4 = v0[22];
  v5 = v0[23];

  return AsyncStream.Iterator.next(isolation:)(v4, v2, &protocol witness table for MainActor, v5);
}

uint64_t sub_1003497E0()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_100349924, v3, v2);
}

uint64_t sub_100349924()
{
  v134 = v0;
  v1 = v0[22];
  v2 = v0[12];
  v3 = v0[13];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v4 = v0[1];

    return v4();
  }

  v6 = v0[30];
  v7 = v0[11];
  v8 = *(v3 + 32);
  v8(v0[21], v1, v2);
  v9 = *(v7 + v6);
  if (!v9)
  {
    if (qword_1006BC7A0 != -1)
    {
LABEL_70:
      swift_once();
    }

    v27 = v0[21];
    v28 = v0[15];
    v29 = v0[12];
    v30 = v0[13];
    v31 = type metadata accessor for Logger();
    sub_10002597C(v31, qword_1006C46C8);
    v32 = *(v30 + 16);
    v32(v28, v27, v29);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[15];
    v38 = v0[12];
    v37 = v0[13];
    if (v35)
    {
      v128 = v8;
      bufa = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v133[0] = v122;
      *bufa = 136315138;
      sub_100353E94(&qword_1006C4940, &type metadata accessor for FastSync.SelectionMessage);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v125 = v32;
      v41 = v40;
      v130 = *(v37 + 8);
      v130(v36, v38);
      v42 = v39;
      v8 = v128;
      v43 = sub_100009D88(v42, v41, v133);
      v32 = v125;

      *(bufa + 4) = v43;
      _os_log_impl(&_mh_execute_header, v33, v34, "No selection document — queueing Fast Sync selection {message: %s}", bufa, 0xCu);
      sub_100009F60(v122);
    }

    else
    {

      v130 = *(v37 + 8);
      v130(v36, v38);
    }

    v32(v0[14], v0[21], v0[12]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v0[33];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = sub_1001CB7F4(0, v45[2] + 1, 1, v0[33]);
    }

    v47 = v45[2];
    v46 = v45[3];
    if (v47 >= v46 >> 1)
    {
      v45 = sub_1001CB7F4(v46 > 1, v47 + 1, 1, v45);
    }

    v49 = v0[13];
    v48 = v0[14];
    v50 = v0[12];
    v130(v0[21], v50);
    v45[2] = v47 + 1;
    v51 = v50;
    v24 = v45;
    v8(v45 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v47, v48, v51);
    v52 = v0[32];
    v53 = v45;
    goto LABEL_51;
  }

  v10 = v9;
  v11 = FastSync.SelectionMessage.selectionStateData.getter();
  v13 = v12;
  v14 = RealtimeCollaborationSelectionDocument.merge(with:)();
  sub_10019671C(v11, v13);
  type metadata accessor for ICCRMergeResult(0);
  if (!v14)
  {
    v129 = v8;
    if (qword_1006BC7A0 != -1)
    {
      goto LABEL_75;
    }

    goto LABEL_22;
  }

  if (v14 == 1)
  {
    (*(v0[13] + 8))(v0[21], v0[12]);

    v24 = v0[33];
    v53 = v0[34];
    v52 = v0[32];
    goto LABEL_51;
  }

  if (v14 != 2)
  {
    v0[9] = v14;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  }

  v15 = v0[34];
  v16 = v0[32];
  v17 = v10;
  v18 = sub_100353B40(v15);
  LOBYTE(v15) = v19;
  v114 = v16;
  v117 = v17;

  if (v15)
  {
    v24 = v0[34];
    v25 = v24[2];
    v26 = v25;
    goto LABEL_37;
  }

  v115 = v18;
  v25 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
LABEL_79:
    __break(1u);
    return AsyncStream.Iterator.next(isolation:)(v20, v21, v22, v23);
  }

  v24 = v0[34];
  v81 = v24 + 2;
  v80 = v24[2];
  if (v25 == v80)
  {
LABEL_35:
    v26 = v115;
    if (v25 < v115)
    {
      __break(1u);
    }

    else if ((v115 & 0x8000000000000000) == 0)
    {
LABEL_37:
      v82 = v26;
      v83 = v26 - v25;
      v84 = v25 + v83;
      if (!__OFADD__(v25, v83))
      {
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v0[8] = v24;
        if ((v85 & 1) == 0 || v84 > v24[3] >> 1)
        {
          if (v25 <= v84)
          {
            v86 = v84;
          }

          else
          {
            v86 = v25;
          }

          v24 = sub_1001CB7F4(v85, v86, 1, v24);
          v0[8] = v24;
        }

        sub_10030F54C(v82, v25, 0);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v88 = Strong;
          v89 = [Strong respondsToSelector:"realtimeCollaborationControllerDidChangeSelectionState:"];
          v90 = v0[21];
          v92 = v0[12];
          v91 = v0[13];
          if (v89)
          {
            [v88 realtimeCollaborationControllerDidChangeSelectionState:v0[11]];

            swift_unknownObjectRelease();
            (*(v91 + 8))(v90, v92);
          }

          else
          {
            (*(v91 + 8))(v0[21], v0[12]);

            swift_unknownObjectRelease();
          }

          v53 = v24;
        }

        else
        {
          v93 = v0[21];
          v94 = v24;
          v96 = v0[12];
          v95 = v0[13];

          v97 = v96;
          v24 = v94;
          (*(v95 + 8))(v93, v97);
          v53 = v94;
        }

        v52 = v114;
        goto LABEL_51;
      }

      goto LABEL_78;
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v116 = v0;
  while (1)
  {
    if (v25 >= v80)
    {
      __break(1u);
      goto LABEL_70;
    }

    v8 = v0[20];
    v10 = v0[12];
    v101 = v0[13];
    v0 = (v101 + 16);
    v129 = *(v101 + 16);
    v132 = v24;
    v127 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    buf = *(v101 + 72);
    v124 = v24 + v127;
    v102 = buf * v25;
    v129(v8, v24 + v127 + buf * v25, v10);
    v103 = v25;
    v104 = FastSync.SelectionMessage.selectionStateData.getter();
    v106 = v105;
    v107 = RealtimeCollaborationSelectionDocument.merge(with:)();
    sub_10019671C(v104, v106);
    v20 = (*(v101 + 8))(v8, v10);
    if (!v107)
    {
      break;
    }

    v24 = v132;
    v100 = v103;
    v0 = v116;
LABEL_56:
    v25 = v100 + 1;
    v81 = v24 + 2;
    v80 = v24[2];
    if (v25 == v80)
    {
      goto LABEL_35;
    }
  }

  v108 = v115;
  v100 = v103;
  if (v103 == v115)
  {
    v24 = v132;
    v0 = v116;
LABEL_68:
    v115 = v108 + 1;
    goto LABEL_56;
  }

  if ((v115 & 0x8000000000000000) == 0)
  {
    v109 = *v81;
    if (v115 >= *v81)
    {
      goto LABEL_72;
    }

    v8 = v102;
    v129(v116[19], &v124[buf * v115], v116[12]);
    if (v103 >= v109)
    {
      goto LABEL_73;
    }

    v129(v116[18], &v124[v102], v116[12]);
    v110 = v132;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = sub_10030D5DC(v132);
    }

    v0 = v116;
    v111 = *(v116[13] + 40);
    v112 = v110;
    v113 = v110 + v127;
    v111(v113 + buf * v115, v116[18], v116[12]);
    if (v103 >= v112[2])
    {
      goto LABEL_74;
    }

    v20 = (v111)(v113 + v102, v116[19], v116[12]);
    v24 = v112;
    v108 = v115;
    goto LABEL_68;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  swift_once();
LABEL_22:
  v54 = v0[21];
  v55 = v0[17];
  v56 = v0[12];
  v57 = v0[13];
  v58 = type metadata accessor for Logger();
  sub_10002597C(v58, qword_1006C46C8);
  v59 = *(v57 + 16);
  v59(v55, v54, v56);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v0[17];
  v65 = v0[12];
  v64 = v0[13];
  if (v62)
  {
    bufb = v60;
    v66 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v133[0] = v123;
    *v66 = 136315138;
    sub_100353E94(&qword_1006C4940, &type metadata accessor for FastSync.SelectionMessage);
    v118 = v61;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v126 = v59;
    v69 = v68;
    v131 = *(v64 + 8);
    v131(v63, v65);
    v70 = sub_100009D88(v67, v69, v133);
    v59 = v126;

    *(v66 + 4) = v70;
    _os_log_impl(&_mh_execute_header, bufb, v118, "Cannot merge Fast Sync selection — queueing {message: %s}", v66, 0xCu);
    sub_100009F60(v123);
  }

  else
  {

    v131 = *(v64 + 8);
    v131(v63, v65);
  }

  v59(v0[16], v0[21], v0[12]);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v72 = v0[33];
  if ((v71 & 1) == 0)
  {
    v72 = sub_1001CB7F4(0, v72[2] + 1, 1, v0[33]);
  }

  v74 = v72[2];
  v73 = v72[3];
  if (v74 >= v73 >> 1)
  {
    v72 = sub_1001CB7F4(v73 > 1, v74 + 1, 1, v72);
  }

  v75 = v0[21];
  v76 = v0[16];
  v77 = v0[12];
  v78 = v0[13];

  v131(v75, v77);
  v72[2] = v74 + 1;
  v79 = v76;
  v24 = v72;
  v129(v72 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v74, v79, v77);
  v52 = v0[32];
  v53 = v72;
LABEL_51:
  v0[33] = v24;
  v0[34] = v53;
  v0[32] = v52;
  v98 = static MainActor.shared.getter();
  v0[35] = v98;
  v99 = swift_task_alloc();
  v0[36] = v99;
  *v99 = v0;
  v99[1] = sub_1003497E0;
  v20 = v0[22];
  v23 = v0[23];
  v22 = &protocol witness table for MainActor;
  v21 = v98;

  return AsyncStream.Iterator.next(isolation:)(v20, v21, v22, v23);
}

uint64_t sub_10034A520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10034A540, 0, 0);
}

uint64_t sub_10034A540()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *&v2[OBJC_IVAR___ICRealtimeCollaborationController_analyticsContext];
  v4 = *&v2[OBJC_IVAR___ICRealtimeCollaborationController_eventReporter];
  v5 = swift_allocObject();
  v0[4] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v4;
  v3;
  v6 = v4;

  v7 = v2;
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_10034A664;

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_100354B34, v5, &type metadata for () + 8);
}

uint64_t sub_10034A664()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10034A7A0, 0, 0);
  }
}

uint64_t sub_10034A7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10034A7D8, 0, 0);
}

uint64_t sub_10034A7D8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *&v4[OBJC_IVAR___ICRealtimeCollaborationController_analyticsContext];
  v6 = *&v4[OBJC_IVAR___ICRealtimeCollaborationController_eventReporter];
  v7 = swift_allocObject();
  v0[6] = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v4;
  v7[5] = v6;
  v7[6] = v1;
  v7[7] = v2;
  v5;
  v8 = v6;

  v9 = v4;
  swift_errorRetain();
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_10034A910;

  return NSManagedObjectContext.perform<A>(_:)(v10, sub_100354C28, v7, &type metadata for () + 8);
}

uint64_t sub_10034A910()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100355408, 0, 0);
  }
}

void sub_10034AA4C(unint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v132 = a3;
  v133 = a2;
  v128 = type metadata accessor for OSSignposter();
  v107 = *(v128 - 8);
  __chkstk_darwin(v128);
  v106 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10015DA04(&qword_1006C8880);
  __chkstk_darwin(v115);
  v118 = &v104 - v9;
  v127 = type metadata accessor for OSSignpostID();
  v109 = *(v127 - 8);
  v10 = __chkstk_darwin(v127);
  v105 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v125 = &v104 - v13;
  __chkstk_darwin(v12);
  v15 = &v104 - v14;
  if (a1 >> 62)
  {
LABEL_38:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_3:
      v131 = objc_opt_self();
      v17 = 0;
      v124 = a1 & 0xC000000000000001;
      v114 = a1 & 0xFFFFFFFFFFFFFF8;
      v122 = (v109 + 8);
      v123 = (v109 + 16);
      v113 = "to a local record: ";
      v112 = ".leave-session";
      *&v18 = 136315138;
      v117 = v18;
      *&v18 = 138412546;
      v108 = v18;
      *&v18 = 136315650;
      v111 = v18;
      v119 = a5;
      v120 = a1;
      v126 = a4;
      v130 = v15;
      v121 = v16;
      while (1)
      {
        if (v124)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *(v114 + 16))
          {
            goto LABEL_37;
          }

          v38 = *(a1 + 8 * v17 + 32);
        }

        v39 = v38;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v136 = v17 + 1;
        v134 = v17;
        if (qword_1006BC7B0 != -1)
        {
          swift_once();
        }

        sub_10002597C(v128, qword_1006C46F8);
        v40 = v39;
        static OSSignpostID.exclusive.getter();
        v41 = OSSignposter.logHandle.getter();
        v42 = static os_signpost_type_t.begin.getter();

        if (OS_os_log.signpostsEnabled.getter())
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v137 = v44;
          *v43 = v117;
          v45 = [v40 ic_loggingIdentifier];
          v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v47;

          v49 = v46;
          a4 = v126;
          v50 = sub_100009D88(v49, v48, &v137);
          v15 = v130;

          *(v43 + 4) = v50;
          v51 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, v42, v51, "Merge", "Record ID: %s", v43, 0xCu);
          sub_100009F60(v44);
          a5 = v119;
        }

        v52 = v127;
        (*v123)(v125, v15, v127);
        type metadata accessor for OSSignpostIntervalState();
        swift_allocObject();
        v135 = OSSignpostIntervalState.init(id:isOpen:)();
        (*v122)(v15, v52);
        v53 = [v131 sharedContext];
        EditNoteActivity.accountID.getter();
        v54 = String._bridgeToObjectiveC()();

        v55 = [v53 existingCloudObjectForRecord:v40 accountID:v54 context:v132];

        if (!v55)
        {
          v56 = v118;
          if (qword_1006BC7A8 != -1)
          {
            swift_once();
          }

          v57 = sub_10002597C(v115, qword_1006C46E0);
          sub_100006038(v57, v56, &qword_1006C8880);
          v58 = type metadata accessor for Logger();
          v59 = *(v58 - 8);
          if ((*(v59 + 48))(v56, 1, v58) == 1)
          {
            sub_1000073B4(v56, &qword_1006C8880);
          }

          else
          {
            v60 = v40;
            v61 = a4;
            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v110 = v63;
              v65 = v64;
              v66 = a4;
              v67 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              v137 = v116;
              *v65 = v108;
              *(v65 + 4) = v61;
              *v67 = v66;
              v68 = v67;
              *(v65 + 12) = 2080;
              v69 = v61;
              v70 = [v60 ic_loggingDescription];
              v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v73 = v72;

              v74 = sub_100009D88(v71, v73, &v137);
              a4 = v126;

              *(v65 + 14) = v74;
              _os_log_impl(&_mh_execute_header, v62, v110, "%@: Creating new cloud object for record: %s", v65, 0x16u);
              sub_1000073B4(v68, &qword_1006C1440);

              sub_100009F60(v116);
            }

            (*(v59 + 8))(v118, v58);
            a5 = v119;
            v15 = v130;
          }

          v75 = [v131 sharedContext];
          EditNoteActivity.accountID.getter();
          v76 = String._bridgeToObjectiveC()();

          v55 = [v75 newCloudObjectForRecord:v40 accountID:v76 context:v132];

          if (!v55)
          {
            v78 = 0;
LABEL_32:
            if (qword_1006BC7A0 != -1)
            {
              swift_once();
            }

            v87 = type metadata accessor for Logger();
            sub_10002597C(v87, qword_1006C46C8);
            v88 = v40;
            v89 = a4;
            v90 = static os_log_type_t.fault.getter();
            v91 = Logger.logObject.getter();
            if (os_log_type_enabled(v91, v90))
            {
              v19 = swift_slowAlloc();
              v20 = v89;
              v116 = v89;
              v21 = v19;
              v139 = swift_slowAlloc();
              *v21 = v111;
              v22 = StaticString.description.getter();
              v24 = sub_100009D88(v22, v23, &v139);

              *(v21 + 4) = v24;
              *(v21 + 12) = 2048;
              *(v21 + 14) = 628;
              *(v21 + 22) = 2080;
              v137 = 0;
              v138 = 0xE000000000000000;
              _StringGuts.grow(_:)(55);
              v25 = [v20 description];
              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;

              v29._countAndFlagsBits = v26;
              v29._object = v28;
              String.append(_:)(v29);

              v30._countAndFlagsBits = 0xD000000000000033;
              v30._object = (v112 | 0x8000000000000000);
              String.append(_:)(v30);
              v31 = [v88 ic_loggingDescription];
              v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v34 = v33;

              v35._countAndFlagsBits = v32;
              v35._object = v34;
              String.append(_:)(v35);
              a5 = v119;

              v36 = sub_100009D88(v137, v138, &v139);

              *(v21 + 24) = v36;
              _os_log_impl(&_mh_execute_header, v91, v90, "Failed assertion at %s:%lu: %s", v21, 0x20u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v37 = v121;
            sub_10034B804();

            a4 = v126;
            v15 = v130;
            if (v136 == v37)
            {
              break;
            }

            goto LABEL_6;
          }

          v77 = String._bridgeToObjectiveC()();
          [v55 clearChangeCountWithReason:v77];
        }

        v78 = v55;
        v79 = [v78 identifier];
        if (!v79)
        {

          goto LABEL_32;
        }

        v80 = v79;
        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v82;

        __chkstk_darwin(v84);
        *(&v104 - 6) = v81;
        *(&v104 - 5) = v83;
        *(&v104 - 4) = a4;
        *(&v104 - 3) = v40;
        v85 = v133;
        *(&v104 - 2) = v78;
        *(&v104 - 1) = v85;
        os_unfair_lock_lock((a5 + 24));
        v86 = v129;
        sub_100354A08((a5 + 16));
        v129 = v86;
        if (v86)
        {
          os_unfair_lock_unlock((a5 + 24));
          __break(1u);
          return;
        }

        os_unfair_lock_unlock((a5 + 24));

        [v78 setNeedsInitialFetchFromCloud:0];

        sub_10034B804();

        if (v136 == v121)
        {
          break;
        }

LABEL_6:
        v17 = v134 + 1;
        a1 = v120;
      }
    }
  }

  if (qword_1006BC7B0 != -1)
  {
    swift_once();
  }

  v92 = v128;
  v93 = sub_10002597C(v128, qword_1006C46F8);
  v94 = v107;
  v95 = v106;
  (*(v107 + 16))(v106, v93, v92);
  v96 = v105;
  static OSSignpostID.exclusive.getter();
  v97 = swift_slowAlloc();
  *v97 = 0;
  v98 = OSSignposter.logHandle.getter();
  v99 = static os_signpost_type_t.begin.getter();
  v100 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v98, v99, v100, "Save", "", v97, 2u);
  v101 = v132;
  NSManagedObjectContext.ic_save(withLogDescription:_:)();
  [v101 reset];
  v102 = static os_signpost_type_t.end.getter();
  v103 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v98, v102, v103, "Save", "", v97, 2u);

  (*(v109 + 8))(v96, v127);
  (*(v94 + 8))(v95, v92);
}

uint64_t sub_10034B804()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006BC7B0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  sub_10002597C(v8, qword_1006C46F8);
  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v3, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v13, "Merge", v11, v12, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10034BA90(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, NSObject *a6, uint64_t a7)
{
  v71 = a7;
  v72 = a6;
  v73 = a4;
  v11 = sub_10015DA04(&qword_1006C8880);
  v12 = __chkstk_darwin(v11);
  v77 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v64 - v14;
  v16 = *a1;
  if (*(*a1 + 16) && (v17 = sub_1002DF11C(a2, a3), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v19 = [objc_allocWithZone(NSMutableDictionary) init];
  }

  v78 = v19;
  v75 = a2;
  if (qword_1006BC7A8 != -1)
  {
    swift_once();
  }

  v70 = sub_10002597C(v11, qword_1006C46E0);
  sub_100006038(v70, v15, &qword_1006C8880);
  v20 = type metadata accessor for Logger();
  v74 = *(v20 - 8);
  v69 = *(v74 + 48);
  v21 = v69(v15, 1, v20);
  v76 = a3;
  if (v21 == 1)
  {
    sub_1000073B4(v15, &qword_1006C8880);
  }

  else
  {
    v22 = v73;
    v67 = a5;
    v23 = a5;
    v24 = v78;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v68 = a1;
      v28 = v27;
      v29 = swift_slowAlloc();
      v65 = v26;
      v30 = v29;
      v66 = swift_slowAlloc();
      v79 = v66;
      *v28 = 138412802;
      *(v28 + 4) = v22;
      *v30 = v22;
      *(v28 + 12) = 2080;
      v31 = v22;
      v32 = [v23 ic_loggingIdentifier];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v25;
      v35 = v34;

      v36 = sub_100009D88(v33, v35, &v79);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2112;
      *(v28 + 24) = v24;
      v30[1] = v24;
      v37 = v24;
      v38 = v64;
      _os_log_impl(&_mh_execute_header, v64, v65, "%@: Field state prior to merge record %s: %@", v28, 0x20u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();

      sub_100009F60(v66);

      a1 = v68;
    }

    else
    {
    }

    a3 = v76;
    (*(v74 + 8))(v15, v20);
    a5 = v67;
  }

  v39 = v72;
  [v72 setMergingRecord:1];
  EditNoteActivity.accountID.getter();
  v40 = String._bridgeToObjectiveC()();

  v41 = v78;
  [v39 mergeCloudKitRecord:a5 accountID:v40 approach:1 mergeableFieldState:v41];

  [v39 setMergingRecord:0];
  v42 = v77;
  sub_100006038(v70, v77, &qword_1006C8880);
  if (v69(v42, 1, v20) == 1)
  {
    sub_1000073B4(v42, &qword_1006C8880);
    v43 = v75;
  }

  else
  {
    v68 = a1;
    v44 = v73;
    v45 = a5;
    v46 = v44;
    v47 = v45;
    v48 = v41;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v51 = 138412802;
      *(v51 + 4) = v46;
      *v52 = v46;
      *(v51 + 12) = 2080;
      v53 = v46;
      v54 = [v47 ic_loggingIdentifier];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v49;
      v57 = v56;

      v58 = sub_100009D88(v55, v57, &v79);

      *(v51 + 14) = v58;
      *(v51 + 22) = 2112;
      *(v51 + 24) = v48;
      v52[1] = v78;
      v59 = v48;
      v60 = v50;
      v61 = v72;
      _os_log_impl(&_mh_execute_header, v72, v60, "%@: Field state after merge record %s: %@", v51, 0x20u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();

      sub_100009F60(v73);
    }

    else
    {
    }

    a1 = v68;
    v43 = v75;
    a3 = v76;
    (*(v74 + 8))(v77, v20);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = *a1;
  sub_1002E6E94(v41, v43, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v79;
  return result;
}

uint64_t sub_10034C14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v6 = type metadata accessor for NSManagedObjectContext.ObjectIDNotification();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  sub_10015DA04(&qword_1006C49B8);
  v5[35] = swift_task_alloc();
  v7 = sub_10015DA04(&qword_1006C49C0);
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = type metadata accessor for MainActor();
  v5[40] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[41] = v9;
  v5[42] = v8;

  return _swift_task_switch(sub_10034C2E4, v9, v8);
}

uint64_t sub_10034C2E4()
{
  v1 = *(v0 + 304);
  sub_1000054A4(0, &unk_1006C2CF0);
  v2 = static NSManagedObjectContext.didMergeChangesNotifications(context:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 344) = v3;
  *(v0 + 352) = v7;
  v9 = static NSManagedObjectContext.didSaveNotifications(context:)();
  *(v0 + 360) = v10;
  *(v0 + 368) = v11;
  *(v0 + 144) = v2;
  *(v0 + 152) = v4;
  *(v0 + 160) = v6;
  *(v0 + 168) = v8;
  *(v0 + 176) = v9;
  *(v0 + 184) = v10;
  *(v0 + 192) = v12;
  *(v0 + 200) = v11;
  v13 = sub_10015DA04(&qword_1006C49C8);
  sub_1000060B4(&qword_1006C49D0, &qword_1006C49C8);
  merge<A, B>(_:_:)(v0 + 144, v0 + 176, v13, v13, v0 + 16);
  v14 = *(v0 + 72);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 88) = *(v0 + 24);
  *(v0 + 104) = *(v0 + 40);
  *(v0 + 120) = *(v0 + 56);
  *(v0 + 136) = v14;
  v15 = sub_10015DA04(&qword_1006C49D8);
  AsyncMerge2Sequence.makeAsyncIterator()(v15, v1);

  swift_beginAccess();
  *(v0 + 376) = static MainActor.shared.getter();
  v16 = swift_task_alloc();
  *(v0 + 384) = v16;
  *v16 = v0;
  v16[1] = sub_10034C514;
  v19 = *(v0 + 280);
  v20 = *(v0 + 288);

  return AsyncMerge2Sequence.Iterator.next()(v19, v20, v17, v18);
}

uint64_t sub_10034C514()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 376);
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

    v7 = sub_10034C948;
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

    v7 = sub_10034C6AC;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10034C6AC()
{

  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return _swift_task_switch(sub_10034C710, v1, v2);
}

uint64_t sub_10034C710()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[37] + 8))(v0[38], v0[36]);

LABEL_8:

    v13 = v0[1];

    return v13();
  }

  (*(v3 + 32))(v0[34], v1, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[50] = Strong;
  if (!Strong)
  {
    v8 = v0[37];
    v14 = v0[38];
    v9 = v0[36];
    v10 = v0[33];
    v11 = v0[34];
    v12 = v0[32];

    (*(v10 + 8))(v11, v12);
    (*(v8 + 8))(v14, v9);
    goto LABEL_8;
  }

  v5 = swift_task_alloc();
  v0[51] = v5;
  *v5 = v0;
  v5[1] = sub_10034C9D4;
  v6 = v0[34];

  return sub_10034CBCC(v6);
}

uint64_t sub_10034C948()
{
  *(v0 + 232) = *(v0 + 392);
  sub_10015DA04(&unk_1006C9B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10034C9D4()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return _swift_task_switch(sub_10034CAF4, v3, v2);
}

uint64_t sub_10034CAF4()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);

  (*(v2 + 8))(v1, v3);
  *(v0 + 376) = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  *(v0 + 384) = v4;
  *v4 = v0;
  v4[1] = sub_10034C514;
  v7 = *(v0 + 280);
  v8 = *(v0 + 288);

  return AsyncMerge2Sequence.Iterator.next()(v7, v8, v5, v6);
}

uint64_t sub_10034CBCC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_10015DA04(&qword_1006C8970);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostError();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = sub_10015DA04(&qword_1006C8880);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  sub_10015DA04(&qword_1006C4728);
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for FastSyncStateMachine();
  v2[27] = v7;
  v8 = *(v7 - 8);
  v2[28] = v8;
  v2[29] = *(v8 + 64);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[32] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[33] = v10;
  v2[34] = v9;

  return _swift_task_switch(sub_10034CEE8, v10, v9);
}

uint64_t sub_10034CEE8()
{
  v91 = v0;
  v1 = *(v0 + 64);
  v2 = *(v1 + OBJC_IVAR___ICRealtimeCollaborationController_messageController);
  *(v0 + 280) = v2;
  if (!v2)
  {

LABEL_36:

    v70 = *(v0 + 8);

    return v70();
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
  swift_beginAccess();
  sub_100006038(v1 + v6, v5, &qword_1006C4728);
  v7 = (*(v4 + 48))(v5, 1, v3);
  v8 = *(v0 + 208);
  if (v7 == 1)
  {

    v9 = &qword_1006C4728;
LABEL_35:
    sub_1000073B4(v8, v9);
    goto LABEL_36;
  }

  sub_100354208(*(v0 + 208), *(v0 + 248), type metadata accessor for FastSyncStateMachine);
  v10 = qword_1006BC7A0;

  if (v10 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  v13 = *(v0 + 184);
  v14 = sub_10002597C(v13, qword_1006C46C8);
  (*(v12 + 16))(v11, v14, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = 2;
  if (sub_100353384(v15))
  {
    v16 = *(*(v0 + 192) + 8);
    v16(*(v0 + 200), *(v0 + 184));
  }

  else
  {
    v17 = static os_log_type_t.fault.getter();
    v18 = Logger.logObject.getter();
    v19 = os_log_type_enabled(v18, v17);
    v21 = *(v0 + 192);
    v20 = *(v0 + 200);
    v22 = *(v0 + 184);
    if (v19)
    {
      v88 = *(v0 + 184);
      v23 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v23 = 136315650;
      v24 = StaticString.description.getter();
      v86 = v20;
      v26 = sub_100009D88(v24, v25, &v90);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2048;
      *(v23 + 14) = 705;
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_100009D88(0xD000000000000037, 0x800000010056DB80, &v90);
      _os_log_impl(&_mh_execute_header, v18, v17, "Failed assertion at %s:%lu: %s", v23, 0x20u);
      swift_arrayDestroy();

      v16 = *(v21 + 8);
      v16(v86, v88);
    }

    else
    {

      v16 = *(v21 + 8);
      v16(v20, v22);
    }
  }

  v27 = NSManagedObjectContext.ObjectIDNotification.insertedObjectIDs.getter();
  v28 = NSManagedObjectContext.ObjectIDNotification.updatedObjectIDs.getter();
  sub_10019A0AC(v28, v27);
  v30 = v29;
  *(v0 + 288) = v29;
  if (qword_1006BC7A8 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 184);
  v32 = *(v0 + 192);
  v33 = *(v0 + 176);
  v87 = sub_10002597C(*(v0 + 160), qword_1006C46E0);
  sub_100006038(v87, v33, &qword_1006C8880);
  v84 = *(v32 + 48);
  v89 = v30;
  if (v84(v33, 1, v31) == 1)
  {
    sub_1000073B4(*(v0 + 176), &qword_1006C8880);
  }

  else
  {
    v34 = *(v0 + 64);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 64);
      v38 = swift_slowAlloc();
      v83 = v0;
      v39 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v90 = v81;
      *v38 = 138412546;
      *(v38 + 4) = v37;
      *v39 = v37;
      *(v38 + 12) = 2080;
      sub_1000054A4(0, &qword_1006BFEC0);
      v82 = v16;
      sub_1001C607C();
      v40 = v37;
      v41 = Set.debugDescription.getter();
      v43 = sub_100009D88(v41, v42, &v90);

      *(v38 + 14) = v43;
      v16 = v82;
      _os_log_impl(&_mh_execute_header, v35, v36, "%@: Notified of changed objects: %s", v38, 0x16u);
      sub_1000073B4(v39, &qword_1006C1440);
      v0 = v83;

      sub_100009F60(v81);
    }

    v16(*(v0 + 176), *(v0 + 184));
  }

  v44 = *(v0 + 64);
  v45 = NSManagedObjectContext.ObjectIDNotification.context.getter();
  v46 = [v45 persistentStoreCoordinator];

  v47 = [*(v44 + OBJC_IVAR___ICRealtimeCollaborationController_context) persistentStoreCoordinator];
  v48 = v47;
  if (!v46)
  {
    if (!v47)
    {
      goto LABEL_24;
    }

LABEL_32:

LABEL_33:
    v68 = *(v0 + 184);
    v69 = *(v0 + 168);

    sub_100006038(v87, v69, &qword_1006C8880);
    if (v84(v69, 1, v68) != 1)
    {
      v71 = *(v0 + 64);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = *(v0 + 64);
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138412290;
        *(v75 + 4) = v74;
        *v76 = v74;
        v77 = v74;
        _os_log_impl(&_mh_execute_header, v72, v73, "%@: Ignoring context notification because the PSC doesn't match", v75, 0xCu);
        sub_1000073B4(v76, &qword_1006C1440);
      }

      else
      {
      }

      v78 = *(v0 + 184);
      v79 = *(v0 + 168);
      sub_100354E5C(*(v0 + 248), type metadata accessor for FastSyncStateMachine);
      v16(v79, v78);
      goto LABEL_36;
    }

    v8 = *(v0 + 168);
    sub_100354E5C(*(v0 + 248), type metadata accessor for FastSyncStateMachine);

    v9 = &qword_1006C8880;
    goto LABEL_35;
  }

  if (!v47)
  {
    v48 = v46;
    goto LABEL_32;
  }

  sub_1000054A4(0, &qword_1006C49E0);
  v49 = static NSObject.== infix(_:_:)();

  if ((v49 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_24:
  if (qword_1006BC7B0 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for OSSignposter();
  *(v0 + 296) = sub_10002597C(v50, qword_1006C46F8);
  static OSSignpostID.exclusive.getter();
  v51 = OSSignposter.logHandle.getter();
  v52 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, v52, v54, "Make CKRecords", "", v53, 2u);
  }

  v55 = *(v0 + 240);
  v56 = *(v0 + 248);
  v85 = *(v0 + 224);
  v57 = *(v0 + 144);
  v58 = *(v0 + 152);
  v60 = *(v0 + 120);
  v59 = *(v0 + 128);
  v61 = *(v0 + 64);

  (*(v59 + 16))(v57, v58, v60);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 304) = OSSignpostIntervalState.init(id:isOpen:)();
  v62 = *(v59 + 8);
  *(v0 + 312) = v62;
  *(v0 + 320) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v62(v58, v60);
  sub_100354F74(v56, v55, type metadata accessor for FastSyncStateMachine);
  v63 = (*(v85 + 80) + 32) & ~*(v85 + 80);
  v64 = swift_allocObject();
  *(v0 + 328) = v64;
  *(v64 + 16) = v89;
  *(v64 + 24) = v61;
  sub_100354208(v55, v64 + v63, type metadata accessor for FastSyncStateMachine);
  v65 = v61;

  v66 = swift_task_alloc();
  *(v0 + 336) = v66;
  v67 = sub_10015DA04(&qword_1006BD3E0);
  *v66 = v0;
  v66[1] = sub_10034D9FC;

  return NSManagedObjectContext.perform<A>(_:)(v0 + 40, sub_10035508C, v64, v67);
}

uint64_t sub_10034D9FC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 264);
    v5 = *(v2 + 272);

    return _swift_task_switch(sub_10034DB40, v4, v5);
  }
}

uint64_t sub_10034DB40()
{

  v1 = *(v0 + 40);

  v2 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v3 = static os_signpost_type_t.end.getter();
  v4 = v1 >> 62;
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 96);

    checkForErrorAndConsumeState(state:)();

    if ((*(v6 + 88))(v5, v7) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v8 = 0;
      v9 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
      v9 = "Count: %ld";
      v8 = 1;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    *(v10 + 1) = v8;
    *(v10 + 2) = 2048;
    if (v4)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 4) = v11;

    v12 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v12, "Make CKRecords", v9, v10, 0xCu);
  }

  else
  {
  }

  (*(v0 + 312))(*(v0 + 136), *(v0 + 120));
  if (v4)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = *(v0 + 248);
  if (v13)
  {
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v17 = *(v0 + 72);
    *(v0 + 48) = v1;
    sub_10015DA04(&qword_1006BD3D8);
    AsyncStream.Continuation.yield(_:)();

    (*(v16 + 8))(v15, v17);
    sub_100354E5C(v14, type metadata accessor for FastSyncStateMachine);
  }

  else
  {
    sub_100354E5C(*(v0 + 248), type metadata accessor for FastSyncStateMachine);
  }

  v18 = *(v0 + 8);

  return v18();
}

void sub_10034DEA4(void **a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for FastSyncStateMachine();
  __chkstk_darwin(v10 - 8);
  v12 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10015DA04(&qword_1006C8880);
  v14 = __chkstk_darwin(v13);
  v16 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v130 - v17;
  v19 = *a1;
  v20 = [v19 ic_isModernNoteType];
  v136 = a4;
  if ((v20 & 1) == 0 && ![v19 ic_isBaseAttachmentType])
  {
    goto LABEL_19;
  }

  v137 = v4;
  v138 = 0;
  v21 = [*&a2[OBJC_IVAR___ICRealtimeCollaborationController_context] existingObjectWithID:v19 error:&v138];
  v22 = v138;
  if (!v21)
  {
    v47 = v138;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v5 = 0;
    a4 = v136;
    goto LABEL_19;
  }

  v23 = v21;
  v134 = v12;
  v24 = a3;
  v25 = a2;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  v27 = v22;
  if (!v26 || (v135 = v26, (v28 = [v26 identifier]) == 0))
  {

    a4 = v136;
    v5 = v137;
    a2 = v25;
LABEL_19:
    if (qword_1006BC7A8 != -1)
    {
      swift_once();
    }

    v48 = sub_10002597C(v13, qword_1006C46E0);
    sub_100006038(v48, v16, &qword_1006C8880);
    v49 = type metadata accessor for Logger();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v16, 1, v49) == 1)
    {
      sub_1000073B4(v16, &qword_1006C8880);
      v51 = 0;
    }

    else
    {
      v137 = v5;
      v52 = a2;
      v53 = v19;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412546;
        *(v56 + 4) = v52;
        *(v56 + 12) = 2112;
        *(v56 + 14) = v53;
        *v57 = v52;
        v57[1] = v53;
        v58 = v52;
        v59 = v53;
        _os_log_impl(&_mh_execute_header, v54, v55, "%@: Skipping object because it is not relevant: %@", v56, 0x16u);
        sub_10015DA04(&qword_1006C1440);
        swift_arrayDestroy();

        a4 = v136;
      }

      (*(v50 + 8))(v16, v49);
      v51 = 0;
    }

    goto LABEL_64;
  }

  v29 = v28;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v34 = v30 == EditNoteActivity.noteID.getter() && v32 == v33;
  v133 = v25;
  if (v34)
  {
    v35 = v30;
    goto LABEL_27;
  }

  v35 = v30;
  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_28;
  }

  v37 = v24;
  v38 = v18;
  v39 = [v135 parentCloudObject];
  if (!v39 || (v40 = v39, v41 = [v39 identifier], v40, !v41))
  {
    EditNoteActivity.noteID.getter();
    goto LABEL_45;
  }

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45 = EditNoteActivity.noteID.getter();
  if (!v44)
  {
LABEL_45:

    goto LABEL_46;
  }

  if (v42 == v45 && v44 == v46)
  {

LABEL_27:

    goto LABEL_28;
  }

  v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v129 & 1) == 0)
  {
LABEL_46:

    if (qword_1006BC7A8 != -1)
    {
      swift_once();
    }

    v92 = sub_10002597C(v13, qword_1006C46E0);
    sub_100006038(v92, v38, &qword_1006C8880);
    v93 = type metadata accessor for Logger();
    v94 = *(v93 - 8);
    if ((*(v94 + 48))(v38, 1, v93) == 1)
    {

      sub_1000073B4(v38, &qword_1006C8880);
    }

    else
    {
      v100 = v134;
      sub_100354F74(v37, v134, type metadata accessor for FastSyncStateMachine);
      v101 = v133;
      v102 = v23;
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v132 = v103;
        v106 = v105;
        v107 = swift_slowAlloc();
        v131 = v107;
        v133 = swift_slowAlloc();
        v138 = v133;
        *v106 = 138412802;
        *(v106 + 4) = v101;
        *v107 = v101;
        *(v106 + 12) = 2080;
        v108 = v101;
        v109 = [v135 shortLoggingDescription];
        LODWORD(v135) = v104;
        v110 = v109;
        v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v102;
        v114 = v113;

        v115 = sub_100009D88(v111, v114, &v138);

        *(v106 + 14) = v115;
        *(v106 + 22) = 2080;
        v116 = EditNoteActivity.noteID.getter();
        v118 = v117;
        sub_100354E5C(v100, type metadata accessor for FastSyncStateMachine);
        v119 = sub_100009D88(v116, v118, &v138);

        *(v106 + 24) = v119;
        v120 = v132;
        _os_log_impl(&_mh_execute_header, v132, v135, "%@: Skipping object %s because it isn't parented to note %s", v106, 0x20u);
        sub_1000073B4(v131, &qword_1006C1440);

        swift_arrayDestroy();
      }

      else
      {

        sub_100354E5C(v100, type metadata accessor for FastSyncStateMachine);
      }

      (*(v94 + 8))(v38, v93);
    }

    goto LABEL_63;
  }

LABEL_28:
  v60 = v135;
  if ([v135 isUnsupported])
  {

    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_10002597C(v61, qword_1006C46C8);
    v62 = v133;
    v63 = v23;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v138 = v68;
      *v66 = 138412546;
      *(v66 + 4) = v62;
      *v67 = v62;
      *(v66 + 12) = 2080;
      v69 = v62;
      v70 = [v135 shortLoggingDescription];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = sub_100009D88(v71, v73, &v138);

      *(v66 + 14) = v74;
      v75 = "%@: Skipping record because it is unsupported: %s";
LABEL_59:
      _os_log_impl(&_mh_execute_header, v64, v65, v75, v66, 0x16u);
      sub_1000073B4(v67, &qword_1006C1440);

      sub_100009F60(v68);

LABEL_63:
      v51 = 0;
      a4 = v136;
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if ([v60 needsInitialFetchFromCloudCheckingParent])
  {

    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_10002597C(v76, qword_1006C46C8);
    v77 = v133;
    v63 = v23;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v138 = v68;
      *v66 = 138412546;
      *(v66 + 4) = v77;
      *v67 = v77;
      *(v66 + 12) = 2080;
      v78 = v77;
      v79 = [v135 shortLoggingDescription];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v83 = sub_100009D88(v80, v82, &v138);

      *(v66 + 14) = v83;
      v75 = "%@: Skipping record because it is a placeholder: %s";
      goto LABEL_59;
    }

LABEL_60:

    goto LABEL_63;
  }

  if ([v60 isSharedViaICloud] && (objc_msgSend(v60, "isSharedReadOnly") & 1) != 0)
  {

    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_10002597C(v84, qword_1006C46C8);
    v85 = v133;
    v63 = v23;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v138 = v68;
      *v66 = 138412546;
      *(v66 + 4) = v85;
      *v67 = v85;
      *(v66 + 12) = 2080;
      v86 = v85;
      v87 = [v135 shortLoggingDescription];
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      v91 = sub_100009D88(v88, v90, &v138);

      *(v66 + 14) = v91;
      v75 = "%@: Skipping record because the current user does not have write permissions: %s";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  v95 = [v60 hasAllMandatoryFields];
  if (!v95)
  {

    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v121 = type metadata accessor for Logger();
    sub_10002597C(v121, qword_1006C46C8);
    v122 = v133;
    v63 = v23;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v138 = v68;
      *v66 = 138412546;
      *(v66 + 4) = v122;
      *v67 = v122;
      *(v66 + 12) = 2080;
      v123 = v122;
      v124 = [v135 shortLoggingDescription];
      v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v126;

      v128 = sub_100009D88(v125, v127, &v138);

      *(v66 + 14) = v128;
      v75 = "%@: Skipping record because it is missing mandatory fields: %s";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  v96 = *&v133[OBJC_IVAR___ICRealtimeCollaborationController_mergeableFieldStateCache];
  __chkstk_darwin(v95);
  *(&v130 - 4) = v35;
  *(&v130 - 3) = v32;
  *(&v130 - 2) = v98;
  *(&v130 - 1) = v97;
  os_unfair_lock_lock((v96 + 24));
  v99 = v137;
  sub_100355168((v96 + 16), &v138);
  if (!v99)
  {
    os_unfair_lock_unlock((v96 + 24));

    v51 = v138;
    a4 = v136;
LABEL_64:
    *a4 = v51;
    return;
  }

  os_unfair_lock_unlock((v96 + 24));
  __break(1u);
}

uint64_t sub_10034ED9C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v123 = a6;
  v129 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v124 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10015DA04(&qword_1006C8880);
  v14 = __chkstk_darwin(v13);
  v16 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v130 = &v114 - v18;
  __chkstk_darwin(v17);
  v20 = &v114 - v19;
  v120 = a1;
  v21 = *a1;
  v22 = v21[2];
  v115 = v16;
  if (v22 && (v23 = sub_1002DF11C(a2, a3), (v24 & 1) != 0))
  {
    v25 = *(v21[7] + 8 * v23);
  }

  else
  {
    v25 = [objc_allocWithZone(NSMutableDictionary) init];
  }

  v26 = v25;
  [v25 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v117 = sub_1000054A4(0, &qword_1006C49E8);
  v27 = swift_dynamicCast();
  v28 = v136;
  if (!v27)
  {
    v28 = 0;
  }

  v133 = v28;
  if (qword_1006BC7A8 != -1)
  {
    swift_once();
  }

  v127 = sub_10002597C(v13, qword_1006C46E0);
  sub_100006038(v127, v20, &qword_1006C8880);
  v29 = v11;
  v125 = *(v11 + 48);
  v126 = v11 + 48;
  v30 = v125(v20, 1, v10);
  v128 = v10;
  v121 = v11;
  v122 = v26;
  v131 = a2;
  v132 = a5;
  v119 = a3;
  if (v30 == 1)
  {
    sub_1000073B4(v20, &qword_1006C8880);
  }

  else
  {
    v31 = v129;
    v32 = a5;
    v33 = v26;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v134 = v118;
      *v36 = 138412802;
      *(v36 + 4) = v31;
      *v37 = v31;
      *(v36 + 12) = 2080;
      v38 = v31;
      v39 = [v32 shortLoggingDescription];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_100009D88(v40, v42, &v134);

      *(v36 + 14) = v43;
      *(v36 + 22) = 2112;
      *(v36 + 24) = v33;
      v37[1] = v33;
      v44 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "%@: Previous field state for object %s: %@", v36, 0x20u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();

      sub_100009F60(v118);

      v29 = v121;
    }

    v10 = v128;
    (*(v29 + 8))(v20, v128);
    a2 = v131;
  }

  v45 = a2;
  v46 = v124;
  if (qword_1006BC7A0 != -1)
  {
    swift_once();
  }

  v47 = sub_10002597C(v10, qword_1006C46C8);
  (*(v29 + 16))(v46, v47, v10);
  v48 = swift_allocObject();
  *(v48 + 16) = 2;
  v49 = v29;
  v50 = v133;
  v51 = v133;
  v52 = v129;
  v53 = v122;
  LOBYTE(v50) = sub_100355188(v48, v53, v50);
  v129 = v53;

  v122 = v52;
  if (v50)
  {

    v118 = *(v49 + 8);
    (v118)(v46, v10);

    v54 = v45;
    v55 = v132;
  }

  else
  {
    v56 = v49;
    v57 = static os_log_type_t.fault.getter();
    v58 = Logger.logObject.getter();
    if (os_log_type_enabled(v58, v57))
    {
      v59 = swift_slowAlloc();
      v116 = v51;
      v60 = v59;
      v118 = swift_slowAlloc();
      v136 = v118;
      *v60 = 136315650;
      v61 = StaticString.description.getter();
      v63 = sub_100009D88(v61, v62, &v136);

      *(v60 + 4) = v63;
      *(v60 + 12) = 2048;
      *(v60 + 14) = 775;
      *(v60 + 22) = 2080;
      v134 = 0;
      v135 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v52 = v122;
      v64 = [v122 description];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v114) = v57;
      v67 = v66;

      v68._countAndFlagsBits = v65;
      v10 = v128;
      v68._object = v67;
      String.append(_:)(v68);
      v69 = v121;

      v70._object = 0x800000010056DBC0;
      v70._countAndFlagsBits = 0xD00000000000003ELL;
      String.append(_:)(v70);
      v71 = sub_100009D88(v134, v135, &v136);

      *(v60 + 24) = v71;
      _os_log_impl(&_mh_execute_header, v58, v114, "Failed assertion at %s:%lu: %s", v60, 0x20u);
      swift_arrayDestroy();

      v51 = v116;

      v72 = *(v69 + 8);
      v73 = v124;
    }

    else
    {
      v52 = v122;

      v72 = *(v56 + 8);
      v73 = v46;
    }

    v118 = v72;
    (v72)(v73, v10);

    v54 = v131;
    v55 = v132;
  }

  v74 = v129;
  v124 = [v55 makeCloudKitRecordForApproach:1 mergeableFieldState:v74];
  v75 = v130;
  sub_100006038(v127, v130, &qword_1006C8880);
  if (v125(v75, 1, v10) == 1)
  {
    sub_1000073B4(v75, &qword_1006C8880);
    if (!v133)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v116 = v51;
    v76 = v52;
    v77 = v55;
    v78 = v74;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();

    v114 = v79;
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v134 = v83;
      *v81 = 138412802;
      *(v81 + 4) = v76;
      *v82 = v76;
      *(v81 + 12) = 2080;
      v84 = v76;
      v85 = [v77 shortLoggingDescription];
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      v89 = sub_100009D88(v86, v88, &v134);

      *(v81 + 14) = v89;
      *(v81 + 22) = 2112;
      *(v81 + 24) = v78;
      v82[1] = v129;
      v90 = v78;
      v91 = v114;
      _os_log_impl(&_mh_execute_header, v114, v80, "%@: Next field state for object %s: %@", v81, 0x20u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();

      sub_100009F60(v83);
    }

    else
    {
    }

    v54 = v131;
    v51 = v116;
    v10 = v128;
    (v118)(v130, v128);
    v55 = v132;
    if (!v133)
    {
      goto LABEL_32;
    }
  }

  v92 = v74;
  v93 = v51;
  v94 = static NSObject.== infix(_:_:)();

  if ((v94 & 1) == 0)
  {
LABEL_32:
    v97 = v119;

    v98 = v120;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = *v98;
    sub_1002E6E94(v74, v54, v97, isUniquelyReferenced_nonNull_native);

    *v98 = v134;
    v100 = v124;
    goto LABEL_37;
  }

  v95 = v115;
  sub_100006038(v127, v115, &qword_1006C8880);
  if (v125(v95, 1, v10) == 1)
  {

    result = sub_1000073B4(v95, &qword_1006C8880);
  }

  else
  {
    v101 = v122;
    v102 = v55;
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v132 = v106;
      v133 = swift_slowAlloc();
      v134 = v133;
      *v105 = 138412546;
      *(v105 + 4) = v101;
      *v106 = v101;
      *(v105 + 12) = 2080;
      v107 = v101;
      v108 = [v102 shortLoggingDescription];
      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v110 = v95;
      v112 = v111;

      v113 = sub_100009D88(v109, v112, &v134);
      v95 = v110;

      *(v105 + 14) = v113;
      _os_log_impl(&_mh_execute_header, v103, v104, "%@: Skipping object %s because nothing has changed", v105, 0x16u);
      sub_1000073B4(v132, &qword_1006C1440);

      sub_100009F60(v133);
    }

    result = (v118)(v95, v128);
  }

  v100 = 0;
LABEL_37:
  *v123 = v100;
  return result;
}

void sub_10034FA84(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v37 = a4;
  v34 = a3;
  v6 = type metadata accessor for UUID();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EditNoteActivity();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006C1420);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = a1;
  GroupSession.activity.getter();
  EditNoteActivity.noteID.getter();
  v14 = *(v10 + 8);
  v14(v12, v9);
  v15 = String._bridgeToObjectiveC()();

  v16 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v15 context:a2];

  if (v16)
  {
    sub_10015DA04(&unk_1006BD390);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100534670;
    *(v17 + 32) = Int64._bridgeToObjectiveC()();
    GroupSession.id.getter();
    UUID.uuidString.getter();
    (*(v35 + 8))(v8, v36);
    v18 = String._bridgeToObjectiveC()();

    sub_1000054A4(0, &qword_1006C3F30);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_10034FF3C();
    v20 = Int._bridgeToObjectiveC()().super.super.isa;
    GroupSession.activeParticipants.getter();

    v21 = Int._bridgeToObjectiveC()().super.super.isa;
    [v37 submitFastSyncSessionStartForNote:v16 sessionID:v18 participantVersions:isa numUniqueAccounts:v20 numUniqueDevices:v21];
  }

  else
  {
    v22 = v34;
    v36 = v14;
    v37 = v9;
    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10002597C(v23, qword_1006C46C8);
    v24 = v22;

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v28 = v24;
      *(v27 + 12) = 2080;
      v29 = v24;
      GroupSession.activity.getter();
      v30 = EditNoteActivity.noteID.getter();
      v32 = v31;
      v36(v12, v37);
      v33 = sub_100009D88(v30, v32, &v39);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "%@: Couldn't find note with %s in the MOC. Not submitting analytics.", v27, 0x16u);
      sub_1000073B4(v28, &qword_1006C1440);

      sub_100009F60(v35);
    }
  }
}

uint64_t sub_10034FF3C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100352F54())
  {
    v4 = GroupSession.activeParticipants.getter();
    v5 = sub_10033A6F8(v4);

    v6 = sub_10026FDD0(v5);

    v7 = *(v6 + 16);
  }

  else
  {
    static Logger.realtimeCollaboration.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = -1;
      _os_log_impl(&_mh_execute_header, v8, v9, "Detected a scenario where the unique accounts couldn't be reliably detected. Returning %ld.", v10, 0xCu);
    }

    (*(v1 + 8))(v3, v0);
    return -1;
  }

  return v7;
}

void sub_1003500E0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v44 = a2;
  v41 = a5;
  v42 = a6;
  v43 = a4;
  v38 = a3;
  v6 = type metadata accessor for UUID();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EditNoteActivity();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006C1420);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  GroupSession.activity.getter();
  EditNoteActivity.noteID.getter();
  v14 = *(v10 + 8);
  v14(v12, v9);
  v15 = String._bridgeToObjectiveC()();

  v16 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v15 context:v44];

  if (v16)
  {
    v17 = v16;
    sub_10015DA04(&unk_1006BD390);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100534670;
    *(v18 + 32) = Int64._bridgeToObjectiveC()();
    GroupSession.id.getter();
    UUID.uuidString.getter();
    (*(v39 + 8))(v8, v40);
    v19 = String._bridgeToObjectiveC()();

    sub_1000054A4(0, &qword_1006C3F30);
    v20.super.isa = Array._bridgeToObjectiveC()().super.isa;

    sub_10034FF3C();
    v21.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
    GroupSession.activeParticipants.getter();

    v22.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
    if (v41)
    {
      v23 = _convertErrorToNSError(_:)();
      [v23 code];

      v24.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
    }

    else
    {
      v24.super.super.isa = 0;
    }

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v43 submitFastSyncSessionEndForNote:v17 sessionID:v19 participantVersions:v20.super.isa numUniqueAccounts:v21.super.super.isa numUniqueDevices:v22.super.super.isa errorCode:v24.super.super.isa numIgnoredMessages:isa];
  }

  else
  {
    v25 = v38;
    v43 = v14;
    v44 = v9;
    if (qword_1006BC7A0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10002597C(v26, qword_1006C46C8);
    v27 = v25;

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v30 = 138412546;
      *(v30 + 4) = v27;
      *v31 = v27;
      *(v30 + 12) = 2080;
      v32 = v27;
      GroupSession.activity.getter();
      v33 = EditNoteActivity.noteID.getter();
      v35 = v34;
      v43(v12, v44);
      v36 = sub_100009D88(v33, v35, &v45);

      *(v30 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "%@: Couldn't find note with %s in the MOC. Not submitting analytics.", v30, 0x16u);
      sub_1000073B4(v31, &qword_1006C1440);

      sub_100009F60(v42);
    }
  }
}

uint64_t RealtimeCollaborationController.description.getter()
{
  swift_getObjectType();
  v4 = _typeName(_:qualified:)();
  v0._countAndFlagsBits = 91;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4;
}

unint64_t sub_100350768(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000019;
  if (a2 <= 1u)
  {
    v4 = 0xD000000000000014;
    if (a1 != 1)
    {
      v4 = 0xD000000000000019;
    }

    if (a1)
    {
      v2 = v4;
    }

    if (a2)
    {
      return v2;
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  else if (a2 == 2)
  {
    return 0xD000000000000022;
  }

  else if (a2 == 3)
  {
    return 0xD000000000000013;
  }

  else
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD000000000000025;
    if (!a1)
    {
      v6 = 0xD000000000000016;
    }

    if (a1 <= 1)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_100350884(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      return 0x20676E696E696F4ALL;
    }

    if (a1 == 1)
    {
      return 0x657669746341;
    }

    if (a1)
    {
      return 0x6164696C61766E49;
    }

    return 0x746E6573657250;
  }

  if (a2 == 2)
  {
    return 0x676E697972746552;
  }

  if (a2 == 3)
  {
    return 1952867660;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      return 0x676E697661654CLL;
    }

    return 0x746E6573657250;
  }

  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x676E697472617453;
  }
}

void *sub_1003509B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v37 = a2;
  v38 = a3;
  v36 = *v3;
  v6 = sub_10015DA04(&unk_1006C5F10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100458790(_swiftEmptyArrayStorage);
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  *(v3 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_activeParticipants) = v10;
  *(v3 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_collaboratorDataSourceObservation) = 0;
  v11 = [objc_opt_self() sharedContext];
  if (!v11 || (v12 = v11, v13 = [v11 managedObjectContext], v12, !v13))
  {
    type metadata accessor for ICError(0);
    v41 = 225;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_100353E94(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v23 = type metadata accessor for EditNoteActivity();
    (*(*(v23 - 8) + 8))(a1, v23);
LABEL_8:

    swift_deallocPartialClassInstance();
    return v4;
  }

  v34 = v7;
  EditNoteActivity.noteID.getter();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() noteWithIdentifier:v15 context:v14];

  v35 = v14;
  if (!v16)
  {
    type metadata accessor for ICError(0);
    v41 = 232;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v26;
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v39 = 0xD000000000000020;
    v40 = 0x800000010056D9A0;
    v27._countAndFlagsBits = EditNoteActivity.noteID.getter();
    String.append(_:)(v27);

    v28 = v39;
    v29 = v40;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v28;
    *(inited + 56) = v29;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &unk_1006BFA10);
    sub_100353E94(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v30 = type metadata accessor for EditNoteActivity();
    (*(*(v30 - 8) + 8))(a1, v30);
    goto LABEL_8;
  }

  v17 = a1;
  v33 = a1;
  v18 = OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_activity;
  v32 = type metadata accessor for EditNoteActivity();
  v36 = *(v32 - 8);
  (*(v36 + 16))(v4 + v18, v17, v32);
  *(v4 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_note) = v16;
  *(v4 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_messageController) = v37;
  type metadata accessor for CollaborationParticipantDataSource();
  swift_allocObject();
  v19 = v16;

  *(v4 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_participantDataSource) = sub_100026BC0(v19);
  v20 = v38;
  *(v4 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_cloudConfiguration) = v38;
  swift_beginAccess();

  v21 = v20;
  sub_10015DA04(&qword_1006C49B0);
  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_1000060B4(&unk_1006C5F20, &unk_1006C5F10);
  v22 = Publisher<>.sink(receiveValue:)();

  (*(v36 + 8))(v33, v32);
  (*(v34 + 8))(v9, v6);
  *(v4 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_collaboratorDataSourceObservation) = v22;

  return v4;
}

uint64_t sub_1003510B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;

    v3 = sub_1002704D8(v2);

    *(v1 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_activeParticipants) = v3;
  }

  return result;
}

uint64_t sub_100351148()
{
  *(v0 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_collaboratorDataSourceObservation) = 0;

  v1 = OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_activity;
  v2 = type metadata accessor for EditNoteActivity();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10035121C()
{
  sub_100351148();

  return swift_deallocClassInstance();
}

uint64_t sub_100351270()
{
  v1 = sub_10015DA04(&qword_1006BCE70);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = *(*(v0 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_messageController) + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_paperKitInbox);
  (*(v2 + 104))(&v11[-v6], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v1);
  (*(v2 + 16))(v5, v7, v1);
  sub_10015DA04(&qword_1006BCE78);
  swift_allocObject();

  v9 = sub_1001764D8(v5);
  os_unfair_lock_lock((v8 + 24));
  sub_1003541EC((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
  (*(v2 + 8))(v7, v1);

  return v9;
}

void sub_100351424(uint64_t a1, unint64_t a2)
{
  v5 = sub_10015DA04(&qword_1006C4910);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      v11 = [*(v2 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_cloudConfiguration) fastSyncMaximumThumbnailMessageSizeBytes];
      goto LABEL_11;
    }

    LODWORD(v10) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v11 = [*(v2 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_cloudConfiguration) fastSyncMaximumThumbnailMessageSizeBytes];
      v10 = v10;
LABEL_11:
      if (v11 < v10)
      {
        goto LABEL_16;
      }

LABEL_14:
      v23[0] = a1;
      v23[1] = a2;

      sub_1001C4E38(a1, a2);
      sub_10015DA04(&qword_1006BD3A8);
      AsyncStream.Continuation.yield(_:)();

      (*(v6 + 8))(v8, v5);
      return;
    }

    goto LABEL_22;
  }

  if (v9 == 2)
  {
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v10 = v12 - v13;
    if (__OFSUB__(v12, v13))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = [*(v2 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_cloudConfiguration) fastSyncMaximumThumbnailMessageSizeBytes];
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v17)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = [*(v2 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_cloudConfiguration) fastSyncMaximumThumbnailMessageSizeBytes];
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_16:
  v18 = v11;
  if (qword_1006BC7A0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10002597C(v19, qword_1006C46C8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    *(v22 + 4) = v10;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v20, v21, "Dropping PaperKit thumbnail (%ld bytes) because it exceeds the maximum size (%ld bytes)", v22, 0x16u);
  }
}

uint64_t sub_10035172C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C4910);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[0] = a1;
  v9[1] = a2;

  sub_1001C4E38(a1, a2);
  sub_10015DA04(&qword_1006BD3A8);
  AsyncStream.Continuation.yield(_:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003518A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100351270();
  *a1 = result;
  return result;
}

uint64_t sub_1003518C8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_note);
  v6 = [v5 currentReplicaID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v8 = [v5 userIDForReplicaID:isa];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

void sub_100351A08()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_note);
  v2 = [v1 collaborationColorManager];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 highlightColorForUserID:v3 note:v1];

  if (v4)
  {
    [v4 CGColor];
  }

  else
  {
    __break(1u);
  }
}

id sub_100351AC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_note);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 participantForUserID:v2];

  if (v3)
  {
    v4 = [v3 ic_activityStreamDisplayName];

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v3;
}

uint64_t sub_100351B68(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return _swift_task_switch(sub_100351C08, v7, v6);
}

uint64_t sub_100351C08()
{
  v1 = v0[6];
  type metadata accessor for CollaboratorStatusView();
  v2 = *(v1 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_note);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 participantForUserID:v3];
  v0[10] = v4;

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_100351D00;
  v6.n128_u64[0] = v0[4];
  v7.n128_u64[0] = v0[5];

  return static CollaboratorStatusView.fetchAvatarImage(for:size:)(v4, v6, v7);
}

uint64_t sub_100351D00(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(*v1 + 96) = a1;

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return _swift_task_switch(sub_100351E48, v5, v4);
}

void sub_100351E48()
{
  v1 = *(v0 + 96);
  if (v1)
  {

    v2 = *(v0 + 8);

    v2(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100351EB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_note);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 participantForUserID:v2];

  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC11MobileNotesP33_E07F89DCE46C5F892A566AF9072F727B39RealtimeCollaborationPaperKitController_activeParticipants);

    v5 = sub_10033AC60(v3, v4, &qword_1006C5F80);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100351F64()
{
  _StringGuts.grow(_:)(52);
  v0._object = 0x800000010056D480;
  v0._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v0);
  type metadata accessor for EditNoteActivity();
  sub_100353E94(&qword_1006BFD10, &type metadata accessor for EditNoteActivity);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0;
}

uint64_t sub_100352050(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  result = __chkstk_darwin(v3);
  v5 = v1[1];
  if (v5 >> 62)
  {
    if (v5 >> 62 == 2)
    {
      type metadata accessor for CancellationError();
      sub_100353E94(&qword_1006C4950, &type metadata accessor for CancellationError);
      swift_allocError();
      CancellationError.init()();
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = *v1;
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v6;
    v8[4] = a1;
    aBlock[4] = sub_100354DFC;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10028DCE8;
    aBlock[3] = &unk_1006586E0;
    _Block_copy(aBlock);
    aBlock[7] = _swiftEmptyArrayStorage;

    sub_100354E08(v6, v5);
    sub_100353E94(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);

    sub_10015DA04(&unk_1006C3F20);
    sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v9 = DispatchWorkItem.init(flags:block:)();
    sub_100354D00(v6, v5);

    swift_beginAccess();
    *(v7 + 16) = v9;

    swift_retain_n();

    result = v9;
    *v1 = v9;
    v1[1] = a1 | 0x4000000000000000;
  }

  return result;
}

void sub_10035237C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10015DA04(&qword_1006C4958);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = dispatch thunk of DispatchWorkItem.isCancelled.getter();

  if (v9)
  {
    return;
  }

  GroupSession.join()();
  swift_beginAccess();
  if (!*(a1 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = dispatch thunk of DispatchWorkItem.isCancelled.getter();

  if (v10)
  {
    GroupSession.leave()();
  }

  else
  {
    v11 = *(a3 + 16);
    v12 = *(*v11 + class metadata base offset for ManagedBuffer + 16);
    v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v11 + v13));
    if (!(*(v6 + 48))(v11 + v12, 1, v5))
    {
      (*(v6 + 16))(v8, v11 + v12, v5);
      CheckedContinuation.resume(returning:)();
      (*(v6 + 8))(v8, v5);
    }

    sub_1000073B4(v11 + v12, &qword_1006C4960);
    (*(v6 + 56))(v11 + v12, 1, 1, v5);
    os_unfair_lock_unlock((v11 + v13));
  }
}

uint64_t sub_1003525CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003525F0, 0, 0);
}

uint64_t sub_1003525F0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1003526E4;
  v3 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x3A6E6F286E696F6ALL, 0xE900000000000029, sub_100354D68, v1, &type metadata for () + 8);
}

uint64_t sub_1003526E4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100352820, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100352820()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100352884(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 8);
  sub_100354D70(&a2[4], &v4);
  os_unfair_lock_unlock(a2 + 8);

  OS_dispatch_queue.async(execute:)();
}

void sub_10035293C(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  sub_100352994((a1 + 16));

  os_unfair_lock_unlock((a1 + 32));
}

void sub_100352994(uint64_t *a1)
{
  v3 = a1[1];
  if (v3 >> 62 != 1)
  {
    sub_100354D00(*a1, v3);
    goto LABEL_7;
  }

  v4 = v3 & 0x3FFFFFFFFFFFFFFFLL;
  if (dispatch thunk of DispatchWorkItem.isCancelled.getter())
  {

LABEL_7:
    *a1 = xmmword_100539600;
    return;
  }

  dispatch thunk of DispatchWorkItem.cancel()();
  type metadata accessor for CancellationError();
  sub_100353E94(&qword_1006C4950, &type metadata accessor for CancellationError);
  v5 = swift_allocError();
  v6 = CancellationError.init()();
  v10[1] = v10;
  v10[3] = v5;
  v7 = *(v4 + 16);
  __chkstk_darwin(v6);
  v8 = *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_100354D4C(v7 + v8);
  if (!v1)
  {
    os_unfair_lock_unlock((v7 + v9));

    goto LABEL_7;
  }

  os_unfair_lock_unlock((v7 + v9));
  __break(1u);
}

uint64_t sub_100352B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v22 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10015DA04(&qword_1006C2178);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - v12;
  (*(v11 + 16))(&v18 - v12, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_10035482C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_100658578;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100353E94(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v7 + 8))(v9, v20);
}

uint64_t sub_100352F0C()
{
  GroupSession.leave()();
  sub_10015DA04(&qword_1006C2178);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100352F54()
{
  v41 = type metadata accessor for UUID();
  v1 = *(v41 - 8);
  v2 = __chkstk_darwin(v41);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v39 = &v34 - v4;
  v5 = type metadata accessor for Participant();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v42 = v0;
  v11 = GroupSession.activeParticipants.getter();
  v12 = v11;
  v13 = v11 + 56;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 56);
  v17 = (v14 + 63) >> 6;
  v46 = (v6 + 8);
  v47 = v6 + 16;
  v35 = (v1 + 8);

  v19 = 0;
  v37 = result;
  v38 = v6;
  v45 = v10;
  v34 = v5;
  while (v16)
  {
LABEL_10:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    (*(v6 + 16))(v10, *(v12 + 48) + *(v6 + 72) * (v21 | (v19 << 6)), v5);
    v22 = Participant.handle.getter();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      result = (*v46)(v10, v5);
    }

    else
    {
      v26 = v39;
      Participant.id.getter();
      v27 = v36;
      GroupSession.localParticipant.getter();
      v28 = v40;
      Participant.id.getter();
      v44 = *v46;
      v44(v27, v5);
      sub_100353E94(&qword_1006C1820, &type metadata accessor for UUID);
      v29 = v41;
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *v35;
      v31 = v28;
      v6 = v38;
      (*v35)(v31, v29);
      v32 = v26;
      v12 = v37;
      v30(v32, v29);
      v5 = v34;
      result = v44(v45, v34);
      v10 = v45;
      if ((v43 & 1) == 0)
      {
        v33 = 0;
LABEL_16:

        return v33;
      }
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      v33 = 1;
      goto LABEL_16;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100353304(void *a1)
{

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_100353384(uint64_t a1)
{
  v2 = type metadata accessor for TaskPriority();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v11 = *(a1 + 16);
  v9 = (a1 + 16);
  v10 = v11;
  if (v11 == 2)
  {
    static Task<>.currentPriority.getter();
    static TaskPriority.userInitiated.getter();
    v10 = static TaskPriority.>= infix(_:_:)();
    v12 = *(v3 + 8);
    v12(v6, v2);
    v12(v8, v2);
    swift_beginAccess();
    *v9 = v10 & 1;
  }

  return v10 & 1;
}

uint64_t sub_1003534D4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1003535C8;

  return v5(v2 + 32);
}

uint64_t sub_1003535C8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1003536DC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10015DA04(&qword_1006C4958);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    v8 = *a2;
    (*(v5 + 16))(v7, a1, v4);
    v10[1] = v8;
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
    (*(v5 + 8))(v7, v4);
  }

  sub_1000073B4(a1, &qword_1006C4960);
  return (*(v5 + 56))(a1, 1, 1, v4);
}

uint64_t sub_100353858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a3;
  v20[1] = a1;
  v4 = sub_10015DA04(&qword_1006C4960);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  v10 = sub_10015DA04(&qword_1006C4958);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  v14 = *(v11 + 16);
  v14(v20 - v12, a2, v10);
  sub_10015DA04(&qword_1006C4968);
  v15 = swift_allocObject();
  v14(v9, v13, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_10015DA04(&qword_1006C4970);
  v16 = swift_allocObject();
  *(v16 + ((*(*v16 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_100006038(v9, v7, &qword_1006C4960);
  (*(v11 + 8))(v13, v10);
  sub_1000073B4(v9, &qword_1006C4960);
  sub_100354D8C(v7, v16 + *(*v16 + class metadata base offset for ManagedBuffer + 16));
  *(v15 + 16) = v16;
  v17 = v20[3];
  v18 = sub_100352050(v15);

  if (!v17)
  {
    *v20[0] = v18;
  }

  return result;
}

uint64_t sub_100353B40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(type metadata accessor for FastSync.SelectionMessage() - 8);
  v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  while (1)
  {
    v7 = FastSync.SelectionMessage.selectionStateData.getter();
    v9 = v8;
    v10 = RealtimeCollaborationSelectionDocument.merge(with:)();
    sub_10019671C(v7, v9);
    if (v10)
    {
      break;
    }

    ++v3;
    v5 += v6;
    if (v1 == v3)
    {
      return 0;
    }
  }

  return v3;
}

id sub_100353C4C(void *a1)
{
  v10 = &type metadata for TelephonyUtilitiesFeature;
  v11 = sub_100025AC8();
  v7 = "sharePlayLite";
  v8 = 13;
  v9 = 2;
  v2 = isFeatureEnabled(_:)();
  sub_100009F60(&v7);
  if ((v2 & 1) == 0 || (v10 = &type metadata for NotesFeature, v11 = sub_100025864(), v7 = "RealtimeCollaboration", v8 = 21, v9 = 2, v3 = isFeatureEnabled(_:)(), sub_100009F60(&v7), (v3 & 1) == 0) || ([objc_opt_self() isRunningUnitTests] & 1) != 0 || (result = objc_msgSend(a1, "fastSyncEnabled"), !result))
  {
    v5 = type metadata accessor for FastSyncError();
    sub_100353E94(&qword_1006C8910, &type metadata accessor for FastSyncError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for FastSyncError.fastSyncDisabled(_:), v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100353DD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A1FC;

  return sub_10034C14C(a1, v4, v5, v7, v6);
}

uint64_t sub_100353E94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100353EDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A1FC;

  return sub_10033E600(a1);
}

uint64_t sub_100353F78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A1FC;

  return sub_10033FB70(a1);
}

uint64_t sub_100354014(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A600;

  return sub_100341290(a1);
}

uint64_t sub_1003540E0()
{
  result = type metadata accessor for EditNoteActivity();
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

uint64_t sub_100354208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100354270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A1FC;

  return sub_100341BA4(a1, v4, v5, v6, v7);
}

uint64_t sub_100354338(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000A600;

  return sub_100345F84(a1, a2, v6, v7, v8);
}

uint64_t sub_1003543FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A1FC;

  return sub_100346478(a1, v4, v5, v7, v6);
}

uint64_t sub_1003544BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A1FC;

  return sub_1003472BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100354584(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000A1FC;

  return sub_100348490(a1, a2, v6, v7, v8);
}

uint64_t sub_10035464C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10035469C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A1FC;

  return sub_100348BF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100354764(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A1FC;

  return sub_100349400(a1, v4, v5, v7, v6);
}

uint64_t sub_10035482C()
{
  sub_10015DA04(&qword_1006C2178);

  return sub_100352F0C();
}

uint64_t sub_10035489C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A1FC;

  return sub_1000061F4(a1, v4);
}

void sub_100354954()
{
  v1 = *(type metadata accessor for EditNoteActivity() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10034AA4C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100354A2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100354A74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A1FC;

  return sub_10034A520(a1, v4, v5, v7, v6);
}

uint64_t sub_100354B54(uint64_t a1)
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
  v10[1] = sub_10000A1FC;

  return sub_10034A7B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100354C4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A1FC;

  return sub_1003525CC(a1, v5, v4);
}

uint64_t sub_100354D00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_100354D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C4960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100354E08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_100354E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100354EBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A1FC;

  return sub_1003534D4(a1, v4);
}

uint64_t sub_100354F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100354FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5 >> 61;
  if ((a5 >> 61) <= 1)
  {
    if (v5 > 1)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v5 == 2)
  {
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      swift_unknownObjectRelease();
    }

    return result;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_11:
}

id sub_10035508C@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FastSyncStateMachine() - 8);
  v4 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v11 = *(v1 + 24);
  v5 = v11;
  v12 = v6;
  sub_100400C78(sub_10035514C, &v10, v4);
  v8 = v7;
  result = [*(v5 + OBJC_IVAR___ICRealtimeCollaborationController_context) reset];
  *a1 = v8;
  return result;
}

uint64_t sub_100355188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 16);
  v4 = *(a1 + 16);
  if (v4 == 2)
  {
    if (a3)
    {
      sub_1000054A4(0, &qword_1006C49E8);
      LOBYTE(v4) = static NSObject.== infix(_:_:)();
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    swift_beginAccess();
    *v3 = v4 & 1;
  }

  return v4 & 1;
}

uint64_t sub_100355230(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100355248(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_100355264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003552AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1003552F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100355324(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100355378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1003553D4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t type metadata accessor for TagAssignmentDataSource()
{
  result = qword_1006C4A00;
  if (!qword_1006C4A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1003554B4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &a1[OBJC_IVAR___ICTagContainerCell_selectionDidChange];
  v7 = *&a1[OBJC_IVAR___ICTagContainerCell_selectionDidChange];
  *v6 = a4;
  v6[1] = a5;
  sub_1001C71A4(a4);
  result = sub_1002B5F48(v7);
  v9 = a1[OBJC_IVAR___ICTagContainerCell_includesAllTagsItem];
  a1[OBJC_IVAR___ICTagContainerCell_includesAllTagsItem] = 0;
  if (v9 == 1)
  {
    result = [a1 setNeedsUpdateConfiguration];
  }

  v10 = a1[OBJC_IVAR___ICTagContainerCell_hasGroupInset];
  a1[OBJC_IVAR___ICTagContainerCell_hasGroupInset] = 1;
  if ((v10 & 1) == 0)
  {
    [a1 setNeedsLayout];
    [a1 layoutIfNeeded];

    return [a1 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_10035559C()
{
  type metadata accessor for TagContainerCell();
  v0 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  v1 = OBJC_IVAR___ICTagContainerCell_allowsContextualMenu;
  *(v0 + OBJC_IVAR___ICTagContainerCell_allowsContextualMenu) = 0;
  v2 = sub_1002B3F04();
  v2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_allowsContextualMenu] = *(v0 + v1);

  return v0;
}

id sub_100355634(char *a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = &a1[OBJC_IVAR___ICTagDetailCell_text];
  *v8 = v5;
  v8[1] = v7;

  if (*&a1[OBJC_IVAR___ICTagDetailCell_attributedText] && v8[1])
  {
    sub_1003FB458(0);
  }

  return [a1 setNeedsUpdateConfiguration];
}

uint64_t sub_100355740(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10015DA04(&unk_1006C3FD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100355934();
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10018031C(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  v15 = *(v3 + qword_1006C49F0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17 = [v15 cellForItemAtIndexPath:isa];

  if (v17)
  {
    type metadata accessor for TagContainerCell();
    if (swift_dynamicCastClass())
    {
      sub_1002B49B8(a1 & 1, a2, a3);
    }
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100355934()
{
  v1 = sub_10015DA04(&qword_1006C4A68);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-v3];
  sub_100356258();
  sub_1003562AC();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10064C328);
  v5 = *(v0 + qword_1006C49F8);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 allVisibleHashtagsInContext:v7];
    sub_100356300();
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10)
    {
      v12[15] = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }
  }

  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  return (*(v2 + 8))(v4, v1);
}

void sub_100355B20()
{
  v1 = *(v0 + qword_1006C49F8);
}

void sub_100355B60(uint64_t a1)
{
  v2 = *(a1 + qword_1006C49F8);
}

void sub_100355BAC()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

unint64_t sub_100355C10()
{
  result = qword_1006C4A50;
  if (!qword_1006C4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4A50);
  }

  return result;
}

unint64_t sub_100355C68()
{
  result = qword_1006C4A58;
  if (!qword_1006C4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4A58);
  }

  return result;
}

id sub_100355CBC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v40 = sub_10015DA04(&qword_1006C9B00);
  v8 = *(v40 - 8);
  v37 = *(v8 + 64);
  v9 = __chkstk_darwin(v40);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v33 - v11;
  v35 = sub_10015DA04(&qword_1006C4A60);
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v35);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v34 = &v33 - v16;
  v17 = qword_1006C49F8;
  *(v4 + qword_1006C49F8) = 0;
  *(v4 + qword_1006C49F0) = a1;
  *(v4 + v17) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = v36;
  v19 = a2;
  v20 = a1;
  sub_1001C71A4(a3);
  type metadata accessor for TagContainerCell();
  v21 = v34;
  UICollectionView.CellRegistration.init(handler:)();
  v22 = v35;
  (*(v12 + 16))(v15, v21, v35);
  v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v24 = swift_allocObject();
  (*(v12 + 32))(v24 + v23, v15, v22);
  v25 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for TagDetailCell();
  v26 = v25;
  v27 = v38;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v29 = v39;
  v28 = v40;
  (*(v8 + 16))(v39, v27, v40);
  v30 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v31 = swift_allocObject();
  (*(v8 + 32))(v31 + v30, v29, v28);
  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  (*(v8 + 8))(v27, v28);
  (*(v12 + 8))(v21, v22);
  return v26;
}

uint64_t sub_1003560B4()
{
  sub_10015DA04(&qword_1006C4A60);

  return sub_10035559C();
}

uint64_t sub_100356148(uint64_t *a1)
{
  v2 = sub_10015DA04(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1003561CC()
{
  sub_10015DA04(&qword_1006C9B00);
  type metadata accessor for TagDetailCell();
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

unint64_t sub_100356258()
{
  result = qword_1006C4A70;
  if (!qword_1006C4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4A70);
  }

  return result;
}

unint64_t sub_1003562AC()
{
  result = qword_1006C4A78;
  if (!qword_1006C4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4A78);
  }

  return result;
}

unint64_t sub_100356300()
{
  result = qword_1006C63E0;
  if (!qword_1006C63E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C63E0);
  }

  return result;
}

uint64_t sub_100356378()
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
  sub_100025918(v6, static OpenTopLevelFolderIntent.title);
  sub_10002597C(v6, static OpenTopLevelFolderIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenTopLevelFolderIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC7D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static OpenTopLevelFolderIntent.title);
}

uint64_t static OpenTopLevelFolderIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC7D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static OpenTopLevelFolderIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenTopLevelFolderIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t static OpenTopLevelFolderIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C4A80);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C4A88);
  __chkstk_darwin(v1);
  sub_100020CEC();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x656874206E65704FLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C4A90);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x7265646C6F6620;
  v3._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*OpenTopLevelFolderIntent.target.modify(uint64_t *a1))()
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

uint64_t (*OpenTopLevelFolderIntent.loggingConfiguration.modify(uint64_t *a1))()
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

uint64_t (*sub_100356C00(uint64_t *a1))()
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

uint64_t sub_100356C74()
{
  v0 = sub_10015DA04(&qword_1006C4A80);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C4A88);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x656874206E65704FLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C4A90);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x7265646C6F6620;
  v3._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100356E1C@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes24OpenTopLevelFolderIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t _s11MobileNotes24OpenTopLevelFolderIntentVACycfC_0()
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
  v23[1] = sub_10015DA04(&qword_1006BCD20);
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
  v32 = 4;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v25, 1, 1, v19);
  v20(v26, 1, 1, v19);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_100179AFC();
  v21 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10015DA04(&qword_1006C34B0);
  v30 = 0xD000000000000021;
  v31 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v30 = 0xD000000000000024;
  v31 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v21;
}

unint64_t sub_10035741C()
{
  result = qword_1006C4A98;
  if (!qword_1006C4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4A98);
  }

  return result;
}

id sub_1003574C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v15[3] = swift_getObjectType();
  v15[0] = a4;

  v12 = a2;
  swift_unknownObjectRetain();
  v13 = v11(v12, v10, v15);

  (*(v8 + 8))(v10, v7);
  sub_100009F60(v15);

  return v13;
}

uint64_t sub_100357618(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  sub_10000A2A0(a3, v31);
  sub_1000054A4(0, &qword_1006C4B30);
  if (swift_dynamicCast())
  {

    +[ICTagCell newTagImage]_0();
    sub_10047E78C(v10);
    a1[OBJC_IVAR___ICTagCell_isExcluded] = 0;
    sub_10047EED4();
LABEL_15:

    goto LABEL_16;
  }

  sub_10000A2A0(a3, v31);
  sub_1000054A4(0, &qword_1006C4B38);
  if (swift_dynamicCast())
  {

    v11 = [objc_opt_self() displayText];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    sub_10047E884(v12, v14, 0, v9[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration + 3]);

    v15 = [*&v9[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] mode] == 2;
    a1[OBJC_IVAR___ICTagCell_isExcluded] = v15;
    sub_10047EED4();
    goto LABEL_15;
  }

  sub_10000A2A0(a3, v31);
  sub_1000054A4(0, &qword_1006BFEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (![v30 ic_isHashtagType])
  {

    goto LABEL_15;
  }

  v16 = [a5 objectWithID:v30];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 displayText];
    if (v19)
    {
      v29 = v16;
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v16 = v29;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    sub_10047E884(v21, v23, 1, v9[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration + 3]);

    [a1 ic_annotateWithTag:v18];
    v24 = [*&v9[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] excludedObjectIDs];
    sub_1001C607C();
    v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = [v18 objectID];
    LOBYTE(v24) = sub_10033AC4C(v26, v25);

    a1[OBJC_IVAR___ICTagCell_isExcluded] = v24 & 1;
    sub_10047EED4();

    goto LABEL_15;
  }

LABEL_16:
  sub_10000A2A0(a3, v31);
  sub_10015DA04(&qword_1006C4B40);
  v27 = swift_dynamicCast();
  v28 = v30;
  if (!v27)
  {
    v28 = 0;
  }

  *&a1[OBJC_IVAR___ICTagCell_identifier] = v28;
  return swift_unknownObjectRelease();
}

void sub_100357A10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10015DA04(&qword_1006BD9D8);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for UICellAccessory.DeleteOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICellAccessory.DisplayedState();
  v29 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2A0(a3, v31);
  sub_1000054A4(0, &qword_1006BFEC0);
  if (swift_dynamicCast())
  {
    v17 = v30;
    if ([v30 ic_isHashtagType])
    {
      v28 = v11;
      v18 = [a4 objectWithID:v17];
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v19;
        v27 = v18;
        sub_100365F3C(v20);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v22 = Strong;
        if (Strong)
        {
          Strong = type metadata accessor for TagCollectionView();
          v23 = &off_10065AB38;
        }

        else
        {
          v23 = 0;
          v31[1] = 0;
          v31[2] = 0;
        }

        v31[0] = v22;
        v31[3] = Strong;
        v31[4] = v23;
        v24 = OBJC_IVAR____TtC11MobileNotes14TagEditingCell_tagEditingCellRenameDelegate;
        swift_beginAccess();
        sub_100358A10(v31, a1 + v24);
        swift_endAccess();
        sub_10015DA04(&unk_1006BD9E0);
        type metadata accessor for UICellAccessory();
        *(swift_allocObject() + 16) = xmmword_100531E30;
        v25 = v29;
        (*(v29 + 104))(v16, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v14);
        v26 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
        UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
        static UICellAccessory.delete(displayed:options:actionHandler:)();
        (*(v28 + 8))(v13, v10);
        (*(v25 + 8))(v16, v14);
        UICollectionViewListCell.accessories.setter();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100357E54(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TagCollectionView();
  v5 = swift_dynamicCastClass();
  if (v5 && *(v5 + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration) == 2)
  {
    sub_10000A2A0(a3, v9);
    type metadata accessor for TagEditingCell();
    v6 = a1;
    v7 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    sub_10000A2A0(a3, v9);
    type metadata accessor for TagCell();
    v7 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  sub_10027CAAC(v9);
  return v7;
}

void *sub_100357F5C(void *a1)
{
  v2 = v1;
  v4 = [v2 indexer];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v15 = _swiftEmptyArrayStorage;
  v7 = swift_allocObject();
  v7[2] = &v15;
  v7[3] = v6;
  v7[4] = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1003583E4;
  *(v8 + 24) = v7;
  aBlock[4] = sub_10000EFBC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_100658B20;
  v9 = _Block_copy(aBlock);
  v10 = v4;
  v11 = a1;

  [v11 performBlockAndWait:v9];

  _Block_release(v9);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    v13 = v15;

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10035812C(void *a1, id a2, void *a3)
{
  v4 = [a2 objectIDs];
  sub_1000054A4(0, &qword_1006BFEC0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  v7 = 0;
  do
  {
    v8 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v11 = [a3 objectWithID:v9];

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v8;
      if (v7 == v6)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v7 != v6);
LABEL_20:

  *a1 = _swiftEmptyArrayStorage;
}

id sub_1003583F0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v49.super_class = swift_getObjectType();
  v48 = sub_10015DA04(&qword_1006C4B10);
  v51 = *(v48 - 8);
  v8 = *(v51 + 64);
  v9 = __chkstk_darwin(v48);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v40 - v10;
  v45 = sub_10015DA04(&qword_1006C4B18);
  v41 = *(v45 - 8);
  v11 = *(v41 + 64);
  v12 = __chkstk_darwin(v45);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v49.receiver = v4;
  v4[OBJC_IVAR____TtC11MobileNotes13TagDataSource_includesAllTagsItem] = 1;
  v4[OBJC_IVAR____TtC11MobileNotes13TagDataSource_includesNewTagItem] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes13TagDataSource_modernBackgroundManagedObjectContext] = a2;
  *&v4[OBJC_IVAR____TtC11MobileNotes13TagDataSource_modernViewContext] = a3;
  v15 = swift_allocObject();
  v46 = a1;
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a3;
  type metadata accessor for TagCell();
  v17 = a3;
  v42 = a2;
  v44 = v14;
  UICollectionView.CellRegistration.init(handler:)();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  type metadata accessor for TagEditingCell();
  v20 = v17;
  v21 = v50;
  UICollectionView.CellRegistration.init(handler:)();
  v22 = v51;
  v23 = v47;
  v24 = v48;
  (*(v51 + 16))(v47, v21, v48);
  v25 = v41;
  v26 = v43;
  v27 = v45;
  (*(v41 + 16))(v43, v14, v45);
  v28 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v29 = v25;
  v30 = (v8 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v31 = swift_allocObject();
  (*(v22 + 32))(v31 + v28, v23, v24);
  v32 = v27;
  (*(v29 + 32))(v31 + v30, v26, v27);
  v33 = [objc_allocWithZone(ICFolderListSectionIdentifier) initWithSectionType:8];
  v34 = objc_allocWithZone(ICTagCoreDataIndexer);
  v35 = [v34 initWithModernManagedObjectContext:v42 sectionIdentifier:v33];
  aBlock[4] = sub_10035890C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003574C0;
  aBlock[3] = &unk_100658BE8;
  v36 = _Block_copy(aBlock);

  v52 = v49;
  v37 = v46;
  v38 = objc_msgSendSuper2(&v52, "initWithCollectionView:cellProvider:indexer:", v46, v36, v35);
  _Block_release(v36);

  (*(v51 + 8))(v50, v24);
  (*(v29 + 8))(v44, v32);
  return v38;
}