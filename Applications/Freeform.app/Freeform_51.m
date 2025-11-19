unint64_t sub_1008343C0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v20 = v8;
  result = sub_10000BE7C(a1, a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_100A8F4B4(v14, isUniquelyReferenced_nonNull_native);
    result = sub_10000BE7C(a1, a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *v4 = v8;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  v4 = result;
  sub_100AA2DDC(result, a1, a2, 0, v8);

  result = v4;
LABEL_8:
  while (1)
  {
    v16 = v8[7];
    v17 = *(v16 + 8 * result);
    v13 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (!v13)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v19 = result;
    sub_100AA7CF8();
    result = v19;
    v8 = v20;
    *v4 = v20;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v16 + 8 * result) = v18;
  return result;
}

uint64_t sub_1008344F0(uint64_t a1)
{
  if (qword_1019F2280 != -1)
  {
LABEL_19:
    swift_once();
  }

  v3 = static OS_os_log.suspendResumeCollaboration;
  v4 = static os_log_type_t.debug.getter();
  result = sub_100005404(v3, &_mh_execute_header, v4, "suspend collaboration for contextSet", 36, 2, _swiftEmptyArrayStorage);
  if ((*(Strong + 32) & 1) == 0)
  {
    swift_beginAccess();

    v7 = Strong;
    Strong += 64;
    sub_100636BB4(v6);
    swift_endAccess();
    swift_beginAccess();
    v8 = *(v7 + 16);
    if (v8 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_15:
            __break(1u);
          }
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v11 = *(v8 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_15;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        v13 = *(v11 + 24);

        if (Strong)
        {
          ObjectType = swift_getObjectType();
          (*(v13 + 16))(a1, ObjectType, v13);
          swift_unknownObjectRelease();
        }

        ++v10;
      }

      while (v12 != v9);
    }
  }

  return result;
}

void sub_1008346E4(char *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();

  v7 = sub_1008342F4(v6);

  v8 = *(v2 + 56);
  if (*(v8 + 16))
  {

    v9 = sub_10000BE7C(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v14 = &type metadata for String;
  *(inited + 56) = &type metadata for String;
  v15 = sub_1000053B0();
  v16 = v15;
  *(inited + 32) = a1;
  v17 = inited + 32;
  *(inited + 64) = v15;
  *(inited + 40) = a2;
  if (v11 <= 0)
  {
    v55 = v7;
    v56 = v11;
    v62 = v15;
    v58 = a1;
    v60 = v3;
    v18 = objc_opt_self();
    v59 = a2;

    v54 = v18;
    v61 = [v18 _atomicIncrementAssertCount];
    v63 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v63);
    StaticString.description.getter();
    a2 = inited;
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v21;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_10;
  }

  while (1)
  {
    if (qword_1019F2280 != -1)
    {
LABEL_48:
      swift_once();
    }

    v17 = static OS_os_log.suspendResumeCollaboration;
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_10146C4D0;
    if (!__OFSUB__(v7, 1))
    {
      break;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
LABEL_10:
    v16 = static OS_os_log.crlAssert;
    v57 = v12;
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_10146CA70;
    *(v22 + 56) = &type metadata for Int32;
    *(v22 + 64) = &protocol witness table for Int32;
    *(v22 + 32) = v61;
    v23 = sub_1005CF000();
    *(v22 + 96) = v23;
    v24 = sub_1005CF04C();
    *(v22 + 72) = v7;
    *(v22 + 136) = &type metadata for String;
    *(v22 + 144) = v62;
    *(v22 + 104) = v24;
    *(v22 + 112) = a1;
    *(v22 + 120) = v14;
    *(v22 + 176) = &type metadata for UInt;
    *(v22 + 184) = &protocol witness table for UInt;
    *(v22 + 152) = 141;
    v25 = v63;
    *(v22 + 216) = v23;
    *(v22 + 224) = v24;
    *(v22 + 192) = v25;
    v26 = v7;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v22);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v29, "Resume collaboration without matching suspendCollaboration for reason (%@)", 74, 2, a2);

    type metadata accessor for __VaListBuilder();
    v7 = swift_allocObject();
    v7[2] = 8;
    v7[3] = 0;
    v14 = v7 + 3;
    v7[4] = 0;
    v7[5] = 0;
    v61 = a2;
    v12 = *(a2 + 16);
    if (v12)
    {
      a2 = 0;
      v3 = 40;
      while (1)
      {
        v30 = (v17 + 40 * a2);
        a1 = v30[4];
        sub_100020E58(v30, v30[3]);
        v31 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v11 = *v14;
        v32 = *(v31 + 16);
        v33 = __OFADD__(*v14, v32);
        v34 = *v14 + v32;
        if (v33)
        {
          goto LABEL_45;
        }

        v16 = v31;
        v35 = v7[4];
        if (v35 >= v34)
        {
          goto LABEL_27;
        }

        if (v35 + 0x4000000000000000 < 0)
        {
          goto LABEL_46;
        }

        a1 = v7[5];
        if (2 * v35 > v34)
        {
          v34 = 2 * v35;
        }

        v7[4] = v34;
        if ((v34 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_47;
        }

        v36 = swift_slowAlloc();
        v7[5] = v36;
        if (a1)
        {
          break;
        }

LABEL_28:
        if (!v36)
        {
          __break(1u);
          return;
        }

        v38 = *(v16 + 16);
        if (v38)
        {
          v39 = (v16 + 32);
          v40 = *v14;
          while (1)
          {
            v41 = *v39++;
            *&v36[8 * v40] = v41;
            v40 = *v14 + 1;
            if (__OFADD__(*v14, 1))
            {
              break;
            }

            *v14 = v40;
            if (!--v38)
            {
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_12:

        if (++a2 == v12)
        {
          goto LABEL_34;
        }
      }

      if (v36 != a1 || v36 >= &a1[8 * v11])
      {
        memmove(v36, a1, 8 * v11);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_27:
      v36 = v7[5];
      goto LABEL_28;
    }

LABEL_34:
    v42 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    [v54 handleFailureInFunction:v43 file:v44 lineNumber:141 isFatal:0 format:v45 args:v42];

    a2 = v59;
    v3 = v60;
    v12 = v57;
    a1 = v58;
    v14 = &type metadata for String;
    v16 = v62;
    v7 = v55;
    v11 = v56;
  }

  v47 = v46;
  *(v46 + 56) = &type metadata for Int;
  *(v46 + 64) = &protocol witness table for Int;
  *(v46 + 32) = v7 - 1;
  if (__OFSUB__(v11, 1))
  {
    goto LABEL_50;
  }

  *(v46 + 96) = &type metadata for Int;
  *(v46 + 104) = &protocol witness table for Int;
  *(v46 + 72) = v11 - 1;
  *(v46 + 136) = v14;
  *(v46 + 144) = v16;
  *(v46 + 112) = a1;
  *(v46 + 120) = a2;

  v48 = static os_log_type_t.info.getter();
  sub_100005404(v17, &_mh_execute_header, v48, "Resume collaboration, suspend count: %lu total, %lu for reason (%@)", 67, 2, v47);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  if (v11 >= 1)
  {
    swift_beginAccess();
    sub_100834F0C(a1, a2);
    swift_endAccess();

    v50 = sub_1008342F4(v49);

    if (!v50)
    {
      sub_100835120();
      v51 = swift_initStackObject();
      *(v51 + 16) = xmmword_10146C6B0;
      *(v51 + 56) = v14;
      *(v51 + 64) = v16;
      *(v51 + 32) = a1;
      *(v51 + 40) = a2;

      v52 = static os_log_type_t.info.getter();
      sub_100005404(v17, &_mh_execute_header, v52, "Resume collaboration (%@)", 25, 2, v51);
      swift_setDeallocating();
      sub_100005070(v51 + 32);
      v53 = [objc_opt_self() defaultCenter];
      if (qword_1019F1610 != -1)
      {
        swift_once();
      }

      [v53 postNotificationName:qword_101AD6718 object:v3];
    }
  }
}

uint64_t sub_100834F0C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_10000BE7C(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v3 + 56) + 8 * v6);
  v9 = v8 - 1;
  if (v8 < 1)
  {
    return 0;
  }

  sub_100BC38C8(v9, v9 == 0, a1, a2);

  return a1;
}

uint64_t sub_100834FAC()
{
  swift_beginAccess();
  v0[8] = _swiftEmptySetSingleton;

  if (v0[5] <= 0)
  {
    swift_beginAccess();
    v2 = v0[2];
    if (v2 >> 62)
    {
      goto LABEL_18;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v3)
    {
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_14:
            __break(1u);
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_18:
            v3 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v5 = *(v2 + 8 * v4 + 32);

          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_14;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v5 + 24);
          ObjectType = swift_getObjectType();
          (*(v7 + 24))(ObjectType, v7);
          swift_unknownObjectRelease();
        }

        ++v4;
      }

      while (v6 != v3);
    }
  }

  return result;
}

void sub_100835120()
{
  v7 = *(v1 + 40);
  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    goto LABEL_52;
  }

  *(v1 + 40) = v8;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v49 = &type metadata for Int;
  sub_1005B981C(&qword_1019FB560);
  String.init<A>(describing:)();
  v9 = String._bridgeToObjectiveC()();

  v3 = sub_1005CF000();
  *(inited + 56) = v3;
  v10 = sub_1005CF04C();
  *(inited + 32) = v9;
  v0 = inited + 32;
  *(inited + 64) = v10;
  if (v8 == -1)
  {
    v4 = v10;
    v45 = objc_opt_self();
    v48 = [v45 _atomicIncrementAssertCount];
    v49 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v49);
    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v13;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_53;
    }

    goto LABEL_6;
  }

  if (!*(v1 + 40))
  {
    while (1)
    {
      swift_beginAccess();
      v0 = *(v1 + 16);
      v2 = v0 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v2)
      {
        break;
      }

      v41 = 0;
      inited = v0 & 0xFFFFFFFFFFFFFF8;
      while ((v0 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v42 = (v41 + 1);
        if (__OFADD__(v41, 1))
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_40:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v1 = Strong;
          v4 = *(v3 + 24);
          ObjectType = swift_getObjectType();
          (v4[3])(ObjectType, v4);
          swift_unknownObjectRelease();
        }

        ++v41;
        if (v42 == v2)
        {
          goto LABEL_45;
        }
      }

      if (v41 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(v0 + 8 * v41 + 32);

        v42 = (v41 + 1);
        if (__OFADD__(v41, 1))
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      swift_once();
LABEL_6:
      v46 = v1;
      v14 = static OS_os_log.crlAssert;
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_10146CA70;
      *(v15 + 56) = &type metadata for Int32;
      *(v15 + 64) = &protocol witness table for Int32;
      *(v15 + 32) = v48;
      *(v15 + 96) = v3;
      *(v15 + 104) = v4;
      *(v15 + 72) = v47;
      *(v15 + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(v15 + 112) = v6;
      *(v15 + 120) = v2;
      *(v15 + 176) = &type metadata for UInt;
      *(v15 + 184) = &protocol witness table for UInt;
      *(v15 + 144) = v16;
      *(v15 + 152) = 197;
      v17 = v49;
      *(v15 + 216) = v3;
      *(v15 + 224) = v4;
      *(v15 + 192) = v17;
      v18 = v47;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v15);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v21, "expected inequality between two values of type %{public}@", 57, 2, inited);

      type metadata accessor for __VaListBuilder();
      v22 = swift_allocObject();
      v22[2] = 8;
      v22[3] = 0;
      v4 = v22 + 3;
      v22[4] = 0;
      v22[5] = 0;
      v48 = inited;
      v23 = *(inited + 16);
      if (v23)
      {
        v24 = 0;
        v6 = 40;
        while (1)
        {
          v25 = (v0 + 40 * v24);
          v2 = v25[3];
          v1 = sub_100020E58(v25, v2);
          v26 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v3 = *v4;
          v27 = *(v26 + 16);
          v28 = __OFADD__(*v4, v27);
          v29 = *v4 + v27;
          if (v28)
          {
            goto LABEL_49;
          }

          v1 = v22[4];
          if (v1 >= v29)
          {
            goto LABEL_23;
          }

          if (v1 + 0x4000000000000000 < 0)
          {
            goto LABEL_50;
          }

          v2 = v22[5];
          if (2 * v1 > v29)
          {
            v29 = 2 * v1;
          }

          v22[4] = v29;
          if ((v29 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_51;
          }

          inited = v26;
          v30 = swift_slowAlloc();
          v31 = v30;
          v22[5] = v30;
          if (v2)
          {
            break;
          }

          v26 = inited;
          if (!v31)
          {
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_24:
          v33 = *(v26 + 16);
          if (v33)
          {
            v34 = (v26 + 32);
            v35 = *v4;
            while (1)
            {
              v36 = *v34++;
              *&v31[8 * v35] = v36;
              v35 = *v4 + 1;
              if (__OFADD__(*v4, 1))
              {
                break;
              }

              *v4 = v35;
              if (!--v33)
              {
                goto LABEL_8;
              }
            }

            __break(1u);
            goto LABEL_48;
          }

LABEL_8:

          if (++v24 == v23)
          {
            goto LABEL_31;
          }
        }

        if (v30 != v2 || v30 >= &v2[8 * v3])
        {
          memmove(v30, v2, 8 * v3);
        }

        v1 = v22;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v26 = inited;
LABEL_23:
        v31 = v22[5];
        if (!v31)
        {
          goto LABEL_30;
        }

        goto LABEL_24;
      }

LABEL_31:
      v37 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v3 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v38 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v4 = v39;
      v40 = String._bridgeToObjectiveC()();

      [v45 handleFailureInFunction:v3 file:v38 lineNumber:197 isFatal:0 format:v40 args:v37];

      v1 = v46;
      if (v46[5])
      {
        return;
      }
    }

LABEL_45:
  }
}

uint64_t sub_1008357A0(uint64_t a1)
{
  if (*(v1 + 32) == 1)
  {
    if (qword_1019F2280 == -1)
    {
LABEL_3:
      v2 = static OS_os_log.suspendResumeCollaboration;
      v3 = static os_log_type_t.debug.getter();
      sub_100005404(v2, &_mh_execute_header, v3, "Incoming Suspended for all", 26, 2, _swiftEmptyArrayStorage);
      v4 = *(v1 + 40) > 0;
      return v4 & 1;
    }

LABEL_21:
    swift_once();
    goto LABEL_3;
  }

  v6 = *(v1 + 24);
  swift_beginAccess();
  v7 = *(v1 + 64);

  v8 = *(sub_10119E650(a1, v7) + 2);

  if (!v8)
  {
    v1 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;

    v4 = 0;
    for (i = 0; v13; v4 |= (v18 & ~v6) != 0)
    {
      v16 = i;
LABEL_16:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_10063FD8C(*(a1 + 48) + 48 * (v17 | (v16 << 6)), v20);
      v18 = v21;
      sub_10063FDE8(v20);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        return v4 & 1;
      }

      v13 = *(v1 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_1019F2280 != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.suspendResumeCollaboration;
  v10 = static os_log_type_t.debug.getter();
  sub_100005404(v9, &_mh_execute_header, v10, "Incoming Suspended for matching context", 39, 2, _swiftEmptyArrayStorage);
  v4 = 1;
  return v4 & 1;
}

uint64_t sub_1008359E4()
{

  return swift_deallocClassInstance();
}

uint64_t storeEnumTagSinglePayload for CRLSuspendResumeConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

char *CRLiOSPencilMediator.__allocating_init(interactiveCanvasController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_wasTeardownCalled] = 0;
  v4 = &v3[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_prefersPencilOnlyDrawingKeyPath];
  *v4 = 0xD000000000000018;
  v4[1] = 0x8000000101552F00;
  v3[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasPencilBeenUsedForCurrentPencilMode] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_currentPencilModeType] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator__lastPencilModeType] = 0;
  v3[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasFingerBeenUsedForFreehandDrawingSession] = 0;
  v3[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasIndirectTouchBeenUsedForFreehandDrawingSession] = 0;
  swift_unknownObjectUnownedInit();
  v14.receiver = v3;
  v14.super_class = v1;
  v5 = objc_msgSendSuper2(&v14, "init");
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 integerForKey:v9];

  *&v7[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator__lastPencilModeType] = sub_10083B3F4(v10);
  sub_100006370(0, &qword_101A03E60);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = String._bridgeToObjectiveC()();
  [ObjCClassFromMetadata addObserver:v7 forKeyPath:v12 options:0 context:0];

  return v7;
}

char *CRLiOSPencilMediator.init(interactiveCanvasController:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_wasTeardownCalled] = 0;
  v4 = &v1[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_prefersPencilOnlyDrawingKeyPath];
  *v4 = 0xD000000000000018;
  v4[1] = 0x8000000101552F00;
  v1[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasPencilBeenUsedForCurrentPencilMode] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_currentPencilModeType] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator__lastPencilModeType] = 0;
  v1[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasFingerBeenUsedForFreehandDrawingSession] = 0;
  v1[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasIndirectTouchBeenUsedForFreehandDrawingSession] = 0;
  swift_unknownObjectUnownedInit();
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v14, "init");
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 integerForKey:v9];

  *&v7[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator__lastPencilModeType] = sub_10083B3F4(v10);
  sub_100006370(0, &qword_101A03E60);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = String._bridgeToObjectiveC()();
  [ObjCClassFromMetadata addObserver:v7 forKeyPath:v12 options:0 context:0];

  return v7;
}

void sub_100835E5C()
{
  *(v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_wasTeardownCalled) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_prefersPencilOnlyDrawingKeyPath);
  *v1 = 0xD000000000000018;
  v1[1] = 0x8000000101552F00;
  *(v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasPencilBeenUsedForCurrentPencilMode) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_currentPencilModeType) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator__lastPencilModeType) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasFingerBeenUsedForFreehandDrawingSession) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasIndirectTouchBeenUsedForFreehandDrawingSession) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CRLiOSPencilMediator.teardown()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_wasTeardownCalled;
  if (*(v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_wasTeardownCalled) == 1)
  {
    v27 = objc_opt_self();
    v3 = [v27 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
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
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 49;
    v15 = v28;
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
    sub_100005404(v10, &_mh_execute_header, v19, "Should not call teardown() twice.", 33, 2, _swiftEmptyArrayStorage);

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

    [v27 handleFailureInFunction:v22 file:v23 lineNumber:49 isFatal:0 format:v24 args:v21];
  }

  *(v1 + v2) = 1;
  sub_100006370(0, &qword_101A03E60);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = String._bridgeToObjectiveC()();
  [ObjCClassFromMetadata removeObserver:v1 forKeyPath:v26];
}

id CRLiOSPencilMediator.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if ((*(v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_wasTeardownCalled) & 1) == 0)
  {
    v26 = objc_opt_self();
    v3 = [v26 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
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
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 56;
    v15 = v28;
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
    sub_100005404(v10, &_mh_execute_header, v19, "Must call teardown() before CRLiOSPencilMediator is deinitialized.", 66, 2, _swiftEmptyArrayStorage);

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

    [v26 handleFailureInFunction:v22 file:v23 lineNumber:56 isFatal:0 format:v24 args:v21];
  }

  v27.receiver = v1;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, "dealloc");
}

void CRLiOSPencilMediator.setCurrentPencilModeType(_:)(unint64_t a1)
{
  v2 = OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_currentPencilModeType;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_currentPencilModeType);
  if (v3 != a1)
  {
    if (v3)
    {
      if (*(v1 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasPencilBeenUsedForCurrentPencilMode) == 1)
      {
        *(v1 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasPencilBeenUsedForCurrentPencilMode) = 0;
      }

      if (*(v1 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasFingerBeenUsedForFreehandDrawingSession) == 1)
      {
        *(v1 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasFingerBeenUsedForFreehandDrawingSession) = 0;
      }

      if (*(v1 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasIndirectTouchBeenUsedForFreehandDrawingSession) == 1)
      {
        *(v1 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasIndirectTouchBeenUsedForFreehandDrawingSession) = 0;
      }
    }

    *(v1 + v2) = a1;
    if (a1)
    {
      sub_1008368A0(a1);
    }
  }
}

void sub_1008368A0(unint64_t a1)
{
  if (a1)
  {
    *(v1 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator__lastPencilModeType) = a1;
    v3 = [objc_opt_self() standardUserDefaults];
    if (a1 >= 3)
    {
      type metadata accessor for CRLiOSPencilModeType(0);
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }

    else
    {
      v4 = v3;
      v28 = String._bridgeToObjectiveC()();
      [v4 setInteger:a1 forKey:v28];
    }
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
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
    *(inited + 152) = 143;
    v18 = v29;
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
    sub_100005404(v13, &_mh_execute_header, v22, "Should not set lastPencilModeType to none.", 42, 2, _swiftEmptyArrayStorage);

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

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:143 isFatal:0 format:v27 args:v24];
  }
}

void CRLiOSPencilMediator.setNextPencilModeType(_:)(unint64_t a1)
{
  if (a1)
  {

    sub_1008368A0(a1);
  }

  else
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v24 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v24);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 122;
    v14 = v24;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Should not call setNextPencilModeType() with modeType none.", 59, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:122 isFatal:0 format:v23 args:v20];
  }
}

