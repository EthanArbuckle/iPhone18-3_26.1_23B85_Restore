uint64_t sub_10001C448(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 32);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion;
  if (*(a1 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) != 1)
  {
    v34 = a4;
    *(a1 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) = 1;
    v32 = *(a1 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_runningboardAssertionExplanation + 8);
    v33 = a2;
    v16 = [objc_opt_self() currentProcess];
    sub_1005B981C(&unk_1019F4D60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10146CE00;
    v18 = String._bridgeToObjectiveC()();
    v19 = String._bridgeToObjectiveC()();
    v20 = [objc_opt_self() attributeWithDomain:v18 name:v19];

    *(v17 + 32) = v20;
    *(v17 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
    v21 = objc_allocWithZone(RBSAssertion);
    v22 = String._bridgeToObjectiveC()();
    sub_100006370(0, &unk_101A135C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v21 initWithExplanation:v22 target:v16 attributes:isa];

    v38[0] = 0;
    if ([v8 acquireWithError:v38])
    {
      v24 = v38[0];
LABEL_8:
      swift_beginAccess();
      v15 = sqlite3_open_v2(v33, (a3 + 16), v34, 0);
      swift_endAccess();
      [v8 invalidate];

      *(a1 + v14) = 0;
      return v15;
    }

    v25 = v38[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1019F2098 == -1)
    {
LABEL_7:
      v35 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v27 = Error.publicDescription.getter(v36, v37);
      v29 = v28;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v35, &_mh_execute_header, v30, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      sub_100005070(inited + 32);
      goto LABEL_8;
    }

LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  v15 = sqlite3_open_v2(a2, (a3 + 16), a4, 0);
  swift_endAccess();
  return v15;
}

uint64_t sub_10001C924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v10 = sub_10001CC04(v9, a2, a3);

  v11 = *(*(v10 + 16) + 32);
  *v8 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = *(v6 + 104);
  v13(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v14 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v16 = *(v10 + 16);

  v17 = sub_10001CEC4(v16, v10);

  v18 = *(*(v10 + 16) + 32);
  *v8 = v18;
  v13(v8, v12, v5);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  v15(v8, v5);
  if ((v20 & 1) == 0)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v21 = *(v10 + 24);
  if (v21)
  {
    sqlite3_finalize(v21);
    *(v10 + 24) = 0;
  }

  return v17;
}

uint64_t sub_10001CC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v23 = a2;
  v24 = type metadata accessor for String.Encoding();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v3;
  *(v3 + 24) = 0;
  v13 = (v3 + 24);
  v14 = *(a1 + 32);
  *v11 = v14;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v14)
  {
    *(v12 + 16) = a1;
    v26 = v23;
    v27 = v25;

    static String.Encoding.utf8.getter();
    sub_100017CD8();
    v17 = StringProtocol.cString(using:)();
    (*(v5 + 8))(v7, v24);

    swift_beginAccess();
    v18 = *(a1 + 16);
    if (v17)
    {
      v19 = (v17 + 32);
    }

    else
    {
      v19 = 0;
    }

    swift_beginAccess();
    v20 = sqlite3_prepare_v2(v18, v19, -1, v13, 0);
    swift_endAccess();

    if (v20)
    {
      sub_10089C7D0();
      swift_allocError();
      *v21 = v20;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      swift_willThrow();
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001CEC4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 32);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion;
  if (*(a1 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) == 1)
  {
    swift_beginAccess();
    return sqlite3_step(*(a2 + 24));
  }

  v31[1] = v2;
  v32 = a2;
  *(a1 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) = 1;
  v13 = [objc_opt_self() currentProcess];
  sub_1005B981C(&unk_1019F4D60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146CE00;
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() attributeWithDomain:v15 name:v16];

  *(v14 + 32) = v17;
  *(v14 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
  v18 = objc_allocWithZone(RBSAssertion);
  v19 = String._bridgeToObjectiveC()();
  sub_100006370(0, &unk_101A135C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v18 initWithExplanation:v19 target:v13 attributes:isa];

  v35[0] = 0;
  if (([v5 acquireWithError:v35] & 1) == 0)
  {
    v22 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1019F2098 == -1)
    {
LABEL_7:
      v23 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v25 = Error.publicDescription.getter(v33, v34);
      v27 = v26;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v25;
      *(inited + 40) = v27;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v28, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      sub_100005070(inited + 32);
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  v21 = v35[0];
LABEL_8:
  v29 = v32;
  swift_beginAccess();
  v30 = sqlite3_step(*(v29 + 24));
  [v5 invalidate];

  result = v30;
  *(v9 + a1) = 0;
  return result;
}

uint64_t sub_10001D364()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v0 + 24);
  if (v10)
  {
    v11 = *(*(v1 + 16) + 32);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    aBlock[4] = sub_10089CCC4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10188AAE8;
    v13 = _Block_copy(aBlock);
    v18 = v6;
    v14 = v13;
    v15 = v11;
    static DispatchQoS.unspecified.getter();
    v19 = _swiftEmptyArrayStorage;
    sub_1005D91D8();
    sub_1005B981C(&unk_1019FF400);
    sub_10000D494();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v18);
  }

  return swift_deallocClassInstance();
}

BOOL sub_10001D624()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 32);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  LODWORD(v1) = sub_10001C924(v0, 0xD000000000000017, 0x8000000101572B20);
  if (v1 != 101)
  {
    if (qword_1019F2098 == -1)
    {
LABEL_4:
      v7 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v1;
      v9 = static os_log_type_t.default.getter();
      sub_100005404(v7, &_mh_execute_header, v9, "Failed to enable incremental auto-vacuum on the database with error %d", 70, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return v1 == 101;
    }

LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  return v1 == 101;
}

char *sub_10001D824()
{
  v3 = v0;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v0[3];
  *v7 = v8;
  v9 = *(v5 + 104);
  v78 = enum case for DispatchPredicate.onQueue(_:);
  v79 = v9;
  v80 = v5 + 104;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v11 = v5 + 8;
  v77 = v11;
  v81 = v12;
  v12(v7, v4);
  if ((v8 & 1) == 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v2 = v3[2];
  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v11 = sub_10001CC04(v14, 0xD000000000000013, 0x8000000101585AD0);

  if (!v1)
  {
    v15 = *(*(v11 + 16) + 32);
    *v7 = v15;
    v79(v7, v78, v4);
    v16 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    v81(v7, v4);
    if (v15)
    {
      type metadata accessor for SQLiteRowIterator();
      v2 = swift_initStackObject();
      *(v2 + 32) = 0;
      *(v2 + 40) = 1;
      *(v2 + 16) = v11;
      *(v2 + 24) = 0;
      inited = sub_10001E1D0();
      swift_setDeallocating();
      sub_10001E364(*(v2 + 24), *(v2 + 32), *(v2 + 40));
      if (inited)
      {
        v17 = sub_10001E378(0, inited);
        v2 = v18;

        if ((v2 & 1) != 0 || !v17)
        {
          inited = 0;
        }

        else
        {
          if (v17 != 1)
          {
            v71 = v11;
            v72 = v4;
            v76 = v3[4];
            sub_1005B981C(&qword_1019F54E0);
            v25 = swift_initStackObject();
            *(v25 + 16) = xmmword_10146C6B0;
            *(v25 + 56) = &type metadata for Int;
            *(v25 + 64) = &protocol witness table for Int;
            *(v25 + 32) = v17;
            v26 = static os_log_type_t.error.getter();
            sub_100005404(v76, &_mh_execute_header, v26, "Invalid schema version detected: %{public}d", 43, 2, v25);
            swift_setDeallocating();
            sub_100005070(v25 + 32);
            v27 = swift_initStackObject();
            *(v27 + 16) = xmmword_10146BDE0;
            v70 = v17;
            *(v27 + 32) = v17;
            v76 = v27 + 32;
            v4 = v27;
            *(v27 + 56) = &type metadata for Int;
            *(v27 + 64) = &protocol witness table for Int;
            v28 = v3[5];
            v29 = v3[6];
            *(v27 + 96) = &type metadata for String;
            v75 = sub_1000053B0();
            *(v4 + 104) = v75;
            *(v4 + 72) = v28;
            *(v4 + 80) = v29;
            v30 = objc_opt_self();

            v69 = v30;
            LODWORD(v74) = [v30 _atomicIncrementAssertCount];
            v82 = [objc_allocWithZone(NSString) init];
            sub_100604538(v4, &v82);
            StaticString.description.getter();
            v73 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v31 = String._bridgeToObjectiveC()();

            v32 = [v31 lastPathComponent];

            v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v2 = v33;

            if (qword_1019F20A0 == -1)
            {
LABEL_16:
              v34 = static OS_os_log.crlAssert;
              v35 = swift_initStackObject();
              *(v35 + 16) = xmmword_10146CA70;
              *(v35 + 56) = &type metadata for Int32;
              *(v35 + 64) = &protocol witness table for Int32;
              *(v35 + 32) = v74;
              v36 = sub_100006370(0, &qword_1019F4D30);
              *(v35 + 96) = v36;
              v37 = sub_1005CF04C();
              v38 = v73;
              *(v35 + 72) = v73;
              v39 = v75;
              *(v35 + 136) = &type metadata for String;
              *(v35 + 144) = v39;
              *(v35 + 104) = v37;
              *(v35 + 112) = v11;
              *(v35 + 120) = v2;
              *(v35 + 176) = &type metadata for UInt;
              *(v35 + 184) = &protocol witness table for UInt;
              *(v35 + 152) = 130;
              v40 = v82;
              *(v35 + 216) = v36;
              *(v35 + 224) = v37;
              *(v35 + 192) = v40;
              v75 = v38;
              v41 = v40;
              v42 = static os_log_type_t.error.getter();
              sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v35);
              swift_setDeallocating();
              v73 = sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              v43 = static os_log_type_t.error.getter();
              sub_100005404(v34, &_mh_execute_header, v43, "Invalid schema version detected: %{public}d for database %{public}@", 67, 2, v4);

              type metadata accessor for __VaListBuilder();
              v44 = swift_allocObject();
              v44[2] = 8;
              v44[3] = 0;
              v45 = v44 + 3;
              v44[4] = 0;
              v44[5] = 0;
              v46 = *(v4 + 16);
              v74 = v4;
              v75 = v46;
              if (!v46)
              {
LABEL_40:
                v59 = __VaListBuilder.va_list()();
                StaticString.description.getter();
                v60 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v61 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v62 = String._bridgeToObjectiveC()();

                [v69 handleFailureInFunction:v60 file:v61 lineNumber:130 isFatal:0 format:v62 args:v59];

                swift_setDeallocating();
                swift_arrayDestroy();
                sub_100A7B404();
                swift_allocError();
                *v63 = v70;
                swift_willThrow();
                v65 = v71;
                v64 = v72;
                v66 = *(*(v71 + 16) + 32);
                *v7 = v66;
                v79(v7, v78, v64);
                v67 = v66;
                LOBYTE(v66) = _dispatchPreconditionTest(_:)();
                v81(v7, v64);
                if ((v66 & 1) == 0)
                {
                  __break(1u);
                }

                swift_beginAccess();
                v68 = *(v65 + 24);
                inited = v65;
                if (v68)
                {
                  sqlite3_finalize(v68);
                  *(v65 + 24) = 0;
                }

                goto LABEL_13;
              }

              v4 = 0;
              while (1)
              {
                v47 = (v76 + 40 * v4);
                v2 = v47[4];
                sub_100020E58(v47, v47[3]);
                v48 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
                v11 = *v45;
                v49 = *(v48 + 16);
                v50 = __OFADD__(*v45, v49);
                v51 = *v45 + v49;
                if (v50)
                {
                  goto LABEL_46;
                }

                v2 = v48;
                v52 = v44[4];
                if (v52 >= v51)
                {
                  goto LABEL_33;
                }

                if (v52 + 0x4000000000000000 < 0)
                {
                  goto LABEL_49;
                }

                v53 = v44[5];
                if (2 * v52 > v51)
                {
                  v51 = 2 * v52;
                }

                v44[4] = v51;
                if ((v51 - 0x1000000000000000) >> 61 != 7)
                {
                  goto LABEL_50;
                }

                result = swift_slowAlloc();
                v44[5] = result;
                if (v53)
                {
                  break;
                }

LABEL_34:
                if (!result)
                {
                  __break(1u);
                  return result;
                }

                v55 = *(v2 + 16);
                if (v55)
                {
                  v56 = (v2 + 32);
                  v57 = *v45;
                  while (1)
                  {
                    v58 = *v56++;
                    *&result[8 * v57] = v58;
                    v57 = *v45 + 1;
                    if (__OFADD__(*v45, 1))
                    {
                      break;
                    }

                    *v45 = v57;
                    if (!--v55)
                    {
                      goto LABEL_18;
                    }
                  }

                  __break(1u);
                  goto LABEL_45;
                }

LABEL_18:

                if (++v4 == v75)
                {
                  goto LABEL_40;
                }
              }

              if (result != v53 || result >= &v53[8 * v11])
              {
                memmove(result, v53, 8 * v11);
              }

              __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_33:
              result = v44[5];
              goto LABEL_34;
            }

LABEL_51:
            swift_once();
            goto LABEL_16;
          }

          inited = 1;
        }
      }

      v19 = v11;
      v11 = *(*(v11 + 16) + 32);
      *v7 = v11;
      v79(v7, v78, v4);
      v20 = v11;
      v21 = _dispatchPreconditionTest(_:)();
      v22 = v4;
      v4 = v21;
      v81(v7, v22);
      if (v4)
      {
        swift_beginAccess();
        v23 = *(v19 + 24);
        if (v23)
        {
          sqlite3_finalize(v23);
          *(v19 + 24) = 0;
        }

LABEL_13:

        return inited;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  return inited;
}

uint64_t sub_10001E1D0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v0[2];
  v6 = *(*(v5 + 16) + 32);
  *v4 = v6;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v6)
  {
    v9 = v0[4];
    v10 = v0[3];
    v11 = v0[5];
    v0[3] = 0;
    v0[4] = 0;
    v0[5] = 1;
    sub_10001E364(v10, v9, v11);
    swift_beginAccess();
    v12 = sqlite3_step(*(v5 + 24));
    result = 0;
    if (v12 && v12 != 101)
    {
      if (v12 == 100)
      {
      }

      else
      {
        v13 = v0[3];
        v14 = v0[4];
        v15 = v0[5];
        v0[3] = v12;
        v0[4] = 0;
        v0[5] = 0;
        sub_10001E364(v13, v14, v15);
        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_10001E378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(a2 + 16) + 32);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_beginAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a2 + 24), a1) == 5)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int(*(a2 + 24), a1);
  }
}

uint64_t sub_10001E534(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  __chkstk_darwin(v24);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *&v6[*a3];
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = a5;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v22;
  v18 = _Block_copy(aBlock);
  v19 = v6;

  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v25 + 8))(v13, v11);
  (*(v14 + 8))(v16, v24);
}

