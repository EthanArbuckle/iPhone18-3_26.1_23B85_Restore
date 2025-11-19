uint64_t sub_1884F7A84()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *(v4 + 392);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  sub_1883FEE9C();
  sub_1883FBF6C(v2 + 16);
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884F7B80()
{
  v1 = v0[69];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[63];
  if (v1)
  {
    v7 = v1;

    swift_willThrow();

    v8 = v0[52];

    sub_1883F816C();
  }

  else
  {
    v10 = v0[48];

    *v10 = v2;
    v10[1] = v5;
    v10[2] = v3;
    v10[3] = v4;
    v11 = v0[52];

    sub_1883FDB48();
  }

  return v9();
}

uint64_t sub_1884F7C6C()
{
  sub_1883F7120();
  v1 = *(v0 + 456);
  v2 = *(v0 + 416);

  sub_1883F816C();

  return v3();
}

void sub_1884F7CC8()
{
  v2 = v0[68];
  v3 = v0[58];
  v4 = v2;
  v131 = sub_18840EFC4(v2);
  v5 = sub_1883F4C9C(v3);
  v129 = v0;
  if (v5)
  {
    v6 = v5;
    v133 = MEMORY[0x1E69E7CC0];
    sub_1883FE594();
    sub_188477A1C();
    if (v6 < 0)
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      return;
    }

    v7 = 0;
    v8 = v0[58];
    v9 = v133;
    v10 = v8 & 0xC000000000000001;
    v11 = v8 + 32;
    do
    {
      if (v10)
      {
        v12 = MEMORY[0x18CFD59D0](v7, v129[58]);
      }

      else
      {
        v12 = *(v11 + 8 * v7);
      }

      v13 = v12;
      v132 = v9;
      isUniquelyReferenced_nonNull_native = v9;
      v15 = v9[2];
      v14 = v9[3];
      v16 = v131;
      if (v15 >= v14 >> 1)
      {
        sub_188405648();
        sub_188477A1C();
        isUniquelyReferenced_nonNull_native = v132;
      }

      ++v7;
      *(isUniquelyReferenced_nonNull_native + 16) = v15 + 1;
      v17 = isUniquelyReferenced_nonNull_native + 16 * v15;
      *(v17 + 32) = v13;
      *(v17 + 40) = v16;
      v9 = isUniquelyReferenced_nonNull_native;
    }

    while (v6 != v7);
    v127 = isUniquelyReferenced_nonNull_native;
    v0 = v129;
  }

  else
  {
    v127 = MEMORY[0x1E69E7CC0];
  }

  v18 = v0[59];
  v19 = sub_1883F4C9C(v18);
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC8];
  while (v19 != v20)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x18CFD59D0](v20, v129[59]);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      v22 = *(v18 + 32 + 8 * v20);
    }

    v23 = v22;
    if (__OFADD__(v20, 1))
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v24 = v131;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v132 = v21;
    sub_188486398();
    v25 = v21[2];
    sub_1883FE314();
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_96;
    }

    v31 = v26;
    v32 = v27;
    sub_18844E6FC(&unk_1EA90E4B0, &qword_1886FB450);
    v33 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30);
    v21 = v132;
    if (v33)
    {
      sub_188486398();
      sub_188410224();
      if (!v35)
      {
        sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
        sub_1883F85A4();

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

      v31 = v34;
    }

    if (v32)
    {
      v36 = v132[7];
      v37 = *(v36 + 8 * v31);
      *(v36 + 8 * v31) = v24;
    }

    else
    {
      sub_1883FF230(&v132[v31 >> 6]);
      *(v132[6] + 8 * v31) = v23;
      *(v132[7] + 8 * v31) = v24;
      v38 = v132[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_97;
      }

      v132[2] = v40;
    }

    ++v20;
  }

  v41 = v129;
  v42 = v129[68];
  v43 = v129[59];
  v44 = *(v129 + 316);
  sub_1884F9AC4(v129[58]);

  v45 = MEMORY[0x1E69E7CC0];
  v129[73] = MEMORY[0x1E69E7CC0];
  v129[72] = v45;
  v129[71] = v21;
  v129[70] = v127;
  v129[69] = v131;
  v46 = sub_1883F4C9C(v45);
  if (v46)
  {
    v47 = v46;
    sub_1883F869C();
    v48 = v45;
    sub_1883F832C();
    sub_18847791C();
    if (v47 < 0)
    {
      goto LABEL_99;
    }

    v49 = 0;
    v50 = v132;
    v51 = v45;
    do
    {
      if (v48 >> 62)
      {
        v52 = MEMORY[0x18CFD59D0](v49, v51);
      }

      else
      {
        v52 = *(v51 + 8 * v49 + 32);
      }

      v53 = v52;
      v54 = [v52 recordID];

      v132 = v50;
      v56 = v50[2];
      v55 = v50[3];
      if (v56 >= v55 >> 1)
      {
        sub_1883F8DD4(v55);
        sub_188405648();
        sub_18847791C();
      }

      ++v49;
      v50[2] = v56 + 1;
      v57 = &v50[2 * v56];
      v57[4] = v54;
      *(v57 + 40) = 0;
      v51 = MEMORY[0x1E69E7CC0];
    }

    while (v47 != v49);
    v41 = v129;
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  v59 = MEMORY[0x1E69E7CC0];
  v60 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v60)
  {
    v61 = v60;
    sub_1883F869C();
    sub_1883F832C();
    sub_18847791C();
    if (v61 < 0)
    {
      goto LABEL_100;
    }

    v62 = 0;
    v63 = v132;
    do
    {
      if (v59 >> 62)
      {
        v64 = MEMORY[0x18CFD59D0](v62, v59);
      }

      else
      {
        v64 = *(v59 + 8 * v62 + 32);
      }

      v65 = v64;
      v67 = v132[2];
      v66 = v132[3];
      sub_188410C74();
      if (v69)
      {
        sub_1883F8DD4(v68);
        sub_1883FF374();
        sub_18847791C();
      }

      ++v62;
      v132[2] = isUniquelyReferenced_nonNull_native;
      v70 = &v132[2 * v67];
      *(v70 + 32) = v65;
      sub_1883FDC80(v70);
    }

    while (v61 != v62);
    swift_bridgeObjectRelease_n();
    v41 = v129;
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

  sub_18847261C(v63);
  v128 = v50;
  v71 = *(v127 + 16);
  v72 = MEMORY[0x1E69E7CC0];
  if (v71)
  {
    v73 = (v127 + 40);
    do
    {
      v74 = v41[49];
      v75 = *v73;
      v76 = *(v73 - 1);
      v77 = v75;
      sub_18840D758();
      LOBYTE(v75) = v78;

      [v76 recordID];
      if (v75)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = *(v72 + 16);
          sub_1883FA200();
          sub_1884775D8();
          v72 = v85;
        }

        v80 = *(v72 + 16);
        v79 = *(v72 + 24);
        v81 = v80 + 1;
        if (v80 >= v79 >> 1)
        {
          sub_1883F8DD4(v79);
          sub_188405648();
          sub_1884775D8();
          v82 = v86;
          v72 = v86;
        }

        else
        {
          v82 = v72;
        }
      }

      else
      {
        v82 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = *(v128 + 16);
          sub_1883FA200();
          sub_1884775D8();
          v82 = v88;
        }

        v80 = *(v82 + 16);
        v83 = *(v82 + 24);
        v81 = v80 + 1;
        if (v80 >= v83 >> 1)
        {
          sub_1883F8DD4(v83);
          sub_1883F9A2C();
          sub_1884775D8();
          v82 = v89;
          v128 = v89;
        }

        else
        {
          v128 = v82;
        }
      }

      *(v82 + 16) = v81;
      sub_1883FAB2C(v82 + 16 * v80);
      v73 += 2;
      --v71;
      v41 = v129;
    }

    while (v71);
  }

  v90 = v21[8];
  v91 = *(v21 + 32);
  sub_1883F8A68();
  v94 = v93 & v92;
  sub_1883FE184();
  v96 = v95 >> 6;

  v97 = 0;
  if (v94)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v98 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      __break(1u);
      goto LABEL_94;
    }

    if (v98 >= v96)
    {
      break;
    }

    v94 = v21[v98 + 8];
    ++v97;
    if (v94)
    {
      v97 = v98;
      do
      {
LABEL_74:
        v99 = v41[49];
        v100 = __clz(__rbit64(v94));
        v94 &= v94 - 1;
        v101 = (v97 << 9) | (8 * v100);
        v102 = *(v21[7] + v101);
        v130 = *(v21[6] + v101);
        v103 = v102;
        sub_18840D758();
        if (v104)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = *(v72 + 16);
            sub_1883FA200();
            sub_1884775D8();
            v72 = v114;
          }

          v106 = *(v72 + 16);
          v105 = *(v72 + 24);
          sub_1883F802C();
          if (v69)
          {
            sub_1884055B0(v107);
            sub_1884775D8();
            v72 = v115;
          }

          *(v72 + 16) = v99;
          v108 = v72 + 16 * v106;
        }

        else
        {
          v109 = v128;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = *(v128 + 16);
            sub_1883FA200();
            sub_1884775D8();
            v109 = v117;
          }

          v111 = *(v109 + 16);
          v110 = *(v109 + 24);
          v128 = v109;
          sub_1883F802C();
          if (v69)
          {
            sub_1884055B0(v112);
            sub_1884775D8();
            v128 = v118;
          }

          *(v128 + 16) = v109;
          v108 = v128 + 16 * v111;
        }

        *(v108 + 32) = v130;
        sub_1883FDC80(v108);
      }

      while (v94);
    }
  }

  v119 = v41[55];

  sub_18850C4DC(v72, 0);

  sub_18850C5AC(v128);

  if ([*(v119 + 16) hasInFlightUntrackedChanges])
  {
    v120 = v41[55];
    v121 = v41[49];
    sub_18840D758();
    LOBYTE(v121) = v122;
    [*(v120 + 16) setHasInFlightUntrackedChanges_];
    if (v121)
    {
      [*(v41[55] + 16) setHasPendingUntrackedChanges_];
    }
  }

  v123 = MEMORY[0x1E69E7CC0];
  v41[12] = MEMORY[0x1E69E7CC0];
  v41[13] = v127;
  v41[14] = v123;
  v41[15] = v21;
  v41[18] = 0;
  v41[20] = 0x5000000000000000;
  swift_bridgeObjectRetain_n();

  v124 = swift_task_alloc();
  v41[74] = v124;
  *v124 = v41;
  sub_1884008D8(v124);
  v125 = v41[49];
  sub_1883F85A4();

  sub_1883FBEA8();
}

uint64_t sub_1884F856C(void *a1)
{
  v3 = type metadata accessor for CancellationError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  type metadata accessor for CKError(0);
  sub_18847A4EC();
  _BridgedStoredNSError.code.getter();
  result = 1;
  if (v48 > 0x24)
  {
    goto LABEL_20;
  }

  if (((1 << v48) & 0x1000A002DALL) != 0)
  {
    return result;
  }

  if (v48 != 2)
  {
LABEL_20:
    if (v48 - 110 > 5 || ((1 << (v48 - 110)) & 0x23) == 0)
    {
      return 0;
    }

    return result;
  }

  v9 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
  if (v9)
  {
    v10 = v9;
    v43 = v1;
    v11 = *(v9 + 64);
    v37 = v9 + 64;
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v11;
    a1 = ((v12 + 63) >> 6);
    v41 = 0x80000001886FFF40;
    v40 = *MEMORY[0x1E696A578];
    v39 = (v4 + 8);

    v16 = 0;
    v38 = xmmword_1886F7400;
    v42 = v15;
    while (v14)
    {
LABEL_13:
      v18 = *(*(v10 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
      v45 = v18;
      v19 = v18;
      v20 = v18;
      v21 = v18;
      sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
      if (swift_dynamicCast())
      {

        v22 = v47;
      }

      else
      {

        v45 = v18;
        v23 = v18;
        if ((swift_dynamicCast() & 1) == 0)
        {

          v45 = 0;
          v46 = 0xE000000000000000;
          _StringGuts.grow(_:)(38);
          MEMORY[0x18CFD5140](0xD000000000000024, 0x80000001886FFF10);
          swift_getErrorValue();
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
        inited = swift_initStackObject();
        *(inited + 16) = v38;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v25;
        *(inited + 48) = 0xD000000000000012;
        *(inited + 56) = v41;
        v26 = Dictionary.init(dictionaryLiteral:)();
        v44 = 20;
        sub_18847E984(v26);

        _BridgedStoredNSError.init(_:userInfo:)();

        v22 = v47;
        (*v39)(v7, v3);
      }

      v14 &= v14 - 1;
      v27 = sub_1884F856C(v22);

      v10 = v42;
      if (v27)
      {

        return 1;
      }
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= a1)
      {

        return 0;
      }

      v14 = *(v37 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else if (qword_1EA90C9F0 == -1)
  {
    goto LABEL_25;
  }

  swift_once();
LABEL_25:
  v28 = type metadata accessor for Logger();
  sub_1883FDE5C(v28, qword_1EA90C9F8);
  v29 = a1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = v29;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_1883EA000, v30, v31, "BUG IN CLOUDKIT: Could not get partial errors from CKError.partialFailure: %@", v32, 0xCu);
    sub_188442B84(v33, &qword_1EA90DC70, &unk_1886FA190);
    MEMORY[0x18CFD7E80](v33, -1, -1);
    MEMORY[0x18CFD7E80](v32, -1, -1);
  }

  return 1;
}

uint64_t sub_1884F8B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1884F8BB8;

  return CKDatabase.modifyRecordZones(saving:deleting:)(a2, a3);
}

uint64_t sub_1884F8BB8()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = sub_1883F7E8C();
  }

  return v7(v6);
}

uint64_t sub_1884F8CB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1884F9D64;

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(a2, a3, 0, a4);
}

