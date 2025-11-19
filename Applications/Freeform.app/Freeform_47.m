uint64_t sub_1007D44B4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  return v4;
}

uint64_t sub_1007D4544()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1007D45C4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_1007D4644@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1007D46D4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

id sub_1007D4760(void *a1, int a2)
{
  v28 = a2;
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v27[-v5];
  v7 = sub_1005B981C(&qword_101A00E28);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27[-v9];
  v11 = sub_1005B981C(&qword_101A00E30);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-v13];
  *&v2[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact] = 0;
  v2[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_hasUnifiedContact] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isFollowing] = 0;
  v15 = OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant__isFollowedBy;
  v31 = &_swiftEmptySetSingleton;
  sub_1005B981C(&unk_101A00B70);
  Published.init(initialValue:)();
  (*(v12 + 32))(&v2[v15], v14, v11);
  UUID.init()();
  v16 = OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant__presences;
  v31 = _swiftEmptyArrayStorage;
  sub_1005B981C(&qword_101A00B88);
  Published.init(initialValue:)();
  (*(v8 + 32))(&v2[v16], v10, v7);
  v17 = OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cachedCursorColors;
  *&v2[v17] = sub_100BD4620(_swiftEmptyArrayStorage);
  v2[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isPopulatingContact] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant] = a1;
  swift_beginAccess();
  v30 = v28;
  v18 = a1;
  Published.init(initialValue:)();
  swift_endAccess();
  LOBYTE(v7) = [v18 permission] == 2;
  swift_beginAccess();
  v30 = v7;
  Published.init(initialValue:)();
  swift_endAccess();
  v19 = [v18 role] == 1;
  v2[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isDocumentOwner] = v19;
  v20 = type metadata accessor for CRLCollaborationParticipant(0);
  v29.receiver = v2;
  v29.super_class = v20;
  v21 = objc_msgSendSuper2(&v29, "init");
  static TaskPriority.background.getter();
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  type metadata accessor for MainActor();
  v23 = v21;
  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = &protocol witness table for MainActor;
  v25[5] = 0;
  v25[6] = 0;
  v25[4] = v23;
  sub_10064191C(0, 0, v6, &unk_10147CD78, v25);

  return v23;
}

BOOL sub_1007D4BE0(uint64_t a1)
{
  swift_getObjectType();
  sub_10000BE14(a1, v8, &unk_1019F4D00);
  if (!v9)
  {
    sub_10000CAAC(v8, &unk_1019F4D00);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = [*(v1 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant) userIdentity];
  v4 = [*&v7[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant] userIdentity];
  v5 = sub_1007D4CE0(v4);

  return v5;
}

BOOL sub_1007D4CE0(_BOOL8 result)
{
  if (result)
  {
    v2 = result;
    sub_100006370(0, &qword_101A00E68);
    v3 = v1;
    v4 = v2;
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      return 1;
    }

    v6 = v4;
    v7 = [v3 lookupInfo];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 lookupInfo];
      if (v9)
      {
        v10 = v9;
        sub_100006370(0, &qword_101A00E70);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
LABEL_7:

          return 1;
        }
      }

      else
      {
      }

      v12 = [v8 emailAddress];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = [v6 lookupInfo];
        if (v17 && (v18 = v17, v19 = [v17 emailAddress], v18, v19))
        {
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          if (v14 == v20 && v16 == v22)
          {

            return 1;
          }

          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v34)
          {
            goto LABEL_7;
          }
        }

        else
        {
        }
      }

      v23 = [v8 phoneNumber];
      if (v23)
      {
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = [v6 lookupInfo];
        if (v28)
        {
          v29 = v28;
          v30 = [v28 phoneNumber];

          if (v30)
          {
            v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = v32;

            if (v25 == v31 && v27 == v33)
            {

              goto LABEL_7;
            }

            v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

            return (v35 & 1) != 0;
          }
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1007D5084()
{
  v1 = sub_1007D6C84();
  v2 = 1718379891;
  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v2 = 0x726568746FLL;
    v3 = 0xE500000000000000;
  }

  v20 = v2;

  v4._countAndFlagsBits = 58;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5 = [*(v0 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant) userIdentity];
  v6 = [v5 lookupInfo];

  if (v6 && (v7 = [v6 emailAddress], v6, v7))
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = v20;
  v12._object = v3;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 58;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  type metadata accessor for CRLCollaboratorPresence();
  v14 = Array.description.getter();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 125;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  return 123;
}

uint64_t sub_1007D52E0(char *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v66 = a3;
  v65 = a2;
  v71 = a1;
  v5 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v5 - 8);
  v68 = v61 - v6;
  v7 = type metadata accessor for PersonNameComponents();
  v69 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v70 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v4;
  v17 = v71;
  static Published.subscript.getter();

  v73 = v17;
  v18 = sub_101107CA8(sub_1007E1788, v72, v76);

  if (v18)
  {
    return v18;
  }

  v61[0] = v9;
  v61[1] = 0;
  v62 = v7;
  v64 = v14;
  v20 = *(v14 + 16);
  v20(v16, v17, v13);
  v21 = *(v70 + 16);
  v21(v12, v65, v10);
  v63 = type metadata accessor for CRLCollaboratorPresence();
  v22 = objc_allocWithZone(v63);
  swift_unknownObjectWeakInit();
  v23 = v67;
  swift_unknownObjectWeakAssign();
  v71 = v16;
  v65 = v13;
  v24 = v12;
  v20(&v22[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID], v16, v13);
  v21(&v22[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_joinTime], v12, v10);
  v22[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_isLocalParticipant] = v66 & 1;
  v21(&v22[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime], v12, v10);
  v25 = v23;
  v26 = sub_1007D7988();
  v27 = &v22[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_displayName];
  *v27 = v26;
  v27[1] = v28;
  v29 = v68;
  sub_1007D6EB8(v68);
  v30 = v69;
  v31 = v62;
  if ((*(v69 + 48))(v29, 1) == 1)
  {
    sub_10000CAAC(v29, &qword_101A0DE80);
  }

  else
  {
    v32 = v61[0];
    (*(v30 + 32))(v61[0], v29, v31);
    v33 = objc_opt_self();
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v35 = [v33 localizedStringFromPersonNameComponents:isa style:1 options:0];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    (*(v30 + 8))(v32, v31);
    v39 = v38;
    v40 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v40 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {
      v41 = v36;
      v42 = v70;
      v43 = v63;
      goto LABEL_11;
    }
  }

  v42 = v70;
  v43 = v63;
  v41 = sub_1007D7988();
LABEL_11:
  v44 = &v22[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_shortDisplayName];
  *v44 = v41;
  v44[1] = v39;
  v45 = *&v25[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant];
  sub_1009A1F98(v45);
  v47 = v46;

  *&v22[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex] = v47;
  v75.receiver = v22;
  v75.super_class = v43;
  v48 = objc_msgSendSuper2(&v75, "init");

  (*(v42 + 8))(v24, v10);
  (*(v64 + 8))(v71, v65);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v76 >> 62))
  {
    v49 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v49)
    {
      goto LABEL_13;
    }

LABEL_26:
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v48;
    static Published.subscript.getter();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_32:
    v58 = v76;
    swift_getKeyPath();
    swift_getKeyPath();
    v74 = v58;
    v59 = v25;
    static Published.subscript.setter();
    sub_1007D40B4();
    return v19;
  }

LABEL_36:
  v60 = _CocoaArrayWrapper.endIndex.getter();

  if (!v60)
  {
    goto LABEL_26;
  }

LABEL_13:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v50 = v76;
  if (v76 >> 62)
  {
    v51 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v51 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = 0;
  while (1)
  {
    if (v51 == v52)
    {

      goto LABEL_26;
    }

    if ((v50 & 0xC000000000000001) != 0)
    {
      v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v53 = *(v50 + 8 * v52 + 32);
    }

    v54 = v53;
    v55 = static Date.< infix(_:_:)();

    if (v55)
    {
      break;
    }

    if (__OFADD__(v52++, 1))
    {
      goto LABEL_35;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v48;
  static Published.subscript.getter();

  if (v76 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= v52)
    {
      goto LABEL_31;
    }
  }

  else
  {
    result = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v52)
    {
LABEL_31:
      sub_100678858(v52, v52, v19);

      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1007D5BB0(uint64_t a1)
{
  v2 = v1;
  v7[2] = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = sub_100CCD124(sub_1007E1894, v7);
  if (v8 >> 62)
  {
    v6 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    result = v6;
    if (v4 >= v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= result)
    {
LABEL_3:
      sub_10067D35C(result, v4);
      v5 = v8;
      swift_getKeyPath();
      swift_getKeyPath();
      v7[3] = v5;
      v2;
      static Published.subscript.setter();
      return sub_1007D40B4();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1007D608C()
{
  v28 = type metadata accessor for Date();
  v0 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v29 = &v22 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v32;
  if (v32 >> 62)
  {
    goto LABEL_23;
  }

  v6 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v27 = v5 & 0xC000000000000001;
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
      if (v6 == 1)
      {
LABEL_19:

        return v8;
      }

      v23 = v5 & 0xFFFFFFFFFFFFFF8;
      v24 = v5;
      v25 = (v0 + 8);
      v26 = (v0 + 16);
      v0 = 1;
      v31 = v7;
      while (1)
      {
        if (v27)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v0 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          if (v0 >= *(v23 + 16))
          {
            goto LABEL_22;
          }

          v9 = *(v5 + 8 * v0 + 32);
        }

        v10 = v9;
        v11 = v0 + 1;
        if (__OFADD__(v0, 1))
        {
          break;
        }

        v12 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
        v13 = v31;
        swift_beginAccess();
        v14 = *v26;
        v15 = &v13[v12];
        v17 = v28;
        v16 = v29;
        (*v26)(v29, v15, v28);
        v18 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
        swift_beginAccess();
        v19 = &v10[v18];
        v8 = v10;
        v20 = v30;
        v14(v30, v19, v17);
        LOBYTE(v18) = static Date.< infix(_:_:)();
        v21 = *v25;
        (*v25)(v20, v17);
        v21(v16, v17);
        if (v18)
        {

          ++v0;
          v5 = v24;
          if (v11 == v6)
          {
            goto LABEL_19;
          }

          v31 = v8;
        }

        else
        {

          ++v0;
          v5 = v24;
          if (v11 == v6)
          {
            v8 = v31;
            goto LABEL_19;
          }
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      result = _CocoaArrayWrapper.endIndex.getter();
      v6 = result;
    }

    while (result);
  }

  return 0;
}

uint64_t sub_1007D63F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(v3 + 32);
LABEL_6:
    v2 = v1;

    return v2;
  }

  __break(1u);
  return result;
}

_BYTE *sub_1007D6520()
{
  if (sub_1007D6C84())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v6 >> 62)
    {
      goto LABEL_16;
    }

    v0 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v0)
    {
      while (1)
      {
        v1 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v3 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v4 = v2;

            return v4;
          }

LABEL_8:
          if (v2[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_isLocalParticipant])
          {
            goto LABEL_14;
          }

          ++v1;
          if (v3 == v0)
          {
            goto LABEL_17;
          }
        }

        if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v0 = _CocoaArrayWrapper.endIndex.getter();
        if (!v0)
        {
          goto LABEL_17;
        }
      }

      v2 = *(v6 + 8 * v1 + 32);
      v3 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }

  return 0;
}

uint64_t sub_1007D6668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007D6704, v8, v7);
}

uint64_t sub_1007D6704()
{
  v1 = *(v0 + 24);

  sub_1007D6930();
  if (v1)
  {
    (*(v0 + 24))();
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_1007D6930()
{
  v1 = OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isPopulatingContact;
  if (*(v0 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isPopulatingContact))
  {
    return;
  }

  *(v0 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isPopulatingContact) = 1;
  v2 = OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_hasUnifiedContact;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_hasUnifiedContact) & 1) == 0 && [objc_opt_self() authorizationStatusForEntityType:0] == 3)
  {
    sub_1005B981C(&unk_1019F4D60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10146CE00;
    v4 = [objc_allocWithZone(CNAvatarViewController) init];
    v5 = [v4 descriptorForRequiredKeys];

    *(v3 + 32) = v5;
    *(v3 + 40) = [objc_opt_self() descriptorForRequiredKeys];
    v6 = *(v0 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant);
    v7 = [objc_allocWithZone(CNContactStore) init];
    sub_1005B981C(&qword_101A00EB8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v6 unifiedContactsInStore:v7 keysToFetch:isa error:0];

    sub_100006370(0, &qword_101A00EC0);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v11 = *(v10 + 32);
      }

      v12 = v11;

      v13 = *(v0 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact);
      *(v0 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact) = v12;

      goto LABEL_12;
    }

LABEL_12:
    *(v0 + v2) = 1;
  }

  v14 = OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact;
  if (!*(v0 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact))
  {
    v15 = [*(v0 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant) userIdentity];
    v16 = sub_1007E07B4(v15);

    v17 = *(v0 + v14);
    *(v0 + v14) = v16;
  }

  *(v0 + v1) = 0;
}

