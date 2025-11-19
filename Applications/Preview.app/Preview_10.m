uint64_t sub_100122EC8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1000FF5D8(&qword_10020D2F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v87 - v7;
  if (a2)
  {
    v9 = OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec;
    v10 = a1 + *(type metadata accessor for PreviewActionSpec(0) + 20) + v9;
    v11 = *(v10 + *(type metadata accessor for PreviewActionSpec.Internals(0) + 56));
    if (v11 != 40)
    {
      type metadata accessor for PreviewTelemetryLogger();
      swift_getKeyPath();
      *v91 = v3;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v12 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__contentType;
      swift_beginAccess();
      v13 = type metadata accessor for UTType();
      v14 = *(v13 - 8);
      (*(v14 + 16))(v8, v3 + v12, v13);
      (*(v14 + 56))(v8, 0, 1, v13);
      sub_100143FA0(v8, v90);
      v91[0] = v11;
      sub_100144C1C(v91, v90);
      sub_100110174(v8, &qword_10020D2F8);
    }
  }

  type metadata accessor for RotateAction(0);
  v15 = swift_dynamicCastClass();
  v89 = v3;
  if (v15)
  {
    v16 = v15;
    swift_getKeyPath();
    *v91 = v3;
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_11;
    }

    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 80))(v3, v16, ObjectType, v18);
    goto LABEL_10;
  }

  type metadata accessor for FlipContentAction(0);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    goto LABEL_32;
  }

  v21 = v20;
  swift_getKeyPath();
  *v91 = v3;
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v22 + 8);
    v24 = swift_getObjectType();
    (*(v23 + 72))(v3, v21, v24, v23);
LABEL_10:
    swift_unknownObjectRelease();
  }

LABEL_11:
  sub_1000FF5D8(&qword_10020DC80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10019A160;
  if (qword_10020D0A0 != -1)
  {
    swift_once();
  }

  *(v25 + 32) = qword_10020EFC0;

LABEL_14:
  if (v25 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (!v26)
    {
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
    }
  }

  v27 = 0;
  v28 = (a1 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  v88 = v25 & 0xC000000000000001;
  a1 = v25 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v88)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v3 = v20;
      v29 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        goto LABEL_20;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      type metadata accessor for ZoomAction(v20);
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        v32 = v31;
        swift_getKeyPath();
        *v91 = v3;
        sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v33 = v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v34 = *(v33 + 8);
          v35 = swift_getObjectType();
          (*(v34 + 8))(v3, v32, v35, v34);
          goto LABEL_51;
        }

LABEL_52:
        v25 = &_swiftEmptyArrayStorage;
        goto LABEL_14;
      }

      type metadata accessor for GoToAction(0);
      v36 = swift_dynamicCastClass();
      if (v36)
      {
        v37 = v36;
        swift_getKeyPath();
        *v91 = v3;
        sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v38 = v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_52;
        }

        v39 = *(v38 + 8);
        v40 = swift_getObjectType();
        (*(v39 + 56))(v3, v37, v40, v39);
LABEL_51:
        swift_unknownObjectRelease();
        goto LABEL_52;
      }

      type metadata accessor for UndoManagerAction(0);
      v41 = swift_dynamicCastClass();
      if (v41)
      {
        v42 = v41;
        swift_getKeyPath();
        *v91 = v3;
        sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v43 = v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_52;
        }

        v44 = *(v43 + 8);
        v45 = swift_getObjectType();
        (*(v44 + 104))(v3, v42, v45, v44);
        goto LABEL_51;
      }

LABEL_42:
      if (qword_10020D148 != -1)
      {
        swift_once();
      }

      v46 = *(a1 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
      v47 = *(a1 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8);
      v48 = *(qword_10020F068 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v46 && *(qword_10020F068 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v47;
      if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        *v91 = v3;
        sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v49 = v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_52;
        }

        v50 = *(v49 + 8);
        v51 = swift_getObjectType();
        (*(v50 + 24))(v3, a1, v51, v50);
        goto LABEL_51;
      }

      if (qword_10020D158 != -1)
      {
        swift_once();
      }

      if (*(qword_10020F078 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v46 && *(qword_10020F078 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        *v91 = v3;
        sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v52 = v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_52;
        }

        v53 = *(v52 + 8);
        v54 = swift_getObjectType();
        (*(v53 + 32))(v3, a1, v54, v53);
        goto LABEL_51;
      }

      if (qword_10020D140 != -1)
      {
        swift_once();
      }

      if (*(qword_10020F060 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v46 && *(qword_10020F060 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        *v91 = v3;
        sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v56 = v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_52;
        }

        v57 = *(v56 + 8);
        v58 = swift_getObjectType();
        (*(v57 + 48))(v3, a1, v58, v57);
        goto LABEL_51;
      }

      if (qword_10020D138 != -1)
      {
        swift_once();
      }

      if (*(qword_10020F058 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v46 && *(qword_10020F058 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        v59 = v89;
        *v91 = v89;
        sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v60 = v59 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_52;
        }

        v61 = *(v60 + 8);
        v62 = swift_getObjectType();
        (*(v61 + 64))(v59, v62, v61);
        goto LABEL_51;
      }

      if (qword_10020D150 != -1)
      {
        goto LABEL_120;
      }

      while (1)
      {
        if (*(qword_10020F070 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v46 && *(qword_10020F070 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_getKeyPath();
          v63 = v89;
          *v91 = v89;
          sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v64 = v63 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
          swift_beginAccess();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_52;
          }

          v65 = *(v64 + 8);
          v66 = swift_getObjectType();
          (*(v65 + 40))(v89, a1, v66, v65);
          goto LABEL_51;
        }

        if (qword_10020D160 != -1)
        {
          swift_once();
        }

        if (*(qword_10020F080 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v46 && *(qword_10020F080 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        if (qword_10020D168 != -1)
        {
          swift_once();
        }

        if (*(qword_10020F088 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v46 && *(qword_10020F088 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v67 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isResizeSheetShown;
          v70 = v89;
          swift_beginAccess();
          if (*(v70 + v67) == 1)
          {
            goto LABEL_88;
          }

          goto LABEL_89;
        }

        if (qword_10020D118 != -1)
        {
          swift_once();
        }

        if (*(qword_10020F038 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v46 && *(qword_10020F038 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_getKeyPath();
          v71 = v89;
          *v91 = v89;
          sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          *v91 = v71;
          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          v72 = *(v71 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown);
          *(v71 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown) = v72 ^ 1;
          sub_10011ABFC(v72);
          *v91 = v71;
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          goto LABEL_52;
        }

        if (qword_10020D100 != -1)
        {
          swift_once();
        }

        if (*(qword_10020F020 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v46 && *(qword_10020F020 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_getKeyPath();
          v73 = v89;
          *v91 = v89;
          sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v74 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode;
          sub_100119D68(*(v73 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) != 1);
          swift_getKeyPath();
          *v91 = v73;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v73 + v74) == 1)
          {
            swift_getKeyPath();
            v75 = v89;
            *v91 = v89;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            if (*(v75 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState) == 1)
            {
              *v91 = 512;
              sub_100115858(v91);
            }
          }

          goto LABEL_52;
        }

        if (qword_10020D188 != -1)
        {
          swift_once();
        }

        if (*(qword_10020F0A8 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v46 && *(qword_10020F0A8 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v67 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isDuplicateSheetShown;
          v76 = v89;
          swift_beginAccess();
          if (*(v76 + v67) == 1)
          {
            goto LABEL_88;
          }

          goto LABEL_89;
        }

        if (qword_10020D190 != -1)
        {
          swift_once();
        }

        if (*(qword_10020F0B0 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v46 && *(qword_10020F0B0 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_getKeyPath();
          v82 = v89;
          *v91 = v89;
          sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v83 = v82 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
          swift_beginAccess();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_52;
          }

          v84 = *(v83 + 8);
          v85 = swift_getObjectType();
          (*(v84 + 16))(v89, a1, v85, v84);
          goto LABEL_51;
        }

        if (qword_10020D198 != -1)
        {
          swift_once();
        }

        if (*(qword_10020F0B8 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v46 && *(qword_10020F0B8 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v67 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isMoveSheetShown;
          v86 = v89;
          swift_beginAccess();
          if (*(v86 + v67) == 1)
          {
LABEL_88:
            *(v89 + v67) = 1;
            goto LABEL_52;
          }

          goto LABEL_89;
        }

LABEL_119:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_120:
        swift_once();
      }

      v67 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isSearchActive;
      v68 = v89;
      swift_beginAccess();
      if (*(v68 + v67) == 1)
      {
        goto LABEL_88;
      }

LABEL_89:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v90[0] = v89;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v25 = &_swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v3 = *(v25 + 8 * v27 + 32);

    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_31;
    }

LABEL_20:
    type metadata accessor for MainActor();
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v30 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == *v28 && *(v3 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v28[1];
    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v90[0] = v3;
      type metadata accessor for PreviewAction(0);

      v77 = String.init<A>(describing:)();
      v47 = v78;
      v90[0] = 0;
      v90[1] = 0xE000000000000000;
      v46 = v90;
      _StringGuts.grow(_:)(96);
      a1 = 0xD000000000000012;
      v79._countAndFlagsBits = 0xD000000000000019;
      v79._object = 0x80000001001B6410;
      String.append(_:)(v79);
      v80._countAndFlagsBits = v77;
      v80._object = v47;
      String.append(_:)(v80);
      v81._countAndFlagsBits = 0xD000000000000045;
      v81._object = 0x80000001001B6430;
      String.append(_:)(v81);
      goto LABEL_119;
    }

    sub_100122EC8(v3, 0);

    ++v27;
  }

  while (v29 != v26);
}

uint64_t sub_1001247FC()
{
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001248A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__eligibleFPActions);
}

uint64_t sub_10012495C()
{
  v1[5] = v0;
  v2 = type metadata accessor for URL();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100124A84, v4, v3);
}

uint64_t sub_100124A84()
{
  receiver = v0[4].receiver;
  v2 = v0[3].receiver;
  super_class = v0[3].super_class;
  v4 = v0[2].super_class;

  v5 = [objc_opt_self() defaultManager];
  v6 = *(v4 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel_document);
  v7 = type metadata accessor for Document(0);
  v0[1].receiver = v6;
  v0[1].super_class = v7;
  v8 = objc_msgSendSuper2(v0 + 1, "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(super_class + 1))(receiver, v2);
  v0[2].receiver = 0;
  v12 = [v5 itemForURL:v11 error:&v0[2]];

  v13 = v0[2].receiver;
  if (v12)
  {
    sub_1000FF5D8(&qword_10020DC80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10019A160;
    *(v14 + 32) = v12;
    sub_100128710();
    v15 = v13;
    v16 = v12;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v5 eligibleActionsForItems:isa];

    type metadata accessor for FPAction(0);
    sub_100127010(&qword_10020D3B0, type metadata accessor for FPAction);
    v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100116C08(v19);
  }

  else
  {
    v20 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100116C08(&_swiftEmptySetSingleton);
  }

  v21 = v0->super_class;

  return v21();
}

uint64_t sub_100124D28()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100124DC0, v3, v2);
}

uint64_t sub_100124DC0()
{

  sub_100117154();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100124E24(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = [*(a3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel_document) documentState];
  result = 0;
  if ((v10 & 1) == 0 && (a5 & 1) == 0)
  {
    if (a2)
    {
      v12 = 1;
    }

    else
    {
      swift_getKeyPath();
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
      swift_beginAccess();
      v12 = *(a3 + v13) != 3;
    }

    v14 = OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec;
    v15 = a1 + *(type metadata accessor for PreviewActionSpec(0) + 20) + v14;
    return ((a4 & ~*(v15 + *(type metadata accessor for PreviewActionSpec.Internals(0) + 32))) == 0) & v12;
  }

  return result;
}

uint64_t sub_100124F70()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10011CB7C();
}

uint64_t sub_100125010(uint64_t a1)
{
  v2 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_100128F38(0, 0, v4, &unk_1001A5D98, v7);
}

uint64_t sub_100125134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a4;
  type metadata accessor for MainActor();
  *(v4 + 80) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001251CC, v6, v5);
}

uint64_t sub_1001251CC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (sub_10011CB7C())
    {
      swift_getKeyPath();
      v0[5] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isSearchActive;
      swift_beginAccess();
      if (*(v2 + v3) == 1)
      {
        swift_getKeyPath();
        v4 = swift_task_alloc();
        *(v4 + 16) = v2;
        *(v4 + 24) = 0;
        v0[8] = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    withObservationTracking<A>(_:onChange:)();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001253C0()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__contentType;
  v4 = type metadata accessor for UTType();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__itemForPresentedShareSheet;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_100103BD8(v0 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate);

  v7 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  v8 = type metadata accessor for ObservationRegistrar();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_100125554()
{
  sub_1001253C0();

  return swift_deallocClassInstance();
}

uint64_t sub_1001255AC()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100113B68;

  return sub_10012495C();
}

unint64_t sub_100125658(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100125724(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1001150A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10010FA4C(v11);
  return v7;
}

unint64_t sub_100125724(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100125830(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100125830(uint64_t a1, unint64_t a2)
{
  v3 = sub_10012587C(a1, a2);
  sub_1001259AC(&off_1001F6080);
  return v3;
}

char *sub_10012587C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100125A98(v5, 0);
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
        v7 = sub_100125A98(v10, 0);
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

uint64_t sub_1001259AC(uint64_t result)
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

  result = sub_100125B0C(result, v11, 1, v3);
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

void *sub_100125A98(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000FF5D8(&qword_10020E048);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100125B0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000FF5D8(&qword_10020E048);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

uint64_t sub_100125C00(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v13;
      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_100125E34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 2)
  {
    return v4 == 2;
  }

  return v4 != 2 && ((v4 ^ v3) & 1) == 0;
}

uint64_t sub_100125E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v47 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000FF5D8(&qword_10020D928);
  __chkstk_darwin(v44);
  v7 = &v40 - v6;
  v8 = sub_1000FF5D8(&qword_10020D930);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v40 - v12;
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  v16 = &unk_100222000;
  v17 = (a1 + OBJC_IVAR____TtC17PreviewFoundation30DocumentCreationTargetProvider_target);
  swift_beginAccess();
  if (*v17)
  {
    v18 = v17[1];
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 32);
    swift_unknownObjectRetain();
    v21 = ObjectType;
    v16 = &unk_100222000;
    v20(v21, v18);
    swift_unknownObjectRelease();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(v47 + 56);
  v24 = 1;
  v45 = v15;
  v23(v15, v22, 1, v4);
  v25 = (a2 + v16[181]);
  swift_beginAccess();
  if (*v25)
  {
    v42 = v10;
    v26 = v25[1];
    v27 = swift_getObjectType();
    v41 = v7;
    v28 = v4;
    v29 = *(v26 + 32);
    swift_unknownObjectRetain();
    v30 = v46;
    v31 = v26;
    v10 = v42;
    v29(v27, v31);
    v4 = v28;
    v7 = v41;
    swift_unknownObjectRelease();
    v24 = 0;
  }

  else
  {
    v30 = v46;
  }

  v23(v30, v24, 1, v4);
  v32 = v45;
  v33 = *(v44 + 48);
  sub_100128B40(v45, v7);
  sub_100128B40(v30, &v7[v33]);
  v34 = *(v47 + 48);
  if (v34(v7, 1, v4) != 1)
  {
    sub_100128B40(v7, v10);
    if (v34(&v7[v33], 1, v4) != 1)
    {
      v36 = v47;
      v37 = v43;
      (*(v47 + 32))(v43, &v7[v33], v4);
      sub_100127010(&qword_10020D938, &type metadata accessor for UUID);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v36 + 8);
      v38(v37, v4);
      sub_100110174(v46, &qword_10020D930);
      sub_100110174(v32, &qword_10020D930);
      v38(v10, v4);
      sub_100110174(v7, &qword_10020D930);
      return v35 & 1;
    }

    sub_100110174(v46, &qword_10020D930);
    sub_100110174(v32, &qword_10020D930);
    (*(v47 + 8))(v10, v4);
    goto LABEL_12;
  }

  sub_100110174(v30, &qword_10020D930);
  sub_100110174(v32, &qword_10020D930);
  if (v34(&v7[v33], 1, v4) != 1)
  {
LABEL_12:
    sub_100110174(v7, &qword_10020D928);
    v35 = 0;
    return v35 & 1;
  }

  sub_100110174(v7, &qword_10020D930);
  v35 = 1;
  return v35 & 1;
}

uint64_t sub_1001263BC(uint64_t a1, void *a2)
{
  v3 = v2;
  v48 = a1;
  v5 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v5 - 8);
  v45 = &v43 - v6;
  v7 = type metadata accessor for UTType();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState) = 512;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isSearchActive) = 0;
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 objectForKey:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    LOBYTE(v16) = sub_10018A514(v49);

    sub_10010FA4C(v49);
  }

  else
  {
  }

  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown) = v16 & 1;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isExportSheetShown) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isResizeSheetShown) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isShareSheetShown) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isDuplicateSheetShown) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isMoveSheetShown) = 0;
  URL.init(fileURLWithPath:)();
  (*(v10 + 32))(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__itemForPresentedShareSheet, v12, v9);
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isVisualIntelligenceActive) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___isVisualSearchActive) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__hasDetectedForm) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__hasDetectedSubjectInContext) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isDarkModeEnabled) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState) = 0;
  v17 = [v13 standardUserDefaults];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 objectForKey:v18];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    LOBYTE(v19) = sub_10018A514(v49);

    sub_10010FA4C(v49);
  }

  else
  {
  }

  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isDarkModeSupportEnabled) = v19 & 1;
  v20 = (v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__searchText);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleMarkupActive) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleFillForm) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleInCanvasSelectionMode) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRotateCCW) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRotateCW) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canZoomIn) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canZoomOut) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canZoomToFit) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canZoomToActualSize) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleAddBookmark) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRemoveBackground) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canFlipHorizontally) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canFlipVertically) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canUndo) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRedo) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canGoToPreviousItem) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canGoToNextItem) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canGoToPage) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isGoToPageChooserShown) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canSaveToPhotos) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canExport) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canPrint) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleInspectorVisible) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canShare) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canSearch) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canAdjustSize) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleVisualIntelligence) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleDarkModeSupport) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canDuplicateDocument) = 1;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRenameDocument) = 1;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canMoveDocument) = 1;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__eligibleFPActions) = &_swiftEmptySetSingleton;
  ObservationRegistrar.init()();
  v21 = *(v46 + 16);
  v22 = v48;
  v21(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__contentType, v48, v47);
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel_document) = a2;
  type metadata accessor for DocumentURLObservation();
  v23 = swift_allocObject();
  v23[3] = 0;
  v23[5] = 0;
  swift_unknownObjectWeakInit();
  v23[2] = a2;
  v49[0] = a2;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v24 = a2;
  v25 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v26 = v23[3];
  v23[3] = v25;

  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel_documentURLObservation) = v23;
  type metadata accessor for DocumentStateObservation();
  v27 = swift_allocObject();
  v27[3] = 0;
  v27[5] = 0;
  swift_unknownObjectWeakInit();
  v27[2] = v24;
  v49[0] = v24;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v28 = v24;
  v29 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v30 = v27[3];
  v27[3] = v29;

  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel_documentStateObservation) = v27;
  v31 = v44;
  v32 = v47;
  v21(v44, v22, v47);
  type metadata accessor for ExportSheetViewModel(0);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__exportSheetViewModel) = sub_100104A74(v28, v31);
  sub_100117154();
  withObservationTracking<A>(_:onChange:)();
  v33 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel_documentURLObservation);
  *(v33 + 40) = &off_1001F7040;
  swift_unknownObjectWeakAssign();
  v34 = type metadata accessor for TaskPriority();
  v35 = *(*(v34 - 8) + 56);
  v36 = v45;
  v35(v45, 1, 1, v34);
  type metadata accessor for MainActor();
  swift_retain_n();

  v37 = static MainActor.shared.getter();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = &protocol witness table for MainActor;
  v38[4] = v33;
  sub_100128F38(0, 0, v36, &unk_1001A5D80, v38);

  v39 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel_documentStateObservation);
  *(v39 + 40) = &off_1001F7050;
  swift_unknownObjectWeakAssign();
  v35(v36, 1, 1, v34);

  v40 = static MainActor.shared.getter();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = &protocol witness table for MainActor;
  v41[4] = v39;
  sub_100128F38(0, 0, v36, &unk_1001A5D88, v41);

  (*(v46 + 8))(v48, v32);
  return v3;
}