uint64_t type metadata accessor for CRLAssetFileManager()
{
  result = qword_101A29578;
  if (!qword_101A29578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E868(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v64 = *(v5 + 104);
  v64(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if (v8)
  {
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v12, &_mh_execute_header, v13, "Opening the board database", 26, 2, &_swiftEmptyArrayStorage);
  v62 = v12;
  v60[1] = v5 + 104;
  if (a1)
  {
    v14 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue);
    *v7 = v14;
    v15 = v64;
    v64(v7, v9, v4);
    v16 = v14;
    LOBYTE(v14) = _dispatchPreconditionTest(_:)();
    result = (v11)(v7, v4);
    if (v14)
    {
      v18 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
      v19 = *(v18 + 32);
      *v7 = v19;
      v61 = v9;
      v15(v7, v9, v4);
      v20 = v19;
      LOBYTE(v19) = _dispatchPreconditionTest(_:)();
      result = (v11)(v7, v4);
      if (v19)
      {
        URL.absoluteString.getter();
        v21 = String._bridgeToObjectiveC()();

        v22 = [v21 fileSystemRepresentation];
        v23 = v21;

        v25 = sub_10001C448(v24, v22, v18, 3178497);

        if (v25)
        {

          sub_10089CCDC(v26, v18);

          swift_beginAccess();
          *(v18 + 16) = 0;
LABEL_11:
          sub_10089C7D0();
          swift_allocError();
          *v38 = v25;
          *(v38 + 8) = 0;
          *(v38 + 16) = 0;
          swift_willThrow();
          v39 = v62;
LABEL_12:
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          swift_getErrorValue();
          v41 = Error.localizedDescription.getter();
          v43 = v42;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v41;
          *(inited + 40) = v43;
          v44 = static os_log_type_t.error.getter();
          sub_100005404(v39, &_mh_execute_header, v44, "Opening the board database failed with error: %@", 48, 2, inited);
          swift_setDeallocating();
          sub_100005070(inited + 32);
          return swift_willThrow();
        }

        v55 = *(v18 + 32);
        *v7 = v55;
        v56 = v64;
        v64(v7, v61, v4);
        v57 = v55;
        LOBYTE(v55) = _dispatchPreconditionTest(_:)();
        result = (v11)(v7, v4);
        if (v55)
        {
          sub_10001C924(v18, 0xD00000000000001ALL, 0x80000001015854A0);
          v58 = *(v18 + 32);
          *v7 = v58;
          v56(v7, v61, v4);
          v59 = v58;
          LOBYTE(v58) = _dispatchPreconditionTest(_:)();
          result = (v11)(v7, v4);
          if (v58)
          {
            return sub_10001C924(v18, 0xD000000000000019, 0x80000001015854C0);
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  v28 = *(v27 + 32);
  *v7 = v28;
  v64(v7, v9, v4);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  result = (v11)(v7, v4);
  if ((v28 & 1) == 0)
  {
    goto LABEL_24;
  }

  v30 = v11;
  URL.absoluteString.getter();
  v31 = String._bridgeToObjectiveC()();

  v32 = [v31 fileSystemRepresentation];
  v33 = v31;

  v35 = v32;
  v36 = v63;
  v25 = sub_10001C448(v34, v35, v27, 3178502);

  if (v25)
  {

    sub_10089CCDC(v37, v27);

    swift_beginAccess();
    *(v27 + 16) = 0;
    goto LABEL_11;
  }

  v63 = v36;
  v45 = *(v27 + 32);
  *v7 = v45;
  v46 = v9;
  v61 = v9;
  v47 = v64;
  v64(v7, v46, v4);
  v48 = v45;
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  result = v30(v7, v4);
  if ((v45 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_10001C924(v27, 0xD00000000000001CLL, 0x8000000101585480);
  sub_10001D624();
  v49 = *(v27 + 32);
  *v7 = v49;
  v47(v7, v61, v4);
  v50 = v49;
  LOBYTE(v49) = _dispatchPreconditionTest(_:)();
  result = v30(v7, v4);
  if ((v49 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_10001C924(v27, 0xD00000000000001ALL, 0x80000001015854A0);
  v51 = *(v27 + 32);
  *v7 = v51;
  v47(v7, v61, v4);
  v52 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  result = v30(v7, v4);
  if ((v51 & 1) == 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  sub_10001C924(v27, 0xD000000000000019, 0x80000001015854C0);
  v53 = static os_log_type_t.info.getter();
  v39 = v62;
  sub_100005404(v62, &_mh_execute_header, v53, "Checking for schema version", 27, 2, &_swiftEmptyArrayStorage);
  v54 = v63;
  sub_10002121C();
  if (v54)
  {
    goto LABEL_12;
  }

  return sub_100022FA0();
}

uint64_t sub_10001F0B4()
{
  result = type metadata accessor for URL();
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

id sub_10001F1A0(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for URL();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v28 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v32 = v5;
  v33 = v6;
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v27 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_store;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock;
  type metadata accessor for CRLUnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  atomic_thread_fence(memory_order_acq_rel);
  *&v2[v11] = v12;
  v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_didEnsureAssetDirectory] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetFileURLCache] = &_swiftEmptyDictionarySingleton;
  v26 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_writeAssetFileQueue;
  sub_100006370(0, &qword_1019F2D90);
  v25 = "purgeDeletedAssetsWorkItem";
  static DispatchQoS.unspecified.getter();
  v35 = &_swiftEmptyArrayStorage;
  v24 = sub_10001F75C(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes);
  v23 = sub_1005B981C(&unk_1019FB800);
  sub_1000067A8(&qword_101A1DE80, &unk_1019FB800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v15 = *(v33 + 104);
  v33 += 104;
  v22 = v8;
  v15(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  *&v2[v26] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager__deletedAssetsTTL] = 0x40CC200000000000;
  *&v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager__deletedAssetsTTLTolerance] = 0x4014000000000000;
  v26 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsQueue;
  static DispatchQoS.unspecified.getter();
  v35 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15(v22, v14, v32);
  *&v2[v26] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsWorkItem] = 0;
  swift_unknownObjectWeakAssign();
  v16 = v28;
  URL.appendingPathComponent(_:isDirectory:)();
  v17 = v31;
  v18 = *(v30 + 32);
  v18(&v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetsDirectoryURL], v16, v31);
  URL.appendingPathComponent(_:isDirectory:)();
  v18(&v2[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_deletedAssetsDirectoryURL], v16, v17);
  v19 = type metadata accessor for CRLAssetFileManager();
  v34.receiver = v2;
  v34.super_class = v19;
  return objc_msgSendSuper2(&v34, "init");
}

uint64_t sub_10001F6CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F714(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F75C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F7A4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100020C24;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018AFEE0;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_10001F75C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_10001FA60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FA98()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v26 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v23 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v24 = v5;
  v16 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsWorkItem;
  if (!*(v1 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsWorkItem) || (, v17 = dispatch thunk of DispatchWorkItem.isCancelled.getter(), result = , (v17 & 1) != 0))
  {
    v23[0] = v13;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_101093C14;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018AFF30;
    v23[1] = _Block_copy(aBlock);
    v27 = &_swiftEmptyArrayStorage;
    sub_10001F75C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);

    sub_1005B981C(&unk_1019FF400);
    sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v19 = DispatchWorkItem.init(flags:block:)();

    *(v1 + v16) = v19;

    v20 = v24;
    static DispatchTime.now()();
    v21 = v25;
    + infix(_:_:)();
    v22 = *(v26 + 8);
    result = v22(v20, v2);
    if (*(v1 + v16))
    {

      OS_dispatch_queue.asyncAfter(deadline:execute:)();

      return v22(v21, v2);
    }

LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001FEE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10001FF28(unint64_t a1)
{
  v2 = v1;
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.upgrade;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v6 = sub_100020E14(a1);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  sub_10000630C(v2, v125);
  sub_1005B981C(&qword_101A1D5D0);
  v11 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v10;
  v121 = v10;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = static os_log_type_t.default.getter();
  v119 = v4;
  sub_100005404(v4, &_mh_execute_header, v13, "Registering version: %{public}@, for upgrader: %{public}@", 57, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v14 = v2[3];
  v15 = v2[4];
  sub_100020E58(v2, v14);
  result = (*(v15 + 16))(v14, v15);
  if (result > a1)
  {
    v30 = result;
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_10146BDE0;
    v32 = sub_100020E14(a1);
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    *(v31 + 32) = v33;
    v36 = (v31 + 32);
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = v10;
    *(v31 + 40) = v35;
    v37 = sub_100020E14(v30);
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    *(v31 + 96) = &type metadata for String;
    *(v31 + 104) = v10;
    *(v31 + 72) = v38;
    *(v31 + 80) = v40;
    v120 = objc_opt_self();
    LODWORD(v40) = [v120 _atomicIncrementAssertCount];
    v125[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v31, v125);
    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    v43 = [v42 lastPathComponent];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v47 = static OS_os_log.crlAssert;
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_10146CA70;
      *(v48 + 56) = &type metadata for Int32;
      *(v48 + 64) = &protocol witness table for Int32;
      *(v48 + 32) = v40;
      v49 = sub_1005CF000();
      *(v48 + 96) = v49;
      v50 = sub_1005CF04C();
      *(v48 + 72) = v41;
      *(v48 + 136) = &type metadata for String;
      *(v48 + 144) = v121;
      *(v48 + 104) = v50;
      *(v48 + 112) = v44;
      *(v48 + 120) = v46;
      *(v48 + 176) = &type metadata for UInt;
      *(v48 + 184) = &protocol witness table for UInt;
      *(v48 + 152) = 49;
      v51 = v125[0];
      *(v48 + 216) = v49;
      *(v48 + 224) = v50;
      *(v48 + 192) = v51;
      v52 = v41;
      v53 = v51;
      v54 = static os_log_type_t.error.getter();
      sub_100005404(v47, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v48);

      v55 = static os_log_type_t.error.getter();
      sub_100005404(v47, &_mh_execute_header, v55, "Trying to register a new version (%{public}@) that's less than the current version (%{public}@)", 95, 2, v31);

      sub_10063DF98(v31, "Trying to register a new version (%{public}@) that's less than the current version (%{public}@)");
      type metadata accessor for __VaListBuilder();
      v56 = swift_allocObject();
      v56[2] = 8;
      v56[3] = 0;
      v41 = v56 + 3;
      v56[4] = 0;
      v56[5] = 0;
      v57 = *(v31 + 16);
      if (!v57)
      {
        goto LABEL_68;
      }

      v44 = 0;
      v46 = 40;
      while (1)
      {
        v58 = &v36[5 * v44];
        v40 = v58[4];
        v31 = sub_100020E58(v58, v58[3]);
        v59 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v60 = *v41;
        v61 = *(v59 + 16);
        v62 = __OFADD__(*v41, v61);
        v63 = *v41 + v61;
        if (v62)
        {
          break;
        }

        v64 = v59;
        v31 = v56[4];
        if (v31 >= v63)
        {
          goto LABEL_25;
        }

        if (v31 + 0x4000000000000000 < 0)
        {
          goto LABEL_61;
        }

        v40 = v56[5];
        if (2 * v31 > v63)
        {
          v63 = 2 * v31;
        }

        v56[4] = v63;
        if ((v63 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_62;
        }

        v65 = swift_slowAlloc();
        v56[5] = v65;
        if (v40)
        {
          if (v65 != v40 || v65 >= &v40[8 * v60])
          {
            memmove(v65, v40, 8 * v60);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_25:
          v65 = v56[5];
        }

        if (!v65)
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          v112 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v113 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v114 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v115 = String._bridgeToObjectiveC()();

          [v120 handleFailureInFunction:v113 file:v114 lineNumber:49 isFatal:1 format:v115 args:v112];
          goto LABEL_70;
        }

        v67 = *(v64 + 16);
        if (v67)
        {
          v68 = (v64 + 32);
          v69 = *v41;
          while (1)
          {
            v70 = *v68++;
            *&v65[8 * v69] = v70;
            v69 = *v41 + 1;
            if (__OFADD__(*v41, 1))
            {
              break;
            }

            *v41 = v69;
            if (!--v67)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
          v71 = swift_initStackObject();
          v72 = v40;
          v73 = v71;
          *(v71 + 16) = xmmword_10146C4D0;
          v74 = sub_100020E14(v72);
          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v76;

          v73[4] = v75;
          v36 = v73 + 4;
          v73[7] = &type metadata for String;
          v73[8] = v121;
          v73[5] = v77;
          swift_getErrorValue();
          v78 = Error.publicDescription.getter(v123, v124);
          v73[12] = &type metadata for String;
          v73[13] = v121;
          v73[9] = v78;
          v73[10] = v79;
          swift_getErrorValue();
          v80 = Error.fullDescription.getter(v122);
          v73[17] = &type metadata for String;
          v73[18] = v121;
          v73[14] = v80;
          v73[15] = v81;
          v120 = objc_opt_self();
          v82 = [v120 _atomicIncrementAssertCount];
          v125[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(v73, v125);
          StaticString.description.getter();
          v83 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v84 = String._bridgeToObjectiveC()();

          v85 = [v84 lastPathComponent];

          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v87;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v89 = static OS_os_log.crlAssert;
          v90 = swift_initStackObject();
          *(v90 + 16) = xmmword_10146CA70;
          *(v90 + 56) = &type metadata for Int32;
          *(v90 + 64) = &protocol witness table for Int32;
          *(v90 + 32) = v82;
          v91 = sub_1005CF000();
          *(v90 + 96) = v91;
          v92 = sub_1005CF04C();
          *(v90 + 72) = v83;
          *(v90 + 136) = &type metadata for String;
          *(v90 + 144) = v121;
          *(v90 + 104) = v92;
          *(v90 + 112) = v86;
          *(v90 + 120) = v88;
          *(v90 + 176) = &type metadata for UInt;
          *(v90 + 184) = &protocol witness table for UInt;
          *(v90 + 152) = 63;
          v93 = v125[0];
          *(v90 + 216) = v91;
          *(v90 + 224) = v92;
          *(v90 + 192) = v93;
          v94 = v83;
          v95 = v93;
          v96 = static os_log_type_t.error.getter();
          sub_100005404(v89, &_mh_execute_header, v96, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v90);

          v97 = static os_log_type_t.error.getter();
          sub_100005404(v89, &_mh_execute_header, v97, "Unable to register version (%{public}@). Error: %{public}@ <%@>", 64, 2, v73);

          sub_10063DF98(v73, "Unable to register version (%{public}@). Error: %{public}@ <%@>");
          type metadata accessor for __VaListBuilder();
          v98 = swift_allocObject();
          v98[2] = 8;
          v98[3] = 0;
          v41 = v98 + 3;
          v98[4] = 0;
          v98[5] = 0;
          v99 = v73[2];
          if (v99)
          {
            v44 = 0;
            v46 = 40;
            while (1)
            {
              v100 = &v36[5 * v44];
              v40 = v100[4];
              v31 = sub_100020E58(v100, v100[3]);
              v101 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
              v102 = *v41;
              v103 = *(v101 + 16);
              v62 = __OFADD__(*v41, v103);
              v104 = *v41 + v103;
              if (v62)
              {
                goto LABEL_60;
              }

              v105 = v101;
              v31 = v98[4];
              if (v31 >= v104)
              {
                goto LABEL_51;
              }

              if (v31 + 0x4000000000000000 < 0)
              {
                goto LABEL_63;
              }

              v40 = v98[5];
              if (2 * v31 > v104)
              {
                v104 = 2 * v31;
              }

              v98[4] = v104;
              if ((v104 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_64;
              }

              v106 = swift_slowAlloc();
              v98[5] = v106;
              if (v40)
              {
                break;
              }

LABEL_52:
              if (!v106)
              {
                goto LABEL_67;
              }

              v108 = *(v105 + 16);
              if (v108)
              {
                v109 = (v105 + 32);
                v110 = *v41;
                while (1)
                {
                  v111 = *v109++;
                  *&v106[8 * v110] = v111;
                  v110 = *v41 + 1;
                  if (__OFADD__(*v41, 1))
                  {
                    break;
                  }

                  *v41 = v110;
                  if (!--v108)
                  {
                    goto LABEL_36;
                  }
                }

                __break(1u);
                goto LABEL_59;
              }

LABEL_36:

              if (++v44 == v99)
              {
                goto LABEL_69;
              }
            }

            if (v106 != v40 || v106 >= &v40[8 * v102])
            {
              memmove(v106, v40, 8 * v102);
            }

            v31 = v98;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_51:
            v106 = v98[5];
            goto LABEL_52;
          }

LABEL_69:
          v116 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v113 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v114 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v115 = String._bridgeToObjectiveC()();

          [v120 handleFailureInFunction:v113 file:v114 lineNumber:63 isFatal:1 format:v115 args:v116];
LABEL_70:

          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v117, v118);
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

LABEL_10:

        if (++v44 == v57)
        {
          goto LABEL_68;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      swift_once();
    }
  }

  if (result < a1)
  {
    v17 = v2[3];
    v18 = v2[4];
    v19 = result;
    sub_100020E58(v2, v17);
    (*(v18 + 8))(v19, a1, v17, v18);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_10146BDE0;
    v21 = sub_100020E14(a1);
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = v10;
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    sub_10000630C(v2, v125);
    v25 = String.init<A>(describing:)();
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v10;
    *(v20 + 72) = v25;
    *(v20 + 80) = v26;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v119, &_mh_execute_header, v27, "Persisting new last seen version: %{public}@, for upgrader: %{public}@", 70, 2, v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    v28 = v2[3];
    v29 = v2[4];
    sub_100020E58(v2, v28);
    return (*(v29 + 24))(a1, v28, v29);
  }

  return result;
}

void sub_100020C4C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB38, &qword_101AD5AE0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.upgrade = v1;
}

uint64_t sub_100020D1C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_1010920D4(a1, v6, v7, v8, v1 + v5);
}

void *sub_100020E58(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100020EA4(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_storeEnumTagMultiPayload();
  v9 = a1;
  v10 = v4;
  sub_1005B981C(&qword_1019FB5C8);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v11[8])
  {
    v5 = &qword_101464850;
  }

  else
  {
    v5 = v11;
  }

  v6 = *v5;
  sub_100028A14(v4);
  return v6;
}

uint64_t sub_100020FE0()
{
  result = sub_100006370(319, &qword_1019F69D0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CRLBoardIdentifier(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000210AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10002111C()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100021188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002121C()
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v9 = sub_100022484();
  if (v1)
  {
    v125 = v1;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    if (!swift_dynamicCast())
    {
    }

    v53 = v124[15];
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 32) = v53;
    v123 = (inited + 32);
    v2 = &type metadata for Int;
    v6 = &protocol witness table for Int;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    v14 = sub_100022E58(&off_101873530, COERCE_DOUBLE(2), v54);
    if (v14 != 10)
    {
      goto LABEL_42;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    *(inited + 96) = v2;
    *(inited + 104) = v6;
    *(inited + 72) = v14;
    v121 = objc_opt_self();
    LODWORD(v55) = [v121 _atomicIncrementAssertCount];
    v124[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, v124);
    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    v58 = [v57 lastPathComponent];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v60;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_104;
    }

    while (1)
    {
      v61 = static OS_os_log.crlAssert;
      v62 = swift_initStackObject();
      *(v62 + 16) = xmmword_10146CA70;
      *(v62 + 56) = &type metadata for Int32;
      *(v62 + 64) = &protocol witness table for Int32;
      *(v62 + 32) = v55;
      v63 = sub_100006370(0, &qword_1019F4D30);
      *(v62 + 96) = v63;
      v64 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v62 + 104) = v64;
      *(v62 + 72) = v56;
      *(v62 + 136) = &type metadata for String;
      v65 = sub_1000053B0();
      v66 = v122;
      *(v62 + 112) = v59;
      *(v62 + 120) = v66;
      *(v62 + 176) = &type metadata for UInt;
      *(v62 + 184) = &protocol witness table for UInt;
      *(v62 + 144) = v65;
      *(v62 + 152) = 403;
      v67 = v124[0];
      *(v62 + 216) = v63;
      *(v62 + 224) = v64;
      *(v62 + 192) = v67;
      v68 = v56;
      v69 = v67;
      v70 = static os_log_type_t.error.getter();
      v55 = &_mh_execute_header;
      sub_100005404(v61, &_mh_execute_header, v70, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v62);

      v71 = static os_log_type_t.error.getter();
      sub_100005404(v61, &_mh_execute_header, v71, "Encountered an unknown schema version during possible migration, found value %{public}d is greater than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.", 230, 2, inited);

      sub_10063DF98(inited, "Encountered an unknown schema version during possible migration, found value %{public}d is greater than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.");
      type metadata accessor for __VaListBuilder();
      v72 = swift_allocObject();
      v72[2] = 8;
      v72[3] = 0;
      v73 = v72 + 3;
      v72[4] = 0;
      v72[5] = 0;
      v59 = *(inited + 16);
      if (!v59)
      {
LABEL_108:
        v113 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v114 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v115 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v116 = String._bridgeToObjectiveC()();

        [v121 handleFailureInFunction:v114 file:v115 lineNumber:403 isFatal:1 format:v116 args:v113];
        while (1)
        {

          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v117, v118);
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_110:
          v119 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v114 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v115 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v116 = String._bridgeToObjectiveC()();

          [v121 handleFailureInFunction:v114 file:v115 lineNumber:445 isFatal:1 format:v116 args:v119];
        }
      }

      v56 = 0;
      while (1)
      {
        v74 = &v123[5 * v56];
        v6 = v74[4];
        inited = sub_100020E58(v74, v74[3]);
        v75 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v76 = *v73;
        v77 = *(v75 + 16);
        v78 = __OFADD__(*v73, v77);
        v79 = *v73 + v77;
        if (v78)
        {
          goto LABEL_70;
        }

        v6 = v75;
        inited = v72[4];
        if (inited >= v79)
        {
          goto LABEL_60;
        }

        if (inited + 0x4000000000000000 < 0)
        {
          goto LABEL_99;
        }

        v55 = v72[5];
        if (2 * inited > v79)
        {
          v79 = 2 * inited;
        }

        v72[4] = v79;
        if ((v79 - 0x1000000000000000) >> 61 != 7)
        {
          break;
        }

        v80 = swift_slowAlloc();
        v72[5] = v80;
        if (!v55)
        {
          goto LABEL_61;
        }

        if (v80 != v55 || v80 >= (v55 + 8 * v76))
        {
          memmove(v80, v55, 8 * v76);
        }

        inited = v72;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_60:
        v80 = v72[5];
LABEL_61:
        if (!v80)
        {
          __break(1u);
LABEL_106:
          swift_once();
LABEL_74:
          v89 = static OS_os_log.crlAssert;
          v90 = swift_initStackObject();
          *(v90 + 16) = xmmword_10146CA70;
          *(v90 + 56) = &type metadata for Int32;
          *(v90 + 64) = &protocol witness table for Int32;
          *(v90 + 32) = v55;
          v91 = sub_100006370(0, &qword_1019F4D30);
          *(v90 + 96) = v91;
          v92 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
          *(v90 + 104) = v92;
          *(v90 + 72) = v56;
          *(v90 + 136) = &type metadata for String;
          v93 = sub_1000053B0();
          v94 = v122;
          *(v90 + 112) = v59;
          *(v90 + 120) = v94;
          *(v90 + 176) = &type metadata for UInt;
          *(v90 + 184) = &protocol witness table for UInt;
          *(v90 + 144) = v93;
          *(v90 + 152) = 445;
          v95 = v125;
          *(v90 + 216) = v91;
          *(v90 + 224) = v92;
          *(v90 + 192) = v95;
          v96 = v56;
          v97 = v95;
          v98 = static os_log_type_t.error.getter();
          v55 = &_mh_execute_header;
          sub_100005404(v89, &_mh_execute_header, v98, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v90);

          v99 = static os_log_type_t.error.getter();
          sub_100005404(v89, &_mh_execute_header, v99, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d", 118, 2, inited);

          sub_10063DF98(inited, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d");
          type metadata accessor for __VaListBuilder();
          v100 = swift_allocObject();
          v100[2] = 8;
          v100[3] = 0;
          v101 = v100 + 3;
          v100[4] = 0;
          v100[5] = 0;
          v59 = *(inited + 16);
          if (!v59)
          {
            goto LABEL_110;
          }

          v56 = 0;
LABEL_77:
          inited = sub_100020E58(&v123[5 * v56], v123[5 * v56 + 3]);
          v102 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v103 = *v101;
          v104 = *(v102 + 16);
          v78 = __OFADD__(*v101, v104);
          v105 = *v101 + v104;
          if (v78)
          {
            goto LABEL_101;
          }

          v106 = v102;
          inited = v100[4];
          if (inited >= v105)
          {
LABEL_91:
            v107 = v100[5];
          }

          else
          {
            if (inited + 0x4000000000000000 < 0)
            {
              goto LABEL_102;
            }

            v55 = v100[5];
            if (2 * inited > v105)
            {
              v105 = 2 * inited;
            }

            v100[4] = v105;
            if ((v105 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_103;
            }

            v107 = swift_slowAlloc();
            v100[5] = v107;
            if (v55)
            {
              if (v107 != v55 || v107 >= (v55 + 8 * v103))
              {
                memmove(v107, v55, 8 * v103);
              }

              inited = v100;
              __VaListBuilder.deallocStorage(wordCount:storage:)();
              goto LABEL_91;
            }
          }

          if (!v107)
          {
            __break(1u);
            goto LABEL_108;
          }

          v109 = *(v106 + 16);
          if (v109)
          {
            v110 = (v106 + 32);
            v111 = *v101;
            while (1)
            {
              v112 = *v110++;
              *(&v107->magic + v111) = v112;
              v111 = *v101 + 1;
              if (__OFADD__(*v101, 1))
              {
                break;
              }

              *v101 = v111;
              if (!--v109)
              {
                goto LABEL_76;
              }
            }

            __break(1u);
LABEL_99:
            __break(1u);
            break;
          }

LABEL_76:

          v56 = v56 + 1;
          if (v56 == v59)
          {
            goto LABEL_110;
          }

          goto LABEL_77;
        }

        v82 = v6[2];
        if (v82)
        {
          v83 = v6 + 4;
          v84 = *v73;
          while (1)
          {
            v85 = *v83++;
            *(&v80->magic + v84) = v85;
            v84 = *v73 + 1;
            if (__OFADD__(*v73, 1))
            {
              break;
            }

            *v73 = v84;
            if (!--v82)
            {
              goto LABEL_45;
            }
          }

          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

LABEL_45:

        v56 = v56 + 1;
        if (v56 == v59)
        {
          goto LABEL_108;
        }
      }

      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      swift_once();
    }
  }

  v13 = v9;
  v14 = sub_100022E58(&off_101873530, v10, v11);
  if (v14 == 10)
  {
    goto LABEL_41;
  }

  if (v13 != v14)
  {
    if (v13 > 4u)
    {
      if (v13 > 6u)
      {
        if (v13 != 7)
        {
          if (v13 != 8)
          {
LABEL_30:
            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v6 = static OS_os_log.boardStore;
            sub_1005B981C(&qword_1019F54E0);
            v43 = swift_initStackObject();
            *(v43 + 16) = xmmword_10146C6B0;
            v45 = sub_100022E58(&off_101873530, COERCE_DOUBLE(1), v44);
            if (v45 == 10)
            {
              goto LABEL_69;
            }

            *(v43 + 56) = &type metadata for Int;
            *(v43 + 64) = &protocol witness table for Int;
            *(v43 + 32) = v45;
            v46 = static os_log_type_t.default.getter();
            sub_100005404(v6, &_mh_execute_header, v46, "Done migrating database schema, on latest version %{public}d", 60, 2, v43);
            swift_setDeallocating();
            sub_100005070(v43 + 32);
            v47 = sub_100022484();
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146BDE0;
            *(inited + 32) = v47;
            v6 = (inited + 32);
            *(inited + 56) = &type metadata for Int;
            *(inited + 64) = &protocol witness table for Int;
            v49 = sub_100022E58(&off_101873530, COERCE_DOUBLE(2), v48);
            if (v49 == 10)
            {
LABEL_71:
              __break(1u);
            }

            else
            {
              *(inited + 96) = &type metadata for Int;
              *(inited + 104) = &protocol witness table for Int;
              *(inited + 72) = v49;
              v52 = sub_100022E58(&off_101873530, v50, v51);
              if (v52 != 10)
              {
                if (v47 == v52)
                {
                  swift_setDeallocating();
                  sub_1005B981C(&unk_1019F5670);
                  return swift_arrayDestroy();
                }

LABEL_73:
                v123 = v6;
                v121 = objc_opt_self();
                LODWORD(v55) = [v121 _atomicIncrementAssertCount];
                v125 = [objc_allocWithZone(NSString) init];
                sub_100604538(inited, &v125);
                StaticString.description.getter();
                v56 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v86 = String._bridgeToObjectiveC()();

                v87 = [v86 lastPathComponent];

                v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v122 = v88;

                if (qword_1019F20A0 != -1)
                {
                  goto LABEL_106;
                }

                goto LABEL_74;
              }
            }

            __break(1u);
            goto LABEL_73;
          }

LABEL_29:
          sub_1005B981C(&unk_1019F61D0);
          v39 = swift_initStackObject();
          *(v39 + 16) = xmmword_10146C4D0;
          v40 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery + 8);
          *(v39 + 32) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery);
          *(v39 + 40) = v40;
          v41 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery + 8);
          *(v39 + 48) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery);
          *(v39 + 56) = v41;
          v42 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery + 8);
          *(v39 + 64) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery);
          *(v39 + 72) = v42;

          sub_100A759A0(9, 8, v39);
          swift_setDeallocating();
          swift_arrayDestroy();
          goto LABEL_30;
        }

LABEL_28:
        sub_1005B981C(&unk_1019F61D0);
        v35 = swift_initStackObject();
        *(v35 + 16) = xmmword_10146C4D0;
        v36 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery + 8);
        *(v35 + 32) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery);
        *(v35 + 40) = v36;
        v37 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery + 8);
        *(v35 + 48) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery);
        *(v35 + 56) = v37;
        v38 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery + 8);
        *(v35 + 64) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery);
        *(v35 + 72) = v38;

        sub_100A759A0(8, 7, v35);
        swift_setDeallocating();
        swift_arrayDestroy();
        goto LABEL_29;
      }

      if (v13 != 5)
      {
LABEL_27:
        sub_1005B981C(&unk_1019F61D0);
        v33 = swift_initStackObject();
        *(v33 + 16) = xmmword_10146C6B0;
        v34 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery + 8);
        *(v33 + 32) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery);
        *(v33 + 40) = v34;

        sub_100A759A0(7, 6, v33);
        swift_setDeallocating();
        sub_100874FB4(v33 + 32);
        goto LABEL_28;
      }

LABEL_26:
      sub_1005B981C(&unk_1019F61D0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10146BDE0;
      v30 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersTableCreationSQLQuery + 8);
      *(v29 + 32) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersTableCreationSQLQuery);
      v31 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery);
      v32 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery + 8);
      *(v29 + 40) = v30;
      *(v29 + 48) = v31;
      *(v29 + 56) = v32;

      sub_100A759A0(6, 5, v29);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      goto LABEL_27;
    }

    if (v13 <= 1u)
    {
      if (!v13)
      {
        sub_100DD596C();
      }

      sub_100DD61EC();
    }

    else if (v13 != 2)
    {
      if (v13 != 3)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    sub_100DD6A3C();
LABEL_23:
    sub_100DD7F0C();
LABEL_24:
    sub_1005B981C(&unk_1019F61D0);
    v19 = swift_allocObject();
    v20 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery + 8);
    *(v19 + 32) = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery);
    *(v19 + 16) = xmmword_10146CA70;
    v21 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery);
    v22 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery + 8);
    *(v19 + 40) = v20;
    *(v19 + 48) = v21;
    v23 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery);
    v24 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery + 8);
    *(v19 + 56) = v22;
    *(v19 + 64) = v23;
    v25 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery);
    v26 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery + 8);
    *(v19 + 72) = v24;
    *(v19 + 80) = v25;
    v27 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery);
    v28 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery + 8);
    *(v19 + 88) = v26;
    *(v19 + 96) = v27;
    *(v19 + 104) = v28;

    sub_100A759A0(5, 4, v19);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    goto LABEL_26;
  }

  if (qword_1019F2258 != -1)
  {
LABEL_38:
    swift_once();
  }

  v15 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_allocObject();
  *(inited + 16) = xmmword_10146C6B0;
  v17 = sub_100022E58(&off_101873530, COERCE_DOUBLE(1), v16);
  if (v17 == 10)
  {
    goto LABEL_68;
  }

  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v17;
  v18 = static os_log_type_t.default.getter();
  sub_100005404(v15, &_mh_execute_header, v18, "No need to migrate database schema, already on latest version %{public}d", 72, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  return swift_deallocClassInstance();
}

