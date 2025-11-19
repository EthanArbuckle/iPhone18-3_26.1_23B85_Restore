uint64_t sub_100F9D72C()
{
  *(*v1 + 784) = v0;

  if (v0)
  {
    v2 = sub_100F9D964;
  }

  else
  {
    v2 = sub_100F9D840;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F9D840()
{
  v1 = v0[96];
  v2 = v0[94];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v4 = UUID.uuidString.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v6, "Successfully saved all chunks for %{public}@", 44, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F9D964()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F9D9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[33] = v13;
  v8[34] = v14;
  v10 = swift_task_alloc();
  v8[35] = v10;
  *v10 = v8;
  v10[1] = sub_100F9DAAC;

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(a8, _swiftEmptyArrayStorage, 0, 1);
}

uint64_t sub_100F9DAAC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[36] = a1;
  v4[37] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100F9DBE0, 0, 0);
  }
}

uint64_t sub_100F9DBE0()
{
  v1 = 0;
  v2 = v0[36];
  v3 = -1 << *(v2 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v2 + 64);
  v6 = (63 - v3) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_11:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = v8 | (v7 << 6);
    v10 = *(v2 + 56) + 16 * v9;
    if (*(v10 + 8) == 1)
    {
      v11 = *v10;
      v12 = *(*(v2 + 48) + 8 * v9);
      sub_1006CE2EC(v11, 1);

      if (qword_1019F2168 == -1)
      {
LABEL_13:
        v13 = static OS_os_log.crlSendACopy;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v15 = [v12 description];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v16;
        *(inited + 40) = v18;
        v19 = static os_log_type_t.error.getter();
        sub_100005404(v13, &_mh_execute_header, v19, "Encountered error while saving record with id %{public}@", 56, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        swift_willThrow();

        v20 = v0[1];
        goto LABEL_17;
      }

LABEL_23:
      swift_once();
      goto LABEL_13;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_11;
    }
  }

  if (qword_1019F2168 == -1)
  {
    goto LABEL_15;
  }

LABEL_21:
  swift_once();
LABEL_15:
  v21 = v0[33];
  v12 = static OS_os_log.crlSendACopy;
  sub_1005B981C(&qword_1019F54E0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_10146C4D0;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;
  v24 = v0[36];
  v25 = v0[34];
  v0[30] = v21 + 1;
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v27;
  v23[7] = &type metadata for String;
  v38 = v12;
  v29 = sub_1000053B0();
  v23[8] = v29;
  v23[4] = v26;
  v23[5] = v28;
  v0[31] = v25;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  v23[12] = &type metadata for String;
  v23[13] = v29;

  v23[9] = v30;
  v23[10] = v32;
  v33 = *(v24 + 16);

  v0[32] = v33;
  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  v23[17] = &type metadata for String;
  v23[18] = v29;
  v23[14] = v34;
  v23[15] = v35;
  v36 = static os_log_type_t.default.getter();
  sub_100005404(v38, &_mh_execute_header, v36, "Successfully saved chunk %{public}@ of %{public}@, with %{public}@ records", 74, 2, v23);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v20 = v0[1];
LABEL_17:

  return v20();
}

uint64_t sub_100F9DFB8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
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

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_100F9E04C, v4, v6);
}

uint64_t sub_100F9E04C()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = sub_1005B981C(&unk_1019F6B40);
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = sub_1005B981C(&unk_1019F5280);
    *v3 = v0;
    v3[1] = sub_100F9E184;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return ThrowingTaskGroup.next(isolation:)(v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_100F9E184()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100F9E3D0;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100F9E2A0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100F9E2A0()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (ThrowingTaskGroup.isEmpty.getter())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = sub_1005B981C(&unk_1019F5280);
  *v4 = v0;
  v4[1] = sub_100F9E184;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return ThrowingTaskGroup.next(isolation:)(v0 + 96, v7, v6, v5);
}

uint64_t sub_100F9E3D0()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (ThrowingTaskGroup.isEmpty.getter())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = sub_1005B981C(&unk_1019F5280);
    *v4 = v0;
    v4[1] = sub_100F9E184;
    v6 = v0[3];
    v7 = v0[2];

    return ThrowingTaskGroup.next(isolation:)(v0 + 12, v7, v6, v5);
  }
}

id sub_100F9E50C(uint64_t a1)
{
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v3 = sub_10084B8C8();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 64) = v6;
  *(inited + 40) = v5;
  v7 = (a1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  if (*v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7[1] == 0xE000000000000000;
  }

  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    goto LABEL_34;
  }

  v51 = a1;
  v50 = objc_opt_self();
  LODWORD(v9) = [v50 _atomicIncrementAssertCount];
  v52 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v52);
  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v11 lastPathComponent];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_41;
  }

LABEL_8:
  v16 = static OS_os_log.crlAssert;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_10146CA70;
  *(v17 + 56) = &type metadata for Int32;
  *(v17 + 64) = &protocol witness table for Int32;
  *(v17 + 32) = v9;
  v18 = sub_100006370(0, &qword_1019F4D30);
  *(v17 + 96) = v18;
  v19 = sub_1005CF04C();
  *(v17 + 72) = v10;
  *(v17 + 136) = &type metadata for String;
  *(v17 + 144) = v6;
  *(v17 + 104) = v19;
  *(v17 + 112) = v13;
  *(v17 + 120) = v15;
  *(v17 + 176) = &type metadata for UInt;
  *(v17 + 184) = &protocol witness table for UInt;
  *(v17 + 152) = 132;
  v20 = v10;
  v21 = v52;
  *(v17 + 216) = v18;
  *(v17 + 224) = v19;
  *(v17 + 192) = v21;
  v22 = v20;
  v23 = v21;
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v17);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v25, "Attempting to create public board identifier that has non-default owner %{public}@", 82, 2, inited);

  type metadata accessor for __VaListBuilder();
  v26 = swift_allocObject();
  v26[2] = 8;
  v26[3] = 0;
  v13 = v26 + 3;
  v26[4] = 0;
  v26[5] = 0;
  v27 = *(inited + 16);
  if (v27)
  {
    v28 = 0;
    v10 = 40;
    while (1)
    {
      v29 = (inited + 32 + 40 * v28);
      v15 = v29[3];
      v6 = sub_100020E58(v29, v15);
      v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v9 = *v13;
      v31 = *(v30 + 16);
      v32 = __OFADD__(*v13, v31);
      v33 = *v13 + v31;
      if (v32)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        swift_once();
        goto LABEL_8;
      }

      v6 = v26[4];
      if (v6 >= v33)
      {
        goto LABEL_25;
      }

      if (v6 + 0x4000000000000000 < 0)
      {
        goto LABEL_39;
      }

      v15 = v26[5];
      if (2 * v6 > v33)
      {
        v33 = 2 * v6;
      }

      v26[4] = v33;
      if ((v33 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_40;
      }

      v34 = v30;
      v35 = swift_slowAlloc();
      v36 = v35;
      v26[5] = v35;
      if (v15)
      {
        break;
      }

      v30 = v34;
      v10 = 40;
      if (!v36)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_26:
      v38 = *(v30 + 16);
      if (v38)
      {
        v39 = (v30 + 32);
        v40 = *v13;
        while (1)
        {
          v41 = *v39++;
          *&v36[8 * v40] = v41;
          v40 = *v13 + 1;
          if (__OFADD__(*v13, 1))
          {
            break;
          }

          *v13 = v40;
          if (!--v38)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_10:

      if (++v28 == v27)
      {
        goto LABEL_33;
      }
    }

    if (v35 != v15 || v35 >= &v15[8 * v9])
    {
      memmove(v35, v15, 8 * v9);
    }

    v6 = v26;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v30 = v34;
    v10 = 40;
LABEL_25:
    v36 = v26[5];
    if (!v36)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_33:
  v42 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v45 = String._bridgeToObjectiveC()();

  [v50 handleFailureInFunction:v43 file:v44 lineNumber:132 isFatal:0 format:v45 args:v42];

  a1 = v51;
LABEL_34:
  v46 = sub_100EFF9E4(a1);
  v47 = [(objc_class *)v46 zoneName];

  if (!v47)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = String._bridgeToObjectiveC()();
  }

  v48 = [objc_allocWithZone(CKRecordZone) initWithZoneName:v47];

  return v48;
}

uint64_t sub_100F9EB00(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10002D3D4;

  return sub_100F9BD48(a1, a2, v6, v7, v8, v9, v11, v10);
}

unint64_t sub_100F9EBF8()
{
  result = qword_101A251A0;
  if (!qword_101A251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A251A0);
  }

  return result;
}

uint64_t sub_100F9EC84(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_100F9D9F0(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100F9ED78(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  v3 = type metadata accessor for UUID();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  sub_1005B981C(&unk_1019F52D0);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_100F9EE7C, 0, 0);
}

uint64_t sub_100F9EE7C()
{
  v1 = sub_100F9E50C(v0[34]);
  v0[41] = v1;
  v0[32] = _swiftEmptyArrayStorage;
  if (qword_1019F2168 != -1)
  {
    swift_once();
  }

  v2 = v0[40];
  v3 = static OS_os_log.crlSendACopy;
  v0[42] = static OS_os_log.crlSendACopy;
  v0[43] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v5 = [v1 zoneID];
  sub_100EE9190(v2);

  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v0[44] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v0[45] = v8;
  v0[46] = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v9 = v8(v2, 1, v6);
  v10 = v0[40];
  if (v9 == 1)
  {
    sub_10000CAAC(v0[40], &unk_1019F52D0);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v14 = v0[37];
    v13 = v0[38];
    v15 = v0[36];
    (*(v14 + 16))(v13, v0[40], v15);
    sub_100086F34(v10);
    v11 = UUID.uuidString.getter();
    v12 = v16;
    (*(v14 + 8))(v13, v15);
  }

  v0[28] = v11;
  v0[29] = v12;
  v0[47] = sub_1005B981C(&unk_1019F6C70);
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  *(inited + 56) = &type metadata for String;
  v18 = sub_1000053B0();
  v0[48] = v18;
  *(inited + 64) = v18;
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  v19 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v19, "Fetching zone in public database: %{public}@", 44, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v20 = [v1 zoneID];
  v0[49] = v20;
  v21 = swift_task_alloc();
  v0[50] = v21;
  *v21 = v0;
  v21[1] = sub_100F9F190;

  return sub_10083FBFC(v20, 1, 33);
}

uint64_t sub_100F9F190(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v6[51] = a1;
  v6[52] = v2;

  v7 = v5[49];
  if (v2)
  {

    v8 = sub_100F9F75C;
  }

  else
  {
    v6[53] = a2;

    v8 = sub_100F9F2E0;
  }

  return _swift_task_switch(v8, 0, 0);
}

void sub_100F9F2E0()
{
  v1 = *(*(v0 + 408) + 16);

  v2 = *(v0 + 408);
  if (!v1)
  {
    v14 = *(v0 + 328);

    sub_100F9EBF8();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();

LABEL_18:

    v16 = *(v0 + 8);

    v16();
    return;
  }

  v3 = 0;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v8 = _swiftEmptyArrayStorage;
  if (v6)
  {
LABEL_9:
    while (1)
    {
      v10 = *(v2 + 56) + ((v3 << 10) | (16 * __clz(__rbit64(v6))));
      v11 = *v10;
      if (*(v10 + 8))
      {
        break;
      }

      v12 = v11;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 256) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 256) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v6 &= v6 - 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1006CCCD4(v11, 0);
      v8 = *(v0 + 256);
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v0 + 384);
    v39 = *(v0 + 360);
    v18 = *(v0 + 352);
    v19 = *(v0 + 328);
    v20 = *(v0 + 312);
    swift_errorRetain();

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v22 = *(v0 + 208);
    v23 = *(v0 + 216);
    swift_errorRetain();
    *(inited + 32) = Error.publicDescription.getter(v22, v23);
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v17;
    *(inited + 40) = v24;
    v25 = [v19 zoneID];
    sub_100EE9190(v20);

    v26 = v39(v20, 1, v18);
    v27 = *(v0 + 312);
    if (v26 == 1)
    {
      sub_10000CAAC(*(v0 + 312), &unk_1019F52D0);
      v28 = 0;
      v29 = 0;
    }

    else
    {
      v31 = *(v0 + 296);
      v30 = *(v0 + 304);
      v32 = *(v0 + 288);
      (*(v31 + 16))(v30, *(v0 + 312), v32);
      sub_100086F34(v27);
      v28 = UUID.uuidString.getter();
      v29 = v33;
      (*(v31 + 8))(v30, v32);
    }

    v34 = *(v0 + 384);
    v36 = *(v0 + 328);
    v35 = *(v0 + 336);
    *(v0 + 240) = v28;
    *(v0 + 248) = v29;
    v37._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v37);

    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v34;
    *(inited + 72) = 0;
    *(inited + 80) = 0xE000000000000000;
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v38, "Caught error when fetching records from public database: %{public}@ for %{public}@", 82, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_willThrow();

    sub_1006CCCD4(v11, 1);
    goto LABEL_18;
  }

  while (1)
  {
LABEL_5:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v9);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  v13 = *(v0 + 8);

  v13(v8);
}

uint64_t sub_100F9F75C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100F9F808()
{
  result = qword_101A251B0;
  if (!qword_101A251B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A251B0);
  }

  return result;
}

id sub_100F9F87C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = *((swift_isaMask & *a1) + 0xE0);
  v5 = a1;
  v6 = v4();
  v7 = [v6 *a3];

  return v7;
}

void sub_100F9F8FC()
{
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.shareState;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Updating toolbar buttons.", 25, 2, _swiftEmptyArrayStorage);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (Strong[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] == 1)
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v3 = static OS_os_log.crlDefault;
      v4 = static os_log_type_t.info.getter();
      sub_100005404(v3, &_mh_execute_header, v4, "Skipping request to update toolbar buttons after teardown.", 58, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v5 = [Strong traitCollection];
      sub_100642864(v5, [*&v6[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly], v7);
      sub_100642CDC(v7, 0);

      sub_1005EB2D4(v7);
    }
  }
}

uint64_t CRLGelatoInterstitialUIController.isBoardShared.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100F9FB2C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100F9FBAC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t CRLGelatoInterstitialUIController.isBoardShared.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*CRLGelatoInterstitialUIController.isBoardShared.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_1008DBEEC;
}