uint64_t sub_1007D6C84()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = [*(v0 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant) userIdentity];
  v5 = [v4 userRecordID];

  if (v5)
  {
    v6 = [v5 recordName];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (v1 == v7 && v3 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1007D6EB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  sub_1007D6930();
  if ((sub_1007D6C84() & 1) == 0 && (v7 = *(v1 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact)) != 0 && (v8 = v7, v9 = sub_1007D70FC(), v8, v9))
  {
    v10 = *(v2 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact);
    if (v10)
    {
      v11 = v10;
      sub_1007D72F0();

      v12 = type metadata accessor for PersonNameComponents();
      v13 = *(*(v12 - 8) + 56);
      v14 = v12;
      v15 = a1;
      v16 = 0;
    }

    else
    {
      v22 = type metadata accessor for PersonNameComponents();
      v13 = *(*(v22 - 8) + 56);
      v14 = v22;
      v15 = a1;
      v16 = 1;
    }

    return v13(v15, v16, 1, v14);
  }

  else
  {
    v17 = [*(v2 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant) userIdentity];
    v18 = [v17 nameComponents];

    if (v18)
    {
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = type metadata accessor for PersonNameComponents();
      (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    }

    else
    {
      v20 = type metadata accessor for PersonNameComponents();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    }

    return sub_1007E1718(v6, a1);
  }
}

BOOL sub_1007D70FC()
{
  v1 = [v0 givenName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = String.count.getter();

  if (v2 > 0)
  {
    return 1;
  }

  v3 = [v0 familyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = String.count.getter();

  if (v4 > 0)
  {
    return 1;
  }

  v5 = [v0 middleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = String.count.getter();

  if (v6 > 0)
  {
    return 1;
  }

  v7 = [v0 namePrefix];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = String.count.getter();

  if (v8 > 0)
  {
    return 1;
  }

  v9 = [v0 nameSuffix];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = String.count.getter();

  if (v10 > 0)
  {
    return 1;
  }

  v12 = [v0 nickname];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = String.count.getter();

  return v13 > 0;
}

uint64_t sub_1007D72F0()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v2 - 8);
  v20 = &v19 - v3;
  v19 = type metadata accessor for PersonNameComponents();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  PersonNameComponents.init()();
  v7 = [v0 namePrefix];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  PersonNameComponents.namePrefix.setter();
  v8 = [v1 givenName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  PersonNameComponents.givenName.setter();
  v9 = [v1 middleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  PersonNameComponents.middleName.setter();
  v10 = [v1 familyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  PersonNameComponents.familyName.setter();
  v11 = [v1 nameSuffix];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  PersonNameComponents.nameSuffix.setter();
  v12 = [v1 nickname];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  PersonNameComponents.nickname.setter();
  v13 = [v1 phoneticGivenName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [v1 phoneticMiddleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [v1 phoneticFamilyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (String.count.getter() <= 0 && String.count.getter() <= 0 && String.count.getter() < 1)
  {
  }

  else
  {
    PersonNameComponents.init()();
    PersonNameComponents.givenName.setter();
    PersonNameComponents.middleName.setter();
    PersonNameComponents.familyName.setter();
    v17 = v19;
    v16 = v20;
    (*(v4 + 16))(v20, v6, v19);
    (*(v4 + 56))(v16, 0, 1, v17);
    PersonNameComponents.phoneticRepresentation.setter();
    return (*(v4 + 8))(v6, v17);
  }
}

uint64_t sub_1007D778C()
{
  v0 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for PersonNameComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007D6EB8(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000CAAC(v2, &qword_101A0DE80);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = objc_opt_self();
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v10 = [v8 localizedStringFromPersonNameComponents:isa style:0 options:0];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v4 + 8))(v6, v3);
    return v11;
  }
}

uint64_t sub_1007D7988()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for PersonNameComponents();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007D6EB8(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CAAC(v4, &qword_101A0DE80);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = objc_opt_self();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v12 = [v10 localizedStringFromPersonNameComponents:isa style:0 options:0];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v8, v5);
  if (!String.count.getter())
  {
    v18 = [*(v1 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant) userIdentity];
    v19 = [v18 lookupInfo];

    if (v19)
    {
      v20 = [v19 emailAddress];
      if (v20)
      {
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = String.count.getter();

        if (v23 > 0)
        {

          v9 = v22;
          goto LABEL_5;
        }
      }

      v24 = [v19 phoneNumber];
      if (v24)
      {
        v25 = v24;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = String.count.getter();

        if (v26 > 0)
        {

          v27 = objc_allocWithZone(CNPhoneNumber);
          v28 = String._bridgeToObjectiveC()();

          v29 = [v27 initWithStringValue:v28];

          v30 = [v29 formattedStringValue];
          if (!v30)
          {

            return 0;
          }

          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          goto LABEL_5;
        }
      }
    }
  }

LABEL_5:
  if (!String.count.getter())
  {

    v13 = [objc_opt_self() mainBundle];
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v9;
}

uint64_t sub_1007D7E18()
{
  v0 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = type metadata accessor for PersonNameComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007D6EB8(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000CAAC(v2, &qword_101A0DE80);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = objc_opt_self();
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v9 = [v7 localizedStringFromPersonNameComponents:isa style:1 options:0];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    (*(v4 + 8))(v6, v3);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      return v10;
    }
  }

  return sub_1007D7988();
}

id sub_1007D8058()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCollaborationParticipant(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007D82B4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRLCollaborationParticipant(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1007D82F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1007D8370()
{
  v0 = sub_1007D7988();
  v2 = v1;
  if (v0 == sub_1007D7988() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1007D842C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return NSNotFound.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(v4 + 32);
LABEL_6:
    v2 = v1;

    v3 = *&v2[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex];

    return v3;
  }

  __break(1u);
  return result;
}

id sub_1007D8530(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cachedCursorColors;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_1007CF108(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v19 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v10 = *(v19 + 32);
      }

      v11 = v10;

      v12 = sub_1009A2AC0(a1, *&v11[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex]);

      if (qword_1019F1A10 != -1)
      {
        swift_once();
      }

      v13 = qword_101AD6E98;
      sub_100006370(0, &qword_101A00EB0);
      v14 = v13;
      v15 = static NSObject.== infix(_:_:)();

      if ((v15 & 1) == 0)
      {
        swift_beginAccess();
        v16 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v2 + v4);
        *(v2 + v4) = 0x8000000000000000;
        sub_100A9E454(v16, a1, isUniquelyReferenced_nonNull_native);
        *(v2 + v4) = v18;
        swift_endAccess();
        return v16;
      }
    }

    else
    {
    }

    if (qword_1019F1A10 != -1)
    {
      swift_once();
    }

    v8 = qword_101AD6E98;
  }

  return v8;
}

uint64_t sub_1007D8808()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cachedCursorColors;
  swift_beginAccess();
  v38 = v2;
  v3 = *(v0 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v37 = v3;
  while (v7)
  {
LABEL_10:
    v11 = *(*(v3 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v40 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 &= v7 - 1;
    if (v12)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v13 = *(v40 + 32);
      }

      v14 = v13;

      v39 = v11;
      v15 = sub_1009A2AC0(v11, *&v14[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex]);

      if (qword_1019F1A10 != -1)
      {
        swift_once();
      }

      v16 = qword_101AD6E98;
      sub_100006370(0, &qword_101A00EB0);
      v17 = v16;
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
      }

      else
      {
        swift_beginAccess();
        v19 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(v1 + v38);
        v22 = v1;
        *(v1 + v38) = 0x8000000000000000;
        v24 = sub_1007CF108(v39);
        v25 = v21[2];
        v26 = (v23 & 1) == 0;
        v27 = v25 + v26;
        if (__OFADD__(v25, v26))
        {
          goto LABEL_37;
        }

        v28 = v23;
        if (v21[3] >= v27)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v23)
            {
              goto LABEL_27;
            }
          }

          else
          {
            sub_100AA8490();
            if (v28)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          sub_100A90330(v27, isUniquelyReferenced_nonNull_native);
          v29 = sub_1007CF108(v39);
          if ((v28 & 1) != (v30 & 1))
          {
            goto LABEL_39;
          }

          v24 = v29;
          if (v28)
          {
LABEL_27:
            v31 = v21[7];
            v32 = *(v31 + 8 * v24);
            *(v31 + 8 * v24) = v19;

            goto LABEL_33;
          }
        }

        v21[(v24 >> 6) + 8] |= 1 << v24;
        *(v21[6] + 8 * v24) = v39;
        *(v21[7] + 8 * v24) = v19;
        v33 = v21[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_38;
        }

        v21[2] = v35;
LABEL_33:
        v1 = v22;
        *(v22 + v38) = v21;
        swift_endAccess();

        v3 = v37;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1007D8C08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    if (qword_1019F1A18 == -1)
    {
LABEL_9:
      v2 = qword_101AD6EA0;

      return v2;
    }

LABEL_13:
    swift_once();
    goto LABEL_9;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_13;
  }

  v0 = *(v4 + 32);
LABEL_6:
  v1 = v0;

  v2 = sub_1009A31FC(*&v1[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex]);

  return v2;
}

id sub_1007D8D78(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_1007D8DE8(void *a1)
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = sub_100006370(0, &qword_101A00570);
  *(inited + 64) = sub_10000FE24(&qword_101A00E40, &qword_101A00570);
  *(inited + 32) = a1;
  v5 = a1;
  v6 = v1;
  v7 = [v6 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 96) = &type metadata for String;
  v11 = sub_1000053B0();
  *(inited + 104) = v11;
  *(inited + 72) = v8;
  *(inited + 80) = v10;
  v12 = static os_log_type_t.info.getter();
  sub_100005404(v3, &_mh_execute_header, v12, "Comparing handle for equivalency. handle=[%@], shareParticipant=[%@]", 68, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v13 = [v6 userIdentity];
  v14 = [v13 lookupInfo];

  if (!v14)
  {
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_10146C6B0;
    v37 = v6;
    v38 = [v37 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v11;
    *(v36 + 32) = v39;
    *(v36 + 40) = v41;
    v42 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v42, "Missing user identity for participant: %@", 41, 2, v36);
    swift_setDeallocating();
    sub_100005070(v36 + 32);
    goto LABEL_15;
  }

  v15 = [v14 phoneNumber];
  if (!v15)
  {
LABEL_12:
    v43 = sub_1007D91D4();
    if (v43)
    {
      v44 = v43;
      v35 = [v43 isEquivalentToHandle:v5];

      return v35 & 1;
    }

LABEL_15:
    v35 = 0;
    return v35 & 1;
  }

  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20._countAndFlagsBits = 43;
  v20._object = 0xE100000000000000;
  if (String.hasPrefix(_:)(v20) || (v21 = [v5 normalizedValue]) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26._countAndFlagsBits = 43;
  v26._object = 0xE100000000000000;
  if (!String.hasPrefix(_:)(v26))
  {

    goto LABEL_11;
  }

  v27 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v27, "Working around canonicalization issue with phone numbers", 56, 2, _swiftEmptyArrayStorage);
  v28 = sub_100D8BFDC(1uLL, v23, v25);
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = sub_1007E117C(v17, v19, v28, v30, v32, v34);

  return v35 & 1;
}

id sub_1007D91D4()
{
  v1 = [v0 userIdentity];
  v2 = [v1 lookupInfo];

  if (!v2)
  {
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v8 = v0;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v10;
    v13 = inited + 32;
    *(inited + 40) = v12;
    v14 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v14, "Missing user identity for participant: %@", 41, 2, inited);
    goto LABEL_14;
  }

  v3 = [v2 emailAddress];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() normalizedEmailAddressHandleForValue:v3];
  }

  else
  {
    v15 = [v2 phoneNumber];
    if (!v15)
    {
LABEL_11:
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v17 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_10146C6B0;
      v19 = v0;
      v20 = [v19 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_1000053B0();
      *(v18 + 32) = v21;
      v13 = v18 + 32;
      *(v18 + 40) = v23;
      v24 = static os_log_type_t.default.getter();
      sub_100005404(v17, &_mh_execute_header, v24, "Missing handle for participant: %@", 34, 2, v18);

LABEL_14:
      swift_setDeallocating();
      sub_100005070(v13);
      return 0;
    }

    v4 = v15;
    v5 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v15 isoCountryCode:0];
  }

  v16 = v5;

  if (!v16)
  {
    goto LABEL_11;
  }

  return v16;
}

uint64_t sub_1007D94D8()
{
  v1 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingParticipantChangeTimer;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingParticipantChangeTimer);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection__activeParticipants;
  v4 = sub_1005B981C(&qword_101A00E48);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1007D9614()
{
  sub_10003A3A0(319, &qword_101A00BF0, &unk_101A00BF8);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1007D96F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1007D975C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;

  static Published.subscript.setter();
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(inited + 56) = sub_1005B981C(&unk_101A00BF8);
  *(inited + 64) = sub_10001A2F8(&qword_101A00EA0, &unk_101A00BF8);
  *(inited + 32) = v6;
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v4, "Updating collection of active participants to : %@", 50, 2, inited);
  swift_setDeallocating();
  return sub_100005070(inited + 32);
}

void sub_1007D9914(void *a1)
{
  v3 = sub_1005B981C(&qword_101A00E90);
  __chkstk_darwin(v3 - 8);
  v5 = &v69 - v4;
  v72 = type metadata accessor for Date();
  v6 = *(v72 - 8);
  __chkstk_darwin(v72);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v87 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v69 - v13;
  v81 = sub_1005B981C(&qword_101A00EA8);
  __chkstk_darwin(v81);
  v16 = &v69 - v15;
  if (!a1)
  {
    return;
  }

  v17 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingRealTimeEnters;
  swift_beginAccess();
  v18 = *&v1[v17];
  if (!*(v18 + 16))
  {
    return;
  }

  v89 = v9;
  v71 = v8;
  v85 = v14;
  v19 = *(v18 + 64);
  v79 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v78 = (v20 + 63) >> 6;
  v90 = v10 + 16;
  v70 = (v6 + 8);
  v69 = v10 + 32;
  v80 = v18;
  swift_bridgeObjectRetain_n();
  v77 = a1;
  v23 = 0;
  v83 = 0;
  v91 = 0;
  v84 = _swiftEmptyArrayStorage;
  v24 = v1;
  v86 = v1;
  v88 = v5;
  v75 = v10;
  v74 = v17;
  v73 = v16;
  while (v22)
  {
    v25 = v80;
LABEL_15:
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = *(v10 + 72);
    v29 = v25[6] + v28 * v27;
    v30 = v89;
    v82 = *(v10 + 16);
    v82(v16, v29, v89);
    v31 = v25[7];
    v32 = type metadata accessor for CRLRealTimeEnter(0);
    v33 = v31 + *(*(v32 - 8) + 72) * v27;
    v34 = &v16[*(v81 + 48)];
    sub_1007E1650(v33, v34);
    v35 = [v77 participants];
    sub_100006370(0, &qword_1019F5520);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v37);
    *(&v69 - 2) = v34;
    v38 = v91;
    v39 = sub_101107CA8(sub_1007E18CC, (&v69 - 4), v36);
    v91 = v38;

    if (!v39)
    {
      v17 = v74;
      v10 = v75;
      v16 = v73;
      goto LABEL_7;
    }

    v76 = v28;
    v40 = v71;
    Date.init(timeIntervalSinceReferenceDate:)();
    v41 = *(v34 + *(v32 + 28));
    v42 = sub_1007DA8A4(v39, (v34 + *(v32 + 20)), v40, 0, v41);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v70)(v40, v72);
LABEL_21:

      goto LABEL_22;
    }

    if (!sub_1007DFEBC())
    {
      (*v70)(v71, v72);
      goto LABEL_21;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v93 = v41;
    static Published.subscript.setter();

    (*v70)(v71, v72);
LABEL_22:
    v17 = v74;
    v16 = v73;
    v82(v87, v73, v30);
    v46 = v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v75;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v46 = sub_100B356D0(0, v46[2] + 1, 1, v46);
    }

    v49 = v46[2];
    v48 = v46[3];
    if (v49 >= v48 >> 1)
    {
      v46 = sub_100B356D0(v48 > 1, v49 + 1, 1, v46);
    }

    v46[2] = v49 + 1;
    v50 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v84 = v46;
    (*(v10 + 32))(v46 + v50 + v49 * v76, v87, v30);
    v83 |= v44 ^ 1;
LABEL_7:
    v22 &= v22 - 1;
    sub_10000CAAC(v16, &qword_101A00EA8);
    v24 = v86;
  }

  v25 = v80;
  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v26 >= v78)
    {
      break;
    }

    v22 = *(v79 + 8 * v26);
    ++v23;
    if (v22)
    {
      v23 = v26;
      goto LABEL_15;
    }
  }

  v51 = v85;
  v52 = v84[2];
  v16 = v24;
  if (v52)
  {
    v53 = v84 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v54 = *(v10 + 72);
    v87 = *(v10 + 16);
    v91 = (v10 + 8);
    do
    {
      v57 = v89;
      (v87)(v51, v53, v89);
      swift_beginAccess();
      v58 = sub_10003E994(v51);
      v60 = v59;
      v61 = *v91;
      (*v91)(v51, v57);
      if (v60)
      {
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = *&v16[v17];
        v92 = v63;
        *&v16[v17] = 0x8000000000000000;
        if (!v62)
        {
          sub_100AA5110();
          v63 = v92;
        }

        v61(*(v63 + 48) + v58 * v54, v57);
        v64 = *(v63 + 56);
        v65 = type metadata accessor for CRLRealTimeEnter(0);
        v66 = *(v65 - 8);
        v67 = v64 + *(v66 + 72) * v58;
        v56 = v88;
        sub_1007E16B4(v67, v88);
        sub_100BCDB6C(v58, v63);
        v68 = v86;
        *&v86[v17] = v63;

        (*(v66 + 56))(v56, 0, 1, v65);
        v16 = v68;
        v51 = v85;
      }

      else
      {
        v55 = type metadata accessor for CRLRealTimeEnter(0);
        v56 = v88;
        (*(*(v55 - 8) + 56))(v88, 1, 1, v55);
      }

      sub_10000CAAC(v56, &qword_101A00E90);
      swift_endAccess();
      v53 += v54;
      --v52;
    }

    while (v52);
  }

  if (v83)
  {
    v25 = [objc_opt_self() defaultCenter];
    if (qword_1019F2588 == -1)
    {
LABEL_37:
      [v25 postNotificationName:qword_101AD86C0 object:v16];

      goto LABEL_39;
    }

LABEL_42:
    swift_once();
    goto LABEL_37;
  }

LABEL_39:
}

void sub_1007DA258(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&qword_101A00E90);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a2;
    v14 = sub_1007DA5F8(a1, v13);
    if (v14)
    {
      v15 = v14;
      v16 = type metadata accessor for CRLRealTimeEnter(0);
      (*(v10 + 16))(v12, a1 + *(v16 + 20), v9);
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      swift_beginAccess();
      sub_100BC24A4(v8, v12);
      swift_endAccess();
      if (v15 >= 0x100)
      {
        v17 = [objc_opt_self() defaultCenter];
        if (qword_1019F2588 != -1)
        {
          swift_once();
        }

        [v17 postNotificationName:qword_101AD86C0 object:v3];
      }
    }

    else
    {
      v19 = type metadata accessor for CRLRealTimeEnter(0);
      (*(v10 + 16))(v12, a1 + *(v19 + 20), v9);
      sub_1007E1650(a1, v8);
      (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
      swift_beginAccess();
      sub_100BC24A4(v8, v12);
      swift_endAccess();
    }
  }

  else
  {
    v18 = type metadata accessor for CRLRealTimeEnter(0);
    (*(v10 + 16))(v12, a1 + *(v18 + 20), v9);
    sub_1007E1650(a1, v8);
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    swift_beginAccess();
    sub_100BC24A4(v8, v12);
    swift_endAccess();
  }
}

uint64_t sub_1007DA5F8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [a2 participants];
  sub_100006370(0, &qword_1019F5520);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = a1;
  v11 = sub_101107CA8(sub_1007E1630, v21, v10);

  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = type metadata accessor for CRLRealTimeEnter(0);
  Date.init(timeIntervalSinceReferenceDate:)();
  v13 = *(v12 + 20);
  v14 = *(a1 + *(v12 + 28));
  v15 = sub_1007DA8A4(v11, (a1 + v13), v8, 0, v14);
  v17 = v16;

  if (v17)
  {
    if (sub_1007DFEBC())
    {

      swift_getKeyPath();
      swift_getKeyPath();
      v23 = v14;
      static Published.subscript.setter();

      (*(v5 + 8))(v8, v4);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }

LABEL_7:
    v19 = 0;
    return v19 | (v11 != 0);
  }

  (*(v5 + 8))(v8, v4);

  v19 = 256;
  return v19 | (v11 != 0);
}

uint64_t sub_1007DA840(id *a1, _BOOL8 *a2)
{
  v3 = [*a1 userIdentity];
  LOBYTE(a2) = sub_1007D4CE0(*a2);

  return a2 & 1;
}