void CRLiOSPencilMediator.markPencilUsed(for:)(uint64_t a1)
{
  if (a1)
  {
    if ((*(v1 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasPencilBeenUsedForCurrentPencilMode) & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_hasPencilBeenUsedForCurrentPencilMode) = 1;

      sub_10083B958(a1);
    }
  }

  else
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v25);
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
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 168;
    v15 = v25;
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

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:168 isFatal:0 format:v24 args:v21];
  }
}

void sub_1008375BC()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong layerHost];

  if (v1)
  {
    if ([v1 respondsToSelector:"asiOSCVC"])
    {
      v2 = [v1 asiOSCVC];
      swift_unknownObjectRelease();
      v3 = [v2 delegate];

      if (!v3)
      {
        __break(1u);
        return;
      }

      if ([v3 respondsToSelector:"prefersPencilOnlyDrawingDidChange"])
      {
        [v3 prefersPencilOnlyDrawingDidChange];
      }
    }

    swift_unknownObjectRelease();
  }
}

void sub_100837728(void *a1, uint64_t a2)
{
  if ((*(v2 + *a1) & 1) == 0)
  {
    *(v2 + *a1) = 1;
    v4 = objc_opt_self();
    v5 = String._bridgeToObjectiveC()();
    _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(a2);
    sub_100006370(0, &qword_1019F54D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 sendEventInDomain:v5 lazily:1 eventPayload:isa];
  }
}

uint64_t CRLiOSPencilMediator.pencilModeToBeginFromToolbarItem.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong layerHost];

  if (!v2)
  {
    goto LABEL_10;
  }

  if (([v2 respondsToSelector:"asiOSCVC"] & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = [v2 asiOSCVC];
  swift_unknownObjectRelease();
  v4 = [v3 delegate];

  if (!v4)
  {
    __break(1u);
LABEL_26:
    type metadata accessor for CRLiOSPencilModeType(0);
    v56[0] = v4;
    goto LABEL_28;
  }

  if (([v4 respondsToSelector:"currentDocumentMode"] & 1) == 0)
  {
LABEL_9:
    swift_unknownObjectRelease();
LABEL_10:
    v29 = objc_opt_self();
    v30 = [v29 _atomicIncrementAssertCount];
    v56[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v56);
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v32 lastPathComponent];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v30;
    v39 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v39;
    v40 = sub_1005CF04C();
    *(inited + 104) = v40;
    *(inited + 72) = v31;
    *(inited + 136) = &type metadata for String;
    v41 = sub_1000053B0();
    *(inited + 112) = v34;
    *(inited + 120) = v36;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v41;
    *(inited + 152) = 229;
    v42 = v56[0];
    *(inited + 216) = v39;
    *(inited + 224) = v40;
    *(inited + 192) = v42;
    v43 = v31;
    v44 = v42;
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v46, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v47 = swift_allocObject();
    v47[2] = 8;
    v47[3] = 0;
    v47[4] = 0;
    v47[5] = 0;
    v48 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    [v29 handleFailureInFunction:v49 file:v50 lineNumber:229 isFatal:0 format:v51 args:v48];

    return 0;
  }

  v5 = [v4 currentDocumentMode];
  swift_unknownObjectRelease();
  if ([v5 pencilModeType])
  {
    v6 = objc_opt_self();
    v7 = [v6 _atomicIncrementAssertCount];
    v56[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v56);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_10146CA70;
    *(v15 + 56) = &type metadata for Int32;
    *(v15 + 64) = &protocol witness table for Int32;
    *(v15 + 32) = v7;
    v16 = sub_100006370(0, &qword_1019F4D30);
    *(v15 + 96) = v16;
    v17 = sub_1005CF04C();
    *(v15 + 104) = v17;
    *(v15 + 72) = v8;
    *(v15 + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(v15 + 112) = v11;
    *(v15 + 120) = v13;
    *(v15 + 176) = &type metadata for UInt;
    *(v15 + 184) = &protocol witness table for UInt;
    *(v15 + 144) = v18;
    *(v15 + 152) = 233;
    v19 = v56[0];
    *(v15 + 216) = v16;
    *(v15 + 224) = v17;
    *(v15 + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v15);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "It is invalid to ask the mediator for the pencilModeToBeginFromToolbarItem when in a pencil-centric document mode.", 114, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v6 handleFailureInFunction:v26 file:v27 lineNumber:233 isFatal:0 format:v28 args:v25];

    return 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator__lastPencilModeType);
  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v54 = [objc_opt_self() _canShowHandwritingTool];

      if ((v54 & 1) == 0)
      {
        return 1;
      }

      return 2;
    }

    goto LABEL_26;
  }

  v53 = sub_10083ABD8();
  switch(v53)
  {
    case 0:

      return 0;
    case 1:

      return 1;
    case 2:

      return 2;
  }

  v55 = v53;
  type metadata accessor for CRLiOSPencilBehavior(0);
  v56[0] = v55;
LABEL_28:
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