uint64_t sub_100126E3C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown);
  *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown) = *(v0 + 24);
  return sub_10011ABFC(v2);
}

uint64_t sub_100127010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001271C0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  v7 = swift_beginAccess();
  *(v4 + v6) = v5;
  return a2(v7);
}

uint64_t sub_10012726C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return sub_100117154();
}

uint64_t sub_100127320(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1001164B4(v1, v2);
}

unint64_t sub_100127E2C()
{
  result = qword_10020DCA0;
  if (!qword_10020DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020DCA0);
  }

  return result;
}

uint64_t sub_100127EC4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return a5(v7);
}

uint64_t sub_1001280EC()
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

uint64_t sub_1001281B8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UTType();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ObservationRegistrar();
        if (v4 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarViewModel.FormFillingState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ToolbarViewModel.FormFillingState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarViewModel.ActiveMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ToolbarViewModel.ActiveMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001286BC()
{
  result = qword_10020E038;
  if (!qword_10020E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E038);
  }

  return result;
}

unint64_t sub_100128710()
{
  result = qword_10020E040;
  if (!qword_10020E040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020E040);
  }

  return result;
}

uint64_t sub_10012878C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__eligibleFPActions) = *(v0 + 24);

  return sub_100117154();
}

void sub_1001287E4()
{
  v1 = *(v0 + 25);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState);
  *v2 = *(v0 + 24);
  v2[1] = v1;
}

uint64_t sub_100128820()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t (*sub_100128880())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_100128A44;
}

uint64_t sub_1001288DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100110344;

  return sub_100180B5C(a1, v4, v5, v6);
}

uint64_t sub_100128990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100110344;

  return sub_10018161C(a1, v4, v5, v6);
}

uint64_t sub_100128A4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100128A8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10010E934;

  return sub_100125134(a1, v4, v5, v6);
}

uint64_t sub_100128B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020D930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100128F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001102D0(a3, v25 - v10, &qword_10020D600);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100110174(v11, &qword_10020D600);
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

      sub_100110174(a3, &qword_10020D600);

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

  sub_100110174(a3, &qword_10020D600);
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

uint64_t sub_100129238()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1001292F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t type metadata accessor for ImageDocumentViewModel()
{
  result = qword_10020E0A8;
  if (!qword_10020E0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100129444(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10012956C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

void (*sub_1001295F0(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation22ImageDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100129730;
}

uint64_t sub_10012973C()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1001297F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

void (*sub_10012991C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_getKeyPath();
  v4[6] = OBJC_IVAR____TtC17PreviewFoundation22ImageDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[7] = sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  v4[3] = Strong;
  v4[4] = v6;
  return sub_100129A6C;
}

void sub_100129A6C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  *v3 = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t sub_100129B30(void *a1)
{
  v2 = swift_allocObject();
  sub_100129B70(a1);
  return v2;
}

uint64_t sub_100129B70(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for UTType();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v39 - v9;
  v10 = type metadata accessor for NavigationSplitViewVisibility();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 56) = 0;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 176) = 1;
  ObservationRegistrar.init()();
  *(v2 + 128) = a1;
  type metadata accessor for DocumentStateObservation();
  v14 = swift_allocObject();
  v14[3] = 0;
  v14[5] = 0;
  v15 = a1;
  swift_unknownObjectWeakInit();
  v14[2] = v15;
  v16 = v15;
  v47 = v16;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v17 = v16;
  v18 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v19 = v14[3];
  v14[3] = v18;

  *(v2 + 16) = v14;
  type metadata accessor for ThumbnailsViewModel();
  v20 = swift_allocObject();
  v20[17] = 0;
  static NavigationSplitViewVisibility.detailOnly.getter();
  (*(v11 + 32))(&v20[OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel__splitColumnVisibility], v13, v10);
  ObservationRegistrar.init()();
  v20[16] = 0;
  v20[18] = 0;
  *(v2 + 64) = v20;
  v21 = v41;
  sub_10017DDB8(v41);
  v22 = v39;
  (*(v42 + 16))(v7, v21, v39);
  type metadata accessor for ToolbarViewModel(0);
  swift_allocObject();
  v23 = sub_1001263BC(v7, v17);

  *(v2 + 72) = v23;
  type metadata accessor for DocumentInfoViewerModel();
  v24 = swift_allocObject();
  *(v24 + qword_10020E2E8) = v17;
  type metadata accessor for DocumentURLObservation();
  v25 = swift_allocObject();
  v25[3] = 0;
  v25[5] = 0;
  swift_unknownObjectWeakInit();
  v25[2] = v17;
  v47 = v17;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v26 = v17;
  v27 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v28 = v25[3];
  v25[3] = v27;

  *(v24 + qword_10020E2F0) = v25;
  v29 = type metadata accessor for Document(0);
  v49.receiver = v26;
  v49.super_class = v29;
  v30 = objc_msgSendSuper2(&v49, "fileURL");
  v31 = v40;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ContentMetadata(0);
  swift_allocObject();
  v32 = sub_1000E1AB4(v31, 1, 0);
  v33 = sub_1000FB9E4(v32);
  *(*(v33 + qword_10020E2F0) + 40) = &off_1001F7A88;
  swift_unknownObjectWeakAssign();

  *(v2 + 80) = v33;
  v48.receiver = v26;
  v48.super_class = v29;
  v34 = objc_msgSendSuper2(&v48, "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for DocumentWorkflowsManager();
  v35 = swift_allocObject();
  *(v35 + 16) = [objc_allocWithZone(SYDocumentWorkflowsClient) init];
  type metadata accessor for BannerViewModel(0);
  swift_allocObject();
  v36 = sub_10015168C(v31, v35);

  *(v2 + 88) = v36;
  swift_getKeyPath();
  v47 = v2;
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v37 = *(v2 + 88);
  swift_getKeyPath();
  v43 = v37;
  v44 = v2;
  v45 = &off_1001F78A8;
  v46 = v37;
  sub_10012F770(&qword_10020E060, type metadata accessor for BannerViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  (*(v42 + 8))(v41, v22);

  return v2;
}

uint64_t sub_10012A2D8()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t sub_10012A3A8(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 56) == v2)
  {
    *(v1 + 56) = v2;
    return sub_10012C11C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10012A4D0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 57) == v2)
  {
    *(v1 + 57) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10012A5F4()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10012A6C4(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 64) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10012A7EC(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 72) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10012A914(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 80) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10012AA3C(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 88) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10012AB64()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10012AC1C()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10012ACD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 48);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10012ADBC()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*sub_10012AE84(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_getKeyPath();
  v4[6] = OBJC_IVAR____TtC17PreviewFoundation22ImageDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[7] = sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  v4[3] = Strong;
  v4[4] = v6;
  return sub_10012AFD4;
}

void sub_10012AFD4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  *v3 = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t sub_10012B098@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ImageDocument();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_capsule;
  swift_beginAccess();
  a1[3] = sub_1000FF5D8(&qword_10020E068);
  v4 = sub_10010F9E8(a1);
  return sub_1001102D0(v2 + v3, v4, &qword_10020E068);
}

uint64_t sub_10012B154@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ImageDocument();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_capsule;
  swift_beginAccess();
  a1[3] = sub_1000FF5D8(&qword_10020E068);
  v4 = sub_10010F9E8(a1);
  return sub_1001102D0(v2 + v3, v4, &qword_10020E068);
}

uint64_t sub_10012B214(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-v5];
  v7 = sub_1000FF5D8(&qword_10020E068);
  __chkstk_darwin(v7 - 8);
  v9 = &v19[-v8];
  type metadata accessor for ImageDocument();
  v10 = swift_dynamicCastClassUnconditional();
  sub_1001102D0(a1, v19, &qword_10020E070);
  if (v20)
  {
    sub_1001150A0(v19, v21);
    sub_10012F100(v19);
    v11 = sub_1000FF5D8(&qword_10020E078);
    v12 = swift_dynamicCast();
    (*(*(v11 - 8) + 56))(v9, v12 ^ 1u, 1, v11);
  }

  else
  {
    sub_100110174(v19, &qword_10020E070);
    v13 = sub_1000FF5D8(&qword_10020E078);
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_capsule;
  swift_beginAccess();
  sub_10012EF9C(v9, v10 + v14);
  swift_endAccess();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v2;
  sub_100128F38(0, 0, v6, &unk_1001A5FE8, v17);

  return sub_100110174(a1, &qword_10020E070);
}

uint64_t sub_10012B50C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100113B68;

  return sub_10012B5B8();
}

uint64_t sub_10012B5B8()
{
  v1[12] = v0;
  v2 = sub_1000FF5D8(&qword_10020E078);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for Image();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[20] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v5;
  v1[22] = v4;

  return _swift_task_switch(sub_10012B720, v5, v4);
}

uint64_t sub_10012B720()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  type metadata accessor for ImageDocument();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_capsule;
  swift_beginAccess();
  if ((*(v2 + 48))(v3 + v4, 1, v1))
  {

    v5 = *(v0 + 96);
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v0 + 16;
    *(v0 + 88) = v5;
    sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 104);
    (*(v14 + 16))(v13, v3 + v4, v15);
    Capsule.root.getter();
    (*(v14 + 8))(v13, v15);
    (*(v12 + 32))(v9, v10, v11);
    v16 = swift_task_alloc();
    *(v0 + 184) = v16;
    *v16 = v0;
    v16[1] = sub_10012B9F4;

    return Image.imageSize(applyingCrop:)(1);
  }
}

uint64_t sub_10012B9F4(double a1, double a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {

    v7 = sub_10012BBE4;
  }

  else
  {
    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    v7 = sub_10012BB30;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10012BB30()
{
  v1 = *(v0 + 192);
  *(v0 + 224) = vextq_s8(*(v0 + 200), *(v0 + 200), 8uLL);
  *(v0 + 216) = v1;
  v2 = Image.dpiWidth.getter();
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v7 = v2;
    v8 = Image.dpiHeight.getter();
    if (v9)
    {
      v4 = 0;
    }

    else
    {
      v4 = v7;
    }

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = v8;
    }

    v6 = (v9 & 1) != 0;
  }

  *(v0 + 57) = v6;
  *(v0 + 240) = v4;
  *(v0 + 248) = v5;
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);

  return _swift_task_switch(sub_10012BC8C, v10, v11);
}

uint64_t sub_10012BBE4()
{
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  v1 = Image.dpiWidth.getter();
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v6 = v1;
    v7 = Image.dpiHeight.getter();
    if (v8)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }

    if (v8)
    {
      v4 = 0;
    }

    else
    {
      v4 = v7;
    }

    v5 = (v8 & 1) != 0;
  }

  *(v0 + 57) = v5;
  *(v0 + 240) = v3;
  *(v0 + 248) = v4;
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);

  return _swift_task_switch(sub_10012BC8C, v9, v10);
}