uint64_t CRLGelatoInterstitialUIController.$isBoardShared.getter()
{
  swift_beginAccess();
  sub_1005B981C(&unk_101A08DC0);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CRLGelatoInterstitialUIController.$isBoardShared.setter(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A28780);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_1005B981C(&unk_101A08DC0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*CRLGelatoInterstitialUIController.$isBoardShared.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1005B981C(&qword_101A28780);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController__isBoardShared;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1005B981C(&unk_101A08DC0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_1008DC284;
}

id sub_100FA0048()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.shareState;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Making a collaboration button. Checking for an existing share.", 62, 2, _swiftEmptyArrayStorage);
  v13 = *(v1 + OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_boardLibrary);
  if (v13)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v43 = Strong;
      v15 = *(v1 + OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_board);
      v16 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
      v17 = *(v15 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
      v18 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10004FDFC(v17 + v18, v4, type metadata accessor for CRLBoardCRDTData);
      v19 = v13;
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10003D75C(v4, type metadata accessor for CRLBoardCRDTData);
      v20 = (*(v15 + v16) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v21 = *v20;
      v22 = v20[1];

      sub_10084BD4C(v7, v21, v22, v10);
      v23 = *(*(v15 + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
      v44 = v19;
      if (v23)
      {

        v24 = v23;
        [v24 copy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();

        sub_100006370(0, &qword_1019F52C0);
        if (swift_dynamicCast())
        {
          v23 = v45;
        }

        else
        {
          v23 = 0;
        }
      }

      v42 = v23;
      type metadata accessor for CRLBoardShareItemProviderHelper();
      v25 = *(v15 + v16);
      v26 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10004FDFC(v25 + v26, v4, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&qword_101A1A020);
      CRRegister.wrappedValue.getter();
      sub_10003D75C(v4, type metadata accessor for CRLBoardCRDTData);
      v27 = sub_100D193E4(v23, v44, v10, v45, v46, 0, 0xF000000000000000);

      v13 = [objc_allocWithZone(_SWCollaborationBarButtonItem) initWithItemProvider:v27];
      v28 = v43;
      [v13 setCloudSharingControllerDelegate:v43];
      [v13 setShowManageButton:0];
      v29 = [objc_opt_self() mainBundle];
      v30 = String._bridgeToObjectiveC()();
      v31 = String._bridgeToObjectiveC()();
      v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

      if (!v32)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = String._bridgeToObjectiveC()();
      }

      [v13 setManageButtonTitle:v32];

      v33 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
      swift_beginAccess();
      v34 = *(v1 + v33);
      *(v1 + v33) = v13;
      v35 = v13;

      v36 = UIAccessibilityTraitButton;
      v37 = v35;
      v38 = [v37 accessibilityTraits];
      if ((v36 & ~v38) != 0)
      {
        v39 = v36;
      }

      else
      {
        v39 = 0;
      }

      [v37 setAccessibilityTraits:v39 | v38];

      sub_10003D75C(v10, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

void sub_100FA05F0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_isTornDown;
  if (*(v0 + OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_isTornDown) == 1)
  {
    v35 = objc_opt_self();
    v3 = [v35 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
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
    *(inited + 152) = 67;
    v15 = v36;
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
    sub_100005404(v10, &_mh_execute_header, v19, "Should not call tearDown() twice.", 33, 2, _swiftEmptyArrayStorage);

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

    [v35 handleFailureInFunction:v22 file:v23 lineNumber:67 isFatal:0 format:v24 args:v21];
  }

  *(v1 + v2) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v27 = *(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);

    v28 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers;
    if ([*&v27[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers] containsObject:v1])
    {
      [*&v27[v28] removeObject:v1];
    }
  }

  v29 = [objc_opt_self() defaultCenter];
  [v29 removeObserver:v1];

  v30 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
  swift_beginAccess();
  v31 = *(v1 + v30);
  if (v31)
  {
    v32 = objc_allocWithZone(UIView);
    v33 = v31;
    v34 = [v32 init];
    [v33 setDetailViewListContent:v34];
  }
}

id CRLGelatoInterstitialUIController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if ((*(v0 + OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_isTornDown) & 1) == 0)
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
    *(inited + 152) = 83;
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
    sub_100005404(v10, &_mh_execute_header, v19, "Deallocated without calling tearDown()!", 39, 2, _swiftEmptyArrayStorage);

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

    [v26 handleFailureInFunction:v22 file:v23 lineNumber:83 isFatal:0 format:v24 args:v21];
  }

  v27.receiver = v1;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, "dealloc");
}

uint64_t sub_100FA0F5C()
{
  v1 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_board);
  v9 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v8 + v9, v7, &qword_101A08DF0);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_10000CAAC(v7, &qword_101A08DF0);
    return 0;
  }

  else
  {
    sub_10004FDFC(v7, v4, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    sub_10000CAAC(v7, &qword_101A08DF0);

    sub_10003D75C(v4, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v16 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = v10;
    v13 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v13, "Found realTimeSessionInfo. Participant count is: %d", 51, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
  }

  return v10;
}

uint64_t sub_100FA1294()
{
  v1 = sub_1005B981C(&qword_1019F6D50);
  v2 = __chkstk_darwin(v1);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v43 - v5;
  v45 = type metadata accessor for CRLActiveParticipantDetailView(0);
  __chkstk_darwin(v45);
  v8 = (v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v13 - 8);
  v15 = v43 - v14;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v43[0] = v4;
    v43[1] = v1;
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.shareState;
    v19 = static os_log_type_t.default.getter();
    sub_100005404(v18, &_mh_execute_header, v19, "Updating participant list.", 26, 2, _swiftEmptyArrayStorage);
    v44 = v0;
    v20 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_board);
    v21 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    swift_beginAccess();
    sub_10000BE14(v20 + v21, v15, &qword_101A08DF0);
    if ((*(v10 + 48))(v15, 1, v9))
    {
      sub_10000CAAC(v15, &qword_101A08DF0);
      type metadata accessor for CRLCollaborationParticipantCollection(0);
      swift_allocObject();
      sub_1007E0100();
    }

    else
    {
      sub_10004FDFC(v15, v12, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      sub_10000CAAC(v15, &qword_101A08DF0);

      sub_10003D75C(v12, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    }

    v22 = v43[0];
    v23 = *&v17[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator];
    v24 = type metadata accessor for Tips.Status();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    KeyPath = swift_getKeyPath();
    v26 = v45;
    *(v8 + *(v45 + 28)) = KeyPath;
    sub_1005B981C(&qword_101A25218);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CRLEditingCoordinator();
    sub_100FA30DC(&qword_101A25220, type metadata accessor for CRLEditingCoordinator);
    v27 = v23;

    v28 = v17;
    *v8 = ObservedObject.init(wrappedValue:)();
    v8[1] = v29;
    type metadata accessor for CRLCollaborationParticipantCollection(0);
    sub_100FA30DC(&unk_101A00E58, type metadata accessor for CRLCollaborationParticipantCollection);
    v8[2] = ObservedObject.init(wrappedValue:)();
    v8[3] = v30;
    sub_10000BE14(v6, v22, &qword_1019F6D50);
    State.init(wrappedValue:)();
    sub_10000CAAC(v6, &qword_1019F6D50);
    v31 = (v8 + *(v26 + 36));
    v32 = [objc_opt_self() mainBundle];
    v33 = String._bridgeToObjectiveC()();
    v34 = String._bridgeToObjectiveC()();
    v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *v31 = v36;
    v31[1] = v38;
    *(v8 + *(v26 + 40) + 8) = &off_10187C3D0;
    swift_unknownObjectWeakInit();

    v39 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
    v40 = v44;
    swift_beginAccess();
    v41 = *(v40 + v39);
    if (v41)
    {
      swift_endAccess();
      sub_100FA30DC(&qword_101A25228, type metadata accessor for CRLActiveParticipantDetailView);
      v42 = v41;
      _SWCollaborationBarButtonItem.setDetailViewListContent<A>(_:)();

      return sub_10003D75C(v8, type metadata accessor for CRLActiveParticipantDetailView);
    }

    else
    {
      sub_10003D75C(v8, type metadata accessor for CRLActiveParticipantDetailView);
      swift_endAccess();
    }
  }

  return result;
}

id sub_100FA1940()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1);
  v3 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v9 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_boardLibrary);
  if (v9)
  {
    v38 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v1;
    v10 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_board);
    v11 = *(*(v10 + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
    if (v11)
    {
      v12 = v9;

      v13 = v11;
      [v13 copy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();

      sub_100006370(0, &qword_1019F52C0);
      if (swift_dynamicCast())
      {
        v14 = v43;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v18 = v9;
      v14 = 0;
    }

    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v40 = v14;
    sub_1005B981C(&qword_101A21F40);
    v37 = v14;
    v21 = Optional.debugDescription.getter();
    v23 = v22;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v21;
    *(inited + 40) = v23;
    v24 = static os_log_type_t.default.getter();
    sub_100005404(v19, &_mh_execute_header, v24, "Creating new item provider with share:", 38, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v36[1] = type metadata accessor for CRLBoardShareItemProviderHelper();
    v25 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v26 = *(v10 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v27 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FDFC(v26 + v27, v3, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10003D75C(v3, type metadata accessor for CRLBoardCRDTData);
    v28 = (*(v10 + v25) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v29 = *v28;
    v30 = v28[1];

    v31 = v38;
    sub_10084BD4C(v6, v29, v30, v38);
    v32 = *(v10 + v25);
    v33 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FDFC(v32 + v33, v3, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&qword_101A1A020);
    CRRegister.wrappedValue.getter();
    sub_10003D75C(v3, type metadata accessor for CRLBoardCRDTData);
    v34 = v37;
    v17 = sub_100D193E4(v37, v9, v31, v41, v42, 0, 0xF000000000000000);

    sub_10003D75C(v31, type metadata accessor for CRLBoardIdentifier);
  }

  else
  {
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.shareState;
    v16 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v16, "Error creating share item provider: board library is expected.", 62, 2, _swiftEmptyArrayStorage);
    return 0;
  }

  return v17;
}

uint64_t sub_100FA1FD8@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for CRLGelatoInterstitialUIController()
{
  result = qword_101A25208;
  if (!qword_101A25208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100FA206C()
{
  sub_10003A3F4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100FA2128(void *a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v83 = *(v2 - 8);
  v84 = v2;
  __chkstk_darwin(v2);
  v76 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1005B981C(&unk_101A28730);
  __chkstk_darwin(v81);
  v85 = &v76 - v4;
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8 - 8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v11 - 8);
  v78 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v76 - v14;
  __chkstk_darwin(v16);
  v82 = &v76 - v17;
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.shareState;
  v79 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v80 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v89 = a1;
  sub_1005B981C(&qword_101A21F40);
  v20 = Optional.debugDescription.getter();
  v22 = v21;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v23 = static os_log_type_t.default.getter();
  v87 = v18;
  sub_100005404(v18, &_mh_execute_header, v23, "Interstitial UI controller notified of updated share: %@", 56, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  if (!a1)
  {
    v55 = static os_log_type_t.default.getter();
    v56 = v87;
    sub_100005404(v87, &_mh_execute_header, v55, "Nil share was found. Removing SWCollaborationView.", 50, 2, _swiftEmptyArrayStorage);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v89) = 0;
    v57 = v86;
    static Published.subscript.setter();
    sub_100F9F8FC();
    v58 = static os_log_type_t.default.getter();
    sub_100005404(v56, &_mh_execute_header, v58, "Dismissing Gelato Interstitial popover", 38, 2, _swiftEmptyArrayStorage);
    v59 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
    swift_beginAccess();
    v60 = *&v57[v59];
    if (v60)
    {
      [v60 dismissPopoverAnimated:1 completion:0];
    }

    v61 = sub_100FA0F5C();
    v62 = swift_initStackObject();
    *(v62 + 16) = v80;
    *(v62 + 56) = &type metadata for Int;
    *(v62 + 64) = &protocol witness table for Int;
    *(v62 + 32) = v61;
    v63 = static os_log_type_t.default.getter();
    sub_100005404(v87, &_mh_execute_header, v63, "Updating active participant count to: %d.", 41, 2, v62);
    swift_setDeallocating();
    sub_100005070(v62 + 32);
    v64 = *&v57[v59];
    if (v64)
    {
      [v64 setActiveParticipantCount:v61];
    }

    goto LABEL_23;
  }

  v77 = a1;
  v24 = [v77 recordID];
  v25 = [v24 zoneID];

  v26 = v82;
  sub_100EE9190(v82);

  v27 = v86;
  v28 = *&v86[OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_board];
  v29 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v30 = *(v28 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v31 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FDFC(v30 + v31, v7, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D75C(v7, type metadata accessor for CRLBoardCRDTData);
  v32 = (*(v28 + v29) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v33 = *v32;
  v34 = v32[1];

  sub_10084BD4C(v10, v33, v34, v15);
  v35 = v83;
  v36 = v84;
  (*(v83 + 56))(v15, 0, 1, v84);
  v37 = *(v81 + 48);
  v38 = v85;
  sub_10000BE14(v26, v85, &unk_1019F52D0);
  sub_10000BE14(v15, v38 + v37, &unk_1019F52D0);
  v39 = *(v35 + 48);
  if (v39(v38, 1, v36) != 1)
  {
    v65 = v36;
    v66 = v78;
    sub_10000BE14(v38, v78, &unk_1019F52D0);
    if (v39(v38 + v37, 1, v65) != 1)
    {
      v70 = v76;
      sub_1005EB270(v38 + v37, v76);
      if (static UUID.== infix(_:_:)())
      {
        v71 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
        v72 = *(v66 + v71);
        v73 = *(v66 + v71 + 8);
        v74 = (v70 + v71);
        if (v72 == *v74 && v73 == v74[1])
        {
          sub_10000CAAC(v15, &unk_1019F52D0);
          sub_10000CAAC(v26, &unk_1019F52D0);
          sub_10003D75C(v70, type metadata accessor for CRLBoardIdentifier);
          sub_10003D75C(v66, type metadata accessor for CRLBoardIdentifier);
          goto LABEL_6;
        }

        v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10000CAAC(v15, &unk_1019F52D0);
        sub_10000CAAC(v26, &unk_1019F52D0);
        sub_10003D75C(v70, type metadata accessor for CRLBoardIdentifier);
        sub_10003D75C(v66, type metadata accessor for CRLBoardIdentifier);
        sub_10000CAAC(v38, &unk_1019F52D0);
        if (v75)
        {
          goto LABEL_7;
        }

        goto LABEL_22;
      }

      sub_10000CAAC(v15, &unk_1019F52D0);
      sub_10000CAAC(v26, &unk_1019F52D0);
      sub_10003D75C(v70, type metadata accessor for CRLBoardIdentifier);
      sub_10003D75C(v66, type metadata accessor for CRLBoardIdentifier);
      v68 = v38;
      v67 = &unk_1019F52D0;
LABEL_21:
      sub_10000CAAC(v68, v67);
LABEL_22:

LABEL_23:
      v69 = static os_log_type_t.default.getter();
      sub_100005404(v87, &_mh_execute_header, v69, "No appropriate actions necessary for this updated share.", 56, 2, _swiftEmptyArrayStorage);
      return;
    }

    sub_10000CAAC(v15, &unk_1019F52D0);
    sub_10000CAAC(v26, &unk_1019F52D0);
    sub_10003D75C(v66, type metadata accessor for CRLBoardIdentifier);
LABEL_20:
    v67 = &unk_101A28730;
    v68 = v38;
    goto LABEL_21;
  }

  sub_10000CAAC(v15, &unk_1019F52D0);
  sub_10000CAAC(v26, &unk_1019F52D0);
  if (v39(v38 + v37, 1, v36) != 1)
  {
    goto LABEL_20;
  }

LABEL_6:
  sub_10000CAAC(v38, &unk_1019F52D0);
  v27 = v86;
LABEL_7:
  v40 = static os_log_type_t.default.getter();
  v41 = v87;
  sub_100005404(v87, &_mh_execute_header, v40, "Share state changed.", 20, 2, _swiftEmptyArrayStorage);
  swift_getKeyPath();
  swift_getKeyPath();
  v88 = 1;
  v42 = v27;
  static Published.subscript.setter();
  v43 = static os_log_type_t.default.getter();
  sub_100005404(v41, &_mh_execute_header, v43, "Updating collaboration button with new item provider.", 53, 2, _swiftEmptyArrayStorage);
  v44 = sub_100FA1940();
  if (v44)
  {
    v45 = v44;
    v46 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
    swift_beginAccess();
    v47 = *&v42[v46];
    if (v47)
    {
      v48 = v47;
      [v48 setItemProvider:v45];
    }
  }

  sub_100F9F8FC();
  sub_100FA1294();
  v49 = sub_100FA0F5C();
  v50 = swift_initStackObject();
  *(v50 + 16) = v80;
  *(v50 + 56) = &type metadata for Int;
  *(v50 + 64) = &protocol witness table for Int;
  *(v50 + 32) = v49;
  v51 = static os_log_type_t.default.getter();
  sub_100005404(v87, &_mh_execute_header, v51, "Updating active participant count to: %d.", 41, 2, v50);
  swift_setDeallocating();
  sub_100005070(v50 + 32);
  v52 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
  swift_beginAccess();
  v53 = *&v42[v52];
  if (v53)
  {
    v54 = v53;
    [v54 setActiveParticipantCount:v49];
  }
}

void sub_100FA2CA8(void *a1, uint64_t a2, char a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a1;
    sub_100FA328C(a3 & 1, v6);
  }
}

id sub_100FA2D34(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1005B981C(&unk_101A08DC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_boardLibrary;
  *&v1[OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_boardLibrary] = 0;
  v1[OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_isTornDown] = 0;
  v9 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController__isBoardShared;
  v29 = 0;
  Published.init(initialValue:)();
  (*(v5 + 32))(&v1[v9], v7, v4);
  *&v1[OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem] = 0;
  swift_unknownObjectWeakAssign();
  v10 = *(*(a1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v11 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_board;
  *&v1[OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_board] = v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = *&v1[v8];
  *&v1[v8] = Strong;
  v14 = v10;

  LOBYTE(v13) = *(*(*&v1[v11] + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16) != 0;
  swift_beginAccess();
  (*(v5 + 8))(&v1[v9], v4);
  v28 = v13;
  Published.init(initialValue:)();
  swift_endAccess();
  v27.receiver = v1;
  v27.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v27, "init");
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);

    v19 = *&v18[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers];
    v20 = v15;
    if (([v19 containsObject:v20] & 1) == 0)
    {
      [v19 addObject:v20];
    }
  }

  v21 = [objc_opt_self() defaultCenter];
  v22 = qword_1019F2578;
  v23 = v15;
  if (v22 != -1)
  {
    swift_once();
  }

  [v21 addObserver:v23 selector:"newParticipantJoinedSessionWithNotification:" name:qword_101AD86B0 object:0];

  v24 = qword_1019F15A8;
  v25 = v23;
  if (v24 != -1)
  {
    swift_once();
  }

  [v21 addObserver:v25 selector:"realTimeSessionParticipantsChangedWithNotification:" name:qword_101AD6540 object:0];

  return v25;
}

uint64_t sub_100FA30DC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100FA3124(uint64_t a1, uint64_t a2)
{
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.shareState;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v5, &_mh_execute_header, v6, a1, a2, 2, _swiftEmptyArrayStorage);
  sub_100FA1294();
  v7 = sub_100FA0F5C();
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v7;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v5, &_mh_execute_header, v9, "Updating active participant count to: %d.", 41, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v10 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
  swift_beginAccess();
  result = *(v2 + v10);
  if (result)
  {
    return [result setActiveParticipantCount:v7];
  }

  return result;
}

void sub_100FA328C(char a1, char *a2)
{
  v3 = *(*(*(*&a2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (!v3 || (, v4 = v3, [v4 copy], _bridgeAnyObjectToAny(_:)(), v4, swift_unknownObjectRelease(), , sub_100006370(0, &qword_1019F52C0), (swift_dynamicCast() & 1) == 0) || (v5 = objc_msgSend(v56, "owner"), v56, v6 = sub_100CE7CBC(0), v8 = v7, v5, !v8))
  {
    v53 = a1;
    v9 = objc_opt_self();
    v10 = [v9 _atomicIncrementAssertCount];
    v57 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v57);
    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v10;
    v19 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v19;
    v20 = sub_1005CF04C();
    *(inited + 104) = v20;
    *(inited + 72) = v11;
    *(inited + 136) = &type metadata for String;
    v21 = sub_1000053B0();
    *(inited + 112) = v14;
    *(inited + 120) = v16;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v21;
    *(inited + 152) = 272;
    v22 = v57;
    *(inited + 216) = v19;
    *(inited + 224) = v20;
    *(inited + 192) = v22;
    v23 = v11;
    v24 = v22;
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v26, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v27 = swift_allocObject();
    v27[2] = 8;
    v27[3] = 0;
    v27[4] = 0;
    v27[5] = 0;
    v28 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    [v9 handleFailureInFunction:v29 file:v30 lineNumber:272 isFatal:0 format:v31 args:v28];

    v6 = 0;
    v8 = 0xE000000000000000;
    a1 = v53;
  }

  v32 = objc_opt_self();
  v33 = [v32 mainBundle];
  v54 = a1 & 1;
  v34 = String._bridgeToObjectiveC()();
  v35 = String._bridgeToObjectiveC()();
  v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10146C6B0;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = sub_1000053B0();
  *(v37 + 32) = v6;
  *(v37 + 40) = v8;
  String.init(format:_:)();

  v38 = [v32 mainBundle];
  v39 = String._bridgeToObjectiveC()();
  v40 = String._bridgeToObjectiveC()();
  v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = String._bridgeToObjectiveC()();

  v43 = String._bridgeToObjectiveC()();

  v44 = [objc_opt_self() alertControllerWithTitle:v42 message:v43 preferredStyle:1];

  v45 = [objc_opt_self() mainBundle];
  v46 = String._bridgeToObjectiveC()();
  v47 = String._bridgeToObjectiveC()();
  v48 = [v45 localizedStringForKey:v46 value:v47 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = String._bridgeToObjectiveC()();

  v50 = [objc_opt_self() actionWithTitle:v49 style:0 handler:0];

  [v44 addAction:v50];
  sub_101012978(v54);
  v51 = [a2 presentedViewController];
  if (v51)
  {
    v52 = v51;
    [v51 dismissViewControllerAnimated:1 completion:0];
  }

  [a2 presentViewController:v44 animated:1 completion:0];
  sub_1011047E4(v44);
}

uint64_t *sub_100FA3AC8(char a1)
{
  v2 = v1;
  v38 = *v2;
  v4 = v38;
  v5 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v5);
  v40 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v33[-v8];
  __chkstk_darwin(v10);
  v12 = &v33[-v11];
  v13 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v13);
  v39 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v33[-v16];
  __chkstk_darwin(v18);
  v20 = &v33[-v19];
  v21 = *(v4 + 736);
  swift_beginAccess();
  if (a1)
  {
    v37 = v5;
    sub_10000BE14(v2 + v21, v17, &unk_101A226A0);
    sub_10001A2F8(&qword_101A09E00, &unk_101A226A0);
    CRType.copy(renamingReferences:)();
    sub_10000CAAC(v17, &unk_101A226A0);
    v22 = qword_101AD8A28;
    swift_beginAccess();
    sub_100FAA444(v2 + v22, v9, type metadata accessor for CRLImageItemCRDTData);
    sub_100FA88F8(&qword_101A13F50, type metadata accessor for CRLImageItemCRDTData);
    CRType.copy(renamingReferences:)();
    sub_100FAA1C4(v9, type metadata accessor for CRLImageItemCRDTData);
  }

  else
  {
    sub_10000BE14(v2 + v21, v20, &unk_101A226A0);
    v23 = qword_101AD8A28;
    swift_beginAccess();
    sub_100FAA444(v2 + v23, v12, type metadata accessor for CRLImageItemCRDTData);
  }

  v36 = v20;
  sub_10000BE14(v20, v39, &unk_101A226A0);
  v37 = v12;
  v24 = v40;
  sub_100FAA444(v12, v40, type metadata accessor for CRLImageItemCRDTData);
  v25 = v2[4];
  v35 = v2[5];
  v26 = v2[6];
  v34 = *(v2 + 56);
  v28 = v2[2];
  v27 = v2[3];
  v29 = swift_allocObject();
  sub_100FAA444(v24, v29 + qword_101AD8A28, type metadata accessor for CRLImageItemCRDTData);
  v30 = [objc_opt_self() standardUserDefaults];
  LODWORD(v24) = [v30 BOOLForKey:@"CRLNewImageItemsHaveGoodEnoughFidelityVersionSetAboveCurrentDefault"];

  if (v24 && (result = sub_10001FF1C(), v25 = result + 1, result == -1))
  {
    __break(1u);
  }

  else
  {
    v32 = v39;
    sub_10000BE14(v39, v17, &unk_101A226A0);
    v41[0] = v27;
    v41[1] = v25;
    v41[2] = v35;
    v41[3] = v26;
    v42 = v34;
    sub_10000BE14(v17, v29 + *(*v29 + 736), &unk_101A226A0);
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v17, &unk_101A226A0);
    sub_100FAA1C4(v40, type metadata accessor for CRLImageItemCRDTData);
    sub_10000CAAC(v32, &unk_101A226A0);
    sub_100FAA1C4(v37, type metadata accessor for CRLImageItemCRDTData);
    sub_10000CAAC(v36, &unk_101A226A0);
    return sub_100747AF0(v41, v28);
  }

  return result;
}

uint64_t sub_100FA4008(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v28 = type metadata accessor for UUID();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v7 - 8);
  v25 = &v24 - v8;
  v9 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  v18 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap;
  swift_beginAccess();
  if (*(*(a1 + v18) + 16))
  {
    swift_beginAccess();
    sub_1005B981C(&unk_101A2F5B0);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
    sub_100FA46C8(v17);
    v24 = v2;
    sub_100FAA1C4(v14, type metadata accessor for CRLImageItemAssetData);
    sub_100FAA444(v17, v14, type metadata accessor for CRLImageItemAssetData);
    swift_beginAccess();
    sub_100FAA444(v14, v11, type metadata accessor for CRLImageItemAssetData);
    CRRegister.wrappedValue.setter();
    sub_100FAA1C4(v14, type metadata accessor for CRLImageItemAssetData);
    swift_endAccess();
    v3 = v24;
    sub_100FAA1C4(v17, type metadata accessor for CRLImageItemAssetData);
  }

  v19 = *(*v4 + 736);
  swift_beginAccess();
  sub_10124DE14(a1);
  result = swift_endAccess();
  if (!v3)
  {
    v21 = v25;
    sub_10000BE14(v4 + v19, v25, &unk_101A226A0);
    sub_1005B981C(&unk_1019F5250);
    v22 = v26;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v21, &unk_101A226A0);
    v23 = *(*v4 + 744);
    swift_beginAccess();
    (*(v27 + 40))(v4 + v23, v22, v28);
    return swift_endAccess();
  }

  return result;
}

Swift::Int sub_100FA43E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014BD920[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100FA4468()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014BD920[v1]);
  return Hasher._finalize()();
}

unint64_t sub_100FA44CC()
{
  v1 = *v0;
  v2 = 0x7461446567616D69;
  v3 = 0xD000000000000012;
  if (v1 != 4)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x69616E626D756874;
  if (v1 != 1)
  {
    v4 = 0x6150646563617274;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_100FA45A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100FAA224(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100FA45F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FA8C54();
  v5 = sub_100FA8CAC();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100FA4650(uint64_t a1)
{
  v2 = sub_100FA8CAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FA468C(uint64_t a1)
{
  v2 = sub_100FA8CAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100FA46C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = &v34 - v7;
  v8 = type metadata accessor for CRLAssetData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  sub_100C038F0(v1, &v34 - v13);
  v15 = *(v8 + 20);
  v16 = *(v1 + v15);
  v17 = *(v1 + v15 + 8);
  v18 = *(v1 + *(v8 + 24));
  v19 = &v14[v15];
  *v19 = v16;
  *(v19 + 1) = v17;
  *&v14[*(v8 + 24)] = v18;
  v20 = type metadata accessor for CRLImageItemAssetData(0);
  sub_10000BE14(v1 + v20[5], v5, &unk_101A1B880);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {

    sub_10000CAAC(v5, &unk_101A1B880);
    v21 = 1;
    v22 = v34;
  }

  else
  {
    sub_100BBFCFC(v5, v11, type metadata accessor for CRLAssetData);

    v22 = v34;
    sub_100C038F0(v11, v34);
    v23 = &v11[*(v8 + 20)];
    v25 = *v23;
    v24 = *(v23 + 1);
    v26 = *&v11[*(v8 + 24)];

    sub_100FAA1C4(v11, type metadata accessor for CRLAssetData);
    v21 = 0;
    v27 = (v22 + *(v8 + 20));
    *v27 = v25;
    v27[1] = v24;
    *(v22 + *(v8 + 24)) = v26;
  }

  (*(v9 + 56))(v22, v21, 1, v8);
  v28 = *(v2 + v20[6]);
  v29 = *(v2 + v20[7]);
  v30 = *(v2 + v20[8]);
  v31 = *(v2 + v20[9]);
  v32 = v35;
  sub_100BBFCFC(v14, v35, type metadata accessor for CRLAssetData);
  sub_100601198(v22, v32 + v20[5]);
  *(v32 + v20[6]) = v28;
  *(v32 + v20[7]) = v29;
  *(v32 + v20[8]) = v30;
  *(v32 + v20[9]) = v31;
}

uint64_t sub_100FA4A08(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A257C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100FA8CAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for CRLAssetData();
  sub_100FA88F8(&qword_1019F5F38, type metadata accessor for CRLAssetData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLImageItemAssetData(0);
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + *(v9 + 24));
    v12 = 2;
    sub_1009CF2EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + *(v9 + 36));
    v12 = 5;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100FA4CCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for CRLAssetData();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1005B981C(&qword_101A257C0);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v10 = &v27 - v9;
  v11 = type metadata accessor for CRLImageItemAssetData(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v7 + 56);
  v17 = v14;
  v34 = *(v15 + 20);
  v16(&v14[v34], 1, 1, v6, v12);
  v18 = a1[3];
  v35 = a1;
  sub_100020E58(a1, v18);
  sub_100FA8CAC();
  v32 = v10;
  v19 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    sub_100005070(v35);
    sub_10000CAAC(v17 + v34, &unk_101A1B880);
  }

  else
  {
    v33 = v11;
    v20 = v29;
    LOBYTE(v37) = 0;
    sub_100FA88F8(&qword_1019F5F28, type metadata accessor for CRLAssetData);
    v21 = v30;
    v22 = v31;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100BBFCFC(v21, v17, type metadata accessor for CRLAssetData);
    LOBYTE(v37) = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1006010C0(v5, v17 + v34);
    v36 = 2;
    sub_1009CF1DC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v20;
    v24 = v33;
    *(v17 + v33[6]) = v37;
    LOBYTE(v37) = 3;
    *(v17 + v24[7]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v37) = 4;
    *(v17 + v24[8]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1005B981C(&unk_101A0D960);
    v36 = 5;
    sub_100600EA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v24[9];
    (*(v23 + 8))(v32, v22);
    *(v17 + v25) = v37;
    sub_100FAA444(v17, v28, type metadata accessor for CRLImageItemAssetData);
    sub_100005070(v35);
    return sub_100FAA1C4(v17, type metadata accessor for CRLImageItemAssetData);
  }
}

uint64_t sub_100FA5244(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_100FA52D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FA88F8(&qword_101A257D0, type metadata accessor for CRLImageItemAssetData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100FA5358(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FA88F8(&qword_101A257D0, type metadata accessor for CRLImageItemAssetData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100FA53DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100FA88F8(&qword_101A25628, type metadata accessor for CRLImageItemAssetData);
  v7 = sub_100FA88F8(&qword_101A257D8, type metadata accessor for CRLImageItemAssetData);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100FA54A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FA88F8(&qword_101A257D0, type metadata accessor for CRLImageItemAssetData);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100FA561C(uint64_t a1)
{
  v2 = sub_100FA88F8(&qword_101A25768, type metadata accessor for CRLImageItemAssetData);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100FA5698()
{
  qword_101AD89E0 = 97;
  *algn_101AD89E8 = 0xE100000000000000;
  qword_101AD89F0 = swift_getKeyPath();
  unk_101AD89F8 = 98;
  qword_101AD8A00 = 0xE100000000000000;
  qword_101AD8A08 = swift_getKeyPath();
  qword_101AD8A10 = 99;
  qword_101AD8A18 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD8A20 = result;
  return result;
}

uint64_t sub_100FA5708@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_1005B981C(&qword_101A13F18);
  v52 = *(v1 - 8);
  v53 = v1;
  __chkstk_darwin(v1);
  v51 = &v36 - v2;
  v3 = sub_1005B981C(&unk_101A0D9D0);
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = &v36 - v4;
  v45 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v45);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1005B981C(&qword_101A13F10);
  __chkstk_darwin(v55);
  v46 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v36 - v9;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for CRLAssetData();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2878 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for UUID();
  v21 = sub_1005EB3DC(v20, qword_101AD8F08);
  v22 = *(*(v20 - 8) + 16);
  v41 = v19;
  v22(v19, v21, v20);
  v23 = &v19[*(v16 + 20)];
  *v23 = 0;
  *(v23 + 1) = 0xE000000000000000;
  *&v19[*(v16 + 24)] = _swiftEmptyDictionarySingleton;
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_1005D0BD8(&v71);
  v24 = type metadata accessor for CRLMaskInfoData();
  v25 = *(*(v24 - 8) + 56);
  v37 = v15;
  v25(v12, 1, 1, v24);
  v26 = type metadata accessor for CRLImageItemCRDTData(0);
  v42 = v26[5];
  v68 = v83;
  v69 = v84;
  v70 = v85;
  v64 = v79;
  v65 = v80;
  v66 = v81;
  v67 = v82;
  v60 = v75;
  v61 = v76;
  v62 = v77;
  v63 = v78;
  v56 = v71;
  v57 = v72;
  v58 = v73;
  v59 = v74;
  v40 = sub_1005B981C(&unk_101A106C0);
  v39 = sub_1005FE9E0();
  v43 = v12;
  v27 = v54;
  CRRegister.init(wrappedValue:)();
  v44 = v26[6];
  v28 = v47;
  v25(v47, 1, 1, v24);
  sub_10000BE14(v28, v46, &qword_101A13F10);
  v38 = sub_100FA8844();
  CRRegister.init(wrappedValue:)();
  sub_10000CAAC(v28, &qword_101A13F10);
  *(v27 + v26[7]) = _swiftEmptyDictionarySingleton;
  v29 = v41;
  sub_100FAA444(v41, v6, type metadata accessor for CRLAssetData);
  v30 = v45;
  v31 = v37;
  sub_10000BE14(v37, &v6[*(v45 + 20)], &unk_101A1B880);
  *&v6[v30[6]] = 0;
  v6[v30[7]] = 2;
  v6[v30[8]] = 2;
  *&v6[v30[9]] = _swiftEmptyDictionarySingleton;
  sub_100FA88F8(&qword_101A25628, type metadata accessor for CRLImageItemAssetData);
  CRRegister.init(_:)();
  v68 = v83;
  v69 = v84;
  v70 = v85;
  v64 = v79;
  v65 = v80;
  v66 = v81;
  v67 = v82;
  v60 = v75;
  v61 = v76;
  v62 = v77;
  v63 = v78;
  v56 = v71;
  v57 = v72;
  v58 = v73;
  v59 = v74;
  v32 = v48;
  CRRegister.init(_:)();
  (*(v49 + 40))(v27 + v42, v32, v50);
  v33 = v43;
  sub_10000BE14(v43, v28, &qword_101A13F10);
  v34 = v51;
  CRRegister.init(_:)();
  sub_10000CAAC(v33, &qword_101A13F10);
  sub_10000CAAC(v31, &unk_101A1B880);
  sub_100FAA1C4(v29, type metadata accessor for CRLAssetData);
  return (*(v52 + 40))(v27 + v44, v34, v53);
}

uint64_t sub_100FA5E14@<X0>(void *a1@<X8>)
{
  if (qword_1019F2780 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = *algn_101AD89E8;
  v3 = qword_101AD89F0;
  v2 = unk_101AD89F8;
  v4 = qword_101AD8A00;
  v5 = qword_101AD8A08;
  v6 = qword_101AD8A10;
  v7 = qword_101AD8A18;
  v8 = qword_101AD8A20;
  *a1 = qword_101AD89E0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
}

uint64_t sub_100FA5EE0(uint64_t a1)
{
  v2 = sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return static CRStruct_3.fieldKeys.getter(a1, v2);
}

uint64_t sub_100FA5F50(uint64_t a1)
{
  v2 = sub_100FA88F8(&qword_101A13F50, type metadata accessor for CRLImageItemCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_100FA5FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_100FA6038()
{
  sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.actionUndoingDifference(from:)();
}

uint64_t sub_100FA60BC()
{
  sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.apply(_:)();
}

uint64_t sub_100FA6138()
{
  sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.hasDelta(from:)();
}

uint64_t sub_100FA61B4()
{
  sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.delta(_:from:)();
}

uint64_t sub_100FA6248(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_100FA62C4()
{
  sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.merge(delta:)();
}

uint64_t sub_100FA6340(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100FA63C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100FA6448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_100FA64DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_100FA6558()
{
  sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.needToFinalizeTimestamps()();
}

uint64_t sub_100FA65C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_100FA6640()
{
  sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.merge(_:)();
}

uint64_t sub_100FA66C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.merge(_:)(a1, a2, v4);
}

uint64_t sub_100FA6948(uint64_t a1)
{
  v2 = sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

  return CRStruct_3.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100FA69DC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 BOOLForKey:@"CRLImageItemsUseUnsupportedMinVersionUserDefault"];

  if (v1)
  {

    return sub_1002BC95C(999, 999, 0);
  }

  else
  {

    return sub_10073C798();
  }
}

uint64_t sub_100FA6A84()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = [v1 BOOLForKey:@"CRLUnsupportedBoardItemsPropagatesToBoardUserDefault"];

  if (v2)
  {
    return 1;
  }

  v3 = [v0 standardUserDefaults];
  v4 = [v3 BOOLForKey:@"CRLImageItemsUseUnsupportedMinVersionUserDefault"];

  if (v4)
  {
    return 1;
  }

  return sub_10073E1D8();
}

void sub_100FA6B5C(_UNKNOWN ****a1)
{
  v2 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MergeResult();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 == &off_101A25280)
  {
    v9 = qword_101AD8A28;
    swift_beginAccess();
    sub_100FAA444(a1 + v9, v4, type metadata accessor for CRLImageItemCRDTData);
    swift_beginAccess();
    sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

    CRStruct_3.merge(_:)();
    swift_endAccess();

    sub_100FAA1C4(v4, type metadata accessor for CRLImageItemCRDTData);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100FA6D8C(uint64_t a1)
{
  v3 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  if (*a1 != &off_101A25280)
  {
    goto LABEL_7;
  }

  v36 = v8;
  v37 = v5;
  v22 = *(*v1 + 736);
  swift_beginAccess();
  v38 = v1;
  sub_10000BE14(v1 + v22, v21, &unk_101A226A0);
  v23 = *(*a1 + 736);
  swift_beginAccess();
  sub_10000BE14(a1 + v23, v18, &unk_101A226A0);

  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  LOBYTE(v23) = static UUID.== infix(_:_:)();
  v24 = *(v10 + 8);
  v24(v12, v9);
  v24(v15, v9);
  if ((v23 & 1) == 0)
  {

    sub_10000CAAC(v18, &unk_101A226A0);
    sub_10000CAAC(v21, &unk_101A226A0);
LABEL_7:
    v33 = 0;
    return v33 & 1;
  }

  v25 = sub_101279020();
  sub_10000CAAC(v18, &unk_101A226A0);
  sub_10000CAAC(v21, &unk_101A226A0);
  if ((v25 & 1) == 0)
  {

    goto LABEL_7;
  }

  v26 = qword_101AD8A28;
  v27 = v38;
  swift_beginAccess();
  v28 = v27 + v26;
  v29 = v36;
  sub_100FAA444(v28, v36, type metadata accessor for CRLImageItemCRDTData);
  v30 = qword_101AD8A28;
  swift_beginAccess();
  v31 = a1 + v30;
  v32 = v37;
  sub_100FAA444(v31, v37, type metadata accessor for CRLImageItemCRDTData);
  v33 = sub_100FA97B4();

  sub_100FAA1C4(v32, type metadata accessor for CRLImageItemCRDTData);
  sub_100FAA1C4(v29, type metadata accessor for CRLImageItemCRDTData);
  return v33 & 1;
}

uint64_t sub_100FA71CC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = qword_101AD8A28;
  swift_beginAccess();
  if (a2)
  {
    sub_100FAA444(v2 + v10, v6, type metadata accessor for CRLImageItemCRDTData);
    sub_100FA88F8(&qword_101A13F50, type metadata accessor for CRLImageItemCRDTData);
    CRType.copy(renamingReferences:)();
    sub_100FAA1C4(v6, type metadata accessor for CRLImageItemCRDTData);
  }

  else
  {
    sub_100FAA444(v2 + v10, v9, type metadata accessor for CRLImageItemCRDTData);
  }

  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v11, qword_101AD6348);
  sub_100FA88F8(&qword_101A12918, type metadata accessor for CRLImageItemCRDTData);
  v12 = CRDT.serializedData(_:version:)();
  sub_100FAA1C4(v9, type metadata accessor for CRLImageItemCRDTData);
  return v12;
}

uint64_t sub_100FA741C(_UNKNOWN ****a1)
{
  v3 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  if (*a1 == &off_101A25280)
  {
    v9 = qword_101AD8A28;
    swift_beginAccess();
    sub_100FAA444(v1 + v9, v8, type metadata accessor for CRLImageItemCRDTData);
    v10 = qword_101AD8A28;
    swift_beginAccess();
    sub_100FAA444(a1 + v10, v5, type metadata accessor for CRLImageItemCRDTData);
    sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);
    v11 = CRStruct_3.hasDelta(from:)();
    sub_100FAA1C4(v5, type metadata accessor for CRLImageItemCRDTData);
    sub_100FAA1C4(v8, type metadata accessor for CRLImageItemCRDTData);
    return v11 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100FA7634(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v27 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v27);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_1005B981C(&qword_101A257E0);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = qword_101AD8A28;
    swift_beginAccess();
    sub_100FAA444(v2 + v15, v7, type metadata accessor for CRLImageItemCRDTData);
    v16 = qword_101AD8A28;
    swift_beginAccess();
    sub_100FAA444(v14 + v16, v4, type metadata accessor for CRLImageItemCRDTData);
    sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

    CRStruct_3.delta(_:from:)();
    sub_100FAA1C4(v4, type metadata accessor for CRLImageItemCRDTData);
    sub_100FAA1C4(v7, type metadata accessor for CRLImageItemCRDTData);
    v17 = v26;
    sub_10000BE14(v12, v26, &qword_101A257E0);
    v18 = sub_1005B981C(&qword_101A25790);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_10000CAAC(v12, &qword_101A257E0);

      sub_10000CAAC(v17, &qword_101A257E0);
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
      sub_10001A2F8(&qword_101A25788, &qword_101A25790);
      v22 = v29;
      v23 = PartialCRDT.deltaSerializedData(_:version:)();
      if (v22)
      {
        sub_10000CAAC(v12, &qword_101A257E0);

        return (*(v19 + 8))(v17, v18);
      }

      else
      {
        v24 = v23;
        sub_10000CAAC(v12, &qword_101A257E0);

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

uint64_t sub_100FA7AE8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v33 = *v3;
  v6 = type metadata accessor for UUID();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &unk_1014BD5F8;
  v10 = sub_1005B981C(&qword_101A25790);
  v34 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  sub_100024E98(a1, a2);
  sub_10001A2F8(&qword_101A25788, &qword_101A25790);
  v13 = v35;
  PartialCRDT.init(serializedData:)();
  if (!v13)
  {
    v31 = v8;
    v35 = 0;
    swift_beginAccess();
    type metadata accessor for CRLImageItemCRDTData(0);
    sub_100FA88F8(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);
    LOBYTE(v9) = CRStruct_3.merge(delta:)();
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

unint64_t sub_100FA7F10()
{
  v33 = type metadata accessor for CRLAssetData();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v26 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v3 = &v25 - v2;
  v30 = type metadata accessor for CRLImageItemAssetData(0) - 8;
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
  *v12 = 0x6567616D69;
  *(v12 + 8) = 0xE500000000000000;
  swift_beginAccess();
  sub_1005B981C(&unk_101A2F5B0);
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  sub_100FAA444(v7, v3, type metadata accessor for CRLAssetData);
  sub_100FAA1C4(v7, type metadata accessor for CRLImageItemAssetData);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = v27;
  v25 = *(v14 + 16);
  v25(&v27[v12], v3, v13);
  sub_100FAA1C4(v3, type metadata accessor for CRLAssetData);
  v27 = *(v14 + 56);
  (v27)(&v15[v12], 0, 1, v13);
  v16 = (v12 + v28);
  v28 = v8;
  v17 = *(v8 + 48);
  *v16 = 0x69616E626D756874;
  *(v16 + 1) = 0xE90000000000006CLL;
  swift_beginAccess();
  v18 = v29;
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  v19 = *(v30 + 28);
  if ((*(v31 + 48))(v18 + v19, 1, v33))
  {
    sub_100FAA1C4(v18, type metadata accessor for CRLImageItemAssetData);
    v20 = 1;
  }

  else
  {
    v21 = v18 + v19;
    v22 = v26;
    sub_100FAA444(v21, v26, type metadata accessor for CRLAssetData);
    sub_100FAA1C4(v18, type metadata accessor for CRLImageItemAssetData);
    v25(&v16[v17], v22, v13);
    sub_100FAA1C4(v22, type metadata accessor for CRLAssetData);
    v20 = 0;
  }

  (v27)(&v16[v17], v20, 1, v13);
  v23 = sub_100BD5554(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

uint64_t sub_100FA83F8()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A226A0);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100FAA1C4(v0 + qword_101AD8A28, type metadata accessor for CRLImageItemCRDTData);

  return swift_deallocClassInstance();
}

uint64_t sub_100FA8510()
{
  result = type metadata accessor for CRLImageItemCRDTData(319);
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

void sub_100FA85E8()
{
  sub_100FA8720();
  if (v0 <= 0x3F)
  {
    sub_100FA87D4(319, &qword_1019F5C78, &unk_101A106C0, &unk_1014907B0, sub_1005FE9E0);
    if (v1 <= 0x3F)
    {
      sub_100FA87D4(319, &qword_101A25630, &qword_101A13F10, &unk_1014BD1C0, sub_100FA8844);
      if (v2 <= 0x3F)
      {
        sub_1005FEEE8(319, &qword_1019F48F8, &type metadata accessor for AnyCRDT);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100FA8720()
{
  if (!qword_101A25620)
  {
    type metadata accessor for CRLImageItemAssetData(255);
    sub_100FA88F8(&qword_101A25628, type metadata accessor for CRLImageItemAssetData);
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_101A25620);
    }
  }
}

void sub_100FA87D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_1005C4E5C(a3);
    a5();
    v7 = type metadata accessor for CRRegister();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_100FA8844()
{
  result = qword_101A25638;
  if (!qword_101A25638)
  {
    sub_1005C4E5C(&qword_101A13F10);
    sub_100FA88F8(&qword_101A12E60, type metadata accessor for CRLMaskInfoData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25638);
  }

  return result;
}

uint64_t sub_100FA88F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100FA8968()
{
  type metadata accessor for CRLAssetData();
  if (v0 <= 0x3F)
  {
    sub_1005FEE44();
    if (v1 <= 0x3F)
    {
      sub_1005FEE9C(319, &qword_101A1AC50);
      if (v2 <= 0x3F)
      {
        sub_1005FEE9C(319, &qword_1019F5D50);
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

unint64_t sub_100FA8BA4()
{
  result = qword_101A25728;
  if (!qword_101A25728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25728);
  }

  return result;
}

unint64_t sub_100FA8BFC()
{
  result = qword_101A25730;
  if (!qword_101A25730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25730);
  }

  return result;
}

unint64_t sub_100FA8C54()
{
  result = qword_101A25738;
  if (!qword_101A25738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25738);
  }

  return result;
}

unint64_t sub_100FA8CAC()
{
  result = qword_101A25740;
  if (!qword_101A25740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25740);
  }

  return result;
}

unint64_t sub_100FA8D04()
{
  result = qword_101A25748;
  if (!qword_101A25748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25748);
  }

  return result;
}

unint64_t sub_100FA8D5C()
{
  result = qword_101A25750;
  if (!qword_101A25750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25750);
  }

  return result;
}

__n128 sub_100FA918C@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  type metadata accessor for CRLImageItemCRDTData(0);
  sub_1005B981C(&unk_101A0D9D0);
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  *(a1 + 192) = v15;
  *(a1 + 208) = v16;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 224) = v17;
  *(a1 + 160) = v13;
  *(a1 + 176) = v14;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_100FA9270()
{
  swift_beginAccess();
  type metadata accessor for CRLImageItemCRDTData(0);
  sub_1005B981C(&unk_101A0D9D0);
  CRRegister.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_100FA933C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLAssetData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_1005B981C(&unk_101A01EC0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
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

  v44 = type metadata accessor for CRLImageItemAssetData(0);
  v19 = *(v44 + 20);
  v20 = *(v11 + 48);
  sub_10000BE14(a1 + v19, v13, &unk_101A1B880);
  v21 = a2 + v19;
  v22 = v20;
  sub_10000BE14(v21, &v13[v20], &unk_101A1B880);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) == 1)
  {
    if (v23(&v13[v22], 1, v4) == 1)
    {
      sub_10000CAAC(v13, &unk_101A1B880);
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  sub_10000BE14(v13, v10, &unk_101A1B880);
  if (v23(&v13[v22], 1, v4) == 1)
  {
    sub_100FAA1C4(v10, type metadata accessor for CRLAssetData);
LABEL_17:
    v28 = &unk_101A01EC0;
LABEL_27:
    sub_10000CAAC(v13, v28);
    goto LABEL_28;
  }

  sub_100BBFCFC(&v13[v22], v7, type metadata accessor for CRLAssetData);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v29 = *(v4 + 20), v30 = *&v10[v29], v31 = *&v10[v29 + 8], v32 = &v7[v29], v30 == *v32) ? (v33 = v31 == *(v32 + 1)) : (v33 = 0), !v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_100FAA1C4(v7, type metadata accessor for CRLAssetData);
    sub_100FAA1C4(v10, type metadata accessor for CRLAssetData);
    v28 = &unk_101A1B880;
    goto LABEL_27;
  }

  v34 = sub_100B3216C(*&v10[*(v4 + 24)], *&v7[*(v4 + 24)]);
  sub_100FAA1C4(v7, type metadata accessor for CRLAssetData);
  sub_100FAA1C4(v10, type metadata accessor for CRLAssetData);
  sub_10000CAAC(v13, &unk_101A1B880);
  if ((v34 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  v24 = v44;
  v25 = *(v44 + 24);
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26)
  {
    if (!v27 || !sub_10067063C(v26, v27))
    {
      goto LABEL_28;
    }
  }

  else if (v27)
  {
    goto LABEL_28;
  }

  v37 = v24[7];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38 != 2)
  {
    v35 = 0;
    if (v39 == 2 || ((v39 ^ v38) & 1) != 0)
    {
      return v35 & 1;
    }

    goto LABEL_36;
  }

  if (v39 != 2)
  {
LABEL_28:
    v35 = 0;
    return v35 & 1;
  }

LABEL_36:
  v40 = v24[8];
  v41 = *(a1 + v40);
  v42 = *(a2 + v40);
  if (v41 == 2)
  {
    if (v42 == 2)
    {
LABEL_41:
      v35 = sub_100B3216C(*(a1 + v24[9]), *(a2 + v24[9]));
      return v35 & 1;
    }

    goto LABEL_28;
  }

  v35 = 0;
  if (v42 != 2 && ((v42 ^ v41) & 1) == 0)
  {
    goto LABEL_41;
  }

  return v35 & 1;
}

uint64_t sub_100FA97B4()
{
  v0 = type metadata accessor for CRLMaskInfoData();
  v41 = *(v0 - 8);
  v42 = v0;
  __chkstk_darwin(v0);
  v38 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1005B981C(&qword_101A13F20);
  __chkstk_darwin(v40);
  v3 = &v35 - v2;
  v4 = sub_1005B981C(&qword_101A13F10);
  __chkstk_darwin(v4 - 8);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  sub_1005B981C(&unk_101A2F5B0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v18 = sub_100FA933C(v17, v14);
  sub_100FAA1C4(v14, type metadata accessor for CRLImageItemAssetData);
  sub_100FAA1C4(v17, type metadata accessor for CRLImageItemAssetData);
  if ((v18 & 1) == 0)
  {
    goto LABEL_15;
  }

  v36 = v11;
  v19 = type metadata accessor for CRLImageItemCRDTData(0);
  sub_1005B981C(&unk_101A0D9D0);
  CRRegister.wrappedValue.getter();
  v37 = v19;
  CRRegister.wrappedValue.getter();
  v63[12] = v76;
  v63[13] = v77;
  v63[8] = v72;
  v63[9] = v73;
  v63[11] = v75;
  v63[10] = v74;
  v63[4] = v68;
  v63[5] = v69;
  v63[7] = v71;
  v63[6] = v70;
  v63[0] = v64;
  v63[1] = v65;
  v63[3] = v67;
  v63[2] = v66;
  *(&v63[26] + 8) = v79[12];
  *(&v63[27] + 8) = v79[13];
  *(&v63[22] + 8) = v79[8];
  *(&v63[23] + 8) = v79[9];
  *(&v63[24] + 8) = v79[10];
  *(&v63[25] + 8) = v79[11];
  *(&v63[18] + 8) = v79[4];
  *(&v63[19] + 8) = v79[5];
  *(&v63[20] + 8) = v79[6];
  *(&v63[21] + 8) = v79[7];
  *(&v63[16] + 8) = v79[2];
  *(&v63[17] + 8) = v79[3];
  *(&v63[14] + 8) = v79[0];
  *(&v63[15] + 8) = v79[1];
  v81[12] = v76;
  v81[13] = v77;
  v81[8] = v72;
  v81[9] = v73;
  v81[11] = v75;
  v81[10] = v74;
  v81[4] = v68;
  v81[5] = v69;
  v81[7] = v71;
  v81[6] = v70;
  v81[0] = v64;
  v81[1] = v65;
  *&v63[14] = v78;
  *(&v63[28] + 1) = v80;
  v82 = v78;
  v81[3] = v67;
  v81[2] = v66;
  if (sub_1000C0FB4(v81) == 1)
  {
    v62[12] = *(&v63[26] + 8);
    v62[13] = *(&v63[27] + 8);
    *&v62[14] = *(&v63[28] + 1);
    v62[8] = *(&v63[22] + 8);
    v62[9] = *(&v63[23] + 8);
    v62[10] = *(&v63[24] + 8);
    v62[11] = *(&v63[25] + 8);
    v62[4] = *(&v63[18] + 8);
    v62[5] = *(&v63[19] + 8);
    v62[6] = *(&v63[20] + 8);
    v62[7] = *(&v63[21] + 8);
    v62[0] = *(&v63[14] + 8);
    v62[1] = *(&v63[15] + 8);
    v62[2] = *(&v63[16] + 8);
    v62[3] = *(&v63[17] + 8);
    if (sub_1000C0FB4(v62) == 1)
    {
      v95 = v63[12];
      v96 = v63[13];
      v97 = *&v63[14];
      v91 = v63[8];
      v92 = v63[9];
      v94 = v63[11];
      v93 = v63[10];
      v87 = v63[4];
      v88 = v63[5];
      v90 = v63[7];
      v89 = v63[6];
      v83 = v63[0];
      v84 = v63[1];
      v86 = v63[3];
      v85 = v63[2];
      sub_10000CAAC(&v83, &unk_101A106C0);
      goto LABEL_8;
    }

LABEL_6:
    memcpy(v62, v63, sizeof(v62));
    v20 = &qword_1019F5EE0;
    v21 = v62;
LABEL_14:
    sub_10000CAAC(v21, v20);
    goto LABEL_15;
  }

  v59 = *(&v63[26] + 8);
  v60 = *(&v63[27] + 8);
  v61 = *(&v63[28] + 1);
  v55 = *(&v63[22] + 8);
  v56 = *(&v63[23] + 8);
  v57 = *(&v63[24] + 8);
  v58 = *(&v63[25] + 8);
  v51 = *(&v63[18] + 8);
  v52 = *(&v63[19] + 8);
  v53 = *(&v63[20] + 8);
  v54 = *(&v63[21] + 8);
  v47 = *(&v63[14] + 8);
  v48 = *(&v63[15] + 8);
  v49 = *(&v63[16] + 8);
  v50 = *(&v63[17] + 8);
  if (sub_1000C0FB4(&v47) == 1)
  {
    goto LABEL_6;
  }

  v43[12] = *(&v63[26] + 8);
  v43[13] = *(&v63[27] + 8);
  v43[8] = *(&v63[22] + 8);
  v43[9] = *(&v63[23] + 8);
  v43[10] = *(&v63[24] + 8);
  v43[11] = *(&v63[25] + 8);
  v43[4] = *(&v63[18] + 8);
  v43[5] = *(&v63[19] + 8);
  v43[6] = *(&v63[20] + 8);
  v43[7] = *(&v63[21] + 8);
  v43[0] = *(&v63[14] + 8);
  v43[1] = *(&v63[15] + 8);
  v43[2] = *(&v63[16] + 8);
  v43[3] = *(&v63[17] + 8);
  v62[12] = *(&v63[26] + 8);
  v62[13] = *(&v63[27] + 8);
  v62[8] = *(&v63[22] + 8);
  v62[9] = *(&v63[23] + 8);
  v62[10] = *(&v63[24] + 8);
  v62[11] = *(&v63[25] + 8);
  v62[4] = *(&v63[18] + 8);
  v62[5] = *(&v63[19] + 8);
  v62[6] = *(&v63[20] + 8);
  v62[7] = *(&v63[21] + 8);
  v62[0] = *(&v63[14] + 8);
  v62[1] = *(&v63[15] + 8);
  v44 = *(&v63[28] + 1);
  *&v62[14] = *(&v63[28] + 1);
  v62[2] = *(&v63[16] + 8);
  v62[3] = *(&v63[17] + 8);
  v95 = v63[12];
  v96 = v63[13];
  v97 = *&v63[14];
  v91 = v63[8];
  v92 = v63[9];
  v94 = v63[11];
  v93 = v63[10];
  v87 = v63[4];
  v88 = v63[5];
  v90 = v63[7];
  v89 = v63[6];
  v83 = v63[0];
  v84 = v63[1];
  v86 = v63[3];
  v85 = v63[2];
  sub_10000BE14(&v64, v45, &unk_101A106C0);
  sub_10000BE14(v79, v45, &unk_101A106C0);
  v22 = sub_100B931E0(&v83, v62);
  sub_10000CAAC(v43, &unk_101A106C0);
  sub_10000CAAC(v79, &unk_101A106C0);
  sub_10000CAAC(&v64, &unk_101A106C0);
  v45[12] = v63[12];
  v45[13] = v63[13];
  v46 = *&v63[14];
  v45[8] = v63[8];
  v45[9] = v63[9];
  v45[10] = v63[10];
  v45[11] = v63[11];
  v45[4] = v63[4];
  v45[5] = v63[5];
  v45[6] = v63[6];
  v45[7] = v63[7];
  v45[0] = v63[0];
  v45[1] = v63[1];
  v45[2] = v63[2];
  v45[3] = v63[3];
  sub_10000CAAC(v45, &unk_101A106C0);
  if ((v22 & 1) == 0)
  {
LABEL_15:
    v27 = 0;
    return v27 & 1;
  }

LABEL_8:
  sub_1005B981C(&qword_101A13F18);
  v23 = v36;
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v24 = *(v40 + 48);
  sub_10000BE14(v23, v3, &qword_101A13F10);
  sub_10000BE14(v8, &v3[v24], &qword_101A13F10);
  v25 = v42;
  v26 = *(v41 + 48);
  if (v26(v3, 1, v42) == 1)
  {
    sub_10000CAAC(v8, &qword_101A13F10);
    sub_10000CAAC(v23, &qword_101A13F10);
    if (v26(&v3[v24], 1, v25) == 1)
    {
      sub_10000CAAC(v3, &qword_101A13F10);
      v27 = 1;
      return v27 & 1;
    }

    goto LABEL_13;
  }

  v28 = v39;
  sub_10000BE14(v3, v39, &qword_101A13F10);
  if (v26(&v3[v24], 1, v25) == 1)
  {
    sub_10000CAAC(v8, &qword_101A13F10);
    sub_10000CAAC(v23, &qword_101A13F10);
    sub_100FAA1C4(v28, type metadata accessor for CRLMaskInfoData);
LABEL_13:
    v20 = &qword_101A13F20;
    v21 = v3;
    goto LABEL_14;
  }

  v30 = v38;
  sub_100BBFCFC(&v3[v24], v38, type metadata accessor for CRLMaskInfoData);
  if (sub_100C3EB94(v28, v30) & 1) != 0 && (v31 = (v28 + *(v25 + 20)), v32 = v31[1], v47 = *v31, v48 = v32, v33 = (v30 + *(v25 + 20)), v34 = *v33, v63[1] = v33[1], v63[0] = v34, (sub_101271C28(&v47, v63)))
  {
    v27 = sub_100B3216C(*(v28 + *(v25 + 24)), *(v30 + *(v25 + 24)));
  }

  else
  {
    v27 = 0;
  }

  sub_10000CAAC(v8, &qword_101A13F10);
  sub_10000CAAC(v23, &qword_101A13F10);
  sub_100FAA1C4(v30, type metadata accessor for CRLMaskInfoData);
  sub_100FAA1C4(v39, type metadata accessor for CRLMaskInfoData);
  sub_10000CAAC(v3, &qword_101A13F10);
  return v27 & 1;
}

uint64_t sub_100FAA1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100FAA224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446567616D69 && a2 == 0xE900000000000061;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xED0000617461446CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6150646563617274 && a2 == 0xEA00000000006874 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010158EA20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101587E50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

uint64_t sub_100FAA444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100FAA4C0()
{
  result = qword_101A257E8;
  if (!qword_101A257E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A257E8);
  }

  return result;
}

void sub_100FAA514(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) != 0 && (v9 = [objc_opt_self() availableMediaTypesForSourceType:1]) != 0)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(UIImagePickerController) init];
    [v11 setSourceType:1];
    [v11 setVideoQuality:0];
    [v11 setMediaTypes:v10];

    [v11 setDelegate:a2];
    v12 = swift_allocObject();
    v12[2] = a4;
    v12[3] = a5;
    v12[4] = v11;
    v39 = sub_100FAAA30;
    v40 = v12;
    aBlock = _NSConcreteStackBlock;
    v36 = *"";
    v37 = sub_100007638;
    v38 = &unk_1018AB830;
    v13 = _Block_copy(&aBlock);

    v14 = v11;

    [a3 presentViewController:v14 animated:1 completion:v13];
    _Block_release(v13);
  }

  else
  {
    v15 = objc_opt_self();
    v16 = [v15 mainBundle];
    v34 = a3;
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = [v15 mainBundle];
    v21 = String._bridgeToObjectiveC()();
    v22 = String._bridgeToObjectiveC()();
    v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();

    v25 = String._bridgeToObjectiveC()();

    v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

    v27 = [v15 mainBundle];
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = swift_allocObject();
    *(v31 + 16) = a4;
    *(v31 + 24) = a5;

    v32 = String._bridgeToObjectiveC()();

    v39 = sub_100FAAA04;
    v40 = v31;
    aBlock = _NSConcreteStackBlock;
    v36 = *"";
    v37 = sub_10068B39C;
    v38 = &unk_1018AB7E0;
    v33 = _Block_copy(&aBlock);

    v14 = [objc_opt_self() actionWithTitle:v32 style:0 handler:v33];
    _Block_release(v33);

    [v26 addAction:v14];
    [v34 presentViewController:v26 animated:1 completion:0];
  }
}

uint64_t sub_100FAAA68(uint64_t a1, uint64_t a2)
{
  v3[2] = type metadata accessor for MainActor();
  v3[3] = static MainActor.shared.getter();
  v8 = (*((swift_isaMask & *v2) + 0x50) + **((swift_isaMask & *v2) + 0x50));
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_10085FA90;

  return v8(a1, a2);
}

id sub_100FAAC84(uint64_t a1, char a2)
{
  v52 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  __chkstk_darwin(v52);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  v51 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC8Freeform23CRLBoardFavoriteCommand_initialState] = _swiftEmptySetSingleton;
  if (*(a1 + 16))
  {
    *&v2[OBJC_IVAR____TtC8Freeform23CRLBoardFavoriteCommand_boardIdentifiers] = a1;
    v49 = v2;
    v50 = a2 & 1;
    v2[OBJC_IVAR____TtC8Freeform23CRLBoardFavoriteCommand_favorite] = a2 & 1;
    v54 = _swiftEmptySetSingleton;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v17 = 0;
    while (v15)
    {
      v18 = v17;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1005F1308(*(a1 + 48) + *(v51 + 72) * (v19 | (v18 << 6)), v12);
      sub_1005F1308(v12, v6);
      v6[*(v52 + 20)] = v50;
      sub_100E6F088(v9, v6);
      sub_100FB0F44(v9, type metadata accessor for CRLBoardIdentifierAndValue);
      sub_100FB0F44(v12, type metadata accessor for CRLBoardIdentifier);
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        v20 = v49;
        *&v49[OBJC_IVAR____TtC8Freeform23CRLBoardFavoriteCommand_newState] = v54;
        v21 = type metadata accessor for CRLBoardFavoriteCommand();
        v53.receiver = v20;
        v53.super_class = v21;
        return objc_msgSendSuper2(&v53, "init");
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  v23 = objc_opt_self();
  v24 = [v23 _atomicIncrementAssertCount];
  v54 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v54);
  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  v27 = [v26 lastPathComponent];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v31 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v24;
  v33 = sub_1005CF000();
  *(inited + 96) = v33;
  v34 = sub_1005CF04C();
  *(inited + 104) = v34;
  *(inited + 72) = v25;
  *(inited + 136) = &type metadata for String;
  v35 = sub_1000053B0();
  *(inited + 112) = v28;
  *(inited + 120) = v30;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v35;
  *(inited + 152) = 42;
  v36 = v54;
  *(inited + 216) = v33;
  *(inited + 224) = v34;
  *(inited + 192) = v36;
  v37 = v25;
  v38 = v36;
  v39 = static os_log_type_t.error.getter();
  sub_100005404(v31, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v40 = static os_log_type_t.error.getter();
  sub_100005404(v31, &_mh_execute_header, v40, "CRLBoardFavoriteCommand received an empty board list", 52, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "CRLBoardFavoriteCommand received an empty board list");
  type metadata accessor for __VaListBuilder();
  v41 = swift_allocObject();
  v41[2] = 8;
  v41[3] = 0;
  v41[4] = 0;
  v41[5] = 0;
  v42 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v45 = String._bridgeToObjectiveC()();

  [v23 handleFailureInFunction:v43 file:v44 lineNumber:42 isFatal:1 format:v45 args:v42];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v46, v47);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100FAB2A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = _s5BoardVMa(0);
  v2[8] = swift_task_alloc();
  v2[9] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v4;
  v2[13] = v3;

  return _swift_task_switch(sub_100FAB400, v4, v3);
}

uint64_t sub_100FAB400()
{
  v20 = v0[4];
  v21 = v0[9];
  v1 = *(v0[3] + OBJC_IVAR____TtC8Freeform23CRLBoardFavoriteCommand_boardIdentifiers);
  v19 = v0[7];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_9:
    v14 = v0[10];
    v15 = v0[8];
    sub_1005F1308(*(v1 + 48) + *(v21 + 72) * (__clz(__rbit64(v4)) | (v7 << 6)), v14);
    sub_1010AB99C(v14, v15);
    v8 = v0[8];
    v9 = *(v8 + *(v19 + 56));
    sub_100FB0F44(v8, _s5BoardVMa);
    v4 &= v4 - 1;
    v10 = v0[10];
    v12 = v0[5];
    v11 = v0[6];
    sub_1005F1308(v10, v12);
    *(v12 + *(v20 + 20)) = v9;
    sub_100E6F088(v11, v12);
    sub_100FB0F44(v11, type metadata accessor for CRLBoardIdentifierAndValue);
    result = sub_100FB0F44(v10, type metadata accessor for CRLBoardIdentifier);
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v5)
    {
      break;
    }

    v4 = *(v1 + 56 + 8 * v13);
    ++v7;
    if (v4)
    {
      v7 = v13;
      goto LABEL_9;
    }
  }

  v16 = v0[3];

  *(v16 + OBJC_IVAR____TtC8Freeform23CRLBoardFavoriteCommand_initialState) = _swiftEmptySetSingleton;

  v17 = *(v16 + OBJC_IVAR____TtC8Freeform23CRLBoardFavoriteCommand_newState);
  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = sub_100FAB668;

  return sub_1010B58EC(v17);
}

uint64_t sub_100FAB668()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_100FAB838;
  }

  else
  {
    v5 = sub_100FAB7A4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100FAB7A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FAB838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FAB8CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100FAB964, v4, v3);
}

uint64_t sub_100FAB964()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC8Freeform23CRLBoardFavoriteCommand_initialState);
  v0[7] = v1;

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100FABA20;

  return sub_1010B58EC(v1);
}

uint64_t sub_100FABA20()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100FABB3C;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100867728;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100FABB3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FABBAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100FABC44, v4, v3);
}

uint64_t sub_100FABC44()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8Freeform23CRLBoardFavoriteCommand_newState);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100FABCE8;

  return sub_1010B58EC(v1);
}

uint64_t sub_100FABCE8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1008676F8;
  }

  else
  {
    v5 = sub_100867728;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100FABE24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

id sub_100FAC088(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *&v1[OBJC_IVAR____TtC8Freeform21CRLBoardDeleteCommand_boardIdentifiers] = a1;
    v29.receiver = v1;
    v29.super_class = type metadata accessor for CRLBoardDeleteCommand();
    return objc_msgSendSuper2(&v29, "init");
  }

  else
  {
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
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
    v13 = sub_1005CF000();
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
    *(inited + 152) = 88;
    v16 = v28;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "CRLBoardDeleteCommand received an empty board list", 50, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "CRLBoardDeleteCommand received an empty board list");
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

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:88 isFatal:1 format:v25 args:v22];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v26, v27);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100FAC45C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100FAC4F4, v4, v3);
}