uint64_t sub_1884F8D70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  swift_beginAccess();
  v11 = *(a2 + 16);

  if (v10 == 1)
  {
    v12 = v9;
  }

  else
  {
    v12 = [v9 zoneID];
  }

  v13 = v12;
  v14 = sub_1884C8160(v12, v11);

  if (!v14)
  {
    result = swift_beginAccess();
    if (*(*(a3 + 16) + 16) < a4)
    {
      if (v10)
      {
        v16 = v9;
      }

      else
      {
        v17 = v9;
        v18 = CKRecordZone.parent.getter();

        if (v18)
        {
          if (*(a5 + 16))
          {
            v19 = *&v18[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID];
            sub_188486310();
            if (v21)
            {
              v22 = *(a5 + 56) + 16 * v20;
              v23 = *v22;
              LOBYTE(v22) = *(v22 + 8);
              v31 = v23;
              v32 = v22;
              v24 = v23;
              sub_1884F8D70(&v31, a2, a3, a4, a5);
            }
          }
        }

        v16 = [v17 zoneID];
      }

      v25 = v16;
      swift_beginAccess();
      sub_188406C1C(v30, v25);
      swift_endAccess();

      result = swift_beginAccess();
      if (*(*(a3 + 16) + 16) < a4)
      {
        swift_beginAccess();
        v26 = v9;
        sub_188476A7C();
        v27 = *(*(a3 + 16) + 16);
        sub_188476C80();
        v28 = *(a3 + 16);
        *(v28 + 16) = v27 + 1;
        v29 = v28 + 16 * v27;
        *(v29 + 32) = v9;
        *(v29 + 40) = v10;
        *(a3 + 16) = v28;
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_1884F8FAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1884F900C(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

void sub_1884F9088(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(i - 2);
    v7 = *(i - 8);
    v8 = *i;
    v9 = v6;
    if (!v6)
    {
      goto LABEL_17;
    }

    v10 = v9;
    v11 = *a3;
    sub_188486310();
    v14 = v13;
    v15 = v11[2];
    v16 = (v12 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_20;
    }

    v17 = v12;
    if (v11[3] < v15 + v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_18844E6FC(&unk_1EA90E620, &unk_1886FBC40);
      _NativeDictionary.copy()();
      if (v17)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v21 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v21[6] + 8 * v14) = v10;
    v22 = v21[7] + 16 * v14;
    *v22 = v7;
    *(v22 + 8) = v8;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_21;
    }

    v21[2] = v25;
    ++v4;
    a2 = 1;
  }

  sub_18851152C();
  v18 = *a3;
  sub_188486310();
  if ((v17 & 1) != (v20 & 1))
  {
    goto LABEL_22;
  }

  v14 = v19;
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  _StringGuts.grow(_:)(30);
  MEMORY[0x18CFD5140](0xD00000000000001BLL, 0x8000000188702890);
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18CFD5140](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1884F937C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 24)
  {
    if (v29 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;
    v9 = v6;
    v10 = v7;
    if (!v6)
    {
      goto LABEL_17;
    }

    v28 = v10;
    v11 = *a3;
    sub_188486310();
    v14 = v13;
    v15 = v11[2];
    v16 = (v12 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_20;
    }

    v17 = v12;
    if (v11[3] < v15 + v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_18844E6FC(&qword_1EA90E5C0, &qword_1886FBA58);
      _NativeDictionary.copy()();
      if (v17)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v21 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v21[6] + 8 * v14) = v9;
    v22 = v21[7] + 16 * v14;
    *v22 = v7;
    *(v22 + 8) = v8;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_21;
    }

    v21[2] = v25;
    ++v4;
    a2 = 1;
  }

  sub_188511694();
  v18 = *a3;
  sub_188486310();
  if ((v17 & 1) != (v20 & 1))
  {
    goto LABEL_22;
  }

  v14 = v19;
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();

  v27 = v26;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  _StringGuts.grow(_:)(30);
  MEMORY[0x18CFD5140](0xD00000000000001BLL, 0x8000000188702890);
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18CFD5140](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1884F9684(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v13[6] = *MEMORY[0x1E69E9840];
  v13[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v13[3] = v13;
  v13[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = (&v13[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_188501174(0, v5, v6);
    sub_1884F9824(v6, v5, v3, a2);
    v8 = v7;
  }

  else
  {
    v11 = swift_slowAlloc();
    v8 = sub_1884F900C(v11, v5, sub_1884F9B34);

    MEMORY[0x18CFD7E80](v11, -1, -1);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1884F9824(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v5 = 0;
  v28 = a3 + 32;
  v29 = *(a3 + 16);
  v6 = a4 + 56;
  v31 = a4 + 56;
LABEL_2:
  while (2)
  {
    if (v5 == v29)
    {
LABEL_18:

      sub_1884E45E8(a1, a2, v26, a4);
    }

    else
    {
      if (v5 >= v29)
      {
        __break(1u);
      }

      else if (!__OFADD__(v5, 1))
      {
        v7 = v28 + 16 * v5;
        v8 = *(v7 + 8);
        v30 = v5 + 1;
        v9 = *v7;
        v10 = *(a4 + 40);
        Hasher.init(_seed:)();
        MEMORY[0x18CFD5EB0](v8);
        v32 = v9;
        NSObject.hash(into:)();
        v11 = Hasher._finalize()();
        v12 = -1 << *(a4 + 32);
        v13 = v11 & ~v12;
        v14 = v13 >> 6;
        v15 = 1 << v13;
        if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) == 0)
        {
LABEL_13:

          v5 = v30;
          continue;
        }

        v16 = ~v12;
        while (1)
        {
          v17 = *(a4 + 48) + 16 * v13;
          v18 = *v17;
          if (*(v17 + 8))
          {
            if ((v8 & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          else if (v8)
          {
            goto LABEL_12;
          }

          sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
          v19 = v18;
          v20 = v32;
          v21 = v19;
          v22 = static NSObject.== infix(_:_:)();

          v6 = v31;
          if (v22)
          {

            v23 = a1[v14];
            a1[v14] = v23 | v15;
            v5 = v30;
            if ((v23 & v15) != 0)
            {
              goto LABEL_2;
            }

            if (!__OFADD__(v26++, 1))
            {
              goto LABEL_2;
            }

            __break(1u);
            goto LABEL_18;
          }

LABEL_12:
          v13 = (v13 + 1) & v16;
          v14 = v13 >> 6;
          v15 = 1 << v13;
          if ((*(v6 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      __break(1u);
    }

    break;
  }
}

uint64_t sub_1884F9A1C()
{
  sub_1883F78E0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1884F9D68;
  v6 = sub_1883FE860();

  return sub_1884F8CB4(v6, v2, v3, v4);
}

uint64_t sub_1884F9AC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1884F9B04(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1884F9824(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_1884F9B70(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1884F9BB0()
{
  sub_1883F78E0();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1884F9C4C;
  sub_1883FE860();
  sub_1883FEFEC();

  return sub_1884F8B08(v5, v6, v7);
}

uint64_t sub_1884F9C4C()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = sub_1883F7E8C();

  return v7(v6);
}

void sub_1884F9D88()
{
  v2 = v0[3].opaque[1];
  v3 = v0[2].opaque[0];

  os_activity_scope_leave(v0 + 1);
}

uint64_t sub_1884F9DA8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1884F9EA8, v3, 0);
}

uint64_t sub_1884F9EA8()
{
  sub_1883F7120();
  if (*(v0 + 33) == 1)
  {
    v1 = *(v0 + 16);
    sub_1884E5EAC();
  }

  sub_1883F816C();

  return v2();
}

uint64_t sub_1884F9F0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7568(a1, v1);
}

uint64_t sub_1884F9F24()
{
  sub_1883F7120();
  v1 = v0[3];
  if (sub_188420584())
  {
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_1884F9FEC;
    v3 = v0[2];
    v4 = v0[3];

    return sub_1884FA298(v3);
  }

  else
  {
    sub_1883F816C();

    return v6();
  }
}

uint64_t sub_1884F9FEC()
{
  sub_1883F7120();
  v1 = *v0;
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 24);
  v7 = *v0;
  sub_1883F78D4();
  *v8 = v7;
  *(v10 + 40) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1884FA0F8, v6, 0);
}

uint64_t sub_1884FA0F8()
{
  sub_18842090C(*(v0 + 40));
  v2 = v1;

  if (v2)
  {
    v3 = MEMORY[0x18CFD5010](0xD00000000000003FLL, 0x80000001887028D0);
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v5 = type metadata accessor for Logger();
    sub_1883FDE5C(v5, qword_1EA90C9F8);
    v4.super.isa = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4.super.isa, v6))
    {
      *swift_slowAlloc() = 0;
      sub_1883FDB58(&dword_1883EA000, v7, v8, "BUG IN CLOUDKIT: Unable to convert fetched database changes without push telemetry payload to NSObjects");
      sub_1883F8F74();
    }
  }

  sub_1883F816C();

  return v9();
}

unint64_t sub_1884FA26C()
{
  result = sub_1884FA4D8(0x3E8uLL);
  byte_1EA919CA0 = result == 13;
  return result;
}

uint64_t sub_1884FA298(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return sub_1883F7568(a1, v1);
}

uint64_t sub_1884FA2B0()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = [*(v1 + 144) containerID];
  v4 = sub_188420BE4(v3);
  v6 = v5;
  sub_18844E6FC(&qword_1EA90E5E0, &qword_1886FBAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886FB560;
  sub_1883F9424();
  v8[4] = 0xD000000000000013;
  v8[5] = v9;
  v10 = MEMORY[0x1E69E6158];
  v8[6] = v4;
  v8[7] = v6;
  sub_1884055C4();
  *(v11 + 72) = v10;
  *(v11 + 80) = v12;
  sub_1883F7DA4(v11);
  v13 = CKContainerEnvironmentString([v3 environment]);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 96) = v14;
  *(inited + 104) = v16;
  sub_1883FA210();
  *(inited + 120) = v10;
  *(inited + 128) = v17;
  sub_1883F8A84();
  *(inited + 136) = v18;
  v19 = CKDatabaseScopeString([*(v1 + 136) databaseScope]);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(inited + 144) = v20;
  *(inited + 152) = v22;
  sub_1883F9424();
  *(inited + 168) = v10;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = v23;
  v24 = sub_188403050();
  v25 = MEMORY[0x1E69E6370];
  *(inited + 192) = v24 & 1;
  *(inited + 216) = v25;
  *(inited + 224) = 0xD00000000000001BLL;
  *(inited + 232) = 0x8000000188702950;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  *(inited + 264) = sub_1883F4C5C(0, &qword_1EA90C7B8, 0x1E696AD98);
  *(inited + 240) = isa;
  sub_18844E6FC(&qword_1EA90E5D8, &qword_1886FBAB8);
  v27 = Dictionary.init(dictionaryLiteral:)();

  v28 = v0[1];

  return v28(v27);
}

unint64_t sub_1884FA4D8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    result = (__buf * v1) >> 64;
    if (__buf * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > __buf * v1)
      {
        do
        {
          __buf = 0;
          arc4random_buf(&__buf, 8uLL);
        }

        while (v2 > __buf * v1);
        return (__buf * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CKSyncEngine.automaticSyncOptions.getter@<X0>(void *a1@<X8>)
{
  sub_1883FA550();
  sub_1884C7AD8(a1);
}

uint64_t CKSyncEngine.state.getter()
{
  sub_1883FA550();
  v1 = *(v0 + 128);

  return v1;
}

uint64_t CKSyncEngine.__allocating_init(_:)()
{
  swift_allocObject();
  v1 = sub_1883FEFE0();
  CKSyncEngine.init(_:)(v1);
  return v0;
}

uint64_t CKSyncEngine.database.getter()
{
  sub_1883FA550();
  v2 = *(v1 + 136);
  sub_1883FEFE0();

  return v0;
}

uint64_t CKSyncEngine.__deallocating_deinit()
{
  sub_188442B84(v0 + 24, &qword_1EA90E5E8, &qword_1886FBAD8);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t CKSyncEngine.fetchChanges(_:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return sub_1883F7178();
}

uint64_t sub_1884FA6E4()
{
  v1 = v0[12];
  sub_1884FA914();
  v2 = v0[11];
  v3 = v0[12];
  sub_1883FA550();
  v0[13] = v4;
  memcpy(v0 + 2, v2, 0x48uLL);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1884FA7E0;

  return sub_1883F781C();
}

uint64_t sub_1884FA7E0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);

    return MEMORY[0x1EEE6DFA0](sub_1884FA90C, 0, 0);
  }

  else
  {
    v10 = *(v3 + 104);

    v11 = *(v7 + 8);

    return v11();
  }
}

uint64_t sub_1884FA914()
{
  result = sub_1884FB534();
  if (result)
  {
    if (qword_1EA90CBE0 != -1)
    {
      swift_once();
    }

    v1 = qword_1EA919CA8;
    os_unfair_lock_lock((qword_1EA919CA8 + 20));
    v2 = *(v1 + 16);
    os_unfair_lock_unlock((v1 + 20));
    if (v2)
    {
      related decl 'e' for CKErrorCode.init(_:description:)(12, 0xD00000000000011ELL, 0x8000000188702AD0);
      return swift_willThrow();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t CKSyncEngine.sendChanges(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  *(v2 + 88) = *(a1 + 8);
  *(v2 + 56) = a1[2];
  return sub_1883F7178();
}

uint64_t sub_1884FAA34()
{
  v1 = *(v0 + 40);
  sub_1884FA914();
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 88);
  v5 = *(v0 + 40);
  sub_1883FA550();
  *(v0 + 64) = v6;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v2;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1884FAB40;

  return sub_1884137E4();
}

uint64_t sub_1884FAB40()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    v9 = *(v3 + 64);

    return MEMORY[0x1EEE6DFA0](sub_1884FAC6C, 0, 0);
  }

  else
  {
    v10 = *(v3 + 64);

    v11 = *(v7 + 8);

    return v11();
  }
}

uint64_t CKSyncEngine.fetchAsset(_:)(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return sub_1883F7178();
}

uint64_t sub_1884FAC98()
{
  v1 = *(v0 + 40);
  sub_1884FA914();
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_1883FA550();
  *(v0 + 72) = v4;
  *(v0 + 16) = v7;
  *(v0 + 32) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1884FAD9C;

  return sub_1884D17A0();
}

uint64_t sub_1884FAD9C(uint64_t a1)
{
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v2;
  sub_1883F7110();
  *v10 = v9;
  *(v5 + 88) = v1;

  if (v1)
  {
    v11 = *(v5 + 72);

    return MEMORY[0x1EEE6DFA0](sub_1884FAEE8, 0, 0);
  }

  else
  {
    v12 = *(v5 + 72);

    v13 = *(v9 + 8);

    return v13(a1);
  }
}

uint64_t sub_1884FAF14()
{
  v1 = v0[2];
  sub_1884FA914();
  v2 = v0[2];
  sub_1883FA550();
  v0[3] = v3;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1884FAFD0;

  return sub_1884C75F0();
}

uint64_t sub_1884FAFD0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6();
}

void *sub_1884FB0D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  CKSyncEngine.automaticSyncOptions.getter(v5);
  return memcpy(a2, v5, 0x60uLL);
}

uint64_t sub_1884FB114(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = *a2;
  sub_1884FB2DC(__dst, &v6);
  return CKSyncEngine.automaticSyncOptions.setter(__src);
}

uint64_t CKSyncEngine.automaticSyncOptions.setter(void *__src)
{
  memcpy(v2, __src, sizeof(v2));
  sub_1883FA550();
  sub_1884C7B58(v2);
}

void (*CKSyncEngine.automaticSyncOptions.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_188470D2C(0x188uLL);
  *a1 = v3;
  v3[48] = v1;
  sub_1883FA550();
  sub_1884C7AD8(v3);

  return sub_1884FB23C;
}

void sub_1884FB23C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 384);
  if (a2)
  {
    sub_1883FE764((v2 + 192));
    sub_1883FE764(v4);
    sub_1884FB2DC(v2 + 192, v2 + 288);
    CKSyncEngine.automaticSyncOptions.setter(v4);
    sub_1883FE764((v2 + 96));
    sub_188442B84(v2 + 96, &unk_1EA90E4D0, &unk_1886FB460);
  }

  else
  {
    sub_1883FE764(v4);
    CKSyncEngine.automaticSyncOptions.setter(v4);
  }

  free(v2);
}

uint64_t sub_1884FB2DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&unk_1EA90E4D0, &unk_1886FB460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall CKSyncEngine.setNeedsToFetchChanges()()
{
  if (qword_1EA90C9F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1883FDE5C(v0, qword_1EA90C9F8);
  sub_1883FEFE0();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    sub_1883FA550();
    v5 = sub_1883FE43C();
    v7 = v6;

    v8 = sub_1883FE340(v5, v7, &v11);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1883EA000, v1, v2, "%s manually setting needsToFetchDatabaseChanges", v3, 0xCu);
    sub_1883FE944(v4);
    MEMORY[0x18CFD7E80](v4, -1, -1);
    MEMORY[0x18CFD7E80](v3, -1, -1);
  }

  sub_1883FA550();
  v10 = *(v9 + 128);

  [*(v10 + 16) setNeedsToFetchDatabaseChanges_];
}

uint64_t CKSyncEngine.useOpportunisticPushTopic.getter()
{
  sub_1883FA550();
  v1 = *(v0 + 360);

  return v1;
}

uint64_t sub_1884FB534()
{
  if (qword_1EA90C838 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  return v1;
}

uint64_t sub_1884FB59C()
{
  sub_18844E6FC(&qword_1EA90D228, &qword_1886F70A0);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  qword_1EA919CA8 = result;
  return result;
}

uint64_t sub_1884FB5F4()
{
  sub_1883F7120();
  v1 = *(v0 + 16);
  sub_1883FA550();
  *(v0 + 24) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1884FB65C, v2, 0);
}

uint64_t sub_1884FB65C()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();

  v3 = *(v0 + 8);

  return v3(Strong);
}

uint64_t CKSyncEngine.description.getter()
{
  sub_1883FA550();
  v0 = sub_1883FE43C();

  return v0;
}

uint64_t sub_1884FB764()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    v2 = *(v0 + 24);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1884FB7A8()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    *(v0 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1884FB7E8()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    *(v0 + 16) = xmmword_1886FBB70;
  }

  return result;
}

void sub_1884FB89C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_188504B9C();
  v4 = MEMORY[0x18CFD55A0](v2, &type metadata for CKSyncEngine.PendingAssetSync, v3);
  v5 = 0;
  v8[1] = v4;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v6 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v7 = v5 + 1;
    sub_1885011D8(v8, *(a1 + 8 * v5 + 32));

    v5 = v7;
  }

  __break(1u);
}

void sub_1884FB948(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = sub_188504B48();
  MEMORY[0x18CFD55A0](v5, &type metadata for CKSyncEngine.PendingRecordZoneChange, v6);
  sub_18840E81C();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;
    v7 = *v3;
    v8 = *(v3 - 1);
    v9 = v8;
    sub_1885015CC(v10, v8, v7);

    v3 += 16;
  }

  __break(1u);
}

uint64_t sub_1884FBA00(void *a1)
{
  *&v1[OBJC_IVAR___CKSyncEngine_swiftEngine] = 0;
  sub_188505F64(v13);
  v3 = v14;
  if (object_getClass(v14) != _TtC8CloudKit31CKSyncEngineObjCDelegateAdapter || v3 == 0)
  {
    _StringGuts.grow(_:)(75);
    MEMORY[0x18CFD5140](0xD000000000000049, 0x8000000188702F70);
    swift_getObjectType();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR___CKSyncEngine_delegateAdapter] = v3;
    v12.receiver = v1;
    v12.super_class = CKSyncEngine;
    swift_unknownObjectRetain_n();
    v5 = objc_msgSendSuper2(&v12, sel_init);
    v6 = v15;
    v7 = v5;

    v15 = v5;
    sub_18841B75C(v13, &v11);
    type metadata accessor for CKSyncEngine();
    sub_1883F8708();
    swift_allocObject();
    v8 = CKSyncEngine.init(_:)(&v11);

    swift_unknownObjectRelease();
    v9 = *&v7[OBJC_IVAR___CKSyncEngine_swiftEngine];
    *&v7[OBJC_IVAR___CKSyncEngine_swiftEngine] = v8;

    sub_18841F6DC(v13);
    return v7;
  }

  return result;
}

