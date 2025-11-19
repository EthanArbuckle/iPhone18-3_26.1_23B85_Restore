uint64_t sub_10123993C(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  type metadata accessor for CRLBoardIdentifier(0);
  v3[44] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();

  return _swift_task_switch(sub_101239A2C, v2, 0);
}

uint64_t sub_101239A2C()
{
  v68 = v0;
  v1 = v0[42];
  v2 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v4 = *v2;
  v3 = v2[1];
  if (*v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 == 0xE000000000000000;
  }

  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v55 = v0[46];
    v54 = v0[47];
    v57 = v0[44];
    v56 = v0[45];
    v58 = v0[41];
    sub_1005F1308(v0[42], v57);
    (*(v55 + 16))(v54, v57, v56);

    sub_10084BF50(v54, v4, v3, v58);
    sub_100086F34(v57);
LABEL_43:

    v61 = v0[1];

    return v61();
  }

  v6 = v0[43];
  v7 = *(v6 + 136);
  if (v7)
  {
    v8 = *(v6 + 128);
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v0[40] = sub_1005B981C(&unk_1019F6C70);
    swift_bridgeObjectRetain_n();
    sub_1005B981C(&qword_101A2E428);
    String.init<A>(describing:)();
    v13 = String._bridgeToObjectiveC()();

    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 56) = v14;
    v15 = v11;
    v16 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 32) = v13;
    v66 = inited + 32;
    *(inited + 64) = v16;
    if (v8 == v9 && v7 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v63 = v8;
      v64 = v7;
      v65 = v0;
      v62 = objc_opt_self();
      v17 = [v62 _atomicIncrementAssertCount];
      v67 = [objc_allocWithZone(NSString) init];
      sub_100604538(inited, &v67);
      StaticString.description.getter();
      v18 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v19 = inited;
      v20 = String._bridgeToObjectiveC()();

      v21 = [v20 lastPathComponent];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v25 = static OS_os_log.crlAssert;
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_10146CA70;
        *(v26 + 56) = &type metadata for Int32;
        *(v26 + 64) = &protocol witness table for Int32;
        *(v26 + 32) = v17;
        *(v26 + 96) = v14;
        *(v26 + 104) = v16;
        *(v26 + 72) = v18;
        *(v26 + 136) = &type metadata for String;
        v27 = sub_1000053B0();
        *(v26 + 112) = v22;
        *(v26 + 120) = v24;
        *(v26 + 176) = &type metadata for UInt;
        *(v26 + 184) = &protocol witness table for UInt;
        *(v26 + 144) = v27;
        *(v26 + 152) = 79;
        v28 = v67;
        *(v26 + 216) = v14;
        *(v26 + 224) = v16;
        *(v26 + 192) = v28;
        v29 = v18;
        v30 = v28;
        v31 = static os_log_type_t.error.getter();
        sub_100005404(v25, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v26);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v32 = static os_log_type_t.error.getter();
        sub_100005404(v25, &_mh_execute_header, v32, "expected inequality between two values of type %{public}@", 57, 2, v19);

        type metadata accessor for __VaListBuilder();
        v14 = swift_allocObject();
        v14[2] = 8;
        v14[3] = 0;
        v33 = v14 + 3;
        v14[4] = 0;
        v14[5] = 0;
        v17 = v19;
        v18 = *(v19 + 16);
        if (!v18)
        {
LABEL_36:
          v48 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v49 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v50 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v51 = String._bridgeToObjectiveC()();

          [v62 handleFailureInFunction:v49 file:v50 lineNumber:79 isFatal:0 format:v51 args:v48];

          v7 = v64;

          v0 = v65;
          v8 = v63;
          goto LABEL_42;
        }

        v16 = 0;
        v22 = 40;
        while (1)
        {
          v34 = (v66 + 40 * v16);
          v24 = v34[3];
          sub_100020E58(v34, v24);
          v35 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v36 = *v33;
          v37 = *(v35 + 16);
          v38 = __OFADD__(*v33, v37);
          v39 = *v33 + v37;
          if (v38)
          {
            break;
          }

          v40 = v14[4];
          if (v40 >= v39)
          {
            goto LABEL_28;
          }

          if (v40 + 0x4000000000000000 < 0)
          {
            goto LABEL_48;
          }

          v24 = v14[5];
          if (2 * v40 > v39)
          {
            v39 = 2 * v40;
          }

          v14[4] = v39;
          if ((v39 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_49;
          }

          v19 = v35;
          v41 = swift_slowAlloc();
          v42 = v41;
          v14[5] = v41;
          if (v24)
          {
            if (v41 != v24 || v41 >= &v24[8 * v36])
            {
              memmove(v41, v24, 8 * v36);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
            v35 = v19;
LABEL_28:
            v42 = v14[5];
            if (!v42)
            {
              goto LABEL_35;
            }

            goto LABEL_29;
          }

          v35 = v19;
          if (!v42)
          {
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_29:
          v44 = *(v35 + 16);
          if (v44)
          {
            v45 = (v35 + 32);
            v46 = *v33;
            while (1)
            {
              v47 = *v45++;
              *&v42[8 * v46] = v47;
              v46 = *v33 + 1;
              if (__OFADD__(*v33, 1))
              {
                break;
              }

              *v33 = v46;
              if (!--v44)
              {
                goto LABEL_13;
              }
            }

            __break(1u);
            break;
          }

LABEL_13:

          if (++v16 == v18)
          {
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        swift_once();
      }
    }

LABEL_42:
    v59 = v0[47];
    v60 = v0[41];
    (*(v0[46] + 16))(v59, v0[42], v0[45]);
    sub_10084BF50(v59, v8, v7, v60);
    goto LABEL_43;
  }

  v52 = swift_task_alloc();
  v0[48] = v52;
  *v52 = v0;
  v52[1] = sub_10123A1E4;

  return sub_10084306C();
}

uint64_t sub_10123A1E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = v7[1];

    return v8();
  }

  else
  {
    v10 = v6[43];
    v6[49] = a2;
    v6[50] = a1;

    return _swift_task_switch(sub_10123A354, v10, 0);
  }
}

uint64_t sub_10123A354()
{
  v58 = v0;
  v1 = v0[49];
  v2 = v0[43];
  *(v2 + 128) = v0[50];
  *(v2 + 136) = v1;

  v3 = *(v2 + 136);
  if (v3)
  {
    v4 = *(v0[43] + 128);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v0[40] = sub_1005B981C(&unk_1019F6C70);
    swift_bridgeObjectRetain_n();
    sub_1005B981C(&qword_101A2E428);
    String.init<A>(describing:)();
    v9 = String._bridgeToObjectiveC()();

    v10 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 56) = v10;
    v11 = v7;
    v12 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 32) = v9;
    v56 = inited + 32;
    *(inited + 64) = v12;
    if (v4 == v5 && v3 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v53 = v4;
      v54 = v3;
      v55 = v0;
      v52 = objc_opt_self();
      v13 = [v52 _atomicIncrementAssertCount];
      v57 = [objc_allocWithZone(NSString) init];
      sub_100604538(inited, &v57);
      StaticString.description.getter();
      v14 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v15 = inited;
      v16 = String._bridgeToObjectiveC()();

      v17 = [v16 lastPathComponent];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v21 = static OS_os_log.crlAssert;
        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_10146CA70;
        *(v22 + 56) = &type metadata for Int32;
        *(v22 + 64) = &protocol witness table for Int32;
        *(v22 + 32) = v13;
        *(v22 + 96) = v10;
        *(v22 + 104) = v12;
        *(v22 + 72) = v14;
        *(v22 + 136) = &type metadata for String;
        v23 = sub_1000053B0();
        *(v22 + 112) = v18;
        *(v22 + 120) = v20;
        *(v22 + 176) = &type metadata for UInt;
        *(v22 + 184) = &protocol witness table for UInt;
        *(v22 + 144) = v23;
        *(v22 + 152) = 79;
        v24 = v57;
        *(v22 + 216) = v10;
        *(v22 + 224) = v12;
        *(v22 + 192) = v24;
        v25 = v14;
        v26 = v24;
        v27 = static os_log_type_t.error.getter();
        sub_100005404(v21, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v22);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v28 = static os_log_type_t.error.getter();
        sub_100005404(v21, &_mh_execute_header, v28, "expected inequality between two values of type %{public}@", 57, 2, v15);

        type metadata accessor for __VaListBuilder();
        v10 = swift_allocObject();
        v10[2] = 8;
        v10[3] = 0;
        v29 = v10 + 3;
        v10[4] = 0;
        v10[5] = 0;
        v13 = v15;
        v14 = *(v15 + 16);
        if (!v14)
        {
LABEL_31:
          v44 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v45 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v46 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v47 = String._bridgeToObjectiveC()();

          [v52 handleFailureInFunction:v45 file:v46 lineNumber:79 isFatal:0 format:v47 args:v44];

          v3 = v54;

          v0 = v55;
          v4 = v53;
          goto LABEL_34;
        }

        v12 = 0;
        v18 = 40;
        while (1)
        {
          v30 = (v56 + 40 * v12);
          v20 = v30[3];
          sub_100020E58(v30, v20);
          v31 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v32 = *v29;
          v33 = *(v31 + 16);
          v34 = __OFADD__(*v29, v33);
          v35 = *v29 + v33;
          if (v34)
          {
            break;
          }

          v36 = v10[4];
          if (v36 >= v35)
          {
            goto LABEL_23;
          }

          if (v36 + 0x4000000000000000 < 0)
          {
            goto LABEL_40;
          }

          v20 = v10[5];
          if (2 * v36 > v35)
          {
            v35 = 2 * v36;
          }

          v10[4] = v35;
          if ((v35 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_41;
          }

          v15 = v31;
          v37 = swift_slowAlloc();
          v38 = v37;
          v10[5] = v37;
          if (v20)
          {
            if (v37 != v20 || v37 >= &v20[8 * v32])
            {
              memmove(v37, v20, 8 * v32);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
            v31 = v15;
LABEL_23:
            v38 = v10[5];
            if (!v38)
            {
              goto LABEL_30;
            }

            goto LABEL_24;
          }

          v31 = v15;
          if (!v38)
          {
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_24:
          v40 = *(v31 + 16);
          if (v40)
          {
            v41 = (v31 + 32);
            v42 = *v29;
            while (1)
            {
              v43 = *v41++;
              *&v38[8 * v42] = v43;
              v42 = *v29 + 1;
              if (__OFADD__(*v29, 1))
              {
                break;
              }

              *v29 = v42;
              if (!--v40)
              {
                goto LABEL_8;
              }
            }

            __break(1u);
            break;
          }

LABEL_8:

          if (++v12 == v14)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        swift_once();
      }
    }

LABEL_34:
    v49 = v0[47];
    v50 = v0[41];
    (*(v0[46] + 16))(v49, v0[42], v0[45]);
    sub_10084BF50(v49, v4, v3, v50);

    v48 = v0[1];
  }

  else
  {
    sub_10123C968();
    swift_allocError();
    swift_willThrow();

    v48 = v0[1];
  }

  return v48();
}

uint64_t sub_10123AA54(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_10123AA74, v1, 0);
}

uint64_t sub_10123AA74()
{
  v1 = *(*(v0 + 160) + 112);
  *(v0 + 168) = v1;
  return _swift_task_switch(sub_10123AA98, v1, 0);
}

uint64_t sub_10123AA98()
{
  v1 = v0[19];
  v2 = *(v0[21] + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10123ABC8;
  v3 = swift_continuation_init();
  v0[17] = sub_1005B981C(&qword_101A2E418);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = *"";
  v0[12] = sub_100843BE0;
  v0[13] = &unk_1018B8AA8;
  v0[14] = v3;
  [v2 acceptShareMetadata:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10123ABC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = sub_10123AD04;
  }

  else
  {
    v4 = sub_10123ACE8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10123AD04()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10123AD70(uint64_t a1)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = v1;
  return _swift_task_switch(sub_10123AD90, v1, 0);
}

uint64_t sub_10123AD90()
{
  v1 = v0[32];
  v2 = sub_100EFF9E4(v0[31]);
  v0[33] = v2;
  v0[34] = *(v1 + 112);
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_10123AE38;

  return sub_100842C40(v2);
}

uint64_t sub_10123AE38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 288) = a1;
  *(v4 + 296) = v1;

  v5 = *(v3 + 256);
  if (v1)
  {
    v6 = sub_10123B764;
  }

  else
  {
    v6 = sub_10123AF6C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10123AF6C()
{
  v34 = v0;
  v1 = *(v0 + 288);
  if (v1)
  {
    v2 = [*(v0 + 288) currentUserParticipant];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 role];

      if (v4 == 1)
      {
        v5 = swift_task_alloc();
        *(v0 + 304) = v5;
        *v5 = v0;
        v5[1] = sub_10123B424;
        v6 = *(v0 + 264);

        return sub_100842888(v6);
      }
    }
  }

  v32 = objc_opt_self();
  v8 = [v32 _atomicIncrementAssertCount];
  v33 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v33);
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

  v31 = *(v0 + 264);
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
  *(inited + 152) = 109;
  v20 = v33;
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
  sub_100005404(v15, &_mh_execute_header, v24, "To unshare a board the current user must own the share. Use leaveSharedBoard() for participants.", 96, 2, _swiftEmptyArrayStorage);

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

  [v32 handleFailureInFunction:v27 file:v28 lineNumber:109 isFatal:0 format:v29 args:v26];

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_10123B424()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    v4 = sub_10123B7C8;
  }

  else
  {
    v4 = sub_10123B550;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10123B550()
{
  type metadata accessor for MainActor();
  *(v0 + 320) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10123B5E4, v2, v1);
}

uint64_t sub_10123B5E4()
{

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for CRLiOSAppDelegate();
  v6 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharedBoardThumbnailManager);

  v3 = swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  v7 = *(v0 + 256);
  sub_101285BDC(*(v0 + 248));

  v3 = sub_10123B6F8;
  v4 = v7;
  v5 = 0;

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10123B6F8()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10123B764()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10123B7C8()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10123B834(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  return _swift_task_switch(sub_10123B858, v2, 0);
}

uint64_t sub_10123B858()
{
  v32 = v0;
  v1 = [*(v0 + 256) currentUserParticipant];
  if (v1 && (v2 = v1, v3 = [v1 role], v2, v3 == 1))
  {
    v30 = objc_opt_self();
    v4 = [v30 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v13;
    v14 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 121;
    v16 = v31;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Can not leave a share if the current user owns the share. Use unshareBoard() for owners.", 88, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v23 file:v24 lineNumber:121 isFatal:0 format:v25 args:v22];

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = swift_task_alloc();
    *(v0 + 272) = v28;
    *v28 = v0;
    v28[1] = sub_10123BCFC;
    v29 = *(v0 + 256);

    return sub_100843CB8(v29);
  }
}

uint64_t sub_10123BCFC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 264);

    return _swift_task_switch(sub_10123BE40, v6, 0);
  }
}

uint64_t sub_10123BE40()
{
  type metadata accessor for MainActor();
  *(v0 + 280) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10123BED4, v2, v1);
}

void sub_10123BED4()
{

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for CRLiOSAppDelegate();
  v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharedBoardThumbnailManager);

  swift_unknownObjectRelease();
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_101285BDC(*(v0 + 248));

  v4 = *(v0 + 8);

  v4();
}

uint64_t sub_10123BFDC()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_10123C044()
{
  v1 = *(v0 + 16);
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;

  v2 = *(v0 + 8);

  return v2();
}

void *sub_10123C0AC(void *a1)
{
  v2 = v1;
  v3 = a1;
  if (a1)
  {
    sub_100CE94A4();
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v4;
    [v5 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006370(0, &qword_1019F52C0);
    if (swift_dynamicCast())
    {
      v6 = v33;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100CEAEC8(v6, v3);

  if (v7)
  {
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    if (v3)
    {
      v3 = sub_10123C504();
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    v17 = 7104878;
    if (v11)
    {
      v17 = v3;
    }

    v18 = 0xE300000000000000;
    if (v11)
    {
      v18 = v11;
    }

    *(inited + 32) = v17;
    *(inited + 40) = v18;
    v19 = static os_log_type_t.default.getter();
    sub_100005404(v8, &_mh_execute_header, v19, "Not saving share to board share state (no meaningful difference detected): %@", 77, 2, inited);
    swift_setDeallocating();
    return sub_100005070(inited + 32);
  }

  else
  {
    v12 = *(v2 + 16);
    if (v12)
    {
      v13 = v12;
      v14 = [v13 currentUserParticipant];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 permission];
      }

      else
      {
        v16 = [v13 publicPermission];
      }

      v21 = v16 == 3;
    }

    else
    {
      v21 = 1;
    }

    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    v23 = swift_initStackObject();
    v24 = v23;
    *(v23 + 16) = xmmword_10146C6B0;
    if (v3)
    {
      v35 = sub_100006370(0, &qword_1019F52C0);
      v36 = sub_10000FE24(&qword_101A1BA40, &qword_1019F52C0);
      *&v34 = v3;
      sub_100050F74(&v34, v24 + 32);
    }

    else
    {
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_1000053B0();
      *(v24 + 32) = 7104878;
      *(v24 + 40) = 0xE300000000000000;
    }

    v25 = v3;
    v26 = static os_log_type_t.default.getter();
    sub_100005404(v22, &_mh_execute_header, v26, "Saving updated share to board share state: %@", 45, 2, v24);
    swift_setDeallocating();
    sub_100005070(v24 + 32);
    v27 = *(v2 + 16);
    *(v2 + 16) = v3;
    v28 = v25;

    if (v3)
    {
      v29 = [v28 currentUserParticipant];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 permission];
      }

      else
      {
        v31 = [v28 publicPermission];
      }

      v32 = v31 == 3;
    }

    else
    {
      v32 = 1;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result shareStateUpdatedWithShare:v28];
      result = swift_unknownObjectRelease();
    }

    if (v3)
    {
      if (v32)
      {
        if (v21)
        {
          return result;
        }

        result = swift_unknownObjectWeakLoadStrong();
        if (!result)
        {
          return result;
        }

        [result currentUserGainedEditPermissions];
      }

      else
      {
        if (!v21)
        {
          return result;
        }

        result = swift_unknownObjectWeakLoadStrong();
        if (!result)
        {
          return result;
        }

        [result currentUserLostEditPermissions];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10123C504()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v47 - v7;
  v9 = [v1 URL];
  if (v9)
  {
    v10 = v9;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v6, v2);
    v48 = 0x3A6C727520;
    v49 = 0xE500000000000000;
    v11._countAndFlagsBits = URL.description.getter();
    String.append(_:)(v11);

    v13 = v48;
    v12 = v49;
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v13 = 0;
    v12 = 0xE000000000000000;
  }

  v14 = [v1 recordChangeTag];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v48 = 0x3A67617420;
    v49 = 0xE500000000000000;
    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v21 = v48;
    v20 = v49;
  }

  else
  {
    v21 = 0;
    v20 = 0xE000000000000000;
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v48 = 0x726168534B43203CLL;
  v49 = 0xEA00000000002865;
  v22 = [v1 recordID];
  v23 = [v22 recordName];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 58;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29 = [v1 recordID];
  v30 = [v29 zoneID];

  v31 = [v30 zoneName];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0x3A72656E776F2029;
  v36._object = 0xE800000000000000;
  String.append(_:)(v36);
  v37 = [v1 recordID];
  v38 = [v37 zoneID];

  v39 = [v38 ownerName];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  v47._countAndFlagsBits = v13;
  v47._object = v12;

  v44._countAndFlagsBits = v21;
  v44._object = v20;
  String.append(_:)(v44);

  String.append(_:)(v47);

  v45._countAndFlagsBits = 15904;
  v45._object = 0xE200000000000000;
  String.append(_:)(v45);
  return v48;
}

uint64_t sub_10123C904()
{
  sub_1000C1024(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_10123C968()
{
  result = qword_101A2E420;
  if (!qword_101A2E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E420);
  }

  return result;
}

unint64_t sub_10123C9D0()
{
  result = qword_101A2E430;
  if (!qword_101A2E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E430);
  }

  return result;
}

uint64_t sub_10123CA38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  return Text.init<A>(_:)();
}

uint64_t sub_10123CB34()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  return Text.init<A>(_:)();
}

uint64_t sub_10123CC20()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  sub_10061655C(v0, qword_101AD93A0);
  sub_1005EB3DC(v0, qword_101AD93A0);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_10123CCBC()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD93D0);
  sub_1005EB3DC(v0, qword_101AD93D0);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10123CD6C()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD93E8);
  sub_1005EB3DC(v0, qword_101AD93E8);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10123CE1C()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD9400);
  sub_1005EB3DC(v0, qword_101AD9400);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10123CEF8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v3, a2);
  sub_1005EB3DC(v3, a2);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10123CFA4()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  sub_10061655C(v0, qword_101AD9430);
  sub_1005EB3DC(v0, qword_101AD9430);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_10123D014@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v13 = a1;
  v3 = sub_1005B981C(&qword_1019FE720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = sub_1005B981C(&qword_1019FE728);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10001A2F8(&qword_1019FE730, &qword_1019FE728);
  static PredicateExpressions.build_Arg<A>(_:)();
  v14 = v13;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_1005B981C(&qword_1019FE738);
  a2[4] = sub_100758DC4();
  sub_10002C58C(a2);
  sub_10001A2F8(&qword_1019FE758, &qword_1019FE720);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10123D27C@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019FE6A0);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  __chkstk_darwin(v3);
  v27 = &v26 - v5;
  v6 = sub_1005B981C(&qword_1019FE6A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_1005B981C(&qword_1019FE6B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v28 = sub_1005B981C(&qword_101A0F770);
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v26 - v15;
  sub_10001A2F8(&qword_1019FE6C8, &qword_1019FE6A8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  sub_10001A2F8(&qword_101A0F778, &qword_1019FE6B0);
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v13, v10);
  v35 = 1;
  v17 = v27;
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = v29;
  v18 = v30;
  v20 = v31;
  (*(v30 + 104))(v29, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v31);
  v21 = sub_1005B981C(&qword_101A0F780);
  v22 = v32;
  v32[3] = v21;
  v22[4] = sub_100B8C80C(&qword_101A0F788, &qword_101A0F780, &unk_1014D4B40, sub_100AC3AF4);
  sub_10002C58C(v22);
  sub_10001A2F8(&qword_101A0F798, &qword_101A0F770);
  sub_10001A2F8(&qword_1019FE718, &qword_1019FE6A0);
  v23 = v28;
  v24 = v33;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v18 + 8))(v19, v20);
  (*(v34 + 8))(v17, v24);
  return (*(v14 + 8))(v16, v23);
}

