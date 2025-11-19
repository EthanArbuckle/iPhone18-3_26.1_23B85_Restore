uint64_t sub_100B47B18(void *a1)
{
  type metadata accessor for CRLFreehandDrawingShapeItem();
  if (([a1 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v26 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v26);
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
    *(inited + 152) = 132;
    v15 = v26;
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
    sub_100005404(v10, &_mh_execute_header, v19, "All items inserted into a freehand drawing should be freehand drawing shapes.", 77, 2, _swiftEmptyArrayStorage);

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

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:132 isFatal:0 format:v24 args:v21];
  }

  return 1;
}

uint64_t sub_100B47ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100B47F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B47F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B47FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A12058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B48058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLContainerItemCRDTData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100B480BC(void *a1, void *a2)
{
  v4 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146E8B0;
  v6 = [a1 topAnchor];
  v7 = [a2 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [a1 bottomAnchor];
  v10 = [a2 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [a1 leadingAnchor];
  v13 = [a2 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [a1 trailingAnchor];
  v16 = [a2 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];
}

void *sub_100B48314(float a1)
{
  v2 = v1;
  if (a1 == 1000.0)
  {
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
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
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 43;
    v16 = v29;
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
    sub_100005404(v11, &_mh_execute_header, v20, "Resetting a constraint to .required is not supported.", 53, 2, _swiftEmptyArrayStorage);

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

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:43 isFatal:0 format:v25 args:v22];
  }

  else
  {
    [v1 priority];
    if (*&v27 != a1)
    {
      *&v27 = a1;
      [v1 setPriority:v27];
    }
  }

  return v2;
}

id sub_100B486FC(unsigned __int8 a1)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a1 <= 2u)
  {
    if (a1 <= 1u)
    {
      goto LABEL_7;
    }

    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    LOBYTE(v45[0]) = 2;
    v31 = String.init<A>(describing:)();
    v33 = v32;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v31;
    v34 = inited + 32;
    *(inited + 40) = v33;
    v35 = static os_log_type_t.error.getter();
    v36 = "Invalid URL detected.: %@";
    v37 = v29;
    v38 = 25;
    goto LABEL_14;
  }

  if (a1 == 3)
  {
LABEL_7:
    v7 = [v2 mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100928838();
    swift_allocError();
    *v11 = a1;
    v12 = sub_10000BCE4(_swiftEmptyArrayStorage);
    v46 = &type metadata for Bool;
    LOBYTE(v45[0]) = 1;
    sub_10000BF3C(v45, v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100A9EF34(v44, 0xD000000000000026, 0x800000010158BA90, isUniquelyReferenced_nonNull_native);
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    swift_getErrorValue();
    v46 = v43;
    v17 = sub_10002C58C(v45);
    (*(*(v43 - 1) + 16))(v17);
    sub_10000BF3C(v45, v44);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_100A9EF34(v44, v14, v16, v18);

    v19 = v12;
    v20 = _convertErrorToNSError(_:)();
    v21 = [v20 code];

    v22 = objc_opt_self();
    v23 = @"com.apple.freeform.CRLErrorDomainInfoImporter";
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    sub_10007941C(v19);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = [v22 crl_errorWithDomain:v23 code:v21 alertTitle:v24 alertMessage:v25 userInfo:isa];

    return v27;
  }

  if (a1 != 4)
  {

    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v39 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    LOBYTE(v45[0]) = 5;
    v40 = String.init<A>(describing:)();
    v42 = v41;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v40;
    v34 = inited + 32;
    *(inited + 40) = v42;
    v35 = static os_log_type_t.error.getter();
    v36 = "Metadata provider initialized with invalid URL type.: %@";
    v37 = v39;
    v38 = 56;
LABEL_14:
    sub_100005404(v37, &_mh_execute_header, v35, v36, v38, 2, inited);
    swift_setDeallocating();
    sub_100005070(v34);
    return 0;
  }

  return 0;
}

uint64_t sub_100B4907C()
{
  v1[45] = v0;
  v2 = type metadata accessor for CancellationError();
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  v1[49] = swift_task_alloc();

  return _swift_task_switch(sub_100B49174, 0, 0);
}

uint64_t sub_100B49174()
{
  v1 = v0[49];
  v2 = v0[45];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = v2;
  v6 = sub_100796D54(0, 0, v1, &unk_101498AB8, v4);
  v0[50] = v6;
  *&v5[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_importTask] = v6;

  v7 = swift_task_alloc();
  v0[51] = v7;
  v8 = sub_1005B981C(&unk_1019F6B40);
  v0[52] = v8;
  *v7 = v0;
  v7[1] = sub_100B49304;

  return Task.result.getter(v0 + 40, v6, &type metadata for () + 8, v8, &protocol self-conformance witness table for Error);
}

uint64_t sub_100B49304()
{

  return _swift_task_switch(sub_100B4941C, 0, 0);
}

uint64_t sub_100B4941C()
{
  v65 = v0;
  if (*(v0 + 328) != 1)
  {
    goto LABEL_35;
  }

  v1 = *(v0 + 320);
  swift_willThrow();
  *(v0 + 336) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 360);
    sub_1007987E8(v1, 1);
    v3 = *(v0 + 329);
    sub_1009DB968();
    v4 = swift_allocError();
    *v5 = v3;
    *(v2 + OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__error) = v4;

    goto LABEL_35;
  }

  *(v0 + 344) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    sub_1007987E8(v1, 1);
    if (qword_1019F2098 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_6;
  }

  v11 = *(v0 + 360);

  sub_1009DB968();
  v12 = swift_allocError();
  *v13 = 1;
  *(v11 + OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__error) = v12;

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(v0 + 352) = v1;
  v62 = v1;
  swift_errorRetain();
  v15 = inited;
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(inited + 56) = &type metadata for String;
  v19 = sub_1000053B0();
  *(inited + 32) = v16;
  v63 = inited + 32;
  *(inited + 64) = v19;
  *(inited + 40) = v18;
  v61 = objc_opt_self();
  v20 = [v61 _atomicIncrementAssertCount];
  v64 = [objc_allocWithZone(NSString) init];
  sub_100604538(v15, &v64);
  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  v23 = [v22 lastPathComponent];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.crlAssert;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_10146CA70;
  *(v28 + 56) = &type metadata for Int32;
  *(v28 + 64) = &protocol witness table for Int32;
  *(v28 + 32) = v20;
  v29 = sub_1005CF000();
  *(v28 + 96) = v29;
  v30 = sub_1005CF04C();
  *(v28 + 72) = v21;
  *(v28 + 136) = &type metadata for String;
  *(v28 + 144) = v19;
  *(v28 + 104) = v30;
  *(v28 + 112) = v24;
  *(v28 + 120) = v26;
  *(v28 + 176) = &type metadata for UInt;
  *(v28 + 184) = &protocol witness table for UInt;
  *(v28 + 152) = 56;
  v31 = v64;
  *(v28 + 216) = v29;
  *(v28 + 224) = v30;
  *(v28 + 192) = v31;
  v32 = v21;
  v33 = v31;
  v34 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v28);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v35 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v35, "Unable to create CRLURLItem: %@", 31, 2, v15);

  type metadata accessor for __VaListBuilder();
  v36 = swift_allocObject();
  v36[2] = 8;
  v36[3] = 0;
  v37 = v36 + 3;
  v36[4] = 0;
  v36[5] = 0;
  v38 = *(v15 + 16);
  if (!v38)
  {
LABEL_34:
    v55 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v58 = String._bridgeToObjectiveC()();

    [v61 handleFailureInFunction:v56 file:v57 lineNumber:56 isFatal:0 format:v58 args:v55];

    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1007987E8(v62, 1);
    goto LABEL_35;
  }

  v39 = 0;
  while (1)
  {
    sub_100020E58((v63 + 40 * v39), *(v63 + 40 * v39 + 24));
    v40 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v41 = *v37;
    v42 = *(v40 + 16);
    v43 = __OFADD__(*v37, v42);
    v44 = *v37 + v42;
    if (v43)
    {
      break;
    }

    v45 = v36[4];
    if (v45 >= v44)
    {
      goto LABEL_26;
    }

    if (v45 + 0x4000000000000000 < 0)
    {
      goto LABEL_40;
    }

    v46 = v36[5];
    if (2 * v45 > v44)
    {
      v44 = 2 * v45;
    }

    v36[4] = v44;
    if ((v44 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_41;
    }

    v47 = v40;
    v48 = swift_slowAlloc();
    v49 = v48;
    v36[5] = v48;
    if (v46)
    {
      if (v48 != v46 || v48 >= &v46[8 * v41])
      {
        memmove(v48, v46, 8 * v41);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v40 = v47;
LABEL_26:
      v49 = v36[5];
      if (!v49)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

    v40 = v47;
    if (!v49)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_27:
    v51 = *(v40 + 16);
    if (v51)
    {
      v52 = (v40 + 32);
      v53 = *v37;
      while (1)
      {
        v54 = *v52++;
        *&v49[8 * v53] = v54;
        v53 = *v37 + 1;
        if (__OFADD__(*v37, 1))
        {
          break;
        }

        *v37 = v53;
        if (!--v51)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      break;
    }

LABEL_11:

    if (++v39 == v38)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  swift_once();
LABEL_6:
  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v8 = *(v0 + 368);
  v9 = static OS_os_log.crlDefault;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v9, &_mh_execute_header, v10, "Import task cancelled. Not an error.", 36, 2, _swiftEmptyArrayStorage);
  (*(v7 + 8))(v6, v8);

LABEL_35:

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_100B49B88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D3D4;

  return sub_100B49E34();
}

uint64_t sub_100B49D8C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1009D3FA0;

  return sub_100B4907C();
}

uint64_t sub_100B49E34()
{
  v1[40] = v0;
  v2 = type metadata accessor for CancellationError();
  v1[41] = v2;
  v1[42] = *(v2 - 8);
  v1[43] = swift_task_alloc();
  sub_1005B981C(&unk_101A1B880);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[49] = v3;
  v1[50] = *(v3 - 8);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();

  return _swift_task_switch(sub_100B49FFC, 0, 0);
}

uint64_t sub_100B49FFC()
{
  v50 = v0;
  v1 = [*(v0 + 320) delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector:"boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:"])
    {
      [v2 boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:*(v0 + 320)];
    }

    swift_unknownObjectRelease();
  }

  static Task<>.checkCancellation()();
  *(v0 + 432) = 0;
  v3 = [*(v0 + 320) URL];
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  v6 = *(v0 + 376);
  if (v3)
  {
    v7 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 56))(v6, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(*(v0 + 376), 1, 1, *(v0 + 392));
    v8 = objc_opt_self();
    v9 = [v8 _atomicIncrementAssertCount];
    v49 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v49);
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
    v18 = sub_1005CF000();
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
    *(inited + 152) = 67;
    v21 = v49;
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

    [v8 handleFailureInFunction:v28 file:v29 lineNumber:67 isFatal:0 format:v30 args:v27];
  }

  v31 = *(v0 + 392);
  v32 = *(v0 + 400);
  v33 = *(v0 + 384);
  sub_10003DFF8(*(v0 + 376), v33, &unk_1019F33C0);
  if ((*(v32 + 48))(v33, 1, v31) == 1)
  {
    sub_10000CAAC(*(v0 + 384), &unk_1019F33C0);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v36 = *(v0 + 416);
    v37 = *(v0 + 424);
    v38 = *(v0 + 392);
    v39 = *(v0 + 400);
    v40 = *(v0 + 320);
    (*(v39 + 32))(v37, *(v0 + 384), v38);
    v41 = *(v39 + 16);
    *(v0 + 440) = v41;
    *(v0 + 448) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41(v36, v37, v38);
    v42 = [v40 suggestedName];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    *(v0 + 456) = v44;
    *(v0 + 464) = v46;
    type metadata accessor for MainActor();
    *(v0 + 472) = static MainActor.shared.getter();
    v48 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100B4A6BC, v48, v47);
  }
}