uint64_t sub_10012BC8C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 240);
  *(v0 + 16) = *(v0 + 224);
  v5 = *(v0 + 57);
  v6 = *(v0 + 96);
  *(v0 + 32) = *(v0 + 192) != 0;
  *(v0 + 40) = v4;
  *(v0 + 56) = v5;
  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v0 + 16;
  *(v0 + 88) = v6;
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v8 = *(v0 + 8);

  return v8();
}

void (*sub_10012BE24(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  type metadata accessor for ImageDocument();
  v5 = swift_dynamicCastClassUnconditional();
  v6 = OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_capsule;
  swift_beginAccess();
  v4[3] = sub_1000FF5D8(&qword_10020E068);
  v7 = sub_10010F9E8(v4);
  sub_1001102D0(v5 + v6, v7, &qword_10020E068);
  return sub_10012BF20;
}

void sub_10012BF20(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1001102D0(*a1, v2 + 32, &qword_10020E070);
    sub_10012B214(v2 + 32);
    sub_100110174(v2, &qword_10020E070);
  }

  else
  {
    sub_10012B214(*a1);
  }

  free(v2);
}

uint64_t sub_10012BFB0()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10012C098()
{
  type metadata accessor for ImageDocument();
  v1.receiver = swift_dynamicCastClassUnconditional();
  v1.super_class = type metadata accessor for Document(0);
  v0 = objc_msgSendSuper2(&v1, "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_10012C11C()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 72);
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__hasDetectedSubjectInContext;
  swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10012F770(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10012C330()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10012C3E8()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t (*sub_10012C49C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10012C4F0;
}

uint64_t sub_10012C4F0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_10012C11C();
  }

  return result;
}

uint64_t sub_10012C524@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

void (*sub_10012C608(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation22ImageDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_10012C49C(v4);
  return sub_10012C740;
}

void sub_10012C740(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_10012C7D4()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 57);
}

uint64_t sub_10012C888@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 57);
  return result;
}

void (*sub_10012C96C(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation22ImageDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10012CAAC;
}

uint64_t sub_10012CAB8()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10012CB70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_10012CC5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

void (*sub_10012CCC4(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation22ImageDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10012CE04;
}

uint64_t sub_10012CE10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_10012CEFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
}

void (*sub_10012CF64(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation22ImageDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10012D0A4;
}

uint64_t sub_10012D0B0()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10012D168@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_10012D254(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 80) = a2;
}

void (*sub_10012D2BC(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation22ImageDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10012D3FC;
}

uint64_t sub_10012D408@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_10012D4F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
}

void (*sub_10012D55C(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation22ImageDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10012D69C;
}

uint64_t sub_10012D6A8()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10012D760@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 96);
}

uint64_t sub_10012D820()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10012D8EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 96) = a2;
}

void (*sub_10012D954(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation22ImageDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10012DA94;
}

uint64_t sub_10012DAA0@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_10012F180(v3, v4, v5);
}

uint64_t sub_10012DB68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = v3[13];
  v5 = v3[14];
  v6 = v3[15];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_10012F180(v4, v5, v6);
}

uint64_t sub_10012DC30(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  sub_10012F180(v4[0], v1, v2);
  return sub_10012DC7C(v4);
}

uint64_t sub_10012DC7C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  sub_10012F180(v5, v6, v7);
  v8 = sub_10012F1C0(v5, v6, v7, v2, v3, v4);
  sub_10012F358(v5, v6, v7);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_10012F358(v2, v3, v4);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[14];
    v13 = v1[15];
    v1[13] = v2;
    v1[14] = v3;
    v1[15] = v4;
    return sub_10012F358(v11, v12, v13);
  }
}

uint64_t sub_10012DE0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = a1[13];
  v9 = a1[14];
  v10 = a1[15];
  a1[13] = a2;
  a1[14] = a3;
  a1[15] = a4;
  sub_10012F180(a2, a3, a4);
  return sub_10012F358(v8, v9, v10);
}

void (*sub_10012DEA4(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation22ImageDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10012DFE4;
}

id sub_10012DFF0()
{
  type metadata accessor for ImageDocument();
  v0 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_context);

  return v0;
}

uint64_t sub_10012E058()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 136);
}

__n128 sub_10012E0FC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + 152);
  v4 = *(v1 + 176);
  *a1 = *(v1 + 136);
  *(a1 + 16) = v3;
  result = *(v1 + 160);
  *(a1 + 24) = result;
  *(a1 + 40) = v4;
  return result;
}

uint64_t sub_10012E1BC()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 176))
  {
    return 0;
  }

  else
  {
    return *(v0 + 160);
  }
}

__n128 sub_10012E268@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 152);
  v5 = *(v3 + 176);
  *a2 = *(v3 + 136);
  *(a2 + 16) = v4;
  result = *(v3 + 160);
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_10012E328()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10012E404()
{

  sub_100103BD8(v0 + 24);
  sub_100103BD8(v0 + 40);

  sub_10012F358(*(v0 + 104), *(v0 + 112), *(v0 + 120));

  v1 = OBJC_IVAR____TtC17PreviewFoundation22ImageDocumentViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10012E4B8()
{
  sub_10012E404();

  return swift_deallocClassInstance();
}

uint64_t (*sub_10012E514(uint64_t **a1))()
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
  v2[4] = sub_1001295F0(v2);
  return sub_10012F8C8;
}

uint64_t (*sub_10012E5A4(uint64_t **a1))()
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
  v2[4] = sub_10012AE84(v2);
  return sub_10012F8C8;
}

uint64_t sub_10012E634()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_10012E704(uint64_t **a1))()
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
  v2[4] = sub_10012991C(v2);
  return sub_10012F8C8;
}

uint64_t (*sub_10012E778(uint64_t **a1))()
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
  v2[4] = sub_10012CCC4(v2);
  return sub_10012E7E8;
}

uint64_t (*sub_10012E7F0(uint64_t **a1))()
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
  v2[4] = sub_10012DEA4(v2);
  return sub_10012F8C8;
}

uint64_t (*sub_10012E864(uint64_t **a1))()
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
  v2[4] = sub_10012C96C(v2);
  return sub_10012F8C8;
}

void sub_10012E8D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_10012E91C()
{
  type metadata accessor for ImageDocument();
  v1.receiver = swift_dynamicCastClassUnconditional();
  v1.super_class = type metadata accessor for Document(0);
  v0 = objc_msgSendSuper2(&v1, "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_10012E9A4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E058, type metadata accessor for ImageDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 136);
}

uint64_t sub_10012EA70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012F770(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_10012EB40()
{
  swift_getKeyPath();
  sub_10012F770(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_10012EC10(id *a1)
{
  v1 = [*a1 fileURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_10012EC70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 documentState];
  *a2 = result;
  return result;
}

id sub_10012ECA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 documentState];
  *a2 = result;
  return result;
}

uint64_t sub_10012ECD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10012EDA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 56) = v2;
  return sub_10012C11C();
}

uint64_t sub_10012EE2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 57) = v2;
  return result;
}

uint64_t sub_10012EF9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020E068);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012F00C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10012F04C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10010E934;

  return sub_10012B50C();
}

__n128 sub_10012F15C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 161) = *(v2 + 25);
  *(v1 + 152) = v4;
  *(v1 + 136) = result;
  return result;
}

uint64_t sub_10012F180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
  }

  return result;
}

uint64_t sub_10012F1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    sub_10012F180(a1, a2, 0);
    if (!a6)
    {
      sub_10012F180(a4, a5, 0);
      sub_10012F358(a1, a2, 0);
      v13 = 0;
      return v13 & 1;
    }

    sub_10012F180(a4, a5, a6);
    goto LABEL_7;
  }

  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  if (!a6)
  {
    sub_10012F180(a1, a2, a3);
    sub_10012F180(a4, a5, 0);
    sub_10012F180(a1, a2, a3);

LABEL_7:
    sub_10012F358(a1, a2, a3);
    sub_10012F358(a4, a5, a6);
    v13 = 1;
    return v13 & 1;
  }

  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  sub_10012F180(a1, a2, a3);
  sub_10012F180(a4, a5, a6);
  sub_10012F180(a1, a2, a3);
  v12 = sub_10018807C(v16, v15);

  sub_10012F358(a1, a2, a3);
  v13 = v12 ^ 1;
  return v13 & 1;
}

