void *sub_1012CE88C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptySetSingleton;
  }

  v2 = a1 + 56;
  do
  {
    v3 = *(v2 - 24);
    swift_bridgeObjectRetain_n();

    sub_100636EA0(v3);

    sub_100636EA0(v4);

    sub_100636EA0(v5);

    sub_100636EA0(v6);

    v2 += 32;
    --v1;
  }

  while (v1);
  return _swiftEmptySetSingleton;
}

Swift::Int sub_1012CE9B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  Hasher.init(_seed:)();
  v6 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  (*(v6 + 32))(ObjectType, v6);
  sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

uint64_t sub_1012CEB04()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 32))(ObjectType, v5);
  sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v2 + 8))(v4, v1);
}

Swift::Int sub_1012CEC40()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v5 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 32))(ObjectType, v5);
  sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

uint64_t sub_1012CED94(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = *a2;
  v12 = *(*a1 + 24);
  ObjectType = swift_getObjectType();
  (*(v12 + 32))(ObjectType, v12);
  v14 = *(v11 + 24);
  v15 = swift_getObjectType();
  (*(v14 + 32))(v15, v14);
  LOBYTE(a2) = static UUID.== infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v7, v4);
  v16(v10, v4);
  return a2 & 1;
}

void sub_1012CEF04()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState;
  if (*(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v26 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState;
    v25 = objc_opt_self();
    v3 = [v25 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
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
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 132;
    v15 = v27;
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
    sub_100005404(v10, &_mh_execute_header, v19, "beginMarking() called while marking state already active", 56, 2, _swiftEmptyArrayStorage);

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

    [v25 handleFailureInFunction:v22 file:v23 lineNumber:132 isFatal:0 format:v24 args:v21];

    v2 = v26;
  }

  *(v1 + v2) = 1;
}

void sub_1012CF2EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) & 1) == 0)
  {
    v26 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState;
    v25 = objc_opt_self();
    v3 = [v25 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
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
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 138;
    v15 = v27;
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
    sub_100005404(v10, &_mh_execute_header, v19, "endMarking() called while marking state is not active", 53, 2, _swiftEmptyArrayStorage);

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

    [v25 handleFailureInFunction:v22 file:v23 lineNumber:138 isFatal:0 format:v24 args:v21];

    v2 = v26;
  }

  *(v1 + v2) = 0;
}