uint64_t sub_100022484()
{
  v3 = v0;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v5 + 104);
  v88 = enum case for DispatchPredicate.onQueue(_:);
  v89 = v9;
  v90 = v5 + 104;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v91 = v12;
  v92 = v7;
  v12(v7, v4);
  if ((v8 & 1) == 0)
  {
    goto LABEL_48;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v15 = sub_10001CC04(v14, 0xD000000000000013, 0x8000000101585AD0);
  v2 = v1;

  if (!v1)
  {
    v16 = *(*(v15 + 16) + 32);
    v17 = v15;
    v7 = v92;
    *v92 = v16;
    v89(v7, v88, v4);
    v18 = v16;
    LOBYTE(v16) = _dispatchPreconditionTest(_:)();
    v91(v7, v4);
    if ((v16 & 1) == 0)
    {
      goto LABEL_49;
    }

    type metadata accessor for SQLiteRowIterator();
    v19 = swift_initStackObject();
    v19[4] = 0;
    v19[5] = 1;
    v19[2] = v17;
    v19[3] = 0;
    v20 = sub_10001E1D0();
    swift_setDeallocating();
    sub_10001E364(v19[3], v19[4], v19[5]);
    v21 = v17;
    if (v20)
    {
      v22 = sub_10001E378(0, v20);
      v24 = v23;

      if (v24)
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v25 = sub_100022E48(v22);
    if (v25 == 10)
    {
      v84 = v21;
      v85 = v11;
      v86 = v4;
      v26 = v22;
      v27 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_logCategory);
      sub_1005B981C(&qword_1019F54E0);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_10146C6B0;
      *(v28 + 56) = &type metadata for Int;
      *(v28 + 64) = &protocol witness table for Int;
      *(v28 + 32) = v26;
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v29, "Invalid schema version detected: %{public}d", 43, 2, v28);
      swift_setDeallocating();
      sub_100005070(v28 + 32);
      v30 = swift_initStackObject();
      v83 = v26;
      *(v30 + 32) = v26;
      v93 = v30 + 32;
      v11 = v30;
      *(v30 + 16) = xmmword_10146BDE0;
      *(v30 + 56) = &type metadata for Int;
      *(v30 + 64) = &protocol witness table for Int;
      v31 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_storeName);
      v32 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_storeName + 8);
      *(v30 + 96) = &type metadata for String;
      v87 = sub_1000053B0();
      v11[13] = v87;
      v11[9] = v31;
      v11[10] = v32;
      v33 = objc_opt_self();

      v82 = v33;
      LODWORD(v3) = [v33 _atomicIncrementAssertCount];
      v94 = [objc_allocWithZone(NSString) init];
      sub_100604538(v11, &v94);
      StaticString.description.getter();
      v4 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      v35 = [v34 lastPathComponent];

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v36;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v37 = static OS_os_log.crlAssert;
        v38 = swift_initStackObject();
        *(v38 + 16) = xmmword_10146CA70;
        *(v38 + 56) = &type metadata for Int32;
        *(v38 + 64) = &protocol witness table for Int32;
        *(v38 + 32) = v3;
        v39 = sub_100006370(0, &qword_1019F4D30);
        *(v38 + 96) = v39;
        v40 = sub_1005CF04C();
        *(v38 + 72) = v4;
        v41 = v87;
        *(v38 + 136) = &type metadata for String;
        *(v38 + 144) = v41;
        *(v38 + 104) = v40;
        *(v38 + 112) = v7;
        *(v38 + 120) = v2;
        *(v38 + 176) = &type metadata for UInt;
        *(v38 + 184) = &protocol witness table for UInt;
        *(v38 + 152) = 130;
        v42 = v94;
        *(v38 + 216) = v39;
        *(v38 + 224) = v40;
        *(v38 + 192) = v42;
        v43 = v4;
        v44 = v42;
        v45 = static os_log_type_t.error.getter();
        sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v38);
        swift_setDeallocating();
        v81 = sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v46 = static os_log_type_t.error.getter();
        sub_100005404(v37, &_mh_execute_header, v46, "Invalid schema version detected: %{public}d for database %{public}@", 67, 2, v11);

        type metadata accessor for __VaListBuilder();
        v47 = swift_allocObject();
        v48 = v11;
        v11 = v47;
        v47[2] = 8;
        v47[3] = 0;
        v49 = v47 + 3;
        v47[4] = 0;
        v47[5] = 0;
        v87 = v48;
        v3 = v48[2];
        if (!v3)
        {
LABEL_39:
          v69 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v70 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v71 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v72 = String._bridgeToObjectiveC()();

          [v82 handleFailureInFunction:v70 file:v71 lineNumber:130 isFatal:0 format:v72 args:v69];

          swift_setDeallocating();
          swift_arrayDestroy();
          sub_100A7B404();
          swift_allocError();
          *v73 = v83;
          swift_willThrow();
          v74 = v84;
          v75 = *(*(v84 + 16) + 32);
          v76 = v92;
          *v92 = v75;
          v77 = v86;
          v89(v76, v88, v86);
          v78 = v75;
          LOBYTE(v75) = _dispatchPreconditionTest(_:)();
          v91(v76, v77);
          if (v75)
          {
            swift_beginAccess();
            v79 = *(v74 + 24);
            inited = v74;
            if (v79)
            {
              sqlite3_finalize(v79);
              *(v74 + 24) = 0;
            }

            goto LABEL_42;
          }

LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
        }

        v7 = 0;
        while (1)
        {
          v50 = (v93 + 40 * v7);
          v2 = v50[4];
          sub_100020E58(v50, v50[3]);
          v51 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v4 = *v49;
          v52 = *(v51 + 16);
          v53 = __OFADD__(*v49, v52);
          v54 = *v49 + v52;
          if (v53)
          {
            break;
          }

          v55 = v51;
          v56 = v11[4];
          if (v56 >= v54)
          {
            goto LABEL_28;
          }

          if (v56 + 0x4000000000000000 < 0)
          {
            goto LABEL_46;
          }

          v2 = v11[5];
          if (2 * v56 > v54)
          {
            v54 = 2 * v56;
          }

          v11[4] = v54;
          if ((v54 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_47;
          }

          v57 = swift_slowAlloc();
          v11[5] = v57;
          if (v2)
          {
            if (v57 != v2 || v57 >= &v2[8 * v4])
            {
              memmove(v57, v2, 8 * v4);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_28:
            v57 = v11[5];
          }

          if (!v57)
          {
            goto LABEL_53;
          }

          v59 = *(v55 + 16);
          if (v59)
          {
            v60 = (v55 + 32);
            v61 = *v49;
            while (1)
            {
              v62 = *v60++;
              *&v57[8 * v61] = v62;
              v61 = *v49 + 1;
              if (__OFADD__(*v49, 1))
              {
                break;
              }

              *v49 = v61;
              if (!--v59)
              {
                goto LABEL_13;
              }
            }

            __break(1u);
            break;
          }

LABEL_13:

          if (++v7 == v3)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        swift_once();
      }
    }

    inited = v25;
    v63 = v21;
    v64 = *(*(v21 + 16) + 32);
    v65 = v92;
    *v92 = v64;
    v89(v65, v88, v4);
    v66 = v64;
    v67 = _dispatchPreconditionTest(_:)();
    v91(v65, v4);
    if ((v67 & 1) == 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    swift_beginAccess();
    v68 = *(v63 + 24);
    if (v68)
    {
      sqlite3_finalize(v68);
      *(v63 + 24) = 0;
    }

LABEL_42:
  }

  return inited;
}

unint64_t sub_100022E48(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

uint64_t sub_100022E58(uint64_t a1, double a2, uint8x16_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 10;
  }

  v4 = *(a1 + 32);
  v5 = v3 - 1;
  if (v3 != 1)
  {
    if (v3 < 5)
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (v3 >= 0x21)
    {
      v8 = v5 & 0xFFFFFFFFFFFFFFE0;
      v9 = vdupq_n_s8(v4);
      v10 = (a1 + 49);
      v11 = v5 & 0xFFFFFFFFFFFFFFE0;
      a3 = v9;
      do
      {
        v9 = vmaxq_u8(v9, v10[-1]);
        a3 = vmaxq_u8(a3, *v10);
        v10 += 2;
        v11 -= 32;
      }

      while (v11);
      v12 = vmaxq_u8(v9, a3);
      v12.i8[0] = vmaxvq_u8(v12);
      v4 = v12.u32[0];
      if (v5 == v8)
      {
        return v4;
      }

      if ((v5 & 0x1C) == 0)
      {
        v6 = v8 | 1;
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v13 = vdup_n_s16(v4);
    v14 = (v8 + a1 + 33);
    v15 = v8 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v16 = *v14++;
      a3.i32[0] = v16;
      a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
      v13 = vmax_u16((*&v13 & 0xFF00FF00FF00FFLL), *a3.i8);
      v15 += 4;
    }

    while (v15);
    v13.i16[0] = vmaxv_u16(v13);
    v4 = v13.u32[0];
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v4;
    }

LABEL_17:
    v17 = v3 - v6;
    v18 = (v6 + a1 + 32);
    do
    {
      v20 = *v18++;
      v19 = v20;
      if (v4 <= v20)
      {
        v4 = v19;
      }

      else
      {
        v4 = v4;
      }

      --v17;
    }

    while (v17);
  }

  return v4;
}