uint64_t sub_100FAC4F4()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8Freeform21CRLBoardDeleteCommand_boardIdentifiers);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100FABCE8;

  return sub_1010B719C(v1);
}

uint64_t sub_100FAC598(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100FAC630, v4, v3);
}

uint64_t sub_100FAC630()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8Freeform21CRLBoardDeleteCommand_boardIdentifiers);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100FAC6D4;

  return sub_1010C999C(v1);
}

uint64_t sub_100FAC6D4()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100860598;
  }

  else
  {
    v5 = sub_100860534;
  }

  return _swift_task_switch(v5, v4, v3);
}

id sub_100FAC8C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *&v1[OBJC_IVAR____TtC8Freeform23CRLBoardUndeleteCommand_boardIdentifiers] = a1;
    v29.receiver = v1;
    v29.super_class = type metadata accessor for CRLBoardUndeleteCommand();
    return objc_msgSendSuper2(&v29, "init");
  }

  else
  {
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
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
    v13 = sub_1005CF000();
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
    *(inited + 152) = 116;
    v16 = v28;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "CRLBoardUndeleteCommand received an empty board list", 52, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "CRLBoardUndeleteCommand received an empty board list");
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

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:116 isFatal:1 format:v25 args:v22];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v26, v27);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100FACC98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100FACD30, v4, v3);
}