uint64_t sub_100B4A6BC()
{
  v1 = v0[55];
  v2 = v0[54];
  v3 = v0[51];
  v4 = v0[52];
  v5 = v0[49];

  v1(v3, v4, v5);
  v6 = objc_allocWithZone(type metadata accessor for CRLRemoteURLMetadataProvider(0));
  v7 = sub_100FC85B8(v3);
  v0[60] = v7;
  v0[61] = v2;
  if (v2)
  {
    v8 = v0[52];
    v9 = v0[49];
    v10 = v0[50];
    v11 = *(v10 + 8);
    v0[70] = v11;
    v0[71] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);

    v12 = sub_100B4AA78;
  }

  else
  {
    v13 = v7;
    v15 = v0[57];
    v14 = v0[58];
    v16 = v0[52];
    v17 = v0[49];
    v18 = v0[50];
    v19 = *(v18 + 8);
    v0[62] = v19;
    v0[63] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v16, v17);
    v20 = &v13[OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_filename];
    *v20 = v15;
    *(v20 + 1) = v14;

    v12 = sub_100B4A804;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100B4A804()
{
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[46];
  v4 = v0[40];
  v5 = OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_metadataProvider;
  v0[64] = OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_metadataProvider;
  v6 = *&v4[v5];
  *&v4[v5] = v1;
  v7 = v1;

  v8 = [v4 boardItemFactory];
  v9 = *&v8[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
  v0[65] = v9;
  v10 = v9;

  type metadata accessor for CRLBoardItemImporterHelper();
  inited = swift_initStackObject();
  v0[66] = inited;
  *(inited + 16) = v10;
  v12 = type metadata accessor for CRLAssetData();
  v0[67] = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v0[68] = v14;
  v0[69] = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v3, 1, 1, v12);
  static Task<>.checkCancellation()();
  if (v2)
  {
    v15 = v0[62];
    v16 = v0[60];
    v17 = v0[53];
    v18 = v0[49];
    v19 = v0[46];

    sub_10000CAAC(v19, &unk_101A1B880);
    v15(v17, v18);

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = swift_task_alloc();
    v0[72] = v22;
    *v22 = v0;
    v22[1] = sub_100B4AB60;
    v23 = v0[60];
    v24 = v0[45];

    return sub_100F7F768(v24, v23, 0);
  }
}

uint64_t sub_100B4AA78()
{
  (*(v0 + 560))(*(v0 + 424), *(v0 + 392));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B4AB60()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_100B4B22C;
  }

  else
  {
    v2 = sub_100B4AC74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B4AC74()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  sub_10000CAAC(v2, &unk_101A1B880);
  sub_10003DFF8(v1, v2, &unk_101A1B880);
  v3 = *(v0 + 584);
  static Task<>.checkCancellation()();
  *(v0 + 592) = v3;
  if (v3)
  {
    v4 = *(v0 + 496);
    v5 = *(v0 + 480);
    v6 = *(v0 + 424);
    v7 = *(v0 + 392);
    v8 = *(v0 + 368);

    sub_10000CAAC(v8, &unk_101A1B880);
    v4(v6, v7);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 600) = v11;
    *v11 = v0;
    v11[1] = sub_100B4AE68;

    return sub_100FC8014(250.0, 150.0, 150.0);
  }
}

uint64_t sub_100B4AE68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  *(v4 + 272) = a3;
  *(v4 + 256) = a1;
  *(v4 + 264) = a2;
  *(v4 + 248) = v3;
  *(v4 + 625) = a3;

  return _swift_task_switch(sub_100B4AF74, 0, 0);
}

uint64_t sub_100B4AF74()
{
  if (*(v0 + 625))
  {
    v1 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{250.0, 150.0}];
  }

  else
  {
    v1 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{*(v0 + 256), *(v0 + 264)}];
  }

  v2 = v1;
  v3 = *(v0 + 592);
  static Task<>.checkCancellation()();
  v4 = *(v0 + 520);
  if (v3)
  {
    v5 = *(v0 + 496);
    v6 = *(v0 + 480);
    v7 = *(v0 + 424);
    v8 = *(v0 + 392);
    v9 = *(v0 + 368);

    sub_10000CAAC(v9, &unk_101A1B880);
    v5(v7, v8);
  }

  else
  {
    v11 = *(v0 + 512);
    v22 = *(v0 + 496);
    v12 = *(v0 + 480);
    v13 = *(v0 + 424);
    v21 = *(v0 + 392);
    v14 = *(v0 + 368);
    v15 = *(v0 + 320);
    v16 = [v15 boardItemFactory];
    v17 = sub_10110DD78(v2, v14, v13);

    v18 = *&v15[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__boardItem];
    *&v15[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__boardItem] = v17;

    sub_10000CAAC(v14, &unk_101A1B880);
    v22(v13, v21);
    *&v15[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_importTask] = 0;

    v19 = *&v15[v11];
    *&v15[v11] = 0;
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100B4B22C()
{
  *(v0 + 304) = *(v0 + 584);
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 584);
  if (v1)
  {
    v3 = *(v0 + 320);

    *(v3 + OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__error) = sub_100B486FC(*(v0 + 624));

    v4 = swift_task_alloc();
    *(v0 + 608) = v4;
    *v4 = v0;
    v4[1] = sub_100B4B608;
    v5 = *(v0 + 424);
    v6 = *(v0 + 352);

    return sub_100F80000(v6, v5);
  }

  else
  {

    *(v0 + 312) = v2;
    swift_errorRetain();
    if (swift_dynamicCast())
    {

      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 336);
      v8 = *(v0 + 344);
      v10 = *(v0 + 328);
      v11 = static OS_os_log.crlDefault;
      v12 = static os_log_type_t.default.getter();
      sub_100005404(v11, &_mh_execute_header, v12, "Metadata provider task cancelled. Not an error.", 47, 2, _swiftEmptyArrayStorage);
      (*(v9 + 8))(v8, v10);

      static Task<>.checkCancellation()();
      *(v0 + 592) = 0;
      v19 = swift_task_alloc();
      *(v0 + 600) = v19;
      *v19 = v0;
      v19[1] = sub_100B4AE68;

      return sub_100FC8014(250.0, 150.0, 150.0);
    }

    else
    {
      v13 = *(v0 + 496);
      v14 = *(v0 + 480);
      v15 = *(v0 + 424);
      v16 = *(v0 + 392);
      v17 = *(v0 + 368);

      sub_10000CAAC(v17, &unk_101A1B880);
      v13(v15, v16);

      v18 = *(v0 + 8);

      return v18();
    }
  }
}

uint64_t sub_100B4B608()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_100B4B93C;
  }

  else
  {
    v2 = sub_100B4B71C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B4B71C()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 368);
  v4 = *(v0 + 352);
  sub_10000CAAC(v3, &unk_101A1B880);
  v1(v4, 0, 1, v2);
  sub_10003DFF8(v4, v3, &unk_101A1B880);

  v5 = *(v0 + 616);
  static Task<>.checkCancellation()();
  *(v0 + 592) = v5;
  if (v5)
  {
    v6 = *(v0 + 496);
    v7 = *(v0 + 480);
    v8 = *(v0 + 424);
    v9 = *(v0 + 392);
    v10 = *(v0 + 368);

    sub_10000CAAC(v10, &unk_101A1B880);
    v6(v8, v9);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 600) = v13;
    *v13 = v0;
    v13[1] = sub_100B4AE68;

    return sub_100FC8014(250.0, 150.0, 150.0);
  }
}

uint64_t sub_100B4B93C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = *(v0 + 424);
  v4 = *(v0 + 392);
  v5 = *(v0 + 368);

  sub_10000CAAC(v5, &unk_101A1B880);
  v1(v3, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100B4BA5C()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_importTask;
  if (*&v0[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_importTask])
  {

    sub_1005B981C(&unk_1019F6B40);
    Task.cancel()();
  }

  *&v0[v4] = 0;

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = v0;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_10064191C(0, 0, v3, &unk_101498A88, v8);
}

uint64_t sub_100B4BBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B4BC80, v6, v5);
}

uint64_t sub_100B4BC80()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_metadataProvider;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_metadataProvider);
  if (v3)
  {
    if (*&v3[OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_linkPresentationMetadataTask])
    {
      v4 = v3;

      sub_1005B981C(&qword_1019FFCD0);
      sub_1005B981C(&unk_1019F6B40);
      Task.cancel()();
    }

    else
    {
      v6 = v3;
    }

    v7 = sub_100FC7DA8();
    [v7 cancel];

    v5 = *(v1 + v2);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v2) = 0;

  v8 = *(v0 + 8);

  return v8();
}

id sub_100B4BE6C(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_importTask] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_metadataProvider] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_maximumLongEdge] = 0x406F400000000000;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_defaultShortEdge] = 0x4062C00000000000;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__boardItem] = 0;
  v6 = OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__error;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__error] = 0;
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for CRLURLItemImporter();
  v9 = objc_msgSendSuper2(&v14, "initWithURL:boardItemFactory:", v8, a2);

  v10 = type metadata accessor for URL();
  v11 = *(*(v10 - 8) + 8);
  v12 = v9;
  v11(a1, v10);
  if (v12)
  {
  }

  return v12;
}

id sub_100B4C020(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_importTask] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_metadataProvider] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_maximumLongEdge] = 0x406F400000000000;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_defaultShortEdge] = 0x4062C00000000000;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__boardItem] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__error] = 0;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CRLURLItemImporter();
  v5 = objc_msgSendSuper2(&v7, "initWithData:boardItemFactory:", a1, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_100B4C130()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLURLItemImporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100B4C1F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100B4BBE8(a1, v4, v5, v6);
}

uint64_t sub_100B4C2A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D3D4;

  return sub_100B49D8C(v2, v3);
}

uint64_t sub_100B4C354()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D3D4;

  return sub_100B49B88();
}

id sub_100B4C5BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSBoardView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100B4C628()
{
  result = qword_101A12120;
  if (!qword_101A12120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12120);
  }

  return result;
}

unint64_t sub_100B4C680()
{
  result = qword_101A12128;
  if (!qword_101A12128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12128);
  }

  return result;
}