id CRLiOSPencilMediator.pencilBehaviorOutsideModes(at:)()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong layerHost];

  if (v1)
  {
    if ([v1 respondsToSelector:"asPencilGestureProvider"])
    {
      v2 = [v1 asPencilGestureProvider];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v3 = swift_unknownObjectUnownedLoadStrong();
      v4 = [v3 layerHost];

      if (!v4)
      {
        goto LABEL_41;
      }

      if (([v4 respondsToSelector:"asiOSCVC"] & 1) == 0)
      {
        goto LABEL_40;
      }

      v5 = [v4 asiOSCVC];
      swift_unknownObjectRelease();
      result = [v5 delegate];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = result;
      if ([result respondsToSelector:"currentDocumentMode"])
      {
        v8 = [v7 currentDocumentMode];
        swift_unknownObjectRelease();
        if (![v8 pencilModeType])
        {
          goto LABEL_76;
        }

        v120 = objc_opt_self();
        v9 = [v120 _atomicIncrementAssertCount];
        v122[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v122);
        StaticString.description.getter();
        v10 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v11 = String._bridgeToObjectiveC()();

        v12 = [v11 lastPathComponent];

        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v16 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v9;
        v18 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v18;
        v19 = sub_1005CF04C();
        *(inited + 104) = v19;
        *(inited + 72) = v10;
        *(inited + 136) = &type metadata for String;
        v20 = sub_1000053B0();
        *(inited + 112) = v13;
        *(inited + 120) = v15;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v20;
        *(inited + 152) = 255;
        v21 = v122[0];
        *(inited + 216) = v18;
        *(inited + 224) = v19;
        *(inited + 192) = v21;
        v22 = v10;
        v23 = v21;
        v24 = static os_log_type_t.error.getter();
        sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v25 = static os_log_type_t.error.getter();
        sub_100005404(v16, &_mh_execute_header, v25, "It is invalid to ask the mediator for the pencilBehaviorOutsideModes when in a pencil-centric document mode.", 108, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v26 = swift_allocObject();
        v26[2] = 8;
        v26[3] = 0;
        v26[4] = 0;
        v26[5] = 0;
        v27 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v28 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v29 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v30 = String._bridgeToObjectiveC()();

        [v120 handleFailureInFunction:v28 file:v29 lineNumber:255 isFatal:0 format:v30 args:v27];

        return 0;
      }

      swift_unknownObjectRelease();
      v97 = objc_opt_self();
      v98 = [v97 _atomicIncrementAssertCount];
      v122[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v122);
      StaticString.description.getter();
      v99 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v100 = String._bridgeToObjectiveC()();

      v101 = [v100 lastPathComponent];

      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v105 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v106 = swift_initStackObject();
      *(v106 + 16) = xmmword_10146CA70;
      *(v106 + 56) = &type metadata for Int32;
      *(v106 + 64) = &protocol witness table for Int32;
      *(v106 + 32) = v98;
      v107 = sub_100006370(0, &qword_1019F4D30);
      *(v106 + 96) = v107;
      v108 = sub_1005CF04C();
      *(v106 + 104) = v108;
      *(v106 + 72) = v99;
      *(v106 + 136) = &type metadata for String;
      v109 = sub_1000053B0();
      *(v106 + 112) = v102;
      *(v106 + 120) = v104;
      *(v106 + 176) = &type metadata for UInt;
      *(v106 + 184) = &protocol witness table for UInt;
      *(v106 + 144) = v109;
      *(v106 + 152) = 251;
      v110 = v122[0];
      *(v106 + 216) = v107;
      *(v106 + 224) = v108;
      *(v106 + 192) = v110;
      v111 = v99;
      v112 = v110;
      v113 = static os_log_type_t.error.getter();
      sub_100005404(v105, &_mh_execute_header, v113, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v106);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v114 = static os_log_type_t.error.getter();
      sub_100005404(v105, &_mh_execute_header, v114, "currentDocumentMode is nil", 26, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v115 = swift_allocObject();
      v115[2] = 8;
      v115[3] = 0;
      v115[4] = 0;
      v115[5] = 0;
      v116 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v117 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v118 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v66 = String._bridgeToObjectiveC()();

      [v97 handleFailureInFunction:v117 file:v118 lineNumber:251 isFatal:0 format:v66 args:v116];

LABEL_70:

      return 0;
    }

    swift_unknownObjectRelease();
  }

  v121 = objc_opt_self();
  LODWORD(v31) = [v121 _atomicIncrementAssertCount];
  v122[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v122);
  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  v34 = [v33 lastPathComponent];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (qword_1019F20A0 != -1)
  {
LABEL_83:
    swift_once();
  }

  v38 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_10146CA70;
  *(v39 + 56) = &type metadata for Int32;
  *(v39 + 64) = &protocol witness table for Int32;
  *(v39 + 32) = v31;
  v40 = sub_100006370(0, &qword_1019F4D30);
  *(v39 + 96) = v40;
  v41 = sub_1005CF04C();
  *(v39 + 104) = v41;
  *(v39 + 72) = v32;
  *(v39 + 136) = &type metadata for String;
  v42 = sub_1000053B0();
  *(v39 + 112) = v35;
  *(v39 + 120) = v37;
  *(v39 + 176) = &type metadata for UInt;
  *(v39 + 184) = &protocol witness table for UInt;
  *(v39 + 144) = v42;
  *(v39 + 152) = 245;
  v43 = v122[0];
  *(v39 + 216) = v40;
  *(v39 + 224) = v41;
  *(v39 + 192) = v43;
  v44 = v32;
  v45 = v43;
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v39);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v47 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v47, "pencilGestureProvider is nil", 28, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v32 = swift_allocObject();
  v32[2] = 8;
  v32[3] = 0;
  v48 = v32 + 3;
  v32[4] = 0;
  v32[5] = 0;
  v35 = _swiftEmptyArrayStorage[2];
  if (!v35)
  {
LABEL_38:
    v63 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v64 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v66 = String._bridgeToObjectiveC()();

    [v121 handleFailureInFunction:v64 file:v65 lineNumber:245 isFatal:0 format:v66 args:v63];
LABEL_69:

    goto LABEL_70;
  }

  v37 = 0;
  while (1)
  {
    LODWORD(v31) = sub_100020E58(&_swiftEmptyArrayStorage[5 * v37 + 4], _swiftEmptyArrayStorage[5 * v37 + 7]);
    v49 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v50 = *v48;
    v51 = *(v49 + 16);
    v52 = __OFADD__(*v48, v51);
    v53 = *v48 + v51;
    if (v52)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v31 = v32[4];
    if (v31 >= v53)
    {
      goto LABEL_30;
    }

    if (v31 + 0x4000000000000000 < 0)
    {
      goto LABEL_78;
    }

    v54 = v32[5];
    if (2 * v31 > v53)
    {
      v53 = 2 * v31;
    }

    v32[4] = v53;
    if ((v53 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_79;
    }

    v55 = v49;
    v56 = swift_slowAlloc();
    v57 = v56;
    v32[5] = v56;
    if (v54)
    {
      if (v56 != v54 || v56 >= &v54[8 * v50])
      {
        memmove(v56, v54, 8 * v50);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v49 = v55;
LABEL_30:
      v57 = v32[5];
      if (!v57)
      {
        goto LABEL_37;
      }

      goto LABEL_31;
    }

    v49 = v55;
    if (!v57)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_31:
    v59 = *(v49 + 16);
    if (v59)
    {
      break;
    }

LABEL_15:

    if (++v37 == v35)
    {
      goto LABEL_38;
    }
  }

  v60 = (v49 + 32);
  v61 = *v48;
  while (1)
  {
    v62 = *v60++;
    *&v57[8 * v61] = v62;
    v61 = *v48 + 1;
    if (__OFADD__(*v48, 1))
    {
      break;
    }

    *v48 = v61;
    if (!--v59)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_40:
  swift_unknownObjectRelease();
LABEL_41:
  v121 = objc_opt_self();
  v67 = [v121 _atomicIncrementAssertCount];
  v122[0] = [objc_allocWithZone(NSString) init];
  v8 = _swiftEmptyArrayStorage;
  sub_100604538(_swiftEmptyArrayStorage, v122);
  StaticString.description.getter();
  v68 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v69 = String._bridgeToObjectiveC()();

  v70 = [v69 lastPathComponent];

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v74 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v75 = swift_initStackObject();
  *(v75 + 16) = xmmword_10146CA70;
  *(v75 + 56) = &type metadata for Int32;
  *(v75 + 64) = &protocol witness table for Int32;
  *(v75 + 32) = v67;
  v76 = sub_100006370(0, &qword_1019F4D30);
  *(v75 + 96) = v76;
  v77 = sub_1005CF04C();
  *(v75 + 104) = v77;
  *(v75 + 72) = v68;
  *(v75 + 136) = &type metadata for String;
  v78 = sub_1000053B0();
  *(v75 + 112) = v71;
  *(v75 + 120) = v73;
  *(v75 + 176) = &type metadata for UInt;
  *(v75 + 184) = &protocol witness table for UInt;
  *(v75 + 144) = v78;
  *(v75 + 152) = 250;
  v5 = v122[0];
  *(v75 + 216) = v76;
  *(v75 + 224) = v77;
  *(v75 + 192) = v5;
  v79 = v68;
  v80 = v5;
  v81 = static os_log_type_t.error.getter();
  sub_100005404(v74, &_mh_execute_header, v81, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v75);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v82 = static os_log_type_t.error.getter();
  sub_100005404(v74, &_mh_execute_header, v82, "cvc is nil", 10, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v32 = swift_allocObject();
  v32[2] = 8;
  v32[3] = 0;
  v83 = v32 + 3;
  v32[4] = 0;
  v32[5] = 0;
  v35 = _swiftEmptyArrayStorage[2];
  if (!v35)
  {
LABEL_68:
    v96 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v64 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v66 = String._bridgeToObjectiveC()();

    [v121 handleFailureInFunction:v64 file:v65 lineNumber:250 isFatal:0 format:v66 args:v96];
    goto LABEL_69;
  }

  v37 = 0;
  while (1)
  {
    LODWORD(v31) = sub_100020E58(&_swiftEmptyArrayStorage[5 * v37 + 4], _swiftEmptyArrayStorage[5 * v37 + 7]);
    v84 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v85 = *v83;
    v86 = *(v84 + 16);
    v52 = __OFADD__(*v83, v86);
    v87 = *v83 + v86;
    if (v52)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v31 = v32[4];
    if (v31 >= v87)
    {
      goto LABEL_60;
    }

    if (v31 + 0x4000000000000000 < 0)
    {
      goto LABEL_81;
    }

    v88 = v32[5];
    if (2 * v31 > v87)
    {
      v87 = 2 * v31;
    }

    v32[4] = v87;
    if ((v87 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_82;
    }

    v5 = v84;
    v89 = swift_slowAlloc();
    v90 = v89;
    v32[5] = v89;
    if (v88)
    {
      if (v89 != v88 || v89 >= &v88[8 * v85])
      {
        memmove(v89, v88, 8 * v85);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v84 = v5;
LABEL_60:
      v90 = v32[5];
      if (!v90)
      {
        goto LABEL_67;
      }

      goto LABEL_61;
    }

    v84 = v5;
    if (!v90)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_61:
    v92 = *(v84 + 16);
    if (v92)
    {
      break;
    }

LABEL_45:

    if (++v37 == v35)
    {
      goto LABEL_68;
    }
  }

  v93 = (v84 + 32);
  v94 = *v83;
  while (1)
  {
    v95 = *v93++;
    *&v90[8 * v94] = v95;
    v94 = *v83 + 1;
    if (__OFADD__(*v83, 1))
    {
      break;
    }

    *v83 = v94;
    if (!--v92)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_76:
  v119 = sub_1008392DC();

  return v119;
}

uint64_t sub_1008392DC()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong layerHost];

  if (!v2)
  {
LABEL_13:
    v104 = objc_opt_self();
    LODWORD(v13) = [v104 _atomicIncrementAssertCount];
    v105[0] = [objc_allocWithZone(NSString) init];
    v9 = _swiftEmptyArrayStorage;
    sub_100604538(_swiftEmptyArrayStorage, v105);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 == -1)
    {
LABEL_14:
      v19 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v13;
      v21 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v21;
      v22 = sub_1005CF04C();
      *(inited + 104) = v22;
      *(inited + 72) = v10;
      *(inited + 136) = &type metadata for String;
      v23 = sub_1000053B0();
      *(inited + 112) = v16;
      *(inited + 120) = v18;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v23;
      *(inited + 152) = 264;
      v6 = v105[0];
      *(inited + 216) = v21;
      *(inited + 224) = v22;
      *(inited + 192) = v6;
      v24 = v10;
      v25 = v6;
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v27, "pencilGestureProvider is nil", 28, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v10 = swift_allocObject();
      v10[2] = 8;
      v10[3] = 0;
      v28 = v10 + 3;
      v10[4] = 0;
      v10[5] = 0;
      v16 = _swiftEmptyArrayStorage[2];
      if (v16)
      {
        v18 = 0;
        while (1)
        {
          sub_100020E58(&_swiftEmptyArrayStorage[5 * v18 + 4], _swiftEmptyArrayStorage[5 * v18 + 7]);
          v29 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v30 = *v28;
          v31 = *(v29 + 16);
          v32 = __OFADD__(*v28, v31);
          v33 = *v28 + v31;
          if (v32)
          {
            goto LABEL_83;
          }

          v13 = v10[4];
          if (v13 >= v33)
          {
            goto LABEL_31;
          }

          if (v13 + 0x4000000000000000 < 0)
          {
            __break(1u);
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

          v34 = v10[5];
          if (2 * v13 > v33)
          {
            v33 = 2 * v13;
          }

          v10[4] = v33;
          if ((v33 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_91;
          }

          v6 = v29;
          v35 = swift_slowAlloc();
          v36 = v35;
          v10[5] = v35;
          if (v34)
          {
            break;
          }

          v29 = v6;
          if (!v36)
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_32:
          v38 = *(v29 + 16);
          if (v38)
          {
            v39 = (v29 + 32);
            v40 = *v28;
            while (1)
            {
              v41 = *v39++;
              *&v36[8 * v40] = v41;
              v40 = *v28 + 1;
              if (__OFADD__(*v28, 1))
              {
                break;
              }

              *v28 = v40;
              if (!--v38)
              {
                goto LABEL_16;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

LABEL_16:

          if (++v18 == v16)
          {
            goto LABEL_39;
          }
        }

        if (v35 != v34 || v35 >= &v34[8 * v30])
        {
          memmove(v35, v34, 8 * v30);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v29 = v6;
LABEL_31:
        v36 = v10[5];
        if (!v36)
        {
          goto LABEL_38;
        }

        goto LABEL_32;
      }

LABEL_39:
      v42 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v43 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v44 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v45 = String._bridgeToObjectiveC()();

      [v104 handleFailureInFunction:v43 file:v44 lineNumber:264 isFatal:0 format:v45 args:v42];
LABEL_70:

      goto LABEL_71;
    }

LABEL_95:
    swift_once();
    goto LABEL_14;
  }

  if (([v2 respondsToSelector:"asPencilGestureProvider"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v3 = [v2 asPencilGestureProvider];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = [v4 layerHost];

  if (v5)
  {
    if ([v5 respondsToSelector:"asiOSCVC"])
    {
      v6 = [v5 asiOSCVC];
      swift_unknownObjectRelease();
      result = [v6 delegate];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v8 = result;
      if ([result respondsToSelector:"currentDocumentMode"])
      {
        v9 = [v8 currentDocumentMode];
        swift_unknownObjectRelease();
        v10 = v0;
        if ((sub_10083A2E0(&selRef_shouldSelectAndScrollWithApplePencil, "wantsToSelectAndScroll", 22, 337) & 1) != 0 && [v9 pencilModeType])
        {
          v11 = *(v0 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator__lastPencilModeType);
          if (v11 != 2)
          {
            if (v11 > 1)
            {
              goto LABEL_86;
            }

            goto LABEL_11;
          }

          goto LABEL_87;
        }

        if ((sub_10083A2E0(&selRef_shouldSelectAndScrollWithApplePencil, "wantsToSelectAndScroll", 22, 337) & 1) == 0 && (sub_10083A2E0(&selRef_shouldPreventDefaultPencilBehaviors, "canvasViewControllerWantsToPreventPencilBehaviors", 49, 344) & 1) == 0 && ![v9 wantsToPreventStandardPencilBehaviors])
        {
          v98 = swift_unknownObjectUnownedLoadStrong();
          v99 = sub_101066960(2);
          v101 = v100;

          if (!v99)
          {
            goto LABEL_84;
          }

          v102 = [v99 worksWithStylus];

          if (!v102)
          {
            goto LABEL_84;
          }
        }

        return 0;
      }

      swift_unknownObjectRelease();
      v76 = objc_opt_self();
      v77 = [v76 _atomicIncrementAssertCount];
      v105[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v105);
      StaticString.description.getter();
      v78 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v79 = String._bridgeToObjectiveC()();

      v80 = [v79 lastPathComponent];

      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

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
      *(v85 + 32) = v77;
      v86 = sub_100006370(0, &qword_1019F4D30);
      *(v85 + 96) = v86;
      v87 = sub_1005CF04C();
      *(v85 + 104) = v87;
      *(v85 + 72) = v78;
      *(v85 + 136) = &type metadata for String;
      v88 = sub_1000053B0();
      *(v85 + 112) = v81;
      *(v85 + 120) = v83;
      *(v85 + 176) = &type metadata for UInt;
      *(v85 + 184) = &protocol witness table for UInt;
      *(v85 + 144) = v88;
      *(v85 + 152) = 270;
      v89 = v105[0];
      *(v85 + 216) = v86;
      *(v85 + 224) = v87;
      *(v85 + 192) = v89;
      v90 = v78;
      v91 = v89;
      v92 = static os_log_type_t.error.getter();
      sub_100005404(v84, &_mh_execute_header, v92, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v85);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v93 = static os_log_type_t.error.getter();
      sub_100005404(v84, &_mh_execute_header, v93, "currentDocumentMode is nil", 26, 2, _swiftEmptyArrayStorage);

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
      v45 = String._bridgeToObjectiveC()();

      [v76 handleFailureInFunction:v96 file:v97 lineNumber:270 isFatal:0 format:v45 args:v95];

LABEL_71:

      return 0;
    }

LABEL_41:
    swift_unknownObjectRelease();
  }

  v104 = objc_opt_self();
  v46 = [v104 _atomicIncrementAssertCount];
  v105[0] = [objc_allocWithZone(NSString) init];
  v9 = _swiftEmptyArrayStorage;
  sub_100604538(_swiftEmptyArrayStorage, v105);
  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  v49 = [v48 lastPathComponent];

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v53 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_10146CA70;
  *(v54 + 56) = &type metadata for Int32;
  *(v54 + 64) = &protocol witness table for Int32;
  *(v54 + 32) = v46;
  v55 = sub_100006370(0, &qword_1019F4D30);
  *(v54 + 96) = v55;
  v56 = sub_1005CF04C();
  *(v54 + 104) = v56;
  *(v54 + 72) = v47;
  *(v54 + 136) = &type metadata for String;
  v57 = sub_1000053B0();
  *(v54 + 112) = v50;
  *(v54 + 120) = v52;
  *(v54 + 176) = &type metadata for UInt;
  *(v54 + 184) = &protocol witness table for UInt;
  *(v54 + 144) = v57;
  *(v54 + 152) = 269;
  v6 = v105[0];
  *(v54 + 216) = v55;
  *(v54 + 224) = v56;
  *(v54 + 192) = v6;
  v58 = v47;
  v59 = v6;
  v60 = static os_log_type_t.error.getter();
  sub_100005404(v53, &_mh_execute_header, v60, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v54);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v61 = static os_log_type_t.error.getter();
  sub_100005404(v53, &_mh_execute_header, v61, "cvc is nil", 10, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v10 = swift_allocObject();
  v10[2] = 8;
  v10[3] = 0;
  v62 = v10 + 3;
  v10[4] = 0;
  v10[5] = 0;
  v16 = _swiftEmptyArrayStorage[2];
  if (!v16)
  {
LABEL_69:
    v75 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    [v104 handleFailureInFunction:v43 file:v44 lineNumber:269 isFatal:0 format:v45 args:v75];
    goto LABEL_70;
  }

  v18 = 0;
  while (1)
  {
    LODWORD(v13) = sub_100020E58(&_swiftEmptyArrayStorage[5 * v18 + 4], _swiftEmptyArrayStorage[5 * v18 + 7]);
    v63 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v64 = *v62;
    v65 = *(v63 + 16);
    v32 = __OFADD__(*v62, v65);
    v66 = *v62 + v65;
    if (v32)
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v13 = v10[4];
    if (v13 >= v66)
    {
      goto LABEL_61;
    }

    if (v13 + 0x4000000000000000 < 0)
    {
      goto LABEL_93;
    }

    v67 = v10[5];
    if (2 * v13 > v66)
    {
      v66 = 2 * v13;
    }

    v10[4] = v66;
    if ((v66 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_94;
    }

    v6 = v63;
    v68 = swift_slowAlloc();
    v69 = v68;
    v10[5] = v68;
    if (v67)
    {
      if (v68 != v67 || v68 >= &v67[8 * v64])
      {
        memmove(v68, v67, 8 * v64);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v63 = v6;
LABEL_61:
      v69 = v10[5];
      if (!v69)
      {
        goto LABEL_68;
      }

      goto LABEL_62;
    }

    v63 = v6;
    if (!v69)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_62:
    v71 = *(v63 + 16);
    if (v71)
    {
      break;
    }

LABEL_46:

    if (++v18 == v16)
    {
      goto LABEL_69;
    }
  }

  v72 = (v63 + 32);
  v73 = *v62;
  while (1)
  {
    v74 = *v72++;
    *&v69[8 * v73] = v74;
    v73 = *v62 + 1;
    if (__OFADD__(*v62, 1))
    {
      break;
    }

    *v62 = v73;
    if (!--v71)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  v11 = *(v10 + OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator__lastPencilModeType);
  if (v11 == 2)
  {
LABEL_87:
    v103 = [objc_opt_self() _canShowHandwritingTool];

    if (v103)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  if (v11 >= 2)
  {
LABEL_86:
    type metadata accessor for CRLiOSPencilModeType(0);
    v105[0] = v11;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    goto LABEL_87;
  }

LABEL_11:
  v12 = sub_10083ABD8();

  return v12;
}

id sub_10083A2E0(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = [Strong layerHost];

  if (v7)
  {
    if ([v7 respondsToSelector:"asPencilGestureProvider"])
    {
      v8 = [v7 asPencilGestureProvider];
      swift_unknownObjectRelease();
      v9 = [v8 *a1];
      swift_unknownObjectRelease();
      return v9;
    }

    swift_unknownObjectRelease();
  }

  v34 = a4;
  v33 = objc_opt_self();
  v11 = [v33 _atomicIncrementAssertCount];
  v35 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v35);
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
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v11;
  v20 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v20;
  v21 = sub_1005CF04C();
  *(inited + 104) = v21;
  *(inited + 72) = v12;
  *(inited + 136) = &type metadata for String;
  v22 = sub_1000053B0();
  *(inited + 112) = v15;
  *(inited + 120) = v17;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v22;
  *(inited + 152) = v34;
  v23 = v35;
  *(inited + 216) = v20;
  *(inited + 224) = v21;
  *(inited + 192) = v23;
  v24 = v12;
  v25 = v23;
  v26 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
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

  [v33 handleFailureInFunction:v30 file:v31 lineNumber:v34 isFatal:0 format:v32 args:v29];

  return 0;
}

uint64_t CRLiOSPencilMediator.shouldAllowPencilKitHoverPreview(at:)()
{
  v0 = sub_1008392DC();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong freehandDrawingToolkit];

  if (v2)
  {
    v3 = sub_100D89D88();

    v4 = v3 == 3;
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
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
    *(inited + 152) = 313;
    v18 = v29;
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
    sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:313 isFatal:0 format:v27 args:v24];

    v4 = 1;
  }

  return (v0 == 1) & v4;
}

uint64_t sub_10083ABD8()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong freehandDrawingToolkit];

  if (v1)
  {
    v2 = [v1 canBeginFreehandDrawingMode];

    if (v2)
    {
      return 1;
    }
  }

  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = [v4 layerHost];

  if (!v5)
  {
    goto LABEL_9;
  }

  if (([v5 respondsToSelector:"asiOSCVC"] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_9:
    v8 = objc_opt_self();
    v9 = [v8 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v9;
    v18 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v18;
    v19 = sub_1005CF04C();
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 392;
    v21 = v31;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    [v8 handleFailureInFunction:v28 file:v29 lineNumber:392 isFatal:0 format:v30 args:v27];

    return 0;
  }

  v6 = [v5 asiOSCVC];
  swift_unknownObjectRelease();
  v7 = [v6 wantsSystemInputAssistantForScribble];

  if (v7)
  {
    return 2;
  }

  return 0;
}

void CRLiOSPencilMediator.observeValue(forKeyPath:of:change:context:)(uint64_t a1, NSString a2, uint64_t a3, Class isa, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  sub_100601584(a3, v22);
  if (!v23)
  {
    sub_1005E09AC(v22);
    goto LABEL_12;
  }

  sub_1005B981C(&qword_101A03E68);
  if ((swift_dynamicCast() & 1) == 0 || v20[1] != sub_100006370(0, &qword_101A03E60))
  {
LABEL_12:
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  v12 = *&v5[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_prefersPencilOnlyDrawingKeyPath] == a1 && *&v5[OBJC_IVAR____TtC8Freeform20CRLiOSPencilMediator_prefersPencilOnlyDrawingKeyPath + 8] == a2;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_1008375BC();
    return;
  }

LABEL_13:
  a2 = String._bridgeToObjectiveC()();
LABEL_14:
  sub_100601584(a3, v22);
  v13 = v23;
  if (!v23)
  {
    v19 = 0;
    if (!isa)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v14 = sub_100020E58(v22, v23);
  v15 = *(v13 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v16);
  v19 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v15 + 8))(v18, v13);
  sub_100005070(v22);
  if (isa)
  {
LABEL_16:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_10083BABC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_17:
  v21.receiver = v5;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "observeValueForKeyPath:ofObject:change:context:", a2, v19, isa, a5);

  swift_unknownObjectRelease();
}

unint64_t sub_10083B3F4(unint64_t result)
{
  if (result >= 3)
  {
    v1 = result;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 32) = v1;
    v3 = inited + 32;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    v43 = objc_opt_self();
    v4 = [v43 _atomicIncrementAssertCount];
    v44 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v44);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v11 = static OS_os_log.crlAssert;
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_10146CA70;
      *(v12 + 56) = &type metadata for Int32;
      *(v12 + 64) = &protocol witness table for Int32;
      *(v12 + 32) = v4;
      v13 = sub_100006370(0, &qword_1019F4D30);
      *(v12 + 96) = v13;
      v14 = sub_1005CF04C();
      *(v12 + 104) = v14;
      *(v12 + 72) = v5;
      *(v12 + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(v12 + 112) = v8;
      *(v12 + 120) = v10;
      *(v12 + 176) = &type metadata for UInt;
      *(v12 + 184) = &protocol witness table for UInt;
      *(v12 + 144) = v15;
      *(v12 + 152) = 498;
      v16 = v44;
      *(v12 + 216) = v13;
      *(v12 + 224) = v14;
      *(v12 + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v12);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "Unexpected user defaults representation for last pencil mode: %i", 64, 2, inited);

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v8 = v21 + 3;
      v21[4] = 0;
      v21[5] = 0;
      v5 = *(inited + 16);
      v10 = inited;
      if (!v5)
      {
LABEL_28:
        v39 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v40 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v41 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v42 = String._bridgeToObjectiveC()();

        [v43 handleFailureInFunction:v40 file:v41 lineNumber:498 isFatal:0 format:v42 args:v39];

        swift_setDeallocating();
        swift_arrayDestroy();
        return 0;
      }

      inited = 0;
      v4 = 40;
      while (1)
      {
        sub_100020E58((v3 + 40 * inited), *(v3 + 40 * inited + 24));
        v22 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v23 = *v8;
        v24 = *(v22 + 16);
        v25 = __OFADD__(*v8, v24);
        v26 = *v8 + v24;
        if (v25)
        {
          break;
        }

        v27 = v21[4];
        if (v27 >= v26)
        {
          goto LABEL_20;
        }

        if (v27 + 0x4000000000000000 < 0)
        {
          goto LABEL_32;
        }

        v28 = v21[5];
        if (2 * v27 > v26)
        {
          v26 = 2 * v27;
        }

        v21[4] = v26;
        if ((v26 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_33;
        }

        v29 = v3;
        v30 = v10;
        v31 = v22;
        v32 = swift_slowAlloc();
        v33 = v32;
        v21[5] = v32;
        if (v28)
        {
          if (v32 != v28 || v32 >= &v28[8 * v23])
          {
            memmove(v32, v28, 8 * v23);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v22 = v31;
          v10 = v30;
          v3 = v29;
          v4 = 40;
LABEL_20:
          v33 = v21[5];
          if (!v33)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v22 = v31;
        v10 = v30;
        v3 = v29;
        v4 = 40;
        if (!v33)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v35 = *(v22 + 16);
        if (v35)
        {
          v36 = (v22 + 32);
          v37 = *v8;
          while (1)
          {
            v38 = *v36++;
            *&v33[8 * v37] = v38;
            v37 = *v8 + 1;
            if (__OFADD__(*v8, 1))
            {
              break;
            }

            *v8 = v37;
            if (!--v35)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++inited == v5)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      swift_once();
    }
  }

  return result;
}

void sub_10083B958(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v1 = 9;
LABEL_5:
      v2 = objc_opt_self();
      v3 = String._bridgeToObjectiveC()();
      _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(v1);
      sub_100006370(0, &qword_1019F54D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v2 sendEventInDomain:v3 lazily:1 eventPayload:isa];

      return;
    case 2:
      v1 = 10;
      goto LABEL_5;
    case 0:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  type metadata accessor for CRLiOSPencilModeType(0);
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

unint64_t sub_10083BABC()
{
  result = qword_1019F34D0;
  if (!qword_1019F34D0)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F34D0);
  }

  return result;
}

uint64_t sub_10083BB38()
{
  if (qword_1019F21C8 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.crlPencilHover;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v2 = sub_1000053B0();
  *(inited + 32) = 0x776569766572702ALL;
  *(inited + 64) = v2;
  *(inited + 40) = 0xE800000000000000;
  *&v6 = 0;
  *(&v6 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v3._countAndFlagsBits = 0x5377656976657270;
  v3._object = 0xEE00203A65746174;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v2;
  *(inited + 72) = v6;
  v4 = static os_log_type_t.debug.getter();
  sub_100005404(v0, &_mh_execute_header, v4, "%@ %@", 5, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  return swift_arrayDestroy();
}

id sub_10083BD18(unsigned __int8 *a1)
{
  v2 = *(*(a1 + 8) + OBJC_IVAR____TtC8Freeform23CRLiOSPencilHoverStates_currentHoverToolType);
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      if (v2 != 2)
      {
        goto LABEL_4;
      }
    }

    else if (v2 != 3)
    {
      goto LABEL_4;
    }
  }

  else if (*a1)
  {
    if (v2 != 1)
    {
      goto LABEL_4;
    }
  }

  else if (*(*(a1 + 8) + OBJC_IVAR____TtC8Freeform23CRLiOSPencilHoverStates_currentHoverToolType))
  {
LABEL_4:
    v3 = objc_opt_self();
    [v3 begin];
    [v3 setDisableActions:1];
    v4 = *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_shapeLayer);
    v5 = *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_imageLayer);
    [v4 setPath:0];
    [v4 setHidden:1];
    [v5 removeFromSuperlayer];

    return [v3 commit];
  }

  v7 = (v1 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_previewState);
  if (*(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_previewState + 24))
  {
    if (*(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_previewState + 24) == 1)
    {
      v9 = *v7;
      v10 = v7[1];
      v11 = v7[2];
      if (qword_1019F21C8 != -1)
      {
        swift_once();
      }

      v12 = static OS_os_log.crlPencilHover;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      *(inited + 56) = &type metadata for String;
      v14 = sub_1000053B0();
      *(inited + 32) = 0x776569766572702ALL;
      *(inited + 64) = v14;
      *(inited + 40) = 0xE800000000000000;
      _StringGuts.grow(_:)(23);
      v15._countAndFlagsBits = 0x676E697265766F68;
      v15._object = 0xE900000000000020;
      String.append(_:)(v15);
      type metadata accessor for CGPoint(0);
      _print_unlocked<A, B>(_:_:)();
      v16._countAndFlagsBits = 0x74657366664F7A20;
      v16._object = 0xEA0000000000203ALL;
      String.append(_:)(v16);
      v17._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v17);

      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v14;
      *(inited + 72) = 0;
      *(inited + 80) = 0xE000000000000000;
      v18 = static os_log_type_t.debug.getter();
      sub_100005404(v12, &_mh_execute_header, v18, "%@ %@", 5, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      return sub_10083C368(a1, v9, v10, v11);
    }

    else
    {
      if (qword_1019F21C8 != -1)
      {
        swift_once();
      }

      v24 = static OS_os_log.crlPencilHover;
      sub_1005B981C(&qword_1019F54E0);
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_10146BDE0;
      *(v25 + 56) = &type metadata for String;
      v26 = sub_1000053B0();
      *(v25 + 32) = 0x776569766572702ALL;
      *(v25 + 64) = v26;
      *(v25 + 40) = 0xE800000000000000;
      _StringGuts.grow(_:)(23);
      v27._countAndFlagsBits = 0x676E697265746E65;
      v27._object = 0xE900000000000020;
      String.append(_:)(v27);
      type metadata accessor for CGPoint(0);
      _print_unlocked<A, B>(_:_:)();
      v28._countAndFlagsBits = 0x74657366664F7A20;
      v28._object = 0xEA0000000000203ALL;
      String.append(_:)(v28);
      v29._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v29);

      *(v25 + 96) = &type metadata for String;
      *(v25 + 104) = v26;
      *(v25 + 72) = 0;
      *(v25 + 80) = 0xE000000000000000;
      v30 = static os_log_type_t.debug.getter();
      sub_100005404(v24, &_mh_execute_header, v30, "%@ %@", 5, 2, v25);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      static Date.timeIntervalSinceReferenceDate.getter();
      *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_enteringTimeIntervals) = v31;
      return sub_10083C65C(a1);
    }
  }

  else
  {
    if (qword_1019F21C8 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlPencilHover;
    sub_1005B981C(&qword_1019F54E0);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_10146BDE0;
    *(v20 + 56) = &type metadata for String;
    v21 = sub_1000053B0();
    *(v20 + 32) = 0x776569766572702ALL;
    *(v20 + 40) = 0xE800000000000000;
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v21;
    *(v20 + 64) = v21;
    *(v20 + 72) = 0xD00000000000002ELL;
    *(v20 + 80) = 0x800000010156D880;
    v22 = static os_log_type_t.debug.getter();
    sub_100005404(v19, &_mh_execute_header, v22, "%@ %@", 5, 2, v20);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    return swift_arrayDestroy();
  }
}

id sub_10083C368(unsigned __int8 *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v7 = *(*(a1 + 8) + OBJC_IVAR____TtC8Freeform23CRLiOSPencilHoverStates_currentHoverToolType);
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      if (v7 != 2)
      {
        goto LABEL_4;
      }
    }

    else if (v7 != 3)
    {
      goto LABEL_4;
    }
  }

  else if (*a1)
  {
    if (v7 != 1)
    {
      goto LABEL_4;
    }
  }

  else if (*(*(a1 + 8) + OBJC_IVAR____TtC8Freeform23CRLiOSPencilHoverStates_currentHoverToolType))
  {
LABEL_4:
    v8 = objc_opt_self();
    [v8 begin];
    [v8 setDisableActions:1];
    v9 = *&v5[OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_shapeLayer];
    v10 = *&v5[OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_imageLayer];
    [v9 setPath:0];
    [v9 setHidden:1];
    [v10 removeFromSuperlayer];

    return [v8 commit];
  }

  if (*(a1 + 1) != a2 || (*(a1 + 2) == a3 ? (v12 = *(a1 + 3) == a4) : (v12 = 0), !v12 || (result = static Date.timeIntervalSinceReferenceDate.getter(), v13 - *&v4[OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_enteringTimeIntervals] < 0.2)))
  {
    v14 = objc_opt_self();
    [v14 begin];
    [v14 setDisableActions:1];
    v15 = *&v4[OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_imageLayer];
    static Date.timeIntervalSinceReferenceDate.getter();
    v16 = OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_enteringTimeIntervals;
    v18 = v17 - *&v4[OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_enteringTimeIntervals];
    v19 = 1.0;
    if (v18 < 0.2)
    {
      static Date.timeIntervalSinceReferenceDate.getter();
      v19 = v20 - *&v4[v16];
    }

    sub_10083CD40(a1, v15, v19);
    v21 = swift_allocObject();
    v22 = *a1;
    *(v21 + 40) = *(a1 + 1);
    v23 = *(a1 + 3);
    *(v21 + 56) = *(a1 + 2);
    *(v21 + 72) = v23;
    *(v21 + 16) = v4;
    *(v21 + 88) = *(a1 + 8);
    *(v21 + 24) = v22;
    aBlock[4] = sub_10083DB2C;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_101888BB0;
    v24 = _Block_copy(aBlock);
    v25 = v5;
    sub_10083DA70(a1, v26);

    [v14 setCompletionBlock:v24];
    _Block_release(v24);
    return [v14 commit];
  }

  return result;
}

id sub_10083C65C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v5 = &v1[OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_previewState];
  *v5 = *(a1 + 8);
  *(v5 + 2) = v4;
  v5[24] = 0;
  sub_10083BB38();
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setDisableActions:1];
  v7 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_imageLayer];
  static Date.timeIntervalSinceReferenceDate.getter();
  v8 = OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_enteringTimeIntervals;
  v10 = v9 - *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_enteringTimeIntervals];
  v11 = 1.0;
  if (v10 < 0.2)
  {
    static Date.timeIntervalSinceReferenceDate.getter();
    v11 = v12 - *&v1[v8];
  }

  sub_10083CD40(a1, v7, v11);
  v13 = swift_allocObject();
  v14 = *a1;
  *(v13 + 40) = *(a1 + 16);
  v15 = *(a1 + 48);
  *(v13 + 56) = *(a1 + 32);
  *(v13 + 72) = v15;
  *(v13 + 16) = v1;
  *(v13 + 88) = *(a1 + 64);
  *(v13 + 24) = v14;
  aBlock[4] = sub_10083DACC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101888C00;
  v16 = _Block_copy(aBlock);
  v17 = v2;
  sub_10083DA70(a1, v19);

  [v6 setCompletionBlock:v16];
  _Block_release(v16);
  return [v6 commit];
}

void sub_10083C82C()
{
  v1 = v0 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_previewState;
  if (*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_previewState + 24) < 2u)
  {
    if (qword_1019F21C8 != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.crlPencilHover;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    v4 = sub_1000053B0();
    *(inited + 32) = 0x776569766572702ALL;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v4;
    *(inited + 64) = v4;
    *(inited + 72) = 0x676E6974697865;
    *(inited + 80) = 0xE700000000000000;
    v5 = static os_log_type_t.debug.getter();
    sub_100005404(v2, &_mh_execute_header, v5, "%@ %@", 5, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    *(v1 + 24) = 2;
    sub_10083BB38();
    v6 = objc_opt_self();
    [v6 begin];
    [v6 setDisableActions:1];
    v7 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_shapeLayer);
    v8 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_imageLayer);
    [v7 setPath:0];
    [v7 setHidden:1];
    [v8 removeFromSuperlayer];
    [v6 commit];
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    *v1 = 1;
    *(v1 + 24) = 2;
    sub_10083BB38();
  }
}

id sub_10083CB98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSPencilHoverToolPreviewer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t initializeBufferWithCopyOfBuffer for CRLBezierPathPointData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for CRLiOSPencilHoverToolPreviewer.PreviewState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLiOSPencilHoverToolPreviewer.PreviewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10083CCFC(uint64_t a1)
{
  if (*(a1 + 24) <= 1u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10083CD14(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void sub_10083CD40(unsigned __int8 *a1, id a2, float a3)
{
  v4 = v3;
  v7 = *(a1 + 3) + -0.8;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7 / -0.2 + 1.0;
  v9 = v8 * a3;
  v10 = *(a1 + 6);
  CopyWithAlpha = CGColorCreateCopyWithAlpha(*(a1 + 4), v10);
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v52 = *a1;
  sub_10083D4F4(*a1, v11, v12, *(a1 + 5));
  v54 = v13;
  [v3 setFillColor:0];
  [v3 setStrokeColor:0];
  *&v14 = v9;
  [v3 setOpacity:v14];
  if (qword_1019F21C8 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.crlPencilHover;
  v51 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 32) = 0x776569766572702ALL;
  *(inited + 64) = v17;
  *(inited + 40) = 0xE800000000000000;
  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v18._countAndFlagsBits = 0x3A74657366664F7ALL;
  v18._object = 0xE900000000000020;
  String.append(_:)(v18);
  v19._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v19);
  v20 = v17;

  v21._countAndFlagsBits = 0x7974696361706F20;
  v21._object = 0xEA0000000000203ALL;
  String.append(_:)(v21);
  [v3 opacity];
  Float.write<A>(to:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v17;
  *(inited + 72) = 0;
  *(inited + 80) = 0xE000000000000000;
  v22 = static os_log_type_t.debug.getter();
  sub_100005404(v15, &_mh_execute_header, v22, "%@ %@", 5, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  [a2 removeFromSuperlayer];
  v23 = *(a1 + 7);
  if (v23)
  {
    v24 = v23;
    v25 = v54;
    [v54 bounds];
    [a2 setFrame:?];
    [a2 setPosition:{v11, v12}];
    v26 = [v24 CGImage];
    [a2 setContents:v26];

    *&v27 = v10;
    [a2 setOpacity:v27];
    [a2 setContentsGravity:kCAGravityResizeAspectFill];
    v28 = &selRef_addSublayer_;
    v29 = CopyWithAlpha;
    goto LABEL_16;
  }

  [v3 setLineWidth:0.5];
  v30 = &selRef_setFillColor_;
  v29 = CopyWithAlpha;
  [v3 setFillColor:CopyWithAlpha];
  [v3 setStrokeColor:CopyWithAlpha];
  if (v52 <= 1)
  {
    if (v52)
    {
      [v3 setLineWidth:1.0];
    }

    else
    {
      v30 = &selRef_setStrokeColor_;
    }

    goto LABEL_15;
  }

  if (v52 == 2)
  {
LABEL_15:
    [v3 *v30];
    v25 = v54;
    a2 = [v54 CGPath];
    v28 = &selRef_setPath_;
    v24 = a2;
LABEL_16:
    [v4 *v28];

    if ([v4 isHidden])
    {
      [v4 setHidden:0];
    }

    goto LABEL_18;
  }

  v53 = objc_opt_self();
  v31 = [v53 _atomicIncrementAssertCount];
  v56[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v56);
  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  v34 = [v33 lastPathComponent];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v38 = static OS_os_log.crlAssert;
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_10146CA70;
  *(v39 + 56) = &type metadata for Int32;
  *(v39 + 64) = &protocol witness table for Int32;
  *(v39 + 32) = v31;
  v40 = sub_1005CF000();
  *(v39 + 96) = v40;
  v41 = sub_1005CF04C();
  *(v39 + 72) = v32;
  *(v39 + 136) = &type metadata for String;
  *(v39 + 144) = v20;
  *(v39 + 104) = v41;
  *(v39 + 112) = v35;
  *(v39 + 120) = v37;
  *(v39 + 176) = &type metadata for UInt;
  *(v39 + 184) = &protocol witness table for UInt;
  *(v39 + 152) = 212;
  v42 = v56[0];
  *(v39 + 216) = v40;
  *(v39 + 224) = v41;
  *(v39 + 192) = v42;
  v43 = v32;
  v44 = v42;
  v45 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v46, "Unsupported type should have been filtered out before update.", 61, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v47 = swift_allocObject();
  v47[2] = 8;
  v47[3] = 0;
  v47[4] = 0;
  v47[5] = 0;
  v48 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v49 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v29 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v50 = String._bridgeToObjectiveC()();

  [v53 handleFailureInFunction:v49 file:v29 lineNumber:212 isFatal:0 format:v50 args:v48];

  v25 = v50;
LABEL_18:
}

void sub_10083D4F4(unsigned __int8 a1, double a2, double a3, double a4)
{
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
LABEL_8:

      sub_100D1C7BC(a2, a3);
      return;
    }

    v5 = sub_10011EC70(a2, a3, a4);
    if ([objc_opt_self() bezierPathWithOvalInRect:{v5, v6, v7, v8}])
    {
      return;
    }

    __break(1u);
  }

  if (v4 == 2)
  {
    v9 = sub_10011EC70(a2, a3, a4);
    if ([objc_opt_self() bezierPathWithOvalInRect:{v9, v10, v11, v12}])
    {
      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  v13 = objc_opt_self();
  v14 = [v13 _atomicIncrementAssertCount];
  v36 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v36);
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
  v23 = sub_1005CF000();
  *(inited + 96) = v23;
  v24 = sub_1005CF04C();
  *(inited + 104) = v24;
  *(inited + 72) = v15;
  *(inited + 136) = &type metadata for String;
  v25 = sub_1000053B0();
  *(inited + 112) = v18;
  *(inited + 120) = v20;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v25;
  *(inited + 152) = 240;
  v26 = v36;
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
  sub_100005404(v21, &_mh_execute_header, v30, "Unsupported type should have been filtered out before preview.", 62, 2, _swiftEmptyArrayStorage);

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

  [v13 handleFailureInFunction:v33 file:v34 lineNumber:240 isFatal:0 format:v35 args:v32];

  [objc_allocWithZone(CRLBezierPath) init];
}

uint64_t sub_10083D98C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 != 1)
    {
      if (a3 | a2 | a1)
      {
        if (a1 != 1 || a3 | a2)
        {
          if (a8 == 2 && a5 == 2 && !(a7 | a6))
          {
            return 1;
          }
        }

        else if (a8 == 2 && a5 == 1 && !(a7 | a6))
        {
          return 1;
        }
      }

      else if (a8 == 2 && !(a7 | a6 | a5))
      {
        return 1;
      }

      return 0;
    }

    if (a8 != 1)
    {
      return 0;
    }
  }

  else if (a8)
  {
    return 0;
  }

  v8 = *&a1 == *&a5;
  if (*&a2 != *&a6)
  {
    v8 = 0;
  }

  return *&a3 == *&a7 && v8;
}

uint64_t sub_10083DAD0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC8Freeform30CRLiOSPencilHoverToolPreviewer_previewState;
  *v2 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  return sub_10083BB38();
}

void sub_10083DB8C(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = type metadata accessor for CGPathFillRule();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  CGContextSaveGState(a1);
  v18 = [*(v5 + OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_backgroundColor) CGColor];
  CGContextSetFillColorWithColor(a1, v18);

  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGContextFillRect(a1, v40);
  v19 = [objc_opt_self() bezierPathWithRect:{a2, a3, a4, a5}];
  if (!v19)
  {
    __break(1u);
    goto LABEL_18;
  }

  v20 = v19;
  v21 = [v19 CGPath];

  if (!v21)
  {
LABEL_18:
    __break(1u);
    return;
  }

  CGContextAddPath(a1, v21);

  (*(v13 + 104))(v15, enum case for CGPathFillRule.winding(_:), v12);
  CGContextRef.clip(using:)();
  (*(v13 + 8))(v15, v12);
  if (sub_10083E95C(a4, a5))
  {
    sub_10125281C();
    sub_101253648();
    v22 = objc_allocWithZone(NSAttributedString);
    v23 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10083EFD0(&qword_1019F34A0, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v25 = [v22 initWithString:v23 attributes:isa];

    v26 = CTLineCreateWithAttributedString(v25);
    BoundsWithOptions = CTLineGetBoundsWithOptions(v26, 0);
    v27 = CGRectGetWidth(BoundsWithOptions) + 24.0;
    v28 = [v17 layout];
    v29 = [v28 geometry];
    [v29 size];
    v31 = v30;

    v32 = sub_10011ECB4();
    if (v27 <= v31)
    {
      sub_10083E670(a1, v32, v33, v34, v35);
    }

    else
    {
      sub_10083E074(a1, v32, v33, v34, v35);
    }
  }

  else
  {
    sub_10083E074(a1, a2, a3, a4, a5);
  }

  CGContextRestoreGState(a1);
  v36 = *(v6 + OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_asset);
  if (v36)
  {
    sub_100510F80(a1, v36);
  }

  else
  {
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.assetManagement;
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v38, "CRLImageUndowloadedAssetDrawingHelper: draw(in ctx, with originalImageRect) called without a valid Asset. This might mean your generated Image is not updating correctly", 168, 2, _swiftEmptyArrayStorage);
  }
}

void sub_10083E074(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  CGContextSaveGState(a1);
  v10 = sub_101251648();
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v14 = sub_100120414(a2, a3, a4, a5);
    sub_10011EC70(v14, v15, v13);
    v57 = v12;
    if (!sub_10083E95C(a4, a5))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        v18 = [Strong layout];

        if (v18)
        {
          objc_opt_self();
          v19 = swift_dynamicCastObjCClass();
          if (v19 && (v20 = [v19 maskLayout]) != 0)
          {
            v21 = v20;
            v22 = [v21 geometry];
            [v22 frame];
            v24 = v23;
            v26 = v25;

            v27 = [v21 geometry];
            [v27 size];

            CGContextTranslateCTM(a1, v24, v26);
            v28 = sub_10011ECB4();
            v32 = sub_100120414(v28, v29, v30, v31);
            sub_10011EC70(v32, v33, v13);
          }

          else
          {
          }
        }
      }
    }

    CGContextRef.draw(_:in:byTiling:)();
    CGContextRestoreGState(a1);
  }

  else
  {
    v34 = objc_opt_self();
    v35 = [v34 _atomicIncrementAssertCount];
    v58 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v58);
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
    v44 = sub_1005CF000();
    *(inited + 96) = v44;
    v45 = sub_10083EFD0(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v45;
    *(inited + 72) = v36;
    *(inited + 136) = &type metadata for String;
    v46 = sub_1000053B0();
    *(inited + 112) = v39;
    *(inited + 120) = v41;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v46;
    *(inited + 152) = 88;
    v47 = v58;
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

    [v34 handleFailureInFunction:v54 file:v55 lineNumber:88 isFatal:0 format:v56 args:v53];
  }
}

void sub_10083E670(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v34 = a4 + -24.0;
  sub_10125281C();
  sub_101253648();
  v9 = objc_allocWithZone(NSAttributedString);
  v10 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10083EFD0(&qword_1019F34A0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithString:v10 attributes:isa];

  v13 = CTLineCreateWithAttributedString(v12);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v13, 0);
  x = BoundsWithOptions.origin.x;
  y = BoundsWithOptions.origin.y;
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  v18 = CGRectGetWidth(BoundsWithOptions);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v19 = CGRectGetHeight(v39);

  if (v34 >= v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + v19;
  }

  sub_100120414(a2, a3, a4, a5);
  v22 = v21 + v20 * -0.5;
  CGContextSaveGState(a1);
  v36 = sub_101251CA0(a2, a3, a4, a5);
  Strong = swift_unknownObjectWeakLoadStrong();
  v24 = 12.0;
  if (Strong)
  {
    v25 = Strong;
    v26 = [Strong info];

    if (v26)
    {
      type metadata accessor for CRLImageItem();
      if (swift_dynamicCastClass())
      {
        v27 = sub_100BBF54C();
        v28 = v27;
        swift_unknownObjectRelease();
        if (v27)
        {
          v29 = [v28 geometry];
          [v29 position];
          v31 = v30;
          v33 = v32;

          v24 = v31 + 12.0;
          v22 = v22 + v33;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  CGContextTranslateCTM(a1, v24, v22);
  [v36 drawInContext:a1];
  CGContextRestoreGState(a1);
}

BOOL sub_10083E95C(double a1, double a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong info];

    if (v6)
    {
      type metadata accessor for CRLImageItem();
      if (swift_dynamicCastClass())
      {
        v7 = sub_100BBF54C();
        v8 = v7;
        swift_unknownObjectRelease();
        if (v7)
        {
          v9 = [v8 pathSource];
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (v10)
          {
            v11 = [v10 shouldShowKnob];

            if (v11)
            {
              return 0;
            }
          }

          else
          {

            v21 = [v8 pathSource];
            v22 = [v21 isRectangular];

            if (!v22)
            {
              return 0;
            }
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    return 1;
  }

  v13 = v12;
  v14 = [v12 layout];
  v15 = [v14 geometry];

  [v15 size];
  v17 = v16;
  v19 = v18;

  return sub_10011ED08(v17, v19, a1, a2, 1.0);
}

id sub_10083EBA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLImageUndownloadedAssetDrawingHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *sub_10083EBF8(uint64_t a1, void *a2)
{
  result = sub_101252E28(a1, a2);
  if (result[OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_type] != 2)
  {
    v3 = result;
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_1005CF000();
    *(inited + 96) = v14;
    v15 = sub_10083EFD0(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 33;
    v17 = v27;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "Non image undownloaded asset should be only handled by CRLUndownloadedAssetDrawingHelper.", 89, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:33 isFatal:0 format:v26 args:v23];

    return v3;
  }

  return result;
}

uint64_t sub_10083EFD0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10083F128(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  v5[OBJC_IVAR____TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering_prohibitsClustering] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v8 + 8))(a1, v7);
  return v9;
}

void sub_10083F4A4(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    type metadata accessor for CRLFreehandDrawingItem();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      sub_1012E0400(v11, &off_10188FE10);

      if (!v4)
      {
        v14 = *(v5 + OBJC_IVAR____TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering_prohibitsClustering);
        if (sub_1011255D0(v13))
        {
          type metadata accessor for CRLFreehandItemData(0);
          swift_dynamicCastClassUnconditional();
          swift_beginAccess();
          v41 = v14;
          type metadata accessor for CRLFreehandDrawingCRDTData(0);

          sub_1005B981C(&qword_101A2C810);
          CRRegister.wrappedValue.setter();
          swift_endAccess();
        }

        v12 = v12;
        sub_1012CF6CC(v11, &off_10188FE10, a3);
      }

      return;
    }
  }

  v15 = objc_opt_self();
  v16 = [v15 _atomicIncrementAssertCount];
  v40 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v40);
  StaticString.description.getter();
  v17 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v18 lastPathComponent];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v23 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v16;
  v25 = sub_1005CF000();
  *(inited + 96) = v25;
  v26 = sub_1005CF04C();
  *(inited + 104) = v26;
  *(inited + 72) = v17;
  *(inited + 136) = &type metadata for String;
  v27 = sub_1000053B0();
  *(inited + 112) = v20;
  *(inited + 120) = v22;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v27;
  *(inited + 152) = 27;
  v28 = v40;
  *(inited + 216) = v25;
  *(inited + 224) = v26;
  *(inited + 192) = v28;
  v29 = v17;
  v30 = v28;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v32 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v32, "Unable to retrieve freehand drawing item.", 41, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve freehand drawing item.");
  type metadata accessor for __VaListBuilder();
  v33 = swift_allocObject();
  v33[2] = 8;
  v33[3] = 0;
  v33[4] = 0;
  v33[5] = 0;
  v34 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  [v15 handleFailureInFunction:v35 file:v36 lineNumber:27 isFatal:1 format:v37 args:v34];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v38, v39);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10083FA04()
{
  v1 = OBJC_IVAR____TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10083FA6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandFreehandDrawingProhibitClustering();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandFreehandDrawingProhibitClustering()
{
  result = qword_101A03F30;
  if (!qword_101A03F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10083FB64()
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

uint64_t sub_10083FBFC(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 112) = a3;
  *(v4 + 120) = v3;
  *(v4 + 160) = a2;
  *(v4 + 104) = a1;
  return _swift_task_switch(sub_10083FC24, 0, 0);
}

uint64_t sub_10083FC24()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_100006370(0, &qword_101A04060);
  sub_1005B981C(&unk_1019F4D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101465920;
  *(v4 + 32) = v3;
  v5 = v3;
  v20.value._rawValue = v4;
  v20.is_nil = 0;
  v6.super.super.super.super.isa = CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v20, v21).super.super.super.super.isa;
  *(v0 + 128) = v6;
  [(objc_class *)v6.super.super.super.super.isa setQualityOfService:v2];
  [(objc_class *)v6.super.super.super.super.isa setQueuePriority:8];
  [(objc_class *)v6.super.super.super.super.isa setShouldFetchAssetContents:v1];
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  v9 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v11 = [v8 zoneName];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  v15 = static os_log_type_t.default.getter();
  sub_100005404(v9, &_mh_execute_header, v15, "Fetching records for zoneID: %{public}@", 39, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  v16[2].super.super.super.super.isa = v6.super.super.super.super.isa;
  v16[3].super.super.super.super.isa = v7;
  v17 = swift_task_alloc();
  *(v0 + 144) = v17;
  *v17 = v0;
  v17[1] = sub_10083FEC8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000032, 0x800000010156DE70, sub_1008445D0, v16, &_s15FetchResultDataVN);
}

uint64_t sub_10083FEC8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10084004C;
  }

  else
  {

    v2 = sub_10083FFE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10083FFE4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_10084004C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008400B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return _swift_task_switch(sub_1008400DC, 0, 0);
}

uint64_t sub_1008400DC()
{
  v0[7].i64[0] = 0;
  v0[6].i64[0] = 0;
  v6 = v0[4];
  v0[6].i64[1] = v6.i64[0];
  v1 = v6.i64[0];
  v2 = swift_task_alloc();
  v0[7].i64[1] = v2;
  v2[1] = vextq_s8(v6, v6, 8uLL);
  v3 = swift_task_alloc();
  v0[8].i64[0] = v3;
  v4 = sub_100006370(0, &qword_1019F52C0);
  *v3 = v0;
  v3[1] = sub_100840208;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[1], 0, 0, 0xD000000000000013, 0x800000010156E0E0, sub_100844880, v2, v4);
}