uint64_t sub_100FACD30()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8Freeform23CRLBoardUndeleteCommand_boardIdentifiers);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100FABCE8;

  return sub_1010C999C(v1);
}

uint64_t sub_100FACDD4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100FACE6C, v4, v3);
}

uint64_t sub_100FACE6C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8Freeform23CRLBoardUndeleteCommand_boardIdentifiers);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100FABCE8;

  return sub_1010B719C(v1);
}

uint64_t sub_100FACFCC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1005B981C(&unk_1019FA3E0);
  v2[4] = swift_task_alloc();
  v3 = _s5BoardVMa(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v5;
  v2[13] = v4;

  return _swift_task_switch(sub_100FAD17C, v5, v4);
}

uint64_t sub_100FAD17C()
{
  v1 = v0[10];
  v2 = *(v0[3] + OBJC_IVAR____TtC8Freeform24CRLBoardDuplicateCommand_sourceBoardIdentifiers);
  v3 = sub_1005B981C(&qword_1019F3480);
  (*(*(v3 - 8) + 56))(v1, 1, 5, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_100FAD28C;
  v5 = v0[10];

  return (sub_1010FBA80)(v2, v5);
}

uint64_t sub_100FAD28C(uint64_t a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[10];
  if (v1)
  {
    sub_100FB0F44(v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v6 = v4[12];
    v7 = v4[13];
    v8 = sub_100FAD698;
  }

  else
  {
    v4[16] = a1;
    sub_100FB0F44(v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v6 = v4[12];
    v7 = v4[13];
    v8 = sub_100FAD3FC;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100FAD3FC()
{
  v1 = v0[16];
  v2 = v0[3];

  v3 = OBJC_IVAR____TtC8Freeform24CRLBoardDuplicateCommand_duplicateBoardIdentifiers;
  *(v2 + OBJC_IVAR____TtC8Freeform24CRLBoardDuplicateCommand_duplicateBoardIdentifiers) = v1;

  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v0[8];
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    v25 = v0[6];
    v9 = (v25 + 56);
    v10 = v0[15];

    v11 = _swiftEmptyArrayStorage;
    do
    {
      v14 = v0[9];
      v15 = v0[4];
      sub_1005F1308(v7, v14);
      sub_1010AB99C(v14, v15);
      v16 = v0[9];
      if (v10)
      {
        v13 = v0[4];
        v12 = v0[5];

        sub_100FB0F44(v16, type metadata accessor for CRLBoardIdentifier);
        (*v9)(v13, 1, 1, v12);
        sub_1008E6900(v13);
      }

      else
      {
        v17 = v0[7];
        v19 = v0[4];
        v18 = v0[5];
        sub_100FB0F44(v0[9], type metadata accessor for CRLBoardIdentifier);
        (*v9)(v19, 0, 1, v18);
        sub_100FB0EE0(v19, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100B36CD4(0, v11[2] + 1, 1, v11);
        }

        v21 = v11[2];
        v20 = v11[3];
        if (v21 >= v20 >> 1)
        {
          v11 = sub_100B36CD4(v20 > 1, v21 + 1, 1, v11);
        }

        v22 = v0[7];
        v11[2] = v21 + 1;
        sub_100FB0EE0(v22, v11 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21);
      }

      v10 = 0;
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  *(v0[3] + OBJC_IVAR____TtC8Freeform24CRLBoardDuplicateCommand_duplicateBoardViewModels) = v11;

  v23 = v0[1];

  return v23();
}

uint64_t sub_100FAD698()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FAD730(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100FAD7C8, v4, v3);
}

uint64_t sub_100FAD7C8()
{

  v2 = sub_10004B3DC(v1);
  *(v0 + 56) = v2;

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_100FAD888;

  return sub_1010B719C(v2);
}

uint64_t sub_100FAD888()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100FB0FA4;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100867728;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100FAD9A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100FADA3C, v4, v3);
}

uint64_t sub_100FADA3C()
{

  v2 = sub_10004B3DC(v1);
  *(v0 + 56) = v2;

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_100FAD888;

  return sub_1010C999C(v2);
}

uint64_t sub_100FADB80()
{
}

uint64_t sub_100FADD78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100FADE10, v4, v3);
}

uint64_t sub_100FADE10()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_boardIdentifier;
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_boardTitle);
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_boardTitle + 8);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_100FADEE0;

  return sub_1010B3FC4(v1 + v2, v4, v3, 0);
}

