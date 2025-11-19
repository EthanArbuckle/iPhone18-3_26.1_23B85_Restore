void sub_10106EB14()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (!v4)
  {
    if (qword_1019F20C8 != -1)
    {
      goto LABEL_114;
    }

    goto LABEL_16;
  }

  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = qword_1019F20C8;
  v8 = v4;
  if (v6 != 1)
  {
    if (v7 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlStatusHUD;
    v22 = static os_log_type_t.default.getter();
    sub_100005404(v21, &_mh_execute_header, v22, "updateViews called before hud manager is ready.", 47, 2, _swiftEmptyArrayStorage);

    return;
  }

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.crlStatusHUD;
  v10 = static os_log_type_t.debug.getter();
  sub_100005404(v9, &_mh_execute_header, v10, "updateViews", 11, 2, _swiftEmptyArrayStorage);
  v11 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_hidingController;
  if (!*(v2 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_hidingController))
  {
    v12 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingToHideControllers;
    swift_beginAccess();
    v13 = *(v2 + v12);
    if (v13 >> 62)
    {
      goto LABEL_129;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      swift_beginAccess();
      sub_1008253E8();
      v15 = v14;
      swift_endAccess();
      sub_10106DB6C(v15);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }
  }

  while (1)
  {
LABEL_9:
    v16 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController);
    if (v16)
    {
      ObjectType = swift_getObjectType();
      if ([swift_unknownObjectRetain() showing] & 1) != 0 || (objc_msgSend(v16, "animating") & 1) != 0 || (sub_10106E9EC(v16))
      {
        v18 = 0;
      }

      else
      {
LABEL_104:
        v71 = [v8 superview];
        [v71 bringSubviewToFront:v8];

        v72 = [v16 containerView];
        [v8 addSubview:v72];

        sub_1005CBA50(0, 0, 0, ObjectType);
        v73 = [v16 accessibilityAnnouncement];
        if (v73)
        {
          v74 = v73;
          v75 = [v16 hudView];
          v76 = [v75 window];

          CRLAccessibilityPostAnnouncementNotification(v76, v74);
        }

        v18 = 1;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0;
    }

    v23 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
    swift_beginAccess();
    v24 = *(v2 + v23);
    v25 = v24 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = 5 - v25;
    if (__OFSUB__(5, v25))
    {
      __break(1u);
    }

    else
    {
      v16 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers;
      swift_beginAccess();
      v81 = v8;
      v82 = v16;
      v27 = *&v16[v2];
      if (!(v27 >> 62))
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_26;
      }
    }

    v28 = _CocoaArrayWrapper.endIndex.getter();
LABEL_26:
    if (v28 < v26)
    {
      v26 = v28;
    }

    if (v26 < 1)
    {
      goto LABEL_62;
    }

    v79 = v23;
    v84 = v11;
    v11 = *&v82[v2];
    v29 = v11 & 0xFFFFFFFFFFFFFF8;
    v30 = v11 >> 62;
    if (v11 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        return;
      }

      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v31 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v80 = v18;
    if (v31 < v26)
    {
      __break(1u);
    }

    else
    {
      swift_bridgeObjectRetain_n();
      if ((v11 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v26; ++i)
        {
          sub_1005B981C(&unk_101A28660);
          _ArrayBuffer._typeCheckSlowPath(_:)(i);
        }
      }

      if (v30)
      {
        _CocoaArrayWrapper.subscript.getter();
        v86 = v33;
        v8 = v34;
        v36 = v35;

        v16 = (v36 >> 1);
      }

      else
      {
        v8 = 0;
        v86 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
        v16 = v26;
      }

      v11 = *&v82[v2];
      v29 = v11 & 0xFFFFFFFFFFFFFF8;
      v18 = v11 >> 62;
      if (!(v11 >> 62))
      {
        v37 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v37 >= v26)
        {
          break;
        }

        goto LABEL_128;
      }
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      v30 = v11;
    }

    else
    {
      v30 = v29;
    }

    v77 = _CocoaArrayWrapper.endIndex.getter();
    if (v77 < v26)
    {
      goto LABEL_134;
    }

    v37 = v77;
    if (_CocoaArrayWrapper.endIndex.getter() < v26)
    {
      goto LABEL_135;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v37)
    {
      break;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_8;
    }
  }

  v85 = v8;
  if ((v11 & 0xC000000000000001) == 0 || v26 == v37)
  {
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
  }

  else
  {
    if (v26 >= v37)
    {
      __break(1u);
      goto LABEL_131;
    }

    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    v38 = v26;
    do
    {
      sub_1005B981C(&unk_101A28660);
      _ArrayBuffer._typeCheckSlowPath(_:)(v38++);
    }

    while (v37 != v38);
  }

  if (v18)
  {
    v30 = _CocoaArrayWrapper.subscript.getter();
    v1 = v39;
    v26 = v40;
    v37 = v41;

    if (v37)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v30 = v11 & 0xFFFFFFFFFFFFFF8;
  v1 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
  v37 = (2 * v37) | 1;
  if ((v37 & 1) == 0)
  {
LABEL_52:
    sub_100676B4C(v30, v1, v26, v37);
    v43 = v42;
    goto LABEL_59;
  }

LABEL_53:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
    swift_unknownObjectRelease();
    v44 = _swiftEmptyArrayStorage;
  }

  v45 = v44[2];

  if (__OFSUB__(v37 >> 1, v26))
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v45 != (v37 >> 1) - v26)
  {
LABEL_132:
    swift_unknownObjectRelease_n();
    goto LABEL_52;
  }

  v43 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v43)
  {
    v43 = _swiftEmptyArrayStorage;
LABEL_59:
    swift_unknownObjectRelease();
  }

  sub_10106C42C(v43);
  swift_unknownObjectRelease();
  v46 = v8;
  if (v8 == v16)
  {
LABEL_61:
    swift_unknownObjectRelease();
    LOBYTE(v18) = v80;
LABEL_62:
    v47 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_needsLayout);
    *(v2 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_needsLayout) = 0;
    v48 = v81;
    if ((v18 & 1) != 0 || v47)
    {
LABEL_108:
      sub_10106F7F0();
    }

    return;
  }

  v49 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  v83 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingToHideControllers;
  swift_beginAccess();
  v78 = v49;
  swift_beginAccess();
  v50 = v84;
  if (v8 >= v16)
  {
    goto LABEL_112;
  }

  ObjectType = v8;
  while (1)
  {
    v11 = *(v86 + 8 * ObjectType++);
    v51 = *(v2 + v50);
    if (!v51 || v11 != v51)
    {
      break;
    }

LABEL_95:
    if (ObjectType == v16)
    {
      goto LABEL_61;
    }

LABEL_96:
    if (ObjectType < v46 || ObjectType >= v16)
    {
      goto LABEL_112;
    }
  }

  v53 = *(v2 + v83);
  v1 = v53 & 0xFFFFFFFFFFFFFF8;
  if (v53 >> 62)
  {
    v54 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_unknownObjectRetain();

  v55 = 0;
  while (2)
  {
    if (v54 == v55)
    {

      v8 = v79;
      swift_beginAccess();
      swift_unknownObjectRetain();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v8[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v8[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v58 = *&v79[v2];
      swift_endAccess();
      if (v58 >> 62)
      {
        v59 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v60 = *&v82[v2];
      if (v60 >> 62)
      {
        v70 = _CocoaArrayWrapper.endIndex.getter();
        v62 = v59 + v70;
        if (!__OFADD__(v59, v70))
        {
          goto LABEL_89;
        }
      }

      else
      {
        v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v62 = v59 + v61;
        if (!__OFADD__(v59, v61))
        {
LABEL_89:
          v63 = [*(v2 + v78) count];
          if (__OFADD__(v62, v63))
          {
            goto LABEL_113;
          }

          [v2 setIsActive:v63 + v62 > 0];
          v64 = swift_getObjectType();
          v65 = [v11 containerView];
          [v81 addSubview:v65];

          sub_1005CBA50(0, 0, 0, v64);
          v66 = [v11 accessibilityAnnouncement];
          if (v66)
          {
            v67 = v66;
            v68 = [v11 hudView];
            v69 = [v68 window];

            CRLAccessibilityPostAnnouncementNotification(v69, v67);
          }

          swift_unknownObjectRelease();
          v50 = v84;
          v46 = v85;
          if (ObjectType != v16)
          {
            v80 = 1;
            goto LABEL_96;
          }

          swift_unknownObjectRelease();
          *(v2 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_needsLayout) = 0;
          v48 = v81;
          goto LABEL_108;
        }
      }

      __break(1u);
      goto LABEL_104;
    }

    if ((v53 & 0xC000000000000001) != 0)
    {
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_78:
      swift_unknownObjectRelease();
      if (v11 == v56)
      {
        swift_unknownObjectRelease();

        v50 = v84;
        v46 = v85;
        goto LABEL_95;
      }

      if (__OFADD__(v55++, 1))
      {
        goto LABEL_111;
      }

      continue;
    }

    break;
  }

  if (v55 < *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v56 = *(v53 + 8 * v55 + 32);
    swift_unknownObjectRetain();
    goto LABEL_78;
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  swift_once();
LABEL_16:
  v19 = static OS_os_log.crlStatusHUD;
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v20, "updateViews called before container view is setup.", 50, 2, _swiftEmptyArrayStorage);
}

unint64_t CRLStatusHUDManager.ContainerViewVerticalLayoutGravity.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t CRLStatusHUDManager.containerViewVerticalLayoutGravity.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerViewVerticalLayoutGravity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRLStatusHUDManager.containerViewVerticalLayoutGravity.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerViewVerticalLayoutGravity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_10106F7F0()
{
  v2 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!v3)
  {
    if (qword_1019F20C8 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlStatusHUD;
    v10 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v10, "updateLayout called before container view is setup.", 51, 2, _swiftEmptyArrayStorage);
    return;
  }

  v4 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_constraints;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    v124 = v4;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_9:
    v11 = v3;
    goto LABEL_10;
  }

  v124 = v4;
  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  v6 = objc_opt_self();
  sub_100006370(0, &qword_1019F4D70);
  v7 = v3;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = v124;

  [v6 deactivateConstraints:isa];

LABEL_10:
  *(v0 + v4) = _swiftEmptyArrayStorage;

  v12 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController;
  if (*(v0 + OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController))
  {
    goto LABEL_11;
  }

  v16 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
  swift_beginAccess();
  v17 = *(v0 + v16);
  if (v17 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_85;
    }
  }

  else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_85;
  }

  if (*(v0 + v12))
  {
LABEL_11:
    v13 = [swift_unknownObjectRetain() containerView];
    v14 = [v13 superview];

    swift_unknownObjectRelease();
    if (!v14)
    {
      v15 = 1;
      goto LABEL_19;
    }
  }

  v15 = 0;
LABEL_19:
  v18 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
  swift_beginAccess();
  v113 = v18;
  v114 = v3;
  v19 = *(v0 + v18);
  v120 = v0;
  v121 = v2;
  v122 = v12;
  LODWORD(v123) = v15;
  if (v19 >> 62)
  {
    goto LABEL_101;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v21 = &selRef_concreteClass;

    if (i)
    {
      v22 = 0;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_31:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_100;
          }

          v23 = *(v19 + 8 * v22 + 32);
          swift_unknownObjectRetain();
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_31;
          }
        }

        v25 = [v23 containerView];
        v26 = [v25 superview];

        if (!v26)
        {

          v3 = v114;
          if (qword_1019F20C8 != -1)
          {
            swift_once();
          }

          v31 = static OS_os_log.crlStatusHUD;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          swift_unknownObjectRetain();
          sub_1005B981C(&unk_101A28660);
          sub_1005B981C(&unk_1019F5670);
          swift_dynamicCast();
          v33 = static os_log_type_t.error.getter();
          sub_100005404(v31, &_mh_execute_header, v33, "found orphaned hud controller, controller=%{public}@", 52, 2, inited);
          swift_unknownObjectRelease();
          swift_setDeallocating();
          sub_100005070(inited + 32);
LABEL_40:
          CRLStatusHUDManager.hideAllControllers()();
          goto LABEL_85;
        }

        swift_unknownObjectRelease();

        ++v22;
      }

      while (v24 != i);
    }

    v3 = v114;
    if (v123)
    {
      goto LABEL_40;
    }

    v27 = *(v120 + v122);
    if (v27)
    {
      if (([swift_unknownObjectRetain() showing] & 1) != 0 || objc_msgSend(v27, "animating"))
      {
        v28 = [v27 containerView];
        swift_unknownObjectRelease();
        v29 = 0;
        v30 = 1;
        goto LABEL_48;
      }

      swift_unknownObjectRelease();
    }

    v34 = *(v120 + v113);
    if (v34 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_85;
      }
    }

    else if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *(v34 + 32);
      swift_unknownObjectRetain();
      goto LABEL_47;
    }

    __break(1u);
    do
    {
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
LABEL_121:
      v63 = v120;
      v62 = v118;
      v72 = v123;
LABEL_69:
      if ((v21 & 0xC000000000000001) == 0 || v72 == v34)
      {
        swift_bridgeObjectRetain_n();
        goto LABEL_76;
      }
    }

    while (v72 >= v34);
    swift_bridgeObjectRetain_n();
    do
    {
      sub_1005B981C(&unk_101A28660);
      _ArrayBuffer._typeCheckSlowPath(_:)(v72++);
    }

    while (v34 != v72);
LABEL_76:

    if (v19)
    {
      v76 = _CocoaArrayWrapper.subscript.getter();
      v74 = v77;
      v75 = v78;
      v80 = v79;

      v73 = v76;
      v34 = v80 >> 1;
    }

    else
    {
      v73 = v21 & 0xFFFFFFFFFFFFFF8;
      v74 = (v21 & 0xFFFFFFFFFFFFFF8) + 32;
      v75 = v123;
    }

    v109 = v73;
    swift_unknownObjectRetain();
    v81 = v112;
    v82 = v34 - v75;
    v21 = 0x101984000;
    if (v34 == v75)
    {
LABEL_80:
      v72 = v81;

      swift_unknownObjectRelease_n();
      v83 = *(v63 + v113);
      if (v83 >> 62)
      {
        goto LABEL_112;
      }

      v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_82;
    }

    if (v75 <= v34)
    {
      v87 = v34;
    }

    else
    {
      v87 = v75;
    }

    v88 = v87 - v75;
    v89 = v112;
    v19 = v74 + 8 * v75;
    while (v88)
    {
      v102 = *v19;
      v103 = [swift_unknownObjectRetain() *(v21 + 560)];
      v104 = *(v63 + v115);
      v122 = v82;
      v123 = v103;
      v121 = v88;
      if (v104 == 1)
      {
        v90 = [v103 bottomAnchor];
        v91 = [v89 topAnchor];
        v92 = [v90 constraintEqualToAnchor:v91];

        v93 = v120;
        v34 = v124;
        swift_beginAccess();
        v94 = v92;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v93 + v34) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v93 + v34) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v34 = v124;
        }
      }

      else
      {
        v34 = v124;
        if (v104)
        {
          goto LABEL_120;
        }

        v105 = [v103 topAnchor];
        v106 = [v89 bottomAnchor];
        v107 = [v105 constraintEqualToAnchor:v106];

        v93 = v120;
        swift_beginAccess();
        v94 = v107;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v93 + v124) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v93 + v124) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v95 = String._bridgeToObjectiveC()();
      sub_1010A7C7C(v119);
      v96 = Dictionary._bridgeToObjectiveC()().super.isa;

      v97 = swift_initStackObject();
      *(v97 + 16) = v117;
      strcpy((v97 + 32), "containerView");
      *(v97 + 46) = -4864;
      v98 = [v102 containerView];
      *(v97 + 72) = v116;
      *(v97 + 48) = v98;
      sub_10000BCE4(v97);
      swift_setDeallocating();
      sub_100C79340(v97 + 32);
      v99 = Dictionary._bridgeToObjectiveC()().super.isa;

      v62 = v118;
      v100 = [v118 constraintsWithVisualFormat:v95 options:0 metrics:v96 views:v99];

      v101 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      swift_beginAccess();
      sub_100798D30(v101);
      v21 = &selRef_concreteClass;
      swift_endAccess();

      swift_unknownObjectRelease();
      --v88;
      v19 += 8;
      v81 = v123;
      v89 = v123;
      v82 = v122 - 1;
      v63 = v93;
      if (v122 == 1)
      {
        goto LABEL_80;
      }
    }

LABEL_100:
    __break(1u);
LABEL_101:
    ;
  }

  v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_47:
  v28 = [v35 containerView];
  swift_unknownObjectRelease();
  v30 = 0;
  v29 = 1;
LABEL_48:
  v36 = [v28 superview];
  if (!v36)
  {

    return;
  }

  v123 = v29;
  v111 = v30;

  sub_1005B981C(&qword_101A02070);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_10146D2A0;
  *(v37 + 32) = 0x676E6963617073;
  *(v37 + 40) = 0xE700000000000000;
  v38 = objc_allocWithZone(NSNumber);
  LODWORD(v39) = 10.0;
  *(v37 + 48) = [v38 initWithFloat:v39];
  *(v37 + 56) = 0x676E6964646170;
  *(v37 + 64) = 0xE700000000000000;
  if (qword_1019F2840 != -1)
  {
    swift_once();
  }

  v1 = *&qword_101AD8D88;
  v40 = *&qword_101AD8D88;
  v41 = objc_allocWithZone(NSNumber);
  *&v42 = v40;
  *(v37 + 72) = [v41 initWithFloat:v42];
  *(v37 + 80) = 0xD00000000000001BLL;
  *(v37 + 88) = 0x80000001015BD650;
  v43 = objc_allocWithZone(NSNumber);
  LODWORD(v44) = 16.0;
  *(v37 + 96) = [v43 initWithFloat:v44];
  *(v37 + 104) = 0xD00000000000001DLL;
  *(v37 + 112) = 0x80000001015BD670;
  if (qword_1019F2838 != -1)
  {
    swift_once();
  }

  v45 = *&qword_101AD8D80;
  v46 = objc_allocWithZone(NSNumber);
  *&v47 = v45;
  *(v37 + 120) = [v46 initWithFloat:v47];
  v119 = sub_100BD4A48(v37);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A02078);
  swift_arrayDestroy();
  v48 = [v114 widthAnchor];
  v49 = *(v120 + v121);
  if (v49)
  {
    v50 = [v49 window];
    v51 = v124;
    if (v50 && (v52 = v50, [v50 bounds], Width = CGRectGetWidth(v125), v52, Width < 375.0))
    {
      v54 = Width + 40.0;
    }

    else
    {
      v54 = 415.0;
    }
  }

  else
  {
    v54 = 415.0;
    v51 = v124;
  }

  v55 = [v48 constraintEqualToConstant:v54];

  swift_beginAccess();
  v56 = v55;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v120 + v51) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v120 + v51) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v110 = v56;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v57 = objc_opt_self();
  v58 = String._bridgeToObjectiveC()();
  sub_1010A7C7C(v119);
  v59 = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1005B981C(&qword_101A12AA8);
  v60 = swift_initStackObject();
  v117 = xmmword_10146C6B0;
  *(v60 + 16) = xmmword_10146C6B0;
  *(v60 + 32) = 0x77656956706F74;
  v61 = v60 + 32;
  *(v60 + 40) = 0xE700000000000000;
  v116 = sub_100006370(0, &qword_1019F6D00);
  *(v60 + 72) = v116;
  *(v60 + 48) = v28;
  v112 = v28;
  sub_10000BCE4(v60);
  v62 = v57;
  swift_setDeallocating();
  sub_100C79340(v61);
  v63 = v120;
  v64 = Dictionary._bridgeToObjectiveC()().super.isa;

  v65 = [v57 constraintsWithVisualFormat:v58 options:0 metrics:v59 views:v64];

  sub_100006370(0, &qword_1019F4D70);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();

  v21 = v120 + v124;
  sub_100798D30(v66);
  swift_endAccess();
  v34 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerViewVerticalLayoutGravity;
  swift_beginAccess();
  v115 = v34;
  v67 = *(v120 + v34);
  if (v67)
  {
    v19 = v114;
    if (v67 != 1)
    {
      goto LABEL_120;
    }

    v68 = [v112 bottomAnchor];
    v69 = [v114 bottomAnchor];
    v70 = [v68 constraintEqualToAnchor:v69 constant:16.0];
  }

  else
  {
    v68 = [v112 topAnchor];
    v69 = [v114 topAnchor];
    v70 = [v68 constraintEqualToAnchor:v69 constant:16.0];
  }

  v71 = v70;

  swift_beginAccess();
  v34 = v71;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v120 + v124) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v120 + v124) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    v21 = *(v120 + v113);
    v19 = v21 >> 62;
    v118 = v62;
    v72 = v123;
    if (!(v21 >> 62))
    {
      break;
    }

    v108 = _CocoaArrayWrapper.endIndex.getter();
    if (v108 < v123)
    {
      goto LABEL_118;
    }

    v34 = v108;
    if (_CocoaArrayWrapper.endIndex.getter() < v123)
    {
      goto LABEL_119;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v34)
    {
      goto LABEL_121;
    }

    __break(1u);
LABEL_110:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v34 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v34 >= v123)
  {
    goto LABEL_69;
  }

  __break(1u);
LABEL_112:
  v84 = _CocoaArrayWrapper.endIndex.getter();
LABEL_82:
  v3 = v112;
  if (__OFADD__(v84, v111))
  {
    __break(1u);
  }

  else
  {
    v85 = [v62 constraintWithItem:v114 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:v1 + (v84 + v111) * 56.0 + 10.0];
    swift_beginAccess();
    v34 = v85;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v63 + v124) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v63 + v124) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_84;
    }
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_84:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  v86 = Array._bridgeToObjectiveC()().super.isa;

  [v62 activateConstraints:v86];

LABEL_85:
}

id CRLStatusHUDManager.init()()
{
  *&v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_maxInfos] = 5;
  v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready] = 0;
  v1 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  *&v0[v1] = [objc_opt_self() weakObjectsHashTable];
  *&v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView] = 0;
  v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_alwaysUseDarkAppearance] = 0;
  v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_isActive] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingToHideControllers] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_hidingController] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_constraints] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_needsLayout] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerViewVerticalLayoutGravity] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CRLStatusHUDManager();
  return objc_msgSendSuper2(&v3, "init");
}

id CRLStatusHUDManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLStatusHUDManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_101070CEC(void *a1, void *a2, char *a3, unint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v8 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
    swift_beginAccess();
    v39 = v8;
    v9 = *&a3[v8];
    swift_unknownObjectRetain();
    [v9 removeObject:a1];
    v10 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers;
    swift_beginAccess();
    v11 = *&a3[v10];
    if (v11 >> 62)
    {
      goto LABEL_52;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v40 = v6;
      v13 = a4;
      a4 = v11 & 0xC000000000000001;
      v6 = (v11 & 0xFFFFFFFFFFFFFF8);

      v14 = 0;
      while (1)
      {
        if (a4)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v15 = *(v11 + 8 * v14 + 32);
          swift_unknownObjectRetain();
        }

        swift_unknownObjectRelease();
        if (v15 == a1)
        {

          swift_beginAccess();
          sub_10106B650(v14);
          swift_endAccess();
          swift_unknownObjectRelease();
          v17 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
          swift_beginAccess();
          v18 = *&a3[v17];
          if (v18 >> 62)
          {
LABEL_55:
            v19 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a4 = v13;
          v6 = v40;
          v20 = *&a3[v10];
          if (v20 >> 62)
          {
            v36 = _CocoaArrayWrapper.endIndex.getter();
            v22 = __OFADD__(v19, v36);
            v11 = v19 + v36;
            if (!v22)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v22 = __OFADD__(v19, v21);
            v11 = v19 + v21;
            if (!v22)
            {
LABEL_20:
              v23 = [*&a3[v39] count];
              if (!__OFADD__(v11, v23))
              {
                [a3 setIsActive:(v23 + v11) > 0];
                goto LABEL_22;
              }

              goto LABEL_59;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        ++v14;
        if (v16 == i)
        {

          a4 = v13;
          v6 = v40;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      ;
    }

LABEL_22:
    if ((([a1 showing] & 1) != 0 || objc_msgSend(a1, "animating")) && (v14 = &selRef_concreteClass, v24 = objc_msgSend(a1, "containerView"), v25 = objc_msgSend(v24, "superview"), v24, v25) && (v25, a1 != v6))
    {
      if ([a1 type])
      {
        v13 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
        swift_beginAccess();
        v11 = *&a3[v13];
        if (v11 >> 62)
        {
LABEL_60:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          if (v26)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v26 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v26)
          {
LABEL_29:
            v40 = v6;
            v38 = a4;
            a4 = v11 & 0xC000000000000001;
            v6 = (v11 & 0xFFFFFFFFFFFFFF8);

            v14 = 0;
            while (1)
            {
              if (a4)
              {
                v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_55;
                }

                v27 = *(v11 + 8 * v14 + 32);
                swift_unknownObjectRetain();
              }

              swift_unknownObjectRelease();
              if (v27 == a1)
              {
                break;
              }

              v28 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_51;
              }

              ++v14;
              if (v28 == v26)
              {

                v6 = v40;
                v14 = 0x101984000;
                goto LABEL_47;
              }
            }

            swift_beginAccess();
            sub_10106B650(v14);
            swift_endAccess();
            swift_unknownObjectRelease();
            v29 = *&a3[v13];
            if (v29 >> 62)
            {
              v30 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v6 = v40;
            v14 = &selRef_concreteClass;
            v31 = *&a3[v10];
            if (v31 >> 62)
            {
              v37 = _CocoaArrayWrapper.endIndex.getter();
              v22 = __OFADD__(v30, v37);
              v33 = v30 + v37;
              if (!v22)
              {
LABEL_45:
                v34 = [*&a3[v39] count];
                if (!__OFADD__(v33, v34))
                {
                  [a3 setIsActive:v34 + v33 > 0];
                  goto LABEL_47;
                }

                goto LABEL_66;
              }
            }

            else
            {
              v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v22 = __OFADD__(v30, v32);
              v33 = v30 + v32;
              if (!v22)
              {
                goto LABEL_45;
              }
            }

            __break(1u);
LABEL_66:
            __break(1u);
            return;
          }
        }
      }

      else if (*&a3[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController] == a1)
      {
        *&a3[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController] = 0;
        swift_unknownObjectRelease();
      }

LABEL_47:
      v35 = [a1 *(v14 + 560)];
      [v35 removeFromSuperview];

      sub_10107128C(v6, a3, 0.0);
      a3[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_needsLayout] = 1;
      sub_10106EB14();
    }

    else
    {
      sub_10107128C(v6, a3, 0.0);
    }

    swift_unknownObjectRelease();
    return;
  }

  sub_10107128C(a2, a3, 0.0);
}

void sub_10107128C(void *a1, _BYTE *a2, double a3)
{
  v56 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchTime();
  v50 = *(v57 - 8);
  __chkstk_darwin(v57);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  if (qword_1019F20C8 != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.crlStatusHUD;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  aBlock[0] = a1;
  swift_unknownObjectRetain();
  sub_1005B981C(&unk_101A28660);
  sub_1005B981C(&unk_1019F5670);
  swift_dynamicCast();
  v15 = [a1 message];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (v19)
  {
    v21 = v19;
  }

  *(inited + 72) = v20;
  *(inited + 80) = v21;
  v22 = static os_log_type_t.default.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "show hudController=%{public}@ message=%@", 42, 2, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v23 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  if ([*&a2[v23] containsObject:a1])
  {
    v24 = static os_log_type_t.default.getter();
    v25 = "Trying to delay the same hud controller, just sticking with the old delay";
    v26 = v13;
    v27 = 73;
LABEL_15:
    sub_100005404(v26, &_mh_execute_header, v24, v25, v27, 2, _swiftEmptyArrayStorage);
    return;
  }

  if (sub_10104F08C(a1, a2))
  {
    v24 = static os_log_type_t.default.getter();
    v25 = "Ignoring attempt to show hud controller that has aleady been shown or is waiting to show.";
    v26 = v13;
    v27 = 89;
    goto LABEL_15;
  }

  if (a3 != 0.0)
  {
    [*&a2[v23] addObject:a1];
    static DispatchTime.now()();
    + infix(_:_:)();
    v50 = *(v50 + 8);
    (v50)(v9, v57);
    sub_100006370(0, &qword_1019F2D90);
    v37 = static OS_dispatch_queue.main.getter();
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = a1;
    aBlock[4] = sub_1010532B4;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018AF9F8;
    v40 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v41 = v51;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1005D91D8();
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    v42 = v53;
    v43 = v56;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v40);

    (*(v55 + 8))(v42, v43);
    (*(v52 + 8))(v41, v54);
    (v50)(v12, v57);
    return;
  }

  if (![a1 type])
  {
    v44 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController;
    v45 = *&a2[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_errorController];
    if (v45)
    {
      swift_unknownObjectRetain();
      if (v45 == a1)
      {
        if ([a1 showing])
        {
          [a1 setShowing:1];
        }
      }

      else
      {
        v46 = [v45 containerView];
        v47 = [v46 superview];

        if (v47)
        {

          v48 = [v45 containerView];
          [v48 removeFromSuperview];
          swift_unknownObjectRelease();

          a2[OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_needsLayout] = 1;
          goto LABEL_34;
        }
      }

      swift_unknownObjectRelease();
    }

LABEL_34:
    *&a2[v44] = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v28 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_waitingInfoControllers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&a2[v28] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v28] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v29 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_showingInfoControllers;
  swift_beginAccess();
  v30 = *&a2[v29];
  if (v30 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = *&a2[v28];
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = __OFADD__(v31, v33);
    v35 = v31 + v33;
    if (!v34)
    {
      goto LABEL_24;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v49 = _CocoaArrayWrapper.endIndex.getter();
  v34 = __OFADD__(v31, v49);
  v35 = v31 + v49;
  if (v34)
  {
    goto LABEL_39;
  }

LABEL_24:
  v36 = [*&a2[v23] count];
  if (!__OFADD__(v35, v36))
  {
    [a2 setIsActive:v36 + v35 > 0];
LABEL_35:
    sub_10106EB14();
    return;
  }

LABEL_40:
  __break(1u);
}

unint64_t sub_101071B7C()
{
  result = qword_101A28B50;
  if (!qword_101A28B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28B50);
  }

  return result;
}

uint64_t sub_101071BF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

id sub_101071C50(double a1)
{
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale] = a1;
  if (v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] == 1)
  {
    [v1 setNeedsLayout];
  }

  [v1 setMasksToBounds:1];
  v3 = *&v1[OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_innerReplicatorLayer];
  v4 = *&v1[OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_imageTileLayer];
  [v3 addSublayer:v4];
  v5 = *&v1[OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_outerReplicatorLayer];
  [v5 addSublayer:v3];
  [v1 addSublayer:v5];
  [v5 setDelegate:v1];
  [v3 setDelegate:v1];
  [v4 setDelegate:v1];
  [v5 setMasksToBounds:0];
  [v3 setMasksToBounds:0];

  return [v4 setMasksToBounds:0];
}

void sub_101071DB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale);
  if ((*(v0 + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 16);
    v6[0] = *(v0 + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform);
    v6[1] = v2;
    v6[2] = *(v0 + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 32);
    v1 = v1 * sub_100139A00(v6);
  }

  if (v1 >= 0.1)
  {
    if (v1 < 0.25)
    {
      v3 = sub_1004C32D4(v1, 0.1, 0.25);
      v4 = 1.0;
      v5 = 2.0;
    }

    else
    {
      if (v1 < 1.0)
      {
        return;
      }

      if (v1 < 2.0)
      {
        v3 = sub_1004C32D4(v1, 1.0, 2.0);
        v4 = 2.0;
        v5 = 4.0;
      }

      else
      {
        if (v1 >= 4.0)
        {
          return;
        }

        v3 = sub_1004C32D4(v1, 2.0, 4.0);
        v4 = 4.0;
        v5 = 5.0;
      }
    }

    sub_1004C3260(v4, v5, v3);
  }
}