uint64_t sub_100B4C724@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v1 - 8);
  v49 = &v39 - v2;
  v58 = type metadata accessor for InputConnectionBehavior();
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v4 - 8);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v39 - v7;
  v8 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v8 - 8);
  v55 = &v39 - v9;
  v10 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v10 - 8);
  v41 = &v39 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v54 = type metadata accessor for LocalizedStringResource();
  v60 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v52 = &v39 - v20;
  v46 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v13 + 104);
  v22(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v50 = v21;
  v39 = v12;
  v22(v15, v21, v12);
  v51 = v13 + 104;
  v40 = v22;
  v23 = v41;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = *(v60 + 56);
  v60 += 56;
  v47 = v24;
  v24(v23, 0, 1, v54);
  v25 = type metadata accessor for CRLBoardEntity();
  (*(*(v25 - 8) + 56))(v55, 1, 1, v25);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22(v15, v21, v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = v56;
  IntentDialog.init(_:)();
  v27 = type metadata accessor for IntentDialog();
  v44 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v45 = v28 + 56;
  v43 = v29;
  v29(v26, 0, 1, v27);
  v29(v48, 1, 1, v27);
  v30 = *(v61 + 104);
  v61 += 104;
  v42 = v30;
  v30(v57, enum case for InputConnectionBehavior.default(_:), v58);
  sub_100B4EADC(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  *v59 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v55 = sub_1005B981C(&qword_101A12140);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = v50;
  v32 = v39;
  v33 = v40;
  v40(v15, v50, v39);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33(v15, v31, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v47(v23, 0, 1, v54);
  v34 = type metadata accessor for URL();
  (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33(v15, v50, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v35 = v56;
  IntentDialog.init(_:)();
  v43(v35, 0, 1, v44);
  v42(v57, enum case for InputConnectionBehavior.connectToPreviousIntentResult(_:), v58);
  v36 = IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
  v37 = v59;
  v59[1] = v36;
  sub_1005B981C(&qword_1019F6280);
  v62 = 0xD00000000000001FLL;
  v63 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v37[2] = AppDependency.__allocating_init(key:manager:)();
  v37[6] = &type metadata for CRLInsertURLToBoardIntentPerformer;
  v37[7] = &off_1018844F8;
  result = swift_allocObject();
  v37[3] = result;
  *(result + 40) = &type metadata for CRLAppIntentsBoardItemsImporter;
  *(result + 48) = &off_101891740;
  return result;
}

uint64_t sub_100B4D1A4(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  type metadata accessor for CRLBoardIdentifier(0);
  v2[34] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6260);
  v2[35] = swift_task_alloc();
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[39] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[40] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v2[41] = swift_task_alloc();
  v4 = type metadata accessor for IntentDialog();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = type metadata accessor for CRLBoardEntity();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[51] = v5;
  v2[52] = *(v5 - 8);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[55] = v6;
  v2[56] = *(v6 - 8);
  v2[57] = swift_task_alloc();

  return _swift_task_switch(sub_100B4D4CC, 0, 0);
}

uint64_t sub_100B4D4CC()
{
  v38 = v0;
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.appIntents;
  Logger.init(_:)();
  IntentParameter.wrappedValue.getter();
  v2 = URL.scheme.getter();
  if (v3)
  {
    v4 = v3;
    v5 = v2 == 0x7370747468 && v3 == 0xE500000000000000;
    if (v5 || (v6 = v2, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v7 = *(*(v0 + 416) + 8);
      v7(*(v0 + 432), *(v0 + 408));

LABEL_10:
      *(v0 + 464) = v7;
      v8 = *(v0 + 416);
      v9 = *(v0 + 264);
      sub_100020E58(v9 + 3, v9[6]);
      sub_1005B981C(&unk_1019F6B30);
      *(v0 + 512) = *(v8 + 80);
      v10 = swift_allocObject();
      *(v0 + 472) = v10;
      *(v10 + 16) = xmmword_10146C6B0;
      IntentParameter.wrappedValue.getter();
      *(v0 + 480) = *v9;
      IntentParameter.wrappedValue.getter();
      AppDependency.wrappedValue.getter();
      *(v0 + 232) = &type metadata for CRLBoardLibraryProvidingDependency;
      *(v0 + 240) = &off_1018AD9D0;
      v11 = swift_task_alloc();
      *(v0 + 488) = v11;
      *v11 = v0;
      v11[1] = sub_100B4DBC4;
      v12 = *(v0 + 400);

      return sub_10072ACFC(v10, v12, v0 + 208);
    }

    v31 = v6;
    v32 = *(v0 + 432);
    v33 = *(v0 + 408);
    v34 = *(v0 + 416);
    if (v31 == 1886680168 && v4 == 0xE400000000000000)
    {

      v7 = *(v34 + 8);
      v7(v32, v33);
      goto LABEL_10;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = *(v34 + 8);
    v7(v32, v33);
    if (v35)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(*(v0 + 416) + 8);
    v7(*(v0 + 432), *(v0 + 408));
  }

  sub_100B4EA74(*(v0 + 264), v0 + 16);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 424);
    v17 = *(v0 + 408);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136315138;
    IntentParameter.wrappedValue.getter();
    sub_100B4EADC(&qword_101A15B10, &type metadata accessor for URL);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v7(v16, v17);
    sub_100B4EAAC(v0 + 16);
    v23 = sub_101007640(v20, v22, &v37);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Invalid hypertext URLs provided %s", v18, 0xCu);
    sub_100005070(v19);
  }

  else
  {

    sub_100B4EAAC(v0 + 16);
  }

  v24 = *(v0 + 344);
  v25 = *(v0 + 352);
  v36 = *(v0 + 336);
  v26 = *(v0 + 296);
  v27 = *(v0 + 304);
  v28 = *(v0 + 280);
  v29 = *(v0 + 288);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v26 + 104))(v27, enum case for LocalizedStringResource.BundleDescription.main(_:), v29);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  IntentDialog.init(_:)();
  IntentParameter.projectedValue.getter();
  (*(v24 + 16))(v28, v25, v36);
  (*(v24 + 56))(v28, 0, 1, v36);
  type metadata accessor for AppIntentError();
  sub_100B4EADC(&qword_1019F8B08, &type metadata accessor for AppIntentError);
  swift_allocError();
  IntentParameter.needsValueError(_:)();

  sub_10000CAAC(v28, &qword_1019F6260);
  swift_willThrow();
  (*(v24 + 8))(v25, v36);
  (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_100B4DBC4()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  *(*v1 + 496) = v0;

  v4 = v3 + 8;
  if (v0)
  {
    v6 = *(v2 + 464);
    v5 = *(v2 + 472);
    v7 = *(v2 + 408);
    v8 = (*(v2 + 512) + 32) & ~*(v2 + 512);
    sub_1006164FC(*(v2 + 400), type metadata accessor for CRLBoardEntity);
    swift_setDeallocating();
    *(v2 + 504) = v4 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v5 + v8, v7);
    swift_deallocClassInstance();
    v9 = sub_100B4E030;
  }

  else
  {
    v10 = *(v2 + 512);
    v12 = *(v2 + 464);
    v11 = *(v2 + 472);
    v14 = *(v2 + 400);
    v13 = *(v2 + 408);

    swift_setDeallocating();
    v12(v11 + ((v10 + 32) & ~v10), v13);
    swift_deallocClassInstance();
    sub_1006164FC(v14, type metadata accessor for CRLBoardEntity);
    sub_100005070(v2 + 208);
    v9 = sub_100B4DDDC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100B4DDDC()
{
  v1 = v0[56];
  v9 = v0[55];
  v10 = v0[57];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[46];
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v6 = sub_100B0768C();
  sub_10000C564(v4, v3, type metadata accessor for CRLBoardEntity);
  sub_10000C564(v3, v5, type metadata accessor for CRLBoardEntity);
  IntentParameter.wrappedValue.setter();
  sub_1006164FC(v3, type metadata accessor for CRLBoardEntity);
  sub_1006164FC(v4, type metadata accessor for CRLBoardEntity);
  v0[31] = v6;
  sub_100B4EADC(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_1006164FC(v2, type metadata accessor for CRLBoardEntity);
  (*(v1 + 8))(v10, v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100B4E030()
{
  v23 = v0;
  v1 = v0[33];
  sub_100005070((v0 + 26));
  sub_100B4EA74(v1, (v0 + 10));
  sub_100B4EA74(v1, (v0 + 18));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v20 = v0[58];
    v4 = v0[53];
    v5 = v0[51];
    v6 = v0[49];
    v7 = v0[34];
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v8 = 136315650;
    IntentParameter.wrappedValue.getter();
    sub_100B4EADC(&qword_101A15B10, &type metadata accessor for URL);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v20(v4, v5);
    sub_100B4EAAC((v0 + 10));
    v12 = sub_101007640(v9, v11, v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    IntentParameter.wrappedValue.getter();
    sub_10000C564(v6, v7, type metadata accessor for CRLBoardIdentifier);
    sub_1006164FC(v6, type metadata accessor for CRLBoardEntity);
    v13 = sub_10084B8C8();
    v15 = v14;
    sub_1006164FC(v7, type metadata accessor for CRLBoardIdentifier);
    sub_100B4EAAC((v0 + 18));
    v16 = sub_101007640(v13, v15, v22);

    *(v8 + 14) = v16;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v17;
    *v21 = v17;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error importing URL: %s to board: %s - %@", v8, 0x20u);
    sub_10000CAAC(v21, &unk_101A27F60);

    swift_arrayDestroy();
  }

  else
  {

    sub_100B4EAAC((v0 + 18));
    sub_100B4EAAC((v0 + 10));
  }

  type metadata accessor for AppIntentError();
  sub_100B4EADC(&qword_1019F8B08, &type metadata accessor for AppIntentError);
  swift_allocError();
  static AppIntentError.Unrecoverable.unknown.getter();
  swift_willThrow();

  (*(v0[56] + 8))(v0[57], v0[55]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100B4E498()
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
  sub_10061655C(v6, qword_101AD7530);
  sub_1005EB3DC(v6, qword_101AD7530);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100B4E690()
{
  v0 = sub_1005B981C(&qword_101A12150);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_101A12158);
  __chkstk_darwin(v1);
  sub_100B4EA20();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 543450177;
  v2._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A12160);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A12168);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100B4E88C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1D58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1005EB3DC(v2, qword_101AD7530);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100B4E938(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_100B4D1A4(a1);
}

uint64_t sub_100B4E9D4(uint64_t a1)
{
  v2 = sub_100B4EA20();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100B4EA20()
{
  result = qword_101A12148;
  if (!qword_101A12148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12148);
  }

  return result;
}

uint64_t sub_100B4EADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100B4EBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B4EF84();
  v7 = sub_100B4EEDC();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100B4EC54()
{
  sub_100B4EF84();
  sub_100B4EF30();
  return CRValue<>.init(from:)();
}

uint64_t sub_100B4ECC0()
{
  sub_100B4EF84();
  sub_100B4EF30();
  return CRValue<>.encode(to:)();
}

uint64_t sub_100B4ED1C(uint64_t a1)
{
  v2 = sub_100B4EF84();
  v3 = sub_100B4EF30();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Int);
}

uint64_t sub_100B4EDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B4EF30();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

unint64_t sub_100B4EE2C()
{
  result = qword_101A12170;
  if (!qword_101A12170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12170);
  }

  return result;
}

unint64_t sub_100B4EE84()
{
  result = qword_101A12178;
  if (!qword_101A12178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12178);
  }

  return result;
}

unint64_t sub_100B4EEDC()
{
  result = qword_101A12180;
  if (!qword_101A12180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12180);
  }

  return result;
}

unint64_t sub_100B4EF30()
{
  result = qword_101A12188;
  if (!qword_101A12188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12188);
  }

  return result;
}

unint64_t sub_100B4EF84()
{
  result = qword_101A12190;
  if (!qword_101A12190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12190);
  }

  return result;
}

id sub_100B4EFD8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v0[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame] = 0;
  v4 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_frameNumber;
  v12 = 0;
  sub_1005B981C(&qword_101A04C10);
  swift_allocObject();
  *&v0[v4] = CurrentValueSubject.init(_:)();
  v5 = &v0[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_metalContext];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_signalState];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 2;
  sub_100006370(0, &qword_1019F2D90);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = [objc_allocWithZone(MTLSharedEventListener) initWithDispatchQueue:v7];

  *&v1[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_listener] = v8;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "init");
  [v9 setBackgroundColor:0];
  [v9 setOpaque:0];

  return v9;
}

void sub_100B4F184()
{
  v1 = (v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData);
  v2 = *(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData);
  if (v2)
  {
    v4 = v1[2];
    v3 = v1[3];
    v5 = v1[1];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v6 = v3;
    v7 = [v2 device];
    v8 = *(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_metalContext);
    if (v8)
    {
      v9 = *(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_metalContext + 8);
      swift_unknownObjectRetain();
      if (v7 == v8)
      {
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }

    v10 = [v7 newCommandQueue];
    if (v10)
    {
      v9 = v10;
LABEL_7:
      swift_unknownObjectRetain();
      sub_100995550(v7);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_100B5073C(v7, v9);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v11 = [v4 signaledValue];
      v12 = __CFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        __break(1u);
      }

      else
      {
        sub_100B5081C(v13, v5);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
      }

      return;
    }

    sub_100B5073C(0, 0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {

    sub_100B5073C(0, 0);
  }
}

uint64_t sub_100B4F390(id a1, id a2)
{
  if (a1 == a2)
  {
LABEL_17:
    v10 = 1;
    return v10 & 1;
  }

  v4 = [a2 label];
  if (v4)
  {

    v5 = [a1 label];
    if (v5)
    {
      v6 = v5;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v11 = [a2 label];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v9)
      {
        if (v15)
        {
          if (v7 == v13 && v9 == v15)
          {

            v10 = 1;
          }

          else
          {
            v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          goto LABEL_19;
        }

        goto LABEL_14;
      }

      if (v15)
      {
        v10 = 0;
        goto LABEL_19;
      }
    }

    else if (v9)
    {
LABEL_14:
      v10 = 0;
LABEL_19:

      return v10 & 1;
    }

    goto LABEL_17;
  }

  v10 = 0;
  return v10 & 1;
}

void sub_100B4F4D4(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100B4F544(a1, a2);
  }
}

uint64_t sub_100B4F544(uint64_t result, unint64_t a2)
{
  v3 = v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_signalState;
  if (!*(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_signalState + 16))
  {
    v4 = result;
    v7 = *v3;
    v6 = *(v3 + 8);
    swift_unknownObjectRetain();
    if ((sub_100B4F390(v4, v6) & 1) != 0 && v7 <= a2)
    {
      v8 = a2;
      v9 = *v3;
      v10 = *(v3 + 8);
      *v3 = v8;
      *(v3 + 8) = v4;
      v11 = *(v3 + 16);
      *(v3 + 16) = 1;
      v12 = v8;
      swift_unknownObjectRetain();
      sub_100B509A0(v9, v10, v11);
      sub_100B4FBD4(v12);
    }

    return sub_100B509A0(v7, v6, 0);
  }

  return result;
}

uint64_t sub_100B4FB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v4(v5, a3);

  return swift_unknownObjectRelease();
}