uint64_t type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row()
{
  result = qword_101A0EBD0;
  if (!qword_101A0EBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022FA0()
{
  Marks = type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row();
  v2 = *(Marks - 8);
  __chkstk_darwin(Marks);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v43 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_sideStore);
  sub_1005B981C(&qword_101A21FB0);
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = v51;
  if (v52)
  {
    v39 = v52;
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v14 = Error.publicDescription.getter(v49, v50);
    v16 = v15;
    *(inited + 56) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 64) = v17;
    *(inited + 32) = v14;
    *(inited + 40) = v16;
    swift_getErrorValue();
    v18 = Error.fullDescription.getter(v48);
    v0 = v12;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v17;
    *(inited + 72) = v18;
    *(inited + 80) = v19;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "Failed to updateLastOpenCrashedVersionBasedOnBoardLoadMarksInSideStore with error: %{public}@ %@", 96, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    goto LABEL_13;
  }

  v21 = *(v51 + 16);
  if (v21)
  {
    v37[1] = v11;
    v38 = v51;
    v39 = v52;
    v22 = v51 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v42 = *(v2 + 72);
    v41 = xmmword_10146C4D0;
    v40 = xmmword_10146BDE0;
    do
    {
      v47 = v21;
      sub_10000C83C(v22, v4, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v23 = static OS_os_log.boardStore;
      v45 = sub_1005B981C(&qword_1019F54E0);
      v24 = swift_initStackObject();
      *(v24 + 16) = v41;
      v25 = UUID.uuidString.getter();
      v27 = v26;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_1000053B0();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      v28 = Marks;
      v29 = *&v4[*(Marks + 20)];
      *(v24 + 96) = &type metadata for UInt64;
      *(v24 + 104) = &protocol witness table for UInt64;
      *(v24 + 72) = v29;
      v30 = *&v4[*(v28 + 24)];
      *(v24 + 136) = &type metadata for Int32;
      *(v24 + 144) = &protocol witness table for Int32;
      *(v24 + 112) = v30;
      v31 = static os_log_type_t.default.getter();
      v46 = v23;
      sub_100005404(v23, &_mh_execute_header, v31, "Setting lastOpenCrashVersion for board %{public}@ to %{public}d because it has %{public}d board load marks during updateLastOpenCrashedVersionBasedOnBoardLoadMarksInSideStore", 174, 2, v24);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      sub_100E16D2C(v4, v29, 0);
      v0 = v46;
      sub_100026028(v4, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
      v22 += v42;
      v21 = v47 - 1;
    }

    while (v47 != 1);
    sub_100A79510();
    v1 = v38;
LABEL_13:
    if (qword_1019F2258 == -1)
    {
LABEL_14:
      v32 = static os_log_type_t.default.getter();
      sub_100005404(v0, &_mh_execute_header, v32, "Finished updateLastOpenCrashedVersionBasedOnBoardLoadMarksInSideStore", 69, 2, &_swiftEmptyArrayStorage);
      v33 = v39;
      return sub_1000260E8(v1, v33);
    }

LABEL_20:
    swift_once();
    goto LABEL_14;
  }

  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v35 = static OS_os_log.boardStore;
  v36 = static os_log_type_t.default.getter();
  sub_100005404(v35, &_mh_execute_header, v36, "updateLastOpenCrashedVersionBasedOnBoardLoadMarksInSideStore resulted in no new crashed boards", 94, 2, &_swiftEmptyArrayStorage);
  v33 = 0;
  return sub_1000260E8(v1, v33);
}

uint64_t sub_100023694()
{
  result = type metadata accessor for CRLBoardIdentifier(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100023718@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  Marks = type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row();
  v3 = *(Marks - 8);
  v4 = __chkstk_darwin(Marks);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  if (qword_1019F22D8 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v9 = static OS_os_log.sideStore;
    v10 = static os_log_type_t.default.getter();
    sub_100005404(v9, &_mh_execute_header, v10, "fetchBoardLoadMarksThatCrashed", 30, 2, &_swiftEmptyArrayStorage);
    v11 = sub_100023B4C();
    if (v2)
    {
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      swift_getErrorValue();
      v13 = Error.publicDescription.getter(v37, v38);
      v15 = v14;
      *(inited + 56) = &type metadata for String;
      v16 = sub_1000053B0();
      *(inited + 64) = v16;
      *(inited + 32) = v13;
      *(inited + 40) = v15;
      swift_getErrorValue();
      v17 = Error.fullDescription.getter(v36);
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v16;
      *(inited + 72) = v17;
      *(inited + 80) = v18;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v9, &_mh_execute_header, v19, "fetchBoardLoadMarksThatCrashed failed with error %{public} %@", 61, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      result = swift_arrayDestroy();
      v21 = v2;
      goto LABEL_17;
    }

    v22 = v11;
    v30 = 0;
    v33 = v11[2];
    if (!v33)
    {
      break;
    }

    v2 = 0;
    v21 = &_swiftEmptyArrayStorage;
    v32 = v6;
    while (v2 < v22[2])
    {
      v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v24 = *(v3 + 72);
      sub_10000C69C(v22 + v23 + v24 * v2, v8, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
      if (*&v8[*(Marks + 24)] < 1)
      {
        sub_100025E48(v8, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
      }

      else
      {
        sub_1000253F8(v8, v6, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776C84(0, v21[2] + 1, 1);
          v21 = v35;
        }

        v27 = v21[2];
        v26 = v21[3];
        if (v27 >= v26 >> 1)
        {
          sub_100776C84(v26 > 1, v27 + 1, 1);
          v21 = v35;
        }

        v21[2] = v27 + 1;
        v28 = v21 + v23 + v27 * v24;
        v6 = v32;
        sub_1000253F8(v32, v28, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
      }

      if (v33 == ++v2)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  v21 = &_swiftEmptyArrayStorage;
LABEL_16:

  v2 = v30;
LABEL_17:
  v29 = v31;
  *v31 = v21;
  *(v29 + 8) = v2 != 0;
  return result;
}

void *sub_100023B4C()
{
  Marks = type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row();
  v105 = *(Marks - 8);
  v2 = __chkstk_darwin(Marks);
  v109 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v108 = &v94 - v4;
  v104 = type metadata accessor for UUID();
  v5 = *(v104 - 8);
  __chkstk_darwin(v104);
  v110 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v7 = __chkstk_darwin(v103);
  v102 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v101 = &v94 - v9;
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  v11 = __chkstk_darwin(v10 - 8);
  v100 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v99 = &v94 - v14;
  __chkstk_darwin(v13);
  v107 = &v94 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v0 + 24);
  *v19 = v20;
  v21 = *(v17 + 104);
  v114 = enum case for DispatchPredicate.onQueue(_:);
  v115 = v21;
  v21(v19);
  v22 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v116 = *(v17 + 8);
  v116(v19, v16);
  if ((v20 & 1) == 0)
  {
    goto LABEL_46;
  }

  v117 = 0;
  v118 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v117 = 0x205443454C4553;
  v118 = 0xE700000000000000;
  v23._countAndFlagsBits = sub_100024928(0, 0xE000000000000000);
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x204D4F524620;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25._object = 0x8000000101585340;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26 = v117;
  v27 = v118;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v29 = sub_10001CC04(v28, v26, v27);
  v111 = v1;
  if (v1)
  {

    if (qword_1019F22D8 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_4;
  }

  v37 = v29;

  v38 = *(*(v37 + 16) + 32);
  *v19 = v38;
  v39 = v114;
  v40 = v115;
  v115(v19, v114, v16);
  v41 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v116(v19, v16);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[4] = 0;
  inited[5] = 1;
  inited[2] = v37;
  inited[3] = 0;
  v97 = v37;

  v113 = inited;
  v43 = sub_10001E1D0();
  if (!v43)
  {
    v98 = &_swiftEmptyArrayStorage;
    v45 = v116;
LABEL_38:
    v89 = v97;

    v90 = v113;
    swift_setDeallocating();
    sub_10001E364(v90[3], v90[4], v90[5]);
    v91 = *(*(v89 + 16) + 32);
    *v19 = v91;
    v40(v19, v39, v16);
    v92 = v91;
    LOBYTE(v91) = _dispatchPreconditionTest(_:)();
    v45(v19, v16);
    if (v91)
    {
      swift_beginAccess();
      v93 = *(v89 + 24);
      if (v93)
      {
        sqlite3_finalize(v93);
        *(v89 + 24) = 0;
      }

      return v98;
    }

LABEL_49:
    __break(1u);
  }

  v44 = v43;
  v96 = (v5 + 32);
  v98 = &_swiftEmptyArrayStorage;
  v45 = v116;
  while (1)
  {
    v46 = *(*(v44 + 16) + 32);
    *v19 = v46;
    v40(v19, v39, v16);
    v47 = v46;
    LOBYTE(v46) = _dispatchPreconditionTest(_:)();
    v45(v19, v16);
    if ((v46 & 1) == 0)
    {
      break;
    }

    v48 = *(*(v44 + 16) + 32);
    *v19 = v48;
    v40(v19, v39, v16);
    v49 = v48;
    LOBYTE(v48) = _dispatchPreconditionTest(_:)();
    v45(v19, v16);
    if ((v48 & 1) == 0)
    {
      goto LABEL_43;
    }

    swift_beginAccess();
    if (sqlite3_column_type(*(v44 + 24), 0) == 5 || (v50 = sqlite3_column_blob(*(v44 + 24), 0)) == 0)
    {
      v53 = 0;
      v55 = 0xF000000000000000;
    }

    else
    {
      v51 = v50;
      v52 = sqlite3_column_bytes(*(v44 + 24), 0);
      v53 = sub_100024DD4(v51, v52);
      v55 = v54;
    }

    v56 = *(*(v44 + 16) + 32);
    *v19 = v56;
    v115(v19, v39, v16);
    v57 = v56;
    LOBYTE(v56) = _dispatchPreconditionTest(_:)();
    v116(v19, v16);
    if ((v56 & 1) == 0)
    {
      goto LABEL_44;
    }

    v58 = sqlite3_column_type(*(v44 + 24), 1);
    if (v58 == 5)
    {
      v112 = 0;
    }

    else
    {
      v112 = sqlite3_column_int64(*(v44 + 24), 1);
    }

    v59 = *(*(v44 + 16) + 32);
    *v19 = v59;
    v115(v19, v114, v16);
    v60 = v59;
    LOBYTE(v59) = _dispatchPreconditionTest(_:)();
    v116(v19, v16);
    if ((v59 & 1) == 0)
    {
      goto LABEL_45;
    }

    if (sqlite3_column_type(*(v44 + 24), 2) == 5 || (v63 = sqlite3_column_int(*(v44 + 24), 2), v55 >> 60 == 15) || v58 == 5)
    {
      if (qword_1019F22D8 != -1)
      {
        swift_once();
      }

      v61 = static OS_os_log.sideStore;
      v62 = static os_log_type_t.error.getter();
      sub_100005404(v61, &_mh_execute_header, v62, "Failed to fetch some mark data for a particular row while fetching AllBoardLoadMarks", 84, 2, &_swiftEmptyArrayStorage);
    }

    else
    {
      v64 = v63;
      sub_100024E84(v53, v55);
      sub_100024E98(v53, v55);
      v65 = v111;
      sub_100024EEC(v110, v53, v55);
      if (!v65)
      {
        v111 = 0;
        v95 = v66;
        v94 = v67;
        sub_100025870(v53, v55);
        v71 = v102;
        (*v96)(v102, v110, v104);
        v72 = &v71[*(v103 + 20)];
        v73 = v94;
        *v72 = v95;
        v72[1] = v73;
        v95 = type metadata accessor for CRLBoardIdentifierStorage;
        v74 = v71;
        v75 = v101;
        sub_1000253F8(v74, v101, type metadata accessor for CRLBoardIdentifierStorage);
        v76 = v75;
        v77 = v100;
        sub_1000253F8(v76, v100, v95);
        v95 = type metadata accessor for CRLBoardIdentifier;
        v78 = v77;
        v79 = v99;
        sub_1000253F8(v78, v99, type metadata accessor for CRLBoardIdentifier);
        v80 = v79;
        v81 = v107;
        sub_1000253F8(v80, v107, v95);
        v82 = v81;
        v83 = v108;
        sub_10000C69C(v82, v108, type metadata accessor for CRLBoardIdentifier);
        v84 = Marks;
        *(v83 + *(Marks + 20)) = v112;
        *(v83 + *(v84 + 24)) = v64;
        sub_10000C69C(v83, v109, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
        v85 = v98;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_100025884(0, v85[2] + 1, 1, v85);
        }

        v98 = v85;
        v87 = v85[2];
        v86 = v85[3];
        if (v87 >= v86 >> 1)
        {
          v98 = sub_100025884(v86 > 1, v87 + 1, 1, v98);
        }

        sub_100025870(v53, v55);
        sub_100025870(v53, v55);
        sub_100025E48(v108, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
        sub_100025E48(v107, type metadata accessor for CRLBoardIdentifier);
        v88 = v98;
        v98[2] = v87 + 1;
        sub_1000253F8(v109, v88 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v87, type metadata accessor for CRLSideStore.BoardLoadMarksColumn.Row);
        v70 = sub_10001E1D0();
        v44 = v70;
        v39 = v114;
        goto LABEL_30;
      }

      sub_100025870(v53, v55);
      sub_100025870(v53, v55);
      if (qword_1019F22D8 != -1)
      {
        swift_once();
      }

      v68 = static OS_os_log.sideStore;
      v69 = static os_log_type_t.error.getter();
      sub_100005404(v68, &_mh_execute_header, v69, "Failed to convert a board identifier data into a board identifier while fetching AllBoardLoadMarks", 98, 2, &_swiftEmptyArrayStorage);
      v111 = 0;
    }

    v39 = v114;
    sub_100025870(v53, v55);

    v70 = sub_10001E1D0();
    v44 = v70;
LABEL_30:
    v40 = v115;
    v45 = v116;
    if (!v70)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  swift_once();
LABEL_4:
  v30 = static OS_os_log.sideStore;
  sub_1005B981C(&qword_1019F54E0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v32 = Error.localizedDescription.getter();
  v34 = v33;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_1000053B0();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v35 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v35, "Failed to fetch _fetchAllBoardLoadMarks with error %@", 53, 2, v31);
  swift_setDeallocating();
  sub_100005070(v31 + 32);
  return swift_willThrow();
}

uint64_t sub_100024928(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v5 = a1;
    v4 = a2;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6._countAndFlagsBits = 0xD000000000000010;
  v6._object = 0x8000000101585360;
  String.append(_:)(v6);

  v7 = &_swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100024CBC(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1, &_swiftEmptyArrayStorage);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_100024CBC((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v5;
  *(v10 + 5) = v4;

  v11._countAndFlagsBits = 0x6E6F6973726576;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100024CBC(0, *(v7 + 2) + 1, 1, v7);
  }

  v13 = *(v7 + 2);
  v12 = *(v7 + 3);
  if (v13 >= v12 >> 1)
  {
    v7 = sub_100024CBC((v12 > 1), v13 + 1, 1, v7);
  }

  *(v7 + 2) = v13 + 1;
  v14 = &v7[16 * v13];
  *(v14 + 4) = v5;
  *(v14 + 5) = v4;

  v15._countAndFlagsBits = 0x7265746E756F63;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100024CBC(0, *(v7 + 2) + 1, 1, v7);
  }

  v17 = *(v7 + 2);
  v16 = *(v7 + 3);
  if (v17 >= v16 >> 1)
  {
    v7 = sub_100024CBC((v16 > 1), v17 + 1, 1, v7);
  }

  *(v7 + 2) = v17 + 1;
  v18 = &v7[16 * v17];
  *(v18 + 4) = v5;
  *(v18 + 5) = v4;

  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v19 = BidirectionalCollection<>.joined(separator:)();

  return v19;
}

char *sub_100024CBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&unk_1019F61D0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100024DD4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100AE6760(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_100024E84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100024E98(a1, a2);
  }

  return a1;
}

uint64_t sub_100024E98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100024EEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = BYTE6(a3);
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 16);
    v7 = *(a2 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 >= 16)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 >= 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10084DC7C();
      swift_allocError();
      *v11 = 0;
      swift_willThrow();
      return;
    }

    goto LABEL_39;
  }

  if (BYTE6(a3) < 0x10uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v12 = Data.subdata(in:)();
  UUID.init(crl_data:)(v12, v13);
  if (v3)
  {
    return;
  }

  if (v6 == 2)
  {
    v15 = *(a2 + 16);
    v14 = *(a2 + 24);
    v9 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (v9)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v16 < 17)
    {
      return;
    }
  }

  else
  {
    if (v6 == 1)
    {
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        if (HIDWORD(a2) - a2 < 17)
        {
          return;
        }

        goto LABEL_19;
      }

      goto LABEL_40;
    }

    if (v4 < 0x11uLL)
    {
      return;
    }
  }

LABEL_19:
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v17 = HIDWORD(a2) - a2;
        goto LABEL_29;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_28;
  }

  v19 = *(a2 + 16);
  v18 = *(a2 + 24);
  v17 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_28:
    v17 = v4;
  }

LABEL_29:
  if (v17 < 16)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v20 = Data.subdata(in:)();
  v22 = v21;
  sub_10084D938(v20, v21);
  if (!v23)
  {
    v26 = v20;
    v27 = v22;
    sub_100024E98(v20, v22);
    sub_1005B981C(&qword_101A04590);
    if (swift_dynamicCast())
    {
      sub_100050F74(v24, v28);
      sub_100020E58(v28, v29);
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_10002640C(v20, v22);
        sub_100020E58(v28, v29);
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        sub_100005070(v28);
        return;
      }

      sub_100005070(v28);
    }

    else
    {
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      sub_10000CAAC(v24, &qword_101A04598);
    }

    sub_10084D714(v20, v22);
  }

  sub_10002640C(v20, v22);
}

uint64_t sub_1000251F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000252C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000253F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000254C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000256D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000257A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025870(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002640C(a1, a2);
  }

  return a1;
}