uint64_t sub_1007DA8A4(void *a1, char *a2, uint64_t a3, int a4, int a5)
{
  v6 = v5;
  v68 = a5;
  v73 = a4;
  v74 = a3;
  v78 = a2;
  v8 = type metadata accessor for UUID();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v70 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = v67 - v11;
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.realTimeSync;
  v13 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v80 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v84 = v5;
  v15 = type metadata accessor for CRLCollaborationParticipantCollection(0);
  v75 = sub_1007E03E8(&qword_101A00E98, type metadata accessor for CRLCollaborationParticipantCollection);
  v76 = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  *(inited + 56) = &type metadata for String;
  v19 = sub_1000053B0();
  *(inited + 64) = v19;
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  v20 = static os_log_type_t.default.getter();
  v79 = v12;
  sub_100005404(v12, &_mh_execute_header, v20, "addPresence BEFORE\n%@\n", 22, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v21 = [a1 userIdentity];
  v22 = sub_1007DE930(v21);

  v77 = v19;
  if (v22)
  {
    v23 = swift_initStackObject();
    *(v23 + 16) = v80;
    v24 = v22;
    v25 = [v24 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    *(v23 + 32) = v26;
    v29 = v23 + 32;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v19;
    *(v23 + 40) = v28;
    v30 = static os_log_type_t.default.getter();
    v31 = v79;
    sub_100005404(v79, &_mh_execute_header, v30, "addPresence: found existing participant: \n%@\n", 45, 2, v23);
    v32 = v6;
  }

  else
  {
    v33 = objc_allocWithZone(type metadata accessor for CRLCollaborationParticipant(0));
    v34 = a1;
    v35 = sub_1007D4760(v34, v68 & 1);
    swift_beginAccess();
    v36 = v35;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v32 = v6;
    if (*((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v37 = swift_initStackObject();
    *(v37 + 16) = v80;
    v24 = v36;
    v38 = [v24 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    *(v37 + 32) = v39;
    v29 = v37 + 32;
    v42 = v77;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = v42;
    *(v37 + 40) = v41;
    v43 = static os_log_type_t.default.getter();
    v31 = v79;
    sub_100005404(v79, &_mh_execute_header, v43, "addPresence: did not find any existing participant, adding a new one: \n%@\n", 74, 2, v37);
  }

  swift_setDeallocating();
  sub_100005070(v29);
  v74 = sub_1007D52E0(v78, v74, v73 & 1);
  v45 = v44;

  v46 = v77;
  if ((v45 & 1) == 0)
  {
    swift_beginAccess();
    v47 = *(v32 + 24);
    v48 = *(v47 + 16);

    v67[1] = v13;
    if (v48 && (v49 = sub_1007C8208(v24), (v50 & 1) != 0))
    {
      v51 = v46;
      v52 = *(*(v47 + 56) + 8 * v49);
    }

    else
    {
      v51 = v46;
      v52 = _swiftEmptySetSingleton;
    }

    v83 = v52;
    v54 = v70;
    v53 = v71;
    v55 = v72;
    (*(v71 + 16))(v70, v78, v72);
    v56 = v69;
    sub_100E6AF38(v69, v54);
    (*(v53 + 8))(v56, v55);
    v57 = v83;
    swift_beginAccess();
    v58 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = *(v32 + 24);
    *(v32 + 24) = 0x8000000000000000;
    sub_100A9BD20(v57, v58, isUniquelyReferenced_nonNull_native);

    *(v32 + 24) = v81;
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v82 >> 62)
    {
      v60 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v60 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = v51;
    if (v60 && (sub_1007D6C84() & 1) == 0)
    {
      sub_1007DAFE0(v58);
    }

    v61 = [objc_opt_self() defaultCenter];
    if (qword_1019F15B0 != -1)
    {
      swift_once();
    }

    [v61 postNotificationName:qword_101AD6548 object:v58];

    v31 = v79;
  }

  v62 = swift_initStackObject();
  *(v62 + 16) = v80;
  v82 = v32;
  v63 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v62 + 56) = &type metadata for String;
  *(v62 + 64) = v46;
  *(v62 + 32) = v63;
  *(v62 + 40) = v64;
  v65 = static os_log_type_t.default.getter();
  sub_100005404(v31, &_mh_execute_header, v65, "addPresence AFTER\n%@\n", 21, 2, v62);

  swift_setDeallocating();
  sub_100005070(v62 + 32);
  return v74;
}

void sub_1007DAFE0(void *a1)
{
  v2 = v1;
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v34 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v6 = a1;
  v7 = [v6 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 56) = &type metadata for String;
  v11 = sub_1000053B0();
  *(inited + 64) = v11;
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v12, "Adding a pending active participant: %@", 39, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v13 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingRemovedParticipants;
  v14 = swift_beginAccess();
  v15 = *(v2 + v13);
  v36 = v6;
  __chkstk_darwin(v14);
  v33 = &v36;

  LOBYTE(v10) = sub_100C33540(sub_1007E18B0, v32, v15);

  if ((v10 & 1) == 0)
  {
    v27 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingAddedParticipants;
    v28 = swift_beginAccess();
    v29 = *(v2 + v27);
    v35 = v6;
    __chkstk_darwin(v28);
    v33 = &v35;

    v30 = sub_100C33540(sub_1007E18B0, v32, v29);

    if (v30)
    {
      goto LABEL_10;
    }

    swift_beginAccess();
    v31 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + v27) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v2 + v27) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_9:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      goto LABEL_10;
    }

LABEL_13:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_9;
  }

  swift_beginAccess();
  v16 = v6;
  v17 = sub_1007E0EEC((v2 + v13));

  v18 = *(v2 + v13);
  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19 >= v17)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19 < v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_6:
  sub_100678944(v17, v19);
  swift_endAccess();
  v20 = swift_initStackObject();
  *(v20 + 16) = v34;
  v21 = v16;
  v22 = [v21 description];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = v11;
  *(v20 + 32) = v23;
  *(v20 + 40) = v25;
  v26 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v26, "This participant was already pending removal so that operation was cancelled: %@", 80, 2, v20);
  swift_setDeallocating();
  sub_100005070(v20 + 32);
LABEL_10:
  sub_1007DB808();
}

void sub_1007DB3F4(void *a1)
{
  v2 = v1;
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v34 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v6 = a1;
  v7 = [v6 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 56) = &type metadata for String;
  v11 = sub_1000053B0();
  *(inited + 64) = v11;
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v12, "Removing a pending active participant: %@", 41, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v13 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingAddedParticipants;
  v14 = swift_beginAccess();
  v15 = *(v2 + v13);
  v36 = v6;
  __chkstk_darwin(v14);
  v33 = &v36;

  LOBYTE(v10) = sub_100C33540(sub_1007E18B0, v32, v15);

  if ((v10 & 1) == 0)
  {
    v27 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingRemovedParticipants;
    v28 = swift_beginAccess();
    v29 = *(v2 + v27);
    v35 = v6;
    __chkstk_darwin(v28);
    v33 = &v35;

    v30 = sub_100C33540(sub_1007E18B0, v32, v29);

    if (v30)
    {
      goto LABEL_10;
    }

    swift_beginAccess();
    v31 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + v27) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v2 + v27) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_9:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      goto LABEL_10;
    }

LABEL_13:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_9;
  }

  swift_beginAccess();
  v16 = v6;
  v17 = sub_1007E0EEC((v2 + v13));

  v18 = *(v2 + v13);
  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19 >= v17)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19 < v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_6:
  sub_100678944(v17, v19);
  swift_endAccess();
  v20 = swift_initStackObject();
  *(v20 + 16) = v34;
  v21 = v16;
  v22 = [v21 description];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = v11;
  *(v20 + 32) = v23;
  *(v20 + 40) = v25;
  v26 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v26, "This participant was already pending addition so that operation was cancelled: %@", 81, 2, v20);
  swift_setDeallocating();
  sub_100005070(v20 + 32);
LABEL_10:
  sub_1007DB808();
}

void sub_1007DB808()
{
  v1 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingParticipantChangeTimer;
  if (!*(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingParticipantChangeTimer))
  {
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.realTimeSync;
    v3 = static os_log_type_t.default.getter();
    sub_100005404(v2, &_mh_execute_header, v3, "Starting a timer to process pending changes.", 44, 2, _swiftEmptyArrayStorage);
    v4 = objc_opt_self();
    v8[4] = sub_1007E15F8;
    v8[5] = v0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = *"";
    v8[2] = sub_10068B39C;
    v8[3] = &unk_1018872D0;
    v5 = _Block_copy(v8);

    v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v5 block:5.0];
    _Block_release(v5);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
  }
}

uint64_t sub_1007DB97C()
{
  v1 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingAddedParticipants;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_31:
    v3 = &qword_101A00000;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = &qword_101A00000;
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  v4 = v3[373];
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    goto LABEL_36;
  }

  for (result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = _CocoaArrayWrapper.endIndex.getter())
  {
LABEL_5:
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v46 = static OS_os_log.realTimeSync;
    v7 = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v9 = *(v0 + v1);
    v47 = v1;
    v10 = sub_1005B981C(&unk_101A00BF8);
    *(inited + 56) = v10;
    v11 = sub_10001A2F8(&qword_101A00EA0, &unk_101A00BF8);
    *(inited + 64) = v11;
    *(inited + 32) = v9;
    v12 = v3[373];
    swift_beginAccess();
    v40 = v12;
    v13 = *(v0 + v12);
    *(inited + 96) = v10;
    *(inited + 104) = v11;
    *(inited + 72) = v13;

    v14 = static os_log_type_t.default.getter();
    v15 = v46;
    sub_100005404(v46, &_mh_execute_header, v14, "Processing pending additions: %@ and removals: %@", 49, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = v51;
    v43 = v7;
    v17 = swift_initStackObject();
    v45 = xmmword_10146C6B0;
    *(v17 + 16) = xmmword_10146C6B0;
    v41 = v11;
    v42 = v10;
    *(v17 + 56) = v10;
    *(v17 + 64) = v11;
    *(v17 + 32) = v16;
    v18 = v17 + 32;
    swift_bridgeObjectRetain_n();
    v19 = static os_log_type_t.default.getter();
    sub_100005404(v15, &_mh_execute_header, v19, "Active participants (before additions): %@", 42, 2, v17);
    swift_setDeallocating();
    v20 = v47;
    sub_100005070(v18);
    v21 = *(v0 + v20);
    v49 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v21 >> 62)
    {
      v1 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v1 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v0;

    v39 = v16;
    if (v1)
    {
      v22 = 0;
      v48 = v21 & 0xC000000000000001;
      v0 = v16;
      do
      {
        v23 = v22;
        while (1)
        {
          if (v48)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v23 >= *(v49 + 16))
            {
              goto LABEL_30;
            }

            v24 = *(v21 + 8 * v23 + 32);
          }

          v25 = v24;
          v22 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v50 = v24;
          __chkstk_darwin(v24);
          v38[2] = &v50;

          v26 = sub_100C33540(sub_1007E1208, v38, v0);

          if ((v26 & 1) == 0)
          {
            break;
          }

          ++v23;
          if (v22 == v1)
          {
            goto LABEL_25;
          }
        }

        v27 = v25;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v0 = v51;
      }

      while (v22 != v1);
    }

    else
    {
      v0 = v16;
    }

LABEL_25:

    v1 = swift_initStackObject();
    *(v1 + 16) = v45;
    v29 = v41;
    v28 = v42;
    *(v1 + 56) = v42;
    *(v1 + 64) = v29;
    *(v1 + 32) = v0;

    v30 = static os_log_type_t.default.getter();
    v3 = v46;
    sub_100005404(v46, &_mh_execute_header, v30, "Active participants (after additions): %@", 41, 2, v1);
    swift_setDeallocating();
    sub_100005070(v1 + 32);
    v31 = v44;

    v32 = sub_1007E1228(&v51, v31);

    v33 = v47;
    if (v51 >> 62)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
      if (v34 >= v32)
      {
LABEL_27:
        sub_100678944(v32, v34);
        v35 = swift_initStackObject();
        *(v35 + 16) = v45;
        v36 = v51;
        *(v35 + 56) = v28;
        *(v35 + 64) = v29;
        *(v35 + 32) = v36;
        swift_bridgeObjectRetain_n();
        v37 = static os_log_type_t.default.getter();
        sub_100005404(v3, &_mh_execute_header, v37, "Active participants (after removals): %@", 40, 2, v35);
        swift_setDeallocating();
        sub_100005070(v35 + 32);
        sub_1007D975C(v36);
        sub_1007DE30C(v39, v36);

        *(v31 + v40) = _swiftEmptyArrayStorage;

        *(v31 + v33) = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v34 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34 >= v32)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_36:
    ;
  }

  return result;
}

uint64_t sub_1007DBFD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A00E90);
  __chkstk_darwin(v4 - 8);
  KeyPath = &v53 - v5;
  v73 = type metadata accessor for UUID();
  v7 = *(v73 - 1);
  __chkstk_darwin(v73);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2288 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v10 = static OS_os_log.realTimeSync;
    v58 = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v57 = xmmword_10146C6B0;
    *(inited + 16) = xmmword_10146C6B0;
    v76 = v2;
    v12 = type metadata accessor for CRLCollaborationParticipantCollection(0);
    v13 = sub_1007E03E8(&qword_101A00E98, type metadata accessor for CRLCollaborationParticipantCollection);
    v56 = v12;
    v55 = v13;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    *(inited + 56) = &type metadata for String;
    v54 = sub_1000053B0();
    *(inited + 64) = v54;
    *(inited + 32) = v14;
    *(inited + 40) = v16;
    v17 = static os_log_type_t.default.getter();
    v59 = v10;
    sub_100005404(v10, &_mh_execute_header, v17, "removePresence BEFORE\n%@\n", 25, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    (*(v7 + 16))(v9, a1, v73);
    v18 = type metadata accessor for CRLRealTimeEnter(0);
    (*(*(v18 - 8) + 56))(KeyPath, 1, 1, v18);
    swift_beginAccess();
    sub_100BC24A4(KeyPath, v9);
    swift_endAccess();
    swift_beginAccess();
    v19 = *(v2 + 2);
    if (!(v19 >> 62))
    {
      KeyPath = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!KeyPath)
      {
        break;
      }

      goto LABEL_4;
    }

    v51 = *(v2 + 2);
    v52 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v51;
    KeyPath = v52;
    if (!v52)
    {
      break;
    }

LABEL_4:
    v66 = v2;
    v64 = v19 & 0xC000000000000001;
    v61 = v19 & 0xFFFFFFFFFFFFFF8;
    v60 = v19 + 32;
    v62 = v19;

    v20 = 0;
    v9 = 0;
    v7 = &unk_10147CDA8;
    v63 = KeyPath;
    v67 = a1;
    while (1)
    {
      if (v64)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v61 + 16))
        {
          goto LABEL_75;
        }

        v21 = *(v60 + 8 * v20);
      }

      v2 = v21;
      v22 = __OFADD__(v20, 1);
      v23 = v20 + 1;
      if (v22)
      {
        goto LABEL_73;
      }

      v65 = v23;
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v24 = v75;
      if (v75 >> 62)
      {
        break;
      }

      v25 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_13;
      }

LABEL_5:

      KeyPath = v63;
      v20 = v65;
      if (v65 == v63)
      {

        v2 = v66;
        goto LABEL_65;
      }
    }

    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (!v25)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (v25 < 1)
    {
      goto LABEL_74;
    }

    KeyPath = 0;
    v26 = v24 & 0xC000000000000001;
    v71 = v2;
    v70 = v24;
    v69 = v25;
    v68 = v24 & 0xC000000000000001;
    while (2)
    {
      if (v26)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v24 + 8 * KeyPath + 32);
      }

      v73 = v27;
      v28 = static UUID.== infix(_:_:)();
      if ((v28 & 1) == 0)
      {
        goto LABEL_16;
      }

      v72 = &v53;
      __chkstk_darwin(v28);
      *(&v53 - 2) = a1;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v29 = sub_100CCD124(sub_1007E1894, (&v53 - 4));
      v30 = v29;
      v31 = v75;
      v32 = v75 >> 62;
      if (!(v75 >> 62))
      {
        v7 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v33 = v7 - v29;
        if (v7 < v29)
        {
          goto LABEL_66;
        }

LABEL_23:
        if (v30 < 0)
        {
          goto LABEL_67;
        }

        if (v32)
        {
          if (_CocoaArrayWrapper.endIndex.getter() < v7)
          {
            goto LABEL_68;
          }
        }

        else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
        {
          goto LABEL_68;
        }

        a1 = -v33;
        if (__OFSUB__(0, v33))
        {
          goto LABEL_69;
        }

        if (v32)
        {
          v35 = _CocoaArrayWrapper.endIndex.getter();
          v2 = (v35 - v33);
          if (__OFADD__(v35, a1))
          {
            goto LABEL_70;
          }
        }

        else
        {
          v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v2 = (v34 - v33);
          if (__OFADD__(v34, a1))
          {
            goto LABEL_70;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v32)
          {
            v36 = v31 & 0xFFFFFFFFFFFFFF8;
            if (v2 > *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_40:
              v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v36 = v31 & 0xFFFFFFFFFFFFFF8;
            }

            v2 = (v36 + 32 + 8 * v30);
            type metadata accessor for CRLCollaboratorPresence();
            swift_arrayDestroy();
            if (v33)
            {
              v37 = v31 >> 62;
              if (v31 >> 62)
              {
                v44 = _CocoaArrayWrapper.endIndex.getter();
                v39 = v44 - v7;
                if (__OFSUB__(v44, v7))
                {
                  goto LABEL_71;
                }
              }

              else
              {
                v38 = *(v36 + 16);
                v39 = v38 - v7;
                if (__OFSUB__(v38, v7))
                {
                  goto LABEL_71;
                }
              }

              v40 = (v36 + 32 + 8 * v7);
              if (v7 == v30 && v2 < &v40[8 * v39])
              {
                if (!v37)
                {
                  goto LABEL_47;
                }

LABEL_49:
                v41 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                memmove((v36 + 32 + 8 * v30), v40, 8 * v39);
                if (v37)
                {
                  goto LABEL_49;
                }

LABEL_47:
                v41 = *(v36 + 16);
              }

              if (__OFADD__(v41, a1))
              {
                goto LABEL_72;
              }

              *(v36 + 16) = v41 + a1;
            }

            swift_getKeyPath();
            v7 = &unk_10147CDA8;
            swift_getKeyPath();
            v74 = v31;
            v2 = v71;
            v42 = v71;
            static Published.subscript.setter();
            sub_1007D40B4();
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            if (v75 >> 62)
            {
              v43 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v43 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            a1 = v67;
            v26 = v68;

            if (!v43)
            {
              sub_1007DB3F4(v42);
            }

            v24 = v70;
            v25 = v69;
LABEL_16:
            ++KeyPath;

            if (v25 == KeyPath)
            {
              goto LABEL_5;
            }

            continue;
          }
        }

        else if (!v32)
        {
          goto LABEL_40;
        }

        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_40;
      }

      break;
    }

    v7 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v7 - v30;
    if (v7 >= v30)
    {
      goto LABEL_23;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

LABEL_65:
  v45 = swift_initStackObject();
  *(v45 + 16) = v57;
  v75 = v2;
  v46 = dispatch thunk of CustomStringConvertible.description.getter();
  v47 = v54;
  *(v45 + 56) = &type metadata for String;
  *(v45 + 64) = v47;
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  v49 = static os_log_type_t.default.getter();
  sub_100005404(v59, &_mh_execute_header, v49, "removePresence AFTER\n%@\n", 24, 2, v45);
  swift_setDeallocating();
  return sub_100005070(v45 + 32);
}