id sub_100B4FBD4(id result)
{
  v3 = &v1[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData];
  v4 = *&v1[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData];
  if (!v4)
  {
    return result;
  }

  v5 = v1;
  v49 = result;
  v6 = v2;
  v8 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = *(v3 + 1);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = v7;
  v11 = [v9 signaledValue];
  if (v11 < [v8 signaledValue] || (v12 = *&v5[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_metalContext]) == 0)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v13 = *&v5[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_metalContext + 8];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  [v5 bounds];
  v15 = v14;
  v17 = v16;
  [v5 contentsScale];
  v19 = v15 * v18;
  if (qword_1019F19D8 != -1)
  {
    v40 = v18;
    swift_once();
    v18 = v40;
  }

  if (v19 > qword_101AD6E58)
  {
    v19 = qword_101AD6E58;
  }

  v20 = v17 * v18;
  if (v20 <= qword_101AD6E58)
  {
    v21 = v20;
  }

  else
  {
    v21 = qword_101AD6E58;
  }

  [v5 drawableSize];
  if (v23 != v19 || v22 != v21)
  {
    [v5 setDrawableSize:{v19, v21}];
  }

  v39 = [v5 nextDrawable];
  if (!v39)
  {
LABEL_26:
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v25 = [v13 commandBuffer];
  if (!v25)
  {
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v37 = v25;
  v36 = [v9 signaledValue];
  v26 = [v39 texture];
  v27 = [swift_unknownObjectRetain() width];
  v38 = v26;
  if (v27 != [v26 width] || (v28 = objc_msgSend(v4, "height"), v28 != objc_msgSend(v26, "height")))
  {
    sub_100995550(v12);
    if (v6)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_31:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease_n();
    }

    sub_100994D80(v4, v26, v37);

LABEL_30:
    [v37 encodeSignalEvent:v8 value:v36];
    [v37 presentDrawable:v39];
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v34 = v49;
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = v36;
    v47 = sub_100B509C0;
    v48 = v33;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = *"";
    v45 = sub_1007A5954;
    v46 = &unk_101897280;
    v35 = _Block_copy(&aBlock);

    [v37 addCompletedHandler:v35];
    _Block_release(v35);
    [v37 commit];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  result = [v37 blitCommandEncoder];
  if (result)
  {
    v29 = result;
    sub_10013CE8C([v4 width], objc_msgSend(v4, "height"), objc_msgSend(v4, "depth"), &aBlock);
    v30 = v45;
    v31 = aBlock;
    aBlock = 0uLL;
    v45 = 0;
    v42 = v31;
    v43 = v30;
    memset(v41, 0, sizeof(v41));
    [v29 copyFromTexture:v4 sourceSlice:0 sourceLevel:0 sourceOrigin:&aBlock sourceSize:&v42 toTexture:v38 destinationSlice:0 destinationLevel:0 destinationOrigin:v41];
    [v29 endEncoding];
    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void sub_100B501A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    type metadata accessor for MainActor();
    v12 = v10;
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    v14[5] = a3;
    v14[6] = a4;
    sub_10064191C(0, 0, v8, &unk_101498F70, v14);
  }
}

uint64_t sub_100B50308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B503A4, v8, v7);
}

uint64_t sub_100B503A4()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_100B5041C(v2, v1);
  v3 = v0[1];

  return v3();
}

unint64_t sub_100B5041C(unint64_t result, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData;
  if (*(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData))
  {
    v4 = v2;
    v5 = result;
    v6 = *(v3 + 24);
    v7 = *(v3 + 8);
    *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame) = 1;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8 = v6;
    CurrentValueSubject.send(_:)();
    v9 = v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_signalState;
    v10 = *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_signalState);
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v12 == 1)
    {
      swift_unknownObjectRetain();
      if (v10 == v5)
      {
        if (sub_100B4F390(v7, v11))
        {
          v13 = *v9;
          v14 = *(v9 + 8);
          *v9 = 0;
          *(v9 + 8) = 0;
          v15 = *(v9 + 16);
          *(v9 + 16) = 2;
          sub_100B509A0(v13, v14, v15);
          result = a2 + 1;
          if (a2 == -1)
          {
            __break(1u);
            return result;
          }

          sub_100B5081C(result, v7);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v16 = v5;
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v16 = v10;
      }

      v17 = v11;
      v18 = 1;
    }

    else
    {
      sub_100B50A94(*(v4 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_signalState), *(v4 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_signalState + 8), *(v4 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_signalState + 16));

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v16 = v10;
      v17 = v11;
      v18 = v12;
    }

    return sub_100B509A0(v16, v17, v18);
  }

  return result;
}

uint64_t sub_100B50710(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_100B5073C(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_metalContext];
  v4 = *&v2[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_metalContext];
  *v3 = a1;
  v3[1] = a2;
  sub_100B50AAC(a1);
  sub_100B50AEC(v4);
  v5 = *v3;
  if (*v3)
  {
    swift_unknownObjectRetain();
  }

  [v2 setDevice:v5];
  swift_unknownObjectRelease();
  [v2 setFramebufferOnly:0];
  [v2 setPixelFormat:81];
  v6 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
  [v2 setColorspace:v6];
}

void sub_100B5081C(unint64_t a1, void *a2)
{
  v5 = v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_signalState;
  v6 = *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_signalState + 16);
  if (*(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_signalState + 16))
  {
    if (v6 == 1)
    {
      return;
    }

    goto LABEL_7;
  }

  v7 = *v5;
  v8 = *(v5 + 8);
  swift_unknownObjectRetain();
  v9 = sub_100B4F390(a2, v8);
  sub_100B509A0(v7, v8, 0);
  if ((v9 & 1) == 0 || v7 > a1)
  {
    LOBYTE(v6) = *(v5 + 16);
LABEL_7:
    v10 = *v5;
    v11 = *(v5 + 8);
    *v5 = a1;
    *(v5 + 8) = a2;
    *(v5 + 16) = 0;
    swift_unknownObjectRetain();
    sub_100B509A0(v10, v11, v6);
    v12 = *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_listener);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15[4] = sub_100B509B8;
    v15[5] = v13;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = *"";
    v15[2] = sub_100B4FB6C;
    v15[3] = &unk_101897230;
    v14 = _Block_copy(v15);

    [a2 notifyListener:v12 atValue:a1 block:v14];
    _Block_release(v14);
  }
}