uint64_t sub_1012CF6CC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    if ((*(v3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (a3)
  {
LABEL_5:
    *(v3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
    return result;
  }

  if (*(v3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) == 1)
  {
    v28 = v4;
    v6 = result;
    type metadata accessor for CRLTransactableHashableWrapper();
    ObjectType = swift_getObjectType();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = a2;
    v9 = a2;
    v10 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications;
    swift_beginAccess();
    v11 = *(v3 + v10);
    v12 = *(v11 + 16);
    swift_unknownObjectRetain();
    if (v12)
    {

      v13 = sub_1007C7FB8(v8);
      if (v14)
      {
        v15 = (*(v11 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];
        swift_unknownObjectRetain();

        v18 = (*(v9 + 56))(ObjectType, v9);
        v20 = v19;
        v21 = swift_getObjectType();
        v22 = (*(v20 + 64))(v16, v17, v21, v20);
        type metadata accessor for CRLInertOwner();
        v23 = swift_allocObject();
        *(v23 + 16) = 0x774F207472656E49;
        *(v23 + 24) = 0xEB0000000072656ELL;

        v25 = sub_1008228E4(v24, 1);

        v26 = (*(v20 + 80))(v22, v25, v21, v20);
        if (v28)
        {

          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

        else
        {
          (*(*v25 + 720))(v26);

          swift_beginAccess();
          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = *(v3 + v10);
          *(v3 + v10) = 0x8000000000000000;
          sub_100A9AB44(v18, v20, v8, isUniquelyReferenced_nonNull_native);

          *(v3 + v10) = v29;
          swift_endAccess();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1012CF9F8()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v2 - 8);
  v191 = &v176 - v3;
  v197 = type metadata accessor for UUID();
  v187 = *(v197 - 8);
  __chkstk_darwin(v197);
  v176 = &v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v185 = &v176 - v6;
  __chkstk_darwin(v7);
  v181 = &v176 - v8;
  __chkstk_darwin(v9);
  v186 = &v176 - v10;
  __chkstk_darwin(v11);
  v192 = &v176 - v12;
  if (qword_1019F22B8 != -1)
  {
    goto LABEL_149;
  }

LABEL_2:
  v13 = static OS_os_log.boardItemLifecycle;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v184 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v15 = v1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner;
  v16 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  swift_getObjectType();
  v201 = v16;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v17;
  *(inited + 40) = v19;
  v20 = static os_log_type_t.default.getter();
  sub_100005404(v13, &_mh_execute_header, v20, "Calling _ensureNoOrphans() on owner: [%{public}@]", 49, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v21 = *(v15 + 8);
  v189 = v15;
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 56);
  swift_unknownObjectRetain();
  LOBYTE(v21) = v23(ObjectType, v21);
  swift_unknownObjectRelease();
  v198 = v1;
  if (v21)
  {
    swift_beginAccess();

    v25 = sub_100DCA060(v24);
    v26 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v27 = *(v1 + v26);

    v28 = sub_1010AC864(v25, v27);
    v29 = v28;
    if ((v28 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for CRLTransactableHashableWrapper();
      sub_10004AA7C(&qword_101A22700, v30, type metadata accessor for CRLTransactableHashableWrapper);
      Set.Iterator.init(_cocoa:)();
      v29 = v202;
      v31 = v203;
      v32 = v204;
      v33 = v205;
      v34 = v206;
    }

    else
    {
      v33 = 0;
      v35 = -1 << *(v28 + 32);
      v31 = (v28 + 56);
      v32 = ~v35;
      v36 = -v35;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v34 = v37 & *(v28 + 56);
    }

    v38 = v191;
    v179 = v32;
    v180 = v29;
    v39 = (v32 + 64) >> 6;
    v190 = (v187 + 48);
    v182 = (v187 + 8);
    v183 = (v187 + 32);
    v193 = v31;
    v194 = v39;
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    v40 = __CocoaSet.Iterator.next()();
    if (v40)
    {
      v200 = v40;
      type metadata accessor for CRLTransactableHashableWrapper();
      swift_dynamicCast();
      v1 = v33;
      v41 = v34;
      if (v201)
      {
        while (1)
        {
          type metadata accessor for CRLBoardItem(0);
          v45 = swift_dynamicCastClass();
          if (v45)
          {
            v46 = v45;
            v196 = v41;
            v47 = *((swift_isaMask & *v45) + 0xB8);
            v48 = swift_unknownObjectRetain();
            v47(v48);
            v49 = v197;
            if ((*v190)(v38, 1, v197) == 1)
            {

              swift_unknownObjectRelease();
              sub_10000CAAC(v38, &qword_1019F6990);
              v33 = v1;
              v34 = v196;
              v31 = v193;
              v39 = v194;
              if (v29 < 0)
              {
                goto LABEL_10;
              }
            }

            else
            {
              v50 = v192;
              (*v183)(v192, v38, v49);
              v51 = *(v189 + 8);
              v52 = swift_getObjectType();
              v188 = *(v51 + 16);
              swift_unknownObjectRetain();
              v53 = v188(v50, v52, v51);
              swift_unknownObjectRelease();
              if (v53)
              {
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRetain();
                sub_1012DCC7C(v46, 1, 1, v198);

                swift_unknownObjectRelease_n();
              }

              v29 = v180;
              v31 = v193;
              v34 = v196;
              (*v182)(v192, v197);
              v33 = v1;
              v38 = v191;
              v39 = v194;
              if (v29 < 0)
              {
                goto LABEL_10;
              }
            }
          }

          else
          {

            v33 = v1;
            v34 = v41;
            v31 = v193;
            v39 = v194;
            if (v29 < 0)
            {
              goto LABEL_10;
            }
          }

LABEL_13:
          v42 = v33;
          v43 = v34;
          v1 = v33;
          if (!v34)
          {
            break;
          }

LABEL_17:
          v41 = (v43 - 1) & v43;
          v44 = *(*(v29 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v43)))));

          if (!v44)
          {
            goto LABEL_29;
          }
        }

        while (1)
        {
          v1 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_148;
          }

          if (v1 >= v39)
          {
            break;
          }

          v43 = v31[v1];
          ++v42;
          if (v43)
          {
            goto LABEL_17;
          }
        }
      }
    }

LABEL_29:
    sub_100035F90();
    v1 = v198;
  }

  v54 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v55 = *(v1 + v54);
  if ((v55 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_10004AA7C(&qword_101A22700, v56, type metadata accessor for CRLTransactableHashableWrapper);
    Set.Iterator.init(_cocoa:)();
    v55 = v207;
    v57 = v208;
    v58 = v209;
    v59 = v210;
    v60 = v211;
  }

  else
  {
    v61 = -1 << *(v55 + 32);
    v57 = (v55 + 56);
    v62 = ~v61;
    v63 = -v61;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    else
    {
      v64 = -1;
    }

    v60 = v64 & *(v55 + 56);

    v58 = v62;
    v59 = 0;
  }

  v182 = v58;
  v65 = (v58 + 8) >> 6;
  v1 = v186;
  v192 = v57;
  v193 = (v187 + 8);
  v183 = (v187 + 16);
  v188 = v55;
  v191 = v65;
  while (1)
  {
    v194 = v59;
    if ((v55 & 0x8000000000000000) != 0)
    {
      v71 = __CocoaSet.Iterator.next()();
      if (!v71)
      {
        goto LABEL_85;
      }

      v217 = v71;
      type metadata accessor for CRLTransactableHashableWrapper();
      swift_dynamicCast();
      v69 = v60;
      v70 = v200;
      v189 = v69;
      if (!v200)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v67 = v59;
      v68 = v60;
      if (!v60)
      {
        while (1)
        {
          v59 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            __break(1u);
            goto LABEL_147;
          }

          if (v59 >= v65)
          {
            break;
          }

          v68 = *&v57[8 * v59];
          ++v67;
          if (v68)
          {
            goto LABEL_45;
          }
        }

LABEL_85:
        sub_100035F90();
        v111 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects;
        v1 = v198;
        swift_beginAccess();
        v112 = *(v1 + v111);
        if ((v112 & 0xC000000000000001) != 0)
        {

          __CocoaSet.makeIterator()();
          type metadata accessor for CRLTransactableHashableWrapper();
          sub_10004AA7C(&qword_101A22700, v113, type metadata accessor for CRLTransactableHashableWrapper);
          Set.Iterator.init(_cocoa:)();
          v112 = v212;
          v114 = v213;
          v115 = v214;
          v116 = v215;
          v117 = v216;
        }

        else
        {
          v118 = -1 << *(v112 + 32);
          v114 = (v112 + 56);
          v119 = ~v118;
          v120 = -v118;
          if (v120 < 64)
          {
            v121 = ~(-1 << v120);
          }

          else
          {
            v121 = -1;
          }

          v117 = (v121 & *(v112 + 56));

          v115 = v119;
          v116 = 0;
        }

        v186 = v115;
        v122 = (v115 + 64) >> 6;
        v188 = v112;
        v189 = v114;
        v191 = v122;
        v194 = v116;
        if ((v112 & 0x8000000000000000) != 0)
        {
LABEL_92:
          v123 = __CocoaSet.Iterator.next()();
          if (v123)
          {
            v199 = v123;
            type metadata accessor for CRLTransactableHashableWrapper();
            swift_dynamicCast();
            v124 = v217;
            v125 = v117;
            if (v217)
            {
              goto LABEL_100;
            }
          }

          return sub_100035F90();
        }

        while (1)
        {
          v126 = v116;
          v127 = v117;
          if (!v117)
          {
            while (1)
            {
              v116 = v126 + 1;
              if (__OFADD__(v126, 1))
              {
                break;
              }

              if (v116 >= v122)
              {
                return sub_100035F90();
              }

              v127 = *&v114[8 * v116];
              ++v126;
              if (v127)
              {
                goto LABEL_99;
              }
            }

LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            swift_once();
            goto LABEL_2;
          }

LABEL_99:
          v125 = (v127 - 1) & v127;
          v124 = *(*(v112 + 48) + ((v116 << 9) | (8 * __clz(__rbit64(v127)))));

          if (!v124)
          {
            return sub_100035F90();
          }

LABEL_100:
          v190 = v117;
          v196 = v125;
          v128 = *(v124 + 16);
          type metadata accessor for CRLBoardItem(0);
          v129 = swift_dynamicCastClass();
          if (!v129)
          {
            type metadata accessor for CRLBoard(0);
            v159 = swift_dynamicCastClass();
            if (v159)
            {
              v160 = *(v159 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
              swift_unknownObjectRetain();
              v161 = v160;
              sub_1012D2280(v161, 1);
              swift_unknownObjectRelease();

              v112 = v188;
            }

            v117 = v196;
            goto LABEL_137;
          }

          v130 = v129;
          type metadata accessor for CRLContainerItem(0);
          v131 = swift_dynamicCastClass();
          swift_unknownObjectRetain_n();
          if (v131)
          {
            swift_unknownObjectRetain();
            sub_1012D2280(v131, 1);
            swift_unknownObjectRelease();
          }

          v132 = [v130 parentContainerItem];
          if (v132)
          {
            v133 = v132;
            v134 = v185;
            (*((swift_isaMask & *v130) + 0x88))();
            v135 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
            v136 = *&v133[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs];
            swift_unknownObjectRetain();
            v192 = v133;
            if (!v136)
            {
              sub_10096C7D4();
              v136 = *&v133[v135];
            }

            if (v136)
            {
              v137 = v136;
            }

            else
            {
              v137 = _swiftEmptyArrayStorage;
            }

            v138 = sub_1012CE040(v134, v137, &type metadata accessor for UUID, &qword_1019F37C0, &type metadata accessor for UUID);

            if (v138)
            {
              v181 = v128;
              v182 = v124;
              sub_1005B981C(&qword_101A1DBB0);
              v139 = v187;
              v140 = (*(v187 + 80) + 32) & ~*(v187 + 80);
              v141 = swift_allocObject();
              *(v141 + 16) = v184;
              v142 = *(v139 + 16);
              v143 = v134;
              v144 = v197;
              v142(v141 + v140, v143, v197);
              v145 = v192;
              v146 = v195;
              sub_1012E0400(v192, &off_10188FE10);
              v195 = v146;
              if (v146)
              {
                swift_unknownObjectRelease();
                sub_100035F90();

                swift_unknownObjectRelease_n();

                swift_setDeallocating();
                v174 = *v193;
                (*v193)(v141 + v140, v144);
                swift_deallocClassInstance();
                return v174(v185, v144);
              }

              v217 = _swiftEmptyArrayStorage;
              v147 = OBJC_IVAR____TtC8Freeform16CRLContainerItem_items;
              v180 = v141;
              v148 = v144;
              v149 = v176;
              v142(v176, v141 + v140, v148);
              v150 = *&v145[v147];
              if (*(v150 + 16))
              {

                v151 = sub_10003E994(v149);
                if (v152)
                {
                  v153 = *v193;
                  v154 = *(*(v150 + 56) + 8 * v151);
                  v155 = v149;
                  v156 = v197;
                  v153(v155, v197);

                  v157 = v154;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v217 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v158 = v217;
LABEL_123:
                  v164 = v195;
                  sub_100972450(v180);
                  v195 = v164;
                  if (v164)
                  {
                    swift_setDeallocating();
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    sub_100035F90();

                    swift_unknownObjectRelease_n();
                    v175 = v192;

                    v153(v185, v156);
                  }

                  v194 = v153;

                  if (v158 >> 62)
                  {
                    result = _CocoaArrayWrapper.endIndex.getter();
                    v165 = result;
                    if (result)
                    {
LABEL_126:
                      if (v165 < 1)
                      {
                        goto LABEL_151;
                      }

                      for (i = 0; i != v165; ++i)
                      {
                        if ((v158 & 0xC000000000000001) != 0)
                        {
                          v167 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        }

                        else
                        {
                          v167 = *(v158 + 8 * i + 32);
                        }

                        v168 = v167;
                        sub_1012DCC7C(v167, 0, 0, v198);
                      }
                    }
                  }

                  else
                  {
                    v165 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v165)
                    {
                      goto LABEL_126;
                    }
                  }

                  v1 = v198;
                  if (*(v198 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) == 1)
                  {
                    *(v198 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
                  }

                  swift_unknownObjectRelease_n();
                  v169 = v192;

                  v194(v185, v197);
                  v117 = v196;
                  v112 = v188;
                  goto LABEL_136;
                }
              }

              v153 = *v193;
              v163 = v149;
              v156 = v197;
              (*v193)(v163, v197);
              v158 = _swiftEmptyArrayStorage;
              goto LABEL_123;
            }

            v162 = v192;

            swift_unknownObjectRelease_n();
            (*v193)(v134, v197);
            v117 = v196;
            v1 = v198;
          }

          else
          {

            swift_unknownObjectRelease_n();
            v117 = v196;
          }

LABEL_136:
          v114 = v189;
LABEL_137:
          v122 = v191;
          v194 = v116;
          if ((v112 & 0x8000000000000000) != 0)
          {
            goto LABEL_92;
          }
        }
      }

LABEL_45:
      v189 = v60;
      v69 = (v68 - 1) & v68;
      v70 = *(*(v55 + 48) + ((v59 << 9) | (8 * __clz(__rbit64(v68)))));

      if (!v70)
      {
        goto LABEL_85;
      }
    }

    v196 = v69;
    v72 = *(v70 + 16);
    type metadata accessor for CRLBoardItem(0);
    v73 = swift_dynamicCastClass();
    if (!v73)
    {
      type metadata accessor for CRLBoard(0);
      v100 = swift_dynamicCastClass();
      if (v100)
      {
        v101 = *(v100 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
        swift_unknownObjectRetain();
        v102 = v101;
        sub_1012D2280(v102, 0);
        swift_unknownObjectRelease();

        v1 = v186;
      }

      goto LABEL_38;
    }

    v74 = v73;
    type metadata accessor for CRLContainerItem(0);
    v75 = swift_dynamicCastClass();
    swift_unknownObjectRetain_n();
    if (v75)
    {
      swift_unknownObjectRetain();
      sub_1012D2280(v75, 0);
      swift_unknownObjectRelease();
    }

    v76 = [v74 parentContainerItem];
    if (v76)
    {
      break;
    }

    swift_unknownObjectRelease_n();
LABEL_84:
    v60 = v196;
    v55 = v188;
LABEL_39:
    v65 = v191;
    v57 = v192;
  }

  v77 = v76;
  (*((swift_isaMask & *v74) + 0x88))();
  v78 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
  v79 = *&v77[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs];
  swift_unknownObjectRetain();
  v190 = v77;
  if (!v79)
  {
    sub_10096C7D4();
    v79 = *&v77[v78];
  }

  if (v79)
  {
    v80 = v79;
  }

  else
  {
    v80 = _swiftEmptyArrayStorage;
  }

  v81 = sub_1012CE040(v1, v80, &type metadata accessor for UUID, &qword_1019F37C0, &type metadata accessor for UUID);

  v55 = v188;
  if (!v81)
  {

    v66 = v190;

    swift_unknownObjectRelease_n();
    (*v193)(v1, v197);
LABEL_38:
    v60 = v196;
    goto LABEL_39;
  }

  v179 = v72;
  v180 = v70;
  sub_1005B981C(&qword_101A1DBB0);
  v82 = v187;
  v83 = (*(v187 + 80) + 32) & ~*(v187 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v184;
  v85 = *(v82 + 16);
  v85(v84 + v83, v1, v197);
  v86 = v190;
  v87 = v195;
  sub_1012E0400(v190, &off_10188FE10);
  v195 = v87;
  if (v87)
  {
    swift_unknownObjectRelease();
    sub_100035F90();

    swift_unknownObjectRelease_n();

    swift_setDeallocating();
    v170 = *v193;
    v171 = v84 + v83;
    v172 = v197;
    (*v193)(v171, v197);
    swift_deallocClassInstance();
    return v170(v186, v172);
  }

  v200 = _swiftEmptyArrayStorage;
  v88 = OBJC_IVAR____TtC8Freeform16CRLContainerItem_items;
  v178 = v84;
  v89 = v181;
  v85(v181, v84 + v83, v197);
  v90 = *(v86 + v88);
  v91 = v86;
  if (!*(v90 + 16))
  {
    goto LABEL_70;
  }

  v92 = sub_10003E994(v89);
  if ((v93 & 1) == 0)
  {

LABEL_70:
    v177 = *v193;
    v177(v89, v197);
    v99 = _swiftEmptyArrayStorage;
    goto LABEL_71;
  }

  v94 = *v193;
  v95 = *(*(v90 + 56) + 8 * v92);
  v96 = v89;
  v97 = v95;
  v177 = v94;
  v94(v96, v197);

  v98 = v97;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v200 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v200 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v99 = v200;
LABEL_71:
  v103 = v91;
  v104 = v195;
  sub_100972450(v178);
  v195 = v104;
  if (!v104)
  {

    if (v99 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v106 = result;
      if (result)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v106 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v106)
      {
LABEL_74:
        if (v106 < 1)
        {
          __break(1u);
LABEL_151:
          __break(1u);
          return result;
        }

        for (j = 0; j != v106; ++j)
        {
          if ((v99 & 0xC000000000000001) != 0)
          {
            v108 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v108 = *(v99 + 8 * j + 32);
          }

          v109 = v108;
          sub_1012DCC7C(v108, 0, 0, v198);
        }
      }
    }

    if (*(v198 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) == 1)
    {
      *(v198 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
    }

    swift_unknownObjectRelease_n();
    v110 = v190;

    v1 = v186;
    v177(v186, v197);
    goto LABEL_84;
  }

  swift_setDeallocating();
  v173 = v197;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100035F90();

  swift_unknownObjectRelease_n();

  v177(v186, v173);
}

void *sub_1012D10C0()
{
  sub_1012CF9F8();
  if (!v1)
  {
    if (*(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) == 1)
    {
      type metadata accessor for CRLUndoingAction();
      v2 = swift_allocObject();
      v2[2] = _swiftEmptyDictionarySingleton;
      v2[3] = _swiftEmptySetSingleton;
      v2[4] = _swiftEmptySetSingleton;
    }

    else
    {
      v2 = 0;
    }

    if (*(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) == 1)
    {
      v3 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 40);
      swift_unknownObjectRetain();
      v5(v0, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    v6 = sub_1012D11E8(v2, 1);
    v7 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta);
    *(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = v6;

    *(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 0;
  }

  return v2;
}

uint64_t sub_1012D11E8(uint64_t a1, int a2)
{
  v3 = v2;
  v163 = a2;
  v186 = type metadata accessor for UUID();
  v158 = *(v186 - 8);
  v5 = __chkstk_darwin(v186);
  v171 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v181 = &v153 - v8;
  __chkstk_darwin(v7);
  v184 = &v153 - v9;
  v10 = [objc_allocWithZone(type metadata accessor for CRLObservableDelta()) init];
  v183 = a1;
  if (a1)
  {
    swift_beginAccess();

    v12 = sub_1012E2240(v11, v3);

    *(v183 + 32) = v12;
  }

  v169 = v10;
  v162 = 0;
  v13 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects;
  swift_beginAccess();
  v164 = v3;
  v159 = v13;
  v14 = *(v3 + v13);
  if ((v14 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_10004AA7C(&qword_101A22700, v15, type metadata accessor for CRLTransactableHashableWrapper);
    Set.Iterator.init(_cocoa:)();
    v14 = v190[6];
    v16 = v190[7];
    v17 = v190[8];
    v18 = v190[9];
    v19 = v190[10];
  }

  else
  {
    v20 = -1 << *(v14 + 32);
    v16 = v14 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v14 + 56);

    v18 = 0;
  }

  ObjectType = v17;
  v23 = (v17 + 64) >> 6;
  v185 = v14;
  v182 = v16;
  while (v14 < 0)
  {
    v29 = __CocoaSet.Iterator.next()();
    if (!v29 || (v190[0] = v29, type metadata accessor for CRLTransactableHashableWrapper(), swift_dynamicCast(), v28 = v188, v26 = v18, v27 = v19, !v188))
    {
LABEL_23:
      sub_100035F90();
      v37 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications;
      v38 = v164;
      swift_beginAccess();
      v39 = *(v38 + v37);
      v40 = *(v39 + 64);
      v187 = v39 + 64;
      v41 = 1 << *(v39 + 32);
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      else
      {
        v42 = -1;
      }

      v43 = v42 & v40;
      v44 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
      v45 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications;
      v166 = OBJC_IVAR____TtC8Freeform18CRLObservableDelta_observableDeltas;
      v167 = v39;

      v161 = v44;
      swift_beginAccess();
      v157 = v45;
      v46 = v43;
      swift_beginAccess();
      v47 = 0;
      v48 = (v41 + 63) >> 6;
      v185 = (v158 + 8);
      v156 = v158 + 16;
      v160 = v48;
      if (!v46)
      {
LABEL_30:
        while (1)
        {
          v49 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if (v49 >= v48)
          {

            return v169;
          }

          v46 = *(v187 + 8 * v49);
          ++v47;
          if (v46)
          {
            v47 = v49;
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_71;
      }

LABEL_34:
      while (2)
      {
        while (2)
        {
          v50 = __clz(__rbit64(v46)) | (v47 << 6);
          v51 = *(*(v167 + 48) + 8 * v50);
          v52 = (*(v167 + 56) + 16 * v50);
          v54 = *v52;
          v53 = v52[1];
          v55 = *(v51 + 16);
          v56 = *(v51 + 24);
          v172 = v51;
          v182 = v55;
          if (v163)
          {
            v168 = v53;
            ObjectType = swift_getObjectType();

            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v57 = v56;
            v58 = v162;
            sub_101277F5C(v38, ObjectType, v56);
            v162 = v58;
            if (v58)
            {
              goto LABEL_74;
            }

            v51 = v172;
            v59 = v54;
            v60 = v168;
          }

          else
          {

            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v57 = v56;
            v59 = v54;
            v60 = v53;
          }

          v46 &= v46 - 1;
          v61 = *(v38 + v161);
          v170 = v57;
          if ((v61 & 0xC000000000000001) != 0)
          {

            v62 = __CocoaSet.contains(_:)();

            if (v62)
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_41;
            }

            v165 = v46;
          }

          else
          {
            v165 = v46;
            if (*(v61 + 16))
            {
              v154 = v47;
              v155 = v59;
              v168 = v60;
              Hasher.init(_seed:)();
              v63 = *(v51 + 16);
              v64 = *(v51 + 24);
              v65 = swift_getObjectType();
              v66 = *(v64 + 32);

              v67 = v184;
              v179 = v64;
              ObjectType = v63;
              v177 = v64 + 32;
              v178 = v65;
              v176 = v66;
              v66(v65, v64);
              sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
              v68 = v186;
              dispatch thunk of Hashable.hash(into:)();
              v175 = *v185;
              v175(v67, v68);
              v69 = Hasher._finalize()();
              v70 = -1 << *(v61 + 32);
              v71 = v69 & ~v70;
              v174 = v61 + 56;
              if ((*(v61 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
              {
                v173 = ~v70;
                while (1)
                {
                  v72 = v61;
                  v73 = *(*(*(v61 + 48) + 8 * v71) + 24);
                  v74 = swift_getObjectType();
                  v75 = *(v73 + 32);

                  v76 = v184;
                  v75(v74, v73);
                  v77 = v181;
                  v176(v178, v179);
                  v78 = static UUID.== infix(_:_:)();

                  v79 = v77;
                  v80 = v186;
                  v81 = v175;
                  v175(v79, v186);
                  v81(v76, v80);
                  if (v78)
                  {
                    break;
                  }

                  v71 = (v71 + 1) & v173;
                  v61 = v72;
                  if (((*(v174 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
                  {
                    goto LABEL_48;
                  }
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                v38 = v164;
                v46 = v165;
                v47 = v154;
LABEL_41:

                v48 = v160;
                if (!v46)
                {
                  goto LABEL_30;
                }

                continue;
              }

LABEL_48:

              v38 = v164;
              v51 = v172;
              v47 = v154;
              v59 = v155;
              v60 = v168;
            }
          }

          break;
        }

        v82 = *(v38 + v159);

        v83 = sub_10079C5CC(v51, v82);

        if ((v83 & 1) == 0)
        {
          v84 = *(v38 + v157);
          if (*(v84 + 16))
          {

            v85 = sub_1007C7FB8(v51);
            if (v86)
            {
              v168 = v60;
              v87 = (*(v84 + 56) + 16 * v85);
              v88 = *v87;
              v89 = v87[1];
              v90 = v183;
              swift_unknownObjectRetain();

              if (v90)
              {
                v91 = swift_getObjectType();
                v92 = v170;
                v93 = v59;
                v94 = v184;
                (*(v170 + 32))(v91, v170);
                v95 = (*(v92 + 64))(v88, v89, v91, v92);
                swift_beginAccess();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v189 = *(v90 + 16);
                *(v90 + 16) = 0x8000000000000000;
                sub_100A9B1CC(v95, v94, isUniquelyReferenced_nonNull_native);
                v97 = v94;
                v59 = v93;
                (*v185)(v97, v186);
                *(v90 + 16) = v189;
                swift_endAccess();
              }

              swift_unknownObjectRelease();
              v60 = v168;
              goto LABEL_59;
            }
          }

          if (v183)
          {
            v98 = swift_getObjectType();
            v99 = v170;
            v100 = v184;
            (*(v170 + 32))(v98, v170);
            v101 = (*(v99 + 64))(v59, v60, v98, v99);
            v102 = v183;
            swift_beginAccess();
            v103 = swift_isUniquelyReferenced_nonNull_native();
            v189 = *(v102 + 16);
            *(v102 + 16) = 0x8000000000000000;
            sub_100A9B1CC(v101, v100, v103);
            (*v185)(v100, v186);
            *(v102 + 16) = v189;
            swift_endAccess();
          }
        }

LABEL_59:
        v104 = swift_getObjectType();
        v105 = v170;
        v106 = v171;
        (*(v170 + 32))(v104, v170);
        v107 = (*(v105 + 72))(v59, v60, v104, v105);
        v108 = v166;
        v109 = v169;
        swift_beginAccess();
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v189 = *&v109[v108];
        v111 = v189;
        *&v109[v108] = 0x8000000000000000;
        v112 = sub_10003E994(v106);
        v114 = v111[2];
        v115 = (v113 & 1) == 0;
        v116 = __OFADD__(v114, v115);
        v117 = v114 + v115;
        if (v116)
        {
          goto LABEL_72;
        }

        v118 = v113;
        if (v111[3] >= v117)
        {
          v46 = v165;
          if ((v110 & 1) == 0)
          {
            v125 = v165;
            v126 = v112;
            sub_100AA41B4();
            v112 = v126;
            v46 = v125;
          }
        }

        else
        {
          sub_100A89774(v117, v110);
          v112 = sub_10003E994(v171);
          v46 = v165;
          if ((v118 & 1) != (v119 & 1))
          {
            goto LABEL_77;
          }
        }

        v38 = v164;
        v120 = v189;
        if (v118)
        {
          *(v189[7] + 8 * v112) = v107;
        }

        else
        {
          v121 = v46;
          v189[(v112 >> 6) + 8] |= 1 << v112;
          v122 = v112;
          (*(v158 + 16))(v120[6] + *(v158 + 72) * v112, v171, v186);
          *(v120[7] + 8 * v122) = v107;
          v123 = v120[2];
          v116 = __OFADD__(v123, 1);
          v124 = v123 + 1;
          if (v116)
          {
            goto LABEL_73;
          }

          v120[2] = v124;
          v46 = v121;
        }

        (*v185)(v171, v186);
        *&v169[v166] = v120;
        swift_endAccess();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v48 = v160;
        if (!v46)
        {
          goto LABEL_30;
        }

        continue;
      }
    }

LABEL_21:
    v187 = v27;
    v30 = v28[3];
    v31 = swift_getObjectType();
    v32 = *(v30 + 56);
    swift_unknownObjectRetain();
    v34 = v32(v31, v30);
    if (v183)
    {
      v35 = v33;
      type metadata accessor for CRLTransactableHashableWrapper();
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      *(v36 + 24) = v35;
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_100E6B218(v190, v36);
      swift_endAccess();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v18 = v26;
    v19 = v187;
    v14 = v185;
    v16 = v182;
  }

  v24 = v18;
  v25 = v19;
  v26 = v18;
  if (v19)
  {
LABEL_17:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v14 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

    if (!v28)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_23;
    }

    v25 = *(v16 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_17;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:

  v128 = objc_opt_self();
  v129 = [v128 _atomicIncrementAssertCount];
  v188 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v188);
  StaticString.description.getter();
  v130 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v131 = String._bridgeToObjectiveC()();

  v132 = [v131 lastPathComponent];

  v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v135 = v134;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v136 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v129;
  v138 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v138;
  v139 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v139;
  *(inited + 72) = v130;
  *(inited + 136) = &type metadata for String;
  v140 = sub_1000053B0();
  *(inited + 112) = v133;
  *(inited + 120) = v135;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v140;
  *(inited + 152) = 474;
  v141 = v188;
  *(inited + 216) = v138;
  *(inited + 224) = v139;
  *(inited + 192) = v141;
  v142 = v130;
  v143 = v141;
  v144 = static os_log_type_t.error.getter();
  sub_100005404(v136, &_mh_execute_header, v144, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v145 = static os_log_type_t.error.getter();
  sub_100005404(v136, &_mh_execute_header, v145, "Transactable failed to provide a snapshot in an undoable transaction context", 76, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Transactable failed to provide a snapshot in an undoable transaction context");
  type metadata accessor for __VaListBuilder();
  v146 = swift_allocObject();
  v146[2] = 8;
  v146[3] = 0;
  v146[4] = 0;
  v146[5] = 0;
  v147 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v148 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v149 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v150 = String._bridgeToObjectiveC()();

  [v128 handleFailureInFunction:v148 file:v149 lineNumber:474 isFatal:1 format:v150 args:v147];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v151, v152);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_77:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1012D2280(void *a1, int a2)
{
  v91 = a2;
  v104 = a1;
  v89 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v89);
  v88 = &v78 - v2;
  v3 = type metadata accessor for UUID();
  v96 = *(v3 - 8);
  __chkstk_darwin(v3);
  v80 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v78 - v6;
  __chkstk_darwin(v7);
  v105 = &v78 - v8;
  v9 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v9 - 8);
  v82 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v78 - v12;
  __chkstk_darwin(v13);
  v85 = &v78 - v14;
  __chkstk_darwin(v15);
  v95 = &v78 - v16;
  __chkstk_darwin(v17);
  v97 = &v78 - v18;
  v103 = sub_1005B981C(&unk_101A28650);
  v19 = *(v103 - 1);
  __chkstk_darwin(v103);
  v21 = &v78 - v20;
  v22 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v22 - 8);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1005B981C(&unk_101A22740);
  v78 = *(v101 - 8);
  __chkstk_darwin(v101);
  v26 = &v78 - v25;
  if (qword_1019F22B8 != -1)
  {
    swift_once();
  }

  v102 = static OS_os_log.boardItemLifecycle;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v28 = v104;
  v29 = [v28 description];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v30;
  *(inited + 40) = v32;
  v33 = static os_log_type_t.default.getter();
  sub_100005404(v102, &_mh_execute_header, v33, "Calling _recursivelyDeleteChildren() on parent: [%{public}@]", 60, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v87 = v28;
  v86 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  type metadata accessor for CRLContainerItemData(0);
  v34 = *(*swift_dynamicCastClassUnconditional() + 840);

  v34(v35);

  v36 = v103;
  (*(v19 + 16))(v21, v24, v103);
  sub_10004AB24(v24, type metadata accessor for CRLContainerItemCRDTData);
  CROrderedSet.makeIterator()();
  (*(v19 + 8))(v21, v36);
  v37 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner;
  v38 = v97;
  v39 = v101;
  v102 = v26;
  CROrderedSet.Iterator.next()();
  v40 = v96;
  v103 = *(v96 + 48);
  v104 = (v96 + 48);
  v41 = (v103)(v38, 1, v3);
  v42 = v85;
  if (v41 != 1)
  {
    v98 = &v94[v37];
    v44 = *(v40 + 32);
    v43 = v40 + 32;
    v99 = v44;
    v84 = (v43 + 24);
    v100 = (v43 - 24);
    v90 = v3;
    v96 = v43;
    while (1)
    {
      v45 = v105;
      v99(v105, v38, v3);
      v46 = *(v98 + 1);
      ObjectType = swift_getObjectType();
      v48 = *(v46 + 16);
      swift_unknownObjectRetain();
      v49 = ObjectType;
      v39 = v101;
      v50 = v48(v45, v49, v46);
      v52 = v51;
      swift_unknownObjectRelease();
      if (!v50)
      {
        goto LABEL_23;
      }

      type metadata accessor for CRLBoardItem(0);
      v53 = swift_dynamicCastClass();
      if (!v53)
      {
        goto LABEL_20;
      }

      v54 = *((swift_isaMask & *v53) + 0xB8);
      v55 = (swift_isaMask & *v53) + 184;
      v56 = swift_unknownObjectRetain();
      v57 = v95;
      v93 = v54;
      v92 = v55;
      v58 = (v54)(v56);
      (*(**&v87[v86] + 264))(v58);
      (*v84)(v42, 0, 1, v3);
      v59 = *(v89 + 48);
      v60 = v88;
      sub_100060460(v57, v88);
      sub_100060460(v42, v60 + v59);
      v61 = v103;
      if ((v103)(v60, 1, v3) == 1)
      {
        break;
      }

      v62 = v81;
      sub_100060460(v60, v81);
      if (v61(v60 + v59, 1, v3) == 1)
      {
        v42 = v85;
        sub_10000CAAC(v85, &qword_1019F6990);
        v3 = v90;
        sub_10000CAAC(v95, &qword_1019F6990);
        (*v100)(v62, v3);
        v61 = v103;
LABEL_12:
        v63 = sub_10000CAAC(v60, &unk_101A0AFE0);
        goto LABEL_13;
      }

      v72 = v79;
      v99(v79, (v60 + v59), v3);
      sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID);
      LODWORD(v83) = dispatch thunk of static Equatable.== infix(_:_:)();
      v73 = *v100;
      (*v100)(v72, v3);
      v42 = v85;
      sub_10000CAAC(v85, &qword_1019F6990);
      sub_10000CAAC(v95, &qword_1019F6990);
      v73(v62, v90);
      v3 = v90;
      v63 = sub_10000CAAC(v60, &qword_1019F6990);
      v61 = v103;
      if (v83)
      {
        goto LABEL_18;
      }

LABEL_13:
      v64 = v82;
      v93(v63);
      if (v61(v64, 1, v3) == 1)
      {
        swift_unknownObjectRelease();
        sub_10000CAAC(v64, &qword_1019F6990);
LABEL_19:
        v39 = v101;
LABEL_20:
        v74 = swift_getObjectType();
        v75 = v91;
        sub_1012DEA8C(v50, v91 & 1, 1, v94, v74, v52);
        type metadata accessor for CRLContainerItem(0);
        v76 = swift_dynamicCastClass();
        if (v76)
        {
          sub_1012D2280(v76, v75 & 1);
        }

        swift_unknownObjectRelease();
LABEL_23:
        (*v100)(v105, v3);
        goto LABEL_24;
      }

      v65 = v80;
      v99(v80, v64, v3);
      v66 = *(v98 + 1);
      v67 = swift_getObjectType();
      v68 = *(v66 + 16);
      swift_unknownObjectRetain();
      v69 = v68(v65, v67, v66);
      v42 = v85;
      v70 = v69;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v71 = *v100;
      (*v100)(v65, v3);
      v39 = v101;
      if (!v70)
      {
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v71(v105, v3);
LABEL_24:
      v38 = v97;
      CROrderedSet.Iterator.next()();
      if ((v103)(v38, 1, v3) == 1)
      {
        return (*(v78 + 8))(v102, v39);
      }
    }

    v83 = v52;
    sub_10000CAAC(v42, &qword_1019F6990);
    v52 = v83;
    v3 = v90;
    sub_10000CAAC(v57, &qword_1019F6990);
    if (v61(v60 + v59, 1, v3) == 1)
    {
      sub_10000CAAC(v60, &qword_1019F6990);
LABEL_18:
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  return (*(v78 + 8))(v102, v39);
}

uint64_t sub_1012D2EE8()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1012D3044()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1012D3118(uint64_t a1)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_109;
  }

  type metadata accessor for CRLWatermarkTransactionContext(0);
  if (swift_dynamicCastClass())
  {
    v179 = objc_opt_self();
    v180 = [v179 _atomicIncrementAssertCount];
    v238[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v238);
    StaticString.description.getter();
    v181 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v182 = String._bridgeToObjectiveC()();

    v183 = [v182 lastPathComponent];

    v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v186 = v185;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v187 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v180;
    v189 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v189;
    v190 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v190;
    *(inited + 72) = v181;
    *(inited + 136) = &type metadata for String;
    v191 = sub_1000053B0();
    *(inited + 112) = v184;
    *(inited + 120) = v186;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v191;
    *(inited + 152) = 576;
    v192 = v238[0];
    *(inited + 216) = v189;
    *(inited + 224) = v190;
    *(inited + 192) = v192;
    v193 = v181;
    v194 = v192;
    v195 = static os_log_type_t.error.getter();
    sub_100005404(v187, &_mh_execute_header, v195, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v196 = static os_log_type_t.error.getter();
    sub_100005404(v187, &_mh_execute_header, v196, "Cannot call stepTo on another watermark", 39, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Cannot call stepTo on another watermark");
    type metadata accessor for __VaListBuilder();
    v197 = swift_allocObject();
    v197[2] = 8;
    v197[3] = 0;
    v197[4] = 0;
    v197[5] = 0;
    v198 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v176 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v177 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v178 = String._bridgeToObjectiveC()();

    [v179 handleFailureInFunction:v176 file:v177 lineNumber:576 isFatal:1 format:v178 args:v198];
    goto LABEL_115;
  }

  v2 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
  swift_beginAccess();
  v212 = v2;
  v3 = *(a1 + v2);
  v4 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
  swift_beginAccess();
  v211 = v4;

  v214 = sub_1012CE18C(v5, v3, sub_1012D4E00, sub_1012D6730, sub_100E72BE0);

  v6 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v210 = v6;
  v7 = *(a1 + v6);
  v8 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v209 = v8;

  v213 = sub_1012CE18C(v9, v7, sub_1012D4E00, sub_1012D6730, sub_100E72BE0);

  v10 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects;
  swift_beginAccess();
  v208 = v10;
  v11 = *(a1 + v10);
  v12 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects;
  swift_beginAccess();
  v219 = v12;

  v14 = sub_1012CE18C(v13, v11, sub_1012D4E00, sub_1012D6730, sub_100E72BE0);

  v15 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances;
  swift_beginAccess();
  v207 = v15;
  v16 = *(a1 + v15);
  v17 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances;
  swift_beginAccess();
  v206 = v17;

  v217 = sub_1012CE18C(v18, v16, sub_1012D4E00, sub_1012D6730, sub_100E72BE0);

  v19 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
  swift_beginAccess();
  v205 = v19;
  v20 = *(a1 + v19);
  v21 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
  swift_beginAccess();
  v204 = v21;
  v218 = v14;
  if (*(*(v235 + v21) + 16) <= v20[2] >> 3)
  {
    v238[0] = v20;

    sub_1012D5828(v23, &qword_1019F6990, &unk_10146D2F0, &type metadata accessor for UUID, sub_100ED6D70);

    v216 = v20;
  }

  else
  {

    v216 = sub_1012D5CC4(v22, v20);
  }

  v24 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds;
  swift_beginAccess();
  v203 = v24;
  v25 = *(a1 + v24);
  v26 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds;
  swift_beginAccess();
  v202 = v26;
  if (*(*(v235 + v26) + 16) <= v25[2] >> 3)
  {
    v238[0] = v25;

    sub_1012D5828(v28, &qword_1019F6990, &unk_10146D2F0, &type metadata accessor for UUID, sub_100ED6D70);

    v215 = v25;
  }

  else
  {

    v215 = sub_1012D5CC4(v27, v25);
  }

  v29 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications;
  swift_beginAccess();
  v221 = a1;
  v30 = *(a1 + v29);
  v31 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v35 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications;
  v231 = v30;

  v229 = v35;
  swift_beginAccess();
  v36 = 0;
  v222 = &_swiftEmptyDictionarySingleton;
  v37 = (v32 + 63) >> 6;
  v225 = v31;
  v227 = v37;
LABEL_12:
  v38 = v36;
  if (!v34)
  {
    goto LABEL_14;
  }

  do
  {
    v36 = v38;
LABEL_17:
    v39 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v40 = v39 | (v36 << 6);
    v41 = *(*(v231 + 48) + 8 * v40);
    v233 = *(*(v231 + 56) + 16 * v40);
    v42 = *(v41 + 24);
    ObjectType = swift_getObjectType();
    v44 = *(v42 + 56);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v45 = v44(ObjectType, v42);
    v47 = v46;
    swift_unknownObjectRelease();
    v48 = *(v235 + v229);
    v223 = v47;
    if (!*(v48 + 16))
    {
      goto LABEL_23;
    }

    v49 = sub_1007C7FB8(v41);
    if ((v50 & 1) == 0)
    {

LABEL_23:

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v238[0] = v222;
      v57 = sub_1007C7FB8(v41);
      v59 = v222[2];
      v60 = (v58 & 1) == 0;
      v61 = __OFADD__(v59, v60);
      v62 = v59 + v60;
      if (v61)
      {
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v63 = v58;
      if (v222[3] >= v62)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v80 = v57;
          sub_100AA3A24();
          v57 = v80;
        }
      }

      else
      {
        sub_100A88504(v62, isUniquelyReferenced_nonNull_native);
        v57 = sub_1007C7FB8(v41);
        if ((v63 & 1) != (v64 & 1))
        {
          goto LABEL_108;
        }
      }

      v65 = v238[0];
      v222 = v238[0];
      if (v63)
      {
        *(*(v238[0] + 7) + 16 * v57) = v233;

        swift_unknownObjectRelease();
      }

      else
      {
        *(v238[0] + (v57 >> 6) + 8) |= 1 << v57;
        *(v65[6] + 8 * v57) = v41;
        *(v65[7] + 16 * v57) = v233;
        v66 = v65[2];
        v61 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v61)
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v65[2] = v67;
      }

      swift_beginAccess();

      swift_unknownObjectRetain();
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v69 = *(v235 + v229);
      *(v235 + v229) = 0x8000000000000000;
      v70 = sub_1007C7FB8(v41);
      v72 = v69[2];
      v73 = (v71 & 1) == 0;
      v61 = __OFADD__(v72, v73);
      v74 = v72 + v73;
      if (v61)
      {
        goto LABEL_101;
      }

      v75 = v71;
      if (v69[3] >= v74)
      {
        if ((v68 & 1) == 0)
        {
          v81 = v70;
          sub_100AA3A24();
          v70 = v81;
          if (v75)
          {
            goto LABEL_39;
          }

          goto LABEL_42;
        }
      }

      else
      {
        sub_100A88504(v74, v68);
        v70 = sub_1007C7FB8(v41);
        if ((v75 & 1) != (v76 & 1))
        {
          goto LABEL_108;
        }
      }

      if (v75)
      {
LABEL_39:
        v77 = (v69[7] + 16 * v70);
        *v77 = v45;
        v77[1] = v223;

        swift_unknownObjectRelease();
LABEL_44:
        *(v235 + v229) = v69;
        swift_endAccess();
        goto LABEL_45;
      }

LABEL_42:
      v69[(v70 >> 6) + 8] |= 1 << v70;
      *(v69[6] + 8 * v70) = v41;
      v82 = (v69[7] + 16 * v70);
      *v82 = v45;
      v82[1] = v223;
      v83 = v69[2];
      v61 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v61)
      {
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v69[2] = v84;
      goto LABEL_44;
    }

    v51 = (*(v48 + 56) + 16 * v49);
    v53 = *v51;
    v52 = v51[1];
    swift_unknownObjectRetain();

    v54 = swift_getObjectType();
    v239 = swift_getObjectType();
    v238[0] = v45;
    v55 = *(v52 + 136);
    swift_unknownObjectRetain();
    LOBYTE(v54) = v55(v238, v54, v52);
    sub_10000CAAC(v238, &unk_1019F4D00);
    if ((v54 & 1) == 0)
    {

      swift_unknownObjectRetain();
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v238[0] = v222;
      sub_100A9AB44(v53, v52, v41, v78);

      v222 = v238[0];
      swift_beginAccess();

      swift_unknownObjectRetain();
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v237 = *(v235 + v229);
      *(v235 + v229) = 0x8000000000000000;
      sub_100A9AB44(v45, v223, v41, v79);

      *(v235 + v229) = v237;
      swift_endAccess();
      swift_unknownObjectRelease();
      v31 = v225;
      v37 = v227;
LABEL_45:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_12;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v38 = v36;
    v31 = v225;
    v37 = v227;
  }

  while (v34);
  while (1)
  {
LABEL_14:
    v36 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (v36 >= v37)
    {
      break;
    }

    v34 = *(v31 + 8 * v36);
    ++v38;
    if (v34)
    {
      goto LABEL_17;
    }
  }

  v85 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications;
  swift_beginAccess();
  v201 = v85;
  v86 = *(v221 + v85);
  v89 = *(v86 + 64);
  v88 = v86 + 64;
  v87 = v89;
  v90 = 1 << *(*(v221 + v85) + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v92 = v91 & v87;
  v93 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications;
  v230 = *(v221 + v85);

  v232 = v93;
  swift_beginAccess();
  v94 = 0;
  v220 = &_swiftEmptyDictionarySingleton;
  v95 = (v90 + 63) >> 6;
  v226 = v88;
  v228 = v95;
LABEL_49:
  v96 = v94;
  if (!v92)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v94 = v96;
LABEL_54:
    v97 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
    v98 = v97 | (v94 << 6);
    v99 = *(*(v230 + 48) + 8 * v98);
    v234 = *(*(v230 + 56) + 16 * v98);
    v100 = *(v99 + 24);
    v101 = swift_getObjectType();
    v102 = *(v100 + 56);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v103 = v102(v101, v100);
    v105 = v104;
    swift_unknownObjectRelease();
    v106 = *(v235 + v232);
    v224 = v105;
    if (!*(v106 + 16))
    {
      goto LABEL_60;
    }

    v107 = sub_1007C7FB8(v99);
    if ((v108 & 1) == 0)
    {
      break;
    }

    v109 = (*(v106 + 56) + 16 * v107);
    v110 = *v109;
    v111 = v109[1];
    swift_unknownObjectRetain();

    v112 = swift_getObjectType();
    v239 = swift_getObjectType();
    v238[0] = v103;
    v113 = *(v111 + 136);
    swift_unknownObjectRetain();
    LOBYTE(v112) = v113(v238, v112, v111);
    sub_10000CAAC(v238, &unk_1019F4D00);
    if ((v112 & 1) == 0)
    {

      swift_unknownObjectRetain();
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v238[0] = v220;
      sub_100A9AB44(v110, v111, v99, v135);

      v220 = v238[0];
      swift_beginAccess();

      swift_unknownObjectRetain();
      v136 = swift_isUniquelyReferenced_nonNull_native();
      v236 = *(v235 + v232);
      *(v235 + v232) = 0x8000000000000000;
      sub_100A9AB44(v103, v224, v99, v136);

      *(v235 + v232) = v236;
      swift_endAccess();
      swift_unknownObjectRelease();
      v88 = v226;
      v95 = v228;
LABEL_82:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_49;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v96 = v94;
    v88 = v226;
    v95 = v228;
    if (!v92)
    {
      while (1)
      {
LABEL_51:
        v94 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          goto LABEL_99;
        }

        if (v94 >= v95)
        {
          break;
        }

        v92 = *(v88 + 8 * v94);
        ++v96;
        if (v92)
        {
          goto LABEL_54;
        }
      }

      *(v235 + v211) = *(v221 + v212);

      *(v235 + v209) = *(v221 + v210);

      *(v235 + v219) = *(v221 + v208);

      *(v235 + v206) = *(v221 + v207);

      *(v235 + v204) = *(v221 + v205);

      *(v235 + v202) = *(v221 + v203);

      v142 = *(v221 + v201);
      swift_beginAccess();
      *(v235 + v232) = v142;

      if (!v222[2])
      {
        if ((v214 & 0xC000000000000001) != 0)
        {
          if (__CocoaSet.count.getter())
          {
            goto LABEL_94;
          }

LABEL_88:
          if ((v213 & 0xC000000000000001) != 0)
          {
            if (__CocoaSet.count.getter())
            {
              goto LABEL_94;
            }

LABEL_92:
            v143 = *(v235 + v219);
            if ((v143 & 0xC000000000000001) != 0)
            {

              v144 = __CocoaSet.count.getter();

              if (v144)
              {
                goto LABEL_94;
              }

LABEL_97:

              return 0;
            }

            if (!*(v143 + 16))
            {
              goto LABEL_97;
            }
          }

          else if (!*(v213 + 16))
          {
            goto LABEL_92;
          }
        }

        else if (!*(v214 + 16))
        {
          goto LABEL_88;
        }
      }

LABEL_94:
      swift_allocObject();

      v146 = sub_1012E27CC(v145);

      v147 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications;
      swift_beginAccess();
      *(v146 + v147) = v222;

      v148 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
      swift_beginAccess();
      *(v146 + v148) = v214;

      v149 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
      swift_beginAccess();
      *(v146 + v149) = v213;

      v150 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects;
      swift_beginAccess();
      *(v146 + v150) = v218;

      v151 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances;
      swift_beginAccess();
      *(v146 + v151) = v217;

      v152 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications;
      swift_beginAccess();
      *(v146 + v152) = v220;

      v153 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
      swift_beginAccess();
      *(v146 + v153) = v216;

      v154 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds;
      swift_beginAccess();
      *(v146 + v154) = v215;

      return v146;
    }
  }

LABEL_60:

  swift_unknownObjectRetain();
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v238[0] = v220;
  v115 = sub_1007C7FB8(v99);
  v117 = v220[2];
  v118 = (v116 & 1) == 0;
  v61 = __OFADD__(v117, v118);
  v119 = v117 + v118;
  if (v61)
  {
    goto LABEL_102;
  }

  v120 = v116;
  if (v220[3] >= v119)
  {
    if ((v114 & 1) == 0)
    {
      v137 = v115;
      sub_100AA3A24();
      v115 = v137;
    }
  }

  else
  {
    sub_100A88504(v119, v114);
    v115 = sub_1007C7FB8(v99);
    if ((v120 & 1) != (v121 & 1))
    {
      goto LABEL_108;
    }
  }

  v122 = v238[0];
  v220 = v238[0];
  if (v120)
  {
    *(*(v238[0] + 7) + 16 * v115) = v234;

    swift_unknownObjectRelease();
    goto LABEL_70;
  }

  *(v238[0] + (v115 >> 6) + 8) |= 1 << v115;
  *(v122[6] + 8 * v115) = v99;
  *(v122[7] + 16 * v115) = v234;
  v123 = v122[2];
  v61 = __OFADD__(v123, 1);
  v124 = v123 + 1;
  if (v61)
  {
    goto LABEL_106;
  }

  v122[2] = v124;
LABEL_70:
  swift_beginAccess();

  swift_unknownObjectRetain();
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *(v235 + v232);
  *(v235 + v232) = 0x8000000000000000;
  v127 = sub_1007C7FB8(v99);
  v129 = v126[2];
  v130 = (v128 & 1) == 0;
  v61 = __OFADD__(v129, v130);
  v131 = v129 + v130;
  if (v61)
  {
    goto LABEL_103;
  }

  v132 = v128;
  if (v126[3] >= v131)
  {
    if ((v125 & 1) == 0)
    {
      v138 = v127;
      sub_100AA3A24();
      v127 = v138;
      if (v132)
      {
LABEL_76:
        v134 = (v126[7] + 16 * v127);
        *v134 = v103;
        v134[1] = v224;

        swift_unknownObjectRelease();
LABEL_81:
        *(v235 + v232) = v126;
        swift_endAccess();
        goto LABEL_82;
      }

      goto LABEL_79;
    }

LABEL_75:
    if (v132)
    {
      goto LABEL_76;
    }

LABEL_79:
    v126[(v127 >> 6) + 8] |= 1 << v127;
    *(v126[6] + 8 * v127) = v99;
    v139 = (v126[7] + 16 * v127);
    *v139 = v103;
    v139[1] = v224;
    v140 = v126[2];
    v61 = __OFADD__(v140, 1);
    v141 = v140 + 1;
    if (!v61)
    {
      v126[2] = v141;
      goto LABEL_81;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_100A88504(v131, v125);
  v127 = sub_1007C7FB8(v99);
  if ((v132 & 1) == (v133 & 1))
  {
    goto LABEL_75;
  }

LABEL_108:
  type metadata accessor for CRLTransactableHashableWrapper();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_109:
  v156 = objc_opt_self();
  v157 = [v156 _atomicIncrementAssertCount];
  v238[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v238);
  StaticString.description.getter();
  v158 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v159 = String._bridgeToObjectiveC()();

  v160 = [v159 lastPathComponent];

  v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v163 = v162;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v164 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v165 = swift_initStackObject();
  *(v165 + 16) = xmmword_10146CA70;
  *(v165 + 56) = &type metadata for Int32;
  *(v165 + 64) = &protocol witness table for Int32;
  *(v165 + 32) = v157;
  v166 = sub_100006370(0, &qword_1019F4D30);
  *(v165 + 96) = v166;
  v167 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v165 + 104) = v167;
  *(v165 + 72) = v158;
  *(v165 + 136) = &type metadata for String;
  v168 = sub_1000053B0();
  *(v165 + 112) = v161;
  *(v165 + 120) = v163;
  *(v165 + 176) = &type metadata for UInt;
  *(v165 + 184) = &protocol witness table for UInt;
  *(v165 + 144) = v168;
  *(v165 + 152) = 572;
  v169 = v238[0];
  *(v165 + 216) = v166;
  *(v165 + 224) = v167;
  *(v165 + 192) = v169;
  v170 = v158;
  v171 = v169;
  v172 = static os_log_type_t.error.getter();
  sub_100005404(v164, &_mh_execute_header, v172, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v165);

  v173 = static os_log_type_t.error.getter();
  sub_100005404(v164, &_mh_execute_header, v173, "Cannot call stepTo on a different context than the one it was created with.", 75, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Cannot call stepTo on a different context than the one it was created with.");
  type metadata accessor for __VaListBuilder();
  v174 = swift_allocObject();
  v174[2] = 8;
  v174[3] = 0;
  v174[4] = 0;
  v174[5] = 0;
  v175 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v176 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v177 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v178 = String._bridgeToObjectiveC()();

  [v156 handleFailureInFunction:v176 file:v177 lineNumber:572 isFatal:1 format:v178 args:v175];
LABEL_115:

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v199, v200);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1012D4B68()
{
  sub_1012D2EE8();

  return swift_deallocClassInstance();
}

uint64_t sub_1012D4C54()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1012D4C88(uint64_t a1, uint64_t a2)
{
  result = sub_10004AA7C(&qword_101A331D8, a2, type metadata accessor for CRLInertOwner);
  *(a1 + 8) = result;
  return result;
}

unint64_t *sub_1012D4D28(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1012E1890(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1012D4E00(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(*v1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_10004AA7C(&qword_101A22700, v4, type metadata accessor for CRLTransactableHashableWrapper);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      return sub_100035F90();
    }

    while (1)
    {
      sub_100ED6A00(v16);

      v7 = v14;
      v8 = v15;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for CRLTransactableHashableWrapper();
        swift_dynamicCast();
        v16 = v17;
        v14 = v7;
        v15 = v8;
        if (v17)
        {
          continue;
        }
      }

      return sub_100035F90();
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      return sub_100035F90();
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1012D5030(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100ED7018(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_1012D515C(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_10000CA44(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for CRLBoardIdentifier);
      sub_100ED780C(v9, v5);
      sub_10004AB24(v9, type metadata accessor for CRLBoardIdentifier);
      sub_10000CAAC(v5, &unk_1019F52D0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1012D5364(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(*v1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CalculateExpression();
    sub_10004AA7C(&qword_1019F37A0, 255, &type metadata accessor for CalculateExpression);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      return sub_100035F90();
    }

    while (1)
    {
      sub_100ED7D30();

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for CalculateExpression();
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      return sub_100035F90();
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      return sub_100035F90();
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1012D55A0(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F4D70);
    sub_10000FDE0(&qword_1019F69E8, &qword_1019F4D70);
    Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_100035F90();
      return;
    }

    while (1)
    {
      v16 = sub_100ED82B4(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100006370(0, &qword_1019F4D70);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1012D5828(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(char *))
{
  v25 = a3;
  v26 = a5;
  v24 = a2;
  v8 = sub_1005B981C(a2);
  __chkstk_darwin(v8 - 8);
  v10 = v23 - v9;
  v11 = a4(0);
  v12 = *(v11 - 8);
  result = __chkstk_darwin(v11);
  v15 = v23 - v14;
  if (*(*v5 + 16))
  {
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    v23[1] = v12 + 8;
    v23[2] = v12 + 16;

    for (i = 0; v18; result = sub_10000CAAC(v10, v24))
    {
      v21 = i;
LABEL_10:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v12 + 16))(v15, *(a1 + 48) + *(v12 + 72) * (v22 | (v21 << 6)), v11);
      v26(v15);
      (*(v12 + 8))(v15, v11);
    }

    while (1)
    {
      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
      }

      v18 = *(a1 + 56 + 8 * v21);
      ++i;
      if (v18)
      {
        i = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1012D5A80(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(id))
{
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v5 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    a2(0);
    sub_10004AA7C(a3, 255, a4);
    Set.Iterator.init(_cocoa:)();
    a1 = v26;
    v9 = v27;
    v10 = v28;
    v11 = v29;
    v12 = v30;
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a1 + 56);

    v11 = 0;
  }

  v16 = (v10 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (!v12)
    {
      break;
    }

LABEL_16:
    v20 = (v18 - 1) & v18;
    v21 = *(*(a1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
LABEL_22:
      sub_100035F90();
      return;
    }

    while (1)
    {
      v22 = a5(v21);

      v11 = v19;
      v12 = v20;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        a2(0);
        swift_dynamicCast();
        v21 = v25;
        v19 = v11;
        v20 = v12;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_22;
    }

    v18 = *(v9 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *sub_1012D5CC4(uint64_t a1, void *a2)
{
  v5 = sub_1005B981C(&qword_1019F6990);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v64 - v9);
  v11 = type metadata accessor for UUID();
  v12 = __chkstk_darwin(v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v64 - v15);
  __chkstk_darwin(v14);
  v79 = (&v64 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = a2 + 7;
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_10000CAAC(v30, &qword_1019F6990);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, a2[6] + v83 * v24, v11);
    v35 = sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    __chkstk_darwin(v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_10000CAAC(v24, &qword_1019F6990);
        a2 = sub_1010F4288(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, v52[6] + v54 * v83, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, v52[6] + v54 * v83, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_1012DB604(v63, v64, v79, v24, &v88);

LABEL_52:
  sub_100035F90();
  return a2;
}

void *sub_1012D6730(uint64_t a1, void *a2)
{
  v108 = type metadata accessor for UUID();
  v4 = *(v108 - 8);
  v5 = __chkstk_darwin(v108);
  v103 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v107 = &v88 - v7;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v88 = 0;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_10004AA7C(&qword_101A22700, v8, type metadata accessor for CRLTransactableHashableWrapper);
    Set.Iterator.init(_cocoa:)();
    a1 = v116;
    v10 = v117;
    v11 = v118;
    v12 = v119;
    v13 = v120;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v15 = ~v14;
    v16 = -v14;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & *(a1 + 56);

    v11 = v15;
    v12 = 0;
  }

  v111 = a1;
  v112 = v10;
  v113 = v11;
  v114 = v12;
  v92 = v11;
  v18 = (v11 + 64) >> 6;
  v106 = (v4 + 8);
  v104 = a2 + 7;
  v115 = v13;
  v95 = v18;
  v97 = a1;
  v96 = v10;
  while (1)
  {
    if (a1 < 0)
    {
      v26 = __CocoaSet.Iterator.next()();
      if (!v26)
      {
        goto LABEL_62;
      }

      v109 = v26;
      type metadata accessor for CRLTransactableHashableWrapper();
      swift_dynamicCast();
      v25 = v110;
      v22 = v12;
      v24 = v13;
      if (!v110)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v19 = v13;
      v20 = v12;
      if (v13)
      {
LABEL_20:
        v24 = (v19 - 1) & v19;
        v25 = *(*(a1 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

        v22 = v20;
      }

      else
      {
        if (v18 <= (v12 + 1))
        {
          v21 = v12 + 1;
        }

        else
        {
          v21 = v18;
        }

        v22 = v21 - 1;
        v23 = v12;
        while (1)
        {
          v20 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_66;
          }

          if (v20 >= v18)
          {
            break;
          }

          v19 = *(v10 + 8 * v20);
          ++v23;
          if (v19)
          {
            goto LABEL_20;
          }
        }

        v25 = 0;
        v24 = 0;
      }

      v111 = a1;
      v112 = v10;
      v113 = v92;
      v114 = v22;
      v115 = v24;
      if (!v25)
      {
LABEL_62:
        sub_100035F90();
        return a2;
      }
    }

    v98 = v22;
    v99 = v24;
    Hasher.init(_seed:)();
    v27 = *(v25 + 24);
    ObjectType = swift_getObjectType();
    v29 = v107;
    (*(v27 + 32))(ObjectType, v27);
    v30 = sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
    v31 = v108;
    v94 = v30;
    dispatch thunk of Hashable.hash(into:)();
    v105 = *v106;
    v105(v29, v31);
    v32 = Hasher._finalize()();
    v33 = -1 << *(a2 + 32);
    v12 = v32 & ~v33;
    v34 = v12 >> 6;
    v35 = 1 << v12;
    if (((1 << v12) & v104[v12 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v12 = v98;
    v13 = v99;
    a1 = v97;
    v10 = v96;
    v18 = v95;
  }

  v100 = ~v33;
  while (1)
  {
    v101 = v35;
    v102 = v34;
    v36 = *(*(a2[6] + 8 * v12) + 24);
    v37 = swift_getObjectType();
    v38 = *(v36 + 32);

    v39 = v107;
    v38(v37, v36);
    v40 = *(v25 + 24);
    v41 = swift_getObjectType();
    v42 = v103;
    (*(v40 + 32))(v41, v40);
    LOBYTE(v40) = static UUID.== infix(_:_:)();

    v43 = v108;
    v44 = v105;
    v105(v42, v108);
    v44(v39, v43);
    if (v40)
    {
      break;
    }

    v12 = (v12 + 1) & v100;
    v34 = v12 >> 6;
    v35 = 1 << v12;
    if (((1 << v12) & v104[v12 >> 6]) == 0)
    {
      goto LABEL_10;
    }
  }

  v46 = *(a2 + 32);
  a1 = ((1 << v46) + 63) >> 6;
  v9 = 8 * a1;
  if ((v46 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v89 = a1;
    v90 = &v88;
    __chkstk_darwin(v45);
    v48 = &v88 - ((v47 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v48, v104, v47);
    v49 = *&v48[8 * v102] & ~v101;
    v50 = a2[2];
    v91 = v48;
    *&v48[8 * v102] = v49;
    v51 = v50 - 1;
    v52 = v97;
    v12 = v96;
    v53 = v95;
    a1 = v99;
    v54 = v98;
    v55 = v107;
LABEL_33:
    v93 = v51;
    while (v52 < 0)
    {
      v57 = __CocoaSet.Iterator.next()();
      if (!v57)
      {
        goto LABEL_61;
      }

      v109 = v57;
      type metadata accessor for CRLTransactableHashableWrapper();
      swift_dynamicCast();
      v58 = v110;
      if (!v110)
      {
        goto LABEL_61;
      }

LABEL_50:
      v98 = v54;
      v99 = a1;
      Hasher.init(_seed:)();
      v62 = *(v58 + 24);
      v63 = swift_getObjectType();
      v64 = v107;
      (*(v62 + 32))(v63, v62);
      v65 = v108;
      dispatch thunk of Hashable.hash(into:)();
      v105(v64, v65);
      v66 = Hasher._finalize()();
      v67 = -1 << *(a2 + 32);
      v68 = v66 & ~v67;
      v69 = v68 >> 6;
      v70 = 1 << v68;
      if (((1 << v68) & v104[v68 >> 6]) != 0)
      {
        v100 = ~v67;
        while (1)
        {
          v101 = v70;
          v102 = v69;
          v71 = a2;
          v72 = *(*(a2[6] + 8 * v68) + 24);
          v73 = swift_getObjectType();
          v74 = *(v72 + 32);

          v74(v73, v72);
          v75 = *(v58 + 24);
          v76 = swift_getObjectType();
          v77 = v103;
          (*(v75 + 32))(v76, v75);
          v78 = static UUID.== infix(_:_:)();

          v79 = v108;
          v80 = v105;
          v105(v77, v108);
          v80(v55, v79);
          if (v78)
          {
            break;
          }

          v68 = (v68 + 1) & v100;
          v69 = v68 >> 6;
          v70 = 1 << v68;
          a2 = v71;
          if (((1 << v68) & v104[v68 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v81 = v91[v102];
        v82 = v101;
        v91[v102] = v81 & ~v101;
        a2 = v71;
        v52 = v97;
        v12 = v96;
        v53 = v95;
        a1 = v99;
        v54 = v98;
        v51 = v93;
        if ((v81 & v82) != 0)
        {
          v51 = v93 - 1;
          if (__OFSUB__(v93, 1))
          {
            __break(1u);
          }

          if (v93 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v52 = v97;
        v12 = v96;
        v53 = v95;
        a1 = v99;
        v54 = v98;
        v51 = v93;
      }
    }

    if (a1)
    {
      v56 = v54;
LABEL_48:
      v61 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v58 = *(*(v52 + 48) + ((v56 << 9) | (8 * v61)));

      v60 = v56;
LABEL_49:
      v111 = v52;
      v112 = v12;
      v113 = v92;
      v114 = v60;
      v54 = v60;
      v115 = a1;
      if (!v58)
      {
LABEL_61:
        a2 = sub_1010F3F24(v91, v89, v51, a2);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v53 <= (v54 + 1))
    {
      v59 = v54 + 1;
    }

    else
    {
      v59 = v53;
    }

    v60 = v59 - 1;
    while (1)
    {
      v56 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v56 >= v53)
      {
        v58 = 0;
        a1 = 0;
        goto LABEL_49;
      }

      a1 = *(v12 + 8 * v56);
      ++v54;
      if (a1)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v84 = v9;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v85 = swift_slowAlloc();
  memcpy(v85, v104, v84);
  v86 = v12;
  v87 = v88;
  a2 = sub_1012DB190(v85, a1, a2, v86, &v111);

  if (!v87)
  {

    goto LABEL_62;
  }

  __break(1u);
  return result;
}

void *sub_1012D7244(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1010F45B0(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = _swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1012DC29C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_100035F90();
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1012D77B4(uint64_t a1, void *a2)
{
  v5 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v83 - v9;
  v101 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v101);
  __chkstk_darwin(v11);
  v106 = &v83 - v12;
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v102 = (&v83 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v100 = v17;
  v104 = v15;
  v84 = 0;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v99 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v93 = (63 - v21) >> 6;
  v98 = (v16 + 56);
  v86 = v16;
  v97 = (v16 + 48);
  v105 = a2 + 7;

  v25 = 0;
  v96 = a1 + 56;
  for (i = v10; ; v10 = i)
  {
    v26 = v23;
    v27 = v25;
    if (v23)
    {
LABEL_15:
      v2 = (v26 - 1) & v26;
      sub_10000CA44(*(a1 + 48) + *(v86 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v10, type metadata accessor for CRLBoardIdentifier);
      v31 = 0;
      v29 = v27;
    }

    else
    {
      v28 = v93 <= v25 + 1 ? v25 + 1 : v93;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_69;
        }

        if (v27 >= v93)
        {
          break;
        }

        v26 = *(v20 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_15;
        }
      }

      v2 = 0;
      v31 = 1;
    }

    v32 = v101;
    v95 = *v98;
    v95(v10, v31, 1, v101);
    v108 = a1;
    v109 = v20;
    v110 = v99;
    v111 = v29;
    v112 = v2;
    v94 = *v97;
    if (v94(v10, 1, v32) == 1)
    {
      sub_10000CAAC(v10, &unk_1019F52D0);
      goto LABEL_65;
    }

    v33 = v102;
    sub_100025808(v10, v102, type metadata accessor for CRLBoardIdentifier);
    Hasher.init(_seed:)();
    v34 = type metadata accessor for UUID();
    v35 = sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
    v92 = v34;
    v91 = v35;
    dispatch thunk of Hashable.hash(into:)();
    v103 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v36 = (v33 + *(v103 + 20));
    v37 = v36[1];
    v88 = *v36;
    v87 = v37;
    String.hash(into:)();
    v38 = Hasher._finalize()();
    v39 = -1 << *(a2 + 32);
    v23 = v38 & ~v39;
    v20 = v23 >> 6;
    v10 = 1 << v23;
    if (((1 << v23) & v105[v23 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_10004AB24(v102, type metadata accessor for CRLBoardIdentifier);
    v25 = v29;
    v23 = v2;
    v20 = v96;
  }

  v40 = ~v39;
  v107 = *(v86 + 72);
  while (1)
  {
    v41 = v100;
    sub_10000CA44(a2[6] + v107 * v23, v100, type metadata accessor for CRLBoardIdentifier);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      sub_10004AB24(v41, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_20;
    }

    v42 = (v41 + *(v103 + 20));
    v43 = *v42 == v88 && v42[1] == v87;
    if (v43)
    {
      break;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v45 = v41;
    v46 = v44;
    sub_10004AB24(v45, type metadata accessor for CRLBoardIdentifier);
    if (v46)
    {
      goto LABEL_31;
    }

LABEL_20:
    v23 = (v23 + 1) & v40;
    v20 = v23 >> 6;
    v10 = 1 << v23;
    if ((v105[v23 >> 6] & (1 << v23)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_10004AB24(v41, type metadata accessor for CRLBoardIdentifier);
LABEL_31:
  v47 = sub_10004AB24(v102, type metadata accessor for CRLBoardIdentifier);
  v48 = *(a2 + 32);
  v87 = ((1 << v48) + 63) >> 6;
  v24 = 8 * v87;
  if ((v48 & 0x3Fu) > 0xD)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v88 = &v83;
    __chkstk_darwin(v47);
    v50 = &v83 - ((v49 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v50, v105, v49);
    v51 = *&v50[8 * v20] & ~v10;
    v52 = a2[2];
    v102 = v50;
    *&v50[8 * v20] = v51;
    v53 = v52 - 1;
    v23 = v96;
    v54 = v93;
    v90 = a1;
    v89 = v7;
LABEL_33:
    v100 = v53;
LABEL_35:
    while (2)
    {
      if (v2)
      {
        v55 = v29;
LABEL_45:
        v58 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
        sub_10000CA44(*(a1 + 48) + (v58 | (v55 << 6)) * v107, v7, type metadata accessor for CRLBoardIdentifier);
        v59 = 0;
LABEL_46:
        v60 = v101;
        v95(v7, v59, 1, v101);
        v108 = a1;
        v109 = v23;
        v110 = v99;
        v111 = v29;
        v112 = v2;
        if (v94(v7, 1, v60) == 1)
        {
          sub_10000CAAC(v7, &unk_1019F52D0);
          a2 = sub_1010F47E8(v102, v87, v100, a2);
          goto LABEL_65;
        }

        v61 = v106;
        sub_100025808(v7, v106, type metadata accessor for CRLBoardIdentifier);
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v62 = (v61 + *(v103 + 20));
        v20 = *v62;
        v10 = v62[1];
        String.hash(into:)();
        v63 = Hasher._finalize()();
        v64 = a2;
        v65 = -1 << *(a2 + 32);
        v66 = v63 & ~v65;
        v67 = v66 >> 6;
        v68 = 1 << v66;
        if (((1 << v66) & v105[v66 >> 6]) == 0)
        {
LABEL_34:
          sub_10004AB24(v106, type metadata accessor for CRLBoardIdentifier);
          a2 = v64;
          a1 = v90;
          v7 = v89;
          v23 = v96;
          v54 = v93;
          continue;
        }

        v69 = ~v65;
        v70 = v104;
        while (1)
        {
          sub_10000CA44(v64[6] + v66 * v107, v70, type metadata accessor for CRLBoardIdentifier);
          if (static UUID.== infix(_:_:)())
          {
            v71 = (v70 + *(v103 + 20));
            if (*v71 == v20 && v71[1] == v10)
            {
              sub_10004AB24(v70, type metadata accessor for CRLBoardIdentifier);
LABEL_60:
              sub_10004AB24(v106, type metadata accessor for CRLBoardIdentifier);
              v76 = v102[v67];
              v102[v67] = v76 & ~v68;
              v43 = (v76 & v68) == 0;
              a2 = v64;
              a1 = v90;
              v7 = v89;
              v23 = v96;
              v54 = v93;
              if (!v43)
              {
                v53 = v100 - 1;
                if (__OFSUB__(v100, 1))
                {
                  __break(1u);
                }

                if (v100 == 1)
                {

                  a2 = _swiftEmptySetSingleton;
                  goto LABEL_65;
                }

                goto LABEL_33;
              }

              goto LABEL_35;
            }

            v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v74 = v70;
            v75 = v73;
            sub_10004AB24(v74, type metadata accessor for CRLBoardIdentifier);
            if (v75)
            {
              goto LABEL_60;
            }
          }

          else
          {
            sub_10004AB24(v70, type metadata accessor for CRLBoardIdentifier);
          }

          v66 = (v66 + 1) & v69;
          v67 = v66 >> 6;
          v70 = v104;
          v68 = 1 << v66;
          if ((v105[v66 >> 6] & (1 << v66)) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      break;
    }

    v56 = v54 <= v29 + 1 ? v29 + 1 : v54;
    v57 = v56 - 1;
    while (1)
    {
      v55 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v55 >= v54)
      {
        v2 = 0;
        v59 = 1;
        v29 = v57;
        goto LABEL_46;
      }

      v2 = *(v23 + 8 * v55);
      ++v29;
      if (v2)
      {
        v29 = v55;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    v78 = v24;

    v79 = v78;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v80 = swift_slowAlloc();
  memcpy(v80, v105, v79);
  v81 = v84;
  v82 = sub_1012DBD7C(v80, v87, a2, v23, &v108);

  if (v81)
  {

    __break(1u);
  }

  else
  {

    a2 = v82;
LABEL_65:
    sub_100035F90();
    return a2;
  }

  return result;
}

void *sub_1012D8334(uint64_t a1, void *a2)
{
  v5 = sub_1005B981C(&qword_1019F6990);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v64 - v9);
  v11 = type metadata accessor for UUID();
  v12 = __chkstk_darwin(v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v64 - v15);
  __chkstk_darwin(v14);
  v79 = (&v64 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 64;
  v19 = *(a1 + 64);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = a2 + 7;
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 64; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_10000CAAC(v30, &qword_1019F6990);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, a2[6] + v83 * v24, v11);
    v35 = sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    __chkstk_darwin(v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_10000CAAC(v24, &qword_1019F6990);
        a2 = sub_1010F4288(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, v52[6] + v54 * v83, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, v52[6] + v54 * v83, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_1012DB604(v63, v64, v79, v24, &v88);

LABEL_52:
  sub_100035F90();
  return a2;
}

void *sub_1012D8DA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F4D70);
    sub_10000FDE0(&qword_1019F69E8, &qword_1019F4D70);
    Set.Iterator.init(_cocoa:)();
    v4 = v78;
    v6 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v73 = v4;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v64 = v7;
  v13 = (v7 + 64) >> 6;
  v70 = v3 + 7;
  v77 = v9;
  v67 = v6;
  v68 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_62;
      }

      v71 = v21;
      sub_100006370(0, &qword_1019F4D70);
      swift_dynamicCast();
      v19 = v72;
      v17 = v8;
      v2 = v9;
      if (!v72)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v73 = v4;
      v74 = v6;
      v75 = v64;
      v76 = v17;
      v77 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = v19;
    v23 = NSObject._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v67;
    v4 = v68;
  }

  v25 = ~v24;
  v26 = sub_100006370(0, &qword_1019F4D70);
  v27 = *(v3[6] + 8 * v8);
  v69 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v61;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin(v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v63 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v67;
    v35 = v68;
    v37 = i;
LABEL_33:
    v65 = v4;
    while (v35 < 0)
    {
      v38 = __CocoaSet.Iterator.next()();
      if (!v38)
      {
        goto LABEL_61;
      }

      v71 = v38;
      swift_dynamicCast();
      v39 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = NSObject._rawHashValue(seed:)(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v70[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = static NSObject.== infix(_:_:)();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v70[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v63[v48];
        v63[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
        if (!v53)
        {
          v4 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = _swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v41;
      v17 = v41;
      v77 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_1010F4F6C(v63, v61, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= v17 + 1)
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v5;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_1012DBAE0(v57, v61, v3, v8, &v73);
  v59 = v58;

  v3 = v59;
LABEL_62:
  sub_100035F90();
  return v3;
}

void *sub_1012D944C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1010F45B0(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = _swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1012DC29C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_100035F90();
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1012D99BC(uint64_t a1, void *a2)
{
  v5 = sub_1005B981C(&unk_101A23C40);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v64 - v9);
  v11 = type metadata accessor for IndexPath();
  v12 = __chkstk_darwin(v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v64 - v15);
  __chkstk_darwin(v14);
  v79 = (&v64 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = a2 + 7;
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_10000CAAC(v30, &unk_101A23C40);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_10004AA7C(&unk_101A23C60, 255, &type metadata accessor for IndexPath);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, a2[6] + v83 * v24, v11);
    v35 = sub_10004AA7C(&unk_101A226D0, 255, &type metadata accessor for IndexPath);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    __chkstk_darwin(v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_10000CAAC(v24, &unk_101A23C40);
        a2 = sub_1010F53A4(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, v52[6] + v54 * v83, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, v52[6] + v54 * v83, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_1012DC4D4(v63, v64, v79, v24, &v88);

LABEL_52:
  sub_100035F90();
  return a2;
}

void *sub_1012DA428(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLSceneInfo();
    sub_10004AA7C(&qword_101A28670, 255, type metadata accessor for CRLSceneInfo);
    Set.Iterator.init(_cocoa:)();
    v5 = v77;
    v7 = v78;
    v8 = v79;
    v9 = v80;
    v10 = v81;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v72 = v5;
  v73 = v7;
  v74 = v8;
  v75 = v9;
  v63 = v8;
  v14 = (v8 + 64) >> 6;
  v69 = v4 + 7;
  v76 = v10;
  v66 = v5;
  v67 = v14;
  v65 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_62;
      }

      v70 = v22;
      type metadata accessor for CRLSceneInfo();
      swift_dynamicCast();
      v20 = v71;
      v18 = v9;
      v2 = v10;
      if (!v71)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v72 = v5;
      v73 = v7;
      v74 = v63;
      v75 = v18;
      v76 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = v20;
    v24 = NSObject._rawHashValue(seed:)(v4[5]);
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v65;
    v5 = v66;
    v14 = v67;
  }

  v3 = ~v25;
  v26 = type metadata accessor for CRLSceneInfo();
  v27 = *(v4[6] + 8 * v7);
  v68 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v4[6] + 8 * v7);
  }

  v30 = *(v4 + 32);
  v60 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v60;
  v3 = v67;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v61 = &v59;
    __chkstk_darwin(v29);
    v32 = &v59 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v69, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = v4[2];
    v62 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v65;
    v35 = v66;
LABEL_33:
    v64 = v5;
    while (v35 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37)
      {
        goto LABEL_61;
      }

      v70 = v37;
      swift_dynamicCast();
      v38 = v71;
      if (!v71)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = NSObject._rawHashValue(seed:)(v4[5]);
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v69[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(v44[6] + 8 * v7);
          v50 = static NSObject.== infix(_:_:)();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v69[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v67;

        v51 = v62[v46];
        v62[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v65;
        v35 = v66;
        v5 = v64;
        if (!v52)
        {
          v5 = v64 - 1;
          if (__OFSUB__(v64, 1))
          {
            __break(1u);
          }

          if (v64 == 1)
          {

            v4 = _swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v65;
        v35 = v66;
        v3 = v67;
        v5 = v64;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v72 = v35;
      v73 = v36;
      v74 = v63;
      v75 = v40;
      v18 = v40;
      v76 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_1010F56CC(v62, v60, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v54 = v6;

    v55 = v54;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v56 = swift_slowAlloc();
  memcpy(v56, v69, v55);
  sub_1012DC9B0(v56, v60, v4, v7, &v72, type metadata accessor for CRLSceneInfo, sub_1010F56CC);
  v58 = v57;

  v4 = v58;
LABEL_62:
  sub_100035F90();
  return v4;
}

void *sub_1012DAADC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLCollaborationParticipant(0);
    sub_10004AA7C(&qword_101A00E38, 255, type metadata accessor for CRLCollaborationParticipant);
    Set.Iterator.init(_cocoa:)();
    v5 = v77;
    v7 = v78;
    v8 = v79;
    v9 = v80;
    v10 = v81;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v72 = v5;
  v73 = v7;
  v74 = v8;
  v75 = v9;
  v63 = v8;
  v14 = (v8 + 64) >> 6;
  v69 = v4 + 7;
  v76 = v10;
  v66 = v5;
  v67 = v14;
  v65 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_62;
      }

      v70 = v22;
      type metadata accessor for CRLCollaborationParticipant(0);
      swift_dynamicCast();
      v20 = v71;
      v18 = v9;
      v2 = v10;
      if (!v71)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v72 = v5;
      v73 = v7;
      v74 = v63;
      v75 = v18;
      v76 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = v20;
    v24 = NSObject._rawHashValue(seed:)(v4[5]);
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v65;
    v5 = v66;
    v14 = v67;
  }

  v3 = ~v25;
  v26 = type metadata accessor for CRLCollaborationParticipant(0);
  v27 = *(v4[6] + 8 * v7);
  v68 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v4[6] + 8 * v7);
  }

  v30 = *(v4 + 32);
  v60 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v60;
  v3 = v67;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v61 = &v59;
    __chkstk_darwin(v29);
    v32 = &v59 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v69, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = v4[2];
    v62 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v65;
    v35 = v66;
LABEL_33:
    v64 = v5;
    while (v35 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37)
      {
        goto LABEL_61;
      }

      v70 = v37;
      swift_dynamicCast();
      v38 = v71;
      if (!v71)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = NSObject._rawHashValue(seed:)(v4[5]);
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v69[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(v44[6] + 8 * v7);
          v50 = static NSObject.== infix(_:_:)();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v69[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v67;

        v51 = v62[v46];
        v62[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v65;
        v35 = v66;
        v5 = v64;
        if (!v52)
        {
          v5 = v64 - 1;
          if (__OFSUB__(v64, 1))
          {
            __break(1u);
          }

          if (v64 == 1)
          {

            v4 = _swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v65;
        v35 = v66;
        v3 = v67;
        v5 = v64;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v72 = v35;
      v73 = v36;
      v74 = v63;
      v75 = v40;
      v18 = v40;
      v76 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_1010F5904(v62, v60, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v54 = v6;

    v55 = v54;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v56 = swift_slowAlloc();
  memcpy(v56, v69, v55);
  sub_1012DC9B0(v56, v60, v4, v7, &v72, type metadata accessor for CRLCollaborationParticipant, sub_1010F5904);
  v58 = v57;

  v4 = v58;
LABEL_62:
  sub_100035F90();
  return v4;
}

void *sub_1012DB190(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50[0] = a2;
  v61 = type metadata accessor for UUID();
  v9 = __chkstk_darwin(v61);
  v54 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v60 = v50 - v12;
  v13 = *(a3 + 16);
  v14 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v15 = *(a1 + v14) & ((-1 << a4) - 1);
  v52 = a1;
  v53 = a5;
  *(a1 + v14) = v15;
  v16 = v13 - 1;
  v59 = (v17 + 8);
  v62 = a3;
  v57 = a3 + 56;
  while (2)
  {
    v51 = v16;
    do
    {
      while (1)
      {
        if ((*a5 & 0x8000000000000000) != 0)
        {
          v21 = __CocoaSet.Iterator.next()();
          if (!v21)
          {
            goto LABEL_30;
          }

          v64 = v21;
          type metadata accessor for CRLTransactableHashableWrapper();
          swift_dynamicCast();
          v22 = v63;
          if (!v63)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v18 = a5[3];
          v19 = a5[4];
          if (!v19)
          {
            v23 = (a5[2] + 64) >> 6;
            if (v23 <= v18 + 1)
            {
              v24 = v18 + 1;
            }

            else
            {
              v24 = (a5[2] + 64) >> 6;
            }

            v25 = v24 - 1;
            while (1)
            {
              v20 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                break;
              }

              if (v20 >= v23)
              {
                v22 = 0;
                v26 = 0;
                goto LABEL_18;
              }

              v19 = *(a5[1] + 8 * v20);
              ++v18;
              if (v19)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v20 = a5[3];
LABEL_17:
          v26 = (v19 - 1) & v19;
          v22 = *(*(*a5 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

          v25 = v20;
LABEL_18:
          a5[3] = v25;
          a5[4] = v26;
          if (!v22)
          {
LABEL_30:
            v49 = v62;

            return sub_1010F3F24(v52, v50[0], v51, v49);
          }
        }

        v27 = v62;
        Hasher.init(_seed:)();
        v28 = *(v22 + 24);
        ObjectType = swift_getObjectType();
        v30 = v60;
        (*(v28 + 32))(ObjectType, v28);
        sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
        v31 = v61;
        dispatch thunk of Hashable.hash(into:)();
        v58 = *v59;
        v58(v30, v31);
        v32 = Hasher._finalize()();
        v33 = -1 << *(v27 + 32);
        v34 = v32 & ~v33;
        v35 = v34 >> 6;
        v36 = 1 << v34;
        if (((1 << v34) & *(v57 + 8 * (v34 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        a5 = v53;
      }

      v55 = ~v33;
      while (1)
      {
        v56 = v35;
        v37 = *(*(*(v62 + 48) + 8 * v34) + 24);
        v38 = swift_getObjectType();
        v39 = *(v37 + 32);

        v40 = v60;
        v39(v38, v37);
        v41 = *(v22 + 24);
        v42 = swift_getObjectType();
        v43 = v54;
        (*(v41 + 32))(v42, v41);
        v44 = static UUID.== infix(_:_:)();

        v45 = v43;
        v46 = v61;
        v47 = v58;
        v58(v45, v61);
        v47(v40, v46);
        if (v44)
        {
          break;
        }

        v34 = (v34 + 1) & v55;
        v35 = v34 >> 6;
        v36 = 1 << v34;
        if (((1 << v34) & *(v57 + 8 * (v34 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

      a5 = v53;
      v48 = v52[v56];
      v52[v56] = v48 & ~v36;
    }

    while ((v48 & v36) == 0);
    v16 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_32:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return _swiftEmptySetSingleton;
  }
}

void *sub_1012DB604(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for UUID();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_10000CAAC(v11, &qword_1019F6990);
          v45 = v61;

          return sub_1010F4288(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return _swiftEmptySetSingleton;
  }
}

void sub_1012DBAE0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_30;
          }

          sub_100006370(0, &qword_1019F4D70);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_1010F4F6C(a1, a2, v30, a3);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_100006370(0, &qword_1019F4D70);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void *sub_1012DBD7C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v52 = a2;
  v9 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v51 - v10;
  v59 = type metadata accessor for CRLBoardIdentifier(0);
  v12 = __chkstk_darwin(v59);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v64 = &v51 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v54 = a1;
  v55 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21;
  v57 = (v21 + 48);
  v58 = (v21 + 56);
  v62 = a3 + 56;
  v63 = a3;
  v56 = a5;
LABEL_2:
  v53 = v20;
LABEL_4:
  while (2)
  {
    v22 = *a5;
    v23 = a5[1];
    v25 = a5[2];
    v24 = a5[3];
    v26 = a5[4];
    if (v26)
    {
      v27 = a5[3];
LABEL_13:
      v31 = (v26 - 1) & v26;
      sub_10000CA44(*(v22 + 48) + *(v60 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v11, type metadata accessor for CRLBoardIdentifier);
      v32 = 0;
      v30 = v27;
LABEL_14:
      v33 = v59;
      (*v58)(v11, v32, 1, v59);
      *a5 = v22;
      a5[1] = v23;
      a5[2] = v25;
      a5[3] = v30;
      a5[4] = v31;
      if ((*v57)(v11, 1, v33) == 1)
      {
        sub_10000CAAC(v11, &unk_1019F52D0);
        v50 = v63;

        return sub_1010F47E8(v54, v52, v53, v50);
      }

      v34 = v64;
      sub_100025808(v11, v64, type metadata accessor for CRLBoardIdentifier);
      v35 = v63;
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v61 = type metadata accessor for CRLBoardIdentifierStorage(0);
      v36 = (v34 + *(v61 + 20));
      v38 = *v36;
      v37 = v36[1];
      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = -1 << *(v35 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v62 + 8 * (v41 >> 6))) == 0)
      {
LABEL_3:
        result = sub_10004AB24(v64, type metadata accessor for CRLBoardIdentifier);
        v11 = v55;
        a5 = v56;
        continue;
      }

      v44 = ~v40;
      v45 = *(v60 + 72);
      while (1)
      {
        sub_10000CA44(*(v63 + 48) + v45 * v41, v14, type metadata accessor for CRLBoardIdentifier);
        if (static UUID.== infix(_:_:)())
        {
          v46 = &v14[*(v61 + 20)];
          if (*v46 == v38 && *(v46 + 1) == v37)
          {
            sub_10004AB24(v14, type metadata accessor for CRLBoardIdentifier);
LABEL_28:
            result = sub_10004AB24(v64, type metadata accessor for CRLBoardIdentifier);
            v11 = v55;
            v49 = v54[v42];
            v54[v42] = v49 & ~v43;
            a5 = v56;
            if ((v49 & v43) != 0)
            {
              v20 = v53 - 1;
              if (__OFSUB__(v53, 1))
              {
                goto LABEL_35;
              }

              if (v53 == 1)
              {
                return _swiftEmptySetSingleton;
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }

          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10004AB24(v14, type metadata accessor for CRLBoardIdentifier);
          if (v48)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_10004AB24(v14, type metadata accessor for CRLBoardIdentifier);
        }

        v41 = (v41 + 1) & v44;
        v42 = v41 >> 6;
        v43 = 1 << v41;
        if ((*(v62 + 8 * (v41 >> 6)) & (1 << v41)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v28 = (v25 + 64) >> 6;
  if (v28 <= v24 + 1)
  {
    v29 = v24 + 1;
  }

  else
  {
    v29 = (v25 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v27 >= v28)
    {
      v31 = 0;
      v32 = 1;
      goto LABEL_14;
    }

    v26 = *(v23 + 8 * v27);
    ++v24;
    if (v26)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t *sub_1012DC29C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1010F45B0(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return _swiftEmptySetSingleton;
    }

    return result;
  }
}

void *sub_1012DC4D4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1005B981C(&unk_101A23C40);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_10000CAAC(v11, &unk_101A23C40);
          v45 = v61;

          return sub_1010F53A4(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_10004AA7C(&unk_101A23C60, 255, &type metadata accessor for IndexPath);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_10004AA7C(&unk_101A226D0, 255, &type metadata accessor for IndexPath);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return _swiftEmptySetSingleton;
  }
}

void sub_1012DC9B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a5;
  v9 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v37 = a3 + 56;
  while (2)
  {
    v33 = v10;
    do
    {
      while (1)
      {
        if ((*v7 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_30;
          }

          a6(0);
          swift_dynamicCast();
          v14 = v38;
          if (!v38)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v11 = v7[3];
          v12 = v7[4];
          if (!v12)
          {
            v15 = (v7[2] + 64) >> 6;
            if (v15 <= v11 + 1)
            {
              v16 = v11 + 1;
            }

            else
            {
              v16 = (v7[2] + 64) >> 6;
            }

            v17 = v16 - 1;
            while (1)
            {
              v13 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                break;
              }

              if (v13 >= v15)
              {
                v14 = 0;
                v18 = 0;
                goto LABEL_18;
              }

              v12 = *(v7[1] + 8 * v13);
              ++v11;
              if (v12)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v13 = v7[3];
LABEL_17:
          v18 = (v12 - 1) & v12;
          v14 = *(*(*v7 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
          v19 = v14;
          v17 = v13;
LABEL_18:
          v7[3] = v17;
          v7[4] = v18;
          if (!v14)
          {
LABEL_30:

            a7(a1, a2, v33, a3);
            return;
          }
        }

        v20 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        a6(0);
        v25 = *(*(a3 + 48) + 8 * v22);
        v26 = static NSObject.== infix(_:_:)();

        if (v26)
        {
          break;
        }

        v27 = ~v21;
        while (1)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) == 0)
          {
            break;
          }

          v28 = *(*(a3 + 48) + 8 * v22);
          v29 = static NSObject.== infix(_:_:)();

          if (v29)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v7 = a5;
      }

LABEL_24:
      v7 = a5;

      v30 = *(a1 + 8 * v23);
      *(a1 + 8 * v23) = v30 & ~v24;
    }

    while ((v30 & v24) == 0);
    v10 = v33 - 1;
    if (__OFSUB__(v33, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v33 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1012DCC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLTransactableHashableWrapper();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_1012DCC7C(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v121) = a3;
  v120 = type metadata accessor for UUID();
  v7 = *(v120 - 8);
  v8 = __chkstk_darwin(v120);
  v10 = (&v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = &v108 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v108 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v108 - v18;
  __chkstk_darwin(v17);
  v115 = &v108 - v20;
  v21 = sub_1005B981C(&qword_1019F6990);
  v22 = __chkstk_darwin(v21 - 8);
  v116 = (&v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v25 = &v108 - v24;
  if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
LABEL_46:
    v7 = sub_100B356D0(0, v7[2] + 1, 1, v7);
    *&v13[a2] = v7;
    goto LABEL_40;
  }

  v112 = v16;
  v113 = v10;
  v117 = v19;
  v114 = v13;
  v119 = v7;
  *(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
  type metadata accessor for CRLTransactableHashableWrapper();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = &off_10188FE10;
  v118 = v26;
  if (a2)
  {
    v27 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v28 = *(a4 + v27);
    v110 = a1;

    v29 = sub_10079C5CC(v26, v28);

    if (v29)
    {
      swift_beginAccess();
      sub_100ED6A00(v26);
      swift_endAccess();

      swift_beginAccess();
      sub_100ED6A00(v26);
      swift_endAccess();

      swift_beginAccess();
      sub_1010F5918(v26);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_beginAccess();

      sub_100E6B218(v122, v26);
      swift_endAccess();

      swift_beginAccess();

      sub_100E6B218(v122, v26);
      swift_endAccess();

      if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
      {
        v31 = v115;
        (*((swift_isaMask & *v110) + 0x88))(v30);
        swift_beginAccess();
        sub_100ED6D70(v31, v25);
        v10 = v119;
        v119[1](v31, v120);
        sub_10000CAAC(v25, &qword_1019F6990);
        swift_endAccess();
        v32 = 1;
      }

      else
      {
        v32 = 1;
        v10 = v119;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v33 = a1;
  }

  swift_beginAccess();
  v34 = sub_1010F5918(v26);
  v36 = v35;
  v37 = swift_endAccess();
  v38 = v26;
  if (!v34)
  {
    v34 = (*((swift_isaMask & *a1) + 0x3A0))(v37);
    v36 = v39;
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_100E6B218(v122, v40);
  swift_endAccess();
  swift_unknownObjectRelease();

  swift_beginAccess();

  sub_100E6B218(v122, v38);
  swift_endAccess();

  v10 = v119;
  if ((a2 & 1) == 0 && (v121 & 1) == 0)
  {
    v42 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v43 = *(a4 + v42);

    v44 = sub_10079C5CC(v118, v43);

    if (v44)
    {
      v111 = a1;
      v109 = objc_opt_self();
      v45 = [v109 _atomicIncrementAssertCount];
      v122[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v122);
      StaticString.description.getter();
      v110 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v46 = String._bridgeToObjectiveC()();

      v47 = [v46 lastPathComponent];

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v49;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v50 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v45;
      v52 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v52;
      v53 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v53;
      v54 = v110;
      *(inited + 72) = v110;
      *(inited + 136) = &type metadata for String;
      v55 = sub_1000053B0();
      v56 = v108;
      *(inited + 112) = v48;
      *(inited + 120) = v56;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v55;
      *(inited + 152) = 359;
      v57 = v122[0];
      *(inited + 216) = v52;
      *(inited + 224) = v53;
      *(inited + 192) = v57;
      v58 = v54;
      v59 = v57;
      v60 = static os_log_type_t.error.getter();
      sub_100005404(v50, &_mh_execute_header, v60, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v50, &_mh_execute_header, v61, "A deleted object should not be listed as a created object", 57, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v62 = swift_allocObject();
      v62[2] = 8;
      v62[3] = 0;
      v62[4] = 0;
      v62[5] = 0;
      v63 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v64 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v65 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v66 = String._bridgeToObjectiveC()();

      [v109 handleFailureInFunction:v64 file:v65 lineNumber:359 isFatal:0 format:v66 args:v63];

      v10 = v119;
      a1 = v111;
    }
  }

  if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v67 = v113;
    (*((swift_isaMask & *a1) + 0x88))(v41);
    swift_beginAccess();
    v68 = v115;
    sub_100E6AF38(v115, v67);
    v10[1](v68, v120);
    swift_endAccess();
  }

  v32 = 0;
LABEL_18:
  v115 = a4;
  v69 = a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner;
  v70 = *(v69 + 8);
  ObjectType = swift_getObjectType();
  v72 = *(v70 + 32);
  swift_unknownObjectRetain();
  v72(a1, &off_10188FE10, v32, ObjectType, v70);
  swift_unknownObjectRelease();
  if ((v121 & 1) == 0)
  {
  }

  v73 = *((swift_isaMask & *a1) + 0xB8);
  v74 = a1;
  v75 = a1;
  v76 = v116;
  v73();
  v16 = v120;
  if ((v10[6])(v76, 1, v120) == 1)
  {

    v77 = sub_10000CAAC(v76, &qword_1019F6990);
    a2 = v115;
  }

  else
  {
    (v10[4])(v117, v76, v16);
    v78 = v10;
    if (qword_1019F22B8 != -1)
    {
      swift_once();
    }

    v121 = static OS_os_log.boardItemLifecycle;
    sub_1005B981C(&qword_1019F54E0);
    v79 = swift_initStackObject();
    *(v79 + 16) = xmmword_101483930;
    v80 = swift_isaMask & *v75;
    v111 = v74;
    v81 = v112;
    (*(v80 + 136))();
    v82 = UUID.uuidString.getter();
    v84 = v83;
    v85 = v78[1];
    v113 = (v78 + 1);
    v116 = v85;
    v85(v81, v120);
    *(v79 + 56) = &type metadata for String;
    v86 = sub_1000053B0();
    *(v79 + 64) = v86;
    *(v79 + 32) = v82;
    v112 = (v79 + 32);
    *(v79 + 40) = v84;
    v87 = v75;
    v88 = [v87 description];
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    *(v79 + 96) = &type metadata for String;
    *(v79 + 104) = v86;
    *(v79 + 72) = v89;
    *(v79 + 80) = v91;
    v92 = UUID.uuidString.getter();
    *(v79 + 136) = &type metadata for String;
    *(v79 + 144) = v86;
    *(v79 + 112) = v92;
    *(v79 + 120) = v93;
    a2 = v115;
    v94 = 1702195828;
    if (*(v115 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges))
    {
      v95 = 1702195828;
    }

    else
    {
      v95 = 0x65736C6166;
    }

    if (*(v115 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges))
    {
      v96 = 0xE400000000000000;
    }

    else
    {
      v96 = 0xE500000000000000;
    }

    *(v79 + 176) = &type metadata for String;
    *(v79 + 184) = v86;
    *(v79 + 152) = v95;
    *(v79 + 160) = v96;
    if (*(a2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable))
    {
      v97 = 1702195828;
    }

    else
    {
      v97 = 0x65736C6166;
    }

    if (*(a2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable))
    {
      v98 = 0xE400000000000000;
    }

    else
    {
      v98 = 0xE500000000000000;
    }

    *(v79 + 216) = &type metadata for String;
    *(v79 + 224) = v86;
    *(v79 + 192) = v97;
    *(v79 + 200) = v98;
    if (*(a2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState))
    {
      v99 = 0xE400000000000000;
    }

    else
    {
      v94 = 0x65736C6166;
      v99 = 0xE500000000000000;
    }

    *(v79 + 256) = &type metadata for String;
    *(v79 + 264) = v86;
    *(v79 + 232) = v94;
    *(v79 + 240) = v99;
    v100 = *v69;
    swift_getObjectType();
    v122[0] = v100;
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v79 + 296) = &type metadata for String;
    *(v79 + 304) = v86;
    *(v79 + 272) = v101;
    *(v79 + 280) = v102;
    v103 = static os_log_type_t.default.getter();
    sub_100005404(v121, &_mh_execute_header, v103, "⭕ deleting orphan [%{public}@%{public}@] with parent [%{public}@] during transaction that is tracked: [%{public}@], undoable: [%{public}@], marking: [%{public}@] for owner: [%{public}@]", 187, 0, v79);

    v16 = v120;
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v77 = (v116)(v117, v16);
    v10 = v119;
  }

  a1 = v114;
  (*((swift_isaMask & *v75) + 0x88))(v77);
  v13 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans;
  v7 = *(a2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v13[a2] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_40:
  v106 = v7[2];
  v105 = v7[3];
  if (v106 >= v105 >> 1)
  {
    v7 = sub_100B356D0(v105 > 1, v106 + 1, 1, v7);
  }

  v7[2] = (v106 + 1);
  (v10[4])(v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v10[9] * v106, a1, v16);
  *&v13[a2] = v7;
}

uint64_t sub_1012DDB58(char *a1, char a2, int a3, uint64_t a4)
{
  LODWORD(v128) = a3;
  v127 = type metadata accessor for UUID();
  v8 = *(v127 - 8);
  v9 = __chkstk_darwin(v127);
  v121 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v117 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v117 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v117 - v18;
  __chkstk_darwin(v17);
  v125 = &v117 - v20;
  v21 = sub_1005B981C(&qword_1019F6990);
  v22 = __chkstk_darwin(v21 - 8);
  __chkstk_darwin(v22);
  v25 = &v117 - v24;
  if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
LABEL_48:
    v13 = sub_100B356D0(0, *(v13 + 2) + 1, 1, v13);
    *&a1[a4] = v13;
    goto LABEL_43;
  }

  v122 = v23;
  v123 = v19;
  v120 = v16;
  v124 = v13;
  *(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
  type metadata accessor for CRLTransactableHashableWrapper();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = &off_10188FE10;
  v126 = v8;
  v129 = v26;
  v130 = a1;
  if (a2)
  {
    v27 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v28 = *(a4 + v27);
    v119 = a1;

    v29 = sub_10079C5CC(v26, v28);

    if (v29)
    {
      swift_beginAccess();
      sub_100ED6A00(v26);
      swift_endAccess();

      swift_beginAccess();
      sub_100ED6A00(v26);
      swift_endAccess();

      swift_beginAccess();
      sub_1010F5918(v26);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_beginAccess();

      sub_100E6B218(v131, v26);
      swift_endAccess();

      swift_beginAccess();

      sub_100E6B218(v131, v26);
      swift_endAccess();

      if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
      {
        v31 = v125;
        (*(**&v119[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v30);
        swift_beginAccess();
        sub_100ED6D70(v31, v25);
        v32 = v31;
        v33 = a4;
        (*(v8 + 8))(v32, v127);
        sub_10000CAAC(v25, &qword_1019F6990);
        swift_endAccess();
        v34 = 1;
      }

      else
      {
        v34 = 1;
        v33 = a4;
      }

      v40 = v130;
      goto LABEL_21;
    }
  }

  else
  {
    v35 = a1;
  }

  swift_beginAccess();
  v36 = sub_1010F5918(v26);
  v38 = v37;
  swift_endAccess();
  if (v36)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    *(v39 + 24) = v38;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_100E6B218(v131, v39);
    swift_endAccess();
    swift_unknownObjectRelease();

    v40 = v130;
  }

  else
  {
    v40 = v130;
    sub_100EA9DE8();
    v42 = v41;
    v44 = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    *(v45 + 24) = v44;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_100E6B218(v131, v45);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v46 = v129;

  sub_100E6B218(v131, v46);
  swift_endAccess();

  if ((a2 & 1) == 0 && (v128 & 1) == 0)
  {
    v48 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v49 = *(a4 + v48);

    v50 = sub_10079C5CC(v46, v49);

    if (v50)
    {
      v118 = objc_opt_self();
      v51 = [v118 _atomicIncrementAssertCount];
      v131[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v131);
      StaticString.description.getter();
      v119 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v52 = String._bridgeToObjectiveC()();

      v53 = [v52 lastPathComponent];

      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v57 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v51;
      v59 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v59;
      v60 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v60;
      v61 = v119;
      *(inited + 72) = v119;
      *(inited + 136) = &type metadata for String;
      v62 = sub_1000053B0();
      *(inited + 112) = v54;
      *(inited + 120) = v56;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v62;
      *(inited + 152) = 359;
      v63 = v131[0];
      *(inited + 216) = v59;
      *(inited + 224) = v60;
      *(inited + 192) = v63;
      v64 = v61;
      v65 = v63;
      v66 = static os_log_type_t.error.getter();
      sub_100005404(v57, &_mh_execute_header, v66, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v67 = static os_log_type_t.error.getter();
      sub_100005404(v57, &_mh_execute_header, v67, "A deleted object should not be listed as a created object", 57, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v68 = swift_allocObject();
      v68[2] = 8;
      v68[3] = 0;
      v68[4] = 0;
      v68[5] = 0;
      v69 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v70 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v71 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v72 = String._bridgeToObjectiveC()();

      [v118 handleFailureInFunction:v70 file:v71 lineNumber:359 isFatal:0 format:v72 args:v69];

      v8 = v126;
      v40 = v130;
    }
  }

  if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v73 = v121;
    (*(**&v40[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v47);
    swift_beginAccess();
    v74 = v125;
    sub_100E6AF38(v125, v73);
    v33 = a4;
    (*(v8 + 8))(v74, v127);
    swift_endAccess();
    v34 = 0;
  }

  else
  {
    v34 = 0;
    v33 = a4;
  }

LABEL_21:
  a4 = v33;
  v75 = (v33 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  v76 = *(v33 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v78 = *(v76 + 32);
  swift_unknownObjectRetain();
  v78(v40, &off_10188FE10, v34, ObjectType, v76);
  swift_unknownObjectRelease();
  if ((v128 & 1) == 0)
  {
  }

  v128 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v79 = *(**&v40[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 272);
  v80 = v40;

  v82 = v122;
  v79(v81);

  v83 = v126;
  v4 = v127;
  if ((*(v126 + 48))(v82, 1, v127) == 1)
  {

    v84 = sub_10000CAAC(v82, &qword_1019F6990);
    v85 = v130;
    v86 = v128;
  }

  else
  {
    (*(v83 + 32))(v123, v82, v4);
    if (qword_1019F22B8 != -1)
    {
      swift_once();
    }

    v125 = static OS_os_log.boardItemLifecycle;
    sub_1005B981C(&qword_1019F54E0);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_101483930;
    v88 = v120;
    (*(**&v130[v128] + 264))();
    v89 = UUID.uuidString.getter();
    v91 = v90;
    v92 = *(v83 + 8);
    v121 = (v83 + 8);
    v122 = v92;
    v92(v88, v4);
    *(v87 + 56) = &type metadata for String;
    v93 = sub_1000053B0();
    *(v87 + 64) = v93;
    *(v87 + 32) = v89;
    v120 = (v87 + 32);
    *(v87 + 40) = v91;
    v94 = v80;
    v95 = [v94 description];
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    *(v87 + 96) = &type metadata for String;
    *(v87 + 104) = v93;
    *(v87 + 72) = v96;
    *(v87 + 80) = v98;
    v99 = v123;
    v100 = UUID.uuidString.getter();
    *(v87 + 136) = &type metadata for String;
    *(v87 + 144) = v93;
    *(v87 + 112) = v100;
    *(v87 + 120) = v101;
    v102 = 1702195828;
    if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges))
    {
      v103 = 1702195828;
    }

    else
    {
      v103 = 0x65736C6166;
    }

    if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges))
    {
      v104 = 0xE400000000000000;
    }

    else
    {
      v104 = 0xE500000000000000;
    }

    *(v87 + 176) = &type metadata for String;
    *(v87 + 184) = v93;
    *(v87 + 152) = v103;
    *(v87 + 160) = v104;
    if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable))
    {
      v105 = 1702195828;
    }

    else
    {
      v105 = 0x65736C6166;
    }

    if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable))
    {
      v106 = 0xE400000000000000;
    }

    else
    {
      v106 = 0xE500000000000000;
    }

    *(v87 + 216) = &type metadata for String;
    *(v87 + 224) = v93;
    *(v87 + 192) = v105;
    *(v87 + 200) = v106;
    if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState))
    {
      v107 = 0xE400000000000000;
    }

    else
    {
      v102 = 0x65736C6166;
      v107 = 0xE500000000000000;
    }

    *(v87 + 256) = &type metadata for String;
    *(v87 + 264) = v93;
    *(v87 + 232) = v102;
    *(v87 + 240) = v107;
    v108 = *v75;
    swift_getObjectType();
    v131[0] = v108;
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v87 + 296) = &type metadata for String;
    *(v87 + 304) = v93;
    v4 = v127;
    *(v87 + 272) = v109;
    *(v87 + 280) = v110;
    v111 = static os_log_type_t.default.getter();
    sub_100005404(v125, &_mh_execute_header, v111, "⭕ deleting orphan [%{public}@%{public}@] with parent [%{public}@] during transaction that is tracked: [%{public}@], undoable: [%{public}@], marking: [%{public}@] for owner: [%{public}@]", 187, 0, v87);

    v86 = v128;
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v84 = v122(v99, v4);
    v85 = v130;
  }

  v16 = v124;
  (*(**&v85[v86] + 264))(v84);
  a1 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans;
  v13 = *(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[a4] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_43:
  v113 = v126;
  v115 = *(v13 + 2);
  v114 = *(v13 + 3);
  if (v115 >= v114 >> 1)
  {
    v13 = sub_100B356D0(v114 > 1, v115 + 1, 1, v13);
  }

  *(v13 + 2) = v115 + 1;
  (*(v113 + 32))(&v13[((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v115], v16, v4);
  *&a1[a4] = v13;
}

uint64_t sub_1012DEA8C(uint64_t a1, char a2, int a3, char *a4, uint64_t a5, uint64_t a6)
{
  v123 = a5;
  LODWORD(v125) = a3;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v117 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v112 - v15;
  v17 = __chkstk_darwin(v14);
  v114 = &v112 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v112 - v20;
  __chkstk_darwin(v19);
  v119 = (&v112 - v22);
  v23 = sub_1005B981C(&qword_1019F6990);
  v24 = __chkstk_darwin(v23 - 8);
  v116 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v112 - v26;
  if (a4[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active] != 1)
  {
    __break(1u);
LABEL_49:
    v11 = sub_100B356D0(0, v11[2] + 1, 1, v11);
    *&v27[v21] = v11;
    goto LABEL_44;
  }

  v115 = v21;
  v118 = v16;
  a4[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate] = 1;
  type metadata accessor for CRLTransactableHashableWrapper();
  v127 = v10;
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a6;
  v126 = a6;
  v124 = v11;
  v121 = v28;
  v122 = a1;
  v120 = a4;
  if (a2)
  {
    v29 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v30 = *&a4[v29];
    swift_unknownObjectRetain();

    v31 = sub_10079C5CC(v28, v30);

    if (v31)
    {
      swift_beginAccess();
      sub_100ED6A00(v28);
      swift_endAccess();

      swift_beginAccess();
      sub_100ED6A00(v28);
      swift_endAccess();

      swift_beginAccess();
      sub_1010F5918(v28);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_beginAccess();

      sub_100E6B218(v128, v28);
      swift_endAccess();

      swift_beginAccess();

      sub_100E6B218(v128, v28);
      swift_endAccess();

      if (a4[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState] == 1)
      {
        v32 = v126;
        v33 = v119;
        v34 = v122;
        (*(v126 + 32))(v123, v126);
        swift_beginAccess();
        sub_100ED6D70(v33, v27);
        (v124[1])(v33, v127);
        sub_10000CAAC(v27, &qword_1019F6990);
        swift_endAccess();
        v35 = 1;
        goto LABEL_21;
      }

      v35 = 1;
      v32 = v126;
      goto LABEL_20;
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  swift_beginAccess();
  v36 = sub_1010F5918(v28);
  v38 = v37;
  swift_endAccess();
  if (v36)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    *(v39 + 24) = v38;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_100E6B218(v128, v39);
    swift_endAccess();
    swift_unknownObjectRelease();

    v32 = v126;
  }

  else
  {
    v32 = v126;
    v40 = (*(v126 + 56))(v123, v126);
    v42 = v41;
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = v42;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_100E6B218(v128, v43);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  swift_beginAccess();

  sub_100E6B218(v128, v28);
  swift_endAccess();

  v44 = v127;
  if ((a2 & 1) == 0 && (v125 & 1) == 0)
  {
    v45 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v46 = *&a4[v45];

    v47 = sub_10079C5CC(v28, v46);

    if (v47)
    {
      v112 = objc_opt_self();
      v48 = [v112 _atomicIncrementAssertCount];
      v128[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v128);
      StaticString.description.getter();
      v113 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      v50 = [v49 lastPathComponent];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v54 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v48;
      v56 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v56;
      v57 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v57;
      v58 = v113;
      *(inited + 72) = v113;
      *(inited + 136) = &type metadata for String;
      v59 = sub_1000053B0();
      *(inited + 112) = v51;
      *(inited + 120) = v53;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v59;
      *(inited + 152) = 359;
      v60 = v128[0];
      *(inited + 216) = v56;
      *(inited + 224) = v57;
      *(inited + 192) = v60;
      v61 = v58;
      v62 = v60;
      v63 = static os_log_type_t.error.getter();
      sub_100005404(v54, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v64 = static os_log_type_t.error.getter();
      sub_100005404(v54, &_mh_execute_header, v64, "A deleted object should not be listed as a created object", 57, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v65 = swift_allocObject();
      v65[2] = 8;
      v65[3] = 0;
      v65[4] = 0;
      v65[5] = 0;
      v66 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v67 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v68 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v69 = String._bridgeToObjectiveC()();

      [v112 handleFailureInFunction:v67 file:v68 lineNumber:359 isFatal:0 format:v69 args:v66];

      v32 = v126;
      v44 = v127;
      a4 = v120;
    }
  }

  if (a4[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState] == 1)
  {
    v70 = v117;
    v34 = v122;
    (*(v32 + 32))(v123, v32);
    swift_beginAccess();
    v71 = v119;
    sub_100E6AF38(v119, v70);
    (v124[1])(v71, v44);
    swift_endAccess();
    v35 = 0;
    goto LABEL_21;
  }

  v35 = 0;
LABEL_20:
  v34 = v122;
LABEL_21:
  v72 = &a4[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner];
  v73 = *(v72 + 1);
  ObjectType = swift_getObjectType();
  v75 = *(v73 + 32);
  swift_unknownObjectRetain();
  v75(v34, v32, v35, ObjectType, v73);
  swift_unknownObjectRelease();
  if ((v125 & 1) == 0)
  {
  }

  type metadata accessor for CRLBoardItem(0);
  v76 = swift_dynamicCastClass();
  a1 = v127;
  if (v76)
  {
    v77 = v76;
    v78 = *((swift_isaMask & *v76) + 0xB8);
    v79 = swift_unknownObjectRetain();
    v80 = v116;
    v78(v79);
    v81 = v124;
    if ((v124[6])(v80, 1, a1) == 1)
    {
      swift_unknownObjectRelease();
      sub_10000CAAC(v80, &qword_1019F6990);
    }

    else
    {
      (v81[4])(v115, v80, a1);
      v82 = v81;
      if (qword_1019F22B8 != -1)
      {
        swift_once();
      }

      v125 = static OS_os_log.boardItemLifecycle;
      sub_1005B981C(&qword_1019F54E0);
      v83 = swift_initStackObject();
      *(v83 + 16) = xmmword_101483930;
      v84 = v114;
      (*((swift_isaMask & *v77) + 0x88))();
      v85 = UUID.uuidString.getter();
      v87 = v86;
      v88 = v82[1];
      v117 = (v82 + 1);
      v119 = v88;
      (v88)(v84, v127);
      *(v83 + 56) = &type metadata for String;
      v89 = sub_1000053B0();
      *(v83 + 64) = v89;
      *(v83 + 32) = v85;
      *(v83 + 40) = v87;
      swift_unknownObjectRetain();
      v90 = [v77 description];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;
      swift_unknownObjectRelease();

      *(v83 + 96) = &type metadata for String;
      *(v83 + 104) = v89;
      *(v83 + 72) = v91;
      *(v83 + 80) = v93;
      v94 = v115;
      v95 = UUID.uuidString.getter();
      *(v83 + 136) = &type metadata for String;
      *(v83 + 144) = v89;
      *(v83 + 112) = v95;
      *(v83 + 120) = v96;
      v97 = v120;
      v98 = 1702195828;
      if (v120[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges])
      {
        v99 = 1702195828;
      }

      else
      {
        v99 = 0x65736C6166;
      }

      if (v120[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges])
      {
        v100 = 0xE400000000000000;
      }

      else
      {
        v100 = 0xE500000000000000;
      }

      *(v83 + 176) = &type metadata for String;
      *(v83 + 184) = v89;
      *(v83 + 152) = v99;
      *(v83 + 160) = v100;
      if (v97[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable])
      {
        v101 = 1702195828;
      }

      else
      {
        v101 = 0x65736C6166;
      }

      if (v97[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable])
      {
        v102 = 0xE400000000000000;
      }

      else
      {
        v102 = 0xE500000000000000;
      }

      *(v83 + 216) = &type metadata for String;
      *(v83 + 224) = v89;
      *(v83 + 192) = v101;
      *(v83 + 200) = v102;
      if (v97[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState])
      {
        v103 = 0xE400000000000000;
      }

      else
      {
        v98 = 0x65736C6166;
        v103 = 0xE500000000000000;
      }

      *(v83 + 256) = &type metadata for String;
      *(v83 + 264) = v89;
      *(v83 + 232) = v98;
      *(v83 + 240) = v103;
      v104 = *v72;
      swift_getObjectType();
      v128[0] = v104;
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v83 + 296) = &type metadata for String;
      *(v83 + 304) = v89;
      *(v83 + 272) = v105;
      *(v83 + 280) = v106;
      v107 = static os_log_type_t.default.getter();
      sub_100005404(v125, &_mh_execute_header, v107, "⭕ deleting orphan [%{public}@%{public}@] with parent [%{public}@] during transaction that is tracked: [%{public}@], undoable: [%{public}@], marking: [%{public}@] for owner: [%{public}@]", 187, 0, v83);
      swift_unknownObjectRelease();
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      a1 = v127;
      (v119)(v94, v127);
    }
  }

  v10 = v118;
  (*(v126 + 32))(v123);
  v27 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans;
  v21 = v120;
  v11 = *&v120[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v27[v21] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_44:
  v110 = v11[2];
  v109 = v11[3];
  if (v110 >= v109 >> 1)
  {
    v11 = sub_100B356D0(v109 > 1, v110 + 1, 1, v11);
  }

  v11[2] = v110 + 1;
  (v124[4])(v11 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + v124[9] * v110, v10, a1);
  *&v27[v21] = v11;
}