size_t sub_1007DC930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v116 = a3;
  v128 = a2;
  v115 = type metadata accessor for Date();
  v117 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for Participant();
  v120 = *(v123 - 8);
  __chkstk_darwin(v123);
  v111 = v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v124 = v108 - v8;
  __chkstk_darwin(v9);
  v119 = v108 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v113 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v112 = v108 - v15;
  __chkstk_darwin(v16);
  v132 = v108 - v17;
  __chkstk_darwin(v18);
  v131 = (v108 - v19);
  v121 = a1;
  v20 = sub_1007D3098(a1);
  v118 = 0;
  swift_beginAccess();
  v134 = v3;
  KeyPath = *(v3 + 16);
  v140 = _swiftEmptyArrayStorage;
  if (KeyPath >> 62)
  {
    goto LABEL_129;
  }

  for (i = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v23 = 0;
      v138 = KeyPath & 0xC000000000000001;
      v137 = KeyPath & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v138)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v137 + 16))
          {
            goto LABEL_125;
          }

          v24 = *(KeyPath + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_124;
        }

        v27 = i;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v141 >> 62)
        {
          v29 = _CocoaArrayWrapper.endIndex.getter();

          if (!v29)
          {
LABEL_13:

            goto LABEL_6;
          }
        }

        else
        {
          v28 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v28)
          {
            goto LABEL_13;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_6:
        ++v23;
        i = v27;
        if (v26 == v27)
        {
          v30 = v140;
          goto LABEL_19;
        }
      }
    }

    v30 = _swiftEmptyArrayStorage;
LABEL_19:

    v141 = _swiftEmptyArrayStorage;
    v31 = v30;
    if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
      v31 = v30;
    }

    else
    {
      v32 = *(v30 + 16);
    }

    if (v32)
    {
      v33 = 0;
      v127 = v31 & 0xC000000000000001;
      v133 = _swiftEmptyArrayStorage;
      v122 = (v31 + 32);
      v34 = &off_1019FA000;
      v126 = v31;
      v125 = v32;
      while (1)
      {
        if (v127)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v33 >= *(v31 + 16))
          {
            goto LABEL_128;
          }

          v35 = v122[v33];
        }

        v36 = v35;
        v37 = __OFADD__(v33, 1);
        v38 = (v33 + 1);
        if (v37)
        {
          goto LABEL_126;
        }

        KeyPath = swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v39 = v140;
        v130 = v38;
        if (v140 >> 62)
        {
          v40 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v40 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v129 = v36;
        if (v40)
        {
          if (v40 < 1)
          {
            goto LABEL_127;
          }

          v41 = 0;
          v42 = v39 & 0xC000000000000001;
          v135 = v39 + 32;
          v138 = v39;
          v137 = v40;
          v136 = v39 & 0xC000000000000001;
          do
          {
            if (v42)
            {
              v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v43 = *(v135 + 8 * v41);
            }

            KeyPath = v43;
            if (*(v34[153] + v43) == 1)
            {
            }

            else
            {
              v44 = 0;
              v45 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
              v46 = v20[2];
              while (v46 != v44)
              {
                v47 = v44 + 1;
                sub_1007E03E8(&qword_1019F37C0, &type metadata accessor for UUID);
                v48 = dispatch thunk of static Equatable.== infix(_:_:)();
                v44 = v47;
                if (v48)
                {

                  v34 = &off_1019FA000;
                  v40 = v137;
                  goto LABEL_48;
                }
              }

              sub_1007DBFD8(KeyPath + v45);
              KeyPath = KeyPath;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v40 = v137;
              if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v133 = v141;
              v34 = &off_1019FA000;
LABEL_48:
              v42 = v136;
            }

            ++v41;
          }

          while (v41 != v40);
        }

        v33 = v130;
        v31 = v126;
        if (v130 == v125)
        {
          goto LABEL_51;
        }
      }
    }

    v133 = _swiftEmptyArrayStorage;
LABEL_51:

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v49 = v118;
    v50 = sub_1007D345C(v140);

    if (v50 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v118 = v49;
    if (!v51)
    {

      v20 = _swiftEmptyArrayStorage;
      goto LABEL_64;
    }

    v137 = v50;
    v140 = _swiftEmptyArrayStorage;
    result = sub_100776524(0, v51 & ~(v51 >> 63), 0);
    if (v51 < 0)
    {
      break;
    }

    v53 = 0;
    v20 = v140;
    v54 = v137;
    v138 = v137 & 0xC000000000000001;
    v55 = (v12 + 16);
    v56 = v51;
    do
    {
      if (v138)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*v55)(v131, v57 + OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID, v11);
        v54 = v137;
        swift_unknownObjectRelease();
      }

      else
      {
        (*v55)(v131, *(v54 + 8 * v53 + 32) + OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID, v11);
      }

      v140 = v20;
      v59 = v20[2];
      v58 = v20[3];
      if (v59 >= v58 >> 1)
      {
        sub_100776524(v58 > 1, v59 + 1, 1);
        v54 = v137;
        v20 = v140;
      }

      ++v53;
      v20[2] = v59 + 1;
      (*(v12 + 32))(v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v59, v131, v11);
    }

    while (v56 != v53);

LABEL_64:
    v60 = (v121 + 56);
    KeyPath = 1 << *(v121 + 32);
    v61 = -1;
    if (KeyPath < 64)
    {
      v61 = ~(-1 << KeyPath);
    }

    v62 = v61 & *(v121 + 56);

    swift_beginAccess();
    v63 = 0;
    v64 = (KeyPath + 63) >> 6;
    v130 = (v120 + 16);
    v127 = v120 + 32;
    v131 = (v12 + 8);
    v65 = v128 & 0xFFFFFFFFFFFFFF8;
    v138 = v128 & 0xFFFFFFFFFFFFFF8;
    if (v128 < 0)
    {
      v65 = v128;
    }

    v108[1] = v65;
    v137 = v128 & 0xC000000000000001;
    v110 = (v117 + 8);
    v125 = (v120 + 8);
    v109 = xmmword_10146BDE0;
    v129 = v60;
    v126 = (KeyPath + 63) >> 6;
    if (v62)
    {
      goto LABEL_73;
    }

    while (1)
    {
      v66 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v66 >= v64)
      {

        return v133;
      }

      v62 = *(v60 + v66);
      ++v63;
      if (v62)
      {
        v63 = v66;
LABEL_73:
        while (2)
        {
          v136 = (v62 - 1) & v62;
          v135 = v63;
          v67 = v120;
          v68 = *(v121 + 48) + *(v120 + 72) * (__clz(__rbit64(v62)) | (v63 << 6));
          v69 = *(v120 + 16);
          v70 = v119;
          v71 = v123;
          v69(v119, v68, v123);
          (*(v67 + 32))(v124, v70, v71);
          Participant.id.getter();
          v72 = 0;
          v73 = v20[2];
          while (v73 != v72)
          {
            v74 = v72 + 1;
            KeyPath = v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v72;
            sub_1007E03E8(&qword_1019F37C0, &type metadata accessor for UUID);
            v75 = dispatch thunk of static Equatable.== infix(_:_:)();
            v72 = v74;
            if (v75)
            {
              (*v131)(v132, v11);
              goto LABEL_77;
            }
          }

          v122 = *v131;
          (v122)(v132, v11);
          KeyPath = objc_opt_self();
          Participant.handle.getter();
          v77 = String._bridgeToObjectiveC()();

          v78 = [KeyPath normalizedHandleWithDestinationID:v77];

          if (!v78)
          {
            if (qword_1019F2288 != -1)
            {
              swift_once();
            }

            v122 = static OS_os_log.realTimeSync;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = v109;
            v76 = v124;
            v85 = Participant.handle.getter();
            v87 = v86;
            *(inited + 56) = &type metadata for String;
            v88 = sub_1000053B0();
            *(inited + 64) = v88;
            *(inited + 32) = v85;
            *(inited + 40) = v87;
            KeyPath = v123;
            v69(v111, v76, v123);
            v89 = String.init<A>(reflecting:)();
            *(inited + 96) = &type metadata for String;
            *(inited + 104) = v88;
            *(inited + 72) = v89;
            *(inited + 80) = v90;
            v91 = static os_log_type_t.error.getter();
            sub_100005404(v122, &_mh_execute_header, v91, "Cannot generate TUHandle from Participant's handle: %@, participant: %@", 71, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            goto LABEL_113;
          }

          v139 = _swiftEmptyArrayStorage;
          if (v128 >> 62)
          {
            v79 = _CocoaArrayWrapper.endIndex.getter();
            if (v79)
            {
LABEL_81:
              v80 = 0;
              while (1)
              {
                if (v137)
                {
                  v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v80 >= *(v138 + 16))
                  {
                    goto LABEL_123;
                  }

                  v81 = *(v128 + 8 * v80 + 32);
                }

                v82 = v81;
                v83 = v80 + 1;
                if (__OFADD__(v80, 1))
                {
                  goto LABEL_122;
                }

                if (sub_1007D8DE8(v78))
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  KeyPath = v20;
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                }

                else
                {
                }

                ++v80;
                if (v83 == v79)
                {
                  result = v139;
                  if ((v139 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_105;
                }
              }
            }
          }

          else
          {
            v79 = *(v138 + 16);
            if (v79)
            {
              goto LABEL_81;
            }
          }

          result = _swiftEmptyArrayStorage;
          if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
          {
LABEL_98:
            if ((result & 0x4000000000000000) == 0)
            {
              v92 = *(result + 16);
              if (v92 > 1)
              {
                goto LABEL_100;
              }

              goto LABEL_107;
            }
          }

LABEL_105:
          v100 = result;
          if (_CocoaArrayWrapper.endIndex.getter() > 1)
          {
LABEL_100:
            v117 = v78;

            v94 = *(v134 + 24);
            __chkstk_darwin(v93);
            v108[-2] = v124;

            v95 = v118;
            sub_1010AA640(sub_1007E11E8, &v108[-4], v94);
            v97 = v96;
            v118 = v95;

            if (!v97)
            {
              if (qword_1019F2288 != -1)
              {
                swift_once();
              }

              KeyPath = static OS_os_log.realTimeSync;
              v99 = static os_log_type_t.error.getter();
              sub_100005404(KeyPath, &_mh_execute_header, v99, "Found multiple CKShare.Participants that matched the Participant's handle, and we were unable to find which one to use.", 119, 2, _swiftEmptyArrayStorage);

LABEL_77:
              v76 = v124;
              goto LABEL_113;
            }

            v98 = *&v97[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant];

            goto LABEL_112;
          }

          v92 = _CocoaArrayWrapper.endIndex.getter();
          result = v100;
LABEL_107:
          v60 = v129;
          v62 = v136;
          if (!v92)
          {

            if (qword_1019F2288 != -1)
            {
              swift_once();
            }

            KeyPath = static OS_os_log.realTimeSync;
            v107 = static os_log_type_t.error.getter();
            sub_100005404(KeyPath, &_mh_execute_header, v107, "Unable to find a CKShare.Participant in our session's participants that matched the Participant's handle", 104, 2, _swiftEmptyArrayStorage);

            v76 = v124;
            goto LABEL_114;
          }

          v117 = v78;
          if ((result & 0xC000000000000001) != 0)
          {
            v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(result + 16))
            {
              goto LABEL_133;
            }

            v101 = *(result + 32);
          }

          v98 = v101;

LABEL_112:
          v102 = v112;
          v76 = v124;
          Participant.id.getter();
          v103 = v114;
          Date.init()();
          v104 = v113;
          Participant.id.getter();
          v105 = static UUID.== infix(_:_:)();
          KeyPath = v122;
          (v122)(v104, v11);
          v106 = sub_1007DA8A4(v98, v102, v103, v105 & 1, 1);

          (*v110)(v103, v115);
          (KeyPath)(v102, v11);
LABEL_113:
          v60 = v129;
          v62 = v136;
LABEL_114:
          v63 = v135;
          (*v125)(v76, v123);
          v64 = v126;
          if (v62)
          {
            continue;
          }

          break;
        }
      }
    }

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
    ;
  }

  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_1007DDC50(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  Participant.id.getter();
  v7 = sub_10079C3B4(v5, v6);
  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

void sub_1007DDD40(void *a1)
{
  if (a1)
  {
    v9 = a1;
    v2 = [v9 participants];
    sub_100006370(0, &qword_1019F5520);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v10 = v6;
        sub_1007DDEB0(&v10, v1);

        ++v5;
        if (v8 == i)
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
  }
}

uint64_t sub_1007DDEB0(void **a1, uint64_t a2)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = a2;
  static Published.subscript.getter();

  if (v24 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v24 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_100006370(0, &qword_1019F54D0);
      if (static NSObject.== infix(_:_:)())
      {

        [v3 permission];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.setter();
        goto LABEL_17;
      }

      ++v5;
      if (v8 == i)
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

LABEL_17:
  v9 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingAddedParticipants;
  swift_beginAccess();
  v10 = *(a2 + v9);
  if (v10 >> 62)
  {
    goto LABEL_50;
  }

  for (j = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
  {

    if (j)
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_100006370(0, &qword_1019F54D0);
        if (static NSObject.== infix(_:_:)())
        {

          [v3 permission];
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.setter();
          goto LABEL_31;
        }

        ++v12;
        if (v15 == j)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_29:

LABEL_31:
    v16 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingRemovedParticipants;
    swift_beginAccess();
    v17 = *(v23 + v16);
    v10 = v17 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v10)
    {
      break;
    }

    for (k = 0; ; ++k)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (k >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v19 = *(v17 + 8 * k + 32);
      }

      v20 = v19;
      v21 = k + 1;
      if (__OFADD__(k, 1))
      {
        break;
      }

      sub_100006370(0, &qword_1019F54D0);
      if (static NSObject.== infix(_:_:)())
      {

        [v3 permission];
        swift_getKeyPath();
        swift_getKeyPath();
        return static Published.subscript.setter();
      }

      if (v21 == v10)
      {
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }
}

void sub_1007DE30C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for CRLCollaborationParticipantCollection(0);
  sub_1007E03E8(&unk_101A00E58, type metadata accessor for CRLCollaborationParticipantCollection);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.realTimeSync;
  v7 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v7, "Posting notification of active participant changes.", 51, 2, _swiftEmptyArrayStorage);
  v8 = [objc_opt_self() defaultCenter];
  sub_1005B981C(&qword_101A00E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  if (qword_1019F15B8 != -1)
  {
    swift_once();
  }

  v10 = qword_101AD6550;
  *(inited + 32) = qword_101AD6550;
  *(inited + 40) = a1;
  v11 = qword_1019F15C0;
  v12 = v10;

  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_101AD6558;
  *(inited + 48) = qword_101AD6558;
  *(inited + 56) = a2;
  v14 = v13;

  v15 = sub_100BD6760(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A00E80);
  swift_arrayDestroy();
  if (qword_1019F15A8 != -1)
  {
    swift_once();
  }

  v16 = qword_101AD6540;
  sub_1010A882C(v15);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 postNotificationName:v16 object:v3 userInfo:isa];
}

char *sub_1007DE5D0()
{
  result = sub_1007DE720();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v7 >> 62)
    {
      goto LABEL_16;
    }

    v2 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      while (1)
      {
        v3 = 0;
        while ((v7 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v6 = v4;

            return v6;
          }

LABEL_8:
          if (v4[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_isLocalParticipant])
          {
            goto LABEL_14;
          }

          ++v3;
          if (v5 == v2)
          {
            goto LABEL_17;
          }
        }

        if (v3 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        if (!v2)
        {
          goto LABEL_17;
        }
      }

      v4 = *(v7 + 8 * v3 + 32);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:

    return 0;
  }

  return result;
}