uint64_t sub_100B509A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100B509CC(uint64_t a1)
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

  return sub_100B50308(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100B50A94(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_100B50AAC(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_100B50AEC(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100B50B2C()
{
  v1 = (v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_textureData);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame) = 0;
  v2 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_frameNumber;
  sub_1005B981C(&qword_101A04C10);
  swift_allocObject();
  *(v0 + v2) = CurrentValueSubject.init(_:)();
  v3 = (v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_metalContext);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_signalState;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100B50C20()
{
  if (*(v0 + 56))
  {
LABEL_2:
    v1 = 1;
  }

  else
  {
    result = swift_beginAccess();
    v3 = 0;
    v4 = *(v0 + 64);
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;
    do
    {
      if (!v7)
      {
        while (1)
        {
          v9 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v9 >= v8)
          {
            v1 = 0;
            return v1 & 1;
          }

          v7 = *(v4 + 64 + 8 * v9);
          ++v3;
          if (v7)
          {
            v3 = v9;
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v9 = v3;
LABEL_12:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(v4 + 56) + 40 * (v10 | (v9 << 6));
    }

    while ((*(v11 + 8) & 0x8000000000000000) == 0);
    if (*(v11 + 24))
    {
      goto LABEL_2;
    }

    v12 = *(v11 + 16);

    sub_1009F5EE8(v12, 0);
    type metadata accessor for CKError(0);
    sub_100877178();
    _BridgedStoredNSError.code.getter();

    sub_1009F5E04(v12, 0);
    v1 = (v13 > 0x24) | (0xFFF5FFD27uLL >> v13);
  }

  return v1 & 1;
}

void *sub_100B50D88()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  if (*(*(v0 + 64) + 16))
  {
    if (v2 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      v24 = i;
      v25 = v1;
      while (1)
      {
        if (v5)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_29;
          }

          v7 = *(v2 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v10 = *(v1 + 64);
        if (*(v10 + 16))
        {

          v11 = sub_1007C8B7C(v8);
          if (v12)
          {
            v13 = (*(v10 + 56) + 40 * v11);
            v14 = *v13;
            v15 = v13[1];
            v17 = v13[2];
            v16 = v13[3];
            v18 = v13[4];
            sub_1009F5E18(*v13, v15, v17, v16, v18);

            if ((v15 >> 62) < 2)
            {
              goto LABEL_17;
            }

            if (v16)
            {
              if (v16 == 1)
              {
LABEL_17:

                v19 = v14;
                v20 = v15;
                v21 = v17;
              }

              else
              {

                v19 = v14;
                v20 = v15;
                v21 = v17 != 0;
              }

              sub_1009F5D34(v19, v20, v21, v16, v18);
LABEL_19:
              i = v24;
              v1 = v25;
              v6 = v2 & 0xFFFFFFFFFFFFFF8;
              v5 = v2 & 0xC000000000000001;
              goto LABEL_7;
            }

            type metadata accessor for CKError(0);
            sub_100877178();
            v22 = v17;
            _BridgedStoredNSError.code.getter();
            sub_1009F5D34(v14, v15, v17, v16, v18);
            sub_1009F5E04(v17, 0);
            if (v26 > 0x24 || ((1 << v26) & 0x1000A002D8) == 0)
            {

              goto LABEL_19;
            }

            i = v24;
            v1 = v25;
            v6 = v2 & 0xFFFFFFFFFFFFFF8;
            v5 = v2 & 0xC000000000000001;
          }

          else
          {
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_7:
        ++v4;
        if (v9 == i)
        {
          return _swiftEmptyArrayStorage;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
  }

  return v2;
}

uint64_t sub_100B51038(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 24);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = sub_1007C8B7C(a1);
  if (v5)
  {
    v6 = *(*(v2 + 56) + 16 * v4);
    swift_unknownObjectRetain();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_100B510C0()
{
  v1 = v0;
  v2 = sub_100B50D88();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v6 = *(v1 + 16);
    v7 = v3 & 0xC000000000000001;
    v43 = v3 & 0xFFFFFFFFFFFFFF8;
    v41 = v6;
    v42 = v3;
    v40 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v43 + 16))
        {
          goto LABEL_27;
        }

        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v11 = *(v6 + 24);
      if (!*(v11 + 16))
      {
        goto LABEL_5;
      }

      v12 = sub_1007C8B7C(v9);
      if ((v13 & 1) == 0)
      {

LABEL_5:

        goto LABEL_6;
      }

      v3 = i;
      v14 = (*(v11 + 56) + 16 * v12);
      v16 = *v14;
      v15 = v14[1];
      swift_unknownObjectRetain();

      swift_beginAccess();
      swift_unknownObjectRetain();
      v17 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v1 + 64);
      v20 = v1;
      *(v1 + 64) = 0x8000000000000000;
      v21 = sub_1007C8B7C(v17);
      v23 = v19[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_28;
      }

      v1 = v22;
      if (v19[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = v21;
          sub_100AAA428();
          v21 = v38;
        }
      }

      else
      {
        sub_100A939F4(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_1007C8B7C(v17);
        if ((v1 & 1) != (v27 & 1))
        {
          sub_100B51450();
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v28 = v15 | 0x8000000000000000;
      if (v1)
      {
        v29 = (v19[7] + 40 * v21);
        v30 = *v29;
        v31 = v29[1];
        v32 = v29[2];
        v33 = v29[3];
        v34 = v29[4];
        *v29 = v16;
        v29[1] = v28;
        *(v29 + 1) = xmmword_10146C6B0;
        v29[4] = 0;
        sub_1009F5D34(v30, v31, v32, v33, v34);
      }

      else
      {
        v19[(v21 >> 6) + 8] |= 1 << v21;
        *(v19[6] + 8 * v21) = v17;
        v35 = v19[7] + 40 * v21;
        *v35 = v16;
        *(v35 + 8) = v28;
        *(v35 + 16) = xmmword_10146C6B0;
        *(v35 + 32) = 0;
        v36 = v19[2];
        v25 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v25)
        {
          goto LABEL_29;
        }

        v19[2] = v37;
      }

      v1 = v20;
      *(v20 + 64) = v19;
      swift_endAccess();

      swift_unknownObjectRelease();
      i = v3;
      v6 = v41;
      v3 = v42;
      v7 = v40;
LABEL_6:
      ++v5;
      if (v10 == i)
      {
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }
}

uint64_t sub_100B513CC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100B51450()
{
  result = qword_1019F6E98;
  if (!qword_1019F6E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F6E98);
  }

  return result;
}

uint64_t sub_100B5149C(uint64_t a1, void *a2, char a3, char a4)
{
  LOBYTE(v5) = a4;
  *(v4 + 56) = 0;
  v4[6] = _swiftEmptyDictionarySingleton;
  v4[8] = _swiftEmptyDictionarySingleton;
  v4[9] = 0;
  *(v4 + 80) = 0;
  v4[2] = a2;
  *(v4 + 24) = a3;
  v39 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_37:
    v30 = a1;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v30;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v32 = v5;
      v37 = a1 & 0xC000000000000001;
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
      v7 = a1;

      v8 = v7;
      v9 = 0;
      v10 = _swiftEmptyDictionarySingleton;
      v35 = v6;
      v36 = v7;
      while (1)
      {
        if (v37)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v34 + 16))
          {
            goto LABEL_36;
          }

          a1 = *(v8 + 8 * v9 + 32);
        }

        v13 = a1;
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v15 = [a1 recordID];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v4 = &v39;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v39;
        if ((v10 & 0xC000000000000001) != 0)
        {
          if (v10 < 0)
          {
            v17 = v10;
          }

          else
          {
            v17 = v10 & 0xFFFFFFFFFFFFFF8;
          }

          v18 = v13;
          a1 = __CocoaDictionary.count.getter();
          if (__OFADD__(a1, 1))
          {
            goto LABEL_34;
          }

          v10 = sub_100E8DDD0(v17, a1 + 1);
        }

        else
        {
          v19 = v13;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v10;
        v4 = v10;
        v5 = sub_1007C8B7C(v15);
        v22 = *(v10 + 16);
        v23 = (v21 & 1) == 0;
        a1 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_33;
        }

        v24 = v21;
        if (*(v10 + 24) >= a1)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v10 = v38;
            if (v21)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v4 = &v38;
            sub_100AAA5E0();
            v10 = v38;
            if (v24)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_100A93CA4(a1, isUniquelyReferenced_nonNull_native);
          v4 = v38;
          v25 = sub_1007C8B7C(v15);
          if ((v24 & 1) != (v26 & 1))
          {
            sub_100B51450();
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v5 = v25;
          v10 = v38;
          if (v24)
          {
LABEL_4:
            v11 = *(v10 + 56);
            v12 = *(v11 + 8 * v5);
            *(v11 + 8 * v5) = v13;

            goto LABEL_5;
          }
        }

        *(v10 + 8 * (v5 >> 6) + 64) |= 1 << v5;
        *(*(v10 + 48) + 8 * v5) = v15;
        *(*(v10 + 56) + 8 * v5) = v13;

        v27 = *(v10 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_35;
        }

        *(v10 + 16) = v29;
LABEL_5:
        ++v9;
        v8 = v36;
        if (v14 == v35)
        {
          v4 = v33;
          LOBYTE(v5) = v32;
          goto LABEL_39;
        }
      }
    }
  }

  v10 = _swiftEmptyDictionarySingleton;
  v16 = _swiftEmptyArrayStorage;
LABEL_39:
  *(v4 + 25) = v5 & 1;
  v4[4] = v16;
  v4[5] = v10;
  return v4;
}

id sub_100B51934()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSelectionAwareAlertController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100B5198C(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC8Freeform11CRLLinkView_viewScale] = 0x3FF0000000000000;
  v5 = sub_100B5264C(a1);
  *&v2[OBJC_IVAR____TtC8Freeform11CRLLinkView_wrappedLinkView] = v5;
  swift_unknownObjectWeakAssign();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for CRLLinkView();
  v6 = v5;
  v7 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v7 addSubview:{v6, v9.receiver, v9.super_class}];

  return v7;
}

void sub_100B51C0C(double a1, double a2, double a3, double a4)
{
  v15.receiver = v4;
  v15.super_class = type metadata accessor for CRLLinkView();
  objc_msgSendSuper2(&v15, "setFrame:", a1, a2, a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = objc_opt_self();
    [v11 begin];
    [v11 setDisableActions:1];
    v12 = *&v4[OBJC_IVAR____TtC8Freeform11CRLLinkView_wrappedLinkView];
    v13 = [v10 layout];
    v14 = [v13 geometry];

    [v14 size];
    [v12 setFrame:sub_10011ECB4()];
    sub_100B51E70();
    [v11 commit];
  }
}

void sub_100B51E70()
{
  [v0 bounds];
  if (CGRectGetWidth(v48) > 0.0)
  {
    [v0 bounds];
    if (CGRectGetHeight(v49) >= 0.0)
    {
      v1 = [v0 layer];
      if (v1)
      {
        v41 = v1;
        v2 = [v1 sublayers];
        if (v2)
        {
          v3 = v2;
          sub_100006370(0, &qword_1019FFFF0);
          v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v6 = Strong;
            v7 = [Strong layout];

            v8 = [v7 geometryInRoot];
            if (v8)
            {
              v9 = objc_opt_self();
              [v9 begin];
              [v9 setDisableActions:1];
              CATransform3DMakeScale(&v46, *&v0[OBJC_IVAR____TtC8Freeform11CRLLinkView_viewScale], *&v0[OBJC_IVAR____TtC8Freeform11CRLLinkView_viewScale], 1.0);
              if (v4 >> 62)
              {
                if (_CocoaArrayWrapper.endIndex.getter())
                {
                  goto LABEL_9;
                }
              }

              else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_9:
                if ((v4 & 0xC000000000000001) != 0)
                {
                  v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    return;
                  }

                  v10 = *(v4 + 32);
                }

                v11 = v10;

                [v11 setAnchorPoint:{0.5, 0.5}];

                goto LABEL_22;
              }

LABEL_22:
              [v0 bounds];
              v35 = CGRectGetWidth(v50) * 0.5;
              v36 = *&v0[OBJC_IVAR____TtC8Freeform11CRLLinkView_wrappedLinkView];
              [v36 frame];
              v37 = v35 - CGRectGetWidth(v51) * 0.5;
              [v0 bounds];
              v38 = CGRectGetHeight(v52) * 0.5;
              [v36 frame];
              Height = CGRectGetHeight(v53);
              CATransform3DMakeTranslation(&v45, v37, v38 - Height * 0.5, 0.0);
              [v8 transform];
              v40 = sub_1001399C0(&a.m11);
              CATransform3DMakeRotation(&b, v40, 0.0, 0.0, 1.0);
              a = v46;
              CATransform3DConcat(&v42, &a, &b);
              a = v45;
              CATransform3DConcat(&b, &a, &v42);
              [v41 setSublayerTransform:&b];
              [v9 commit];

              return;
            }
          }
        }
      }

      else
      {
        v12 = objc_opt_self();
        v13 = [v12 _atomicIncrementAssertCount];
        *&v46.m11 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v46);
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
        *(inited + 152) = 176;
        m11 = v46.m11;
        *(inited + 216) = v22;
        *(inited + 224) = v23;
        *(inited + 192) = m11;
        v26 = v14;
        v27 = *&m11;
        v28 = static os_log_type_t.error.getter();
        sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v29 = static os_log_type_t.error.getter();
        sub_100005404(v20, &_mh_execute_header, v29, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

        [v12 handleFailureInFunction:v32 file:v33 lineNumber:176 isFatal:0 format:v34 args:v31];
      }
    }
  }
}

id sub_100B525A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLLinkView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100B5264C(uint64_t a1)
{
  v1 = [objc_allocWithZone(LPLinkView) initWithMetadata:a1];
  [v1 _setDisableLinkFollowing:1];
  [v1 _setDisableTapGesture:1];
  [v1 _setDisableAnimations:1];
  [v1 _setDisablePlayback:1];
  [v1 _setDisableAutoPlay:1];
  [v1 _setDisablePreviewGesture:1];
  [v1 _setDisableHighlightGesture:1];
  [v1 _setDisablePlaybackControls:1];
  [v1 _setPreferredSizeClass:3];
  v2 = [objc_allocWithZone(LPLinkRendererSizeClassParameters) init];
  [v2 setNeverShowIcon:1];
  [v1 _setSizeClassParameters:v2];
  v3 = v1;
  [v3 setUserInteractionEnabled:0];
  [v3 setOverrideUserInterfaceStyle:1];

  return v3;
}

BOOL sub_100B527B4(uint64_t a1, double a2, double a3)
{
  v7 = [v3 subviews];
  sub_100B52CA0();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_18:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 & 0xC000000000000001;
  v12 = v8 + 32;
  v8 = &selRef_p_writingDirectionForCharAtIndex_;
  do
  {
    v13 = v10;
    v15 = __OFSUB__(v10, 1);
    if (v10-- == 0)
    {
      break;
    }

    if (v15)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v11)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v10 >= *(v9 + 16))
      {
        goto LABEL_17;
      }

      v16 = *(v12 + 8 * v10);
    }

    v17 = v16;
    [v16 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v18 = [v17 pointInside:a1 withEvent:?];
  }

  while (!v18);

  return v13 != 0;
}

id sub_100B5297C(uint64_t a1, double a2, double a3)
{
  v7 = [v3 subviews];
  sub_100B52CA0();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_18:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 & 0xC000000000000001;
  v12 = v8 + 32;
  v8 = &selRef_geometryWithMask;
  while (v10)
  {
    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v11)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v10 >= *(v9 + 16))
      {
        goto LABEL_17;
      }

      v14 = *(v12 + 8 * v10);
    }

    v15 = v14;
    [v14 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v16 = [v15 hitTest:a1 withEvent:?];

    if (v16)
    {

      return v16;
    }
  }

  return 0;
}

id sub_100B52C48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTouchTransparentUIView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100B52CA0()
{
  result = qword_1019F6D00;
  if (!qword_1019F6D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F6D00);
  }

  return result;
}

uint64_t sub_100B52CEC(char a1)
{
  *(v2 + 104) = v1;
  *(v2 + 120) = a1;
  type metadata accessor for MainActor();
  *(v2 + 112) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B52D88, v4, v3);
}