size_t sub_1000258AC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1005B981C(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_1(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100025A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025D28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025D88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025EA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025F08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025F68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025FC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100026028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100026088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000260E8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t UUID.init(crl_data:)(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_17:
      sub_10070A7DC();
      swift_allocError();
      swift_willThrow();
      return sub_10002640C(a1, a2);
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_24;
      }

      v9 = __DataStorage._bytes.getter();
      if (!v9)
      {
        goto LABEL_29;
      }

      v10 = v9;
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(a1, v11))
      {
        goto LABEL_26;
      }

      v12 = a1 - v11 + v10;
      __DataStorage._length.getter();
      if (v12)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_23;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      goto LABEL_27;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v18 = v14 - v17 + v16;
      __DataStorage._length.getter();
      if (!v18)
      {
        goto LABEL_28;
      }

LABEL_21:
      UUID.init(uuid:)();
      return sub_10002640C(a1, a2);
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __DataStorage._length.getter();
LABEL_28:
  __break(1u);
LABEL_29:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_10002640C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10002648C()
{
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000264D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000265A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000265E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026620()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026660(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  swift_unknownObjectRelease();
  a1(*(v3 + 32));
  a2(*(v3 + 40));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_1000266CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002670C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100026808(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_100026860()
{
  v1 = sub_1005B981C(&qword_1019FBEE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000268F4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000269C0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100026A00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100026A40()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100026B40()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026B80(uint64_t *a1)
{
  v2 = sub_1005B981C(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100026C04()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100026C54()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100026CA4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100026CEC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100026D38()
{

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100026D80()
{
  v1 = sub_1005B981C(&unk_101A050F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100026E14()
{
  v1 = _s11SwiftUIViewVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v21 = (v2 + 16) & ~v2;
  v4 = v0 + v21;

  swift_unknownObjectWeakDestroy();

  v5 = v1[8];
  sub_1005B981C(&qword_101A0A8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v4 + v1[10];
  v8 = _s13ItemViewModelVMa();
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v7, v9);
    v10 = v8[5];
    v20 = v2;
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 8);
    v12(v7 + v10, v11);
    v13 = v11;
    v2 = v20;
    v12(v7 + v8[6], v13);
  }

  sub_1005B981C(&qword_101A0A6C8);

  v14 = v4 + v1[11];
  v15 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v15 - 8) + 8))(v14, v15);
  sub_1005B981C(&qword_101A0A6D0);

  v16 = v4 + v1[14];
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  sub_1005B981C(&qword_101A0A6D8);

  return _swift_deallocObject(v0, v21 + v3, v2 | 7);
}

uint64_t sub_1000271E4(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10002722C(void (*a1)(void))
{
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 41, 7);
}

uint64_t sub_100027284()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000272C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027304()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002738C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000274AC()
{

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100027504(uint64_t *a1)
{
  v3 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = sub_1005B981C(a1);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;

  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v1 + v5, v13);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  (*(v8 + 8))(v1 + v10, v7);

  return _swift_deallocObject(v1, v10 + v11, v12 | 7);
}

uint64_t sub_10002768C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000276D4()
{

  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10002773C()
{
  v1 = (type metadata accessor for CRLCompactScenesListUI_i(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectWeakDestroy();

  v5 = v0 + v3 + v1[10];
  v6 = type metadata accessor for EditMode();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1005B981C(&qword_101A30C98);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100027880()
{
  v1 = type metadata accessor for CRLActiveParticipantDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + *(v1 + 24);
  v7 = type metadata accessor for Tips.Status();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  sub_1005B981C(&qword_101A32018);

  v9 = *(v1 + 28);
  sub_1005B981C(&qword_101A25218);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UserInterfaceSizeClass();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100027ABC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100027B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v15 = 0;
    v16 = 1;
    result = sub_100027CA8(a2, 0, 0, a1, &v15);
    if (!v3)
    {
      v14 = v16;
      *a3 = v15;
      *(a3 + 8) = v14;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100027CA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, sqlite3_int64 *a5)
{
  v41 = a5;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v11 = v12;
  v14 = v9 + 104;
  v13 = *(v9 + 104);
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v43 = v13;
  v13(v11);
  v15 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v45 = *(v9 + 8);
  v45(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v42 = v8;
  v39 = a3;
  v40 = a2;
  a2 = sub_1000280F0();
  v17 = v16;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v19 = v46;
  v20 = sub_10001CC04(v18, 0xD00000000000003ALL, 0x80000001015A68E0);
  v46 = v19;
  if (v19)
  {
    v14 = v17;

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v21 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = a2;
      *(inited + 40) = v14;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v23, "Failed to fetch value for key %@", 32, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return swift_willThrow();
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v25 = v20;

  sub_1000285F8(a2, v17, 1);

  v26 = *(*(v25 + 16) + 32);
  *v11 = v26;
  v27 = v44;
  v28 = v42;
  v29 = v43;
  v43(v11, v44, v42);
  v30 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  result = (v45)(v11, v28);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteRowIterator();
  v31 = swift_initStackObject();
  v31[4] = 0;
  v31[5] = 1;
  v31[2] = v25;
  v31[3] = 0;
  v32 = sub_10001E1D0();
  swift_setDeallocating();
  sub_10001E364(v31[3], v31[4], v31[5]);
  if (v32)
  {

    v33 = sub_100028894(0, v32);
    v34 = v41;
    *v41 = v33;
    *(v34 + 8) = v35 & 1;
    if (v40)
    {
      v40(v32, 1);
    }
  }

  v36 = *(*(v25 + 16) + 32);
  *v11 = v36;
  v29(v11, v27, v28);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  result = (v45)(v11, v28);
  if ((v36 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v38 = *(v25 + 24);
  if (v38)
  {
    sqlite3_finalize(v38);
    *(v25 + 24) = 0;
  }
}

unint64_t sub_1000280F0()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v5);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000C83C(v1, v7, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0xD000000000000017;
      }

      else
      {
        return 0xD000000000000024;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD00000000000002DLL;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v9 = *v7;
        v53 = 0xD000000000000017;
        v54 = 0x80000001015A4150;
        v33 = [v9 zoneName];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37._countAndFlagsBits = v34;
        v37._object = v36;
        String.append(_:)(v37);

        v38._countAndFlagsBits = 95;
        v38._object = 0xE100000000000000;
        String.append(_:)(v38);
        v39 = [v9 ownerName];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        if (v40 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v42 != v43)
        {
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v45 & 1) == 0)
          {
LABEL_22:
            v46 = [v9 ownerName];
            v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v49 = v48;

            v50 = v47;
LABEL_28:
            v51 = v49;
            String.append(_:)(*&v50);

            return v53;
          }

LABEL_27:
          v50 = 0;
          v49 = 0xE000000000000000;
          goto LABEL_28;
        }
      }

      else
      {
        v9 = *v7;
        v53 = 0x6F7A5F6863746566;
        v54 = 0xEB000000005F656ELL;
        v10 = [v9 zoneName];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14._countAndFlagsBits = v11;
        v14._object = v13;
        String.append(_:)(v14);

        v15._countAndFlagsBits = 95;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);
        v16 = [v9 ownerName];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (v17 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v19 != v20)
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v22 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_27;
        }
      }

      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_100025668(v7, v4, type metadata accessor for CRLBoardIdentifier);
      v53 = 0xD00000000000001ELL;
      v54 = 0x80000001015A4130;
      v52._countAndFlagsBits = UUID.uuidString.getter();
      v52._object = v24;

      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);

      countAndFlagsBits = v52._countAndFlagsBits;
      object = v52._object;
      v28 = &v4[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
      v29 = *v28;
      v30 = v28[1];
      v52._countAndFlagsBits = countAndFlagsBits;
      v52._object = object;

      v31._countAndFlagsBits = v29;
      v31._object = v30;
      String.append(_:)(v31);

      String.append(_:)(v52);

      v32 = v53;
      sub_100026028(v4, type metadata accessor for CRLBoardIdentifier);
      return v32;
    }

    else
    {
      return 0xD000000000000012;
    }
  }
}

uint64_t sub_1000285F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23[0] = a2;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(*(v4 + 16) + 32);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v18 = *(v12 + 8);
  v17 = v12 + 8;
  v19 = v18(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v23[1] = a1;
  v23[2] = v23[0];
  static String.Encoding.utf8.getter();
  sub_100017CD8();
  v17 = StringProtocol.cString(using:)();
  (*(v8 + 8))(v10, v7);
  v19 = swift_beginAccess();
  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    v19 = *(v4 + 24);
    if (qword_1019F17C8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  v22 = v19;
  swift_once();
  v19 = v22;
LABEL_5:
  if (v17)
  {
    v20 = (v17 + 32);
  }

  else
  {
    v20 = 0;
  }

  sqlite3_bind_text(v19, a3, v20, -1, qword_101AD69D0);
}

sqlite3_int64 sub_100028894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(a2 + 16) + 32);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_beginAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a2 + 24), a1) == 5)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int64(*(a2 + 24), a1);
  }
}

uint64_t sub_100028A14(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028A70()
{
  v1 = v0;
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlDefault;
  v3 = static os_log_type_t.default.getter();
  result = sub_100005404(v2, &_mh_execute_header, v3, "CloudKit syncing is enabled", 27, 2, _swiftEmptyArrayStorage);
  v5 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardDataStore);
  if (v5)
  {
    type metadata accessor for CRLSyncPriorityProvider();
    swift_allocObject();
    v6 = v5;
    v7 = sub_100028CF8();
    type metadata accessor for CRLSyncDriver();
    swift_allocObject();
    v8 = sub_100029214(v6, v7);

    *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_syncDriver) = v8;

    sub_10002E0B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for CRLSyncPriorityProvider()
{
  result = qword_1019FA540;
  if (!qword_1019FA540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100028BF4()
{
  if (!qword_101A14A70)
  {
    type metadata accessor for CRLBoardIdentifier(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A14A70);
    }
  }
}

void sub_100028C4C()
{
  sub_100028BF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100028CF8()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12 - 8);
  __chkstk_darwin(v12);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 24) = &_swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC8Freeform23CRLSyncPriorityProvider_currentFocusedBoard;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC8Freeform23CRLSyncPriorityProvider_statusByIdentifier;
  *(v0 + v8) = sub_1000290D8(&_swiftEmptyArrayStorage);
  v9 = sub_100006370(0, &qword_1019F2D90);
  v11[0] = " because boardWasFocused";
  v11[1] = v9;
  static DispatchQoS.unspecified.getter();
  v13 = &_swiftEmptyArrayStorage;
  sub_100006448(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1005B981C(&unk_1019FB800);
  sub_10001A2F8(&qword_101A1DE80, &unk_1019FB800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_10002901C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100029100(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1005B981C(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      result = a4();
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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

id sub_100029214(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v141 = &v128 - v7;
  v143 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v143);
  v140 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v138 - 1);
  __chkstk_darwin(v138);
  v11 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  type metadata accessor for CRLAccountUtilities();
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 120) = swift_allocObject();
  type metadata accessor for CRLUnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = v14;
  atomic_thread_fence(memory_order_acq_rel);
  *(v3 + 128) = v13;
  *(v3 + 136) = 0;
  *(v3 + 16) = a1;
  *(v3 + 72) = a2;
  type metadata accessor for CRLDatabaseSyncDataSource();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = 0;
  *(v3 + 56) = v15;
  v142 = type metadata accessor for CRLBoardSyncLogicProvider();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v3 + 48) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = 1;
  *(v3 + 64) = v17;
  v18 = qword_1019F1588;
  v19 = a1;
  v144 = a2;

  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_101AD6518;
  type metadata accessor for CRLBoardShareController();
  v21 = swift_allocObject();
  v22 = v20;
  v139 = v22;
  swift_defaultActor_initialize();
  type metadata accessor for CRLZoneShareController();
  v21[16] = 0;
  v21[17] = 0;
  v23 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v23 + 112) = v22;
  *(v23 + 120) = 0;
  v21[14] = v23;
  v21[15] = v19;
  v133 = v19;
  *(v3 + 40) = v21;
  sub_100006370(0, &qword_1019F2D90);
  static DispatchQoS.userInitiated.getter();
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v138);
  v146 = _swiftEmptyArrayStorage;
  sub_10002A8DC(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1005B981C(&unk_1019FB800);
  sub_1000067A8(&qword_101A1DE80, &unk_1019FB800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25 = *(v3 + 48);
  v137 = *(v3 + 56);
  v138 = v24;
  v26 = v142;
  v163 = v142;
  v164 = &off_1018A8500;
  v162[0] = v25;
  v140 = v25;
  v27 = type metadata accessor for CRLSyncPriorityProvider();
  v160 = v27;
  v161 = &off_101881800;
  v159[0] = v144;
  v143 = type metadata accessor for CRLSyncController();
  v28 = objc_allocWithZone(v143);
  v29 = sub_10002A948(v162, v163);
  v135 = &v128;
  __chkstk_darwin(v29);
  v31 = (&v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = sub_10002A948(v159, v160);
  v134 = &v128;
  __chkstk_darwin(v33);
  v35 = (&v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v31;
  v38 = *v35;
  v157 = v26;
  v158 = &off_1018A8500;
  v156[0] = v37;
  v154 = v27;
  v155 = &off_101881800;
  v136 = v27;
  v153[0] = v38;
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchStatusObserver + 8] = 0;
  swift_unknownObjectWeakInit();
  v39 = &v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine];
  *(v39 + 4) = 0;
  *v39 = 0u;
  *(v39 + 1) = 0u;
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask] = 0;
  v40 = OBJC_IVAR____TtC8Freeform17CRLSyncController_targetedFetchTasks;
  swift_retain_n();
  swift_retain_n();
  v41 = v137;

  v42 = v138;
  *&v28[v40] = sub_10002A998(_swiftEmptyArrayStorage);
  v43 = &v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_latestFetchedSyncMetadata];
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *(v43 + 4) = 0;
  v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_shouldFetchAssets] = 0;
  v44 = OBJC_IVAR____TtC8Freeform17CRLSyncController_accountChangeObserverManager;
  v138 = type metadata accessor for CRLAccountChangeObserverManager();
  v45 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v45 + 112) = &_swiftEmptySetSingleton;
  *&v28[v44] = v45;
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingFetchCounter] = 0;
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingSendCounter] = 0;
  v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope] = 0;
  v46 = &v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_dataSource];
  *v46 = v41;
  v46[1] = &off_101899E78;
  sub_10000630C(v156, &v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider]);
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue] = v42;
  sub_10000630C(v153, &v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncPriorityProvider]);
  v47 = v139;
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_container] = v139;
  *&v28[OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchedRecords] = &_swiftEmptyDictionarySingleton;
  v152.receiver = v28;
  v152.super_class = v143;
  v139 = v47;
  v48 = v42;
  v49 = objc_msgSendSuper2(&v152, "init");
  v50 = *&v49[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v49;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_10002B574;
  *(v52 + 24) = v51;
  v150 = sub_10002AAE0;
  v151 = v52;
  v146 = _NSConcreteStackBlock;
  v147 = *"";
  v137 = &v148;
  v148 = sub_10002AAB8;
  v149 = &unk_1018A72B8;
  v53 = _Block_copy(&v146);
  v54 = v49;
  v55 = v50;

  dispatch_sync(v55, v53);

  _Block_release(v53);
  v140 = v48;

  sub_100005070(v153);
  sub_100005070(v156);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_100005070(v159);
  sub_100005070(v162);
  *(v3 + 24) = v54;
  v56 = *(v3 + 40);
  v57 = type metadata accessor for TaskPriority();
  v58 = *(v57 - 8);
  v59 = v141;
  v129 = *(v58 + 56);
  v130 = v57;
  v128 = v58 + 56;
  v129(v141, 1, 1);
  v60 = swift_allocObject();
  v60[2] = 0;
  v60[3] = 0;
  v60[4] = v54;
  v60[5] = v56;
  v60[6] = &off_1018B8A98;
  v61 = v54;
  swift_retain_n();
  v62 = v61;
  sub_10064191C(0, 0, v59, &unk_1014B7330, v60);

  v134 = *(v3 + 64);
  v63 = *(v3 + 48);
  v64 = v142;
  v163 = v142;
  v164 = &off_1018A8500;
  v162[0] = v63;
  v135 = v63;
  v65 = v136;
  v160 = v136;
  v161 = &off_101881800;
  v159[0] = v144;
  v66 = objc_allocWithZone(v143);
  v67 = sub_10002A948(v162, v163);
  v132 = &v128;
  __chkstk_darwin(v67);
  v69 = (&v128 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v70 + 16))(v69);
  v71 = sub_10002A948(v159, v160);
  v131 = &v128;
  __chkstk_darwin(v71);
  v73 = (&v128 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  v75 = *v69;
  v76 = *v73;
  v157 = v64;
  v158 = &off_1018A8500;
  v156[0] = v75;
  v154 = v65;
  v155 = &off_101881800;
  v153[0] = v76;
  *&v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchStatusObserver + 8] = 0;
  swift_unknownObjectWeakInit();
  v77 = &v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine];
  *(v77 + 4) = 0;
  *v77 = 0u;
  *(v77 + 1) = 0u;
  *&v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_saveTask] = 0;
  v78 = OBJC_IVAR____TtC8Freeform17CRLSyncController_targetedFetchTasks;
  swift_retain_n();
  swift_retain_n();
  v79 = v140;
  v80 = v134;

  *&v66[v78] = sub_10002A998(_swiftEmptyArrayStorage);
  v81 = &v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_latestFetchedSyncMetadata];
  *v81 = 0u;
  *(v81 + 1) = 0u;
  *(v81 + 4) = 0;
  v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_shouldFetchAssets] = 0;
  v82 = OBJC_IVAR____TtC8Freeform17CRLSyncController_accountChangeObserverManager;
  v83 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v83 + 112) = &_swiftEmptySetSingleton;
  *&v66[v82] = v83;
  *&v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingFetchCounter] = 0;
  *&v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_ongoingSendCounter] = 0;
  v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope] = 1;
  v84 = &v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_dataSource];
  *v84 = v80;
  v84[1] = &off_101899E78;
  sub_10000630C(v156, &v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncLogicProvider]);
  *&v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue] = v79;
  sub_10000630C(v153, &v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncPriorityProvider]);
  v85 = v139;
  *&v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_container] = v139;
  *&v66[OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchedRecords] = &_swiftEmptyDictionarySingleton;
  v145.receiver = v66;
  v145.super_class = v143;
  v86 = v85;
  v87 = v79;
  v88 = objc_msgSendSuper2(&v145, "init");
  v89 = *&v88[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
  v54 = swift_allocObject();
  *(v54 + 2) = 0;
  *(v54 + 3) = 0;
  *(v54 + 4) = v88;
  v55 = swift_allocObject();
  v55[2].isa = sub_100EA87F8;
  v55[3].isa = v54;
  v150 = sub_10002AAE0;
  v151 = v55;
  v146 = _NSConcreteStackBlock;
  v147 = *"";
  v148 = sub_10002AAB8;
  v149 = &unk_1018A7358;
  v90 = _Block_copy(&v146);
  v91 = v88;
  v92 = v89;

  dispatch_sync(v92, v90);

  _Block_release(v90);
  v143 = v87;

  sub_100005070(v153);
  sub_100005070(v156);
  LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

  if (v87)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_9;
  }

  sub_100005070(v159);
  sub_100005070(v162);
  *(v3 + 32) = v91;
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v94 = result;
  v95 = [result aa_primaryAppleAccount];

  if (v95)
  {
  }

  *(v3 + 112) = v95 != 0;
  v55 = objc_opt_self();
  v54 = [v55 defaultCenter];
  if (qword_1019F2528 != -1)
  {
    goto LABEL_18;
  }

LABEL_9:
  v96 = qword_101AD8570;
  v97 = swift_allocObject();
  swift_weakInit();
  v150 = sub_100EA87F4;
  v151 = v97;
  v146 = _NSConcreteStackBlock;
  v147 = *"";
  v148 = sub_100059694;
  v149 = &unk_1018A73A8;
  v98 = _Block_copy(&v146);
  v99 = v133;

  v100 = [v54 addObserverForName:v96 object:v99 queue:0 usingBlock:v98];
  _Block_release(v98);

  *(v3 + 80) = v100;
  swift_unknownObjectRelease();
  v101 = [v55 defaultCenter];
  if (qword_1019F2530 != -1)
  {
    swift_once();
  }

  v102 = qword_101AD8578;
  v103 = swift_allocObject();
  swift_weakInit();
  v150 = sub_100EA8758;
  v151 = v103;
  v146 = _NSConcreteStackBlock;
  v147 = *"";
  v148 = sub_100059694;
  v149 = &unk_1018A73D0;
  v104 = _Block_copy(&v146);
  v105 = v99;

  v106 = [v101 addObserverForName:v102 object:v105 queue:0 usingBlock:v104];
  _Block_release(v104);

  *(v3 + 96) = v106;
  swift_unknownObjectRelease();
  v107 = [v55 defaultCenter];
  if (qword_1019F2890 != -1)
  {
    swift_once();
  }

  v108 = qword_101AD8F50;
  v109 = swift_allocObject();
  swift_weakInit();
  v150 = sub_100EA8774;
  v151 = v109;
  v146 = _NSConcreteStackBlock;
  v147 = *"";
  v148 = sub_100059694;
  v149 = &unk_1018A73F8;
  v110 = _Block_copy(&v146);

  v111 = [v107 addObserverForName:v108 object:0 queue:0 usingBlock:v110];
  _Block_release(v110);

  *(v3 + 88) = v111;
  swift_unknownObjectRelease();
  v112 = [v55 defaultCenter];
  if (qword_1019F2898 != -1)
  {
    swift_once();
  }

  v113 = qword_101AD8F58;
  v114 = swift_allocObject();
  swift_weakInit();

  v150 = sub_10002D380;
  v151 = v114;
  v146 = _NSConcreteStackBlock;
  v147 = *"";
  v148 = sub_100059694;
  v149 = &unk_1018A7420;
  v115 = _Block_copy(&v146);

  v116 = [v112 addObserverForName:v113 object:0 queue:0 usingBlock:v115];
  _Block_release(v115);

  *(v3 + 104) = v116;
  swift_unknownObjectRelease();
  v117 = *(v3 + 24);
  v118 = v141;
  (v129)(v141, 1, 1, v130);
  v119 = swift_allocObject();
  v119[2] = 0;
  v119[3] = 0;
  v119[4] = v117;
  v119[5] = v3;
  v119[6] = &off_1018A7078;
  swift_retain_n();
  v120 = v117;
  sub_10064191C(0, 0, v118, &unk_1014B7338, v119);

  *(*(v3 + 32) + OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchStatusObserver + 8) = &off_1018A7060;
  swift_unknownObjectWeakAssign();
  *(*(v3 + 24) + OBJC_IVAR____TtC8Freeform17CRLSyncController_fetchStatusObserver + 8) = &off_1018A7060;
  swift_unknownObjectWeakAssign();
  sub_1005B981C(&qword_101A22430);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_10146BDE0;
  v122 = *(v3 + 24);
  *(inited + 40) = v122;
  *(inited + 48) = 1;
  v123 = *(v3 + 32);
  *(inited + 56) = v123;
  v124 = sub_10002D7B4(inited);
  swift_setDeallocating();
  v125 = v122;
  v126 = v123;
  sub_1005B981C(&qword_101A22438);
  swift_arrayDestroy();
  type metadata accessor for CRLSyncHelper();
  v127 = swift_allocObject();
  *(v127 + 16) = v124;
  sub_10002DCD0();

  *&v105[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper] = v127;

  return v3;
}