unint64_t CKSyncEngine.description.getter()
{
  if (!sub_1884FBC68())
  {
    return 0xD00000000000001CLL;
  }

  v0 = sub_1883FE43C();

  return v0;
}

uint64_t sub_1884FBC68()
{
  if (!*(v1 + OBJC_IVAR___CKSyncEngine_swiftEngine))
  {
    return 0;
  }

  sub_1883FA550();
  sub_1883F793C();

  return v0;
}

id sub_1884FBCF8()
{
  v0 = *(sub_1883F6A78() + 136);

  return v0;
}

uint64_t sub_1884FBD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1884FBD58, 0, 0);
}

uint64_t sub_1884FBD58()
{
  sub_1883F7120();
  v1 = v0[2];
  v0[5] = sub_1883F6A78();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1884FBDF0;

  return sub_1884C75F0();
}

uint64_t sub_1884FBDF0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884FBEF4()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v1();
  }

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884FC040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[47] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1884FC064, 0, 0);
}

uint64_t sub_1884FC064()
{
  sub_1883FC738();
  v14 = v0;
  v1 = *(v0 + 376);
  *(v0 + 400) = sub_1883F6A78();
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = Dictionary.init(dictionaryLiteral:)();

  type metadata accessor for SyncEngine();
  v4 = sub_1883F57B8();
  *(v0 + 16) = 0;
  *(v0 + 24) = 2;
  *(v0 + 32) = v4;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 3;
  sub_1883F697C(v0 + 16, v0 + 88);
  sub_1883F69F4(v4);
  if (v5 && (sub_1883F7574(), (sub_1883F7624() & 1) == 0))
  {
  }

  else
  {
    v6 = *(v0 + 24);
    v12 = *(v0 + 16);
    v13 = v6;

    v7 = sub_1883F6734(&v12);
    v9 = v8;

    sub_1883F60E8(v7, v9, v4);
  }

  sub_1883F7768(v0 + 16);
  *(v0 + 160) = 0;
  *(v0 + 168) = 2;
  *(v0 + 176) = v4;
  *(v0 + 184) = v2;
  *(v0 + 192) = v3;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 3;
  v10 = swift_task_alloc();
  *(v0 + 408) = v10;
  *v10 = v0;
  sub_1883FF790(v10);

  return sub_1883F781C();
}

uint64_t sub_1884FC288()
{
  sub_1883F78E0();
  v2 = *v1;
  v3 = *v1;
  sub_1883F7110();
  *v4 = v3;
  v5 = v2[51];
  *v4 = *v1;
  v3[52] = v0;

  v6 = v2[50];
  if (v0)
  {
    memcpy(v3 + 29, v3 + 20, 0x48uLL);
    sub_1883F7768((v3 + 29));
  }

  else
  {
    memcpy(v3 + 38, v3 + 20, 0x48uLL);
    sub_1883F7768((v3 + 38));
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884FC3E8()
{
  sub_1883F7120();
  v1 = *(v0 + 384);
  if (v1)
  {
    v2 = *(v0 + 392);
    v1(0);
  }

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884FC450()
{
  sub_1883F78E0();
  v1 = v0[48];
  v2 = v0[52];
  if (v1)
  {
    v3 = v0[49];
    v4 = v2;
    v1(v2);
  }

  sub_1883F816C();

  return v5();
}

uint64_t sub_1884FC5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1884FC5E8, 0, 0);
}

uint64_t sub_1884FC5E8()
{
  sub_1883F653C();
  v8 = v0;
  v1 = *(v0 + 40);
  *(v0 + 64) = sub_1883F6A78();
  type metadata accessor for SyncEngine();
  v2 = sub_1883F57B8();
  sub_1883F69F4(v2);
  if (v3 && (sub_1883F7574(), (sub_1883F7624() & 1) == 0))
  {
  }

  else
  {
    v6 = 0;
    v7 = 3;
    sub_188413094(&v6);
    sub_1883F90D4();

    sub_188410F1C();
  }

  *(v0 + 16) = 0;
  *(v0 + 24) = 3;
  *(v0 + 32) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  sub_1883FF790(v4);

  return sub_1884137E4();
}

uint64_t sub_1884FC730()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F78D4();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *(v5 + 64);
  v8 = *v1;
  sub_1883F7110();
  *v9 = v8;
  *(v3 + 80) = v0;

  v10 = *(v3 + 16);

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1884FC864()
{
  sub_1883F7120();
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 56);
    v1(0);
  }

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884FC8CC()
{
  sub_1883F78E0();
  v1 = v0[6];
  v2 = v0[10];
  if (v1)
  {
    v3 = v0[7];
    v4 = v2;
    v1(v2);
  }

  sub_1883F816C();

  return v5();
}

void __swiftcall CKSyncEngine.init()(CKSyncEngine *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_1884FCB18()
{
  if (qword_1EA90C9F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1883FDE5C(v1, qword_1EA90C9F8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1883EA000, v3, v4, "%@ manually setting needsToFetchDatabaseChanges", v5, 0xCu);
    sub_188462FE0(v6);
    MEMORY[0x18CFD7E80](v6, -1, -1);
    MEMORY[0x18CFD7E80](v5, -1, -1);
  }

  v8 = [v2 state];
  [v8 setNeedsToFetchDatabaseChanges_];
}

uint64_t sub_1884FCD08()
{
  sub_1883F6A78();
  v0 = sub_188403050();

  return v0 & 1;
}

uint64_t sub_1884FCD94(char a1)
{
  sub_1883F6A78();
  sub_1884C7858(a1);
}

id sub_1884FCDF0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x18CFD5010](v5, v7);

  return v8;
}

uint64_t sub_1884FCE60()
{
  sub_1883F6A78();
  v0 = sub_18841EDF0();

  return v0;
}

uint64_t sub_1884FCEDC()
{
  v0 = *(sub_1883F6A78() + 360);

  return v0;
}

uint64_t sub_1884FCF08()
{
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  sub_1884FB7A8();

  swift_unknownObjectWeakAssign();
  objc_opt_self();
  sub_1883F9598();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
    v1 = 0;
  }

  *(v0 + 120) = v1;
  return v0;
}

uint64_t sub_1884FCF94()
{
  sub_1883F7120();
  v1[50] = v2;
  v1[51] = v0;
  v1[49] = v3;
  memcpy(v1 + 2, v4, 0x50uLL);
  v5 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884FCFFC()
{
  sub_1883F7120();
  v1 = *(v0 + 408);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 416) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 400);
    sub_1883FA550();
    *(v0 + 424) = v4;
    v5 = sub_1883FDC8C();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    sub_1883FF504(*(v0 + 392));
    sub_1883FAB38(v0 + 16, v0 + 96);
    sub_1883F816C();

    return v8();
  }
}

uint64_t sub_1884FD0B4()
{
  sub_1883F7120();
  v1 = v0[53];
  v2 = v0[51];
  v0[54] = swift_unknownObjectWeakLoadStrong();

  v3 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884FD124()
{
  v17 = v0;
  v1 = *(v0 + 416);
  if (!*(v0 + 432))
  {
    v14 = *(v0 + 416);
    swift_unknownObjectRelease();
    sub_1883FF504(*(v0 + 392));
    sub_1883FAB38(v0 + 16, v0 + 96);
    goto LABEL_9;
  }

  v2 = *(v0 + 16);
  sub_1883FF504((v0 + 176));
  sub_1883FF504(__src);
  sub_1883F697C(v0 + 176, v0 + 320);
  v3 = sub_188403D04();
  memcpy((v0 + 248), __src, 0x48uLL);
  sub_1883F7768(v0 + 248);
  v4 = [objc_allocWithZone(CKSyncEngineFetchChangesContext) initWithReason:v2 options:v3];
  *(v0 + 440) = v4;

  if ([v1 respondsToSelector_])
  {
    v5 = [*(v0 + 416) syncEngine:*(v0 + 432) nextFetchChangesOptionsForContext:v4];
    if (v5)
    {
      v6 = v5;
      v7 = *(v0 + 432);
      v8 = *(v0 + 416);
      sub_1883F6B10(*(v0 + 392));

      swift_unknownObjectRelease();
LABEL_9:
      sub_1883F816C();

      return v15();
    }
  }

  v9 = swift_task_alloc();
  *(v0 + 448) = v9;
  *v9 = v0;
  v9[1] = sub_1884FD324;
  v11 = *(v0 + 400);
  v10 = *(v0 + 408);
  v12 = *(v0 + 392);

  return sub_1884FD484(v12, v10, &off_1EFA2C728, v0 + 16, v11);
}

uint64_t sub_1884FD324()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 448);
  v3 = *(v1 + 408);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884FD41C()
{
  sub_1883F7120();
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);

  swift_unknownObjectRelease();
  sub_1883F816C();

  return v3();
}

uint64_t sub_1884FD484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 912) = a5;
  *(v5 + 904) = a4;
  *(v5 + 896) = a1;
  memcpy((v5 + 16), (a4 + 8), 0x48uLL);
  *(v5 + 920) = *(v5 + 16);
  *(v5 + 863) = *(v5 + 24);
  *(v5 + 840) = *(a4 + 17);
  *(v5 + 855) = *(a4 + 32);
  *(v5 + 928) = *(v5 + 48);
  v7 = *(a4 + 64);
  *(v5 + 808) = *(a4 + 48);
  *(v5 + 824) = v7;
  sub_1883F697C(v5 + 16, v5 + 88);
  v8 = swift_task_alloc();
  *(v5 + 936) = v8;
  *v8 = v5;
  v8[1] = sub_1884FD580;

  return sub_1884FB5E0();
}