uint64_t sub_10012F358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10012F410()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_10012F524(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10012F538(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012F558(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_10012F5A0()
{

  return swift_deallocObject();
}

uint64_t sub_10012F5D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100110344;

  return sub_10017A74C(a1, v4);
}

uint64_t sub_10012F690(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10010E934;

  return sub_10017A74C(a1, v4);
}

uint64_t sub_10012F770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012F7B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  *(v1 + 48) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10012F818()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  *(v1 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10012F8FC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (static String._unconditionallyBridgeFromObjectiveC(_:)(), Hasher.init(_seed:)(), String.hash(into:)(), v3 = Hasher._finalize()(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

BOOL sub_10012FA50(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = qword_1001A6390[a1];
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_1001A6390[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL sub_10012FB30(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v3 = Axis.rawValue.getter();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = Axis.rawValue.getter();
    v9 = v8 == Axis.rawValue.getter();
    result = v9;
    if (v9)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10012FC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v14 = a3;
  v9 = sub_1000FF5D8(a4);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  v12 = type metadata accessor for DynamicTypeSize();
  sub_100131E6C(&qword_10020E1A0, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    (*(*(v12 - 8) + 16))(v11, a1, v12);
    sub_10010F2DC(a6, a4);
    View.dynamicTypeSize<A>(_:)();
    return sub_100110174(v11, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10012FDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001102D0(a1, &v6[*(v7 + 20)], &qword_10020E1C0);
  v8 = v4[6];
  v9 = type metadata accessor for DynamicTypeSize();
  (*(*(v9 - 8) + 16))(&v6[v8], a2, v9);
  *v6 = &_swiftEmptySetSingleton;
  v10 = v4[7];
  *&v6[v10] = swift_getKeyPath();
  sub_1000FF5D8(&qword_10020E1C8);
  swift_storeEnumTagMultiPayload();
  v11 = v4[8];
  *&v6[v11] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  View.modifier<A>(_:)();
  return sub_100131090(v6);
}

uint64_t sub_10012FFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
  __chkstk_darwin(v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100131628(a4);
  v10 = v6[5];
  v11 = type metadata accessor for UserInterfaceSizeClass();
  (*(*(v11 - 8) + 56))(v8 + v10, 1, 1, v11);
  v12 = v6[6];
  v13 = type metadata accessor for DynamicTypeSize();
  (*(*(v13 - 8) + 16))(v8 + v12, a1, v13);
  *v8 = v9;
  v14 = v6[7];
  *(v8 + v14) = swift_getKeyPath();
  sub_1000FF5D8(&qword_10020E1C8);
  swift_storeEnumTagMultiPayload();
  v15 = v6[8];
  *(v8 + v15) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  View.modifier<A>(_:)();
  return sub_100131090(v8);
}

uint64_t sub_1001301A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v92 = sub_1000FF5D8(&qword_10020E2A0);
  __chkstk_darwin(v92);
  v91 = &v78[-v4];
  v5 = type metadata accessor for DynamicTypeSize();
  v95 = *(v5 - 8);
  v96 = v5;
  __chkstk_darwin(v5);
  v94 = &v78[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UserInterfaceSizeClass();
  v98 = *(v7 - 8);
  __chkstk_darwin(v7);
  v83 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000FF5D8(&qword_10020E2A8);
  __chkstk_darwin(v9);
  v87 = &v78[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v90 = &v78[-v12];
  __chkstk_darwin(v13);
  v15 = &v78[-v14];
  v16 = sub_1000FF5D8(&qword_10020E1C0);
  __chkstk_darwin(v16 - 8);
  v82 = &v78[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v86 = &v78[-v19];
  __chkstk_darwin(v20);
  v22 = &v78[-v21];
  __chkstk_darwin(v23);
  v84 = &v78[-v24];
  __chkstk_darwin(v25);
  v85 = &v78[-v26];
  __chkstk_darwin(v27);
  v29 = &v78[-v28];
  __chkstk_darwin(v30);
  v32 = &v78[-v31];
  __chkstk_darwin(v33);
  v35 = &v78[-v34];
  v97 = v2;
  v36 = *v2;
  v37 = sub_10012FB30(0, *v2);
  v88 = v9;
  v81 = v22;
  if (v37)
  {
    v80 = a1;
    v89 = type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
    sub_100131114(v35);
    v38 = v98;
    (*(v98 + 104))(v32, enum case for UserInterfaceSizeClass.compact(_:), v7);
    (*(v38 + 56))(v32, 0, 1, v7);
    v39 = *(v9 + 48);
    sub_1001102D0(v35, v15, &qword_10020E1C0);
    sub_1001102D0(v32, &v15[v39], &qword_10020E1C0);
    v40 = *(v38 + 48);
    if (v40(v15, 1, v7) == 1)
    {
      sub_100110174(v32, &qword_10020E1C0);
      sub_100110174(v35, &qword_10020E1C0);
      if (v40(&v15[v39], 1, v7) == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    sub_1001102D0(v15, v29, &qword_10020E1C0);
    if (v40(&v15[v39], 1, v7) == 1)
    {
      sub_100110174(v32, &qword_10020E1C0);
      sub_100110174(v35, &qword_10020E1C0);
      (*(v98 + 8))(v29, v7);
LABEL_7:
      sub_100110174(v15, &qword_10020E2A8);
      v9 = v88;
      goto LABEL_8;
    }

    v69 = v98;
    v70 = v83;
    (*(v98 + 32))(v83, &v15[v39], v7);
    sub_100131E6C(&qword_10020E2C8, &type metadata accessor for UserInterfaceSizeClass);
    v79 = dispatch thunk of static Equatable.== infix(_:_:)();
    v71 = *(v69 + 8);
    v71(v70, v7);
    sub_100110174(v32, &qword_10020E1C0);
    sub_100110174(v35, &qword_10020E1C0);
    v71(v29, v7);
    sub_100110174(v15, &qword_10020E1C0);
    v9 = v88;
    v41 = v89;
    if (v79)
    {
      goto LABEL_20;
    }
  }

LABEL_8:
  if (!sub_10012FB30(1, v36))
  {
    v51 = enum case for UserInterfaceSizeClass.compact(_:);
    goto LABEL_16;
  }

  v41 = type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
  v42 = v85;
  sub_100131114(v85);
  v43 = v98;
  v44 = *(v98 + 104);
  v45 = v84;
  LODWORD(v89) = enum case for UserInterfaceSizeClass.compact(_:);
  v44(v84);
  (*(v43 + 56))(v45, 0, 1, v7);
  v46 = *(v9 + 48);
  v47 = v90;
  sub_1001102D0(v42, v90, &qword_10020E1C0);
  v48 = v47;
  sub_1001102D0(v45, &v47[v46], &qword_10020E1C0);
  v49 = *(v43 + 48);
  if (v49(v48, 1, v7) == 1)
  {
    sub_100110174(v45, &qword_10020E1C0);
    v50 = v90;
    sub_100110174(v42, &qword_10020E1C0);
    if (v49(&v50[v46], 1, v7) == 1)
    {
      v15 = v50;
LABEL_19:
      sub_100110174(v15, &qword_10020E1C0);
LABEL_20:
      type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
      v59 = v94;
      v58 = v95;
      v60 = v96;
      (*(v95 + 16))(v94, v97 + *(v41 + 24), v96);
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v52 = v81;
  sub_1001102D0(v48, v81, &qword_10020E1C0);
  if (v49((v48 + v46), 1, v7) == 1)
  {
    sub_100110174(v84, &qword_10020E1C0);
    v50 = v90;
    sub_100110174(v85, &qword_10020E1C0);
    (*(v98 + 8))(v52, v7);
LABEL_15:
    sub_100110174(v50, &qword_10020E2A8);
    v9 = v88;
    v51 = v89;
    goto LABEL_16;
  }

  v72 = v98;
  v73 = v41;
  v74 = v83;
  (*(v98 + 32))(v83, v48 + v46, v7);
  sub_100131E6C(&qword_10020E2C8, &type metadata accessor for UserInterfaceSizeClass);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();
  v76 = *(v72 + 8);
  v77 = v74;
  v41 = v73;
  v76(v77, v7);
  sub_100110174(v84, &qword_10020E1C0);
  sub_100110174(v85, &qword_10020E1C0);
  v76(v52, v7);
  sub_100110174(v90, &qword_10020E1C0);
  v9 = v88;
  v51 = v89;
  if (v75)
  {
    goto LABEL_20;
  }

LABEL_16:
  v89 = type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
  v53 = *(v89 + 20);
  v54 = v98;
  v55 = v86;
  (*(v98 + 104))(v86, v51, v7);
  (*(v54 + 56))(v55, 0, 1, v7);
  v56 = *(v9 + 48);
  v15 = v87;
  sub_1001102D0(v97 + v53, v87, &qword_10020E1C0);
  sub_1001102D0(v55, &v15[v56], &qword_10020E1C0);
  v57 = *(v54 + 48);
  if (v57(v15, 1, v7) == 1)
  {
    sub_100110174(v55, &qword_10020E1C0);
    if (v57(&v15[v56], 1, v7) == 1)
    {
LABEL_18:
      v41 = v89;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v61 = v82;
  sub_1001102D0(v15, v82, &qword_10020E1C0);
  if (v57(&v15[v56], 1, v7) == 1)
  {
    sub_100110174(v55, &qword_10020E1C0);
    (*(v98 + 8))(v61, v7);
LABEL_23:
    sub_100110174(v15, &qword_10020E2A8);
    goto LABEL_24;
  }

  v64 = v98;
  v65 = &v15[v56];
  v66 = v83;
  (*(v98 + 32))(v83, v65, v7);
  sub_100131E6C(&qword_10020E2C8, &type metadata accessor for UserInterfaceSizeClass);
  v67 = dispatch thunk of static Equatable.== infix(_:_:)();
  v68 = *(v64 + 8);
  v68(v66, v7);
  sub_100110174(v55, &qword_10020E1C0);
  v68(v61, v7);
  sub_100110174(v15, &qword_10020E1C0);
  v41 = v89;
  if (v67)
  {
    goto LABEL_20;
  }

LABEL_24:
  v59 = v94;
  v58 = v95;
  v60 = v96;
  (*(v95 + 104))(v94, enum case for DynamicTypeSize.accessibility5(_:), v96);
LABEL_25:
  sub_100131E6C(&qword_10020E1A0, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v63 = v91;
    (*(v58 + 16))(v91, v59, v60);
    sub_1000FF5D8(&qword_10020E2B0);
    sub_10010F2DC(&qword_10020E2B8, &qword_10020E2B0);
    sub_10010F2DC(&qword_10020E2C0, &qword_10020E2A0);
    View.dynamicTypeSize<A>(_:)();
    sub_100110174(v63, &qword_10020E2A0);
    return (*(v58 + 8))(v59, v60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100130FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1000FF5D8(&qword_10020E1C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_1001102D0(a1, &v11 - v8, &qword_10020E1C0);
  return a5(v9);
}

uint64_t sub_100131090(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100131114@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000FF5D8(&qword_10020E1C8);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1001102D0(v2, &v13 - v9, &qword_10020E1C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100131EB4(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void *sub_1001312E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000FF5D8(&qword_10020E2E0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_1001314D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000FF5D8(&qword_10020E2D8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      v11 = qword_1001A6390[v10];
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (qword_1001A6390[*(v18 + v14)] != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_100131628(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000FF5D8(&qword_10020E2D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      v11 = Axis.rawValue.getter();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = Axis.rawValue.getter();
        result = Axis.rawValue.getter();
        if (v16 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1001317C8(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  sub_10010EC80(a2);
  sub_10010F2DC(a4, a2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100131864()
{
  type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
  type metadata accessor for ModifiedContent();
  sub_100131E6C(&qword_10020E1D0, type metadata accessor for DynamicTypeCompactEnvironmentLimiter);
  return swift_getWitnessTable();
}

uint64_t sub_100131914(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000FF5D8(&qword_10020E1C0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for DynamicTypeSize();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_1000FF5D8(&qword_10020E1D8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

char *sub_100131AAC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1000FF5D8(&qword_10020E1C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for DynamicTypeSize();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_1000FF5D8(&qword_10020E1D8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

void sub_100131C30()
{
  sub_100131CE4();
  if (v0 <= 0x3F)
  {
    sub_100131D94();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DynamicTypeSize();
      if (v2 <= 0x3F)
      {
        sub_100131DEC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100131CE4()
{
  if (!qword_10020E248)
  {
    sub_100131D40();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_10020E248);
    }
  }
}

unint64_t sub_100131D40()
{
  result = qword_10020E250;
  if (!qword_10020E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E250);
  }

  return result;
}

void sub_100131D94()
{
  if (!qword_10020E258)
  {
    type metadata accessor for UserInterfaceSizeClass();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10020E258);
    }
  }
}

void sub_100131DEC()
{
  if (!qword_10020E260)
  {
    sub_10010EC80(&qword_10020E1C0);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10020E260);
    }
  }
}

uint64_t sub_100131E6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100131EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020E1C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100131F24()
{
  sub_10010EC80(&qword_10020E2B0);
  sub_10010EC80(&qword_10020E2A0);
  sub_10010F2DC(&qword_10020E2B8, &qword_10020E2B0);
  sub_10010F2DC(&qword_10020E2C0, &qword_10020E2A0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100132044()
{
}

uint64_t sub_100132084()
{
  v0 = sub_1000FC130();

  return v0;
}

uint64_t sub_1001320CC()
{
  v0 = *(sub_1000FC130() + qword_10020E2E8);

  return swift_deallocClassInstance();
}

uint64_t sub_10013213C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  type metadata accessor for URL();
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_100132200, v4, v3);
}

uint64_t sub_100132200()
{
  receiver = v0[3].receiver;
  v2 = v0[2].receiver;
  v3 = type metadata accessor for Document(0);
  v0[1].receiver = v2;
  v0[1].super_class = v3;
  v4 = objc_msgSendSuper2(v0 + 1, "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ContentMetadata(0);
  swift_allocObject();
  v5 = sub_1000E1AB4(receiver, 1, 0);
  v0[5].receiver = v5;
  v6 = swift_task_alloc();
  v0[5].super_class = v6;
  *v6 = v0;
  *(v6 + 1) = sub_100132324;

  return sub_1000FCBF4(v5);
}

uint64_t sub_100132324()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100132444, v3, v2);
}

uint64_t sub_100132444()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for DocumentInfoViewerModel()
{
  result = qword_10020E2F8;
  if (!qword_10020E2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001325A0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 32))();
  sub_10017DDB8(a2);
}

uint64_t sub_100132600@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = (*(a1 + 144))();
  swift_getKeyPath();
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1001326E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*(a3 + 144))(a2, a3);
  v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  swift_beginAccess();
  if (*(v4 + v5) == v3)
  {
    sub_100117154();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*sub_100132848(uint64_t *a1))()
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
  *(v2 + 32) = sub_1001328B8(v2);
  return sub_10012F8C8;
}

void (*sub_1001328B8(uint64_t **a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[9] = v1;
  v3[10] = *v1;
  v3[11] = sub_10012C330;
  v3[12] = off_1001F7760 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10012C330();
  swift_getKeyPath();
  *v4 = v5;
  v4[13] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  swift_beginAccess();
  *(v4 + 112) = *(v5 + v6);

  return sub_100132A24;
}

void (*sub_100132A58(uint64_t **a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[9] = v1;
  v3[10] = *v1;
  v3[11] = sub_10015A4E4;
  v3[12] = off_1001F8998 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10015A4E4();
  swift_getKeyPath();
  *v4 = v5;
  v4[13] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  swift_beginAccess();
  *(v4 + 112) = *(v5 + v6);

  return sub_100132BC4;
}

void sub_100132BF8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 112);
  v6 = (*(*a1 + 88))(*(*a1 + 80), a3);
  v7 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  if (a2)
  {
    swift_beginAccess();
    if (*(v6 + v7) != v5)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v4[6] = v6;
LABEL_7:
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_8;
    }
  }

  else
  {
    swift_beginAccess();
    if (*(v6 + v7) != v5)
    {
      v9 = swift_getKeyPath();
      __chkstk_darwin(v9);
      v4[3] = v6;
      goto LABEL_7;
    }
  }

  sub_100117154();

LABEL_8:
  free(v4);
}

uint64_t (*sub_100132DBC(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  sub_100132600(a3, (a1 + 24));
  return sub_100132E10;
}

uint64_t sub_100132E10(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = *a1;
  if (a2)
  {
    v7 = *(a1 + 24);
    v5 = &v7;
  }

  else
  {
    v8 = *(a1 + 24);
    v5 = &v8;
  }

  return sub_1001326E8(v5, v4, v3);
}

uint64_t sub_100132E64@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_10012C330();
  swift_getKeyPath();
  v9 = v4;
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);

  if (v5 == 1 || (sub_1001433BC(&v8, v3, &off_1001F76D0), v8 == 1))
  {
    v6 = type metadata accessor for BannerViewModel.Configuration(0);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  else
  {
    sub_10012AB64();
    sub_10014783C(a1);
  }
}

uint64_t sub_100133028@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_10015A4E4();
  swift_getKeyPath();
  v9 = v4;
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);

  if (v5 == 1 || (sub_1001433BC(&v8, v3, &off_1001F8908), v8 == 1))
  {
    v6 = type metadata accessor for BannerViewModel.Configuration(0);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  else
  {
    sub_100159330();
    sub_10014783C(a1);
  }
}

uint64_t sub_1001331EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 144))();
  swift_getKeyPath();
  v11 = v6;
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);

  if (v7 == 1 || ((*(a2 + 400))(v10, a1, a2), (v10[0] & 1) != 0))
  {
    v8 = type metadata accessor for BannerViewModel.Configuration(0);
    return (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }

  else
  {
    (*(a2 + 160))(a1, a2);
    sub_10014783C(a3);
  }
}

BOOL sub_10013337C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 144))();
  swift_getKeyPath();
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);

  return v3 == 1;
}

uint64_t (*sub_100133460(uint64_t *a1))()
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
  *(v2 + 32) = sub_1001334D0(v2);
  return sub_10012F8C8;
}

void (*sub_1001334D0(uint64_t **a1))(uint64_t a1, uint64_t a2)
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
  v3[1] = v1;
  v3[2] = *v1;
  v3[3] = sub_10012C330;
  v3[4] = off_1001F7760 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10012C330();
  swift_getKeyPath();
  *v4 = v5;
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);

  *(v4 + 40) = v6 == 1;
  return sub_10013362C;
}

void (*sub_10013364C(uint64_t **a1))(uint64_t a1, uint64_t a2)
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
  v3[1] = v1;
  v3[2] = *v1;
  v3[3] = sub_10015A4E4;
  v3[4] = off_1001F8998 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10015A4E4();
  swift_getKeyPath();
  *v4 = v5;
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);

  *(v4 + 40) = v6 == 1;
  return sub_1001337A8;
}

uint64_t (*sub_1001337C8(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = sub_10013337C(a2, a3);
  return sub_100133820;
}

BOOL sub_100133838(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 144))();
  swift_getKeyPath();
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);

  return v3 == 3;
}

uint64_t (*sub_10013391C(uint64_t *a1))()
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
  *(v2 + 32) = sub_10013398C(v2);
  return sub_10012F8C8;
}

void (*sub_10013398C(uint64_t **a1))(uint64_t a1, uint64_t a2)
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
  v3[1] = v1;
  v3[2] = *v1;
  v3[3] = sub_10012C330;
  v3[4] = off_1001F7760 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10012C330();
  swift_getKeyPath();
  *v4 = v5;
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);

  *(v4 + 40) = v6 == 3;
  return sub_100133AE8;
}

void (*sub_100133B08(uint64_t **a1))(uint64_t a1, uint64_t a2)
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
  v3[1] = v1;
  v3[2] = *v1;
  v3[3] = sub_10015A4E4;
  v3[4] = off_1001F8998 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10015A4E4();
  swift_getKeyPath();
  *v4 = v5;
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);

  *(v4 + 40) = v6 == 3;
  return sub_100133C64;
}

void sub_100133C84(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  (*(*a1 + 24))(*(*a1 + 16), a3);
  a4(v6);

  free(v5);
}

uint64_t (*sub_100133CF0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = sub_100133838(a2, a3);
  return sub_100133D48;
}

uint64_t sub_100133D78(char a1)
{
  v1 = a1 & 1;
  v2 = sub_10012C330();
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isExportSheetShown;
  swift_beginAccess();
  if (*(v2 + v3) == v1)
  {
    *(v2 + v3) = v1;
    sub_10011AFCC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100133F04(char a1)
{
  v1 = a1 & 1;
  v2 = sub_10015A4E4();
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isExportSheetShown;
  swift_beginAccess();
  if (*(v2 + v3) == v1)
  {
    *(v2 + v3) = v1;
    sub_10011AFCC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100134090(char a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 & 1;
  v4 = (*(a3 + 144))(a2, a3);
  v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isExportSheetShown;
  swift_beginAccess();
  if (*(v4 + v5) == v3)
  {
    *(v4 + v5) = v3;
    sub_10011AFCC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*sub_1001341F4(uint64_t *a1))()
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
  *(v2 + 32) = sub_100134264(v2);
  return sub_10012F8C8;
}

void (*sub_100134264(uint64_t **a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[9] = v1;
  v3[10] = *v1;
  v3[11] = sub_10012C330;
  v3[12] = off_1001F7760 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10012C330();
  swift_getKeyPath();
  *v4 = v5;
  v4[13] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isExportSheetShown;
  swift_beginAccess();
  LOBYTE(v6) = *(v5 + v6);

  *(v4 + 112) = v6;
  return sub_1001343D0;
}

void (*sub_100134404(uint64_t **a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[9] = v1;
  v3[10] = *v1;
  v3[11] = sub_10015A4E4;
  v3[12] = off_1001F8998 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10015A4E4();
  swift_getKeyPath();
  *v4 = v5;
  v4[13] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isExportSheetShown;
  swift_beginAccess();
  LOBYTE(v6) = *(v5 + v6);

  *(v4 + 112) = v6;
  return sub_100134570;
}

void sub_1001345A4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 112);
  v6 = (*(*a1 + 88))(*(*a1 + 80), a3);
  v7 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isExportSheetShown;
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (v5 != *(v6 + v7))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v4[3] = v6;
      goto LABEL_6;
    }

LABEL_7:
    *(v6 + v7) = v5;
    sub_10011AFCC();

    goto LABEL_8;
  }

  swift_beginAccess();
  if (v5 == *(v6 + v7))
  {
    goto LABEL_7;
  }

  v8 = swift_getKeyPath();
  __chkstk_darwin(v8);
  v4[6] = v6;
LABEL_6:
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_8:
  free(v4);
}

uint64_t (*sub_100134768(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = sub_100133D60(a2, a3) & 1;
  return sub_1001347C0;
}

uint64_t sub_100134804(char a1)
{
  v1 = a1 & 1;
  v2 = sub_10012C330();
  v3 = *(v2 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown);
  if (v3 == v1)
  {
    *(v2 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown) = v1;
    sub_10011ABFC(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10013499C(char a1)
{
  v1 = a1 & 1;
  v2 = sub_10015A4E4();
  v3 = *(v2 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown);
  if (v3 == v1)
  {
    *(v2 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown) = v1;
    sub_10011ABFC(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100134B34(char a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 & 1;
  v4 = (*(a3 + 144))(a2, a3);
  v5 = *(v4 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown);
  if (v5 == v3)
  {
    *(v4 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown) = v3;
    sub_10011ABFC(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*sub_100134CA4(uint64_t *a1))()
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
  *(v2 + 32) = sub_100134D14(v2);
  return sub_10012F8C8;
}

void (*sub_100134D14(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[1] = v1;
  v3[2] = *v1;
  v3[3] = sub_10012C330;
  v3[4] = off_1001F7760 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10012C330();
  swift_getKeyPath();
  *v4 = v5;
  v4[5] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown);

  *(v4 + 48) = v6;
  return sub_100134E6C;
}

void (*sub_100134EA0(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[1] = v1;
  v3[2] = *v1;
  v3[3] = sub_10015A4E4;
  v3[4] = off_1001F8998 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10015A4E4();
  swift_getKeyPath();
  *v4 = v5;
  v4[5] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown);

  *(v4 + 48) = v6;
  return sub_100134FF8;
}

void sub_10013502C(uint64_t **a1, char a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = ((*a1)[3])((*a1)[2], a3);
  v7 = *(v6 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown);
  if (a2)
  {
    if ((v5 ^ v7))
    {
      goto LABEL_5;
    }

LABEL_6:
    *(v6 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown) = v5;
    sub_10011ABFC(v7);

    goto LABEL_7;
  }

  if (((v5 ^ v7) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *v4 = v6;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_7:
  free(v4);
}

uint64_t (*sub_1001351C4(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = sub_1001347EC(a2, a3) & 1;
  return sub_10013521C;
}

uint64_t sub_100135248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = (*(a2 + 144))(*v4);
  swift_getKeyPath();
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a4;
  swift_beginAccess();
  v8 = *(v6 + v7);

  return v8;
}

uint64_t sub_100135360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = (*(a2 + 144))();
  swift_getKeyPath();
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a4;
  swift_beginAccess();
  v7 = *(v5 + v6);

  return v7;
}

uint64_t sub_100135454(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  (*(a3 + 144))(a2, a3);
  a4(a1);
}

uint64_t (*sub_1001354C0(uint64_t *a1))()
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
  *(v2 + 32) = sub_100135530(v2);
  return sub_10012F8C8;
}

void (*sub_100135530(uint64_t **a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v3[4] = *v1;
  v3[5] = sub_10012C330;
  v3[6] = off_1001F7760 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10012C330();
  swift_getKeyPath();
  *v4 = v5;
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isDarkModeSupportEnabled;
  swift_beginAccess();
  LOBYTE(v6) = *(v5 + v6);

  *(v4 + 56) = v6;
  return sub_100135698;
}

void (*sub_1001356A4(uint64_t **a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v3[4] = *v1;
  v3[5] = sub_10015A4E4;
  v3[6] = off_1001F8998 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10015A4E4();
  swift_getKeyPath();
  *v4 = v5;
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isDarkModeSupportEnabled;
  swift_beginAccess();
  LOBYTE(v6) = *(v5 + v6);

  *(v4 + 56) = v6;
  return sub_10013580C;
}

void sub_100135818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  (*(*a1 + 40))(*(*a1 + 32), a3);
  sub_100116288(v4);

  free(v3);
}

uint64_t (*sub_10013587C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = sub_10013534C(a2, a3) & 1;
  return sub_1001358D4;
}

uint64_t sub_1001358EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 24);
  (*(*(a1 + 8) + 144))(*a1);
  a3(v4);
}

uint64_t sub_100135974(char a1)
{
  v1 = a1 & 1;
  v2 = sub_10012C330();
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isSearchActive;
  swift_beginAccess();
  if (*(v2 + v3) == v1)
  {
    *(v2 + v3) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100135AF8(char a1)
{
  v1 = a1 & 1;
  v2 = sub_10015A4E4();
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isSearchActive;
  swift_beginAccess();
  if (*(v2 + v3) == v1)
  {
    *(v2 + v3) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*sub_100135CA4(uint64_t *a1))()
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
  *(v2 + 32) = sub_100135D14(v2);
  return sub_10012F8C8;
}

void (*sub_100135D14(uint64_t **a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[9] = v1;
  v3[10] = *v1;
  v3[11] = sub_10012C330;
  v3[12] = off_1001F7760 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10012C330();
  swift_getKeyPath();
  *v4 = v5;
  v4[13] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isSearchActive;
  swift_beginAccess();
  LOBYTE(v6) = *(v5 + v6);

  *(v4 + 112) = v6;
  return sub_100135E80;
}

void (*sub_100135EB4(uint64_t **a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[9] = v1;
  v3[10] = *v1;
  v3[11] = sub_10015A4E4;
  v3[12] = off_1001F8998 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10015A4E4();
  swift_getKeyPath();
  *v4 = v5;
  v4[13] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isSearchActive;
  swift_beginAccess();
  LOBYTE(v6) = *(v5 + v6);

  *(v4 + 112) = v6;
  return sub_100136020;
}

void sub_100136054(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 112);
  v6 = (*(*a1 + 88))(*(*a1 + 80), a3);
  v7 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isSearchActive;
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (v5 != *(v6 + v7))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v4[3] = v6;
      goto LABEL_6;
    }

LABEL_7:
    *(v6 + v7) = v5;

    goto LABEL_8;
  }

  swift_beginAccess();
  if (v5 == *(v6 + v7))
  {
    goto LABEL_7;
  }

  v8 = swift_getKeyPath();
  __chkstk_darwin(v8);
  v4[6] = v6;
LABEL_6:
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_8:
  free(v4);
}

uint64_t (*sub_100136210(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = sub_10013595C(a2, a3) & 1;
  return sub_100136268;
}

uint64_t sub_100136294@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = (*(a1 + 144))();
  swift_getKeyPath();
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState + 1);
  *a2 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState);
  a2[1] = v4;
}

uint64_t sub_10013636C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (*(a3 + 144))(a2, a3);
  LOBYTE(v8) = v3;
  BYTE1(v8) = v4;
  sub_100115858(&v8);
  if (v3 == 1 && *(v5 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) != 2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v8 = v5;
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
  }
}

uint64_t (*sub_1001364F4(uint64_t *a1))()
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
  *(v2 + 32) = sub_100136564(v2);
  return sub_10012F8C8;
}

void (*sub_100136564(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[1] = v1;
  v3[2] = *v1;
  v3[3] = sub_10012C330;
  v3[4] = off_1001F7760 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10012C330();
  swift_getKeyPath();
  *v4 = v5;
  v4[5] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState + 1);
  *(v4 + 48) = *(v5 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState);
  *(v4 + 49) = v6;

  return sub_1001366C8;
}

void (*sub_1001366FC(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[1] = v1;
  v3[2] = *v1;
  v3[3] = sub_10015A4E4;
  v3[4] = off_1001F8998 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10015A4E4();
  swift_getKeyPath();
  *v4 = v5;
  v4[5] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState + 1);
  *(v4 + 48) = *(v5 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState);
  *(v4 + 49) = v6;

  return sub_100136860;
}

void sub_100136894(uint64_t **a1, char a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 49);
  v7 = ((*a1)[3])((*a1)[2], a3);
  if (a2)
  {
    v10[0] = v5;
    v10[1] = v6;
    sub_100115858(v10);
    if (v5 && *(v7 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) != 2)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *v4 = v7;
LABEL_9:
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_10;
    }
  }

  else
  {
    v11[0] = v5;
    v11[1] = v6;
    sub_100115858(v11);
    if (v5 && *(v7 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) != 2)
    {
      v9 = swift_getKeyPath();
      __chkstk_darwin(v9);
      *v4 = v7;
      goto LABEL_9;
    }
  }

LABEL_10:
  free(v4);
}

uint64_t (*sub_100136A6C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  sub_100136294(a3, (a1 + 24));
  return sub_100136AC0;
}

uint64_t sub_100136AC0(uint64_t a1, char a2)
{
  v3 = *(a1 + 25);
  v4 = *(a1 + 8);
  v5 = *a1;
  if (a2)
  {
    v8[0] = *(a1 + 24);
    v8[1] = v3;
    v6 = v8;
  }

  else
  {
    v9[0] = *(a1 + 24);
    v9[1] = v3;
    v6 = v9;
  }

  return sub_10013636C(v6, v5, v4);
}

uint64_t (*sub_100136B40(uint64_t *a1))()
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
  *(v2 + 32) = sub_100136BB0(v2);
  return sub_10012F8C8;
}

void (*sub_100136BB0(uint64_t **a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[9] = v1;
  v3[10] = *v1;
  v3[11] = sub_10012C330;
  v3[12] = off_1001F7760 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10012C330();
  swift_getKeyPath();
  *v4 = v5;
  v4[13] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__hasDetectedForm;
  swift_beginAccess();
  LOBYTE(v6) = *(v5 + v6);

  *(v4 + 112) = v6;
  return sub_100136D1C;
}

void sub_100136D1C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = (*(*a1 + 88))(v4, &off_1001F76D0);
  v6 = sub_100143418(v4, &off_1001F76D0);
  v7 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__hasDetectedForm;
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v8 = v6 & 1;
    if (v8 != *(v5 + v7))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v3[3] = v5;
      goto LABEL_6;
    }

LABEL_7:
    *(v5 + v7) = v8;

    goto LABEL_8;
  }

  swift_beginAccess();
  v8 = v6 & 1;
  if (v8 == *(v5 + v7))
  {
    goto LABEL_7;
  }

  v9 = swift_getKeyPath();
  __chkstk_darwin(v9);
  v3[6] = v5;
LABEL_6:
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_8:
  free(v3);
}

void (*sub_100136F08(uint64_t **a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[9] = v1;
  v3[10] = *v1;
  v3[11] = sub_10015A4E4;
  v3[12] = off_1001F8998 & 0xFFFFFFFFFFFFLL | 0xA438000000000000;
  v5 = sub_10015A4E4();
  swift_getKeyPath();
  *v4 = v5;
  v4[13] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__hasDetectedForm;
  swift_beginAccess();
  LOBYTE(v6) = *(v5 + v6);

  *(v4 + 112) = v6;
  return sub_100137074;
}

void sub_100137074(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = (*(*a1 + 88))(v4, &off_1001F8908);
  v6 = sub_100143418(v4, &off_1001F8908);
  v7 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__hasDetectedForm;
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v8 = v6 & 1;
    if (v8 != *(v5 + v7))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v3[3] = v5;
      goto LABEL_6;
    }

LABEL_7:
    *(v5 + v7) = v8;

    goto LABEL_8;
  }

  swift_beginAccess();
  v8 = v6 & 1;
  if (v8 == *(v5 + v7))
  {
    goto LABEL_7;
  }

  v9 = swift_getKeyPath();
  __chkstk_darwin(v9);
  v3[6] = v5;
LABEL_6:
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_8:
  free(v3);
}

uint64_t (*sub_100137260(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = sub_100136B1C(a2, a3) & 1;
  return sub_1001372B8;
}

uint64_t sub_1001372E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000FF5D8(&qword_10020D2F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  type metadata accessor for PreviewTelemetryLogger();
  v8 = (*(a3 + 144))(a2, a3);
  swift_getKeyPath();
  v14 = v8;
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__contentType;
  swift_beginAccess();
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, v8 + v9, v10);

  (*(v11 + 56))(v7, 0, 1, v10);
  sub_100143FA0(v7, &v13 + 7);
  BYTE5(v13) = 15;
  sub_100144C1C(&v13 + 5, &v13 + 7);
  sub_100110174(v7, &qword_10020D2F8);
  *(&v13 + 5) = 257;
  return (*(a3 + 408))(&v13 + 5, a2, a3);
}

uint64_t sub_100137544(void *a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v19 = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 localizedName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = String.count.getter();

  if (v11 < 1)
  {
    v16 = [a1 fileURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = URL.lastPathComponent.getter();
    v15 = v17;
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v12 = [a1 localizedName];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  v20[0] = a2;
  v20[1] = v13;
  v20[2] = v15;
  swift_errorRetain();
  return v19(v20);
}

uint64_t sub_1001376FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 localizedName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = String.count.getter();

  if (v12 < 1)
  {
    v17 = [a1 fileURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = URL.lastPathComponent.getter();
    v16 = v18;
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v13 = [a1 localizedName];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  v25[0] = a2;
  v25[1] = v14;
  v25[2] = v16;
  v19 = v24;
  v20 = *(v24 + 184);
  swift_errorRetain();
  return v20(v25, v23, v19);
}

uint64_t sub_1001378C8()
{
  v1[2] = v0;
  v1[3] = *v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100137988, v3, v2);
}

uint64_t sub_100137988()
{

  if (sub_10012973C())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100137A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100137AD8, v6, v5);
}

uint64_t sub_100137AD8()
{
  v2 = v0[2];
  v1 = v0[3];

  if ((*(v1 + 96))(v2, v1))
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100137BA8()
{
  v1 = 0x6C416E6564646968;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6873;
  }
}

uint64_t sub_100137C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100141AA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100137C4C(uint64_t a1)
{
  v2 = sub_100140E0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137C88(uint64_t a1)
{
  v2 = sub_100140E0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137CD0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100137D0C(uint64_t a1)
{
  v2 = sub_100140EB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137D48(uint64_t a1)
{
  v2 = sub_100140EB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137D84(uint64_t a1)
{
  v2 = sub_100140E60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137DC0(uint64_t a1)
{
  v2 = sub_100140E60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137DFC(uint64_t a1)
{
  v2 = sub_100140F08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137E38(uint64_t a1)
{
  v2 = sub_100140F08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137E74(void *a1)
{
  v3 = sub_1000FF5D8(&qword_10020E360);
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v24 = &v18 - v4;
  v5 = sub_1000FF5D8(&qword_10020E368);
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v21 = &v18 - v6;
  v7 = sub_1000FF5D8(&qword_10020E370);
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_1000FF5D8(&qword_10020E378);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - v12;
  v14 = *v1;
  sub_100140DC8(a1, a1[3]);
  sub_100140E0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_100140EB4();
      v9 = v21;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_100140E60();
      v9 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_100140F08();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1001381E0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = sub_1000FF5D8(&qword_10020E3A0);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v41 = &v32 - v4;
  v38 = sub_1000FF5D8(&qword_10020E3A8);
  v35 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v32 - v5;
  v7 = sub_1000FF5D8(&qword_10020E3B0);
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = sub_1000FF5D8(&qword_10020E3B8);
  v42 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_100140DC8(a1, a1[3]);
  sub_100140E0C();
  v13 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_100140EB4();
          v27 = v34;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_100140E60();
          v31 = v34;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_100140F08();
        v29 = v34;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return sub_10010FA4C(v24);
    }
  }

  v21 = type metadata accessor for DecodingError();
  swift_allocError();
  v23 = v22;
  sub_1000FF5D8(&qword_10020E3C0);
  *v23 = &type metadata for DocumentCloseButtonState;
  KeyedDecodingContainer.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return sub_10010FA4C(v24);
}

uint64_t sub_1001387A0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10013884C()
{
  v0 = type metadata accessor for UUID();
  sub_100101B54(v0, qword_10020E348);
  sub_100101048(v0, qword_10020E348);
  return UUID.init()();
}

uint64_t sub_100138898()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DocumentOpeningOptions();
  (*(v3 + 16))(v5, v1 + *(v6 + 28), v2);
  if (qword_10020D050 != -1)
  {
    swift_once();
  }

  sub_100101048(v2, qword_10020E348);
  sub_1001432D0(&qword_10020D938, &type metadata accessor for UUID);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v3 + 8))(v5, v2);
  if ((v7 & 1) == 0)
  {
    *(v1 + 1) = 3;
  }

  return result;
}

uint64_t sub_100138A24()
{
  v1 = type metadata accessor for PreviewActionSpec(0);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 1);
  if (v5 <= 1)
  {
    if (*(v0 + 1))
    {
      if (qword_10020D2A8 != -1)
      {
        v12 = v2;
        swift_once();
        v2 = v12;
      }

      v6 = qword_10020FC68;
    }

    else
    {
      if (qword_10020D2A0 != -1)
      {
        v10 = v2;
        swift_once();
        v2 = v10;
      }

      v6 = qword_10020FC50;
    }

LABEL_13:
    v8 = sub_100101048(v2, v6);
    sub_100140FA8(v8, v4, type metadata accessor for PreviewActionSpec);
    type metadata accessor for NewDocumentAction(0);
    v7 = swift_allocObject();
    *(v7 + *(*v7 + 104)) = v5;
    sub_100141100(v4, v7 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec, type metadata accessor for PreviewActionSpec);
    return v7;
  }

  v7 = 0;
  if (v5 == 2)
  {
    if (qword_10020D2B0 != -1)
    {
      v11 = v2;
      swift_once();
      v2 = v11;
    }

    v6 = qword_10020FC80;
    goto LABEL_13;
  }

  return v7;
}

uint64_t sub_100138BF8(uint64_t result)
{
  if (result)
  {
    v2 = *(result + *(*result + 104));
  }

  else
  {
    v2 = 3;
  }

  *(v1 + 1) = v2;
  return result;
}

void (*sub_100138C40(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = type metadata accessor for PreviewActionSpec(0);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  v5 = v4;
  a1[2] = v4;
  v6 = *(v1 + 1);
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      v9 = 0;
      goto LABEL_18;
    }

    if (qword_10020D2B0 != -1)
    {
      swift_once();
    }

    v7 = qword_10020FC80;
  }

  else if (*(v1 + 1))
  {
    if (qword_10020D2A8 != -1)
    {
      swift_once();
    }

    v7 = qword_10020FC68;
  }

  else
  {
    if (qword_10020D2A0 != -1)
    {
      swift_once();
    }

    v7 = qword_10020FC50;
  }

  v8 = sub_100101048(v3, v7);
  sub_100140FA8(v8, v5, type metadata accessor for PreviewActionSpec);
  type metadata accessor for NewDocumentAction(0);
  v9 = swift_allocObject();
  *(v9 + *(*v9 + 104)) = v6;
  sub_100141100(v5, v9 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec, type metadata accessor for PreviewActionSpec);
LABEL_18:
  *a1 = v9;
  return sub_100138E20;
}

void sub_100138E20(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(v2 + *(*v2 + 104));
  }

  else
  {
    v3 = 3;
  }

  v4 = a1[2];
  *(a1[1] + 1) = v3;

  free(v4);
}

uint64_t sub_100138E84@<X0>(uint64_t a1@<X8>)
{
  *a1 = 768;
  *(a1 + 2) = 0;
  if (qword_10020D050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UUID();
  v3 = sub_100101048(v2, qword_10020E348);
  v4 = type metadata accessor for DocumentOpeningOptions();
  v5 = *(*(v2 - 8) + 16);
  v6 = a1 + *(v4 + 28);

  return v5(v6, v3, v2);
}

uint64_t sub_100138F50(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DocumentOpeningOptions();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_100140FA8(v2, v8, type metadata accessor for DocumentOpeningOptions);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v13 = static MainActor.shared.getter();
  v14 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = a1;
  v15[5] = a2;
  sub_100141100(v8, v15 + v14, type metadata accessor for DocumentOpeningOptions);
  sub_100128F38(0, 0, v11, &unk_1001A66E0, v15);
}

uint64_t sub_10013913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for NavigationSplitViewVisibility();
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for UTType();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10013926C, v9, v8);
}

uint64_t sub_10013926C()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];

  ObjectType = swift_getObjectType();
  (*(v5 + 144))(ObjectType, v5);
  sub_100119D68(*v6);

  (*(v5 + 40))(ObjectType, v5);
  static UTType.pdf.getter();
  sub_1001432D0(&qword_10020DC50, &type metadata accessor for UTType);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v2, v4);
  v9(v1, v4);
  if (v8)
  {
    if (qword_10020D2D8 != -1)
    {
      swift_once();
    }

    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 1)
    {
      v12 = v0[5];
      (*(v0[3] + 120))(ObjectType);
      static NavigationSplitViewVisibility.all.getter();
      sub_10018EB74(v12);
    }
  }

  v13 = v0[1];

  return v13();
}

unint64_t sub_1001394B0()
{
  v1 = 0x614D656C62616E65;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10013953C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100141BC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100139570(uint64_t a1)
{
  v2 = sub_10014126C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001395AC(uint64_t a1)
{
  v2 = sub_10014126C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001395E8(void *a1)
{
  v3 = v1;
  v5 = sub_1000FF5D8(&qword_10020E3C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100140DC8(a1, a1[3]);
  sub_10014126C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 1);
    v10[13] = 1;
    sub_1001412C0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[12] = *(v3 + 2);
    v10[11] = 2;
    sub_100141314();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for DocumentOpeningOptions();
    v10[10] = 3;
    type metadata accessor for UUID();
    sub_1001432D0(&qword_10020E3E8, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100139820()
{
  Hasher._combine(_:)(*v0);
  v1 = v0[1];
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v0[2]);
  type metadata accessor for DocumentOpeningOptions();
  type metadata accessor for UUID();
  sub_1001432D0(&qword_10020E3F0, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001398F4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = v0[1];
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v0[2]);
  type metadata accessor for DocumentOpeningOptions();
  type metadata accessor for UUID();
  sub_1001432D0(&qword_10020E3F0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001399E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for UUID();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000FF5D8(&qword_10020E3F8);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for DocumentOpeningOptions();
  __chkstk_darwin(v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[2] = 0;
  v13 = a1[3];
  v23 = a1;
  sub_100140DC8(a1, v13);
  sub_10014126C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10010FA4C(v23);
  }

  v14 = v6;
  v29 = 0;
  v15 = v21;
  v16 = v22;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v27 = 1;
  sub_100141368();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12[1] = v28;
  v25 = 2;
  sub_1001413BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[2] = v26;
  v24 = 3;
  sub_1001432D0(&qword_10020E410, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 8))(v9, v16);
  (*(v19 + 32))(&v12[*(v10 + 28)], v14, v4);
  sub_100140FA8(v12, v20, type metadata accessor for DocumentOpeningOptions);
  sub_10010FA4C(v23);
  return sub_100141410(v12);
}

Swift::Int sub_100139DA8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = v0[1];
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v0[2]);
  type metadata accessor for UUID();
  sub_1001432D0(&qword_10020E3F0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*sub_100139EC0(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = sub_100132DBC(v6, a2, a3);
  return sub_10012F8C8;
}

uint64_t (*sub_100139F54(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = sub_1001337C8(v6, a2, a3);
  return sub_10012F8C8;
}

uint64_t (*sub_100139FE4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = sub_100133CF0(v6, a2, a3);
  return sub_10012F8C8;
}

uint64_t (*sub_10013A074(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = sub_100134768(v6, a2, a3);
  return sub_10012F8C8;
}

uint64_t (*sub_10013A104(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = sub_1001351C4(v6, a2, a3);
  return sub_10012F8C8;
}

uint64_t (*sub_10013A194(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = sub_10013587C(v6, a2, a3);
  return sub_10012F8C8;
}

uint64_t (*sub_10013A224(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = sub_100136210(v6, a2, a3);
  return sub_10012E7E8;
}

uint64_t sub_10013A2B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return sub_10013636C(v5, a2, a3);
}

uint64_t (*sub_10013A2E4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = sub_100136A6C(v6, a2, a3);
  return sub_10012F8C8;
}

uint64_t (*sub_10013A370(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = sub_100137260(v6, a2, a3);
  return sub_10012F8C8;
}

uint64_t sub_10013A3F8()
{
  v1 = sub_100182070(v0);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for PDFDocument();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for PDFDocumentViewModel();
      swift_allocObject();
      v5 = v2;
      v6 = sub_10015836C(v4);
      v7 = &off_1001F8908;
    }

    else
    {
      type metadata accessor for ImageDocument();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {
        v11 = 0;
        v8 = 0;
        goto LABEL_8;
      }

      type metadata accessor for ImageDocumentViewModel();
      swift_allocObject();
      v10 = v2;
      v6 = sub_100129B70(v9);
      v7 = &off_1001F76D0;
    }

    v11 = v7[2];
    swift_unknownObjectRetain();
    v8 = v6;
LABEL_8:
    v12 = &v2[OBJC_IVAR____TtC17PreviewFoundation8Document_delegate];
    swift_beginAccess();
    *(v12 + 1) = v11;
    swift_unknownObjectWeakAssign();

    swift_unknownObjectRelease();
    return v8;
  }

  return 0;
}

uint64_t sub_10013A550()
{
  v1 = v0;
  type metadata accessor for PDFDocument();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for PDFDocumentViewModel();
    swift_allocObject();
    v4 = v1;
    v5 = sub_10015836C(v3);
    v6 = &off_1001F8908;
  }

  else
  {
    type metadata accessor for ImageDocument();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_6;
    }

    type metadata accessor for ImageDocumentViewModel();
    swift_allocObject();
    v8 = v1;
    v5 = sub_100129B70(v7);
    v6 = &off_1001F76D0;
  }

  v9 = v6[2];
  swift_unknownObjectRetain();
  v10 = v5;
LABEL_6:
  v11 = &v1[OBJC_IVAR____TtC17PreviewFoundation8Document_delegate];
  swift_beginAccess();
  *(v11 + 1) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_10013A68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_10013A758;

  return sub_10013ABB4(a2, a3);
}

uint64_t sub_10013A758()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 88) = v3;
  *(v1 + 96) = v2;

  return _swift_task_switch(sub_10013A89C, v3, v2);
}

uint64_t sub_10013A89C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(v2 + 32);
  v0[13] = v3;
  v0[14] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x85C4000000000000;
  v0[15] = v3(v1);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_10013A958;

  return sub_10017CE38();
}

uint64_t sub_10013A958()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10013AB44;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10013AA74;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10013AA74()
{
  super_class = v0[6].super_class;
  receiver = v0[3].receiver;
  v3 = v0[2].super_class;

  v4 = super_class(v3, receiver);
  v5 = type metadata accessor for Document(0);
  v0[1].receiver = v4;
  v0[1].super_class = v5;
  v6 = objc_msgSendSuper2(v0 + 1, "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v0->super_class;

  return v7();
}

uint64_t sub_10013AB44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013ABB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_10013AC50, v5, v4);
}

uint64_t sub_10013AC50()
{
  v1 = (*(v0[3] + 72))(v0[2]);
  v0[8] = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v8 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_10013ADD0;

    return v8(ObjectType, v3);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10013ADD0()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10013AF14, v3, v2);
}

uint64_t sub_10013AF14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013AF74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = v3;
  sub_100128F38(0, 0, v8, &unk_1001A6710, v11);
}

uint64_t sub_10013B0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_10013B178;

  return sub_10013ABB4(a5, a6);
}

uint64_t sub_10013B178()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 64) = v3;
  *(v1 + 72) = v2;

  return _swift_task_switch(sub_10013B2BC, v3, v2);
}