uint64_t sub_10002A800()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A8DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002A948(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_10002A998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0EFC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1007C8A78(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_10002AB3C()
{
  v1 = v0;
  v2 = type metadata accessor for CKSyncEngine.Configuration();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = __chkstk_darwin(v2);
  v65 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v66 = &v57 - v5;
  v6 = sub_1005B981C(&qword_101A0BA70);
  v7 = __chkstk_darwin(v6 - 8);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v64 = &v57 - v10;
  __chkstk_darwin(v9);
  v12 = &v57 - v11;
  v13 = type metadata accessor for CKSyncEngine.State.Serialization();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_queue);
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v24 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_container);
  v25 = &selRef_sharedCloudDatabase;
  v59 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope);
  if (!v59)
  {
    v25 = &selRef_privateCloudDatabase;
  }

  v62 = [v24 *v25];
  sub_10002B648(v69);
  v23 = &unk_10146C000;
  v61 = v14 + 56;
  if (!v70)
  {
    sub_10000CAAC(v69, &qword_101A0BA20);
    v60 = *(v14 + 56);
    v60(v12, 1, 1, v13);
LABEL_16:
    sub_10000CAAC(v12, &qword_101A0BA70);
    LODWORD(v16) = v59;
    if (qword_1019F2270 == -1)
    {
LABEL_17:
      v36 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      v38 = inited;
      *(inited + 16) = *(v23 + 1712);
      if (v16)
      {
        v39 = 0x5320646572616853;
      }

      else
      {
        v39 = 0x2065746176697250;
      }

      if (v16)
      {
        v40 = 0xEC00000065706F63;
      }

      else
      {
        v40 = 0xED000065706F6353;
      }

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(v38 + 32) = v39;
      *(v38 + 40) = v40;
      v41 = static os_log_type_t.error.getter();
      v58 = v36;
      sub_100005404(v36, &_mh_execute_header, v41, "<%{public}@> Failed to decode sync metadata.", 44, 2, v38);
      swift_setDeallocating();
      sub_100005070(v38 + 32);
      goto LABEL_24;
    }

LABEL_39:
    swift_once();
    goto LABEL_17;
  }

  sub_1005B981C(&qword_101A0BA78);
  v26 = swift_dynamicCast();
  v60 = *(v14 + 56);
  v60(v12, v26 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_16;
  }

  (*(v14 + 32))(v16, v12, v13);
  v70 = v13;
  v71 = sub_10002C5F0(&qword_1019FF6E0, 255, &type metadata accessor for CKSyncEngine.State.Serialization);
  v27 = sub_10002C58C(v69);
  v28 = *(v14 + 16);
  v57 = v16;
  v28(v27, v16, v13);
  v29 = OBJC_IVAR____TtC8Freeform17CRLSyncController_latestFetchedSyncMetadata;
  swift_beginAccess();
  sub_10002C638(v69, v1 + v29, &qword_101A0BA20);
  swift_endAccess();
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v30 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v31 = swift_initStackObject();
  v32 = v31;
  *(v31 + 16) = xmmword_10146C6B0;
  LODWORD(v16) = v59;
  if (v59)
  {
    v33 = 0x5320646572616853;
  }

  else
  {
    v33 = 0x2065746176697250;
  }

  if (v59)
  {
    v34 = 0xEC00000065706F63;
  }

  else
  {
    v34 = 0xED000065706F6353;
  }

  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_1000053B0();
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  v35 = static os_log_type_t.default.getter();
  v58 = v30;
  sub_100005404(v30, &_mh_execute_header, v35, "<%{public}@> Successfully loaded sync metadata", 46, 2, v32);
  swift_setDeallocating();
  sub_100005070(v32 + 32);
  (*(v14 + 8))(v57, v13);
LABEL_24:
  v42 = OBJC_IVAR____TtC8Freeform17CRLSyncController_latestFetchedSyncMetadata;
  swift_beginAccess();
  sub_10000BE14(v1 + v42, v69, &qword_101A0BA20);
  v43 = v64;
  if (v70)
  {
    sub_1005B981C(&qword_101A0BA78);
    v44 = swift_dynamicCast();
    v60(v43, v44 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v43, 1, v13) != 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    sub_10000CAAC(v69, &qword_101A0BA20);
    v60(v43, 1, 1, v13);
  }

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  sub_1005B981C(&qword_1019F54E0);
  v45 = swift_initStackObject();
  v46 = v45;
  *(v45 + 16) = xmmword_10146C6B0;
  if (v16)
  {
    v47 = 0x5320646572616853;
  }

  else
  {
    v47 = 0x2065746176697250;
  }

  if (v16)
  {
    v48 = 0xEC00000065706F63;
  }

  else
  {
    v48 = 0xED000065706F6353;
  }

  *(v45 + 56) = &type metadata for String;
  *(v45 + 64) = sub_1000053B0();
  *(v46 + 32) = v47;
  *(v46 + 40) = v48;
  v49 = static os_log_type_t.error.getter();
  sub_100005404(v58, &_mh_execute_header, v49, "<%{public}@> Sync metadata is of wrong type. Setting up with nil metadata. This will lead to refetching all CloudKit data.", 122, 2, v46);
  swift_setDeallocating();
  sub_100005070(v46 + 32);
LABEL_37:
  sub_10000BE14(v43, v63, &qword_101A0BA70);
  sub_10002C5F0(&qword_101A0B9F8, v50, type metadata accessor for CRLSyncController);
  swift_unknownObjectRetain();
  v51 = v66;
  v52 = v62;
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  CKSyncEngine.Configuration.allowFetchAndModifyConcurrently.setter();
  v54 = v67;
  v53 = v68;
  (*(v67 + 16))(v65, v51, v68);
  type metadata accessor for CKSyncEngine();
  swift_allocObject();
  v55 = CKSyncEngine.init(_:)();

  (*(v54 + 8))(v51, v53);
  sub_10000CAAC(v43, &qword_101A0BA70);
  return v55;
}

uint64_t sub_10002B580(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    a1(v8, a3);
    sub_1000C1014(a1);
  }

  else
  {
    v5 = sub_10002AB3C();
    v8[3] = type metadata accessor for CKSyncEngine();
    v8[4] = &off_1019FF6E8;
    v8[0] = v5;
  }

  v6 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine;
  swift_beginAccess();
  sub_10002C638(v8, a3 + v6, &qword_101A0BA28);
  return swift_endAccess();
}

uint64_t sub_10002B648@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = type metadata accessor for CKSyncEngine.State.Serialization();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v9 = *(v1 + 16);
  swift_storeEnumTagMultiPayload();
  v18 = v9;
  v19 = v8;
  sub_1005B981C(&qword_1019FB5E0);
  OS_dispatch_queue.sync<A>(execute:)();
  v11 = v20;
  v10 = v21;
  sub_10002C480(v8, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  if (v10 >> 60 == 15)
  {
    v12 = v17;
    *(v17 + 32) = 0;
    *v12 = 0u;
    v12[1] = 0u;
  }

  else
  {
    sub_100024E98(v11, v10);
    sub_1000065B0(&qword_1019FF720, &type metadata accessor for CKSyncEngine.State.Serialization);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_100025870(v11, v10);
    v13 = v17;
    *(v17 + 24) = v2;
    v13[4] = sub_1000065B0(&qword_1019FF6E0, &type metadata accessor for CKSyncEngine.State.Serialization);
    v14 = sub_10002C58C(v13);
    (*(v3 + 32))(v14, v5, v2);
    sub_100025870(v11, v10);
  }
}

uint64_t sub_10002BADC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_10002BB60(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10002BB2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002BB60(*(v1 + 24));
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10002BB60(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v12 = xmmword_101486780;
    sub_10002BCEC(a1, 0, 0, v1, &v12);
    v11 = v12;
    if (v2)
    {
      sub_100025870(v12, *(&v12 + 1));
    }

    else
    {
      sub_100024E84(v12, *(&v12 + 1));
      sub_100025870(v11, *(&v11 + 1));
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002BCEC(uint64_t a1, void (*a2)(uint64_t, uint64_t), unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v38 = a5;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v11 = v12;
  v14 = v9 + 104;
  v13 = *(v9 + 104);
  v40 = enum case for DispatchPredicate.onQueue(_:);
  v42 = v13;
  v13(v11);
  v15 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v41 = *(v9 + 8);
  v41(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v39 = v8;
  v36 = a3;
  v37 = a2;
  a3 = sub_1000280F0();
  v17 = v16;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v19 = v43;
  v20 = sub_10001CC04(v18, 0xD00000000000003ALL, 0x80000001015A68E0);
  if (v19)
  {
    v14 = v17;

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v21 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = a3;
      *(inited + 40) = v14;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v23, "Failed to fetch value for key %@", 32, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return swift_willThrow();
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v25 = v20;

  sub_1000285F8(a3, v17, 1);

  v26 = *(*(v25 + 16) + 32);
  *v11 = v26;
  v27 = v40;
  v28 = v39;
  v42(v11, v40, v39);
  v29 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  result = (v41)(v11, v28);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteRowIterator();
  v30 = swift_initStackObject();
  v30[4] = 0;
  v30[5] = 1;
  v30[2] = v25;
  v30[3] = 0;
  v31 = sub_10001E1D0();
  swift_setDeallocating();
  sub_10001E364(v30[3], v30[4], v30[5]);
  if (v31)
  {

    sub_10002C128(v32, 0, v38);
    if (v37)
    {
      v37(v31, 1);
    }
  }

  v33 = *(*(v25 + 16) + 32);
  *v11 = v33;
  v42(v11, v27, v28);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  result = (v41)(v11, v28);
  if ((v33 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v35 = *(v25 + 24);
  if (v35)
  {
    sqlite3_finalize(v35);
    *(v25 + 24) = 0;
  }
}

uint64_t sub_10002C128(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    v13 = 0;
    goto LABEL_6;
  }

  v10 = *(*(a1 + 16) + 32);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v13 = sub_10002C280(a2, a1);
    if (v13)
    {
      v13 = sub_100024DD4(v13, v14);
LABEL_7:
      v16 = *a3;
      v17 = a3[1];
      *a3 = v13;
      a3[1] = v15;
      return sub_100025870(v16, v17);
    }

LABEL_6:
    v15 = 0xF000000000000000;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(a2 + 16) + 32);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = swift_beginAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a2 + 24), a1) == 5)
  {
    return 0;
  }

  result = sqlite3_column_blob(*(a2 + 24), a1);
  if (result)
  {
    v11 = *(a2 + 24);
    v12 = result;
    sqlite3_column_bytes(v11, a1);
    return v12;
  }

  return result;
}

uint64_t sub_10002C420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002C480(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002C4E0(uint64_t a1)
{
  *(a1 + 8) = sub_10002C548(&qword_1019FF720);
  result = sub_10002C548(&qword_1019FF728);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002C548(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CKSyncEngine.State.Serialization();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_10002C58C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10002C5F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10002C638(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1005B981C(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_10002C6A0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAF0, &qword_101AD5A98);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.dataSync = v1;
}

uint64_t sub_10002C758(uint64_t a1)
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

  return sub_1009E08C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10002C82C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100EA772C(a1, v4, v5, v6);
}

uint64_t sub_10002C8EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_10002C9A4(a1, v4);
}

uint64_t sub_10002C9A4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002E33C;

  return v6(a1);
}

uint64_t sub_10002CA9C(uint64_t a1)
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

  return sub_10002CE94(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10002CB64()
{
  v6 = v0;
  v1 = *(v0 + 56);
  type metadata accessor for CRLCloudAccountChangeObserverWrapper();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = v1;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  sub_10002CC48(&v5, v2);
  swift_endAccess();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002CC48(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for CRLCloudAccountChangeObserverWrapper();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100E7357C(v7, result + 1);
    if (*(v20 + 24) <= *(v20 + 16))
    {
      sub_10002DA5C();
    }

    sub_100E7B364(v21, v20);

    *v3 = v20;
  }

  else
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a2);
    v10 = Hasher._finalize()();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      do
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v15 = Strong;
          v16 = swift_unknownObjectWeakLoadStrong();
          if (v16)
          {
            v17 = v16;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v15 == v17)
            {

              *a1 = *(*(v6 + 48) + 8 * v12);

              return 0;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v12 = (v12 + 1) & v13;
      }

      while (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;

    sub_10002CF38(v19, v12, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
  }

  *a1 = a2;
  return 1;
}

uint64_t sub_10002CE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_10002CEB8, 0, 0);
}

uint64_t sub_10002CEB8()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC8Freeform17CRLSyncController_accountChangeObserverManager);
  *(v0 + 64) = v1;

  return _swift_task_switch(sub_10002CB64, v1, 0);
}

Swift::Int sub_10002CF38(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10002DA5C();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E85FE8(&qword_101A21FA0);
      goto LABEL_16;
    }

    sub_10002D0E8();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for CRLCloudAccountChangeObserverWrapper();
    do
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v11 = result;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          if (v11 == v13)
          {
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }

        else
        {
          result = swift_unknownObjectRelease();
        }
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v5;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }

  return result;
}

uint64_t sub_10002D0E8()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21FA0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

NSString sub_10002D394()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8570 = result;
  return result;
}

uint64_t sub_10002D3D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

NSString sub_10002D4CC()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8578 = result;
  return result;
}