uint64_t sub_100FADEE0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = v6[5];
    v8 = v6[6];
    v9 = sub_1008676F8;
  }

  else
  {
    v6[9] = a2;
    v6[10] = a1;
    v7 = v6[5];
    v8 = v6[6];
    v9 = sub_100FAE014;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100FAE014()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[3];

  v4 = (v3 + OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_previousBoardTitle);
  *v4 = v2;
  v4[1] = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_100FAE09C(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  type metadata accessor for MainActor();
  v2[33] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[34] = v4;
  v2[35] = v3;

  return _swift_task_switch(sub_100FAE134, v4, v3);
}

uint64_t sub_100FAE134()
{
  v33 = v0;
  v1 = v0[32];
  v2 = (v1 + OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_previousBoardTitle);
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_previousBoardTitle + 8);
  v0[36] = v3;
  if (v3)
  {
    v4 = *v2;
    v5 = OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_boardIdentifier;

    v6 = swift_task_alloc();
    v0[37] = v6;
    *v6 = v0;
    v6[1] = sub_100FAE5C0;

    return sub_1010B3FC4(v1 + v5, v4, v3, 1);
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 _atomicIncrementAssertCount];
    v32 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v32);
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
    *(inited + 152) = 186;
    v21 = v32;
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

    [v8 handleFailureInFunction:v28 file:v29 lineNumber:186 isFatal:0 format:v30 args:v27];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_100FAE5C0()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_100FAE758;
  }

  else
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_100FAE6F4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100FAE6F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FAE758()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FAE7DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

id sub_100FAE8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100AD5FEC(a3, a4, 0, 0);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

uint64_t sub_100FAE984()
{
  sub_100FB0F44(v0 + OBJC_IVAR____TtC8Freeform23CRLSetBoardTitleCommand_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
}

uint64_t type metadata accessor for CRLSetBoardTitleCommand()
{
  result = qword_101A25928;
  if (!qword_101A25928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100FAEAD8()
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

uint64_t sub_100FAEB7C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v4;
  v2[12] = v3;

  return _swift_task_switch(sub_100FAEC14, v4, v3);
}

uint64_t sub_100FAEC14()
{
  v1 = (*(v0 + 72) + OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_boardLibrary);
  v3 = *v1;
  v2 = v1[1];
  v6 = (*((swift_isaMask & **(v0 + 64)) + 0x50) + **((swift_isaMask & **(v0 + 64)) + 0x50));
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_100FAED5C;

  return v6(v3, v2);
}

uint64_t sub_100FAED5C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_100FAEFB0;
  }

  else
  {
    v5 = sub_100FAEE98;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100FAEE98()
{
  v1 = v0[9];
  v2 = v0[8];

  v3 = OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_undoStack;
  swift_beginAccess();
  v4 = v2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v5 = v0[9];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v6 = OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_redoStack;
  swift_beginAccess();
  *(v5 + v6) = _swiftEmptyArrayStorage;

  v7 = v0[1];

  return v7();
}

uint64_t sub_100FAEFB0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100FAF020(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  sub_100FAF09C(a3);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100FAF09C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_13:

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);
LABEL_8:
    v7 = (*((swift_isaMask & *v6) + 0x68))();

    return v7;
  }

  __break(1u);
  return result;
}

BOOL sub_100FAF1DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 != 0;
}

uint64_t sub_100FAF24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[67] = a5;
  v5[66] = a4;
  type metadata accessor for MainActor();
  v5[68] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[69] = v7;
  v5[70] = v6;

  return _swift_task_switch(sub_100FAF2EC, v7, v6);
}

uint64_t sub_100FAF2EC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = v0[67];
    v4 = result + OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_boardLibrary;
    v5 = *(result + OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_boardLibrary);
    v0[71] = v5;
    v6 = *(v4 + 8);
    swift_unknownObjectRetain();

    v7 = *((swift_isaMask & *v3) + 0x58);
    swift_unknownObjectRetain();
    v9 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[72] = v8;
    *v8 = v0;
    v8[1] = sub_100FAF484;

    return v9(v5, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100FAF484()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = *(v2 + 560);
    v4 = *(v2 + 552);
    v5 = sub_100FAF6D0;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 560);
    v4 = *(v2 + 552);
    v5 = sub_100FAF5A8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100FAF5A8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 536);
    v4 = OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_redoStack;
    swift_beginAccess();
    v5 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100FAF6D0()
{
  v55 = v0;

  swift_unknownObjectRelease_n();
  if (qword_1019F2278 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v1 = static OS_os_log.commandController;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v3 = Error.localizedDescription.getter();
    v5 = v4;
    *(inited + 56) = &type metadata for String;
    v6 = sub_1000053B0();
    *(inited + 64) = v6;
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    v7 = static os_log_type_t.error.getter();
    sub_100005404(v1, &_mh_execute_header, v7, "Board library command execution failed with error %@", 52, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    *(v8 + 32) = Error.localizedDescription.getter();
    v53 = v8 + 32;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = v6;
    *(v8 + 40) = v9;
    v51 = objc_opt_self();
    v10 = [v51 _atomicIncrementAssertCount];
    v54 = [objc_allocWithZone(NSString) init];
    sub_100604538(v8, &v54);
    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlAssert;
    v52 = v0;
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_10146CA70;
    *(v18 + 56) = &type metadata for Int32;
    *(v18 + 64) = &protocol witness table for Int32;
    *(v18 + 32) = v10;
    v19 = sub_1005CF000();
    *(v18 + 96) = v19;
    v20 = sub_1005CF04C();
    *(v18 + 72) = v11;
    *(v18 + 136) = &type metadata for String;
    *(v18 + 144) = v6;
    *(v18 + 104) = v20;
    *(v18 + 112) = v14;
    *(v18 + 120) = v16;
    *(v18 + 176) = &type metadata for UInt;
    *(v18 + 184) = &protocol witness table for UInt;
    *(v18 + 152) = 257;
    v21 = v54;
    *(v18 + 216) = v19;
    *(v18 + 224) = v20;
    *(v18 + 192) = v21;
    v22 = v11;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v18);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v25, "Command execution failed with error %@", 38, 2, v8);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v27 = v26 + 3;
    v26[4] = 0;
    v26[5] = 0;
    v28 = *(v8 + 16);
    v0 = v8;
    if (!v28)
    {
      break;
    }

    v29 = 0;
    while (1)
    {
      sub_100020E58((v53 + 40 * v29), *(v53 + 40 * v29 + 24));
      v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v31 = *v27;
      v32 = *(v30 + 16);
      v33 = __OFADD__(*v27, v32);
      v34 = *v27 + v32;
      if (v33)
      {
        break;
      }

      v35 = v26[4];
      if (v35 >= v34)
      {
        goto LABEL_21;
      }

      if (v35 + 0x4000000000000000 < 0)
      {
        goto LABEL_34;
      }

      v36 = v26[5];
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      v26[4] = v34;
      if ((v34 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_35;
      }

      v37 = v30;
      v38 = swift_slowAlloc();
      v39 = v38;
      v26[5] = v38;
      if (v36)
      {
        if (v38 != v36 || v38 >= &v36[8 * v31])
        {
          memmove(v38, v36, 8 * v31);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v30 = v37;
LABEL_21:
        v39 = v26[5];
        if (!v39)
        {
          goto LABEL_28;
        }

        goto LABEL_22;
      }

      v30 = v37;
      if (!v39)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v41 = *(v30 + 16);
      if (v41)
      {
        v42 = (v30 + 32);
        v43 = *v27;
        while (1)
        {
          v44 = *v42++;
          *&v39[8 * v43] = v44;
          v43 = *v27 + 1;
          if (__OFADD__(*v27, 1))
          {
            break;
          }

          *v27 = v43;
          if (!--v41)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }

LABEL_6:

      if (++v29 == v28)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_29:
  v45 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  [v51 handleFailureInFunction:v46 file:v47 lineNumber:257 isFatal:0 format:v48 args:v45];

  swift_setDeallocating();
  swift_arrayDestroy();

  v49 = *(v52 + 8);

  return v49();
}

void sub_100FAFDC4(SEL *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1005B981C(&qword_1019FB750);
  *&v9 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v11 = &v25 - v10;
  if ([v4 *a1])
  {
    a2 = *a2;
    swift_beginAccess();
    v12 = *(a2 + v4);
    if (!(v12 >> 62))
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_11;
  }

LABEL_4:
  v13 = sub_100FB0CA4(sub_10113E260);
  if (v13)
  {
LABEL_8:
    v18 = v13;
    swift_endAccess();
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v21 = v18;
    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v20;
    v23[5] = v21;

    sub_10064191C(0, 0, v11, a4, v23);

    return;
  }

  v14 = *(a2 + v4);
  if (v14 >> 62)
  {
LABEL_12:
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v16 = __OFSUB__(v24, 1);
    v17 = v24 - 1;
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (!v16)
  {
LABEL_7:
    v13 = sub_10106B378(v17);
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_100FB0000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[67] = a5;
  v5[66] = a4;
  type metadata accessor for MainActor();
  v5[68] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[69] = v7;
  v5[70] = v6;

  return _swift_task_switch(sub_100FB00A0, v7, v6);
}

uint64_t sub_100FB00A0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = v0[67];
    v4 = result + OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_boardLibrary;
    v5 = *(result + OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_boardLibrary);
    v0[71] = v5;
    v6 = *(v4 + 8);
    swift_unknownObjectRetain();

    v7 = *((swift_isaMask & *v3) + 0x60);
    swift_unknownObjectRetain();
    v9 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[72] = v8;
    *v8 = v0;
    v8[1] = sub_100FB0238;

    return v9(v5, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100FB0238()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = *(v2 + 560);
    v4 = *(v2 + 552);
    v5 = sub_100FB0484;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 560);
    v4 = *(v2 + 552);
    v5 = sub_100FB035C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100FB035C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 536);
    v4 = OBJC_IVAR____TtC8Freeform32CRLBoardLibraryCommandController_undoStack;
    swift_beginAccess();
    v5 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100FB0484()
{
  v55 = v0;

  swift_unknownObjectRelease_n();
  if (qword_1019F2278 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v1 = static OS_os_log.commandController;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v3 = Error.localizedDescription.getter();
    v5 = v4;
    *(inited + 56) = &type metadata for String;
    v6 = sub_1000053B0();
    *(inited + 64) = v6;
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    v7 = static os_log_type_t.error.getter();
    sub_100005404(v1, &_mh_execute_header, v7, "Board library command execution failed with error %@", 52, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    *(v8 + 32) = Error.localizedDescription.getter();
    v53 = v8 + 32;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = v6;
    *(v8 + 40) = v9;
    v51 = objc_opt_self();
    v10 = [v51 _atomicIncrementAssertCount];
    v54 = [objc_allocWithZone(NSString) init];
    sub_100604538(v8, &v54);
    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlAssert;
    v52 = v0;
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_10146CA70;
    *(v18 + 56) = &type metadata for Int32;
    *(v18 + 64) = &protocol witness table for Int32;
    *(v18 + 32) = v10;
    v19 = sub_1005CF000();
    *(v18 + 96) = v19;
    v20 = sub_1005CF04C();
    *(v18 + 72) = v11;
    *(v18 + 136) = &type metadata for String;
    *(v18 + 144) = v6;
    *(v18 + 104) = v20;
    *(v18 + 112) = v14;
    *(v18 + 120) = v16;
    *(v18 + 176) = &type metadata for UInt;
    *(v18 + 184) = &protocol witness table for UInt;
    *(v18 + 152) = 272;
    v21 = v54;
    *(v18 + 216) = v19;
    *(v18 + 224) = v20;
    *(v18 + 192) = v21;
    v22 = v11;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v18);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v25, "Command execution failed with error %@", 38, 2, v8);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v27 = v26 + 3;
    v26[4] = 0;
    v26[5] = 0;
    v28 = *(v8 + 16);
    v0 = v8;
    if (!v28)
    {
      break;
    }

    v29 = 0;
    while (1)
    {
      sub_100020E58((v53 + 40 * v29), *(v53 + 40 * v29 + 24));
      v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v31 = *v27;
      v32 = *(v30 + 16);
      v33 = __OFADD__(*v27, v32);
      v34 = *v27 + v32;
      if (v33)
      {
        break;
      }

      v35 = v26[4];
      if (v35 >= v34)
      {
        goto LABEL_21;
      }

      if (v35 + 0x4000000000000000 < 0)
      {
        goto LABEL_34;
      }

      v36 = v26[5];
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      v26[4] = v34;
      if ((v34 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_35;
      }

      v37 = v30;
      v38 = swift_slowAlloc();
      v39 = v38;
      v26[5] = v38;
      if (v36)
      {
        if (v38 != v36 || v38 >= &v36[8 * v31])
        {
          memmove(v38, v36, 8 * v31);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v30 = v37;
LABEL_21:
        v39 = v26[5];
        if (!v39)
        {
          goto LABEL_28;
        }

        goto LABEL_22;
      }

      v30 = v37;
      if (!v39)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v41 = *(v30 + 16);
      if (v41)
      {
        v42 = (v30 + 32);
        v43 = *v27;
        while (1)
        {
          v44 = *v42++;
          *&v39[8 * v43] = v44;
          v43 = *v27 + 1;
          if (__OFADD__(*v27, 1))
          {
            break;
          }

          *v27 = v43;
          if (!--v41)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }

LABEL_6:

      if (++v29 == v28)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_29:
  v45 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  [v51 handleFailureInFunction:v46 file:v47 lineNumber:272 isFatal:0 format:v48 args:v45];

  swift_setDeallocating();
  swift_arrayDestroy();

  v49 = *(v52 + 8);

  return v49();
}

id sub_100FB0BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100FB0C28(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  a4(*(a1 + *a3));
}

uint64_t sub_100FB0CA4(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100FB0D18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_100FB0000(a1, v4, v5, v7, v6);
}

uint64_t sub_100FB0DD8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100FB0E20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100FAF24C(a1, v4, v5, v7, v6);
}

uint64_t sub_100FB0EE0(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100FB0F44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100FB0FA8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a3;
  v5 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v5 - 8);
  v63 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v52 - v8;
  v9 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v9 - 8);
  v62 = &v52 - v10;
  v11 = type metadata accessor for CRLProto_Data(0);
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for UUID();
  v59 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  v20 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for CRLProto_RefuseOrEndFollow(0);
  __chkstk_darwin(v21);
  v23 = (&v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100FB1AB8();
  v24 = v67;
  Message.init(serializedData:extensions:partial:options:)();
  if (v24)
  {
    return sub_10002640C(a1, a2);
  }

  v55 = a1;
  v56 = v19;
  v26 = v59;
  v53 = v14;
  v54 = a2;
  v27 = *(v21 + 24);
  v67 = v23;
  v28 = v23 + v27;
  v29 = v62;
  sub_10000BE14(v28, v62, &qword_1019F67C0);
  v30 = v61;
  v31 = *(v60 + 48);
  if (v31(v29, 1, v61) == 1)
  {
    *v13 = xmmword_10146F370;
    UnknownStorage.init()();
    v32 = v31(v29, 1, v30);
    v33 = v63;
    v34 = v16;
    if (v32 != 1)
    {
      sub_10000CAAC(v29, &qword_1019F67C0);
    }
  }

  else
  {
    sub_100683F6C(v29, v13);
    v33 = v63;
    v34 = v16;
  }

  v35 = *v13;
  v36 = v13[1];
  sub_100024E98(*v13, v36);
  sub_100FB1B10(v13, type metadata accessor for CRLProto_Data);
  v37 = v56;
  result = UUID.init(crl_data:)(v35, v36);
  v38 = *v67;
  if ((*v67 & 0x8000000000000000) == 0)
  {
    if (v38 <= 1)
    {
      v39 = *v67;
    }

    else
    {
      v39 = 0;
    }

    v63 = v39;
    v40 = v26;
    v41 = *(v26 + 16);
    v42 = v57;
    v43 = v53;
    v41(v57, v37, v53);
    (*(v40 + 56))(v42, 0, 1, v43);
    sub_10000BE14(v42, v33, &qword_1019F6990);
    v44 = (*(v40 + 48))(v33, 1, v43);
    v45 = v58;
    if (v44 == 1)
    {
      sub_10000CAAC(v33, &qword_1019F6990);
      v47 = v54;
      v46 = v55;
    }

    else
    {
      v48 = *(v40 + 32);
      v48(v34, v33, v43);
      if (v38 <= 1)
      {
        sub_10000CAAC(v42, &qword_1019F6990);
        v48(v45, v34, v43);
        sub_10002640C(v55, v54);
        *&v45[*(type metadata accessor for CRLRefuseOrEndFollow() + 20)] = v63;
        (*(v40 + 8))(v56, v43);
        v51 = v67;
        return sub_100FB1B10(v51, type metadata accessor for CRLProto_RefuseOrEndFollow);
      }

      (*(v40 + 8))(v34, v43);
      v47 = v54;
      v46 = v55;
      v37 = v56;
    }

    v49 = v67;
    sub_1006B305C();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    sub_10000CAAC(v42, &qword_1019F6990);
    sub_10002640C(v46, v47);
    (*(v40 + 8))(v37, v53);
    v51 = v49;
    return sub_100FB1B10(v51, type metadata accessor for CRLProto_RefuseOrEndFollow);
  }

  __break(1u);
  return result;
}

uint64_t sub_100FB16E4()
{
  v0 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - v1;
  v3 = type metadata accessor for CRLProto_Data(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for CRLProto_RefuseOrEndFollow(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 0;
  UnknownStorage.init()();
  v23 = v10;
  v13 = *(v10 + 24);
  v14 = *(v4 + 56);
  v14(&v12[v13], 1, 1, v3);
  v22 = xmmword_10146F370;
  *v9 = xmmword_10146F370;
  UnknownStorage.init()();
  sub_10000CAAC(&v12[v13], &qword_1019F67C0);
  sub_100683F6C(v9, &v12[v13]);
  v25 = v14;
  v14(&v12[v13], 0, 1, v3);
  v15 = v2;
  v24 = UUID.crl_data()();
  v17 = v16;
  sub_10000BE14(&v12[v13], v15, &qword_1019F67C0);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) == 1)
  {
    *v6 = v22;
    UnknownStorage.init()();
    if (v18(v15, 1, v3) != 1)
    {
      sub_10000CAAC(v15, &qword_1019F67C0);
    }
  }

  else
  {
    sub_100683F6C(v15, v6);
  }

  sub_10002640C(*v6, *(v6 + 1));
  *v6 = v24;
  *(v6 + 1) = v17;
  sub_10000CAAC(&v12[v13], &qword_1019F67C0);
  sub_100683F6C(v6, &v12[v13]);
  v25(&v12[v13], 0, 1, v3);
  result = type metadata accessor for CRLRefuseOrEndFollow();
  v20 = *(v26 + *(result + 20));
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    *v12 = v20;
    sub_100FB1AB8();
    v21 = Message.serializedData(partial:)();
    sub_100FB1B10(v12, type metadata accessor for CRLProto_RefuseOrEndFollow);
    return v21;
  }

  return result;
}

uint64_t type metadata accessor for CRLRefuseOrEndFollow()
{
  result = qword_101A259D0;
  if (!qword_101A259D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100FB1AB8()
{
  result = qword_101A1FED0;
  if (!qword_101A1FED0)
  {
    type metadata accessor for CRLProto_RefuseOrEndFollow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1FED0);
  }

  return result;
}

uint64_t sub_100FB1B10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100FB1BA8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100FB1C20()
{
  result = qword_101A25A08;
  if (!qword_101A25A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25A08);
  }

  return result;
}

unint64_t sub_100FB1C74()
{
  result = qword_101A25A10;
  if (!qword_101A25A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25A10);
  }

  return result;
}

char *sub_100FB1CC8(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC8Freeform17CRLiOSFindSession_findReplaceController] = a1;
  swift_unknownObjectWeakAssign();
  v13.receiver = v2;
  v13.super_class = type metadata accessor for CRLiOSFindSession();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v13, "init");
  [v6 setSearchResultDisplayStyle:0];
  v7 = *&v6[OBJC_IVAR____TtC8Freeform17CRLiOSFindSession_findReplaceController];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_100FB2904;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = *"";
  v12[2] = sub_100FB1EC4;
  v12[3] = &unk_1018AB918;
  v9 = _Block_copy(v12);
  v10 = v7;

  [v10 setSearchProgressBlock:v9];
  _Block_release(v9);

  return v6;
}

void sub_100FB1E44(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = swift_unknownObjectWeakLoadStrong();

      [v4 updateResultCount];
    }
  }
}

uint64_t sub_100FB1EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_100FB1FC0(uint64_t a1)
{
  v2 = a1 != 0;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSFindSession_findReplaceController);
  [v3 setSearchHighlightsEnabled:1];
  [v3 findNextResultInDirection:v2];
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong updateResultCount];
}