void sub_101072478()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale);
  if ((*(v0 + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 16);
    v6[0] = *(v0 + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform);
    v6[1] = v2;
    v6[2] = *(v0 + OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 32);
    v1 = v1 * sub_100139A00(v6);
  }

  if (v1 >= 0.25)
  {
    if (v1 < 0.5)
    {
      v3 = sub_1004C32D4(v1, 0.25, 0.5);
      v4 = 0.1;
    }

    else
    {
      if (v1 < 1.0)
      {
        v3 = sub_1004C32D4(v1, 0.5, 1.0);
        v4 = 0.15;
        v5 = 0.25;
        goto LABEL_13;
      }

      if (v1 < 2.0)
      {
        v3 = sub_1004C32D4(v1, 1.0, 2.0);
        v5 = 0.2;
        v4 = 0.25;
        goto LABEL_13;
      }

      if (v1 >= 4.0)
      {
        return;
      }

      v3 = sub_1004C32D4(v1, 2.0, 4.0);
      v4 = 0.2;
    }

    v5 = 0.15;
LABEL_13:
    sub_1004C3260(v4, v5, v3);
  }
}

void sub_101072B48(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v105 = objc_opt_self();
    v12 = [v105 _atomicIncrementAssertCount];
    *&v107 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v107);
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
    v22 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 148;
    v24 = v107;
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

    [v105 handleFailureInFunction:v31 file:v32 lineNumber:148 isFatal:0 format:v33 args:v30];

    goto LABEL_40;
  }

  v4 = Strong;
  v5 = OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas;
  v6 = &OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale;
  v7 = *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale];
  if ((v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] & 1) == 0)
  {
    v8 = *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 16];
    v107 = *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
    v108 = v8;
    v109 = *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 32];
    v7 = v7 * sub_100139A00(&v107);
  }

  v9 = 0.0;
  if (sub_1009C2C44(v7, 0.0))
  {
    swift_unknownObjectRelease();
    v10 = 0;
    v11 = 0;
LABEL_41:
    v37 = 0.0;
    v38 = 0.0;
    goto LABEL_42;
  }

  [v4 contentsScaleForCanvasBackgroundLayer:v1];
  v35 = v34;
  if (sub_1009C2C44(v34, 0.0))
  {
    v35 = *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_lastValidContentsScaleFromDelegate];
  }

  else
  {
    *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_lastValidContentsScaleFromDelegate] = v35;
  }

  v36 = &v1[OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_dotGridImageStorageCache];
  v10 = *&v1[OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_dotGridImageStorageCache + 16];
  if (!v10)
  {
LABEL_17:
    v41 = *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale];
    if ((v1[v5] & 1) == 0)
    {
      v42 = *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 16];
      v107 = *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
      v108 = v42;
      v109 = *&v1[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 32];
      v41 = v41 * sub_100139A00(&v107);
    }

    v43 = v41 * 25.0;
    sub_101071DB4();
    v45 = v44;
    v46 = 512.0;
    if (v1[v5])
    {
      v46 = 1024.0;
    }

    v47 = floor(v46 / v35 / v43);
    v48 = (*&v47 & 0x7FF0000000000000) != 0x7FF0000000000000 || (*&v47 & 0xFFFFFFFFFFFFFLL) == 0;
    if (!v48 || v47 <= 0.0)
    {
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    if ((*&v47 & 0x7FF0000000000000) == 0x7FF0000000000000)
    {
      __break(1u);
    }

    else if (v47 > -9.22337204e18)
    {
      if (v47 < 9.22337204e18)
      {
        v49 = ceil(v35 * (v43 * v47));
        v50 = sub_10050DF80(11, v49, v49);
        if (!v50)
        {
          v104 = objc_opt_self();
          LODWORD(v1) = [v104 _atomicIncrementAssertCount];
          *&v107 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v107);
          StaticString.description.getter();
          v102 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v61 = String._bridgeToObjectiveC()();

          v62 = [v61 lastPathComponent];

          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v6 = v63;

          if (qword_1019F20A0 == -1)
          {
LABEL_44:
            v64 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v65 = swift_initStackObject();
            *(v65 + 16) = xmmword_10146CA70;
            *(v65 + 56) = &type metadata for Int32;
            *(v65 + 64) = &protocol witness table for Int32;
            *(v65 + 32) = v1;
            v66 = sub_100006370(0, &qword_1019F4D30);
            *(v65 + 96) = v66;
            v67 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
            *(v65 + 104) = v67;
            *(v65 + 72) = v102;
            *(v65 + 136) = &type metadata for String;
            v68 = sub_1000053B0();
            *(v65 + 112) = v100;
            *(v65 + 120) = v6;
            *(v65 + 176) = &type metadata for UInt;
            *(v65 + 184) = &protocol witness table for UInt;
            *(v65 + 144) = v68;
            *(v65 + 152) = 194;
            v69 = v107;
            *(v65 + 216) = v66;
            *(v65 + 224) = v67;
            *(v65 + 192) = v69;
            v70 = v102;
            v71 = v69;
            v72 = static os_log_type_t.error.getter();
            sub_100005404(v64, &_mh_execute_header, v72, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v65);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v73 = static os_log_type_t.error.getter();
            sub_100005404(v64, &_mh_execute_header, v73, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v74 = swift_allocObject();
            v74[2] = 8;
            v74[3] = 0;
            v74[4] = 0;
            v74[5] = 0;
            v75 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v76 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v77 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v78 = String._bridgeToObjectiveC()();

            [v104 handleFailureInFunction:v76 file:v77 lineNumber:194 isFatal:0 format:v78 args:v75];
            swift_unknownObjectRelease();

            goto LABEL_40;
          }

LABEL_52:
          swift_once();
          goto LABEL_44;
        }

        v51 = v50;
        v11 = v47;
        CGContextSaveGState(v50);
        CGContextScaleCTM(v51, v35, v35);
        v1 = [objc_opt_self() blackColor];
        v52 = [v1 CGColor];

        CGContextSetFillColorWithColor(v51, v52);
        if ((v47 & 0x8000000000000000) == 0)
        {
          v38 = floor(v43 * 0.5);
          if (v11)
          {
            for (i = 0; i != v11; ++i)
            {
              v54 = 0;
              v55 = i;
              v56 = v38 + v43 * v55;
              do
              {
                v57 = v54 + 1;
                v110.origin.x = sub_10011EC70(v38 + v43 * v54, v56, v45);
                CGContextFillEllipseInRect(v51, v110);
                v54 = v57;
              }

              while (v11 != v57);
            }
          }

          CGContextRestoreGState(v51);
          Image = CGBitmapContextCreateImage(v51);
          if (Image)
          {
            v10 = Image;
            swift_unknownObjectRelease();

            v59 = *(v36 + 2);
            *v36 = v7;
            *(v36 + 1) = v35;
            *(v36 + 2) = v10;
            *(v36 + 3) = v11;
            *(v36 + 4) = v38;
            v60 = v10;

            v9 = v7;
            v37 = v35;
            goto LABEL_42;
          }

          v106 = objc_opt_self();
          v79 = [v106 _atomicIncrementAssertCount];
          *&v107 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v107);
          StaticString.description.getter();
          v103 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v80 = String._bridgeToObjectiveC()();

          v81 = [v80 lastPathComponent];

          v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v99 = v83;
          v101 = v82;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v84 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v85 = swift_initStackObject();
          *(v85 + 16) = xmmword_10146CA70;
          *(v85 + 56) = &type metadata for Int32;
          *(v85 + 64) = &protocol witness table for Int32;
          *(v85 + 32) = v79;
          v86 = sub_100006370(0, &qword_1019F4D30);
          *(v85 + 96) = v86;
          v87 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
          *(v85 + 104) = v87;
          *(v85 + 72) = v103;
          *(v85 + 136) = &type metadata for String;
          v88 = sub_1000053B0();
          *(v85 + 112) = v101;
          *(v85 + 120) = v99;
          *(v85 + 176) = &type metadata for UInt;
          *(v85 + 184) = &protocol witness table for UInt;
          *(v85 + 144) = v88;
          *(v85 + 152) = 219;
          v89 = v107;
          *(v85 + 216) = v86;
          *(v85 + 224) = v87;
          *(v85 + 192) = v89;
          v90 = v103;
          v91 = v89;
          v92 = static os_log_type_t.error.getter();
          sub_100005404(v84, &_mh_execute_header, v92, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v85);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v93 = static os_log_type_t.error.getter();
          sub_100005404(v84, &_mh_execute_header, v93, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v94 = swift_allocObject();
          v94[2] = 8;
          v94[3] = 0;
          v94[4] = 0;
          v94[5] = 0;
          v95 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v96 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v97 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v98 = String._bridgeToObjectiveC()();

          [v106 handleFailureInFunction:v96 file:v97 lineNumber:219 isFatal:0 format:v98 args:v95];
          swift_unknownObjectRelease();

LABEL_40:
          v10 = 0;
          v11 = 0;
          v9 = 0.0;
          goto LABEL_41;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_50;
  }

  v9 = *v36;
  v37 = *(v36 + 1);
  v11 = *(v36 + 3);
  v38 = *(v36 + 4);
  v39 = sub_1009C2C44(*v36, v7);
  v40 = v10;
  if (!v39 || !sub_1009C2C44(v37, v35))
  {

    goto LABEL_17;
  }

  swift_unknownObjectRelease();
LABEL_42:
  *a1 = v9;
  *(a1 + 8) = v37;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v38;
}

void sub_101073978()
{
  v69.receiver = v0;
  v69.super_class = type metadata accessor for CRLCanvasDotGridLayer();
  objc_msgSendSuper2(&v69, "layoutSublayers");
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions:1];
  v2 = *&v0[OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_outerReplicatorLayer];
  [v2 setHidden:(v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] & 1) == 0];
  sub_101072B48(v70);
  v3 = v71;
  if (!v71)
  {
    [*&v0[OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_imageTileLayer] setContents:0];
LABEL_26:
    [v1 commit];
    return;
  }

  v66 = v72;
  v65 = v73;
  v4 = *&v0[OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_innerReplicatorLayer];
  v5 = *&v0[OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_imageTileLayer];
  CGImageGetWidth(v71);
  Height = CGImageGetHeight(v3);
  v7 = OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas;
  if (v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] == 1)
  {
    [v0 bounds];
    v12 = sub_100120534(v8, v9, v10, v11);
    x = sub_10011F31C(0.0, 0.0, v12);
    v14 = x;
    y = v15;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    if (Strong)
    {
      [Strong originOffsetForCanvasBackgroundLayer:v0];
      v19 = v21;
      v20 = v22;
      swift_unknownObjectRelease();
    }

    v64 = Height;
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      [v23 contentOffsetForCanvasBackgroundLayer:v0];
      v18 = v24;
      swift_unknownObjectRelease();
    }

    v25 = sub_10011F334(v19, v20, v18);
    v26 = sub_10011F31C(0.0, 0.0, v25);
    v28 = v27;
    v29 = swift_unknownObjectWeakLoadStrong();
    v30 = 0.0;
    if (v29)
    {
      [v29 canvasCenterInCanvasBackgroundLayer:v0];
      v30 = v31;
      swift_unknownObjectRelease();
    }

    v32 = &v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
    v33 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 32];
    v34 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 40];
    v35 = sub_10011F31C(0.0, 0.0, v30);
    v36 = *(v32 + 1);
    *&v67.m11 = *v32;
    *&v67.m13 = v36;
    v67.m21 = v33;
    v67.m22 = v34;
    sub_100139EB4(&v67, &v68, v35, v37);
    *&v67.m11 = *&v68.a;
    *&v67.m13 = *&v68.c;
    *&v67.m21 = *&v68.tx;
    v75.x = v26;
    v75.y = v28;
    v38 = CGPointApplyAffineTransform(v75, &v67);
    x = v38.x;
    y = v38.y;
    v14 = 0.0;
  }

  v39 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale];
  if (v0[v7])
  {
    v40 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale];
  }

  else
  {
    v41 = x;
    v42 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 16];
    *&v67.m11 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
    *&v67.m13 = v42;
    *&v67.m21 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 32];
    v39 = v39 * sub_100139A00(&v67.m11);
    v40 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale];
    if ((v0[v7] & 1) == 0)
    {
      v43 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 16];
      *&v67.m11 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
      *&v67.m13 = v43;
      *&v67.m21 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 32];
      v40 = v40 * sub_100139A00(&v67.m11);
    }

    x = v41;
  }

  v44 = fmod(x, v39 * 25.0) - v14 - v65;
  fmod(y, v40 * 25.0);
  v74 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v45, v46);
  [v2 setFrame:v74.recordType._object];
  [v2 bounds];
  [v4 setFrame:?];
  [v4 bounds];
  [v5 setFrame:?];
  [v0 bounds];
  v51 = sub_100120604(v47, v48, v49, v50, v44);
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale];
  if ((v0[v7] & 1) == 0)
  {
    v59 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 16];
    *&v67.m11 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
    *&v67.m13 = v59;
    *&v67.m21 = *&v0[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform + 32];
    v58 = v58 * sub_100139A00(&v67.m11);
  }

  v60 = v58 * 25.0 * v66;
  v76.origin.x = v51;
  v76.origin.y = v53;
  v76.size.width = v55;
  v76.size.height = v57;
  v61 = ceil(CGRectGetHeight(v76) / v60);
  if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v61 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v61 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v2 setInstanceCount:v61];
  CATransform3DMakeTranslation(&v67, 0.0, v60, 0.0);
  [v2 setInstanceTransform:&v67];
  v77.origin.x = v51;
  v77.origin.y = v53;
  v77.size.width = v55;
  v77.size.height = v57;
  v62 = ceil(CGRectGetWidth(v77) / v60);
  if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v62 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v62 < 9.22337204e18)
  {
    [v4 setInstanceCount:v62];
    CATransform3DMakeTranslation(&v67, v60, 0.0, 0.0);
    [v4 setInstanceTransform:&v67];
    sub_101072478();
    *&v63 = v63;
    [v5 setOpacity:v63];
    [v5 setContents:v3];
    sub_1010745D0(v70);
    goto LABEL_26;
  }

LABEL_32:
  __break(1u);
}

void *sub_101073FB8(double a1)
{
  v3 = OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_outerReplicatorLayer;
  *(v1 + v3) = [objc_allocWithZone(CAReplicatorLayer) init];
  v4 = OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_innerReplicatorLayer;
  *(v1 + v4) = [objc_allocWithZone(CAReplicatorLayer) init];
  v5 = OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_imageTileLayer;
  *(v1 + v5) = [objc_allocWithZone(CALayer) init];
  v6 = v1 + OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_dotGridImageStorageCache;
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;

  return sub_1005F2424(a1);
}

id sub_1010740C8()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_outerReplicatorLayer;
  *&v0[v1] = [objc_allocWithZone(CAReplicatorLayer) init];
  v2 = OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_innerReplicatorLayer;
  *&v0[v2] = [objc_allocWithZone(CAReplicatorLayer) init];
  v3 = OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_imageTileLayer;
  *&v0[v3] = [objc_allocWithZone(CALayer) init];
  v4 = &v0[OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_dotGridImageStorageCache];
  v5 = type metadata accessor for CRLCanvasDotGridLayer();
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_1010741A4(void *a1)
{
  v3 = OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_outerReplicatorLayer;
  *&v1[v3] = [objc_allocWithZone(CAReplicatorLayer) init];
  v4 = OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_innerReplicatorLayer;
  *&v1[v4] = [objc_allocWithZone(CAReplicatorLayer) init];
  v5 = OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_imageTileLayer;
  *&v1[v5] = [objc_allocWithZone(CALayer) init];
  v6 = &v1[OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_dotGridImageStorageCache];
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  sub_100020E58(a1, a1[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CRLCanvasDotGridLayer();
  v8 = objc_msgSendSuper2(&v10, "initWithLayer:", v7);
  swift_unknownObjectRelease();
  sub_100005070(a1);
  return v8;
}

id sub_1010742F4(void *a1)
{
  v3 = OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_outerReplicatorLayer;
  *&v1[v3] = [objc_allocWithZone(CAReplicatorLayer) init];
  v4 = OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_innerReplicatorLayer;
  *&v1[v4] = [objc_allocWithZone(CAReplicatorLayer) init];
  v5 = OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_imageTileLayer;
  *&v1[v5] = [objc_allocWithZone(CALayer) init];
  v6 = &v1[OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_dotGridImageStorageCache];
  v7 = type metadata accessor for CRLCanvasDotGridLayer();
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v10.receiver = v1;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

void sub_101074404()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLCanvasDotGridLayer_dotGridImageStorageCache + 16);
}

id sub_101074468()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCanvasDotGridLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_101074530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_101074578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1010745D0(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A28BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_101074638()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.0823529412 green:0.494117647 blue:0.984313725 alpha:1.0];
  static CRLColor.pencilTrayBlue = result;
  return result;
}

uint64_t *CRLColor.pencilTrayBlue.unsafeMutableAddressor()
{
  if (qword_1019F2848 != -1)
  {
    swift_once();
  }

  return &static CRLColor.pencilTrayBlue;
}

id sub_101074724()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.325490196 green:0.843137255 blue:0.411764706 alpha:1.0];
  static CRLColor.pencilTrayGreen = result;
  return result;
}

uint64_t *CRLColor.pencilTrayGreen.unsafeMutableAddressor()
{
  if (qword_1019F2850 != -1)
  {
    swift_once();
  }

  return &static CRLColor.pencilTrayGreen;
}

id sub_10107480C()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.996078431 green:0.815686275 blue:0.188235294 alpha:1.0];
  static CRLColor.pencilTrayYellow = result;
  return result;
}

uint64_t *CRLColor.pencilTrayYellow.unsafeMutableAddressor()
{
  if (qword_1019F2858 != -1)
  {
    swift_once();
  }

  return &static CRLColor.pencilTrayYellow;
}

id sub_1010748F8()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.988235294 green:0.192156863 blue:0.258823529 alpha:1.0];
  static CRLColor.pencilTrayRed = result;
  return result;
}

uint64_t *CRLColor.pencilTrayRed.unsafeMutableAddressor()
{
  if (qword_1019F2860 != -1)
  {
    swift_once();
  }

  return &static CRLColor.pencilTrayRed;
}

uint64_t sub_1010749E0()
{
  v1 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v1 - 8);
  v25 = &v21 - v2;
  v3 = type metadata accessor for CRLProto_Data(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for CRLProto_RealTimeMessageContainer(0);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v24 = v10;
  v13 = *(v10 + 24);
  v14 = *(v4 + 56);
  v14(&v12[v13], 1, 1, v3);
  *v12 = *(v0 + 16);
  v21 = xmmword_10146F370;
  *v9 = xmmword_10146F370;
  UnknownStorage.init()();
  sub_1009DCE5C(&v12[v13]);
  sub_100683F6C(v9, &v12[v13]);
  v22 = v4 + 56;
  v23 = v14;
  v14(&v12[v13], 0, 1, v3);
  v16 = *(v0 + 24);
  v15 = *(v0 + 32);
  v17 = v25;
  sub_10084DD24(&v12[v13], v25);
  v18 = *(v4 + 48);
  if (v18(v17, 1, v3) == 1)
  {
    *v6 = v21;
    sub_100024E98(v16, v15);
    UnknownStorage.init()();
    if (v18(v25, 1, v3) != 1)
    {
      sub_1009DCE5C(v25);
    }
  }

  else
  {
    sub_100683F6C(v25, v6);
    sub_100024E98(v16, v15);
  }

  sub_10002640C(*v6, *(v6 + 1));
  *v6 = v16;
  *(v6 + 1) = v15;
  sub_1009DCE5C(&v12[v13]);
  sub_100683F6C(v6, &v12[v13]);
  v23(&v12[v13], 0, 1, v3);
  sub_101074E7C();
  v19 = Message.serializedData(partial:)();
  sub_1010752BC(v12, type metadata accessor for CRLProto_RealTimeMessageContainer);
  return v19;
}

Swift::Int sub_101074D14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_101074D88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

int *sub_101074DCC@<X0>(int *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_101074E28()
{
  result = qword_101A28C88;
  if (!qword_101A28C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28C88);
  }

  return result;
}

unint64_t sub_101074E7C()
{
  result = qword_101A1FDD8;
  if (!qword_101A1FDD8)
  {
    type metadata accessor for CRLProto_RealTimeMessageContainer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1FDD8);
  }

  return result;
}

uint64_t sub_101074ED4(uint64_t a1, unint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20[-v6];
  v8 = type metadata accessor for CRLProto_Data(0);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for CRLProto_RealTimeMessageContainer(0);
  __chkstk_darwin(v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_101074E7C();
  Message.init(serializedData:extensions:partial:options:)();
  if (v2)
  {
    return sub_10002640C(a1, a2);
  }

  v16 = v25;
  if (*v14 >= 3)
  {
    sub_101075268();
    swift_allocError();
    swift_willThrow();
    sub_10002640C(a1, a2);
    return sub_1010752BC(v14, type metadata accessor for CRLProto_RealTimeMessageContainer);
  }

  else
  {
    v21 = *v14;
    sub_10084DD24(v14 + *(v12 + 24), v7);
    v17 = *(v16 + 48);
    if (v17(v7, 1, v8) == 1)
    {
      *v10 = xmmword_10146F370;
      UnknownStorage.init()();
      sub_10002640C(a1, a2);
      sub_1010752BC(v14, type metadata accessor for CRLProto_RealTimeMessageContainer);
      if (v17(v7, 1, v8) != 1)
      {
        sub_1009DCE5C(v7);
      }
    }

    else
    {
      sub_10002640C(a1, a2);
      sub_1010752BC(v14, type metadata accessor for CRLProto_RealTimeMessageContainer);
      sub_100683F6C(v7, v10);
    }

    v18 = *v10;
    v19 = v10[1];
    sub_100024E98(*v10, v19);
    sub_1010752BC(v10, type metadata accessor for CRLProto_Data);
    type metadata accessor for CRLRealTimeMessageContainer();
    result = swift_allocObject();
    *(result + 16) = v21;
    *(result + 24) = v18;
    *(result + 32) = v19;
  }

  return result;
}

unint64_t sub_101075268()
{
  result = qword_101A28C90;
  if (!qword_101A28C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28C90);
  }

  return result;
}

uint64_t sub_1010752BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_101075330()
{
  result = qword_101A28C98;
  if (!qword_101A28C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28C98);
  }

  return result;
}