uint64_t sub_10002D504()
{
  v1 = *(sub_1005B981C(&qword_1019F33E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    type metadata accessor for CRLFolderIdentifierStorage(0);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_10002D66C(uint64_t *a1)
{
  v2 = sub_1005B981C(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

NSString sub_10002D730()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8F50 = result;
  return result;
}

NSString sub_10002D76C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8F58 = result;
  return result;
}

unint64_t sub_10002D7B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1005B981C(&qword_101A146C0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_10002D978(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_10002D978(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10002D8B8()
{
  result = qword_101A0B9F0;
  if (!qword_101A0B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B9F0);
  }

  return result;
}

unint64_t sub_10002D910(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();
  return sub_10002D9EC(a1 & 1, v2);
}

unint64_t sub_10002D980(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100068D24();
  v2 = Hasher._finalize()();

  return sub_1007CAAD8(a1, v2);
}

unint64_t sub_10002D9EC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10002DA5C()
{
  v1 = v0;
  v2 = *v0;
  sub_1005B981C(&qword_101A21FA0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_10002DCD0()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper))
  {
    v1 = objc_opt_self();

    v24 = v1;
    v2 = [v1 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v25);
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
    v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 69;
    v14 = v25;
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
    sub_100005404(v9, &_mh_execute_header, v18, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

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

    [v24 handleFailureInFunction:v21 file:v22 lineNumber:69 isFatal:0 format:v23 args:v20];
  }
}

uint64_t sub_10002E0B8()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  sub_10000BE14(v7, v5, &qword_1019FB750);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = 0x4000000000000000;
  v10[5] = &unk_1014B72E8;
  v10[6] = v1;
  swift_retain_n();
  sub_100796D54(0, 0, v5, &unk_1014B72F8, v10);

  sub_10000CAAC(v7, &qword_1019FB750);
  sub_10002E43C(0, 0);
  sub_10002E7B8();
  v9(v7, 1, 1, v8);
  sub_10000BE14(v7, v5, &qword_1019FB750);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = 0x4014000000000000;
  v11[5] = &unk_1014B7308;
  v11[6] = v1;
  swift_retain_n();
  sub_100796D54(0, 0, v5, &unk_1014B7310, v11);

  return sub_10000CAAC(v7, &qword_1019FB750);
}

uint64_t sub_10002E33C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002E43C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_10002FA90;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5DC0;
  v14 = _Block_copy(aBlock);

  sub_10002E7A8(a1);
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_10002E760()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E7A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_10002E7B8()
{
  v95 = type metadata accessor for DispatchWorkItemFlags();
  v0 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DispatchQoS();
  v2 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019FB750);
  v5 = __chkstk_darwin(v4 - 8);
  v91 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v103 = &v83 - v7;
  if (qword_1019F2160 != -1)
  {
    goto LABEL_56;
  }

LABEL_2:
  v8 = static OS_os_log.crlZoneRefetch;
  v9 = static os_log_type_t.debug.getter();
  v96 = v8;
  sub_100005404(v8, &_mh_execute_header, v9, "Scheduling refetch for zones that need to be refetched.", 55, 2, _swiftEmptyArrayStorage);
  v10 = 0;
  v11 = 0;
  v89 = (v0 + 8);
  v90 = &v110;
  v88 = (v2 + 8);
  v104 = xmmword_10146BDE0;
  v87 = xmmword_10146C6B0;
  do
  {
    v86 = v10;
    v13 = *(&off_1018748D8 + v11 + 32);
    v14 = 24;
    if (*(&off_1018748D8 + v11 + 32))
    {
      v14 = 32;
    }

    v15 = 56;
    if (v13)
    {
      v15 = 64;
    }

    v16 = *(v83 + v15);
    v17 = *(v83 + v14);

    v107 = v17;
    v85 = v16;
    v0 = v16;
    v18 = sub_10003022C();
    v19 = v18;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v0 = __CocoaSet.makeIterator()();
      sub_100006370(0, &qword_1019F69D0);
      sub_100EA8530();
      Set.Iterator.init(_cocoa:)();
      v19 = v118[19];
      v20 = v118[20];
      v21 = v118[21];
      v2 = v118[22];
      v12 = v118[23];
    }

    else
    {
      v2 = 0;
      v22 = -1 << *(v18 + 32);
      v20 = v18 + 56;
      v23 = ~v22;
      v24 = -v22;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v12 = v25 & *(v18 + 56);
      v21 = v23;
    }

    v84 = v21;
    v26 = (v21 + 64) >> 6;
    if (v13)
    {
      v27 = 0x5320646572616853;
    }

    else
    {
      v27 = 0x2065746176697250;
    }

    v28 = 0xED000065706F6353;
    if (v13)
    {
      v28 = 0xEC00000065706F63;
    }

    v97 = v28;
    v98 = v27;
    v100 = v20;
    v101 = v19;
    v99 = v26;
    if (v19 < 0)
    {
LABEL_29:
      v43 = __CocoaSet.Iterator.next()();
      if (!v43)
      {
        goto LABEL_4;
      }

      v118[0] = v43;
      sub_100006370(0, &qword_1019F69D0);
      swift_dynamicCast();
      v42 = v109;
      v40 = v2;
      v41 = v12;
      if (!v109)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }

    while (1)
    {
      v38 = v2;
      v39 = v12;
      v40 = v2;
      if (!v12)
      {
        while (1)
        {
          v40 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v40 >= v26)
          {
            v12 = 0;
            goto LABEL_4;
          }

          v39 = *(v20 + 8 * v40);
          ++v38;
          if (v39)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_56:
        swift_once();
        goto LABEL_2;
      }

LABEL_27:
      v41 = (v39 - 1) & v39;
      v42 = *(*(v19 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));
      if (!v42)
      {
        break;
      }

LABEL_31:
      v105 = v41;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v104;
      *(inited + 56) = &type metadata for String;
      v45 = sub_1000053B0();
      *(inited + 64) = v45;
      v46 = v97;
      *(inited + 32) = v98;
      *(inited + 40) = v46;
      v106 = v42;
      v47 = [v42 zoneName];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v45;
      *(inited + 72) = v48;
      *(inited + 80) = v50;
      v51 = static os_log_type_t.default.getter();
      sub_100005404(v96, &_mh_execute_header, v51, "<%{public}@> Refetching records for zone to refetch: %@", 55, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v52 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine;
      v53 = v107;
      swift_beginAccess();
      sub_10000BE14(&v53[v52], &v109, &qword_101A0BA28);
      if (v111)
      {
        sub_100050F74(&v109, v118);
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v102 = static OS_os_log.dataSync;
        v54 = swift_initStackObject();
        v55 = v54;
        *(v54 + 16) = v104;
        v56 = 0x5320646572616853;
        if (!v107[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
        {
          v56 = 0x2065746176697250;
        }

        v57 = 0xED000065706F6353;
        if (v107[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
        {
          v57 = 0xEC00000065706F63;
        }

        *(v54 + 56) = &type metadata for String;
        *(v54 + 64) = v45;
        *(v54 + 32) = v56;
        *(v54 + 40) = v57;
        v58 = [v106 zoneName];
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v55[12] = &type metadata for String;
        v55[13] = v45;
        v55[9] = v59;
        v55[10] = v61;
        v62 = static os_log_type_t.default.getter();
        sub_100005404(v102, &_mh_execute_header, v62, "<%{public}@> Fetching targeted changes for zoneID: <%{public}@>", 63, 2, v55);
        swift_setDeallocating();
        swift_arrayDestroy();
        v63 = v103;
        static TaskPriority.background.getter();
        v64 = type metadata accessor for TaskPriority();
        v65 = *(v64 - 8);
        (*(v65 + 56))(v63, 0, 1, v64);
        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_10000630C(v118, &v109);
        v67 = swift_allocObject();
        *(v67 + 16) = 0;
        *(v67 + 24) = 0;
        v68 = v106;
        *(v67 + 32) = v66;
        *(v67 + 40) = v68;
        sub_100050F74(&v109, v67 + 48);
        *(v67 + 88) = 0;
        *(v67 + 96) = 9;
        *(v67 + 104) = 2;
        v69 = v63;
        v70 = v91;
        sub_10000BE14(v69, v91, &qword_1019FB750);
        LODWORD(v66) = (*(v65 + 48))(v70, 1, v64);
        v71 = v68;

        if (v66 == 1)
        {
          sub_10000CAAC(v70, &qword_1019FB750);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v65 + 8))(v70, v64);
        }

        v78 = *(v67 + 16);
        swift_unknownObjectRetain();

        if (v78)
        {
          swift_getObjectType();
          v79 = dispatch thunk of Actor.unownedExecutor.getter();
          v81 = v80;
          swift_unknownObjectRelease();
        }

        else
        {
          v79 = 0;
          v81 = 0;
        }

        sub_10000CAAC(v103, &qword_1019FB750);
        v82 = swift_allocObject();
        *(v82 + 16) = &unk_1014A08A0;
        *(v82 + 24) = v67;
        if (v81 | v79)
        {
          v114 = 0;
          v115 = 0;
          v116 = v79;
          v117 = v81;
        }

        v29 = swift_task_create();
        v30 = v107;
        v106 = *&v107[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
        v31 = swift_allocObject();
        v31[2] = v30;
        v31[3] = v71;
        v31[4] = v29;
        v112 = sub_100C08440;
        v113 = v31;
        *&v109 = _NSConcreteStackBlock;
        *(&v109 + 1) = *"";
        v110 = sub_100007638;
        v111 = &unk_1018A7128;
        v32 = _Block_copy(&v109);
        v33 = v30;
        v34 = v71;

        v35 = v92;
        static DispatchQoS.unspecified.getter();
        v108 = _swiftEmptyArrayStorage;
        sub_10002A8DC(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
        sub_1005B981C(&unk_1019FF400);
        sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
        v37 = v94;
        v36 = v95;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v0 = v106;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v32);

        (*v89)(v37, v36);
        (*v88)(v35, v93);
        sub_100005070(v118);

        v2 = v40;
        v12 = v105;
        v20 = v100;
        v19 = v101;
        v26 = v99;
        if (v101 < 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_10000CAAC(&v109, &qword_101A0BA28);
        v26 = v99;
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v72 = static OS_os_log.dataSync;
        v73 = swift_initStackObject();
        v74 = v73;
        *(v73 + 16) = v87;
        v75 = 0x5320646572616853;
        if (!v107[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
        {
          v75 = 0x2065746176697250;
        }

        v76 = 0xED000065706F6353;
        if (v107[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
        {
          v76 = 0xEC00000065706F63;
        }

        *(v73 + 56) = &type metadata for String;
        *(v73 + 64) = v45;
        *(v73 + 32) = v75;
        v0 = (v73 + 32);
        *(v73 + 40) = v76;
        v77 = static os_log_type_t.error.getter();
        sub_100005404(v72, &_mh_execute_header, v77, "<%{public}@> Can't fetch records for zoneID. There is no syncEngine set", 71, 2, v74);

        swift_setDeallocating();
        sub_100005070(v0);
        v2 = v40;
        v12 = v105;
        v20 = v100;
        v19 = v101;
        if (v101 < 0)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_4:
    sub_100035F8C(v19, v20, v84, v2, v12);

    v10 = 1;
    v11 = &_mh_execute_header.magic + 1;
  }

  while ((v86 & 1) == 0);
}

uint64_t sub_10002F450()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F488()
{
  swift_unknownObjectRelease();

  sub_100005070(v0 + 48);

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_10002F4D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F510()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10002F558()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAD8, &qword_101AD5A80);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlZoneRefetch = v1;
}

void sub_10002F610(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v25 = v9;
    v26 = v6;
    v27 = v5;
    *(&v22 - 2) = __chkstk_darwin(Strong);
    sub_10002FA9C(sub_100031EE8, (&v22 - 4));
    v24 = v10;
    v15 = v12;
    if (a2)
    {
      a2(0);
    }

    sub_100006370(0, &qword_1019F2D90);
    v23 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = &_swiftEmptySetSingleton;
    *(v16 + 24) = &_swiftEmptySetSingleton;
    *(v16 + 32) = &_swiftEmptySetSingleton;
    *(v16 + 40) = 0;
    *(v16 + 48) = v14;
    aBlock[4] = sub_1000260F4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018A5E10;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    v19 = v15;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    v20 = v27;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v23;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v26 + 8))(v8, v20);
    (*(v24 + 8))(v19, v25);
    sub_100034778(a2, a3, *&v18[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__deletedBoardsCleanupTolerance]);
  }
}

uint64_t sub_10002FA9C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v2;
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
    type metadata accessor for SQLTransaction();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = 0;
    *(&v15 - 4) = __chkstk_darwin(inited);
    *(&v15 - 3) = a1;
    *(&v15 - 2) = a2;
    *(&v15 - 1) = &v16;
    swift_retain_n();
    v14 = sub_10002FD6C(sub_1000307C0, (&v15 - 6));

    swift_setDeallocating();

    return v14 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002FCA4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100030450(a1, v6, v4, v5, v8, v7);
}

uint64_t sub_10002FD6C(void (*a1)(void *__return_ptr, id), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v5 + 32);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  v15 = (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v5 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) == 1)
  {
    a1(v41, v15);
    if (v3)
    {
      return v16 & 1;
    }

    goto LABEL_13;
  }

  v36 = a2;
  v37 = a1;
  v35 = OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion;
  *(v5 + OBJC_IVAR____TtC8Freeform14SQLiteDatabase_hasRBSAssertion) = 1;
  v17 = [objc_opt_self() currentProcess];
  sub_1005B981C(&unk_1019F4D60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10146CE00;
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() attributeWithDomain:v19 name:v20];

  *(v18 + 32) = v21;
  *(v18 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
  v22 = objc_allocWithZone(RBSAssertion);
  v23 = String._bridgeToObjectiveC()();
  sub_100006370(0, &unk_101A135C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v22 initWithExplanation:v23 target:v17 attributes:isa];

  v40 = 0;
  if (([v11 acquireWithError:&v40] & 1) == 0)
  {
    v26 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1019F2098 == -1)
    {
LABEL_8:
      v27 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v29 = Error.publicDescription.getter(v38, v39);
      v31 = v30;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v29;
      *(inited + 40) = v31;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v32, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      v25 = sub_100005070(inited + 32);
      v4 = 0;
      goto LABEL_9;
    }

LABEL_16:
    swift_once();
    goto LABEL_8;
  }

  v25 = v40;
LABEL_9:
  v37(v41, v25);
  if (v4)
  {
    [v11 invalidate];

    v16 = v35;
    *(v5 + v35) = 0;
    return v16 & 1;
  }

  [v11 invalidate];

  *(v5 + v35) = 0;
LABEL_13:
  v16 = v41[0];
  return v16 & 1;
}

Swift::Int sub_10003022C()
{
  sub_10001FF1C();
  sub_1005B981C(&unk_1019F52B0);
  OS_dispatch_queue.sync<A>(execute:)();

  return sub_100035B2C(v2, v0);
}

uint64_t sub_100030450(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 24) = a2;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_100030694, 0, 0);
}

uint64_t sub_100030478(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_10003080C();
  if (v4)
  {
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    if (swift_dynamicCast())
    {
      v9 = sub_10089A9BC(v20, v21, v22);
      v11 = v10;
    }

    else
    {
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = v12;
    }

    v13 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_logCategory);
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v15 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v15, "Failed transactional database operation with error %@", 53, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_10089C46C();
    swift_willThrow();
  }

  else
  {
    v8 = a2(v7);
    if (v8)
    {
      sub_100034410();
      v16 = 1;
    }

    else
    {
      v18 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_logCategory);
      v19 = static os_log_type_t.default.getter();
      sub_100005404(v18, &_mh_execute_header, v19, "The block of SQL code returned false. This means we should roll back the transaction", 84, 2, &_swiftEmptyArrayStorage);
      sub_10089C46C();
      v16 = 0;
    }
  }

  return v16 & 1;
}

uint64_t sub_100030694(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_100EA6718;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_10003077C@<X0>(uint64_t (*a1)(void, void, void, void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1(*(v2 + 16), *(v2 + 24), *(v2 + 32), **(v2 + 40));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10003080C()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 16);
  v9 = *(v8 + 32);
  *v7 = v9;
  v10 = *(v5 + 104);
  v63 = enum case for DispatchPredicate.onQueue(_:);
  v64 = v10;
  v65 = v5 + 104;
  v10(v7);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v13 = v5 + 8;
  v12 = v14;
  v14(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_4;
  }

  if (*(v8 + 24) != 1)
  {
    goto LABEL_5;
  }

  v58 = v3;
  v59 = v1;
  v60 = v12;
  v61 = v13;
  v62 = v4;
  v57 = objc_opt_self();
  LODWORD(v2) = [v57 _atomicIncrementAssertCount];
  v66 = [objc_allocWithZone(NSString) init];
  sub_100604538(&_swiftEmptyArrayStorage, &v66);
  StaticString.description.getter();
  v56 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v15 lastPathComponent];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v17;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_24;
  }

LABEL_4:
  v55 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v2;
  v19 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v19;
  v20 = sub_1005CF04C();
  *(inited + 104) = v20;
  v21 = v56;
  *(inited + 72) = v56;
  *(inited + 136) = &type metadata for String;
  v22 = sub_1000053B0();
  v23 = v54;
  *(inited + 112) = v4;
  *(inited + 120) = v23;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v22;
  *(inited + 152) = 697;
  v24 = v66;
  *(inited + 216) = v19;
  *(inited + 224) = v20;
  *(inited + 192) = v24;
  v25 = v21;
  v26 = v24;
  v27 = static os_log_type_t.error.getter();
  v28 = v55;
  sub_100005404(v55, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v29, "There is already an open transaction on the database", 52, 2, &_swiftEmptyArrayStorage);

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

  [v57 handleFailureInFunction:v32 file:v33 lineNumber:697 isFatal:0 format:v34 args:v31];

  v4 = v62;
  v2 = v59;
  v12 = v60;
  v3 = v58;
LABEL_5:
  v66 = 0;
  v67 = 0xE000000000000000;

  _StringGuts.grow(_:)(20);

  v66 = 0x204E49474542;
  v67 = 0xE600000000000000;
  v35 = 0x54414944454D4D49;
  if (*(v3 + 24) != 1)
  {
    v35 = 0x564953554C435845;
  }

  if (*(v3 + 24))
  {
    v36 = v35;
  }

  else
  {
    v36 = 0x4445525245464544;
  }

  if (*(v3 + 24))
  {
    v37 = 0xE900000000000045;
  }

  else
  {
    v37 = 0xE800000000000000;
  }

  v38 = v37;
  String.append(_:)(*&v36);

  v39._countAndFlagsBits = 0x4341534E41525420;
  v39._object = 0xEC0000004E4F4954;
  String.append(_:)(v39);
  v40 = v66;
  v41 = v67;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();
  v42 = sub_10001CC04(v8, v40, v41);

  if (!v2)
  {
    v44 = *(*(v42 + 16) + 32);
    *v7 = v44;
    v64(v7, v63, v4);
    v45 = v44;
    LOBYTE(v44) = _dispatchPreconditionTest(_:)();
    v12(v7, v4);
    if (v44)
    {
      v46 = *(v42 + 16);

      v47 = sub_10001CEC4(v46, v42);

      if (v47 == 101)
      {
        *(v8 + 24) = 1;
        v48 = *(*(v42 + 16) + 32);
        *v7 = v48;
        v64(v7, v63, v4);
        v49 = v48;
        v47 = _dispatchPreconditionTest(_:)();
        v12(v7, v4);
        if (v47)
        {
LABEL_19:
          swift_beginAccess();
          v53 = *(v42 + 24);
          if (v53)
          {
            sqlite3_finalize(v53);
            *(v42 + 24) = 0;
          }
        }

        __break(1u);
      }

      sub_10089C7D0();
      swift_allocError();
      *v50 = v47;
      *(v50 + 8) = 0xD00000000000001DLL;
      *(v50 + 16) = 0x8000000101572980;
      swift_willThrow();
      v51 = *(*(v42 + 16) + 32);
      *v7 = v51;
      v64(v7, v63, v4);
      v52 = v51;
      LOBYTE(v51) = _dispatchPreconditionTest(_:)();
      v12(v7, v4);
      if (v51)
      {
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100030FAC()
{
  v1 = v0;
  v134 = type metadata accessor for UUID();
  v124 = *(v134 - 8);
  __chkstk_darwin(v134);
  v3 = v122 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v4 = __chkstk_darwin(v133);
  v132 = v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v131 = v122 - v6;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v8 = __chkstk_darwin(v7 - 8);
  v130 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v129 = v122 - v11;
  v12 = __chkstk_darwin(v10);
  v128 = v122 - v13;
  v14 = __chkstk_darwin(v12);
  v127 = v122 - v15;
  __chkstk_darwin(v14);
  v126 = v122 - v16;
  v17 = type metadata accessor for Date();
  v125 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v23 = v24;
  inited = enum case for DispatchPredicate.onQueue(_:);
  v26 = *(v21 + 104);
  v141 = v21 + 104;
  v137 = v26;
  v26(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v27 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v140 = v20;
  v138 = v29;
  v29(v23, v20);
  if ((v24 & 1) == 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v142 = inited;
  v136 = v3;
  v135 = v28;
  v144 = 0;
  v145 = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  v30._countAndFlagsBits = 0x205443454C4553;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x736472616F62;
  v31._object = 0xE600000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 46;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33 = v1;
  v34._object = 0x8000000101585360;
  v34._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x204D4F524620;
  v35._object = 0xE600000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x736472616F62;
  v36._object = 0xE600000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x20455245485720;
  v37._object = 0xE700000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x6E6F7473626D6F74;
  v38._object = 0xEE00657461645F65;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0xD000000000000011;
  v39._object = 0x80000001015A3B00;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x6E6F7473626D6F74;
  v40._object = 0xEA00000000006465;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0x444E412031203D20;
  v41._object = 0xE900000000000020;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x6E6F7473626D6F74;
  v42._object = 0xEE00657461645F65;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x3F203D3C20;
  v43._object = 0xE500000000000000;
  String.append(_:)(v43);
  v44 = v144;
  v45 = v145;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v47 = v139;
  v48 = sub_10001CC04(v46, v44, v45);
  inited = &type metadata for String;
  if (v47)
  {
    goto LABEL_30;
  }

  v49 = v48;
  v139 = 0;

  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v51 = v50;
  (*(v125 + 8))(v19, v17);
  v122[1] = v33;
  v52 = *(v33 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__deletedBoardTTL);
  v53 = *(*(v49 + 16) + 32);
  *v23 = v53;
  v54 = v142;
  v55 = v140;
  inited = v137;
  v137(v23, v142, v140);
  v56 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  v57 = v138;
  v138(v23, v55);
  if ((v53 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  swift_beginAccess();
  sqlite3_bind_double(*(v49 + 24), 1, v51 - v52);
  v143 = &_swiftEmptySetSingleton;
  v58 = *(*(v49 + 16) + 32);
  *v23 = v58;
  (inited)(v23, v54, v55);
  v59 = v58;
  LOBYTE(v58) = _dispatchPreconditionTest(_:)();
  v57(v23, v55);
  if ((v58 & 1) == 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v60 = *(*(v49 + 16) + 32);
  *v23 = v60;

  (inited)(v23, v54, v55);
  v61 = v60;
  LOBYTE(v60) = _dispatchPreconditionTest(_:)();
  v57(v23, v55);
  if ((v60 & 1) == 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v62 = inited;
  v124 += 4;
  v123 = xmmword_10146C6B0;
  while (1)
  {
    v67 = sqlite3_step(*(v49 + 24));
    if (v67 != 100)
    {
      break;
    }

    v68 = *(*(v49 + 16) + 32);
    *v23 = v68;
    inited = v62;
    v69 = v142;
    (inited)(v23, v142, v55);

    v70 = v68;
    LOBYTE(v68) = _dispatchPreconditionTest(_:)();
    v57(v23, v55);
    if ((v68 & 1) == 0)
    {
      goto LABEL_37;
    }

    v71 = *(*(v49 + 16) + 32);
    *v23 = v71;
    v72 = v69;
    v62 = inited;
    (inited)(v23, v72, v55);
    v73 = v71;
    LOBYTE(v71) = _dispatchPreconditionTest(_:)();
    inited = v23;
    v57(v23, v55);
    if ((v71 & 1) == 0)
    {
      goto LABEL_38;
    }

    if (sqlite3_column_type(*(v49 + 24), 0) == 5 || (v74 = sqlite3_column_blob(*(v49 + 24), 0), v75 = v136, !v74))
    {
      v55 = v140;
    }

    else
    {
      v76 = v74;
      v77 = sqlite3_column_bytes(*(v49 + 24), 0);
      v78 = sub_100024DD4(v76, v77);
      v80 = v79;
      sub_100024E98(v78, v79);
      v81 = v139;
      sub_100024EEC(v75, v78, v80);
      if (!v81)
      {
        v84 = v82;
        v85 = v83;
        v139 = 0;
        sub_10002640C(v78, v80);
        v86 = v132;
        (*v124)(v132, v75, v134);
        v87 = (v86 + *(v133 + 20));
        *v87 = v84;
        v87[1] = v85;
        v88 = v131;
        sub_100025668(v86, v131, type metadata accessor for CRLBoardIdentifierStorage);
        v89 = v88;
        v90 = v128;
        sub_100025668(v89, v128, type metadata accessor for CRLBoardIdentifierStorage);
        v91 = v90;
        v92 = v127;
        sub_100025668(v91, v127, type metadata accessor for CRLBoardIdentifier);
        v93 = v92;
        v94 = v126;
        sub_100025668(v93, v126, type metadata accessor for CRLBoardIdentifier);
        v95 = v80;
        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v125 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = v123;
        v96 = v94;
        v97 = UUID.description.getter();
        v99 = v98;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v97;
        *(inited + 40) = v99;
        v100 = static os_log_type_t.default.getter();
        sub_100005404(v125, &_mh_execute_header, v100, "Setting hideFromRecentlyDeleted to true after TTL expiration. Board ID:%{public}@)", 82, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        v101 = v130;
        sub_10000C83C(v96, v130, type metadata accessor for CRLBoardIdentifier);
        v102 = v129;
        sub_100031F10(v129, v101);

        sub_10002640C(v78, v95);
        sub_100026028(v102, type metadata accessor for CRLBoardIdentifier);
        sub_100026028(v96, type metadata accessor for CRLBoardIdentifier);
        v57 = v138;
        v62 = v137;
        v55 = v140;
        goto LABEL_11;
      }

      sub_10002640C(v78, v80);
      sub_10002640C(v78, v80);
      v139 = 0;
      v57 = v138;
      v62 = v137;
      v55 = v140;
    }

    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v63 = static OS_os_log.boardStore;
    v64 = static os_log_type_t.error.getter();
    sub_100005404(v63, &_mh_execute_header, v64, "Failure reading board identifier data.", 38, 2, _swiftEmptyArrayStorage);

LABEL_11:
    v65 = *(*(v49 + 16) + 32);
    *v23 = v65;
    v62(v23, v142, v55);
    v66 = v65;
    LOBYTE(v65) = _dispatchPreconditionTest(_:)();
    v57(v23, v55);
    if ((v65 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (v67 && v67 != 101)
  {
    v104 = 0;
    v103 = v67;
  }

  else
  {
    v103 = 0;
    v104 = 1;
  }

  v105 = v142;
  v106 = v139;
  sub_100032648(0, v143);
  if (v106)
  {

    sub_10001E364(v103, 0, v104);
    v107 = *(*(v49 + 16) + 32);
    *v23 = v107;
    v108 = v140;
    v137(v23, v105, v140);
    v109 = v107;
    LOBYTE(v107) = _dispatchPreconditionTest(_:)();
    v138(v23, v108);
    if (v107)
    {
      v110 = *(v49 + 24);
      inited = &type metadata for String;
      if (v110)
      {
        sqlite3_finalize(v110);
        *(v49 + 24) = 0;
      }

LABEL_30:

      if (qword_1019F2258 == -1)
      {
LABEL_31:
        v111 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        v112 = swift_initStackObject();
        *(v112 + 16) = xmmword_10146C6B0;
        swift_getErrorValue();
        v113 = Error.localizedDescription.getter();
        v115 = v114;
        *(v112 + 56) = inited;
        *(v112 + 64) = sub_1000053B0();
        *(v112 + 32) = v113;
        *(v112 + 40) = v115;
        v116 = static os_log_type_t.error.getter();
        sub_100005404(v111, &_mh_execute_header, v116, "Failed to hide TTL'd boards from recently deleted, with error %@", 64, 2, v112);
        swift_setDeallocating();
        sub_100005070(v112 + 32);
        return swift_willThrow();
      }

LABEL_40:
      swift_once();
      goto LABEL_31;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  sub_10001E364(v103, 0, v104);
  v118 = *(*(v49 + 16) + 32);
  *v23 = v118;
  v119 = v140;
  v137(v23, v105, v140);
  v120 = v118;
  LOBYTE(v118) = _dispatchPreconditionTest(_:)();
  v138(v23, v119);
  if ((v118 & 1) == 0)
  {
    goto LABEL_44;
  }

  v121 = *(v49 + 24);
  if (v121)
  {
    sqlite3_finalize(v121);
    *(v49 + 24) = 0;
  }
}

uint64_t sub_100031F10(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v27 = &v27 - v9;
  v28 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v30 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v31 = a2;
  v11 = (a2 + *(v30 + 20));
  v12 = *v11;
  v13 = v11[1];
  String.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_12:
    v22 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v31;
    v25 = v27;
    sub_10000C83C(v31, v27, type metadata accessor for CRLBoardIdentifier);
    v32 = *v22;
    sub_100032260(v25, v16, isUniquelyReferenced_nonNull_native);
    *v22 = v32;
    sub_100025668(v24, v29, type metadata accessor for CRLBoardIdentifier);
    return 1;
  }

  v17 = ~v15;
  v18 = *(v5 + 72);
  while (1)
  {
    sub_10000C83C(*(v10 + 48) + v18 * v16, v8, type metadata accessor for CRLBoardIdentifier);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      sub_100026028(v8, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_4;
    }

    v19 = &v8[*(v30 + 20)];
    if (*v19 == v12 && *(v19 + 1) == v13)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100026028(v8, type metadata accessor for CRLBoardIdentifier);
    if (v21)
    {
      goto LABEL_14;
    }

LABEL_4:
    v16 = (v16 + 1) & v17;
    if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  sub_100026028(v8, type metadata accessor for CRLBoardIdentifier);
LABEL_14:
  sub_100026028(v31, type metadata accessor for CRLBoardIdentifier);
  sub_10000C83C(*(v10 + 48) + v18 * v16, v29, type metadata accessor for CRLBoardIdentifier);
  return 0;
}

uint64_t sub_100032260(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v32 = v8;
  v33 = v3;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v31 = v9;
      sub_100E77F98(v12 + 1, type metadata accessor for CRLBoardIdentifier, &unk_1019F3350, &unk_1014C5DC0, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      if (v13 > v12)
      {
        sub_100E84138();
        goto LABEL_19;
      }

      v31 = v9;
      sub_100E88694();
    }

    v14 = *v3;
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v34 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v15 = (a1 + *(v34 + 20));
    v16 = *v15;
    v17 = v15[1];
    String.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(v14 + 32);
    a2 = v18 & ~v19;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v21 = *(v8 + 72);
      do
      {
        sub_10000C83C(*(v14 + 48) + v21 * a2, v11, type metadata accessor for CRLBoardIdentifier);
        if (static UUID.== infix(_:_:)())
        {
          v22 = &v11[*(v34 + 20)];
          if (*v22 == v16 && *(v22 + 1) == v17)
          {
            goto LABEL_22;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100026028(v11, type metadata accessor for CRLBoardIdentifier);
          if (v24)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_100026028(v11, type metadata accessor for CRLBoardIdentifier);
        }

        a2 = (a2 + 1) & v20;
      }

      while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_19:
  v25 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v25 + 48) + *(v32 + 72) * a2, type metadata accessor for CRLBoardIdentifier);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_22:
    sub_100026028(v11, type metadata accessor for CRLBoardIdentifier);
LABEL_23:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_1000325B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100032648(int a1, uint64_t a2)
{
  v4 = v3;
  LODWORD(v181) = a1;
  v171 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v171 - 8);
  __chkstk_darwin(v171);
  v170 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v169 = *(v8 - 8);
  __chkstk_darwin(v8);
  v168 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for String.Encoding();
  v173 = *(v175 - 8);
  __chkstk_darwin(v175);
  v174 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  v180 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v189 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v179 = &v162 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = v2;
  v19 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v18 = v19;
  v20 = *(v16 + 104);
  v183 = enum case for DispatchPredicate.onQueue(_:);
  v185 = v16 + 104;
  v184 = v20;
  v20(v18);
  v21 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v22 = *(v16 + 8);
  v187 = v18;
  v188 = v16 + 8;
  v186 = v22;
  result = (v22)(v18, v15);
  if ((v19 & 1) == 0)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    swift_once();
    goto LABEL_4;
  }

  v167 = v8;
  v178 = v15;
  v8 = *(a2 + 16);
  if (!v8)
  {
    return result;
  }

  v165 = v6;
  v182 = a2;
  v24 = sub_100033DB0(a2, type metadata accessor for CRLBoardIdentifier, type metadata accessor for CRLBoardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v176 = v3;
  *&aBlock = v24;
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v4 = BidirectionalCollection<>.joined(separator:)();
  v15 = v25;

  if (qword_1019F2258 != -1)
  {
    goto LABEL_86;
  }

LABEL_4:
  v26 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v15;

  v28 = static os_log_type_t.default.getter();
  sub_100005404(v26, &_mh_execute_header, v28, "Hiding boards from recently deleted: %{public}@", 47, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v164 = v4;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  if (v181)
  {
    _StringGuts.grow(_:)(52);
    v29._countAndFlagsBits = 0x20455441445055;
    v29._object = 0xE700000000000000;
    String.append(_:)(v29);
    v30._countAndFlagsBits = 0x736472616F62;
    v30._object = 0xE600000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 0x2054455320;
    v31._object = 0xE500000000000000;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 0xD00000000000001ALL;
    v32._object = 0x80000001015A37F0;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0x202C31203D20;
    v33._object = 0xE600000000000000;
    String.append(_:)(v33);
    v34._object = 0x80000001015A33D0;
    v34._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v34);
    v35._countAndFlagsBits = 2112800;
    v35._object = 0xE300000000000000;
    String.append(_:)(v35);
    v36._object = 0x80000001015A33D0;
    v36._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 0x454857203F202620;
    v37._object = 0xEC00000028204552;
    String.append(_:)(v37);
    v38._object = 0x8000000101585360;
    v38._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v38);
    v39._countAndFlagsBits = 0x28204E4920;
    v39._object = 0xE500000000000000;
    String.append(_:)(v39);
    v204 = sub_1000341B8(0x3F, 0xE100000000000000, v8);
    v40 = BidirectionalCollection<>.joined(separator:)();
    v42 = v41;

    v43._countAndFlagsBits = v40;
    v43._object = v42;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 10537;
    v44._object = 0xE200000000000000;
    String.append(_:)(v44);
    v46 = *(&aBlock + 1);
    v45 = aBlock;
    v47 = -17;
  }

  else
  {
    _StringGuts.grow(_:)(52);
    v48._countAndFlagsBits = 0x20455441445055;
    v48._object = 0xE700000000000000;
    String.append(_:)(v48);
    v49._countAndFlagsBits = 0x736472616F62;
    v49._object = 0xE600000000000000;
    String.append(_:)(v49);
    v50._countAndFlagsBits = 0x2054455320;
    v50._object = 0xE500000000000000;
    String.append(_:)(v50);
    v51._countAndFlagsBits = 0xD00000000000001ALL;
    v51._object = 0x80000001015A37F0;
    String.append(_:)(v51);
    v52._countAndFlagsBits = 0x202C31203D20;
    v52._object = 0xE600000000000000;
    String.append(_:)(v52);
    v53._object = 0x80000001015A33D0;
    v53._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v53);
    v54._countAndFlagsBits = 2112800;
    v54._object = 0xE300000000000000;
    String.append(_:)(v54);
    v55._object = 0x80000001015A33D0;
    v55._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v55);
    v56._countAndFlagsBits = 0x454857203F207C20;
    v56._object = 0xEC00000028204552;
    String.append(_:)(v56);
    v57._object = 0x8000000101585360;
    v57._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v57);
    v58._countAndFlagsBits = 0x28204E4920;
    v58._object = 0xE500000000000000;
    String.append(_:)(v58);
    v204 = sub_1000341B8(0x3F, 0xE100000000000000, v8);
    v59 = BidirectionalCollection<>.joined(separator:)();
    v61 = v60;

    v62._countAndFlagsBits = v59;
    v62._object = v61;
    String.append(_:)(v62);

    v63._countAndFlagsBits = 10537;
    v63._object = 0xE200000000000000;
    String.append(_:)(v63);
    v46 = *(&aBlock + 1);
    v45 = aBlock;
    v47 = 16;
  }

  v64 = v176;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v66 = sub_10001CC04(v65, v45, v46);
  v67 = v178;
  v4 = v182;
  if (v64)
  {
  }

  else
  {
    v68 = v66;
    v162 = v15;
    v163 = 0;

    sub_100034254(v47, 1);
    v8 = v4 + 56;
    v69 = 1 << *(v4 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v15 = v70 & *(v4 + 56);

    swift_beginAccess();
    v71 = 0;
    v72 = (v69 + 63) >> 6;
    v166 = (v173 + 8);
    v73 = 2;
    v74 = v68;
    v176 = v68;
    v173 = v72;
    v172 = v4 + 56;
LABEL_16:
    if (v15)
    {
      v181 = v73;
      goto LABEL_22;
    }

    while (1)
    {
      v78 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        __break(1u);
        goto LABEL_84;
      }

      if (v78 >= v72)
      {
        break;
      }

      v15 = *(v8 + 8 * v78);
      ++v71;
      if (v15)
      {
        v181 = v73;
        v71 = v78;
LABEL_22:
        v79 = v179;
        sub_10000C83C(*(v4 + 48) + *(v180 + 72) * (__clz(__rbit64(v15)) | (v71 << 6)), v179, type metadata accessor for CRLBoardIdentifier);
        sub_100025668(v79, v189, type metadata accessor for CRLBoardIdentifier);
        type metadata accessor for CRLBoardIdentifierStorage(0);
        v190 = UUID.uuid.getter();
        v191 = v80;
        v192 = v81;
        v193 = v82;
        v194 = v83;
        v195 = v84;
        v196 = v85;
        v197 = v86;
        v198 = v87;
        UUID.uuid.getter();
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v4 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
        v88 = 0x1000000000;
        *&aBlock = 0x1000000000;
        *(&aBlock + 1) = v4;
        if (String.count.getter() >= 1)
        {
          v89 = v174;
          static String.Encoding.utf8.getter();
          v90 = String.data(using:allowLossyConversion:)();
          v92 = v91;
          (*v166)(v89, v175);
          if (v92 >> 60 != 15)
          {
            Data.append(_:)();
            sub_100025870(v90, v92);
            v4 = *(&aBlock + 1);
            v88 = aBlock;
            goto LABEL_25;
          }

          sub_10084DC7C();
          swift_allocError();
          *v155 = 2;
          swift_willThrow();

          sub_10002640C(aBlock, *(&aBlock + 1));
          sub_100026028(v189, type metadata accessor for CRLBoardIdentifier);
          v156 = v67;
          v157 = v176;
          v158 = *(*(v176 + 16) + 32);
          v159 = v187;
          *v187 = v158;
          v184(v159, v183, v156);
          v160 = v158;
          LOBYTE(v158) = _dispatchPreconditionTest(_:)();
          v186(v159, v156);
          if (v158)
          {
            swift_beginAccess();
            v161 = *(v157 + 24);
            if (v161)
            {
              sqlite3_finalize(v161);
              *(v157 + 24) = 0;
            }
          }

LABEL_102:
          __break(1u);
        }

LABEL_25:
        v74 = v176;
        v93 = *(*(v176 + 16) + 32);
        v94 = v187;
        *v187 = v93;
        v184(v94, v183, v67);
        v95 = v93;
        LOBYTE(v93) = _dispatchPreconditionTest(_:)();
        v186(v94, v67);
        if ((v93 & 1) == 0)
        {
          goto LABEL_85;
        }

        v96 = v4 >> 62;
        if ((v4 >> 62) <= 1)
        {
          v97 = v181;
          if (!v96)
          {
            *&aBlock = v88;
            WORD4(aBlock) = v4;
            BYTE10(aBlock) = BYTE2(v4);
            BYTE11(aBlock) = BYTE3(v4);
            BYTE12(aBlock) = BYTE4(v4);
            BYTE13(aBlock) = BYTE5(v4);
            if (!(v181 >> 31))
            {
              v98 = *(v74 + 24);
              v8 = v172;
              if (qword_1019F17C8 != -1)
              {
                v122 = v181;
                v123 = *(v74 + 24);
                swift_once();
                v98 = v123;
                v97 = v122;
              }

              v77 = BYTE6(v4);
              v75 = qword_101AD69D0;
              v76 = v97;
              goto LABEL_14;
            }

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
            goto LABEL_95;
          }

          if (v88 >> 32 < v88)
          {
            __break(1u);
            goto LABEL_88;
          }

          v111 = v181;
          v112 = __DataStorage._bytes.getter();
          if (v112)
          {
            v113 = __DataStorage._offset.getter();
            if (!__OFSUB__(v88, v113))
            {
              v112 += v88 - v113;
              goto LABEL_53;
            }

LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
            goto LABEL_102;
          }

LABEL_53:
          v114 = v178;
          v115 = __DataStorage._length.getter();
          if (v111 >> 31)
          {
            goto LABEL_91;
          }

          if (v115 >= (v88 >> 32) - v88)
          {
            v116 = (v88 >> 32) - v88;
          }

          else
          {
            v116 = v115;
          }

          if (v112)
          {
            v117 = v116;
          }

          else
          {
            v117 = 0;
          }

          if (v117 < 0xFFFFFFFF80000000)
          {
            goto LABEL_93;
          }

          v74 = v176;
          if (v117 <= 0x7FFFFFFF)
          {
            v118 = *(v176 + 24);
            if (qword_1019F17C8 != -1)
            {
              v125 = *(v176 + 24);
              swift_once();
              v118 = v125;
              v74 = v176;
            }

            v119 = v112;
            v97 = v111;
            sqlite3_bind_blob(v118, v111, v119, v117, qword_101AD69D0);
            sub_10002640C(v88, v4);
            v67 = v114;
            goto LABEL_65;
          }

LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        if (v96 == 2)
        {
          v99 = v67;
          v101 = *(v88 + 16);
          v100 = *(v88 + 24);
          v102 = __DataStorage._bytes.getter();
          if (v102)
          {
            v103 = __DataStorage._offset.getter();
            if (__OFSUB__(v101, v103))
            {
              goto LABEL_98;
            }

            v102 += v101 - v103;
          }

          v104 = __OFSUB__(v100, v101);
          v105 = v100 - v101;
          if (v104)
          {
            goto LABEL_90;
          }

          v106 = __DataStorage._length.getter();
          if (v181 >> 31)
          {
            goto LABEL_92;
          }

          if (v106 >= v105)
          {
            v107 = v105;
          }

          else
          {
            v107 = v106;
          }

          if (v102)
          {
            v108 = v107;
          }

          else
          {
            v108 = 0;
          }

          if (v108 < 0xFFFFFFFF80000000)
          {
            goto LABEL_94;
          }

          v74 = v176;
          if (v108 > 0x7FFFFFFF)
          {
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

          v67 = v99;
          v109 = *(v176 + 24);
          if (qword_1019F17C8 != -1)
          {
            v124 = *(v176 + 24);
            swift_once();
            v109 = v124;
            v74 = v176;
          }

          v110 = v102;
          v97 = v181;
          sqlite3_bind_blob(v109, v181, v110, v108, qword_101AD69D0);
          sub_10002640C(v88, v4);
LABEL_65:
          v8 = v172;
        }

        else
        {
          *(&aBlock + 6) = 0;
          *&aBlock = 0;
          v97 = v181;
          if (v181 >> 31)
          {
            goto LABEL_89;
          }

          v98 = *(v74 + 24);
          v8 = v172;
          if (qword_1019F17C8 != -1)
          {
            v120 = v181;
            v121 = *(v74 + 24);
            swift_once();
            v98 = v121;
            v97 = v120;
          }

          v75 = qword_101AD69D0;
          v76 = v97;
          v77 = 0;
LABEL_14:
          sqlite3_bind_blob(v98, v76, &aBlock, v77, v75);
          sub_10002640C(v88, v4);
        }

        v15 &= v15 - 1;
        sub_100026028(v189, type metadata accessor for CRLBoardIdentifier);
        v73 = v97 + 1;
        v4 = v182;
        v72 = v173;
        goto LABEL_16;
      }
    }

    v126 = *(*(v74 + 16) + 32);
    v127 = v187;
    *v187 = v126;
    v184(v127, v183, v67);
    v128 = v126;
    LOBYTE(v126) = _dispatchPreconditionTest(_:)();
    v129 = v67;
    v186(v127, v67);
    if ((v126 & 1) == 0)
    {
      goto LABEL_97;
    }

    v130 = *(v74 + 16);

    v131 = v130;
    v132 = v163;
    v133 = sub_10001CEC4(v131, v74);

    v134 = v177;
    v135 = v162;
    if (v133 == 101)
    {
      v163 = v132;

      sub_100006370(0, &qword_1019F2D90);
      v136 = static OS_dispatch_queue.main.getter();
      v137 = swift_allocObject();
      *(v137 + 16) = &_swiftEmptySetSingleton;
      *(v137 + 24) = v4;
      *(v137 + 32) = &_swiftEmptySetSingleton;
      *(v137 + 40) = 0;
      *(v137 + 48) = v134;
      v202 = sub_1000260F4;
      v203 = v137;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = *"";
      v200 = sub_100007638;
      v201 = &unk_1018A5460;
      v138 = _Block_copy(&aBlock);

      v139 = v134;

      v140 = v168;
      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400);
      sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
      v141 = v170;
      v142 = v171;
      v143 = v176;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v138);

      (*(v165 + 8))(v141, v142);
      (*(v169 + 8))(v140, v167);
      v144 = *(*(v143 + 16) + 32);
      v145 = v187;
      *v187 = v144;
      v184(v145, v183, v129);
      v146 = v144;
      LOBYTE(v144) = _dispatchPreconditionTest(_:)();
      v186(v145, v129);
      if ((v144 & 1) == 0)
      {
        goto LABEL_100;
      }

      swift_beginAccess();
      v147 = *(v143 + 24);
      if (v147)
      {
        sqlite3_finalize(v147);
        *(v143 + 24) = 0;
      }
    }

    else
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      *&aBlock = 0xD00000000000002DLL;
      *(&aBlock + 1) = 0x80000001015A5430;
      v148._countAndFlagsBits = v164;
      v148._object = v135;
      String.append(_:)(v148);

      v149 = aBlock;
      sub_10089C7D0();
      swift_allocError();
      *v150 = v133;
      *(v150 + 8) = v149;
      swift_willThrow();
      v151 = *(*(v74 + 16) + 32);
      v152 = v187;
      *v187 = v151;
      v184(v152, v183, v129);
      v153 = v151;
      LOBYTE(v151) = _dispatchPreconditionTest(_:)();
      v186(v152, v129);
      if ((v151 & 1) == 0)
      {
        goto LABEL_101;
      }

      swift_beginAccess();
      v154 = *(v74 + 24);
      if (v154)
      {
        sqlite3_finalize(v154);
        *(v74 + 24) = 0;
      }
    }
  }
}