id sub_100FB20B0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong searchText];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        v8 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLiOSFindSession_findReplaceController);
        v9 = String._bridgeToObjectiveC()();
        [v8 setSearchString:v9];

        v10 = swift_unknownObjectWeakLoadStrong();
        [v10 updateResultCount];
      }
    }
  }

  v11 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLiOSFindSession_findReplaceController);

  return [v11 invalidateSearchResults];
}

void sub_100FB21FC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 wordMatchMethod] == 2;
    v6 = [v4 stringCompareOptions];

    a3 = (v6 & 1 | (8 * v5));
  }

  v7 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLiOSFindSession_findReplaceController);
  [v7 setSearchOptions:a3];
  v8 = String._bridgeToObjectiveC()();
  [v7 setSearchString:v8];
}

uint64_t sub_100FB2380()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLiOSFindSession_findReplaceController);
  v2 = [v1 findReplaceDelegate];
  if (v2)
  {
    v3 = [v2 interactiveCanvasControllerForFindController:v1];
    swift_unknownObjectRelease();
    v4 = [v3 editingDisabled];

    return v4 ^ 1;
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [v6 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
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
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v16 = sub_1005CF000();
    *(inited + 96) = v16;
    v17 = sub_1005CF04C();
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 80;
    v19 = v29;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "No icc for search", 17, 2, _swiftEmptyArrayStorage);

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

    [v6 handleFailureInFunction:v26 file:v27 lineNumber:80 isFatal:0 format:v28 args:v25];

    return 0;
  }
}

id sub_100FB2860()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSFindSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100FB290C()
{
  result = [objc_allocWithZone(type metadata accessor for CRLFreehandDrawingHandwrittenContentAccessibilityCache()) init];
  qword_101AD8A48 = result;
  return result;
}

id sub_100FB2A10()
{
  sub_1005B981C(&qword_101A1EA40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10146C4D0;
  *(v0 + 32) = UIApplicationDidReceiveMemoryWarningNotification;
  *(v0 + 40) = @"CRLActiveBoardDidCloseToRemoveAllCachedDrawingIndexedContents";
  v1 = qword_1019F1B88;
  v2 = UIApplicationDidReceiveMemoryWarningNotification;
  v3 = @"CRLActiveBoardDidCloseToRemoveAllCachedDrawingIndexedContents";
  if (v1 != -1)
  {
    swift_once();
  }

  v4 = static CRLMathCalculationController.mathHintsModeChangedNotificationName;
  *(v0 + 48) = static CRLMathCalculationController.mathHintsModeChangedNotificationName;
  off_101A25A50 = v0;

  return v4;
}

id sub_100FB2AE0()
{
  v1 = OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_stringsForDrawings;
  v2 = sub_100BD97A4(_swiftEmptyArrayStorage);
  sub_1005B981C(&qword_1019F2D80);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *&v0[v1] = v3;
  v4 = OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_inFlightTasks;
  v5 = sub_100BD98BC(_swiftEmptyArrayStorage);
  sub_1005B981C(&qword_1019F2D88);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  *&v0[v4] = v6;
  v7 = &v0[OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_mostRecentHandwritingRecognitionAnnouncementContent];
  v8 = type metadata accessor for CRLFreehandDrawingHandwrittenContentAccessibilityCache();
  *v7 = 0;
  *(v7 + 1) = 0;
  v26.receiver = v0;
  v26.super_class = v8;
  v9 = objc_msgSendSuper2(&v26, "init");
  v10 = qword_1019F2790;
  v24 = v9;
  if (v10 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = off_101A25A50;
    v12 = *(off_101A25A50 + 2);
    if (!v12)
    {
      break;
    }

    v13 = 0;
    while (v13 < v11[2])
    {
      v14 = v13 + 1;
      v15 = v11[v13 + 4];
      v16 = objc_opt_self();
      v17 = v15;
      v18 = [v16 defaultCenter];
      v19 = [objc_opt_self() currentQueue];
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100FB5B90;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100059694;
      aBlock[3] = &unk_1018ABA30;
      v21 = _Block_copy(aBlock);

      v22 = [v18 addObserverForName:v17 object:0 queue:v19 usingBlock:v21];
      _Block_release(v21);

      swift_unknownObjectRelease();
      v13 = v14;
      if (v12 == v14)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    swift_once();
  }

LABEL_6:

  return v24;
}

uint64_t sub_100FB2D90()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_inFlightTasks;
    v2 = *(result + OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_inFlightTasks);
    v3 = result;

    os_unfair_lock_lock(v2 + 6);
    sub_100FB53CC(&v2[4]);
    os_unfair_lock_unlock(v2 + 6);

    v4 = *&v3[v1];

    os_unfair_lock_lock((v4 + 24));

    *(v4 + 16) = _swiftEmptyDictionarySingleton;
    os_unfair_lock_unlock((v4 + 24));

    v5 = *&v3[OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_stringsForDrawings];

    os_unfair_lock_lock((v5 + 24));

    *(v5 + 16) = _swiftEmptyDictionarySingleton;
    os_unfair_lock_unlock((v5 + 24));

    v6 = &v3[OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_mostRecentHandwritingRecognitionAnnouncementContent];
    *v6 = 0;
    *(v6 + 1) = 0;
  }

  return result;
}

id CRLFreehandDrawingHandwrittenContentAccessibilityCache.__deallocating_deinit()
{
  if (qword_1019F2790 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v1 = off_101A25A50;
    v2 = *(off_101A25A50 + 2);
    if (!v2)
    {
      break;
    }

    v3 = 0;
    while (v3 < v1[2])
    {
      v4 = v3 + 1;
      v5 = v1[v3 + 4];
      v6 = objc_opt_self();
      v7 = v5;
      v8 = [v6 defaultCenter];
      [v8 removeObserver:v0 name:v7 object:0];

      v3 = v4;
      if (v2 == v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    swift_once();
  }

LABEL_6:
  v9 = *&v0[OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_inFlightTasks];

  os_unfair_lock_lock(v9 + 6);
  sub_100FB53CC(&v9[4]);
  os_unfair_lock_unlock(v9 + 6);

  v11.receiver = v0;
  v11.super_class = type metadata accessor for CRLFreehandDrawingHandwrittenContentAccessibilityCache();
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_100FB30AC()
{
  v1 = v0;
  v2 = PKDrawing.dataRepresentation()();
  v4 = v3;
  v5 = OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_inFlightTasks;
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_inFlightTasks);

  os_unfair_lock_lock(v6 + 6);
  sub_100FB56E4(&v6[4], &v11);
  os_unfair_lock_unlock(v6 + 6);
  v7 = v11;

  if (v7)
  {
    return sub_10002640C(v2, v4);
  }

  v10 = *(v1 + v5);
  __chkstk_darwin(v8);

  os_unfair_lock_lock((v10 + 24));
  sub_100FB5700((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  sub_10002640C(v2, v4);
}

uint64_t sub_100FB31CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(*result + 16))
  {

    sub_1007C956C(a2, a3);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8 & 1;
  return result;
}

uint64_t sub_100FB3240(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v26 = a3;
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v10, a5, v7);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v15;
  (*(v8 + 32))(&v18[v16], v10, v7);
  v19 = &v18[v17];
  v20 = v26;
  *v19 = a2;
  v19[1] = v20;
  sub_100024E98(a2, v20);
  v21 = sub_10064191C(0, 0, v13, &unk_1014BDCB0, v18);
  v22 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v22;
  result = sub_100AA1464(v21, a2, v20, isUniquelyReferenced_nonNull_native);
  *v22 = v28;
  return result;
}

uint64_t sub_100FB34B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = type metadata accessor for PKDrawing();
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v7[25] = *(v9 + 64);
  v7[26] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  v7[27] = swift_task_alloc();
  v10 = type metadata accessor for CharacterSet();
  v7[28] = v10;
  v7[29] = *(v10 - 8);
  v7[30] = swift_task_alloc();

  return _swift_task_switch(sub_100FB3614, 0, 0);
}

uint64_t sub_100FB3614()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_opt_self();
    isa = PKDrawing._bridgeToObjectiveC()().super.isa;
    v5 = [v3 indexableStringFromDrawing:isa];

    if (v5)
    {
      v7 = v0[29];
      v6 = v0[30];
      v8 = v0[28];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v0[5] = v9;
      v0[6] = v11;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_100017CD8();
      v12 = StringProtocol.trimmingCharacters(in:)();
      v14 = v13;
      (*(v7 + 8))(v6, v8);

      v0[7] = v12;
      v0[8] = v14;
      v0[9] = 10;
      v0[10] = 0xE100000000000000;
      v0[11] = 32;
      v0[12] = 0xE100000000000000;
      v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v17 = v16;

      v0[13] = v15;
      v0[14] = v17;
      v0[15] = 8224;
      v0[16] = 0xE200000000000000;
      v0[17] = 32;
      v0[18] = 0xE100000000000000;
      v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v22 = v0[21];
    v21 = v0[22];
    v23 = *&v2[OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_stringsForDrawings];
    v24 = swift_task_alloc();
    v24[2] = v22;
    v24[3] = v21;
    v24[4] = v18;
    v24[5] = v20;

    os_unfair_lock_lock(v23 + 6);
    sub_100FB585C();
    os_unfair_lock_unlock(v23 + 6);
    v26 = v0[21];
    v25 = v0[22];

    v27 = *&v2[OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_inFlightTasks];
    v28 = swift_task_alloc();
    *(v28 + 16) = v26;
    *(v28 + 24) = v25;

    os_unfair_lock_lock((v27 + 24));
    sub_100FB58C8((v27 + 16));
    os_unfair_lock_unlock((v27 + 24));
    v30 = v0[26];
    v29 = v0[27];
    v31 = v0[24];
    v40 = v30;
    v41 = v0[23];
    v32 = v0[20];

    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v31 + 16))(v30, v32, v41);
    type metadata accessor for MainActor();

    v35 = static MainActor.shared.getter();
    v36 = (*(v31 + 80) + 56) & ~*(v31 + 80);
    v37 = swift_allocObject();
    *(v37 + 2) = v35;
    *(v37 + 3) = &protocol witness table for MainActor;
    *(v37 + 4) = v34;
    *(v37 + 5) = v18;
    *(v37 + 6) = v20;
    (*(v31 + 32))(&v37[v36], v40, v41);

    sub_100CA6768(0, 0, v29, &unk_1014BDCC0, v37);

    sub_10000CAAC(v29, &qword_1019FB750);
  }

  v38 = v0[1];

  return v38();
}

uint64_t sub_100FB3A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  type metadata accessor for MainActor();
  v7[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100FB3B18, v9, v8);
}

uint64_t sub_100FB3B18()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100FB46C8(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100FB3CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PKDrawing();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v42 = v9;
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v10 - 8);
  v39 = &v39 - v11;
  v12 = type metadata accessor for CharacterSet();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3;
  v16 = PKDrawing.dataRepresentation()();
  v18 = v17;
  v55 = a1;
  v56 = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100017CD8();
  v19 = StringProtocol.trimmingCharacters(in:)();
  v21 = v20;
  (*(v13 + 8))(v15, v12);
  v55 = v19;
  v56 = v21;
  v53 = 10;
  v54 = 0xE100000000000000;
  v51 = 32;
  v52 = 0xE100000000000000;
  v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v24 = v23;

  v55 = v22;
  v56 = v24;
  v53 = 8224;
  v54 = 0xE200000000000000;
  v51 = 32;
  v52 = 0xE100000000000000;
  v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v27 = v26;

  v28 = *(v4 + OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_stringsForDrawings);
  v47 = v16;
  v48 = v18;
  v49 = v25;
  v50 = v27;
  os_unfair_lock_lock((v28 + 24));
  sub_100FB55B8((v28 + 16));
  os_unfair_lock_unlock((v28 + 24));
  v45 = v16;
  v46 = v18;
  if (sub_100FB5168())
  {
    v29 = type metadata accessor for TaskPriority();
    v30 = v39;
    (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v43;
    v32 = v44;
    v34 = v40;
    (*(v43 + 16))(v40, v41, v44);
    type metadata accessor for MainActor();

    v35 = static MainActor.shared.getter();
    v36 = (*(v33 + 80) + 56) & ~*(v33 + 80);
    v37 = swift_allocObject();
    *(v37 + 2) = v35;
    *(v37 + 3) = &protocol witness table for MainActor;
    *(v37 + 4) = v31;
    *(v37 + 5) = v25;
    *(v37 + 6) = v27;
    (*(v33 + 32))(&v37[v36], v34, v32);

    sub_100CA6768(0, 0, v30, &unk_1014BDCA0, v37);

    sub_10002640C(v45, v46);
    return sub_10000CAAC(v30, &qword_1019FB750);
  }

  else
  {

    return sub_10002640C(v45, v46);
  }
}