uint64_t sub_1884FD580()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  v4 = *(v3 + 936);
  *v2 = *v0;
  *(v1 + 944) = v5;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1884FD670()
{
  v92 = v0;
  if (!*(v0 + 944))
  {
    v20 = *(v0 + 928);
    v21 = *(v0 + 863);
    v22 = *(v0 + 904);
    v23 = *(v0 + 896);
    *v23 = *(v0 + 920);
    *(v23 + 8) = v21;
    v24 = *(v22 + 17);
    *(v23 + 24) = *(v22 + 32);
    *(v23 + 32) = v20;
    *(v23 + 9) = v24;
    v25 = *(v22 + 48);
    *(v23 + 56) = *(v22 + 64);
    *(v23 + 40) = v25;
    goto LABEL_45;
  }

  v83 = v0 + 840;
  v84 = (v0 + 808);
  v85 = (v0 + 872);
  v86 = (v0 + 864);
  v1 = *(v0 + 920);
  v2 = *(v0 + 912);
  sub_1883FA550();
  v4 = *(v3 + 128);

  v5 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();

  v90 = MEMORY[0x1E69E7CC0];
  v6 = sub_1883F4C9C(v5);
  v7 = 0;
  v87 = v0;
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x18CFD59D0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

    if (*(v0 + 863))
    {
      if (*(v0 + 863) != 1 || (*v85 = v8, *(swift_task_alloc() + 16) = v85, , v10 = sub_18850DE28(), , , (v10 & 1) != 0))
      {
LABEL_11:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = *(v90 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_1883F86B8();
        specialized ContiguousArray._endMutation()();
        goto LABEL_14;
      }
    }

    else
    {
      *v86 = v8;
      *(swift_task_alloc() + 16) = v86;

      v12 = sub_18850DE28();

      if ((v12 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    ++v7;
    v0 = v87;
  }

  v13 = v90;
  *(v0 + 952) = v90;
  v14 = MEMORY[0x1E69E7CC0];
  *(v0 + 880) = MEMORY[0x1E69E7CC0];
  v15 = sub_1883F4C9C(v13);
  *(v0 + 960) = v15;
  if (!v15)
  {
    v26 = *(v0 + 928);
    v27 = *(v0 + 952);

    if (sub_1883F4C9C(v14))
    {
      v28 = *(v0 + 920);
      if (*(v0 + 863))
      {
        if (*(v0 + 863) == 1)
        {
          v29 = *(v0 + 920);

          v88 = sub_1884043A8(v30);
          v1 = MEMORY[0x1E69E7CC0];
          sub_188504538();

          sub_1883F5DF8(v88);
          sub_1883F793C();

          *(v0 + 160) = v1;
          *(v0 + 168) = 1;
          *(v0 + 169) = *v83;
          *(v0 + 184) = *(v83 + 15);
          *(v0 + 192) = v26;
          v31 = v84[1];
          *(v0 + 200) = *v84;
          *(v0 + 216) = v31;
          v32 = *(v0 + 176);
          sub_1883F697C(v0 + 160, v0 + 232);
          sub_1883F69F4(v32);
          if (v33 && (sub_1883F7574(), sub_1883FE280(), (sub_1883F7624() & 1) == 0))
          {
            v34 = *(v0 + 944);
          }

          else
          {
            v34 = *(v0 + 944);
            v35 = *(v0 + 160);
            v36 = *(v87 + 168);
            type metadata accessor for SyncEngine();
            v37 = sub_1883F98D8();
            sub_1883F8518(v37, v38, v39, v40, v41, v42, v43, v44);
            sub_1883F90D4();

            sub_188410F1C();
          }

          sub_1883F7768(v0 + 160);
          v49 = 1;
        }

        else
        {
          v67 = *(v0 + 920);

          *(v0 + 664) = v14;
          *(v0 + 672) = 0;
          sub_1883FE1F0((v0 + 673), v82, v83);
          *(v0 + 688) = v68;
          *(v0 + 696) = v26;
          v69 = v84[1];
          *(v0 + 704) = *v84;
          *(v0 + 720) = v69;
          v70 = *(v0 + 680);
          sub_1883F697C(v0 + 664, v0 + 736);
          sub_1883F69F4(v70);
          if (v71 && (sub_1883F7574(), (sub_1883F7624() & 1) == 0))
          {
            v72 = *(v0 + 944);
          }

          else
          {
            v72 = *(v0 + 944);
            v73 = *(v0 + 664);
            v74 = *(v0 + 672);
            type metadata accessor for SyncEngine();
            v90 = v73;
            v91 = v74;

            sub_1883F6734(&v90);

            v75 = sub_1883F84DC();
            sub_1883F60E8(v75, v76, v70);
          }

          sub_1883F7768(v0 + 664);
          v49 = 0;
          v1 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v50 = *(v0 + 920);

        v89 = sub_1884043A8(MEMORY[0x1E69E7CC0]);
        v51 = sub_1884043A8(v28);
        sub_1884433B0(v51);
        sub_1883F5DF8(v89);
        sub_1883F793C();

        *(v0 + 520) = v1;
        *(v0 + 528) = 0;
        sub_1883FE1F0((v0 + 529), v82, v83);
        *(v0 + 544) = v52;
        *(v0 + 552) = v26;
        v53 = v84[1];
        *(v0 + 560) = *v84;
        *(v0 + 576) = v53;
        v54 = *(v0 + 536);
        sub_1883F697C(v0 + 520, v0 + 592);
        sub_1883F69F4(v54);
        if (v55 && (sub_1883F7574(), sub_1883FE280(), (sub_1883F7624() & 1) == 0))
        {
          v56 = *(v0 + 944);
        }

        else
        {
          v56 = *(v0 + 944);
          v57 = *(v0 + 520);
          v58 = *(v87 + 528);
          type metadata accessor for SyncEngine();
          v59 = sub_1883F98D8();
          sub_1883F8518(v59, v60, v61, v62, v63, v64, v65, v66);
          sub_1883F90D4();

          sub_188410F1C();
        }

        sub_1883F7768(v0 + 520);
        v49 = 0;
      }
    }

    else
    {
      v48 = *(v0 + 944);

      v49 = *(v0 + 863);
      v1 = *(v0 + 920);
    }

    v77 = sub_1883FA4C8();
    *v78 = *v83;
    *(v0 + 400) = *(v83 + 15);
    *(v0 + 408) = v26;
    v79 = v84[1];
    *(v0 + 416) = *v84;
    *(v0 + 432) = v79;
    memcpy(v77, (v0 + 376), 0x48uLL);
    *(v0 + 304) = v1;
    *(v0 + 312) = v49;
    *(v0 + 313) = *v83;
    *(v0 + 328) = *(v83 + 15);
    *(v0 + 336) = v26;
    v80 = v84[1];
    *(v0 + 344) = *v84;
    *(v0 + 360) = v80;
    sub_1883F697C(v0 + 376, v0 + 448);
    sub_1883F7768(v0 + 304);
LABEL_45:
    sub_1883F816C();

    v81();
    return;
  }

  v16 = OBJC_IVAR___CKSyncEngine_delegateAdapter;
  *(v0 + 968) = OBJC_IVAR___CKSyncEngine_delegateAdapter;
  v17 = *(v0 + 928);
  *(v0 + 984) = v14;
  *(v0 + 976) = v17;
  v18 = *(v0 + 952);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x18CFD59D0](0);
    v16 = *(v0 + 968);
  }

  else
  {
    if (!*(v18 + 16))
    {
      goto LABEL_50;
    }

    v19 = *(v18 + 32);
  }

  *(v0 + 992) = v19;
  *(v0 + 1000) = 1;
  *(v0 + 1008) = *(*(v0 + 944) + v16);

  v45 = swift_task_alloc();
  *(v0 + 1016) = v45;
  *v45 = v0;
  v46 = sub_1883FED98(v45);

  sub_1884FE4E0(v46, v47);
}

uint64_t sub_1884FDD84()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  v4 = *(v3 + 1016);
  v5 = *(v3 + 1008);
  v6 = *v0;
  sub_1883F7110();
  *v7 = v6;
  *(v9 + 1024) = v8;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1884FDE8C()
{
  if (*(v0 + 1024))
  {
    v1 = (v0 + 984);
  }

  else
  {
    v1 = (v0 + 880);
    MEMORY[0x18CFD52F0](*(v0 + 992));
    if (*((*(v0 + 880) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 880) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v2 = *(v0 + 992);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v3 = *v1;
  v4 = [*(v0 + 944) dataSource];
  v5 = *(v0 + 992);
  if (!v4)
  {

    goto LABEL_10;
  }

  AssetContents = CKSyncEngineDataSourceShouldFetchAssetContents(v4, *(v0 + 944), v5);
  v1 = *(v0 + 992);
  if (AssetContents)
  {

    swift_unknownObjectRelease();
LABEL_10:
    v7 = *(v0 + 976);
LABEL_23:
    v28 = *(v0 + 1000);
    if (v28 == *(v0 + 960))
    {
      v29 = (v0 + 808);
      v30 = *(v0 + 952);

      if (!sub_1883F4C9C(v3))
      {
        v53 = *(v0 + 944);

        v54 = *(v0 + 863);
        v3 = *(v0 + 920);
        goto LABEL_52;
      }

      v31 = *(v0 + 920);
      if (*(v0 + 863))
      {
        if (*(v0 + 863) == 1)
        {
          v32 = *(v0 + 920);

          v112 = sub_1884043A8(v33);
          sub_188504538();

          v34 = v112;
          sub_1883F5DF8(v112);
          sub_1883F793C();

          *(v0 + 160) = v3;
          *(v0 + 168) = 1;
          *(v0 + 169) = *(v0 + 840);
          *(v0 + 184) = *(v0 + 855);
          *(v0 + 192) = v7;
          v35 = *(v0 + 824);
          *(v0 + 200) = *v29;
          *(v0 + 216) = v35;
          v36 = *(v0 + 176);
          sub_1883F697C(v0 + 160, v0 + 232);
          sub_1883F69F4(v36);
          sub_1883F90D4();
          if (v37 && (sub_1883F7574(), (sub_1883F7624() & 1) == 0))
          {
            v34 = *(v0 + 944);
          }

          else
          {
            v106 = v36;
            v109 = *(v0 + 944);
            v38 = *(v0 + 160);
            v39 = *(v0 + 168);
            type metadata accessor for SyncEngine();
            v40 = sub_1883FF240();
            sub_1883F9674(v40, v41, v42);
            sub_1883F8C64();

            sub_188402F14(v43, v44, v45, v46, v47, v48, v49, v50, v106);
          }

          sub_1883F7768(v0 + 160);
          v54 = 1;
LABEL_52:
          sub_1883FA4C8();
          sub_1883FE77C(v98);
          *(v0 + 400) = v99;
          *(v0 + 408) = v7;
          v100 = *(v0 + 824);
          *(v0 + 416) = *v29;
          *(v0 + 432) = v100;
          memcpy(v101, (v0 + 376), 0x48uLL);
          *(v0 + 304) = v3;
          *(v0 + 312) = v54;
          sub_1883FE77C((v0 + 313));
          *(v0 + 328) = v102;
          *(v0 + 336) = v7;
          v103 = *(v0 + 824);
          *(v0 + 344) = *v29;
          *(v0 + 360) = v103;
          sub_1883F697C(v0 + 376, v0 + 448);
          sub_1883F7768(v0 + 304);
          sub_1883F816C();
          sub_1883FF618();

          __asm { BRAA            X1, X16 }
        }

        v79 = *(v0 + 920);

        *(v0 + 664) = v3;
        *(v0 + 672) = 0;
        sub_1883FE77C((v0 + 673));
        *(v0 + 688) = v80;
        *(v0 + 696) = v7;
        v81 = *(v0 + 824);
        *(v0 + 704) = *v29;
        *(v0 + 720) = v81;
        v82 = *(v0 + 680);
        sub_1883F697C(v0 + 664, v0 + 736);
        sub_1883F69F4(v82);
        sub_1883F90D4();
        if (v83 && (sub_1883F7574(), (sub_1883F7624() & 1) == 0))
        {
          v1 = *(v0 + 944);
        }

        else
        {
          v108 = v82;
          v111 = *(v0 + 944);
          v84 = *(v0 + 664);
          v85 = *(v0 + 672);
          type metadata accessor for SyncEngine();
          v86 = sub_1883FF240();
          sub_1883F9674(v86, v87, v88);
          sub_1883F8C64();

          sub_188402F14(v89, v90, v91, v92, v93, v94, v95, v96, v108);
        }

        v97 = v0 + 664;
      }

      else
      {
        v59 = *(v0 + 920);

        v113 = sub_1884043A8(v3);
        v60 = sub_1884043A8(v31);
        sub_1884433B0(v60);
        v61 = v113;
        sub_1883F5DF8(v113);
        sub_1883F793C();

        *(v0 + 520) = v3;
        *(v0 + 528) = 0;
        sub_1883FE77C((v0 + 529));
        *(v0 + 544) = v62;
        *(v0 + 552) = v7;
        v63 = *(v0 + 824);
        *(v0 + 560) = *v29;
        *(v0 + 576) = v63;
        v64 = *(v0 + 536);
        sub_1883F697C(v0 + 520, v0 + 592);
        sub_1883F69F4(v64);
        sub_1883F90D4();
        if (v65 && (sub_1883F7574(), (sub_1883F7624() & 1) == 0))
        {
          v61 = *(v0 + 944);
        }

        else
        {
          v107 = v64;
          v110 = *(v0 + 944);
          v66 = *(v0 + 520);
          v67 = *(v0 + 528);
          type metadata accessor for SyncEngine();
          v68 = sub_1883FF240();
          sub_1883F9674(v68, v69, v70);
          sub_1883F8C64();

          sub_188402F14(v71, v72, v73, v74, v75, v76, v77, v78, v107);
        }

        v97 = v0 + 520;
      }

      sub_1883F7768(v97);
      v54 = 0;
      goto LABEL_52;
    }

    *(v0 + 984) = v3;
    *(v0 + 976) = v7;
    v51 = *(v0 + 952);
    if ((v51 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x18CFD59D0](v28);
    }

    else
    {
      if (v28 >= *(v51 + 16))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v52 = *(v51 + 8 * v28 + 32);
    }

    *(v0 + 992) = v52;
    *(v0 + 1000) = v28 + 1;
    if (!__OFADD__(v28, 1))
    {
      *(v0 + 1008) = *(*(v0 + 944) + *(v0 + 968));

      v55 = swift_task_alloc();
      *(v0 + 1016) = v55;
      *v55 = v0;
      sub_1883FED98();
      sub_1883FF618();

      sub_1884FE4E0(v56, v57);
      return;
    }

    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v8 = *(v0 + 976);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 888) = v8;
  sub_188486310();
  v12 = *(v8 + 16);
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_56;
  }

  v15 = v10;
  v16 = v11;
  sub_18844E6FC(&unk_1EA90E620, &unk_1886FBC40);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14))
  {
    v7 = *(v0 + 888);
    if ((v16 & 1) == 0)
    {
LABEL_20:
      v21 = *(v0 + 992);
      v7[(v15 >> 6) + 8] |= 1 << v15;
      *(v7[6] + 8 * v15) = v21;
      v22 = v7[7] + 16 * v15;
      *v22 = 1;
      *(v22 + 8) = 0;
      v23 = v7[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
LABEL_58:
        __break(1u);
        return;
      }

      v26 = *(v0 + 992);
      v7[2] = v25;
      v27 = v26;
    }

LABEL_22:
    v1 = *(v0 + 992);
    *(v7[7] + 16 * v15) = 0;
    swift_unknownObjectRelease();

    goto LABEL_23;
  }

  v17 = *(v0 + 992);
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v7 = *(v0 + 888);
  sub_188486310();
  if ((v16 & 1) == (v19 & 1))
  {
    v15 = v18;
    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  sub_1883FF618();

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1884FE4E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1883F9430();
}

uint64_t sub_1884FE4F8()
{
  sub_1883F7120();
  v1 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = v0[3];
    sub_1883FA550();
    v0[6] = v4;
    v5 = sub_1883FDC8C();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    sub_1883F7910();

    return v8(1);
  }
}

uint64_t sub_1884FE5A0()
{
  sub_1883F7120();
  v1 = v0[6];
  v2 = v0[4];
  v0[7] = swift_unknownObjectWeakLoadStrong();

  v3 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884FE610()
{
  sub_1883F78E0();
  v1 = v0[7];
  if (v1)
  {
    Changes = CKSyncEngineDelegateShouldFetchChanges(v0[5], v0[7], v0[2]);
  }

  else
  {
    v3 = v0[5];
    Changes = 1;
  }

  swift_unknownObjectRelease();
  sub_1883F7910();

  return v4(Changes);
}

uint64_t sub_1884FE6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F9430();
}

uint64_t sub_1884FE6BC()
{
  sub_1883F7120();
  v1 = v0[6];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = v0[5];
    sub_1883FA550();
    v0[8] = v4;
    v5 = sub_1883FDC8C();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    sub_1883F7910();

    return v8();
  }
}

uint64_t sub_1884FE760()
{
  sub_1883F7120();
  v1 = v0[8];
  v2 = v0[6];
  v0[9] = swift_unknownObjectWeakLoadStrong();

  v3 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884FE7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_188404C04();
  sub_1883F653C();
  if (v10[9])
  {
    v10[2] = &unk_1EFAAF6A0;
    v11 = v10[7];
    v12 = swift_dynamicCastObjCProtocolConditional();
    if (v12)
    {
      v13 = v12;
      v14 = [v12 respondsToSelector_];
      v15 = v10[9];
      v16 = v10[7];
      if (v14)
      {
        v18 = v10[3];
        v17 = v10[4];
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
        v20 = Array._bridgeToObjectiveC()().super.isa;
        v21 = [v13 syncEngine:v15 relatedApplicationBundleIdentifiersForZoneIDs:isa recordIDs:v20];

        v22 = v10[9];
        v23 = v10[7];
        if (v21)
        {
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v28 = v10[7];
        }

        swift_unknownObjectRelease_n();
      }

      else
      {
        v27 = v10[7];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v25 = v10[9];
      v26 = v10[7];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v24 = v10[7];
    swift_unknownObjectRelease();
  }

  sub_1883F7910();
  sub_1883F6548();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t sub_1884FE980()
{
  sub_188504908(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1884FE9B0()
{
  sub_1884FE980();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1884FEA00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188442BE4;

  return sub_1884FCF94();
}

uint64_t sub_1884FEAB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1884FEB54;

  return sub_1884FE4E0(a1, a2);
}

uint64_t sub_1884FEB54()
{
  sub_1883F7120();
  v2 = v1;
  sub_1883F78EC();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;

  sub_1883F7910();

  return v7(v2);
}

id sub_1884FEC3C(void *a1)
{
  v3 = [v1 initWithConfiguration_];

  return v3;
}

Class sub_1884FEEA4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t sub_1884FF128()
{
  v1 = [v0 state];
  v2 = [v1 pendingDatabaseChanges];

  sub_1883F4C5C(0, &qword_1EA90C7C8, off_1E70BA888);
  v3 = sub_1883FD7E8();

  v4 = sub_1883F4C9C(v3);

  if (v4)
  {
    return 1;
  }

  v5 = [v0 state];
  v6 = [v5 pendingRecordZoneChanges];

  sub_1883F4C5C(0, &qword_1EA90C7C0, off_1E70BA890);
  v7 = sub_1883FD7E8();

  v8 = sub_1883F4C9C(v7);

  if (v8)
  {
    return 1;
  }

  v10 = [v0 state];
  v11 = [v10 hasPendingUntrackedChanges];

  return v11 ^ 1;
}

uint64_t sub_1884FF268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v7);
  v9 = *(v8 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v12, 1, 1, v13);
  sub_1883FEFF8();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = v3;
  v14[6] = a2;
  v14[7] = a3;

  v15 = v3;
  sub_1883F5CC0(a2);
  sub_1883FF490();
  sub_188453610();
}

uint64_t sub_1884FF364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v10 = *(v9 + 64) + 15;
  v7[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884FF434, 0, 0);
}

uint64_t sub_1884FF434()
{
  sub_1883FD7A0();
  sub_1883FC738();
  if (v0[18])
  {

    sub_1884043A8(v1);
  }

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v16 = v0[19];
  v5 = objc_allocWithZone(CKSyncEngineFetchChangesScope);
  v6 = sub_1883F9598();
  v7 = sub_1885126DC(v6);
  v0[25] = [objc_allocWithZone(CKSyncEngineFetchChangesOptions) initWithScope_];

  v0[2] = v0;
  v0[3] = sub_1884FF5E0;
  swift_continuation_init();
  v0[17] = v4;
  v8 = sub_188403664(v0 + 14);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_1883FE190();
  v9 = sub_1883FF380();
  v10(v9);
  sub_1884037F4();
  v0[11] = 1107296256;
  sub_1883F98C4();
  sub_1883FE280();
  [v11 v12];
  (*(v3 + 8))(v8, v4);
  sub_1883F9968();

  return MEMORY[0x1EEE6DEC8](v13);
}

uint64_t sub_1884FF5E0()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884FF6E0()
{
  sub_1883F7120();
  v1 = *(v0 + 160);

  if (v1)
  {
    v2 = *(v0 + 168);
    (*(v0 + 160))(0);
  }

  v3 = *(v0 + 192);

  sub_1883F816C();

  return v4();
}

uint64_t sub_1884FF758()
{
  sub_1883FB4AC();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[26];
  if (v3)
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v4;
    v6(v4);
  }

  v8 = v0[24];

  sub_1883F816C();

  return v9();
}

void sub_1884FF8E8()
{
  sub_1883F7FF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v7);
  v9 = *(v8 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_188411130();
  sub_188404A44(v11);
  sub_18840FB98();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v0;
  v12[5] = v6;
  v12[6] = v4;
  v13 = v0;
  v2(v6, v4);
  sub_1883FF490();
  sub_188453610();

  sub_1883FDCC0();
}

uint64_t sub_1884FF9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v9 = *(v8 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884FFA84, 0, 0);
}

uint64_t sub_1884FFA84()
{
  sub_1883FD7A0();
  sub_1883FC738();
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v1[18];
  v1[2] = v2;
  v1[3] = sub_1884FFC18;
  swift_continuation_init();
  v1[17] = v6;
  v8 = sub_188403664(v1 + 14);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v8, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1884C339C;
  v1[13] = &unk_1EFA2C848;
  [v7 sendChangesWithCompletionHandler_];
  (*(v5 + 8))(v8, v6);
  sub_1883F9968();

  return MEMORY[0x1EEE6DEC8](v9);
}

uint64_t sub_1884FFC18()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884FFD18()
{
  sub_1883F7120();
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[20];
    v1(0);
  }

  v3 = v0[23];

  sub_1883F816C();

  return v4();
}

uint64_t sub_1884FFD88()
{
  sub_1883F78E0();
  v1 = v0[24];
  v2 = v0[19];
  swift_willThrow();
  v3 = v0[24];
  if (v2)
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v3;
    v5(v3);
  }

  v7 = v0[23];

  sub_1883F816C();

  return v8();
}

void sub_1884FFF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1883F7FF0();
  a17 = v19;
  a18 = v20;
  v21 = v18;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v28);
  v30 = *(v29 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  if (v25)
  {
    sub_1883F8708();
    v34 = swift_allocObject();
    *(v34 + 16) = v25;
    *(v34 + 24) = v23;
  }

  sub_18844E6FC(&qword_1EA90E6A8, &qword_1886FBC78);
  sub_1883F8708();
  swift_allocObject();
  v35 = sub_1883FA748();
  v37 = sub_188501110(v35, v36);
  v38 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v33, 1, 1, v38);
  sub_18840FB98();
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v27;
  v39[5] = v21;
  v39[6] = v37;
  sub_1883F5CC0(v25);

  v40 = v21;
  sub_1883FF490();
  sub_188453610();

  sub_1883FDCC0();
}

uint64_t sub_188500070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v9 = *(v8 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188500140, 0, 0);
}

uint64_t sub_188500140()
{
  sub_1883FD7A0();
  sub_1883FC738();
  if (v0[18])
  {

    sub_1884043A8(v1);
  }

  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v16 = v0[19];
  v5 = objc_allocWithZone(CKSyncEngineSendChangesScope);
  v6 = sub_1883F9598();
  v7 = sub_1885126DC(v6);
  v0[24] = [objc_allocWithZone(CKSyncEngineSendChangesOptions) initWithScope_];

  v0[2] = v0;
  v0[3] = sub_1885002EC;
  swift_continuation_init();
  v0[17] = v4;
  v8 = sub_188403664(v0 + 14);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_1883FE190();
  v9 = sub_1883FF380();
  v10(v9);
  sub_1884037F4();
  v0[11] = 1107296256;
  sub_1883F98C4();
  sub_1883FE280();
  [v11 v12];
  (*(v3 + 8))(v8, v4);
  sub_1883F9968();

  return MEMORY[0x1EEE6DEC8](v13);
}