uint64_t sub_10123D7D0@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v45 = *(v1 - 8);
  v46 = v1;
  __chkstk_darwin(v1);
  v44 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019FE6A0);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  __chkstk_darwin(v3);
  v43 = &v35 - v5;
  v6 = type metadata accessor for Tips.DonationTimeRange();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019FE6A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = sub_1005B981C(&qword_1019FE6B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_1005B981C(&qword_1019FE6B8);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v21 = sub_1005B981C(&qword_1019FE6C0);
  v22 = *(v21 - 8);
  v41 = v21;
  v42 = v22;
  __chkstk_darwin(v21);
  v36 = &v35 - v23;
  sub_10001A2F8(&qword_1019FE6C8, &qword_1019FE6A8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  static Tips.DonationTimeRange.day.getter();
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690);
  sub_100758B68(&qword_1019FE698);
  sub_100758BAC();
  static PredicateExpressions.build_donatedWithin<A, B>(_:_:)();
  (*(v39 + 8))(v8, v40);
  (*(v14 + 8))(v16, v13);
  swift_getKeyPath();
  sub_10001A2F8(&qword_1019FE6E0, &qword_1019FE6B8);
  v25 = v36;
  v24 = v37;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v38 + 8))(v20, v24);
  v50 = 1;
  v26 = v43;
  static PredicateExpressions.build_Arg<A>(_:)();
  v28 = v44;
  v27 = v45;
  v29 = v46;
  (*(v45 + 104))(v44, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v46);
  v30 = sub_1005B981C(&qword_1019FE6E8);
  v31 = v47;
  v47[3] = v30;
  v31[4] = sub_100B8C80C(&qword_1019FE6F0, &qword_1019FE6E8, &unk_10147A1C0, sub_100758D14);
  sub_10002C58C(v31);
  sub_10001A2F8(&qword_1019FE710, &qword_1019FE6C0);
  sub_10001A2F8(&qword_1019FE718, &qword_1019FE6A0);
  v32 = v41;
  v33 = v48;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v27 + 8))(v28, v29);
  (*(v49 + 8))(v26, v33);
  return (*(v42 + 8))(v25, v32);
}

uint64_t sub_10123DF40@<X0>(uint64_t *a1@<X8>)
{
  sub_10067E210();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10123DF84()
{
  result = qword_101A2E438;
  if (!qword_101A2E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E438);
  }

  return result;
}

unint64_t sub_10123DFD8(uint64_t a1)
{
  result = sub_10067E210();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10123E000()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  v23 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v22 - v1;
  v3 = sub_1005B981C(&unk_1019F6CF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - v5;
  v7 = type metadata accessor for Tips.Rule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2B30 != -1)
  {
    swift_once();
  }

  v11 = sub_1005EB3DC(v3, qword_101AD93B8);
  swift_beginAccess();
  v12 = *(v4 + 16);
  v12(v6, v11, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[4] = static Tips.RuleBuilder.buildExpression(_:)();
  v25 = *(v8 + 8);
  v25(v10, v7);
  if (qword_1019F2B48 != -1)
  {
    swift_once();
  }

  v13 = sub_1005EB3DC(v3, qword_101AD9400);
  swift_beginAccess();
  v12(v6, v13, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[3] = static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v7);
  if (qword_1019F2B38 != -1)
  {
    swift_once();
  }

  v14 = sub_1005EB3DC(v3, qword_101AD93D0);
  swift_beginAccess();
  v12(v6, v14, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[2] = static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v7);
  if (qword_1019F2B40 != -1)
  {
    swift_once();
  }

  v15 = sub_1005EB3DC(v3, qword_101AD93E8);
  swift_beginAccess();
  v12(v6, v15, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[1] = static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v7);
  if (qword_1019F2B50 != -1)
  {
    swift_once();
  }

  v16 = sub_1005EB3DC(v3, qword_101AD9418);
  swift_beginAccess();
  v12(v6, v16, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[0] = static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v7);
  v24 = v7;
  if (qword_1019F2B28 != -1)
  {
    swift_once();
  }

  v17 = sub_1005EB3DC(v0, qword_101AD93A0);
  v18 = *(v23 + 16);
  v18(v2, v17, v0);
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690);
  sub_100758B68(&qword_1019FE698);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v24);
  if (qword_1019F2B58 != -1)
  {
    swift_once();
  }

  v19 = sub_1005EB3DC(v0, qword_101AD9430);
  v18(v2, v19, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v24);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v20 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v20;
}

id sub_10123E884(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.upgrade;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v8 = sub_100020E14(a1);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(inited + 56) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 64) = v12;
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v13 = sub_100020E14(a2);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v12;
  *(inited + 72) = v14;
  *(inited + 80) = v16;
  v17 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v17, "Upgrading from version [%{public}@] to [%{public}@]", 51, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  result = swift_arrayDestroy();
  if (a1 < 0x1000100000000)
  {
    result = sub_100DE08EC();
  }

  if (a1 < 0x2000400000001)
  {
    v19 = static os_log_type_t.default.getter();
    v20 = sub_100005404(v6, &_mh_execute_header, v19, "Running upgrade code for rdar://119152219", 41, 2, _swiftEmptyArrayStorage);
    __chkstk_darwin(v20);
    result = OS_dispatch_queue.sync<A>(execute:)();
  }

  if (a1 < 0x3000000000001)
  {
    v21 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v21, "Running upgrade code for rdar://105187224", 41, 2, _swiftEmptyArrayStorage);
    sub_100DE12E0(0);
    sub_100DE12E0(1);
    v22 = static os_log_type_t.default.getter();
    result = sub_100005404(v6, &_mh_execute_header, v22, "Finished running upgrade code for rdar://105187224", 50, 2, _swiftEmptyArrayStorage);
  }

  if (a1 < 0x4000000000001)
  {
    v23 = *(a3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_userDefaults);
    [v23 removeObjectForKey:@"CRLUserHasDataUserDefault"];
    return [v23 removeObjectForKey:@"CRLUserHasUnsyncedDataUserDefault"];
  }

  return result;
}

uint64_t sub_10123EBF4(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v1;
  swift_storeEnumTagMultiPayload();
  v9 = v6;
  v10 = a1;
  v11 = 0;
  v12 = v5;
  OS_dispatch_queue.sync<A>(execute:)();
  return sub_100028A14(v5);
}

uint64_t sub_10123ED20(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1012E0400(a1, &off_1018A75D0);
  if (!v4)
  {
    sub_100EBA32C(*(v3 + OBJC_IVAR____TtC8Freeform23CRLCommandSetBoardTitle_boardTitle), *(v3 + OBJC_IVAR____TtC8Freeform23CRLCommandSetBoardTitle_boardTitle + 8));
    return sub_1012CF6CC(a1, &off_1018A75D0, a3);
  }

  return result;
}

id sub_10123EDEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetBoardTitle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10123EE68(void *a1, void *a2)
{
  v4 = sub_1005B981C(&qword_101A2E488);
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v15 - v7;
  v9 = [a2 UIImage];
  v10 = UIImagePNGRepresentation(v9);

  if (v10)
  {
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    sub_100020E58(a1, a1[3]);
    sub_10123F3D0();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v15[0] = v11;
    v15[1] = v13;
    sub_1006D63D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    return sub_10002640C(v11, v13);
  }

  else
  {
    sub_10123F424();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_10123F058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567616D49676E70 && a2 == 0xEC00000061746144)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10123F0E4(uint64_t a1)
{
  v2 = sub_10123F3D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10123F120(uint64_t a1)
{
  v2 = sub_10123F3D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_10123F15C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10123F1A4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_10123F1A4(void *a1)
{
  v3 = sub_1005B981C(&qword_101A2E470);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - v5;
  v7 = a1[4];
  sub_100020E58(a1, a1[3]);
  sub_10123F3D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1006D6258();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v13[0];
    v10 = v13[1];
    v11 = objc_allocWithZone(CRLImage);
    sub_100024E98(v9, v10);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = [v11 initWithData:isa];

    sub_10002640C(v9, v10);
    if (v7)
    {
      (*(v4 + 8))(v6, v3);
      sub_10002640C(v9, v10);
      sub_100005070(a1);
      return v7;
    }

    sub_10123F424();
    swift_allocError();
    swift_willThrow();
    sub_10002640C(v9, v10);
    (*(v4 + 8))(v6, v3);
  }

  sub_100005070(a1);
  return v7;
}

unint64_t sub_10123F3D0()
{
  result = qword_101A2E478;
  if (!qword_101A2E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E478);
  }

  return result;
}

unint64_t sub_10123F424()
{
  result = qword_101A2E480;
  if (!qword_101A2E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E480);
  }

  return result;
}

unint64_t sub_10123F49C()
{
  result = qword_101A2E490;
  if (!qword_101A2E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E490);
  }

  return result;
}

unint64_t sub_10123F4F4()
{
  result = qword_101A2E498;
  if (!qword_101A2E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E498);
  }

  return result;
}

unint64_t sub_10123F54C()
{
  result = qword_101A2E4A0;
  if (!qword_101A2E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E4A0);
  }

  return result;
}

unint64_t sub_10123F5A4()
{
  result = qword_101A2E4A8;
  if (!qword_101A2E4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E4A8);
  }

  return result;
}

uint64_t sub_10123F5F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v16 = a2 & 0xFFFFFFFFFFFFFFLL;
    v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v9 = v8;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = a1;
          v15[1] = v16;
          v7 = v15 + v5;
        }

        else
        {
          v6 = v14;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v6 = _StringObject.sharedUTF8.getter();
          }

          v7 = (v6 + v5);
        }

        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v12 = (__clz(*v7 ^ 0xFF) - 24);
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v9 = 3;
          }

          else
          {
            v9 = 4;
          }

          goto LABEL_15;
        }

        if (v12 == 1)
        {
LABEL_14:
          v9 = 1;
        }

        else
        {
          v9 = 2;
        }
      }

LABEL_15:
      if (qword_1019F2B80 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for CharacterSet();
      sub_1005EB3DC(v10, qword_101A2E4E8);
      v11 = CharacterSet.contains(_:)();
      if (v11)
      {
        v5 += v9;
        if (v5 < v2)
        {
          continue;
        }
      }

      return v11 & 1;
    }
  }

  v11 = 1;
  return v11 & 1;
}

void sub_10123F800(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

uint64_t sub_10123F890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v3 numberFromString:v6];

  if (!v7)
  {
    return 0;
  }

  [v7 doubleValue];
  v9 = v8;

  v10 = [v3 crl_numberFormatterForAnalysis];
  v11 = sub_101243210(v10, v9 >= 0, sub_101240C5C, sub_10124365C);
  v13 = v12;
  v15 = v14;

  if (!v11)
  {
    return 0;
  }

  sub_1005B981C(&qword_1019FE850);
  sub_1012407EC();
  sub_100017CD8();
  v16 = _NSRange.init<A, B>(_:in:)();
  v18 = v17;
  v27[0] = 0;
  v27[1] = 0;
  v28 = 1;
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  v20[2] = v27;
  v20[3] = a1;
  v20[4] = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_101245010;
  *(v21 + 24) = v20;
  aBlock[4] = sub_10124501C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10123F800;
  aBlock[3] = &unk_1018B8EB0;
  v22 = _Block_copy(aBlock);

  [v11 enumerateMatchesInString:v19 options:0 range:v16 usingBlock:{v18, v22}];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v25 = v27[0];

    return v25;
  }

  __break(1u);
  return result;
}

id sub_10123FBB8(uint64_t a1, unint64_t a2)
{
  v23 = 0;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 getValueFromString:v5 rangePtr:0 valuePtr:&v23];

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  result = sub_101243210(v2, v23 >= 0, sub_1012410BC, sub_1012441E0);
  if (result)
  {
    v10 = result;
    v11 = v9;

    v12 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v12 = a1;
    }

    v13 = 7;
    if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
    {
      v13 = 11;
    }

    v23 = 15;
    v24 = v13 | (v12 << 16);
    v29 = a1;
    v30 = a2;

    sub_1005B981C(&qword_1019FE850);
    sub_1012407EC();
    sub_100017CD8();
    v14 = _NSRange.init<A, B>(_:in:)();
    v16 = v15;
    v29 = 0;
    v30 = 0;
    v31 = 1;
    v17 = String._bridgeToObjectiveC()();
    v18 = swift_allocObject();
    v18[2] = &v29;
    v18[3] = a1;
    v18[4] = a2;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_101243628;
    *(v19 + 24) = v18;
    v27 = sub_101243634;
    v28 = v19;
    v23 = _NSConcreteStackBlock;
    v24 = *"";
    v25 = sub_10123F800;
    v26 = &unk_1018B8DC0;
    v20 = _Block_copy(&v23);

    [v10 enumerateMatchesInString:v17 options:0 range:v14 usingBlock:{v16, v20}];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    v22 = v29;

    return v22;
  }

  return result;
}

NSNumber sub_10123FEC8()
{
  sub_100930DEC();
  result.super.super.isa = NSNumber.init(floatLiteral:)(1.0e-100).super.super.isa;
  qword_101A2E4B0 = result.super.super.isa;
  return result;
}

id sub_10123FF6C()
{
  v1 = [v0 zeroSymbol];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_1005B981C(&qword_1019F54E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10146C4D0;
  result = [v0 positiveFormat];
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  v12 = sub_1000053B0();
  *(v6 + 64) = v12;
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v12;
  if (v5)
  {
    v13 = v5;
  }

  else
  {
    if (qword_1019F2B60 != -1)
    {
      swift_once();
    }

    v14 = [v0 stringForObjectValue:qword_101A2E4B0];
    if (v14)
    {
      v15 = v14;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v16;
    }

    else
    {
      v3 = 0;
      v13 = 0xE000000000000000;
    }
  }

  *(v6 + 72) = v3;
  *(v6 + 80) = v13;

  result = [v0 negativeFormat];
  if (!result)
  {
    goto LABEL_17;
  }

  v17 = result;

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v6 + 136) = &type metadata for String;
  *(v6 + 144) = v12;
  *(v6 + 112) = v18;
  *(v6 + 120) = v20;

  return String.init(format:_:)();
}

void sub_1012401CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v25 = a2;
  sub_100017CD8();
  v4 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v5 = v4[2];
  if (v5)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_100034080(0, v5, 0);
    v6 = 0;
    v7 = v4 + 7;
    while (v6 < v4[2])
    {

      v8 = static String._fromSubstring(_:)();
      v10 = v9;

      v23 = _swiftEmptyArrayStorage;
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100034080((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v7 += 4;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_7:

  v14 = _swiftEmptyArrayStorage[2];
  switch(v14)
  {
    case 1:

      v18 = String._bridgeToObjectiveC()();

      [v2 setPositiveFormat:v18];

      v19 = _swiftEmptyArrayStorage[4];
      v20 = _swiftEmptyArrayStorage[5];

      v21._countAndFlagsBits = v19;
      v21._object = v20;
      String.append(_:)(v21);

      v22 = String._bridgeToObjectiveC()();

      [v2 setNegativeFormat:v22, 45, 0xE100000000000000];

      v4 = &selRef_setSizeClassParameters_;
      [v2 setZeroSymbol:0];
      if (qword_1019F2B60 == -1)
      {
LABEL_16:
        v17 = [v2 stringForObjectValue:{qword_101A2E4B0, v23, v25}];
        [v3 v4[187]];
        goto LABEL_17;
      }

LABEL_21:
      swift_once();
      goto LABEL_16;
    case 2:

      v4 = String._bridgeToObjectiveC()();

      [v2 setPositiveFormat:v4];

      if (_swiftEmptyArrayStorage[2] < 2uLL)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v17 = String._bridgeToObjectiveC()();

      [v3 setNegativeFormat:v17, v23];
LABEL_17:

      return;
    case 3:

      v15 = String._bridgeToObjectiveC()();

      [v2 setPositiveFormat:v15];

      if (_swiftEmptyArrayStorage[2] < 3uLL)
      {
        __break(1u);
      }

      else
      {

        v16 = String._bridgeToObjectiveC()();

        [v2 setNegativeFormat:v16];

        if (_swiftEmptyArrayStorage[2] >= 2uLL)
        {

          v17 = String._bridgeToObjectiveC()();

          [v3 setZeroSymbol:{v17, v23}];
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    default:

      break;
  }
}

id sub_1012405D4()
{
  v0 = objc_allocWithZone(NSRegularExpression);
  result = sub_101243134(0xD000000000000012, 0x80000001015C7540, 0);
  qword_101A2E4B8 = result;
  return result;
}

void sub_101240660(void *a1, uint64_t a2, _BYTE *a3, BOOL *a4, void *a5)
{
  if (a1)
  {
    v8 = a1;
    v9 = [v8 rangeAtIndex:1];
    [v8 rangeAtIndex:2];
    v11 = v10;
    v12 = NSNotFound.getter();

    *a4 = v9 != v12;
    *a5 = v11;
  }

  *a3 = 1;
}

uint64_t sub_101240710(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
  if (v10)
  {

    v11 = NSNotFound.getter();
  }

  else
  {
    sub_1005B981C(&qword_1019FE850);
    sub_1012407EC();
    sub_100017CD8();
    v11 = _NSRange.init<A, B>(_:in:)();
  }

  return v11;
}

unint64_t sub_1012407EC()
{
  result = qword_1019FE858;
  if (!qword_1019FE858)
  {
    sub_1005C4E5C(&qword_1019FE850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE858);
  }

  return result;
}

uint64_t sub_101240850(uint64_t a1)
{
  if ([v1 copyFormatterPropertyForKey:a1])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100930DEC();
    if (swift_dynamicCast())
    {
      v2 = [v4 BOOLValue];

      return v2;
    }
  }

  else
  {
    sub_10000CAAC(v7, &unk_1019F4D00);
  }

  return 2;
}

id sub_101240928(uint64_t a1)
{
  if ([v1 copyFormatterPropertyForKey:a1])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100930DEC();
    if (swift_dynamicCast())
    {
      v2 = [v4 integerValue];

      return v2;
    }
  }

  else
  {
    sub_10000CAAC(v7, &unk_1019F4D00);
  }

  return 0;
}

uint64_t sub_101240A08(uint64_t a1)
{
  if ([v1 copyFormatterPropertyForKey:a1])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000CAAC(v6, &unk_1019F4D00);
    return 0;
  }
}

void sub_101240ACC(uint64_t a1)
{
  if ([v1 copyFormatterPropertyForKey:a1])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_100930DEC();
    if (swift_dynamicCast())
    {
      v2 = [v3 integerValue];

      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_10000CAAC(v6, &unk_1019F4D00);
  }
}

void sub_101240BB4(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    if ([v6 numberOfRanges] < 1)
    {
    }

    else
    {
      [v6 rangeAtIndex:1];
      v7 = Range<>.init(_:in:)();
      v9 = v8;
      v11 = v10;

      *a4 = v7;
      *(a4 + 8) = v9;
      *(a4 + 16) = v11 & 1;
    }
  }

  *a3 = 1;
}

uint64_t sub_101240C5C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27[1] = a2;
  v5 = sub_1005B981C(&qword_1019F69B8);
  __chkstk_darwin(v5 - 8);
  v7 = v27 - v6;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v27 - v13;
  Hasher.init()();
  Hasher._combine(_:)(1uLL);
  if (a1)
  {
    v15 = [v2 positiveFormat];
    if (v15)
    {
LABEL_3:
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_6;
    }
  }

  else
  {
    v15 = [v2 negativeFormat];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v28 = [v2 numberStyle];
  dispatch thunk of CustomStringConvertible.description.getter();
LABEL_6:
  String.hash(into:)();

  Hasher._combine(_:)(a1 & 1);
  v17 = ([v2 alwaysShowsDecimalSeparator] & 1) != 0 || objc_msgSend(v2, "minimumFractionDigits") > 0;
  v18 = [v3 maximumFractionDigits] > 0 || v17;
  Hasher._combine(_:)(v18);
  v19 = [v3 currencyCode];
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v21 = [v3 currencySymbol];
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v23 = [v3 locale];
  if (v23)
  {
    v24 = v23;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = *(v9 + 32);
    v25(v7, v11, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v25(v14, v7, v8);
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    static Locale.current.getter();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_10000CAAC(v7, &qword_1019F69B8);
    }
  }

  Locale.identifier.getter();
  (*(v9 + 8))(v14, v8);
  String.hash(into:)();

  v28 = Hasher.finalize()();
  return AnyHashable.init<A>(_:)();
}

uint64_t sub_1012410BC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[1] = a2;
  v5 = sub_1005B981C(&qword_1019F69B8);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  Hasher._combine(_:)(2uLL);
  v15 = [v2 format];
  if (v15 || (v15 = [v2 createStringWithValue:100.0]) != 0)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  String.hash(into:)();

  v17 = [v2 currencyCode];
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v19 = [v3 currencySymbol];
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(a1 & 1);
  v21 = [v3 locale];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 locale];

    if (v23)
    {
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v12 + 56))(v7, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v7, 1, 1, v11);
    }

    sub_101244D0C(v7, v10);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v14, v10, v11);
      goto LABEL_19;
    }
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  static Locale.current.getter();
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_10000CAAC(v10, &qword_1019F69B8);
  }

LABEL_19:
  Locale.identifier.getter();
  (*(v12 + 8))(v14, v11);
  String.hash(into:)();

  v25[2] = Hasher.finalize()();
  return AnyHashable.init<A>(_:)();
}