uint64_t sub_100840208()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1008403A8;
  }

  else
  {

    v2 = sub_100840324;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100840324()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1008403A8()
{
  v1 = *(v0 + 136);

  *(v0 + 24) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    swift_willThrow();

    goto LABEL_6;
  }

  v2 = *(v0 + 32);
  *(v0 + 144) = v2;
  *(v0 + 40) = v2;
  sub_1008446C4(&qword_1019F3348, 255, type metadata accessor for CKError);
  v3 = v2;
  _BridgedStoredNSError.code.getter();
  v4 = *(v0 + 48);
  if (v4 <= 0x24)
  {
    if (((1 << v4) & 0x117B040B20) != 0)
    {
      v5 = *(v0 + 104);
      swift_willThrow();

LABEL_6:

LABEL_7:
      v8 = *(v0 + 8);

      return v8();
    }

    if (v4 == 14)
    {
      v29 = related decl 'e' for CKErrorCode.serverRecord.getter();
      if (v29)
      {
        v30 = v29;
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v26 = v31;
          (*(v0 + 80))();
          v32 = *(v0 + 104);
          v37 = v30;

          goto LABEL_14;
        }
      }

      v36 = *(v0 + 104);
      swift_willThrow();

      goto LABEL_7;
    }

    if (v4 == 21)
    {
      v10 = *(v0 + 72);
      v11 = [*(v0 + 104) recordID];
      *(v0 + 152) = v11;
      sub_1005B981C(&unk_1019F4D60);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_101465920;
      *(v12 + 32) = v11;
      v13 = objc_allocWithZone(CKFetchRecordsOperation);
      sub_100006370(0, &qword_1019F6E98);
      v14 = v11;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v16 = [v13 initWithRecordIDs:isa];
      *(v0 + 160) = v16;

      v17 = v16;
      [v17 setQualityOfService:25];
      [v17 setQueuePriority:8];

      v18 = swift_task_alloc();
      *(v0 + 168) = v18;
      v18[2] = v17;
      v18[3] = v14;
      v18[4] = v10;
      v19 = swift_task_alloc();
      *(v0 + 176) = v19;
      v20 = sub_100006370(0, &unk_101A22DC0);
      *v19 = v0;
      v19[1] = sub_10084091C;
      v21 = sub_1008449A0;
      v22 = v0 + 56;
      v23 = 0xD00000000000001ALL;
      v24 = 0x800000010156E0C0;
      v25 = v18;
      goto LABEL_20;
    }
  }

  v26 = *(v0 + 104);