char *sub_1007DE720()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      v10 = [*&v5[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant] userIdentity];
      v11 = [v10 userRecordID];

      if (v11)
      {
        v12 = [v11 recordName];

        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (v7 == v13 && v9 == v15)
        {

LABEL_21:

          return v5;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_19:

  return 0;
}

unint64_t sub_1007DE930(_BOOL8 a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v38 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [*&v6[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant] userIdentity];
      v10 = sub_1007D4CE0(a1);

      if (v10)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v11 = v38;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_16:

  if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 1)
    {
      goto LABEL_19;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *(v11 + 16);
    if (result > 1)
    {
LABEL_19:

      v13 = objc_opt_self();
      v14 = [v13 _atomicIncrementAssertCount];
      v38 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v38);
      StaticString.description.getter();
      v15 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v16 = String._bridgeToObjectiveC()();

      v17 = [v16 lastPathComponent];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v21 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v14;
      v23 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v23;
      v24 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v24;
      *(inited + 72) = v15;
      *(inited + 136) = &type metadata for String;
      v25 = sub_1000053B0();
      *(inited + 112) = v18;
      *(inited + 120) = v20;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v25;
      *(inited + 152) = 878;
      v26 = v38;
      *(inited + 216) = v23;
      *(inited + 224) = v24;
      *(inited + 192) = v26;
      v27 = v15;
      v28 = v26;
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v30, "Multiple participants matching given user identity", 50, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v31 = swift_allocObject();
      v31[2] = 8;
      v31[3] = 0;
      v31[4] = 0;
      v31[5] = 0;
      v32 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      [v13 handleFailureInFunction:v33 file:v34 lineNumber:878 isFatal:0 format:v35 args:v32];

      return 0;
    }
  }

  if (!result)
  {

    return 0;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_31;
  }

  if (*(v11 + 16))
  {
    v36 = *(v11 + 32);
LABEL_31:
    v37 = v36;

    return v37;
  }

  __break(1u);
  return result;
}

void sub_1007DEE9C(int a1@<W1>, NSString a2@<X8>)
{
  v3 = v2;
  LODWORD(v4) = a1;
  v6 = type metadata accessor for IndexSet();
  v113 = *(v6 - 1);
  __chkstk_darwin(v6);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  inited = &v95 - v10;
  v12 = sub_1007DFEBC();
  if (!v12)
  {
    goto LABEL_16;
  }

  v14 = v12;
  v15 = v13;
  if (v4 > 9)
  {

LABEL_16:
    v28 = sub_1005B981C(&qword_101A00E50);
    v29 = *(*(v28 - 8) + 56);

    v29(a2, 1, 1, v28);
    return;
  }

  v4 = v4;
  v111 = *&v13[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex];
  if (v111 != v4)
  {
    *&v13[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex] = v4;
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong updateCachedCollaboratorColors];
  }

  v112 = v15;
  v17 = sub_1007DE5D0();
  if (!v17)
  {
    v30 = sub_1005B981C(&qword_101A00E50);
    (*(*(v30 - 8) + 56))(a2, 1, 1, v30);

    goto LABEL_21;
  }

  v18 = v17;
  v19 = v112;
  v109 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_joinTime;
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    v31 = sub_1005B981C(&qword_101A00E50);
    (*(*(v31 - 8) + 56))(a2, 1, 1, v31);

LABEL_21:
    if (v111 != v4)
    {
      type metadata accessor for CRLCollaborationParticipantCollection(0);
      sub_1007E03E8(&unk_101A00E58, type metadata accessor for CRLCollaborationParticipantCollection);
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();
    }

    return;
  }

  v20 = sub_1007D6C84();
  v21 = *&v18[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex];
  v106 = v4;
  if (v20)
  {
    if (v21 != v4)
    {
      *&v18[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex] = v4;
      v22 = swift_unknownObjectWeakLoadStrong();
      v23 = v4;
      if (v22)
      {
        v24 = v22;
        [v22 updateCachedCollaboratorColors];

        v23 = v4;
      }

      goto LABEL_11;
    }

LABEL_65:

    goto LABEL_66;
  }

  if (v21 != v4)
  {
    goto LABEL_65;
  }

  v97 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex;
  v32 = sub_1007DE720();
  if (!v32)
  {
    goto LABEL_65;
  }

  v33 = v32;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v98 = v33;
  static Published.subscript.getter();

  v23 = v115;
  if (v115 >> 62)
  {
    goto LABEL_73;
  }

  v4 = v106;
  if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_74:

    goto LABEL_66;
  }

LABEL_29:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_77;
    }

    v34 = *(v23 + 32);
  }

  v96 = v34;

  sub_100006370(0, &qword_1019F54D0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_65;
  }

  swift_beginAccess();
  v23 = *(v3 + 16);

  IndexSet.init()();
  v95 = a2;
  v100 = v18;
  if (!(v23 >> 62))
  {
    v35 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a2 = v113;
    if (!v35)
    {
      goto LABEL_78;
    }

    goto LABEL_35;
  }

LABEL_77:
  v35 = _CocoaArrayWrapper.endIndex.getter();
  a2 = v113;
  if (v35)
  {
LABEL_35:
    v18 = 0;
    v104 = v23 & 0xFFFFFFFFFFFFFF8;
    v105 = v23 & 0xC000000000000001;
    v102 = v23;
    v103 = CKCurrentUserDefaultName;
    v99 = v14;
    v101 = v35;
    do
    {
      if (v105)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v104 + 16))
        {
          goto LABEL_70;
        }

        v36 = *(v23 + 8 * v18 + 32);
      }

      v37 = v36;
      v108 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        v52 = _CocoaArrayWrapper.endIndex.getter();
        v4 = v106;
        if (!v52)
        {
          goto LABEL_74;
        }

        goto LABEL_29;
      }

      v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
      KeyPath = v37;
      v40 = [*&v37[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant] userIdentity];
      v41 = [v40 userRecordID];

      if (v41)
      {
        v42 = [v41 recordName];

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        if (v107 == v43 && v39 == v45)
        {

          v14 = v99;
          goto LABEL_59;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v14 = v99;
        if (v47)
        {

LABEL_59:
          a2 = v113;
          goto LABEL_37;
        }
      }

      else
      {
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v23 = v114;
      a2 = v113;
      if (v114 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_36:

          goto LABEL_37;
        }
      }

      else if (!*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      if ((v23 & 0xC000000000000001) != 0)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v48 = *(v23 + 32);
      }

      v49 = v48;

      if (static Date.< infix(_:_:)())
      {
        IndexSet.insert(_:)(*&v49[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex]);
      }

LABEL_37:
      v23 = v102;
      ++v18;
    }

    while (v108 != v101);
  }

LABEL_78:

  (*(a2 + 4))(inited, v8, v6);
  v53 = v98;
  v54 = *&v98[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant];
  v23 = sub_1009A2624(v54, inited);

  v18 = v100;
  if (*&v100[v97] != v23)
  {
    *&v100[v97] = v23;
    v55 = swift_unknownObjectWeakLoadStrong();
    [v55 updateCachedCollaboratorColors];

    (*(a2 + 1))(inited, v6);
    a2 = v95;
LABEL_11:
    v100 = v18;
    v8 = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 1) = xmmword_10146C6B0;
    *(inited + 4) = v23;
    v25 = (inited + 32);
    *(inited + 7) = &type metadata for Int;
    *(inited + 8) = &protocol witness table for Int;
    if ((v23 & 0x8000000000000000) == 0)
    {

      swift_setDeallocating();
      sub_100005070(v25);
      v26 = sub_1005B981C(&qword_101A00E50);
      v18 = *(v26 + 48);
      v14 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
      v27 = type metadata accessor for UUID();
      v6 = v100;
      (*(*(v27 - 8) + 16))(a2, &v100[v14], v27);

      if (HIDWORD(v23))
      {
        goto LABEL_72;
      }

      *&v18[a2] = v23;
      (*(*(v26 - 8) + 56))(a2, 0, 1, v26);
      if (v111 == v106)
      {
        return;
      }

LABEL_67:
      type metadata accessor for CRLCollaborationParticipantCollection(0);
      sub_1007E03E8(&unk_101A00E58, type metadata accessor for CRLCollaborationParticipantCollection);
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      return;
    }

    v99 = v14;
    v108 = objc_opt_self();
    LODWORD(v14) = [v108 _atomicIncrementAssertCount];
    v114 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v114);
    StaticString.description.getter();
    v113 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    v57 = [v56 lastPathComponent];

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v59;
    KeyPath = v58;

    if (qword_1019F20A0 != -1)
    {
LABEL_111:
      swift_once();
    }

    v111 = static OS_os_log.crlAssert;
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_10146CA70;
    *(v60 + 56) = &type metadata for Int32;
    *(v60 + 64) = &protocol witness table for Int32;
    *(v60 + 32) = v14;
    v61 = sub_100006370(0, &qword_1019F4D30);
    *(v60 + 96) = v61;
    v62 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(v60 + 104) = v62;
    v63 = v113;
    *(v60 + 72) = v113;
    *(v60 + 136) = &type metadata for String;
    v64 = sub_1000053B0();
    v65 = v109;
    *(v60 + 112) = KeyPath;
    *(v60 + 120) = v65;
    *(v60 + 176) = &type metadata for UInt;
    *(v60 + 184) = &protocol witness table for UInt;
    *(v60 + 144) = v64;
    *(v60 + 152) = 954;
    v66 = v114;
    *(v60 + 216) = v61;
    *(v60 + 224) = v62;
    *(v60 + 192) = v66;
    v67 = v63;
    v68 = v66;
    v69 = static os_log_type_t.error.getter();
    v70 = v111;
    sub_100005404(v111, &_mh_execute_header, v69, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v60);
    swift_setDeallocating();
    KeyPath = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v71 = static os_log_type_t.error.getter();
    sub_100005404(v70, &_mh_execute_header, v71, "Bad color index: %d", 19, 2, inited);

    type metadata accessor for __VaListBuilder();
    v72 = swift_allocObject();
    v72[2] = 8;
    v72[3] = 0;
    v73 = v72 + 3;
    v72[4] = 0;
    v72[5] = 0;
    v113 = v72;
    v111 = *(inited + 2);
    if (!v111)
    {
LABEL_83:
      v73 = v113;
      v74 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v75 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v76 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v77 = String._bridgeToObjectiveC()();

      [v108 handleFailureInFunction:v75 file:v76 lineNumber:954 isFatal:0 format:v77 args:v74];

      swift_setDeallocating();
      swift_arrayDestroy();

      v78 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
      v79 = type metadata accessor for UUID();
      v80 = v100;
      (*(*(v79 - 8) + 16))(a2, &v100[v78], v79);

      __break(1u);
    }

    v81 = 0;
    while (1)
    {
      sub_100020E58((v25 + 40 * v81), *(v25 + 40 * v81 + 24));
      v82 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v14 = *v73;
      v83 = *(v82 + 16);
      v84 = __OFADD__(*v73, v83);
      v85 = *v73 + v83;
      if (v84)
      {
        goto LABEL_108;
      }

      v86 = v82;
      v87 = v113[4];
      if (v87 >= v85)
      {
        goto LABEL_100;
      }

      if (v87 + 0x4000000000000000 < 0)
      {
        goto LABEL_109;
      }

      v88 = v113[5];
      if (2 * v87 > v85)
      {
        v85 = 2 * v87;
      }

      v113[4] = v85;
      if ((v85 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_110;
      }

      v89 = swift_slowAlloc();
      v113[5] = v89;
      if (v88)
      {
        break;
      }

LABEL_101:
      if (!v89)
      {
        __break(1u);
        return;
      }

      v91 = *(v86 + 16);
      if (v91)
      {
        v92 = (v86 + 32);
        v93 = *v73;
        while (1)
        {
          v94 = *v92++;
          *&v89[8 * v93] = v94;
          v93 = *v73 + 1;
          if (__OFADD__(*v73, 1))
          {
            break;
          }

          *v73 = v93;
          if (!--v91)
          {
            goto LABEL_85;
          }
        }

        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

LABEL_85:

      if (++v81 == v111)
      {
        goto LABEL_83;
      }
    }

    if (v89 != v88 || v89 >= &v88[8 * v14])
    {
      memmove(v89, v88, 8 * v14);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_100:
    v89 = v113[5];
    goto LABEL_101;
  }

  (*(a2 + 1))(inited, v6);

  a2 = v95;
  v4 = v106;
LABEL_66:
  v50 = v111;
  v51 = sub_1005B981C(&qword_101A00E50);
  (*(*(v51 - 8) + 56))(a2, 1, 1, v51);
  if (v50 != v4)
  {
    goto LABEL_67;
  }
}

uint64_t sub_1007DFEBC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_29:
    v11 = v1;
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v11;
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  v14 = v1 & 0xC000000000000001;
  v12 = v1 + 32;
  v13 = v1 & 0xFFFFFFFFFFFFFF8;

  v4 = 0;
  while (1)
  {
    if (v14)
    {
      v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }

    if (v4 >= *(v13 + 16))
    {
      break;
    }

    v1 = *(v12 + 8 * v4);
LABEL_9:
    v5 = v1;
    if (__OFADD__(v4++, 1))
    {
      goto LABEL_28;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v15 >> 62)
    {
      v1 = _CocoaArrayWrapper.endIndex.getter();
      v7 = v1;
      if (v1)
      {
LABEL_12:
        v8 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v1 = *(v15 + 8 * v8 + 32);
          }

          v9 = v1;
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (static UUID.== infix(_:_:)())
          {

            return v5;
          }

          ++v8;
          if (v10 == v7)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      v7 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_12;
      }
    }

LABEL_4:

    if (v4 == v2)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1007E0100()
{
  v1 = sub_1005B981C(&qword_101A00E48);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  *(v0 + 24) = sub_100BD5314(_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection__activeParticipants;
  v7[1] = _swiftEmptyArrayStorage;
  sub_1005B981C(&unk_101A00BF8);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v5, v4, v1);
  *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingRealTimeEnters) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingAddedParticipants) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingRemovedParticipants) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingParticipantChangeTimer) = 0;
  return v0;
}

uint64_t sub_1007E0254@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRLCollaborationParticipantCollection(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1007E0294()
{
  swift_beginAccess();
  type metadata accessor for CRLCollaborationParticipant(0);

  v0 = Array.description.getter();
  v2 = v1;

  v3._countAndFlagsBits = v0;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 125;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  return 123;
}

uint64_t sub_1007E03E8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1007E0430()
{
  v0 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = type metadata accessor for PersonNameComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(CNMutableContact) init];
  PersonNameComponents.namePrefix.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();

    [v7 setNamePrefix:v9];
  }

  PersonNameComponents.givenName.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();

    [v7 setGivenName:v11];
  }

  PersonNameComponents.middleName.getter();
  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();

    [v7 setMiddleName:v13];
  }

  PersonNameComponents.familyName.getter();
  if (v14)
  {
    v15 = String._bridgeToObjectiveC()();

    [v7 setFamilyName:v15];
  }

  PersonNameComponents.nameSuffix.getter();
  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();

    [v7 setNameSuffix:v17];
  }

  PersonNameComponents.nickname.getter();
  if (v18)
  {
    v19 = String._bridgeToObjectiveC()();

    [v7 setNickname:v19];
  }

  PersonNameComponents.phoneticRepresentation.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000CAAC(v2, &qword_101A0DE80);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    PersonNameComponents.givenName.getter();
    if (v20)
    {
      v21 = String._bridgeToObjectiveC()();

      [v7 setPhoneticGivenName:v21];
    }

    PersonNameComponents.middleName.getter();
    if (v22)
    {
      v23 = String._bridgeToObjectiveC()();

      [v7 setPhoneticMiddleName:v23];
    }

    PersonNameComponents.familyName.getter();
    if (v24)
    {
      v25 = String._bridgeToObjectiveC()();

      [v7 setPhoneticFamilyName:v25];
    }

    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

id sub_1007E07B4(void *a1)
{
  v2 = type metadata accessor for PersonNameComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A0DE80);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - v11;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = [a1 nameComponents];
  if (v15)
  {
    v16 = v15;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 56))(v12, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v12, 1, 1, v2);
  }

  sub_1007E1718(v12, v14);
  sub_10000BE14(v14, v9, &qword_101A0DE80);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_10000CAAC(v9, &qword_101A0DE80);
    v17 = [objc_allocWithZone(CNMutableContact) init];
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    v17 = sub_1007E0430();
    (*(v3 + 8))(v5, v2);
  }

  v18 = [a1 lookupInfo];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 emailAddress];
    if (v20)
    {
      isa = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = String.count.getter();

      if (v22 >= 1)
      {
        sub_1005B981C(&unk_1019F4D60);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_101465920;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = objc_allocWithZone(CNLabeledValue);
        v25 = String._bridgeToObjectiveC()();

        v26 = [v24 initWithLabel:v25 value:isa];

        *(v23 + 32) = v26;
        sub_1005B981C(qword_101A00EC8);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v17 setEmailAddresses:isa];
      }
    }

    v27 = [v19 phoneNumber];
    if (!v27)
    {
      sub_10000CAAC(v14, &qword_101A0DE80);

      return v17;
    }

    v28 = v27;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String.count.getter();

    if (v29 <= 0)
    {
      sub_10000CAAC(v14, &qword_101A0DE80);

      return v17;
    }

    v30 = [objc_allocWithZone(CNPhoneNumber) initWithStringValue:v28];

    sub_1005B981C(&unk_1019F4D60);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_101465920;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = objc_allocWithZone(CNLabeledValue);
    v33 = v30;
    v34 = String._bridgeToObjectiveC()();

    v35 = [v32 initWithLabel:v34 value:v33];

    *(v31 + 32) = v35;
    sub_1005B981C(qword_101A00EC8);
    v36 = Array._bridgeToObjectiveC()().super.isa;

    [v17 setPhoneNumbers:v36];
  }

  sub_10000CAAC(v14, &qword_101A0DE80);
  return v17;
}