uint64_t sub_1012414F8()
{
  v1 = *(v0 + 216);
  sub_1005B981C(&qword_1019F54E0);
  v2 = swift_allocObject();
  if (v1)
  {
    *(v2 + 16) = xmmword_10146BDE0;
    v4 = *(v0 + 23);
    v3 = *(v0 + 24);
    *(v2 + 56) = &type metadata for String;
    v5 = sub_1000053B0();
    *(v2 + 64) = v5;
    *(v2 + 32) = v4;
    *(v2 + 40) = v3;

    sub_101242204();
    *(v2 + 96) = &type metadata for String;
    *(v2 + 104) = v5;
    *(v2 + 72) = v6;
    *(v2 + 80) = v7;
  }

  else
  {
    *(v2 + 16) = xmmword_10146C6B0;
    sub_101242204();
    v9 = v8;
    v11 = v10;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_1000053B0();
    *(v2 + 32) = v9;
    *(v2 + 40) = v11;
  }

  v12 = String.init(format:arguments:)();
  v14 = v13;

  v16 = *(v0 + 5);
  v15 = *(v0 + 6);
  if (!v16 && (v17 = 0xE000000000000000, v15 == 0xE000000000000000) || (v17 = 0xE000000000000000, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v18 = 0;
  }

  else
  {
    sub_1005B981C(&qword_1019F54E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10146C6B0;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_1000053B0();
    *(v19 + 32) = v16;
    *(v19 + 40) = v15;

    v18 = String.init(format:arguments:)();
    v17 = v20;
  }

  v21 = *(v0 + 4);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      sub_1005B981C(&qword_1019F54E0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_10146D2A0;
      v32 = *v0;
      *(v22 + 56) = &type metadata for String;
      v23 = sub_1000053B0();
      v24 = v0[1];
      *(v22 + 32) = *v0;
      *(v22 + 96) = &type metadata for String;
      *(v22 + 104) = v23;
      *(v22 + 64) = v23;
      *(v22 + 72) = v12;
      *(v22 + 80) = v14;
      *(v22 + 136) = &type metadata for String;
      *(v22 + 144) = v23;
      *(v22 + 112) = v18;
      *(v22 + 120) = v17;
      goto LABEL_20;
    }

    if (v21 == 3)
    {
      sub_1005B981C(&qword_1019F54E0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10146D2A0;
      v32 = *v0;
      *(v25 + 56) = &type metadata for String;
      v26 = sub_1000053B0();
      v27 = v0[1];
      *(v25 + 32) = *v0;
      *(v25 + 96) = &type metadata for String;
      *(v25 + 104) = v26;
      *(v25 + 64) = v26;
      *(v25 + 72) = v12;
      *(v25 + 80) = v14;
      v31 = v27;
      *(v25 + 136) = &type metadata for String;
      *(v25 + 144) = v26;
      *(v25 + 112) = v27;
      *(v25 + 176) = &type metadata for String;
      *(v25 + 184) = v26;
      *(v25 + 152) = v18;
      *(v25 + 160) = v17;
LABEL_21:
      sub_1008DC9B8(&v32, v30);
      sub_1008DC9B8(&v31, v30);
      v28 = String.init(format:arguments:)();

      return v28;
    }
  }

  else
  {
    if (!v21)
    {
      sub_1005B981C(&qword_1019F54E0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_10146D2A0;
      *(v22 + 56) = &type metadata for String;
      v23 = sub_1000053B0();
      v24 = v0[1];
      v32 = *v0;
      *(v22 + 72) = v32;
      *(v22 + 64) = v23;
      *(v22 + 32) = v18;
      *(v22 + 40) = v17;
      *(v22 + 96) = &type metadata for String;
      *(v22 + 104) = v23;
      goto LABEL_18;
    }

    if (v21 == 1)
    {
      sub_1005B981C(&qword_1019F54E0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_10146D2A0;
      v32 = *v0;
      *(v22 + 56) = &type metadata for String;
      v23 = sub_1000053B0();
      v24 = v0[1];
      *(v22 + 32) = *v0;
      *(v22 + 96) = &type metadata for String;
      *(v22 + 104) = v23;
      *(v22 + 64) = v23;
      *(v22 + 72) = v18;
      *(v22 + 80) = v17;
LABEL_18:
      *(v22 + 136) = &type metadata for String;
      *(v22 + 144) = v23;
      *(v22 + 112) = v12;
      *(v22 + 120) = v14;
LABEL_20:
      v31 = v24;
      *(v22 + 176) = &type metadata for String;
      *(v22 + 184) = v23;
      *(v22 + 152) = v24;
      goto LABEL_21;
    }
  }

  return 0x64696C61766E697DLL;
}

uint64_t sub_101241914()
{
  sub_101242204();
  v2 = v1;
  v4 = v3;
  v5 = sub_101242704();
  v7 = v6;
  sub_1005B981C(&qword_1019F54E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146BDE0;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_1000053B0();
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v9;
  *(v8 + 64) = v9;
  *(v8 + 72) = v5;
  *(v8 + 80) = v7;
  v10 = String.init(format:arguments:)();
  v12 = v11;

  if (*(v0 + 216))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10146BDE0;
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = v9;
    *(v13 + 32) = v15;
    *(v13 + 40) = v14;
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v9;
    *(v13 + 72) = v10;
    *(v13 + 80) = v12;
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10146C6B0;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v9;
    *(v16 + 32) = v10;
    *(v16 + 40) = v12;
  }

  v17 = String.init(format:arguments:)();

  return v17;
}

uint64_t sub_101241AA8()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 5);
  v6 = *(v0 + 6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 == 0xE000000000000000;
  }

  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = 0xE000000000000000;
    v31 = 0;
  }

  else
  {
    sub_1005B981C(&qword_1019F54E0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10146C6B0;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1000053B0();
    *(v9 + 32) = v7;
    *(v9 + 40) = v6;

    v31 = String.init(format:arguments:)();
    v33 = v10;
  }

  v32 = "tter,N,R";
  v35 = *v1;
  v36 = v35;

  static CharacterSet.whitespaces.getter();
  sub_100017CD8();
  v11 = StringProtocol.trimmingCharacters(in:)();
  v13 = v12;
  v14 = *(v3 + 8);
  v14(v5, v2);
  sub_100874FB4(&v36);
  v34 = v1[1];
  v35 = v34;

  static CharacterSet.whitespaces.getter();
  v15 = StringProtocol.trimmingCharacters(in:)();
  v17 = v16;
  v14(v5, v2);
  sub_100874FB4(&v35);
  v18 = *(v1 + 4);
  if ((v18 - 1) < 2)
  {
    sub_1005B981C(&qword_1019F54E0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10146C4D0;
    *(v22 + 56) = &type metadata for String;
    v23 = sub_1000053B0();
    *(v22 + 32) = v11;
    *(v22 + 40) = v13;
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v23;
    v24 = v31;
    *(v22 + 64) = v23;
    *(v22 + 72) = v24;
    *(v22 + 80) = v33;
    *(v22 + 136) = &type metadata for String;
    *(v22 + 144) = v23;
    *(v22 + 112) = v15;
    *(v22 + 120) = v17;
  }

  else if (v18 == 3)
  {
    sub_1005B981C(&qword_1019F54E0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10146C4D0;
    *(v25 + 56) = &type metadata for String;
    v26 = sub_1000053B0();
    *(v25 + 32) = v11;
    *(v25 + 40) = v13;
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v26;
    *(v25 + 64) = v26;
    *(v25 + 72) = v15;
    *(v25 + 80) = v17;
    *(v25 + 136) = &type metadata for String;
    *(v25 + 144) = v26;
    v27 = v33;
    *(v25 + 112) = v31;
    *(v25 + 120) = v27;
  }

  else
  {
    if (v18)
    {

      return 0x64696C61766E697DLL;
    }

    sub_1005B981C(&qword_1019F54E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10146C4D0;
    *(v19 + 56) = &type metadata for String;
    v20 = sub_1000053B0();
    v21 = v33;
    *(v19 + 32) = v31;
    *(v19 + 40) = v21;
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v20;
    *(v19 + 64) = v20;
    *(v19 + 72) = v11;
    *(v19 + 80) = v13;
    *(v19 + 136) = &type metadata for String;
    *(v19 + 144) = v20;
    *(v19 + 112) = v15;
    *(v19 + 120) = v17;
  }

  v28 = String.init(format:arguments:)();

  return v28;
}

uint64_t sub_101241E80(uint64_t a1, unint64_t a2)
{
  v29 = 0;
  v30 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v25 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v26 = a2 & 0xFFFFFFFFFFFFFFLL;

    v5 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v11 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v13 = v12;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v27 = a1;
          v28 = v26;
          v10 = &v27 + v5;
        }

        else
        {
          v9 = v25;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v9 = _StringObject.sharedUTF8.getter();
          }

          v10 = (v9 + v5);
        }

        v11 = *v10;
        if ((*v10 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v17 = (__clz(v11 ^ 0xFF) - 24);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v11 = ((v11 & 0xF) << 12) | ((v10[1] & 0x3F) << 6) | v10[2] & 0x3F;
            v13 = 3;
          }

          else
          {
            v11 = ((v11 & 0xF) << 18) | ((v10[1] & 0x3F) << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3F;
            v13 = 4;
          }

          goto LABEL_19;
        }

        if (v17 == 1)
        {
LABEL_18:
          v13 = 1;
        }

        else
        {
          v11 = v10[1] & 0x3F | ((v11 & 0x1F) << 6);
          v13 = 2;
        }
      }

LABEL_19:
      if (qword_1019F2B78 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for CharacterSet();
      sub_1005EB3DC(v14, qword_101A2E4D0);
      if (CharacterSet.contains(_:)())
      {
        if (v11 > 0x7F)
        {
          v19 = (v11 & 0x3F) << 8;
          if (v11 >= 0x800)
          {
            v22 = (v19 | (v11 >> 6) & 0x3F) << 8;
            v23 = (((v22 | (v11 >> 12) & 0x3F) << 8) | (v11 >> 18)) - 2122219023;
            v15 = (v11 >> 12) + v22 + 8487393;
            if (HIWORD(v11))
            {
              v15 = v23;
            }
          }

          else
          {
            v15 = (v11 >> 6) + v19 + 33217;
          }
        }

        else
        {
          v15 = v11 + 1;
        }

        v27 = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
        v16._countAndFlagsBits = static String._uncheckedFromUTF8(_:)();
        v27 = 92;
        v28 = 0xE100000000000000;
        String.append(_:)(v16);

        v7 = v27;
        v8 = v28;
      }

      else
      {
        if (v11 > 0x7F)
        {
          v18 = (v11 & 0x3F) << 8;
          if (v11 >= 0x800)
          {
            v20 = (v18 | (v11 >> 6) & 0x3F) << 8;
            v21 = (((v20 | (v11 >> 12) & 0x3F) << 8) | (v11 >> 18)) - 2122219023;
            v6 = (v11 >> 12) + v20 + 8487393;
            if (HIWORD(v11))
            {
              v6 = v21;
            }
          }

          else
          {
            v6 = (v11 >> 6) + v18 + 33217;
          }
        }

        else
        {
          v6 = v11 + 1;
        }

        v27 = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v6) >> 3))));
        v7 = static String._uncheckedFromUTF8(_:)();
      }

      String.append(_:)(*&v7);
      v5 += v13;

      if (v5 >= v3)
      {

        return v29;
      }
    }
  }

  return 0;
}