LABEL_14:
  v27 = *(v0 + 96) + 1;
  v28 = *(v0 + 144);
  if (*(v0 + 96) == 2)
  {
    swift_willThrow();

    goto LABEL_7;
  }

  *(v0 + 104) = v26;
  *(v0 + 112) = v28;
  *(v0 + 96) = v27;
  v33 = *(v0 + 72);
  v34 = swift_task_alloc();
  *(v0 + 120) = v34;
  *(v34 + 16) = v33;
  *(v34 + 24) = v26;
  v35 = swift_task_alloc();
  *(v0 + 128) = v35;
  v20 = sub_100006370(0, &qword_1019F52C0);
  *v35 = v0;
  v35[1] = sub_100840208;
  v21 = sub_100844880;
  v24 = 0x800000010156E0E0;
  v22 = v0 + 16;
  v23 = 0xD000000000000013;
  v25 = v34;
LABEL_20:

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v22, 0, 0, v23, v24, v21, v25, v20);
}

uint64_t sub_10084091C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100840C8C;
  }

  else
  {

    v2 = sub_100840A38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100840A38()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 56);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    v8 = *(v0 + 144);
    v9 = *(v0 + 104);

    swift_willThrow();

LABEL_7:

    goto LABEL_8;
  }

  v4 = v3;
  v5 = *(v0 + 184);
  (*(v0 + 80))();
  v6 = *(v0 + 144);
  v7 = *(v0 + 104);
  if (v5)
  {

LABEL_8:
    v12 = *(v0 + 8);

    return v12();
  }

  v10 = v2;

  v11 = *(v0 + 96) + 1;
  if (*(v0 + 96) == 2)
  {
    swift_willThrow();

    goto LABEL_7;
  }

  v14 = *(v0 + 144);
  *(v0 + 104) = v4;
  *(v0 + 112) = v14;
  *(v0 + 96) = v11;
  v15 = *(v0 + 72);
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  *(v16 + 16) = v15;
  *(v16 + 24) = v4;
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  v18 = sub_100006370(0, &qword_1019F52C0);
  *v17 = v0;
  v17[1] = sub_100840208;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000013, 0x800000010156E0E0, sub_100844880, v16, v18);
}

uint64_t sub_100840C8C()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100840D38(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100840D58, 0, 0);
}

uint64_t sub_100840D58()
{
  sub_1005B981C(&unk_1019F4D60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101465920;
  v11 = *(v0 + 24);
  *(v1 + 32) = v11;
  v2 = objc_allocWithZone(CKFetchRecordsOperation);
  sub_100006370(0, &qword_1019F6E98);
  v3 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v2 initWithRecordIDs:isa];
  *(v0 + 40) = v5;

  v6 = v5;
  [v6 setQualityOfService:25];
  [v6 setQueuePriority:8];

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  v9 = sub_100006370(0, &unk_101A22DC0);
  *v8 = v0;
  v8[1] = sub_100840F48;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001ALL, 0x800000010156E0C0, sub_1008447C0, v7, v9);
}

uint64_t sub_100840F48()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100841064;
  }

  else
  {

    v2 = sub_10073928C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100841064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008410D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1005B981C(&qword_101A04088);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_10084136C(a3, sub_100844888, v11);
}

uint64_t sub_100841220(void *a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1005B981C(&qword_101A04088);
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v3 = a1;
      sub_1005B981C(&qword_101A04088);
      return CheckedContinuation.resume(returning:)();
    }

    type metadata accessor for CKError(0);
    sub_1009F47A4(_swiftEmptyArrayStorage);
    sub_1008446C4(&qword_1019F3348, 255, type metadata accessor for CKError);
    _BridgedStoredNSError.init(_:userInfo:)();
    sub_1005B981C(&qword_101A04088);
  }

  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10084136C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  sub_100006370(0, &qword_101A04090);
  sub_1005B981C(&unk_1019F4D60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101465920;
  *(v9 + 32) = a1;
  v10 = a1;
  v18.value._rawValue = v9;
  v18.is_nil = 0;
  isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v18, v19).super.super.super.super.isa;
  [(objc_class *)isa setQualityOfService:25];
  [(objc_class *)isa setQueuePriority:8];
  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyDictionarySingleton;

  CKModifyRecordsOperation.perRecordSaveBlock.setter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v8;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = v10;
  v14 = v10;

  v15 = v8;

  CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
  [v4 addOperation:isa];
}

void sub_100841528(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, void *a7)
{
  swift_beginAccess();
  v13 = *(a3 + 16);
  if (*(v13 + 16) && (v14 = sub_1007C8B7C(a4), (v15 & 1) != 0))
  {
    v16 = *(v13 + 56) + 16 * v14;
    v17 = *v16;
    v18 = *(v16 + 8);
    swift_endAccess();
    sub_1006CE2EC(v17, v18);
    a5(v17, v18);
    sub_1006CCCD4(v17, v18);
  }

  else
  {
    swift_endAccess();
    if (a2)
    {
      a5(a1, 1);
    }

    else
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v19 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v21._countAndFlagsBits = CKRecord.recordType.getter();
      String.append(_:)(v21);

      v22._countAndFlagsBits = 0x203A444920;
      v22._object = 0xE500000000000000;
      String.append(_:)(v22);
      v23 = [a7 recordID];
      v24 = [v23 recordName];

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28._countAndFlagsBits = v25;
      v28._object = v27;
      String.append(_:)(v28);

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = 0x203A65707954;
      *(inited + 40) = 0xE600000000000000;
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v29, "Encountered internal CloudKit logic error when saving a record %{public}@", 73, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      type metadata accessor for CKError(0);
      sub_1009F47A4(_swiftEmptyArrayStorage);
      sub_1008446C4(&qword_1019F3348, 255, type metadata accessor for CKError);
      _BridgedStoredNSError.init(_:userInfo:)();
      a5(0x203A65707954, 1);
    }
  }
}

uint64_t sub_10084181C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1005B981C(&qword_101A04080);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyDictionarySingleton;

  CKFetchRecordsOperation.perRecordResultBlock.setter();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a3;
  (*(v9 + 32))(v14 + v13, v11, v8);

  v15 = a3;
  CKFetchRecordsOperation.fetchRecordsResultBlock.setter();
  [a4 addOperation:a2];
}

uint64_t sub_1008419DC(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  if (!*(v7 + 16) || (v8 = sub_1007C8B7C(a4), (v9 & 1) == 0))
  {
    swift_endAccess();
    if ((a2 & 1) == 0)
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v13 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v15 = [a4 recordName];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v16;
      *(inited + 40) = v18;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v13, &_mh_execute_header, v19, "Encountered internal CloudKit logic error when fetching a record ID: %{public}@", 79, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      type metadata accessor for CKError(0);
      sub_1009F47A4(_swiftEmptyArrayStorage);
      sub_1008446C4(&qword_1019F3348, 255, type metadata accessor for CKError);
      _BridgedStoredNSError.init(_:userInfo:)();
      sub_1005B981C(&qword_101A04080);
      return CheckedContinuation.resume(throwing:)();
    }

LABEL_6:
    swift_errorRetain();
    sub_1005B981C(&qword_101A04080);
    return CheckedContinuation.resume(throwing:)();
  }

  v10 = *(v7 + 56) + 16 * v8;
  v11 = *v10;
  v12 = *(v10 + 8);
  swift_endAccess();
  if (v12)
  {
    goto LABEL_6;
  }

  v21 = v11;
  sub_1005B981C(&qword_101A04080);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100841C70(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v5 = sub_1005B981C(&qword_101A04068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyDictionarySingleton;
  v11 = swift_allocObject();
  *(v11 + 16) = _swiftEmptyArrayStorage;

  CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter();

  CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter();
  (*(v6 + 16))(v9, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v12, v9, v5);
  *(v14 + v13) = v10;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v11;

  CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter();
  [v17 addOperation:a2];
}

uint64_t sub_100841EA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.dataSync;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v9, "Fetching deletion", 17, 2, _swiftEmptyArrayStorage);
  swift_beginAccess();
  v10 = *(a4 + 16);
  v11 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100B37DF8(0, v10[2] + 1, 1, v10);
    *(a4 + 16) = v10;
  }

  v14 = v10[2];
  v13 = v10[3];
  if (v14 >= v13 >> 1)
  {
    v10 = sub_100B37DF8((v13 > 1), v14 + 1, 1, v10);
  }

  v10[2] = v14 + 1;
  v15 = &v10[3 * v14];
  v15[4] = v11;
  v15[5] = a2;
  v15[6] = a3;
  *(a4 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_100842004(uint64_t a1, char a2)
{
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.dataSync;
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "fetchRecordZoneChangesResultBlock", 33, 2, _swiftEmptyArrayStorage);
  if (a2)
  {
    v5 = static os_log_type_t.error.getter();
    sub_100005404(v3, &_mh_execute_header, v5, "fetchRecordZoneChangesResultBlock : failure", 43, 2, _swiftEmptyArrayStorage);
    swift_errorRetain();
    sub_1005B981C(&qword_101A04068);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v7 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v7, "fetchRecordZoneChangesResultBlock : success", 43, 2, _swiftEmptyArrayStorage);
    swift_beginAccess();
    swift_beginAccess();

    sub_1005B981C(&qword_101A04068);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1008421B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_1008421D8, v5, 0);
}

uint64_t sub_1008421D8()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = [objc_allocWithZone(CKShare) initWithRecordZoneID:v0[2]];
  v0[8] = v5;
  static CKShare.SystemFieldKey.shareType.getter();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v6;
  sub_100006370(0, &qword_1019F52C0);
  CKRecordKeyValueSetting.subscript.setter();
  v7 = swift_allocObject();
  v0[9] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v2;
  v7[5] = v1;
  v7[6] = v5;
  sub_100024E84(v2, v1);

  v8 = v5;
  sub_10084263C(v8, v4, v3, v2, v1, v8);
  v9 = [*(v0[7] + 112) privateCloudDatabase];
  v0[10] = v9;

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_10084241C;

  return sub_1008400B8(v8, v9, sub_10084485C, v7);
}

uint64_t sub_10084241C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = *(v4 + 56);
    v6 = sub_1008425C8;
  }

  else
  {
    v7 = *(v4 + 56);

    *(v4 + 104) = a1;
    v6 = sub_10084255C;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10084255C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[13];

  return v2(v3);
}

uint64_t sub_1008425C8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10084263C(int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, id a6)
{
  if (a3)
  {

    static CKShare.SystemFieldKey.title.getter();
    v16 = a2;
    v17 = a3;
    sub_100006370(0, &qword_1019F52C0);
    CKRecordKeyValueSetting.subscript.setter();
  }

  if (a5 >> 60 != 15)
  {
    sub_100024E98(a4, a5);
    static CKShare.SystemFieldKey.thumbnailImageData.getter();
    v16 = a4;
    v17 = a5;
    sub_100024E98(a4, a5);
    sub_100006370(0, &qword_1019F52C0);
    CKRecordKeyValueSetting.subscript.setter();
    sub_100025870(a4, a5);
  }

  result = [a6 size];
  if (result > 0x100000)
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v14 = [a6 size];
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = v14;
    v15 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v15, "Guard CKShare size %d <= 1MB", 28, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_10084457C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100842888(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1008428A8, v1, 0);
}

uint64_t sub_1008428A8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100006370(0, &qword_1019F6E98);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = v2;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  isa = CKRecordID.init(recordName:zoneID:)(v7, v6).super.isa;
  v0[4] = isa;
  v0[5] = [*(v1 + 112) privateCloudDatabase];
  sub_1005B981C(&unk_1019F4D60);
  v9 = swift_allocObject();
  v0[6] = v9;
  *(v9 + 16) = xmmword_101465920;
  *(v9 + 32) = isa;
  v10 = isa;
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_100842A14;

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(_swiftEmptyArrayStorage, v9, 0, 1);
}

uint64_t sub_100842A14()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100842BD0;
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 24);

    v4 = sub_100842B6C;
    v3 = v6;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100842B6C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100842BD0()
{
  v1 = v0[5];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100842C40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100842C60, v1, 0);
}

uint64_t sub_100842C60()
{
  v1 = *(v0[3].super.isa + 14);
  v2 = [(objc_class *)v0[2].super.isa ownerName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 0xE000000000000000;
  }

  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_6;
  }

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v17)
  {

LABEL_6:

LABEL_7:
    v7 = &selRef_privateCloudDatabase;
    goto LABEL_8;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_7;
  }

  v7 = &selRef_sharedCloudDatabase;
LABEL_8:
  isa = v0[2].super.isa;
  v0[4].super.isa = [v1 *v7];
  sub_100006370(0, &qword_1019F6E98);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = isa;
  v13._countAndFlagsBits = v9;
  v13._object = v11;
  v14.super.isa = CKRecordID.init(recordName:zoneID:)(v13, v12).super.isa;
  v0[5].super.isa = v14.super.isa;
  v15 = swift_task_alloc();
  v0[6].super.isa = v15;
  *v15 = v0;
  *(v15 + 1) = sub_100842E4C;

  return sub_100840D38(v14.super.isa);
}

uint64_t sub_100842E4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = *(v3 + 24);
    v5 = sub_100843004;
  }

  else
  {
    v6 = *(v3 + 24);

    v5 = sub_100842F74;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100842F74()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {

    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100843004()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10084306C()
{
  *(v1 + 48) = v0;
  sub_1005B981C(&qword_1019FB750);
  *(v1 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100843108, v0, 0);
}

uint64_t sub_100843108()
{
  v1 = v0[6];
  v2 = *(v1 + 120);
  v0[8] = v2;
  if (v2)
  {
    v3 = qword_1019F2270;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.dataSync;
    v5 = static os_log_type_t.default.getter();
    sub_100005404(v4, &_mh_execute_header, v5, "fetchGloballyScopedOwnerName: userRecordID fetch is already in progress...", 74, 2, _swiftEmptyArrayStorage);
    v6 = swift_task_alloc();
    v0[9] = v6;
    v7 = sub_1005B981C(&unk_1019F6B40);
    *v6 = v0;
    v6[1] = sub_1008433BC;
    v8 = v0 + 4;
  }

  else
  {
    v9 = v0[7];
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v12 = sub_1008446C4(&qword_101A04070, v11, type metadata accessor for CRLZoneShareController);
    v13 = swift_allocObject();
    v13[2] = v1;
    v13[3] = v12;
    v13[4] = v1;
    swift_retain_n();
    v2 = sub_100796D78(0, 0, v9, &unk_101480C00, v13);
    v0[11] = v2;
    *(v1 + 120) = v2;

    v14 = swift_task_alloc();
    v0[12] = v14;
    v7 = sub_1005B981C(&unk_1019F6B40);
    *v14 = v0;
    v14[1] = sub_100843560;
    v8 = v0 + 2;
  }

  return Task.value.getter(v8, v2, &type metadata for String, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_1008433BC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_10084371C;
  }

  else
  {
    v4 = sub_1008434E8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008434E8()
{

  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_100843560()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100843788;
  }

  else
  {
    v4 = sub_10084368C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10084368C()
{
  v1 = v0[6];

  v3 = v0[2];
  v2 = v0[3];
  *(v1 + 120) = 0;

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_10084371C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100843788()
{
  v1 = *(v0 + 48);

  *(v1 + 120) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100843804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a1;
  *(v4 + 160) = a4;
  return _swift_task_switch(sub_100843824, a4, 0);
}

uint64_t sub_100843824()
{
  v1 = *(v0[20] + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100843944;
  v2 = swift_continuation_init();
  v0[17] = sub_1005B981C(&qword_101A04078);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = *"";
  v0[12] = sub_100843BE0;
  v0[13] = &unk_101888D48;
  v0[14] = v2;
  [v1 fetchUserRecordIDWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100843944()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_100843B74;
  }

  else
  {
    v4 = sub_100843A64;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100843A64()
{
  v1 = v0[18];
  v2 = [v1 recordName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v6 = v0[19];
  v7 = static OS_os_log.dataSync;
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v7, &_mh_execute_header, v8, "fetchGloballyScopedOwnerName: Successfully fetched userRecordID", 63, 2, _swiftEmptyArrayStorage);
  *v6 = v3;
  v6[1] = v5;
  v9 = v0[1];

  return v9();
}

uint64_t sub_100843B74()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100843BE0(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100020E58((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1005B981C(&unk_1019F6B40);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100843CB8(uint64_t a1)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = v1;
  return _swift_task_switch(sub_100843CD8, v1, 0);
}

uint64_t sub_100843CD8()
{
  v33 = v0;
  v1 = [*(v0 + 248) currentUserParticipant];
  if (v1 && (v2 = v1, v3 = [v1 role], v2, v3 == 1))
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v32 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v32);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 357;
    v17 = v32;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "Can not leave a share if you own it.", 36, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:357 isFatal:0 format:v26 args:v23];

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = *(v0 + 248);
    *(v0 + 264) = [*(*(v0 + 256) + 112) sharedCloudDatabase];
    sub_1005B981C(&unk_1019F4D60);
    v30 = swift_allocObject();
    *(v0 + 272) = v30;
    *(v30 + 16) = xmmword_101465920;
    *(v30 + 32) = [v29 recordID];
    v31 = swift_task_alloc();
    *(v0 + 280) = v31;
    *v31 = v0;
    v31[1] = sub_1008441E4;

    return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(_swiftEmptyArrayStorage, v30, 0, 1);
  }
}

uint64_t sub_1008441E4()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = sub_100844394;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_100844330;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100844330()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100844394()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1008443FC()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_10084443C(void *a1)
{
  result = [a1 size];
  if (result > 0x100000)
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v5 = [a1 size];
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = v5;
    v6 = static os_log_type_t.error.getter();
    sub_100005404(v3, &_mh_execute_header, v6, "Guard CKShare size %d <= 1MB", 28, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_10084457C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10084457C()
{
  result = qword_101A04058;
  if (!qword_101A04058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04058);
  }

  return result;
}

uint64_t sub_100844600(uint64_t a1, char a2)
{
  sub_1005B981C(&qword_101A04068);

  return sub_100842004(a1, a2 & 1);
}

uint64_t sub_1008446C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10084470C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100843804(a1, v4, v5, v6);
}

uint64_t sub_1008447CC(uint64_t a1, char a2)
{
  sub_1005B981C(&qword_101A04080);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_1008419DC(a1, a2 & 1, v5, v6);
}

uint64_t sub_100844888(void *a1, char a2)
{
  sub_1005B981C(&qword_101A04088);

  return sub_100841220(a1, a2 & 1);
}

unint64_t sub_10084494C()
{
  result = qword_101A04098;
  if (!qword_101A04098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04098);
  }

  return result;
}

id sub_1008449A8()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1045220557;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101A040A0 = result;
  return result;
}

double sub_1008449F4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0x3E4CCCCD00000000;
  *(a1 + 280) = 6;
  if (qword_1019F1618 != -1)
  {
    swift_once();
  }

  v2 = qword_101A040A0;
  v3 = type metadata accessor for CRLBasicLayerAnimation();
  v4 = v2;
  UUID.init()();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v7(a1 + *(v3 + 32), 1, 1, v6);
  swift_unknownObjectWeakAssign();
  *(a1 + 8) = xmmword_101480D60;
  *a1 = v4;
  *(a1 + 288) = 0;
  *&result = 131586;
  *(a1 + 296) = 131586;
  return result;
}

id sub_100844B48()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1045220557;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101A040A8 = result;
  return result;
}

double sub_100844B94@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 1065353216;
  *(a1 + 280) = 6;
  if (qword_1019F1620 != -1)
  {
    swift_once();
  }

  v2 = qword_101A040A8;
  v3 = type metadata accessor for CRLBasicLayerAnimation();
  v4 = v2;
  UUID.init()();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v7(a1 + *(v3 + 32), 1, 1, v6);
  swift_unknownObjectWeakAssign();
  *(a1 + 8) = xmmword_101480D70;
  *a1 = v4;
  *(a1 + 288) = 0;
  *&result = 131586;
  *(a1 + 296) = 131586;
  return result;
}

id sub_100844CE8()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1045220557;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101A040B0 = result;
  return result;
}

double sub_100844D34@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 1065353216;
  *(a1 + 280) = 6;
  if (qword_1019F1628 != -1)
  {
    swift_once();
  }

  v2 = qword_101A040B0;
  v3 = type metadata accessor for CRLBasicLayerAnimation();
  v4 = v2;
  UUID.init()();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v7(a1 + *(v3 + 32), 1, 1, v6);
  swift_unknownObjectWeakAssign();
  *(a1 + 8) = xmmword_101480D60;
  *a1 = v4;
  *(a1 + 288) = 0;
  *&result = 131586;
  *(a1 + 296) = 131586;
  return result;
}

id sub_100844E88()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1045220557;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101A040B8 = result;
  return result;
}