uint64_t sub_1007E0D10(uint64_t a1)
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

  return sub_1007D6668(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1007E0DD8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_100006370(0, &qword_1019F54D0);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1007E0EEC(unint64_t *a1)
{
  v3 = *a1;
  result = sub_1007E0DD8(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_1019F54D0;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_100006370(0, v8);
    v12 = static NSObject.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_10113E260(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_10113E260(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1007E117C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_1007E1228(unint64_t *a1, uint64_t a2)
{
  v32 = a2;
  v2 = *a1;
  v28 = *a1 >> 62;
  v29 = a1;
  if (v28)
  {
    goto LABEL_63;
  }

  v30 = v2 & 0xFFFFFFFFFFFFFF8;
  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v31 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingRemovedParticipants;
  swift_beginAccess();
  v4 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v30 + 16))
      {
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
        __break(1u);
        goto LABEL_59;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = &v28;
    v8 = *(v32 + v31);
    v33 = v5;
    __chkstk_darwin(v5);
    v27 = &v33;

    v9 = sub_100C33540(sub_1007E18B0, v26, v8);

    v10 = (v4 + 1);
    v11 = __OFADD__(v4, 1);
    if (v9)
    {
      if (v11)
      {
        __break(1u);
        goto LABEL_19;
      }

      while (1)
      {
        if (v2 >> 62)
        {
          if (v10 == _CocoaArrayWrapper.endIndex.getter())
          {
            return v4;
          }
        }

        else if (v10 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v4;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_55;
          }

          if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v15 = *(v2 + 8 * v10 + 32);
        }

        v16 = v15;
        v17 = *(v32 + v31);
        v33 = v15;
        __chkstk_darwin(v15);
        v27 = &v33;

        v18 = sub_100C33540(sub_1007E18B0, v26, v17);

        if ((v18 & 1) == 0)
        {
          if (v4 != v10)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_36:
              v22 = v19;
              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_10113E260(v2);
                v23 = (v2 >> 62) & 1;
              }

              else
              {
                LODWORD(v23) = 0;
              }

              v7 = (v2 & 0xFFFFFFFFFFFFFF8);
              v24 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v22;

              if ((v2 & 0x8000000000000000) != 0 || v23)
              {
                v2 = sub_10113E260(v2);
                v7 = (v2 & 0xFFFFFFFFFFFFFF8);
                if ((v10 & 0x8000000000000000) != 0)
                {
LABEL_50:
                  __break(1u);
                  return _CocoaArrayWrapper.endIndex.getter();
                }
              }

              else if ((v10 & 0x8000000000000000) != 0)
              {
                goto LABEL_50;
              }

              if (v10 >= v7[2])
              {
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

LABEL_19:
              v12 = &v7[v10];
              v13 = v12[4];
              v12[4] = v3;

              *v29 = v2;
              goto LABEL_20;
            }

            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_60;
            }

            v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v4 >= v20)
            {
LABEL_61:
              __break(1u);
            }

            else if (v10 < v20)
            {
              v21 = *(v2 + 32 + 8 * v10);
              v3 = *(v2 + 32 + 8 * v4);
              v19 = v21;
              goto LABEL_36;
            }

            __break(1u);
LABEL_63:
            v30 = v2 & 0xFFFFFFFFFFFFFF8;
            v3 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }

LABEL_20:
          v14 = __OFADD__(v4++, 1);
          if (v14)
          {
            goto LABEL_58;
          }
        }

        v14 = __OFADD__(v10++, 1);
        if (v14)
        {
          goto LABEL_57;
        }
      }
    }

    ++v4;
    if (v11)
    {
      goto LABEL_54;
    }
  }

  if (v28)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return *(v30 + 16);
}

void sub_1007E15F8()
{
  sub_1007DB97C();
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingParticipantChangeTimer);
  *(v0 + OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingParticipantChangeTimer) = 0;
}

uint64_t sub_1007E1650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLRealTimeEnter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007E16B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLRealTimeEnter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007E1718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0DE80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007E17CC(uint64_t a1)
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

  return sub_1007D6668(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1007E18E8()
{
  result = type metadata accessor for IgnorableThrottle.Inner.State();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1007E1A3C(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v24[0] = *(v11 + 16);
  v24[1] = v12;
  v25 = v24[0];
  v26 = v13;
  v27 = v12;
  v28 = v14;
  type metadata accessor for IgnorableThrottle.Inner();
  (*(v8 + 16))(v10, a1, a3);
  v15 = *v4;
  v16 = *(v4 + a2[10]);
  v17 = *(v4 + a2[11]);
  v18 = (v4 + a2[12]);
  v19 = *v18;
  v20 = v18[1];
  swift_allocObject();
  v21 = v16;
  v22 = v17;

  v25 = sub_1007E1C6C(v10, v21, v22, v19, v20, v15);
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
}

uint64_t *sub_1007E1C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = *v6;
  v13 = *(*v6 + 120);
  type metadata accessor for CRLUnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v14 + 16) = v15;
  atomic_thread_fence(memory_order_acq_rel);
  *(v6 + v13) = v14;
  *(v6 + *(*v6 + 160)) = 0;
  v16 = *(*v6 + 168);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v6 + v16, 1, 1, AssociatedTypeWitness);
  *(v6 + *(*v6 + 128)) = a6;
  *(v6 + *(*v6 + 144)) = a2;
  *(v6 + *(*v6 + 152)) = a3;
  v18 = (v6 + *(*v6 + 136));
  *v18 = a4;
  v18[1] = a5;
  (*(*(*(v12 + 88) - 8) + 32))(v6 + *(*v6 + 112), a1, *(v12 + 88));
  type metadata accessor for IgnorableThrottle.Inner.State();
  swift_storeEnumTagMultiPayload();
  return v6;
}

uint64_t sub_1007E1EEC(void *a1)
{
  v23 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 104);
  v24 = *(*v1 + 80);
  v21[0] = v3;
  v21[1] = v4;
  v22 = *(v3 + 88);
  v25 = v22;
  v26 = v4;
  v5 = type metadata accessor for IgnorableThrottle.Inner.State();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  v12 = v22;
  v13 = *(v22 - 8);
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  v17 = *(v2 + 120);
  os_unfair_lock_lock(*(*(v1 + v17) + 16));
  v18 = *(*v1 + 112);
  swift_beginAccess();
  (*(v6 + 16))(v11, v1 + v18, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v6 + 8))(v11, v5);
    os_unfair_lock_unlock(*(*(v1 + v17) + 16));
    sub_100020E58(v23, v23[3]);
    return dispatch thunk of Cancellable.cancel()();
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_1005C4E5C(&qword_101A01050);
    v20 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v13 + 16))(v8, v16, v12);
    sub_10000630C(v23, &v8[v20]);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v6 + 40))(v1 + v18, v8, v5);
    swift_endAccess();
    os_unfair_lock_unlock(*(*(v1 + v17) + 16));
    v26 = v21[0];
    WitnessTable = swift_getWitnessTable();
    v24 = v1;

    dispatch thunk of Subscriber.receive(subscription:)();
    (*(v13 + 8))(v16, v12);
    return sub_100005070(&v24);
  }
}

uint64_t sub_1007E22A0(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = *v1;
  v4 = *v1;
  v5 = sub_1005B981C(&qword_1019FB7D8);
  __chkstk_darwin(v5 - 8);
  v40 = &v39 - v6;
  v7 = v3[12];
  v8 = v3[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = type metadata accessor for Optional();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v39 - v11;
  v13 = v3[11];
  *&v14 = v7;
  *(&v14 + 1) = v4[13];
  *&v15 = v8;
  *(&v15 + 1) = v13;
  v41 = v15;
  v42 = v14;
  v46 = v15;
  v47 = v14;
  v16 = type metadata accessor for IgnorableThrottle.Inner.State();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  v20 = v3[15];
  os_unfair_lock_lock(*(*&v2[v20] + 16));
  v21 = *(*v2 + 112);
  swift_beginAccess();
  (*(v17 + 16))(v19, &v2[v21], v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v20;
    sub_1005C4E5C(&qword_101A01050);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_100005070(&v19[*(TupleTypeMetadata2 + 48)]);
    (*(*(v13 - 8) + 8))(v19, v13);
    v24 = *(AssociatedTypeWitness - 8);
    v25 = v44;
    (*(v24 + 16))(v12, v44, AssociatedTypeWitness);
    (*(v24 + 56))(v12, 0, 1, AssociatedTypeWitness);
    v26 = *(*v2 + 168);
    swift_beginAccess();
    (*(v10 + 40))(&v2[v26], v12, v43);
    swift_endAccess();
    v27 = (*&v2[*(*v2 + 136)])(v25);
    v28 = *(*v2 + 160);
    v29 = *&v2[v28];
    if (v27)
    {
      if (v29)
      {

        AnyCancellable.cancel()();
      }

      *&v2[v28] = 0;

      os_unfair_lock_unlock(*(*&v2[v22] + 16));
      sub_1007E2950();
    }

    else
    {
      if (!v29)
      {
        sub_100006370(0, &qword_101A01060);
        v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
        v32 = v40;
        (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
        v33 = static NSTimer.publish(every:tolerance:on:in:options:)();
        sub_1007E4398(v32);
        v45 = v33;
        type metadata accessor for NSTimer.TimerPublisher();
        sub_1007E4400();
        v34 = ConnectablePublisher.autoconnect()();

        v45 = v34;
        v35 = swift_allocObject();
        swift_weakInit();
        v36 = swift_allocObject();
        v37 = v42;
        *(v36 + 16) = v41;
        *(v36 + 32) = v37;
        *(v36 + 48) = v35;
        sub_1005B981C(&qword_101A01070);
        sub_1007E4468();
        v38 = Publisher<>.sink(receiveValue:)();

        *&v2[v28] = v38;
      }

      os_unfair_lock_unlock(*(*&v2[v22] + 16));
    }

    return static Subscribers.Demand.unlimited.getter();
  }

  else
  {
    (*(v17 + 8))(v19, v16);
    os_unfair_lock_unlock(*(*&v2[v20] + 16));
    return static Subscribers.Demand.none.getter();
  }
}

uint64_t sub_1007E28F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1007E2950();
  }

  return result;
}

void sub_1007E2950()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[12];
  v4 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v48 = &v43 - v6;
  v51 = v7;
  v8 = type metadata accessor for Optional();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v43 - v11;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = v2[11];
  *&v16 = v4;
  *(&v16 + 1) = v15;
  *&v17 = v3;
  v47 = v2[13];
  *(&v17 + 1) = v47;
  v57 = v17;
  v56 = v16;
  v18 = type metadata accessor for IgnorableThrottle.Inner.State();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - v20;
  v22 = v15;
  v23 = *(v15 - 8);
  __chkstk_darwin(v24);
  v26 = &v43 - v25;
  v55 = v2[15];
  os_unfair_lock_lock(*(*&v1[v55] + 16));
  v27 = *(*v1 + 160);
  if (*&v1[v27])
  {

    AnyCancellable.cancel()();
  }

  *&v1[v27] = 0;

  v28 = *(*v1 + 112);
  swift_beginAccess();
  (*(v19 + 16))(v21, &v1[v28], v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1005C4E5C(&qword_101A01050);
    v29 = *(swift_getTupleTypeMetadata2() + 48);
    v45 = v26;
    v46 = v23;
    (*(v23 + 32))(v26, v21, v22);
    sub_100005070(&v21[v29]);
    v30 = *(*v1 + 168);
    swift_beginAccess();
    v31 = v53;
    v44 = v22;
    v32 = *(v53 + 16);
    v33 = v14;
    v34 = v54;
    v32(v14, &v1[v30], v54);
    v35 = v49;
    v36 = v50;
    v37 = v51;
    (*(v50 + 56))(v49, 1, 1, v51);
    swift_beginAccess();
    (*(v31 + 40))(&v1[v30], v35, v34);
    swift_endAccess();
    os_unfair_lock_unlock(*(*&v1[v55] + 16));
    v38 = v52;
    v32(v52, v33, v34);
    if ((*(v36 + 48))(v38, 1, v37) == 1)
    {
      v39 = *(v31 + 8);
      v39(v33, v34);
      (*(v46 + 8))(v45, v44);
      v39(v38, v34);
    }

    else
    {
      v40 = v48;
      (*(v36 + 32))(v48, v38, v37);
      v41 = v45;
      v42 = v44;
      dispatch thunk of Subscriber.receive(_:)();
      (*(v36 + 8))(v40, v37);
      (*(v31 + 8))(v33, v34);
      (*(v46 + 8))(v41, v42);
    }
  }

  else
  {
    (*(v19 + 8))(v21, v18);
    os_unfair_lock_unlock(*(*&v1[v55] + 16));
  }
}

void sub_1007E2F80()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 104);
  v13 = *(*v0 + 80);
  v12 = *(v2 + 88);
  v14 = v12;
  v15 = v3;
  v4 = type metadata accessor for IgnorableThrottle.Inner.State();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *(v1 + 120);
  os_unfair_lock_lock(*(*(v0 + v8) + 16));
  v9 = *(*v0 + 112);
  swift_beginAccess();
  (*(v5 + 16))(v7, v0 + v9, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1005C4E5C(&qword_101A01050);
    v10 = v12;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_100050F74(&v7[*(TupleTypeMetadata2 + 48)], &v13);
    (*(*(v10 - 8) + 8))(v7, v10);
    os_unfair_lock_unlock(*(*(v0 + v8) + 16));
    sub_100020E58(&v13, v15);
    dispatch thunk of Subscription.request(_:)();
    sub_100005070(&v13);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    os_unfair_lock_unlock(*(*(v0 + v8) + 16));
  }
}

void sub_1007E31F0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 104);
  v17 = *(*v0 + 80);
  v16 = *(v2 + 88);
  v18 = v16;
  v19 = v3;
  v4 = type metadata accessor for IgnorableThrottle.Inner.State();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  v11 = *(v1 + 120);
  os_unfair_lock_lock(*(*(v0 + v11) + 16));
  v12 = *(*v0 + 112);
  swift_beginAccess();
  (*(v5 + 16))(v10, v0 + v12, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1005C4E5C(&qword_101A01050);
      v14 = v16;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_100050F74(&v10[*(TupleTypeMetadata2 + 48)], &v17);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v5 + 40))(v0 + v12, v7, v4);
      swift_endAccess();
      os_unfair_lock_unlock(*(*(v0 + v11) + 16));
      sub_100020E58(&v17, v19);
      dispatch thunk of Cancellable.cancel()();
      sub_100005070(&v17);
      (*(*(v14 - 8) + 8))(v10, v14);
      return;
    }
  }

  else
  {
    (*(v5 + 8))(v10, v4);
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v5 + 40))(v0 + v12, v7, v4);
  swift_endAccess();
  os_unfair_lock_unlock(*(*(v0 + v11) + 16));
}

uint64_t sub_1007E3514()
{
  v1 = *(*v0 + 112);
  v2 = type metadata accessor for IgnorableThrottle.Inner.State();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 168);
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1007E36CC()
{
  sub_1007E3514();

  return swift_deallocClassInstance();
}

void sub_1007E3760()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_100006370(319, &qword_1019FB830);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Mode(319);
      if (v2 <= 0x3F)
      {
        sub_1007152FC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1007E3838(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v8 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 8) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_1007E39A0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 8] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t sub_1007E3BA4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1005C4E5C(&qword_101A01050);
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007E3C48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v4 <= v3)
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1007E3D68(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 40 > v5)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1007E4034()
{
  result = qword_101A01058;
  if (!qword_101A01058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01058);
  }

  return result;
}

void sub_1007E40C4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 104);
  v16 = *(*v0 + 80);
  v15 = *(v2 + 88);
  v17 = v15;
  v18 = v3;
  v4 = type metadata accessor for IgnorableThrottle.Inner.State();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v11 = *(v1 + 120);
  os_unfair_lock_lock(*(*(v0 + v11) + 16));
  v12 = *(*v0 + 112);
  swift_beginAccess();
  (*(v5 + 16))(v10, v0 + v12, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1005C4E5C(&qword_101A01050);
    v13 = v15;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_100050F74(&v10[*(TupleTypeMetadata2 + 48)], &v16);
    (*(*(v13 - 8) + 8))(v10, v13);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v5 + 40))(v0 + v12, v7, v4);
    swift_endAccess();
    os_unfair_lock_unlock(*(*(v0 + v11) + 16));
    sub_100020E58(&v16, v18);
    dispatch thunk of Cancellable.cancel()();
    sub_100005070(&v16);
  }

  else
  {
    (*(v5 + 8))(v10, v4);
    os_unfair_lock_unlock(*(*(v0 + v11) + 16));
  }
}