void sub_101242204()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  if ((*(v0 + 56) & 1) == 0)
  {
    if (v1 >= 1 && (v2 & 0x8000000000000000) == 0)
    {
      sub_1005B981C(&qword_1019F54E0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10146BDE0;
      v22 = *(v0 + 64);
      v23 = *(v0 + 72);
      *(v21 + 56) = &type metadata for String;
      v24 = sub_1000053B0();
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      *(v21 + 96) = &type metadata for Int;
      *(v21 + 104) = &protocol witness table for Int;
      *(v21 + 64) = v24;
      *(v21 + 72) = v2;

      v18 = String.init(format:arguments:)();
      v20 = v25;

      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  if (v4 < 1 || v3 < 1)
  {
    goto LABEL_26;
  }

  v6 = v1 - 1;
  if (v1 < 1 || (v2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v1 >= 2 && v1 >= v2)
  {
    sub_1005B981C(&qword_1019F54E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10146BDE0;
    v8 = __OFADD__(v4, v6);
    v9 = v4 + v6;
    if (!v8)
    {
      v10 = v7;
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10146C6B0;
      *(v11 + 56) = &type metadata for Int;
      *(v11 + 64) = &protocol witness table for Int;
      *(v11 + 32) = v9;
      v12 = String.init(format:arguments:)();
      v14 = v13;

      v10[7] = &type metadata for String;
      v15 = sub_1000053B0();
      v10[8] = v15;
      v10[4] = v12;
      v10[5] = v14;
      v16 = sub_1012428E0(v4, v3, v2);
      v10[12] = &type metadata for String;
      v10[13] = v15;
      v10[9] = v16;
      v10[10] = v17;
      v18 = String.init(format:arguments:)();
      v20 = v19;

      goto LABEL_16;
    }

LABEL_27:
    __break(1u);
    return;
  }

  v18 = sub_1012428E0(*(v0 + 80), *(v0 + 88), *(v0 + 104));
  v20 = v26;
LABEL_16:
  v27 = *(v0 + 120);
  v28 = *(v0 + 128);
  if ((*(v0 + 112) & 1) != 0 || v27 > 0 || v28 > 0)
  {
    v29 = sub_1012440A8(v27, v28);
    v31 = v30;
    sub_1005B981C(&qword_1019F54E0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10146BDE0;
    v33 = *(v0 + 200);
    v34 = *(v0 + 208);
    *(v32 + 56) = &type metadata for String;
    v35 = sub_1000053B0();
    *(v32 + 32) = v33;
    *(v32 + 40) = v34;
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = v35;
    *(v32 + 64) = v35;
    *(v32 + 72) = v29;
    *(v32 + 80) = v31;

    v36 = String.init(format:arguments:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v39 = *(v0 + 136);
  if (v39 < 1)
  {
    v47 = 0;
    v49 = 0xE000000000000000;
    v50 = &unk_10146C000;
  }

  else
  {
    v53 = *(v0 + 144);
    sub_1005B981C(&qword_1019F54E0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10146C4D0;
    v41 = v20;
    v42 = *(v0 + 152);
    v43 = *(v0 + 160);
    *(v40 + 56) = &type metadata for String;
    v44 = sub_1000053B0();
    *(v40 + 64) = v44;
    *(v40 + 32) = v42;
    *(v40 + 40) = v43;
    v20 = v41;

    v45 = sub_101242EDC(v53);
    *(v40 + 96) = &type metadata for String;
    *(v40 + 104) = v44;
    *(v40 + 72) = v45;
    *(v40 + 80) = v46;
    *(v40 + 136) = &type metadata for Int;
    *(v40 + 144) = &protocol witness table for Int;
    *(v40 + 112) = v39;
    v47 = String.init(format:arguments:)();
    v49 = v48;
    v50 = &unk_10146C000;
  }

  sub_1005B981C(&qword_1019F54E0);
  v51 = swift_allocObject();
  *(v51 + 16) = v50[77];
  *(v51 + 56) = &type metadata for String;
  v52 = sub_1000053B0();
  *(v51 + 32) = v18;
  *(v51 + 40) = v20;
  *(v51 + 96) = &type metadata for String;
  *(v51 + 104) = v52;
  *(v51 + 64) = v52;
  *(v51 + 72) = v36;
  *(v51 + 80) = v38;
  *(v51 + 136) = &type metadata for String;
  *(v51 + 144) = v52;
  *(v51 + 112) = v47;
  *(v51 + 120) = v49;
  String.init(format:arguments:)();
}

uint64_t sub_101242704()
{
  sub_1005B981C(&qword_1019F54E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10146BDE0;
  v3 = v0[8];
  v2 = v0[9];
  *(v1 + 56) = &type metadata for String;
  v4 = sub_1000053B0();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  *(v1 + 96) = &type metadata for Int;
  *(v1 + 104) = &protocol witness table for Int;
  *(v1 + 64) = v4;
  *(v1 + 72) = 0;

  v5 = String.init(format:arguments:)();
  v7 = v6;

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146BDE0;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = 0;
  *(v8 + 96) = &type metadata for Int;
  *(v8 + 104) = &protocol witness table for Int;
  *(v8 + 72) = 64;
  v9 = String.init(format:arguments:)();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10146D2A0;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = v4;
  *(v12 + 32) = v5;
  *(v12 + 40) = v7;
  v14 = v0[25];
  v13 = v0[26];
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v4;
  *(v12 + 72) = v14;
  *(v12 + 80) = v13;
  *(v12 + 136) = &type metadata for String;
  *(v12 + 144) = v4;
  *(v12 + 112) = v14;
  *(v12 + 120) = v13;
  *(v12 + 176) = &type metadata for String;
  *(v12 + 184) = v4;
  *(v12 + 152) = v9;
  *(v12 + 160) = v11;
  swift_bridgeObjectRetain_n();
  v15 = String.init(format:arguments:)();

  return v15;
}

uint64_t sub_1012428E0(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (result < 1 || a2 < 1 || (a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = a3 - result;
    if (a3 == result)
    {
      sub_1005B981C(&qword_1019F54E0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_10146BDE0;
      v8 = sub_101242D38(a2, 0);
      v10 = v9;
      *(v7 + 56) = &type metadata for String;
      v11 = sub_1000053B0();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      *(v7 + 96) = &type metadata for Int;
      *(v7 + 104) = &protocol witness table for Int;
      *(v7 + 64) = v11;
      *(v7 + 72) = v5;
    }

    else if (a3 >= result)
    {
      sub_1005B981C(&qword_1019F54E0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10146C6B0;
      *(v18 + 56) = &type metadata for Int;
      *(v18 + 64) = &protocol witness table for Int;
      *(v18 + 32) = v5;
      v40._countAndFlagsBits = String.init(format:arguments:)();
      v40._object = v19;

      v20 = v6 & ~(v6 >> 63);
      v21 = v20 / a2;
      v22 = v20 % a2;
      v39 = sub_101242D38(a2, v20 / a2 + 1);
      v24 = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10146C4D0;
      *(v25 + 56) = &type metadata for Int;
      *(v25 + 64) = &protocol witness table for Int;
      *(v25 + 32) = v22;
      *(v25 + 96) = &type metadata for Int;
      *(v25 + 104) = &protocol witness table for Int;
      *(v25 + 72) = a2;
      v27 = *(v3 + 64);
      v26 = *(v3 + 72);
      *(v25 + 136) = &type metadata for String;
      v28 = sub_1000053B0();
      *(v25 + 144) = v28;
      *(v25 + 112) = v27;
      *(v25 + 120) = v26;
      swift_bridgeObjectRetain_n();
      v38 = String.init(format:arguments:)();
      v30 = v29;

      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_10146C4D0;
      *(v31 + 56) = &type metadata for Int;
      *(v31 + 64) = &protocol witness table for Int;
      *(v31 + 32) = a2;
      *(v31 + 96) = &type metadata for String;
      *(v31 + 104) = v28;
      *(v31 + 72) = v27;
      *(v31 + 80) = v26;
      *(v31 + 136) = &type metadata for Int;
      *(v31 + 144) = &protocol witness table for Int;
      *(v31 + 112) = v21;
      v32 = String.init(format:arguments:)();
      v34 = v33;

      String.append(_:)(v40);

      v35._countAndFlagsBits = v32;
      v35._object = v34;
      String.append(_:)(v35);

      String.append(_:)(v40);

      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_10146BDE0;
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = v28;
      *(v36 + 32) = v39;
      *(v36 + 40) = v24;
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v28;
      *(v36 + 72) = v38;
      *(v36 + 80) = v30;
    }

    else
    {
      sub_1005B981C(&qword_1019F54E0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10146D2A0;
      v14 = sub_101242D38(a2, 0);
      v16 = v15;
      *(v13 + 56) = &type metadata for String;
      v17 = sub_1000053B0();
      *(v13 + 32) = v14;
      *(v13 + 40) = v16;
      *(v13 + 96) = &type metadata for Int;
      *(v13 + 104) = &protocol witness table for Int;
      *(v13 + 64) = v17;
      *(v13 + 72) = v5;
      *(v13 + 136) = &type metadata for Int;
      *(v13 + 144) = &protocol witness table for Int;
      *(v13 + 112) = a3;
      *(v13 + 176) = &type metadata for Int;
      *(v13 + 184) = &protocol witness table for Int;
      *(v13 + 152) = v5;
    }

    v37 = String.init(format:arguments:)();

    return v37;
  }

  return result;
}

uint64_t sub_101242D38(uint64_t result, uint64_t a2)
{
  if (result < 1 || a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (result == 1)
    {
      sub_1005B981C(&qword_1019F54E0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_10146BDE0;
      v7 = *(v2 + 64);
      v6 = *(v2 + 72);
      *(v5 + 56) = &type metadata for String;
      v8 = sub_1000053B0();
      *(v5 + 32) = v7;
      *(v5 + 40) = v6;
      *(v5 + 96) = &type metadata for Int;
      *(v5 + 104) = &protocol witness table for Int;
      *(v5 + 64) = v8;
      *(v5 + 72) = a2;
    }

    else
    {
      sub_1005B981C(&qword_1019F54E0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_10146CA70;
      *(v9 + 56) = &type metadata for Int;
      *(v9 + 64) = &protocol witness table for Int;
      *(v9 + 32) = v4;
      v11 = *(v2 + 64);
      v10 = *(v2 + 72);
      *(v9 + 96) = &type metadata for String;
      v12 = sub_1000053B0();
      *(v9 + 72) = v11;
      *(v9 + 80) = v10;
      *(v9 + 136) = &type metadata for Int;
      *(v9 + 144) = &protocol witness table for Int;
      *(v9 + 104) = v12;
      *(v9 + 112) = v4;
      *(v9 + 176) = &type metadata for String;
      *(v9 + 184) = v12;
      *(v9 + 152) = v11;
      *(v9 + 160) = v10;
      *(v9 + 216) = &type metadata for Int;
      *(v9 + 224) = &protocol witness table for Int;
      *(v9 + 192) = a2;
      swift_bridgeObjectRetain_n();
    }

    v13 = String.init(format:arguments:)();

    return v13;
  }

  return result;
}

uint64_t sub_101242EDC(char a1)
{
  sub_1005B981C(&qword_1019F54E0);
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10146BDE0;
    v13 = *(v1 + 184);
    *(v3 + 56) = &type metadata for String;
    v4 = sub_1000053B0();
    *(v3 + 64) = v4;
    *(v3 + 32) = *(v1 + 184);
    v12 = *(v1 + 168);
    v5 = v12;
    *(v3 + 96) = &type metadata for String;
    *(v3 + 104) = v4;
    *(v3 + 72) = v5;
    sub_1008DC9B8(&v13, v11);
    sub_1008DC9B8(&v12, v11);
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10146C6B0;
    v8 = *(v1 + 184);
    v7 = *(v1 + 192);
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_1000053B0();
    *(v6 + 32) = v8;
    *(v6 + 40) = v7;
  }

  v9 = String.init(format:arguments:)();

  return v9;
}

void sub_10124300C()
{
  v0 = sub_100BDA120(_swiftEmptyArrayStorage);
  type metadata accessor for CRLUnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *v2 = 0;
  *(v1 + 16) = v2;
  atomic_thread_fence(memory_order_acq_rel);
  off_101A2E4C0 = v1;
  qword_101A2E4C8 = v0;
}

uint64_t sub_101243078()
{
  v0 = type metadata accessor for CharacterSet();
  sub_10061655C(v0, qword_101A2E4D0);
  sub_1005EB3DC(v0, qword_101A2E4D0);
  return CharacterSet.init(charactersIn:)();
}

uint64_t sub_1012430E8()
{
  v0 = type metadata accessor for CharacterSet();
  sub_10061655C(v0, qword_101A2E4E8);
  sub_1005EB3DC(v0, qword_101A2E4E8);
  return static CharacterSet.whitespaces.getter();
}

id sub_101243134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_101243210(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), void (*a4)(void *__return_ptr, void *, void))
{
  v5 = a2;
  a3(v45, a2);
  if (qword_1019F2B70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_101A2E4C8;
  v8 = *(off_101A2E4C0 + 2);
  os_unfair_lock_lock(v8);
  if (*(v7 + 16) && (v9 = sub_1000640CC(v45), (v10 & 1) != 0))
  {
    v11 = (*(v7 + 56) + 24 * v9);
    v12 = *v11;
    sub_100AAFD98(*v11, v11[1], v11[2]);
    os_unfair_lock_unlock(v8);
    if (v12 != 1)
    {
      swift_endAccess();
      sub_100064234(v45);
      return v12;
    }
  }

  else
  {
    os_unfair_lock_unlock(v8);
  }

  swift_endAccess();
  a4(v46, a1, v5 & 1);
  v14 = sub_1012414F8();
  v16 = v15;
  v17 = objc_allocWithZone(NSRegularExpression);
  v18 = sub_101243134(v14, v16, 0);
  v19 = sub_101241914();
  v21 = v20;
  v22 = objc_allocWithZone(NSRegularExpression);
  v23 = sub_101243134(v19, v21, 0);
  v24 = sub_101241AA8();
  v26 = v25;
  sub_101244C80(v46);
  v27 = objc_allocWithZone(NSRegularExpression);
  v41 = sub_101243134(v24, v26, 0);
  sub_100064110(v45, v44);
  swift_beginAccess();
  sub_100064110(v44, v43);
  v28 = *(off_101A2E4C0 + 2);
  v29 = v18;
  v30 = v18;
  v31 = v23;
  v32 = v23;
  v33 = v41;
  v34 = v30;
  v35 = v32;
  v36 = v33;

  os_unfair_lock_lock(v28);
  v37 = v34;
  v38 = v35;
  v39 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = qword_101A2E4C8;
  qword_101A2E4C8 = 0x8000000000000000;
  sub_100AA1DD4(v29, v31, v41, v43, isUniquelyReferenced_nonNull_native);
  qword_101A2E4C8 = v42;
  os_unfair_lock_unlock(v28);

  sub_100064234(v44);
  sub_100064234(v43);

  swift_endAccess();
  sub_100064234(v45);
  return v29;
}

void sub_10124365C(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1005B981C(&qword_1019F69B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v107 - v8;
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 numberStyle] == 5)
  {
    sub_101244CB0();
    swift_allocError();
    swift_willThrow();

    return;
  }

  v129 = v3;
  v107 = v9;
  v140 = a2;
  v131 = v11;
  v132 = v10;
  if (a2)
  {
    v15 = [a1 positiveSuffix];
    if (v15)
    {
LABEL_5:
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      goto LABEL_8;
    }
  }

  else
  {
    v15 = [a1 negativeSuffix];
    if (v15)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
  v19 = 0xE000000000000000;
LABEL_8:
  v20 = sub_101241E80(v17, v19);
  v22 = v21;

  v23 = [a1 paddingPosition];
  v24 = [a1 usesGroupingSeparator];
  v25 = [a1 groupingSeparator];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v28;
    v128 = v27;
  }

  else
  {
    v127 = 0xE000000000000000;
    v128 = 0;
  }

  v126 = [a1 groupingSize];
  if ([a1 secondaryGroupingSize] <= 0)
  {
    v29 = &selRef_groupingSize;
  }

  else
  {
    v29 = &selRef_secondaryGroupingSize;
  }

  v30 = [a1 *v29];
  v31 = [a1 locale];
  if (!v31)
  {
    goto LABEL_61;
  }

  v32 = v31;
  v124 = v30;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = sub_10098F42C();
  (*(v131 + 8))(v14, v132);
  if (v33 <= 1)
  {
    v33 = 1;
  }

  v34 = [a1 minimumIntegerDigits];
  v121 = [a1 alwaysShowsDecimalSeparator];
  v120 = [a1 minimumFractionDigits];
  v119 = [a1 maximumFractionDigits];
  v125 = v20;
  v122 = v34;
  v123 = v33;
  if (v140)
  {
    v35 = [a1 positiveFormat];
    if (v35)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  v35 = [a1 negativeFormat];
  if (!v35)
  {
LABEL_62:
    __break(1u);
    return;
  }

LABEL_21:
  v36 = v35;
  v116 = v24;
  v117 = v23;
  v118 = v22;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v141 = 0;
  v133[0] = 0;
  v37 = String.UTF16View.count.getter();
  if (qword_1019F2B68 != -1)
  {
    swift_once();
  }

  v38 = qword_101A2E4B8;
  v39 = String._bridgeToObjectiveC()();
  v40 = swift_allocObject();
  *(v40 + 16) = &v141;
  *(v40 + 24) = v133;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_101245020;
  *(v41 + 24) = v40;
  v138 = sub_10124501C;
  v139 = v41;
  aBlock = _NSConcreteStackBlock;
  v135 = *"";
  v136 = sub_10123F800;
  v137 = &unk_1018B8F28;
  v42 = _Block_copy(&aBlock);

  [v38 enumerateMatchesInString:v39 options:0 range:0 usingBlock:{v37, v42}];

  _Block_release(v42);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v44 = v141;
  v45 = v133[0];

  v46 = [a1 exponentSymbol];
  if (v46)
  {
    v47 = v46;
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0xE000000000000000;
  }

  v51 = v140;
  v113 = sub_101241E80(v48, v50);
  v112 = v52;

  v53 = [a1 plusSign];
  if (v53)
  {
    v54 = v53;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0xE000000000000000;
  }

  v111 = sub_101241E80(v55, v57);
  v110 = v58;

  v59 = [a1 minusSign];
  if (v59)
  {
    v60 = v59;
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0xE000000000000000;
  }

  v130 = sub_101241E80(v61, v63);
  v65 = v64;

  v66 = [a1 decimalSeparator];
  if (v66)
  {
    v67 = v66;
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0xE000000000000000;
  }

  v71 = sub_101241E80(v68, v70);
  v108 = v72;

  v73 = [a1 paddingPosition];
  v115 = v44;
  v114 = v45;
  v109 = v71;
  if ((v51 & 1) == 0)
  {
    v74 = [a1 negativePrefix];
    if (v74)
    {
      goto LABEL_38;
    }

LABEL_40:
    v76 = 0;
    v78 = 0xE000000000000000;
    goto LABEL_41;
  }

  v74 = [a1 positivePrefix];
  if (!v74)
  {
    goto LABEL_40;
  }

LABEL_38:
  v75 = v74;
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

LABEL_41:
  v79 = sub_101241E80(v76, v78);
  v81 = v80;

  if ((v51 & 1) != 0 || v73 == 1)
  {
  }

  else
  {
    aBlock = v79;
    v135 = v81;
    v133[0] = v130;
    v133[1] = v65;
    v100 = v107;
    (*(v131 + 56))(v107, 1, 1, v132);
    sub_100017CD8();

    StringProtocol.range<A>(of:options:range:locale:)();
    v102 = v101;
    v104 = v103;
    sub_10000CAAC(v100, &qword_1019F69B8);

    if ((v104 & 1) == 0)
    {
      v105 = HIBYTE(v81) & 0xF;
      if ((v81 & 0x2000000000000000) == 0)
      {
        v105 = v79 & 0xFFFFFFFFFFFFLL;
      }

      if (v102 >> 14 == 4 * v105)
      {
        String.subscript.getter();

        v79 = static String._fromSubstring(_:)();
        v81 = v106;

        v82 = 1;
        goto LABEL_45;
      }
    }
  }

  v82 = 0;
LABEL_45:
  v83 = [a1 paddingCharacter];
  if (v83)
  {
    v84 = v83;
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0xE000000000000000;
  }

  v88 = sub_101241E80(v85, v87);
  v90 = v89;

  if (v88 || v90 != 0xE000000000000000)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (sub_10123F5F8(v88, v90))
    {

      v90 = 0xE200000000000000;
      v88 = 29532;
    }
  }

  else
  {
    v88 = 0;
    v90 = 0xE000000000000000;
  }

  *a3 = v79;
  *(a3 + 8) = v81;
  v91 = v118;
  *(a3 + 16) = v125;
  *(a3 + 24) = v91;
  *(a3 + 32) = v117;
  *(a3 + 40) = v88;
  *(a3 + 48) = v90;
  *(a3 + 56) = v116;
  v92 = v127;
  *(a3 + 64) = v128;
  *(a3 + 72) = v92;
  v94 = v123;
  v93 = v124;
  *(a3 + 80) = v126;
  *(a3 + 88) = v93;
  v95 = v122;
  *(a3 + 96) = v94;
  *(a3 + 104) = v95;
  *(a3 + 112) = v121;
  v96 = v119;
  *(a3 + 120) = v120;
  *(a3 + 128) = v96;
  *(a3 + 136) = v114;
  *(a3 + 144) = v115;
  v97 = v112;
  *(a3 + 152) = v113;
  *(a3 + 160) = v97;
  v98 = v110;
  *(a3 + 168) = v111;
  *(a3 + 176) = v98;
  *(a3 + 184) = v130;
  *(a3 + 192) = v65;
  v99 = v108;
  *(a3 + 200) = v109;
  *(a3 + 208) = v99;
  *(a3 + 216) = v82;
}

uint64_t sub_1012440A8(uint64_t result, uint64_t a2)
{
  if ((a2 | result) < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result < a2)
    {
      sub_1005B981C(&qword_1019F54E0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_10146BDE0;
      *(v4 + 56) = &type metadata for Int;
      *(v4 + 64) = &protocol witness table for Int;
      *(v4 + 32) = v3;
      *(v4 + 96) = &type metadata for Int;
      *(v4 + 104) = &protocol witness table for Int;
      *(v4 + 72) = a2;
LABEL_6:
      v6 = String.init(format:arguments:)();

      return v6;
    }

    if (result >= 1)
    {
      sub_1005B981C(&qword_1019F54E0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_10146C6B0;
      *(v5 + 56) = &type metadata for Int;
      *(v5 + 64) = &protocol witness table for Int;
      *(v5 + 32) = v3;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1012441E0(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1005B981C(&qword_1019F69B8);
  __chkstk_darwin(v7 - 8);
  v102 = &v99[-v8];
  v9 = type metadata accessor for Locale();
  v127 = *(v9 - 8);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v99[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = [a1 format];
  if (!v13)
  {
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = v13;
  v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v125 = v9;
  v128 = v15;
  if (a2)
  {
    v16 = kCFNumberFormatterPositiveSuffix;
    if (!kCFNumberFormatterPositiveSuffix)
    {

      __break(1u);
LABEL_5:
      sub_101244CB0();
      swift_allocError();
      swift_willThrow();

      return;
    }
  }

  else
  {
    v16 = kCFNumberFormatterNegativeSuffix;
    if (!kCFNumberFormatterNegativeSuffix)
    {
LABEL_97:

      __break(1u);
      goto LABEL_98;
    }
  }

  v17 = sub_101240A08(v16);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = sub_101241E80(v17, v19);
  v22 = v21;

  if (!kCFNumberFormatterPaddingPosition)
  {
    goto LABEL_87;
  }

  sub_101240ACC(kCFNumberFormatterPaddingPosition);
  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v126 = v25;
  v136 = [a1 useGroupingSeparator];
  if (!kCFNumberFormatterGroupingSeparator)
  {
    goto LABEL_88;
  }

  LODWORD(v123) = a2;
  v26 = sub_101240A08(kCFNumberFormatterGroupingSeparator);
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v27)
  {
    v29 = v27;
  }

  v121 = v29;
  v122 = v28;
  if (!kCFNumberFormatterGroupingSize)
  {
    goto LABEL_89;
  }

  v30 = sub_101240928(kCFNumberFormatterGroupingSize);
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v30;
  }

  if (!kCFNumberFormatterSecondaryGroupingSize)
  {
    goto LABEL_90;
  }

  v33 = sub_101240928(kCFNumberFormatterSecondaryGroupingSize);
  v36 = v32 > 0 && v33 == 0;
  v119 = v32;
  if (((v34 | v36) & 1) == 0)
  {
    v32 = v33;
  }

  v37 = [a1 locale];
  v120 = v22;
  if (!v37)
  {
    v37 = [objc_opt_self() currentLocale];
    if (!v37)
    {
      goto LABEL_99;
    }
  }

  v38 = v37;
  v39 = [v37 locale];

  if (!v39)
  {
    goto LABEL_91;
  }

  v118 = v32;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = sub_10098F42C();
  if (v40 <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = v40;
  }

  v117 = [a1 minIntegerDigits];
  if (!kCFNumberFormatterAlwaysShowDecimalSeparator)
  {
    goto LABEL_92;
  }

  v113 = v41;
  v114 = v20;
  v115 = v12;
  v116 = v3;
  v42 = sub_101240850(kCFNumberFormatterAlwaysShowDecimalSeparator);
  v112 = [a1 minFractionDigits];
  v111 = [a1 maxFractionDigits];
  v137 = 0;
  v129[0] = 0;
  v43 = String.UTF16View.count.getter();
  if (qword_1019F2B68 != -1)
  {
    swift_once();
  }

  v44 = qword_101A2E4B8;
  v45 = swift_allocObject();
  *(v45 + 16) = &v137;
  *(v45 + 24) = v129;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_101244D04;
  *(v46 + 24) = v45;
  v134 = sub_10124501C;
  v135 = v46;
  aBlock = _NSConcreteStackBlock;
  v131 = *"";
  v132 = sub_10123F800;
  v133 = &unk_1018B8E38;
  v47 = _Block_copy(&aBlock);

  [v44 enumerateMatchesInString:isEscapingClosureAtFileLocation options:0 range:0 usingBlock:{v43, v47}];

  _Block_release(v47);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_87:

    __break(1u);
LABEL_88:

    __break(1u);
LABEL_89:

    __break(1u);
LABEL_90:

    __break(1u);
LABEL_91:

    __break(1u);
LABEL_92:

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  LODWORD(v124) = v137;
  v110 = v129[0];

  v48 = [a1 exponentSymbol];
  if (v48)
  {
    v49 = v48;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    isEscapingClosureAtFileLocation = v51;
  }

  else
  {
    v50 = 0;
    isEscapingClosureAtFileLocation = 0xE000000000000000;
  }

  v109 = sub_101241E80(v50, isEscapingClosureAtFileLocation);
  v108 = v52;

  if (!kCFNumberFormatterPlusSign)
  {
    goto LABEL_93;
  }

  v53 = sub_101240A08(kCFNumberFormatterPlusSign);
  if (v54)
  {
    isEscapingClosureAtFileLocation = v54;
  }

  else
  {
    v53 = 0;
    isEscapingClosureAtFileLocation = 0xE000000000000000;
  }

  v107 = sub_101241E80(v53, isEscapingClosureAtFileLocation);
  v106 = v55;

  if (!kCFNumberFormatterMinusSign)
  {
    goto LABEL_94;
  }

  v56 = sub_101240A08(kCFNumberFormatterMinusSign);
  if (v57)
  {
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0xE000000000000000;
  }

  v59 = sub_101241E80(v56, v58);
  v61 = v60;

  if (!kCFNumberFormatterDecimalSeparator)
  {
    goto LABEL_95;
  }

  v62 = sub_101240A08(kCFNumberFormatterDecimalSeparator);
  if (v63)
  {
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0xE000000000000000;
  }

  v105 = sub_101241E80(v62, v64);
  v104 = v65;

  isEscapingClosureAtFileLocation = v123;
  if (v123)
  {
    v66 = kCFNumberFormatterPositivePrefix;
    if (kCFNumberFormatterPositivePrefix)
    {
      goto LABEL_62;
    }

    __break(1u);
  }

  v66 = kCFNumberFormatterNegativePrefix;
  if (kCFNumberFormatterNegativePrefix)
  {
LABEL_62:
    v67 = sub_101240A08(v66);
    if (v68)
    {
      v69 = v68;
    }

    else
    {
      v67 = 0;
      v69 = 0xE000000000000000;
    }

    v70 = sub_101241E80(v67, v69);
    v72 = v71;

    if ((isEscapingClosureAtFileLocation & 1) != 0 || v126 == 1)
    {

      v100 = 0;
    }

    else
    {
      LODWORD(v123) = v42;
      aBlock = v70;
      v131 = v72;
      v129[0] = v59;
      v129[1] = v61;
      isEscapingClosureAtFileLocation = v102;
      (*(v127 + 56))(v102, 1, 1, v125);
      sub_100017CD8();

      v101 = StringProtocol.range<A>(of:options:range:locale:)();
      v94 = v93;
      v96 = v95;
      sub_10000CAAC(isEscapingClosureAtFileLocation, &qword_1019F69B8);

      if (v96)
      {
        goto LABEL_85;
      }

      v97 = HIBYTE(v72) & 0xF;
      if ((v72 & 0x2000000000000000) == 0)
      {
        v97 = v70 & 0xFFFFFFFFFFFFLL;
      }

      if (v94 >> 14 != 4 * v97)
      {
LABEL_85:
        v100 = 0;
        LOBYTE(v42) = v123;
      }

      else
      {
        String.subscript.getter();
        isEscapingClosureAtFileLocation = v61;

        v70 = static String._fromSubstring(_:)();
        v72 = v98;

        v100 = 1;
        LOBYTE(v42) = v123;
      }
    }

    v101 = v70;
    v102 = v72;
    v103 = v61;
    v123 = v59;
    if (kCFNumberFormatterPaddingCharacter)
    {
      v117 = v117;
      v73 = v42 & 1;
      v74 = v112;
      v75 = v111;

      v76 = sub_101240A08(kCFNumberFormatterPaddingCharacter);
      if (v77)
      {
        v78 = v77;
      }

      else
      {
        v76 = 0;
        v78 = 0xE000000000000000;
      }

      v79 = sub_101241E80(v76, v78);
      v81 = v80;

      if (v79 || v81 != 0xE000000000000000)
      {
        v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v82 = v114;
        if (v83 & 1) == 0 && (sub_10123F5F8(v79, v81))
        {

          (*(v127 + 8))(v115, v125);

          v81 = 0xE200000000000000;
          v79 = 29532;
LABEL_79:
          v84 = v102;
          *a3 = v101;
          *(a3 + 8) = v84;
          v85 = v120;
          *(a3 + 16) = v82;
          *(a3 + 24) = v85;
          *(a3 + 32) = v126;
          *(a3 + 40) = v79;
          *(a3 + 48) = v81;
          *(a3 + 56) = v136;
          v86 = v121;
          *(a3 + 64) = v122;
          *(a3 + 72) = v86;
          v87 = v118;
          *(a3 + 80) = v119;
          *(a3 + 88) = v87;
          v88 = v117;
          *(a3 + 96) = v113;
          *(a3 + 104) = v88;
          *(a3 + 112) = v73;
          *(a3 + 120) = v74;
          *(a3 + 128) = v75;
          *(a3 + 136) = v110;
          *(a3 + 144) = v124;
          v89 = v108;
          *(a3 + 152) = v109;
          *(a3 + 160) = v89;
          v90 = v106;
          *(a3 + 168) = v107;
          *(a3 + 176) = v90;
          v91 = v103;
          *(a3 + 184) = v123;
          *(a3 + 192) = v91;
          v92 = v104;
          *(a3 + 200) = v105;
          *(a3 + 208) = v92;
          *(a3 + 216) = v100;
          return;
        }
      }

      else
      {
        v82 = v114;
      }

      (*(v127 + 8))(v115, v125);

      goto LABEL_79;
    }

    goto LABEL_96;
  }

LABEL_98:
  __break(1u);
LABEL_99:

  __break(1u);
}

unint64_t sub_101244CB0()
{
  result = qword_101A2E500;
  if (!qword_101A2E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E500);
  }

  return result;
}

uint64_t sub_101244D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F69B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_101244D9C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_101244DB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101244E04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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
      *result = a2;
    }
  }

  return result;
}

void *sub_101244E5C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

__n128 sub_101244E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_101244ED0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 217))
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

uint64_t sub_101244F18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 217) = 1;
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

    *(result + 217) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_101244FA4()
{
  result = qword_101A2E508;
  if (!qword_101A2E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E508);
  }

  return result;
}

uint64_t sub_101245024(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 48) = a1;
  return _swift_task_switch(sub_101245048, 0, 0);
}

uint64_t sub_101245048()
{
  v1 = 0xD00000000000001ELL;
  v2 = *(v0 + 16);
  v3 = v2[2];
  if (!v3)
  {
    v9 = " multiple boards";
    v1 = 0xD00000000000001DLL;
    goto LABEL_7;
  }

  v4 = *(v0 + 48);
  v5 = v2[4];
  v6 = v2[5];
  *(v0 + 32) = v6;
  sub_100676824(v2, (v2 + 4), 1, (2 * v3) | 1);
  if (v4)
  {

    v9 = "ormatter_CRLAdditions.swift";
LABEL_7:
    v10 = v9 | 0x8000000000000000;
    sub_100FFBF2C();
    swift_allocError();
    *v11 = v1;
    v11[1] = v10;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }

  v8 = *(v7 + 16);

  if (v8)
  {

    v9 = "Error: Utility not implemented";
    v1 = 0xD000000000000030;
    goto LABEL_7;
  }

  v14 = *sub_100020E58(*(v0 + 24), *(*(v0 + 24) + 24));
  v15 = swift_task_alloc();
  *(v0 + 40) = v15;
  *v15 = v0;
  v15[1] = sub_101245234;

  return sub_100FF9D6C(v5, v6, v14);
}

uint64_t sub_101245234(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_1012453C4()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLiOSZoomHelper_zoomLevels;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSZoomHelper_zoomLevels);
  v3 = *(v2 + 16);
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSZoomHelper_currentZoomValue);
  if (v3)
  {

    v5 = v3;
    while (sub_101245D14(v4, *(v2 + 8 * v5 + 24)) || v5 >= v3)
    {
      if (!--v5)
      {

        goto LABEL_9;
      }
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *(v0 + v1);
      if (v5 < *(v6 + 16))
      {
        v4 = *(v6 + 8 * v5 + 32);
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    sub_1012455F4(v4);
  }
}

void sub_1012454E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSZoomHelper_currentZoomValue);
  v2 = OBJC_IVAR____TtC8Freeform16CRLiOSZoomHelper_zoomLevels;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSZoomHelper_zoomLevels);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = 0;
    while (1)
    {
      v6 = sub_101245CE8(v1, *(v3 + 8 * v5 + 32));
      if (v5)
      {
        if (v6)
        {
          break;
        }
      }

      if (v4 == ++v5)
      {

        goto LABEL_9;
      }
    }

    v7 = *(v0 + v2);
    if (v5 <= *(v7 + 16))
    {
      v1 = *(v7 + 8 * v5 + 24);
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    sub_1012455F4(v1);
  }
}

void sub_1012455F4(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v46 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v45 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSZoomHelper_icc);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v48 = v15;
    v18 = [v48 layerHost];
    if (v18 && (v19 = [v18 canvasLayer], swift_unknownObjectRelease(), v19))
    {
      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v17 selector:"canvasZoomTrackerDidEndViewScaleFeedback:" object:0];
      [v48 visibleUnscaledRect];
      v24 = sub_100120414(v20, v21, v22, v23);
      v26 = v25;
      [v19 contentInset];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v53 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
      v54 = 0;
      aBlock = _NSConcreteStackBlock;
      v50 = *"";
      v44 = v19;
      v42 = &v51;
      v51 = sub_1005CC4AC;
      v52 = &unk_1018B9270;
      v35 = _Block_copy(&aBlock);
      [v19 animateToViewScale:v35 contentCenter:a1 contentInset:v24 duration:v26 completionBlock:{v28, v30, v32, v34, 0.2}];
      _Block_release(v35);
      [v17 canvasZoomTracker:0 willBeginViewScaleFeedbackWithZoomMethod:2];
      [v17 canvasZoomTracker:0 willUpdateViewScaleFeedbackWithScale:a1];
      sub_100618868();
      v41 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v43 = v6;
      v45 = *(v45 + 8);
      (v45)(v11, v9);
      v36 = swift_allocObject();
      *(v36 + 16) = v17;
      v53 = sub_101245CD4;
      v54 = v36;
      aBlock = _NSConcreteStackBlock;
      v50 = *"";
      v51 = sub_100007638;
      v52 = &unk_1018B92C0;
      v37 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1005D91D8();
      sub_1005B981C(&unk_1019FF400);
      sub_10000D494();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v38 = v41;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

      _Block_release(v37);
      swift_unknownObjectRelease();

      (*(v47 + 8))(v5, v3);
      (*(v46 + 8))(v8, v43);
      (v45)(v14, v9);
    }

    else
    {
      swift_unknownObjectRelease();
      v39 = v48;
    }
  }
}

id sub_101245C20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSZoomHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_101245CE8(double a1, double a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  if (vabdd_f64(a1, a2) < 0.01)
  {
    return 1;
  }

  return a1 == a2;
}

char *sub_101245D40(double a1, double a2, double a3)
{
  v6 = sub_100B37F88(0, 1, 1, _swiftEmptyArrayStorage);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_100B37F88((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  *&v6[8 * v8 + 32] = a1;
  v9 = &stru_100000020;
  do
  {
    v10 = *(&off_101877938 + v9) / a3;
    if (v10 > a1 && v10 < a2)
    {
      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_100B37F88((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      *&v6[8 * v13 + 32] = v10;
    }

    v9 += 8;
  }

  while (v9 != 112);
  v15 = *(v6 + 2);
  v14 = *(v6 + 3);
  if (v15 >= v14 >> 1)
  {
    v6 = sub_100B37F88((v14 > 1), v15 + 1, 1, v6);
  }

  *(v6 + 2) = v15 + 1;
  *&v6[8 * v15 + 32] = a2;
  return v6;
}

id sub_101245E78(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Freeform16CRLiOSZoomHelper_icc] = a1;
  swift_unknownObjectWeakAssign();
  v3 = a1;
  [v3 viewScale];
  *&v1[OBJC_IVAR____TtC8Freeform16CRLiOSZoomHelper_currentZoomValue] = v4;
  v5 = [v3 delegate];
  if (v5)
  {
    v6 = v5;
    v7 = 1.0;
    if ([v5 respondsToSelector:"zoomDetentScaleForInteractiveCanvasController:"])
    {
      [v6 zoomDetentScaleForInteractiveCanvasController:v3];
      v7 = v8;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 1.0;
  }

  v9 = [v3 layerHost];
  v10 = 0.1;
  if (v9)
  {
    v11 = [v9 canvasLayer];
    swift_unknownObjectRelease();
    if (v11)
    {
      [v11 minimumPinchViewScale];
      v10 = v12;
    }
  }

  v13 = [v3 layerHost];
  v14 = 4.0;
  if (v13)
  {
    v15 = [v13 canvasLayer];
    swift_unknownObjectRelease();
    if (v15)
    {
      [v15 maximumPinchViewScale];
      v14 = v16;
    }
  }

  *&v1[OBJC_IVAR____TtC8Freeform16CRLiOSZoomHelper_zoomLevels] = sub_101245D40(v10, v14, v7);
  v18.receiver = v1;
  v18.super_class = type metadata accessor for CRLiOSZoomHelper();
  return objc_msgSendSuper2(&v18, "init");
}

uint64_t sub_101246064(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1012460AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1012461C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_101248218();
  v7 = sub_10124816C();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_101246238()
{
  sub_101248218();
  sub_100A1B84C();
  return CRValue<>.init(from:)();
}

uint64_t sub_1012462A4()
{
  sub_101248218();
  sub_100A1B84C();
  return CRValue<>.encode(to:)();
}

uint64_t sub_101246300(uint64_t a1)
{
  v2 = sub_101248218();
  v3 = sub_100A1B84C();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Int);
}

uint64_t sub_1012463B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A1B84C();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

Swift::Int sub_101246430()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014D57B0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1012464B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014D57B0[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10124651C()
{
  v1 = 0x726F6C6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_101246570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101247B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1012465C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_101246FBC();
  v5 = sub_101247014();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_101246618(uint64_t a1)
{
  v2 = sub_101247014();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101246654(uint64_t a1)
{
  v2 = sub_101247014();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101246690(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2E5C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  sub_100020E58(a1, a1[3]);
  sub_101247014();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v19 = *v3;
  BYTE8(v19) = *(v3 + 8);
  LOBYTE(v16[0]) = 0;
  sub_1005B981C(&qword_101A2E5B0);
  sub_101247FD4(&qword_101A2E5D0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 64);
    v10 = *(v3 + 32);
    v26 = *(v3 + 48);
    v27 = v9;
    v11 = *(v3 + 64);
    v28 = *(v3 + 80);
    v12 = *(v3 + 32);
    v25[0] = *(v3 + 16);
    v25[1] = v12;
    v21 = v26;
    v22 = v11;
    v23 = *(v3 + 80);
    v29 = *(v3 + 96);
    v24 = *(v3 + 96);
    v19 = v25[0];
    v20 = v10;
    v18 = 1;
    sub_10074A990(v25, v16);
    sub_1008B28D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[2] = v21;
    v16[3] = v22;
    v16[4] = v23;
    v17 = v24;
    v16[0] = v19;
    v16[1] = v20;
    sub_1008B2660(v16);
    v15 = *(v3 + 104);
    v14[7] = 2;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_101246960(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_10124698C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v10[2] = *(a1 + 48);
  v10[3] = v2;
  v10[4] = *(a1 + 80);
  v3 = *(a1 + 104);
  v11 = *(a1 + 96);
  v4 = *(a1 + 32);
  v10[0] = *(a1 + 16);
  v10[1] = v4;
  v5 = *(a2 + 104);
  v13 = *(a2 + 96);
  v6 = *(a2 + 64);
  v12[2] = *(a2 + 48);
  v12[3] = v6;
  v12[4] = *(a2 + 80);
  v7 = *(a2 + 32);
  v12[0] = *(a2 + 16);
  v12[1] = v7;
  sub_100A1B84C();
  if (static CRExtensible.== infix(_:_:)() & 1) != 0 && (sub_1008B1A4C(v10, v12))
  {
    v8 = sub_100B3216C(v3, v5);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_101246AC8()
{
  sub_1005B981C(&qword_101A2E5B0);
  CRExtensible.hash(into:)();
  sub_1008AFD24();
}

Swift::Int sub_101246B50()
{
  Hasher.init(_seed:)();
  sub_1005B981C(&qword_101A2E5B0);
  CRExtensible.hash(into:)();
  sub_1008AFD24();
  return Hasher._finalize()();
}

__n128 sub_101246BF0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_101247C1C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_101246C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_101248044();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_101246CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_101248044();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_101246D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1006BD1F0();
  v7 = sub_1007A9820();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_101246D74(uint64_t a1, uint64_t a2)
{
  v4 = sub_101248044();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_101246E58(uint64_t a1)
{
  v2 = sub_101247188();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_101246EA8()
{
  result = qword_101A2E558;
  if (!qword_101A2E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E558);
  }

  return result;
}

unint64_t sub_101246F0C()
{
  result = qword_101A2E560;
  if (!qword_101A2E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E560);
  }

  return result;
}

unint64_t sub_101246F64()
{
  result = qword_101A2E568;
  if (!qword_101A2E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E568);
  }

  return result;
}

unint64_t sub_101246FBC()
{
  result = qword_101A2E570;
  if (!qword_101A2E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E570);
  }

  return result;
}

unint64_t sub_101247014()
{
  result = qword_101A2E578;
  if (!qword_101A2E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E578);
  }

  return result;
}

unint64_t sub_10124706C()
{
  result = qword_101A2E580;
  if (!qword_101A2E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E580);
  }

  return result;
}

unint64_t sub_1012470C4()
{
  result = qword_101A2E588;
  if (!qword_101A2E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E588);
  }

  return result;
}

unint64_t sub_10124711C()
{
  result = qword_101A2E590;
  if (!qword_101A2E590)
  {
    sub_1005C4E5C(&qword_101A2E598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E590);
  }

  return result;
}

unint64_t sub_101247188()
{
  result = qword_101A2E5A0;
  if (!qword_101A2E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E5A0);
  }

  return result;
}

unint64_t sub_1012471E0()
{
  result = qword_101A2E5A8;
  if (!qword_101A2E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E5A8);
  }

  return result;
}

__n128 sub_101247234@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 color];
  }

  else
  {
    v51 = a1;
    v50 = objc_opt_self();
    v6 = [v50 _atomicIncrementAssertCount];
    *&v53[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v53);
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
    v48 = v17;
    v49 = v15;
    *(inited + 144) = v17;
    *(inited + 152) = 47;
    v18 = *&v53[0];
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
    sub_100005404(v13, &_mh_execute_header, v22, "Unsupported fill type for archiving. Falling back to archiving color fill.", 74, 2, _swiftEmptyArrayStorage);

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

    [v50 handleFailureInFunction:v25 file:v26 lineNumber:47 isFatal:0 format:v27 args:v24];

    a1 = v51;
    v5 = [v51 referenceColor];
    if (!v5)
    {
      v29 = [v50 _atomicIncrementAssertCount];
      *&v53[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v53);
      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v31 = String._bridgeToObjectiveC()();

      v32 = [v31 lastPathComponent];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_10146CA70;
      *(v36 + 56) = &type metadata for Int32;
      *(v36 + 64) = &protocol witness table for Int32;
      *(v36 + 72) = v30;
      *(v36 + 32) = v29;
      *(v36 + 96) = v49;
      *(v36 + 104) = v16;
      *(v36 + 136) = &type metadata for String;
      *(v36 + 144) = v48;
      *(v36 + 112) = v33;
      *(v36 + 120) = v35;
      *(v36 + 176) = &type metadata for UInt;
      *(v36 + 152) = 52;
      v37 = *&v53[0];
      *(v36 + 216) = v49;
      *(v36 + 224) = v16;
      *(v36 + 184) = &protocol witness table for UInt;
      *(v36 + 192) = v37;
      v38 = v30;
      v39 = v37;
      v40 = static os_log_type_t.error.getter();
      sub_100005404(v13, &_mh_execute_header, v40, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v36);
      swift_setDeallocating();
      swift_arrayDestroy();
      v41 = static os_log_type_t.error.getter();
      sub_100005404(v13, &_mh_execute_header, v41, "Missing fill reference color. Falling back to black color.", 58, 2, _swiftEmptyArrayStorage);

      v42 = swift_allocObject();
      v42[2] = 8;
      v42[3] = 0;
      v42[4] = 0;
      v42[5] = 0;
      v43 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v44 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v45 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v46 = String._bridgeToObjectiveC()();

      [v50 handleFailureInFunction:v44 file:v45 lineNumber:52 isFatal:0 format:v46 args:v43];

      v47 = [objc_opt_self() blackColor];
      sub_1008B2170(v47, v53);

      goto LABEL_7;
    }
  }

  sub_1008B2170(v5, v53);

LABEL_7:
  *(v52 + 7) = v53[0];
  *(&v52[1] + 7) = v53[1];
  *(v52[5].n128_u64 + 7) = v54;
  *(&v52[4] + 7) = v53[4];
  *(&v52[3] + 7) = v53[3];
  *(&v52[2] + 7) = v53[2];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 25) = v52[1];
  *(a2 + 9) = v52[0];
  result = v52[2];
  *(a2 + 88) = *(&v52[4] + 15);
  *(a2 + 73) = v52[4];
  *(a2 + 57) = v52[3];
  *(a2 + 41) = v52[2];
  *(a2 + 104) = _swiftEmptyDictionarySingleton;
  return result;
}

id sub_1012479DC(uint64_t a1)
{
  sub_100006370(0, &qword_101A00EB0);
  v2 = *(a1 + 48);
  v3 = *(a1 + 80);
  v11[3] = *(a1 + 64);
  v11[4] = v3;
  v12 = *(a1 + 96);
  v4 = *(a1 + 32);
  v11[0] = *(a1 + 16);
  v11[1] = v4;
  v11[2] = v2;
  sub_10074A990(v11, v10);
  v5 = sub_1008B0490(v11);
  if (*(a1 + 8))
  {
    if (qword_1019F2268 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.persistence;
    v7 = static os_log_type_t.info.getter();
    sub_100005404(v6, &_mh_execute_header, v7, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
  }

  v8 = [objc_allocWithZone(CRLColorFill) initWithColor:v5];

  return v8;
}

uint64_t sub_101247B00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_101247C1C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v39 = sub_1005B981C(&qword_101A2E5B8);
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v17 - v6;
  sub_100020E58(a1, a1[3]);
  sub_101247014();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v8 = v5;
  sub_1005B981C(&qword_101A2E5B0);
  LOBYTE(v19[0]) = 0;
  sub_101247FD4(&qword_101A2E5C0);
  v9 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v20;
  v38 = v21;
  v30 = 1;
  sub_1008B287C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v10;
  *(&v37[2] + 7) = v33;
  *(&v37[3] + 7) = v34;
  *(&v37[4] + 7) = v35;
  *(&v37[5] + 7) = v36;
  *(v37 + 7) = v31;
  *(&v37[1] + 7) = v32;
  sub_1005B981C(&unk_101A0D960);
  v28 = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v7, v9);
  *(&v19[2] + 9) = v37[2];
  *(&v19[3] + 9) = v37[3];
  *(&v19[4] + 9) = v37[4];
  *(&v19[5] + 8) = *(&v37[4] + 15);
  *(v19 + 9) = v37[0];
  v11 = v29;
  v12 = v18;
  *&v19[0] = v18;
  LOBYTE(v9) = v38;
  BYTE8(v19[0]) = v38;
  *(&v19[1] + 9) = v37[1];
  *(&v19[6] + 1) = v29;
  sub_1007A971C(v19, &v20);
  sub_100005070(a1);
  v24 = v37[2];
  v25 = v37[3];
  *v26 = v37[4];
  *&v26[15] = *(&v37[4] + 15);
  v22 = v37[0];
  v20 = v12;
  v21 = v9;
  v23 = v37[1];
  v27 = v11;
  result = sub_1007A97CC(&v20);
  v14 = v19[5];
  a2[4] = v19[4];
  a2[5] = v14;
  a2[6] = v19[6];
  v15 = v19[1];
  *a2 = v19[0];
  a2[1] = v15;
  v16 = v19[3];
  a2[2] = v19[2];
  a2[3] = v16;
  return result;
}

uint64_t sub_101247FD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A2E5B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101248044()
{
  result = qword_101A2E5D8;
  if (!qword_101A2E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E5D8);
  }

  return result;
}

unint64_t sub_1012480BC()
{
  result = qword_101A2E5E0;
  if (!qword_101A2E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E5E0);
  }

  return result;
}