uint64_t sub_100FB411C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100024E98(a2, a3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  sub_100AA15E4(a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);
  result = sub_10002640C(a2, a3);
  *a1 = v12;
  return result;
}

uint64_t sub_100FB42E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16))
  {
    v6 = sub_1007C956C(a2, a3);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);
    }

    else
    {
      v8 = 0;
      result = 0;
    }
  }

  else
  {
    v8 = 0;
    result = 0;
  }

  *a4 = v8;
  a4[1] = result;
  return result;
}

uint64_t sub_100FB449C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_inFlightTasks);

  os_unfair_lock_lock((v1 + 24));
  sub_100FB559C((v1 + 16), &v6);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v6;

  if (v2)
  {
    isCancelled = swift_task_isCancelled();

    v4 = isCancelled ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100FB4538@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = PKDrawing.dataRepresentation()();
  v6 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_5;
  }

  v7 = v4;
  v8 = v5;
  v9 = sub_1007C956C(v4, v5);
  if ((v10 & 1) == 0)
  {
    v4 = v7;
    v5 = v8;
LABEL_5:
    result = sub_10002640C(v4, v5);
    v11 = 0;
    goto LABEL_6;
  }

  v11 = *(*(v6 + 56) + 8 * v9);

  result = sub_10002640C(v7, v8);
LABEL_6:
  *a2 = v11;
  return result;
}

uint64_t sub_100FB46C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v34 = a3;
  v40 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  result = UIAccessibilityIsVoiceOverRunning();
  if (result && a2)
  {
    v18 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v18 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      sub_100006370(0, &qword_1019F2D90);
      v29 = v4;

      v30 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v31 = *(v11 + 8);
      v32 = v10;
      v33 = v11 + 8;
      v31(v13, v10);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v8 + 16))(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v7);
      v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v21 = swift_allocObject();
      v22 = v40;
      *(v21 + 2) = v19;
      *(v21 + 3) = v22;
      *(v21 + 4) = a2;
      (*(v8 + 32))(&v21[v20], &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      aBlock[4] = sub_100FB5534;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018AB990;
      v23 = _Block_copy(aBlock);

      v24 = v35;
      static DispatchQoS.unspecified.getter();
      v41 = _swiftEmptyArrayStorage;
      sub_1005D91D8();
      sub_1005B981C(&unk_1019FF400);
      sub_10000D494();
      v25 = v37;
      v26 = v29;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v27 = v30;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v23);

      (*(v39 + 8))(v25, v26);
      (*(v36 + 8))(v24, v38);
      v31(v16, v32);
    }
  }

  return result;
}

void sub_100FB4B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PKDrawing();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = (Strong + OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_mostRecentHandwritingRecognitionAnnouncementContent);
    v12 = *(Strong + OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_mostRecentHandwritingRecognitionAnnouncementContent + 8);
    if (v12)
    {
      v13 = *v11 == a2 && v12 == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_25:

        return;
      }
    }

    *&v35 = PKDrawing.dataRepresentation()();
    v15 = v14;
    if (UIAccessibilityFocusedElement(UIAccessibilityNotificationVoiceOverIdentifier))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39[0] = v37;
    v39[1] = v38;
    if (*(&v38 + 1))
    {
      sub_100006370(0, &qword_101A12080);
      if (swift_dynamicCast())
      {
        v16 = v36;
        v17 = [v36 freehandDrawingLayout];

        v18 = [v17 pkRecognitionController];
        if (v18)
        {
          v19 = [v18 drawing];

          static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = PKDrawing.dataRepresentation()();
          v21 = v20;
          (*(v6 + 8))(v8, v5);
LABEL_18:
          if (v15 >> 60 == 15)
          {
            if (v21 >> 60 == 15)
            {
              sub_100025870(v35, v15);
LABEL_24:
              *v11 = a2;
              v11[1] = a3;

              v24 = [objc_opt_self() mainBundle];
              v25 = String._bridgeToObjectiveC()();
              v26 = String._bridgeToObjectiveC()();
              v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_1005B981C(&qword_1019F54E0);
              v28 = swift_allocObject();
              v35 = xmmword_10146C6B0;
              *(v28 + 16) = xmmword_10146C6B0;
              *(v28 + 56) = &type metadata for String;
              *(v28 + 64) = sub_1000053B0();
              *(v28 + 32) = a2;
              *(v28 + 40) = a3;

              static String.localizedStringWithFormat(_:_:)();

              v29 = objc_allocWithZone(AXAttributedString);
              v30 = String._bridgeToObjectiveC()();

              v31 = [v29 initWithString:v30];

              sub_1005B981C(&qword_1019FB8A0);
              inited = swift_initStackObject();
              *(inited + 16) = v35;
              *&v39[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(&v39[0] + 1) = v33;
              AnyHashable.init<A>(_:)();
              *(inited + 96) = &type metadata for Int;
              *(inited + 72) = 10;
              sub_100078EA4(inited);
              swift_setDeallocating();
              sub_10000CAAC(inited + 32, &unk_1019FB8B0);
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              [v31 setAttributes:isa];

              UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v31);
              return;
            }

LABEL_22:

            sub_100025870(v35, v15);
            sub_100025870(v18, v21);
            return;
          }

          if (v21 >> 60 == 15)
          {
            goto LABEL_22;
          }

          v22 = v35;
          sub_100024E98(v35, v15);
          sub_100024E84(v18, v21);
          v23 = sub_1009F9488(v22, v15, v18, v21);
          sub_100025870(v18, v21);
          sub_100025870(v18, v21);
          sub_10002640C(v22, v15);
          sub_100025870(v22, v15);
          if (v23)
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }

LABEL_17:
        v21 = 0xF000000000000000;
        goto LABEL_18;
      }
    }

    else
    {
      sub_10000CAAC(v39, &unk_1019F4D00);
    }

    v18 = 0;
    goto LABEL_17;
  }
}

BOOL sub_100FB5168()
{
  v1 = OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_inFlightTasks;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_inFlightTasks);

  os_unfair_lock_lock(v2 + 6);
  sub_100FB5518(&v2[4], &v7);
  os_unfair_lock_unlock(v2 + 6);
  v3 = v7;

  if (v3)
  {
    Task.cancel()();
    v4 = *(v0 + v1);
    __chkstk_darwin(v5);

    os_unfair_lock_lock((v4 + 24));
    sub_100FB5BA0((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }

  return v3 != 0;
}

uint64_t sub_100FB5288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(*a1 + 16))
  {
    sub_1007C956C(a2, a3);
    if (v5)
    {
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t sub_100FB52F4(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  sub_100024E98(a2, a3);
  v6 = sub_1007C956C(a2, a3);
  if ((v7 & 1) == 0)
  {
    return sub_10002640C(a2, a3);
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  v12 = *a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100AACDB8();
    v10 = v12;
  }

  sub_10002640C(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));

  sub_100BD1F88(v8, v10);
  result = sub_10002640C(a2, a3);
  *a1 = v10;
  return result;
}

uint64_t sub_100FB53CC(uint64_t a1)
{
  v1 = *a1 + 64;
  v2 = 1 << *(*a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(*a1 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        Task.cancel()();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

void sub_100FB5534()
{
  type metadata accessor for PKDrawing();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  sub_100FB4B98(v1, v2, v3);
}

uint64_t sub_100FB55D8(uint64_t a1)
{
  v4 = *(type metadata accessor for PKDrawing() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_100FB3A78(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_100FB5720(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PKDrawing() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D3D4;

  return sub_100FB34B4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100FB585C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  sub_100024E98(v1, v2);

  return sub_100BC4B70(v4, v3, v1, v2);
}

uint64_t sub_100FB58E4()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100FB59B8(uint64_t a1)
{
  v4 = *(type metadata accessor for PKDrawing() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_100FB3A78(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_100FB5AC4()
{
  v1 = PKDrawing.dataRepresentation()();
  v3 = v2;
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform54CRLFreehandDrawingHandwrittenContentAccessibilityCache_stringsForDrawings);
  os_unfair_lock_lock((v4 + 24));
  sub_100FB5B74((v4 + 16), v7);
  os_unfair_lock_unlock((v4 + 24));
  v5 = v7[0];
  if (!v7[1])
  {
    sub_100FB30AC();
  }

  sub_10002640C(v1, v3);
  return v5;
}

uint64_t sub_100FB5BB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *CRLiOSAutoSizingHostingController.init<A>(defaultSize:showScrollIndicators:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v8 = sub_100FBD5E4(a1, a2, a3, a4, a5, a6);
  (*(*(a3 - 8) + 8))(a2, a3);
  return v8;
}

id CRLiOSAutoSizingHostingController.fixedLength(for:)()
{
  swift_getAtKeyPath();
  if (v3 == 0.0)
  {
    return 0;
  }

  swift_getAtKeyPath();
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result frame];

    swift_getAtKeyPath();
    return *&v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CRLiOSAutoSizingHostingController.safeAreaInsets.getter()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 safeAreaInsets];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 superview];

  if (v5)
  {
    [v5 safeAreaInsets];
  }
}

void CRLiOSAutoSizingHostingController.hostingControllerDidLayoutSubviews()()
{
  v1 = OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_didChangeSize;
  if (*(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_didChangeSize) != 1)
  {
    goto LABEL_17;
  }

  v2 = (v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_defaultSize);
  if (*(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_defaultSize) == 0.0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize);
    v4 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_hostingController);
    v5 = [v4 view];
    if (!v5)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v6 = v5;
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v35.origin.x = v8;
    v35.origin.y = v10;
    v35.size.width = v12;
    v35.size.height = v14;
    if (CGRectGetWidth(v35) < v3)
    {
      v15 = [v4 view];
      if (!v15)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v16 = v15;
      [v15 frame];
      [v16 setFrame:?];
    }
  }

  if (v2[1] != 0.0)
  {
    goto LABEL_12;
  }

  v17 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize + 8);
  v18 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_hostingController);
  v19 = [v18 view];
  if (!v19)
  {
    goto LABEL_19;
  }

  v20 = v19;
  [v19 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v36.origin.x = v22;
  v36.origin.y = v24;
  v36.size.width = v26;
  v36.size.height = v28;
  if (CGRectGetHeight(v36) >= v17)
  {
    goto LABEL_12;
  }

  v29 = [v18 view];
  if (v29)
  {
    v30 = v29;
    [v29 frame];
    [v30 setFrame:?];

LABEL_12:
    v31 = [*(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollView) setContentSize:{*(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize), *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize + 8)}];
    (*((swift_isaMask & *v0) + 0xF8))(v31);
    v32 = OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator;
    if (*(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator))
    {
      if (CRLiOSAutoSizingHostingController.isPresentedInCard.getter())
      {
LABEL_16:
        v34 = *(v0 + v32);
        *(v0 + v32) = 0;

        goto LABEL_17;
      }

      v33 = [v0 popoverPresentationController];
      if (v33)
      {

        goto LABEL_16;
      }
    }

LABEL_17:
    *(v0 + v1) = 0;
    return;
  }

LABEL_21:
  __break(1u);
}

Swift::Void __swiftcall CRLiOSAutoSizingHostingController.setNeedsContentSizeUpdate()()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = COERCE_DOUBLE(CRLiOSAutoSizingHostingController.fixedLength(for:)());
  v4 = v3;

  v5 = 0.0;
  if (v4)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  swift_getKeyPath();
  v7 = COERCE_DOUBLE(CRLiOSAutoSizingHostingController.fixedLength(for:)());
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    v5 = v7;
  }

  if (v6 == 0.0)
  {
    v6 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize];
  }

  if (v5 == 0.0)
  {
    v5 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize + 8];
  }

  if (v6 == 0.0 || v5 == 0.0)
  {
    v6 = (*&v1[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_calculatePreliminaryFittingSize])(v10, v6, v5);
    v5 = v11;
    v12 = &v1[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize];
    *v12 = v6;
    v12[1] = v11;
    v1[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_didChangeSize] = 1;
  }

  [v1 setPreferredContentSize:{v6, v5}];
  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 setPreferredContentSize:{v6, v5}];
  }
}

void CRLiOSAutoSizingHostingController.withPresentationResize<A>(_:)(void (*a1)(void))
{
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 curve:0 animations:0.0];
  v4 = [v1 popoverPresentationController];
  if (v4)
  {

    v5 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator];
    *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator] = v3;
    v6 = v3;

    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v6;
    v8 = v6;
    v9 = v1;
    v10 = sub_100FBF060;
LABEL_5:
    sub_100FBB33C(v10, v7);

    withAnimation<A>(_:_:)();

    return;
  }

  if (CRLiOSAutoSizingHostingController.isPresentedInCard.getter())
  {
    v11 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator];
    *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator] = v3;
    v12 = v3;

    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v12;
    v8 = v12;
    v13 = v1;
    v10 = sub_100FBDEB8;
    goto LABEL_5;
  }

  a1();
}

id CRLiOSAutoSizingHostingController.isPresentedInCard.getter()
{
  v1 = [v0 presentingViewController];
  v2 = [v1 presentedViewController];

  v3 = v2;
  if (!v2)
  {
    v4 = [v0 presentedViewController];
    if (!v4)
    {
      return 0;
    }

    v3 = v4;
  }

  v5 = v2;
  v6 = [v3 traitCollection];

  v7 = [v6 crl_isCompactWidth];
  return v7;
}

void CRLiOSAutoSizingHostingController.performAfterAnimations(_:)(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_10002AAEC;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = *"";
    v9[2] = sub_100FB5BB8;
    v9[3] = &unk_1018ABAD0;
    v7 = _Block_copy(v9);
    v8 = v5;

    [v8 addCompletion:v7];
    _Block_release(v7);
  }

  else
  {
    a1();
  }
}

uint64_t CRLiOSAutoSizingHostingController.updateScrollTargets(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100BD7F38(_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollTargets;
  swift_beginAccess();
  *(v2 + v5) = v4;

  v68 = *(a1 + 16);
  if (!v68)
  {
    return result;
  }

  v7 = 0;
  v69 = a1 + 32;
  v66 = v5;
  v67 = v2;
  while (1)
  {
    v74 = v7;
    sub_100FBEBE8(v69 + 72 * v7, v76);
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    AnyHashable.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 56) = v11;
    v12 = sub_1005CF04C();
    *(inited + 32) = v10;
    *(inited + 64) = v12;
    if (!*(*(v2 + v5) + 16))
    {
      goto LABEL_36;
    }

    v13 = v12;

    sub_1000640CC(v76);
    if ((v14 & 1) == 0)
    {

LABEL_36:

      goto LABEL_38;
    }

    v70 = objc_opt_self();
    v72 = [v70 _atomicIncrementAssertCount];
    v75[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, v75);
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
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_10146CA70;
    *(v22 + 56) = &type metadata for Int32;
    *(v22 + 64) = &protocol witness table for Int32;
    *(v22 + 72) = v15;
    *(v22 + 32) = v72;
    *(v22 + 96) = v11;
    *(v22 + 104) = v13;
    *(v22 + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(v22 + 112) = v18;
    *(v22 + 120) = v20;
    *(v22 + 176) = &type metadata for UInt;
    *(v22 + 144) = v23;
    *(v22 + 152) = 729;
    v24 = v75[0];
    *(v22 + 216) = v11;
    *(v22 + 224) = v13;
    *(v22 + 184) = &protocol witness table for UInt;
    *(v22 + 192) = v24;
    v25 = v15;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v22);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v28, "Duplicate scroll target ID: %@", 30, 2, inited);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v30 = v29 + 3;
    v29[4] = 0;
    v29[5] = 0;
    v31 = *(inited + 16);
    if (v31)
    {
      break;
    }

LABEL_37:
    v48 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    [v70 handleFailureInFunction:v49 file:v50 lineNumber:729 isFatal:0 format:v51 args:v48];

    v5 = v66;
    v2 = v67;
LABEL_38:
    sub_100064110(v76, v75);
    *v71 = v77;
    v73 = v78;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    v54 = sub_1000640CC(v75);
    v56 = v53[2];
    v57 = (v55 & 1) == 0;
    v36 = __OFADD__(v56, v57);
    v58 = v56 + v57;
    if (v36)
    {
      goto LABEL_53;
    }

    v59 = v55;
    if (v53[3] < v58)
    {
      sub_100A960D0(v58, isUniquelyReferenced_nonNull_native);
      v54 = sub_1000640CC(v75);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_56;
      }

LABEL_43:
      if ((v59 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_43;
    }

    v65 = v54;
    sub_100AABBA4();
    v54 = v65;
    if ((v59 & 1) == 0)
    {
LABEL_44:
      v53[(v54 >> 6) + 8] |= 1 << v54;
      v61 = v54;
      sub_100064110(v75, v53[6] + 40 * v54);
      v62 = (v53[7] + 32 * v61);
      *v62 = *v71;
      v62[1] = v73;
      sub_100064234(v75);
      v63 = v53[2];
      v36 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v36)
      {
        goto LABEL_54;
      }

      v53[2] = v64;
      goto LABEL_4;
    }

LABEL_3:
    v8 = (v53[7] + 32 * v54);
    *v8 = *v71;
    v8[1] = v73;
    sub_100064234(v75);
LABEL_4:
    v7 = v74 + 1;
    *(v2 + v5) = v53;
    swift_endAccess();
    result = sub_100FBEC20(v76);
    if (v74 + 1 == v68)
    {
      return result;
    }
  }

  v32 = 0;
  while (1)
  {
    sub_100020E58((inited + 32 + 40 * v32), *(inited + 32 + 40 * v32 + 24));
    v33 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v34 = *v30;
    v35 = *(v33 + 16);
    v36 = __OFADD__(*v30, v35);
    v37 = *v30 + v35;
    if (v36)
    {
      break;
    }

    v38 = v29[4];
    if (v38 >= v37)
    {
      goto LABEL_26;
    }

    if (v38 + 0x4000000000000000 < 0)
    {
      goto LABEL_51;
    }

    v39 = v29[5];
    if (2 * v38 > v37)
    {
      v37 = 2 * v38;
    }

    v29[4] = v37;
    if ((v37 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_52;
    }

    v40 = v33;
    v41 = swift_slowAlloc();
    v42 = v41;
    v29[5] = v41;
    if (v39)
    {
      if (v41 != v39 || v41 >= &v39[8 * v34])
      {
        memmove(v41, v39, 8 * v34);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v33 = v40;
LABEL_26:
      v42 = v29[5];
      if (!v42)
      {
        goto LABEL_55;
      }

      goto LABEL_27;
    }

    v33 = v40;
    if (!v42)
    {
      goto LABEL_55;
    }

LABEL_27:
    v44 = *(v33 + 16);
    if (v44)
    {
      v45 = (v33 + 32);
      v46 = *v30;
      while (1)
      {
        v47 = *v45++;
        *&v42[8 * v46] = v47;
        v46 = *v30 + 1;
        if (__OFADD__(*v30, 1))
        {
          break;
        }

        *v30 = v46;
        if (!--v44)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      break;
    }

LABEL_11:

    if (++v32 == v31)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id CRLiOSAutoSizingHostingController.scrollToTarget<A>(_:anchor:animated:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v11 = __chkstk_darwin(a1);
  (*(v13 + 16))(&MaxY - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  AnyHashable.init<A>(_:)();
  v14 = OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollTargets;
  swift_beginAccess();
  v15 = *(v6 + v14);
  if (!*(v15 + 16))
  {
    return sub_100064234(v44);
  }

  v16 = sub_1000640CC(v44);
  if ((v17 & 1) == 0)
  {

    return sub_100064234(v44);
  }

  v18 = (*(v15 + 56) + 32 * v16);
  v20 = *v18;
  v19 = v18[1];
  v21 = v18[2];
  v22 = v18[3];
  sub_100064234(v44);

  v23 = *(v6 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollView);
  [v23 bounds];
  v28 = v26;
  v29 = v27;
  if (a4)
  {
    v30 = v24;
    MinY = v25;
    v59.origin.x = v20;
    v59.origin.y = v19;
    v59.size.width = v21;
    v59.size.height = v22;
    if (CGRectContainsRect(*&v24, v59))
    {
      v32 = v30;
    }

    else
    {
      v45.origin.x = v20;
      v45.origin.y = v19;
      v45.size.width = v21;
      v43 = v22;
      v45.size.height = v22;
      MaxX = CGRectGetMaxX(v45);
      v46.origin.x = v30;
      v46.origin.y = MinY;
      v46.size.width = v28;
      v46.size.height = v29;
      if (CGRectGetMaxX(v46) <= MaxX)
      {
        v50.origin.x = v20;
        v50.origin.y = v19;
        v50.size.width = v21;
        v50.size.height = v43;
        v40 = CGRectGetMaxX(v50);
        v51.origin.x = v30;
        v51.origin.y = MinY;
        v51.size.width = v28;
        v51.size.height = v29;
        v32 = v40 - CGRectGetWidth(v51);
      }

      else
      {
        v47.origin.x = v20;
        v47.origin.y = v19;
        v47.size.width = v21;
        v47.size.height = v43;
        MinX = CGRectGetMinX(v47);
        v48.origin.x = v30;
        v48.origin.y = MinY;
        v48.size.width = v28;
        v48.size.height = v29;
        v39 = MinX < CGRectGetMinX(v48);
        v32 = v30;
        if (v39)
        {
          v49.origin.x = v20;
          v49.origin.y = v19;
          v49.size.width = v21;
          v49.size.height = v43;
          v32 = CGRectGetMinX(v49);
        }
      }

      v52.origin.x = v20;
      v52.origin.y = v19;
      v52.size.width = v21;
      v52.size.height = v43;
      MaxY = CGRectGetMaxY(v52);
      v53.origin.x = v30;
      v53.origin.y = MinY;
      v53.size.width = v28;
      v53.size.height = v29;
      if (CGRectGetMaxY(v53) <= MaxY)
      {
        v57.origin.x = v20;
        v57.origin.y = v19;
        v57.size.width = v21;
        v57.size.height = v43;
        v41 = CGRectGetMaxY(v57);
        v58.origin.x = v30;
        v58.origin.y = MinY;
        v58.size.width = v28;
        v58.size.height = v29;
        MinY = v41 - CGRectGetHeight(v58);
      }

      else
      {
        v54.origin.x = v20;
        v54.origin.y = v19;
        v54.size.width = v21;
        v54.size.height = v43;
        MaxY = CGRectGetMinY(v54);
        v55.origin.x = v30;
        v55.origin.y = MinY;
        v55.size.width = v28;
        v55.size.height = v29;
        if (MaxY < CGRectGetMinY(v55))
        {
          v56.origin.x = v20;
          v56.origin.y = v19;
          v56.size.width = v21;
          v56.size.height = v43;
          MinY = CGRectGetMinY(v56);
        }
      }
    }
  }

  else
  {
    v34 = v19 + v22 * *&a3;
    v32 = v20 + v21 * *&a2 - v26 * *&a2;
    MinY = v34 - v29 * *&a3;
  }

  [v23 contentSize];
  if (v35 >= v32)
  {
    v35 = v32;
  }

  if (v32 < 0.0)
  {
    v35 = 0.0;
  }

  if (v36 >= MinY)
  {
    v36 = MinY;
  }

  if (MinY < 0.0)
  {
    v36 = 0.0;
  }

  return [v23 setContentOffset:a5 & 1 animated:{v35, v36}];
}

char *CRLiOSAutoSizingHostingController.__allocating_init<A>(defaultSize:showScrollIndicators:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = sub_100FBD5E4(a1, a2, a3, a4, a5, a6);
  (*(*(a3 - 8) + 8))(a2, a3);
  return v14;
}

uint64_t sub_100FB7270(uint64_t a1)
{
  v3 = sub_100FBD5B0(a1);
  (*(*(*(v1 + qword_101A25C40) - 8) + 8))(a1);
  return v3;
}

double sub_100FB72DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIHostingController();
  (*(v4 + 16))(v6, a1, a2);
  v7 = UIHostingController.__allocating_init(rootView:)();
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v9 = v8;

  return v9;
}

uint64_t CRLiOSAutoSizingHostingController.__allocating_init<A>(defaultSize:content:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __chkstk_darwin(a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11();
  return (*(v6 + 152))(2, v13, a5, a6, a2, a3);
}

void CRLiOSAutoSizingHostingController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_didChangeSize) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator) = 0;
  v2 = OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollTargets;
  *(v0 + v2) = sub_100BD7F38(_swiftEmptyArrayStorage);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CRLiOSAutoSizingHostingController.loadView()()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];
}

Swift::Void __swiftcall CRLiOSAutoSizingHostingController.viewDidLoad()()
{
  v33.receiver = v0;
  v33.super_class = type metadata accessor for CRLiOSAutoSizingHostingController();
  objc_msgSendSuper2(&v33, "viewDidLoad");
  [v0 setEdgesForExtendedLayout:0];
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollView];
  [v1 addSubview:v3];

  sub_1005B981C(&unk_1019F4D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146E8B0;
  v5 = [v3 topAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [v6 safeAreaLayoutGuide];

  v9 = [v8 topAnchor];
  v10 = [v5 constraintEqualToAnchor:v9];

  *(v4 + 32) = v10;
  v11 = [v3 leadingAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  *(v4 + 40) = v15;
  v16 = [v3 trailingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  v19 = [v17 trailingAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  *(v4 + 48) = v20;
  v21 = [v3 bottomAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 bottomAnchor];

  v26 = [v21 constraintEqualToAnchor:v25];
  *(v4 + 56) = v26;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints:isa];

  v28 = *&v0[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_hostingController];
  [v0 addChildViewController:v28];
  v29 = [v28 view];
  if (!v29)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v30 = v29;
  [v29 setBackgroundColor:0];
  [v3 addSubview:v30];
  v31 = 10000.0;
  if (*&v0[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_defaultSize] <= 0.0)
  {
    v32 = 10000.0;
  }

  else
  {
    v32 = *&v0[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_defaultSize];
  }

  if (*&v0[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_defaultSize + 8] > 0.0)
  {
    v31 = *&v0[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_defaultSize + 8];
  }

  [v30 setFrame:{0.0, 0.0, v32, v31}];
  [v28 didMoveToParentViewController:v0];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  [v30 layoutIfNeeded];
}

Swift::Void __swiftcall CRLiOSAutoSizingHostingController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CRLiOSAutoSizingHostingController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1);
  v4 = [v2 popoverPresentationController];
  v5 = v4;
  if (v4)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v5 != 0) != v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }
}