void sub_101075384(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v88 = a3;
  v95 = a2;
  v93 = sub_1005B981C(&unk_1019FFD10);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v83 - v6;
  v90 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v90);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v9 - 8);
  v89 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  KeyPath = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v83 - v15;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v18 = [a1 getBoardItemForUUID:isa];

  if (!v18)
  {
    goto LABEL_35;
  }

  type metadata accessor for CRLWPShapeItem();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v21 = *(v19 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v21)
    {
      v23 = *(v4 + OBJC_IVAR____TtC8Freeform27CRLWPInsertHyperlinkCommand_range);
      v22 = *(v4 + OBJC_IVAR____TtC8Freeform27CRLWPInsertHyperlinkCommand_range + 8);
      v24 = v22 - v23;
      if (__OFSUB__(v22, v23))
      {
        __break(1u);
      }

      else
      {
        if (v24 < 1)
        {

          return;
        }

        v87 = *(v4 + OBJC_IVAR____TtC8Freeform27CRLWPInsertHyperlinkCommand_range);
        v85 = v22;
        v86 = v8;
        v25 = v21;
        v26 = v18;
        v27 = v96;
        sub_1012E0400(v20, &off_10188FE10);
        if (v27)
        {

          return;
        }

        v84 = v25;
        v96 = 0;
        v83 = v26;

        sub_10001ACF0(v4 + OBJC_IVAR____TtC8Freeform27CRLWPInsertHyperlinkCommand_url, v16);
        UUID.init()();
        UUID.uuidString.getter();
        (*(KeyPath + 8))(v13, v11);
        v28 = type metadata accessor for URL();
        v29 = *(v28 - 8);
        v31 = 0;
        if ((*(v29 + 48))(v16, 1, v28) != 1)
        {
          URL._bridgeToObjectiveC()(v30);
          v31 = v32;
          (*(v29 + 8))(v16, v28);
        }

        v33 = objc_allocWithZone(CRLWPHyperlinkField);
        v34 = String._bridgeToObjectiveC()();
        v35 = String._bridgeToObjectiveC()();

        v36 = v87;
        v37 = [v33 initWithURL:v31 range:v87 displayText:v24 uuidString:{v34, v35}];

        KeyPath = swift_getKeyPath();
        v38 = v84;
        v18 = *&v84[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
        if (!v18)
        {
          goto LABEL_32;
        }

        v39 = v86;
        (*(*v18 + 896))();
        v40 = v89;
        sub_1005E0A78(v39 + *(v90 + 20), v89);
        v41 = v37;
        sub_1005E0ADC(v39, type metadata accessor for CRLWPShapeItemCRDTData);
        v42 = v92;
        v43 = v91;
        v44 = v93;
        (*(v92 + 16))(v91, v40, v93);
        sub_1005E0ADC(v40, type metadata accessor for CRLWPStorageCRDTData);
        v18 = CRAttributedString.count.getter();
        (*(v42 + 8))(v43, v44);
        if (v18 >= (v36 & ~(v36 >> 63)))
        {
          v45 = v36 & ~(v36 >> 63);
        }

        else
        {
          v45 = v18;
        }

        v46 = v85 & ~(v85 >> 63);
        if (v18 >= v46)
        {
          v47 = v85 & ~(v85 >> 63);
        }

        else
        {
          v47 = v18;
        }

        v48 = v83;
        if (v46 >= v45)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            v55 = v38;
            goto LABEL_24;
          }

          v18 = Strong;
          ObjectType = swift_getObjectType();
          v51 = swift_conformsToProtocol2();
          if (v51)
          {
            v52 = v51;
            v38 = v84;
            v53 = v84;
            v54 = sub_1012778D4(ObjectType, v52);

            v48 = v83;
            if ((v54 & 1) == 0)
            {

              goto LABEL_25;
            }

LABEL_24:
            sub_100821A74(KeyPath, v41, 0, v38, v45, v47);

LABEL_25:
            v56 = v48;
            v57 = v96;
            sub_1012CF6CC(v20, &off_10188FE10, v88);
            if (v57)
            {
            }

            else
            {
            }

            return;
          }

          goto LABEL_33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

LABEL_35:
  v58 = objc_opt_self();
  v59 = [v58 _atomicIncrementAssertCount];
  v97 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v97);
  StaticString.description.getter();
  v60 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v61 = String._bridgeToObjectiveC()();

  v62 = [v61 lastPathComponent];

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v66 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v59;
  v68 = sub_1005CF000();
  *(inited + 96) = v68;
  v69 = sub_1005CF04C();
  *(inited + 104) = v69;
  *(inited + 72) = v60;
  *(inited + 136) = &type metadata for String;
  v70 = sub_1000053B0();
  *(inited + 112) = v63;
  *(inited + 120) = v65;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v70;
  *(inited + 152) = 25;
  v71 = v97;
  *(inited + 216) = v68;
  *(inited + 224) = v69;
  *(inited + 192) = v71;
  v72 = v60;
  v73 = v71;
  v74 = static os_log_type_t.error.getter();
  sub_100005404(v66, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v75 = static os_log_type_t.error.getter();
  sub_100005404(v66, &_mh_execute_header, v75, "Unable to retrieve board item", 29, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve board item");
  type metadata accessor for __VaListBuilder();
  v76 = swift_allocObject();
  v76[2] = 8;
  v76[3] = 0;
  v76[4] = 0;
  v76[5] = 0;
  v77 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v78 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v79 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v80 = String._bridgeToObjectiveC()();

  [v58 handleFailureInFunction:v78 file:v79 lineNumber:25 isFatal:1 format:v80 args:v77];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v81, v82);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_101075E68()
{
  v1 = OBJC_IVAR____TtC8Freeform27CRLWPInsertHyperlinkCommand_boardItemID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC8Freeform27CRLWPInsertHyperlinkCommand_url;

  return sub_100686028(v3);
}

id sub_101075EE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPInsertHyperlinkCommand();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLWPInsertHyperlinkCommand()
{
  result = qword_101A28CC8;
  if (!qword_101A28CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_101075FE8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10084E720();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1010760BC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_101076280(unint64_t a1)
{
  _s16ResourceExporterCMa();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakAssign();

  v4 = sub_1008147E0(v3, a1);
  _s25CanvasObjectArrayExporterCMa();
  inited = swift_initStackObject();
  *(inited + 16) = v4;
  _s20CanvasObjectExporterCMa();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(inited + 24) = v6;
  swift_retain_n();
  v10 = sub_10080C94C(a1);
  if (v1)
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    sub_10075915C();
    swift_allocError();
    *v14 = v10;
    v14[1] = v11;
    v14[2] = v12;
    v14[3] = v13;
  }

  else
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100B3E940();
    v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    swift_setDeallocating();
  }

  return v11;
}

uint64_t sub_10107649C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  v0 = StringProtocol.contains<A>(_:)();

  if (v0)
  {
    return 1;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = StringProtocol.contains<A>(_:)();

  if (v2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1010765A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10107689C();
  v7 = sub_100A41170();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_101076618()
{
  sub_10107689C();
  sub_1007A96C8();
  return CRValue<>.init(from:)();
}

uint64_t sub_101076684()
{
  sub_10107689C();
  sub_1007A96C8();
  return CRValue<>.encode(to:)();
}

uint64_t sub_1010766E0(uint64_t a1)
{
  v2 = sub_10107689C();
  v3 = sub_1007A96C8();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Int);
}

uint64_t sub_101076798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007A96C8();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

unint64_t sub_1010767F0()
{
  result = qword_101A28CD8;
  if (!qword_101A28CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28CD8);
  }

  return result;
}

unint64_t sub_101076848()
{
  result = qword_101A28CE0;
  if (!qword_101A28CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28CE0);
  }

  return result;
}

unint64_t sub_10107689C()
{
  result = qword_101A28CE8;
  if (!qword_101A28CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A28CE8);
  }

  return result;
}

uint64_t sub_1010768F0(void *a1)
{
  v2 = type metadata accessor for Participant();
  v129 = *(v2 - 8);
  v130 = v2;
  __chkstk_darwin(v2);
  v4 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v128 = &v123 - v10;
  __chkstk_darwin(v11);
  v13 = &v123 - v12;
  v14 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v14 - 8);
  v131 = &v123 - v15;
  v16 = objc_opt_self();
  Participant.handle.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 normalizedHandleWithDestinationID:v17];

  v134 = v13;
  if (!v18)
  {
    v128 = v4;
    v136 = v8;
    v32 = v135;
    swift_beginAccess();
    v33 = *(v32 + 32);

    Participant.id.getter();
    LOBYTE(v32) = sub_10079C3B4(v13, v33);

    v36 = *(v6 + 8);
    v35 = v6 + 8;
    v34 = v36;
    v36(v13, v5);
    if ((v32 & 1) == 0)
    {
      v131 = v35;
      v133 = v5;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v37 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v39 = Participant.handle.getter();
      v41 = v40;
      *(inited + 56) = &type metadata for String;
      v42 = sub_1000053B0();
      *(inited + 64) = v42;
      *(inited + 32) = v39;
      *(inited + 40) = v41;
      (*(v129 + 16))(v128, a1, v130);
      v43 = String.init<A>(reflecting:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v42;
      *(inited + 72) = v43;
      *(inited + 80) = v44;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v45, "Dropping changes from participant because we cannot generate TUHandle from Participant's handle: %@, participant: %@", 116, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v46 = v136;
      Participant.id.getter();
      swift_beginAccess();
      v47 = v134;
      sub_100E6AF38(v134, v46);
      v34(v47, v133);
      swift_endAccess();
    }

    return 0;
  }

  v136 = v18;
  v132 = a1;
  v133 = v5;
  v19 = v135;
  v20 = *(v135 + 16);
  if (!v20)
  {
    v48 = v133;
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v49 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_10146C6B0;
    v51 = v134;
    Participant.id.getter();
    v52 = UUID.uuidString.getter();
    v54 = v53;
    (*(v6 + 8))(v51, v48);
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_1000053B0();
    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    v55 = static os_log_type_t.default.getter();
    sub_100005404(v49, &_mh_execute_header, v55, "RealTimeBoardChangeCoordinator has no CKShare to look up participant write permission. Participant UUID: %{public}@", 115, 2, v50);

    swift_setDeallocating();
    sub_100005070(v50 + 32);
    return 0;
  }

  swift_beginAccess();
  v21 = *(v19 + 24);
  v22 = *(v21 + 16);
  v23 = v20;
  v24 = v133;
  v25 = v6;
  v26 = v134;
  if (v22)
  {

    v27 = v136;
    v28 = sub_1007C84C4(v136);
    if (v29)
    {
      v30 = *(*(v21 + 56) + v28);

      return v30;
    }
  }

  Participant.id.getter();
  swift_beginAccess();
  v56 = v131;
  sub_100ED6D70(v26, v131);
  v59 = *(v25 + 8);
  v58 = (v25 + 8);
  v57 = v59;
  v59(v26, v24);
  sub_10000CAAC(v56, &qword_1019F6990);
  swift_endAccess();
  if (qword_1019F2288 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v60 = static OS_os_log.realTimeSync;
    v130 = sub_1005B981C(&qword_1019F54E0);
    v61 = swift_initStackObject();
    v125 = xmmword_10146C6B0;
    *(v61 + 16) = xmmword_10146C6B0;
    Participant.id.getter();
    v62 = UUID.uuidString.getter();
    v64 = v63;
    v57(v26, v24);
    *(v61 + 56) = &type metadata for String;
    v127 = sub_1000053B0();
    *(v61 + 64) = v127;
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    v65 = static os_log_type_t.default.getter();
    v129 = v60;
    sub_100005404(v60, &_mh_execute_header, v65, "Observed valid TUHandle from participant with UUID: %{public}@", 62, 2, v61);
    swift_setDeallocating();
    sub_100005070(v61 + 32);
    v26 = v23;
    v66 = [v23 participants];
    sub_100006370(0, &qword_1019F5520);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v138 = _swiftEmptyArrayStorage;
    if (v24 >> 62)
    {
      v67 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v67 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v126 = v57;
    v131 = v58;
    if (v67)
    {
      v124 = v23;
      v26 = 0;
      v57 = (v24 & 0xC000000000000001);
      v58 = (v24 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v57)
        {
          v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v68 = *(v24 + 8 * v26 + 32);
        }

        v23 = v68;
        v69 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (sub_1007D8DE8(v136))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v26;
        if (v69 == v67)
        {
          v70 = v138;
          v26 = v124;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v70 = _swiftEmptyArrayStorage;
LABEL_30:
    v23 = v132;

    if ((v70 & 0x8000000000000000) == 0 && (v70 & 0x4000000000000000) == 0)
    {
      v71 = *(v70 + 16);
      if (!v71)
      {
        break;
      }

      goto LABEL_33;
    }

    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
      break;
    }

    v71 = _CocoaArrayWrapper.endIndex.getter();
    if (!v71)
    {
LABEL_51:

      v91 = swift_initStackObject();
      *(v91 + 16) = xmmword_10146BDE0;
      v92 = v134;
      Participant.id.getter();
      v93 = UUID.uuidString.getter();
      v95 = v94;
      v126(v92, v133);
      v96 = v127;
      *(v91 + 56) = &type metadata for String;
      *(v91 + 64) = v96;
      *(v91 + 32) = v93;
      *(v91 + 40) = v95;
      v97 = Participant.handle.getter();
      *(v91 + 96) = &type metadata for String;
      *(v91 + 104) = v96;
      *(v91 + 72) = v97;
      *(v91 + 80) = v98;
      v99 = static os_log_type_t.default.getter();
      sub_100005404(v129, &_mh_execute_header, v99, "Participant with UUID: %{public}@ and handle: %@ has write permission in the CKShare. Allowing changes from this participant in real-time sync.", 143, 2, v91);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v100 = v135;
      swift_beginAccess();
      v101 = v136;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137 = *(v100 + 24);
      *(v100 + 24) = 0x8000000000000000;
      sub_100A9D210(1, v101, isUniquelyReferenced_nonNull_native);

      *(v100 + 24) = v137;
      swift_endAccess();

      return 1;
    }

LABEL_33:
    v24 = 0;
    v57 = (v70 & 0xC000000000000001);
    v58 = &selRef_canRemoveImageBackground;
    while (1)
    {
      if (v57)
      {
        v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v70 + 16))
        {
          goto LABEL_46;
        }

        v72 = *(v70 + 8 * v24 + 32);
      }

      v73 = v72;
      v74 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if ([v72 permission] != 3)
      {

        v75 = swift_initStackObject();
        *(v75 + 16) = xmmword_10146BDE0;
        v76 = v134;
        Participant.id.getter();
        v77 = UUID.uuidString.getter();
        v79 = v78;
        v126(v76, v133);
        v80 = v127;
        *(v75 + 56) = &type metadata for String;
        *(v75 + 64) = v80;
        *(v75 + 32) = v77;
        *(v75 + 40) = v79;
        v81 = Participant.handle.getter();
        *(v75 + 96) = &type metadata for String;
        *(v75 + 104) = v80;
        *(v75 + 72) = v81;
        *(v75 + 80) = v82;
        v83 = static os_log_type_t.default.getter();
        v84 = v129;
        sub_100005404(v129, &_mh_execute_header, v83, "Participant with UUID: %{public}@ and handle: %@ does not have write permission in the CKShare. Not allowing changes from this participant in real-time sync.", 157, 2, v75);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v85 = v135;
        swift_beginAccess();
        v86 = v136;
        v87 = swift_isUniquelyReferenced_nonNull_native();
        v137 = *(v85 + 24);
        *(v85 + 24) = 0x8000000000000000;
        sub_100A9D210(0, v86, v87);

        *(v85 + 24) = v137;
        swift_endAccess();
        v88 = swift_initStackObject();
        *(v88 + 16) = v125;
        *(v88 + 56) = sub_100006370(0, &qword_101A00570);
        *(v88 + 64) = sub_10000FE24(&qword_101A00E40, &qword_101A00570);
        *(v88 + 32) = v86;
        v89 = v86;
        v90 = static os_log_type_t.default.getter();
        sub_100005404(v84, &_mh_execute_header, v90, "GroupActivity Participant %@ more than one CKShare Participant and one of them does not have write access, so block all.", 120, 2, v88);

        swift_setDeallocating();
        sub_100005070(v88 + 32);
        return 0;
      }

      ++v24;
      if (v74 == v71)
      {
        goto LABEL_51;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }

  v103 = swift_initStackObject();
  *(v103 + 16) = xmmword_10146C4D0;
  v104 = v128;
  Participant.id.getter();
  v105 = UUID.uuidString.getter();
  v107 = v106;
  v126(v104, v133);
  *(v103 + 32) = v105;
  v108 = v127;
  *(v103 + 56) = &type metadata for String;
  *(v103 + 64) = v108;
  *(v103 + 40) = v107;
  v109 = Participant.handle.getter();
  *(v103 + 96) = &type metadata for String;
  *(v103 + 104) = v108;
  *(v103 + 72) = v109;
  *(v103 + 80) = v110;
  v111 = [v26 recordChangeTag];
  if (v111)
  {
    v112 = v111;
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    v116 = (v103 + 112);
    *(v103 + 136) = &type metadata for String;
    *(v103 + 144) = v108;
    if (v115)
    {
      *v116 = v113;
      v117 = v135;
      v118 = v136;
      v119 = v129;
      goto LABEL_57;
    }
  }

  else
  {
    v116 = (v103 + 112);
    *(v103 + 136) = &type metadata for String;
    *(v103 + 144) = v108;
  }

  v117 = v135;
  v118 = v136;
  v119 = v129;
  *v116 = 0;
  v115 = 0xE000000000000000;
LABEL_57:
  *(v103 + 120) = v115;
  v120 = static os_log_type_t.default.getter();
  sub_100005404(v119, &_mh_execute_header, v120, "Cannot match participant with UUID: %{public}@ and handle: %@ to any CKShare(etag=%{public}@) participants. Not allowing changes from this participant in real-time sync.", 172, 2, v103);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_beginAccess();
  v121 = v118;
  v122 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *(v117 + 24);
  *(v117 + 24) = 0x8000000000000000;
  sub_100A9D210(0, v121, v122);

  *(v117 + 24) = v137;
  swift_endAccess();

  return 0;
}

uint64_t sub_1010777B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10107781C(char a1)
{
  v3 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_queuedIncomingUpdates;
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    v15 = *(v1 + v10);

LABEL_23:
    v28 = OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_queuedIncomingUpdates;
    swift_beginAccess();
    *(v1 + v28) = _swiftEmptyArrayStorage;

    return v15;
  }

  swift_beginAccess();
  v11 = *(*(v1 + v10) + 16);
  v12 = OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_incomingSuspendedCache;

  v34 = v11;
  v29 = v1;
  if (!v11)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_22:

    v1 = v29;
    goto LABEL_23;
  }

  v14 = 0;
  v32 = v1 + v12;
  v15 = _swiftEmptyArrayStorage;
  v30 = v6;
  v31 = v4;
  v33 = result;
  while (v14 < *(result + 16))
  {
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = *(v4 + 72);
    sub_101085AEC(result + v16 + v17 * v14, v9, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    v18 = sub_101096C40();
    if (v18)
    {
      v35 = v17;
      v36[0] = v18;
      v19 = *(v32 + 8);

      sub_1005B981C(&qword_101A290D8);
      sub_10001A2F8(&qword_101A290E0, &qword_101A290D8);
      AnyHashable.init<A>(_:)();
      if (*(v19 + 16))
      {
        v20 = AnyHashable._rawHashValue(seed:)(*(v19 + 40));
        v21 = -1 << *(v19 + 32);
        v22 = v20 & ~v21;
        v17 = v35;
        if ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          while (1)
          {
            sub_100064110(*(v19 + 48) + 40 * v22, v36);
            v24 = static AnyHashable.== infix(_:_:)();
            sub_100064234(v36);
            if (v24)
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          sub_100064234(v37);
          sub_101085BD8(v9, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v6 = v30;
          v4 = v31;
          goto LABEL_5;
        }

LABEL_13:

        sub_100064234(v37);
        v6 = v30;
        v4 = v31;
      }

      else
      {

        sub_100064234(v37);
        v17 = v35;
      }
    }

    sub_101085B70(v9, v6, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100776964(0, v15[2] + 1, 1);
      v15 = v38;
    }

    v27 = v15[2];
    v26 = v15[3];
    if (v27 >= v26 >> 1)
    {
      sub_100776964(v26 > 1, v27 + 1, 1);
      v15 = v38;
    }

    v15[2] = v27 + 1;
    sub_101085B70(v6, v15 + v16 + v27 * v17, type metadata accessor for CRLBoardItemPeerSyncUpdate);
LABEL_5:
    ++v14;
    result = v33;
    if (v14 == v34)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_101077C54()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_queuedIncomingUpdates;
  swift_beginAccess();
  *(v1 + v2) = _swiftEmptyArrayStorage;

  return _swift_task_switch(sub_101077CE8, v1, 0);
}

uint64_t sub_101077CE8()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_pushCommandToCommandControllerTask;
  if (*(v1 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_pushCommandToCommandControllerTask))
  {

    Task.cancel()();
  }

  *(v1 + v2) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_101077DA0(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = sub_1005B981C(&qword_1019F7020);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v5 = type metadata accessor for Participant();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_101077F2C, v2, 0);
}

uint64_t sub_101077F2C()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_101077FD0;
  v2 = *(v0 + 112);

  return sub_101081EDC(v2);
}

uint64_t sub_101077FD0(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_1010780E8, v2, 0);
}

uint64_t sub_1010780E8()
{
  v1 = *(v0 + 240);
  if (!*(v1 + 16))
  {
    goto LABEL_24;
  }

  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  sub_10000BE14(*(v0 + 120), v4, &qword_1019F7020);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_10000CAAC(*(v0 + 200), &qword_1019F7020);
    goto LABEL_4;
  }

  v24 = *(v0 + 128);
  (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
  if (*(v24 + 136) == 1 && (v25 = *(*(*(v0 + 128) + 128) + 16)) != 0)
  {
    v26 = v25;
    v27 = [v26 publicPermission];
    v28 = *(v0 + 216);
    v29 = *(v0 + 224);
    v30 = *(v0 + 208);
    if (v27 == 3)
    {
      (*(v28 + 8))(*(v0 + 224), *(v0 + 208));
    }

    else
    {
      v33 = sub_1010768F0(*(v0 + 224));

      (*(v28 + 8))(v29, v30);
      if ((v33 & 1) == 0)
      {
LABEL_4:
        if (qword_1019F2288 != -1)
        {
          goto LABEL_34;
        }

        while (1)
        {
          v5 = *(v0 + 192);
          v6 = *(v0 + 120);
          v7 = static OS_os_log.realTimeSync;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          sub_10000BE14(v6, v5, &qword_1019F7020);
          v9 = String.init<A>(describing:)();
          v11 = v10;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v9;
          *(inited + 40) = v11;
          v12 = static os_log_type_t.default.getter();
          sub_100005404(v7, &_mh_execute_header, v12, "Ignoring incoming model changes from participant with unverified write permissions, %@", 86, 2, inited);
          swift_setDeallocating();
          sub_100005070(inited + 32);
          v35 = *(v1 + 16);
          if (!v35)
          {
            break;
          }

          v13 = 0;
          v34 = *(v0 + 144);
          v14 = _swiftEmptyArrayStorage;
          while (v13 < *(v1 + 16))
          {
            v16 = *(v0 + 168);
            v15 = *(v0 + 176);
            v17 = (*(v34 + 80) + 32) & ~*(v34 + 80);
            v18 = *(v34 + 72);
            sub_101085AEC(*(v0 + 240) + v17 + v18 * v13, v15, type metadata accessor for CRLBoardItemPeerSyncUpdate);
            sub_101085AEC(v15, v16, type metadata accessor for CRLBoardItemPeerSyncUpdate);
            LODWORD(v15) = swift_getEnumCaseMultiPayload();
            sub_101085BD8(v16, type metadata accessor for CRLBoardItemPeerSyncUpdate);
            if (v15 == 5 || (v19 = *(v0 + 160), sub_101085AEC(*(v0 + 176), v19, type metadata accessor for CRLBoardItemPeerSyncUpdate), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_101085BD8(v19, type metadata accessor for CRLBoardItemPeerSyncUpdate), EnumCaseMultiPayload == 4))
            {
              sub_101085B70(*(v0 + 176), *(v0 + 152), type metadata accessor for CRLBoardItemPeerSyncUpdate);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_100776964(0, _swiftEmptyArrayStorage[2] + 1, 1);
              }

              v22 = _swiftEmptyArrayStorage[2];
              v21 = _swiftEmptyArrayStorage[3];
              if (v22 >= v21 >> 1)
              {
                sub_100776964(v21 > 1, v22 + 1, 1);
              }

              v23 = *(v0 + 152);
              _swiftEmptyArrayStorage[2] = v22 + 1;
              sub_101085B70(v23, _swiftEmptyArrayStorage + v17 + v22 * v18, type metadata accessor for CRLBoardItemPeerSyncUpdate);
            }

            else
            {
              sub_101085BD8(*(v0 + 176), type metadata accessor for CRLBoardItemPeerSyncUpdate);
            }

            if (v35 == ++v13)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_34:
          swift_once();
        }

        v14 = _swiftEmptyArrayStorage;
LABEL_26:

        if (_swiftEmptyArrayStorage[2])
        {
          goto LABEL_27;
        }

LABEL_24:

        goto LABEL_28;
      }
    }
  }

  else
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  }

  v14 = *(v0 + 240);
  if (!v14[2])
  {
    goto LABEL_24;
  }

LABEL_27:
  swift_beginAccess();
  sub_10079AD90(v14);
  swift_endAccess();
  sub_10107A464();
LABEL_28:

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_101078634()
{
  v1[100] = v0;
  v1[101] = *(type metadata accessor for CRLBoardItemDeltaChange(0) - 8);
  v1[102] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[103] = v2;
  v1[104] = *(v2 - 8);
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = sub_1005B981C(&qword_101A29100);
  v1[110] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardPeerChangeSet(0);
  v1[111] = v3;
  v1[112] = *(v3 - 8);
  v1[113] = swift_task_alloc();
  v4 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v1[114] = v4;
  v1[115] = *(v4 - 8);
  v1[116] = swift_task_alloc();
  sub_1005B981C(&qword_101A08DF0);
  v1[117] = swift_task_alloc();

  return _swift_task_switch(sub_1010788BC, v0, 0);
}

uint64_t sub_1010788BC()
{
  type metadata accessor for MainActor();
  *(v0 + 944) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101078950, v2, v1);
}

uint64_t sub_101078950()
{
  v1 = *(v0 + 800);

  *(v0 + 952) = *(*(v1 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_suspendResumeCoordinatorState) + 48);

  return _swift_task_switch(sub_1010789D0, v1, 0);
}