uint64_t sub_10013B2BC()
{
  v0[10] = (*(v0[4] + 32))(v0[3]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_10013B36C;

  return sub_10017CE38();
}

uint64_t sub_10013B36C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 80);
  if (v0)
  {

    v5 = *(v3 + 64);
    v6 = *(v3 + 72);
    v7 = sub_100143424;
  }

  else
  {

    v5 = *(v3 + 64);
    v6 = *(v3 + 72);
    v7 = sub_10013B4A8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10013B4A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013B544(char a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a1 & 1;
  v6 = (*(a3 + 144))(a2, a3);
  v7 = *a4;
  swift_beginAccess();
  if (*(v6 + v7) == v5)
  {
    *(v6 + v7) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*sub_10013B69C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = sub_10013B508(a2, a3) & 1;
  return sub_10013B6F4;
}

uint64_t sub_10013B734(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (*(a2 + 144))();
  swift_getKeyPath();
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a4);

  return v6;
}

uint64_t sub_10013B7FC(char a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 & 1;
  v4 = (*(a3 + 144))(a2, a3);
  if (*(v4 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___isVisualSearchActive) == v3)
  {
    *(v4 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___isVisualSearchActive) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*sub_10013B964(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = sub_10013B720(a2, a3) & 1;
  return sub_10013B9BC;
}

void *sub_10013B9E8(uint64_t a1, uint64_t a2)
{
  v149 = sub_1000FF5D8(&qword_10020E418);
  __chkstk_darwin(v149);
  v141 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v147 = (&v134 - v7);
  __chkstk_darwin(v8);
  v146 = (&v134 - v9);
  v155 = type metadata accessor for Date();
  v151 = *(v155 - 8);
  __chkstk_darwin(v155);
  v140 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v139 = &v134 - v12;
  __chkstk_darwin(v13);
  v145 = &v134 - v14;
  __chkstk_darwin(v15);
  v154 = &v134 - v16;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_opt_self();
  v23 = a2 + 32;
  v22 = *(a2 + 32);
  v157 = a1;
  v158 = v2;
  v156 = a2;
  v24 = v22(a1, a2);
  v25 = type metadata accessor for Document(0);
  v162.receiver = v24;
  v162.super_class = v25;
  v26 = objc_msgSendSuper2(&v162, "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v32 = *(v18 + 8);
  v30 = v18 + 8;
  v31 = v32;
  v32(v20, v17);
  v33 = [v21 currentVersionOfItemAtURL:v29];

  v152 = v33;
  if (!v33)
  {
    if (qword_10020D068 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100101048(v46, qword_10020E690);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_100125658(0xD000000000000011, 0x80000001001B6C70, aBlock);
      _os_log_impl(&dword_100000000, v47, v48, "%s: There is a conflict, but file has no current version. This should never happen.", v49, 0xCu);
      sub_10010FA4C(v50);
    }

    return 0;
  }

  v150 = v23;
  v34 = v22(v157, v156);
  v161.receiver = v34;
  v161.super_class = v25;
  v35 = &selRef_addGestureRecognizer_;
  v36 = objc_msgSendSuper2(&v161, "fileURL");
  v153 = v31;
  v37 = v36;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = v153;
  URL._bridgeToObjectiveC()(v39);
  v41 = v40;
  v137 = v30;
  v38(v20, v17);
  v42 = [v21 unresolvedConflictVersionsOfItemAtURL:v41];

  v138 = v17;
  v43 = v22;
  v44 = v20;
  v135 = v25;
  if (v42)
  {
    sub_100142068();
    v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v143 = v45;
  }

  else
  {
    v143 = 0;
  }

  v52 = sub_100141E90();

  v53 = v152;
  v160 = v152;
  isEscapingClosureAtFileLocation = v52;
  v55 = v53;
  v56 = [v55 modificationDate];
  v136 = v43;
  v134 = v44;
  v144 = v55;
  v142 = isEscapingClosureAtFileLocation;
  if (!v56)
  {
LABEL_20:
    v148 = v52;
    if (qword_10020D068 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_100101048(v91, qword_10020E690);
    v92 = v55;
    v93 = isEscapingClosureAtFileLocation;
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v96 = 136315650;
      *(v96 + 4) = sub_100125658(0xD000000000000011, 0x80000001001B6C70, aBlock);
      *(v96 + 12) = 2080;
      v97 = [v92 modificationDate];
      if (v97)
      {
        v98 = v146;
        v99 = v97;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v100 = 0;
      }

      else
      {
        v100 = 1;
        v98 = v146;
      }

      v102 = *(v151 + 56);
      v103 = v155;
      v102(v98, v100, 1, v155);
      v104 = String.init<A>(describing:)();
      v106 = sub_100125658(v104, v105, aBlock);

      *(v96 + 14) = v106;
      *(v96 + 22) = 2080;
      if (v148)
      {
        v107 = [v93 modificationDate];
        v101 = v157;
        if (v107)
        {
          v108 = v141;
          v109 = v107;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v110 = 0;
        }

        else
        {
          v110 = 1;
          v108 = v141;
        }

        v102(v108, v110, 1, v155);
        sub_100141FF8(v108, v147);
      }

      else
      {
        v102(v147, 1, 1, v103);
        v101 = v157;
      }

      v111 = String.init<A>(describing:)();
      v113 = sub_100125658(v111, v112, aBlock);

      *(v96 + 24) = v113;
      _os_log_impl(&dword_100000000, v94, v95, "%s: Current version is the most recent: %s, most recent conflicting version: (%s).", v96, 0x20u);
      swift_arrayDestroy();

      v38 = v153;
      v35 = &selRef_addGestureRecognizer_;
      isEscapingClosureAtFileLocation = v142;
    }

    else
    {

      v101 = v157;
    }

    goto LABEL_36;
  }

  v57 = v154;
  v58 = v56;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v52)
  {
    (*(v151 + 8))(v57, v155);
    goto LABEL_20;
  }

  v59 = isEscapingClosureAtFileLocation;
  v60 = [v59 modificationDate];
  if (!v60)
  {
    (*(v151 + 8))(v154, v155);

    v38 = v153;
    goto LABEL_20;
  }

  v61 = v60;
  v62 = v145;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = v154;
  LOBYTE(v61) = static Date.> infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    v86 = *(v151 + 8);
    v87 = v62;
    v88 = v52;
    v89 = v155;
    v86(v87, v155);
    v90 = v89;
    v52 = v88;
    v86(v63, v90);
    v38 = v153;
    v35 = &selRef_addGestureRecognizer_;
    goto LABEL_20;
  }

  v160 = v59;
  v149 = v59;

  v64 = qword_10020D068;
  v65 = v55;
  v35 = &selRef_addGestureRecognizer_;
  if (v64 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v66 = type metadata accessor for Logger();
    sub_100101048(v66, qword_10020E690);
    v67 = v151;
    v68 = *(v151 + 16);
    v69 = v139;
    v70 = v145;
    v71 = v155;
    v68(v139, v145, v155);
    v72 = v140;
    v68(v140, v154, v71);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      aBlock[0] = v148;
      *v75 = 136315650;
      *(v75 + 4) = sub_100125658(0xD000000000000011, 0x80000001001B6C70, aBlock);
      *(v75 + 12) = 2080;
      sub_1001432D0(&qword_10020E420, &type metadata accessor for Date);
      LODWORD(v147) = v74;
      v146 = v73;
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      v79 = *(v67 + 8);
      v79(v69, v71);
      v80 = sub_100125658(v76, v78, aBlock);

      *(v75 + 14) = v80;
      *(v75 + 22) = 2080;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v79(v72, v71);
      v84 = sub_100125658(v81, v83, aBlock);

      *(v75 + 24) = v84;
      v85 = v146;
      _os_log_impl(&dword_100000000, v146, v147, "%s: Using most recent conflicting version (%s). Current version (%s) is older", v75, 0x20u);
      swift_arrayDestroy();

      v79(v145, v71);
      v79(v154, v71);
    }

    else
    {

      v114 = *(v67 + 8);
      v114(v72, v71);
      v114(v69, v71);
      v114(v70, v71);
      v114(v154, v71);
    }

    v148 = v152;
    v101 = v157;
    v38 = v153;
LABEL_36:
    v115 = v160;
    v116 = [v160 isConflict];
    v117 = v158;
    if (!v116)
    {
      break;
    }

    v118 = v156;
    v119 = v35;
    v120 = v38;
    v121 = v136;
    v122 = v136(v101, v156);
    v35 = [objc_allocWithZone(NSFileCoordinator) initWithFilePresenter:v122];

    v123 = v121(v101, v118);
    v159.receiver = v123;
    v159.super_class = v135;
    v124 = objc_msgSendSuper2(&v159, v119[187]);
    v125 = v134;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v126);
    v128 = v127;
    v120(v125, v138);
    v129 = swift_allocObject();
    v129[2] = v101;
    v129[3] = v118;
    v129[4] = &v160;
    v129[5] = v117;
    v129[6] = v143;
    v130 = swift_allocObject();
    v130[2] = sub_100141F98;
    v130[3] = v129;
    aBlock[4] = sub_100141FB8;
    aBlock[5] = v130;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013D024;
    aBlock[3] = &unk_1001F7B50;
    v131 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    aBlock[0] = 0;
    [v35 coordinateWritingItemAtURL:v128 options:4 error:aBlock byAccessor:v131];

    _Block_release(v131);
    v132 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v133 = v160;

      return v148;
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

  return v148;
}

void sub_10013C9B8(uint64_t a1, id *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v56 = a5;
  v54 = a4;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v58 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_10020D068 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    v57 = sub_100101048(v12, qword_10020E690);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v60 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100125658(0xD000000000000011, 0x80000001001B6C70, &v60);
      _os_log_impl(&dword_100000000, v13, v14, "%s: Replacing current version with winning version, reverting the document, and removing other conflicting versions.", v15, 0xCu);
      sub_10010FA4C(v16);
    }

    v17 = *a2;
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    v60 = 0;
    v21 = [v17 replaceItemAtURL:v19 options:0 error:&v60];

    v22 = v60;
    if (!v21)
    {
      break;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = v9[1];
    v53[1] = v9 + 1;
    (v24)(v11, v8);
    v25 = v56;
    v26 = *(v55 + 32);
    v53[0] = v8;
    v8 = a3;
    v27 = v55;
    v28 = v26(v56, v55);
    URL._bridgeToObjectiveC()(v29);
    v31 = v30;
    [v28 revertToContentsOfURL:v30 completionHandler:0];

    v32 = objc_opt_self();
    v33 = v26(v25, v27);
    v34 = type metadata accessor for Document(0);
    v59.receiver = v33;
    v59.super_class = v34;
    v35 = objc_msgSendSuper2(&v59, "fileURL");
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v36);
    v38 = v37;
    (v24)(v11, v53[0]);
    v60 = 0;
    LODWORD(v32) = [v32 removeOtherVersionsOfItemAtURL:v38 error:&v60];

    v22 = v60;
    if (!v32)
    {
      break;
    }

    a3 = v54;
    if (!v54)
    {
      goto LABEL_29;
    }

    if (v54 >> 62)
    {
      a2 = _CocoaArrayWrapper.endIndex.getter();
      if (!a2)
      {
LABEL_29:
        v52 = v22;
        goto LABEL_30;
      }
    }

    else
    {
      a2 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a2)
      {
        goto LABEL_29;
      }
    }

    v11 = (a3 & 0xC000000000000001);
    v39 = v22;
    v40 = 0;
    v9 = &selRef_addGestureRecognizer_;
    while (1)
    {
      if (v11)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v40 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v41 = *(a3 + 8 * v40 + 32);
      }

      v8 = v41;
      v42 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      [v41 setResolved:1];
      v60 = 0;
      if (![v8 removeAndReturnError:&v60])
      {
        v51 = v60;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_21;
      }

      v43 = v60;

      ++v40;
      if (v42 == a2)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  v44 = v22;
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_21:
  swift_errorRetain();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v47 = 136315394;
    *(v47 + 4) = sub_100125658(0xD000000000000011, 0x80000001001B6C70, &v60);
    *(v47 + 12) = 2080;
    swift_getErrorValue();
    v48 = Error.localizedDescription.getter();
    v50 = sub_100125658(v48, v49, &v60);

    *(v47 + 14) = v50;
    _os_log_impl(&dword_100000000, v45, v46, "%s: Error while trying to resolve conflict: %s", v47, 0x16u);
    swift_arrayDestroy();

    return;
  }