unint64_t sub_101248114()
{
  result = qword_101A2E5E8;
  if (!qword_101A2E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E5E8);
  }

  return result;
}

unint64_t sub_10124816C()
{
  result = qword_101A2E5F0;
  if (!qword_101A2E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E5F0);
  }

  return result;
}

unint64_t sub_1012481C4()
{
  result = qword_101A2E5F8;
  if (!qword_101A2E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E5F8);
  }

  return result;
}

unint64_t sub_101248218()
{
  result = qword_101A2E600;
  if (!qword_101A2E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2E600);
  }

  return result;
}

uint64_t *sub_10124826C(char a1)
{
  v2 = v1;
  v29 = *v2;
  v4 = v29;
  v28 = type metadata accessor for CRLUSDZItemCRDTData(0);
  __chkstk_darwin(v28);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v19 = *(v4 + 736);
  swift_beginAccess();
  if (a1)
  {
    v27 = v9;
    sub_10000BE14(v2 + v19, v15, &unk_101A226A0);
    sub_10001A2F8(&qword_101A09E00, &unk_101A226A0);
    CRType.copy(renamingReferences:)();
    v9 = v27;
    sub_10000CAAC(v15, &unk_101A226A0);
    v20 = qword_101AD9460;
    swift_beginAccess();
    sub_1008038F0(v2 + v20, v6, type metadata accessor for CRLUSDZItemCRDTData);
    sub_10124CD30(&qword_101A01EF8, type metadata accessor for CRLUSDZItemCRDTData);
    CRType.copy(renamingReferences:)();
    sub_10124D8B4(v6, type metadata accessor for CRLUSDZItemCRDTData);
  }

  else
  {
    sub_10000BE14(v2 + v19, v18, &unk_101A226A0);
    v21 = qword_101AD9460;
    swift_beginAccess();
    sub_1008038F0(v2 + v21, v9, type metadata accessor for CRLUSDZItemCRDTData);
  }

  sub_10000BE14(v18, v15, &unk_101A226A0);
  sub_1008038F0(v9, v6, type metadata accessor for CRLUSDZItemCRDTData);
  v22 = *(v2 + 5);
  v30[0] = *(v2 + 3);
  v30[1] = v22;
  v31 = *(v2 + 56);
  v28 = v2[2];
  v23 = v9;
  v24 = swift_allocObject();
  sub_1008038F0(v6, v24 + qword_101AD9460, type metadata accessor for CRLUSDZItemCRDTData);
  sub_10000BE14(v15, v12, &unk_101A226A0);
  sub_10000BE14(v12, v24 + *(*v24 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v12, &unk_101A226A0);
  sub_10124D8B4(v6, type metadata accessor for CRLUSDZItemCRDTData);
  sub_10000CAAC(v15, &unk_101A226A0);
  sub_10124D8B4(v23, type metadata accessor for CRLUSDZItemCRDTData);
  sub_10000CAAC(v18, &unk_101A226A0);
  return sub_100747AF0(v30, v28);
}

uint64_t sub_101248710(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v25 = type metadata accessor for UUID();
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  v16 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap;
  swift_beginAccess();
  if (*(*(a1 + v16) + 16))
  {
    swift_beginAccess();
    sub_1005B981C(&unk_101A2EF00);
    v22 = v9;
    CRRegister.wrappedValue.getter();
    swift_endAccess();
    sub_101249D84(v15);
    sub_10124D8B4(v12, type metadata accessor for CRLUSDZAssetDataStruct);
    swift_beginAccess();
    sub_1008038F0(v15, v12, type metadata accessor for CRLUSDZAssetDataStruct);
    v3 = v2;
    v9 = v22;
    CRRegister.wrappedValue.setter();
    sub_10124D8B4(v15, type metadata accessor for CRLUSDZAssetDataStruct);
    swift_endAccess();
  }

  v17 = *(*v4 + 736);
  swift_beginAccess();
  sub_10124DE14(a1);
  result = swift_endAccess();
  if (!v3)
  {
    sub_10000BE14(v4 + v17, v9, &unk_101A226A0);
    sub_1005B981C(&unk_1019F5250);
    v19 = v23;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v9, &unk_101A226A0);
    v20 = *(*v4 + 744);
    swift_beginAccess();
    (*(v24 + 40))(v4 + v20, v19, v25);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_101248A98()
{
  qword_101AD9448 = 97;
  unk_101AD9450 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD9458 = result;
  return result;
}

uint64_t sub_101248AD8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for CRLAssetData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2878 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for UUID();
  v13 = sub_1005EB3DC(v12, qword_101AD8F08);
  (*(*(v12 - 8) + 16))(v11, v13, v12);
  v14 = &v11[*(v8 + 20)];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *&v11[*(v8 + 24)] = _swiftEmptyDictionarySingleton;
  (*(v9 + 56))(v7, 1, 1, v8);
  v18 = matrix_identity_float4x4.columns[3];
  *(a1 + *(type metadata accessor for CRLUSDZItemCRDTData(0) + 20)) = _swiftEmptyDictionarySingleton;
  sub_1008038F0(v11, v4, type metadata accessor for CRLAssetData);
  sub_10000BE14(v7, &v4[v2[5]], &unk_101A1B880);
  *&v4[v2[6]] = v18;
  v15 = &v4[v2[7]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = &v4[v2[8]];
  *v16 = 0;
  v16[8] = 1;
  *&v4[v2[9]] = _swiftEmptyDictionarySingleton;
  sub_10124CD30(&qword_101A2AF60, type metadata accessor for CRLUSDZAssetDataStruct);
  CRRegister.init(_:)();
  sub_10000CAAC(v7, &unk_101A1B880);
  return sub_10124D8B4(v11, type metadata accessor for CRLAssetData);
}

uint64_t sub_101248E04()
{
  v0 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  sub_1005B981C(&unk_101A2EF00);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v6 = sub_101248E00(v5, v2);
  sub_10124D8B4(v2, type metadata accessor for CRLUSDZAssetDataStruct);
  sub_10124D8B4(v5, type metadata accessor for CRLUSDZAssetDataStruct);
  return v6 & 1;
}

uint64_t sub_101248F10()
{
  if (qword_1019F2B88 != -1)
  {
    swift_once();
  }

  v0 = qword_101AD9448;

  return v0;
}

uint64_t sub_101248F90(uint64_t a1)
{
  v2 = sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return static CRStruct_1.fieldKeys.getter(a1, v2);
}

uint64_t sub_101249000(uint64_t a1)
{
  v2 = sub_10124CD30(&qword_101A01EF8, type metadata accessor for CRLUSDZItemCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_10124906C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1012490E8()
{
  sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_10124916C()
{
  sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.apply(_:)();
}

uint64_t sub_1012491E8()
{
  sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.hasDelta(from:)();
}

uint64_t sub_101249264()
{
  sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.delta(_:from:)();
}

uint64_t sub_1012492F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_101249374()
{
  sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.merge(delta:)();
}

uint64_t sub_1012493F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_101249474(uint64_t a1, uint64_t a2)
{
  v4 = sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012494F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_10124958C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_101249608()
{
  sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_101249674(uint64_t a1, uint64_t a2)
{
  v4 = sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1012496F0()
{
  sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.merge(_:)();
}

uint64_t sub_101249774(uint64_t a1, uint64_t a2)
{
  v4 = sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.merge(_:)(a1, a2, v4);
}

uint64_t sub_1012499F8(uint64_t a1)
{
  v2 = sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

  return CRStruct_1.minEncodingVersion.getter(a1, v2);
}

Swift::Int sub_101249A98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014D5EE0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_101249B20()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014D5EE0[v1]);
  return Hasher._finalize()();
}

uint64_t sub_101249B84()
{
  v1 = *v0;
  v2 = 0x7465737361;
  v3 = 0x676E69646E756F62;
  v4 = 0x73736572706D6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7341726574736F70;
  if (v1 != 1)
  {
    v5 = 0x7461746E6569726FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101249C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10124D914(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_101249CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10124CF04();
  v5 = sub_10124CF5C();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_101249D0C(uint64_t a1)
{
  v2 = sub_10124CF5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101249D48(uint64_t a1)
{
  v2 = sub_10124CF5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101249D84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  *&v36 = &v36 - v7;
  v8 = type metadata accessor for CRLAssetData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  sub_100C038F0(v1, &v36 - v13);
  v15 = *(v8 + 20);
  v16 = *(v1 + v15);
  v17 = *(v1 + v15 + 8);
  v18 = *(v1 + *(v8 + 24));
  v19 = &v14[v15];
  *v19 = v16;
  *(v19 + 1) = v17;
  *&v14[*(v8 + 24)] = v18;
  v20 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  sub_10000BE14(v1 + v20[5], v5, &unk_101A1B880);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {

    sub_10000CAAC(v5, &unk_101A1B880);
    v21 = 1;
    v22 = v36;
  }

  else
  {
    sub_1006008F0(v5, v11);

    v22 = v36;
    sub_100C038F0(v11, v36);
    v23 = &v11[*(v8 + 20)];
    v25 = *v23;
    v24 = *(v23 + 1);
    v26 = *&v11[*(v8 + 24)];

    sub_10124D8B4(v11, type metadata accessor for CRLAssetData);
    v21 = 0;
    v27 = (v22 + *(v8 + 20));
    *v27 = v25;
    v27[1] = v24;
    *(v22 + *(v8 + 24)) = v26;
  }

  (*(v9 + 56))(v22, v21, 1, v8);
  v36 = *(v2 + v20[6]);
  v28 = v2 + v20[8];
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = *(v2 + v20[9]);
  v32 = v37;
  sub_1006008F0(v14, v37);
  sub_100601198(v22, v32 + v20[5]);
  *(v32 + v20[6]) = v36;
  v33 = v32 + v20[7];
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  v34 = v32 + v20[8];
  *v34 = v29;
  *(v34 + 8) = v30;
  *(v32 + v20[9]) = v31;
}

uint64_t sub_10124A0B0(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2EB88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100020E58(a1, a1[3]);
  sub_10124CF5C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for CRLAssetData();
  sub_10124CD30(&qword_1019F5F38, type metadata accessor for CRLAssetData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLUSDZAssetDataStruct(0);
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + v9[6]);
    v17 = 2;
    sub_100C78510();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + v9[7]);
    v11 = *(v10 + 16);
    v15 = *v10;
    v16 = v11;
    v17 = 3;
    sub_1007299A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = (v3 + v9[8]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    *&v15 = v13;
    BYTE8(v15) = v12;
    v17 = 4;
    sub_1008CF64C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v15 = *(v3 + v9[9]);
    v17 = 5;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10124A3BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = type metadata accessor for CRLAssetData();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A2EB80);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + 56);
  v40 = *(v16 + 20);
  v18 = v15;
  v17(&v15[v40], 1, 1, v6, v13);
  v19 = a1[3];
  v41 = a1;
  sub_100020E58(a1, v19);
  sub_10124CF5C();
  v20 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    sub_100005070(v41);
    return sub_10000CAAC(v18 + v40, &unk_101A1B880);
  }

  else
  {
    v39 = v12;
    v21 = v36;
    LOBYTE(v42) = 0;
    sub_10124CD30(&qword_1019F5F28, type metadata accessor for CRLAssetData);
    v22 = v37;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v11;
    v24 = v18;
    sub_1006008F0(v38, v18);
    LOBYTE(v42) = 1;
    v25 = v5;
    v26 = v23;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1006010C0(v25, v24 + v40);
    v44 = 2;
    sub_100C784BC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v39;
    *(v24 + v39[6]) = v42;
    v44 = 3;
    sub_100729950();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = v24 + v27[7];
    v29 = v43;
    *v28 = v42;
    *(v28 + 16) = v29;
    v44 = 4;
    sub_1008CCD2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v24 + v27[8];
    v31 = BYTE8(v42);
    *v30 = v42;
    *(v30 + 8) = v31;
    sub_1005B981C(&unk_101A0D960);
    v44 = 5;
    sub_100600EA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v27[9];
    (*(v21 + 8))(v26, v22);
    *(v24 + v32) = v42;
    sub_1008038F0(v24, v35, type metadata accessor for CRLUSDZAssetDataStruct);
    sub_100005070(v41);
    return sub_10124D8B4(v24, type metadata accessor for CRLUSDZAssetDataStruct);
  }
}

uint64_t sub_10124A964(uint64_t a1, uint64_t a2)
{
  v4 = sub_10124CD30(&qword_101A2EB90, type metadata accessor for CRLUSDZAssetDataStruct);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10124A9E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10124CD30(&qword_101A2EB90, type metadata accessor for CRLUSDZAssetDataStruct);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10124AA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10124CD30(&qword_101A2AF60, type metadata accessor for CRLUSDZAssetDataStruct);
  v7 = sub_10124CD30(&qword_101A2EB98, type metadata accessor for CRLUSDZAssetDataStruct);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_10124AB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10124CD30(&qword_101A2EB90, type metadata accessor for CRLUSDZAssetDataStruct);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_10124ACAC(uint64_t a1)
{
  v2 = sub_10124CD30(&qword_101A2EB30, type metadata accessor for CRLUSDZAssetDataStruct);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

void sub_10124AD40(_UNKNOWN ****a1)
{
  v2 = type metadata accessor for CRLUSDZItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MergeResult();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 == &off_101A2E658)
  {
    v9 = qword_101AD9460;
    swift_beginAccess();
    sub_1008038F0(a1 + v9, v4, type metadata accessor for CRLUSDZItemCRDTData);
    swift_beginAccess();
    sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

    CRStruct_1.merge(_:)();
    swift_endAccess();

    sub_10124D8B4(v4, type metadata accessor for CRLUSDZItemCRDTData);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10124AF70(uint64_t a1)
{
  v3 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for CRLUSDZItemCRDTData(0);
  __chkstk_darwin(v9 - 8);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v43 = &v39 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v20 - 8);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v39 - v24;
  if (*a1 != &off_101A2E658)
  {
    goto LABEL_7;
  }

  v40 = v8;
  v41 = v5;
  v26 = *(*v1 + 736);
  swift_beginAccess();
  v42 = v1;
  sub_10000BE14(v1 + v26, v25, &unk_101A226A0);
  v27 = *(*a1 + 736);
  swift_beginAccess();
  sub_10000BE14(a1 + v27, v22, &unk_101A226A0);

  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  LOBYTE(v27) = static UUID.== infix(_:_:)();
  v28 = *(v14 + 8);
  v28(v16, v13);
  v28(v19, v13);
  if ((v27 & 1) == 0)
  {

    sub_10000CAAC(v22, &unk_101A226A0);
    sub_10000CAAC(v25, &unk_101A226A0);
LABEL_7:
    v37 = 0;
    return v37 & 1;
  }

  v29 = sub_101279020();
  sub_10000CAAC(v22, &unk_101A226A0);
  sub_10000CAAC(v25, &unk_101A226A0);
  if ((v29 & 1) == 0)
  {

    goto LABEL_7;
  }

  v30 = qword_101AD9460;
  v31 = v42;
  swift_beginAccess();
  v32 = v43;
  sub_1008038F0(v31 + v30, v43, type metadata accessor for CRLUSDZItemCRDTData);
  v33 = qword_101AD9460;
  swift_beginAccess();
  v34 = v44;
  sub_1008038F0(a1 + v33, v44, type metadata accessor for CRLUSDZItemCRDTData);
  sub_1005B981C(&unk_101A2EF00);
  v35 = v40;
  CRRegister.wrappedValue.getter();
  v36 = v41;
  CRRegister.wrappedValue.getter();
  v37 = sub_10124D3B4(v35, v36);

  sub_10124D8B4(v36, type metadata accessor for CRLUSDZAssetDataStruct);
  sub_10124D8B4(v35, type metadata accessor for CRLUSDZAssetDataStruct);
  sub_10124D8B4(v34, type metadata accessor for CRLUSDZItemCRDTData);
  sub_10124D8B4(v32, type metadata accessor for CRLUSDZItemCRDTData);
  return v37 & 1;
}

uint64_t sub_10124B484(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CRLUSDZItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = qword_101AD9460;
  swift_beginAccess();
  if (a2)
  {
    sub_1008038F0(v2 + v10, v6, type metadata accessor for CRLUSDZItemCRDTData);
    sub_10124CD30(&qword_101A01EF8, type metadata accessor for CRLUSDZItemCRDTData);
    CRType.copy(renamingReferences:)();
    sub_10124D8B4(v6, type metadata accessor for CRLUSDZItemCRDTData);
  }

  else
  {
    sub_1008038F0(v2 + v10, v9, type metadata accessor for CRLUSDZItemCRDTData);
  }

  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v11, qword_101AD6348);
  sub_10124CD30(&qword_101A12910, type metadata accessor for CRLUSDZItemCRDTData);
  v12 = CRDT.serializedData(_:version:)();
  sub_10124D8B4(v9, type metadata accessor for CRLUSDZItemCRDTData);
  return v12;
}

uint64_t sub_10124B6D4(_UNKNOWN ****a1)
{
  v3 = type metadata accessor for CRLUSDZItemCRDTData(0);
  __chkstk_darwin(v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  if (*a1 == &off_101A2E658)
  {
    v9 = qword_101AD9460;
    swift_beginAccess();
    sub_1008038F0(v1 + v9, v8, type metadata accessor for CRLUSDZItemCRDTData);
    v10 = qword_101AD9460;
    swift_beginAccess();
    sub_1008038F0(a1 + v10, v5, type metadata accessor for CRLUSDZItemCRDTData);
    sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);
    v11 = CRStruct_1.hasDelta(from:)();
    sub_10124D8B4(v5, type metadata accessor for CRLUSDZItemCRDTData);
    sub_10124D8B4(v8, type metadata accessor for CRLUSDZItemCRDTData);
    return v11 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10124B8EC(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v27 = type metadata accessor for CRLUSDZItemCRDTData(0);
  __chkstk_darwin(v27);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_1005B981C(&qword_101A2EBA0);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = qword_101AD9460;
    swift_beginAccess();
    sub_1008038F0(v2 + v15, v7, type metadata accessor for CRLUSDZItemCRDTData);
    v16 = qword_101AD9460;
    swift_beginAccess();
    sub_1008038F0(v14 + v16, v4, type metadata accessor for CRLUSDZItemCRDTData);
    sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);

    CRStruct_1.delta(_:from:)();
    sub_10124D8B4(v4, type metadata accessor for CRLUSDZItemCRDTData);
    sub_10124D8B4(v7, type metadata accessor for CRLUSDZItemCRDTData);
    v17 = v26;
    sub_10000BE14(v12, v26, &qword_101A2EBA0);
    v18 = sub_1005B981C(&qword_101A2EB58);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_10000CAAC(v12, &qword_101A2EBA0);

      sub_10000CAAC(v17, &qword_101A2EBA0);
      return 0;
    }

    else
    {
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v21, qword_101AD6348);
      sub_10001A2F8(&qword_101A2EB50, &qword_101A2EB58);
      v22 = v29;
      v23 = PartialCRDT.deltaSerializedData(_:version:)();
      if (v22)
      {
        sub_10000CAAC(v12, &qword_101A2EBA0);

        return (*(v19 + 8))(v17, v18);
      }

      else
      {
        v24 = v23;
        sub_10000CAAC(v12, &qword_101A2EBA0);

        (*(v19 + 8))(v17, v18);
        return v24;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10124BDA0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v33 = *v3;
  v6 = type metadata accessor for UUID();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &unk_1014D5C28;
  v10 = sub_1005B981C(&qword_101A2EB58);
  v34 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  sub_100024E98(a1, a2);
  sub_10001A2F8(&qword_101A2EB50, &qword_101A2EB58);
  v13 = v35;
  PartialCRDT.init(serializedData:)();
  if (!v13)
  {
    v31 = v8;
    v35 = 0;
    swift_beginAccess();
    type metadata accessor for CRLUSDZItemCRDTData(0);
    sub_10124CD30(&qword_101A01EE0, type metadata accessor for CRLUSDZItemCRDTData);
    LOBYTE(v9) = CRStruct_1.merge(delta:)();
    swift_endAccess();
    if ((v9 & 1) == 0)
    {
      v14 = v3;
      v30 = v12;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v29 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v16 = *(*v3 + 744);
      swift_beginAccess();
      v17 = v32;
      v18 = v3 + v16;
      v19 = v31;
      (*(v32 + 16))(v31, v18, v6);
      v20 = UUID.uuidString.getter();
      v22 = v21;
      (*(v17 + 8))(v19, v6);
      *(inited + 56) = &type metadata for String;
      v23 = sub_1000053B0();
      *(inited + 64) = v23;
      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v36 = v14;

      v24 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v23;
      *(inited + 72) = v24;
      *(inited + 80) = v25;
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v29, &_mh_execute_header, v26, "Delta failed to apply for %{public}@%{public}@", 46, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v12 = v30;
    }

    (*(v34 + 8))(v12, v10);
  }

  return v9 & 1;
}

unint64_t sub_10124C1C8()
{
  v33 = type metadata accessor for CRLAssetData();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v26 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v3 = &v25 - v2;
  v30 = type metadata accessor for CRLUSDZAssetDataStruct(0) - 8;
  __chkstk_darwin(v30);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  sub_1005B981C(&qword_1019F5F50);
  v8 = sub_1005B981C(&qword_101A22780);
  v9 = *(v8 - 8);
  v28 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10146BDE0;
  v32 = v11;
  v12 = v11 + v10;
  v27 = *(v8 + 48);
  *v12 = 2053403509;
  *(v12 + 8) = 0xE400000000000000;
  swift_beginAccess();
  sub_1005B981C(&unk_101A2EF00);
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  sub_1008038F0(v7, v3, type metadata accessor for CRLAssetData);
  sub_10124D8B4(v7, type metadata accessor for CRLUSDZAssetDataStruct);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = v27;
  v25 = *(v14 + 16);
  v25(&v27[v12], v3, v13);
  sub_10124D8B4(v3, type metadata accessor for CRLAssetData);
  v27 = *(v14 + 56);
  (v27)(&v15[v12], 0, 1, v13);
  v16 = (v12 + v28);
  v28 = v8;
  v17 = *(v8 + 48);
  *v16 = 0x726574736F70;
  *(v16 + 1) = 0xE600000000000000;
  swift_beginAccess();
  v18 = v29;
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  v19 = *(v30 + 28);
  if ((*(v31 + 48))(v18 + v19, 1, v33))
  {
    sub_10124D8B4(v18, type metadata accessor for CRLUSDZAssetDataStruct);
    v20 = 1;
  }

  else
  {
    v21 = v18 + v19;
    v22 = v26;
    sub_1008038F0(v21, v26, type metadata accessor for CRLAssetData);
    sub_10124D8B4(v18, type metadata accessor for CRLUSDZAssetDataStruct);
    v25(&v16[v17], v22, v13);
    sub_10124D8B4(v22, type metadata accessor for CRLAssetData);
    v20 = 0;
  }

  (v27)(&v16[v17], v20, 1, v13);
  v23 = sub_100BD5554(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

unint64_t sub_10124C6CC(uint64_t (*a1)(__n128), unint64_t *a2)
{
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1(v6);
  swift_beginAccess();
  sub_1005B981C(&unk_101A2EF00);
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  v10 = &v8[*(v5 + 40)];
  if (v10[8])
  {
    sub_10124D8B4(v8, type metadata accessor for CRLUSDZAssetDataStruct);
    v11 = v9;
  }

  else
  {
    v12 = *v10;
    sub_10124D8B4(v8, type metadata accessor for CRLUSDZAssetDataStruct);
    v11 = *a2;
    if (v12)
    {
      v11 = 0x3000400000000;
    }
  }

  if (v11 <= v9)
  {
    return v9;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_10124C84C()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A226A0);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10124D8B4(v0 + qword_101AD9460, type metadata accessor for CRLUSDZItemCRDTData);

  return swift_deallocClassInstance();
}

uint64_t sub_10124C964()
{
  result = type metadata accessor for CRLUSDZItemCRDTData(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10124CA3C()
{
  sub_10124CAEC();
  if (v0 <= 0x3F)
  {
    sub_1005FEEE8(319, &qword_1019F48F8, &type metadata accessor for AnyCRDT);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10124CAEC()
{
  if (!qword_101A2E9F8)
  {
    type metadata accessor for CRLUSDZAssetDataStruct(255);
    sub_10124CD30(&qword_101A2AF60, type metadata accessor for CRLUSDZAssetDataStruct);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_101A2E9F8);
    }
  }
}

void sub_10124CBC8()
{
  type metadata accessor for CRLAssetData();
  if (v0 <= 0x3F)
  {
    sub_1005FEE44();
    if (v1 <= 0x3F)
    {
      sub_1005FEE9C(319, &qword_101A2EA90);
      if (v2 <= 0x3F)
      {
        sub_1005FEE9C(319, &unk_101A2EA98);
        if (v3 <= 0x3F)
        {
          sub_1005FEEE8(319, &qword_1019F5D58, &type metadata accessor for AnyCRValue);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10124CD30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10124CE54()
{
  result = qword_101A2EAF0;
  if (!qword_101A2EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2EAF0);
  }

  return result;
}

unint64_t sub_10124CEAC()
{
  result = qword_101A2EAF8;
  if (!qword_101A2EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2EAF8);
  }

  return result;
}

unint64_t sub_10124CF04()
{
  result = qword_101A2EB00;
  if (!qword_101A2EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2EB00);
  }

  return result;
}

unint64_t sub_10124CF5C()
{
  result = qword_101A2EB08;
  if (!qword_101A2EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2EB08);
  }

  return result;
}

unint64_t sub_10124CFB4()
{
  result = qword_101A2EB10;
  if (!qword_101A2EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2EB10);
  }

  return result;
}

unint64_t sub_10124D00C()
{
  result = qword_101A2EB18;
  if (!qword_101A2EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2EB18);
  }

  return result;
}

uint64_t sub_10124D3B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLAssetData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = sub_1005B981C(&unk_101A01EC0);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_28;
  }

  v14 = *(v4 + 20);
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v15 == *v17 && v16 == v17[1];
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_100B3216C(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0)
  {
    goto LABEL_28;
  }

  v58 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  v19 = *(v58 + 20);
  v20 = a1;
  v21 = *(v11 + 48);
  v56 = v20;
  sub_10000BE14(v20 + v19, v13, &unk_101A1B880);
  v57 = a2;
  sub_10000BE14(a2 + v19, &v13[v21], &unk_101A1B880);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_10000CAAC(v13, &unk_101A1B880);
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  sub_10000BE14(v13, v10, &unk_101A1B880);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    sub_10124D8B4(v10, type metadata accessor for CRLAssetData);
LABEL_17:
    v39 = &unk_101A01EC0;
LABEL_27:
    sub_10000CAAC(v13, v39);
    goto LABEL_28;
  }

  sub_1006008F0(&v13[v21], v7);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v40 = *(v4 + 20), v41 = *&v10[v40], v42 = *&v10[v40 + 8], v43 = &v7[v40], v41 == *v43) ? (v44 = v42 == *(v43 + 1)) : (v44 = 0), !v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_10124D8B4(v7, type metadata accessor for CRLAssetData);
    sub_10124D8B4(v10, type metadata accessor for CRLAssetData);
    v39 = &unk_101A1B880;
    goto LABEL_27;
  }

  v45 = sub_100B3216C(*&v10[*(v4 + 24)], *&v7[*(v4 + 24)]);
  sub_10124D8B4(v7, type metadata accessor for CRLAssetData);
  sub_10124D8B4(v10, type metadata accessor for CRLAssetData);
  sub_10000CAAC(v13, &unk_101A1B880);
  if ((v45 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  v23 = v57;
  v24 = v58;
  v25 = *(v58 + 24);
  v26 = v56;
  v27 = *(v56 + v25);
  v55 = *(v57 + v25);
  v28 = CRL3DRotation.rawValue.getter(v27);
  v30 = v29;
  v31 = CRL3DRotation.rawValue.getter(v55);
  v33 = v32;
  v34 = sub_1009F9488(v28, v30, v31, v32);
  sub_10002640C(v31, v33);
  sub_10002640C(v28, v30);
  if ((v34 & 1) == 0)
  {
    goto LABEL_28;
  }

  v35 = v24[7];
  v36 = (v26 + v35);
  v37 = *(v26 + v35 + 16);
  v38 = v23 + v35;
  if (v37)
  {
    if (*(v38 + 16))
    {
      goto LABEL_35;
    }

LABEL_28:
    v46 = 0;
    return v46 & 1;
  }

  v46 = 0;
  if ((*(v38 + 16) & 1) == 0 && COERCE_FLOAT(*v36) == COERCE_FLOAT(*v38) && COERCE_FLOAT(HIDWORD(*v36)) == COERCE_FLOAT(HIDWORD(*v38)))
  {
    v48 = v36[1];
    v49 = *(v38 + 8);
    if (*&v48 == *&v49 && *(&v48 + 1) == *(&v49 + 1))
    {
LABEL_35:
      v50 = v24[8];
      v51 = (v26 + v50);
      v52 = *(v26 + v50 + 8);
      v53 = (v23 + v50);
      v54 = *(v23 + v50 + 8);
      if (v52)
      {
        if (v54)
        {
LABEL_41:
          v46 = sub_100B3216C(*(v26 + v24[9]), *(v23 + v24[9]));
          return v46 & 1;
        }
      }

      else
      {
        if (*v51 != *v53)
        {
          LOBYTE(v54) = 1;
        }

        if ((v54 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_28;
    }
  }

  return v46 & 1;
}

uint64_t sub_10124D8B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10124D914(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7341726574736F70 && a2 == 0xEF61746144746573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69646E756F62 && a2 == 0xEC00000074636552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_10124DB40()
{
  result = qword_101A2EBA8;
  if (!qword_101A2EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2EBA8);
  }

  return result;
}

uint64_t type metadata accessor for CRLCommandHistoryItem()
{
  result = qword_101A2EC08;
  if (!qword_101A2EC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10124DC08()
{
  sub_10124DDA0(319, &qword_101A2EC18, type metadata accessor for CRLUndoingAction, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10124DDA0(319, &qword_101A2EC20, sub_10124DD54, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        sub_10124DDA0(319, &unk_101A2EC30, type metadata accessor for CRLCommand, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10124DD54()
{
  result = qword_101A2EC28;
  if (!qword_101A2EC28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A2EC28);
  }

  return result;
}

void sub_10124DDA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10124DE14(uint64_t a1)
{
  v4 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v7 - 8);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v33 - v10;
  __chkstk_darwin(v11);
  v42 = &v33 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  v44 = a1;
  if (*(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    v36 = v19;
    v39 = v2;
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_100C03B78(v17, v21);
    v38 = v6;
    v22 = *(v14 + 8);
    v22(v17, v13);
    (*(v14 + 16))(v17, v21, v13);
    CRRegister.wrappedValue.setter();
    v34 = v22;
    v35 = v14 + 8;
    v22(v21, v13);
    v23 = v14;
    sub_1005B981C(&unk_101A226A0);
    sub_1005B981C(&qword_101A01F08);
    v37 = v1;
    v24 = v38;
    CRRegister.wrappedValue.getter();
    v25 = v24;
    v26 = v24;
    v27 = v42;
    sub_10000BE14(v25, v42, &qword_1019F6990);
    sub_1012511E0(v26, type metadata accessor for CRLBoardItemParentAffinity);
    if ((*(v23 + 48))(v27, 1, v13) == 1)
    {
      sub_10000CAAC(v27, &qword_1019F6990);
    }

    else
    {
      v28 = v36;
      (*(v23 + 32))(v36, v27, v13);
      v29 = v41;
      sub_100C03B78(v28, v41);
      (*(v23 + 56))(v29, 0, 1, v13);
      v30 = v40;
      sub_10000BE14(v29, v40, &qword_1019F6990);
      v31 = CRRegister.wrappedValue.modify();
      sub_10002C638(v30, v32, &qword_1019F6990);
      v31(v43, 0);
      sub_10000CAAC(v29, &qword_1019F6990);
      v34(v28, v13);
    }
  }
}

void sub_10124E270(uint64_t a1)
{
  v4 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v7 - 8);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v33 - v10;
  __chkstk_darwin(v11);
  v42 = &v33 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  v44 = a1;
  if (*(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    v36 = v19;
    v39 = v2;
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_100C03B78(v17, v21);
    v38 = v6;
    v22 = *(v14 + 8);
    v22(v17, v13);
    (*(v14 + 16))(v17, v21, v13);
    CRRegister.wrappedValue.setter();
    v34 = v22;
    v35 = v14 + 8;
    v22(v21, v13);
    v23 = v14;
    sub_1005B981C(&unk_101A0F400);
    sub_1005B981C(&unk_101A0F410);
    v37 = v1;
    v24 = v38;
    CRRegister.wrappedValue.getter();
    v25 = v24;
    v26 = v24;
    v27 = v42;
    sub_10000BE14(v25, v42, &qword_1019F6990);
    sub_1012511E0(v26, type metadata accessor for CRLShapeItemParentAffinity);
    if ((*(v23 + 48))(v27, 1, v13) == 1)
    {
      sub_10000CAAC(v27, &qword_1019F6990);
    }

    else
    {
      v28 = v36;
      (*(v23 + 32))(v36, v27, v13);
      v29 = v41;
      sub_100C03B78(v28, v41);
      (*(v23 + 56))(v29, 0, 1, v13);
      v30 = v40;
      sub_10000BE14(v29, v40, &qword_1019F6990);
      v31 = CRRegister.wrappedValue.modify();
      sub_10002C638(v30, v32, &qword_1019F6990);
      v31(v43, 0);
      sub_10000CAAC(v29, &qword_1019F6990);
      v34(v28, v13);
    }
  }
}

id sub_10124E6CC(unsigned __int8 a1)
{
  v2 = objc_allocWithZone(CRLColor);
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = 0.423529412;
        v4 = 0.411764706;
      }

      else
      {
        v3 = 0.68627451;
        v4 = 0.156862745;
      }

LABEL_13:
      v5 = 1.0;
      v6 = 1.0;
      goto LABEL_16;
    }

    v5 = 0.91372549;
    v3 = 0.501960784;
  }

  else
  {
    if (a1 <= 4u)
    {
      if (a1 != 3)
      {
        v5 = 0.501960784;
        v3 = 0.870588235;
        v4 = 0.564705882;
        v6 = 1.0;
        goto LABEL_16;
      }

      v3 = 0.882352941;
      v4 = 0.423529412;
      goto LABEL_13;
    }

    if (a1 != 5)
    {
      v5 = 0.811764706;
      v6 = 1.0;
      v3 = 0.811764706;
      v4 = 0.811764706;
      goto LABEL_16;
    }

    v5 = 0.392156863;
    v3 = 0.854901961;
  }

  v4 = 1.0;
  v6 = 1.0;
LABEL_16:
  v7 = [v2 initWithRed:v5 green:v3 blue:v4 alpha:v6];
  v8 = [objc_allocWithZone(CRLColorFill) initWithColor:v7];

  return v8;
}

char *sub_10124E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v47 = a2;
  v52 = type metadata accessor for UUID();
  v48 = *(v52 - 8);
  __chkstk_darwin(v52);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v12 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v12 - 8);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v51 = &v45 - v15;
  __chkstk_darwin(v16);
  v54 = &v45 - v17;
  __chkstk_darwin(v18);
  v50 = &v45 - v19;
  __chkstk_darwin(v20);
  v22 = &v45 - v21;
  v53 = v4;
  type metadata accessor for CRLWPStickyNoteItemData(0);
  swift_dynamicCastClassUnconditional();

  v23 = sub_100913904(1);

  v24 = v23 + *(*v23 + 736);
  swift_beginAccess();
  sub_10000BE14(v24, v11, &unk_101A0F400);
  v45 = v9;

  v25 = sub_1005B981C(&unk_101A0F410);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v11, &unk_101A0F400);
  sub_10000BE14(v8, v22, &qword_1019F6990);
  sub_1012511E0(v8, type metadata accessor for CRLShapeItemParentAffinity);
  swift_beginAccess();
  v26 = v24;
  v27 = v57;
  sub_10124E270(v55);
  swift_endAccess();
  if (v27)
  {

    sub_10000CAAC(v22, &qword_1019F6990);
  }

  else
  {
    v55 = v25;
    v57 = v22;
    sub_10000BE14(v24, v11, &unk_101A0F400);
    sub_1005B981C(&unk_1019F5250);
    v28 = v46;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v11, &unk_101A0F400);
    v29 = *(*v23 + 744);
    swift_beginAccess();
    v30 = v48;
    v31 = v28;
    v32 = v52;
    (*(v48 + 40))(v23 + v29, v31, v52);
    swift_endAccess();
    v33 = v54;
    sub_10000BE14(v47, v54, &qword_1019F6990);
    v34 = *(v30 + 48);
    if (v34(v33, 1, v32) == 1)
    {
      v35 = v50;
      sub_10000BE14(v57, v50, &qword_1019F6990);
      v36 = v34(v54, 1, v32);
      v37 = v51;
      v38 = v49;
      if (v36 != 1)
      {
        sub_10000CAAC(v54, &qword_1019F6990);
      }
    }

    else
    {
      v35 = v50;
      (*(v30 + 32))(v50, v54, v32);
      (*(v30 + 56))(v35, 0, 1, v32);
      v37 = v51;
      v38 = v49;
    }

    sub_10000BE14(v35, v37, &qword_1019F6990);
    swift_beginAccess();
    sub_10000BE14(v37, v38, &qword_1019F6990);
    v39 = v37;
    v40 = CRRegister.wrappedValue.modify();
    sub_10002C638(v38, v41, &qword_1019F6990);
    v40(v56, 0);
    sub_10000CAAC(v39, &qword_1019F6990);
    swift_endAccess();

    sub_10000CAAC(v35, &qword_1019F6990);
    v42 = *(v53 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v43 = objc_allocWithZone(type metadata accessor for CRLWPStickyNoteItem());
    v26 = sub_100AB0A4C(v42, v23);
    sub_10000CAAC(v57, &qword_1019F6990);
  }

  return v26;
}

char *sub_10124EF20()
{
  v1 = v0;
  type metadata accessor for CRLWPStickyNoteItemData(0);
  swift_dynamicCastClassUnconditional();

  v2 = sub_100913904(0);

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v4 = objc_allocWithZone(type metadata accessor for CRLWPStickyNoteItem());
  return sub_100AB0A4C(v3, v2);
}

id sub_10124EFD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPStickyNoteItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLWPStickyNoteItem()
{
  result = qword_101A2EC98;
  if (!qword_101A2EC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10124F0A8()
{
  result = qword_101A2ECA8;
  if (!qword_101A2ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2ECA8);
  }

  return result;
}

uint64_t sub_10124F0FC(void *a1, char *a2, void *a3, void *a4, void *a5, __int128 *a6, int a7)
{
  LODWORD(v225) = a7;
  v206 = a6;
  v207 = a1;
  v224 = a5;
  v221 = a4;
  v226 = a3;
  v8 = sub_1005B981C(&unk_101A0D9B0);
  v9 = __chkstk_darwin(v8 - 8);
  v203 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v201 = &v181 - v11;
  v12 = sub_1005B981C(&unk_101A0B1C0);
  v13 = __chkstk_darwin(v12 - 8);
  v227 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v233 = &v181 - v15;
  v16 = type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  v17 = *(v16 - 8);
  v229 = v16;
  v230 = v17;
  v18 = __chkstk_darwin(v16);
  v202 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v231 = &v181 - v20;
  v21 = sub_1005B981C(&unk_101A0D9C0);
  v193 = *(v21 - 8);
  v194 = v21;
  __chkstk_darwin(v21);
  v192 = &v181 - v22;
  v23 = sub_1005B981C(&unk_101A10680);
  v190 = *(v23 - 8);
  v191 = v23;
  __chkstk_darwin(v23);
  v189 = &v181 - v24;
  v25 = sub_1005B981C(&unk_101A0D9D0);
  v186 = *(v25 - 8);
  v187 = v25;
  __chkstk_darwin(v25);
  v185 = &v181 - v26;
  v27 = sub_1005B981C(&unk_101A10690);
  v183 = *(v27 - 8);
  v184 = v27;
  __chkstk_darwin(v27);
  v182 = &v181 - v28;
  v188 = type metadata accessor for CRLShapeItemCRDTData(0);
  v29 = __chkstk_darwin(v188);
  v248 = &v181 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v234 = &v181 - v31;
  v252 = type metadata accessor for CRLWPStorageCRDTData(0);
  v195 = *(v252 - 8);
  v32 = __chkstk_darwin(v252);
  v196 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v247 = &v181 - v34;
  v35 = sub_1005B981C(&unk_1019FFD10);
  v238 = *(v35 - 8);
  v239 = v35;
  v36 = __chkstk_darwin(v35);
  v223 = &v181 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v237 = &v181 - v38;
  v228 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  v39 = __chkstk_darwin(v228);
  v204 = &v181 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v205 = &v181 - v42;
  v43 = __chkstk_darwin(v41);
  v246 = &v181 - v44;
  __chkstk_darwin(v43);
  v236 = &v181 - v45;
  v222 = type metadata accessor for CRLWPStickyNoteItemCRDTData(0) - 8;
  v46 = __chkstk_darwin(v222);
  v235 = &v181 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v250 = &v181 - v48;
  v49 = sub_1005B981C(&unk_101A09DC0);
  v219 = *(v49 - 8);
  v220 = v49;
  __chkstk_darwin(v49);
  v218 = &v181 - v50;
  v51 = type metadata accessor for UUID();
  v52 = *(v51 - 8);
  v53 = __chkstk_darwin(v51);
  v217 = &v181 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v245 = &v181 - v55;
  v244 = type metadata accessor for CRLShapeItemParentAffinity(0);
  v56 = __chkstk_darwin(v244);
  v216 = &v181 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v215 = &v181 - v59;
  __chkstk_darwin(v58);
  v243 = &v181 - v60;
  v61 = sub_1005B981C(&unk_101A09DD0);
  v62 = __chkstk_darwin(v61 - 8);
  v241 = (&v181 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v62);
  v65 = &v181 - v64;
  v66 = sub_1005B981C(&qword_1019F6990);
  v67 = __chkstk_darwin(v66 - 8);
  v69 = &v181 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v71 = &v181 - v70;
  v210 = type metadata accessor for CRLBoardItemParentAffinity() - 8;
  v72 = __chkstk_darwin(v210);
  v211 = (&v181 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v72);
  v242 = &v181 - v74;
  v212 = sub_1005B981C(&unk_101A0F400) - 8;
  v75 = __chkstk_darwin(v212);
  v198 = &v181 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __chkstk_darwin(v75);
  v197 = &v181 - v78;
  v79 = __chkstk_darwin(v77);
  v199 = &v181 - v80;
  v81 = __chkstk_darwin(v79);
  v200 = &v181 - v82;
  v83 = __chkstk_darwin(v81);
  v232 = &v181 - v84;
  __chkstk_darwin(v83);
  v249 = &v181 - v85;
  v251 = v52;
  v86 = *(v52 + 16);
  v213 = v52 + 16;
  v214 = v86;
  v208 = a2;
  v86(v71, a2, v51);
  v87 = *(v52 + 56);
  v240 = v51;
  v87(v71, 0, 1, v51);
  v270 = 1;
  v88 = type metadata accessor for CRLTableAnchorHint();
  v89 = *(*(v88 - 8) + 56);
  v209 = v65;
  v89(v65, 1, 1, v88);
  sub_101271CCC(v221, v269);
  sub_10000BE14(v71, v69, &qword_1019F6990);
  sub_10000BE14(v65, v241, &unk_101A09DD0);
  v90 = v242;
  v87(v242, 1, 1, v51);
  v91 = v210;
  v92 = v90;
  v93 = v90 + *(v210 + 32);
  v94 = v90 + *(v210 + 36);
  v95 = *(v210 + 36);
  v89(v94, 1, 1, v88);
  *(v92 + *(v91 + 40)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v69, v92, &qword_1019F6990);
  sub_10000CAAC(v209, &unk_101A09DD0);
  sub_10000CAAC(v71, &qword_1019F6990);
  v96 = (v92 + *(v91 + 28));
  v97 = v269[1];
  *v96 = v269[0];
  v96[1] = v97;
  *v93 = 0u;
  *(v93 + 16) = 0u;
  *(v93 + 32) = 0u;
  *(v93 + 48) = 0u;
  *(v93 + 64) = v270;
  sub_10002C638(v241, v92 + v95, &unk_101A09DD0);
  v98 = v211;
  sub_101251178(v92, v211, type metadata accessor for CRLBoardItemParentAffinity);
  v99 = v243;
  sub_101251178(v98, v243, type metadata accessor for CRLBoardItemParentAffinity);
  v100 = v244;
  sub_100C3D740(v224, &v99[*(v244 + 20)]);
  v101 = v100[6];
  v102 = type metadata accessor for CRLPKStrokePathData();
  (*(*(v102 - 8) + 56))(&v99[v101], 1, 1, v102);
  v103 = &v99[v100[7]];
  *v103 = 0;
  v103[8] = -1;
  *&v99[v100[8]] = _swiftEmptyDictionarySingleton;
  v241 = type metadata accessor for CRLBoardItemParentAffinity;
  sub_1012511E0(v98, type metadata accessor for CRLBoardItemParentAffinity);
  v211 = type metadata accessor for CRLShapeItemParentAffinity;
  v104 = v99;
  v105 = v215;
  sub_101251178(v104, v215, type metadata accessor for CRLShapeItemParentAffinity);
  sub_1005D0C00(&v271);
  v106 = v245;
  UUID.init()();
  v107 = v212;
  v224 = *(v212 + 60);
  v299 = v275;
  v300 = v276;
  v301 = v277;
  v302 = v278;
  v295 = v271;
  v296 = v272;
  v297 = v273;
  v298 = v274;
  v221 = sub_1005B981C(&unk_101A09DE0);
  sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &unk_1014897A0, sub_10074933C);
  v108 = v249;
  CRRegister.init(wrappedValue:)();
  *(v108 + *(v107 + 64)) = _swiftEmptyDictionarySingleton;
  v109 = v240;
  v214(v217, v106, v240);
  CRRegister.init(_:)();
  sub_101251178(v105, v216, v211);
  sub_1012510B8();
  CRRegister.init(_:)();
  LOBYTE(v295) = 0;
  CRRegister.init(_:)();
  LOBYTE(v295) = 0;
  CRRegister.init(_:)();
  *&v295 = 0;
  *(&v295 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v299 = v275;
  v300 = v276;
  v301 = v277;
  v302 = v278;
  v295 = v271;
  v296 = v272;
  v297 = v273;
  v298 = v274;
  v110 = v218;
  CRRegister.init(_:)();
  v111 = *(v251 + 8);
  v251 += 8;
  v221 = v111;
  (v111)(v245, v109);
  sub_1012511E0(v105, type metadata accessor for CRLShapeItemParentAffinity);
  sub_1012511E0(v243, type metadata accessor for CRLShapeItemParentAffinity);
  v112 = v238;
  sub_1012511E0(v242, v241);
  v113 = v239;
  (*(v219 + 40))(v224 + v108, v110, v220);
  v114 = v250;
  *(v250 + *(v222 + 28)) = _swiftEmptyDictionarySingleton;
  sub_100691540(v114);
  v115 = sub_10124E6CC(v225);
  v116 = sub_10068D144();
  v245 = v115;
  v117 = v226;
  v118 = v223;
  v244 = v116;
  CRAttributedString.init(_:)();
  v119 = v237;
  (*(v112 + 32))(v237, v118, v113);
  v120 = [v117 length];
  v121 = swift_allocObject();
  *(v121 + 16) = v119;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_10068D198;
  *(v122 + 24) = v121;
  *&v297 = sub_10068D1A0;
  *(&v297 + 1) = v122;
  *&v295 = _NSConcreteStackBlock;
  *(&v295 + 1) = *"";
  *&v296 = sub_10110DB0C;
  *(&v296 + 1) = &unk_1018B9600;
  v123 = _Block_copy(&v295);

  [v117 enumerateAttributesInRange:0 options:v120 usingBlock:{0, v123}];
  _Block_release(v123);
  LOBYTE(v120) = swift_isEscapingClosureAtFileLocation();

  if (v120)
  {
    __break(1u);
  }

  else
  {
    v243 = v117;
    v125 = v247;
    (*(v112 + 16))();
    v126 = v252;
    CRAttributedString.init(_:)();
    *(v125 + *(v126 + 24)) = _swiftEmptyDictionarySingleton;
    v245 = v245;
    sub_101247234(v245, v279);
    sub_1005D0BD8(&v280);
    v301 = 0u;
    v300 = 0u;
    v299 = 0u;
    v298 = 0u;
    v297 = 0u;
    v296 = 0u;
    v295 = 0u;
    v242 = sub_1005B981C(&qword_1019FFF80);
    v241 = sub_100A49DD0(&qword_101A0D9E0, &qword_1019FFF80, &unk_101489000, sub_1006BD1F0);
    v127 = v234;
    CRRegister.init(wrappedValue:)();
    v128 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
    v226 = v128[5];
    v307 = v292;
    v308 = v293;
    *&v309 = v294;
    v303 = v288;
    v304 = v289;
    v306 = v291;
    v305 = v290;
    v299 = v284;
    v300 = v285;
    v302 = v287;
    v301 = v286;
    v295 = v280;
    v296 = v281;
    v298 = v283;
    v297 = v282;
    sub_1005B981C(&unk_101A106C0);
    sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
    CRRegister.init(wrappedValue:)();
    v224 = v128[6];
    *&v298 = 0;
    v297 = 0u;
    v296 = 0u;
    v295 = 0u;
    sub_1005B981C(&unk_101A0DA00);
    sub_100A49DD0(&unk_101A106E0, &unk_101A0DA00, &unk_101495050, sub_1009CDC80);
    CRRegister.init(wrappedValue:)();
    v129 = v128[7];
    *&v298 = 0;
    v297 = 0u;
    v296 = 0u;
    v295 = 0u;
    CRRegister.init(wrappedValue:)();
    v225 = v128[8];
    LODWORD(v295) = 0;
    CRRegister.init(wrappedValue:)();
    *(v127 + v128[9]) = _swiftEmptyDictionarySingleton;
    v299 = v279[4];
    v300 = v279[5];
    v301 = v279[6];
    v295 = v279[0];
    v296 = v279[1];
    v298 = v279[3];
    v297 = v279[2];
    v130 = v182;
    CRRegister.init(_:)();
    (*(v183 + 40))(v127, v130, v184);
    v307 = v292;
    v308 = v293;
    *&v309 = v294;
    v303 = v288;
    v304 = v289;
    v306 = v291;
    v305 = v290;
    v299 = v284;
    v300 = v285;
    v302 = v287;
    v301 = v286;
    v295 = v280;
    v296 = v281;
    v298 = v283;
    v297 = v282;
    v131 = v185;
    CRRegister.init(_:)();
    (*(v186 + 40))(v226 + v127, v131, v187);
    *&v298 = 0;
    v297 = 0u;
    v296 = 0u;
    v295 = 0u;
    v132 = v189;
    CRRegister.init(_:)();
    v133 = v191;
    v134 = *(v190 + 40);
    v134(v224 + v127, v132, v191);
    *&v298 = 0;
    v297 = 0u;
    v296 = 0u;
    v295 = 0u;
    CRRegister.init(_:)();
    v134((v127 + v129), v132, v133);
    LODWORD(v295) = 0;
    v135 = v192;
    CRRegister.init(_:)();
    (*(v193 + 40))(v127 + v225, v135, v194);
    *(v127 + *(v188 + 20)) = _swiftEmptyDictionarySingleton;
    LODWORD(v295) = 1092616192;
    v136 = v231;
    CRRegister.init(wrappedValue:)();
    v137 = v229;
    *&v295 = 1;
    BYTE8(v295) = 0;
    v138 = sub_1005B981C(&qword_1019F7D38);
    v225 = sub_101123AA4();
    v226 = v138;
    CRRegister.init(wrappedValue:)();
    LOBYTE(v295) = 1;
    CRRegister.init(wrappedValue:)();
    *(v136 + *(v137 + 28)) = _swiftEmptyDictionarySingleton;
    v241 = type metadata accessor for CRLShapeItemCRDTData;
    sub_101251178(v127, v248, type metadata accessor for CRLShapeItemCRDTData);
    v139 = v233;
    sub_101251178(v247, v233, type metadata accessor for CRLWPStorageCRDTData);
    v140 = v195;
    (*(v195 + 56))(v139, 0, 1, v252);
    v141 = v136;
    v142 = v201;
    sub_101251178(v141, v201, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    (*(v230 + 56))(v142, 0, 1, v137);
    v143 = v228;
    v144 = v246;
    v145 = &v246[*(v228 + 28)];
    sub_1006950BC(&v295);
    v265 = v307;
    v266 = v308;
    v267 = v309;
    v268 = v310;
    v261 = v303;
    v262 = v304;
    v263 = v305;
    v264 = v306;
    v257 = v299;
    v258 = v300;
    v259 = v301;
    v260 = v302;
    v253 = v295;
    v254 = v296;
    v255 = v297;
    v256 = v298;
    sub_1005B981C(&unk_101A0D830);
    sub_100A49DD0(&qword_1019F7DE8, &unk_101A0D830, &unk_101488F70, sub_100694290);
    v242 = v145;
    CRRegister.init(wrappedValue:)();
    *(v144 + *(v143 + 32)) = _swiftEmptyDictionarySingleton;
    sub_101251178(v248, v144, v241);
    v146 = v227;
    sub_10000BE14(v139, v227, &unk_101A0B1C0);
    v147 = *(v140 + 48);
    v148 = v142;
    if (v147(v146, 1, v252) == 1)
    {
      v149 = v196;
      CRAttributedString.init()();
      v150 = v252;
      CRAttributedString.init(_:)();
      *(v149 + *(v150 + 24)) = _swiftEmptyDictionarySingleton;
      v151 = v147(v146, 1, v150);
      v152 = v202;
      if (v151 != 1)
      {
        sub_10000CAAC(v227, &unk_101A0B1C0);
      }
    }

    else
    {
      v149 = v196;
      sub_101251110(v146, v196, type metadata accessor for CRLWPStorageCRDTData);
      v152 = v202;
    }

    v153 = v228;
    sub_101251110(v149, &v246[*(v228 + 20)], type metadata accessor for CRLWPStorageCRDTData);
    v154 = v203;
    sub_10000BE14(v148, v203, &unk_101A0D9B0);
    v155 = v229;
    v156 = *(v230 + 48);
    if (v156(v154, 1, v229) == 1)
    {
      LODWORD(v253) = 0;
      CRRegister.init(wrappedValue:)();
      *&v253 = 0;
      BYTE8(v253) = 0;
      CRRegister.init(wrappedValue:)();
      LOBYTE(v253) = 0;
      CRRegister.init(wrappedValue:)();
      *(v152 + *(v155 + 28)) = _swiftEmptyDictionarySingleton;
      if (v156(v154, 1, v155) != 1)
      {
        sub_10000CAAC(v154, &unk_101A0D9B0);
      }
    }

    else
    {
      sub_101251110(v154, v152, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    }

    v157 = v246;
    sub_101251110(v152, &v246[*(v153 + 24)], type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    v158 = v206[13];
    v265 = v206[12];
    v266 = v158;
    v267 = v206[14];
    v268 = *(v206 + 30);
    v159 = v206[9];
    v261 = v206[8];
    v262 = v159;
    v160 = v206[11];
    v263 = v206[10];
    v264 = v160;
    v161 = v206[5];
    v257 = v206[4];
    v258 = v161;
    v162 = v206[7];
    v259 = v206[6];
    v260 = v162;
    v163 = v206[1];
    v253 = *v206;
    v254 = v163;
    v164 = v206[3];
    v255 = v206[2];
    v256 = v164;
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.setter();

    sub_10000CAAC(v148, &unk_101A0D9B0);
    sub_10000CAAC(v233, &unk_101A0B1C0);
    sub_1012511E0(v248, type metadata accessor for CRLShapeItemCRDTData);
    sub_1012511E0(v231, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    sub_1012511E0(v247, type metadata accessor for CRLWPStorageCRDTData);
    v165 = v236;
    sub_101251110(v157, v236, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_1012511E0(v234, type metadata accessor for CRLShapeItemCRDTData);
    (*(v238 + 8))(v237, v239);
    v166 = v165;
    v167 = v250;
    sub_1009158F0(v166, v250);
    v168 = v232;
    sub_10000BE14(v249, v232, &unk_101A0F400);
    v169 = v167;
    v170 = v235;
    sub_101251178(v169, v235, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    *&v253 = 0x1000000000000;
    *(&v253 + 1) = 0x2000400000000;
    v254 = 0x1000000000000uLL;
    LOBYTE(v255) = 1;
    type metadata accessor for CRLWPStickyNoteItemData(0);
    v171 = swift_allocObject();
    sub_101251178(v170, v171 + qword_101AD6C38, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    v172 = v200;
    sub_10000BE14(v168, v200, &unk_101A0F400);
    v173 = v205;
    sub_101251178(v170, v205, type metadata accessor for CRLWPShapeItemCRDTData);
    v174 = v199;
    sub_10000BE14(v172, v199, &unk_101A0F400);
    v175 = v204;
    sub_101251178(v173, v204, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_101251178(v175, v171 + *(*v171 + 888), type metadata accessor for CRLWPShapeItemCRDTData);
    v176 = v197;
    sub_10000BE14(v174, v197, &unk_101A0F400);
    *(v171 + qword_101A27318) = 0;
    v177 = v198;
    sub_10000BE14(v176, v198, &unk_101A0F400);
    sub_10000BE14(v177, v171 + *(*v171 + 736), &unk_101A0F400);
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v177, &unk_101A0F400);
    sub_10000CAAC(v176, &unk_101A0F400);
    sub_1012511E0(v175, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_10000CAAC(v174, &unk_101A0F400);
    sub_1012511E0(v173, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_10000CAAC(v172, &unk_101A0F400);
    sub_1012511E0(v235, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    sub_10000CAAC(v232, &unk_101A0F400);
    v178 = sub_100747AF0(&v253, 2);
    v179 = objc_allocWithZone(type metadata accessor for CRLWPStickyNoteItem());
    v180 = sub_100AB0A4C(v207, v178);

    (v221)(v208, v240);
    sub_1012511E0(v236, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_10000CAAC(v249, &unk_101A0F400);
    sub_1012511E0(v250, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    return v180;
  }

  return result;
}

unint64_t sub_1012510B8()
{
  result = qword_101A106B0;
  if (!qword_101A106B0)
  {
    type metadata accessor for CRLShapeItemParentAffinity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A106B0);
  }

  return result;
}

uint64_t sub_101251110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_101251178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1012511E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_101251240(CGContext *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CGPathFillRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v31 = [Strong layout];
    [v31 boundsForStandardKnobs];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [objc_opt_self() bezierPathWithContinuousCornerRoundedRect:v10 cornerRadius:{v12, v14, v16, 10.0}];
    v19 = [v18 CGPath];

    if (v19)
    {
      CGContextSaveGState(a1);
      CGContextAddPath(a1, v19);
      (*(v5 + 104))(v7, enum case for CGPathFillRule.winding(_:), v4);
      CGContextRef.clip(using:)();
      (*(v5 + 8))(v7, v4);
      v20 = [*(v2 + OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_backgroundColor) CGColor];
      CGContextSetFillColorWithColor(a1, v20);

      [v9 naturalBounds];
      CGContextFillRect(a1, v33);
      sub_10125281C();
      sub_101253648();
      v21 = objc_allocWithZone(NSAttributedString);
      v22 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_1005CAB2C();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = [v21 initWithString:v22 attributes:isa];

      v25 = CTLineCreateWithAttributedString(v24);
      BoundsWithOptions = CTLineGetBoundsWithOptions(v25, 0);
      if (CGRectGetWidth(BoundsWithOptions) + 24.0 <= v15)
      {
        sub_101252610(a1, v11, v13, v15, v17);
      }

      else
      {
        sub_1012521AC(a1, v11, v13, v15, v17);
      }

      CGContextRestoreGState(a1);
      v27 = *(v2 + OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_asset);
      if (v27)
      {
        sub_100510F80(a1, v27);
      }

      else
      {
        if (qword_1019F22C0 != -1)
        {
          swift_once();
        }

        v28 = static OS_os_log.assetManagement;
        v29 = static os_log_type_t.error.getter();
        sub_100005404(v28, &_mh_execute_header, v29, "CRLUndowloadedAssetDrawingHelper: draw(in ctx) called without a valid Asset. This might mean your generated Image is not updating correctly", 139, 2, _swiftEmptyArrayStorage);
      }
    }

    else
    {

      v26 = v31;
    }
  }
}

CGImageRef sub_101251648()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:20.0];
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 systemImageNamed:v2 withConfiguration:v1];

  if (!v4)
  {

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return 0;
  }

  v6 = Strong;
  v7 = v4;
  v8 = [v6 canvas];

  if (!v8)
  {

    return 0;
  }

  [v8 contentsScale];
  v10 = v9;

  [v7 size];
  v13 = sub_10011F340(v11, v12, v10);
  v15 = v13;
  v16 = v14;
  if (v13 <= v14)
  {
    v13 = v14;
  }

  v17 = [v0 configurationWithPointSize:4 weight:v13];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v3 systemImageNamed:v18 withConfiguration:v17];

  if (v19)
  {
    v20 = [objc_opt_self() secondaryLabelColor];
    v21 = [v19 imageWithTintColor:v20];
  }

  else
  {

    v21 = 0;
  }

  v52.width = v15;
  v52.height = v16;
  UIGraphicsBeginImageContextWithOptions(v52, 0, v10);
  v22 = UIGraphicsGetCurrentContext();
  if (!v22)
  {
    v50 = v21;
    v49 = objc_opt_self();
    v27 = [v49 _atomicIncrementAssertCount];
    v51 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v51);
    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    v29 = [v28 lastPathComponent];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v33 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v27;
    v35 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v35;
    v36 = sub_1005CF04C();
    *(inited + 104) = v36;
    *(inited + 72) = v48;
    *(inited + 136) = &type metadata for String;
    v37 = sub_1000053B0();
    *(inited + 112) = v30;
    *(inited + 120) = v32;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v37;
    *(inited + 152) = 203;
    v38 = v51;
    *(inited + 216) = v35;
    *(inited + 224) = v36;
    *(inited + 192) = v38;
    v39 = v48;
    v40 = v38;
    v41 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v42, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v49 handleFailureInFunction:v45 file:v46 lineNumber:203 isFatal:0 format:v47 args:v44];

    return 0;
  }

  v23 = v22;
  if (v21)
  {
    [v21 drawInRect:sub_10011ECB4()];
  }

  Image = CGBitmapContextCreateImage(v23);
  v25 = Image;
  UIGraphicsEndImageContext();
  [v7 size];

  return Image;
}

id sub_101251CA0(CGFloat a1, CGFloat a2, CGFloat a3, double a4)
{
  v47 = a4;
  sub_10125281C();
  sub_101253648();
  v7 = objc_allocWithZone(NSAttributedString);
  v8 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v7 initWithString:v8 attributes:isa];

  v11 = CTLineCreateWithAttributedString(v10);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v11, 0);
  x = BoundsWithOptions.origin.x;
  y = BoundsWithOptions.origin.y;
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  v16 = CGRectGetWidth(BoundsWithOptions);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v17 = CGRectGetHeight(v50);

  v18 = [objc_allocWithZone(CATextLayer) init];
  v19 = objc_opt_self();
  v20 = [v19 systemFontOfSize:14.0];
  v21 = [v20 fontDescriptor];
  v22 = [v21 fontDescriptorWithSymbolicTraits:2];

  if (v22)
  {
    [v20 pointSize];
    v23 = [v19 fontWithDescriptor:v22 size:?];

    v20 = v23;
  }

  [v18 setFont:{v20, *&v47}];

  v24 = [v19 systemFontOfSize:14.0];
  v25 = [v24 fontDescriptor];
  v26 = [v25 fontDescriptorWithSymbolicTraits:2];

  if (v26)
  {
    [v24 pointSize];
    v27 = [v19 fontWithDescriptor:v26 size:?];

    v24 = v27;
  }

  [v24 pointSize];
  v29 = v28;

  [v18 setFontSize:v29];
  v30 = [objc_opt_self() currentTraitCollection];
  v31 = [v30 accessibilityContrast];

  if (v31 == 1)
  {
    v32 = [objc_opt_self() labelColor];
  }

  else
  {
    v32 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.345098039 blue:0.37254902 alpha:1.0];
  }

  v33 = v32;
  v34 = a3 + -24.0;
  v35 = a3 + -24.0 < v16;
  if (a3 + -24.0 >= v16)
  {
    v36 = v17;
  }

  else
  {
    v36 = v17 + v17;
  }

  v37 = sub_100120414(a1, a2, a3, v48);
  v39 = v38 - v36 * 0.5;
  v40 = v37 - v34 * 0.5;
  v41 = [v33 CGColor];

  [v18 setForegroundColor:v41];
  sub_10125281C();
  sub_101253648();
  v42 = objc_allocWithZone(NSAttributedString);
  v43 = String._bridgeToObjectiveC()();

  v44 = Dictionary._bridgeToObjectiveC()().super.isa;

  v45 = [v42 initWithString:v43 attributes:v44];

  [v18 setString:v45];
  [v18 setWrapped:v35];
  [v18 setTruncationMode:kCATruncationEnd];
  [v18 setAlignmentMode:kCAAlignmentCenter];
  [v18 setBounds:{v40, v39, v34, v36}];
  return v18;
}

void sub_1012521AC(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  CGContextSaveGState(a1);
  v10 = sub_101251648();
  if (v10)
  {
    v12 = v11;
    v38 = v10;
    v13 = sub_100120414(a2, a3, a4, a5);
    sub_10011EC70(v13, v14, v12);
    CGContextRef.draw(_:in:byTiling:)();
    CGContextRestoreGState(a1);
  }

  else
  {
    v15 = objc_opt_self();
    v16 = [v15 _atomicIncrementAssertCount];
    v39 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v39);
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
    v25 = sub_100006370(0, &qword_1019F4D30);
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
    *(inited + 152) = 262;
    v28 = v39;
    *(inited + 216) = v25;
    *(inited + 224) = v26;
    *(inited + 192) = v28;
    v29 = v17;
    v30 = v28;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v15 handleFailureInFunction:v35 file:v36 lineNumber:262 isFatal:0 format:v37 args:v34];
  }
}

void sub_101252610(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a4 + -24.0;
  v10 = *(v5 + OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_type);
  sub_10125281C();
  sub_101253648();
  v11 = objc_allocWithZone(NSAttributedString);
  v12 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v11 initWithString:v12 attributes:isa];

  v15 = CTLineCreateWithAttributedString(v14);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v15, 0);
  x = BoundsWithOptions.origin.x;
  y = BoundsWithOptions.origin.y;
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  v20 = CGRectGetWidth(BoundsWithOptions);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v21 = CGRectGetHeight(v31);

  if (v9 < v20)
  {
    v21 = v21 + v21;
  }

  v22 = sub_100120414(a2, a3, a4, a5) - v9 * 0.5;
  if (v10 == 5)
  {
    v24 = v22;
  }

  else
  {
    v24 = 12.0;
  }

  v25 = v23 - v21 * 0.5;
  CGContextSaveGState(a1);
  v28 = sub_101251CA0(a2, a3, a4, a5);
  CGContextTranslateCTM(a1, v24, v25);
  [v28 drawInContext:a1];
  CGContextRestoreGState(a1);
}

uint64_t sub_10125281C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_101252C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUndownloadedAssetDrawingHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_101252CD8()
{
  result = qword_101A2ED00;
  if (!qword_101A2ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2ED00);
  }

  return result;
}

uint64_t sub_101252D2C()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 0;
  }

  type metadata accessor for CRLFileRep();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 2;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 3;
  }

  type metadata accessor for CRLURLRep();
  if (swift_dynamicCastClass())
  {
    return 4;
  }

  type metadata accessor for CRLUSDZRep(0);
  if (swift_dynamicCastClass())
  {
    return 5;
  }

  type metadata accessor for CRLSurfaceRep();
  if (swift_dynamicCastClass())
  {
    return 6;
  }

  else
  {
    return 7;
  }
}

id sub_101252E28(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_asset;
  *&v2[OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_asset] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_sidePadding] = 0x4028000000000000;
  v6 = OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_backgroundColor;
  *&v2[v6] = [objc_allocWithZone(CRLColor) initWithRed:0.819607843 green:0.819607843 blue:0.839215686 alpha:1.0];
  swift_unknownObjectWeakAssign();
  v7 = *&v2[v5];
  *&v2[v5] = a2;
  v8 = a2;

  v2[OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_type] = sub_101252D2C();
  v9 = &v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
  v10 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  v11 = *(v9 + 4);
  sub_100020E58(v9, v10);
  if (((*(v11 + 64))(v10, v11) & 1) == 0)
  {
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v61[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v61);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 102;
    v25 = v61[0];
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "Expected the asset to need downloading.", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v32 file:v33 lineNumber:102 isFatal:0 format:v34 args:v31];
  }

  v60.receiver = v3;
  v60.super_class = type metadata accessor for CRLUndownloadedAssetDrawingHelper();
  v35 = objc_msgSendSuper2(&v60, "init");
  type metadata accessor for CRLImageUndownloadedAssetDrawingHelper();
  if (([v35 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0 && *(v35 + OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_type) == 2)
  {
    v36 = objc_opt_self();
    v37 = [v36 _atomicIncrementAssertCount];
    v61[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v61);
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_10146CA70;
    *(v45 + 56) = &type metadata for Int32;
    *(v45 + 64) = &protocol witness table for Int32;
    *(v45 + 32) = v37;
    v46 = sub_100006370(0, &qword_1019F4D30);
    *(v45 + 96) = v46;
    v47 = sub_1005CF04C();
    *(v45 + 104) = v47;
    *(v45 + 72) = v38;
    *(v45 + 136) = &type metadata for String;
    v48 = sub_1000053B0();
    *(v45 + 112) = v41;
    *(v45 + 120) = v43;
    *(v45 + 176) = &type metadata for UInt;
    *(v45 + 184) = &protocol witness table for UInt;
    *(v45 + 144) = v48;
    *(v45 + 152) = 107;
    v49 = v61[0];
    *(v45 + 216) = v46;
    *(v45 + 224) = v47;
    *(v45 + 192) = v49;
    v50 = v38;
    v51 = v49;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v45);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v53, "Image undownloaded asset should be handled by CRLImageUndownloadedAssetDrawingHelper.", 85, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v54 = swift_allocObject();
    v54[2] = 8;
    v54[3] = 0;
    v54[4] = 0;
    v54[5] = 0;
    v55 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v58 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v56 file:v57 lineNumber:107 isFatal:0 format:v58 args:v55];
  }

  return v35;
}

unint64_t sub_101253648()
{
  sub_1005B981C(&unk_101A11100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  *(inited + 32) = NSFontAttributeName;
  v1 = objc_opt_self();
  v2 = NSFontAttributeName;
  v3 = [v1 systemFontOfSize:14.0];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits:2];

  if (v5)
  {
    [v3 pointSize];
    v6 = [v1 fontWithDescriptor:v5 size:?];

    v3 = v6;
  }

  v7 = sub_100006370(0, &qword_101A0DE60);
  *(inited + 40) = v3;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  v8 = objc_opt_self();
  v9 = NSForegroundColorAttributeName;
  v10 = [v8 currentTraitCollection];
  v11 = [v10 accessibilityContrast];

  if (v11 == 1)
  {
    v12 = [objc_opt_self() labelColor];
  }

  else
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.345098039 blue:0.37254902 alpha:1.0];
  }

  v13 = v12;
  v14 = [v12 CGColor];

  type metadata accessor for CGColor(0);
  v16 = v15;
  *(inited + 80) = v14;
  *(inited + 104) = v15;
  *(inited + 112) = NSBackgroundColorAttributeName;
  v17 = objc_opt_self();
  v18 = NSBackgroundColorAttributeName;
  v19 = [v17 clearColor];
  v20 = [v19 CGColor];

  *(inited + 144) = v16;
  *(inited + 120) = v20;
  v21 = sub_10006E310(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0DE70);
  swift_arrayDestroy();
  return v21;
}

id sub_1012538FC()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_asset;
  *&v0[OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_asset] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_sidePadding] = 0x4028000000000000;
  v2 = OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_backgroundColor;
  *&v0[v2] = [objc_allocWithZone(CRLColor) initWithRed:0.819607843 green:0.819607843 blue:0.839215686 alpha:1.0];
  swift_unknownObjectWeakAssign();
  v3 = *&v0[v1];
  *&v0[v1] = 0;

  v0[OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_type] = sub_101252D2C();
  v30.receiver = v0;
  v30.super_class = type metadata accessor for CRLUndownloadedAssetDrawingHelper();
  v4 = objc_msgSendSuper2(&v30, "init");
  type metadata accessor for CRLImageUndownloadedAssetDrawingHelper();
  if (([v4 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0 && *(v4 + OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_type) == 2)
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
    *(inited + 152) = 123;
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
    sub_100005404(v13, &_mh_execute_header, v22, "Image undownloaded asset should be handled by CRLImageUndownloadedAssetDrawingHelper.", 85, 2, _swiftEmptyArrayStorage);

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

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:123 isFatal:0 format:v27 args:v24];
  }

  return v4;
}