uint64_t sub_1010789D0()
{
  if (*(v0 + 952) > 0)
  {
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v1 = static OS_os_log.realTimeSync;
    v2 = static os_log_type_t.debug.getter();
    v3 = _swiftEmptyArrayStorage;
    sub_100005404(v1, &_mh_execute_header, v2, "Skipping creation of real time change record, outgoing is suspended", 67, 2, _swiftEmptyArrayStorage);
    goto LABEL_10;
  }

  v4 = *(v0 + 936);
  v5 = *(v0 + 920);
  v6 = *(v0 + 912);
  v7 = *(*(v0 + 800) + 120);
  v8 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v7 + v8, v4, &qword_101A08DF0);
  v9 = (*(v5 + 48))(v4, 1, v6);
  v10 = *(v0 + 936);
  if (v9)
  {
    v11 = &qword_101A08DF0;
LABEL_9:
    sub_10000CAAC(v10, v11);
    v3 = _swiftEmptyArrayStorage;
LABEL_10:
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v12 = *(v0 + 928);
  v13 = *(v0 + 896);
  v14 = *(v0 + 888);
  v15 = *(v0 + 880);
  v16 = *(v0 + 936);
  sub_101085AEC(v10, v12, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  sub_10000CAAC(v16, &qword_101A08DF0);
  v17 = *v12;

  sub_101085BD8(v12, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  OS_dispatch_queue.sync<A>(execute:)();
  if ((*(v13 + 48))(v15, 1, v14) == 1)
  {
    v18 = *(v0 + 880);

    v11 = &unk_101A29100;
    v10 = v18;
    goto LABEL_9;
  }

  v23 = *(v0 + 904);
  v24 = *(v0 + 888);
  v25 = *(v0 + 864);
  v26 = *(v0 + 800);
  sub_101085B70(*(v0 + 880), v23, type metadata accessor for CRLBoardPeerChangeSet);
  sub_100768EB0(0);
  sub_101085AEC(v26 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_globallyScopedBoardIdentifier, v25, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  v27 = *(v23 + *(v24 + 40));
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v0 + 656;
    v132 = (v0 + 768);
    v126 = v0 + 456;
    v129 = (v0 + 776);
    v30 = v27 + 32;
    v131 = _swiftEmptyArrayStorage;
    v135 = _swiftEmptyArrayStorage;
    do
    {
      v35 = *(v0 + 864);
      sub_10000630C(v30, v0 + 376);
      v36 = *(v0 + 400);
      v37 = *(v0 + 408);
      sub_100020E58((v0 + 376), v36);
      (*(v37 + 8))(v35, v36, v37);
      v38 = *(v0 + 400);
      v39 = *(v0 + 408);
      sub_100020E58((v0 + 376), v38);
      LOBYTE(v35) = (*(v39 + 16))(v38, v39);
      sub_100005070(v0 + 376);
      v40 = v0 + 416;
      if (v35)
      {
        sub_10000630C(v40, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v132 = v135;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v135 = sub_100B37140(0, v135[2] + 1, 1, v135);
          *v132 = v135;
        }

        v43 = v135[2];
        v42 = v135[3];
        if (v43 >= v42 >> 1)
        {
          v135 = sub_100B37140((v42 > 1), v43 + 1, 1, v135);
          *v132 = v135;
        }

        sub_100005070(v0 + 416);
        v17 = *(v0 + 680);
        v31 = *(v0 + 688);
        v23 = sub_10002A948(v29, v17);
        v32 = *(v17 - 8);
        v33 = swift_task_alloc();
        (*(v32 + 16))(v33, v23, v17);
        sub_100725200(v43, v33, v132, v17, v31);
        v34 = v29;
      }

      else
      {
        sub_10000630C(v40, v126);
        v44 = v131;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        *v129 = v131;
        if ((v45 & 1) == 0)
        {
          v44 = sub_100B37140(0, v131[2] + 1, 1, v131);
          *v129 = v44;
        }

        v47 = v44[2];
        v46 = v44[3];
        if (v47 >= v46 >> 1)
        {
          v131 = sub_100B37140((v46 > 1), v47 + 1, 1, v44);
          *v129 = v131;
        }

        else
        {
          v131 = v44;
        }

        sub_100005070(v0 + 416);
        v23 = *(v0 + 480);
        v48 = *(v0 + 488);
        v17 = v0 + 456;
        v49 = sub_10002A948(v126, v23);
        v50 = *(v23 - 8);
        v51 = swift_task_alloc();
        (*(v50 + 16))(v51, v49, v23);
        sub_100725200(v47, v51, v129, v23, v48);
        v34 = v0 + 456;
        v29 = v0 + 656;
      }

      sub_100005070(v34);

      v30 += 40;
      --v28;
    }

    while (v28);
  }

  else
  {
    v131 = _swiftEmptyArrayStorage;
    v135 = _swiftEmptyArrayStorage;
  }

  v52 = *(v0 + 904);
  v53 = *(v0 + 888);
  v54 = (v52 + v53[6]);
  v55 = v54[1];
  if (v55 >> 60 != 15)
  {
    v23 = *v54;
    v57 = *(v0 + 856);
    sub_101085AEC(*(v0 + 864), v57, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    v58 = (v52 + v53[5]);
    v59 = *v58;
    v60 = v58[1];
    v61 = v58[2];
    v17 = type metadata accessor for CRLBoardRealTimeChangeRecord();
    v53 = swift_allocObject();
    sub_101085B70(v57, v53 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_boardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    *(v53 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_minRequiredVersion) = v59;
    v62 = v53 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_raw_minRequiredVersionForGoodEnoughFidelity;
    *v62 = v60;
    v62[8] = 0;
    v63 = v53 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_raw_minRequiredVersionForFullFidelity;
    *v63 = v61;
    v63[8] = 0;
    v64 = (v53 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_partialCRDTData);
    *v64 = v23;
    v64[1] = v55;
    sub_100024E84(v23, v55);
    sub_100024E98(v23, v55);
    v56 = v135;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_33;
    }

    goto LABEL_75;
  }

  v56 = v135;
  while (1)
  {
    v67 = *(v52 + v53[8]);
    if (v67 >> 62)
    {
      v68 = _CocoaArrayWrapper.endIndex.getter();
      if (!v68)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v68)
      {
        goto LABEL_52;
      }
    }

    if (v68 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_75:
    v56 = sub_100B37140(0, v56[2] + 1, 1, v56);
LABEL_33:
    v66 = v56[2];
    v65 = v56[3];
    if (v66 >= v65 >> 1)
    {
      v56 = sub_100B37140((v65 > 1), v66 + 1, 1, v56);
    }

    sub_100025870(v23, v55);
    *(v0 + 640) = v17;
    *(v0 + 648) = sub_1010858F8(&qword_101A288E8, type metadata accessor for CRLBoardRealTimeChangeRecord);
    *(v0 + 616) = v53;
    v56[2] = v66 + 1;
    sub_100050F74((v0 + 616), &v56[5 * v66 + 4]);
    v52 = *(v0 + 904);
    v53 = *(v0 + 888);
  }

  v69 = 0;
  v136 = v67 & 0xC000000000000001;
  v122 = (*(v0 + 832) + 8);
  v127 = v68;
  v130 = v67;
  do
  {
    if (v136)
    {
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v70 = *(v67 + 8 * v69 + 32);
    }

    v124 = sub_101079D10(v70, *(v0 + 864));
    v71 = v56;
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v72 = *(v0 + 848);
    v73 = *(v0 + 824);
    v74 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    (*(*v70 + 264))();
    v76 = UUID.uuidString.getter();
    v78 = v77;
    (*v122)(v72, v73);
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v76;
    *(inited + 40) = v78;
    v79 = static os_log_type_t.default.getter();
    sub_100005404(v74, &_mh_execute_header, v79, "Creating real time change record to send: created board item %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v56 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_100B37140(0, v71[2] + 1, 1, v71);
    }

    v67 = v130;
    v81 = v56[2];
    v80 = v56[3];
    if (v81 >= v80 >> 1)
    {
      v56 = sub_100B37140((v80 > 1), v81 + 1, 1, v56);
    }

    *(v0 + 600) = type metadata accessor for CRLBoardItemRealTimeChangeRecord();
    *(v0 + 608) = sub_1010858F8(&qword_101A288E0, type metadata accessor for CRLBoardItemRealTimeChangeRecord);
    *(v0 + 576) = v124;
    v56[2] = v81 + 1;
    sub_100050F74((v0 + 576), &v56[5 * v81 + 4]);
    ++v69;
  }

  while (v127 != v69);
LABEL_52:
  v82 = *(v0 + 904);
  v83 = *(v0 + 888);
  v84 = *(v82 + *(v83 + 28));
  v85 = *(v84 + 16);
  if (v85)
  {
    v137 = v56;
    v86 = *(v0 + 808);
    v87 = v84 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v133 = *(v86 + 72);
    do
    {
      v88 = *(v0 + 864);
      v89 = *(v0 + 816);
      sub_101085AEC(v87, v89, type metadata accessor for CRLBoardItemDeltaChange);
      v90 = sub_101084760(v89, v88);
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v91 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      v92 = swift_initStackObject();
      *(v92 + 16) = xmmword_10146C6B0;
      v93 = UUID.uuidString.getter();
      v95 = v94;
      *(v92 + 56) = &type metadata for String;
      *(v92 + 64) = sub_1000053B0();
      *(v92 + 32) = v93;
      *(v92 + 40) = v95;
      v96 = static os_log_type_t.default.getter();
      sub_100005404(v91, &_mh_execute_header, v96, "Creating real time change record to send: modified board item %{public}@", 72, 2, v92);
      swift_setDeallocating();
      sub_100005070(v92 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = sub_100B37140(0, v137[2] + 1, 1, v137);
      }

      v98 = v137[2];
      v97 = v137[3];
      if (v98 >= v97 >> 1)
      {
        v137 = sub_100B37140((v97 > 1), v98 + 1, 1, v137);
      }

      sub_101085BD8(*(v0 + 816), type metadata accessor for CRLBoardItemDeltaChange);
      *(v0 + 560) = type metadata accessor for CRLBoardItemRealTimeChangeRecord();
      *(v0 + 568) = sub_1010858F8(&qword_101A288E0, type metadata accessor for CRLBoardItemRealTimeChangeRecord);
      *(v0 + 536) = v90;
      v137[2] = v98 + 1;
      sub_100050F74((v0 + 536), &v137[5 * v98 + 4]);
      v87 += v133;
      --v85;
    }

    while (v85);
    v82 = *(v0 + 904);
    v83 = *(v0 + 888);
    v56 = v137;
  }

  v99 = *(v82 + *(v83 + 36));
  v100 = *(v99 + 16);
  if (v100)
  {
    v101 = *(v0 + 832);
    v128 = *(v101 + 16);
    v102 = v99 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
    v123 = (v101 + 32);
    v125 = *(v101 + 72);
    v121 = (v101 + 8);
    do
    {
      v134 = v100;
      v138 = v56;
      v103 = *(v0 + 864);
      v104 = *(v0 + 856);
      v105 = *(v0 + 848);
      v106 = *(v0 + 840);
      v107 = *(v0 + 824);
      v128(v106, v102, v107);
      sub_101085AEC(v103, v104, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      v128(v105, v106, v107);
      v108 = type metadata accessor for CRLTombstoneBoardItemRealTimeChangeRecord();
      v109 = swift_allocObject();
      sub_101085B70(v104, v109 + OBJC_IVAR____TtC8Freeform41CRLTombstoneBoardItemRealTimeChangeRecord_boardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      (*v123)(v109 + OBJC_IVAR____TtC8Freeform41CRLTombstoneBoardItemRealTimeChangeRecord_boardItemUUID, v105, v107);
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v110 = *(v0 + 840);
      v111 = *(v0 + 824);
      v112 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      v113 = swift_initStackObject();
      *(v113 + 16) = xmmword_10146C6B0;
      v114 = UUID.uuidString.getter();
      v116 = v115;
      (*v121)(v110, v111);
      *(v113 + 56) = &type metadata for String;
      *(v113 + 64) = sub_1000053B0();
      *(v113 + 32) = v114;
      *(v113 + 40) = v116;
      v117 = static os_log_type_t.default.getter();
      sub_100005404(v112, &_mh_execute_header, v117, "Creating real time change record to send: deleted board item %{public}@", 71, 2, v113);
      swift_setDeallocating();
      sub_100005070(v113 + 32);
      v56 = v138;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_100B37140(0, v138[2] + 1, 1, v138);
      }

      v119 = v56[2];
      v118 = v56[3];
      if (v119 >= v118 >> 1)
      {
        v56 = sub_100B37140((v118 > 1), v119 + 1, 1, v56);
      }

      *(v0 + 520) = v108;
      *(v0 + 528) = sub_1010858F8(&qword_101A288D8, type metadata accessor for CRLTombstoneBoardItemRealTimeChangeRecord);
      *(v0 + 496) = v109;
      v56[2] = v119 + 1;
      sub_100050F74((v0 + 496), &v56[5 * v119 + 4]);
      v102 += v125;
      v100 = v134 - 1;
    }

    while (v134 != 1);
    v82 = *(v0 + 904);
  }

  v120 = *(v0 + 864);

  sub_101085BD8(v120, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  sub_101085BD8(v82, type metadata accessor for CRLBoardPeerChangeSet);
  v19 = v131;
  v3 = v56;
LABEL_11:
  sub_1005B981C(&qword_101A29108);
  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = _swiftEmptyArrayStorage;
  v20[4] = v19;
  v20[5] = _swiftEmptyArrayStorage;

  v21 = *(v0 + 8);

  return v21(v20);
}

void *sub_101079D10(void *a1, uint64_t a2)
{
  v4 = v2;
  v70 = a2;
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v73 = &v60 - v7;
  v8 = type metadata accessor for UUID();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8Freeform8CRLBoard_store;
  v74 = *(v4 + 120);
  v15 = *(*a1 + 520);
  v16 = *(*(v74 + OBJC_IVAR____TtC8Freeform8CRLBoard_store) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
  v17 = v15();
  v19 = v18;

  if (!v3)
  {
    v66 = v13;
    v67 = v10;
    v20 = *(*(v74 + v14) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
    v21 = *a1;
    v68 = v19;
    v22 = *(v21 + 528);
    v69 = v17;
    v23 = v20;
    v24 = v22();
    v25 = v68;
    v26 = v24;
    v28 = v27;

    v64 = v26;
    v65 = v28;
    v29 = *(*(v74 + v14) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
    v30 = *(*a1 + 536);
    v31 = v29;
    v32 = v30();
    v34 = v33;

    v60 = v32;
    v74 = v34;
    v36 = sub_101085AEC(v70, v66, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    v37 = (*(*a1 + 264))(v36);
    v38 = a1[5];
    v62 = a1[4];
    v63 = v38;
    v39 = a1[2];
    v61 = a1[3];
    v70 = v39;
    v40 = (*(*a1 + 464))(v37);
    if ((v42 & 0x100) != 0)
    {
      v44 = v72;
      v43 = v73;
      v45 = v71;
      if (v40 | v41 || v42)
      {
        if (v40 != 1 || v41 || v42)
        {
          if (v40 != 2 || v41 || v42)
          {
            if (v40 != 3 || v41 || v42)
            {
              if (v40 != 4 || v41 || v42)
              {
                if (v40 != 5 || v41 || v42)
                {
                  if (v40 != 6 || v41 || v42)
                  {
                    if (v40 != 7 || v41 || v42)
                    {
                      if (v40 != 8 || v41 || v42)
                      {
                        if (v40 != 9 || v41 || v42)
                        {
                          if (v40 != 10 || v41 || v42)
                          {
                            if (v42)
                            {
                              v49 = 0;
                            }

                            else
                            {
                              v49 = v41 == 0;
                            }

                            if (v49 && v40 == 11)
                            {
                              v46 = 1;
                            }

                            else
                            {
                              v46 = 2;
                            }

                            v48 = 2;
                            v47 = 0;
                          }

                          else
                          {
                            v46 = 0;
                            v47 = 1;
                            v48 = 12;
                          }
                        }

                        else
                        {
                          v46 = 0;
                          v47 = 1;
                          v48 = 11;
                        }

                        v44 = v72;
                        v43 = v73;
                        v45 = v71;
                        v25 = v68;
                      }

                      else
                      {
                        v46 = 0;
                        v47 = 1;
                        v48 = 10;
                      }
                    }

                    else
                    {
                      v46 = 0;
                      v47 = 1;
                      v48 = 9;
                    }
                  }

                  else
                  {
                    v46 = 0;
                    v47 = 1;
                    v48 = 8;
                  }
                }

                else
                {
                  v46 = 0;
                  v47 = 1;
                  v48 = 7;
                }
              }

              else
              {
                v46 = 0;
                v47 = 1;
                v48 = 6;
              }
            }

            else
            {
              v46 = 0;
              v47 = 1;
              v48 = 5;
            }
          }

          else
          {
            v46 = 0;
            v47 = 1;
            v48 = 4;
          }
        }

        else
        {
          v46 = 0;
          v47 = 1;
          v48 = 3;
        }
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 2;
      }
    }

    else
    {
      v44 = v72;
      v43 = v73;
      v45 = v71;
      v46 = v41;
      v47 = v42;
      v48 = v40;
    }

    (*(*a1 + 272))();
    type metadata accessor for CRLBoardItemRealTimeChangeRecord();
    a1 = swift_allocObject();
    sub_101085B70(v66, a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_boardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    (*(v45 + 32))(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemUUID, v67, v44);
    v51 = v62;
    *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_minRequiredVersion) = v61;
    v52 = a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForGoodEnoughFidelity;
    *v52 = v51;
    v52[8] = 0;
    v53 = a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForFullFidelity;
    *v53 = v63;
    v53[8] = 0;
    *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_objectOptions) = v70;
    *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemTypeValue) = v48;
    v54 = a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemSubTypeValue;
    *v54 = v46;
    v54[8] = v47 & 1;
    sub_10063FD1C(v43, a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_parentContainerUUID);
    *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemCreated) = 1;
    v55 = (a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData);
    *v55 = v69;
    v55[1] = v25;
    v56 = (a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData);
    v57 = v65;
    *v56 = v64;
    v56[1] = v57;
    v58 = (a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData);
    v59 = v74;
    *v58 = v60;
    v58[1] = v59;
    *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData) = xmmword_101486780;
    *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData) = xmmword_101486780;
    *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData) = xmmword_101486780;
  }

  return a1;
}

void sub_10107A464()
{
  v1 = v0 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_incomingSuspendedCache;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_incomingSuspendedCache + 24) != 1 || (*v1 & 1) == 0) && !*(v0 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_pushCommandToCommandControllerTask))
  {
    v2 = *v1 == 1 && *(*(v1 + 8) + 16) != 0;
    v3 = sub_10107781C(v2);
    if (*(v3 + 16))
    {
      sub_10107E840(v3);
    }
  }
}