uint64_t sub_1007E4398(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FB7D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1007E4400()
{
  result = qword_101A01068;
  if (!qword_101A01068)
  {
    type metadata accessor for NSTimer.TimerPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01068);
  }

  return result;
}

unint64_t sub_1007E4468()
{
  result = qword_101A01078;
  if (!qword_101A01078)
  {
    sub_1005C4E5C(&qword_101A01070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01078);
  }

  return result;
}

NSString sub_1007E44D4()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6570 = result;
  return result;
}

NSString sub_1007E450C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6578 = result;
  return result;
}

NSString sub_1007E4544()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6580 = result;
  return result;
}

id sub_1007E466C(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id sub_1007E4770(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v3)
  {
    v4 = [v3 textSelectionDelegate];
    if (v4)
    {
      v5 = [v4 selectionViewController];
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = *&v5[*a1];
        v7 = v6;

        if (v6)
        {
          return v7;
        }
      }
    }
  }

  v9 = objc_allocWithZone(UIView);

  return [v9 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

uint64_t sub_1007E4940()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v1 = Strong;
  v2 = [Strong delegate];

  if (!v2)
  {
    return 1;
  }

  if ([v2 respondsToSelector:"allowTextEditingToBegin"] && (objc_msgSend(v2, "respondsToSelector:", "allowTextEditingToBegin") & 1) != 0)
  {
    v3 = [v2 allowTextEditingToBegin];
  }

  else
  {
    v3 = 1;
  }

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1007E4A2C(void *a1)
{
  v2 = v1;
  v4 = [v2 isFirstResponder];
  v5 = [a1 shouldBecomeTextInputEditor];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v7 = Strong, v8 = [Strong delegate], v7, !v8))
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (([v8 respondsToSelector:"allowTextEditingToBegin"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  if ([v8 respondsToSelector:"allowTextEditingToBegin"])
  {
    v9 = [v8 allowTextEditingToBegin];
    swift_unknownObjectRelease();
    if (v5)
    {
      return v4 ^ v9;
    }

    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  if ((v5 & 1) == 0)
  {
LABEL_11:
    v9 = 0;
    return v4 ^ v9;
  }

LABEL_9:
  v9 = 1;
  return v4 ^ v9;
}

uint64_t sub_1007E4BF0()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_reloadInputViewsTask;
  if (*&v0[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_reloadInputViewsTask])
  {

    sub_1005B981C(&unk_1019F6B40);
    Task.cancel()();
  }

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = v0;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  *&v1[v5] = sub_100796DB4(0, 0, v4, &unk_10147D220, v9);
}

uint64_t sub_1007E4D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007E4E10, v6, v5);
}

uint64_t sub_1007E4E10()
{

  if (static Task<>.isCancelled.getter())
  {
    v1 = 0;
  }

  else
  {
    v2 = [objc_opt_self() keyboardIsAnimating];
    v3 = *(v0 + 24);
    if (v2)
    {
      *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_reloadInputViewsTask) = 0;

      sub_1007E4BF0();
      v1 = 0;
    }

    else
    {
      [*(v0 + 24) reloadInputViews];
      *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_reloadInputViewsTask) = 0;

      v1 = 1;
    }
  }

  **(v0 + 16) = v1;
  v4 = *(v0 + 8);

  return v4();
}

void sub_1007E4FC0()
{
  v1 = [v0 inputAssistantItem];
  v2 = *&v0[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor];
  if (v2)
  {
    v19 = v1;
    v3 = [swift_unknownObjectRetain() leadingBarButtonGroups];
    if (v3)
    {
      v4 = v3;
      sub_100006370(0, &unk_101A012C0);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v5 = 0;
    }

    v6 = [v2 trailingBarButtonGroups];
    if (v6)
    {
      v7 = v6;
      sub_100006370(0, &unk_101A012C0);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = 0;
    }

    v9 = [v19 leadingBarButtonGroups];
    sub_100006370(0, &unk_101A012C0);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5)
    {

      v12 = sub_10067498C(v11, v10);

      if (v12)
      {

        goto LABEL_13;
      }
    }

    else
    {
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 setLeadingBarButtonGroups:isa];

LABEL_13:
    v14 = [v19 trailingBarButtonGroups];
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8)
    {

      v17 = sub_10067498C(v16, v15);

      if (v17)
      {
        swift_unknownObjectRelease();

LABEL_18:
        v1 = v19;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v18 = Array._bridgeToObjectiveC()().super.isa;

    [v19 setTrailingBarButtonGroups:v18];

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

LABEL_19:
}

id sub_1007E529C(uint64_t a1, SEL *a2)
{
  v3 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
  *(a1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard) = 1;
  result = *(a1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate);
  if (result)
  {
    result = [result *a2];
  }

  *(a1 + v3) = 0;
  return result;
}

void sub_1007E5330(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&qword_1019FB750);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v22 - v8;
  v10 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor;
  v11 = *&v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor];
  if (v11)
  {
    if (v11 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v12 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editorIsChanging;
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editorIsChanging] = 1;
  v13 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
  v14 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate;
  v15 = *&v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
  if (v15)
  {
    [v15 textWillChange:{v2, v7}];
  }

  v2[v13] = 0;
  *&v2[v10] = a1;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  if (a1)
  {
    if ([a1 respondsToSelector:"didBecomeTextInputEditor"])
    {
      [a1 didBecomeTextInputEditor];
    }

    if ((sub_1007E4A2C(a1) & 1) == 0)
    {
      goto LABEL_20;
    }

    if ([v2 isFirstResponder])
    {
      v16 = &selRef_resignFirstResponder;
    }

    else
    {
      if (a2 < 0)
      {
LABEL_20:
        if (*&v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper])
        {
          swift_unknownObjectWeakAssign();
        }

        v2[v13] = 1;
        v17 = *&v2[v14];
        if (v17)
        {
          [v17 textDidChange:v2];
        }

        v2[v13] = 0;
        if (v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_scribbleInProgress])
        {
          swift_unknownObjectRelease();
        }

        else
        {
          [v2 reloadInputViews];
          v18 = type metadata accessor for TaskPriority();
          (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
          type metadata accessor for MainActor();
          v19 = v2;
          v20 = static MainActor.shared.getter();
          v21 = swift_allocObject();
          v21[2] = v20;
          v21[3] = &protocol witness table for MainActor;
          v21[4] = v19;
          sub_10064191C(0, 0, v9, &unk_10147D210, v21);
          swift_unknownObjectRelease();
        }

        v3[v12] = 0;
        return;
      }

      v16 = &selRef_becomeFirstResponder;
    }

    [v2 *v16];
    goto LABEL_20;
  }

  if ([v2 isFirstResponder])
  {

    [v2 resignFirstResponder];
  }
}

uint64_t sub_1007E5640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007E56D8, v6, v5);
}

uint64_t sub_1007E56D8()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_1019F15D8 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_101AD6580 object:*(v0 + 16)];

  v2 = *(v0 + 8);

  return v2();
}

id sub_1007E5880(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] = 0;
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_scribbleInProgress] = 0;
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_sceneAnimationInProgress] = 0;
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignorePencilInputSource] = 0;
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_writingToolsActive] = 0;
  v5 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputLogger;
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v6 = qword_101AD64F8;
  *&v2[v5] = qword_101AD64F8;
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editorIsChanging] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_reloadInputViewsTask] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_endTextInputWhenFirstResponderResigns] = 1;
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_resigningFirstResponder] = 0;
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_disallowBecomingFirstResponder] = 0;
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 0;
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_isSettingMarkedText] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_autocorrectionType] = 2;
  *&v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inlinePredictionType] = 2;
  *&v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate] = 0;
  v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_keyboardIsHiding] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper] = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CRLTextInputResponder();
  v7 = v6;
  v8 = objc_msgSendSuper2(&v20, "init");
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  [v11 addObserver:v10 selector:"applicationDidEnterBackgroundWithNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v12 = [v9 defaultCenter];
  [v12 addObserver:v10 selector:"applicationWillEnterForegroundWithNotification:" name:UIApplicationWillEnterForegroundNotification object:0];

  v13 = [v9 defaultCenter];
  v14 = qword_1019F15C8;
  v15 = v10;
  if (v14 != -1)
  {
    swift_once();
  }

  [v13 addObserver:v15 selector:"firstResponderChangedWithNotification:" name:qword_101AD6570 object:0];

  v16 = [v9 defaultCenter];
  v17 = qword_1019F1B88;
  v18 = v15;
  if (v17 != -1)
  {
    swift_once();
  }

  [v16 addObserver:v18 selector:"reloadForMathPaperChangesWithNotification:" name:static CRLMathCalculationController.mathHintsModeChangedNotificationName object:0];

  return v18;
}