LABEL_30:
}

uint64_t sub_10013D024(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v6(v5);
  return (*(v3 + 8))(v5, v2);
}

id sub_10013D108(id *a1, id *a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v35 = v33 - v9;
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = sub_1000FF5D8(&qword_10020E418);
  __chkstk_darwin(v13 - 8);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v33 - v17;
  v37 = *a1;
  v36 = *a2;
  type metadata accessor for MainActor();
  v19 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = [v37 modificationDate];
  if (!v20)
  {
    (*(v6 + 56))(v18, 1, 1, v5);
    sub_100110174(v18, &qword_10020E418);
    v31 = 0;
    goto LABEL_10;
  }

  v33[1] = v19;
  v33[2] = v2;
  v21 = v20;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = *(v6 + 32);
  v22(v18, v12, v5);
  v23 = *(v6 + 56);
  v23(v18, 0, 1, v5);
  sub_100110174(v18, &qword_10020E418);
  v24 = [v36 modificationDate];
  if (!v24)
  {
    v31 = 1;
    v23(v15, 1, 1, v5);
    sub_100110174(v15, &qword_10020E418);
    goto LABEL_10;
  }

  v25 = v24;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v22(v15, v12, v5);
  v23(v15, 0, 1, v5);
  sub_100110174(v15, &qword_10020E418);
  result = [v37 modificationDate];
  if (result)
  {
    v27 = result;
    v28 = v35;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    result = [v36 modificationDate];
    if (result)
    {
      v29 = result;
      v30 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = static Date.> infix(_:_:)();
      v32 = *(v6 + 8);
      v32(v30, v5);
      v32(v28, v5);
LABEL_10:

      return (v31 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10013D554@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = (*(a1 + 144))(*v2);
  swift_getKeyPath();
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  swift_beginAccess();
  *a2 = *(v4 + v5);
}

uint64_t (*sub_10013D664(uint64_t *a1))()
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
  *(v2 + 32) = sub_100132A58(v2);
  return sub_10012F8C8;
}

BOOL sub_10013D6DC(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 144))(*v2);
  swift_getKeyPath();
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);

  return v4 == 1;
}