uint64_t sub_100B52D88()
{
  v1 = *(v0 + 120);

  if (v1 == 1)
  {
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    GroupSession.activity.getter();
    v4 = *(v0 + 88);

    *(v0 + 96) = v4;
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v5;
    *(inited + 40) = v7;
    v8 = static os_log_type_t.default.getter();
    sub_100005404(v2, &_mh_execute_header, v8, "leaveSession() call groupSession.end() on %@", 44, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    GroupSession.end()();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100B52F10()
{

  v1 = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_localParticipantUUID, v2);

  sub_10000CAAC(v0 + qword_101A218A0, &unk_101A08DE0);
  sub_10000CAAC(v0 + *(*v0 + 280), &qword_101A125E0);

  return swift_deallocClassInstance();
}

uint64_t sub_100B5305C(void *a1)
{
  v3 = [v1 supportedMediaTypes];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = [a1 pathExtension];
      if (v5)
      {
        v6 = v5;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        v10 = sub_100B53564();
        v13[0] = v7;
        v13[1] = v9;
        __chkstk_darwin(v10);
        v12[2] = v13;
        LOBYTE(v7) = sub_100C08644(sub_1008335B4, v12, v10);

        v4 = v7 ^ 1;
        return v4 & 1;
      }

LABEL_3:
      v4 = 0;
      return v4 & 1;
    }

    if (v3 == 4)
    {
      v4 = 1;
      return v4 & 1;
    }

    goto LABEL_14;
  }

  if (v3 < 2)
  {
    goto LABEL_3;
  }

  if (v3 != 2)
  {
LABEL_14:
    type metadata accessor for CRLMediaReplacingSupportedMediaTypes(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  return sub_100B538F4(a1);
}

uint64_t sub_100B531D4@<X0>(uint64_t a1@<X8>)
{
  if ([v1 supportedMediaTypes])
  {
    v3 = 1;
  }

  else
  {
    static PHPickerFilter.images.getter();
    v3 = 0;
  }

  v4 = type metadata accessor for PHPickerFilter();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

void *sub_100B53268()
{
  sub_1005B981C(&qword_101A054A0);
  v1 = *(type metadata accessor for UTType() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10146C4D0;
  static UTType.realityFile.getter();
  static UTType.usd.getter();
  static UTType.usdz.getter();
  v4 = [v0 supportedMediaTypes];
  if (v4 <= 1)
  {
    goto LABEL_7;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {

        v11 = [objc_opt_self() supportedFileUTTypes];
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        return v12;
      }

      goto LABEL_16;
    }

    v5 = [objc_opt_self() supportedFileUTTypes];
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_100E94CC4(v6);

    v16 = v7;
    v8 = sub_100E94CC4(v3);

    sub_1012D57EC(v8);

    v9 = *(v16 + 16);
    if (!v9)
    {

      return _swiftEmptyArrayStorage;
    }

    v3 = sub_100B3A05C(*(v16 + 16), 0);
    v10 = sub_100B3BDC8(&v15, (v3 + v2), v9, v16);
    v4 = sub_100035F90();
    if (v10 != v9)
    {
      __break(1u);
LABEL_7:
      if (!v4)
      {

        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_10146C6B0;
        static UTType.image.getter();
        return v3;
      }

      if (v4 == 1)
      {

        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_10146C4D0;
        static UTType.image.getter();
        static UTType.movie.getter();
        static UTType.audio.getter();
        return v3;
      }

LABEL_16:
      v14 = v4;
      type metadata accessor for CRLMediaReplacingSupportedMediaTypes(0);
      v15 = v14;
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }
  }

  return v3;
}

_UNKNOWN **sub_100B53564()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  v2 = v1;
  __chkstk_darwin(v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A054A0);
  v5 = *(v1 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146C4D0;
  v8 = v7 + v6;
  static UTType.realityFile.getter();
  static UTType.usd.getter();
  v33 = 2 * v5;
  static UTType.usdz.getter();
  v9 = *(v2 + 16);
  v9(v4, v7 + v6, v0);
  v10 = UTType.preferredFilenameExtension.getter();
  v12 = v11;
  v35 = *(v2 + 8);
  v35(v4, v0);
  v34 = v9;
  if (v12)
  {
    v31 = v10;
    v32 = v7;
    v13 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_100024CBC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_100024CBC((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[16 * v15];
    *(v16 + 4) = v31;
    *(v16 + 5) = v12;
    v9 = v34;
    v34(v4, v8 + v5, v0);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
    v9(v4, v8 + v5, v0);
  }

  v17 = UTType.preferredFilenameExtension.getter();
  v19 = v18;
  v35(v4, v0);
  if (v19)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_100024CBC(0, *(v13 + 2) + 1, 1, v13);
    }

    v22 = *(v13 + 2);
    v21 = *(v13 + 3);
    if (v22 >= v21 >> 1)
    {
      v13 = sub_100024CBC((v21 > 1), v22 + 1, 1, v13);
    }

    *(v13 + 2) = v22 + 1;
    v23 = &v13[16 * v22];
    *(v23 + 4) = v32;
    *(v23 + 5) = v19;
    v9 = v34;
  }

  v9(v4, v8 + v33, v0);
  v24 = UTType.preferredFilenameExtension.getter();
  v26 = v25;
  v35(v4, v0);
  if (v26)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_100024CBC(0, *(v13 + 2) + 1, 1, v13);
    }

    v28 = *(v13 + 2);
    v27 = *(v13 + 3);
    if (v28 >= v27 >> 1)
    {
      v13 = sub_100024CBC((v27 > 1), v28 + 1, 1, v13);
    }

    *(v13 + 2) = v28 + 1;
    v29 = &v13[16 * v28];
    *(v29 + 4) = v24;
    *(v29 + 5) = v26;
  }

  v36 = &off_101875280;
  sub_100798D48(v13);
  return v36;
}

uint64_t sub_100B538F4(void *a1)
{
  v2 = [a1 pathExtension];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (![a1 _IF_isDirectory] || (v4 == 7368801 ? (v7 = v6 == 0xE300000000000000) : (v7 = 0), v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v8 = sub_100B53564();
      v12[0] = v4;
      v12[1] = v6;
      __chkstk_darwin(v8);
      v11[2] = v12;
      v9 = sub_100C08644(sub_100B53A30, v11, v8);
    }

    else
    {

      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t _s15FilterViewModelVMa()
{
  result = qword_101A12640;
  if (!qword_101A12640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100B53AC0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100ABE298();
    if (v1 <= 0x3F)
    {
      sub_1007152FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100B53B64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(_s13ItemViewModelVMa() + 44));

  return sub_10079F7E8(a2, v3);
}

uint64_t sub_100B53BAC()
{
  sub_1005B981C(&qword_101A11D18);
  v0 = (_s15FilterViewModelVMa() - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = 2 * v1;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10146C4D0;
  v4 = v37 + v2;
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  UUID.init()();
  v13 = (v4 + v0[7]);
  *v13 = v10;
  v13[1] = v12;
  *(v4 + v0[8]) = xmmword_101499090;
  v14 = (v4 + v0[9]);
  *v14 = CRLWPShapeLayout.columnsAreLeftToRight.getter;
  v14[1] = 0;
  v15 = v4 + v1;
  v16 = [v5 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  UUID.init()();
  v23 = (v15 + v0[7]);
  *v23 = v20;
  v23[1] = v22;
  *(v15 + v0[8]) = xmmword_1014990A0;
  v24 = (v15 + v0[9]);
  *v24 = CRLWPShapeLayout.columnsAreLeftToRight.getter;
  v24[1] = 0;
  v25 = v4 + v3;
  v26 = [v5 mainBundle];
  v27 = String._bridgeToObjectiveC()();
  v28 = String._bridgeToObjectiveC()();
  v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  result = UUID.init()();
  v34 = (v25 + v0[7]);
  *v34 = v30;
  v34[1] = v32;
  v35 = (v25 + v0[8]);
  *v35 = 0xD000000000000011;
  v35[1] = 0x800000010158C1E0;
  v36 = (v25 + v0[9]);
  *v36 = sub_100B53F34;
  v36[1] = 0;
  qword_101AD7548 = v37;
  return result;
}

uint64_t sub_100B53F64@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_100B53FCC(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100B54314(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  if (*(v1 + *(a1 + 24) + 8))
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

void sub_100B540B4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_100B54314(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  if (*(v2 + *(a2 + 24) + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100B5419C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100B54314(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  if (*(v2 + *(a2 + 24) + 8))
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

uint64_t sub_100B54314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100B5435C(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = _s15FilterViewModelVMa();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  result = (v12 | v14) == 0;
  if (v12)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    if (*v11 == *v13 && v12 == v14)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100B54438()
{
  v0 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for UUID();
  sub_10061655C(v3, qword_101A12688);
  v4 = sub_1005EB3DC(v3, qword_101A12688);
  UUID.init(uuidString:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100B54568@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v12[1] = a1;
  v12[2] = a2;
  v2 = type metadata accessor for SHA256Digest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA256();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100060E30(&qword_1019F4570, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  v12[3] = UUID.uuid.getter();
  v12[4] = v10;
  dispatch thunk of HashFunction.update(bufferPointer:)();
  dispatch thunk of HashFunction.update(bufferPointer:)();
  dispatch thunk of HashFunction.finalize()();
  sub_100B54834();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100B547A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_1019F1D68 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for UUID();
  sub_1005EB3DC(v4, qword_101A12688);
  return sub_100B54568(a1, a2);
}

uint64_t sub_100B54834()
{
  type metadata accessor for SHA256Digest();
  sub_100060E30(&qword_101A126A0, &type metadata accessor for SHA256Digest);
  sub_1005B981C(&qword_101A126A8);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  return UUID.init(uuid:)();
}

uint64_t sub_100B5493C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x636142656E656373;
  v5 = 0xEF646E756F72676BLL;
  if (a1 != 6)
  {
    v4 = 0x726568746FLL;
    v5 = 0xE500000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x74657365524449;
  if (a1 != 4)
  {
    v7 = 0x6873617263;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x6975516563726F66;
  v9 = 0xE900000000000074;
  if (a1 != 2)
  {
    v8 = 1953068401;
    v9 = 0xE400000000000000;
  }

  v10 = 0x676B636142707061;
  if (a1)
  {
    v3 = 0xED0000646E756F72;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEF646E756F72676BLL;
        if (v11 != 0x636142656E656373)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x726568746FLL)
        {
LABEL_45:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x74657365524449)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6873617263)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE900000000000074;
      if (v11 != 0x6975516563726F66)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1953068401)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xED0000646E756F72;
    if (v11 != 0x676B636142707061)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_100B54BCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006174;
  v3 = 0x61447463656A626FLL;
  v4 = a1;
  v5 = 0xEB00000000617461;
  v6 = 0x8000000101551690;
  v7 = 0xD000000000000019;
  if (a1 == 4)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v6 = 0x80000001015516B0;
  }

  if (a1 == 3)
  {
    v7 = 0x44656C7573706163;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0x52436E6F6D6D6F63;
  v9 = 0xEE00617461445444;
  if (a1 != 1)
  {
    v8 = 0xD000000000000010;
    v9 = 0x8000000101551670;
  }

  if (!a1)
  {
    v8 = 0x61447463656A626FLL;
    v9 = 0xEA00000000006174;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEB00000000617461;
      if (v10 != 0x44656C7573706163)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x8000000101551690;
      if (v10 != 0xD000000000000017)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v2 = 0x80000001015516B0;
      if (v10 != 0xD000000000000019)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE00617461445444;
        if (v10 != 0x52436E6F6D6D6F63)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v3 = 0xD000000000000010;
      v2 = 0x8000000101551670;
    }

    if (v10 != v3)
    {
LABEL_33:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_34;
    }
  }

LABEL_30:
  if (v11 != v2)
  {
    goto LABEL_33;
  }

  v12 = 1;
LABEL_34:

  return v12 & 1;
}

uint64_t sub_100B54DD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0x6F4274726F706D69;
    if (a1 != 2)
    {
      v11 = 0x6F4274726F707865;
    }

    v12 = 0x64616F6C6E776F64;
    if (a1)
    {
      v10 = 0xEE00737574617453;
    }

    else
    {
      v12 = 0x44496472616F62;
    }

    if (a1 <= 1u)
    {
      v8 = v12;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = 0xEB00000000647261;
    }
  }

  else
  {
    v3 = 0x8000000101551F20;
    v4 = 0x64616F6C6E776F64;
    v5 = 0xED00006472616F42;
    if (a1 != 7)
    {
      v4 = 0x616F427465736572;
      v5 = 0xEA00000000006472;
    }

    if (a1 == 6)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = v5;
    }

    v6 = 0xD000000000000011;
    if (a1 == 4)
    {
      v6 = 0x616F426572616873;
      v7 = 0xEA00000000006472;
    }

    else
    {
      v7 = 0x8000000101551F00;
    }

    if (a1 <= 5u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0x6F4274726F706D69;
      }

      else
      {
        v14 = 0x6F4274726F707865;
      }

      v13 = 0xEB00000000647261;
      if (v8 != v14)
      {
        goto LABEL_54;
      }
    }

    else if (a2)
    {
      v13 = 0xEE00737574617453;
      if (v8 != 0x64616F6C6E776F64)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v8 != 0x44496472616F62)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_52;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v13 = 0x8000000101551F20;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    if (a2 == 7)
    {
      v13 = 0xED00006472616F42;
      if (v8 != 0x64616F6C6E776F64)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v15 = 0x427465736572;
LABEL_49:
    v13 = 0xEA00000000006472;
    if (v8 != (v15 & 0xFFFFFFFFFFFFLL | 0x616F000000000000))
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (a2 == 4)
  {
    v15 = 0x426572616873;
    goto LABEL_49;
  }

  v13 = 0x8000000101551F00;
  if (v8 != 0xD000000000000011)
  {
LABEL_54:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_55;
  }

LABEL_52:
  if (v9 != v13)
  {
    goto LABEL_54;
  }

  v16 = 1;
LABEL_55:

  return v16 & 1;
}

uint64_t sub_100B550D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x657261757173;
  v5 = 0xE400000000000000;
  v6 = 1918989427;
  if (a1 != 4)
  {
    v6 = 0x656C676E61697274;
    v5 = 0xE800000000000000;
  }

  if (a1 == 3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xE400000000000000;
  v8 = 1701734764;
  if (a1 != 1)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000101551A80;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656C63726963;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x657261757173)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1918989427)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x656C676E61697274)
      {
LABEL_35:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1701734764)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0x8000000101551A80;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    if (v9 != 0x656C63726963)
    {
      goto LABEL_35;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_35;
  }

  v12 = 1;
LABEL_36:

  return v12 & 1;
}

uint64_t sub_100B55288(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1684828002;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E696C7265646E75;
    }

    else
    {
      v4 = 0x6874656B69727473;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xED00006867756F72;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x63696C617469;
    }

    else
    {
      v4 = 1684828002;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x6E696C7265646E75;
  v8 = 0xE900000000000065;
  if (a2 != 2)
  {
    v7 = 0x6874656B69727473;
    v8 = 0xED00006867756F72;
  }

  if (a2)
  {
    v2 = 0x63696C617469;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100B553DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006DLL;
  v3 = 0x6574496472616F42;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x8000000101552390;
    v12 = 0xD00000000000001CLL;
    if (a1 != 6)
    {
      v12 = 0x74696B64756F6C63;
      v11 = 0xEE0065726168732ELL;
    }

    v13 = 0x425F63696C627550;
    v14 = 0xEC0000006472616FLL;
    if (a1 != 4)
    {
      v13 = 0xD000000000000010;
      v14 = 0x8000000101552370;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x74654D6472616F42;
    v6 = 0xED00006174616461;
    if (a1 != 2)
    {
      v5 = 0xD000000000000015;
      v6 = 0x8000000101552340;
    }

    v7 = 0xE500000000000000;
    v8 = 0x6472616F42;
    if (!a1)
    {
      v8 = 0x6574496472616F42;
      v7 = 0xE90000000000006DLL;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x8000000101552390;
        if (v9 != 0xD00000000000001CLL)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0xEE0065726168732ELL;
        if (v9 != 0x74696B64756F6C63)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC0000006472616FLL;
      if (v9 != 0x425F63696C627550)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v2 = 0x8000000101552370;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xED00006174616461;
        if (v9 != 0x74654D6472616F42)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v2 = 0x8000000101552340;
      v3 = 0xD000000000000015;
    }

    else if (a2)
    {
      v2 = 0xE500000000000000;
      if (v9 != 0x6472616F42)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v9 != v3)
    {
LABEL_44:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v10 != v2)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_100B556AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007468676972;
  v3 = 0x5F6F745F7466656CLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6C61727574616ELL;
    }

    else
    {
      v5 = 0x6F745F7468676972;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xED00007466656C5FLL;
    }

    v7 = a2;
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v5 = 0x5F6F745F7466656CLL;
  v6 = 0xED00007468676972;
  v7 = a2;
  if (a2)
  {
LABEL_9:
    if (v7 == 1)
    {
      v3 = 0x6C61727574616ELL;
    }

    else
    {
      v3 = 0x6F745F7468676972;
    }

    if (v7 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xED00007466656C5FLL;
    }
  }

LABEL_15:
  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100B557D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x6174735F7473696CLL;
    v13 = 0xEA00000000006C65;
    if (a1 == 2)
    {
      v13 = 0xEA00000000007472;
    }

    else
    {
      v12 = 0x76656C5F7473696CLL;
    }

    v14 = 0x7974735F7473696CLL;
    if (a1)
    {
      v11 = 0xEA0000000000656CLL;
    }

    else
    {
      v14 = 0x656C797473;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x79745F6B61657262;
    v4 = 0xEA00000000006570;
    v5 = 0x6564695F65707974;
    v6 = 0xEF7265696669746ELL;
    if (a1 != 7)
    {
      v5 = 0x6E6F6973726576;
      v6 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xD000000000000011;
    v8 = 0x80000001015525A0;
    if (a1 != 4)
    {
      v7 = 1936618866;
      v8 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xEA00000000007472;
        if (v9 != 0x6174735F7473696CLL)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v15 = 0xEA00000000006C65;
        if (v9 != 0x76656C5F7473696CLL)
        {
          goto LABEL_53;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xEA0000000000656CLL;
      if (v9 != 0x7974735F7473696CLL)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x656C797473)
      {
        goto LABEL_53;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0x80000001015525A0;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1936618866)
      {
LABEL_53:
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_54;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xEA00000000006570;
    if (v9 != 0x79745F6B61657262)
    {
      goto LABEL_53;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEF7265696669746ELL;
    if (v9 != 0x6564695F65707974)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
    if (v9 != 0x6E6F6973726576)
    {
      goto LABEL_53;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_53;
  }

  v16 = 1;
LABEL_54:

  return v16 & 1;
}

uint64_t sub_100B55AD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1701736302;
    }

    else
    {
      v4 = 0x6E6D756C6F63;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6369706F746E6F6ELL;
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 3)
    {
      v4 = 1701273968;
    }

    else
    {
      v4 = 1634886000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1701736302;
    }

    else
    {
      v8 = 0x6E6D756C6F63;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 1701273968;
    if (a2 != 3)
    {
      v5 = 1634886000;
    }

    if (a2 == 2)
    {
      v6 = 0x6369706F746E6F6ELL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_100B55C24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006465646F636ELL;
  v3 = 0x655F343665736162;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6564695F65707974;
    }

    else
    {
      v5 = 0x6E6F6973726576;
    }

    if (v4 == 2)
    {
      v6 = 0xEF7265696669746ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7463657269646E69;
    }

    else
    {
      v5 = 0x655F343665736162;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEE006465646F636ELL;
    }
  }

  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x7463657269646E69;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100B55D88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6564695F65707974;
    }

    else
    {
      v5 = 0x6E6F6973726576;
    }

    if (v4 == 2)
    {
      v6 = 0xEF7265696669746ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x656D616E656C6966;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x656D616E656C6966;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100B55EE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E69727473;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE800000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x656D616E656C6966;
    }

    else
    {
      v6 = 0x676E69727473;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x656D616E656C6966;
    v8 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B56038(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6564695F65707974;
    }

    else
    {
      v3 = 0x6E6F6973726576;
    }

    if (v2 == 2)
    {
      v4 = 0xEF7265696669746ELL;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 121;
    }

    else
    {
      v3 = 120;
    }

    v4 = 0xE100000000000000;
  }

  v5 = 120;
  v6 = 0x6564695F65707974;
  v7 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v6 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 121;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE100000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100B56174(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x6564695F65707974;
    v10 = 0xEF7265696669746ELL;
    if (a1 != 6)
    {
      v9 = 0x6E6F6973726576;
      v10 = 0xE700000000000000;
    }

    v11 = 0x61765F6874646977;
    v12 = 0xEB0000000064696CLL;
    if (a1 != 4)
    {
      v11 = 0x765F746867696568;
      v12 = 0xEC00000064696C61;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE500000000000000;
    v5 = 0x656C676E61;
    if (a1 != 2)
    {
      v5 = 0xD000000000000011;
      v4 = 0x8000000101551B20;
    }

    v6 = 1702521203;
    if (a1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v6 = 0x6E6F697469736F70;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEF7265696669746ELL;
        if (v7 != 0x6564695F65707974)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x6E6F6973726576)
        {
LABEL_47:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEB0000000064696CLL;
      if (v7 != 0x61765F6874646977)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEC00000064696C61;
      if (v7 != 0x765F746867696568)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x656C676E61)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x8000000101551B20;
      if (v7 != 0xD000000000000011)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE400000000000000;
    if (v7 != 1702521203)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x6E6F697469736F70)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_100B56414(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E69727473;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE500000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x656C797473;
    }

    else
    {
      v6 = 0x676E69727473;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x656C797473;
    v8 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B56560(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656D617266;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0xE400000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 1701734764;
    }

    else
    {
      v6 = 0x656D617266;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 1701734764;
    v8 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B566A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701667182;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6564695F65707974;
    }

    else
    {
      v4 = 0x6E6F6973726576;
    }

    if (v3 == 2)
    {
      v5 = 0xEF7265696669746ELL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65705F656C616373;
    }

    else
    {
      v4 = 1701667182;
    }

    if (v3)
    {
      v5 = 0xED0000746E656372;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x65705F656C616373;
    v6 = 0xED0000746E656372;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100B56810(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x6874646977;
    }

    else
    {
      v2 = 0x726F6C6F63;
    }

    v3 = 0xE500000000000000;
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 0xE700000000000000;
      v4 = 0x726574746170;
    }

    else
    {
      if (a1 == 3)
      {
        v2 = 0x6564695F65707974;
        v3 = 0xEF7265696669746ELL;
        goto LABEL_12;
      }

      v3 = 0xE700000000000000;
      v4 = 0x6F6973726576;
    }

    v2 = v4 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
  }

LABEL_12:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6874646977;
    }

    else
    {
      v9 = 0x726F6C6F63;
    }

    v8 = 0xE500000000000000;
    if (v2 != v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v5 = 0x6564695F65707974;
    v6 = 0xEF7265696669746ELL;
    if (a2 != 3)
    {
      v5 = 0x6E6F6973726576;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6E726574746170;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v2 != v7)
    {
      goto LABEL_29;
    }
  }

  if (v3 != v8)
  {
LABEL_29:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_30;
  }

  v10 = 1;
LABEL_30:

  return v10 & 1;
}

uint64_t sub_100B569A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000776F646168;
  v3 = 0x53746361746E6F63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6853646576727563;
    }

    else
    {
      v5 = 0x53746361746E6F63;
    }

    if (v4)
    {
      v6 = 0xEC000000776F6461;
    }

    else
    {
      v6 = 0xED0000776F646168;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x64616853706F7264;
    v6 = 0xEA0000000000776FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6564695F65707974;
    }

    else
    {
      v5 = 0x6E6F6973726576;
    }

    if (v4 == 3)
    {
      v6 = 0xEF7265696669746ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0x64616853706F7264;
  v8 = 0xEA0000000000776FLL;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 3)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x6853646576727563;
    v2 = 0xEC000000776F6461;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B56B60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6564695F65707974;
    }

    else
    {
      v3 = 0x6E6F6973726576;
    }

    if (v2 == 2)
    {
      v4 = 0xEF7265696669746ELL;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 31076;
    }

    else
    {
      v3 = 30820;
    }

    v4 = 0xE200000000000000;
  }

  v5 = 30820;
  v6 = 0x6564695F65707974;
  v7 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v6 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 31076;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE200000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100B56C9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7468676972;
  v6 = 0x6564695F65707974;
  v7 = 0xEF7265696669746ELL;
  if (a1 != 4)
  {
    v6 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6D6F74746F62;
  if (a1 != 1)
  {
    v9 = 1952867692;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7368564;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7468676972)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEF7265696669746ELL;
      if (v10 != 0x6564695F65707974)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6973726576)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6D6F74746F62)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1952867692)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 7368564)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100B56E74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x797274656D6F6567;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE400000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 1752457584;
    }

    else
    {
      v6 = 0x797274656D6F6567;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 1752457584;
    v8 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B56FBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1752457584;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE400000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 1702521203;
    }

    else
    {
      v6 = 1752457584;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x6564695F65707974;
  v9 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v8 = 0x6E6F6973726576;
    v9 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 1702521203;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100B570FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  v5 = 0x6564695F65707974;
  v6 = 0xEF7265696669746ELL;
  if (a1 != 5)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0xE700000000000000;
  }

  v7 = 0x7470697263736564;
  v8 = 0xEB000000006E6F69;
  if (a1 != 3)
  {
    v7 = 0x6E6572646C696863;
    v8 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
  }

  else
  {
    v7 = v5;
  }

  v9 = 0xE800000000000000;
  v10 = 0x797274656D6F6567;
  if (a1 != 1)
  {
    v10 = 0xD000000000000013;
    v9 = 0x8000000101551A00;
  }

  if (!a1)
  {
    v10 = 0x696669746E656469;
    v9 = 0xEA00000000007265;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x797274656D6F6567)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0x8000000101551A00;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF7265696669746ELL;
        if (v11 != 0x6564695F65707974)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E6F6973726576)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xEB000000006E6F69;
      if (v11 != 0x7470697263736564)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0xE800000000000000;
    v3 = 0x6E6572646C696863;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_100B57340(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x6564695F65707974;
  v5 = 0xEF7265696669746ELL;
  if (a1 != 5)
  {
    v4 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6168706C61;
  if (a1 != 3)
  {
    v7 = 0x70735F726F6C6F63;
    v6 = 0xEB00000000656361;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6E65657267;
  if (a1 != 1)
  {
    v9 = 1702194274;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 6579570;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x6E65657267)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1702194274)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 6579570)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEF7265696669746ELL;
      if (v10 != 0x6564695F65707974)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6973726576)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6168706C61)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB00000000656361;
    if (v10 != 0x70735F726F6C6F63)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_100B57570(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x6564695F65707974;
  v5 = 0xEF7265696669746ELL;
  if (a1 != 5)
  {
    v4 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x676E69727473;
  if (a1 != 3)
  {
    v7 = 0x6E75725F74786574;
    v6 = 0xE900000000000073;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xD000000000000011;
  v9 = 0x7061726761726170;
  if (a1 == 1)
  {
    v9 = 0x6E776F646B72616DLL;
  }

  else
  {
    v3 = 0xEA00000000007368;
  }

  if (a1)
  {
    v8 = v9;
  }

  else
  {
    v3 = 0x80000001015524D0;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6E776F646B72616DLL)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v12 = 0xEA00000000007368;
        if (v10 != 0x7061726761726170)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v12 = 0x80000001015524D0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEF7265696669746ELL;
      if (v10 != 0x6564695F65707974)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6973726576)
      {
LABEL_41:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x676E69727473)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v12 = 0xE900000000000073;
    if (v10 != 0x6E75725F74786574)
    {
      goto LABEL_41;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_41;
  }

  v13 = 1;
LABEL_42:

  return v13 & 1;
}

uint64_t sub_100B577BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6874646977;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0xE600000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x746867696568;
    }

    else
    {
      v6 = 0x6874646977;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x746867696568;
    v8 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B57908(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F697469736F70;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE400000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 1702521203;
    }

    else
    {
      v6 = 0x6E6F697469736F70;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 1702521203;
    v8 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B57A50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1752457584;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE500000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6563617073;
    }

    else
    {
      v6 = 1752457584;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x6563617073;
    v8 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B57B98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7974696361706FLL;
    }

    else
    {
      v3 = 0x73706F7473;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x726F76616C66;
  }

  else if (a1 == 3)
  {
    v3 = 0x6564695F65707974;
    v4 = 0xEF7265696669746ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F6973726576;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7974696361706FLL;
    }

    else
    {
      v9 = 0x73706F7473;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6564695F65707974;
    v6 = 0xEF7265696669746ELL;
    if (a2 != 3)
    {
      v5 = 0x6E6F6973726576;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x726F76616C66;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100B57D30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7261656E696CLL;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE600000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6C6169646172;
    }

    else
    {
      v6 = 0x7261656E696CLL;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x6564695F65707974;
  v9 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v8 = 0x6E6F6973726576;
    v9 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x6C6169646172;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100B57E7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E696F705F646E65;
    }

    else
    {
      v3 = 0x6F705F7472617473;
    }

    if (v2)
    {
      v4 = 0xE900000000000074;
    }

    else
    {
      v4 = 0xEB00000000746E69;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000011;
    v4 = 0x8000000101551C40;
  }

  else if (a1 == 3)
  {
    v3 = 0x6564695F65707974;
    v4 = 0xEF7265696669746ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F6973726576;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E696F705F646E65;
    }

    else
    {
      v9 = 0x6F705F7472617473;
    }

    if (a2)
    {
      v8 = 0xE900000000000074;
    }

    else
    {
      v8 = 0xEB00000000746E69;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6564695F65707974;
    v6 = 0xEF7265696669746ELL;
    if (a2 != 3)
    {
      v5 = 0x6E6F6973726576;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000101551C40;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100B58034(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E6F697463617266;
    }

    else
    {
      v3 = 0x726F6C6F63;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x697463656C666E69;
    v4 = 0xEA00000000006E6FLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x6564695F65707974;
    v4 = 0xEF7265696669746ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F6973726576;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E6F697463617266;
    }

    else
    {
      v9 = 0x726F6C6F63;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6564695F65707974;
    v6 = 0xEF7265696669746ELL;
    if (a2 != 3)
    {
      v5 = 0x6E6F6973726576;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x697463656C666E69;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEA00000000006E6FLL;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100B581E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x6C6F635F746E6974;
  v5 = 0xEA0000000000726FLL;
  v6 = 0x6564695F65707974;
  v7 = 0xEF7265696669746ELL;
  if (a1 != 4)
  {
    v6 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7571696E68636574;
  v9 = 0xE900000000000065;
  if (a1 != 1)
  {
    v8 = 0x65705F656C616373;
    v9 = 0xED0000746E656372;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x656372756F736572;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEA0000000000726FLL;
      if (v10 != 0x6C6F635F746E6974)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEF7265696669746ELL;
      if (v10 != 0x6564695F65707974)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6973726576)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x7571696E68636574)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xED0000746E656372;
      if (v10 != 0x65705F656C616373)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x656372756F736572)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100B58408(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x65727574616566;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE800000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x726F7463656C6573;
    }

    else
    {
      v6 = 0x65727574616566;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x726F7463656C6573;
    v8 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B58560(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x69747265706F7270;
  v5 = 0xEA00000000007365;
  v6 = 0x6564695F65707974;
  v7 = 0xEF7265696669746ELL;
  if (a1 != 4)
  {
    v6 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x696669746E656469;
  v9 = 0xEA00000000007265;
  if (a1 != 1)
  {
    v8 = 0x746E65726170;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701667182;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEA00000000007365;
      if (v10 != 0x69747265706F7270)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEF7265696669746ELL;
      if (v10 != 0x6564695F65707974)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6973726576)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000007265;
      if (v10 != 0x696669746E656469)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x746E65726170)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701667182)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100B58768(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726F6CLL;
  v3 = 0x6F635F7472617473;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6564695F65707974;
    }

    else
    {
      v5 = 0x6E6F6973726576;
    }

    if (v4 == 2)
    {
      v6 = 0xEF7265696669746ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6F6C6F635F646E65;
    }

    else
    {
      v5 = 0x6F635F7472617473;
    }

    if (v4)
    {
      v6 = 0xE900000000000072;
    }

    else
    {
      v6 = 0xEB00000000726F6CLL;
    }
  }

  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x6F6C6F635F646E65;
    v2 = 0xE900000000000072;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100B588D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x74616D726F66;
  v6 = 0x6564695F65707974;
  v7 = 0xEF7265696669746ELL;
  if (a1 != 4)
  {
    v6 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x7265707075;
  if (a1 != 1)
  {
    v9 = 0x6C616D726F66;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1684957547;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x74616D726F66)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEF7265696669746ELL;
      if (v10 != 0x6564695F65707974)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6973726576)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7265707075)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6C616D726F66)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1684957547)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100B58AB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1684957547;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE500000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x65756C6176;
    }

    else
    {
      v6 = 1684957547;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x65756C6176;
    v8 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B58BF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x6564695F65707974;
  v5 = 0xEF7265696669746ELL;
  if (a1 != 6)
  {
    v4 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x726F6C6F63;
  if (a1 != 4)
  {
    v7 = 0x64656C62616E65;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x737569646172;
  if (a1 != 2)
  {
    v9 = 0x7974696361706FLL;
    v8 = 0xE700000000000000;
  }

  v10 = 0x74657366666FLL;
  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v10 = 0x656C676E61;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEF7265696669746ELL;
        if (v11 != 0x6564695F65707974)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x6E6F6973726576)
        {
LABEL_45:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x726F6C6F63)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x64656C62616E65)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x737569646172)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x7974696361706FLL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x74657366666FLL)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x656C676E61)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_100B58E68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000726FLL;
  v3 = 0x6C6F635F746E6F66;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE900000000000065;
    if (a1 != 2)
    {
      v13 = 0xEE00656E6F6E5F65;
    }

    v14 = 0xEF656E6F6E5F726FLL;
    if (!a1)
    {
      v14 = 0xEA0000000000726FLL;
    }

    if (a1 <= 1u)
    {
      v11 = 0x6C6F635F746E6F66;
    }

    else
    {
      v11 = 0x6D616E5F746E6F66;
    }

    if (v4 <= 1)
    {
      v12 = v14;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x736C6576656CLL;
    v7 = 0x6564695F65707974;
    v8 = 0xEF7265696669746ELL;
    if (a1 != 7)
    {
      v7 = 0x6E6F6973726576;
      v8 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v6 = v7;
      v5 = v8;
    }

    v9 = 0xD000000000000011;
    v10 = 0x80000001015525A0;
    if (a1 != 4)
    {
      v9 = 0x776F64616873;
      v10 = 0xE600000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE900000000000065;
        if (v11 != 0x6D616E5F746E6F66)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEE00656E6F6E5F65;
        if (v11 != 0x6D616E5F746E6F66)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xEF656E6F6E5F726FLL;
      if (v11 != 0x6C6F635F746E6F66)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x80000001015525A0;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x776F64616873)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x736C6576656CLL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xEF7265696669746ELL;
      if (v11 != 0x6564695F65707974)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0xE700000000000000;
    v3 = 0x6E6F6973726576;
  }

  if (v11 != v3)
  {
LABEL_49:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

uint64_t sub_100B5912C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6E696F705F646E65;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x726F68636E61;
  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (a1 != 4)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x646E655F656E696CLL;
  if (a1 != 1)
  {
    v10 = 0x74657374756FLL;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x6E696F705F646E65;
    v9 = 0xE900000000000074;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x726F68636E61)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEF7265696669746ELL;
      if (v11 != 0x6564695F65707974)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x6E6F6973726576)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x646E655F656E696CLL)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE600000000000000;
      v3 = 0x74657374756FLL;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_100B5930C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x695F7463656A626FLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6564695F65707974;
    }

    else
    {
      v5 = 0x6E6F6973726576;
    }

    if (v4 == 2)
    {
      v6 = 0xEF7265696669746ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x74656E67616DLL;
    }

    else
    {
      v5 = 0x695F7463656A626FLL;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x74656E67616DLL;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100B59460(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701274725;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE800000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x676E6974616F6C66;
    }

    else
    {
      v6 = 1701274725;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x676E6974616F6C66;
    v8 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}