uint64_t sub_10107A508(uint64_t a1, uint64_t a2)
{
  v424 = a2;
  v3 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v3 - 8);
  v435 = &v424 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v429 = &v424 - v6;
  v428 = type metadata accessor for CRLBoardItemDeltaChange(0);
  __chkstk_darwin(v428);
  v434 = &v424 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v484 = &v424 - v9;
  v10 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v456 = &v424 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v12 - 8);
  v471 = &v424 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v427 = &v424 - v15;
  __chkstk_darwin(v16);
  v458 = &v424 - v17;
  v455 = sub_1005B981C(&qword_101A290E8);
  __chkstk_darwin(v455);
  v453 = &v424 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v465 = &v424 - v20;
  v21 = sub_1005B981C(&qword_101A21E80);
  __chkstk_darwin(v21 - 8);
  v441 = &v424 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v424 - v24;
  __chkstk_darwin(v26);
  v440 = &v424 - v27;
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 1);
  __chkstk_darwin(v28);
  v433 = &v424 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v483 = &v424 - v32;
  __chkstk_darwin(v33);
  v486 = &v424 - v34;
  __chkstk_darwin(v35);
  v442 = &v424 - v36;
  __chkstk_darwin(v37);
  v461 = (&v424 - v38);
  __chkstk_darwin(v39);
  v447 = &v424 - v40;
  __chkstk_darwin(v41);
  v454 = &v424 - v42;
  __chkstk_darwin(v43);
  v439 = &v424 - v44;
  __chkstk_darwin(v45);
  v436 = &v424 - v46;
  __chkstk_darwin(v47);
  v488 = &v424 - v48;
  __chkstk_darwin(v49);
  v443 = &v424 - v50;
  v492 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  v51 = *(v492 - 8);
  __chkstk_darwin(v492);
  v469 = &v424 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v470 = &v424 - v54;
  __chkstk_darwin(v55);
  v437 = &v424 - v56;
  __chkstk_darwin(v57);
  v426 = &v424 - v58;
  __chkstk_darwin(v59);
  v425 = &v424 - v60;
  __chkstk_darwin(v61);
  v478 = &v424 - v62;
  __chkstk_darwin(v63);
  v463 = &v424 - v64;
  __chkstk_darwin(v65);
  v490 = &v424 - v66;
  __chkstk_darwin(v67);
  v473 = &v424 - v68;
  __chkstk_darwin(v69);
  v460 = &v424 - v70;
  __chkstk_darwin(v71);
  v457 = &v424 - v72;
  __chkstk_darwin(v73);
  v464 = &v424 - v74;
  __chkstk_darwin(v75);
  v452 = &v424 - v76;
  __chkstk_darwin(v77);
  v462 = (&v424 - v78);
  __chkstk_darwin(v79);
  inited = (&v424 - v80);
  __chkstk_darwin(v81);
  v446 = &v424 - v82;
  __chkstk_darwin(v83);
  v445 = &v424 - v84;
  __chkstk_darwin(v85);
  v449 = &v424 - v86;
  __chkstk_darwin(v87);
  v448 = &v424 - v88;
  __chkstk_darwin(v89);
  v479 = (&v424 - v90);
  __chkstk_darwin(v91);
  v93 = &v424 - v92;
  v474 = sub_100BD9A10(_swiftEmptyArrayStorage);
  v472 = sub_100BD9A10(_swiftEmptyArrayStorage);
  v500 = _swiftEmptySetSingleton;
  v94 = *(a1 + 16);
  v491 = v28;
  v476 = v29;
  v487 = v51;
  if (v94)
  {
    v430 = v25;
    v482 = ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v95 = v482 + a1;
    v438 = (v29 + 32);
    v96 = *(v51 + 72);
    v444 = (v29 + 16);
    v97 = v29 + 8;
    v451 = (v51 + 56);
    v432 = xmmword_10146BDE0;
    v477 = _swiftEmptyArrayStorage;
    v468 = _swiftEmptyArrayStorage;
    v459 = _swiftEmptyArrayStorage;
    v98 = v29;
    v99 = v443;
    v100 = v479;
    v466 = v97;
    v493 = v96;
    while (1)
    {
      sub_101085AEC(v95, v93, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      sub_101085AEC(v93, v100, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if ((EnumCaseMultiPayload - 4) < 2)
        {
          sub_101085BD8(v100, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          sub_101085AEC(v93, inited, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v107 = v468;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_100B37118(0, v107[2] + 1, 1, v107);
          }

          v109 = v107[2];
          v108 = v107[3];
          v468 = v107;
          if (v109 >= v108 >> 1)
          {
            v468 = sub_100B37118(v108 > 1, v109 + 1, 1, v468);
          }

          sub_101085BD8(v93, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v101 = v468;
          v468[2] = v109 + 1;
          v96 = v493;
          sub_101085B70(inited, v482 + v101 + v109 * v493, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          goto LABEL_4;
        }

        v114 = v447;
        v115 = v100;
        v116 = v491;
        (*v438)(v447, v115, v491);
        v99 = *v444;
        v117 = v461;
        (*v444)(v461, v114, v116);
        sub_101085AEC(v93, v446, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v118 = v474;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v496 = v118;
        v120 = sub_10003E994(v117);
        v122 = *(v118 + 16);
        v123 = (v121 & 1) == 0;
        v124 = __OFADD__(v122, v123);
        v125 = v122 + v123;
        if (v124)
        {
          goto LABEL_208;
        }

        v126 = v121;
        if (*(v118 + 24) >= v125)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v202 = v120;
            sub_100AAD340();
            v120 = v202;
          }
        }

        else
        {
          sub_100A98C84(v125, isUniquelyReferenced_nonNull_native);
          v120 = sub_10003E994(v461);
          if ((v126 & 1) != (v127 & 1))
          {
            goto LABEL_249;
          }
        }

        v164 = v496;
        v474 = v496;
        if (v126)
        {
          v96 = v493;
          sub_101085A88(v446, *(v496 + 56) + v120 * v493);
          v165 = *v97;
          v166 = v491;
          (*v97)(v461, v491);
          (v165)(v447, v166);
          sub_101085BD8(v93, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v98 = v476;
          v99 = v443;
          v100 = v479;
        }

        else
        {
          *(v496 + 8 * (v120 >> 6) + 64) |= 1 << v120;
          v98 = v476;
          v167 = v120;
          isUniquelyReferenced_nonNull_native = v461;
          v168 = v491;
          (v99)(*(v164 + 48) + *(v476 + 72) * v120, v461, v491);
          sub_101085B70(v446, *(v474 + 56) + v167 * v493, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v169 = v98[1];
          v169(isUniquelyReferenced_nonNull_native, v168);
          v170 = v168;
          v97 = v466;
          v169(v447, v170);
          sub_101085BD8(v93, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v171 = *(v474 + 16);
          v124 = __OFADD__(v171, 1);
          v172 = v171 + 1;
          if (v124)
          {
            goto LABEL_209;
          }

          *(v474 + 16) = v172;
          v99 = v443;
          v100 = v479;
          v96 = v493;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v110 = sub_1005B981C(&qword_101A290D0);
          sub_10002640C(*(v100 + *(v110 + 48) + 40), *(v100 + *(v110 + 48) + 48));
          sub_101085AEC(v93, v448, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v459 = sub_100B37118(0, v459[2] + 1, 1, v459);
          }

          v112 = v459[2];
          v111 = v459[3];
          if (v112 >= v111 >> 1)
          {
            v459 = sub_100B37118(v111 > 1, v112 + 1, 1, v459);
          }

          sub_101085BD8(v93, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v113 = v459;
          v459[2] = v112 + 1;
          v96 = v493;
          sub_101085B70(v448, v482 + v113 + v112 * v493, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          sub_101085BD8(v100, type metadata accessor for CRLGloballyScopedBoardIdentifier);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload == 1)
        {
          sub_101085AEC(v93, v449, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v103 = v477;
          }

          else
          {
            v103 = sub_100B37118(0, v477[2] + 1, 1, v477);
          }

          v105 = v103[2];
          v104 = v103[3];
          if (v105 >= v104 >> 1)
          {
            v477 = sub_100B37118(v104 > 1, v105 + 1, 1, v103);
          }

          else
          {
            v477 = v103;
          }

          sub_101085BD8(v93, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v106 = v477;
          v477[2] = v105 + 1;
          v96 = v493;
          sub_101085B70(v449, v482 + v106 + v105 * v493, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v100 = v479;
          sub_101085BD8(v479, type metadata accessor for CRLBoardItemPeerSyncUpdate);
LABEL_4:
          v98 = v476;
          goto LABEL_5;
        }

        v128 = (**v100 + 264);
        v129 = *v128;
        v489 = *v100;
        v480 = v128;
        v481 = v129;
        (v129)(EnumCaseMultiPayload);
        if (*(v474 + 16) && (v130 = sub_10003E994(v99), (v131 & 1) != 0))
        {
          v132 = v440;
          sub_101085AEC(*(v474 + 56) + v130 * v493, v440, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v133 = v99;
          v134 = *v97;
          (*v97)(v133, v491);
          v450 = *v451;
          v450(v132, 0, 1, v492);
          sub_10000CAAC(v132, &qword_101A21E80);
          if (qword_1019F2288 != -1)
          {
            swift_once();
          }

          v431 = static OS_os_log.realTimeSync;
          sub_1005B981C(&qword_1019F54E0);
          v135 = swift_allocObject();
          *(v135 + 16) = v432;
          v136 = v488;
          v137 = v489;
          (v481)(v135);
          v138 = UUID.uuidString.getter();
          v140 = v139;
          v467 = v134;
          (v134)(v136, v491);
          *(v135 + 56) = &type metadata for String;
          v141 = sub_1000053B0();
          *(v135 + 64) = v141;
          *(v135 + 32) = v138;
          *(v135 + 40) = v140;
          v496 = v137;
          type metadata accessor for CRLBoardItemData();

          v142 = String.init<A>(describing:)();
          *(v135 + 96) = &type metadata for String;
          *(v135 + 104) = v141;
          *(v135 + 72) = v142;
          *(v135 + 80) = v143;
          v144 = static os_log_type_t.default.getter();
          sub_100005404(v431, &_mh_execute_header, v144, "_processQueuedIncomingUpdatesIntoCommand: Created update found will removing existing delete in deletesThatAreNotReplacedByCreates %{public}@%{public}@", 151, 2, v135);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v145 = swift_deallocClassInstance();
          v146 = v436;
          (v481)(v145);
          v147 = v474;
          v148 = sub_10003E994(v146);
          if (v149)
          {
            v150 = v148;
            v151 = swift_isUniquelyReferenced_nonNull_native();
            v496 = v147;
            v98 = v476;
            if (!v151)
            {
              sub_100AAD340();
              v147 = v496;
            }

            v152 = *(v147 + 48) + v98[9] * v150;
            v153 = v150;
            v431 = v150;
            v154 = v491;
            v96 = v466;
            v155 = v467;
            (v467)(v152, v491);
            v156 = *(v147 + 56) + v153 * v493;
            v157 = v430;
            sub_101085B70(v156, v430, type metadata accessor for CRLBoardItemPeerSyncUpdate);
            v474 = v147;
            sub_100BD22F8(v431, v147);
            v158 = 0;
          }

          else
          {
            v158 = 1;
            v154 = v491;
            v98 = v476;
            v157 = v430;
            v96 = v466;
            v155 = v467;
          }

          v450(v157, v158, 1, v492);
          sub_10000CAAC(v157, &qword_101A21E80);
          v163 = v155(v436, v154);
          v161 = v443;
        }

        else
        {
          v159 = *v97;
          v160 = v97;
          v161 = v99;
          v154 = v491;
          v96 = v160;
          v467 = v159;
          (v159)(v99, v491);
          v162 = v440;
          v450 = *v451;
          v450(v440, 1, 1, v492);
          v163 = sub_10000CAAC(v162, &qword_101A21E80);
        }

        v173 = v439;
        (v481)(v163);
        if (*(v472 + 16) && (v174 = sub_10003E994(v173), (v175 & 1) != 0))
        {
          v176 = v441;
          sub_101085AEC(*(v472 + 56) + v174 * v493, v441, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v177 = v467;
          (v467)(v173, v154);
          v450(v176, 0, 1, v492);
          sub_10000CAAC(v176, &qword_101A21E80);
          if (qword_1019F2288 != -1)
          {
            swift_once();
          }

          v450 = static OS_os_log.realTimeSync;
          sub_1005B981C(&qword_1019F54E0);
          v178 = swift_allocObject();
          *(v178 + 16) = v432;
          v179 = v488;
          v96 = v489;
          (v481)(v178);
          v180 = UUID.uuidString.getter();
          v182 = v181;
          v177(v179, v491);
          *(v178 + 56) = &type metadata for String;
          v183 = sub_1000053B0();
          *(v178 + 64) = v183;
          *(v178 + 32) = v180;
          *(v178 + 40) = v182;
          v496 = v96;
          type metadata accessor for CRLBoardItemData();

          v184 = String.init<A>(describing:)();
          *(v178 + 96) = &type metadata for String;
          *(v178 + 104) = v183;
          *(v178 + 72) = v184;
          *(v178 + 80) = v185;
          v186 = static os_log_type_t.default.getter();
          sub_100005404(v450, &_mh_execute_header, v186, "_processQueuedIncomingUpdatesIntoCommand: Newer created item will replace existing %{public}@%{public}@", 103, 2, v178);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v187 = swift_deallocClassInstance();
          v98 = v476;
          v99 = v443;
        }

        else
        {
          (v467)(v173, v154);
          v188 = v441;
          v450(v441, 1, 1, v492);
          v187 = sub_10000CAAC(v188, &qword_101A21E80);
          v99 = v161;
        }

        isUniquelyReferenced_nonNull_native = v454;
        (v481)(v187);
        sub_101085AEC(v93, v445, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v189 = v472;
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v496 = v189;
        v190 = sub_10003E994(isUniquelyReferenced_nonNull_native);
        v192 = *(v189 + 16);
        v193 = (v191 & 1) == 0;
        v124 = __OFADD__(v192, v193);
        v194 = v192 + v193;
        if (v124)
        {
          goto LABEL_207;
        }

        v195 = v191;
        if (*(v189 + 24) >= v194)
        {
          if ((v97 & 1) == 0)
          {
            v203 = v190;
            sub_100AAD340();
            v190 = v203;
            v98 = v476;
          }
        }

        else
        {
          sub_100A98C84(v194, v97);
          v190 = sub_10003E994(v454);
          if ((v195 & 1) != (v196 & 1))
          {
            goto LABEL_249;
          }
        }

        v472 = v496;
        if (v195)
        {
          v96 = v493;
          sub_101085A88(v445, *(v496 + 56) + v190 * v493);

          v97 = v466;
          (v467)(v454, v491);
          sub_101085BD8(v93, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v100 = v479;
        }

        else
        {
          *(v496 + 8 * (v190 >> 6) + 64) |= 1 << v190;
          v197 = v190;
          isUniquelyReferenced_nonNull_native = v454;
          v198 = v491;
          (v98[2])(*(v472 + 48) + v98[9] * v190, v454, v491);
          v96 = v493;
          sub_101085B70(v445, *(v472 + 56) + v197 * v493, type metadata accessor for CRLBoardItemPeerSyncUpdate);

          v199 = v198;
          v97 = v466;
          (v467)(isUniquelyReferenced_nonNull_native, v199);
          sub_101085BD8(v93, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v200 = *(v472 + 16);
          v124 = __OFADD__(v200, 1);
          v201 = v200 + 1;
          if (v124)
          {
            goto LABEL_210;
          }

          *(v472 + 16) = v201;
          v100 = v479;
        }
      }

LABEL_5:
      v95 += v96;
      if (!--v94)
      {
        goto LABEL_64;
      }
    }
  }

  v477 = _swiftEmptyArrayStorage;
  v468 = _swiftEmptyArrayStorage;
  v459 = _swiftEmptyArrayStorage;
  v98 = v29;
LABEL_64:
  isUniquelyReferenced_nonNull_native = v474 + 64;
  v204 = 1 << *(v474 + 32);
  v205 = -1;
  if (v204 < 64)
  {
    v205 = ~(-1 << v204);
  }

  v96 = v205 & *(v474 + 64);
  v99 = ((v204 + 63) >> 6);
  v489 = (v98 + 2);

  v206 = 0;
  v461 = _swiftEmptyArrayStorage;
  v207 = v464;
  if (v96)
  {
LABEL_67:
    v208 = v474;
    goto LABEL_73;
  }

LABEL_68:
  v208 = v474;
  while (1)
  {
    v209 = v206 + 1;
    if (__OFADD__(v206, 1))
    {
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      swift_once();
LABEL_179:
      v487 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 1) = xmmword_10146C6B0;
      v318 = *(v94 + 16);
      v319 = v476;
      if (!v318)
      {

        v320 = _swiftEmptyArrayStorage;
LABEL_201:
        v338 = v487;
        v497 = v320;
        sub_1005B981C(&unk_1019F4D80);
        sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
        v339 = BidirectionalCollection<>.joined(separator:)();
        v341 = v340;

        v342 = inited;
        *(inited + 7) = &type metadata for String;
        *(v342 + 8) = sub_1000053B0();
        *(v342 + 4) = v339;
        *(v342 + 5) = v341;
        v343 = static os_log_type_t.default.getter();
        sub_100005404(v338, &_mh_execute_header, v343, "_processQueuedIncomingUpdatesIntoCommand, queueItems: %@", 56, 2, v342);
        swift_setDeallocating();
        sub_100005070(v342 + 32);
        v344 = type metadata accessor for TaskPriority();
        v345 = v429;
        (*(*(v344 - 8) + 56))(v429, 1, 1, v344);
        v346 = swift_allocObject();
        swift_weakInit();

        v347 = swift_allocObject();
        v347[2] = 0;
        v347[3] = 0;
        v347[4] = v346;
        v347[5] = v94;
        sub_100CA6768(0, 0, v345, &unk_1014C3350, v347);

        sub_10000CAAC(v345, &qword_1019FB750);
        goto LABEL_202;
      }

      v484 = isUniquelyReferenced_nonNull_native;
      v486 = v93;
      v497 = _swiftEmptyArrayStorage;

      sub_100034080(0, v318, 0);
      v320 = v497;
      v321 = *(v99 + 80);
      v483 = v94;
      v322 = v94 + ((v321 + 32) & ~v321);
      v490 = (v319 + 56);
      v323 = (v319 + 48);
      v488 = v99[9];
      while (1)
      {
        v324 = v470;
        sub_101085AEC(v322, v470, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        sub_101085AEC(v324, v469, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v325 = swift_getEnumCaseMultiPayload();
        if (v325 <= 2)
        {
          break;
        }

        v327 = v471;
        if (v325 == 3)
        {
          (*v490)(v471, 1, 1, v96);
          sub_101085BD8(v469, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        }

        else
        {
          sub_101085BD8(v469, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          (*v490)(v327, 1, 1, v96);
        }

LABEL_192:
        if ((*v323)(v327, 1, v96) == 1)
        {
          sub_10000CAAC(v327, &qword_1019F6990);
          v332 = 0;
          v333 = 0xE000000000000000;
        }

        else
        {
          v332 = UUID.uuidString.getter();
          v333 = v334;
          (*v493)(v471, v96);
        }

        sub_101085BD8(v470, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v497 = v320;
        v336 = v320[2];
        v335 = v320[3];
        if (v336 >= v335 >> 1)
        {
          sub_100034080((v335 > 1), v336 + 1, 1);
          v320 = v497;
        }

        v320[2] = v336 + 1;
        v337 = &v320[2 * v336];
        v337[4] = v332;
        v337[5] = v333;
        v322 += v488;
        --v318;
        v96 = v491;
        if (!v318)
        {

          v94 = v483;
          isUniquelyReferenced_nonNull_native = v484;
          goto LABEL_201;
        }
      }

      if (v325)
      {
        if (v325 != 1)
        {
          v327 = v471;
          (*(**v469 + 264))();

          goto LABEL_191;
        }

        v326 = v434;
        sub_101085B70(v469, v434, type metadata accessor for CRLBoardItemDeltaChange);
        v327 = v471;
        (*v489)(v471, v326, v96);
        v328 = type metadata accessor for CRLBoardItemDeltaChange;
      }

      else
      {
        v329 = sub_1005B981C(&qword_101A290D0);
        v330 = v469;
        sub_10002640C(*(v469 + *(v329 + 48) + 40), *(v469 + *(v329 + 48) + 48));
        v331 = v330;
        v326 = v435;
        sub_101085B70(v331, v435, type metadata accessor for CRLGloballyScopedBoardIdentifier);
        v327 = v471;
        (*v489)(v471, v326, v96);
        v328 = type metadata accessor for CRLGloballyScopedBoardIdentifier;
      }

      sub_101085BD8(v326, v328);
LABEL_191:
      (*v490)(v327, 0, 1, v96);
      goto LABEL_192;
    }

    if (v209 >= v99)
    {
      break;
    }

    v96 = *(isUniquelyReferenced_nonNull_native + 8 * v209);
    ++v206;
    if (v96)
    {
      v206 = v209;
LABEL_73:
      v210 = __clz(__rbit64(v96)) | (v206 << 6);
      v211 = v465;
      v212 = v208;
      (*(v476 + 16))(v465, *(v208 + 48) + *(v476 + 72) * v210, v491);
      v213 = *(v212 + 56);
      v94 = *(v487 + 72);
      v214 = *(v455 + 48);
      sub_101085AEC(v213 + v94 * v210, v211 + v214, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      sub_101085AEC(v211 + v214, v462, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v461 = sub_100B37118(0, v461[2] + 1, 1, v461);
      }

      v216 = v461[2];
      v215 = v461[3];
      v93 = v216 + 1;
      if (v216 >= v215 >> 1)
      {
        v461 = sub_100B37118(v215 > 1, v216 + 1, 1, v461);
      }

      v96 &= v96 - 1;
      v218 = v461;
      v217 = v462;
      v461[2] = v93;
      sub_101085B70(v217, v218 + ((*(v487 + 80) + 32) & ~*(v487 + 80)) + v216 * v94, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      sub_10000CAAC(v465, &qword_101A290E8);
      v207 = v464;
      if (v96)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    }
  }

  isUniquelyReferenced_nonNull_native = v472 + 64;
  v219 = 1 << *(v472 + 32);
  v220 = -1;
  if (v219 < 64)
  {
    v220 = ~(-1 << v219);
  }

  v94 = v220 & *(v472 + 64);
  v221 = (v219 + 63) >> 6;
  v493 = v476 + 8;

  v96 = 0;
  for (inited = _swiftEmptyArrayStorage; v94; v207 = v464)
  {
    v222 = v472;
LABEL_88:
    v224 = __clz(__rbit64(v94)) | (v96 << 6);
    v225 = *(v222 + 48) + *(v476 + 72) * v224;
    v226 = v453;
    v227 = v222;
    v482 = *(v476 + 16);
    v482(v453, v225, v491);
    v228 = *(v227 + 56);
    v229 = *(v487 + 72);
    v230 = *(v455 + 48);
    sub_101085AEC(v228 + v229 * v224, &v226[v230], type metadata accessor for CRLBoardItemPeerSyncUpdate);
    sub_101085AEC(&v226[v230], v452, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    v231 = inited;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v231 = sub_100B37118(0, *(v231 + 2) + 1, 1, v231);
    }

    v233 = *(v231 + 2);
    v232 = *(v231 + 3);
    if (v233 >= v232 >> 1)
    {
      v231 = sub_100B37118(v232 > 1, v233 + 1, 1, v231);
    }

    v94 &= v94 - 1;
    *(v231 + 2) = v233 + 1;
    v234 = *(v487 + 80);
    inited = v231;
    sub_101085B70(v452, v231 + ((v234 + 32) & ~v234) + v233 * v229, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    v235 = v442;
    v236 = v453;
    v93 = v491;
    v482(v442, v453, v491);
    v99 = v488;
    sub_100E6AF38(v488, v235);
    (*v493)(v99, v93);
    sub_10000CAAC(v236, &qword_101A290E8);
  }

  v222 = v472;
  while (1)
  {
    v223 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      goto LABEL_204;
    }

    if (v223 >= v221)
    {
      break;
    }

    v94 = *(isUniquelyReferenced_nonNull_native + 8 * v223);
    ++v96;
    if (v94)
    {
      v96 = v223;
      goto LABEL_88;
    }
  }

  v93 = sub_101084B38(inited);

  v498 = _swiftEmptyArrayStorage;
  v499 = _swiftEmptyArrayStorage;

  sub_10079AD90(v237);
  v465 = *(v93 + 16);
  v466 = v93;
  if (v465)
  {
    v238 = 0;
    v462 = (v476 + 48);
    v455 = v476 + 32;
    v482 = _swiftEmptyArrayStorage;
    v96 = v491;
    v99 = v487;
    v94 = v457;
    isUniquelyReferenced_nonNull_native = v458;
    while (1)
    {
      if (v238 >= *(v93 + 16))
      {
        goto LABEL_205;
      }

      v241 = v99[9];
      v480 = (*(v99 + 80) + 32) & ~*(v99 + 80);
      v481 = v241;
      sub_101085AEC(v93 + v480 + v241 * v238, v207, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      sub_101085AEC(v207, v94, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      v242 = swift_getEnumCaseMultiPayload();
      if (v242 != 2)
      {
        goto LABEL_241;
      }

      v243 = *(**v94 + 272);
      v479 = *v94;
      v243(v242);
      if ((*v462)(isUniquelyReferenced_nonNull_native, 1, v96) == 1)
      {
        sub_10000CAAC(isUniquelyReferenced_nonNull_native, &qword_1019F6990);
      }

      else
      {
        (*v455)(v486, isUniquelyReferenced_nonNull_native, v96);
        v244 = *(v475 + 120);
        v245 = *(v244 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
        v246 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
        swift_beginAccess();
        v247 = v245 + v246;
        v248 = v456;
        sub_101085AEC(v247, v456, type metadata accessor for CRLBoardCRDTData);
        sub_1005B981C(&unk_1019F5250);
        v249 = v488;
        CRRegister.wrappedValue.getter();
        sub_101085BD8(v248, type metadata accessor for CRLBoardCRDTData);
        LOBYTE(v248) = static UUID.== infix(_:_:)();
        inited = *v493;
        inited(v249, v96);
        if (v248)
        {
          goto LABEL_105;
        }

        v250 = OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap;
        swift_beginAccess();
        if (*(*(v244 + v250) + 16))
        {

          sub_10003E994(v486);
          v252 = v251;

          if (v252)
          {
            goto LABEL_105;
          }
        }

        v256 = v500;
        if (v500[2])
        {
          sub_1010858F8(&qword_1019FB870, &type metadata accessor for UUID);
          v257 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v258 = -1 << *(v256 + 32);
          v259 = v257 & ~v258;
          v467 = (v256 + 7);
          if ((*(v256 + ((v259 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v259))
          {
            v260 = ~v258;
            v261 = *(v476 + 72);
            v262 = *(v476 + 16);
            while (1)
            {
              v263 = v488;
              v264 = v491;
              v262(v488, v256[6] + v261 * v259, v491);
              sub_1010858F8(&qword_1019F37C0, &type metadata accessor for UUID);
              v265 = dispatch thunk of static Equatable.== infix(_:_:)();
              inited(v263, v264);
              if (v265)
              {
                break;
              }

              v259 = (v259 + 1) & v260;
              if (((*&v467[(v259 >> 3) & 0xFFFFFFFFFFFFFF8] >> v259) & 1) == 0)
              {
                goto LABEL_115;
              }
            }

LABEL_105:
            v207 = v464;
            sub_101085AEC(v464, v460, type metadata accessor for CRLBoardItemPeerSyncUpdate);
            v253 = v499;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v253 = sub_100B37118(0, v253[2] + 1, 1, v253);
            }

            v96 = v491;
            v255 = v253[2];
            v254 = v253[3];
            if (v255 >= v254 >> 1)
            {
              v253 = sub_100B37118(v254 > 1, v255 + 1, 1, v253);
            }

            v99 = v487;
            v94 = v457;

            inited(v486, v96);
            sub_101085BD8(v207, type metadata accessor for CRLBoardItemPeerSyncUpdate);
            v253[2] = v255 + 1;
            sub_101085B70(v460, v253 + v480 + v255 * v481, type metadata accessor for CRLBoardItemPeerSyncUpdate);
            v499 = v253;
            isUniquelyReferenced_nonNull_native = v458;
            goto LABEL_97;
          }
        }

LABEL_115:
        v96 = v491;
        inited(v486, v491);
        v99 = v487;
        v94 = v457;
        isUniquelyReferenced_nonNull_native = v458;
        v207 = v464;
      }

      sub_101085AEC(v207, v473, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v482 = sub_100B37118(0, *(v482 + 2) + 1, 1, v482);
      }

      v267 = *(v482 + 2);
      v266 = *(v482 + 3);
      v268 = v96;
      if (v267 >= v266 >> 1)
      {
        v482 = sub_100B37118(v266 > 1, v267 + 1, 1, v482);
      }

      sub_101085BD8(v207, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      v239 = v481;
      v240 = v482;
      *(v482 + 2) = v267 + 1;
      sub_101085B70(v473, v240 + v480 + v267 * v239, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      v498 = v240;
      v96 = v268;
LABEL_97:
      ++v238;
      v93 = v466;
      if (v238 == v465)
      {
        goto LABEL_121;
      }
    }
  }

  v482 = _swiftEmptyArrayStorage;
  v96 = v491;
  v99 = v487;
LABEL_121:

  v269 = v477;
  v486 = v477[2];
  if (v486)
  {
    v270 = 0;
    inited = (v476 + 48);
    v480 = (v486 - 1);
    v481 = (v476 + 32);
    while (1)
    {
      v271 = v270;
      while (1)
      {
        if (v271 >= v269[2])
        {
          goto LABEL_206;
        }

        v272 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        v273 = v99[9];
        v274 = v490;
        sub_101085AEC(v269 + v272 + v273 * v271, v490, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v275 = v463;
        sub_101085AEC(v274, v463, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_101085BD8(v275, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v401 = objc_opt_self();
          v402 = [v401 _atomicIncrementAssertCount];
          v497 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v497);
          StaticString.description.getter();
          v403 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v404 = String._bridgeToObjectiveC()();

          v405 = [v404 lastPathComponent];

          v406 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v408 = v407;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v409 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v410 = swift_initStackObject();
          *(v410 + 16) = xmmword_10146CA70;
          *(v410 + 56) = &type metadata for Int32;
          *(v410 + 64) = &protocol witness table for Int32;
          *(v410 + 32) = v402;
          v94 = NSString_ptr;
          v95 = sub_100006370(0, &qword_1019F4D30);
          *(v410 + 96) = v95;
          v411 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
          *(v410 + 104) = v411;
          *(v410 + 72) = v403;
          *(v410 + 136) = &type metadata for String;
          v412 = sub_1000053B0();
          *(v410 + 112) = v406;
          *(v410 + 120) = v408;
          *(v410 + 176) = &type metadata for UInt;
          *(v410 + 184) = &protocol witness table for UInt;
          *(v410 + 144) = v412;
          *(v410 + 152) = 521;
          v413 = v497;
          *(v410 + 216) = v95;
          *(v410 + 224) = v411;
          *(v410 + 192) = v413;
          v414 = v403;
          v415 = v413;
          v416 = static os_log_type_t.error.getter();
          sub_100005404(v409, &_mh_execute_header, v416, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v410);

          v417 = static os_log_type_t.error.getter();
          sub_100005404(v409, &_mh_execute_header, v417, "modifiedItems should only contain .modifiedItemDatas", 52, 2, _swiftEmptyArrayStorage);

          sub_10063DF98(_swiftEmptyArrayStorage, "modifiedItems should only contain .modifiedItemDatas");
          type metadata accessor for __VaListBuilder();
          v418 = swift_allocObject();
          v418[2] = 8;
          v418[3] = 0;
          v418[4] = 0;
          v418[5] = 0;
          v419 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v99 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v399 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v93 = v420;
          v97 = String._bridgeToObjectiveC()();

          [v401 handleFailureInFunction:v99 file:v399 lineNumber:521 isFatal:1 format:v97 args:{v419, v424}];
          goto LABEL_247;
        }

        v276 = v275;
        v277 = v484;
        sub_101085B70(v276, v484, type metadata accessor for CRLBoardItemDeltaChange);
        v278 = v483;
        v279 = (*v489)(v483, v277, v96);
        v280 = v488;
        (*(**(*(*(v475 + 120) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v279);
        LOBYTE(v277) = static UUID.== infix(_:_:)();
        v94 = *v493;
        (*v493)(v280, v96);
        if ((v277 & 1) == 0)
        {
          break;
        }

        sub_101085AEC(v490, v478, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v281 = v499;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v281 = sub_100B37118(0, v281[2] + 1, 1, v281);
        }

        v93 = v281[2];
        v282 = v281[3];
        isUniquelyReferenced_nonNull_native = v93 + 1;
        if (v93 >= v282 >> 1)
        {
          v281 = sub_100B37118(v282 > 1, v93 + 1, 1, v281);
        }

        ++v271;
        (v94)(v483, v96);
        sub_101085BD8(v484, type metadata accessor for CRLBoardItemDeltaChange);
        sub_101085BD8(v490, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v281[2] = isUniquelyReferenced_nonNull_native;
        sub_101085B70(v478, v281 + v272 + v93 * v273, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v499 = v281;
        v269 = v477;
        v99 = v487;
        if (v486 == v271)
        {
          goto LABEL_151;
        }
      }

      v283 = v427;
      sub_10000BE14(v484 + *(v428 + 20), v427, &qword_1019F6990);
      if ((*inited)(v283, 1, v96) == 1)
      {
        break;
      }

      (*v481)(v433, v283, v96);
      if (sub_100EB6CA8(v278))
      {
        swift_unknownObjectRelease();
        v284 = 1;
      }

      else
      {
        v284 = sub_10079C3B4(v278, v500);
      }

      v285 = v433;
      if (sub_100EB6CA8(v433))
      {
        swift_unknownObjectRelease();
        if ((v284 & 1) == 0)
        {
          goto LABEL_145;
        }
      }

      else if ((v284 & sub_10079C3B4(v285, v500) & 1) == 0)
      {
LABEL_145:
        sub_101085AEC(v490, v426, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v288 = v482;
        v289 = swift_isUniquelyReferenced_nonNull_native();
        v498 = v288;
        if ((v289 & 1) == 0)
        {
          v482 = sub_100B37118(0, *(v482 + 2) + 1, 1, v482);
          v498 = v482;
        }

        v93 = *(v482 + 2);
        v290 = *(v482 + 3);
        if (v93 >= v290 >> 1)
        {
          v482 = sub_100B37118(v290 > 1, v93 + 1, 1, v482);
          v498 = v482;
        }

        (v94)(v433, v96);
        (v94)(v483, v96);
        sub_101085BD8(v484, type metadata accessor for CRLBoardItemDeltaChange);
        sub_101085BD8(v490, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        isUniquelyReferenced_nonNull_native = v482;
        *(v482 + 2) = v93 + 1;
        sub_101085B70(v426, isUniquelyReferenced_nonNull_native + v272 + v93 * v273, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v498 = isUniquelyReferenced_nonNull_native;
        goto LABEL_150;
      }

      sub_101085AEC(v490, v425, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      v286 = v499;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v286 = sub_100B37118(0, v286[2] + 1, 1, v286);
        v499 = v286;
      }

      v93 = v286[2];
      v287 = v286[3];
      isUniquelyReferenced_nonNull_native = v93 + 1;
      if (v93 >= v287 >> 1)
      {
        v286 = sub_100B37118(v287 > 1, v93 + 1, 1, v286);
        v499 = v286;
      }

      (v94)(v433, v96);
      (v94)(v483, v96);
      sub_101085BD8(v484, type metadata accessor for CRLBoardItemDeltaChange);
      sub_101085BD8(v490, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      v286[2] = isUniquelyReferenced_nonNull_native;
      sub_101085B70(v425, v286 + v272 + v93 * v273, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      v499 = v286;
LABEL_150:
      v270 = v271 + 1;
      v269 = v477;
      v99 = v487;
      if (v480 == v271)
      {
        goto LABEL_151;
      }
    }

    sub_10000CAAC(v283, &qword_1019F6990);
    sub_1005B981C(&qword_1019F54E0);
    v93 = swift_initStackObject();
    *(v93 + 16) = xmmword_10146C6B0;
    v349 = UUID.uuidString.getter();
    v99 = v350;
    *(v93 + 56) = &type metadata for String;
    v351 = sub_1000053B0();
    *(v93 + 32) = v349;
    v493 = v93 + 32;
    v492 = v351;
    *(v93 + 64) = v351;
    *(v93 + 40) = v99;
    v491 = objc_opt_self();
    LODWORD(v99) = [v491 _atomicIncrementAssertCount];
    v497 = [objc_allocWithZone(NSString) init];
    sub_100604538(v93, &v497);
    StaticString.description.getter();
    v97 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v352 = String._bridgeToObjectiveC()();

    v353 = [v352 lastPathComponent];

    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v354;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_250;
    }

LABEL_213:
    v355 = static OS_os_log.crlAssert;
    v356 = swift_initStackObject();
    *(v356 + 16) = xmmword_10146CA70;
    *(v356 + 56) = &type metadata for Int32;
    *(v356 + 64) = &protocol witness table for Int32;
    *(v356 + 32) = v99;
    v357 = sub_100006370(0, &qword_1019F4D30);
    *(v356 + 96) = v357;
    v358 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(v356 + 72) = v97;
    v359 = v492;
    *(v356 + 136) = &type metadata for String;
    *(v356 + 144) = v359;
    *(v356 + 104) = v358;
    *(v356 + 112) = v94;
    *(v356 + 120) = v95;
    *(v356 + 176) = &type metadata for UInt;
    *(v356 + 184) = &protocol witness table for UInt;
    *(v356 + 152) = 507;
    v360 = v497;
    *(v356 + 216) = v357;
    *(v356 + 224) = v358;
    *(v356 + 192) = v360;
    v361 = v97;
    v362 = v360;
    v363 = static os_log_type_t.error.getter();
    sub_100005404(v355, &_mh_execute_header, v363, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v356);

    v364 = static os_log_type_t.error.getter();
    sub_100005404(v355, &_mh_execute_header, v364, "Non-rootContainerItem board item missing parentContainerUUID, %@", 64, 2, v93);

    sub_10063DF98(v93, "Non-rootContainerItem board item missing parentContainerUUID, %@");
    type metadata accessor for __VaListBuilder();
    v365 = swift_allocObject();
    v365[2] = 8;
    v365[3] = 0;
    v366 = v365 + 3;
    v365[4] = 0;
    v365[5] = 0;
    v94 = *(v93 + 16);
    if (!v94)
    {
      goto LABEL_252;
    }

    v95 = 0;
    while (1)
    {
      sub_100020E58((v493 + 40 * v95), *(v493 + 40 * v95 + 24));
      v367 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v368 = *v366;
      v369 = *(v367 + 16);
      v124 = __OFADD__(*v366, v369);
      v370 = *v366 + v369;
      if (v124)
      {
        goto LABEL_238;
      }

      v371 = v367;
      v372 = v365[4];
      if (v372 >= v370)
      {
        goto LABEL_230;
      }

      if (v372 + 0x4000000000000000 < 0)
      {
        goto LABEL_239;
      }

      v373 = v365[5];
      if (2 * v372 > v370)
      {
        v370 = 2 * v372;
      }

      v365[4] = v370;
      if ((v370 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_240;
      }

      v374 = swift_slowAlloc();
      v365[5] = v374;
      if (v373)
      {
        break;
      }

LABEL_231:
      if (!v374)
      {
        __break(1u);
LABEL_252:
        v423 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v93 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v99 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v97 = String._bridgeToObjectiveC()();

        [v491 handleFailureInFunction:v93 file:v99 lineNumber:507 isFatal:1 format:v97 args:v423];

        goto LABEL_248;
      }

      v376 = *(v371 + 16);
      if (v376)
      {
        v377 = (v371 + 32);
        v378 = *v366;
        while (1)
        {
          v379 = *v377++;
          *&v374[8 * v378] = v379;
          v378 = *v366 + 1;
          if (__OFADD__(*v366, 1))
          {
            break;
          }

          *v366 = v378;
          if (!--v376)
          {
            goto LABEL_215;
          }
        }

        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        sub_101085BD8(v94, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v380 = objc_opt_self();
        v381 = [v380 _atomicIncrementAssertCount];
        v497 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v497);
        StaticString.description.getter();
        v382 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v383 = String._bridgeToObjectiveC()();

        v384 = [v383 lastPathComponent];

        v385 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v387 = v386;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v388 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v389 = swift_initStackObject();
        *(v389 + 16) = xmmword_10146CA70;
        *(v389 + 56) = &type metadata for Int32;
        *(v389 + 64) = &protocol witness table for Int32;
        *(v389 + 32) = v381;
        v94 = NSString_ptr;
        v95 = sub_100006370(0, &qword_1019F4D30);
        *(v389 + 96) = v95;
        v390 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
        *(v389 + 104) = v390;
        *(v389 + 72) = v382;
        *(v389 + 136) = &type metadata for String;
        v391 = sub_1000053B0();
        *(v389 + 112) = v385;
        *(v389 + 120) = v387;
        *(v389 + 176) = &type metadata for UInt;
        *(v389 + 184) = &protocol witness table for UInt;
        *(v389 + 144) = v391;
        *(v389 + 152) = 491;
        v392 = v497;
        *(v389 + 216) = v95;
        *(v389 + 224) = v390;
        *(v389 + 192) = v392;
        v393 = v382;
        v394 = v392;
        v395 = static os_log_type_t.error.getter();
        sub_100005404(v388, &_mh_execute_header, v395, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v389);

        v396 = static os_log_type_t.error.getter();
        sub_100005404(v388, &_mh_execute_header, v396, "createdItems should only contain .createdItemDatas", 50, 2, _swiftEmptyArrayStorage);

        sub_10063DF98(_swiftEmptyArrayStorage, "createdItems should only contain .createdItemDatas");
        type metadata accessor for __VaListBuilder();
        v397 = swift_allocObject();
        v397[2] = 8;
        v397[3] = 0;
        v397[4] = 0;
        v397[5] = 0;
        v398 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v99 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v399 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v93 = v400;
        v97 = String._bridgeToObjectiveC()();

        [v380 handleFailureInFunction:v99 file:v399 lineNumber:491 isFatal:1 format:v97 args:{v398, v424}];
LABEL_247:

LABEL_248:
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v421, v422);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_249:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_250:
        swift_once();
        goto LABEL_213;
      }

LABEL_215:

      if (++v95 == v94)
      {
        goto LABEL_252;
      }
    }

    if (v374 != v373 || v374 >= &v373[8 * v368])
    {
      memmove(v374, v373, 8 * v368);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_230:
    v374 = v365[5];
    goto LABEL_231;
  }

LABEL_151:

  sub_10079AD90(v291);
  v93 = v499;
  if (v499[2])
  {
    v292 = type metadata accessor for CRLCommandApplyPeerSyncUpdates();
    v293 = objc_allocWithZone(v292);
    *&v293[OBJC_IVAR____TtC8Freeform30CRLCommandApplyPeerSyncUpdates_updates] = v93;
    v495.receiver = v293;
    v495.super_class = v292;

    isUniquelyReferenced_nonNull_native = objc_msgSendSuper2(&v495, "init", v424);

    sub_10079AD90(v294);
    goto LABEL_177;
  }

  v295 = v468[2];
  if (v295)
  {
    v486 = v499;
    v296 = v468 + ((*(v487 + 80) + 32) & ~*(v487 + 80));
    v297 = _swiftEmptyArrayStorage;
    v298 = *(v487 + 72);
    v490 = _swiftEmptyArrayStorage;
    v299 = v437;
    while (1)
    {
      sub_101085AEC(v296, v299, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      v302 = swift_getEnumCaseMultiPayload();
      if (v302 > 2)
      {
        break;
      }

      if (v302)
      {
        goto LABEL_168;
      }

      v300 = sub_1005B981C(&qword_101A290D0);
      sub_10002640C(*(v299 + *(v300 + 48) + 40), *(v299 + *(v300 + 48) + 48));
      v301 = type metadata accessor for CRLGloballyScopedBoardIdentifier;
LABEL_156:
      sub_101085BD8(v299, v301);
LABEL_157:
      v296 += v298;
      if (!--v295)
      {
        v316 = type metadata accessor for CRLCommandApplyBoardAuxiliaryPeerSyncUpdates();
        v317 = objc_allocWithZone(v316);
        swift_unknownObjectWeakInit();
        *&v317[OBJC_IVAR____TtC8Freeform44CRLCommandApplyBoardAuxiliaryPeerSyncUpdates_updates] = v297;
        *&v317[OBJC_IVAR____TtC8Freeform44CRLCommandApplyBoardAuxiliaryPeerSyncUpdates_legacyUpdates] = v490;
        swift_unknownObjectWeakAssign();
        v494.receiver = v317;
        v494.super_class = v316;
        isUniquelyReferenced_nonNull_native = objc_msgSendSuper2(&v494, "init", v424);
        v99 = v487;
        v93 = v486;
        goto LABEL_177;
      }
    }

    if (v302 != 3)
    {
      if (v302 == 4)
      {
        v303 = *v299;
        v304 = *(v299 + 8);
        v305 = *(v299 + 16);
        sub_100024E98(v304, v305);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v297 = sub_100B39508(0, *(v297 + 2) + 1, 1, v297);
        }

        v307 = *(v297 + 2);
        v306 = *(v297 + 3);
        if (v307 >= v306 >> 1)
        {
          v297 = sub_100B39508((v306 > 1), v307 + 1, 1, v297);
        }

        sub_10002640C(v304, v305);
        *(v297 + 2) = v307 + 1;
        v308 = &v297[32 * v307];
        v308[32] = v303;
        *(v308 + 5) = v304;
        *(v308 + 6) = v305;
        v308[56] = 1;
      }

      else
      {
        v309 = *v299;
        v310 = *(v299 + 8);
        v311 = *(v299 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v490 = sub_100B393E8(0, *(v490 + 2) + 1, 1, v490);
        }

        v313 = *(v490 + 2);
        v312 = *(v490 + 3);
        if (v313 >= v312 >> 1)
        {
          v490 = sub_100B393E8((v312 > 1), v313 + 1, 1, v490);
        }

        v314 = v490;
        *(v490 + 2) = v313 + 1;
        v315 = &v314[24 * v313];
        v315[32] = v309;
        *(v315 + 5) = v310;
        *(v315 + 6) = v311;
      }

      v96 = v491;
      v299 = v437;
      goto LABEL_157;
    }

LABEL_168:
    v301 = type metadata accessor for CRLBoardItemPeerSyncUpdate;
    goto LABEL_156;
  }

  isUniquelyReferenced_nonNull_native = 0;
  v99 = v487;
LABEL_177:
  v94 = v498;
  if (v498[2])
  {
    if (qword_1019F2288 == -1)
    {
      goto LABEL_179;
    }

    goto LABEL_211;
  }

LABEL_202:

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_10107E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  return _swift_task_switch(sub_10107E224, 0, 0);
}

uint64_t sub_10107E224()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10107E2E8, Strong, 0);
  }

  else
  {
    **(v0 + 64) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10107E2E8()
{
  v1 = *(v0 + 80);
  swift_beginAccess();

  sub_10067DCB8(0, 0, v1);
  swift_endAccess();

  return _swift_task_switch(sub_10107E3A4, 0, 0);
}

uint64_t sub_10107E3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_101085AEC(a1, a2, type metadata accessor for CRLBoardItemPeerSyncUpdate);
  v3 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_10107E454@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_1010972A8(&v8 - v3);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_10107E554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRLBoardItemDeltaChange(0);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_101085AEC(a1, v9, type metadata accessor for CRLBoardItemPeerSyncUpdate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_101085BD8(v9, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      v13 = type metadata accessor for UUID();
      return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
    }

    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
    v17 = type metadata accessor for CRLBoardItemPeerSyncUpdate;
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v15 = sub_1005B981C(&qword_101A290D0);
    sub_10002640C(*&v9[*(v15 + 48) + 40], *&v9[*(v15 + 48) + 48]);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    v17 = type metadata accessor for CRLGloballyScopedBoardIdentifier;
LABEL_9:
    v11 = v17;
    v12 = v9;
    return sub_101085BD8(v12, v11);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_101085B70(v9, v6, type metadata accessor for CRLBoardItemDeltaChange);
    sub_10000BE14(&v6[*(v4 + 20)], a2, &qword_1019F6990);
    v11 = type metadata accessor for CRLBoardItemDeltaChange;
    v12 = v6;
    return sub_101085BD8(v12, v11);
  }

  (*(**v9 + 272))();
}

void sub_10107E840(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_pushCommandToCommandControllerTask;
  if (*(v1 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_pushCommandToCommandControllerTask))
  {
    v36 = &v35 - v4;
    v37 = OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_pushCommandToCommandControllerTask;
    v38 = a1;
    v39 = v1;
    v7 = objc_opt_self();

    v35 = v7;
    v8 = [v7 _atomicIncrementAssertCount];
    v40 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v40);
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
    v18 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 628;
    v20 = v40;
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
    sub_100005404(v15, &_mh_execute_header, v24, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

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
    v29 = String._bridgeToObjectiveC()();

    [v35 handleFailureInFunction:v27 file:v28 lineNumber:628 isFatal:0 format:v29 args:v26];

    v1 = v39;
    a1 = v38;
    v6 = v37;
    v5 = v36;
  }

  if (*(a1 + 16))
  {
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v5, 1, 1, v30);
    v31 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();
    v32 = v1;

    v33 = static MainActor.shared.getter();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v31;
    v34[5] = a1;

    *(v32 + v6) = sub_10064191C(0, 0, v5, &unk_1014C32F0, v34);
  }
}

uint64_t sub_10107EDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[116] = a5;
  v5[115] = a4;
  v5[117] = type metadata accessor for CRLCommandBoardItemChangeContext(0);
  v5[118] = swift_task_alloc();
  v5[119] = type metadata accessor for CRLBoardItemDeltaChange(0);
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v5[122] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6990);
  v5[123] = swift_task_alloc();
  v5[124] = swift_task_alloc();
  v6 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  v5[125] = v6;
  v5[126] = *(v6 - 8);
  v5[127] = swift_task_alloc();
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  v5[130] = swift_task_alloc();
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  v5[133] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[134] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[135] = v8;
  v5[136] = v7;

  return _swift_task_switch(sub_10107EFF4, v8, v7);
}

uint64_t sub_10107EFF4()
{
  v184 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1096) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 1104) = v3;
    if (!v3)
    {
      v165 = v2;
      v178 = objc_opt_self();
      v8 = [v178 _atomicIncrementAssertCount];
      *&v182[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v182);
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

      v175 = *(v0 + 1064);
      v15 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v8;
      v17 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v17;
      v18 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v18;
      *(inited + 72) = v9;
      *(inited + 136) = &type metadata for String;
      v19 = sub_1000053B0();
      *(inited + 112) = v12;
      *(inited + 120) = v14;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v19;
      *(inited + 152) = 640;
      v20 = *&v182[0];
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
      v29 = String._bridgeToObjectiveC()();

      [v178 handleFailureInFunction:v27 file:v28 lineNumber:640 isFatal:0 format:v29 args:v26];

      v30 = type metadata accessor for TaskPriority();
      v31 = v175;
      (*(*(v30 - 8) + 56))(v175, 1, 1, v30);
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      *(v32 + 32) = v165;
      *(v32 + 40) = 0;

      sub_100CA64C8(0, 0, v175, &unk_1014C3300, v32);

      goto LABEL_10;
    }

    v5 = _swiftEmptyArrayStorage;
    *(v0 + 880) = _swiftEmptyArrayStorage;
    *(v0 + 888) = _swiftEmptyArrayStorage;
    v6 = *(v2 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_suspendResumeCoordinatorState);
    v7 = *(v6 + 40);
    if (*(v6 + 32))
    {
      if (v7 <= 0)
      {
LABEL_58:
        v103 = *(v0 + 928);

        *(v0 + 888) = v103;

LABEL_65:
        v108 = *(v0 + 1104);
        v109 = *(v0 + 1096);
        if (!*(v103 + 16))
        {
          v128 = *(v0 + 1064);

          v129 = type metadata accessor for TaskPriority();
          (*(*(v129 - 8) + 56))(v128, 1, 1, v129);
          v130 = swift_allocObject();
          *(v130 + 16) = 0;
          *(v130 + 24) = 0;
          *(v130 + 32) = v109;
          *(v130 + 40) = 0;

          sub_100CA64C8(0, 0, v128, &unk_1014C3320, v130);

          v33 = v128;
          goto LABEL_11;
        }

        v110 = sub_10107A508(v103, v108);
        if (v110)
        {
          v111 = v110;
          v112 = *(v0 + 1104);

          v113 = *(v112 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
          v114 = OBJC_IVAR____TtC8Freeform20CRLCommandController_nonUserCommandQueue;
          swift_beginAccess();
          v115 = *&v113[v114];
          v116 = v113;
          v117 = v111;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v113[v114] = v115;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v115 = sub_100B36334(0, v115[2] + 1, 1, v115);
            *&v113[v114] = v115;
          }

          v120 = v115[2];
          v119 = v115[3];
          if (v120 >= v119 >> 1)
          {
            v115 = sub_100B36334((v119 > 1), v120 + 1, 1, v115);
          }

          v115[2] = v120 + 1;
          v121 = &v115[2 * v120];
          v121[4] = v117;
          *(v121 + 40) = 3;
          *&v113[v114] = v115;
          swift_endAccess();
          sub_10088DA18();

          type metadata accessor for CRLCommandApplyPeerSyncUpdates();
          if (swift_dynamicCastClass())
          {
            v122 = 18;
            if (qword_1019F19A0 == -1)
            {
              goto LABEL_73;
            }
          }

          else
          {
            type metadata accessor for CRLCommandApplyBoardAuxiliaryPeerSyncUpdates();
            if (!swift_dynamicCastClass())
            {
              goto LABEL_74;
            }

            v122 = 20;
            if (qword_1019F19A0 == -1)
            {
LABEL_73:
              CRLAnalyticsOSSignpostManager.endSignpostInterval(for:)(v122, 1);
LABEL_74:
              v123 = *(v0 + 1104);
              v124 = *(v0 + 1096);
              v125 = *(v0 + 1064);

              v126 = type metadata accessor for TaskPriority();
              (*(*(v126 - 8) + 56))(v125, 1, 1, v126);
              v127 = swift_allocObject();
              *(v127 + 16) = 0;
              *(v127 + 24) = 0;
              *(v127 + 32) = v124;
              *(v127 + 40) = 1;

              sub_100CA64C8(0, 0, v125, &unk_1014C3318, v127);

              v33 = v125;
              goto LABEL_11;
            }
          }

          v156 = v122;
          swift_once();
          v122 = v156;
          goto LABEL_73;
        }

        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v131 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0);
        v132 = swift_initStackObject();
        v133 = v132;
        *(v132 + 16) = xmmword_10146C6B0;
        v134 = *(v103 + 16);
        if (v134)
        {
          v172 = v131;
          v174 = v132;
          v135 = *(v0 + 1008);
          *&v182[0] = _swiftEmptyArrayStorage;
          sub_100034080(0, v134, 0);
          v136 = _swiftEmptyArrayStorage;
          v137 = v103 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
          v181 = *(v135 + 72);
          while (1)
          {
            v138 = *(v0 + 1024);
            v139 = *(v0 + 1016);
            sub_101085AEC(v137, v138, type metadata accessor for CRLBoardItemPeerSyncUpdate);
            sub_101085AEC(v138, v139, type metadata accessor for CRLBoardItemPeerSyncUpdate);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v141 = *(v0 + 1016);
            v142 = *(v0 + 984);
            if (EnumCaseMultiPayload > 2)
            {
              if (EnumCaseMultiPayload == 3)
              {
                v144 = type metadata accessor for UUID();
                (*(*(v144 - 8) + 56))(v142, 1, 1, v144);
                sub_101085BD8(v141, type metadata accessor for CRLBoardItemPeerSyncUpdate);
              }

              else
              {
                sub_101085BD8(*(v0 + 1016), type metadata accessor for CRLBoardItemPeerSyncUpdate);
                v144 = type metadata accessor for UUID();
                (*(*(v144 - 8) + 56))(v142, 1, 1, v144);
              }
            }

            else
            {
              if (EnumCaseMultiPayload)
              {
                if (EnumCaseMultiPayload != 1)
                {
                  (*(**v141 + 264))();

                  v144 = type metadata accessor for UUID();
                  (*(*(v144 - 8) + 56))(v142, 0, 1, v144);
                  goto LABEL_90;
                }

                v143 = *(v0 + 968);
                sub_101085B70(*(v0 + 1016), v143, type metadata accessor for CRLBoardItemDeltaChange);
                v144 = type metadata accessor for UUID();
                v145 = *(v144 - 8);
                (*(v145 + 16))(v142, v143, v144);
                v146 = type metadata accessor for CRLBoardItemDeltaChange;
              }

              else
              {
                v143 = *(v0 + 976);
                v147 = sub_1005B981C(&qword_101A290D0);
                sub_10002640C(*(v141 + *(v147 + 48) + 40), *(v141 + *(v147 + 48) + 48));
                sub_101085B70(v141, v143, type metadata accessor for CRLGloballyScopedBoardIdentifier);
                v144 = type metadata accessor for UUID();
                v145 = *(v144 - 8);
                (*(v145 + 16))(v142, v143, v144);
                v146 = type metadata accessor for CRLGloballyScopedBoardIdentifier;
              }

              sub_101085BD8(v143, v146);
              (*(v145 + 56))(v142, 0, 1, v144);
            }

LABEL_90:
            v148 = *(v0 + 984);
            type metadata accessor for UUID();
            v149 = *(v144 - 8);
            if ((*(v149 + 48))(v148, 1, v144) == 1)
            {
              sub_10000CAAC(v148, &qword_1019F6990);
              v150 = 0;
              v151 = 0xE000000000000000;
            }

            else
            {
              v150 = UUID.uuidString.getter();
              v151 = v152;
              (*(v149 + 8))(v148, v144);
            }

            sub_101085BD8(*(v0 + 1024), type metadata accessor for CRLBoardItemPeerSyncUpdate);
            *&v182[0] = v136;
            v154 = v136[2];
            v153 = v136[3];
            if (v154 >= v153 >> 1)
            {
              sub_100034080((v153 > 1), v154 + 1, 1);
              v136 = *&v182[0];
            }

            v136[2] = v154 + 1;
            v155 = &v136[2 * v154];
            v155[4] = v150;
            v155[5] = v151;
            v137 += v181;
            if (!--v134)
            {

              v131 = v172;
              v133 = v174;
              goto LABEL_101;
            }
          }
        }

        v136 = _swiftEmptyArrayStorage;
LABEL_101:
        v157 = *(v0 + 1104);
        v158 = *(v0 + 1096);
        v31 = *(v0 + 1064);
        *(v0 + 896) = v136;
        sub_1005B981C(&unk_1019F4D80);
        sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
        v159 = BidirectionalCollection<>.joined(separator:)();
        v161 = v160;

        v133[7] = &type metadata for String;
        v133[8] = sub_1000053B0();
        v133[4] = v159;
        v133[5] = v161;
        v162 = static os_log_type_t.default.getter();
        sub_100005404(v131, &_mh_execute_header, v162, "Processed into no command, updates skipped. Will be applied later: %@", 69, 2, v133);

        swift_setDeallocating();
        sub_100005070((v133 + 4));
        v163 = type metadata accessor for TaskPriority();
        (*(*(v163 - 8) + 56))(v31, 1, 1, v163);
        v164 = swift_allocObject();
        *(v164 + 16) = 0;
        *(v164 + 24) = 0;
        *(v164 + 32) = v158;
        *(v164 + 40) = 0;

        sub_100CA64C8(0, 0, v31, &unk_1014C3310, v164);

LABEL_10:

        v33 = v31;
LABEL_11:
        sub_10000CAAC(v33, &qword_1019FB750);
        goto LABEL_12;
      }
    }

    else if (v7 <= 0)
    {
      v36 = v3;
      swift_beginAccess();
      v3 = v36;
      if (!*(*(v6 + 64) + 16))
      {
        goto LABEL_58;
      }
    }

    v37 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator);
    if (!v37)
    {
      __break(1u);
      return _swift_task_switch(v3, v37, v4);
    }

    *(v0 + 1112) = *(v37 + 24);
    if (*(v37 + 32) == 1)
    {
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 928);
      v39 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      v40 = swift_initStackObject();
      v41 = v40;
      *(v40 + 16) = xmmword_10146C6B0;
      v42 = *(v38 + 16);
      v43 = _swiftEmptyArrayStorage;
      if (v42)
      {
        v176 = v40;
        v179 = v39;
        v166 = v2;
        v44 = *(v0 + 1008);
        v45 = *(v0 + 928);
        *&v182[0] = _swiftEmptyArrayStorage;
        sub_100034080(0, v42, 0);
        v43 = _swiftEmptyArrayStorage;
        v46 = v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v47 = *(v44 + 72);
        while (1)
        {
          v48 = *(v0 + 1056);
          v49 = *(v0 + 1048);
          sub_101085AEC(v46, v48, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          sub_101085AEC(v48, v49, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v50 = swift_getEnumCaseMultiPayload();
          v51 = *(v0 + 1048);
          v52 = *(v0 + 992);
          if (v50 > 2)
          {
            if (v50 == 3)
            {
              v54 = type metadata accessor for UUID();
              (*(*(v54 - 8) + 56))(v52, 1, 1, v54);
              sub_101085BD8(v51, type metadata accessor for CRLBoardItemPeerSyncUpdate);
            }

            else
            {
              sub_101085BD8(*(v0 + 1048), type metadata accessor for CRLBoardItemPeerSyncUpdate);
              v54 = type metadata accessor for UUID();
              (*(*(v54 - 8) + 56))(v52, 1, 1, v54);
            }
          }

          else
          {
            if (v50)
            {
              if (v50 != 1)
              {
                (*(**v51 + 264))();

                v54 = type metadata accessor for UUID();
                (*(*(v54 - 8) + 56))(v52, 0, 1, v54);
                goto LABEL_33;
              }

              v53 = *(v0 + 968);
              sub_101085B70(*(v0 + 1048), v53, type metadata accessor for CRLBoardItemDeltaChange);
              v54 = type metadata accessor for UUID();
              v55 = *(v54 - 8);
              (*(v55 + 16))(v52, v53, v54);
              v56 = type metadata accessor for CRLBoardItemDeltaChange;
            }

            else
            {
              v53 = *(v0 + 976);
              v57 = sub_1005B981C(&qword_101A290D0);
              sub_10002640C(*(v51 + *(v57 + 48) + 40), *(v51 + *(v57 + 48) + 48));
              sub_101085B70(v51, v53, type metadata accessor for CRLGloballyScopedBoardIdentifier);
              v54 = type metadata accessor for UUID();
              v55 = *(v54 - 8);
              (*(v55 + 16))(v52, v53, v54);
              v56 = type metadata accessor for CRLGloballyScopedBoardIdentifier;
            }

            sub_101085BD8(v53, v56);
            (*(v55 + 56))(v52, 0, 1, v54);
          }

LABEL_33:
          v58 = *(v0 + 992);
          type metadata accessor for UUID();
          v59 = *(v54 - 8);
          if ((*(v59 + 48))(v58, 1, v54) == 1)
          {
            sub_10000CAAC(v58, &qword_1019F6990);
            v60 = 0;
            v61 = 0xE000000000000000;
          }

          else
          {
            v60 = UUID.uuidString.getter();
            v61 = v62;
            (*(v59 + 8))(v58, v54);
          }

          sub_101085BD8(*(v0 + 1056), type metadata accessor for CRLBoardItemPeerSyncUpdate);
          *&v182[0] = v43;
          v64 = v43[2];
          v63 = v43[3];
          if (v64 >= v63 >> 1)
          {
            sub_100034080((v63 > 1), v64 + 1, 1);
            v43 = *&v182[0];
          }

          v43[2] = v64 + 1;
          v65 = &v43[2 * v64];
          v65[4] = v60;
          v65[5] = v61;
          v46 += v47;
          if (!--v42)
          {
            v2 = v166;
            v41 = v176;
            v39 = v179;
            break;
          }
        }
      }

      *(v0 + 912) = v43;
      sub_1005B981C(&unk_1019F4D80);
      sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
      v104 = BidirectionalCollection<>.joined(separator:)();
      v106 = v105;

      v41[7] = &type metadata for String;
      v41[8] = sub_1000053B0();
      v41[4] = v104;
      v41[5] = v106;
      v107 = static os_log_type_t.default.getter();
      sub_100005404(v39, &_mh_execute_header, v107, "isIncomingSuspended, updates enqueued: %@", 41, 2, v41);
      swift_setDeallocating();
      sub_100005070((v41 + 4));
      v3 = sub_101080D6C;
      v37 = v2;
LABEL_61:
      v4 = 0;

      return _swift_task_switch(v3, v37, v4);
    }

    v167 = v2;
    v66 = sub_1010855F8(*(v0 + 928), v37);
    v68 = v67;
    sub_10079AD90(v66);
    sub_10079AD90(v68);
    v69 = *(v0 + 880);
    *(v0 + 1120) = v69;
    v70 = *(v69 + 16);
    if (!v70)
    {

      v103 = *(v0 + 888);
      goto LABEL_65;
    }

    v71 = *(v0 + 1008);
    v72 = v69 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v73 = *(v0 + 960) + 8;
    v74 = *(v0 + 952);
    v180 = *(v71 + 72);
    v171 = v74;
    v173 = v73;
    while (1)
    {
      v76 = *(v0 + 1040);
      v77 = *(v0 + 1032);
      sub_101085AEC(v72, v76, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      sub_101085AEC(v76, v77, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      v78 = swift_getEnumCaseMultiPayload();
      v79 = *(v0 + 1032);
      if (v78 == 1)
      {
        sub_101085B70(v79, *(v0 + 960), type metadata accessor for CRLBoardItemDeltaChange);
        if (*(v73 + *(v74 + 36)) >> 60 != 15)
        {
          v177 = v5;
          v80 = *(v0 + 960);
          v168 = *(v0 + 936);
          v169 = *(v0 + 944);
          *&v182[0] = _swiftEmptySetSingleton;
          *(v0 + 744) = v168;
          *(v0 + 752) = sub_1010858F8(&qword_101A26200, type metadata accessor for CRLCommandBoardItemChangeContext);
          v81 = sub_10002C58C((v0 + 720));
          v82 = *(sub_1005B981C(&qword_101A26208) + 48);
          v83 = type metadata accessor for UUID();
          v84 = *(v83 - 8);
          (*(v84 + 16))(v81, v80, v83);
          *(v81 + v82) = 0;
          v85 = *(v0 + 744);
          sub_100020E58((v0 + 720), v85);
          v86 = *(v85 - 8);
          swift_task_alloc();
          (*(v86 + 16))();
          sub_1010858F8(&qword_101A26210, type metadata accessor for CRLCommandBoardItemChangeContext);
          AnyHashable.init<A>(_:)();

          v87 = sub_100020E58((v0 + 720), *(v0 + 744));
          sub_101085AEC(v87, v169, type metadata accessor for CRLCommandBoardItemChangeContext);
          (*(v84 + 8))(v169, v83);
          *(v0 + 576) = 4;
          sub_100005070(v0 + 720);
          sub_10063FD8C(v0 + 536, v0 + 632);
          sub_100E6CD34((v0 + 584), v0 + 632);
          sub_10063FDE8(v0 + 584);
          sub_10063FDE8(v0 + 536);
          if (*(v173 + *(v171 + 40)) >> 60 != 15)
          {
            goto LABEL_52;
          }

          v88 = *(v0 + 960);
LABEL_53:
          sub_101085BD8(v88, type metadata accessor for CRLBoardItemDeltaChange);
          v97 = *(v0 + 1040);
          *(v0 + 904) = *&v182[0];
          sub_1005B981C(&qword_101A290D8);
          sub_10001A2F8(&qword_101A290E0, &qword_101A290D8);
          AnyHashable.init<A>(_:)();
          sub_101085BD8(v97, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v5 = v177;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_100B39614(0, *(v177 + 2) + 1, 1, v177);
          }

          v74 = v171;
          v73 = v173;
          v99 = *(v5 + 2);
          v98 = *(v5 + 3);
          if (v99 >= v98 >> 1)
          {
            v5 = sub_100B39614((v98 > 1), v99 + 1, 1, v5);
          }

          *(v5 + 2) = v99 + 1;
          v100 = &v5[40 * v99];
          v101 = v182[0];
          v102 = v182[1];
          *(v100 + 8) = v183;
          *(v100 + 2) = v101;
          *(v100 + 3) = v102;
          goto LABEL_44;
        }

        if (*(v73 + *(v74 + 40)) >> 60 != 15)
        {
          v177 = v5;
          *&v182[0] = _swiftEmptySetSingleton;
LABEL_52:
          v89 = *(v0 + 960);
          v170 = *(v0 + 944);
          *(v0 + 704) = *(v0 + 936);
          *(v0 + 712) = sub_1010858F8(&qword_101A26200, type metadata accessor for CRLCommandBoardItemChangeContext);
          v90 = sub_10002C58C((v0 + 680));
          v91 = *(sub_1005B981C(&qword_101A26208) + 48);
          v92 = type metadata accessor for UUID();
          v93 = *(v92 - 8);
          (*(v93 + 16))(v90, v89, v92);
          *(v90 + v91) = 1;
          v94 = *(v0 + 704);
          sub_100020E58((v0 + 680), v94);
          v95 = *(v94 - 8);
          swift_task_alloc();
          (*(v95 + 16))();
          sub_1010858F8(&qword_101A26210, type metadata accessor for CRLCommandBoardItemChangeContext);
          AnyHashable.init<A>(_:)();

          v96 = sub_100020E58((v0 + 680), *(v0 + 704));
          sub_101085AEC(v96, v170, type metadata accessor for CRLCommandBoardItemChangeContext);
          (*(v93 + 8))(v170, v92);
          *(v0 + 432) = 4;
          sub_100005070(v0 + 680);
          sub_10063FD8C(v0 + 392, v0 + 488);
          sub_100E6CD34((v0 + 440), v0 + 488);
          sub_10063FDE8(v0 + 440);
          sub_10063FDE8(v0 + 392);
          v88 = v89;
          goto LABEL_53;
        }

        v79 = *(v0 + 960);
        v75 = type metadata accessor for CRLBoardItemDeltaChange;
      }

      else
      {
        v75 = type metadata accessor for CRLBoardItemPeerSyncUpdate;
      }

      sub_101085BD8(v79, v75);
      sub_101085BD8(*(v0 + 1040), type metadata accessor for CRLBoardItemPeerSyncUpdate);
LABEL_44:
      v72 += v180;
      if (!--v70)
      {
        *(v0 + 1128) = sub_100E953E4(v5);

        v3 = sub_10108101C;
        v37 = v167;
        goto LABEL_61;
      }
    }
  }

LABEL_12:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_101080D6C()
{
  v1 = v0[116];
  *(v0[137] + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_incomingSuspendedCache) = 1;
  swift_beginAccess();

  sub_10067DCB8(0, 0, v1);
  swift_endAccess();

  v2 = v0[136];
  v3 = v0[135];

  return _swift_task_switch(sub_101080E34, v3, v2);
}

uint64_t sub_101080E34()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[133];

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v2;
  *(v5 + 40) = 0;

  sub_100CA64C8(0, 0, v3, &unk_1014C3338, v5);

  sub_10000CAAC(v3, &qword_1019FB750);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10108101C()
{
  v1 = v0[141];
  v2 = v0[139];
  v3 = v0[137];
  v4 = v3 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_incomingSuspendedCache;
  *v4 = 1;
  *(v4 + 8) = v1;

  *(v4 + 16) = v2;
  *(v4 + 24) = 0;

  return _swift_task_switch(sub_1010810B8, v3, 0);
}

uint64_t sub_1010810B8()
{
  v1 = v0[140];
  swift_beginAccess();

  sub_10067DCB8(0, 0, v1);
  swift_endAccess();

  v2 = v0[136];
  v3 = v0[135];

  return _swift_task_switch(sub_101081170, v3, v2);
}

uint64_t sub_101081170()
{

  v1 = v0[111];
  v2 = v0[138];
  v3 = v0[137];
  if (*(v1 + 16))
  {
    v4 = sub_10107A508(v0[111], v2);
    if (v4)
    {
      v5 = v4;
      v6 = v0[138];

      v7 = *(v6 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
      v8 = OBJC_IVAR____TtC8Freeform20CRLCommandController_nonUserCommandQueue;
      swift_beginAccess();
      v9 = *&v7[v8];
      v10 = v7;
      v11 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v7[v8] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_100B36334(0, v9[2] + 1, 1, v9);
        *&v7[v8] = v9;
      }

      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100B36334((v13 > 1), v14 + 1, 1, v9);
      }

      v9[2] = v14 + 1;
      v15 = &v9[2 * v14];
      v15[4] = v11;
      *(v15 + 40) = 3;
      *&v7[v8] = v9;
      swift_endAccess();
      sub_10088DA18();

      type metadata accessor for CRLCommandApplyPeerSyncUpdates();
      if (swift_dynamicCastClass())
      {
        v16 = 18;
        if (qword_1019F19A0 == -1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        type metadata accessor for CRLCommandApplyBoardAuxiliaryPeerSyncUpdates();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_10;
        }

        v16 = 20;
        if (qword_1019F19A0 == -1)
        {
LABEL_9:
          CRLAnalyticsOSSignpostManager.endSignpostInterval(for:)(v16, 1);
LABEL_10:
          v17 = v0[138];
          v18 = v0[137];
          v19 = v0[133];

          v20 = type metadata accessor for TaskPriority();
          (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
          v21 = swift_allocObject();
          *(v21 + 16) = 0;
          *(v21 + 24) = 0;
          *(v21 + 32) = v18;
          *(v21 + 40) = 1;

          v22 = &unk_1014C3318;
          goto LABEL_38;
        }
      }

      v48 = v16;
      swift_once();
      v16 = v48;
      goto LABEL_9;
    }

    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v26 = inited;
    *(inited + 16) = xmmword_10146C6B0;
    v27 = *(v1 + 16);
    if (v27)
    {
      v58 = v24;
      v59 = inited;
      v28 = v0[126];
      sub_100034080(0, v27, 0);
      v29 = v1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v60 = *(v28 + 72);
      while (1)
      {
        v30 = v0[128];
        v31 = v0[127];
        sub_101085AEC(v29, v30, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        sub_101085AEC(v30, v31, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v33 = v0[127];
        v34 = v0[123];
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v36 = type metadata accessor for UUID();
            (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
            sub_101085BD8(v33, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          }

          else
          {
            sub_101085BD8(v0[127], type metadata accessor for CRLBoardItemPeerSyncUpdate);
            v36 = type metadata accessor for UUID();
            (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
          }
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload != 1)
            {
              (*(**v33 + 264))();

              v36 = type metadata accessor for UUID();
              (*(*(v36 - 8) + 56))(v34, 0, 1, v36);
              goto LABEL_26;
            }

            v35 = v0[121];
            sub_101085B70(v0[127], v35, type metadata accessor for CRLBoardItemDeltaChange);
            v36 = type metadata accessor for UUID();
            v37 = *(v36 - 8);
            (*(v37 + 16))(v34, v35, v36);
            v38 = type metadata accessor for CRLBoardItemDeltaChange;
          }

          else
          {
            v35 = v0[122];
            v39 = sub_1005B981C(&qword_101A290D0);
            sub_10002640C(*(v33 + *(v39 + 48) + 40), *(v33 + *(v39 + 48) + 48));
            sub_101085B70(v33, v35, type metadata accessor for CRLGloballyScopedBoardIdentifier);
            v36 = type metadata accessor for UUID();
            v37 = *(v36 - 8);
            (*(v37 + 16))(v34, v35, v36);
            v38 = type metadata accessor for CRLGloballyScopedBoardIdentifier;
          }

          sub_101085BD8(v35, v38);
          (*(v37 + 56))(v34, 0, 1, v36);
        }

LABEL_26:
        v40 = v0[123];
        type metadata accessor for UUID();
        v41 = *(v36 - 8);
        if ((*(v41 + 48))(v40, 1, v36) == 1)
        {
          sub_10000CAAC(v40, &qword_1019F6990);
          v42 = 0;
          v43 = 0xE000000000000000;
        }

        else
        {
          v42 = UUID.uuidString.getter();
          v43 = v44;
          (*(v41 + 8))(v40, v36);
        }

        sub_101085BD8(v0[128], type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v46 = _swiftEmptyArrayStorage[2];
        v45 = _swiftEmptyArrayStorage[3];
        if (v46 >= v45 >> 1)
        {
          sub_100034080((v45 > 1), v46 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v46 + 1;
        v47 = &_swiftEmptyArrayStorage[2 * v46];
        v47[4] = v42;
        v47[5] = v43;
        v29 += v60;
        if (!--v27)
        {

          v24 = v58;
          v26 = v59;
          goto LABEL_37;
        }
      }
    }

LABEL_37:
    v49 = v0[138];
    v50 = v0[137];
    v19 = v0[133];
    v0[112] = _swiftEmptyArrayStorage;
    sub_1005B981C(&unk_1019F4D80);
    sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
    v51 = BidirectionalCollection<>.joined(separator:)();
    v53 = v52;

    v26[7] = &type metadata for String;
    v26[8] = sub_1000053B0();
    v26[4] = v51;
    v26[5] = v53;
    v54 = static os_log_type_t.default.getter();
    sub_100005404(v24, &_mh_execute_header, v54, "Processed into no command, updates skipped. Will be applied later: %@", 69, 2, v26);

    swift_setDeallocating();
    sub_100005070((v26 + 4));
    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v19, 1, 1, v55);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = v50;
    *(v21 + 40) = 0;

    v22 = &unk_1014C3310;
  }

  else
  {
    v19 = v0[133];

    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = v3;
    *(v21 + 40) = 0;

    v22 = &unk_1014C3320;
  }

LABEL_38:
  sub_100CA64C8(0, 0, v19, v22, v21);

  sub_10000CAAC(v19, &qword_1019FB750);

  v56 = v0[1];

  return v56();
}

uint64_t sub_101081C20(char a1)
{
  v3 = OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_pushCommandToCommandControllerTask;
  *(v1 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_pushCommandToCommandControllerTask) = 0;

  if (a1)
  {
    v5 = v1 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_incomingSuspendedCache;
    if ((*(v1 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_incomingSuspendedCache + 24) != 1 || (*v5 & 1) == 0) && !*(v1 + v3))
    {
      v6 = *v5 == 1 && *(*(v5 + 8) + 16) != 0;
      v7 = sub_10107781C(v6);
      if (*(v7 + 16))
      {
        sub_10107E840(v7);
      }
    }
  }

  return result;
}

uint64_t sub_101081CE4()
{
  swift_unknownObjectWeakDestroy();

  sub_101085BD8(v0 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_globallyScopedBoardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_101081D94()
{
  sub_101081CE4();

  return swift_defaultActor_deallocate();
}

uint64_t sub_101081DE8()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_101081EDC(uint64_t a1)
{
  v2[129] = v1;
  v2[128] = a1;
  v2[130] = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy();
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6990);
  v2[136] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[137] = v3;
  v2[138] = *(v3 - 8);
  v2[139] = swift_task_alloc();
  v2[140] = swift_task_alloc();
  v2[141] = type metadata accessor for CRLBoardItemDeltaChange(0);
  v2[142] = swift_task_alloc();
  v2[143] = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v2[144] = swift_task_alloc();
  v4 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  v2[145] = v4;
  v2[146] = *(v4 - 8);
  v2[147] = swift_task_alloc();
  v2[148] = swift_task_alloc();
  v2[149] = swift_task_alloc();
  v2[150] = swift_task_alloc();
  v2[151] = swift_task_alloc();
  v2[152] = swift_task_alloc();

  return _swift_task_switch(sub_101082154, v1, 0);
}

uint64_t sub_101082154()
{
  v229 = v1;
  v2 = *(v1 + 1024);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v225 = _swiftEmptyArrayStorage;
    goto LABEL_128;
  }

  v222 = 0;
  v4 = 0;
  v5 = 0;
  v6 = (v1 + 992);
  v7 = *(v1 + 1032) + OBJC_IVAR____TtCC8Freeform33CRLBoardRealTimeChangeCoordinator26CRLRealTimeChangeProcessor_globallyScopedBoardIdentifier;
  v8 = *(v1 + 1104);
  v213 = (v8 + 16);
  v208 = *(v1 + 1184);
  v210 = (v8 + 32);
  v211 = (v8 + 8);
  v224 = v2 + 32;
  v206 = *(v1 + 1176);
  v223 = *(v1 + 1168);
  v209 = *(v1 + 1128);
  v212 = *(v1 + 1064);
  v207 = *(v1 + 1040);
  v225 = _swiftEmptyArrayStorage;
  v226 = *(v2 + 16);
  v227 = v7;
  v221 = (v1 + 1000);
  v214 = (v1 + 1008);
LABEL_3:
  while (2)
  {
    v9 = v224 + 40 * v5;
    v10 = v5;
    while (1)
    {
      if (v10 >= v3)
      {
        __break(1u);
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

      v5 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_134;
      }

      sub_10000630C(v9, v1 + 912);
      sub_10000630C(v1 + 912, v1 + 952);
      sub_1005B981C(&qword_101A11C70);
      type metadata accessor for CRLBoardRealTimeChangeRecord();
      if (!swift_dynamicCast())
      {
        break;
      }

      v11 = *v6;
      p_class_meths = *v6 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_boardIdentifier;
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_18;
      }

      v12 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
      v13 = *(p_class_meths + v12);
      v14 = *(p_class_meths + v12 + 8);
      v15 = (v7 + v12);
      v16 = v13 == *v15 && v14 == v15[1];
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_18;
      }

      v17 = *(v11 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_partialCRDTData + 8);
      if (v17 >> 60 != 15)
      {
        v45 = *(v11 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_partialCRDTData);
        v46 = *(v1 + 1216);
        v216 = *(v11 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_minRequiredVersion);
        if (*(v11 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_raw_minRequiredVersionForGoodEnoughFidelity + 8))
        {
          v47 = 0x2000400000000;
        }

        else
        {
          v47 = *(v11 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_raw_minRequiredVersionForGoodEnoughFidelity);
        }

        if (*(v11 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_raw_minRequiredVersionForFullFidelity + 8))
        {
          v48 = 0x1000000000000;
        }

        else
        {
          v48 = *(v11 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_raw_minRequiredVersionForFullFidelity);
        }

        v49 = v46 + *(sub_1005B981C(&qword_101A290D0) + 48);
        sub_101085AEC(p_class_meths, v46, type metadata accessor for CRLGloballyScopedBoardIdentifier);
        *v49 = v216;
        *(v49 + 8) = v47;
        *(v49 + 16) = v48;
        *(v49 + 24) = 0;
        *(v49 + 32) = 1;
        *(v49 + 40) = v45;
        *(v49 + 48) = v17;
        swift_storeEnumTagMultiPayload();
        sub_100024E84(v45, v17);
        v219 = v45;
        sub_100024E98(v45, v17);
        v50 = v225;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_100B37118(0, v225[2] + 1, 1, v225);
        }

        v52 = v50[2];
        v51 = v50[3];
        if (v52 >= v51 >> 1)
        {
          v50 = sub_100B37118(v51 > 1, v52 + 1, 1, v50);
        }

        v53 = *(v1 + 1216);
        v50[2] = v52 + 1;
        v225 = v50;
        sub_101085B70(v53, v50 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v52, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v54 = *(v1 + 1152);
        v55 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_10146C6B0;
        sub_101085AEC(p_class_meths, v54, type metadata accessor for CRLGloballyScopedBoardIdentifier);
        p_class_meths = String.init<A>(describing:)();
        v58 = v57;
        *(v56 + 56) = &type metadata for String;
        *(v56 + 64) = sub_1000053B0();
        *(v56 + 32) = p_class_meths;
        *(v56 + 40) = v58;
        v59 = static os_log_type_t.default.getter();
        sub_100005404(v55, &_mh_execute_header, v59, "Received real-time board data. Board: %@", 40, 2, v56);
        sub_100025870(v219, v17);

        swift_setDeallocating();
        sub_100005070(v56 + 32);
        swift_deallocClassInstance();
        sub_100005070(v1 + 912);
        sub_100005070(v1 + 952);
        v4 = 1;
        v6 = (v1 + 992);
        v3 = v226;
        v7 = v227;
        if (v5 != v226)
        {
          goto LABEL_3;
        }

LABEL_123:
        p_class_meths = &OBJC_PROTOCOL___CRLSearchReplaceProvider.class_meths;
        LOBYTE(v3) = v222;
        if (qword_1019F19A0 == -1)
        {
LABEL_124:
          CRLAnalyticsOSSignpostManager.beginSignpostInterval(for:with:)(18, 1, _swiftEmptyArrayStorage);
          if ((v3 & 1) == 0)
          {
            goto LABEL_128;
          }

          goto LABEL_125;
        }

LABEL_135:
        swift_once();
        goto LABEL_124;
      }

      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v18 = *(v1 + 1152);
      v19 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10146C6B0;
      sub_101085AEC(p_class_meths, v18, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      p_class_meths = String.init<A>(describing:)();
      v22 = v21;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_1000053B0();
      *(v20 + 32) = p_class_meths;
      *(v20 + 40) = v22;
      v23 = static os_log_type_t.default.getter();
      sub_100005404(v19, &_mh_execute_header, v23, "Failed to receive partialCRDT for board change %@", 49, 2, v20);

      swift_setDeallocating();
      sub_100005070(v20 + 32);
      swift_deallocClassInstance();
      sub_100005070(v1 + 912);
      sub_100005070(v1 + 952);
      v9 += 40;
      ++v10;
      v4 = 1;
      v6 = (v1 + 992);
      v3 = v226;
      v7 = v227;
      if (v5 == v226)
      {
        goto LABEL_123;
      }
    }

    type metadata accessor for CRLBoardItemRealTimeChangeRecord();
    if (!swift_dynamicCast())
    {
      type metadata accessor for CRLTombstoneBoardItemRealTimeChangeRecord();
      if (swift_dynamicCast())
      {
        p_class_meths = *v214;
        v60 = v7;
        v61 = *v214 + OBJC_IVAR____TtC8Freeform41CRLTombstoneBoardItemRealTimeChangeRecord_boardIdentifier;
        if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v62 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20), v63 = *(v61 + v62), v64 = *(v61 + v62 + 8), v65 = (v60 + v62), v63 == *v65) ? (v66 = v64 == v65[1]) : (v66 = 0), !v66 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
        {

          sub_100005070(v1 + 912);
LABEL_112:
          v7 = v227;
          goto LABEL_113;
        }

        v220 = p_class_meths;
        if (qword_1019F19A0 != -1)
        {
          swift_once();
        }

        v67 = *(v1 + 1192);
        v68 = *(v1 + 1112);
        v69 = *(v1 + 1096);
        CRLAnalyticsOSSignpostManager.beginSignpostInterval(for:with:)(19, 1, _swiftEmptyArrayStorage);
        v70 = *v213;
        (*v213)(v68, v220 + OBJC_IVAR____TtC8Freeform41CRLTombstoneBoardItemRealTimeChangeRecord_boardItemUUID, v69);
        v70(v67, v68, v69);
        swift_storeEnumTagMultiPayload();
        v71 = v225;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_100B37118(0, v225[2] + 1, 1, v225);
        }

        v73 = v71[2];
        v72 = v71[3];
        if (v73 >= v72 >> 1)
        {
          v71 = sub_100B37118(v72 > 1, v73 + 1, 1, v71);
        }

        v74 = *(v1 + 1192);
        v71[2] = v73 + 1;
        v225 = v71;
        sub_101085B70(v74, v71 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v73, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v75 = *(v1 + 1152);
        v76 = *(v1 + 1112);
        v217 = *(v1 + 1096);
        v203 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146BDE0;
        sub_101085AEC(v61, v75, type metadata accessor for CRLGloballyScopedBoardIdentifier);
        v78 = String.init<A>(describing:)();
        v80 = v79;
        *(inited + 56) = &type metadata for String;
        v81 = sub_1000053B0();
        *(inited + 64) = v81;
        *(inited + 32) = v78;
        p_class_meths = inited + 32;
        *(inited + 40) = v80;
        v82 = UUID.uuidString.getter();
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v81;
        *(inited + 72) = v82;
        *(inited + 80) = v83;
        v84 = static os_log_type_t.default.getter();
        sub_100005404(v203, &_mh_execute_header, v84, "Received real-time deletion of board item. Board: %@, item: %@", 62, 2, inited);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        (*v211)(v76, v217);
        goto LABEL_111;
      }

      if (swift_dynamicCast())
      {
        v85 = *(v1 + 1072);
        sub_101085B70(*(v1 + 1080), v85, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy);
        v86 = *(v85 + *(v212 + 20));
        if (v86 <= 4)
        {
          v87 = (*(v1 + 1072) + *(v212 + 24));
          v88 = *v87;
          v89 = v87[1];
          **(v1 + 1184) = v86;
          *(v208 + 8) = v88;
          *(v208 + 16) = v89;
          swift_storeEnumTagMultiPayload();
          sub_100024E98(v88, v89);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v225 = sub_100B37118(0, v225[2] + 1, 1, v225);
          }

          v91 = v225[2];
          v90 = v225[3];
          v92 = v91 + 1;
          if (v91 >= v90 >> 1)
          {
            v225 = sub_100B37118(v90 > 1, v91 + 1, 1, v225);
          }

          p_class_meths = *(v1 + 1184);
          v93 = *(v1 + 1072);
          v94 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy;
LABEL_120:
          sub_101085BD8(v93, v94);
          sub_100005070(v1 + 912);
          v225[2] = v92;
          sub_101085B70(p_class_meths, v225 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v91, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          v222 = 1;
          goto LABEL_113;
        }

        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        p_class_meths = *(v1 + 1072);
        v161 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0);
        v162 = swift_initStackObject();
        *(v162 + 16) = xmmword_10146C6B0;
        *(v1 + 1016) = v86;
        v163 = dispatch thunk of CustomStringConvertible.description.getter();
        v165 = v164;
        *(v162 + 56) = &type metadata for String;
        *(v162 + 64) = sub_1000053B0();
        *(v162 + 32) = v163;
        *(v162 + 40) = v165;
        v166 = static os_log_type_t.default.getter();
        sub_100005404(v161, &_mh_execute_header, v166, "Unrecognized CRLBoardAuxiliaryRealTimeChangeType %@", 51, 2, v162);
        swift_setDeallocating();
        sub_100005070(v162 + 32);
        v104 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy;
      }

      else
      {
        if (!swift_dynamicCast())
        {
          if (qword_1019F2288 != -1)
          {
            swift_once();
          }

          v167 = static OS_os_log.realTimeSync;
          sub_1005B981C(&qword_1019F54E0);
          p_class_meths = swift_initStackObject();
          *(p_class_meths + 16) = xmmword_10146C6B0;
          sub_100020E58((v1 + 912), *(v1 + 936));
          swift_getDynamicType();
          v168 = _typeName(_:qualified:)();
          v170 = v169;
          *(p_class_meths + 56) = &type metadata for String;
          *(p_class_meths + 64) = sub_1000053B0();
          *(p_class_meths + 32) = v168;
          *(p_class_meths + 40) = v170;
          v171 = static os_log_type_t.default.getter();
          sub_100005404(v167, &_mh_execute_header, v171, "Ignoring an unexpected record type %{public}@", 45, 2, p_class_meths);
          swift_setDeallocating();
          sub_100005070(p_class_meths + 32);
          goto LABEL_111;
        }

        v95 = *(v1 + 1048);
        sub_101085B70(*(v1 + 1056), v95, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord);
        v96 = *(v95 + *(v207 + 20));
        v97 = sub_1006FFD20(v96);
        if (v97 != 14)
        {
          v181 = (*(v1 + 1048) + *(v207 + 24));
          v182 = *v181;
          v183 = v181[1];
          **(v1 + 1176) = v97;
          *(v206 + 8) = v182;
          *(v206 + 16) = v183;
          swift_storeEnumTagMultiPayload();
          sub_100024E98(v182, v183);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v225 = sub_100B37118(0, v225[2] + 1, 1, v225);
          }

          v91 = v225[2];
          v184 = v225[3];
          v92 = v91 + 1;
          if (v91 >= v184 >> 1)
          {
            v225 = sub_100B37118(v184 > 1, v91 + 1, 1, v225);
          }

          p_class_meths = *(v1 + 1176);
          v93 = *(v1 + 1048);
          v94 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord;
          goto LABEL_120;
        }

        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        p_class_meths = *(v1 + 1048);
        v98 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0);
        v99 = swift_initStackObject();
        *(v99 + 16) = xmmword_10146C6B0;
        *(v1 + 1224) = v96;
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        *(v99 + 56) = &type metadata for String;
        *(v99 + 64) = sub_1000053B0();
        *(v99 + 32) = v100;
        *(v99 + 40) = v102;
        v103 = static os_log_type_t.default.getter();
        sub_100005404(v98, &_mh_execute_header, v103, "Unrecognized CRLBoardAuxiliaryRealTimeChangeType %@", 51, 2, v99);
        swift_setDeallocating();
        sub_100005070(v99 + 32);
        v104 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecord;
      }

      sub_101085BD8(p_class_meths, v104);
      goto LABEL_111;
    }

    p_class_meths = *v221;
    v24 = *v221 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_boardIdentifier;
    if (static UUID.== infix(_:_:)())
    {
      v25 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
      v26 = *(v24 + v25);
      v27 = *(v24 + v25 + 8);
      v28 = (v7 + v25);
      v29 = v26 == *v28 && v27 == v28[1];
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v215 = v24;
        if (qword_1019F19A0 != -1)
        {
          swift_once();
        }

        CRLAnalyticsOSSignpostManager.beginSignpostInterval(for:with:)(19, 1, _swiftEmptyArrayStorage);
        v30 = v225;
        v218 = p_class_meths;
        if (*(p_class_meths + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemCreated) == 1)
        {
          v31 = sub_101084268(p_class_meths);
          if (!v31)
          {
            if (qword_1019F2288 != -1)
            {
              swift_once();
            }

            v172 = *(v1 + 1152);
            v205 = static OS_os_log.realTimeSync;
            sub_1005B981C(&qword_1019F54E0);
            p_class_meths = swift_allocObject();
            *(p_class_meths + 16) = xmmword_10146C4D0;
            sub_101085AEC(v215, v172, type metadata accessor for CRLGloballyScopedBoardIdentifier);
            v173 = String.init<A>(describing:)();
            v175 = v174;
            *(p_class_meths + 56) = &type metadata for String;
            v176 = sub_1000053B0();
            *(p_class_meths + 64) = v176;
            *(p_class_meths + 32) = v173;
            *(p_class_meths + 40) = v175;
            v177 = UUID.uuidString.getter();
            *(p_class_meths + 96) = &type metadata for String;
            *(p_class_meths + 104) = v176;
            *(p_class_meths + 72) = v177;
            *(p_class_meths + 80) = v178;
            v179 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemTypeValue);
            *(p_class_meths + 136) = &type metadata for Int;
            *(p_class_meths + 144) = &protocol witness table for Int;
            *(p_class_meths + 112) = v179;
            v180 = static os_log_type_t.default.getter();
            sub_100005404(v205, &_mh_execute_header, v180, "Failed to decode a board item real-time change record. Board: %@, item uuid: %@, item type: %d", 94, 2, p_class_meths);

            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            goto LABEL_111;
          }

          **(v1 + 1208) = v31;
          swift_storeEnumTagMultiPayload();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_100B37118(0, v225[2] + 1, 1, v225);
          }

          v33 = v30[2];
          v32 = v30[3];
          if (v33 >= v32 >> 1)
          {
            v30 = sub_100B37118(v32 > 1, v33 + 1, 1, v30);
          }

          v34 = *(v1 + 1208);
          v30[2] = v33 + 1;
          v225 = v30;
          sub_101085B70(v34, v30 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v33, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          if (qword_1019F2288 != -1)
          {
            swift_once();
          }

          v35 = *(v1 + 1152);
          v36 = static OS_os_log.realTimeSync;
          sub_1005B981C(&qword_1019F54E0);
          v37 = swift_initStackObject();
          *(v37 + 16) = xmmword_10146BDE0;
          sub_101085AEC(v215, v35, type metadata accessor for CRLGloballyScopedBoardIdentifier);
          v38 = String.init<A>(describing:)();
          v40 = v39;
          *(v37 + 56) = &type metadata for String;
          v41 = sub_1000053B0();
          *(v37 + 64) = v41;
          *(v37 + 32) = v38;
          *(v37 + 40) = v40;
          v42 = UUID.uuidString.getter();
          *(v37 + 96) = &type metadata for String;
          *(v37 + 104) = v41;
          *(v37 + 72) = v42;
          *(v37 + 80) = v43;
          v44 = static os_log_type_t.default.getter();
          v202 = v36;
          sub_100005404(v36, &_mh_execute_header, v44, "Received real-time creation of board item. Board: %@, item: %@", 62, 2, v37);

          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
        }

        else
        {
          if (*(p_class_meths + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData + 8) >> 60 != 15 || *(p_class_meths + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData + 8) >> 60 != 15)
          {
            v204 = objc_opt_self();
            v105 = [v204 _atomicIncrementAssertCount];
            v228 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v228);
            StaticString.description.getter();
            v200 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v106 = String._bridgeToObjectiveC()();

            v107 = [v106 lastPathComponent];

            v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v196 = v109;
            v198 = v108;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v110 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v111 = swift_initStackObject();
            *(v111 + 16) = xmmword_10146CA70;
            *(v111 + 56) = &type metadata for Int32;
            *(v111 + 64) = &protocol witness table for Int32;
            *(v111 + 32) = v105;
            v112 = sub_100006370(0, &qword_1019F4D30);
            *(v111 + 96) = v112;
            v113 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
            *(v111 + 104) = v113;
            *(v111 + 72) = v200;
            *(v111 + 136) = &type metadata for String;
            v114 = sub_1000053B0();
            *(v111 + 112) = v198;
            *(v111 + 120) = v196;
            *(v111 + 176) = &type metadata for UInt;
            *(v111 + 144) = v114;
            *(v111 + 152) = 803;
            v115 = v228;
            *(v111 + 216) = v112;
            *(v111 + 224) = v113;
            *(v111 + 184) = &protocol witness table for UInt;
            *(v111 + 192) = v115;
            v116 = v200;
            v117 = v115;
            v118 = static os_log_type_t.error.getter();
            sub_100005404(v110, &_mh_execute_header, v118, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v111);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v119 = static os_log_type_t.error.getter();
            sub_100005404(v110, &_mh_execute_header, v119, "Attempting to merge non-delta itemChange.", 41, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v120 = swift_allocObject();
            v120[2] = 8;
            v120[3] = 0;
            v120[4] = 0;
            v120[5] = 0;
            v121 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v122 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v123 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v124 = String._bridgeToObjectiveC()();

            [v204 handleFailureInFunction:v122 file:v123 lineNumber:803 isFatal:0 format:v124 args:v121];
          }

          v199 = *(v1 + 1200);
          v125 = *(v1 + 1136);
          v126 = *(v1 + 1120);
          v127 = *(v1 + 1096);
          v128 = *(v1 + 1088);
          v197 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemTypeValue);
          v195 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemSubTypeValue);
          v194 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemSubTypeValue + 8);
          (*v213)(v126, v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemUUID, v127);
          sub_10000BE14(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_parentContainerUUID, v128, &qword_1019F6990);
          v193 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_minRequiredVersion);
          v129 = 0x2000400000000;
          if (!*(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForGoodEnoughFidelity + 8))
          {
            v129 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForGoodEnoughFidelity);
          }

          v188 = v129;
          if (*(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForFullFidelity + 8))
          {
            v130 = 0x1000000000000;
          }

          else
          {
            v130 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForFullFidelity);
          }

          v187 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_objectOptions);
          v189 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData + 8);
          v190 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData);
          v131 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData);
          v192 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData + 8);
          v132 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData);
          v191 = *(v218 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData + 8);
          (*v210)(v125, v126, v127);
          sub_10063FD1C(v128, v125 + v209[5]);
          v133 = v125 + v209[6];
          *v133 = v193;
          *(v133 + 8) = v188;
          *(v133 + 16) = v130;
          *(v133 + 24) = 0;
          *(v133 + 32) = 1;
          *(v125 + v209[7]) = v187;
          v134 = v125 + v209[8];
          *v134 = v197;
          *(v134 + 8) = v195;
          *(v134 + 16) = v194;
          v135 = (v125 + v209[9]);
          *v135 = v190;
          v135[1] = v189;
          v136 = (v125 + v209[10]);
          *v136 = v131;
          v136[1] = v192;
          v137 = (v125 + v209[11]);
          *v137 = v132;
          v137[1] = v191;
          sub_101085AEC(v125, v199, type metadata accessor for CRLBoardItemDeltaChange);
          swift_storeEnumTagMultiPayload();
          sub_100024E84(v190, v189);
          sub_100024E84(v131, v192);
          sub_100024E84(v132, v191);
          v138 = v225;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = sub_100B37118(0, v225[2] + 1, 1, v225);
          }

          v140 = v138[2];
          v139 = v138[3];
          if (v140 >= v139 >> 1)
          {
            v138 = sub_100B37118(v139 > 1, v140 + 1, 1, v138);
          }

          v141 = *(v1 + 1200);
          v138[2] = v140 + 1;
          v225 = v138;
          sub_101085B70(v141, v138 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v140, type metadata accessor for CRLBoardItemPeerSyncUpdate);
          if (qword_1019F2288 != -1)
          {
            swift_once();
          }

          v142 = *(v1 + 1152);
          v201 = *(v1 + 1136);
          v143 = static OS_os_log.realTimeSync;
          sub_1005B981C(&qword_1019F54E0);
          v144 = swift_initStackObject();
          *(v144 + 16) = xmmword_10146BDE0;
          sub_101085AEC(v215, v142, type metadata accessor for CRLGloballyScopedBoardIdentifier);
          v145 = String.init<A>(describing:)();
          v147 = v146;
          *(v144 + 56) = &type metadata for String;
          v148 = sub_1000053B0();
          *(v144 + 64) = v148;
          *(v144 + 32) = v145;
          *(v144 + 40) = v147;
          v149 = UUID.uuidString.getter();
          *(v144 + 96) = &type metadata for String;
          *(v144 + 104) = v148;
          *(v144 + 72) = v149;
          *(v144 + 80) = v150;
          v151 = static os_log_type_t.default.getter();
          v202 = v143;
          sub_100005404(v143, &_mh_execute_header, v151, "Received real-time board item data modification. Board: %@, item: %@", 68, 2, v144);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          sub_101085BD8(v201, type metadata accessor for CRLBoardItemDeltaChange);
        }

        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v152 = *(v1 + 1152);
        sub_1005B981C(&qword_1019F54E0);
        v153 = swift_initStackObject();
        *(v153 + 16) = xmmword_10146BDE0;
        sub_101085AEC(v215, v152, type metadata accessor for CRLGloballyScopedBoardIdentifier);
        v154 = String.init<A>(describing:)();
        v156 = v155;
        *(v153 + 56) = &type metadata for String;
        v157 = sub_1000053B0();
        *(v153 + 64) = v157;
        *(v153 + 32) = v154;
        *(v153 + 40) = v156;
        p_class_meths = v218;
        v158 = UUID.uuidString.getter();
        *(v153 + 96) = &type metadata for String;
        *(v153 + 104) = v157;
        *(v153 + 72) = v158;
        *(v153 + 80) = v159;
        v160 = static os_log_type_t.default.getter();
        sub_100005404(v202, &_mh_execute_header, v160, "Received real-time board item data. Board: %@, item: %@", 55, 2, v153);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
LABEL_111:
        sub_100005070(v1 + 912);
        v6 = (v1 + 992);
        v3 = v226;
        goto LABEL_112;
      }
    }

LABEL_18:

    sub_100005070(v1 + 912);
LABEL_113:
    sub_100005070(v1 + 952);
    if (v5 != v3)
    {
      continue;
    }

    break;
  }

  if (v4)
  {
    goto LABEL_123;
  }

  p_class_meths = 0x1019F1000;
  if ((v222 & 1) == 0)
  {
    goto LABEL_128;
  }

LABEL_125:
  if (*(p_class_meths + 2464) != -1)
  {
    swift_once();
  }

  CRLAnalyticsOSSignpostManager.beginSignpostInterval(for:with:)(20, 1, _swiftEmptyArrayStorage);
LABEL_128:

  v185 = *(v1 + 8);

  return v185(v225);
}

uint64_t sub_10108402C()
{
  sub_101085BD8(v0 + OBJC_IVAR____TtCC8Freeform33CRLBoardRealTimeChangeCoordinator26CRLRealTimeChangeProcessor_globallyScopedBoardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1010840A8()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
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

uint64_t sub_101084144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10108418C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1010841E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a4;
  return _swift_task_switch(sub_101084204, a4, 0);
}

uint64_t sub_101084204()
{
  sub_101081C20(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t *sub_101084268(uint64_t a1)
{
  v2 = sub_100A0557C(*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemTypeValue), *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemSubTypeValue), *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemSubTypeValue + 8));
  v4 = v3;
  v6 = v5;
  if ((v5 & 0x10000) != 0)
  {
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v27 = v2;
    v28 = v4;
    LOWORD(v29) = v6;
    BYTE2(v29) = 1;
    v23 = String.init<A>(describing:)();
    v25 = v24;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v23;
    *(inited + 40) = v25;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v26, "Real-time change record does not contain a valid board item type: %@", 68, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    return 0;
  }

  v7 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData + 8);
  if (v7 >> 60 == 15)
  {
    return 0;
  }

  v8 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData + 8);
  if (v8 >> 60 == 15)
  {
    return 0;
  }

  v9 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData);
  v10 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData);
  v11 = (a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForGoodEnoughFidelity);
  if (*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForGoodEnoughFidelity + 8))
  {
    v11 = &qword_101464878;
  }

  v12 = *v11;
  v13 = (a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForFullFidelity);
  if (*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForFullFidelity + 8))
  {
    v13 = &qword_101464850;
  }

  v14 = *v13;
  v27 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_minRequiredVersion);
  v28 = v12;
  v29 = v14;
  v30 = 0;
  v31 = 1;
  v15 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_objectOptions);
  v16 = a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData;
  v17 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData);
  v18 = *(v16 + 8);
  sub_100024E84(v9, v7);
  sub_100024E84(v10, v8);
  v19 = sub_100B69CC0(v2, v4, v6 & 0x1FF, &v27, v15, v9, v7, v10, v8, v17, v18);
  sub_100025870(v10, v8);
  sub_100025870(v9, v7);
  return v19;
}

uint64_t sub_101084518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_10107EDA8(a1, v4, v5, v7, v6);
}

uint64_t sub_1010845D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1010841E0(a1, v4, v5, v6, v7);
}

uint64_t sub_10108469C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_1010841E0(a1, v4, v5, v6, v7);
}

uint64_t sub_101084760(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v53 = &v46 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_101085AEC(a2, v13, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  (*(v8 + 16))(v10, a1, v7);
  v14 = type metadata accessor for CRLBoardItemDeltaChange(0);
  v15 = v14[5];
  v16 = (a1 + v14[6]);
  v17 = v16[1];
  v46 = *v16;
  v47 = v17;
  v18 = v16[2];
  v19 = v14[8];
  v20 = *(a1 + v14[7]);
  v48 = v18;
  v49 = v20;
  v21 = a1 + v19;
  v23 = *(a1 + v19);
  v22 = *(a1 + v19 + 8);
  v50 = v23;
  v52 = v22;
  v51 = *(v21 + 16);
  sub_10000BE14(a1 + v15, v6, &qword_1019F6990);
  v24 = (a1 + v14[9]);
  v26 = *v24;
  v25 = v24[1];
  v27 = (a1 + v14[10]);
  v28 = *v27;
  v29 = v27[1];
  v30 = (a1 + v14[11]);
  v32 = *v30;
  v31 = v30[1];
  v54 = v28;
  v55 = v31;
  type metadata accessor for CRLBoardItemRealTimeChangeRecord();
  v33 = swift_allocObject();
  sub_101085B70(v13, v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_boardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  (*(v8 + 32))(v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemUUID, v10, v7);
  v34 = v47;
  *(v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_minRequiredVersion) = v46;
  v35 = v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForGoodEnoughFidelity;
  *v35 = v34;
  *(v35 + 8) = 0;
  v36 = v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForFullFidelity;
  *v36 = v48;
  *(v36 + 8) = 0;
  v37 = v50;
  *(v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_objectOptions) = v49;
  *(v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemTypeValue) = v37;
  v38 = v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemSubTypeValue;
  v39 = v53;
  *v38 = v52;
  *(v38 + 8) = v51;
  sub_10063FD1C(v39, v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_parentContainerUUID);
  *(v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemCreated) = 0;
  *(v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData) = xmmword_101486780;
  *(v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData) = xmmword_101486780;
  *(v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData) = xmmword_101486780;
  v40 = (v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData);
  *v40 = v26;
  v40[1] = v25;
  v41 = (v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData);
  v43 = v54;
  v42 = v55;
  *v41 = v54;
  v41[1] = v29;
  v44 = (v33 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData);
  *v44 = v32;
  v44[1] = v42;
  sub_100024E84(v26, v25);
  sub_100024E84(v43, v29);
  sub_100024E84(v32, v42);
  return v33;
}

void *sub_101084B38(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A21E80);
  __chkstk_darwin(v2 - 8);
  v4 = &v58 - v3;
  v5 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  v66 = *(v5 - 8);
  __chkstk_darwin(v5);
  v69 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  __chkstk_darwin(v10);
  v12 = &v58 - v11;
  if (*(a1 + 16) < 2uLL)
  {
  }

  v13 = sub_100DD10F4(a1, sub_10107E3CC, 0, sub_10107E454, 0, sub_10107E554, 0);
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_114;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_115:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v16 = 0;
  v62 = v14 & 0xC000000000000001;
  v59 = v14 & 0xFFFFFFFFFFFFFF8;
  v58 = v14 + 32;
  v74 = v9;
  v75 = (v66 + 48);
  v72 = _swiftEmptyArrayStorage;
  v73 = v12;
  v67 = v5;
  v68 = v4;
  v60 = v14;
  v61 = v15;
  while (1)
  {
    if (v62)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v18 = __OFADD__(v16, 1);
      v19 = v16 + 1;
      if (v18)
      {
        goto LABEL_112;
      }
    }

    else
    {
      if (v16 >= *(v59 + 16))
      {
        goto LABEL_113;
      }

      v18 = __OFADD__(v16, 1);
      v19 = v16 + 1;
      if (v18)
      {
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        v15 = _CocoaArrayWrapper.endIndex.getter();
        if (!v15)
        {
          goto LABEL_115;
        }

        goto LABEL_4;
      }
    }

    v65 = v19;
    v64 = v17;
    v20 = *(v17 + 16);
    v80 = _swiftEmptyArrayStorage;
    swift_retain_n();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v63 = v20;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = v80;
    if (v80 >> 62)
    {
      break;
    }

    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_96:

LABEL_6:

    v16 = v65;
    if (v65 == v61)
    {

      return v72;
    }
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_96;
  }

  while (1)
  {
LABEL_17:
    v22 = v21 & 0x8000000000000000;
    v14 = v21 >> 62;
    if (v21 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_100;
      }
    }

    else if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_99;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v23 = v21 & 0xFFFFFFFFFFFFFF8;
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_101;
      }

      v77 = *(v21 + 32);

      v23 = v21 & 0xFFFFFFFFFFFFFF8;
      if (!v14)
      {
LABEL_22:
        v24 = *(v23 + 16);
        if (!v24)
        {
          goto LABEL_106;
        }

        v25 = v24 - 1;
        if (__OFSUB__(v24, 1))
        {
          goto LABEL_102;
        }

        goto LABEL_33;
      }
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_106;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_107;
    }

    v26 = _CocoaArrayWrapper.endIndex.getter();
    v25 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_102;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v14)
      {
        v27 = (v21 & 0xFFFFFFFFFFFFFF8);
        if (v25 <= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

LABEL_38:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_39;
    }

    if (v14)
    {
      goto LABEL_38;
    }

LABEL_39:
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v27 = (v21 & 0xFFFFFFFFFFFFFF8);
    v22 = v21 & 0x8000000000000000;
LABEL_40:
    v28 = v27 + 4;

    v78 = v21;
    v29 = v21 >> 62;
    v30 = v27;
    if (!v29)
    {
      v31 = v27;
      v14 = v27[2];
      memmove(v28, v31 + 5, 8 * v14 - 8);
      v32 = v14 - 1;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_103;
      }

      goto LABEL_42;
    }

    v54 = v22 ? v78 : v27;
    v76 = v54;
    result = _CocoaArrayWrapper.endIndex.getter();
    if (__OFSUB__(result, 1))
    {
      break;
    }

    memmove(v27 + 4, v27 + 5, 8 * (result - 1));
    v14 = _CocoaArrayWrapper.endIndex.getter();
    v32 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
      goto LABEL_103;
    }