void sub_1007E5D40()
{
  Notification.object.getter();
  if (v6)
  {
    type metadata accessor for CRLTextInputResponder();
    if (swift_dynamicCast())
    {
      v1 = *&v4[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor];
      v2 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
      if (v1 && v1 == v2 || !v2 || (v3 = [v2 textInputReceiver]) == 0)
      {
      }

      else
      {
        [v3 endEditing];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_10000CAAC(v5, &unk_1019F4D00);
  }
}

id sub_1007E5F08()
{
  if (![v0 canBecomeFirstResponder])
  {
    return 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for CRLTextInputResponder();
  v1 = objc_msgSendSuper2(&v7, "becomeFirstResponder");
  if (v1)
  {
    v2 = [objc_opt_self() defaultCenter];
    if (qword_1019F15C8 != -1)
    {
      swift_once();
    }

    [v2 postNotificationName:qword_101AD6570 object:v0];
  }

  if (qword_1019F20D0 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.crlTextInput;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for Bool;
  *(inited + 64) = &protocol witness table for Bool;
  *(inited + 32) = v1;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v5, "TextInputResponder becomeFirstResponder, success: %d", 52, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  return v1;
}

id sub_1007E6140()
{
  result = [v0 canResignFirstResponder];
  if (result)
  {
    if (v0[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_scribbleInProgress])
    {
      return 0;
    }

    result = *&v0[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor];
    if (result)
    {
      result = [result resignFirstResponderWhenKeyboardHides];
      if (result)
      {
        v2 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_resigningFirstResponder;
        if (v0[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_resigningFirstResponder])
        {
          return 0;
        }

        v0[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_resigningFirstResponder] = 1;
        v12.receiver = v0;
        v12.super_class = type metadata accessor for CRLTextInputResponder();
        v3 = objc_msgSendSuper2(&v12, "resignFirstResponder");
        if (v3)
        {
          if (v0[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_endTextInputWhenFirstResponderResigns] == 1)
          {
            v4 = v0[v2];
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              if (v4)
              {
                v6 = 8320;
              }

              else
              {
                v6 = 0x2000;
              }

              v7 = Strong;
              [Strong endEditingWithFlags:v6];
            }
          }

          [v0 reloadInputViews];
          v8 = [objc_opt_self() defaultCenter];
          if (qword_1019F15D0 != -1)
          {
            swift_once();
          }

          [v8 postNotificationName:qword_101AD6578 object:v0];
        }

        v0[v2] = 0;
        if (qword_1019F20D0 != -1)
        {
          swift_once();
        }

        v9 = static OS_os_log.crlTextInput;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        *(inited + 56) = &type metadata for Bool;
        *(inited + 64) = &protocol witness table for Bool;
        *(inited + 32) = v3;
        v11 = static os_log_type_t.default.getter();
        sub_100005404(v9, &_mh_execute_header, v11, "TextInputResponder resignFirstResponder, success: %d", 52, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        return v3;
      }
    }
  }

  return result;
}

_BYTE *sub_1007E6454(_BYTE *result, SEL *a2)
{
  if (*&result[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] <= 0)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
    result[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
    result = *&result[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
    if (result)
    {
      result = [result *a2];
    }

    v2[v3] = 0;
  }

  return result;
}

id sub_1007E65F0()
{
  result = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (result)
  {
    result = [result textSelectionDelegate];
    if (result)
    {
      v2 = [result selectedTextRange];
      swift_unknownObjectRelease();
      return v2;
    }
  }

  return result;
}

void sub_1007E66F4(void *a1, uint64_t a2)
{
  if (a1 && (type metadata accessor for CRLTextRange(), (v4 = swift_dynamicCastClass()) != 0))
  {
    v5 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor;
    v6 = *(a2 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
    if (v6)
    {
      v7 = v4;
      v57 = a1;
      v8 = [v6 textSelectionDelegate];
      if (v8)
      {
        [v8 setSelectedTextRange:v7];
        if (*(a2 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_scribbleInProgress))
        {
          v9 = 16;
        }

        else
        {
          v9 = 0;
        }

        if (*(a2 + v5) && (type metadata accessor for CRLWPEditor(), swift_dynamicCastClass()))
        {
          swift_unknownObjectRetain();
          sub_10093DDE0(v9, 1);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        return;
      }
    }

    else
    {
      v33 = a1;
    }

    v34 = objc_opt_self();
    v35 = [v34 _atomicIncrementAssertCount];
    v58[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v58);
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    v38 = [v37 lastPathComponent];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v42 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v35;
    v44 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v44;
    v45 = sub_1005CF04C();
    *(inited + 104) = v45;
    *(inited + 72) = v36;
    *(inited + 136) = &type metadata for String;
    v46 = sub_1000053B0();
    *(inited + 112) = v39;
    *(inited + 120) = v41;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v46;
    *(inited + 152) = 369;
    v47 = v58[0];
    *(inited + 216) = v44;
    *(inited + 224) = v45;
    *(inited + 192) = v47;
    v48 = v36;
    v49 = v47;
    v50 = static os_log_type_t.error.getter();
    sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v51 = static os_log_type_t.error.getter();
    sub_100005404(v42, &_mh_execute_header, v51, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v52 = swift_allocObject();
    v52[2] = 8;
    v52[3] = 0;
    v52[4] = 0;
    v52[5] = 0;
    v53 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    [v34 handleFailureInFunction:v54 file:v55 lineNumber:369 isFatal:0 format:v56 args:v53];
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [v10 _atomicIncrementAssertCount];
    v58[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v58);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_10146CA70;
    *(v19 + 56) = &type metadata for Int32;
    *(v19 + 64) = &protocol witness table for Int32;
    *(v19 + 32) = v11;
    v20 = sub_100006370(0, &qword_1019F4D30);
    *(v19 + 96) = v20;
    v21 = sub_1005CF04C();
    *(v19 + 104) = v21;
    *(v19 + 72) = v12;
    *(v19 + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(v19 + 112) = v15;
    *(v19 + 120) = v17;
    *(v19 + 176) = &type metadata for UInt;
    *(v19 + 184) = &protocol witness table for UInt;
    *(v19 + 144) = v22;
    *(v19 + 152) = 368;
    v23 = v58[0];
    *(v19 + 216) = v20;
    *(v19 + 224) = v21;
    *(v19 + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v10 handleFailureInFunction:v30 file:v31 lineNumber:368 isFatal:0 format:v32 args:v29];
  }
}

id sub_1007E6F88()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor;
  result = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (result)
  {
    result = [result textInputReceiver];
    if (result)
    {
      v3 = [result markedTextRange];
      swift_unknownObjectRelease();
      if (v3 && (v4 = [v3 start], v5 = *&v4[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location], v4, v6 = NSNotFound.getter(), v3, v5 != v6))
      {
        result = *(v0 + v1);
        if (result)
        {
          result = [result textInputReceiver];
          if (result)
          {
            v7 = [result markedTextRange];
            swift_unknownObjectRelease();
            return v7;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1007E7098(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4)
{
  sub_1005B981C(&unk_1019F6C70);

  v16.location = a3;
  v16.length = a4;
  v9 = NSStringFromRange(v16);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress;
  v11 = *&v4[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *&v4[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] = v13;
    sub_1007E71A4(v4, a1, a2, a3, a4);
    v14 = *&v4[v10];
    v12 = __OFSUB__(v14, 1);
    v15 = v14 - 1;
    if (!v12)
    {
      *&v4[v10] = v15;
      swift_arrayDestroy();
      return;
    }
  }

  __break(1u);
}

_BYTE *sub_1007E71A4(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_isSettingMarkedText;
  if ((result[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_isSettingMarkedText] & 1) == 0)
  {
    v6 = result;
    result[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_isSettingMarkedText] = 1;
    result = *&result[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor];
    if (result)
    {
      result = [result textInputReceiver];
      if (result)
      {
        v10 = result;
        if (a3)
        {
          v11 = String._bridgeToObjectiveC()();
          v12 = a4;
          v13 = a5;
          v14 = v11;
        }

        else
        {
          v12 = a4;
          v13 = a5;
          v14 = 0;
        }

        [v10 setMarkedText:v14 selectedRange:{v12, v13}];

        result = swift_unknownObjectRelease();
      }
    }

    v6[v5] = 0;
  }

  return result;
}

void sub_1007E7310(void *a1, NSUInteger a2, NSUInteger a3)
{
  sub_1005B981C(&qword_101A012B8);
  v7 = a1;
  v17.location = a2;
  v17.length = a3;
  v8 = NSStringFromRange(v17);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress;
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress) = v12;
    v13 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_isSettingMarkedText;
    if ((*(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_isSettingMarkedText) & 1) == 0)
    {
      *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_isSettingMarkedText) = 1;
      v14 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
      if (v14)
      {
        v15 = [v14 textInputReceiver];
        if (v15)
        {
          [v15 setAttributedMarkedText:v7 selectedRange:{a2, a3}];
          swift_unknownObjectRelease();
        }
      }

      *(v3 + v13) = 0;
      v12 = *(v3 + v9);
    }

    v11 = __OFSUB__(v12, 1);
    v16 = v12 - 1;
    if (!v11)
    {
      *(v3 + v9) = v16;
      swift_arrayDestroy();
      return;
    }
  }

  __break(1u);
}

char *sub_1007E74EC(char *result)
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress;
  v2 = *&result[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    *&result[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] = v4;
    result = *&result[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor];
    if (result)
    {
      result = [result textInputReceiver];
      if (result)
      {
        [result unmarkText];
        result = swift_unknownObjectRelease();
      }
    }

    v6 = *&v5[v1];
    v3 = __OFSUB__(v6, 1);
    v7 = v6 - 1;
    if (!v3)
    {
      *&v5[v1] = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_1007E76A0(SEL *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v3 && (v4 = [v3 textSelectionDelegate]) != 0)
  {
    v5 = [v4 *a1];
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    v7 = objc_allocWithZone(type metadata accessor for CRLTextPosition());

    return [v7 init:0 caretAffinity:0];
  }
}

void sub_1007E7744(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [v3 textSelectionDelegate];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  type metadata accessor for CRLTextPosition();
  v6 = swift_dynamicCastClass();
  if (!v6 || (v7 = v6, (v8 = swift_dynamicCastClass()) == 0))
  {
    swift_unknownObjectRelease();
LABEL_7:
    v10 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:0 caretAffinity:0];
    NSNotFound.getter();
    v11 = *&v10[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
    v12 = *&v10[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
    v13 = type metadata accessor for CRLTextRange();
    v14 = objc_allocWithZone(v13);
    v15 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
    *&v14[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
    *&v14[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
    v16 = &v14[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    *v16 = v11;
    *(v16 + 1) = v11;
    *&v14[v15] = v12;
    v17.receiver = v14;
    v17.super_class = v13;
    v9 = objc_msgSendSuper2(&v17, "init");

    goto LABEL_8;
  }

  v9 = [v5 textRangeFrom:v7 to:v8];
  swift_unknownObjectRelease();
LABEL_8:
  *a2 = v9;
}

id sub_1007E7978(void *a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (!v4)
  {
    return [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:0 caretAffinity:0];
  }

  v6 = [v4 textSelectionDelegate];
  if (!v6)
  {
    return [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:0 caretAffinity:0];
  }

  v7 = v6;
  type metadata accessor for CRLTextPosition();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    return [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:0 caretAffinity:0];
  }

  v9 = v8;
  v10 = qword_1019F1570;
  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = [v7 positionFrom:v9 offset:a2];

  swift_unknownObjectRelease();
  return v12;
}

id sub_1007E7AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v6 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v6)
  {
    v7 = [v6 textSelectionDelegate];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for CRLTextPosition();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = [v8 positionFrom:v9 in:a2 offset:a3];
        swift_unknownObjectRelease();
        return v10;
      }

      swift_unknownObjectRelease();
    }
  }

  return [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:0 caretAffinity:0];
}

id sub_1007E7CF0(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (result)
  {
    result = [result textSelectionDelegate];
    if (result)
    {
      v6 = result;
      type metadata accessor for CRLTextPosition();
      v7 = swift_dynamicCastClass();
      if (v7 && (v8 = v7, (v9 = swift_dynamicCastClass()) != 0))
      {
        v10 = [v6 *a3];
      }

      else
      {
        v10 = 0;
      }

      swift_unknownObjectRelease();
      return v10;
    }
  }

  return result;
}

uint64_t sub_1007E7E54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_1007E7EE0(uint64_t a1, uint64_t a2)
{
  result = *(v2 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (result)
  {
    result = [result textSelectionDelegate];
    if (result)
    {
      v5 = result;
      type metadata accessor for CRLTextRange();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = [v5 positionWithin:v6 farthestIn:a2];
        swift_unknownObjectRelease();
        return v7;
      }

      else
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return result;
}

id sub_1007E7FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = *(a1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (!result)
  {
    goto LABEL_6;
  }

  result = [result textSelectionDelegate];
  if (!result)
  {
    goto LABEL_6;
  }

  v6 = result;
  type metadata accessor for CRLTextPosition();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    result = swift_unknownObjectRelease();
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = [v6 characterRangeByExtending:v7 in:a2];
  result = swift_unknownObjectRelease();
LABEL_7:
  *a3 = v8;
  return result;
}

void sub_1007E81A0(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor;
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v5)
  {
    if ([v5 wantsToReceiveTextInput])
    {
      v7 = *(v2 + v4);
      if (v7)
      {
        v8 = [v7 textInputReceiver];
        if (v8)
        {
          v9 = v8;
          type metadata accessor for CRLTextRange();
          v10 = swift_dynamicCastClass();
          if (v10)
          {
            v11 = v10;
            v12 = a2;
            [v9 setBaseWritingDirection:sub_1007260E4(a1) forParagraphsWithRange:v11];
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

uint64_t sub_1007E8324(void *a1)
{
  v10[3] = sub_100006370(0, &qword_101A012A8);
  v10[0] = a1;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v3)
  {
    v4 = a1;
    v5 = [v3 textSelectionDelegate];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for CRLTextRange();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        [v6 firstRectFor:v7];
        swift_unknownObjectRelease();
        return sub_100005070(v10);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = a1;
  }

  return sub_100005070(v10);
}

double sub_1007E8460(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  v4 = 0.0;
  if (v3)
  {
    v5 = [v3 textSelectionDelegate];
    if (v5)
    {
      v6 = v5;
      v7 = type metadata accessor for CRLTextPosition();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v13[3] = v7;
        v13[0] = v8;
        v9 = v8;
        v10 = a1;
        [v6 caretRectFor:v9];
        v4 = v11;
        sub_100005070(v13);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return v4;
}

double sub_1007E8588(void *a1, uint64_t a2, void *a3, double (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  v8 = a4(v6);

  return v8;
}

void *sub_1007E8608(void *a1)
{
  v14[3] = sub_100006370(0, &qword_101A012A8);
  v14[0] = a1;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v3)
  {
    v4 = a1;
    v5 = [v3 textSelectionDelegate];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for CRLTextRange();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        v9 = v4;
        v10 = [v6 selectionRectsFor:v8];
        sub_100006370(0, &qword_101A012B0);
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        sub_100005070(v14);
        return v11;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v13 = a1;
  }

  sub_100005070(v14);
  return _swiftEmptyArrayStorage;
}

id sub_1007E87D8(double a1, double a2)
{
  type metadata accessor for CGPoint(0);
  v10[3] = v5;
  *v10 = a1;
  *&v10[1] = a2;
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v6 && (v7 = [v6 textSelectionDelegate]) != 0)
  {
    v8 = [v7 closestPositionTo:{a1, a2}];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  sub_100005070(v10);
  return v8;
}

id sub_1007E88EC(void *a1, double a2, double a3)
{
  type metadata accessor for CGPoint(0);
  sub_100006370(0, &qword_101A012A8);
  v7 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (!v7)
  {
    v13 = a1;
    goto LABEL_7;
  }

  v8 = a1;
  v9 = [v7 textSelectionDelegate];
  if (!v9)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = v9;
  type metadata accessor for CRLTextRange();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v12 = [v10 closestPositionTo:v11 within:{a2, a3}];
  swift_unknownObjectRelease();
LABEL_8:
  swift_arrayDestroy();
  return v12;
}

id sub_1007E8A8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  result = *(a1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (result && (result = [result textSelectionDelegate]) != 0)
  {
    v8 = [result characterRangeAt:{a3, a4}];
    result = swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

void sub_1007E8C64()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = [Strong documentIsSharedReadOnly];

  if (v3 & 1) != 0 || (*(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_keyboardIsHiding) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editorIsChanging))
  {
    return;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4 && (v5 = v4, v6 = [v4 editorController], v5, v6))
  {
    v38 = [v6 selectionPath];
  }

  else
  {
    v38 = 0;
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 infosForCurrentSelectionPath];

    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v38;
    if (v38)
    {
      if (v10)
      {
        if (*(v10 + 16) == 1)
        {
          sub_100BC1A08(v10, v39);

          if (!v40)
          {

            sub_10000CAAC(v39, &unk_101A27F50);
            return;
          }

          v12.isa = AnyHashable._bridgeToObjectiveC()().isa;
          sub_100064234(v39);
          type metadata accessor for CRLWPShapeItem();
          v13 = swift_dynamicCastClass();
          if (!v13)
          {
            goto LABEL_35;
          }

          v14 = v13;
          v15 = *(v13 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
          if (v15)
          {
            v16 = v15;
            v17 = sub_100D7320C(v16);

            v18 = [v17 start];
            v19 = *&v18[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

            if (v19 == NSNotFound.getter())
            {
              v20 = 0x7FFFFFFFFFFFFFFFLL;
              v21 = 0;

              goto LABEL_29;
            }

            v20 = *&v17[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
            v22 = *&v17[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

            v23 = __OFSUB__(v22, v20);
            v21 = v22 - v20;
            if (!v23)
            {
LABEL_29:
              v24 = [objc_allocWithZone(CRLWPSelection) initWithRange:{v20, v21}];
              if (v24)
              {
                v25 = v24;
                v26 = swift_unknownObjectWeakLoadStrong();
                if (!v26)
                {

                  goto LABEL_36;
                }

                v27 = v26;
                v28 = **(v14 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
                if (swift_conformsToProtocol2())
                {
                  v29 = *(v28 + 840);

                  v31 = v29(v30);

                  v32 = [v31 bezierPath];

                  LOBYTE(v31) = [v32 isLineSegment];
                  if ((v31 & 1) != 0 || [v27 documentIsSharedReadOnly])
                  {
                  }

                  else
                  {
                    v33 = [v38 selectionPathWithAppendedSelection:v25];
                    if (!v33)
                    {

                      return;
                    }

                    v34 = v33;
                    v35 = swift_unknownObjectWeakLoadStrong();
                    v36 = [v35 editorController];

                    v37 = v34;
                    [v36 setSelectionPath:v37];
                  }

LABEL_36:

                  return;
                }

LABEL_43:
                __break(1u);
                return;
              }

LABEL_35:

              goto LABEL_36;
            }

            __break(1u);
          }

          __break(1u);
          goto LABEL_43;
        }

        v11 = v38;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v11 = v38;
    if (v38)
    {
LABEL_24:

      return;
    }
  }
}

id sub_1007E925C(uint64_t a1, SEL *a2, SEL *a3)
{
  result = *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (result)
  {
    result = [result *a2];
    if (result)
    {
      v7 = result;
      sub_100601584(a1, v15);
      v8 = v16;
      if (v16)
      {
        v9 = sub_100020E58(v15, v16);
        v10 = *(v8 - 8);
        v11 = __chkstk_darwin(v9);
        v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v10 + 16))(v13, v11);
        v14 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v10 + 8))(v13, v8);
        sub_100005070(v15);
      }

      else
      {
        v14 = 0;
      }

      [v7 *a3];
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1007E9418()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor;
  result = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (result)
  {
    result = [result wantsToReceiveTextInput];
    if (result)
    {
      result = *(v0 + v1);
      if (result)
      {
        result = [result textInputReceiver];
        if (result)
        {
          swift_unknownObjectRelease();
          result = *(v0 + v1);
          if (result)
          {
            if ([result keyInputReceiver])
            {
              swift_unknownObjectRelease();
              return 0;
            }

            else
            {
              result = *(v0 + v1);
              if (result)
              {
                return ([result wantsToInterceptDeleteEvents] ^ 1);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1007E9574()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v1)
  {
    v2 = [swift_unknownObjectRetain() textSelectionDelegate];
    if (v2)
    {
      v3 = [v2 selectedTextRange];
      swift_unknownObjectRelease();
      if (v3)
      {

        v4 = [v1 textInputReceiver];
        if (v4)
        {
          [v4 deleteCurrentSelection];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        return;
      }
    }

    swift_unknownObjectRelease();
  }

  v5 = objc_opt_self();
  v6 = [v5 _atomicIncrementAssertCount];
  v28 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v28);
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
  v16 = sub_1005CF04C();
  *(inited + 104) = v16;
  *(inited + 72) = v7;
  *(inited + 136) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 112) = v10;
  *(inited + 120) = v12;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v17;
  *(inited + 152) = 703;
  v18 = v28;
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
  sub_100005404(v13, &_mh_execute_header, v22, "Failed to delete text. No editor or selection.", 46, 2, _swiftEmptyArrayStorage);

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

  [v5 handleFailureInFunction:v25 file:v26 lineNumber:703 isFatal:0 format:v27 args:v24];
}

void sub_1007E9A24(uint64_t a1)
{
  if (sub_1007E9418())
  {
    sub_1007E9574();
    return;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong editorController];

    if (v6)
    {
      v10[4] = sub_1007EF9C8;
      v10[5] = v2;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = *"";
      v10[2] = sub_10066C70C;
      v10[3] = &unk_101887620;
      v7 = _Block_copy(v10);

      [v6 enumerateEditorsOnStackUsingBlock:v7];
      _Block_release(v7);
    }
  }

  swift_beginAccess();
  v8 = *(a1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (*v3)
  {
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    *v3 = v8;
    v8 = swift_unknownObjectRetain();
  }

  v9 = [v8 keyInputReceiver];
  if (v9)
  {
    [v9 deleteBackward:a1];

    swift_unknownObjectRelease();
    return;
  }

LABEL_13:
}

uint64_t sub_1007E9BE0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();
    if ([v6 wantsToInterceptDeleteEvents])
    {
      swift_beginAccess();
      *(a3 + 16) = v6;
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

void sub_1007E9D18(char *a1, uint64_t a2, SEL *a3)
{
  v3 = *&a1[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor];
  if (v3)
  {
    v6 = a1;
    v5 = [v3 keyInputReceiver];
    if (v5)
    {
      [v5 *a3];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1007E9DD4(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor];
  if (v3 && (v4 = [v3 keyInputReceiver]) != 0)
  {
    v5 = v4;
    sub_100601584(a1, v15);
    v6 = v16;
    if (v16)
    {
      v7 = sub_100020E58(v15, v16);
      v8 = *(v6 - 8);
      v9 = __chkstk_darwin(v7);
      v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v8 + 8))(v11, v6);
      sub_100005070(v15);
    }

    else
    {
      v12 = 0;
    }

    [v5 spacebarTapped:v12];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = String._bridgeToObjectiveC()();
    [v1 insertText:v14];
  }
}

uint64_t sub_1007E9FB0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
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

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

id sub_1007EA084()
{
  if (qword_1019F20D0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlTextInput;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v3 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor;
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v4)
  {
    v15 = &type metadata for Bool;
    v16 = &protocol witness table for Bool;
    LOBYTE(v14) = [v4 wantsVisibleKeyboard];
    sub_100050F74(&v14, inited + 32);
  }

  else
  {
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = 0;
  }

  v5 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v5, "Input view editor wants visible keyboard: %ld", 45, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_10146C6B0;
  v7 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_scribbleInProgress;
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_scribbleInProgress);
  *(v6 + 56) = &type metadata for Bool;
  *(v6 + 64) = &protocol witness table for Bool;
  *(v6 + 32) = v8;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Input view scribble in progress: %ld", 36, 2, v6);
  swift_setDeallocating();
  sub_100005070(v6 + 32);
  v10 = *(v0 + v3);
  if (!v10)
  {
    return [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v11 = *(v0 + v7);
  swift_unknownObjectRetain();
  if ((v11 & 1) != 0 || ![v10 wantsVisibleKeyboard] || *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_keyboardIsHiding) == 1)
  {
    v12 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_unknownObjectRelease();
    return v12;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

void *sub_1007EA38C()
{
  v9 = sub_1007EA690();
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v1 && [v1 wantsToReceiveTextInput])
  {
    v2 = objc_opt_self();
    v3 = [v2 keyCommandWithInput:UIKeyInputDelete modifierFlags:0x80000 action:"deleteWordBackward"];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v2 keyCommandWithInput:v4 modifierFlags:0x80000 action:"deleteWordForward"];

    [v3 setWantsPriorityOverSystemBehavior:1];
    [v5 setWantsPriorityOverSystemBehavior:1];
    sub_1005B981C(&unk_1019F4D60);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10146CE00;
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    sub_10079B65C(v6);
  }

  v7 = sub_1007EEAB8();
  sub_10079B65C(v7);
  return v9;
}

void *sub_1007EA690()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 keyCommandWithInput:v1 modifierFlags:0 action:"insertTab:"];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 keyCommandWithInput:v4 modifierFlags:0x20000 action:"insertBackTab:"];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v2 keyCommandWithInput:v6 modifierFlags:0 action:"insertNewline:"];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v8 = [v2 keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"escapePressed:"];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v9 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v9)
  {
    v10 = [v9 keyInputReceiver];
    if (v10)
    {
      if ([v10 handlesSpacebar])
      {
        v11 = String._bridgeToObjectiveC()();
        v12 = [v2 keyCommandWithInput:v11 modifierFlags:0 action:"spacebarTapped:"];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return _swiftEmptyArrayStorage;
}