Swift::Void __swiftcall CRLiOSAutoSizingHostingController.viewWillLayoutSubviews()()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CRLiOSAutoSizingHostingController();
  objc_msgSendSuper2(&v12, "viewWillLayoutSubviews");
  CRLiOSAutoSizingHostingController.safeAreaInsets.getter();
  v2 = [v0 view];
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  [v2 effectiveUserInterfaceLayoutDirection];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((static EdgeInsets.== infix(_:_:)() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CE00;
  *(inited + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v6 = 0;
  v7 = 0;
  *(inited + 40) = KeyPath;
  while (1)
  {
    v8 = v6;
    if ((inited & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_10;
    }

    if (v7 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_10:
    swift_retain_n();
    swift_getAtKeyPath();
    if (v11 != 0.0)
    {
      swift_getAtKeyPath();
      v9 = [v1 view];
      if (!v9)
      {
        goto LABEL_15;
      }

      v10 = v9;
      [v9 frame];

      swift_getAtKeyPath();
      swift_getAtKeyPath();
    }

    v6 = 1;
    v7 = 1;
    if (v8)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_16:
  __break(1u);
}

double sub_100FB840C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100FB8484()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id CRLiOSAutoSizingHostingController.navigationItem.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_hostingController) navigationItem];

  return v1;
}

double sub_100FB8600@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100FB8680()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_100FB86FC@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100FB877C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100FB87F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100FB8864()
{
  swift_unknownObjectWeakDestroy();
  v1 = OBJC_IVAR____TtCC8Freeform33CRLiOSAutoSizingHostingControllerP33_8C020DAD5868DEC95F698F6F7ADDCC229HostProxy__showEmptyView;
  v2 = sub_1005B981C(&unk_101A08DC0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtCC8Freeform33CRLiOSAutoSizingHostingControllerP33_8C020DAD5868DEC95F698F6F7ADDCC229HostProxy__frameSize;
  v5 = sub_1005B981C(&qword_101A25F00);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCC8Freeform33CRLiOSAutoSizingHostingControllerP33_8C020DAD5868DEC95F698F6F7ADDCC229HostProxy__safeAreaInsets;
  v7 = sub_1005B981C(&qword_101A25F08);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtCC8Freeform33CRLiOSAutoSizingHostingControllerP33_8C020DAD5868DEC95F698F6F7ADDCC229HostProxy__isPresentedInsidePopover, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100FB89DC()
{
  v1 = sub_1005B981C(&qword_101A25F08);
  v18 = *(v1 - 8);
  v19 = v1;
  __chkstk_darwin(v1);
  v3 = &v18 - v2;
  v4 = sub_1005B981C(&qword_101A25F00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_1005B981C(&unk_101A08DC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtCC8Freeform33CRLiOSAutoSizingHostingControllerP33_8C020DAD5868DEC95F698F6F7ADDCC229HostProxy__showEmptyView;
  LOBYTE(v20) = 0;
  Published.init(initialValue:)();
  v13 = *(v9 + 32);
  v13(v0 + v12, v11, v8);
  v14 = OBJC_IVAR____TtCC8Freeform33CRLiOSAutoSizingHostingControllerP33_8C020DAD5868DEC95F698F6F7ADDCC229HostProxy__frameSize;
  type metadata accessor for CGSize(0);
  v20 = 0uLL;
  Published.init(initialValue:)();
  (*(v5 + 32))(v0 + v14, v7, v4);
  v15 = OBJC_IVAR____TtCC8Freeform33CRLiOSAutoSizingHostingControllerP33_8C020DAD5868DEC95F698F6F7ADDCC229HostProxy__safeAreaInsets;
  v20 = 0u;
  v21 = 0u;
  Published.init(initialValue:)();
  (*(v18 + 32))(v0 + v15, v3, v19);
  v16 = OBJC_IVAR____TtCC8Freeform33CRLiOSAutoSizingHostingControllerP33_8C020DAD5868DEC95F698F6F7ADDCC229HostProxy__isPresentedInsidePopover;
  LOBYTE(v20) = 0;
  Published.init(initialValue:)();
  v13(v0 + v16, v11, v8);
  return v0;
}

uint64_t sub_100FB8CA0@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double sub_100FB8D08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1005B981C(&qword_101A25F38);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  if ((a4 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v24 == 1))
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    (*(v11 + 16))(v14, a1, v10);
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = swift_allocObject();
    (*(v11 + 32))(v16 + v15, v14, v10);
    v17 = v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v17 = a2;
    *(v17 + 8) = a3;
    *(v17 + 16) = 0;
    v21 = sub_100FBEE7C;
    v22 = v16;
    v23 = 1;
  }

  sub_1005B981C(&qword_101A25F40);
  sub_10001A2F8(&qword_101A25F48, &qword_101A25F40);
  _ConditionalContent<>.init(storage:)();
  result = *&v24;
  v19 = v25;
  *a5 = v24;
  *(a5 + 16) = v19;
  return result;
}

uint64_t sub_100FB8F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v80 = a5;
  v83 = a3;
  v68 = a2;
  v73 = a1;
  v84 = a6;
  v67 = sub_1005B981C(&qword_101A25F50);
  __chkstk_darwin(v67);
  v8 = &v63 - v7;
  v66 = sub_1005B981C(&qword_101A25F58);
  __chkstk_darwin(v66);
  v10 = &v63 - v9;
  v65 = sub_1005B981C(&qword_101A25F60);
  __chkstk_darwin(v65);
  v12 = &v63 - v11;
  v64 = sub_1005B981C(&qword_101A25F68);
  __chkstk_darwin(v64);
  v14 = &v63 - v13;
  v69 = sub_1005B981C(&qword_101A25F70);
  __chkstk_darwin(v69);
  v16 = &v63 - v15;
  v71 = sub_1005B981C(&qword_101A25F78);
  __chkstk_darwin(v71);
  v18 = &v63 - v17;
  v72 = sub_1005B981C(&qword_101A25F80);
  __chkstk_darwin(v72);
  v74 = &v63 - v19;
  v70 = sub_1005B981C(&qword_101A25F88);
  __chkstk_darwin(v70);
  v77 = &v63 - v20;
  v76 = sub_1005B981C(&qword_101A25F90);
  __chkstk_darwin(v76);
  v79 = &v63 - v21;
  v75 = sub_1005B981C(&qword_101A25F98);
  __chkstk_darwin(v75);
  v81 = &v63 - v22;
  v78 = sub_1005B981C(&qword_101A25FA0);
  __chkstk_darwin(v78);
  v82 = &v63 - v23;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  if (*&v89 > 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(&v89 + 1) > 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!sub_1004A48FC())
    {
      goto LABEL_5;
    }
  }

  else if (!sub_1004A48FC())
  {
LABEL_5:
    static Alignment.topLeading.getter();
    goto LABEL_8;
  }

  static Alignment.topTrailing.getter();
LABEL_8:
  _FrameLayout.init(width:height:alignment:)();
  v24 = sub_1005B981C(&qword_101A25F38);
  (*(*(v24 - 8) + 16))(v8, v68, v24);
  v25 = &v8[*(v67 + 36)];
  v26 = v87;
  *v25 = v86;
  *(v25 + 1) = v26;
  *(v25 + 2) = v88;
  sub_10003DFF8(v8, v10, &qword_101A25F50);
  *&v10[*(v66 + 36)] = 257;

  sub_10003DFF8(v10, v12, &qword_101A25F58);
  *&v12[*(v65 + 36)] = a4;
  v27 = static Alignment.center.getter();
  v29 = v28;
  sub_10003DFF8(v12, v14, &qword_101A25F60);
  v30 = &v14[*(v64 + 36)];
  *v30 = v27;
  v30[1] = v29;
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  if (sub_1004A48FC())
  {
    static Alignment.topTrailing.getter();
  }

  else
  {
    static Alignment.topLeading.getter();
  }

  _FrameLayout.init(width:height:alignment:)();
  sub_10003DFF8(v14, v16, &qword_101A25F68);
  v31 = &v16[*(v69 + 36)];
  v32 = v90;
  *v31 = v89;
  *(v31 + 1) = v32;
  *(v31 + 2) = v91;
  v33 = swift_allocObject();
  v34 = v83;
  *(v33 + 16) = v83;
  *(v33 + 24) = a4;
  v35 = v80 & 1;
  *(v33 + 32) = v80 & 1;
  sub_10003DFF8(v16, v18, &qword_101A25F70);
  v36 = &v18[*(v71 + 36)];
  *v36 = sub_100FBEF3C;
  v36[1] = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  *(v37 + 24) = a4;
  *(v37 + 32) = v35;
  v38 = v74;
  sub_10003DFF8(v18, v74, &qword_101A25F78);
  v39 = (v38 + *(v72 + 36));
  *v39 = sub_100FBEF48;
  v39[1] = v37;
  KeyPath = swift_getKeyPath();
  v41 = v77;
  v42 = &v77[*(v70 + 36)];
  v43 = *(sub_1005B981C(&qword_101A25FA8) + 28);
  v85 = a4;

  AnyHashable.init<A>(_:)();
  v44 = enum case for CoordinateSpace.named(_:);
  v45 = type metadata accessor for CoordinateSpace();
  (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
  *v42 = KeyPath;
  sub_10003DFF8(v38, v41, &qword_101A25F80);
  v46 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v44) = v85;
  v47 = v79;
  sub_10003DFF8(v41, v79, &qword_101A25F88);
  v48 = v47 + *(v76 + 36);
  *v48 = v46;
  *(v48 + 8) = v44;
  v49 = swift_getKeyPath();
  Strong = swift_unknownObjectWeakLoadStrong();
  v51 = v81;
  v52 = &v81[*(v75 + 36)];
  swift_unknownObjectWeakInit();

  *v52 = v49;
  sub_10003DFF8(v47, v51, &qword_101A25F90);
  v53 = swift_getKeyPath();
  v54 = swift_unknownObjectWeakLoadStrong();
  v55 = v82;
  v56 = &v82[*(v78 + 36)];
  swift_unknownObjectWeakInit();

  *v56 = v53;
  sub_10003DFF8(v51, v55, &qword_101A25F98);
  v57 = swift_getKeyPath();
  v58 = swift_unknownObjectWeakLoadStrong();
  v59 = sub_1005B981C(&qword_101A25FB0);
  v60 = v84;
  v61 = (v84 + *(v59 + 36));
  swift_unknownObjectWeakInit();

  *v61 = v57;
  return sub_10003DFF8(v55, v60, &qword_101A25FA0);
}

void sub_100FB9A30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = &Strong[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize];
    *v4 = v1;
    v4[1] = v2;
    Strong[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_didChangeSize] = 1;
  }
}

void sub_100FB9A98(uint64_t *a1)
{
  v1 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    CRLiOSAutoSizingHostingController.updateScrollTargets(_:)(v1);
  }
}

uint64_t EnvironmentValues.crl_scrollViewContentCoordinateSpace.getter()
{
  sub_100FBDEF8();

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_100FB9B4C(uint64_t a1)
{
  v2 = type metadata accessor for CoordinateSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_100FBDEF8();
  EnvironmentValues.subscript.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t EnvironmentValues.crl_scrollViewContentCoordinateSpace.setter(uint64_t a1)
{
  v2 = type metadata accessor for CoordinateSpace();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_100FBDEF8();
  EnvironmentValues.subscript.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t EnvironmentValues.crl_isPresentedInsidePopover.getter()
{
  sub_100FBDF4C();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t EnvironmentValues.crl_withPresentationResize.getter()
{
  sub_100FBDFA0();

  return EnvironmentValues.subscript.getter();
}

uint64_t EnvironmentValues.crl_performAfterAnimations.getter()
{
  sub_100FBE05C();

  return EnvironmentValues.subscript.getter();
}

uint64_t EnvironmentValues.crl_scrollToTarget.getter()
{
  sub_100FBE118();

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_100FB9F70(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *, uint64_t *), void (*a6)(uint64_t), uint64_t a7, uint64_t (*a8)(_BYTE *))
{
  a5(a1, v14);
  v11 = a5(v14, &v13);
  a6(v11);
  EnvironmentValues.subscript.setter();
  return a8(v14);
}

uint64_t sub_100FBA048(uint64_t a1, uint64_t (*a2)(uint64_t, _BYTE *), void (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a2(a1, v10);
  a3(v8);
  EnvironmentValues.subscript.setter();
  return a5(a1);
}

id sub_100FBA0D0(void *a1)
{
  v1 = a1;
  v2 = sub_100FBA114();

  return v2;
}

void sub_100FBA118(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100FBA174(a3);
}

void sub_100FBA174(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 customView];
    if (v2)
    {

      v3 = sub_100FBA89C();
      if (v3)
      {
        v4 = v3;
        sub_1005B981C(&unk_1019F4D60);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_10146CE00;
        *(v5 + 32) = v4;
        *(v5 + 40) = v1;
        v31 = v1;
        v6 = v4;
        sub_100FBA738(v5);
      }

      else
      {
        sub_1005B981C(&unk_1019F4D60);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_101465920;
        *(v30 + 32) = v1;
        v31 = v1;
        sub_100FBA738(v30);
      }
    }

    else
    {
      v7 = objc_opt_self();
      v8 = [v7 _atomicIncrementAssertCount];
      v32 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v32);
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
      v18 = sub_1005CF04C();
      *(inited + 104) = v18;
      *(inited + 72) = v9;
      *(inited + 136) = &type metadata for String;
      v19 = sub_1000053B0();
      *(inited + 112) = v12;
      *(inited + 120) = v14;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v19;
      *(inited + 152) = 511;
      v20 = v32;
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
      sub_100005404(v15, &_mh_execute_header, v24, "Unexpected bar button item.", 27, 2, _swiftEmptyArrayStorage);

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

      [v7 handleFailureInFunction:v27 file:v28 lineNumber:511 isFatal:0 format:v29 args:v26];
    }
  }
}

void *sub_100FBA618()
{
  v1 = sub_100FBAA14();
  if (v1)
  {
    v2 = v1;
    *(swift_allocObject() + 16) = v0;
    v3 = v0;
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (sub_100FBABE0(v6))
        {

          return v7;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

uint64_t sub_100FBA738(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100FBEBE0;
  *(v5 + 24) = v4;
  v10[4] = sub_10002AAE4;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = *"";
  v10[2] = sub_10002AAB8;
  v10[3] = &unk_1018ABF28;
  v6 = _Block_copy(v10);
  v7 = v1;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100FBA89C()
{
  v1 = sub_100FBAA14();
  if (v1)
  {
    v2 = v1;
    *(swift_allocObject() + 16) = v0;
    v3 = v0;
    if (v2 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }

LABEL_8:

        ++v5;
        if (v7 == i)
        {
          goto LABEL_15;
        }
      }

      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = *(v2 + 8 * v5 + 32);
      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  return 0;
}