LABEL_42:
    *(v30 + 16) = v32;
    sub_10000BE14(v77 + *(*v77 + 112), v4, &qword_101A21E80);
    if ((*v75)(v4, 1, v5) == 1)
    {
      sub_10000CAAC(v4, &qword_101A21E80);
LABEL_51:
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v36 = static OS_os_log.realTimeSync;
      v37 = static os_log_type_t.error.getter();
      sub_100005404(v36, &_mh_execute_header, v37, "_sortPeerSyncUpdateItemsCausally must only be fed .createdItemData CRLBoardItemPeerSyncUpdates", 94, 2, _swiftEmptyArrayStorage);
      goto LABEL_54;
    }

    sub_101085B70(v4, v12, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    sub_101085AEC(v12, v9, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_101085BD8(v12, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      sub_101085BD8(v9, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      goto LABEL_51;
    }

    sub_101085BD8(v9, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    sub_101085AEC(v12, v69, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = sub_100B37118(0, v72[2] + 1, 1, v72);
    }

    v34 = v72[2];
    v33 = v72[3];
    if (v34 >= v33 >> 1)
    {
      v72 = sub_100B37118(v33 > 1, v34 + 1, 1, v72);
    }

    sub_101085BD8(v12, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    v35 = v72;
    v72[2] = v34 + 1;
    sub_101085B70(v69, v35 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v34, type metadata accessor for CRLBoardItemPeerSyncUpdate);
LABEL_54:
    v38 = v77;
    v39 = *(*v77 + 120);
    swift_beginAccess();
    v12 = *(v38 + v39);
    if (v12 >> 62)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
      v41 = v30;
      if (!v29)
      {
LABEL_56:
        v42 = *(v41 + 16);
        v14 = v42 + v40;
        if (__OFADD__(v42, v40))
        {
          goto LABEL_104;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v40 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = v30;
      if (!v29)
      {
        goto LABEL_56;
      }
    }

    v56 = v40;
    v57 = _CocoaArrayWrapper.endIndex.getter();
    v40 = v56;
    v18 = __OFADD__(v57, v56);
    v14 = v57 + v56;
    if (v18)
    {
      goto LABEL_104;
    }

LABEL_57:
    v76 = v40;

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v29)
      {
        if (v14 <= *(v30 + 24) >> 1)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }

LABEL_62:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_63;
    }

    if (v29)
    {
      goto LABEL_62;
    }

LABEL_63:
    v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v30 = v78 & 0xFFFFFFFFFFFFFF8;
LABEL_64:
    v43 = *(v30 + 16);
    v44 = (*(v30 + 24) >> 1) - v43;
    if (v12 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (!v45)
      {
LABEL_78:

        v12 = v73;
        v9 = v74;
        v21 = v78;
        if (v76 > 0)
        {
          goto LABEL_105;
        }

        goto LABEL_79;
      }

      v9 = v45;
      v46 = _CocoaArrayWrapper.endIndex.getter();
      if (v44 < v46)
      {
        goto LABEL_109;
      }

      if (v9 < 1)
      {
        goto LABEL_111;
      }

      v70 = v46;
      v71 = v30;
      v47 = v30 + 8 * v43 + 32;
      sub_10001A2F8(&qword_101A290F8, &qword_101A290F0);
      for (i = 0; i != v9; ++i)
      {
        sub_1005B981C(&qword_101A290F0);
        v49 = sub_100777A74(v79, i, v12);
        v51 = *v50;

        (v49)(v79, 0);
        *(v47 + 8 * i) = v51;
      }

      v5 = v67;
      v4 = v68;
      v14 = v70;
      v30 = v71;
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_78;
      }

      if (v44 < v14)
      {
        goto LABEL_110;
      }

      sub_1005B981C(&qword_1019F6CE8);
      swift_arrayInitWithCopy();
    }

    v12 = v73;
    v9 = v74;
    v21 = v78;
    if (v14 < v76)
    {
      goto LABEL_105;
    }

    if (v14 > 0)
    {
      v52 = *(v30 + 16);
      v18 = __OFADD__(v52, v14);
      v53 = v52 + v14;
      if (v18)
      {
        goto LABEL_108;
      }

      *(v30 + 16) = v53;
    }

LABEL_79:

    if (v21 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_5:

        v14 = v60;
        goto LABEL_6;
      }
    }

    else if (!*(v30 + 16))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}