double sub_100844ED4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0x3F80000000000000;
  *(a1 + 280) = 6;
  if (qword_1019F1630 != -1)
  {
    swift_once();
  }

  v2 = qword_101A040B8;
  v3 = type metadata accessor for CRLBasicLayerAnimation();
  v4 = v2;
  UUID.init()();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v7(a1 + *(v3 + 32), 1, 1, v6);
  swift_unknownObjectWeakAssign();
  *(a1 + 8) = xmmword_101480D80;
  *a1 = v4;
  *(a1 + 288) = 0;
  *&result = 131586;
  *(a1 + 296) = 131586;
  return result;
}

id sub_100845028()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1045220557;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101A040C0 = result;
  return result;
}

double sub_100845074@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 1045220557;
  *(a1 + 280) = 6;
  if (qword_1019F1638 != -1)
  {
    swift_once();
  }

  v2 = qword_101A040C0;
  v3 = type metadata accessor for CRLBasicLayerAnimation();
  v4 = v2;
  UUID.init()();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v7(a1 + *(v3 + 32), 1, 1, v6);
  swift_unknownObjectWeakAssign();
  *(a1 + 8) = xmmword_101480D90;
  *a1 = v4;
  *(a1 + 288) = 0;
  *&result = 131586;
  *(a1 + 296) = 131586;
  return result;
}

id sub_1008451C8()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1045220557;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101A040C8 = result;
  return result;
}

double sub_100845214@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0x3F80000000000000;
  *(a1 + 280) = 6;
  if (qword_1019F1640 != -1)
  {
    swift_once();
  }

  v2 = qword_101A040C8;
  v3 = type metadata accessor for CRLBasicLayerAnimation();
  v4 = v2;
  UUID.init()();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v7(a1 + *(v3 + 32), 1, 1, v6);
  swift_unknownObjectWeakAssign();
  *(a1 + 8) = xmmword_101480DA0;
  *a1 = v4;
  *(a1 + 288) = 0;
  *&result = 131586;
  *(a1 + 296) = 131586;
  return result;
}

double sub_100845368@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 1065353216;
  *(a1 + 296) = 6;
  v2 = type metadata accessor for CRLSpringLayerAnimation();
  UUID.init()();
  swift_unknownObjectWeakInit();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + *(v2 + 32), 1, 1, v4);
  swift_unknownObjectWeakAssign();
  *(a1 + 32) = 0;
  *a1 = xmmword_101480DB0;
  *(a1 + 16) = xmmword_101480DC0;
  *(a1 + 304) = 0;
  *&result = 131586;
  *(a1 + 312) = 131586;
  return result;
}

id sub_10084547C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1045220557;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101A040D0 = result;
  return result;
}

double sub_1008454C8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0x3E4CCCCD00000000;
  *(a1 + 280) = 6;
  if (qword_1019F1648 != -1)
  {
    swift_once();
  }

  v2 = qword_101A040D0;
  v3 = type metadata accessor for CRLBasicLayerAnimation();
  v4 = v2;
  UUID.init()();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v7(a1 + *(v3 + 32), 1, 1, v6);
  swift_unknownObjectWeakAssign();
  *(a1 + 8) = xmmword_101480DD0;
  *a1 = v4;
  *(a1 + 288) = 0;
  *&result = 131586;
  *(a1 + 296) = 131586;
  return result;
}

id sub_10084561C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1045220557;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101A040D8 = result;
  return result;
}

double sub_100845668@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0x3F80000000000000;
  *(a1 + 280) = 6;
  if (qword_1019F1650 != -1)
  {
    swift_once();
  }

  v2 = qword_101A040D8;
  v3 = type metadata accessor for CRLBasicLayerAnimation();
  v4 = v2;
  UUID.init()();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v7(a1 + *(v3 + 32), 1, 1, v6);
  swift_unknownObjectWeakAssign();
  *(a1 + 8) = xmmword_101480DE0;
  *a1 = v4;
  *(a1 + 288) = 0;
  *&result = 131586;
  *(a1 + 296) = 131586;
  return result;
}

id sub_1008457BC()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1045220557;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101A040E0 = result;
  return result;
}

double sub_100845808@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 1045220557;
  *(a1 + 280) = 6;
  if (qword_1019F1658 != -1)
  {
    swift_once();
  }

  v2 = qword_101A040E0;
  v3 = type metadata accessor for CRLBasicLayerAnimation();
  v4 = v2;
  UUID.init()();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v7(a1 + *(v3 + 32), 1, 1, v6);
  swift_unknownObjectWeakAssign();
  *(a1 + 8) = xmmword_101480DD0;
  *a1 = v4;
  *(a1 + 288) = 0;
  *&result = 131586;
  *(a1 + 296) = 131586;
  return result;
}

id sub_10084595C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1045220557;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101A040E8 = result;
  return result;
}

double sub_1008459A8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 1065353216;
  *(a1 + 280) = 6;
  if (qword_1019F1660 != -1)
  {
    swift_once();
  }

  v2 = qword_101A040E8;
  v3 = type metadata accessor for CRLBasicLayerAnimation();
  v4 = v2;
  UUID.init()();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v7(a1 + *(v3 + 32), 1, 1, v6);
  swift_unknownObjectWeakAssign();
  *(a1 + 8) = xmmword_101480DF0;
  *a1 = v4;
  *(a1 + 288) = 0;
  *&result = 131586;
  *(a1 + 296) = 131586;
  return result;
}

id sub_100845AFC()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1045220557;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101A040F0 = result;
  return result;
}

id sub_100845B48()
{
  result = [objc_opt_self() blackColor];
  qword_101A040F8 = result;
  return result;
}

void sub_100845B84(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v10 - 8);
  v81 = &v68 - v11;
  v12 = v5[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_didCallPerformTransitionAnimation];
  v5[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_didCallPerformTransitionAnimation] = 1;
  if (v12 == 1)
  {
    goto LABEL_63;
  }

  v78 = a3;
  v13 = swift_allocObject();
  v77 = v13;
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = v13 + 16;
  [a1 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (qword_1019F1670 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v23 = qword_101A040F8;
    v24 = type metadata accessor for EncapsulatedColorView();
    v25 = objc_allocWithZone(v24);
    v26 = sub_100849254(v23, v16, v18, v20, v22);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v27 = *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v79 = v26;
    if (v27 >= v28 >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v29 = &v5[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailScreenRect];
    if (v5[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailScreenRect + 32])
    {
      v30 = 0;
    }

    else
    {
      v18 = *(v29 + 2);
      v16 = *(v29 + 3);
      if (qword_1019F14B8 != -1)
      {
        swift_once();
      }

      v31 = [qword_101AD6208 UIColor];
      v32 = objc_allocWithZone(v24);
      v30 = sub_100849254(v31, 0.0, 0.0, v18, v16);
      v33 = v30;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v34 = OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView;
    v35 = *&v5[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView];
    if (v35)
    {
      v36 = v35;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v37 = a2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v75 = [a1 layer];
    if (v30)
    {
      v76 = [v30 layer];
      v38 = *&v5[v34];
      if (v38)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v76 = 0;
      v38 = *&v5[v34];
      if (v38)
      {
LABEL_20:
        v74 = [v38 layer];
        goto LABEL_23;
      }
    }

    v74 = 0;
LABEL_23:
    v73 = [v37 layer];
    if (!v30)
    {
      goto LABEL_26;
    }

    v39 = [*&v30[OBJC_IVAR____TtC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedColorView_colorView] layer];
    if (!v39)
    {
      break;
    }

    v40 = v39;
    [v39 setCornerRadius:6.0];

LABEL_26:
    v41 = *&v5[v34];
    if (v41)
    {
      v42 = *&v41[OBJC_IVAR____TtC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView_imageView];
      v43 = v41;
      v44 = [v42 layer];
      if (!v44)
      {
        goto LABEL_62;
      }

      v45 = v44;
      [v44 setCornerRadius:6.0];
    }

    v46 = v5[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing];
    v14 = *v14;
    v47 = v14 >> 62;
    v71 = v30;
    v72 = v5;
    v80 = a4;
    if (v46 == 1)
    {
      v70 = v37;
      if (v47)
      {
        v48 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v48 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v48)
      {
        a2 = 0;
        a4 = v14 & 0xC000000000000001;
        do
        {
          if (a4)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a2 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v49 = *(v14 + 8 * a2 + 32);
          }

          v50 = v49;
          v5 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
            goto LABEL_56;
          }

          [v49 setHidden:1];

          ++a2;
        }

        while (v5 != v48);
      }

      v37 = v70;
    }

    a4 = v37;
    if (v47)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v51 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v51)
    {
LABEL_53:

      v54 = type metadata accessor for TaskPriority();
      (*(*(v54 - 8) + 56))(v81, 1, 1, v54);
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();
      v72 = v79;
      v70 = v37;

      v56 = v78;
      sub_10002E7A8(v78);
      v57 = v71;
      v79 = v71;
      v69 = a1;
      v58 = v73;
      v59 = v75;
      v60 = v74;
      v75 = v74;
      v61 = v76;
      v73 = v76;
      v62 = v77;

      v63 = static MainActor.shared.getter();
      v64 = swift_allocObject();
      v64[2] = v63;
      v64[3] = &protocol witness table for MainActor;
      v64[4] = v55;
      v64[5] = v56;
      v65 = v69;
      v66 = v70;
      v64[6] = v80;
      v64[7] = v66;
      v64[8] = v58;
      v64[9] = v59;
      v67 = v72;
      v64[10] = v72;
      v64[11] = v60;
      v64[12] = v61;
      v64[13] = v62;
      v64[14] = v57;
      v64[15] = v65;

      sub_10064191C(0, 0, v81, &unk_101480F78, v64);

      return;
    }

    a2 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v52 = *(v14 + 8 * a2 + 32);
      }

      v53 = v52;
      v5 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      [a1 addSubview:v52];

      ++a2;
      if (v5 == v51)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1008463BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 736) = v16;
  *(v8 + 704) = v14;
  *(v8 + 720) = v15;
  *(v8 + 688) = v13;
  *(v8 + 680) = a8;
  *(v8 + 672) = a7;
  *(v8 + 664) = a6;
  *(v8 + 656) = a5;
  *(v8 + 648) = a4;
  type metadata accessor for MainActor();
  *(v8 + 744) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 752) = v10;
  *(v8 + 760) = v9;

  return _swift_task_switch(sub_100846484, v10, v9);
}

uint64_t sub_100846484()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 768) = Strong;
  if (Strong)
  {
    v2 = swift_allocObject();
    *(v0 + 776) = v2;
    *(v2 + 16) = 0;
    v3 = sub_100789704(_swiftEmptyArrayStorage, 0.0);
    *(v0 + 632) = v4;
    *(v0 + 640) = v3;
    v5 = swift_task_alloc();
    *(v0 + 784) = v5;
    *v5 = v0;
    v5[1] = sub_1008465A8;

    return sub_100847BB0();
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1008465A8()
{
  v1 = *v0;

  v2 = *(v1 + 760);
  v3 = *(v1 + 752);

  return _swift_task_switch(sub_1008466C8, v3, v2);
}

uint64_t sub_1008466C8()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 672);

  sub_100846C98(v2, v1, v0 + 184);
  if (*(v0 + 208))
  {
    sub_100050F74((v0 + 184), v0 + 144);
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v5 = sub_100020E58((v0 + 144), v4);
    sub_100789544(v5, (v0 + 632), v4, *(v3 + 24));
    sub_100005070(v0 + 144);
  }

  else
  {
    sub_10000CAAC(v0 + 184, &qword_1019F57A0);
  }

  v6 = *(v0 + 768);
  v7 = *(v0 + 736);
  v8 = *(v0 + 696);
  v9 = *(v0 + 688);
  v10 = *(v0 + 680);
  [v10 sublayerTransform];
  [v10 anchorPoint];
  v12 = v11;
  v14 = v13;
  [v10 frame];
  v16 = v15;
  v18 = v17;
  [v10 setAnchorPoint:{0.0, 0.0}];
  sub_10084714C(v9, v10, 0, v6, v7, (v0 + 224));
  v19 = *(v0 + 248);
  v20 = *(v0 + 256);
  v21 = sub_100020E58((v0 + 224), v19);
  sub_100789544(v21, (v0 + 632), v19, *(v20 + 24));
  sub_100846C98(v8, v6, v0 + 304);
  if (*(v0 + 328))
  {
    sub_100050F74((v0 + 304), v0 + 264);
    v23 = *(v0 + 288);
    v22 = *(v0 + 296);
    v24 = sub_100020E58((v0 + 264), v23);
    sub_100789544(v24, (v0 + 632), v23, *(v22 + 24));
    sub_100005070(v0 + 264);
  }

  else
  {
    sub_10000CAAC(v0 + 304, &qword_1019F57A0);
  }

  v25 = *(v0 + 768);
  v26 = OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView;
  v27 = *(v25 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView);
  if (v27)
  {
    v28 = v27;
    sub_100846C98(v28, v25, v0 + 544);
    if (*(v0 + 568))
    {
      sub_100050F74((v0 + 544), v0 + 504);
      v29 = *(v0 + 528);
      v30 = *(v0 + 536);
      v31 = sub_100020E58((v0 + 504), v29);
      sub_100789544(v31, (v0 + 632), v29, *(v30 + 24));

      sub_100005070(v0 + 504);
    }

    else
    {

      sub_10000CAAC(v0 + 544, &qword_1019F57A0);
    }
  }

  v32 = *(v25 + v26);
  v33 = *(v0 + 768);
  if (v32)
  {
    v34 = *(v0 + 704);
    if (v34)
    {
      v35 = *(v0 + 736);
      v36 = *(v0 + 688);
      v37 = v34;
      [v37 setAnchorPoint:{0.0, 0.0}];
      sub_10084714C(v36, v37, 1, v33, v35, (v0 + 464));
      v39 = *(v0 + 488);
      v38 = *(v0 + 496);
      v40 = sub_100020E58((v0 + 464), v39);
      sub_100789544(v40, (v0 + 632), v39, *(v38 + 24));

      sub_100005070(v0 + 464);
      v33 = *(v0 + 768);
    }
  }

  v41 = *(v0 + 712);
  if (v41)
  {
    v42 = *(v0 + 736);
    v43 = *(v0 + 688);
    v44 = v41;
    [v44 setAnchorPoint:{0.0, 0.0}];
    sub_10084714C(v43, v44, 0, v33, v42, (v0 + 424));
    v46 = *(v0 + 448);
    v45 = *(v0 + 456);
    v47 = sub_100020E58((v0 + 424), v46);
    sub_100789544(v47, (v0 + 632), v46, *(v45 + 24));

    sub_100005070(v0 + 424);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    sub_100846C98(Strong, *(v0 + 768), v0 + 384);
    if (*(v0 + 408))
    {
      sub_100050F74((v0 + 384), v0 + 344);
      v50 = *(v0 + 368);
      v51 = *(v0 + 376);
      v52 = sub_100020E58((v0 + 344), v50);
      sub_100789544(v52, (v0 + 632), v50, *(v51 + 24));

      sub_100005070(v0 + 344);
    }

    else
    {

      sub_10000CAAC(v0 + 384, &qword_1019F57A0);
    }
  }

  v53 = *(v0 + 776);
  v54 = *(v0 + 768);
  v55 = *(v0 + 728);
  v56 = *(v0 + 720);
  v57 = *(v0 + 696);
  v58 = *(v0 + 680);
  v59 = *(v0 + 664);
  v60 = *(v0 + 656);
  *(v53 + 16) = 1;
  v75 = *(v0 + 632);
  v61 = *(v0 + 640);
  v62 = swift_allocObject();
  *(v62 + 16) = v54;
  *(v62 + 24) = v58;
  v63 = *(v0 + 96);
  *(v62 + 96) = *(v0 + 80);
  *(v62 + 112) = v63;
  v64 = *(v0 + 128);
  *(v62 + 128) = *(v0 + 112);
  *(v62 + 144) = v64;
  v65 = *(v0 + 32);
  *(v62 + 32) = *(v0 + 16);
  *(v62 + 48) = v65;
  v66 = *(v0 + 64);
  *(v62 + 64) = *(v0 + 48);
  *(v62 + 80) = v66;
  *(v62 + 160) = v12;
  *(v62 + 168) = v14;
  *(v62 + 176) = v16;
  *(v62 + 184) = v18;
  *(v62 + 192) = v55;
  *(v62 + 200) = v57;
  *(v62 + 208) = v60;
  *(v62 + 216) = v59;
  *(v62 + 224) = v53;

  v67 = v54;
  v68 = v58;
  v69 = v57;
  sub_10002E7A8(v60);
  v70 = v55;

  sub_10097F5F0(0, 1, 1, sub_1008497C0, v56, 0, 0, sub_1008497C8, v61, v62, v75);

  sub_100005070(v0 + 224);
  swift_beginAccess();
  if (*(v53 + 16) == 1)
  {
    v71 = *(v0 + 768);
  }

  else
  {
    v72 = *(v0 + 656);
    v71 = *(v0 + 768);
    if (v72)
    {
      v72(0);
    }
  }

  v73 = *(v0 + 8);

  return v73();
}