uint64_t sub_1885002EC()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1885003EC()
{
  sub_1883F78E0();
  v8 = v0;
  v1 = *(v0 + 160);

  v2 = sub_1884FB7E8();
  if (v2)
  {
    v3 = v2;
    v7 = 0;
    v2(&v7);
    sub_1883F5BA0(v3);
  }

  v4 = *(v0 + 184);

  sub_1883F816C();

  return v5();
}

uint64_t sub_188500484()
{
  sub_1883FB4AC();
  v12 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[20];
  swift_willThrow();

  v4 = sub_1884FB7E8();
  v5 = v0[25];
  if (v4)
  {
    v6 = v4;
    v11 = v0[25];
    v7 = v5;
    v6(&v11);
    sub_1883F5BA0(v6);
  }

  v8 = v0[23];

  sub_1883F816C();

  return v9();
}

uint64_t sub_188500648()
{
  sub_1884137B8();
  if (v3)
  {
    sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    sub_1883FD7E8();
  }

  if (v2)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = v1;
  v5 = sub_1883F7BC0();
  sub_1885006F4(v5, v6, v0);
}

void sub_1885006F4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = v3;
  v8 = &selRef_setStringValue_forKey_;
  v9 = [v3 state];
  if (a1)
  {
    v10 = sub_1883F4C9C(a1);
    if (v10)
    {
      v11 = v10;
      v24 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v11 < 0)
      {
        goto LABEL_26;
      }

      v22 = v9;
      v12 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x18CFD59D0](v12, a1);
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_24:
            __break(1u);
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            return;
          }

          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v13 = *(a1 + 8 * v12 + 32);
        }

        v14 = v13;
        ++v12;
        [objc_allocWithZone(CKSyncEnginePendingZoneSave) initWithZone_];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v15 = *(v24 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v11 == v12)
        {
          v8 = &selRef_setStringValue_forKey_;
          v9 = v22;
          break;
        }
      }
    }
  }

  sub_1883F4C5C(0, &qword_1EA90C7C8, off_1E70BA888);
  sub_1883F84DC();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 *a3];

  v17 = [v5 v8[244]];
  if (a2)
  {
    v18 = sub_1883F4C9C(a2);
    if (v18)
    {
      v19 = v18;
      v24 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v19 & 0x8000000000000000) == 0)
      {
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            MEMORY[0x18CFD59D0](0, a2);
          }

          else
          {
            if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v20 = *(a2 + 32);
          }

          sub_188410C80();
          [objc_allocWithZone(CKSyncEnginePendingZoneDelete) initWithZoneID_];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v21 = *(v24 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          sub_1883F86B8();
          specialized ContiguousArray._endMutation()();
        }
      }

      goto LABEL_27;
    }
  }

  sub_1883F84DC();
  v23 = Array._bridgeToObjectiveC()().super.isa;

  [v17 *a3];
}

void sub_188500A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_1883F9160();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v10 state];
  v20 = sub_1883F4C9C(v18);
  v21 = v20;
  if ((v16 & 1) == 0)
  {
    if (!v20)
    {
      v25 = &selRef_removePendingRecordZoneChanges_;
      goto LABEL_21;
    }

    v33 = MEMORY[0x1E69E7CC0];
    sub_188410D0C();
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v21 & 0x8000000000000000) == 0)
    {
      sub_18840437C();
      do
      {
        if (v11)
        {
          v26 = MEMORY[0x18CFD59D0](v16, v18);
        }

        else
        {
          v26 = *(v18 + 8 * v16 + 32);
        }

        v27 = v26;
        ++v16;
        [objc_allocWithZone(*(v12 + 2192)) (v9 + 2641)];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v28 = *(v33 + 16);
        sub_188405654();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_188405654();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v21 != v16);
      v25 = &selRef_removePendingRecordZoneChanges_;
      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    return;
  }

  if (!v20)
  {
    v25 = &selRef_addPendingRecordZoneChanges_;
    goto LABEL_21;
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_188410D0C();
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  sub_18840437C();
  do
  {
    if (v11)
    {
      v22 = MEMORY[0x18CFD59D0](v16, v18);
    }

    else
    {
      v22 = *(v18 + 8 * v16 + 32);
    }

    v23 = v22;
    ++v16;
    [objc_allocWithZone(*(v12 + 2192)) (v9 + 2641)];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v24 = *(v32 + 16);
    sub_188405654();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    sub_188405654();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v21 != v16);
  v25 = &selRef_addPendingRecordZoneChanges_;
LABEL_18:
  v19 = a9;
LABEL_21:
  sub_1883F4C5C(0, &qword_1EA90C7C0, off_1E70BA890);
  sub_1883F9598();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 *v25];

  sub_1883F8750();
}

uint64_t sub_188500C38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v8 = sub_1883FD7E8();
  v9 = a1;
  sub_188500A08(v8, a4, a5, v10, v11, v12, v13, v14, v16);
}

void sub_188501000()
{
  v1 = [v0 state];
  [v1 setHasPendingUntrackedChanges_];
}