uint64_t (*sub_10013D7E8(uint64_t *a1))()
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
  *(v2 + 32) = sub_10013364C(v2);
  return sub_10012F8C8;
}

BOOL sub_10013D85C(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 144))(*v2);
  swift_getKeyPath();
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);

  return v4 == 3;
}

uint64_t (*sub_10013D968(uint64_t *a1))()
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
  *(v2 + 32) = sub_100133B08(v2);
  return sub_10012F8C8;
}

uint64_t (*sub_10013D9F0(uint64_t *a1))()
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
  *(v2 + 32) = sub_100134404(v2);
  return sub_10012F8C8;
}

uint64_t sub_10013DA64(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 144))(*v2);
  swift_getKeyPath();
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown);

  return v4;
}

uint64_t (*sub_10013DB58(uint64_t *a1))()
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
  *(v2 + 32) = sub_100134EA0(v2);
  return sub_10012F8C8;
}

uint64_t sub_10013DBF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  (*(a3 + 144))(*v4, a3);
  a4(a1);
}

uint64_t (*sub_10013DC84(uint64_t *a1))()
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
  *(v2 + 32) = sub_1001356A4(v2);
  return sub_10012F8C8;
}

uint64_t (*sub_10013DD0C(uint64_t *a1))()
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
  *(v2 + 32) = sub_100135EB4(v2);
  return sub_10012F8C8;
}

uint64_t sub_10013DD80@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = (*(a1 + 144))(*v2);
  swift_getKeyPath();
  sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState + 1);
  *a2 = *(v4 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState);
  a2[1] = v5;
}

uint64_t sub_10013DE84(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  (*(a3 + 144))(*v3, a3);
  v7[0] = v4;
  v7[1] = v5;
  sub_100119F60(v7);
}

uint64_t (*sub_10013DF20(uint64_t *a1))()
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
  *(v2 + 32) = sub_1001366FC(v2);
  return sub_10012F8C8;
}

uint64_t (*sub_10013DFA8(uint64_t *a1))()
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
  *(v2 + 32) = sub_100136F08(v2);
  return sub_10012F8C8;
}

uint64_t sub_10013E048()
{
  v1[2] = v0;
  v1[3] = *v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10013E108, v3, v2);
}

uint64_t sub_10013E108()
{

  if (sub_100157F98())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 8);

  return v4();
}

char *sub_10013E29C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000FF5D8(&qword_10020E560);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