void sub_100846C98(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = [a1 layer];
  sub_100006370(0, &qword_1019F54D0);
  if (static NSObject.== infix(_:_:)())
  {
    v6 = *(a2 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing);
    if (*(a2 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView))
    {
      if (*(a2 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing))
      {
        *(a3 + 24) = type metadata accessor for CRLBasicLayerAnimation();
        *(a3 + 32) = sub_10084A414(&qword_101A04260, type metadata accessor for CRLBasicLayerAnimation);
        v7 = sub_10002C58C(a3);
        sub_100844ED4(v7);
      }

      else
      {
        *(a3 + 24) = type metadata accessor for CRLSpringLayerAnimation();
        *(a3 + 32) = sub_10084A414(&qword_101A04268, type metadata accessor for CRLSpringLayerAnimation);
        v24 = sub_10002C58C(a3);
        sub_100845368(v24);
      }
    }

    else
    {
      *(a3 + 24) = type metadata accessor for CRLBasicLayerAnimation();
      *(a3 + 32) = sub_10084A414(&qword_101A04260, type metadata accessor for CRLBasicLayerAnimation);
      v17 = sub_10002C58C(a3);
      if (v6)
      {
        sub_100845668(v17);
      }

      else
      {
        sub_1008459A8(v17);
      }
    }

    goto LABEL_29;
  }

  if (static NSObject.== infix(_:_:)())
  {
    v8 = *(a2 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView);
    v9 = *(a2 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing);
    *(a3 + 24) = type metadata accessor for CRLBasicLayerAnimation();
    *(a3 + 32) = sub_10084A414(&qword_101A04260, type metadata accessor for CRLBasicLayerAnimation);
    v10 = sub_10002C58C(a3);
    if (v8)
    {
      if (v9)
      {
        sub_1008449F4(v10);
      }

      else
      {
        sub_100845074(v10);
      }
    }

    else if (v9)
    {
      sub_1008454C8(v10);
    }

    else
    {
      sub_100845808(v10);
    }

    goto LABEL_29;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v12 = Strong, sub_100006370(0, &qword_1019F6D00), v13 = a1, v14 = static NSObject.== infix(_:_:)(), v12, v13, (v14 & 1) == 0))
  {
    v18 = OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView;
    v19 = *(a2 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView);
    if (!v19 || (sub_100006370(0, &qword_1019F6D00), v20 = a1, v21 = v19, v22 = static NSObject.== infix(_:_:)(), v21, v20, (v22 & 1) == 0))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    if (*(a2 + v18) && *(a2 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing) == 1)
    {
      *(a3 + 24) = type metadata accessor for CRLBasicLayerAnimation();
      *(a3 + 32) = sub_10084A414(&qword_101A04260, type metadata accessor for CRLBasicLayerAnimation);
      v23 = sub_10002C58C(a3);
      sub_100844D34(v23);
      goto LABEL_29;
    }

LABEL_22:

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  if (!*(a2 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView))
  {
    goto LABEL_22;
  }

  v15 = *(a2 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing);
  *(a3 + 24) = type metadata accessor for CRLBasicLayerAnimation();
  *(a3 + 32) = sub_10084A414(&qword_101A04260, type metadata accessor for CRLBasicLayerAnimation);
  v16 = sub_10002C58C(a3);
  if (v15 == 1)
  {
    sub_100844B94(v16);
  }

  else
  {
    sub_100845214(v16);
  }

LABEL_29:
}

uint64_t sub_10084714C@<X0>(id a1@<X1>, void *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  [a1 bounds];
  v14 = v13;
  v16 = v15;
  v17 = v11;
  v18 = v12;
  v19 = (a4 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailScreenRect);
  if (*(a4 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailScreenRect + 32))
  {
    v20 = sub_10011F340(v11, v12, 0.75);
    v22 = v21;
    [a5 bounds];
    v27 = sub_1001206EC(0.0, 0.0, v20, v22, v23, v24, v25, v26);
    v29 = v28;
    v31 = v30;
    v33 = v32;
  }

  else
  {
    v31 = v19[2];
    v33 = v19[3];
    v27 = *v19;
    v29 = v19[1];
    if (a3)
    {
      [a2 frame];
      v27 = sub_1001206EC(0.0, 0.0, v34, v35, v27, v29, v31, v33);
      v29 = v36;
      v31 = v37;
      v33 = v38;
      v39 = sub_100121E58(v37, v38, v17, v18);
      v14 = sub_1001206EC(0.0, 0.0, v39, v40, v14, v16, v17, v18);
      v16 = v41;
      v17 = v42;
      v18 = v43;
    }
  }

  v44 = *(a4 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing);
  if (*(a4 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing))
  {
    v45 = v14;
  }

  else
  {
    v45 = v27;
  }

  if (*(a4 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing))
  {
    v46 = v16;
  }

  else
  {
    v46 = v29;
  }

  if (*(a4 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing))
  {
    v47 = v17;
  }

  else
  {
    v47 = v31;
  }

  if (*(a4 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing))
  {
    v48 = v18;
  }

  else
  {
    v48 = v33;
  }

  if (*(a4 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing))
  {
    v49 = v27;
  }

  else
  {
    v49 = v14;
  }

  if (*(a4 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing))
  {
    v50 = v29;
  }

  else
  {
    v50 = v16;
  }

  if (*(a4 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing))
  {
    v51 = v31;
  }

  else
  {
    v51 = v17;
  }

  if (*(a4 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing))
  {
    v52 = v33;
  }

  else
  {
    v52 = v18;
  }

  sub_1008497E8(a2, 0, &v117, v49, v50, v51, v52, v45, v46, v47, v48);
  if (*(a4 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView))
  {
    v53 = type metadata accessor for CRLSpringLayerAnimation();
    a6[3] = v53;
    a6[4] = sub_10084A414(&qword_101A04268, type metadata accessor for CRLSpringLayerAnimation);
    v54 = sub_10002C58C(a6);
    if (v44)
    {
      v88 = v121;
      v89 = v122;
      v90 = v123;
      v91 = v124;
      v84 = v117;
      v85 = v118;
      v86 = v119;
      v87 = v120;
      v55 = v130;
      v96 = v129;
      v97 = v130;
      v57 = v132;
      v98 = v131;
      v56 = v131;
      v99 = v132;
      v58 = v126;
      v92 = v125;
      v93 = v126;
      v60 = v128;
      v94 = v127;
      v59 = v127;
      v95 = v128;
      *(v54 + 21) = v125;
      *(v54 + 27) = v60;
      *(v54 + 25) = v59;
      *(v54 + 23) = v58;
      v61 = v84;
      v62 = v85;
      v63 = v86;
      *(v54 + 11) = v87;
      *(v54 + 9) = v63;
      *(v54 + 7) = v62;
      *(v54 + 5) = v61;
      v64 = v88;
      v65 = v89;
      v66 = v90;
      *(v54 + 19) = v91;
      *(v54 + 17) = v66;
      *(v54 + 15) = v65;
      *(v54 + 13) = v64;
      v67 = v96;
      *(v54 + 33) = v56;
      *(v54 + 35) = v57;
      *(v54 + 31) = v55;
      *(v54 + 29) = v67;
      *(v54 + 296) = 52;
      UUID.init()();
    }

    else
    {
      v105 = v121;
      v106 = v122;
      v107 = v123;
      v108 = v124;
      v101 = v117;
      v102 = v118;
      v103 = v119;
      v104 = v120;
      v113 = v129;
      v114 = v130;
      v115 = v131;
      v116 = v132;
      v109 = v125;
      v110 = v126;
      v111 = v127;
      v112 = v128;
      v86 = v119;
      v87 = v120;
      v84 = v117;
      v85 = v118;
      v90 = v123;
      v91 = v124;
      v88 = v121;
      v89 = v122;
      v94 = v127;
      v95 = v128;
      v92 = v125;
      v93 = v126;
      v98 = v131;
      v99 = v132;
      v96 = v129;
      v97 = v130;
      v100 = 52;
      sub_1006C121C(&v84, (v54 + 5));
      UUID.init()();
      sub_100687CF4(&v84);
    }

    swift_unknownObjectWeakInit();
    v75 = *(v53 + 28);
    v76 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
    v77 = *(*(v76 - 8) + 56);
    v77(v54 + v75, 1, 1, v76);
    v77(v54 + *(v53 + 32), 1, 1, v76);
    result = swift_unknownObjectWeakAssign();
    v54[4] = 0;
    v73 = xmmword_101480DB0;
    v74 = xmmword_101480DC0;
    goto LABEL_36;
  }

  if (v44)
  {
    v68 = type metadata accessor for CRLSpringLayerAnimation();
    a6[3] = v68;
    a6[4] = sub_10084A414(&qword_101A04268, type metadata accessor for CRLSpringLayerAnimation);
    v54 = sub_10002C58C(a6);
    v105 = v121;
    v106 = v122;
    v107 = v123;
    v108 = v124;
    v101 = v117;
    v102 = v118;
    v103 = v119;
    v104 = v120;
    v113 = v129;
    v114 = v130;
    v115 = v131;
    v116 = v132;
    v109 = v125;
    v110 = v126;
    v111 = v127;
    v112 = v128;
    v86 = v119;
    v87 = v120;
    v84 = v117;
    v85 = v118;
    v90 = v123;
    v91 = v124;
    v88 = v121;
    v89 = v122;
    v94 = v127;
    v95 = v128;
    v92 = v125;
    v93 = v126;
    v98 = v131;
    v99 = v132;
    v96 = v129;
    v97 = v130;
    v100 = 52;
    sub_1006C121C(&v84, (v54 + 5));
    UUID.init()();
    sub_100687CF4(&v84);
    swift_unknownObjectWeakInit();
    v69 = *(v68 + 28);
    v70 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
    v71 = *(*(v70 - 8) + 56);
    v71(v54 + v69, 1, 1, v70);
    v71(v54 + *(v68 + 32), 1, 1, v70);
    result = swift_unknownObjectWeakAssign();
    v54[4] = 0;
    v73 = xmmword_101480E10;
    v74 = xmmword_101480E20;
LABEL_36:
    *v54 = v73;
    *(v54 + 1) = v74;
    v54[38] = 0;
    *(v54 + 78) = 131586;
    return result;
  }

  v78 = type metadata accessor for CRLBasicLayerAnimation();
  a6[3] = v78;
  a6[4] = sub_10084A414(&qword_101A04260, type metadata accessor for CRLBasicLayerAnimation);
  v79 = sub_10002C58C(a6);
  v105 = v121;
  v106 = v122;
  v107 = v123;
  v108 = v124;
  v101 = v117;
  v102 = v118;
  v103 = v119;
  v104 = v120;
  v113 = v129;
  v114 = v130;
  v115 = v131;
  v116 = v132;
  v109 = v125;
  v110 = v126;
  v111 = v127;
  v112 = v128;
  v86 = v119;
  v87 = v120;
  v84 = v117;
  v85 = v118;
  v90 = v123;
  v91 = v124;
  v88 = v121;
  v89 = v122;
  v94 = v127;
  v95 = v128;
  v92 = v125;
  v93 = v126;
  v98 = v131;
  v99 = v132;
  v96 = v129;
  v97 = v130;
  v100 = 52;
  sub_1006C121C(&v84, (v79 + 3));
  if (qword_1019F1668 != -1)
  {
    swift_once();
  }

  v80 = qword_101A040F0;
  UUID.init()();
  sub_100687CF4(&v84);
  swift_unknownObjectWeakInit();
  v81 = *(v78 + 28);
  v82 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v83 = *(*(v82 - 8) + 56);
  v83(v79 + v81, 1, 1, v82);
  v83(v79 + *(v78 + 32), 1, 1, v82);
  result = swift_unknownObjectWeakAssign();
  *(v79 + 1) = xmmword_101480E00;
  *v79 = v80;
  v79[36] = 0;
  *(v79 + 74) = 131586;
  return result;
}

uint64_t sub_100847960(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 setHidden:0];

      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

id sub_100847A68(uint64_t a1, id a2, _OWORD *a3, void *a4, void *a5, uint64_t (*a6)(void), double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12)
{
  v22 = a3[5];
  v28[4] = a3[4];
  v28[5] = v22;
  v23 = a3[7];
  v28[6] = a3[6];
  v28[7] = v23;
  v24 = a3[1];
  v28[0] = *a3;
  v28[1] = v24;
  v25 = a3[3];
  v28[2] = a3[2];
  v28[3] = v25;
  [a2 setTransform:v28];
  [a2 setAnchorPoint:{a7, a8}];
  [a2 frame];
  [a2 setFrame:{a9, a10}];
  v26 = *(a1 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView);
  if (v26)
  {
    [v26 removeFromSuperview];
  }

  if (a4)
  {
    [a4 removeFromSuperview];
  }

  result = [a5 removeFromSuperview];
  if (a6)
  {
    swift_beginAccess();
    return a6(*(a12 + 16));
  }

  return result;
}

uint64_t sub_100847BB0()
{
  v1[17] = v0;
  v1[18] = type metadata accessor for CRLPreviewImages.Item(0);
  v1[19] = swift_task_alloc();
  _s5BoardVMa(0);
  v1[20] = swift_task_alloc();
  sub_1005B981C(&unk_101A15B20);
  v1[21] = swift_task_alloc();
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[26] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[27] = v4;
  v1[28] = v3;

  return _swift_task_switch(sub_100847D44, v4, v3);
}

uint64_t sub_100847D44()
{
  v1 = v0[17];
  v2 = v1 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailScreenRect;
  if ((*(v1 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailScreenRect + 32) & 1) != 0 || (v0[29] = *(v2 + 24), v0[30] = *(v2 + 16), v3 = *(v1 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView), (v0[31] = v3) == 0))
  {

    goto LABEL_6;
  }

  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[21];
  sub_1006BF2A8(v1 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_folderItemViewModel, v6);
  v7 = (*(v5 + 48))(v6, 1, v4);
  v8 = v0[21];
  if (v7 == 1)
  {

    sub_10000CAAC(v8, &unk_101A15B20);
LABEL_6:

    v9 = v0[1];

    return v9();
  }

  v11 = v0[17];
  sub_100065C18(v0[21], v0[25], type metadata accessor for CRLBoardLibraryViewModel.Item);
  v12 = *(v11 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_boardPreviewImageCache);
  v0[32] = v12;
  if (!v12)
  {
    v23 = v0[25];
    v24 = v3;
    sub_10000B984(v23, type metadata accessor for CRLBoardLibraryViewModel.Item);

    goto LABEL_6;
  }

  sub_10006513C(v0[25], v0[24], type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v25 = v0[25];
    v26 = v0[24];
    v27 = v3;
    v28 = v12;
    sub_10000B984(v25, type metadata accessor for CRLBoardLibraryViewModel.Item);

    sub_10000B984(v26, type metadata accessor for CRLBoardLibraryViewModel.Item);
    goto LABEL_6;
  }

  v14 = v0[19];
  v13 = v0[20];
  v15 = v0[17];
  sub_100065C18(v0[24], v13, _s5BoardVMa);
  v16 = objc_opt_self();
  v17 = v3;
  v12;
  [v16 crl_screenScale];
  v19 = v18;
  sub_10006513C(v13, v14, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  if (*(v15 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isGridLayout))
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = swift_task_alloc();
  v0[33] = v21;
  *v21 = v0;
  v21[1] = sub_1008480C4;
  v22 = v0[19];

  return sub_1006DB8B4(v22, v20, 0, 1, v19);
}

uint64_t sub_1008480C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  *(*v2 + 272) = v1;

  sub_10000B984(v5, type metadata accessor for CRLPreviewImages.Item);
  if (v1)
  {
    v6 = v4[27];
    v7 = v4[28];
    v8 = sub_100848504;
  }

  else
  {
    v4[35] = a1;
    v6 = v4[27];
    v7 = v4[28];
    v8 = sub_100848224;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100848224()
{
  v1 = *(v0 + 35);

  if (v1)
  {
    v2 = *(v0 + 31);
    v4 = v0[29];
    v3 = v0[30];
    v5 = v1;
    v6 = [v5 UIImage];
    v7 = OBJC_IVAR____TtC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView_imageView;
    [*&v2[OBJC_IVAR____TtC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView_imageView] setImage:v6];
    v8 = *&v2[v7];
    [v2 bounds];
    [v8 setFrame:?];

    [v5 size];
    v10 = v9;
    v12 = v11;

    v13 = sub_100121E58(v10, v12, v3, v4);
    v15 = v14;
  }

  else
  {
    v15 = v0[29];
    v13 = v0[30];
  }

  v16 = *(v0 + 31);
  v17 = *(v0 + 32);
  v18 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10146CE00;
  v20 = v16;
  v21 = [v20 widthAnchor];
  v22 = [v21 constraintEqualToConstant:v13];

  *(v19 + 32) = v22;
  v23 = [v20 heightAnchor];

  v24 = [v23 constraintEqualToConstant:v15];
  *(v19 + 40) = v24;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];

  [v20 layoutIfNeeded];
  v26 = *(v0 + 25);
  sub_10000B984(*(v0 + 20), _s5BoardVMa);
  sub_10000B984(v26, type metadata accessor for CRLBoardLibraryViewModel.Item);

  v27 = *(v0 + 1);

  return v27();
}

uint64_t sub_100848504()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[31];
  v15 = v0[32];
  v3 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v5 = sub_100F8903C();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v0[16] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v9 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v11, "Transition animation could not resolve thumbnail for board %@ (error: %@)", 73, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v12 = v0[25];
  sub_10000B984(v0[20], _s5BoardVMa);
  sub_10000B984(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);

  v13 = v0[1];

  return v13();
}