uint64_t sub_18850105C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1885010BC(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_188501110(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = xmmword_1886FBB70;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_188501174(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1886F8030;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1885011D8(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](0);
  v6 = a2;
  NSObject.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {

      v15 = *v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v21;
      v17 = v6;
      sub_188502868(v17, v9, isUniquelyReferenced_nonNull_native);
      *v21 = v23;
      *a1 = v17;
      return v10 == 0;
    }

    v11 = *(*(v4 + 48) + 8 * v9);
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v12 = v6;
    v13 = v11;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v18 = *(*(v4 + 48) + 8 * v9);
  *a1 = v18;
  v19 = v18;
  return v10 == 0;
}

uint64_t sub_188501374(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      sub_1883F4C5C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_188501784(v15, result + 1, a5, a6, a3, a4);
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          sub_18850227C(v27 + 1, a5, a6);
        }

        v28 = v16;
        sub_188502690(v28, v26);

        *v11 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_1883F4C5C(0, a3, a4);
    NSObject._rawHashValue(seed:)(*(v14 + 40));
    v19 = *(v14 + 32);
    sub_1883F9AD4();
    v22 = ~v21;
    while (1)
    {
      v23 = v20 & v22;
      if (((*(v14 + 56 + (((v20 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v22)) & 1) == 0)
      {
        v29 = *v11;
        swift_isUniquelyReferenced_nonNull_native();
        v35 = *v11;
        v30 = a2;
        sub_188502710();
        *v11 = v35;
        *a1 = v30;
        return 1;
      }

      v24 = *(*(v14 + 48) + 8 * v23);
      v25 = static NSObject.== infix(_:_:)();

      if (v25)
      {
        break;
      }

      v20 = v23 + 1;
    }

    v31 = *(*(v14 + 48) + 8 * v23);
    *a1 = v31;
    v32 = v31;
    return 0;
  }

  return result;
}

uint64_t sub_1885015CC(uint64_t a1, void *a2, char a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a3 & 1);
  NSObject.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_9:
    v18 = a3 & 1;
    v19 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v26;
    v21 = a2;
    sub_188502A0C(a2, v18, v10, isUniquelyReferenced_nonNull_native);
    *v26 = v28;
    *a1 = a2;
    *(a1 + 8) = v18;
    return 1;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(v6 + 48) + 16 * v10;
    v13 = *v12;
    if (*(v12 + 8))
    {
      break;
    }

    if ((a3 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_8:
    v10 = (v10 + 1) & v11;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  v14 = v13;
  v15 = a2;
  v16 = v14;
  v17 = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

  v23 = *(v6 + 48) + 16 * v10;
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  *a1 = v24;
  *(a1 + 8) = v23;
  v25 = v24;
  return 0;
}

Swift::Int sub_188501784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    sub_18844E6FC(a3, a4);
    sub_1883FA748();
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v10;
      }

      sub_1883F4C5C(0, a5, a6);
      swift_dynamicCast();
      v11 = *(v10 + 16);
      if (*(v10 + 24) <= v11)
      {
        sub_18850227C(v11 + 1, a3, a4);
      }

      v10 = v23;
      result = NSObject._rawHashValue(seed:)(*(v23 + 40));
      v13 = v23 + 56;
      v14 = -1 << *(v23 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v23 + 56 + 8 * (v15 >> 6))) == 0)
      {
        break;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v23 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v23 + 48) + 8 * v17) = v22;
      ++*(v23 + 16);
    }

    v18 = 0;
    v19 = (63 - v14) >> 6;
    while (++v16 != v19 || (v18 & 1) == 0)
    {
      v20 = v16 == v19;
      if (v16 == v19)
      {
        v16 = 0;
      }

      v18 |= v20;
      v21 = *(v13 + 8 * v16);
      if (v21 != -1)
      {
        v17 = __clz(__rbit64(~v21)) + (v16 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_188501958(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18844E6FC(&qword_1EA90E6D8, &qword_1886FBD40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_188501174(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x18CFD5EB0](v17);
    result = Hasher._finalize()();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_188501BA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18844E6FC(&qword_1EA90E6B8, &qword_1886FBD18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v26 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_188501174(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v26;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    result = MEMORY[0x18CFD5E90](*(v6 + 40), v17);
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 8 * v21) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_188501DC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18844E6FC(&qword_1EA90E6C0, &unk_1886FBD20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_188501174(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_188502024(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18844E6FC(&unk_1EA90E6C8, &qword_1886FBD38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_188501174(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x18CFD5EB0](0);
    NSObject.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_18850227C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_18840ADD8(a1, a2, a3);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v3 = v6;
    return;
  }

  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v8[v7])
      {
        sub_1883FA4B8();
        v11 = v17 & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_188501174(0, (v27 + 63) >> 6, v4 + 56);
    }

    else
    {
      sub_1883F9AD4();
      *v8 = v28;
    }

    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    sub_1883F860C();
LABEL_12:
    v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
    v19 = NSObject._rawHashValue(seed:)(*(v6 + 40)) & ~(-1 << *(v6 + 32));
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    sub_1883F9020();
LABEL_21:
    sub_1883FDF90();
    *(v13 + v24) |= v25;
    sub_188405DCC(v26);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  sub_1883F7AC4();
  while (++v20 != v22 || (v21 & 1) == 0)
  {
    v23 = v20 == v22;
    if (v20 == v22)
    {
      v20 = 0;
    }

    v21 |= v23;
    if (*(v13 + 8 * v20) != -1)
    {
      sub_1883F7C04();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_188502424(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18844E6FC(&qword_1EA90E540, &qword_1886FB530);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_188501174(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 16 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x18CFD5EB0](v19);
    NSObject.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v6 + 48) + 16 * v24;
    *v29 = v18;
    *(v29 + 8) = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_188502690(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = *(a2 + 32);
  sub_1883F9AD4();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_188502710()
{
  sub_1883F9160();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(*v0 + 16);
  v13 = *(*v0 + 24);
  if (v13 <= v12 || (v1 & 1) == 0)
  {
    if (v1)
    {
      sub_18850227C(v12 + 1, v2, v3);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_188503A14();
LABEL_8:
      v14 = *v0;
      NSObject._rawHashValue(seed:)(*(*v0 + 40));
      v15 = *(v14 + 32);
      sub_1883F9AD4();
      v18 = ~v17;
      while (1)
      {
        v9 = v16 & v18;
        if (((*(v14 + 56 + (((v16 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v18)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1883F4C5C(0, v7, v5);
        v19 = *(*(v14 + 48) + 8 * v9);
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          goto LABEL_15;
        }

        v16 = v9 + 1;
      }
    }

    sub_188503110();
  }

LABEL_12:
  v21 = *v0;
  *(*v0 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v21 + 48) + 8 * v9) = v11;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v24;
    sub_1883F8750();
  }
}

void sub_188502868(void *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_188502024(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1885037E4(v6 + 1);
LABEL_8:
      v21 = v3;
      v8 = *v3;
      v9 = *(*v3 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x18CFD5EB0](0);
      v10 = a1;
      NSObject.hash(into:)();
      v11 = Hasher._finalize()();
      v12 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v11 & v12;
        if (((*(v8 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v13 = *(*(v8 + 48) + 8 * a2);
        sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
        v14 = v10;
        v15 = v13;
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          goto LABEL_16;
        }

        v11 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_188502FC0();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = a1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }
}

void sub_188502A0C(void *a1, char a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_188502424(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_188503234();
        goto LABEL_16;
      }

      sub_188503BA0(v9 + 1);
    }

    v11 = *v4;
    v12 = *(*v4 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x18CFD5EB0](a2 & 1);
    NSObject.hash(into:)();
    v13 = Hasher._finalize()();
    v14 = -1 << *(v11 + 32);
    a3 = v13 & ~v14;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v15 = ~v14;
      do
      {
        v16 = *(v11 + 48) + 16 * a3;
        v17 = *v16;
        if (*(v16 + 8))
        {
          if (a2)
          {
            goto LABEL_14;
          }
        }

        else if ((a2 & 1) == 0)
        {
LABEL_14:
          sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
          v18 = v17;
          v19 = a1;
          v20 = static NSObject.== infix(_:_:)();

          if (v20)
          {
            goto LABEL_19;
          }
        }

        a3 = (a3 + 1) & v15;
      }

      while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_16:
  v21 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v22 = *(v21 + 48) + 16 * a3;
  *v22 = a1;
  *(v22 + 8) = a2 & 1;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }
}

void *sub_188502BE8()
{
  v1 = v0;
  sub_18844E6FC(&qword_1EA90E6D8, &qword_1886FBD40);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188502D28()
{
  v1 = v0;
  sub_18844E6FC(&qword_1EA90E6B8, &qword_1886FBD18);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188502E68()
{
  v1 = v0;
  sub_18844E6FC(&qword_1EA90E6C0, &unk_1886FBD20);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188502FC0()
{
  v1 = v0;
  sub_18844E6FC(&unk_1EA90E6C8, &qword_1886FBD38);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_188503110()
{
  sub_1883F7FF0();
  v1 = v0;
  sub_18844E6FC(v2, v3);
  v4 = *v0;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        sub_1883F860C();
LABEL_17:
        v20 = v16 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        *(*(v6 + 48) + 8 * v20) = v21;
        v22 = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      ++v17;
      if (*(v4 + 56 + 8 * v10))
      {
        sub_1883FA4B8();
        v14 = v19 & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v6;
    sub_1883FDCC0();
  }
}

id sub_188503234()
{
  v1 = v0;
  sub_18844E6FC(&qword_1EA90E540, &qword_1886FB530);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(v4 + 48) + 16 * v17;
        *v20 = v19;
        *(v20 + 8) = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_188503394(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18844E6FC(&qword_1EA90E6D8, &qword_1886FBD40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        Hasher.init(_seed:)();
        MEMORY[0x18CFD5EB0](v16);
        result = Hasher._finalize()();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1885035B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18844E6FC(&qword_1EA90E6C0, &unk_1886FBD20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1885037E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18844E6FC(&unk_1EA90E6C8, &qword_1886FBD38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        Hasher.init(_seed:)();
        MEMORY[0x18CFD5EB0](0);
        v18 = v16;
        NSObject.hash(into:)();
        result = Hasher._finalize()();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v6 + 48) + 8 * v22) = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v27;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_188503A14()
{
  sub_1883F9160();
  sub_18840ADD8(v2, v3, v4);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v1 + 16))
  {
    v26 = v0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v17 = *(v6 + 40);
        *(*(v1 + 48) + 8 * (v13 | (v7 << 6)));
        v18 = NSObject._rawHashValue(seed:)(v17) & ~(-1 << *(v6 + 32));
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        sub_1883F9020();
LABEL_21:
        sub_1883FDF90();
        *(v12 + v23) |= v24;
        sub_188405DCC(v25);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      sub_1883F7AC4();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v12 + 8 * v19) != -1)
        {
          sub_1883F7C04();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v0 = v26;
          goto LABEL_25;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v7))
        {
          sub_1883FA4B8();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v0 = v6;
    sub_1883F8750();
  }
}

uint64_t sub_188503BA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18844E6FC(&qword_1EA90E540, &qword_1886FB530);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v3 + 48) + 16 * (v13 | (v7 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();
        MEMORY[0x18CFD5EB0](v18);
        v20 = v17;
        NSObject.hash(into:)();
        result = Hasher._finalize()();
        v21 = -1 << *(v6 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = *(v6 + 48) + 16 * v24;
        *v29 = v17;
        *(v29 + 8) = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v30;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_188503DE0()
{
  sub_1883F9160();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *v0;
    }

    v6 = v3;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      sub_188504078();
    }

    else
    {
    }
  }

  else
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    NSObject._rawHashValue(seed:)(*(v4 + 40));
    v8 = *(v4 + 32);
    sub_1883F9AD4();
    v11 = ~v10;
    while (1)
    {
      v12 = v9 & v11;
      if (((*(v4 + 56 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v4 + 48) + 8 * v12);
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        v15 = *v1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v1;
        v20 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_188503110();
          v17 = v20;
        }

        v18 = *(*(v17 + 48) + 8 * v12);
        v19 = sub_188410D0C();
        sub_1885041EC(v19);
        *v1 = v20;
        break;
      }

      v9 = v12 + 1;
    }
  }

  sub_1883F8750();
}

uint64_t sub_188503F50(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_188502E68();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_188504380(v9);
  *v2 = v19;
  return v16;
}

uint64_t sub_188504078()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_188501784(v3, v2, &qword_1EA90E598, &qword_1886FB740, &qword_1ED4B5CC8, off_1E70BA650);
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v9 = *(*(v4 + 48) + 8 * v8);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      v11 = *(*(v4 + 48) + 8 * v8);
      sub_1885041EC(v8);
      if (static NSObject.== infix(_:_:)())
      {
        *v13 = v4;
        return v11;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1885041EC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_188504380(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

void sub_188504538()
{
  sub_1883F7FF0();
  v2 = v1;
  v3 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v0;
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_15;
    }
  }

  else if (!*(v3 + 16))
  {
    goto LABEL_15;
  }

  v5 = sub_1883F4C9C(v2);
  for (i = 0; v5 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_18840578C();
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = sub_188405008();
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    sub_188503DE0();
    v10 = v9;
  }

LABEL_15:
  sub_1883FDCC0();
}

void sub_188504600()
{
  sub_1883F7FF0();
  if (*(*v0 + 16))
  {
    v2 = v1;
    v3 = v1 + 56;
    v4 = 1 << *(v1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v1 + 56);
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

        v14 = sub_1883F7BC0();
        sub_188503F50(v14, v15);

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
        return;
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

    sub_1883FDCC0();
  }

  else
  {
    sub_1883FDCC0();
  }
}

uint64_t sub_18850471C()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  sub_1883F7DB8();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_1883F7E38(v2);
  *v3 = v4;
  sub_1883F9ED8(v3);
  sub_1883FB5FC();

  return sub_188500070(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1885047B0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1885047DC()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  sub_1883F7DB8();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_1883F7E38(v2);
  *v3 = v4;
  sub_1883F9ED8(v3);
  sub_1883FB5FC();

  return sub_1884FF9B4(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_188504870()
{
  sub_188404C04();
  sub_1883F653C();
  sub_1883F7DB8();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_1883F7E38(v3);
  *v4 = v5;
  sub_1883F9ED8(v4);
  sub_1883F6548();

  return sub_1884FF364(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_188504930()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  sub_1883F7DB8();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_1883F7E38(v2);
  *v3 = v4;
  sub_1883F9ED8(v3);
  sub_1883FB5FC();

  return sub_1884FC5C4(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1885049C4()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  sub_1883F7DB8();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_1883F7E38(v2);
  *v3 = v4;
  sub_1883F9ED8(v3);
  sub_1883FB5FC();

  return sub_1884FC040(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_188504A68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  sub_18840FB98();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_188504AB4()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  sub_1883F7DB8();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_1883F7E38(v2);
  *v3 = v4;
  sub_1883F9ED8(v3);
  sub_1883FB5FC();

  return sub_1884FBD34(v5, v6, v7, v8, v9, v10);
}

unint64_t sub_188504B48()
{
  result = qword_1EA90C678;
  if (!qword_1EA90C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C678);
  }

  return result;
}

unint64_t sub_188504B9C()
{
  result = qword_1EA90C750;
  if (!qword_1EA90C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C750);
  }

  return result;
}

unint64_t sub_188504BF0()
{
  result = qword_1EA90C890;
  if (!qword_1EA90C890)
  {
    type metadata accessor for Scope(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C890);
  }

  return result;
}

uint64_t sub_188504C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a10 + 16);

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_188504C80(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188504CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188504D10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  if (static NSObject.== infix(_:_:)())
  {
    v14 = a2 == a6 && a3 == a7;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (a4)
      {
        if (a8)
        {
          sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
          v15 = a8;
          v16 = a4;
          v17 = static NSObject.== infix(_:_:)();

          if (v17)
          {
            return 1;
          }
        }
      }

      else if (!a8)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_188504E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  NSObject.hash(into:)();
  String.hash(into:)();
  if (a5)
  {
    Hasher._combine(_:)(1u);
    v6 = a5;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_188504ED4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  Hasher.init(_seed:)();
  sub_188504E18(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_188504F54()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  sub_188504E18(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

unint64_t sub_188504FD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  _StringGuts.grow(_:)(41);

  MEMORY[0x18CFD5140](a2, a3);
  MEMORY[0x18CFD5140](0x6365527265737520, 0xEE003D444964726FLL);
  v7 = a4;
  sub_18844E6FC(&qword_1EA90E6F8, &qword_1886FBE50);
  v8 = String.init<A>(describing:)();
  MEMORY[0x18CFD5140](v8);

  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_188505110@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = sub_1885050DC(a1, *(v2 + 8));
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_188505140()
{
  result = qword_1EA90E6F0;
  if (!qword_1EA90E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E6F0);
  }

  return result;
}

id sub_188505194(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccountInfo:a1 userRecordID:a2];

  return v4;
}

id sub_1885051F0()
{
  v1 = (v0 + OBJC_IVAR___CKSyncEngineAccount__wrapped);
  *v1 = 0u;
  v1[1] = 0u;
  v3.super_class = CKSyncEngineAccount;
  return objc_msgSendSuper2(&v3, sel_init);
}

char *sub_188505260(void *a1, void *a2)
{
  v3 = v2;
  v6 = [v3 init];
  v7 = sub_188505EAC(a1);
  v9 = v8;
  if (!v8)
  {

    a1 = 0;
    v7 = 0;
    a2 = 0;
  }

  v10 = &v6[OBJC_IVAR___CKSyncEngineAccount__wrapped];
  v12 = *&v6[OBJC_IVAR___CKSyncEngineAccount__wrapped];
  v11 = *&v6[OBJC_IVAR___CKSyncEngineAccount__wrapped + 8];
  v13 = *&v6[OBJC_IVAR___CKSyncEngineAccount__wrapped + 16];
  v14 = *&v6[OBJC_IVAR___CKSyncEngineAccount__wrapped + 24];
  *v10 = a1;
  *(v10 + 1) = v7;
  *(v10 + 2) = v9;
  *(v10 + 3) = a2;
  sub_1884D11E8(v12, v11, v13, v14);

  return v6;
}

id sub_188505374()
{
  result = *(v0 + OBJC_IVAR___CKSyncEngineAccount__wrapped);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

void *sub_1885053C0()
{
  if (*(v0 + OBJC_IVAR___CKSyncEngineAccount__wrapped))
  {
    v1 = *(v0 + OBJC_IVAR___CKSyncEngineAccount__wrapped + 24);
    v2 = v1;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18850545C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___CKSyncEngineAccount__wrapped;
  if (*(v1 + OBJC_IVAR___CKSyncEngineAccount__wrapped))
  {
    v3 = *(v2 + 24);
    *(v2 + 24) = a1;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE66BB8]();
}

void sub_188505490(void *a1)
{
  v3 = [v1 accountInfo];
  v4 = NSStringFromSelector(sel_accountInfo);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x18CFD5010](v5);
  }

  [a1 encodeObject:v3 forKey:v4];

  v6 = [v1 userRecordID];
  v7 = NSStringFromSelector(sel_userRecordID);
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = MEMORY[0x18CFD5010](v8);

    v7 = v9;
  }

  v10 = v7;
  [a1 encodeObject:v6 forKey:?];
}

id CKSyncEngineAccount.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___CKSyncEngineAccount__wrapped];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  sub_18844E6FC(&unk_1EA90E708, &qword_1886FBE58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1886F7400;
  *(v5 + 32) = sub_1883F4C5C(0, &unk_1EA90C790, off_1E70B9FA0);
  v6 = NSStringFromSelector(sel_accountInfo);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1883F8A98();

  if (!v28)
  {
    sub_18847EBC8(v27);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v19 = related decl 'e' for CKErrorCode.init(_:description:)(1, 0xD000000000000032, 0x8000000188702FE0);
    v20 = _convertErrorToNSError(_:)();

    [a1 failWithError_];
LABEL_12:

    sub_1884D11E8(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3));
    type metadata accessor for CKSyncEngineAccount(v23);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v26;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1886F7400;
  *(v8 + 32) = sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v9 = NSStringFromSelector(sel_userRecordID);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1883F8A98();

  if (!v28)
  {
    sub_18847EBC8(v27);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v21 = related decl 'e' for CKErrorCode.init(_:description:)(1, 0xD000000000000033, 0x8000000188703020);
    v22 = _convertErrorToNSError(_:)();

    [a1 failWithError_];
    goto LABEL_12;
  }

  v10 = v26;
  v11 = sub_188505EAC(v7);
  v13 = v12;
  if (!v12)
  {

    v7 = 0;
    v11 = 0;
    v10 = 0;
  }

  v15 = *v4;
  v14 = *(v4 + 1);
  v16 = *(v4 + 2);
  v17 = *(v4 + 3);
  *v4 = v7;
  *(v4 + 1) = v11;
  *(v4 + 2) = v13;
  *(v4 + 3) = v10;
  sub_1884D11E8(v15, v14, v16, v17);
  v25.receiver = v2;
  v25.super_class = CKSyncEngineAccount;
  v18 = objc_msgSendSuper2(&v25, sel_init);

  return v18;
}

uint64_t CKSyncEngineAccount.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18848911C(a1, v44);
  if (!v45)
  {
    sub_18847EBC8(v44);
    goto LABEL_11;
  }

  type metadata accessor for CKSyncEngineAccount(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v23 = 0;
    return v23 & 1;
  }

  v3 = v1 + OBJC_IVAR___CKSyncEngineAccount__wrapped;
  v4 = *(v1 + OBJC_IVAR___CKSyncEngineAccount__wrapped);
  v5 = *(v1 + OBJC_IVAR___CKSyncEngineAccount__wrapped + 8);
  v6 = *(v3 + 16);
  v7 = *&v43[OBJC_IVAR___CKSyncEngineAccount__wrapped];
  v8 = *&v43[OBJC_IVAR___CKSyncEngineAccount__wrapped + 8];
  v10 = *&v43[OBJC_IVAR___CKSyncEngineAccount__wrapped + 16];
  v9 = *&v43[OBJC_IVAR___CKSyncEngineAccount__wrapped + 24];
  if (!v4)
  {
    v28 = sub_1883F9F04();
    sub_1884D123C(v28, v29, v30, v31);

    if (!v7)
    {
      v23 = 1;
      return v23 & 1;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    v32 = *(v3 + 24);
    v33 = v4;

LABEL_10:
    v34 = sub_1883F75B4();
    sub_1884D11E8(v34, v35, v36, v37);
    v38 = sub_1883F9F04();
    sub_1884D11E8(v38, v39, v40, v41);
    goto LABEL_11;
  }

  v11 = sub_1883F9F04();
  sub_1884D123C(v11, v12, v13, v14);
  v15 = sub_1883F75B4();
  sub_1884D123C(v15, v16, v17, v18);
  v19 = sub_1883F75B4();
  v23 = sub_188504D10(v19, v20, v21, v22, v7, v8, v10, v9);

  v24 = sub_1883F75B4();
  sub_1884D11E8(v24, v25, v26, v27);
  return v23 & 1;
}

uint64_t CKSyncEngineAccount.hash.getter()
{
  v2 = *(v0 + OBJC_IVAR___CKSyncEngineAccount__wrapped);
  v3 = *(v0 + OBJC_IVAR___CKSyncEngineAccount__wrapped + 16);
  sub_18844E6FC(&qword_1EA90E718, &qword_1886FBE60);
  sub_188505F10();
  return Optional<A>.hashValue.getter();
}

uint64_t CKSyncEngineAccount.description.getter()
{
  v1 = &v0[OBJC_IVAR___CKSyncEngineAccount__wrapped];
  v2 = *&v0[OBJC_IVAR___CKSyncEngineAccount__wrapped];
  if (v2)
  {
    v3 = *(v1 + 2);
    v4 = *(v1 + 3);
    v5 = *(v1 + 1);
    v6 = v2;

    v7 = v4;
    v8 = objc_msgSendSuper2(&v18, sel_description);
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v19 = v9;
    v20 = v11;
    MEMORY[0x18CFD5140](8250, 0xE200000000000000);
    v12 = v6;

    v13 = v7;
    v14 = String.init<A>(reflecting:)();
    MEMORY[0x18CFD5140](v14);

    return v19;
  }

  else
  {
    v21.receiver = v0;
    v21.super_class = CKSyncEngineAccount;
    v16 = objc_msgSendSuper2(&v21, sel_description);
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x18CFD5140](0x6C696E203ALL, 0xE500000000000000);
    return v17;
  }
}

id CKSyncEngineAccount.copy(with:)@<X0>(id result@<X0>, void *a2@<X8>)
{
  v4 = v2 + OBJC_IVAR___CKSyncEngineAccount__wrapped;
  v5 = *(v2 + OBJC_IVAR___CKSyncEngineAccount__wrapped);
  if (v5)
  {
    v6 = type metadata accessor for CKSyncEngineAccount(result);
    v7 = *(v4 + 24);
    v8 = v7;
    result = sub_188505194(v5, v7);
    a2[3] = v6;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188505EAC(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_188505F10()
{
  result = qword_1EA90E720;
  if (!qword_1EA90E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E720);
  }

  return result;
}

uint64_t sub_188505F64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 stateSerialization];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 data];

    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = [v2 delegate];
  if (v10)
  {
    v11 = v10;
    swift_unknownObjectRetain_n();
    sub_18844E6FC(&qword_1EA90E748, &unk_1886FC000);
    sub_18844E6FC(&qword_1EA90E730, &qword_1886FB1D8);
    v12 = swift_dynamicCast();
    if ((v12 & 1) == 0)
    {
      v45 = 0u;
    }

    sub_1883F9440(v12, v13, v14, v15, v16, v17, v18, v19, v39, v40, v41, v42, v43, v44, v45);
    goto LABEL_8;
  }

  v21 = [v2 dataSource];
  if (v21)
  {
    v22 = v21;
    v11 = [objc_allocWithZone(CKSyncEngineDataSourceAdapter) initWithDataSource_];
    swift_unknownObjectRetain();
    sub_18844E6FC(&qword_1EA90E728, &qword_1886FBFF0);
    sub_18844E6FC(&qword_1EA90E730, &qword_1886FB1D8);
    v23 = swift_dynamicCast();
    if ((v23 & 1) == 0)
    {
      v45 = 0u;
    }

    if ([v22 respondsToSelector_])
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = [v22 respondsToSelector_];
      swift_unknownObjectRelease();
      if (!v31)
      {
LABEL_8:
        v20 = 1;
LABEL_16:
        sub_18844E6FC(&qword_1EA90E738, &qword_1886FBFF8);
        swift_initStackObject();
        sub_1885010BC(v11);
        type metadata accessor for CKSyncEngineObjCDelegateAdapter();
        swift_allocObject();
        v32 = sub_1884FCF08();
        v33 = [v2 database];
        sub_18844E6FC(&unk_1EA90E420, &qword_1886FB178);
        v34 = swift_allocObject();
        *(v34 + 16) = 0;
        *(a1 + 96) = v34;
        *(a1 + 176) = 0;
        *(a1 + 144) = 0u;
        *(a1 + 160) = 0;
        *(a1 + 128) = 0u;
        *a1 = v33;
        sub_188424184(v7, v9);

        v35 = v33;
        sub_18841BA74(0, 0xF000000000000000);
        *(a1 + 8) = v7;
        *(a1 + 16) = v9;
        *(a1 + 24) = v32;
        *(a1 + 32) = &off_1EFA2C728;
        CKCurrentProcessIsDaemon();

        *(a1 + 48) = sub_188463094(v2, &selRef_subscriptionID);
        *(a1 + 56) = v36;
        *(a1 + 40) = [v2 automaticallySync];
        sub_1885066FC([v2 xpcActivityCriteriaOverrides]);
        *(a1 + 120) = [v2 continueSendingChangesAfterFailure];
        *(a1 + 80) = sub_188463094(v2, &selRef_apsMachServiceName);
        *(a1 + 88) = v37;
        *(a1 + 104) = [v2 useOpportunisticPushTopic];
        *(a1 + 105) = [v2 allowFetchAndModifyConcurrently];
        *(a1 + 112) = [v2 assetDownloadStagingManager];
        LOBYTE(v35) = [v2 isImmediatePushSyncEnabled];
        sub_18841BA74(v7, v9);
        swift_unknownObjectRelease();
        *(a1 + 121) = v35;
        *(a1 + 168) = v20;
        *(a1 + 64) = v32;
        *(a1 + 72) = &off_1EFA2C718;
        return sub_188506C34(v46, a1 + 128);
      }
    }

    v20 = 0;
    goto LABEL_16;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CKSyncEngine.Configuration.stateSerialization.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_188424184(v2, v3);
}

uint64_t CKSyncEngine.Configuration.stateSerialization.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_18841BA74(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t CKSyncEngine.Configuration.delegate.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return swift_unknownObjectRetain();
}

uint64_t CKSyncEngine.Configuration.delegate.setter()
{
  sub_1883F877C();
  v3 = *(v1 + 24);
  result = swift_unknownObjectRelease();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t CKSyncEngine.Configuration.subscriptionID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t CKSyncEngine.Configuration.subscriptionID.setter()
{
  sub_1883F877C();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t CKSyncEngine.Configuration.delegatePrivate.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return swift_unknownObjectRetain();
}

uint64_t CKSyncEngine.Configuration.delegatePrivate.setter()
{
  sub_1883F877C();
  v3 = *(v1 + 64);
  result = swift_unknownObjectRelease();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t CKSyncEngine.Configuration.apsMachServiceName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t CKSyncEngine.Configuration.apsMachServiceName.setter()
{
  sub_1883F877C();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

xpc_object_t CKSyncEngine.Configuration.xpcActivityCriteriaOverrides.getter()
{
  result = *(*(v0 + 96) + 16);
  if (result)
  {
    return xpc_copy(result);
  }

  return result;
}

uint64_t sub_1885066CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = swift_unknownObjectRetain();
  return CKSyncEngine.Configuration.xpcActivityCriteriaOverrides.setter(v2);
}

uint64_t sub_1885066FC(void *a1)
{
  v2 = *(v1 + 96);
  if (a1)
  {
    v3 = xpc_copy(a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);
  *(v2 + 16) = v3;

  return swift_unknownObjectRelease();
}

uint64_t (*CKSyncEngine.Configuration.xpcActivityCriteriaOverrides.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v3 + 16);
  if (v4)
  {
    v4 = xpc_copy(v4);
  }

  *a1 = v4;
  return sub_1885067B0;
}

uint64_t sub_1885067B0(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v4 = *a1;
    v5 = swift_unknownObjectRetain();
    CKSyncEngine.Configuration.xpcActivityCriteriaOverrides.setter(v5);
  }

  else
  {
    if (*a1)
    {
      v6 = xpc_copy(*a1);
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 16);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;
  }

  return swift_unknownObjectRelease();
}

void *CKSyncEngine.Configuration.assetDownloadStagingManager.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

unint64_t CKSyncEngine.Configuration.description.getter()
{
  v1 = v0;
  v2 = [*v0 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x18CFD5140](v3, v5);

  if (v1[2] >> 60 == 15)
  {
    MEMORY[0x18CFD5140](0xD000000000000017, 0x8000000188703110);
  }

  else
  {
    v6 = v1[1];
    v7 = sub_1883FA224();
    sub_188423C74(v7, v8);
    _StringGuts.grow(_:)(22);
    MEMORY[0x18CFD5140](0xD000000000000014, 0x80000001887031B0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18CFD5140](0, 0xE000000000000000);

    v9 = sub_1883FA224();
    sub_18841BA74(v9, v10);
  }

  if (*(v1 + 40) == 1)
  {
    MEMORY[0x18CFD5140](0xD000000000000014, 0x8000000188703190);
  }

  if (v1[7])
  {
    v11 = v1[6];
    sub_1883F75C8();
    _StringGuts.grow(_:)(18);

    v12 = sub_1883FA224();
    MEMORY[0x18CFD5140](v12);
    sub_1883F9F18();
  }

  if (v1[11])
  {
    v13 = v1[10];
    sub_1883F75C8();
    _StringGuts.grow(_:)(22);

    v14 = sub_1883FA224();
    MEMORY[0x18CFD5140](v14);
    sub_1883F9F18();
  }

  v15 = *(v1[12] + 2);
  if (v15 && xpc_copy(v15))
  {
    sub_1883F75C8();
    _StringGuts.grow(_:)(32);
    MEMORY[0x18CFD5140](0xD00000000000001ELL, 0x8000000188703130);
    swift_getObjectType();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_1883F9F18();
    swift_unknownObjectRelease();
  }

  return 0xD000000000000018;
}

uint64_t sub_188506B88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188506BC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188506C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E740, &qword_1886FB170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_188506CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 912) = a5;
  *(v5 + 904) = a4;
  *(v5 + 896) = a1;
  memcpy((v5 + 16), (a4 + 8), 0x48uLL);
  *(v5 + 920) = *(v5 + 16);
  *(v5 + 863) = *(v5 + 24);
  *(v5 + 840) = *(a4 + 17);
  *(v5 + 855) = *(a4 + 32);
  *(v5 + 928) = *(v5 + 48);
  v7 = *(a4 + 64);
  *(v5 + 808) = *(a4 + 48);
  *(v5 + 824) = v7;
  sub_1883F697C(v5 + 16, v5 + 88);
  v8 = swift_task_alloc();
  *(v5 + 936) = v8;
  *v8 = v5;
  v8[1] = sub_188506DA0;

  return sub_1884FB5E0();
}

uint64_t sub_188506DA0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  v3 = *(v1 + 936);
  v6 = *v0;
  *(v2 + 944) = v4;

  return MEMORY[0x1EEE6DFA0](sub_188506E98, 0, 0);
}

void sub_188506E98()
{
  v95 = v0;
  if (!*(v0 + 944))
  {
    v20 = *(v0 + 928);
    v21 = *(v0 + 863);
    v22 = *(v0 + 904);
    v23 = *(v0 + 896);
    *v23 = *(v0 + 920);
    *(v23 + 8) = v21;
    v24 = *(v22 + 17);
    *(v23 + 24) = *(v22 + 32);
    *(v23 + 32) = v20;
    *(v23 + 9) = v24;
    v25 = *(v22 + 48);
    *(v23 + 56) = *(v22 + 64);
    *(v23 + 40) = v25;
    goto LABEL_45;
  }

  v86 = v0 + 840;
  v87 = (v0 + 808);
  v88 = (v0 + 872);
  v89 = (v0 + 864);
  v1 = *(v0 + 920);
  v2 = *(v0 + 912);
  sub_1883FA550();
  v4 = *(v3 + 128);

  v5 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();

  v93 = MEMORY[0x1E69E7CC0];
  v6 = sub_1883F4C9C(v5);
  v7 = 0;
  v90 = v0;
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x18CFD59D0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

    if (*(v0 + 863))
    {
      if (*(v0 + 863) != 1 || (*v88 = v8, *(swift_task_alloc() + 16) = v88, , v10 = sub_18850DE28(), , , (v10 & 1) != 0))
      {
LABEL_11:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = *(v93 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_14;
      }
    }

    else
    {
      *v89 = v8;
      *(swift_task_alloc() + 16) = v89;

      v12 = sub_18850DE28();

      if ((v12 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    ++v7;
    v0 = v90;
  }

  v13 = v93;
  *(v0 + 952) = v93;
  v14 = MEMORY[0x1E69E7CC0];
  *(v0 + 880) = MEMORY[0x1E69E7CC0];
  v15 = sub_1883F4C9C(v13);
  *(v0 + 960) = v15;
  if (!v15)
  {
    v26 = *(v0 + 928);
    v27 = *(v0 + 952);

    if (sub_1883F4C9C(v14))
    {
      v28 = *(v0 + 920);
      if (*(v0 + 863))
      {
        if (*(v0 + 863) == 1)
        {
          v29 = *(v0 + 920);

          v91 = sub_1884043A8(v30);
          v1 = MEMORY[0x1E69E7CC0];
          sub_188504538();

          sub_1883F5DF8(v91);
          sub_1883FDE10();

          *(v0 + 160) = v1;
          *(v0 + 168) = 1;
          *(v0 + 169) = *v86;
          *(v0 + 184) = *(v86 + 15);
          *(v0 + 192) = v26;
          v31 = v87[1];
          *(v0 + 200) = *v87;
          *(v0 + 216) = v31;
          v32 = *(v0 + 176);
          sub_1883F697C(v0 + 160, v0 + 232);
          v33 = sub_1883F69F4(v32);
          if (v34 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
          {
            v35 = *(v0 + 944);
          }

          else
          {
            v35 = *(v0 + 944);
            v36 = *(v0 + 160);
            v37 = *(v90 + 168);
            type metadata accessor for SyncEngine();
            v38 = sub_1883F98D8();
            sub_1883F8518(v38, v39, v40, v41, v42, v43, v44, v45);
            sub_1883F90D4();

            sub_1883F60E8(v33, v36, v32);
          }

          sub_1883F7768(v0 + 160);
          v50 = 1;
        }

        else
        {
          v69 = *(v0 + 920);

          *(v0 + 664) = v14;
          *(v0 + 672) = 0;
          sub_1883FE1F0((v0 + 673), v85, v86);
          *(v0 + 688) = v70;
          *(v0 + 696) = v26;
          v71 = v87[1];
          *(v0 + 704) = *v87;
          *(v0 + 720) = v71;
          v72 = *(v0 + 680);
          sub_1883F697C(v0 + 664, v0 + 736);
          sub_1883F69F4(v72);
          if (v73 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
          {
            v74 = *(v0 + 944);
          }

          else
          {
            v74 = *(v0 + 944);
            v75 = *(v0 + 664);
            v76 = *(v0 + 672);
            type metadata accessor for SyncEngine();
            v93 = v75;
            v94 = v76;

            v77 = sub_1883F6734(&v93);
            v79 = v78;

            sub_1883F60E8(v77, v79, v72);
          }

          sub_1883F7768(v0 + 664);
          v50 = 0;
          v1 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v51 = *(v0 + 920);

        v92 = sub_1884043A8(MEMORY[0x1E69E7CC0]);
        v52 = sub_1884043A8(v28);
        sub_1884433B0(v52);
        sub_1883F5DF8(v92);
        sub_1883FDE10();

        *(v0 + 520) = v1;
        *(v0 + 528) = 0;
        sub_1883FE1F0((v0 + 529), v85, v86);
        *(v0 + 544) = v53;
        *(v0 + 552) = v26;
        v54 = v87[1];
        *(v0 + 560) = *v87;
        *(v0 + 576) = v54;
        v55 = *(v0 + 536);
        sub_1883F697C(v0 + 520, v0 + 592);
        v56 = sub_1883F69F4(v55);
        if (v57 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
        {
          v58 = *(v0 + 944);
        }

        else
        {
          v58 = *(v0 + 944);
          v59 = *(v0 + 520);
          v60 = *(v90 + 528);
          type metadata accessor for SyncEngine();
          v61 = sub_1883F98D8();
          sub_1883F8518(v61, v62, v63, v64, v65, v66, v67, v68);
          sub_1883F90D4();

          sub_1883F60E8(v56, v59, v55);
        }

        sub_1883F7768(v0 + 520);
        v50 = 0;
      }
    }

    else
    {
      v49 = *(v0 + 944);

      v50 = *(v0 + 863);
      v1 = *(v0 + 920);
    }

    v80 = sub_1883FA4C8();
    *v81 = *v86;
    *(v0 + 400) = *(v86 + 15);
    *(v0 + 408) = v26;
    v82 = v87[1];
    *(v0 + 416) = *v87;
    *(v0 + 432) = v82;
    memcpy(v80, (v0 + 376), 0x48uLL);
    *(v0 + 304) = v1;
    *(v0 + 312) = v50;
    *(v0 + 313) = *v86;
    *(v0 + 328) = *(v86 + 15);
    *(v0 + 336) = v26;
    v83 = v87[1];
    *(v0 + 344) = *v87;
    *(v0 + 360) = v83;
    sub_1883F697C(v0 + 376, v0 + 448);
    sub_1883F7768(v0 + 304);
LABEL_45:
    sub_1883F816C();

    v84();
    return;
  }

  v16 = OBJC_IVAR___CKSyncEngine_delegateAdapter;
  *(v0 + 968) = OBJC_IVAR___CKSyncEngine_delegateAdapter;
  v17 = *(v0 + 928);
  *(v0 + 984) = v14;
  *(v0 + 976) = v17;
  v18 = *(v0 + 952);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x18CFD59D0](0);
    v16 = *(v0 + 968);
  }

  else
  {
    if (!*(v18 + 16))
    {
      goto LABEL_50;
    }

    v19 = *(v18 + 32);
  }

  *(v0 + 992) = v19;
  *(v0 + 1000) = 1;
  *(v0 + 1008) = *(*(v0 + 944) + v16);

  v46 = swift_task_alloc();
  *(v0 + 1016) = v46;
  *v46 = v0;
  v47 = sub_1883FA230(v46);

  sub_1884FE4E0(v47, v48);
}

uint64_t sub_1885075C4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 1016);
  v3 = *(v1 + 1008);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;
  *(v7 + 1024) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1885076D4, 0, 0);
}

void sub_1885076D4()
{
  if (*(v0 + 1024))
  {
    v1 = (v0 + 984);
  }

  else
  {
    v1 = (v0 + 880);
    MEMORY[0x18CFD52F0](*(v0 + 992));
    if (*((*(v0 + 880) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 880) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v2 = *(v0 + 992);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v3 = *v1;
  v4 = [*(v0 + 944) dataSource];
  v5 = *(v0 + 992);
  if (!v4)
  {

    goto LABEL_10;
  }

  AssetContents = CKSyncEngineDataSourceShouldFetchAssetContents(v4, *(v0 + 944), v5);
  v1 = *(v0 + 992);
  if (AssetContents)
  {

    swift_unknownObjectRelease();
LABEL_10:
    v7 = *(v0 + 976);
LABEL_23:
    v28 = *(v0 + 1000);
    if (v28 == *(v0 + 960))
    {
      v29 = (v0 + 808);
      v30 = *(v0 + 952);

      if (!sub_1883F4C9C(v3))
      {
        v53 = *(v0 + 944);

        v54 = *(v0 + 863);
        v3 = *(v0 + 920);
        goto LABEL_52;
      }

      v31 = *(v0 + 920);
      if (*(v0 + 863))
      {
        if (*(v0 + 863) == 1)
        {
          v32 = *(v0 + 920);

          v112 = sub_1884043A8(v33);
          sub_188504538();

          v34 = v112;
          sub_1883F5DF8(v112);
          sub_1883FDE10();

          *(v0 + 160) = v3;
          *(v0 + 168) = 1;
          *(v0 + 169) = *(v0 + 840);
          *(v0 + 184) = *(v0 + 855);
          *(v0 + 192) = v7;
          v35 = *(v0 + 824);
          *(v0 + 200) = *v29;
          *(v0 + 216) = v35;
          v36 = *(v0 + 176);
          sub_1883F697C(v0 + 160, v0 + 232);
          sub_1883F69F4(v36);
          sub_1883F90D4();
          if (v37 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
          {
            v34 = *(v0 + 944);
          }

          else
          {
            v106 = v36;
            v109 = *(v0 + 944);
            v38 = *(v0 + 160);
            v39 = *(v0 + 168);
            type metadata accessor for SyncEngine();
            v40 = sub_1883FF240();
            sub_1883F9674(v40, v41, v42);
            sub_1883F8C64();

            sub_188402F14(v43, v44, v45, v46, v47, v48, v49, v50, v106);
          }

          sub_1883F7768(v0 + 160);
          v54 = 1;
LABEL_52:
          sub_1883FA4C8();
          sub_1883FE77C(v98);
          *(v0 + 400) = v99;
          *(v0 + 408) = v7;
          v100 = *(v0 + 824);
          *(v0 + 416) = *v29;
          *(v0 + 432) = v100;
          memcpy(v101, (v0 + 376), 0x48uLL);
          *(v0 + 304) = v3;
          *(v0 + 312) = v54;
          sub_1883FE77C((v0 + 313));
          *(v0 + 328) = v102;
          *(v0 + 336) = v7;
          v103 = *(v0 + 824);
          *(v0 + 344) = *v29;
          *(v0 + 360) = v103;
          sub_1883F697C(v0 + 376, v0 + 448);
          sub_1883F7768(v0 + 304);
          sub_1883F816C();
          sub_1883FF618();

          __asm { BRAA            X1, X16 }
        }

        v79 = *(v0 + 920);

        *(v0 + 664) = v3;
        *(v0 + 672) = 0;
        sub_1883FE77C((v0 + 673));
        *(v0 + 688) = v80;
        *(v0 + 696) = v7;
        v81 = *(v0 + 824);
        *(v0 + 704) = *v29;
        *(v0 + 720) = v81;
        v82 = *(v0 + 680);
        sub_1883F697C(v0 + 664, v0 + 736);
        sub_1883F69F4(v82);
        sub_1883F90D4();
        if (v83 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
        {
          v1 = *(v0 + 944);
        }

        else
        {
          v108 = v82;
          v111 = *(v0 + 944);
          v84 = *(v0 + 664);
          v85 = *(v0 + 672);
          type metadata accessor for SyncEngine();
          v86 = sub_1883FF240();
          sub_1883F9674(v86, v87, v88);
          sub_1883F8C64();

          sub_188402F14(v89, v90, v91, v92, v93, v94, v95, v96, v108);
        }

        v97 = v0 + 664;
      }

      else
      {
        v59 = *(v0 + 920);

        v113 = sub_1884043A8(v3);
        v60 = sub_1884043A8(v31);
        sub_1884433B0(v60);
        v61 = v113;
        sub_1883F5DF8(v113);
        sub_1883FDE10();

        *(v0 + 520) = v3;
        *(v0 + 528) = 0;
        sub_1883FE77C((v0 + 529));
        *(v0 + 544) = v62;
        *(v0 + 552) = v7;
        v63 = *(v0 + 824);
        *(v0 + 560) = *v29;
        *(v0 + 576) = v63;
        v64 = *(v0 + 536);
        sub_1883F697C(v0 + 520, v0 + 592);
        sub_1883F69F4(v64);
        sub_1883F90D4();
        if (v65 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
        {
          v61 = *(v0 + 944);
        }

        else
        {
          v107 = v64;
          v110 = *(v0 + 944);
          v66 = *(v0 + 520);
          v67 = *(v0 + 528);
          type metadata accessor for SyncEngine();
          v68 = sub_1883FF240();
          sub_1883F9674(v68, v69, v70);
          sub_1883F8C64();

          sub_188402F14(v71, v72, v73, v74, v75, v76, v77, v78, v107);
        }

        v97 = v0 + 520;
      }

      sub_1883F7768(v97);
      v54 = 0;
      goto LABEL_52;
    }

    *(v0 + 984) = v3;
    *(v0 + 976) = v7;
    v51 = *(v0 + 952);
    if ((v51 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x18CFD59D0](v28);
    }

    else
    {
      if (v28 >= *(v51 + 16))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v52 = *(v51 + 8 * v28 + 32);
    }

    *(v0 + 992) = v52;
    *(v0 + 1000) = v28 + 1;
    if (!__OFADD__(v28, 1))
    {
      *(v0 + 1008) = *(*(v0 + 944) + *(v0 + 968));

      v55 = swift_task_alloc();
      *(v0 + 1016) = v55;
      *v55 = v0;
      sub_1883FA230();
      sub_1883FF618();

      sub_1884FE4E0(v56, v57);
      return;
    }

    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v8 = *(v0 + 976);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 888) = v8;
  sub_188486310();
  v12 = *(v8 + 16);
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_56;
  }

  v15 = v10;
  v16 = v11;
  sub_18844E6FC(&unk_1EA90E620, &unk_1886FBC40);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14))
  {
    v7 = *(v0 + 888);
    if ((v16 & 1) == 0)
    {
LABEL_20:
      v21 = *(v0 + 992);
      v7[(v15 >> 6) + 8] |= 1 << v15;
      *(v7[6] + 8 * v15) = v21;
      v22 = v7[7] + 16 * v15;
      *v22 = 1;
      *(v22 + 8) = 0;
      v23 = v7[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
LABEL_58:
        __break(1u);
        return;
      }

      v26 = *(v0 + 992);
      v7[2] = v25;
      v27 = v26;
    }

LABEL_22:
    v1 = *(v0 + 992);
    *(v7[7] + 16 * v15) = 0;
    swift_unknownObjectRelease();

    goto LABEL_23;
  }

  v17 = *(v0 + 992);
  sub_18848C83C();
  v7 = *(v0 + 888);
  sub_188486310();
  if ((v16 & 1) == (v19 & 1))
  {
    v15 = v18;
    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  sub_1883FF618();

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_188507D04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884061E0;

  return CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)();
}

uint64_t CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)()
{
  sub_1883F7120();
  v2 = v1;
  v4 = v3;
  memcpy((v0 + 16), v5, 0x50uLL);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_18842C524;

  return sub_188506CA4(v4, v6, v7, v0 + 16, v2);
}

uint64_t dispatch thunk of CKSyncEngineDelegate.handleEvent(_:syncEngine:)()
{
  sub_1883F653C();
  v11 = (sub_1883F8340(v0, v1, v2, v3) + 8);
  v12 = *v11 + **v11;
  v4 = (*v11)[1];
  v5 = swift_task_alloc();
  v6 = sub_1883FDA74(v5);
  *v6 = v7;
  v8 = sub_1883FEDC8(v6);

  return v9(v8);
}

uint64_t dispatch thunk of CKSyncEngineDelegate.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1883FB4E4();
  sub_1883F653C();
  v14 = *(sub_1883F9F34(v9, v10, v11, v12, v13) + 16);
  sub_1883F8F90();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = sub_1883FDA74(v18);
  *v19 = v20;
  v19[1] = sub_188442BE4;
  sub_1883F8AB8();
  sub_1883F614C();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1883FB4E4();
  sub_1883F653C();
  v14 = *(sub_1883F9F34(v9, v10, v11, v12, v13) + 24);
  sub_1883F8F90();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = sub_1883FDA74(v18);
  *v19 = v20;
  v19[1] = sub_188442BE4;
  sub_1883F8AB8();
  sub_1883F614C();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)()
{
  sub_1883F653C();
  v11 = (sub_1883F8340(v0, v1, v2, v3) + 32);
  v12 = *v11 + **v11;
  v4 = (*v11)[1];
  v5 = swift_task_alloc();
  v6 = sub_1883FDA74(v5);
  *v6 = v7;
  v8 = sub_1883FEDC8(v6);

  return v9(v8);
}

uint64_t sub_188508260()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884FEB54;

  return CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)();
}

uint64_t dispatch thunk of CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1883FB4E4();
  sub_1883F653C();
  v14 = *(sub_1883F9F34(v9, v10, v11, v12, v13) + 40);
  sub_1883F8F90();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = sub_1883FDA74(v18);
  *v19 = v20;
  v19[1] = sub_1884FEB54;
  sub_1883F8AB8();
  sub_1883F614C();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_18850841C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884FEB54;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)();
}

uint64_t dispatch thunk of CKSyncEngineDelegatePrivate.relatedBundleIDs(zoneIDs:recordIDs:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1883FB4E4();
  sub_1883F653C();
  v14 = *(sub_1883F9F34(v9, v10, v11, v12, v13) + 8);
  sub_1883F8F90();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = sub_1883FDA74(v18);
  *v19 = v20;
  v19[1] = sub_18850863C;
  sub_1883F8AB8();
  sub_1883F614C();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_1885085E0()
{
  sub_188504908(v0 + 112);
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_188508610()
{
  sub_1885085E0();

  return MEMORY[0x1EEE6DEF0](v0);
}

id CKSyncEngine.Event.AccountChange.changeType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1884D1670(v2, v3, v4);
}

uint64_t CKSyncEngine.Event.DidFetchChanges.context.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(a1, v1, 0x50uLL);
  return sub_1883FAB38(__dst, &v4);
}

id sub_1885086DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;

  return v5;
}

void *CKSyncEngine.Event.DidFetchAsset.error.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id sub_188508764(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData_];

  sub_188423CCC(a1, a2);
  return v6;
}

id sub_1885087DC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPreviousUser:a1 currentUser:a2];

  return v4;
}

unint64_t CKSyncEngine.Event.AccountChange.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      v15 = 0;
      v10 = v2;
      v11 = v1;
      _StringGuts.grow(_:)(51);
      sub_1883F7DC8();
      MEMORY[0x18CFD5140](0x43746E756F636341, 0xED000065676E6168);
      sub_188403810();
      MEMORY[0x18CFD5140](0xD00000000000001DLL);
      v12 = [v10 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1883F8BE4();

      sub_1883FEAE8();

      MEMORY[0x18CFD5140](0x6E6572727563203ELL, 0xEE003D7265735574);
      v13 = [v11 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1883F8BE4();

      sub_1883FEAE8();

      sub_1883FA058();

      return v15;
    }

    v3 = v2;
    _StringGuts.grow(_:)(28);

    sub_1883F9424();
    v15 = 0xD000000000000024;
    v4 = [v3 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8BE4();

    sub_1883FEAE8();

    sub_1883FA058();
    v5 = sub_1883F7E8C();
    v7 = 1;
  }

  else
  {
    v8 = v2;
    _StringGuts.grow(_:)(26);

    sub_1883F9424();
    v15 = 0xD000000000000022;
    v9 = [v8 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8BE4();

    sub_1883FEAE8();

    sub_1883FA058();
    v5 = sub_1883F7E8C();
    v7 = 0;
  }

  sub_18844CAB0(v5, v6, v7);
  return v15;
}

uint64_t CKSyncEngine.Event.FetchedDatabaseChanges.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1883F8FA0();
  _StringGuts.grow(_:)(34);

  sub_1883F9424();
  sub_1883F8C80();
  v3 = MEMORY[0x18CFD5330](v2, &type metadata for CKDatabase.DatabaseChange.Modification);
  MEMORY[0x18CFD5140](v3);

  sub_1883F98FC();
  v4 = MEMORY[0x18CFD5330](v1, &type metadata for CKDatabase.DatabaseChange.Deletion);
  MEMORY[0x18CFD5140](v4);

  sub_1883FA058();
  return v6;
}

uint64_t CKSyncEngine.Event.FetchedRecordZoneChanges.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(*v0 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_18840489C(0, v3, 0);
    v4 = v17;
    v5 = (v2 + 32);
    do
    {
      v6 = *v5;
      v7 = [v6 conciseDescription];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v16 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_18840489C((v11 > 1), v12 + 1, 1);
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      ++v5;
      --v3;
    }

    while (v3);
  }

  sub_1883F8FA0();
  _StringGuts.grow(_:)(34);

  sub_1883F9424();
  sub_1883F8C80();
  MEMORY[0x18CFD5330](v4, MEMORY[0x1E69E6158]);
  sub_1883F8BE4();

  sub_1883FEAE8();

  sub_1883F98FC();
  v14 = MEMORY[0x18CFD5330](v1, &type metadata for CKDatabase.RecordZoneChange.Deletion);
  MEMORY[0x18CFD5140](v14);

  sub_1883FA058();
  return v16;
}

uint64_t CKSyncEngine.Event.SentDatabaseChanges.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1883F8FA0();
  _StringGuts.grow(_:)(76);
  sub_1883F7DC8();
  sub_188403810();
  MEMORY[0x18CFD5140](0xD000000000000013);
  MEMORY[0x18CFD5140](0x6F5A646576617320, 0xEC0000003D73656ELL);
  v5 = sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
  v6 = MEMORY[0x18CFD5330](v2, v5);
  MEMORY[0x18CFD5140](v6);

  sub_188403810();
  MEMORY[0x18CFD5140]();
  v7 = MEMORY[0x18CFD5330](v1, &type metadata for CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave);
  MEMORY[0x18CFD5140](v7);

  sub_188403810();
  MEMORY[0x18CFD5140]();
  v8 = sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v9 = MEMORY[0x18CFD5330](v4, v8);
  MEMORY[0x18CFD5140](v9);

  sub_188403810();
  MEMORY[0x18CFD5140](0xD000000000000013);
  type metadata accessor for CKError(0);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  v10 = Dictionary.description.getter();
  MEMORY[0x18CFD5140](v10);

  sub_1883FA058();
  return v12;
}

char *CKSyncEngine.Event.SentRecordZoneChanges.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_1883F4C9C(*v0);
  v6 = MEMORY[0x1E69E7CC0];
  v24 = v3;
  if (!v5)
  {
LABEL_10:
    _StringGuts.grow(_:)(84);
    MEMORY[0x18CFD5140](60, 0xE100000000000000);
    sub_18840AF08();
    MEMORY[0x18CFD5140](0xD000000000000015);
    MEMORY[0x18CFD5140](0x6552646576617320, 0xEE003D7364726F63);
    v19 = MEMORY[0x18CFD5330](v6, MEMORY[0x1E69E6158]);
    v21 = v20;

    MEMORY[0x18CFD5140](v19, v21);

    sub_18840AF08();
    MEMORY[0x18CFD5140]();
    MEMORY[0x18CFD5330](v1, &type metadata for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave);
    sub_1883FE048();

    sub_18840AF08();
    MEMORY[0x18CFD5140]();
    v22 = sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    v23 = MEMORY[0x18CFD5330](v24, v22);
    MEMORY[0x18CFD5140](v23);

    sub_18840AF08();
    MEMORY[0x18CFD5140](0xD000000000000015);
    type metadata accessor for CKError(0);
    sub_1883F66E4(&qword_1EA90C7E0, &qword_1EA90CA70, off_1E70BA618);
    Dictionary.description.getter();
    sub_1883FE048();

    sub_1883F8358();
    return 0;
  }

  v7 = v5;
  v25 = MEMORY[0x1E69E7CC0];
  result = sub_18840489C(0, v5 & ~(v5 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v25;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x18CFD59D0](v9, v2);
      }

      else
      {
        v10 = *(v2 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 conciseDescription];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v17 = *(v25 + 16);
      v16 = *(v25 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_18840489C((v16 > 1), v17 + 1, 1);
      }

      ++v9;
      *(v25 + 16) = v17 + 1;
      v18 = v25 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v7 != v9);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t CKSyncEngine.Event.WillFetchChanges.description.getter()
{
  memcpy(v4, v0, sizeof(v4));
  sub_1883F9424();
  v5 = 0xD00000000000001ALL;
  v6 = v1;
  Changes = CKSyncEngine.FetchChangesContext.description.getter();
  MEMORY[0x18CFD5140](Changes);

  sub_1883F8358();
  return v5;
}

uint64_t CKSyncEngine.Event.WillFetchRecordZoneChanges.description.getter()
{
  v1 = *v0;
  sub_1883F9424();
  sub_1883F8C80();
  v3 = [v2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  sub_1883FA058();
  return v5;
}

uint64_t CKSyncEngine.Event.DidFetchRecordZoneChanges.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (v1)
  {
    v3 = v1;
    v4 = sub_1883F9454();
    MEMORY[0x18CFD5140](v4, 0xE700000000000000);
    v5 = _convertErrorToNSError(_:)();
    v6 = [v5 description];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    MEMORY[0x18CFD5140](v7, v9);
  }

  _StringGuts.grow(_:)(16);

  sub_1883F9424();
  sub_1883F8C80();
  v10 = [v2 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x18CFD5140](v11, v13);

  MEMORY[0x18CFD5140](0, 0xE000000000000000);

  sub_1883FA058();
  return 0;
}

uint64_t CKSyncEngine.Event.DidFetchChanges.description.getter()
{
  memcpy(v5, v0, sizeof(v5));
  sub_1883F8AD0();
  v6 = v2;
  v7 = v1;
  Changes = CKSyncEngine.FetchChangesContext.description.getter();
  MEMORY[0x18CFD5140](Changes);

  sub_1883F8358();
  return v6;
}

uint64_t CKSyncEngine.Event.WillSendChanges.description.getter()
{
  sub_1884057A4();
  sub_1884147BC();
  sub_1883FE048();

  sub_1883F8358();
  return v1;
}

uint64_t CKSyncEngine.Event.DidSendChanges.description.getter()
{
  sub_1884057A4();
  sub_1884147BC();
  sub_1883FE048();

  sub_1883F8358();
  return v1;
}

uint64_t CKSyncEngine.Event.WillFetchAsset.description.getter()
{
  v1 = *v0;
  sub_1883F9424();
  sub_1883F8C80();
  v3 = [v2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  sub_1883FA058();
  return v5;
}

uint64_t CKSyncEngine.Event.FetchedAsset.description.getter()
{
  v1 = *v0;
  sub_1883F9424();
  sub_1883F8C80();
  v3 = [v2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  sub_1883FA058();
  return v5;
}

unint64_t CKSyncEngine.Event.DidFetchAsset.description.getter()
{
  v3 = *v0;
  v4 = v0[1];
  _StringGuts.grow(_:)(22);

  sub_1883F9424();
  v5 = [v3 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  MEMORY[0x18CFD5140](v1, v2);

  v6 = sub_1883F9454();
  MEMORY[0x18CFD5140](v6, 0xE700000000000000);
  sub_18844E6FC(&qword_1EA90E4A8, &qword_1886FB3C8);
  v7 = String.init<A>(describing:)();
  MEMORY[0x18CFD5140](v7);

  sub_1883F8358();
  return 0xD000000000000015;
}

uint64_t static CKSyncEngine.Event.AccountChange.ChangeType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
      v13 = sub_1883F8538();
      sub_1884D1670(v13, v14, 0);
      v15 = sub_1883FB5D4();
      sub_1884D1670(v15, v16, 0);
      sub_1883F7E8C();
      v12 = static NSObject.== infix(_:_:)();
      LOBYTE(v4) = 0;
      LOBYTE(v7) = 0;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
      LOBYTE(v4) = 1;
      v8 = sub_1883F8538();
      sub_1884D1670(v8, v9, 1u);
      v10 = sub_1883FB5D4();
      sub_1884D1670(v10, v11, 1u);
      sub_1883F7E8C();
      v12 = static NSObject.== infix(_:_:)();
      LOBYTE(v7) = 1;
      goto LABEL_13;
    }

LABEL_10:
    v21 = sub_1883F8538();
    sub_1884D1670(v21, v22, v7);
    v23 = sub_1883FB5D4();
    sub_1884D1670(v23, v24, v4);
    v12 = 0;
    goto LABEL_13;
  }

  if (v7 != 2)
  {
    goto LABEL_10;
  }

  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  LOBYTE(v4) = 2;
  v17 = sub_1883F8538();
  sub_1884D1670(v17, v18, 2u);
  v19 = sub_1883FB5D4();
  sub_1884D1670(v19, v20, 2u);
  sub_1883F7E8C();
  if (static NSObject.== infix(_:_:)())
  {
    v12 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v12 = 0;
  }

  LOBYTE(v7) = 2;
LABEL_13:
  v25 = sub_1883FB5D4();
  sub_18844CAB0(v25, v26, v4);
  v27 = sub_1883F8538();
  sub_18844CAB0(v27, v28, v7);
  return v12 & 1;
}