char *sub_10013E390(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000FF5D8(&qword_10020E558);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10013E494(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100140850(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10013E510(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_10013E510(uint64_t *a1)
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
        sub_100142068();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10013EB48(v8, v9, a1, v4);
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
    sub_10013E614(0, v2, 1, a1);
  }
}

void sub_10013E614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = type metadata accessor for Date();
  v8 = *(v73 - 8);
  __chkstk_darwin(v73);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v56 - v11;
  __chkstk_darwin(v12);
  v68 = &v56 - v13;
  v14 = sub_1000FF5D8(&qword_10020E418);
  __chkstk_darwin(v14 - 8);
  v65 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v67 = &v56 - v17;
  v57 = a2;
  if (a3 == a2)
  {
    return;
  }

  v18 = *a4;
  v66 = type metadata accessor for MainActor();
  v19 = (v8 + 32);
  v69 = v18;
  v20 = v18 + 8 * a3;
  v21 = (v8 + 56);
  v22 = v20 - 8;
  v23 = a1 - a3;
  v61 = (v8 + 56);
  v62 = (v8 + 8);
LABEL_6:
  v59 = v22;
  v60 = a3;
  v25 = *(v69 + 8 * a3);
  v58 = v23;
  v26 = v23;
  v27 = v22;
  while (1)
  {
    v28 = *v27;
    v74 = v25;
    v72 = v28;
    v29 = static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v30 = [v74 modificationDate];
    v31 = v68;
    if (!v30)
    {
      v24 = v67;
      (*v21)(v67, 1, 1, v73);
      sub_100110174(v24, &qword_10020E418);

LABEL_5:
      a3 = v60 + 1;
      v22 = v59 + 8;
      v23 = v58 - 1;
      if (v60 + 1 == v57)
      {
        return;
      }

      goto LABEL_6;
    }

    v32 = v30;
    v70 = v29;
    v71 = v26;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *v19;
    v34 = v67;
    v35 = v73;
    (*v19)(v67, v31, v73);
    v36 = *v21;
    (*v21)(v34, 0, 1, v35);
    sub_100110174(v34, &qword_10020E418);
    v37 = v72;
    v38 = [v72 modificationDate];
    if (!v38)
    {
      break;
    }

    v39 = v38;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = v65;
    v41 = v31;
    v42 = v73;
    v33(v65, v41, v73);
    v36(v40, 0, 1, v42);
    sub_100110174(v40, &qword_10020E418);
    v43 = [v74 modificationDate];
    if (!v43)
    {
      goto LABEL_22;
    }

    v44 = v43;
    v45 = v19;
    v46 = v73;
    v47 = v64;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = [v37 modificationDate];
    if (!v48)
    {
      goto LABEL_21;
    }

    v49 = v48;
    v50 = v63;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v49) = static Date.> infix(_:_:)();
    v51 = *v62;
    (*v62)(v50, v46);
    v51(v47, v46);

    v19 = v45;
    v21 = v61;
    v52 = v71;
    if ((v49 & 1) == 0)
    {
      goto LABEL_5;
    }

    if (!v69)
    {
      goto LABEL_20;
    }

LABEL_17:
    v54 = *v27;
    v25 = *(v27 + 8);
    *v27 = v25;
    *(v27 + 8) = v54;
    v27 -= 8;
    v55 = __CFADD__(v52, 1);
    v26 = v52 + 1;
    if (v55)
    {
      goto LABEL_5;
    }
  }

  v53 = v65;
  v36(v65, 1, 1, v73);
  sub_100110174(v53, &qword_10020E418);

  v52 = v71;
  if (v69)
  {
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_10013EB48(void ***a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v155 = a4;
  v162 = type metadata accessor for Date();
  v8 = *(v162 - 8);
  __chkstk_darwin(v162);
  v166 = (&v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v167 = &v151 - v11;
  __chkstk_darwin(v12);
  v156 = &v151 - v13;
  __chkstk_darwin(v14);
  v157 = &v151 - v15;
  __chkstk_darwin(v16);
  v18 = &v151 - v17;
  v19 = sub_1000FF5D8(&qword_10020E418);
  __chkstk_darwin(v19 - 8);
  v169 = (&v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v171 = (&v151 - v22);
  __chkstk_darwin(v23);
  v158 = (&v151 - v24);
  __chkstk_darwin(v25);
  v161 = (&v151 - v26);
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_117:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_162;
    }

    v18 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v146 = v18;
LABEL_120:
      v182 = v146;
      v18 = *(v146 + 2);
      if (v18 >= 2)
      {
        while (*a3)
        {
          v147 = *&v146[16 * v18];
          v148 = v146;
          v149 = *&v146[16 * v18 + 24];
          sub_10013FAA4((*a3 + 8 * v147), (*a3 + 8 * *&v146[16 * v18 + 16]), (*a3 + 8 * v149), v8);
          if (v5)
          {
            goto LABEL_128;
          }

          if (v149 < v147)
          {
            goto LABEL_145;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v148 = sub_1001405A0(v148);
          }

          if (v18 - 2 >= *(v148 + 2))
          {
            goto LABEL_146;
          }

          v150 = &v148[16 * v18];
          *v150 = v147;
          *(v150 + 1) = v149;
          v182 = v148;
          sub_100140514(v18 - 1);
          v146 = v182;
          v18 = *(v182 + 2);
          if (v18 <= 1)
          {
            goto LABEL_128;
          }
        }

        goto LABEL_158;
      }

LABEL_128:

      return;
    }

LABEL_152:
    v146 = sub_1001405A0(v18);
    goto LABEL_120;
  }

  v28 = 0;
  v172 = (v8 + 4);
  v174 = (v8 + 7);
  v168 = v8 + 1;
  v29 = _swiftEmptyArrayStorage;
  v30 = &selRef_addGestureRecognizer_;
  v175 = v18;
  v151 = a3;
  v154 = a1;
  while (1)
  {
    v31 = v28;
    v32 = v28 + 1;
    v159 = v28;
    if (v28 + 1 >= v27)
    {
      ++v28;
      v61 = v155;
    }

    else
    {
      v177 = v27;
      v153 = v29;
      v33 = *a3;
      v34 = *(*a3 + 8 * v32);
      v180 = *(*a3 + 8 * v28);
      v35 = v180;
      v181 = v34;
      v36 = v34;
      v8 = v35;
      LODWORD(v176) = sub_10013D108(&v181, &v180);
      if (v5)
      {

        return;
      }

      v18 = v28 + 2;
      v31 = v28;
      if (v28 + 2 < v177)
      {
        v152 = 0;
        v173 = type metadata accessor for MainActor();
        v37 = (v33 + 8 * v28 + 16);
        v38 = v174;
        while (1)
        {
          v165 = v18;
          v39 = *(v37 - 1);
          v40 = *v37;
          v41 = v39;
          v18 = static MainActor.shared.getter();
          dispatch thunk of Actor.unownedExecutor.getter();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v42 = [v40 modificationDate];
          if (v42)
          {
            v178 = v18;
            v179 = v40;
            v43 = v175;
            v44 = v42;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v18 = v172;
            v45 = v161;
            v46 = v162;
            v170 = *v172;
            v170(v161, v43, v162);
            v47 = *v38;
            (*v38)(v45, 0, 1, v46);
            sub_100110174(v45, &qword_10020E418);
            v48 = [v41 modificationDate];
            if (v48)
            {
              v49 = v48;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v50 = v158;
              v170(v158, v43, v46);
              v47(v50, 0, 1, v46);
              sub_100110174(v50, &qword_10020E418);
              v51 = v179;
              v52 = [v179 modificationDate];
              if (!v52)
              {
                goto LABEL_160;
              }

              v53 = v52;
              v54 = v157;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v55 = [v41 modificationDate];
              v18 = v178;
              if (!v55)
              {
                goto LABEL_159;
              }

              v56 = v55;
              v57 = v156;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              LODWORD(v56) = static Date.> infix(_:_:)();
              v8 = v168;
              v58 = *v168;
              v59 = v57;
              v60 = v162;
              (*v168)(v59, v162);
              v58(v54, v60);

              v38 = v174;
              if ((v176 ^ v56))
              {
                v28 = v165;
                v32 = v165 - 1;
LABEL_24:
                v5 = v152;
                a3 = v151;
                a1 = v154;
                v61 = v155;
                v30 = &selRef_addGestureRecognizer_;
                v31 = v159;
                goto LABEL_25;
              }
            }

            else
            {
              v8 = v158;
              v47(v158, 1, 1, v46);
              sub_100110174(v8, &qword_10020E418);

              if ((v176 & 1) == 0)
              {
                v5 = v152;
                a3 = v151;
                a1 = v154;
                v61 = v155;
                v29 = v153;
                v30 = &selRef_addGestureRecognizer_;
                v28 = v165;
                goto LABEL_20;
              }
            }
          }

          else
          {
            v8 = v161;
            (*v38)(v161, 1, 1, v162);
            sub_100110174(v8, &qword_10020E418);

            if (v176)
            {
              v28 = v165;
              v32 = v165 - 1;
              v5 = v152;
              a3 = v151;
              a1 = v154;
              v61 = v155;
              v29 = v153;
              v30 = &selRef_addGestureRecognizer_;
              v31 = v159;
              if (v165 < v159)
              {
                goto LABEL_149;
              }

              goto LABEL_27;
            }
          }

          v18 = v165 + 1;
          ++v37;
          if (v177 == v165 + 1)
          {
            v32 = v165;
            v28 = v177;
            goto LABEL_24;
          }
        }
      }

      v28 += 2;
      v61 = v155;
LABEL_25:
      v29 = v153;
      if (v176)
      {
        if (v28 < v31)
        {
          goto LABEL_149;
        }

LABEL_27:
        if (v31 <= v32)
        {
          v92 = 8 * v28 - 8;
          v93 = 8 * v31;
          v94 = v28;
          do
          {
            if (v31 != --v94)
            {
              v95 = *a3;
              if (!*a3)
              {
                goto LABEL_157;
              }

              v96 = *(v95 + v93);
              *(v95 + v93) = *(v95 + v92);
              *(v95 + v92) = v96;
            }

            ++v31;
            v92 -= 8;
            v93 += 8;
          }

          while (v31 < v94);
LABEL_20:
          v31 = v159;
        }
      }
    }

    v62 = a3[1];
    if (v28 < v62)
    {
      break;
    }

LABEL_61:
    if (v28 < v31)
    {
      goto LABEL_147;
    }

    v97 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v97;
    }

    else
    {
      v29 = sub_10013E390(0, *(v97 + 2) + 1, 1, v97);
    }

    v99 = *(v29 + 2);
    v98 = *(v29 + 3);
    v18 = v99 + 1;
    v100 = v159;
    if (v99 >= v98 >> 1)
    {
      v145 = sub_10013E390((v98 > 1), v99 + 1, 1, v29);
      v100 = v159;
      v29 = v145;
    }

    *(v29 + 2) = v18;
    v101 = &v29[16 * v99];
    *(v101 + 4) = v100;
    *(v101 + 5) = v28;
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_161;
    }

    if (v99)
    {
      while (1)
      {
        v102 = v18 - 1;
        if (v18 >= 4)
        {
          break;
        }

        if (v18 == 3)
        {
          v103 = *(v29 + 4);
          v104 = *(v29 + 5);
          v113 = __OFSUB__(v104, v103);
          v105 = v104 - v103;
          v106 = v113;
LABEL_81:
          if (v106)
          {
            goto LABEL_136;
          }

          v119 = &v29[16 * v18];
          v121 = *v119;
          v120 = *(v119 + 1);
          v122 = __OFSUB__(v120, v121);
          v123 = v120 - v121;
          v124 = v122;
          if (v122)
          {
            goto LABEL_139;
          }

          v125 = &v29[16 * v102 + 32];
          v127 = *v125;
          v126 = *(v125 + 1);
          v113 = __OFSUB__(v126, v127);
          v128 = v126 - v127;
          if (v113)
          {
            goto LABEL_142;
          }

          if (__OFADD__(v123, v128))
          {
            goto LABEL_143;
          }

          if (v123 + v128 >= v105)
          {
            if (v105 < v128)
            {
              v102 = v18 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v129 = &v29[16 * v18];
        v131 = *v129;
        v130 = *(v129 + 1);
        v113 = __OFSUB__(v130, v131);
        v123 = v130 - v131;
        v124 = v113;
LABEL_95:
        if (v124)
        {
          goto LABEL_138;
        }

        v132 = &v29[16 * v102];
        v134 = *(v132 + 4);
        v133 = *(v132 + 5);
        v113 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v113)
        {
          goto LABEL_141;
        }

        if (v135 < v123)
        {
          goto LABEL_3;
        }

LABEL_102:
        v140 = v102 - 1;
        if (v102 - 1 >= v18)
        {
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

        if (!*a3)
        {
          goto LABEL_156;
        }

        v141 = v29;
        v18 = *&v29[16 * v140 + 32];
        v142 = *&v29[16 * v102 + 40];
        sub_10013FAA4((*a3 + 8 * v18), (*a3 + 8 * *&v29[16 * v102 + 32]), (*a3 + 8 * v142), v8);
        if (v5)
        {
          goto LABEL_128;
        }

        if (v142 < v18)
        {
          goto LABEL_132;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v143 = v141;
        }

        else
        {
          v143 = sub_1001405A0(v141);
        }

        v30 = &selRef_addGestureRecognizer_;
        if (v140 >= *(v143 + 2))
        {
          goto LABEL_133;
        }

        v144 = &v143[16 * v140];
        *(v144 + 4) = v18;
        *(v144 + 5) = v142;
        v182 = v143;
        sub_100140514(v102);
        v29 = v182;
        v18 = *(v182 + 2);
        if (v18 <= 1)
        {
          goto LABEL_3;
        }
      }

      v107 = &v29[16 * v18 + 32];
      v108 = *(v107 - 64);
      v109 = *(v107 - 56);
      v113 = __OFSUB__(v109, v108);
      v110 = v109 - v108;
      if (v113)
      {
        goto LABEL_134;
      }

      v112 = *(v107 - 48);
      v111 = *(v107 - 40);
      v113 = __OFSUB__(v111, v112);
      v105 = v111 - v112;
      v106 = v113;
      if (v113)
      {
        goto LABEL_135;
      }

      v114 = &v29[16 * v18];
      v116 = *v114;
      v115 = *(v114 + 1);
      v113 = __OFSUB__(v115, v116);
      v117 = v115 - v116;
      if (v113)
      {
        goto LABEL_137;
      }

      v113 = __OFADD__(v105, v117);
      v118 = v105 + v117;
      if (v113)
      {
        goto LABEL_140;
      }

      if (v118 >= v110)
      {
        v136 = &v29[16 * v102 + 32];
        v138 = *v136;
        v137 = *(v136 + 1);
        v113 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v113)
        {
          goto LABEL_144;
        }

        if (v105 < v139)
        {
          v102 = v18 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v27 = a3[1];
    a1 = v154;
    if (v28 >= v27)
    {
      goto LABEL_117;
    }
  }

  if (__OFSUB__(v28, v31))
  {
    goto LABEL_148;
  }

  if (v28 - v31 >= v61)
  {
LABEL_60:
    v31 = v159;
    goto LABEL_61;
  }

  v31 = v159;
  if (__OFADD__(v159, v61))
  {
    goto LABEL_150;
  }

  if (v159 + v61 >= v62)
  {
    v18 = a3[1];
  }

  else
  {
    v18 = v159 + v61;
  }

  if (v18 < v159)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (v28 == v18)
  {
    goto LABEL_61;
  }

  v153 = v29;
  v152 = v5;
  v63 = *a3;
  v64 = v159;
  v170 = type metadata accessor for MainActor();
  v173 = v63;
  v65 = v63 + 8 * v28 - 8;
  v66 = v64 - v28;
  v67 = v162;
  v160 = v18;
LABEL_40:
  v164 = v65;
  v165 = v28;
  v68 = *(v173 + 8 * v28);
  v163 = v66;
  v69 = v66;
  while (1)
  {
    v70 = *v65;
    v179 = v68;
    v178 = v70;
    v71 = static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v72 = [v179 v30[327]];
    v73 = v175;
    if (!v72)
    {
      v8 = v171;
      (*v174)(v171, 1, 1, v67);
      sub_100110174(v8, &qword_10020E418);

LABEL_39:
      v28 = v165 + 1;
      v65 = v164 + 8;
      v66 = v163 - 1;
      v18 = v160;
      if (v165 + 1 == v160)
      {
        v28 = v160;
        v5 = v152;
        a3 = v151;
        a1 = v154;
        v29 = v153;
        goto LABEL_60;
      }

      goto LABEL_40;
    }

    v74 = v72;
    v176 = v69;
    v177 = v71;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = v171;
    v76 = *v172;
    (*v172)(v171, v73, v67);
    v77 = *v174;
    (*v174)(v75, 0, 1, v67);
    sub_100110174(v75, &qword_10020E418);
    v78 = v178;
    v79 = [v178 v30[327]];
    if (v79)
    {
      v80 = v79;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v81 = v169;
      v76(v169, v73, v67);
      v77(v81, 0, 1, v67);
      sub_100110174(v81, &qword_10020E418);
      v82 = [v179 v30[327]];
      if (!v82)
      {
        goto LABEL_155;
      }

      v83 = v82;
      v84 = v167;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v85 = v178;
      v86 = [v178 v30[327]];
      if (!v86)
      {
        goto LABEL_154;
      }

      v87 = v86;
      v8 = v166;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v87) = static Date.> infix(_:_:)();
      v88 = *v168;
      (*v168)(v8, v67);
      v88(v84, v67);

      if ((v87 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v8 = v169;
      v77(v169, 1, 1, v67);
      sub_100110174(v8, &qword_10020E418);
    }

    v89 = v176;
    if (!v173)
    {
      break;
    }

    v90 = *v65;
    v68 = *(v65 + 8);
    *v65 = v68;
    *(v65 + 8) = v90;
    v65 -= 8;
    v91 = __CFADD__(v89, 1);
    v69 = v89 + 1;
    if (v91)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_154:
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
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
}