void sub_100848838()
{
  sub_1000519AC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100848900(void *a1)
{
  if (![a1 isAnimated])
  {
    return;
  }

  v3 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v5)
    {
      v6 = v5;
      if (*(v1 + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing))
      {
        v7 = [v5 view];
        if (v7)
        {
          v8 = v7;
          v9 = [v4 view];
          if (!v9)
          {
            __break(1u);
            return;
          }

          goto LABEL_15;
        }

        __break(1u);
      }

      else
      {
        v11 = [v4 view];
        if (v11)
        {
          v8 = v11;
          v9 = [v6 view];
          if (v9)
          {
LABEL_15:
            v14 = v9;
            [v9 bounds];
            [v8 setFrame:?];
            v12 = [a1 containerView];
            v13 = swift_allocObject();
            *(v13 + 16) = a1;
            swift_unknownObjectRetain();
            sub_100845B84(v12, v8, sub_100849648, v13);

            return;
          }

LABEL_20:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  v10 = [a1 transitionWasCancelled] ^ 1;

  [a1 completeTransition:v10];
}

id sub_100848C2C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_100848CCC(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(type metadata accessor for EncapsulatedImageView.NoIntrinsicContentSizeImageView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView_imageView;
  *&v4[OBJC_IVAR____TtC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView_imageView] = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v4[v10] setContentMode:1];
  v11 = [*&v4[v10] layer];
  if (qword_1019F14B8 != -1)
  {
    swift_once();
  }

  v12 = [qword_101AD6208 CGColor];
  [v11 setBackgroundColor:v12];

  [v11 setMasksToBounds:1];
  v19.receiver = v4;
  v19.super_class = type metadata accessor for EncapsulatedImageView();
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setUserInteractionEnabled:0];
  v14 = [v13 layer];
  [v14 setMasksToBounds:0];

  v15 = [v13 layer];
  v16 = [objc_opt_self() clearColor];
  v17 = [v16 CGColor];

  [v15 setBackgroundColor:v17];
  [v13 addSubview:*&v13[OBJC_IVAR____TtC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView_imageView]];

  return v13;
}

char *sub_100849254(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedColorView_color] = a1;
  v11 = objc_allocWithZone(UIView);
  v12 = a1;
  v13 = [v11 initWithFrame:{0.0, 0.0, a4, a5}];
  *&v5[OBJC_IVAR____TtC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedColorView_colorView] = v13;
  v23.receiver = v5;
  v23.super_class = type metadata accessor for EncapsulatedColorView();
  v14 = objc_msgSendSuper2(&v23, "initWithFrame:", a2, a3, a4, a5);
  v15 = OBJC_IVAR____TtC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedColorView_colorView;
  v16 = *&v14[OBJC_IVAR____TtC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedColorView_colorView];
  v17 = v14;
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  result = [*&v14[v15] layer];
  if (result)
  {
    v19 = result;
    v20 = [*&v17[OBJC_IVAR____TtC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedColorView_color] CGColor];
    [v19 setBackgroundColor:v20];

    v21 = v17;
    [v21 setUserInteractionEnabled:0];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [v21 layer];

    [v22 setMasksToBounds:0];
    [v21 addSubview:*&v14[v15]];

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100849648(char a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    v3 = [*(v1 + 16) transitionWasCancelled] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return [v2 completeTransition:v3];
}

uint64_t sub_1008496A4(uint64_t a1)
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
  v11[1] = sub_10002D3D4;

  return sub_1008463BC(a1, v4, v5, v6, v7, v8, v9, v10);
}

__n128 sub_1008497E8@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, double a6@<D2>, double a7@<D3>, CGFloat a8@<D4>, CGFloat a9@<D5>, double a10@<D6>, double a11@<D7>)
{
  v13 = a1;
  [a1 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v13 anchorPoint];
  v23 = v22;
  v25 = v24;
  v124.origin.x = v15;
  v124.origin.y = v17;
  v124.size.width = v19;
  v124.size.height = v21;
  v119 = v13;
  if (CGRectGetWidth(v124) <= 0.0 || (v125.origin.x = v15, v125.origin.y = v17, v125.size.width = v19, v125.size.height = v21, CGRectGetHeight(v125) <= 0.0))
  {
    v104 = objc_opt_self();
    LODWORD(v26) = [v104 _atomicIncrementAssertCount];
    *&v123.m11 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v123);
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    v29 = [v28 lastPathComponent];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_4;
  }

LABEL_5:
  sub_1005B981C(&qword_1019F54E0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10146BDE0;
  v49 = objc_opt_self();
  v50 = [v49 valueWithCGPoint:{0.0, 0.0}];
  v51 = sub_100006370(0, &qword_101A04270);
  *(v48 + 56) = v51;
  v52 = sub_10000FE24(&qword_1019FB608, &qword_101A04270);
  *(v48 + 32) = v50;
  v53 = v48 + 32;
  *(v48 + 64) = v52;
  [v13 anchorPoint];
  v54 = [v49 valueWithCGPoint:?];
  *(v48 + 96) = v51;
  *(v48 + 104) = v52;
  *(v48 + 72) = v54;
  if (v23 != 0.0 || v25 != 0.0)
  {
    v102 = objc_opt_self();
    v55 = [v102 _atomicIncrementAssertCount];
    *&v123.m11 = [objc_allocWithZone(NSString) init];
    sub_100604538(v48, &v123);
    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    v58 = [v57 lastPathComponent];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v105 = static OS_os_log.crlAssert;
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_10146CA70;
    *(v62 + 56) = &type metadata for Int32;
    *(v62 + 64) = &protocol witness table for Int32;
    *(v62 + 32) = v55;
    v63 = sub_100006370(0, &qword_1019F4D30);
    *(v62 + 96) = v63;
    v64 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(v62 + 104) = v64;
    *(v62 + 72) = v56;
    *(v62 + 136) = &type metadata for String;
    v65 = sub_1000053B0();
    *(v62 + 112) = v59;
    *(v62 + 120) = v61;
    *(v62 + 176) = &type metadata for UInt;
    *(v62 + 144) = v65;
    *(v62 + 152) = 234;
    v66 = v56;
    m11 = v123.m11;
    *(v62 + 216) = v63;
    *(v62 + 224) = v64;
    *(v62 + 184) = &protocol witness table for UInt;
    *(v62 + 192) = m11;
    v68 = v66;
    v69 = *&m11;
    v70 = static os_log_type_t.error.getter();
    sub_100005404(v105, &_mh_execute_header, v70, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v62);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v71 = static os_log_type_t.error.getter();
    sub_100005404(v105, &_mh_execute_header, v71, "The view's anchor point is expected to be %@, but it's actually %@. Animations may appear incorrect.", 100, 2, v48);

    type metadata accessor for __VaListBuilder();
    v72 = swift_allocObject();
    v72[2] = 8;
    v72[3] = 0;
    v27 = v72 + 3;
    v72[4] = 0;
    v72[5] = 0;
    v104 = v48;
    v73 = *(v48 + 16);
    if (!v73)
    {
LABEL_36:
      v88 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v89 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v90 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v91 = String._bridgeToObjectiveC()();

      [v102 handleFailureInFunction:v89 file:v90 lineNumber:234 isFatal:0 format:v91 args:v88];

      v13 = v119;
      if (a2)
      {
        goto LABEL_8;
      }

LABEL_37:
      [v13 transform];
      CATransform3DTranslate(&v123, &v122, v19 * (v23 + -0.5), v21 * (v25 + -0.5), 0.0);
      goto LABEL_38;
    }

    v30 = 0;
    while (1)
    {
      v74 = (v53 + 40 * v30);
      v32 = v74[4];
      LODWORD(v26) = sub_100020E58(v74, v74[3]);
      v75 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v76 = *v27;
      v77 = *(v75 + 16);
      v78 = __OFADD__(*v27, v77);
      v79 = *v27 + v77;
      if (v78)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        swift_once();
LABEL_4:
        v33 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_10146CA70;
        *(v34 + 56) = &type metadata for Int32;
        *(v34 + 64) = &protocol witness table for Int32;
        *(v34 + 32) = v26;
        v35 = sub_100006370(0, &qword_1019F4D30);
        *(v34 + 96) = v35;
        v36 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
        *(v34 + 104) = v36;
        *(v34 + 72) = v27;
        *(v34 + 136) = &type metadata for String;
        v37 = sub_1000053B0();
        *(v34 + 112) = v30;
        *(v34 + 120) = v32;
        *(v34 + 176) = &type metadata for UInt;
        *(v34 + 144) = v37;
        *(v34 + 152) = 233;
        v38 = v123.m11;
        *(v34 + 216) = v35;
        *(v34 + 224) = v36;
        *(v34 + 184) = &protocol witness table for UInt;
        *(v34 + 192) = v38;
        v39 = v27;
        v40 = *&v38;
        v41 = static os_log_type_t.error.getter();
        sub_100005404(v33, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v34);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v42 = static os_log_type_t.error.getter();
        sub_100005404(v33, &_mh_execute_header, v42, "The layer's rect must have a size greater than 0.", 49, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v43 = swift_allocObject();
        v43[2] = 8;
        v43[3] = 0;
        v43[4] = 0;
        v43[5] = 0;
        v44 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v45 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v46 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v47 = String._bridgeToObjectiveC()();

        [v104 handleFailureInFunction:v45 file:v46 lineNumber:233 isFatal:0 format:v47 args:v44];

        v13 = v119;
        goto LABEL_5;
      }

      v26 = v72[4];
      if (v26 >= v79)
      {
        goto LABEL_28;
      }

      if (v26 + 0x4000000000000000 < 0)
      {
        goto LABEL_41;
      }

      v32 = v72[5];
      if (2 * v26 > v79)
      {
        v79 = 2 * v26;
      }

      v72[4] = v79;
      if ((v79 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_42;
      }

      v80 = v75;
      v81 = swift_slowAlloc();
      v82 = v81;
      v72[5] = v81;
      if (v32)
      {
        break;
      }

      v75 = v80;
      if (!v82)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_29:
      v84 = *(v75 + 16);
      if (v84)
      {
        v85 = (v75 + 32);
        v86 = *v27;
        while (1)
        {
          v87 = *v85++;
          *&v82[8 * v86] = v87;
          v86 = *v27 + 1;
          if (__OFADD__(*v27, 1))
          {
            break;
          }

          *v27 = v86;
          if (!--v84)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_13:

      if (++v30 == v73)
      {
        goto LABEL_36;
      }
    }

    if (v81 != v32 || v81 >= &v32[8 * v76])
    {
      memmove(v81, v32, 8 * v76);
    }

    LODWORD(v26) = v72;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v75 = v80;
LABEL_28:
    v82 = v72[5];
    if (!v82)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_8:
  [v13 sublayerTransform];
LABEL_38:
  v122 = v123;
  CATransform3DTranslate(&v121, &v122, a4, a5, 0.0);
  CATransform3DScale(&v122, &v121, a6 / v19, a7 / v21, 1.0);
  v120 = *&v122.m11;
  *v106 = *&v122.m23;
  v108 = *&v122.m13;
  v110 = *&v122.m31;
  v112 = *&v122.m21;
  v92 = a10 / v19;
  v114 = *&v122.m41;
  v101 = *&v122.m43;
  *v103 = *&v122.m33;
  v122 = v123;
  CATransform3DTranslate(&v121, &v122, a8, a9, 0.0);
  CATransform3DScale(&v122, &v121, v92, a11 / v21, 1.0);
  result = *&v122.m11;
  v94 = *&v122.m13;
  v95 = *&v122.m21;
  v96 = *&v122.m23;
  v97 = *&v122.m31;
  v98 = *&v122.m33;
  v99 = *&v122.m41;
  v100 = *&v122.m43;
  *a3 = v120;
  *(a3 + 16) = v108;
  *(a3 + 32) = v112;
  *(a3 + 48) = *v106;
  *(a3 + 64) = v110;
  *(a3 + 80) = *v103;
  *(a3 + 96) = v114;
  *(a3 + 112) = v101;
  *(a3 + 128) = result;
  *(a3 + 144) = v94;
  *(a3 + 160) = v95;
  *(a3 + 176) = v96;
  *(a3 + 192) = v97;
  *(a3 + 208) = v98;
  *(a3 + 224) = v99;
  *(a3 + 240) = v100;
  return result;
}

uint64_t sub_10084A414(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10084A45C(char a1)
{
  *&v1[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listFontColor] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___fontName] = xmmword_101463530;
  v2 = &v1[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___writingDirection];
  *v2 = 0;
  v2[8] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelGeometries] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelIndents] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelNumbers] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelTieredNumbers] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelStrings] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelTypes] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listTextIndents] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___shadow] = 1;
  v1[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CRLWPListStyle();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_10084A574(uint64_t a1, char a2, void *a3)
{
  v5 = objc_allocWithZone(type metadata accessor for CRLWPListStyle());
  result = sub_10084A45C(a2);
  *a3 = result;
  return result;
}

id sub_10084A5F0(uint64_t a1)
{
  if (a1 > 55)
  {
    if (a1 <= 58)
    {
      if (a1 != 56)
      {
        if (a1 != 57)
        {
          v1 = sub_10084A9F4();
          isa = sub_100BE5C90(v1);
LABEL_33:
          v7 = isa;
LABEL_34:

          return v7;
        }

        v10 = sub_10084A9D4();
LABEL_27:
        isa = sub_10084B700(v10);
        goto LABEL_33;
      }

      v6 = sub_10084A98C();
LABEL_30:
      isa = sub_100BE5B8C(v6);
      goto LABEL_33;
    }

    if (a1 != 59)
    {
      if (a1 == 60)
      {
        v10 = sub_10084AB1C();
        goto LABEL_27;
      }

      if (a1 == 61)
      {
        v6 = sub_10084ABC4();
        goto LABEL_30;
      }

LABEL_36:
      v7 = sub_100BE5D8C();
      swift_unknownObjectRetain();
      return v7;
    }

    sub_10084AA74();
LABEL_32:
    isa = Array._bridgeToObjectiveC()().super.isa;
    goto LABEL_33;
  }

  if (a1 <= 27)
  {
    if (a1 == 9)
    {
      sub_10084B6D0();
      if (!v8)
      {
        return 0;
      }

      v7 = String._bridgeToObjectiveC()();
      goto LABEL_34;
    }

    if (a1 != 18)
    {
      goto LABEL_36;
    }

    v7 = sub_10084B7FC();
    if (!v7)
    {
      return v7;
    }

LABEL_24:
    v9 = v7;
    return v7;
  }

  if (a1 == 28)
  {
    return [objc_allocWithZone(NSNumber) initWithInteger:sub_10084A870()];
  }

  if (a1 != 53)
  {
    if (a1 != 54)
    {
      goto LABEL_36;
    }

    v3 = sub_10084A8A0();
    v4 = v3;
    if (v3 >> 62)
    {
      _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      if (!swift_dynamicCastMetatype())
      {
        v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
          v13 = (v5 + 32);
          do
          {
            if (!*v13)
            {
              break;
            }

            ++v13;
            --v12;
          }

          while (v12);
        }
      }
    }

    goto LABEL_32;
  }

  v7 = sub_10084B6B0();
  if (v7)
  {
    goto LABEL_24;
  }

  return v7;
}

uint64_t sub_10084A870()
{
  v1 = (v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___writingDirection);
  if (*(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___writingDirection + 8) != 1)
  {
    return *v1;
  }

  result = -1;
  *v1 = -1;
  v1[8] = 0;
  return result;
}

uint64_t sub_10084A8A0()
{
  v1 = OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelGeometries;
  if (*(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelGeometries))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelGeometries);
  }

  else
  {
    v3 = [objc_allocWithZone(CRLWPListLabelGeometry) init];
    sub_100006370(0, &qword_101A04300);
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v4 = (v2 & 0xFFFFFFFFFFFFFF8);
    v4[2] = 9;
    v4[4] = v3;
    v4[5] = v3;
    v4[6] = v3;
    v4[7] = v3;
    v4[8] = v3;
    v4[9] = v3;
    v4[10] = v3;
    v4[11] = v3;
    v4[12] = v3;
    *(v0 + v1) = v2;
    v5 = v3;
  }

  return v2;
}

_UNKNOWN **sub_10084A98C()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelIndents))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelIndents);
  }

  else
  {
    v1 = &off_101874C70;
    *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelIndents) = &off_101874C70;
  }

  return v1;
}

uint64_t sub_10084A9F4()
{
  v1 = OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelTieredNumbers;
  if (*(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelTieredNumbers))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelTieredNumbers);
  }

  else
  {
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v2 + 16) = 9;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10084AA74()
{
  v1 = OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelStrings;
  if (*(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelStrings))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelStrings);
  }

  else
  {
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v2[2] = 9;
    v2[4] = 10649826;
    v2[5] = 0xA300000000000000;
    v2[6] = 10649826;
    v2[7] = 0xA300000000000000;
    v2[8] = 10649826;
    v2[9] = 0xA300000000000000;
    v2[10] = 10649826;
    v2[11] = 0xA300000000000000;
    v2[12] = 10649826;
    v2[13] = 0xA300000000000000;
    v2[14] = 10649826;
    v2[15] = 0xA300000000000000;
    v2[16] = 10649826;
    v2[17] = 0xA300000000000000;
    v2[18] = 10649826;
    v2[19] = 0xA300000000000000;
    v2[20] = 10649826;
    v2[21] = 0xA300000000000000;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10084AB3C(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    a2();
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = 9;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0;
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_10084ABC4()
{
  v1 = OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listTextIndents;
  if (*(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listTextIndents))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listTextIndents);
  }

  else
  {
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v2 + 16) = 9;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

BOOL sub_10084ACB4(uint64_t a1)
{
  sub_100601584(a1, v6);
  if (v7)
  {
    type metadata accessor for CRLWPListStyle();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType);
      v3 = v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType];

      return v2 == v3;
    }
  }

  else
  {
    sub_1005E09AC(v6);
  }

  return 0;
}

void sub_10084ADE8()
{
  sub_1000505D0(*(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listFontColor));
  sub_10084B69C(*(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___fontName), *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___fontName + 8));

  v1 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___shadow);

  sub_1000505D0(v1);
}

id sub_10084AEAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPListStyle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

float *sub_10084B164(float a1, float a2)
{
  sub_100776624(0, 9, 0);
  v4 = 0;
  result = _swiftEmptyArrayStorage;
  v6 = _swiftEmptyArrayStorage[2];
  do
  {
    v8 = result;
    v7 = *(result + 3);
    if (v6 >= v7 >> 1)
    {
      sub_100776624((v7 > 1), v6 + 1, 1);
      result = v8;
    }

    *(result + 2) = v6 + 1;
    result[v6++ + 8] = (v4++ * a1) * a2;
  }

  while (v4 != 9);
  return result;
}

char *sub_10084B230(void *a1, float a2)
{
  v4 = objc_allocWithZone(type metadata accessor for CRLWPListStyle());
  v5 = sub_10084A45C(0);
  type metadata accessor for CRLWPListLabelType(0);
  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v6 + 16) = 9;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0;
  *&v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelTypes] = v6;

  type metadata accessor for CRLWPListNumberType(0);
  v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v7 + 16) = 9;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0;
  *&v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelNumbers] = v7;

  *&v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelIndents] = sub_10084B164(1.5, a2);

  v8.i32[1] = 0;
  *v8.i32 = a2 * 0.0;
  v14 = v8;
  v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v9 + 16) = 9;
  v10 = vdupq_lane_s32(v14, 0);
  *(v9 + 32) = v10;
  *(v9 + 48) = v10;
  *(v9 + 64) = v14.i32[0];
  *&v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listTextIndents] = v9;

  v11 = *&v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listFontColor];
  *&v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listFontColor] = a1;
  v12 = a1;
  sub_1000505D0(v11);
  return v5;
}

char *sub_10084B394(void *a1, float a2)
{
  v4 = objc_allocWithZone(type metadata accessor for CRLWPListStyle());
  v5 = sub_10084A45C(1);
  type metadata accessor for CRLWPListLabelType(0);
  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v7 = vdupq_n_s64(3uLL);
  *(v6 + 16) = 9;
  *(v6 + 32) = v7;
  *(v6 + 48) = v7;
  *(v6 + 64) = v7;
  *(v6 + 80) = v7;
  *(v6 + 96) = 3;
  *&v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelTypes] = v6;

  type metadata accessor for CRLWPListNumberType(0);
  v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v8 + 16) = 9;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  *&v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelNumbers] = v8;

  *&v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelIndents] = sub_10084B164(1.5, a2);

  *v9.i32 = a2 * 1.5;
  v15 = v9;
  v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v10 + 16) = 9;
  v11 = vdupq_lane_s32(v15, 0);
  *(v10 + 32) = v11;
  *(v10 + 48) = v11;
  *(v10 + 64) = v15.i32[0];
  *&v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listTextIndents] = v10;

  v12 = *&v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listFontColor];
  *&v5[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listFontColor] = a1;
  v13 = a1;
  sub_1000505D0(v12);
  return v5;
}

char *sub_10084B520(void *a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = objc_allocWithZone(type metadata accessor for CRLWPListStyle());
  v10 = sub_10084A45C(a2);
  type metadata accessor for CRLWPListLabelType(0);
  v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v12 = vdupq_n_s64(2uLL);
  *(v11 + 16) = 9;
  *(v11 + 32) = v12;
  *(v11 + 48) = v12;
  *(v11 + 64) = v12;
  *(v11 + 80) = v12;
  *(v11 + 96) = 2;
  *&v10[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelTypes] = v11;

  v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v13[2] = 9;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a3;
  v13[9] = a4;
  v13[10] = a3;
  v13[11] = a4;
  v13[12] = a3;
  v13[13] = a4;
  v13[14] = a3;
  v13[15] = a4;
  v13[16] = a3;
  v13[17] = a4;
  v13[18] = a3;
  v13[19] = a4;
  v13[20] = a3;
  v13[21] = a4;
  *&v10[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelStrings] = v13;

  *&v10[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listLabelIndents] = sub_10084B164(1.5, *&a5);

  v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v14 + 16) = 9;
  v15 = vdupq_lane_s32(*&a5, 0);
  *(v14 + 32) = v15;
  *(v14 + 48) = v15;
  *(v14 + 64) = LODWORD(a5);
  *&v10[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listTextIndents] = v14;

  v16 = *&v10[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listFontColor];
  *&v10[OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listFontColor] = a1;
  v17 = a1;
  sub_1000505D0(v16);
  return v10;
}

uint64_t sub_10084B69C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10084B6B0()
{
  result = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listFontColor);
  if (result == 1)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___listFontColor) = 0;
  }

  return result;
}

uint64_t sub_10084B6D0()
{
  v1 = (v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___fontName);
  if (*(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___fontName + 8) != 1)
  {
    return *v1;
  }

  result = 0;
  *v1 = 0;
  v1[1] = 0;
  return result;
}

Class sub_10084B700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v4];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  sub_100006370(0, &qword_1019FF3E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  return isa;
}

uint64_t sub_10084B7FC()
{
  result = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___shadow);
  if (result == 1)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPListStyle____lazy_storage___shadow) = 0;
  }

  return result;
}

uint64_t sub_10084B81C(void *a1)
{
  a1[1] = sub_1000325B8(&qword_1019F4758, type metadata accessor for CRLBoardIdentifier);
  a1[2] = sub_1000325B8(&qword_1019F4780, type metadata accessor for CRLBoardIdentifier);
  result = sub_1000325B8(&qword_101A01D20, type metadata accessor for CRLBoardIdentifier);
  a1[3] = result;
  return result;
}

uint64_t sub_10084B8C8()
{
  v1 = (v0 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v3 = *v1;
  v2 = v1[1];
  if (*v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2 == 0xE000000000000000;
  }

  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v2 = 0x800000010155E590;
    v3 = 0xD000000000000012;
  }

  else
  {
  }

  v9 = UUID.uuidString.getter();
  v5._countAndFlagsBits = 15418;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v3;
  v6._object = v2;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9;
}

uint64_t sub_10084B99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for UUID();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for CRLProto_Data(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v30);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for CRLProto_BoardIdentifier(0);
  v19 = a1;
  sub_10084DD24(a1 + *(v18 + 20), v8);
  v20 = *(v10 + 48);
  if (v20(v8, 1, v9) == 1)
  {
    *v12 = xmmword_10146F370;
    UnknownStorage.init()();
    if (v20(v8, 1, v9) != 1)
    {
      sub_10000CAAC(v8, &qword_1019F67C0);
    }
  }

  else
  {
    sub_1000461D0(v8, v12, type metadata accessor for CRLProto_Data);
  }

  v22 = *v12;
  v21 = v12[1];
  sub_100024E98(*v12, v21);
  sub_1000460A0(v12, type metadata accessor for CRLProto_Data);
  v23 = v34;
  sub_100024EEC(v5, v22, v21);
  if (v23)
  {
    sub_10002640C(v22, v21);
    return sub_1000460A0(v19, type metadata accessor for CRLProto_BoardIdentifier);
  }

  else
  {
    v27 = v24;
    v28 = v25;
    sub_1000460A0(v19, type metadata accessor for CRLProto_BoardIdentifier);
    sub_10002640C(v22, v21);
    (*(v31 + 32))(v14, v5, v32);
    v29 = &v14[*(v30 + 20)];
    *v29 = v27;
    *(v29 + 1) = v28;
    sub_1000461D0(v14, v17, type metadata accessor for CRLBoardIdentifierStorage);
    return sub_1000461D0(v17, v33, type metadata accessor for CRLBoardIdentifierStorage);
  }
}