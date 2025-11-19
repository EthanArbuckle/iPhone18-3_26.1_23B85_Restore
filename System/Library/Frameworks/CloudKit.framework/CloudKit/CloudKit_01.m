uint64_t sub_18840370C()
{
}

double sub_188403724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_18847E460(a1, a2, v11, &a11);
}

uint64_t sub_18840376C(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[5];
  v4 = v2[6];
  v5 = v2[4];
  return result;
}

uint64_t sub_18840378C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_18844E6FC(a3, a4);
}

void sub_1884037B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_1884037D8()
{

  JUMPOUT(0x18CFD7E80);
}

uint64_t sub_188403834()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t sub_188403884(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = 0;
  *(v2 - 128) = a1;

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1884038A4(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  v5 = *(v2 + 120);

  return swift_task_alloc();
}

uint64_t sub_1884038D4()
{

  return _HashTable.UnsafeHandle.subscript.setter();
}

uint64_t sub_1884038F4()
{

  return swift_arrayDestroy();
}

void sub_188403A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188403A50()
{
  sub_1883F653C();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  type metadata accessor for TaskPriority();
  sub_18844334C();
  sub_1883F90F4(v6, v7, v8, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v5;
  v10[5] = v3;

  v11 = sub_1884101D8();
  v14 = sub_1884E04A8(v11, v12, v2, v13, v10);
  v0[18] = v14;
  UUID.init()();
  sub_18840C690();

  v15 = *(v4 + 248);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v4 + 248);
  sub_1883FAB94(v14, v1, isUniquelyReferenced_nonNull_native);
  *(v4 + 248) = v21;
  swift_endAccess();
  v17 = *(MEMORY[0x1E69E86A8] + 4);
  v18 = swift_task_alloc();
  v0[19] = v18;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  *v18 = v0;
  v18[1] = sub_1884125A8;
  sub_1883F614C();

  return MEMORY[0x1EEE6DA10]();
}

uint64_t sub_188403BE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188403C24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1883F9834(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v10 = type metadata accessor for UUID();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(*(a4 + 56) + 8 * a1) = a3;
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

uint64_t sub_188403D04()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[6];
  v5 = *(v0 + 56);
  v58 = v4;
  v59 = v0[4];
  v57 = *(v0 + 40);
  if (*(v0 + 8))
  {
    if (*(v0 + 8) != 1)
    {
      v0 = [objc_allocWithZone(CKSyncEngineFetchChangesScope) init];
      goto LABEL_7;
    }

    swift_bridgeObjectRetain_n();
    v6 = sub_1884043A8(v1);
    v7 = objc_allocWithZone(CKSyncEngineFetchChangesScope);
    v8 = v6;
    v0 = v7;
    sub_1884044A4(v8, &qword_1ED4B5CC8, off_1E70BA650, &qword_1ED4B5CC0, &selRef_initWithZoneIDs_);
  }

  else
  {
    sub_1883F4C5C(0, &qword_1EA90E7B0, off_1E70BA848);
    sub_1883FD9FC();
    swift_bridgeObjectRetain_n();
    sub_1884043A8(v1);
    sub_18850FDD0();
  }

  sub_1883FD9FC();

LABEL_7:
  v9 = [objc_allocWithZone(CKSyncEngineFetchChangesOptions) initWithScope_];

  [v9 setOperationGroup_];
  [v9 setForceFetchChanges_];
  sub_1883FDECC();
  sub_1883F4C5C(v10, v11, v12);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v56 = v9;
  [v9 setPrioritizedZoneIDs_];

  sub_1883F4C5C(0, &qword_1EA90C638, off_1E70BA850);
  sub_1883FDECC();
  sub_1883F66E4(v14, v15, v16);
  v17 = Dictionary.init(dictionaryLiteral:)();
  v18 = *(v59 + 64);
  v19 = *(v59 + 32);
  sub_1883F8578();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;

  v25 = 0;
  while (v22)
  {
    v26 = v25;
LABEL_13:
    v27 = __clz(__rbit64(v22)) | (v26 << 6);
    v28 = *(*(v59 + 48) + 8 * v27);
    v29 = (*(v59 + 56) + 16 * v27);
    v30 = *v29;
    v31 = *(v29 + 1);
    v32 = objc_allocWithZone(CKSyncEngineFetchChangesZoneConfiguration);
    v33 = v28;
    v34 = [v32 init];
    [v34 setShouldFetchAssetContents_];
    [v34 setResultsLimit_];
    v60 = v34;
    if ((v17 & 0xC000000000000001) != 0)
    {
      if (v17 >= 0)
      {
        v17 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v35 = __CocoaSet.count.getter();
      if (__OFADD__(v35, 1))
      {
        goto LABEL_29;
      }

      v17 = sub_188511078(v17, v35 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v33;
    sub_188486310();
    v40 = *(v17 + 16);
    v41 = (v39 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_28;
    }

    v43 = v38;
    v44 = v39;
    sub_18844E6FC(&qword_1EA90E7A8, &qword_1886FE0F0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v42))
    {
      sub_188486310();
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_31;
      }

      v43 = v45;
    }

    v22 &= v22 - 1;
    if (v44)
    {
      v47 = *(v17 + 56);
      v48 = *(v47 + 8 * v43);
      *(v47 + 8 * v43) = v60;

      v25 = v26;
    }

    else
    {
      sub_1883FF41C(v17 + 8 * (v43 >> 6));
      *(*(v17 + 48) + 8 * v43) = v37;
      *(*(v17 + 56) + 8 * v43) = v49;

      v50 = *(v17 + 16);
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_30;
      }

      *(v17 + 16) = v52;
      v25 = v26;
    }
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      v53 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v56 setZoneConfigurations_];

      v54 = [objc_allocWithZone(CKSyncEngineFetchChangesZoneConfiguration) init];
      [v54 setShouldFetchAssetContents_];
      [v54 setResultsLimit_];
      [v56 setDefaultZoneConfiguration_];

      return v56;
    }

    v22 = *(v59 + 64 + 8 * v26);
    ++v25;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1884041DC(uint64_t a1)
{

  return sub_1883F971C(a1, 1, v1);
}

uint64_t sub_188404200()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_188404218()
{

  return swift_dynamicCast();
}

uint64_t sub_188404238(uint64_t a1)
{
  *(v1 + 40) = a1;

  return Identifiable<>.id.getter();
}

void sub_188404264(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_188404284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25[811] = v22;
  v25[810] = v30;
  v25[809] = v31;
  v25[808] = v27;
  v25[807] = v26;
  v25[806] = a17;
  v25[805] = a16;
  v25[804] = a22;
  v25[803] = v23;
  v25[802] = v29;
  v25[801] = a20;
  v25[800] = a19;
  v25[799] = a18;
  v25[798] = v24;
  v25[797] = v28;
  v33 = v23;
  v34 = v25[792];
  v25[311] = v22;
  v25[312] = v30;
  v25[313] = v31;
  v25[314] = v27;
  v25[315] = v26;
  v25[316] = a17;
  v25[317] = a16;
  v25[318] = a22;
  v25[319] = v33;
  v25[320] = v29;
  v25[321] = a20;
  v25[322] = a19;
  v25[323] = a18;
  v25[324] = v24;
  v25[325] = v28;
  v25[351] = v22;
  v25[352] = v30;
  v25[353] = v31;
  v25[354] = v27;
  v25[355] = v26;
  v25[356] = a17;
  v25[357] = a16;
  v25[358] = a22;
  v25[359] = v33;
  v25[360] = v29;
  v25[361] = a20;
  v25[362] = a19;
  v25[363] = a18;
  v25[364] = v24;
  v25[365] = v28;

  return sub_1884F3A24((v25 + 351), (v25 + 371));
}

id sub_1884044A4(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, SEL *a5)
{
  if (a1)
  {
    sub_1883F4C5C(0, a2, a3);
    sub_1883F66E4(a4, a2, a3);
    v10.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  v11 = [v5 *a5];

  return v11;
}

char *sub_188404794(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18840489C(char *a1, int64_t a2, char a3)
{
  result = sub_188404794(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_188404984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1884020F4, v3, 0);
}

uint64_t sub_1884049A8()
{
}

uint64_t sub_1884049C0(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188404A28(uint64_t result)
{
  *(v2 + 8) = v1;
  *(v3 + 16) = 166;
  *(v3 + 24) = result;
  return result;
}

uint64_t sub_188404A44(uint64_t a1)
{

  return sub_1883F90F4(v1, 1, 1, a1);
}

void sub_188404A90()
{
  v2 = v0[128] & 1 | 0x2000000000000000;
  v3 = v0[127] & 1;
  v4 = v0[134];
}

BOOL sub_188404AE8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = MEMORY[0x18CFD5E90](*(v6 + 40));
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      v11 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      sub_188404DB8(a2, v9, isUniquelyReferenced_nonNull_native);
      *v3 = v14;
      goto LABEL_7;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      break;
    }

    v7 = v9 + 1;
  }

  a2 = *(*(v6 + 48) + 8 * v9);
LABEL_7:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

void sub_188404BE0()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_188404C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = MEMORY[0x18CFD5E90](*(a2 + 40), a1);
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

uint64_t type metadata accessor for CKAsyncSerialQueue.WaitContext()
{
  result = qword_1EA90C808;
  if (!qword_1EA90C808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_188404D70()
{

  return sub_1884DEE84(v2, v0 + 32, v3, (v1 + 16));
}

void sub_188404D94()
{
  v4 = v0[626];
  v5 = v0[629];
  v1 = v0[631];
  v2 = v0[632];
  v6 = v0[633];
  v3 = v0[634];
}

uint64_t sub_188404DB8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_188501BA4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_188405F64(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = MEMORY[0x18CFD5E90](*(*v3 + 40), v5);
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_188502D28();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_188404EBC()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F7A30(v1);

  return sub_1884CC4C4(v3, v4);
}

uint64_t sub_188404F4C()
{

  return swift_dynamicCast();
}

uint64_t sub_188404F6C()
{
}

uint64_t sub_188404FA4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 72);
  return *(v2 + 56);
}

void sub_188404FD4()
{
  sub_1883FE944(v0);

  JUMPOUT(0x18CFD7E80);
}

id sub_188405008()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_188405020()
{
  *(v1 - 184) &= 0xFFFFFFFFFFFFFFFuLL;

  return sub_1883FBF10(v1 - 168, v0 + 160);
}

uint64_t _s8CloudKit12CKSyncEngineC19FetchChangesOptionsV5scopeAE5ScopeOvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t sub_18840506C()
{
  v1 = sub_18844E6FC(&qword_1EA90E800, &qword_1886FE2B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 128) == 1)
  {
    swift_beginAccess();
    if (*(*(v0 + 136) + 24) < 1)
    {
      v11 = 1;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188514848();
      }

      sub_18840C1A0((*(v0 + 136) + 16), *(v0 + 136) + ((*(v6 + 80) + 40) & ~*(v6 + 80)), v4);
      v11 = 0;
    }

    sub_1883F90F4(v4, v11, 1, v5);
    swift_endAccess();
    if (sub_1883F971C(v4, 1, v5) == 1)
    {
      result = sub_1884072A4(v4);
      *(v0 + 128) = 0;
    }

    else
    {
      sub_18840C23C(v4, v10);
      v12 = *(v5 + 24);
      sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
      CheckedContinuation.resume(returning:)();
      return sub_18840BD84(v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188405254()
{
}

uint64_t sub_1884052A0()
{
}

void sub_1884052B8()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  _StringGuts.grow(_:)(36);
}

__n128 sub_1884052D8(__n128 *a1)
{
  *(v1 + 56) = a1;
  result = *(v1 + 40);
  a1[1] = result;
  a1[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_1884052F0(uint64_t a1)
{
  *(a1 + 8) = sub_1884D64DC;
  v2 = *(v1 + 1304);
  return v1 + 432;
}

void sub_18840546C()
{
  v2 = (v1 + v0);
  v4 = *v2;
  v3 = v2[1];
}

uint64_t sub_18840549C()
{

  return swift_allocError();
}

uint64_t sub_188405514()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

void sub_188405548()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_188405568()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

void sub_1884055D8()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void sub_188405690()
{

  sub_188477824();
}

void sub_1884056A8()
{
  *(v4 - 112) = v3;
  *(v4 - 104) = v2;
  *(v4 - 96) = v1;
  *(v4 - 88) = v0;
}

void sub_1884056DC()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
}

uint64_t sub_1884056EC()
{

  return CheckedContinuation.init(continuation:function:)();
}

void sub_188405714()
{
  v2 = v0[200];
  v3 = v0[199];
  v4 = v0[197];
  v5 = v0[196];
  *(v1 - 136) = v0[198];
  *(v1 - 128) = v5;
  v6 = v0[193];
  v7 = v0[191];
  v8 = v0;
  v9 = v0[181];
  v10 = v8[170];
  v11 = v8[169];
  *(v1 - 152) = v8[171];
  *(v1 - 144) = v11;
  v12 = v8[168];
}

void sub_188405754(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15[334] = v17;
  v15[335] = v16;
  v15[336] = a10;
  v15[337] = a9;
  v15[338] = a15;
  v15[339] = a1;
}

void sub_18840578C()
{

  JUMPOUT(0x18CFD59D0);
}

void sub_1884057A4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = *(v0 + 3);
}

uint64_t sub_1884057E8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *sub_18840581C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;

  return sub_1884DE858(sub_1884DFE80, v2, v3);
}

uint64_t sub_188405868()
{

  return sub_1883F4C9C(v0);
}

unint64_t sub_1884058A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_188421060(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_1884059A0(uint64_t result, uint64_t a2)
{
  v2[199] = result;
  v2[200] = a2;
  v2[201] = *(a2 + 16);
  return result;
}

uint64_t sub_1884059B4()
{
  sub_1883FC738();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = sub_188405E54();
  sub_1883F7468();
  v6 = sub_1884CCC70(v4, v5);
  v7 = sub_188410EC8(v6);
  sub_188404C5C(v7, v3);
  sub_1883FF014();
  if (v2)
  {
    sub_1883F9E4C(*(v0 + 64));
    v9 = *(v8 + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v0 + 104) = v10;
    *v10 = v11;
    sub_188404FA4(v10);
    sub_1884CDCCC();

    __asm { BRAA            X1, X16 }
  }

  sub_1883FDBD0();
  if (!v14)
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v26)
    {
      sub_18840AE7C();
      if (v14)
      {
        static Task<>.checkCancellation()();
      }

      v27 = sub_18840F8F4();
      v28 = sub_188404238(v27);
      sub_1883F813C(v28, v29, v30);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    sub_1883F89B8();
LABEL_16:
    v31 = *(v0 + 80);
    v32 = sub_188400870();
    sub_1883F984C(v32);
    sub_1883F7468();
    sub_1884CCC70(v33, v34);
    v35 = *(MEMORY[0x1E69E8950] + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v0 + 160) = v36;
    *v36 = v37;
    sub_1883F85C0(v36);
    sub_1883FAECC();
    sub_1883FA170();
    sub_188410CA4();

    return MEMORY[0x1EEE6DE98]();
  }

  sub_1883FAAC8();
  if (v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v17 = sub_1884CDCB0(v15);
  v18 = sub_1883F9A44(v17);
  sub_1883FF604(v18);
  sub_1883F7468();
  sub_1884CCC70(v19, v20);
  v21 = *(MEMORY[0x1E69E88F0] + 4);
  v22 = swift_task_alloc();
  v23 = sub_188404A84(v22);
  *v23 = v24;
  v23[1] = sub_18840C3C0;
  sub_1883F960C();
  sub_1884CDCCC();

  return MEMORY[0x1EEE6DE18]();
}

BOOL sub_188405D10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, Swift::Bool isUnique, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v21);
}

uint64_t sub_188405D3C()
{

  return swift_allocObject();
}

id sub_188405D58()
{

  return [v0 (v3 + 3842)];
}

id sub_188405D78()
{
  v4 = v1[53];
  v3 = v1[54];
  v5 = v1[51];
  v6 = v1[48];
  v7 = v1[45];

  return v0;
}

void *sub_188405D98()
{
  v2 = v0[792];
  v3 = v0[791];
  v4 = v0[683];

  return memcpy(v0 + 727, v0 + 685, 0x50uLL);
}

uint64_t sub_188405DE4(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t sub_188405DF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_188405E54()
{
  if (qword_1EA90C828 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  return v1;
}

void sub_188405EBC()
{
  v5 = *(v2 - 152);
  v4 = *(v2 - 144);
  v6 = *(v2 - 168);

  sub_1884DFE14(v1, v4, v5, v6, v0, 1);
}

uint64_t sub_188405EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_188413094(&a9);
}

uint64_t sub_188405F34(uint64_t a1, unint64_t a2)
{

  return sub_1883FE340(a1, a2, (v2 - 104));
}

uint64_t sub_188405F64(uint64_t a1)
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
  if (*(v3 + 16))
  {
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
        result = MEMORY[0x18CFD5E90](*(v6 + 40), v16);
        v17 = -1 << *(v6 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v6 + 48) + 8 * v20) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
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
          goto LABEL_25;
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
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_188406150(void *a1)
{
  v2 = v1 + *a1;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 4);
  os_unfair_lock_unlock(v2);
  return v3;
}

uint64_t sub_1884061C4()
{

  return swift_slowAlloc();
}

uint64_t sub_1884061E0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  sub_1883F816C();

  return v5();
}

uint64_t sub_1884062C0()
{

  return swift_allocObject();
}

uint64_t sub_1884062D8()
{
  v2 = v0[6];
  v0[19] = v2;
  v0[7] = v2;

  return swift_task_alloc();
}

uint64_t sub_188406308(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_18840730C;

  return (v10)(a1, v5 + 2);
}

uint64_t sub_188406414()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = swift_task_alloc();
  v4 = sub_1883F7E38(v3);
  *v4 = v5;
  v4[1] = sub_188442BE4;
  sub_188404D5C();

  return sub_188406AD4(v6, v7, v8, v9, v10);
}

uint64_t sub_1884064C0()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_188406550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_188442BE4;

  return sub_188406614(a1, a2, a3, v8, v9);
}

uint64_t sub_188406614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a3;
  v5[3] = a5;
  v5[4] = a1;
  v5[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_18840663C, 0, 0);
}

uint64_t sub_18840663C()
{
  sub_1883F78E0();
  if (qword_1EA90C838 != -1)
  {
    sub_1883FEAB4();
  }

  v1 = sub_18841BAD0();
  sub_1884052D8(v1);
  v2 = *(MEMORY[0x1E69E8950] + 4);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 64) = v3;
  *v3 = v4;
  v3[1] = sub_18840750C;
  v5 = *(v0 + 32);
  sub_188414794();

  return MEMORY[0x1EEE6DE98]();
}

uint64_t sub_188406748()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884067D8(uint64_t a1, int *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_188442BE4;

  return sub_188406308(a1, a2, a3, v8, v9);
}

void sub_18840689C()
{
  sub_1883FC738();
  v24 = v0;
  if (v0[15])
  {
    v2 = v0[16];
    v3 = v0[12];
    v4 = v0[15];
    swift_getObjectType();
    memcpy(v0 + 2, v3, 0x50uLL);
    v5 = *(v2 + 8);
    swift_unknownObjectRetain();
    v22 = v5 + *v5;
    v6 = v5[1];
    swift_task_alloc();
    sub_1883FF2B8();
    v0[17] = v7;
    *v7 = v8;
    v7[1] = sub_188406EC0;
    v9 = v0[13];
    sub_188410CA4();

    __asm { BRAA            X4, X16 }
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v12 = v0[14];
  v13 = type metadata accessor for Logger();
  sub_1883FDE5C(v13, qword_1EA90C9F8);

  v14 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    v15 = v0[14];
    sub_1883F9984();
    v23 = sub_1883F8C00();
    *v12 = 136315138;
    v16 = sub_1883FE43C();
    sub_1883FE340(v16, v17, &v23);
    sub_1883FE2FC();
    *(v12 + 4) = v1;
    sub_1883F7A44(&dword_1883EA000, v18, v19, "%s trying to post event, but the delegate may have been deallocated");
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  sub_1883F816C();
  sub_188410CA4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188406AD4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 96) = a3;
  *(v5 + 120) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_18840689C, 0, 0);
}

uint64_t sub_188406B00()
{
  sub_1883F7120();
  v1 = v0[15];
  v2 = v0[13];
  v0[16] = swift_unknownObjectWeakLoadStrong();

  v3 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_188406B70()
{
  v7 = v0;
  v1 = v0[16];
  v2 = v0[14];
  if (v1)
  {
    memcpy(__dst, v0 + 2, sizeof(__dst));
    v3 = sub_1883FC9B4();
    [v2 syncEngine:v1 handleEvent:v3];
  }

  swift_unknownObjectRelease();
  sub_1883F816C();

  return v4();
}

uint64_t sub_188406CE4()
{
  sub_1883F7120();
  v1[12] = v2;
  v1[13] = v0;
  memcpy(v1 + 2, v3, 0x50uLL);
  v4 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_188406D50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884061E0;

  return sub_188406CE4();
}

uint64_t sub_188406DF4()
{
  sub_1883F7120();
  v1 = v0[13];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v3 = v0[12];
    sub_1883FA550();
    v0[15] = v4;
    v5 = sub_1883FDC8C();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    sub_1883F816C();

    return v8();
  }
}

uint64_t sub_188406E98()
{
}

uint64_t sub_188406EC0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 136);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_188406FA4()
{
  sub_1883F7120();
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  sub_1883F816C();

  return v2();
}

uint64_t sub_188406FFC()
{

  return swift_task_alloc();
}

uint64_t sub_188407014()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 168) = v0;

  sub_1883F5A54();

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_188407138(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TaskPriority();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 20);
  }

  else
  {
    v9 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
    v10 = *(a4 + 24);
  }

  return sub_1883F90F4(a1 + v10, a2, a2, v9);
}

uint64_t sub_1884071FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TaskPriority();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(a3 + 20);
  }

  else
  {
    v7 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
    v8 = *(a3 + 24);
  }

  return sub_1883F971C(a1 + v8, a2, v7);
}

uint64_t sub_1884072A4(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90E800, &qword_1886FE2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18840730C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1884073F0()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 56);

    v10 = *(v7 + 8);

    v10();
  }
}

uint64_t sub_188407510()
{
  sub_1883F78E0();
  sub_18840F6A8();
  sub_1883F7B78();
  *v4 = v3;
  v5 = *(v1 + 112);
  v6 = *(v1 + 104);
  *v4 = *v2;
  *(v3 + 120) = v0;

  sub_18840FB28();
  v8 = *(v7 + 88);
  sub_1883F8004();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18840765C()
{

  return swift_dynamicCast();
}

uint64_t sub_188407690()
{
  sub_1883F7120();
  v1 = *(v0 + 96);
  swift_unknownObjectRelease();
  sub_1883F816C();

  return v2();
}

uint64_t sub_1884076EC()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1[55];
  v3 = v1[54];
  v4 = v1[52];
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_188407804(void *a1, void *a2, unsigned __int8 a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  switch(a9 >> 60)
  {
    case 1uLL:

      sub_18844CAB0(a1, a2, a3);
      return;
    case 2uLL:
      goto LABEL_9;
    case 3uLL:

      goto LABEL_10;
    case 4uLL:
    case 5uLL:

      goto LABEL_10;
    case 6uLL:
    case 9uLL:

LABEL_9:

      goto LABEL_10;
    case 7uLL:
    case 0xCuLL:
    case 0xDuLL:
      goto LABEL_4;
    case 8uLL:
    case 0xEuLL:

      a1 = a2;
LABEL_4:

      break;
    case 0xAuLL:
    case 0xBuLL:

LABEL_10:

      break;
    case 0xFuLL:
      return;
    default:

      sub_188423CCC(a1, a2);
      break;
  }
}

uint64_t sub_1884079B0()
{
  v28 = MEMORY[0x1E695DFD8];
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  qword_1ED4B6618 = objc_msgSend_setWithObjects_(v28, v11, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, 0);

  return MEMORY[0x1EEE66BB8]();
}

id CKAcceptableValueClasses()
{
  if (qword_1ED4B6620 != -1)
  {
    dispatch_once(&qword_1ED4B6620, &unk_1EFA30A70);
  }

  v1 = qword_1ED4B6618;

  return v1;
}

id CKProcessIndexedArrayKey(void *a1, void *a2, uint64_t *a3, void *a4)
{
  v7 = a1;
  if (!objc_msgSend_length(v7, v8, v9) || (v12 = objc_msgSend_length(v7, v10, v11), objc_msgSend_characterAtIndex_(v7, v13, v12 - 1) != 93))
  {
    v64 = 0;
    goto LABEL_20;
  }

  if (qword_1ED4B6178 != -1)
  {
    dispatch_once(&qword_1ED4B6178, &unk_1EFA2ECC8);
  }

  v16 = qword_1ED4B6170;
  if (!qword_1ED4B6170)
  {
    v64 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKErrorDomain", 12, @"Couldn't initialize indexed list key regular expression");
    goto LABEL_20;
  }

  v17 = objc_msgSend_length(v7, v14, v15);
  v19 = objc_msgSend_matchesInString_options_range_(v16, v18, v7, 0, 0, v17);
  v22 = objc_msgSend_firstObject(v19, v20, v21);
  v25 = objc_msgSend_numberOfRanges(v22, v23, v24);

  if (v25)
  {
    v28 = objc_msgSend_firstObject(v19, v26, v27);
    v30 = objc_msgSend_rangeAtIndex_(v28, v29, 3);
    v32 = objc_msgSend_substringWithRange_(v7, v31, v30, v31);

    if (objc_msgSend_isEqualToString_(v32, v33, @"..<"))
    {

      v37 = objc_msgSend_firstObject(v19, v35, v36);
      v39 = objc_msgSend_rangeAtIndex_(v37, v38, 1);
      v32 = objc_msgSend_substringWithRange_(v7, v40, v39, v40);

      v41 = CKValidateKeyName(v32);
      if (!v41)
      {
        v44 = objc_msgSend_firstObject(v19, v42, v43);
        v46 = objc_msgSend_rangeAtIndex_(v44, v45, 2);
        v48 = objc_msgSend_substringWithRange_(v7, v47, v46, v47);

        v51 = objc_msgSend_firstObject(v19, v49, v50);
        v53 = objc_msgSend_rangeAtIndex_(v51, v52, 4);
        v55 = objc_msgSend_substringWithRange_(v7, v54, v53, v54);

        v58 = objc_msgSend_integerValue(v48, v56, v57);
        v61 = objc_msgSend_integerValue(v55, v59, v60);
        if (v58 > v61 || (v63 = v61, v58 < 0) && v61 >= 1)
        {
          v64 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v62, @"CKErrorDomain", 12, @"indexed list key (%@) contains invalid bounds", v7);
        }

        else
        {

          if (v63 > -1 && v58 < 0)
          {
            v67 = ~v58;
          }

          else
          {
            v67 = -v58;
          }

          if (a2)
          {
            v68 = v32;
            *a2 = v32;
          }

          if (a3)
          {
            *a3 = v58;
          }

          v64 = 0;
          if (a4)
          {
            *a4 = v67 + v63;
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
      v41 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v34, @"CKErrorDomain", 12, @"indexed list key (%@) contains an invalid operator (%@)", v7, v32);
    }

    v64 = v41;
LABEL_18:

    goto LABEL_19;
  }

  v64 = 0;
LABEL_19:

LABEL_20:

  return v64;
}

id sub_1884080E4()
{
  if (qword_1ED4B61B8 != -1)
  {
    dispatch_once(&qword_1ED4B61B8, &unk_1EFA2EF88);
  }

  v1 = qword_1ED4B61B0;

  return v1;
}

uint64_t sub_188408138(uint64_t a1, const char *a2)
{
  qword_1ED4B61B0 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1EFA85AE8);

  return MEMORY[0x1EEE66BB8]();
}

id CKValidateKeyName(void *a1)
{
  v3 = 0;
  _CKCheckArgument("recordKey", a1, 1, 1, 0, &v3);
  v1 = v3;

  return v1;
}

uint64_t CKValueCanBeSetOnRecord(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = CKAcceptableValueClasses();
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v11, v15, 16);
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v8, &v11, v15, 16);
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

void CKValidateRecordArrayValue(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (objc_msgSend_count(v1, v2, v3))
  {
    v5 = objc_msgSend_objectAtIndexedSubscript_(v1, v4, 0);
    v6 = objc_getProtocol("CKRecordValue");
    for (i = objc_opt_class(); ; i = class_getSuperclass(i))
    {
      if (i == objc_opt_class())
      {
        goto LABEL_22;
      }

      if (class_conformsToProtocol(i, v6))
      {
        break;
      }
    }

    if (i)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = [CKException alloc];
        v31 = objc_msgSend_initWithCode_format_(v29, v30, 1006, @"CKEncryptedData is not allowed as CKRecord value: %@. Use [CKRecord encryptedValues] for storing encrypted values on records", v1);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v8 = v1;
            v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v37, v41, 16);
            if (!v10)
            {
              goto LABEL_18;
            }

            v11 = v10;
            v12 = *v38;
            while (1)
            {
              v13 = 0;
              do
              {
                if (*v38 != v12)
                {
                  objc_enumerationMutation(v8);
                }

                v14 = *(*(&v37 + 1) + 8 * v13);
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v17 = [CKException alloc];
                  v18 = objc_opt_class();
                  v19 = NSStringFromClass(v18);
                  v20 = NSStringFromClass(i);
                  v22 = objc_msgSend_initWithCode_format_(v17, v21, 1006, @"Array members can't be mixed class: %@ (%@ != %@)", v8, v19, v20);
                  v23 = v22;

                  goto LABEL_21;
                }

                ++v13;
              }

              while (v11 != v13);
              v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v37, v41, 16);
              if (!v11)
              {
LABEL_18:

                goto LABEL_19;
              }
            }
          }

          v34 = [CKException alloc];
          v35 = objc_opt_class();
          v19 = NSStringFromClass(v35);
          v27 = objc_msgSend_initWithCode_format_(v34, v36, 1006, @"%@ is not allowed in an array", v19);
LABEL_23:
          v22 = v27;
          v28 = v27;
LABEL_21:

          objc_exception_throw(v22);
        }

        v32 = [CKException alloc];
        v31 = objc_msgSend_initWithCode_format_(v32, v33, 1006, @"Nested arrays are not allowed as CKRecord value: %@", v1);
      }

      objc_exception_throw(v31);
    }

LABEL_22:
    v24 = [CKException alloc];
    v25 = objc_opt_class();
    v19 = NSStringFromClass(v25);
    v27 = objc_msgSend_initWithCode_format_(v24, v26, 1006, @"Array members must conform to CKRecordValue: %@ (%@)", v1, v19);
    goto LABEL_23;
  }

LABEL_19:

  v16 = *MEMORY[0x1E69E9840];
}

id sub_188408790(void *a1)
{
  v1 = a1;
  if (!CKCurrentProcessLinkChecke0fc00bd437646efa0e6635c2beaaea9() || !objc_msgSend_conformsToProtocol_(v1, v2, &unk_1EFA87B00))
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_msgSend_CKMap_(v1, v3, &unk_1EFA2EF68);
    v7 = objc_msgSend_copy(v4, v5, v6);

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_msgSend_copyWithZone_(v1, v8, 0);
  }

  else
  {
LABEL_6:
    v9 = v1;
  }

  v7 = v9;
LABEL_8:

  return v7;
}

uint64_t CKDPRecordFieldValueEncryptedValueReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    v10 = off_1E70BA000;
    v11 = &OBJC_IVAR___CKRecord__serializeProtectionData;
    v12 = &OBJC_IVAR___CKRecord__serializeProtectionData;
    v13 = off_1E70BA000;
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        LOBYTE(v185) = 0;
        v17 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v17 >= objc_msgSend_position(a2, v18, v19) && (v22 = objc_msgSend_position(a2, v20, v21) + 1, v22 <= objc_msgSend_length(a2, v23, v24)))
        {
          v25 = objc_msgSend_data(a2, v20, v21);
          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_getBytes_range_(v25, v29, &v185, v28, 1);

          v32 = objc_msgSend_position(a2, v30, v31);
          objc_msgSend_setPosition_(a2, v33, v32 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v21);
        }

        v16 |= (v185 & 0x7F) << v14;
        if ((v185 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v34 = v15++ >= 9;
        if (v34)
        {
          v35 = 0;
          goto LABEL_16;
        }
      }

      v35 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v16;
LABEL_16:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v35 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v36 = (v35 >> 3);
      if ((v35 >> 3) <= 7)
      {
        if (v36 <= 4)
        {
          if (v36 == 3)
          {
            v75 = v10;
            v76 = 0;
            v77 = 0;
            v78 = 0;
            *(a1 + 128) |= 2u;
            while (1)
            {
              LOBYTE(v185) = 0;
              v79 = objc_msgSend_position(a2, v36, v9) + 1;
              if (v79 >= objc_msgSend_position(a2, v80, v81) && (v84 = objc_msgSend_position(a2, v82, v83) + 1, v84 <= objc_msgSend_length(a2, v85, v86)))
              {
                v87 = objc_msgSend_data(a2, v82, v83);
                v90 = objc_msgSend_position(a2, v88, v89);
                objc_msgSend_getBytes_range_(v87, v91, &v185, v90, 1);

                v94 = objc_msgSend_position(a2, v92, v93);
                objc_msgSend_setPosition_(a2, v95, v94 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v82, v83);
              }

              v78 |= (v185 & 0x7F) << v76;
              if ((v185 & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              v34 = v77++ >= 9;
              if (v34)
              {
                v96 = 0;
                goto LABEL_93;
              }
            }

            if (objc_msgSend_hasError(a2, v36, v9))
            {
              v96 = 0;
            }

            else
            {
              v96 = v78;
            }

LABEL_93:
            *(a1 + 64) = v96;
            v10 = v75;
            goto LABEL_85;
          }

          if (v36 == 4)
          {
            *(a1 + 128) |= 1u;
            v185 = 0;
            v67 = objc_msgSend_position(a2, v36, v9) + 8;
            if (v67 >= objc_msgSend_position(a2, v68, v69) && (v72 = objc_msgSend_position(a2, v70, v71) + 8, v72 <= objc_msgSend_length(a2, v73, v74)))
            {
              v167 = objc_msgSend_data(a2, v70, v71);
              v170 = objc_msgSend_position(a2, v168, v169);
              objc_msgSend_getBytes_range_(v167, v171, &v185, v170, 8);

              v174 = objc_msgSend_position(a2, v172, v173);
              objc_msgSend_setPosition_(a2, v175, v174 + 8);
            }

            else
            {
              objc_msgSend__setError(a2, v70, v71);
            }

            *(a1 + 56) = v185;
            goto LABEL_85;
          }
        }

        else
        {
          switch(v36)
          {
            case 5:
              v64 = objc_alloc_init(v10[26]);
              objc_storeStrong((a1 + v11[493]), v64);
LABEL_81:
              v185 = 0;
              v186 = 0;
              if (!PBReaderPlaceMark() || !CKDPDateReadFrom(v64, a2, v132))
              {
LABEL_114:

                return 0;
              }

              goto LABEL_83;
            case 6:
              v97 = PBReaderReadString();
              v98 = v12[494];
              v99 = *(a1 + v98);
              *(a1 + v98) = v97;

              goto LABEL_85;
            case 7:
              v64 = objc_alloc_init(v13[31]);
              objc_storeStrong((a1 + 96), v64);
              goto LABEL_41;
          }
        }
      }

      else if (v36 > 11)
      {
        switch(v36)
        {
          case 0xC:
            v64 = objc_alloc_init(v10[26]);
            objc_msgSend_addDateListValue_(a1, v131, v64);
            goto LABEL_81;
          case 0xD:
            v64 = PBReaderReadString();
            if (v64)
            {
              objc_msgSend_addStringListValue_(a1, v129, v64);
            }

            goto LABEL_84;
          case 0xE:
            v64 = objc_alloc_init(v13[31]);
            objc_msgSend_addLocationListValue_(a1, v65, v64);
LABEL_41:
            v185 = 0;
            v186 = 0;
            if (!PBReaderPlaceMark() || !CKDPLocationCoordinateReadFrom(v64, a2, v66))
            {
              goto LABEL_114;
            }

LABEL_83:
            PBReaderRecallMark();
LABEL_84:

            goto LABEL_85;
        }
      }

      else
      {
        switch(v36)
        {
          case 8:
            v64 = objc_alloc_init(CKDPRecordReference);
            objc_storeStrong((a1 + 104), v64);
            v185 = 0;
            v186 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordReferenceReadFrom(v64, a2, v130))
            {
              goto LABEL_114;
            }

            goto LABEL_83;
          case 0xA:
            if (v9 != 2)
            {
              v136 = v12;
              v137 = v11;
              v138 = v10;
              v139 = 0;
              v140 = 0;
              v141 = 0;
              while (1)
              {
                LOBYTE(v185) = 0;
                v142 = objc_msgSend_position(a2, v36, v9) + 1;
                if (v142 >= objc_msgSend_position(a2, v143, v144) && (v147 = objc_msgSend_position(a2, v145, v146) + 1, v147 <= objc_msgSend_length(a2, v148, v149)))
                {
                  v150 = objc_msgSend_data(a2, v145, v146);
                  v153 = objc_msgSend_position(a2, v151, v152);
                  objc_msgSend_getBytes_range_(v150, v154, &v185, v153, 1);

                  v157 = objc_msgSend_position(a2, v155, v156);
                  objc_msgSend_setPosition_(a2, v158, v157 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v145, v146);
                }

                v141 |= (v185 & 0x7F) << v139;
                if ((v185 & 0x80) == 0)
                {
                  break;
                }

                v139 += 7;
                v34 = v140++ >= 9;
                if (v34)
                {
                  goto LABEL_107;
                }
              }

              objc_msgSend_hasError(a2, v36, v9);
LABEL_107:
              PBRepeatedInt64Add();
              v10 = v138;
              v11 = v137;
              v12 = v136;
              v13 = off_1E70BA000;
              goto LABEL_85;
            }

            v185 = 0;
            v186 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v102 = objc_msgSend_position(a2, v100, v101);
              if (v102 >= objc_msgSend_length(a2, v103, v104) || (objc_msgSend_hasError(a2, v105, v106) & 1) != 0)
              {
                break;
              }

              v109 = 0;
              v110 = 0;
              v111 = 0;
              while (1)
              {
                LOBYTE(v187) = 0;
                v112 = objc_msgSend_position(a2, v107, v108) + 1;
                if (v112 >= objc_msgSend_position(a2, v113, v114) && (v117 = objc_msgSend_position(a2, v115, v116) + 1, v117 <= objc_msgSend_length(a2, v118, v119)))
                {
                  v120 = objc_msgSend_data(a2, v115, v116);
                  v123 = objc_msgSend_position(a2, v121, v122);
                  objc_msgSend_getBytes_range_(v120, v124, &v187, v123, 1);

                  v127 = objc_msgSend_position(a2, v125, v126);
                  objc_msgSend_setPosition_(a2, v128, v127 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v115, v116);
                }

                v111 |= (v187 & 0x7F) << v109;
                if ((v187 & 0x80) == 0)
                {
                  break;
                }

                v109 += 7;
                v34 = v110++ >= 9;
                if (v34)
                {
                  goto LABEL_73;
                }
              }

              objc_msgSend_hasError(a2, v107, v108);
LABEL_73:
              PBRepeatedInt64Add();
            }

LABEL_89:
            PBReaderRecallMark();
            goto LABEL_85;
          case 0xB:
            if (v9 != 2)
            {
              v185 = 0;
              v159 = objc_msgSend_position(a2, v36, v9) + 8;
              if (v159 >= objc_msgSend_position(a2, v160, v161) && (v164 = objc_msgSend_position(a2, v162, v163) + 8, v164 <= objc_msgSend_length(a2, v165, v166)))
              {
                v176 = objc_msgSend_data(a2, v162, v163);
                v179 = objc_msgSend_position(a2, v177, v178);
                objc_msgSend_getBytes_range_(v176, v180, &v185, v179, 8);

                v183 = objc_msgSend_position(a2, v181, v182);
                objc_msgSend_setPosition_(a2, v184, v183 + 8);
              }

              else
              {
                objc_msgSend__setError(a2, v162, v163);
              }

              PBRepeatedDoubleAdd();
              goto LABEL_85;
            }

            v185 = 0;
            v186 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v40 = objc_msgSend_position(a2, v38, v39);
              if (v40 >= objc_msgSend_length(a2, v41, v42) || (objc_msgSend_hasError(a2, v43, v44) & 1) != 0)
              {
                break;
              }

              v187 = 0;
              v47 = objc_msgSend_position(a2, v45, v46) + 8;
              if (v47 >= objc_msgSend_position(a2, v48, v49) && (v52 = objc_msgSend_position(a2, v50, v51) + 8, v52 <= objc_msgSend_length(a2, v53, v54)))
              {
                v55 = objc_msgSend_data(a2, v50, v51);
                v58 = objc_msgSend_position(a2, v56, v57);
                objc_msgSend_getBytes_range_(v55, v59, &v187, v58, 8);

                v62 = objc_msgSend_position(a2, v60, v61);
                objc_msgSend_setPosition_(a2, v63, v62 + 8);
              }

              else
              {
                objc_msgSend__setError(a2, v50, v51);
              }

              PBRepeatedDoubleAdd();
            }

            goto LABEL_89;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_85:
      v133 = objc_msgSend_position(a2, v36, v9);
    }

    while (v133 < objc_msgSend_length(a2, v134, v135));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

id _sSo8CKRecordC8CloudKitE6object6forKeySo0A5Value_pSgSS_tF_0()
{
  v1 = MEMORY[0x18CFD5010]();
  v2 = [v0 objectForKey_];

  return v2;
}

uint64_t CKDPDateReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v56 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v56, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v56 & 0x7F) << v10;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        *(a1 + 16) |= 1u;
        v55 = 0;
        v32 = objc_msgSend_position(a2, (v31 >> 3), v9) + 8;
        if (v32 >= objc_msgSend_position(a2, v33, v34) && (v37 = objc_msgSend_position(a2, v35, v36) + 8, v37 <= objc_msgSend_length(a2, v38, v39)))
        {
          v43 = objc_msgSend_data(a2, v35, v36);
          v46 = objc_msgSend_position(a2, v44, v45);
          objc_msgSend_getBytes_range_(v43, v47, &v55, v46, 8);

          v50 = objc_msgSend_position(a2, v48, v49);
          objc_msgSend_setPosition_(a2, v51, v50 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v35, v36);
        }

        *(a1 + 8) = v55;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v52 = objc_msgSend_position(a2, v40, v41);
    }

    while (v52 < objc_msgSend_length(a2, v53, v54));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_1884098A8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CancellationError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v82 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v82 - v19;
  if (a1)
  {
    v88 = v5;
    v89 = v8;
    v90 = v4;
    v21 = a1;
    v22 = _convertErrorToNSError(_:)();
    v23 = CKEarliestStartDateAfterError(v22);

    if (!v23)
    {
      goto LABEL_8;
    }

    v91 = v21;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1EA90C9F0 != -1)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v24 = type metadata accessor for Logger();
      sub_1883FDE5C(v24, qword_1EA90C9F8);
      (*(v14 + 16))(v17, v20, v13);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v92[0] = v87;
        *v27 = 136315394;
        LODWORD(v86) = v26;
        v28 = sub_1883FE43C();
        v30 = v2;
        v31 = sub_1883FE340(v28, v29, v92);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        sub_1883FE8FC(&qword_1EA90C5C8, MEMORY[0x1E6969530]);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        (*(v14 + 8))(v17, v13);
        v35 = sub_1883FE340(v32, v34, v92);

        *(v27 + 14) = v35;
        _os_log_impl(&dword_1883EA000, v25, v86, "%s setting earliestStartDate from last error %s", v27, 0x16u);
        v36 = v87;
        swift_arrayDestroy();
        MEMORY[0x18CFD7E80](v36, -1, -1);
        MEMORY[0x18CFD7E80](v27, -1, -1);
      }

      else
      {

        (*(v14 + 8))(v17, v13);
        v30 = v2;
      }

      (*(v14 + 32))(v12, v20, v13);
      sub_1883F90F4(v12, 0, 1, v13);
      v37 = OBJC_IVAR____TtC8CloudKit10SyncEngine_earliestStartDateForSchedulerActivities;
      swift_beginAccess();
      sub_188436394(v12, v30 + v37, &unk_1EA90D7B0, &dword_1886F8780);
      swift_endAccess();
      v2 = v30;
      v21 = v91;
LABEL_8:
      v95 = v21;
      type metadata accessor for CKError(0);
      v12 = v38;
      v39 = sub_1883FE8FC(&qword_1EA90CAE0, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v94 == 115)
      {
        break;
      }

      if (v94 == 110)
      {
        if (qword_1EA90C9F0 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_1883FDE5C(v60, qword_1EA90C9F8);

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = v2;
          v65 = swift_slowAlloc();
          v92[0] = v65;
          *v63 = 136315138;
          v66 = sub_1883FE43C();
          v68 = v21;
          v69 = sub_1883FE340(v66, v67, v92);

          *(v63 + 4) = v69;
          _os_log_impl(&dword_1883EA000, v61, v62, "%s setting isWaitingForDeviceToDeviceEncryption from last error", v63, 0xCu);
          sub_1883FE944(v65);
          v70 = v65;
          v2 = v64;
          MEMORY[0x18CFD7E80](v70, -1, -1);
          MEMORY[0x18CFD7E80](v63, -1, -1);
        }

        else
        {
        }

        *(v2 + 280) = 1;
        return;
      }

      if (v94 == 111)
      {
        sub_1884F1148();
LABEL_33:

        return;
      }

      if (v94 != 2)
      {
        goto LABEL_33;
      }

      v40 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
      if (!v40)
      {
        goto LABEL_33;
      }

      v13 = v40;
      v87 = v39;
      v91 = v21;
      v14 = v40 + 64;
      v41 = 1 << *(v40 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v17 = v42 & *(v40 + 64);
      v43 = (v41 + 63) >> 6;
      v84 = 0x80000001886FFF40;
      v83 = *MEMORY[0x1E696A578];
      ++v88;

      v20 = 0;
      v82 = xmmword_1886F7400;
      v85 = v2;
      v86 = v44;
      while (v17)
      {
LABEL_20:
        v46 = *(*(v13 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v17)))));
        v47 = v46;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v92[0] = v46;
        v48 = v46;
        v49 = v46;
        sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
        if (swift_dynamicCast())
        {

          v50 = v93;
        }

        else
        {
          v51 = v12;

          v92[0] = v46;
          v52 = v46;
          v53 = v89;
          v54 = v90;
          if ((swift_dynamicCast() & 1) == 0)
          {

            v92[0] = 0;
            v92[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(38);
            MEMORY[0x18CFD5140](0xD000000000000024, 0x80000001886FFF10);
            swift_getErrorValue();
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

          sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
          inited = swift_initStackObject();
          *(inited + 16) = v82;
          *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(inited + 40) = v56;
          *(inited + 48) = 0xD000000000000012;
          *(inited + 56) = v84;
          v57 = Dictionary.init(dictionaryLiteral:)();
          v92[3] = 20;
          sub_18847E984(v57);

          v58 = v51;
          _BridgedStoredNSError.init(_:userInfo:)();

          v50 = v93;
          v59 = v54;
          v12 = v58;
          (*v88)(v53, v59);

          v2 = v85;
          v13 = v86;
        }

        v17 &= v17 - 1;
        sub_1884098A8(v50);
      }

      while (1)
      {
        v45 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v45 >= v43)
        {

          return;
        }

        v17 = *(v14 + 8 * v45);
        ++v20;
        if (v17)
        {
          v20 = v45;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_45:
      swift_once();
    }

    if (qword_1EA90C9F0 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_1883FDE5C(v71, qword_1EA90C9F8);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = v2;
      v76 = swift_slowAlloc();
      v92[0] = v76;
      *v74 = 136315138;
      v77 = sub_1883FE43C();
      v79 = v21;
      v80 = sub_1883FE340(v77, v78, v92);

      *(v74 + 4) = v80;
      _os_log_impl(&dword_1883EA000, v72, v73, "%s setting isWaitingForAccountToVerifyTerms from last error", v74, 0xCu);
      sub_1883FE944(v76);
      v81 = v76;
      v2 = v75;
      MEMORY[0x18CFD7E80](v81, -1, -1);
      MEMORY[0x18CFD7E80](v74, -1, -1);
    }

    else
    {
    }

    *(v2 + 281) = 1;
  }
}

uint64_t sub_18840A3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  sub_1883F98A8();
  a21 = v25;
  a22 = v26;
  sub_1884008A8();
  a20 = v22;
  v27 = v22[7];
  sub_18841D168(v22[5], v22[12], &unk_1EA90D7B0, &dword_1886F8780);
  v28 = sub_1883F9014();
  if (sub_1883F971C(v28, v29, v27) == 1)
  {
    v30 = v22[12];
    v31 = v22[13];
    v33 = v22[6];
    v32 = v22[7];
    v23 = OBJC_IVAR____TtC8CloudKit10SyncEngine_earliestStartDateForSchedulerActivities;
    sub_1883FF050();
    swift_beginAccess();
    sub_18841D168(v33 + v23, v31, &unk_1EA90D7B0, &dword_1886F8780);
    if (sub_1883F971C(v30, 1, v32) != 1)
    {
      sub_1883F9FEC(v22[12], &unk_1EA90D7B0, &dword_1886F8780);
    }
  }

  else
  {
    v34 = v22[13];
    (*(v22[8] + 32))(v34, v22[12], v22[7]);
    sub_188442C14(v34);
  }

  v35 = v22[7];
  sub_18841D168(v22[13], v22[11], &unk_1EA90D7B0, &dword_1886F8780);
  v36 = sub_1883F9014();
  v38 = sub_1883F971C(v36, v37, v35);
  v39 = v22[11];
  v40 = MEMORY[0x1E69E7CA0];
  v41 = &unk_1886F7000;
  if (v38 == 1)
  {
    sub_1883F9FEC(v22[11], &unk_1EA90D7B0, &dword_1886F8780);
    sub_1884F47BC();
    if (!v88)
    {
      sub_1883F7480();
    }

    v42 = v22[6];
    v43 = type metadata accessor for Logger();
    sub_1883F85F4(v43, qword_1EA90C9F8);

    v44 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      v45 = v22[6];
      sub_1883F9984();
      sub_1883F8C00();
      sub_18840531C();
      *v42 = 136315138;
      v46 = sub_1883FE43C();
      sub_1883FB598(v46, v47, v48, v49);
      sub_1883FE2FC();
      *(v42 + 4) = v24;
      sub_1883F831C();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      sub_1883F8EAC();
      sub_1883F82B8();
    }
  }

  else
  {
    (*(v22[8] + 32))(v22[10], v22[11], v22[7]);
    sub_1884F47BC();
    if (!v88)
    {
      sub_1883F7480();
    }

    v55 = v22[9];
    v56 = v22[10];
    v57 = v22[7];
    v58 = v22[8];
    v59 = v22[6];
    v60 = type metadata accessor for Logger();
    v23 = sub_1883FDE5C(v60, qword_1EA90C9F8);
    v61 = *(v58 + 16);
    v62 = sub_1883F7EE0();
    v63(v62);

    v64 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_188405254();
    v65 = os_log_type_enabled(v64, v23);
    v66 = v22[9];
    v24 = v22[10];
    v68 = v22[7];
    v67 = v22[8];
    if (v65)
    {
      v69 = v22[6];
      sub_18840FB34();
      a10 = v24;
      a9 = sub_18840C660();
      a11 = a9;
      *v24 = 136315394;
      v70 = sub_1883FE43C();
      sub_1883FB598(v70, v71, v72, v73);
      sub_1883F8020();

      *(v24 + 4) = v40;
      *(v24 + 12) = 2080;
      sub_1883F8C4C();
      sub_1883FE8FC(v74, v75);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      v79 = *(v67 + 8);
      v79(v66, v68);
      v80 = sub_1883FE340(v76, v78, &a11);
      v40 = MEMORY[0x1E69E7CA0];

      *(v24 + 14) = v80;
      sub_1884F464C(&dword_1883EA000, v64, v23, "%s scheduling sync with earliest start date %s");
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883FC7E4();

      v79(v24, v68);
      v41 = &unk_1886F7000;
    }

    else
    {

      v81 = *(v67 + 8);
      v81(v66, v68);
      v81(v24, v68);
    }
  }

  v82 = v22[6];
  v83 = sub_18840DDD0();
  v86 = v85;
  if (v83)
  {
    v87 = v22[6];

    sub_188442EA0();
    sub_1884F47BC();
    if (v89)
    {
      if (!v88)
      {
        sub_1883F7480();
      }

      v90 = v22[6];
      v91 = type metadata accessor for Logger();
      sub_1883F85F4(v91, qword_1EA90C9F8);

      v92 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_1883FF744();
      if (sub_1883F9084())
      {
        v93 = v22[6];
        sub_1883F9984();
        sub_1883F8C00();
        sub_18840531C();
        *v90 = v41[131];
        v94 = sub_1883FE43C();
        sub_1883FB598(v94, v95, v96, v97);
        sub_1883FE2FC();
        *(v90 + 4) = v24;
        sub_1883F831C();
        _os_log_impl(v98, v99, v100, v101, v102, 0xCu);
        sub_1883F8EAC();
        sub_1883F82B8();
      }

      v103 = swift_task_alloc();
      v22[14] = v103;
      *v103 = v22;
      v103[1] = sub_1884E5560;
      v104 = v22[6];
      sub_1883FEB30();

      return sub_188442FA0(v105);
    }

    if (!v88)
    {
      sub_1883F7480();
    }

    v121 = v22[6];
    v122 = type metadata accessor for Logger();
    sub_1883F85F4(v122, qword_1EA90C9F8);

    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.info.getter();

    v125 = os_log_type_enabled(v123, v124);
    v126 = v22[13];
    if (v125)
    {
      v127 = v22[6];
      sub_1883F9984();
      a11 = sub_1884061C4();
      *v23 = v41[131];
      v128 = sub_1883FE43C();
      sub_1883FB598(v128, v129, v130, v131);
      sub_1883F9B0C();
      *(v23 + 4) = v41;
      sub_188427428(&dword_1883EA000, v132, v133, "%s not scheduling sync because we have nothing to do");
      sub_188404FD4();
      sub_1883FD784();
    }

    v120 = v126;
  }

  else
  {
    v107 = v84;
    sub_1884F47BC();
    if (!v88)
    {
      sub_1883F7480();
    }

    v108 = v22[6];
    v109 = type metadata accessor for Logger();
    sub_1883F85F4(v109, qword_1EA90C9F8);

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.info.getter();

    v112 = os_log_type_enabled(v110, v111);
    v113 = v22[13];
    if (v112)
    {
      a10 = v22[13];
      v114 = v22[6];
      v115 = sub_18840FB34();
      a11 = sub_18840BE14();
      *v115 = 136315394;
      v116 = sub_1883FE43C();
      sub_1883FB598(v116, v117, v118, v119);
      sub_1883F8020();

      *(v115 + 4) = v40;
      *(v115 + 12) = 2080;
      sub_1883FE340(v107, v86, &a11);
      sub_1883FEFE0();

      *(v115 + 14) = v114;
      _os_log_impl(&dword_1883EA000, v110, v111, "%s not scheduling sync because we're not ready (%s)", v115, 0x16u);
      swift_arrayDestroy();
      sub_1884F4470();
      sub_1884037D8();

      v120 = a10;
    }

    else
    {

      v120 = v113;
    }
  }

  sub_1883F9FEC(v120, &unk_1EA90D7B0, &dword_1886F8780);
  v135 = v22[12];
  v134 = v22[13];
  v137 = v22[10];
  v136 = v22[11];
  v138 = v22[9];

  sub_1883F816C();
  sub_1883FEB30();

  return v140(v139, v140, v141, v142, v143, v144, v145, v146, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18840AB8C()
{

  return sub_18841D168(v2 + 5176, v2 + 3928, v1, v0);
}

void sub_18840ABDC(uint64_t a1, void *a2, void *a3, void (*a4)(void *, id), void (*a5)(void *, id))
{
  v8 = sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v11 = a3;
    a4(v8, v11);
  }

  else if (a2)
  {
    v9 = a2;

    a5(v8, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18840AC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  sub_1883FE320();
  v8 = sub_18844E6FC(v6, v7);
  v16 = sub_1883FF784(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19);
  return a5(v16);
}

uint64_t sub_18840ACE0()
{
  v5 = v2[16];
  v6 = v2[9];
  v2[4] = v1;

  return sub_18844E6FC(v0, v3);
}

id sub_18840AD04(uint64_t a1)
{
  *(v2 + 56) = a1;

  return [v1 container];
}

uint64_t sub_18840AD58()
{
  v2 = *(v0 - 120);

  return swift_arrayDestroy();
}

void sub_18840AD78(unint64_t a1@<X8>)
{
  if (v2 + 1 == (v3 - 1) / 64)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2 + 1;
  }

  *(v5 + 8 * v6) = *(v5 + 8 * v6) & (-1 << (v4 - v1)) | (a1 >> v1);
}

void sub_18840ADB4(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

uint64_t sub_18840ADD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  return sub_18844E6FC(a2, a3);
}

id sub_18840AE2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_18840AE54()
{

  return specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
}

uint64_t sub_18840AEA8(uint64_t a1)
{
  *(a1 + 8) = sub_1884D9DE8;
  v2 = *(v1 + 1304);
  return v1 + 672;
}

uint64_t sub_18840AED4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 56);
  return v3;
}

uint64_t sub_18840AF14()
{

  return sub_1883F4C5C(0, v0, v1);
}

uint64_t sub_18840AF5C(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
  return v3;
}

void sub_18840AF6C(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_18840B008(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[3];

  return sub_1884B1A8C(a1, v5);
}

void *sub_18840B048()
{
  v6[30] = v8;
  v6[31] = v9;
  v6[32] = v10;
  v6[33] = v1;
  v6[34] = v2;
  v6[35] = v3;
  v6[36] = v4;
  v6[37] = v5 & 0xFFFFFFFFFFFFFFFLL;
  v6[38] = v0;

  return memcpy((v11 - 248), v7, 0x50uLL);
}

uint64_t sub_18840B07C(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 16);
  return result;
}

uint64_t sub_18840B0A0()
{
  sub_1883FB4AC();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F78D4();
  *v4 = v3;
  v6 = *(v5 + 352);
  *v4 = *v1;
  v3[45] = v7;
  v3[46] = v8;
  v3[47] = v9;
  v3[48] = v10;
  v3[49] = v0;

  if (v0)
  {
    v11 = v3[35];
    v12 = sub_1884CED08;
  }

  else
  {
    v14 = v3[42];
    v13 = v3[43];
    v16 = v3[40];
    v15 = v3[41];
    v17 = v3[39];
    v18 = v3[35];

    sub_1884D11E8(v17, v16, v15, v14);
    v12 = sub_18840B1F0;
    v11 = v18;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_18840B1F0()
{
  v90 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 304);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  *(v0 + 400) = v7;
  *(v0 + 408) = v6;
  v8 = *(v0 + 272);
  *(v0 + 273) = v8;
  sub_1884D123C(v4, v3, v1, v2);
  v9 = sub_18850BCF0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (!v4)
  {
    if (!v9)
    {
LABEL_13:
      sub_1883FC7A0(__sTestOverridesAvailable);
      if (v36)
      {
        v37 = [objc_opt_self() defaultCenter];
        if (qword_1EA90CBC0 != -1)
        {
          sub_1883F7D14();
        }

        [v37 postNotificationName:qword_1EA919C88 object:*(v0 + 280)];
      }

      v88 = v8;
      v38 = *(v0 + 296);
      v39 = *(v0 + 280);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      v42 = os_log_type_enabled(v40, v41);
      v44 = *(v0 + 360);
      v43 = *(v0 + 368);
      if (v42)
      {
        sub_1883FF1D0();
        v84 = v45;
        v86 = v46;
        v47 = swift_slowAlloc();
        sub_1883F9860();
        v48 = swift_slowAlloc();
        v89 = v48;
        *v47 = 136315138;
        v49 = sub_1883FE43C();
        v83 = v6;
        v51 = sub_1883FE340(v49, v50, &v89);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_1883EA000, v40, v41, "%s skipping account update for matching accounts", v47, 0xCu);
        sub_1883FE944(v48);
        sub_1883FECE8();
        MEMORY[0x18CFD7E80]();
        sub_1883FECE8();
        MEMORY[0x18CFD7E80]();

        sub_1884D11E8(v44, v43, v84, v86);
        sub_1884D1648(v7, v83, v88);
      }

      else
      {
        sub_1884D11E8(*(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384));
        sub_1884D1648(v7, v6, v88);
      }

      sub_1883FE944((v0 + 176));
      v69 = *(v0 + 288);

      sub_1883F816C();
      sub_1883FF618();

      __asm { BRAA            X1, X16 }
    }

LABEL_7:
    sub_1884D11E8(*(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384));
    sub_1884D11E8(v10, v12, v14, v16);
    if (!v8)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v18 = *(v0 + 376);
  v17 = *(v0 + 384);
  v87 = v8;
  v85 = v7;
  v19 = v6;
  v21 = *(v0 + 360);
  v20 = *(v0 + 368);
  v22 = sub_1883F7E8C();
  v24 = sub_188504D10(v22, v23, v18, v17, v10, v12, v14, v16);

  v25 = v21;
  v6 = v19;
  v7 = v85;
  v26 = v20;
  v8 = v87;
  sub_1884D11E8(v25, v26, v18, v17);
  if (v24)
  {
    goto LABEL_13;
  }

  if (!v87)
  {
LABEL_20:
    v52 = *(v0 + 273);
    v53 = *(v0 + 376);
    v54 = *(v0 + 384);
    v56 = *(v0 + 360);
    v55 = *(v0 + 368);
    v57 = *(v0 + 304);
    v58 = sub_1883FDB18();
    sub_1884D123C(v58, v59, v60, v61);
    v62 = sub_1883FDB18();
    sub_18850BDBC(v62, v63, v64, v65);
    if (v52 == 255)
    {
      v81 = swift_task_alloc();
      *(v0 + 440) = v81;
      *v81 = v0;
      sub_1883F89D8(v81);
      sub_1883FF618();

      return sub_18840E178();
    }

    else
    {
      sub_1883FA3FC();
      v66 = swift_task_alloc();
      *(v0 + 432) = v66;
      *v66 = v0;
      sub_1883F82D4(v66);
      sub_1883FF618();

      return sub_1883FBEA8();
    }
  }

LABEL_8:
  if (v8 == 1)
  {
    sub_1883FDF4C();
    sub_1884D165C(v8, v6, 1u);
    v72 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1883FF1D0();
      v73 = swift_slowAlloc();
      sub_1883F9860();
      v89 = swift_slowAlloc();
      *v73 = 136315138;
      v74 = sub_1883FE43C();
      sub_1883FE340(v74, v75, &v89);
      sub_1883FE2FC();
      *(v73 + 4) = v10;
      sub_1883F7A44(&dword_1883EA000, v76, v77, "%s account signed out, resetting sync engine state to clear any pending data from the previous account");
      sub_1883F8EAC();
      v78 = sub_1884055A0();
      MEMORY[0x18CFD7E80](v78);
    }

    v34 = swift_task_alloc();
    *(v0 + 424) = v34;
    *v34 = v0;
    v35 = sub_1884CE37C;
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_20;
    }

    sub_1883FDF4C();
    sub_1884D165C(v8, v6, 2u);
    v27 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1883FF1D0();
      v28 = swift_slowAlloc();
      sub_1883F9860();
      v89 = swift_slowAlloc();
      *v28 = 136315138;
      v29 = sub_1883FE43C();
      sub_1883FE340(v29, v30, &v89);
      sub_1883FE2FC();
      *(v28 + 4) = v10;
      sub_1883F7A44(&dword_1883EA000, v31, v32, "%s account switch detected, resetting sync engine state to clear any pending data from the previous account");
      sub_1883F8EAC();
      v33 = sub_1884055A0();
      MEMORY[0x18CFD7E80](v33);
    }

    v34 = swift_task_alloc();
    *(v0 + 416) = v34;
    *v34 = v0;
    v35 = sub_18841237C;
  }

  v34[1] = v35;
  v79 = *(v0 + 280);
  sub_1883FF618();

  return sub_1884C75F0();
}

uint64_t sub_18840B778(void *a1, uint64_t a2)
{
  v4 = sub_18844DDA0(&qword_1EA90CAE0, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

void sub_18840B834(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_18840B868();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_18840B870(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 56) == 1)
  {
    static Task<>.checkCancellation()();
  }

  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = sub_18840BA1C(&qword_1EA90C800, a2, type metadata accessor for CKAsyncSerialQueue);
  v6 = swift_task_alloc();
  *(v2 + 32) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  *(v2 + 40) = v8;
  *v8 = v2;
  v8[1] = sub_18840C2A0;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v8, v3, v5, 0xD000000000000013, 0x8000000188703840, sub_18840BA64, v6, v9);
}

uint64_t sub_18840B9F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18840B870, a4, 0);
}

uint64_t sub_18840BA1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_18840BA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = &v10[*(v6 + 20)];
  static Task<>.currentPriority.getter();
  v12 = *(v6 + 24);
  v13 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  (*(*(v13 - 8) + 16))(&v10[v12], a1, v13);
  *v10 = a2;
  swift_beginAccess();
  result = *(a3 + 136);
  v15 = *(result + 24);
  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a3 + 136);
    if (*(v18 + 16) < v16 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18840BE64(isUniquelyReferenced_nonNull_native, v16, 0);
      v18 = *(a3 + 136);
    }

    sub_18840BCC8((v18 + 16), v18 + ((*(v7 + 80) + 40) & ~*(v7 + 80)), v10);
    swift_endAccess();
    if (*(a3 + 112) == 1)
    {
      swift_beginAccess();
      sub_1885127C0((a3 + 136));
      swift_endAccess();
    }

    return sub_18840BD84(v10);
  }

  return result;
}

uint64_t sub_18840BC64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_18840BCC8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
        result = sub_18840BC64(a3, a2 + *(*(v10 - 8) + 72) * v5);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_18840BD84(uint64_t a1)
{
  v2 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18840BDE0()
{
}

uint64_t sub_18840BE14()
{

  return swift_slowAlloc();
}

uint64_t sub_18840BE2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = (a2 + 32 * result);
  v6 = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  return result;
}

uint64_t sub_18840BE64(char a1, Swift::Int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = (*v3 + 16);
  v10 = *v9;
  v11 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  v12 = v11;
  if (v10 >= a2)
  {
    v18 = *(v11 - 8);
    v19 = *(v18 + 80);
    sub_18844E6FC(&qword_1EA90E7F8, &qword_1886FE298);
    v20 = *(v18 + 72);
    v17 = swift_allocObject();
    v21 = *(v8 + 24);
    *(v17 + 16) = v10;
    *(v17 + 24) = v21;
    if (v21 >= 1)
    {
      sub_188514738(v17 + 16, v17 + ((v19 + 40) & ~v19), v9, v8 + ((v19 + 40) & ~v19));
    }
  }

  else
  {
    Deque._Storage._growCapacity(to:linearly:)(a2, a3 & 1);
    v13 = *(v12 - 8);
    v14 = *(v13 + 80);
    if (a1)
    {
      v15 = *(v8 + 24);
      sub_18844E6FC(&qword_1EA90E7F8, &qword_1886FE298);
      v16 = *(v13 + 72);
      v17 = swift_allocObject();
      *(v17 + 16) = sub_18840C090();
      *(v17 + 24) = v15;
      *(v17 + 32) = 0;
      if (v15 >= 1)
      {
        sub_188514434(v17 + 16, v17 + ((v14 + 40) & ~v14), v9, v8 + ((v14 + 40) & ~v14));
        *(v8 + 24) = 0;
      }
    }

    else
    {
      sub_18844E6FC(&qword_1EA90E7F8, &qword_1886FE298);
      v22 = *(v13 + 72);
      v17 = swift_allocObject();
      v23 = sub_18840C090();
      v24 = *(v8 + 24);
      *(v17 + 16) = v23;
      *(v17 + 24) = v24;
      *(v17 + 32) = 0;
      if (v24 >= 1)
      {
        sub_188514614(v17 + 16, v17 + ((v14 + 40) & ~v14), v9, v8 + ((v14 + 40) & ~v14));
      }
    }
  }

  *v4 = v17;
  return result;
}

uint64_t sub_18840C090()
{
  v1 = j__malloc_size(v0);
  v2 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  if (v6)
  {
    v7 = v1 - ((v5 + 40) & ~v5);
    if (v6 != -1 || v7 != 0x8000000000000000)
    {
      return v7 / v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_18840C12C(uint64_t a1)
{
  *(v2 + 48) = a1;
}

uint64_t sub_18840C150(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1883FE340(v3, v4, a3);
}

uint64_t sub_18840C168(uint64_t a1)
{
  *(a1 + 8) = sub_1884E6A9C;
  v3 = *(v2 + 24);
  return v1;
}

uint64_t sub_18840C1A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[2];
  v7 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  result = sub_18840C23C(a2 + *(*(v7 - 8) + 72) * v6, a3);
  v9 = a1[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = a1[1];
    if (v11 >= *a1)
    {
      v11 = 0;
    }

    a1[2] = v11;
    if (!__OFSUB__(v12, 1))
    {
      a1[1] = v12 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18840C23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18840C2A0()
{
  sub_1883F7120();
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_188512760;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_1883F7AF8;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_18840C3C0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (v0)
  {
    v9 = *(v3 + 80);
    v10 = sub_1884CDC5C;
  }

  else
  {
    sub_188442BE8();

    v10 = sub_18840C4D0;
    v9 = v3;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_18840C4D0()
{
  sub_1883F653C();
  sub_1883FF2C4();
  if (!v1)
  {
    __break(1u);
  }

  sub_1884137AC();
  if (v1 && (v2 = v0[17], static Task<>.checkCancellation()(), v2))
  {
    v3 = v0[10];
    sub_18840506C();
    sub_1883FA18C();

    return v4();
  }

  else
  {
    v6 = v0[11];
    v7 = v0[12];
    v8 = sub_188405E54();
    v9 = sub_1883FC768(v8);
    sub_1884CDCF4(v9, v10, v11, v12, v13, v14, v15, v16, v25);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8();
    }

    v17 = v0[10];
    v18 = sub_188400870();
    sub_1883F984C(v18);
    sub_1883F7468();
    sub_1884CCC70(v19, v20);
    v21 = *(MEMORY[0x1E69E8950] + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    v0[20] = v22;
    *v22 = v23;
    sub_1883F85C0(v22);
    sub_1883FAECC();
    sub_1883FA170();
    sub_1883F614C();

    return MEMORY[0x1EEE6DE98]();
  }
}

uint64_t sub_18840C660()
{

  return swift_slowAlloc();
}

uint64_t sub_18840C690()
{

  return swift_beginAccess();
}

id sub_18840CEE0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_domain(a1, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"CKErrorDomain");

  if (isEqualToString)
  {
    v9 = objc_msgSend_code(a1, v7, v8);
    v12 = stringForCKErrorCode(v9, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_domain(a1, v7, v8);
    v15 = objc_msgSend_isEqualToString_(v13, v14, @"CKInternalErrorDomain");

    if (v15)
    {
      v18 = objc_msgSend_code(a1, v16, v17);
      v12 = stringForCKUnderlyingErrorCode(v18);
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

__CFString *stringForCKErrorCode(__CFString *a1, const char *a2, uint64_t a3)
{
  if (a1 <= 109)
  {
    v4 = &a1[-1].length + 7;
    a1 = @"Internal Error";
    switch(v4)
    {
      case 0uLL:
        goto LABEL_185;
      case 1uLL:
        a1 = @"Partial Failure";

        break;
      case 2uLL:
        a1 = @"Network Unavailable";

        break;
      case 3uLL:
        a1 = @"Network Failure";

        break;
      case 4uLL:
        a1 = @"Bad Container";

        break;
      case 5uLL:
        a1 = @"Service Unavailable";

        break;
      case 6uLL:
        a1 = @"Request Rate Limited";

        break;
      case 7uLL:
        a1 = @"Missing Entitlement";

        break;
      case 8uLL:
        a1 = @"Not Authenticated";

        break;
      case 9uLL:
        a1 = @"Permission Failure";

        break;
      case 0xAuLL:
        a1 = @"Unknown Item";

        break;
      case 0xBuLL:
        a1 = @"Invalid Arguments";

        break;
      case 0xCuLL:
        a1 = @"Results Truncated";

        break;
      case 0xDuLL:
        a1 = @"Server Record Changed";

        break;
      case 0xEuLL:
        a1 = @"Server Rejected Request";

        break;
      case 0xFuLL:
        a1 = @"Asset File Not Found";

        break;
      case 0x10uLL:
        a1 = @"Asset File Modified";

        break;
      case 0x11uLL:
        a1 = @"Incompatible Version";

        break;
      case 0x12uLL:
        a1 = @"Constraint Violation";

        break;
      case 0x13uLL:
        a1 = @"Operation Cancelled";

        break;
      case 0x14uLL:
        a1 = @"Change Token Expired";

        break;
      case 0x15uLL:
        a1 = @"Batch Request Failed";

        break;
      case 0x16uLL:
        a1 = @"Zone Busy";

        break;
      case 0x17uLL:
        a1 = @"Invalid Database For Operation";

        break;
      case 0x18uLL:
        a1 = @"Quota Exceeded";

        break;
      case 0x19uLL:
        a1 = @"Zone Not Found";

        break;
      case 0x1AuLL:
        a1 = @"Limit Exceeded";

        break;
      case 0x1BuLL:
        a1 = @"User Deleted Zone";

        break;
      case 0x1CuLL:
        a1 = @"Too Many Participants";

        break;
      case 0x1DuLL:
        a1 = @"Already Shared";

        break;
      case 0x1EuLL:
        a1 = @"Reference Violation";

        break;
      case 0x1FuLL:
        a1 = @"Managed Account Restricted";

        break;
      case 0x20uLL:
        a1 = @"Participant May Need Verification";

        break;
      case 0x21uLL:
        a1 = @"Server Response Lost";

        break;
      case 0x22uLL:
        a1 = @"Asset File Not Available";

        break;
      case 0x23uLL:
        a1 = @"Account Temporarily Unavailable";

        break;
      case 0x24uLL:
        a1 = @"Participant Already Invited";

        break;
      default:
        if (@"Internal Error" != 100)
        {
          goto LABEL_183;
        }

        a1 = @"Record Archived";

        break;
    }

    return a1;
  }

  if (a1 > 131)
  {
    if (a1 > 159)
    {
      if (a1 > 169)
      {
        if (a1 == 170)
        {
          a1 = @"CloudCore Session No Longer Valid";
        }

        else
        {
          if (a1 != 180)
          {
            goto LABEL_183;
          }

          a1 = @"Server Zone Hierarchy Changed";
        }
      }

      else if (a1 == 160)
      {
        a1 = @"Incompatible OS Version";
      }

      else
      {
        if (a1 != 161)
        {
          goto LABEL_183;
        }

        a1 = @"Signature Validation Failed";
      }
    }

    else if (a1 > 139)
    {
      if (a1 == 140)
      {
        a1 = @"Insufficient Disk Space";
      }

      else
      {
        if (a1 != 150)
        {
          goto LABEL_183;
        }

        a1 = @"Mergeable Value ID Mismatch";
      }
    }

    else if (a1 == 132)
    {
      a1 = @"Scheduler Activity Deferred";
    }

    else
    {
      if (a1 != 133)
      {
        goto LABEL_183;
      }

      a1 = @"Background Task Expired";
    }
  }

  else
  {
    if (a1 <= 114)
    {
      if (a1 > 112)
      {
        a1 = @"Walrus Enabled";
      }

      else if (a1 == 110)
      {
        a1 = @"Device-To-Device Encryption Unavailable";
      }

      else if (a1 == 111)
      {
        a1 = @"Keychain Sync Incomplete";
      }

      else
      {
        a1 = @"Identity Lost";
      }

      return a1;
    }

    if (a1 > 129)
    {
      if (a1 == 130)
      {
        a1 = @"XPC Activity Not Continue";
      }

      else
      {
        a1 = @"XPC Activity Should Defer";
      }
    }

    else
    {
      if (a1 != 115)
      {
        if (a1 == 124)
        {
          a1 = @"Server Streaming Asset Changed";

          return a1;
        }

LABEL_183:
        if (a1 < 1000)
        {
          a1 = @"Unknown Error";
        }

        else
        {
          v6 = CKErrorCodeForUnderlyingErrorCode(a1, a2, a3);
          a1 = stringForCKErrorCode(v6);
LABEL_185:
        }

        return a1;
      }

      a1 = @"Needs To Verify Terms";
    }
  }

  return a1;
}

uint64_t sub_18840D660()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v3 = v0[52];
  sub_1883FC800();
  v4 = sub_18840EFC4(v3);
  v0[61] = v4;
  v5 = v4;
  v6 = sub_18841BAF0();
  sub_18840F1E8(v6);

  if (v2 == 1)
  {
    v7 = swift_task_alloc();
    v8 = sub_1883FE86C(v7);
    *v8 = v9;
    sub_1883F7D78(v8);
    sub_188404D5C();

    return sub_1884115F4();
  }

  else
  {

    v0[57] = v4;
    v12 = swift_task_alloc();
    v13 = sub_18840DF00(v12);
    *v13 = v14;
    sub_1883F9E98(v13);
    sub_188405328();
    sub_188404D5C();

    return sub_18840E178();
  }
}

void sub_18840D758()
{
  sub_1883F8AF0();
  v2 = v1;
  v3 = type metadata accessor for CancellationError();
  v4 = sub_1883F70DC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1883F7100();
  v11 = v10 - v9;
  if (v2)
  {
    v65 = v2;
    type metadata accessor for CKError(0);
    sub_188405F4C();
    sub_1883FE8FC(v12, v13);
    v14 = v2;
    sub_1883F712C();
    _BridgedStoredNSError.code.getter();
    switch(v64)
    {
      case 2:
        v15 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
        if (!v15)
        {
          if (qword_1EA90C9F0 == -1)
          {
LABEL_27:
            v44 = type metadata accessor for Logger();
            sub_1883F85F4(v44, qword_1EA90C9F8);
            v45 = v14;
            v14 = Logger.logObject.getter();
            v46 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v14, v46))
            {
              v47 = sub_1883F9984();
              v48 = swift_slowAlloc();
              *v47 = 138412290;
              v49 = v45;
              v50 = _swift_stdlib_bridgeErrorToNSError();
              *(v47 + 4) = v50;
              *v48 = v50;
              _os_log_impl(&dword_1883EA000, v14, v46, "BUG IN CLOUDKIT: Could not get partial errors from CKError.partialFailure: %@", v47, 0xCu);
              sub_1883F9FEC(v48, &qword_1EA90DC70, &unk_1886FA190);
              sub_1883F82B8();
              sub_1883F7B60();
              v45 = v14;
              v14 = v49;
            }

            goto LABEL_30;
          }

LABEL_35:
          sub_1883F7480();
          goto LABEL_27;
        }

        v51 = v14;
        v16 = 0;
        v55 = v15;
        v14 = (v15 + 64);
        v17 = *(v15 + 64);
        v18 = *(v15 + 32);
        sub_1883F8578();
        isa = v20 & v19;
        v23 = (v22 + 63) >> 6;
        sub_1883F9424();
        v54 = v24;
        v53 = *MEMORY[0x1E696A578];
        v52 = (v6 + 8);
        if (!isa)
        {
          goto LABEL_12;
        }

        while (2)
        {
          v25 = v16;
LABEL_16:
          v26 = __clz(__rbit64(isa));
          isa &= isa - 1;
          v27 = v26 | (v25 << 6);
          sub_1884802A8(*(v55 + 48) + 40 * v27, v59);
          v28 = *(*(v55 + 56) + 8 * v27);
          v57 = v59[1];
          v56 = v59[0];
          v29 = v60;
          v30 = v28;
          v31 = v57;
          v32 = v56;
LABEL_17:
          v61[0] = v32;
          v61[1] = v31;
          v62 = v29;
          v63 = v28;
          if (*(&v31 + 1))
          {
            *&v59[0] = v28;
            v33 = v28;
            v34 = v28;
            sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
            sub_1884F483C();
            if (swift_dynamicCast())
            {

              v35 = v58;
            }

            else
            {

              *&v59[0] = v28;
              v36 = v28;
              if ((swift_dynamicCast() & 1) == 0)
              {

                *&v59[0] = 0;
                *(&v59[0] + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(38);
                sub_1883F6164();
                swift_getErrorValue();
                DefaultStringInterpolation.appendInterpolation<A>(_:)();
                sub_18841F198();
                sub_1884E0188();
                __break(1u);
                JUMPOUT(0x18840DD5CLL);
              }

              sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1886F7400;
              v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_1884F4828(v38, v39);
              *(inited + 56) = v54;
              v40 = Dictionary.init(dictionaryLiteral:)();
              sub_18847E984(v40);
              sub_1883F8020();

              _BridgedStoredNSError.init(_:userInfo:)();

              v35 = v58;
              (*v52)(v11, v3);
            }

            v41 = v35;
            v42 = sub_1883F8020();
            v43 = sub_18840D758(v42);

            if ((v43 & 1) == 0)
            {
              sub_1884889C4(v61);
              if (isa)
              {
                continue;
              }

LABEL_12:
              while (1)
              {
                v25 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v25 >= v23)
                {
                  v29 = 0;
                  v28 = 0;
                  isa = 0;
                  v32 = 0uLL;
                  v31 = 0uLL;
                  goto LABEL_17;
                }

                isa = v14[v25].isa;
                ++v16;
                if (isa)
                {
                  v16 = v25;
                  goto LABEL_16;
                }
              }

              __break(1u);
              goto LABEL_35;
            }

            sub_1884889C4(v61);
          }

          else
          {
          }

          break;
        }

        break;
      case 3:
      case 4:
      case 6:
      case 7:
      case 9:
      case 20:
      case 21:
      case 23:
        goto LABEL_3;
      case 5:
      case 8:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 22:
        goto LABEL_30;
      default:
        if (v64 == 36 || v64 == 110 || v64 == 111 || v64 == 115)
        {
LABEL_3:
        }

        else
        {
LABEL_30:
        }

        break;
    }
  }

  sub_1883F8178();
}

uint64_t sub_18840DDD0()
{
  if (sub_188403050())
  {
    if (v0[282] & 1) != 0 || (v0[280] & 1) != 0 || (v0[281])
    {
      sub_1883FF470();
    }

    else if (sub_1884F18DC(v0))
    {
      v1 = 1;
    }

    else
    {

      sub_1884CDDA8();
      v1 = sub_1884F18DC(v0);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_18840DEBC()
{

  return swift_slowAlloc();
}

uint64_t sub_18840DED4(uint64_t a1)
{
  *(a1 + 8) = sub_1884EE45C;
  v2 = *(v1 + 760);
  return v1 + 648;
}

uint64_t sub_18840DF0C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18840E004()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 496);
  v3 = *(v1 + 368);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18840E0FC()
{
  sub_1883F7120();

  *(v0 + 456) = *(v0 + 488);
  v1 = swift_task_alloc();
  v2 = sub_18840DF00(v1);
  *v2 = v3;
  sub_1883F9E98(v2);
  sub_188405328();

  return sub_18840E178();
}

uint64_t sub_18840E194()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 1992);
  v3 = *(v1 + 1856);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18840E28C()
{
  v1 = *(v0 + 256);
  v2 = v1[40];
  v1[40] = 0;

  v3 = v1[16];
  if (v1[41] >= [*(v3 + 16) changeCount])
  {
    goto LABEL_10;
  }

  *(v0 + 224) = xmmword_1886F9430;
  *(v0 + 240) = 0;
  *(v0 + 248) = 1;
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v0 + 264) = v5;
  *(v5 + 16) = v0 + 224;
  *(v5 + 24) = v0 + 240;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_188419BB8;
  *(v6 + 24) = v5;
  *(v0 + 208) = sub_188419B44;
  *(v0 + 216) = v6;
  *(v0 + 176) = MEMORY[0x1E69E9820];
  *(v0 + 184) = 1107296256;
  *(v0 + 192) = sub_188419AC4;
  *(v0 + 200) = &unk_1EFA2C6C8;
  v7 = _Block_copy((v0 + 176));
  v8 = *(v0 + 216);

  [v4 getDataRepresentation_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v0 + 248))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = *(v0 + 240);
  if (v1[41] < v10)
  {
    v1[41] = v10;
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    *(v0 + 272) = v12;
    *(v0 + 280) = v11;
    if (v11 >> 60 != 15)
    {
      *(v0 + 96) = v12;
      *(v0 + 104) = v11;
      *(v0 + 144) = 0;
      *(v0 + 160) = 0;
      sub_188423C74(v12, v11);
      sub_188423C74(v12, v11);
      sub_188423C74(v12, v11);
      v13 = swift_task_alloc();
      *(v0 + 288) = v13;
      *v13 = v0;
      v13[1] = sub_188419D80;
      v14 = *(v0 + 256);

      return sub_1883FBEA8();
    }

LABEL_15:
    __break(1u);
    return result;
  }

  v15 = *(v0 + 264);
  sub_18841BA74(*(v0 + 224), *(v0 + 232));

LABEL_10:
  sub_1883F816C();

  return v16();
}

uint64_t sub_18840E564()
{
  sub_1883F7120();
  sub_1884439D8((v0 + 816));
  v1 = *(v0 + 872);
  v2 = *(v0 + 888);
  v3 = *(v0 + 864) & 1;
  v4 = *(v0 + 880) & 1 | 0x9000000000000000;
  v5 = *(v0 + 832);
  *(v0 + 896) = *(v0 + 816);
  *(v0 + 912) = v5;
  *(v0 + 928) = *(v0 + 848);
  *(v0 + 944) = v3;
  *(v0 + 952) = v1;
  *(v0 + 960) = v4;
  *(v0 + 968) = v2;
  sub_1883FAB38(v0 + 16, v0 + 976);
  sub_18840E650(v0 + 816, v0 + 1056);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 2000) = v6;
  *v6 = v7;
  v6[1] = sub_18840E918;
  v8 = *(v0 + 1856);

  return sub_1883FBEA8();
}

uint64_t sub_18840E7C8()
{

  return swift_arrayDestroy();
}

uint64_t sub_18840E840(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_18844E6FC(a2, a3);
  sub_1883F7930(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_18840E89C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1884056BC(a1, a2);
  v5 = sub_18844E6FC(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_18840E8F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_18840E918()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 2000);
  v6 = *(v4 + 1856);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  memcpy((v2 + 736), (v2 + 896), 0x50uLL);
  sub_1883FBF6C(v2 + 736);
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18840EDE4()
{
  sub_1883F7120();
  v1[5] = v2;
  v1[6] = v0;
  v3 = type metadata accessor for Date();
  v1[7] = v3;
  sub_1883F8620(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = sub_188406FFC();
  v1[10] = swift_task_alloc();
  v7 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v7);
  v9 = *(v8 + 64);
  v1[11] = sub_188406FFC();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v10 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18840EF2C()
{
  sub_1883F78E0();
  v3 = sub_18840EFC4(*(v2 + 1904));
  v4 = sub_1883FE500(v3);
  v5 = sub_18842D4B4();
  sub_18840F1E8(v5);

  *(v2 + 1984) = v0;
  v6 = swift_task_alloc();
  v7 = sub_188410CE8(v6);
  *v7 = v8;
  sub_1883F74DC(v7);

  return sub_18840E178();
}

uint64_t sub_18840EFC4(void *a1)
{
  v2 = type metadata accessor for CancellationError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v7 = a1;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v8 = v14;
LABEL_5:

    return v8;
  }

  v12 = a1;
  v9 = a1;
  if (swift_dynamicCast())
  {
    v8 = related decl 'e' for CKErrorCode.init(_:description:)(20, 0xD000000000000012, 0x80000001886FFF40);

    (*(v3 + 8))(v6, v2);
    goto LABEL_5;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  MEMORY[0x18CFD5140](0xD000000000000024, 0x80000001886FFF10);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_18840F1E8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1884098A8(a1);
    sub_188411E28();
  }
}

uint64_t sub_18840F250()
{
  sub_1883F78E0();
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;

  v6 = *(v2 + 16);
  if (v0)
  {
  }

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18840F378(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1884061E0;

  return sub_18840F42C(a1, v4, v5, v6);
}

uint64_t sub_18840F42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for ContinuousClock();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18840F4F0, a4, 0);
}

uint64_t sub_18840F4F0()
{
  sub_1883F7120();
  v1 = *(v0 + 40);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1884113A4;
  v3 = *(v0 + 40);

  return sub_18840F5B8();
}

uint64_t sub_18840F5B8()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  sub_1883F8620(v12);
  *(v1 + 72) = v13;
  v15 = *(v14 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_1883F8458();
  sub_1883FB5FC();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_18840F6B4()
{
  v2 = v0[192];
  v3 = v0[183];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[163];
}

void sub_18840F6E4(uint64_t a1@<X8>)
{
  v16 = v9[789];
  v9[331] = a1;
  v9[332] = v1;
  v9[333] = v2;
  v9[334] = v3;
  v9[335] = v4;
  v9[336] = v5;
  v9[337] = v15;
  v9[338] = v6;
  v9[339] = v12;
  v9[340] = v7;
  v9[341] = v8;
  v9[342] = v10;
  v9[343] = v11;
  v9[344] = v13;
  v9[345] = v14;
}

uint64_t sub_18840F738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_188404C04();
  sub_1883F653C();
  v11 = v10[10];
  v12 = v10[11];
  v13 = v10[8];
  v14 = v10[9];
  v15 = v10[7];
  type metadata accessor for ContinuousClock();
  sub_1883FE8FC(&qword_1EA90C7A8, MEMORY[0x1E69E8820]);
  dispatch thunk of Clock.now.getter();
  sub_1883FE8FC(&qword_1EA90C7B0, MEMORY[0x1E69E87E8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v10[12] = *(v14 + 8);
  v10[13] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16 = sub_1883FF6E8();
  v17(v16);
  v18 = *(MEMORY[0x1E69E8938] + 4);
  v19 = swift_task_alloc();
  v10[14] = v19;
  *v19 = v10;
  v19[1] = sub_18841121C;
  v20 = v10[7];
  sub_1883FF484(v10[11]);
  sub_1884F47DC();
  sub_1883F6548();

  return MEMORY[0x1EEE6DE58](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

void sub_18840F8A8()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_18840F8D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[820] = a4;
  v4[821] = a3;
  v4[822] = result;
  return result;
}

uint64_t sub_18840F8F4()
{
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  return sub_188405E54();
}

unint64_t sub_18840F920()
{
  result = qword_1EA90C840;
  if (!qword_1EA90C840)
  {
    type metadata accessor for SyncEngine();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C840);
  }

  return result;
}

uint64_t sub_18840F978(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_18844E6FC(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_18840F9FC()
{
  sub_1883F7120();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_18840FAEC()
{

  return swift_beginAccess();
}

uint64_t sub_18840FB34()
{

  return swift_slowAlloc();
}

void sub_18840FB4C()
{
  v1 = v0[811];
  v2 = v0[810];
  v3 = v0[809];
  v4 = v0[808];
  v5 = v0[807];
  v6 = v0[806];
  v7 = v0[805];
  v8 = v0[804];
  v9 = v0[803];
  v10 = v0[802];
  v11 = v0[801];
  v12 = v0[800];
  v13 = v0[799];
  v14 = v0[798];
  v15 = v0[797];
}

uint64_t sub_18840FBA4()
{
  sub_1883F7120();
  if (*(v0 + 32) == 1)
  {
    v1 = *(v0 + 16);
    sub_18840FCEC();
    if (*(v0 + 33))
    {
      v2 = *(v0 + 16);
      sub_1884E5EAC();
    }

    sub_1883F816C();

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 24) = v5;
    *v5 = v0;
    v5[1] = sub_1884F9DA8;
    v6 = *(v0 + 16);

    return sub_18840E178();
  }
}

uint64_t sub_18840FC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void sub_18840FCEC()
{
  v1 = v0;
  v2 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - v4;
  if (!*(v0 + 320))
  {
    if (qword_1EA90C9F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1883FDE5C(v6, qword_1EA90C9F8);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      v11 = sub_1883FE43C();
      v13 = sub_1883FE340(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1883EA000, v7, v8, "%s coalescing state update event", v9, 0xCu);
      sub_1883FE944(v10);
      MEMORY[0x18CFD7E80](v10, -1, -1);
      MEMORY[0x18CFD7E80](v9, -1, -1);
    }

    v14 = type metadata accessor for TaskPriority();
    sub_1883F90F4(v5, 1, 1, v14);
    v15 = sub_18840F920();
    v16 = swift_allocObject();
    v16[2] = v1;
    v16[3] = v15;
    v16[4] = v1;
    swift_retain_n();
    sub_188453610();
    v17 = *(v1 + 320);
    *(v1 + 320) = v18;
  }
}

uint64_t sub_18840FF24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18840FF64()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  sub_1883F816C();

  return v5();
}

uint64_t sub_188410048(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 33) = a2;
  *(v3 + 32) = a1;
  return sub_1883F8EA4(sub_18840FBA4, v2);
}

void sub_18841006C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_18841008C@<X0>(uint64_t a1@<X8>)
{

  return sub_1883F9FEC(v1 + a1, v2, v3);
}

uint64_t sub_1884100A8()
{
  sub_1883FB4AC();
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 273);
  [*(*(v0 + 304) + 16) reset];
  sub_1884D1648(v1, v2, v3);
  v4 = *(v0 + 273);
  v5 = *(v0 + 376);
  v6 = *(v0 + 384);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v9 = *(v0 + 304);
  v10 = sub_1883FDB18();
  sub_1884D123C(v10, v11, v12, v13);
  v14 = sub_1883FDB18();
  sub_18850BDBC(v14, v15, v16, v17);
  if (v4 == 255)
  {
    v20 = swift_task_alloc();
    *(v0 + 440) = v20;
    *v20 = v0;
    sub_1883F89D8(v20);

    return sub_18840E178();
  }

  else
  {
    sub_1883FA3FC();
    v18 = swift_task_alloc();
    *(v0 + 432) = v18;
    *v18 = v0;
    sub_1883F82D4(v18);

    return sub_1883FBEA8();
  }
}

uint64_t sub_188410240()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1884061E0;
  sub_1883FE860();
  sub_188404D5C();

  return sub_1884102F4(v8, v9, v10, v11, v12);
}

uint64_t sub_1884102F4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  v6 = swift_task_alloc();
  *(v5 + 48) = v6;
  *v6 = v5;
  v6[1] = sub_188414BB4;

  return sub_18841039C(v5 + 16);
}

uint64_t sub_18841039C(uint64_t a1)
{
  *(v2 + 504) = *a1;
  v3 = *(a1 + 8);
  *(v2 + 368) = v1;
  *(v2 + 376) = v3;
  *(v2 + 505) = *(a1 + 16);
  *(v2 + 384) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1884103D8, v1, 0);
}

uint64_t sub_1884103D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1883FE264();
  a27 = v29;
  a28 = v30;
  sub_18840C194();
  a26 = v28;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v31 = *(v28 + 376);
  v32 = *(v28 + 384);
  v33 = *(v28 + 368);
  v34 = type metadata accessor for Logger();
  *(v28 + 392) = sub_1883FDE5C(v34, qword_1EA90C9F8);

  v35 = v32;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v61 = *(v28 + 505);
    v38 = *(v28 + 504);
    v39 = *(v28 + 384);
    v60 = *(v28 + 376);
    v40 = *(v28 + 368);
    sub_1883FD778();
    swift_slowAlloc();
    a12 = sub_18842D4DC();
    *v33 = 136315394;
    v41 = sub_1883FE43C();
    sub_1883FE340(v41, v42, &a12);
    sub_1883F9B0C();
    sub_1883FC70C();
    a13 = v38;
    a14 = v60;
    a15 = v61;
    a16 = v39;

    v43 = v39;
    v44 = CKSyncEngine.SendChangesContext.description.getter();
    v46 = v45;

    v47 = sub_1883FE340(v44, v46, &a12);

    *(v33 + 14) = v47;
    sub_1883FDDA4();
    _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
    sub_1884038F4();
    sub_1883FC7E4();
    sub_1883FD784();
  }

  static Task<>.checkCancellation()();
  v53 = *(v28 + 505);
  v54 = *(v28 + 376);
  v55 = *(v28 + 384);
  *(v28 + 96) = *(v28 + 504);
  *(v28 + 104) = v54;
  *(v28 + 112) = v53;
  *(v28 + 120) = v55;
  *(v28 + 144) = 0;
  *(v28 + 160) = 0xA000000000000000;
  swift_bridgeObjectRetain_n();
  v56 = v55;
  v57 = swift_task_alloc();
  *(v28 + 400) = v57;
  *v57 = v28;
  sub_1883FB5E0(v57);
  sub_1883F8300();

  return sub_1883FBEA8();
}

unint64_t CKSyncEngine.SendChangesContext.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = *(v0 + 3);
  _StringGuts.grow(_:)(25);

  sub_1883F9424();
  if (v1)
  {
    v5 = 0x6C61756E616DLL;
  }

  else
  {
    v5 = 0x656C756465686373;
  }

  if (v1)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  MEMORY[0x18CFD5140](v5, v6);

  v7 = sub_188404394();
  MEMORY[0x18CFD5140](v7, 0xE90000000000003DLL);
  v8 = CKSyncEngine.SendChangesOptions.description.getter();
  MEMORY[0x18CFD5140](v8);

  sub_1883F8358();
  return 0xD00000000000001BLL;
}

unint64_t CKSyncEngine.SendChangesOptions.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1883F69F4(v3);
  if (v4)
  {
    sub_1884147E8();
    sub_1883F5A94();

    v16 = v12;
    v17 = v14;
  }

  sub_1884147E8();
  sub_1883FF004();
  v13 = v5;
  v15 = v6;
  v7 = [v3 operationGroupID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1883F7BC0();
  MEMORY[0x18CFD5140](v8);

  MEMORY[0x18CFD5140](v13, v15);

  sub_1883F9424();
  CKSyncEngine.SendChangesOptions.Scope.description.getter();
  MEMORY[0x18CFD5140](v9, v10);

  MEMORY[0x18CFD5140](v16, v17);

  sub_1883F8358();
  return 0xD00000000000001ALL;
}

void CKSyncEngine.SendChangesOptions.Scope.description.getter()
{
  sub_1883FDC24();
  switch(*(v0 + 8))
  {
    case 1:
      v9 = sub_1883FDFA4();
      if (!v9)
      {
        goto LABEL_35;
      }

      sub_1883FEE14(v9);
      if (v1 < 0)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        JUMPOUT(0x188410B60);
      }

      sub_1883F855C();
      do
      {
        if (v2)
        {
          sub_1883FEC14();
        }

        else
        {
          v10 = sub_1883FB65C();
        }

        v11 = [v10 ckShortDescription];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1883F8038();

        sub_1883FDB94();
        if (v7)
        {
          sub_1883F9944(v12);
        }

        sub_1884055D8();
      }

      while (!v8);
LABEL_35:
      sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
      sub_1883F94A4();
      sub_188403834();
      sub_18840231C();
      sub_18842D4F8();

      v17 = 10537;
      v18 = 0xE200000000000000;
      goto LABEL_38;
    case 2:
      v13 = sub_1883F4C9C(*v0);
      if (!v13)
      {
        goto LABEL_36;
      }

      sub_1883FEE14(v13);
      if (v1 < 0)
      {
        goto LABEL_41;
      }

      sub_1883F855C();
      do
      {
        if (v2)
        {
          sub_1883FEC14();
        }

        else
        {
          v14 = sub_1883FB65C();
        }

        v15 = [v14 ckShortDescription];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1883F8038();

        sub_1883FDB94();
        if (v7)
        {
          sub_1883F9944(v16);
        }

        sub_1884055D8();
      }

      while (!v8);
LABEL_36:
      sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
      sub_1883F94A4();
      sub_188403834();
      sub_18840231C();
      sub_18842D4F8();

      goto LABEL_39;
    case 3:
      goto LABEL_39;
    default:
      sub_1883FE8DC();

      v3 = sub_188405868();
      if (!v3)
      {
        goto LABEL_37;
      }

      sub_1883FEE14(v3);
      if (v1 < 0)
      {
        goto LABEL_42;
      }

      sub_1883F855C();
      do
      {
        if (v2)
        {
          sub_1883FEC14();
        }

        else
        {
          v4 = sub_1883FB65C();
        }

        v5 = [v4 ckShortDescription];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1883F8038();

        sub_1883FDB94();
        if (v7)
        {
          sub_1883F9944(v6);
        }

        sub_1884055D8();
      }

      while (!v8);
LABEL_37:
      sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
      sub_1883F94A4();
      sub_188403834();
      sub_18840231C();
      sub_18842D4F8();

      v17 = 41;
      v18 = 0xE100000000000000;
LABEL_38:
      MEMORY[0x18CFD5140](v17, v18);
LABEL_39:
      sub_1883FDC98();
      return;
  }
}

uint64_t sub_188410B90()
{

  return _HashTable.UnsafeHandle._startIterator(bucket:)();
}

uint64_t sub_188410BF4(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_188410C3C()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

double sub_188410C5C()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  return result;
}

uint64_t sub_188410CBC(uint64_t result)
{
  v2[207] = result;
  v2[84] = v1;
  v2[85] = result;
  return result;
}

void sub_188410CF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
}

uint64_t sub_188410D28()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  v3[52] = v0;

  if (v0)
  {
    v9 = v3[46];

    return MEMORY[0x1EEE6DFA0](sub_18840D660, v9, 0);
  }

  else
  {
    v10 = v3[48];
    v11 = swift_task_alloc();
    v3[53] = v11;
    *v11 = v7;
    v11[1] = sub_18842D234;
    v12 = v3[46];

    return sub_188429614(v10);
  }
}

uint64_t sub_188410E90()
{

  return swift_beginAccess();
}

uint64_t sub_188410EC8(uint64_t a1)
{
  *(v1 + 96) = a1;

  return Identifiable<>.id.getter();
}

void sub_188410F1C()
{

  sub_1883F60E8(v0, v2, v1);
}

uint64_t sub_188410F40()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 464);
  v3 = *(v1 + 368);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_188411038()
{
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
}

uint64_t sub_18841105C()
{
  v3 = *(v1 + 16);
  v4 = *(v0 + 32);
}

void sub_1884110A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
}

uint64_t sub_1884110F8()
{
  v2 = v0[192];
  v3 = v0[183];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[163];
}

uint64_t sub_188411130()
{

  return type metadata accessor for TaskPriority();
}

uint64_t sub_18841115C()
{
  sub_1883F7120();
  v1 = *(v0 + 505);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  *(v0 + 256) = *(v0 + 504);
  *(v0 + 264) = v2;
  *(v0 + 272) = v1;
  *(v0 + 280) = v3;
  *(v0 + 304) = 0;
  *(v0 + 320) = 0xB000000000000000;
  swift_bridgeObjectRetain_n();
  v4 = v3;
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 472) = v5;
  *v5 = v6;
  sub_1883FB5E0(v5);

  return sub_1883FBEA8();
}

uint64_t sub_18841121C()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  sub_1883F7110();
  *v12 = v11;
  v3[15] = v0;

  v13 = sub_1883FB5D4();
  v8(v13);
  if (v0)
  {
    sub_1883F7FD8();
    sub_1883FB5FC();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  else
  {
    v19 = v3[10];
    v18 = v3[11];

    sub_1883FDB48();
    sub_1883FB5FC();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_1884113A4()
{
  v2 = *v1;
  v3 = *v1;
  sub_1883F7110();
  *v4 = v3;
  v5 = v2[6];
  v6 = *v1;
  *v4 = *v1;

  v7 = v2[5];
  v8 = v2[4];
  v9 = v2[3];
  if (v0)
  {
    v10 = v3[2];

    (*(v8 + 8))(v7, v9);

    return MEMORY[0x1EEE6DFA0](sub_188412504, v10, 0);
  }

  else
  {
    (*(v8 + 8))(v7, v9);
    v11 = swift_task_alloc();
    v3[7] = v11;
    *v11 = v6;
    sub_1883F9EB8(v11);
    v12 = v3[2];

    return sub_18840E178();
  }
}

uint64_t sub_18841157C()
{
  sub_1883F7120();
  sub_1883F9FEC(*(v0 + 40), &unk_1EA90D7B0, &dword_1886F8780);
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884115F4()
{
  sub_1883F7120();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_188406FFC();
  v1[5] = swift_task_alloc();
  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_188411684()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 1896);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  v3[238] = v0;

  if (v0)
  {
    v9 = v3[232];

    return MEMORY[0x1EEE6DFA0](sub_18840EF2C, v9, 0);
  }

  else
  {
    v10 = v3[235];
    v11 = v10;
    v12 = swift_task_alloc();
    v3[239] = v12;
    *v12 = v7;
    v12[1] = sub_188427924;
    v13 = v3[232];

    return sub_188429614(v10);
  }
}

uint64_t sub_188411A88()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1[251];
  v3 = v1[248];
  v4 = v1[232];
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;

  v7 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_188411B98()
{
  sub_1883FB4AC();
  sub_1883FE404();
  sub_1883FB300(v1 + 16);

  sub_1883FB300(v1 + 16);

  v3 = *(v1 + 1984);
  sub_1883F816C();

  return v4();
}

uint64_t sub_188411C20()
{
  sub_1883F816C();
  v1 = *(v0 + 104);
  return v2();
}

id CKEarliestStartDateAfterError(void *a1)
{
  if (CKRetryAfterSecondsForError(a1) <= 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v1, v2);
  }

  return v3;
}

double CKRetryAfterSecondsForError(void *a1)
{
  v1 = a1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1883ED890;
  v24 = sub_1883EF59C;
  v25 = 0;
  if (objc_msgSend_CKIsCKError(v1, v2, v3))
  {
    if (objc_msgSend_code(v1, v4, v5) == 2)
    {
      v8 = objc_msgSend_userInfo(v1, v6, v7);
      v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"CKPartialErrors");

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_188564A80;
      v19[3] = &unk_1E70BDA70;
      v19[4] = &v20;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v10, v11, v19);
    }

    else
    {
      v10 = objc_msgSend_userInfo(v1, v6, v7);
      v13 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"CKRetryAfter");
      v14 = v21[5];
      v21[5] = v13;
    }
  }

  v15 = v21[5];
  if (v15)
  {
    objc_msgSend_doubleValue(v15, v4, v5);
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  _Block_object_dispose(&v20, 8);

  return v17;
}

void sub_188411E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188411E28()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for CancellationError();
  v5 = sub_1883F70DC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1883F7100();
  v12 = v11 - v10;
  if (!v3)
  {
    goto LABEL_22;
  }

  type metadata accessor for CKError(0);
  sub_188405F4C();
  sub_1883FE8FC(v13, v14);
  v15 = v3;
  sub_1883F712C();
  _BridgedStoredNSError.code.getter();
  if (v46 == 14)
  {
    [*(*(v1 + 128) + 16) setNeedsToFetchDatabaseChanges_];
LABEL_20:

LABEL_22:
    sub_1883F8178();
    return;
  }

  if (v46 != 2)
  {
    goto LABEL_20;
  }

  v16 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16;
  v39 = v15;
  v19 = v16 + 64;
  v18 = *(v16 + 64);
  v20 = *(v16 + 32);
  sub_1883F8578();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  sub_1883F9424();
  v42 = v26;
  v41 = *MEMORY[0x1E696A578];
  v40 = (v7 + 8);
  v27 = 0;

  if (!v23)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    v29 = *(*(v17 + 56) + ((v27 << 9) | (8 * __clz(__rbit64(v23)))));
    v30 = v29;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v44 = v29;
    v31 = v29;
    v32 = v29;
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    sub_1884F483C();
    if (swift_dynamicCast())
    {

      v33 = v45;
    }

    else
    {

      v44 = v29;
      v34 = v29;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1886F7400;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1884F4828(v36, v37);
      *(inited + 56) = v42;
      v38 = Dictionary.init(dictionaryLiteral:)();
      sub_18847E984(v38);
      sub_1884F44C0();
      _BridgedStoredNSError.init(_:userInfo:)();

      v33 = v45;
      (*v40)(v12, v4);
    }

    v23 &= v23 - 1;
    sub_188411E28(v33);

    v17 = v43;
  }

  while (v23);
LABEL_7:
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v25)
    {

      goto LABEL_22;
    }

    v23 = *(v19 + 8 * v28);
    ++v27;
    if (v23)
    {
      v27 = v28;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:

  _StringGuts.grow(_:)(38);
  sub_1883F6164();
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_18841F198();
  sub_1884E0188();
  __break(1u);
}

void sub_188412260()
{
  v3 = *(v2 + 752);
  *(v2 + 648) = 0;
  *(v2 + 656) = v3;
  *(v2 + 664) = v0;
  *(v2 + 672) = v1;
}

void sub_188412348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188412360(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v1 = *(v1 + 144);
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

uint64_t sub_18841237C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 416);
  v3 = *(v1 + 280);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_188412494(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188412504()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  sub_1883F9EB8(v1);
  v2 = *(v0 + 16);

  return sub_18840E178();
}

id sub_188412578(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_1884125A8()
{
  sub_1883F78E0();
  sub_18840F6A8();
  sub_1883F7B78();
  *v4 = v3;
  v5 = *(v1 + 152);
  *v4 = *v2;
  *(v3 + 160) = v0;

  sub_18840FB28();
  v7 = *(v6 + 104);
  sub_1883F8004();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1884126BC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = v5;
  v11 = *v5;
  sub_1883FD800();
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v12;
  v15 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v10;
  v17 = *(*v10 + 24);
  sub_18844E6FC(a2, a3);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17);
  v18 = *(v22 + 48);
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v14, v19);
  v20 = *(*(v22 + 56) + 8 * v14);
  sub_18844E6FC(a4, a5);
  sub_188400BF0(&unk_1EA90C868, MEMORY[0x1E69695A8]);
  _NativeDictionary._delete(at:)();
  *v10 = v22;
  return v20;
}

uint64_t sub_188412820()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  v3[26] = v0;

  if (v0)
  {
    v9 = v3[23];

    return MEMORY[0x1EEE6DFA0](sub_188413C0C, v9, 0);
  }

  else
  {
    v10 = v3[24];

    sub_1883F816C();

    return v11();
  }
}

uint64_t sub_188412940()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 272) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_188412A3C()
{
  sub_1883F7120();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  sub_1883F78D4();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v9 + 128) = v0;

  v10 = *MEMORY[0x1E69E9840];
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_188412B68()
{
  sub_1883F78E0();
  v2 = *v1;
  v3 = *v1;
  sub_1883F7110();
  *v4 = v3;
  v5 = v2[34];
  *v4 = *v1;
  v3[35] = v0;

  v6 = v2[33];
  if (v0)
  {
    memcpy(v3 + 11, v3 + 2, 0x48uLL);
    sub_1883F7768((v3 + 11));
  }

  else
  {
    memcpy(v3 + 20, v3 + 2, 0x48uLL);
    sub_1883F7768((v3 + 20));
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_188412CCC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_188412D30(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  sub_1883F7E80();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_188412D74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
    v2 = *(v0 + 56);
  }

  sub_1883FEFF8();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void *sub_188412DC8()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[7];

  sub_188442B84((v0 + 13), &qword_1EA90E4A0, &qword_1886FB3C0);
  sub_188442B84((v0 + 15), &qword_1EA90E4A8, &qword_1886FB3C8);
  return v0;
}

uint64_t sub_188412E44()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1883F816C();

    return v12();
  }
}

uint64_t sub_188413094(uint64_t a1)
{
  v1 = 0xED000073656E6F5ALL;
  v2 = *(a1 + 8);
  type metadata accessor for SyncEngine();
  v3 = sub_1883F8A48();
  sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
  v4 = swift_allocObject();
  v5 = sub_1883F7504(v4, xmmword_1886F8960);
  v5[2].n128_u64[0] = v6;
  v5[2].n128_u64[1] = v7;
  v5[3].n128_u64[0] = 0x6E616843646E6553;
  v5[3].n128_u64[1] = 0xEB00000000736567;
  v8 = 0x646564756C637845;
  v9 = 2;
  v10 = v5;
  switch(v2)
  {
    case 1:
      goto LABEL_3;
    case 2:
      v1 = 0xEF7364726F636552;
LABEL_3:
      v8 = 0x6369666963657053;
      goto LABEL_4;
    case 3:
      goto LABEL_5;
    default:
LABEL_4:
      v9 = 3;
      sub_1883F93D4();
      sub_1883F8CAC();
      v10 = v11;
      v11[1].n128_u64[0] = 3;
      v11[4].n128_u64[0] = v8;
      v11[4].n128_u64[1] = v1;
LABEL_5:
      if (v9 >= v10[1].n128_u64[1] >> 1)
      {
        sub_1883FA1B0();
        v10 = v17;
      }

      v12 = 0xE600000000000000;
      if (v3)
      {
        v12 = 0xE900000000000063;
      }

      v13 = 0x6C61756E614DLL;
      if (v3)
      {
        v13 = 0x6974616D6F747541;
      }

      v10[1].n128_u64[0] = v9 + 1;
      v14 = &v10[v9];
      v14[2].n128_u64[0] = v13;
      v14[2].n128_u64[1] = v12;
      sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
      sub_1883F94A4();
      v15 = sub_1883F7D34();

      return v15;
  }
}

uint64_t sub_188413264()
{
  v0 = sub_188412DC8();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_188413294()
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

  return sub_1884134F0(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18841332C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1883F664C(v1, &selRef_recordIDs, &qword_1EA90CA70, off_1E70BA618, &qword_1EA90C7E0);
  if (v3)
  {
    sub_1883F657C(v3, &qword_1EA90CA70, off_1E70BA618, &qword_1EA90C7E0);
    sub_1883FD9FC();

    v5 = 2;
  }

  else
  {
    v6 = sub_1883F664C(v1, &selRef_zoneIDs, &qword_1ED4B5CC8, off_1E70BA650, &qword_1ED4B5CC0);
    if (v6)
    {
      sub_1883F657C(v6, &qword_1ED4B5CC8, off_1E70BA650, &qword_1ED4B5CC0);
      sub_1883FD9FC();

      v5 = 1;
    }

    else
    {
      v7 = sub_1883FF6D0();
      sub_188404AD0();
      sub_1883F4C5C(v8, v9, v10);
      sub_188404AD0();
      sub_1883F66E4(v11, v12, v13);
      sub_1883FDE28();
      v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v7) = sub_18850E3B8(v14);

      if (v7)
      {
        v1 = 0;
        v5 = 3;
      }

      else
      {
        v1 = sub_1883FF6D0();
        sub_1883FDE28();
        v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1883F657C(v15, &qword_1ED4B5CC8, off_1E70BA650, &qword_1ED4B5CC0);
        sub_1883FD9FC();

        v5 = 0;
      }
    }
  }

  *a1 = v1;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1884134F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x1EEE6DFA0](sub_188413514, 0, 0);
}

uint64_t sub_188413514()
{
  sub_1883F78E0();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  *(v0 + 96) = sub_1883F6A78();
  sub_1884135DC();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  sub_1883FF790(v5);

  return sub_1884137E4();
}

uint64_t sub_1884135DC()
{
  v1 = v0;
  v2 = [v0 scope];
  sub_18841332C(&v6);

  LOBYTE(v5) = v7;
  return CKSyncEngine.SendChangesOptions.init(scope:operationGroup:)(&v4, [v1 operationGroup]);
}

uint64_t sub_188413778()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t sub_1884137E4()
{
  sub_1883F7120();
  v9 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  *(v1 + 32) = v0;
  *(v1 + 40) = v3;
  *(v1 + 80) = *(v2 + 8);
  *(v1 + 48) = v2[2];
  v4 = *MEMORY[0x1E69E9840];
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_188413880()
{
  sub_1883F78E0();
  v1 = *(v0 + 88);
  *(v0 + 16) = 1;
  v2 = *(v0 + 56);
  *(v0 + 24) = *(v0 + 48);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;

  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_188414DE8;
  v5 = *(v0 + 64);

  return sub_188413944(v0 + 16);
}

uint64_t sub_188413944(uint64_t a1)
{
  *(v2 + 64) = *a1;
  v3 = *(a1 + 8);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 65) = *(a1 + 16);
  *(v2 + 32) = *(a1 + 24);
  return sub_1883F8EA4(sub_188413AC0, v1);
}

void *sub_18841397C(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x50uLL);
}

uint64_t sub_188413994()
{
  sub_1883F7120();
  v10 = *MEMORY[0x1E69E9840];
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v1 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v2 = _os_activity_create(&dword_1883EA000, "engine/send-changes", v1, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 56) = v2;
  os_activity_scope_enter(v2, (v0 + 16));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_188414EE0;
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = *(v0 + 80);
  v8 = *MEMORY[0x1E69E9840];

  return sub_188413A98(v3, v4, v7, v5, v6);
}

uint64_t sub_188413A98(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  *(v5 + 88) = a3;
  *(v5 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_188413880, 0, 0);
}

uint64_t sub_188413AC0()
{
  sub_1883FB4AC();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 65);
  v4 = *(v0 + 64);
  v5 = *(v0 + 16);
  sub_18840FB98();
  v6 = swift_allocObject();
  *(v0 + 40) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v1;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;

  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_188414CC8;
  v9 = *(v0 + 16);

  return sub_1883FC82C();
}

uint64_t sub_188413BC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_18840FB98();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_188413C0C()
{
  sub_1883F7120();
  v1 = *(v0 + 192);

  sub_1883F816C();
  v3 = *(v0 + 208);

  return v2();
}

uint64_t sub_188413C68()
{
  sub_1883F78E0();
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  os_activity_scope_leave((v0 + 88));
  swift_unknownObjectRelease();
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_188413D0C, v2, 0);
}

uint64_t sub_188413D0C()
{
  sub_1883F7120();
  v5 = *MEMORY[0x1E69E9840];
  sub_1883F816C();
  v2 = *(v0 + 128);
  v3 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t sub_188413D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_188404C04();
  sub_1883F653C();
  v11 = v10[20];
  v13 = v10[17];
  v12 = v10[18];
  v15 = v10[15];
  v14 = v10[16];
  v16 = v10[13];
  v17 = v10[14];
  sub_18840C690();
  sub_1884DE210(v14);
  swift_endAccess();

  swift_willThrow();

  (*(v15 + 8))(v14, v17);

  sub_1883F816C();
  v18 = v10[20];
  sub_1883F6548();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_188413E58()
{
  sub_1883F7120();
  sub_1883FB300(v0 + 16);
  sub_1883F816C();
  v2 = *(v0 + 272);

  return v1();
}

uint64_t sub_188413EB4()
{
  sub_1883F78E0();
  v1 = v0[31];
  v2 = v0[35];
  if (v1)
  {
    v3 = v0[32];
    v4 = v2;
    v1(v2);
  }

  sub_1883F816C();

  return v5();
}

uint64_t sub_188413F40()
{
  result = *(v0 + 16) & 0x3FLL;
  v2 = *(v0 + 24) & 0x3FLL;
  return result;
}

void *sub_188413F54()
{
  v4 = v0[798];
  v5 = v0[799];
  v3 = v0[797];

  return memcpy(v0 + 446, v0 + 311, 0x78uLL);
}

void sub_188413F84(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 56);
  v8 = *(v7 + 8 * v5);
  *(v7 + 8 * v5) = a5;
}

void *sub_188413FA4(void *a1)
{
  *(v2 + 6496) = a1;
  a1[2] = v1;
  a1[3] = v5;
  a1[4] = v3;
  v7 = a1 + 5;

  return memcpy(v7, (v2 + v4), 0x50uLL);
}

uint64_t sub_188413FD0()
{
  sub_1883F7120();
  v1 = *(v0 + 368);
  sub_1883FB6F8(*(v0 + 384));
  v2 = swift_task_alloc();
  *(v0 + 408) = v2;
  *v2 = v0;
  sub_1883FB5E0(v2);

  return sub_1884D0668();
}

uint64_t sub_188414090()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 400);
  v6 = *(v4 + 368);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  sub_1883FEE9C();
  sub_1883FBF6C(v2 + 16);
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_188414738(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    return a9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188414758(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
}

uint64_t sub_18841477C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return related decl 'e' for CKErrorCode.init(_:description:)(1, a10, a11);
}

unint64_t sub_1884147BC()
{

  return CKSyncEngine.SendChangesContext.description.getter();
}

id sub_18841488C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 3);
  switch(v0[16])
  {
    case 1u:
      v15 = *(v0 + 1);
      swift_bridgeObjectRetain_n();
      v16 = v3;
      v7 = sub_1884043A8(v2);
      v8 = objc_allocWithZone(CKSyncEngineSendChangesScope);
      v9 = &qword_1ED4B5CC8;
      v10 = off_1E70BA650;
      v11 = &qword_1ED4B5CC0;
      v12 = &selRef_initWithZoneIDs_;
      goto LABEL_6;
    case 2u:
      v5 = *(v0 + 1);
      swift_bridgeObjectRetain_n();
      v6 = v3;
      v7 = sub_188443204(v2);
      v8 = objc_allocWithZone(CKSyncEngineSendChangesScope);
      v9 = &qword_1EA90CA70;
      v10 = off_1E70BA618;
      v11 = &qword_1EA90C7E0;
      v12 = &selRef_initWithRecordIDs_;
LABEL_6:
      v17 = v7;
      v0 = v8;
      sub_1884044A4(v17, v9, v10, v11, v12);
      goto LABEL_7;
    case 3u:
      v13 = objc_allocWithZone(CKSyncEngineSendChangesScope);
      sub_1883FD9FC();

      v14 = v3;
      v0 = [v0 init];
      goto LABEL_8;
    default:
      sub_1883F4C5C(0, &qword_1EA90E7C0, off_1E70BA8C0);
      sub_1883FD9FC();
      swift_bridgeObjectRetain_n();
      v4 = v3;
      sub_1884043A8(v2);
      sub_18850FDD0();
LABEL_7:
      sub_1883FD9FC();

LABEL_8:
      v18 = [objc_allocWithZone(CKSyncEngineSendChangesOptions) initWithScope_];

      [v18 setOperationGroup_];

      v19 = [objc_allocWithZone(CKSyncEngineSendChangesContext) initWithReason:v1 options:v18];

      return v19;
  }
}

uint64_t sub_188414AAC()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *(v4 + 368);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  memcpy((v2 + 176), (v2 + 256), 0x50uLL);
  sub_1883FBF6C(v2 + 176);
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_188414BB4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1883F816C();

    return v12();
  }
}

uint64_t sub_188414CC8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    v9 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1884151BC, v9, 0);
  }

  else
  {
    v10 = v3[5];

    sub_1883F816C();

    return v11();
  }
}

uint64_t sub_188414DE8()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_188414EE0()
{
  sub_1883F7120();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  sub_1883F8D80();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v9 + 72) = v0;

  v10 = *MEMORY[0x1E69E9840];
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_188415008()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  v2 = *v1;
  v3 = *v1;
  sub_1883F7110();
  *v4 = v3;
  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  *v4 = *v1;
  *(v3 + 112) = v0;

  v7 = *(v3 + 40);

  sub_1883F7FD8();
  sub_1883FB5FC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

id sub_188415154(void *a1)
{

  return sub_1884DFDA8(a1, v4, v2, v1, v3, 1);
}

void sub_188415178()
{
  v6 = *(v4 + 56) + 16 * v1;
  *v6 = v0;
  *(v6 + 8) = v3;
}

uint64_t sub_188415198()
{
  sub_1883F816C();
  v1 = *(v0 + 56);
  return v2();
}

uint64_t sub_1884151BC()
{
  sub_1883F7120();
  v1 = *(v0 + 40);

  sub_1883F816C();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_188415218()
{
  sub_1883F7120();
  v1 = *(v0 + 48);

  sub_1883F816C();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_18841527C()
{
  sub_1883F78E0();
  v1 = *MEMORY[0x1E69E9840];
  sub_1884F9D88();
  swift_unknownObjectRelease();
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_188415314, v0, 0);
}

uint64_t sub_188415314()
{
  sub_1883F7120();
  v5 = *MEMORY[0x1E69E9840];
  sub_1883F816C();
  v2 = *(v0 + 72);
  v3 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t sub_188415394()
{
  sub_1883F78E0();
  v1 = v0[10];
  v2 = v0[14];
  if (v1)
  {
    v3 = v0[11];
    v4 = v2;
    v1(v2);
  }

  sub_1883F816C();

  return v5();
}

void sub_188415420()
{
  v31[5] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DF90]);
  v2 = objc_msgSend_initWithCapacity_(v0, v1, 0);
  v3 = qword_1ED4B6520;
  qword_1ED4B6520 = v2;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v31[0] = @"BuildVersion";
  v31[1] = @"ProductName";
  v31[2] = @"ProductType";
  v31[3] = @"ProductVersion";
  v31[4] = @"DeviceClass";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v31, 5);
  v7 = v5;
  if (byte_1EA90C538 == 1 && (byte_1EA919CC8 & 1) == 0)
  {
    v10 = v5;
  }

  else
  {
    v30[0] = @"UniqueDeviceID";
    v30[1] = @"SerialNumber";
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v30, 2);
    v10 = objc_msgSend_arrayByAddingObjectsFromArray_(v7, v9, v8);
  }

  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v25, v29, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        v17 = MGCopyAnswer();
        if (!v17)
        {
          v22 = [CKException alloc];
          v24 = objc_msgSend_initWithCode_format_(v22, v23, 1000, @"Error getting %@ from MobileGestalt", v16);
          objc_exception_throw(v24);
        }

        v19 = v17;
        objc_msgSend_setObject_forKeyedSubscript_(qword_1ED4B6520, v18, v17, v16);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v20, &v25, v29, 16);
    }

    while (v13);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void *sub_1884156F4(void *result)
{
  if (result)
  {
    v1 = sub_1886A2B80(result, @"BuildOverride", 0);
    v2 = CKBuildVersion();
    isEqualToString = objc_msgSend_isEqualToString_(v1, v3, v2);

    return isEqualToString;
  }

  return result;
}

void sub_1884158C8()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = CKAcceptableValueClasses();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v1, &v7, 3);
  v4 = objc_msgSend_setByAddingObjectsFromArray_(v0, v3, v2, v7, v8);
  v5 = qword_1ED4B6648;
  qword_1ED4B6648 = v4;

  v6 = *MEMORY[0x1E69E9840];
}

id CKAcceptablePredicateValueClasses()
{
  if (qword_1ED4B6650 != -1)
  {
    dispatch_once(&qword_1ED4B6650, &unk_1EFA30AD0);
  }

  v1 = qword_1ED4B6648;

  return v1;
}

__CFString *CKStringFromDeviceToDeviceEncryptionStatus(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_new();
    v4 = v2;
    if (v1)
    {
      objc_msgSend_addObject_(v2, v3, @"account");
    }

    if ((v1 & 2) != 0)
    {
      objc_msgSend_addObject_(v4, v3, @"device");
    }

    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_msgSend_componentsJoinedByString_(v4, v3, @"|");
    v8 = objc_msgSend_stringWithFormat_(v5, v7, @"(%@)", v6);
  }

  else
  {
    v8 = @"(none)";
  }

  return v8;
}

__CFString *CKTernaryDescription(uint64_t a1)
{
  v1 = @"Not Set";
  if (a1 == 1)
  {
    v1 = @"Yes";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"No";
  }
}

uint64_t CKPIDForProcessNamed(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  *v16 = xmmword_1886FEB48;
  v17 = 0;
  size = 0;
  v2 = sysctl(v16, 3u, 0, &size, 0, 0);
  if (!v2)
  {
    v3 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
    v4 = sysctl(v16, 3u, v3, &size, 0, 0);
    if (v4)
    {
      v2 = v4;
    }

    else
    {
      v5 = v1;
      v8 = objc_msgSend_UTF8String(v5, v6, v7);
      if ((size / 0x288uLL) < 1)
      {
LABEL_13:
        free(v3);
        v2 = 0xFFFFFFFFLL;
        goto LABEL_14;
      }

      v9 = v8;
      v10 = (size / 0x288uLL) & 0x7FFFFFFF;
      v11 = v3 + 243;
      while (1)
      {
        v2 = *(v11 - 203);
        v12 = v2 < 1 || *(v11 - 207) == 5;
        if (!v12 && !strncmp(v9, v11, 0x10uLL))
        {
          break;
        }

        v11 += 648;
        if (!--v10)
        {
          goto LABEL_13;
        }
      }
    }

    free(v3);
  }

LABEL_14:

  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

id sub_188416254(void *a1, const char *a2)
{
  v2 = objc_msgSend_dataUsingEncoding_(a1, a2, 4);
  v4 = objc_msgSend_base64EncodedStringWithOptions_(v2, v3, 0);

  if (objc_msgSend_length(v4, v5, v6))
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @":%@:", v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void ck_call_or_dispatch_async_if_not_key(void *a1, const void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    if (dispatch_get_specific(a2))
    {
      v6[2](v6);
    }

    else
    {
      dispatch_async(v5, v6);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Attempted to call ck_call_or_dispatch_async_if_not_key with a nil queue", v8, 2u);
    }
  }
}

id sub_188416C9C(id a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (!v1[32])
    {
      v4 = objc_msgSend_activityCreate(v1, v2, v3);
      v5 = v1[32];
      v1[32] = v4;
    }

    objc_sync_exit(v1);

    a1 = v1[32];
  }

  return a1;
}

BOOL CKOperationExecutionStateTransitionToExecuting(void *a1, int *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  objc_msgSend_willChangeValueForKey_(v3, v4, @"isExecuting");
  os_unfair_lock_lock(&unk_1ED4B6780);
  v5 = *a2;
  if (*a2)
  {
    os_unfair_lock_unlock(&unk_1ED4B6780);
    objc_msgSend_didChangeValueForKey_(v3, v6, @"isExecuting");
  }

  else
  {
    *a2 = 1;
    os_unfair_lock_unlock(&unk_1ED4B6780);
    objc_msgSend_didChangeValueForKey_(v3, v7, @"isExecuting");
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138543362;
      v12 = v3;
      _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "Operation was marked as executing: %{public}@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 == 0;
}

void *sub_18841726C@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + a1), (v1 + v2), 0x50uLL);
}

__CFString *CKDatabaseScopeString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"INVALID_SCOPE";
  }

  else
  {
    return off_1E70BD1A8[a1];
  }
}

uint64_t CKCurrentProcessLinkCheck92e3e8f8ec1a906754afb22d87eb36301b4f6760()
{
  if (qword_1ED4B66E0 != -1)
  {
    dispatch_once(&qword_1ED4B66E0, &unk_1EFA30C70);
  }

  return byte_1ED4B65D4;
}

void sub_188417694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1884177C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1884178BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CKStringForQOS(uint64_t a1, const char *a2)
{
  if (a1 <= 16)
  {
    if (a1 == -1)
    {
      v3 = @"Default";
    }

    else
    {
      if (a1 != 9)
      {
LABEL_22:
        v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Unknown (%ld)", a1);

        return v3;
      }

      v3 = @"Background";
    }
  }

  else
  {
    switch(a1)
    {
      case 17:
        v3 = @"Utility";

        break;
      case 33:
        v3 = @"UserInteractive";

        break;
      case 25:
        v3 = @"UserInitiated";

        return v3;
      default:
        goto LABEL_22;
    }
  }

  return v3;
}

void sub_188417AB4(uint64_t a1)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  if (v5)
  {
    if ((objc_msgSend_isOutstandingOperation(v5, v2, v3) & 1) != 0 || (objc_msgSend_configuration(v5, v6, v7), v8 = objc_claimAutoreleasedReturnValue(), isLongLived = objc_msgSend_isLongLived(v8, v9, v10), v8, isLongLived))
    {
      v12 = objc_msgSend_deviceContext(v5, v6, v7);
      v15 = objc_msgSend_deviceScopedStateManager(v12, v13, v14);
      v18 = objc_msgSend_operationID(v5, v16, v17);
      objc_msgSend_registerLongLivedOperationWithIDAsOutstanding_(v15, v19, v18);
    }

    v20 = objc_msgSend_configuration(v5, v6, v7);
    v23 = objc_msgSend_container(v20, v21, v22);
    v26 = objc_msgSend_options(v23, v24, v25);
    if (objc_msgSend_enforceNamedOperationGroups(v26, v27, v28))
    {
      v31 = objc_msgSend_group(v5, v29, v30);
      v34 = objc_msgSend_name(v31, v32, v33);

      if (!v34)
      {
        v35 = [CKException alloc];
        v38 = objc_msgSend_group(v5, v36, v37);
        v40 = objc_msgSend_initWithCode_format_(v35, v39, 12, @"CKOperation enqueued without a named operation group.  Op %@  Group %@", v5, v38);
        v41 = v40;

        objc_exception_throw(v40);
      }
    }

    else
    {
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_188417E28;
    v42[3] = &unk_1E70BC048;
    v42[4] = v5;
    sub_18860E568(v5, v42);
  }

  objc_autoreleasePoolPop(v4);
}

__CFString *CKStringForDiscretionaryNetworkBehavior(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70C2190[a1];
  }
}

void sub_188417E28(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = sub_188416C9C(*(a1 + 32));
  os_activity_scope_enter(v4, &state);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_op;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *(a1 + 32);
    v11 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v9, v10, 1, 0, 0);
    v14 = objc_msgSend_CKPropertiesStyleString(v11, v12, v13);
    v16 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(*(a1 + 32), v15, 0, 1, 0);
    v19 = objc_msgSend_CKPropertiesStyleString(v16, v17, v18);
    *buf = 138544130;
    v42 = v8;
    v43 = 2048;
    v44 = v9;
    v45 = 2114;
    v46 = v14;
    v47 = 2112;
    v48 = v19;
    _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEFAULT, "Starting operation <%{public}@: %p; %{public}@, %@>", buf, 0x2Au);
  }

  v22 = objc_msgSend_callbackQueue(*(a1 + 32), v20, v21);
  dispatch_activate(v22);

  objc_msgSend_setQueueHasStarted_(*(a1 + 32), v23, 1);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v24 = ck_log_facility_ck;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v32 = objc_msgSend_operationID(*(a1 + 32), v25, v26);
    v35 = objc_msgSend_qualityOfService(*(a1 + 32), v33, v34);
    v37 = CKStringForQOS(v35, v36);
    *buf = 138543618;
    v42 = v32;
    v43 = 2114;
    v44 = v37;
    _os_log_debug_impl(&dword_1883EA000, v24, OS_LOG_TYPE_DEBUG, "Operation %{public}@ will use QoS %{public}@", buf, 0x16u);
  }

  v29 = objc_msgSend_callbackQueue(*(a1 + 32), v27, v28);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_18860E5FC;
  v38[3] = &unk_1E70BEEC0;
  v38[4] = *(a1 + 32);
  v39 = v3;
  v30 = v3;
  dispatch_async(v29, v38);

  os_activity_scope_leave(&state);
  v31 = *MEMORY[0x1E69E9840];
}

double sub_1884183A4(uint64_t a1)
{
  if (a1)
  {
    return sub_1886A2AC0(a1, @"OperationTimeout", 30.0);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CKMainBundleIsAppleExecutable()
{
  if (qword_1ED4B6718 != -1)
  {
    dispatch_once(&qword_1ED4B6718, &unk_1EFA30D50);
  }

  return byte_1ED4B65DA;
}

_OWORD *sub_188419138(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_188419148(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  return a3(a1, a2, v7);
}

unint64_t sub_1884191CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void CKSyncEngine.State.pendingDatabaseChanges.getter()
{
  v1 = [*(v0 + 16) pendingDatabaseChanges];
  sub_1883F4C5C(0, &qword_1EA90C7C8, off_1E70BA888);
  sub_1883F9598();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1883F4C9C(v2);
  if (v3)
  {
    v4 = v3;
    sub_1883F8C8C();
    sub_188477954();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          sub_18840578C();
        }

        else
        {
          v5 = sub_188405008();
        }

        v6 = v5;
        sub_18850C9F0(v10);

        sub_1883F969C();
        if (v8)
        {
          sub_18840381C(v7);
          sub_188477954();
        }

        sub_1883FF26C();
      }

      while (!v9);
    }
  }

  else
  {
  }
}

void sub_1884194B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1884194CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[10];
  }

  v3 = v2;
  v11 = objc_msgSend_array(v3, v4, v5);
  v8 = objc_msgSend_copy(v11, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_188419658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188419670(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = v2;
  v11 = objc_msgSend_array(v3, v4, v5);
  v8 = objc_msgSend_copy(v11, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1884197B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1884197E4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 144) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884198F8()
{
  sub_1883F78E0();
  v1 = v0[13];
  v2 = v0[10];
  if (sub_1883F971C(v1, 1, v2) != 1)
  {
    v3 = v0[7];
    (*(v0[11] + 32))(v0[12], v1, v2);
    if (swift_weakLoadStrong())
    {
      v4 = v0[8];

      v13 = (v4 + *v4);
      v5 = v4[1];
      v6 = swift_task_alloc();
      v0[19] = v6;
      *v6 = v0;
      v6[1] = sub_1884C7DC4;
      v7 = v0[12];
      v8 = v0[9];

      return v13(v7);
    }

    (*(v0[11] + 8))(v0[12], v0[10]);
    v10 = v0[13];
  }

  v11 = v0[12];
  (*(v0[15] + 8))(v0[16], v0[14]);

  sub_1883F816C();

  return v12();
}

uint64_t sub_188419AC4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v5(v7, v9, a3);

  return sub_188423CCC(v7, v9);
}

uint64_t sub_188419B44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_188419B6C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  v8 = a4[1];
  *a4 = a1;
  a4[1] = a2;
  sub_188423C74(a1, a2);
  result = sub_18841BA74(v7, v8);
  *a5 = a3;
  *(a5 + 8) = 0;
  return result;
}

uint64_t CKSyncEngine.Event.StateUpdate.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(26);
  MEMORY[0x18CFD5140](60, 0xE100000000000000);
  MEMORY[0x18CFD5140](0x6470556574617453, 0xEB00000000657461);
  MEMORY[0x18CFD5140](0xD000000000000014, 0x80000001887031B0);
  _print_unlocked<A, B>(_:_:)();
  sub_1883F8358();
  return 0;
}

uint64_t sub_188419CA8()
{
  v0 = sub_18844E6FC(&qword_1EA90E5F8, &qword_1886FBB68);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1EA919C28 = result;
  return result;
}

uint64_t CKSyncEngine.Event.StateUpdate.stateSerialization.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_188423C74(v2, v3);
}

uint64_t sub_188419D80()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  v3 = *(v1 + 288);
  v4 = *(v1 + 256);
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;

  memcpy((v2 + 16), (v2 + 96), 0x50uLL);
  sub_1883FBF6C(v2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_188419E98, v4, 0);
}

void sub_188419E98()
{
  if (v0[29] >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v3 = v0[34];
    v2 = v0[35];
    v4 = v0[32];
    v5 = MEMORY[0x18CFD45F0](v0[28]);
    sub_188419F48(v5);
    sub_18841BA74(v3, v2);
    sub_18841BA74(v3, v2);
    v6 = v0[33];
    sub_18841BA74(v0[28], v0[29]);

    sub_1883F816C();

    v7();
  }
}

void sub_188419F48(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = sub_1883F70DC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_188420584())
  {
    v11 = OBJC_IVAR____TtC8CloudKit10SyncEngine_stateTelemetrySubmissionDate;
    swift_beginAccess();
    (*(v6 + 16))(v10, v1 + v11, v3);
    Date.timeIntervalSinceNow.getter();
    v13 = v12;
    (*(v6 + 8))(v10, v3);
    if (fabs(v13) > 60.0)
    {
      static Date.now.getter();
      swift_beginAccess();
      (*(v6 + 40))(v1 + v11, v10, v3);
      swift_endAccess();
      v14 = sub_18841A1F4(a1);
      sub_18842090C(v14);
      v16 = v15;

      if (v16)
      {
        v17 = MEMORY[0x18CFD5010](0xD000000000000023, 0x8000000188702990);
        sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
        v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        AnalyticsSendEvent();
      }

      else
      {
        if (qword_1EA90C9F0 != -1)
        {
          sub_1883F7480();
        }

        v19 = type metadata accessor for Logger();
        sub_1883FDE5C(v19, qword_1EA90C9F8);
        v18.super.isa = Logger.logObject.getter();
        v20 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v18.super.isa, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_1883EA000, v18.super.isa, v20, "BUG IN CLOUDKIT: Unable to convert state telemetry payload to NSObjects", v21, 2u);
          sub_1883F8F74();
        }
      }
    }
  }
}

uint64_t sub_18841A1F4(uint64_t a1)
{
  v2 = v1;
  v61[1] = a1;
  v3 = type metadata accessor for Date();
  v4 = sub_1883F70DC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = v61 - v17;
  v62 = [*(v1 + 144) containerID];
  v61[0] = sub_188420BE4(v62);
  v20 = v19;
  v21 = *(v1 + 128);
  v22 = [*(v21 + 16) lastFetchDatabaseChangesDate];
  if (v22)
  {
    v23 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  sub_1883F90F4(v14, v24, 1, v3);
  sub_188412494(v14, v18);
  if (sub_1883F971C(v18, 1, v3))
  {
    sub_18841A6BC(v18);
    v25 = 0.0;
  }

  else
  {
    (*(v6 + 16))(v10, v18, v3);
    sub_18841A6BC(v18);
    Date.timeIntervalSinceNow.getter();
    v25 = v26;
    (*(v6 + 8))(v10, v3);
  }

  sub_18844E6FC(&qword_1EA90E5E0, &qword_1886FBAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886FBA80;
  sub_1883F9424();
  v28[4] = 0xD000000000000013;
  v28[5] = v29;
  v28[6] = v61[0];
  v28[7] = v20;
  sub_1884055C4();
  *(v30 + 72) = v32;
  *(v30 + 80) = v31;
  v33 = v32;
  sub_1883F7DA4(v30);
  v34 = v62;
  v35 = CKContainerEnvironmentString([v62 environment]);
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  *(inited + 96) = v36;
  *(inited + 104) = v38;
  sub_1883FA210();
  *(inited + 120) = v33;
  *(inited + 128) = v39;
  sub_1883F8A84();
  *(inited + 136) = v40;
  v41 = CKDatabaseScopeString([*(v2 + 136) databaseScope]);
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  *(inited + 144) = v42;
  *(inited + 152) = v44;
  *(inited + 168) = v33;
  *(inited + 176) = 0x65747942657A6973;
  *(inited + 184) = 0xE900000000000073;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  sub_1883F4C5C(0, &qword_1EA90C7B8, 0x1E696AD98);
  *(inited + 192) = isa;
  sub_1883F9424();
  *(inited + 216) = v46;
  *(inited + 224) = 0xD000000000000016;
  *(inited + 232) = v47;
  CKSyncEngine.State.pendingDatabaseChanges.getter();
  v49 = *(v48 + 16);

  v50 = MEMORY[0x1E69E6530];
  *(inited + 240) = v49;
  sub_1883F9424();
  *(inited + 264) = v50;
  *(inited + 272) = 0xD000000000000018;
  *(inited + 280) = v51;
  CKSyncEngine.State.pendingRecordZoneChanges.getter();
  v53 = *(v52 + 16);

  *(inited + 288) = v53;
  sub_1883F9424();
  *(inited + 312) = v50;
  *(inited + 320) = 0xD000000000000010;
  *(inited + 328) = v54;
  v55 = [*(v21 + 16) serverChangeTokensByZoneID];
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_1883F4C5C(0, &qword_1EA90C7D8, off_1E70BA750);
  sub_18841A9C8();
  v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = sub_18841BA88(v56, MEMORY[0x1E69E6DD8]);

  *(inited + 336) = v57;
  sub_1883F9424();
  *(inited + 360) = v50;
  *(inited + 368) = 0xD000000000000020;
  *(inited + 376) = v58;
  *(inited + 408) = MEMORY[0x1E69E63B0];
  *(inited + 384) = -v25;
  sub_18844E6FC(&qword_1EA90E5D8, &qword_1886FBAB8);
  v59 = Dictionary.init(dictionaryLiteral:)();

  return v59;
}

uint64_t sub_18841A6BC(uint64_t a1)
{
  v2 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CKSyncEngine.State.pendingRecordZoneChanges.getter()
{
  v1 = [*(v0 + 16) pendingRecordZoneChanges];
  sub_1883F4C5C(0, &qword_1EA90C7C0, off_1E70BA890);
  sub_1883F9598();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1883F4C9C(v2);
  if (v3)
  {
    v4 = v3;
    sub_1883F8C8C();
    sub_18847791C();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          sub_18840578C();
        }

        else
        {
          v5 = sub_188405008();
        }

        v6 = v5;
        sub_18850C5B8(v10);

        sub_1883F969C();
        if (v8)
        {
          sub_18840381C(v7);
          sub_18847791C();
        }

        sub_1883FF26C();
      }

      while (!v9);
    }
  }

  else
  {
  }
}

void sub_18841A958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18841A970(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_CKCompactMapValues_(*(*(a1 + 32) + 8), a2, &unk_1EFA2FDE8);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

unint64_t sub_18841A9C8()
{
  result = qword_1ED4B5CC0;
  if (!qword_1ED4B5CC0)
  {
    sub_1883F4C5C(255, &qword_1ED4B5CC8, off_1E70BA650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4B5CC0);
  }

  return result;
}

void sub_18841AB20()
{
  if (!qword_1EA90C7E8)
  {
    sub_18844E798(&qword_1EA90E3D0, &qword_1886F75C0);
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA90C7E8);
    }
  }
}

unint64_t sub_18841AC78()
{
  result = qword_1EA90CAA8;
  if (!qword_1EA90CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90CAA8);
  }

  return result;
}

void sub_18841ACCC()
{
  type metadata accessor for TaskPriority();
  if (v0 <= 0x3F)
  {
    sub_18841AB20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18841AE3C()
{
  v3 = v0;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v4 = type metadata accessor for Logger();
  sub_1883FDE5C(v4, qword_1EA90C9F8);
  sub_1883FEFE0();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    sub_1883F9984();
    v32 = sub_1883F8C00();
    *v1 = 136315138;
    v7 = sub_1883FE43C();
    sub_1883FE340(v7, v8, &v32);
    sub_1883FE2FC();
    *(v1 + 4) = v2;
    sub_1884CDD88(&dword_1883EA000, v9, v10, "%s deallocating sync engine actor");
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  sub_1884C7F58();
  swift_weakDestroy();
  MEMORY[0x18CFD7FA0](v0 + 120);
  v11 = *(v0 + 128);

  v12 = *(v0 + 152);

  v13 = *(v0 + 160);

  v14 = *(v0 + 168);

  v15 = *(v0 + 176);

  v16 = *(v0 + 208);

  v17 = *(v0 + 216);

  v18 = *(v0 + 248);

  v19 = *(v0 + 256);

  v20 = *(v0 + 264);

  v21 = *(v0 + 272);

  sub_1883F9FEC(v0 + 288, &qword_1EA90DD10, &qword_1886F8770);
  v22 = *(v0 + 320);

  v23 = *(v0 + 336);

  v24 = *(v0 + 352);

  v25 = *(v0 + 384);

  sub_1883F9FEC(v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_lastForegroundTriggeredFetchDate, &unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F9FEC(v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_earliestStartDateForSchedulerActivities, &unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F9FEC(v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_automaticSyncOptionsMutex + 8, &unk_1EA90E4D0, &unk_1886FB460);
  sub_1883F9FEC(v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_accountProviderMutex + 8, &qword_1EA90E3D8, &qword_1886FAF80);
  v26 = *(v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_xpcActivityCriteriaWrapper);

  v27 = *(v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_scheduleSyncTask);

  v28 = OBJC_IVAR____TtC8CloudKit10SyncEngine_stateTelemetrySubmissionDate;
  v29 = type metadata accessor for Date();
  sub_1883F7B50(v29);
  (*(v30 + 8))(v3 + v28);
  sub_18841B184(v3 + OBJC_IVAR____TtC8CloudKit10SyncEngine_loggingIDMutex + 8);
  sub_1883F9FEC(v3 + OBJC_IVAR____TtC8CloudKit10SyncEngine_notificationObserverTasksMutex + 8, &qword_1EA90E3F0, &qword_1886FB0B0);
  swift_defaultActor_destroy();
  return v3;
}

uint64_t sub_18841B144(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

void sub_18841B2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18841B30C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_CKMap_(*(*(a1 + 32) + 8), a2, &unk_1EFA2FDC8);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_18841B3A0()
{
  sub_188404C04();
  sub_1883F653C();
  sub_1883F8674();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = sub_1883F7E38(v5);
  *v6 = v7;
  v6[1] = sub_188442BE4;
  sub_1883F97D4();
  sub_1883F6548();

  return sub_18841B448(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_18841B448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for Notification();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = *(*(sub_18844E6FC(&unk_1EA90E3C0, &qword_1886FAF78) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v12 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v7[14] = v12;
  v13 = *(v12 - 8);
  v7[15] = v13;
  v14 = *(v13 + 64) + 15;
  v7[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18841B5C4, 0, 0);
}

uint64_t sub_18841B5C4()
{
  sub_1883F7120();
  v1 = v0[16];
  v2 = v0[6];
  v3 = v0[7];

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  sub_188402EBC();
  sub_188405614();
  sub_1884CCC70(v4, v5);
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1883FF2B8();
  v0[17] = v7;
  *v7 = v8;
  v9 = sub_1884CDC6C(v7);

  return MEMORY[0x1EEE6D8C8](v9);
}

uint64_t CKSyncEngine.init(_:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 24);

  sub_18841B75C(a1, v8);
  v4 = type metadata accessor for SyncEngine();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1883FEFE0();

  *(v1 + 24) = sub_18841C088(v8);
  os_unfair_lock_unlock((v1 + 16));
  sub_18841F6DC(a1);
  return v1;
}

void sub_18841B828(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v3 = a1[24];
  a1[24] = v2;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.cloudkit.sync-engine.state", v4);
  v6 = a1[8];
  a1[8] = v5;

  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @" %p", a1);
  v9 = a1[28];
  a1[28] = v8;

  v10 = a1[8];

  dispatch_queue_set_specific(v10, a1 + 8, 1, 0);
}

void *sub_18841B964(void *a1)
{

  return memcpy(a1, (v1 + 5816), 0x50uLL);
}

uint64_t sub_18841BA28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_18841BA74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_188423CCC(a1, a2);
  }

  return a1;
}

uint64_t sub_18841BA88(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 16);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return a2(a1);
}

id sub_18841BAB8()
{

  return [v0 (v1 + 120)];
}

uint64_t sub_18841BAD0()
{
  *(v0 + 72) = 1;

  return swift_task_alloc();
}

uint64_t sub_18841BB9C(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = objc_msgSend_shortDescription(v3, v5, v6);
    v18 = 138543362;
    v19 = v7;
    _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_INFO, "%{public}@ moving in flight database changes to pending", &v18, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 80);
    v10 = *(v8 + 88);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v9;
  objc_msgSend_unionOrderedSet_(v11, v12, v10);

  v15 = *(a1 + 32);
  if (v15)
  {
    result = objc_msgSend_removeAllObjects(*(v15 + 88), v13, v14);
  }

  else
  {
    result = objc_msgSend_removeAllObjects(0, v13, v14);
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  *(a5 + 40) = 1;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  sub_18844E6FC(&unk_1EA90E420, &qword_1886FB178);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(a5 + 96) = v11;
  *(a5 + 105) = 0;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0;
  *(a5 + 168) = 1;
  *(a5 + 176) = 0;
  *a5 = a1;
  v12 = a1;
  sub_18841BA74(0, 0xF000000000000000);
  *(a5 + 8) = v9;
  *(a5 + 16) = v10;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  LOBYTE(a4) = CKCurrentProcessIsDaemon();

  *(a5 + 121) = a4 ^ 1;
  *(a5 + 104) = 0;
}

uint64_t sub_18841BDBC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18841BE50(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

void sub_18841BE78()
{
  sub_18841C030();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_18841C030()
{
  if (!qword_1EA90CA60)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA90CA60);
    }
  }
}

uint64_t sub_18841C088(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v6 = sub_1883F8AE4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_unknownObjectWeakInit();
  type metadata accessor for CKAsyncSerialQueue();
  swift_allocObject();
  *(v1 + 176) = sub_18841CFB4(1);
  *(v1 + 184) = 0;
  *(v1 + 192) = 1;
  sub_1884CDD10();
  v9 = sub_18841CFB4(1);
  v10 = MEMORY[0x1E69E7CD0];
  *(v1 + 208) = v9;
  *(v1 + 216) = v10;
  *(v1 + 224) = 0;
  *(v1 + 232) = 10;
  v11 = MEMORY[0x1E69E7CC8];
  *(v1 + 248) = MEMORY[0x1E69E7CC8];
  *(v1 + 256) = v11;
  sub_1884CDD10();
  *(v1 + 264) = sub_18841CFB4(0);
  *(v1 + 272) = 0;
  *(v1 + 279) = 0;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  sub_1884CDD10();
  *(v1 + 336) = sub_18841CFB4(1);
  *(v1 + 368) = 0;
  v12 = type metadata accessor for Date();
  sub_18844334C();
  sub_1883F90F4(v13, v14, v15, v12);
  sub_18844334C();
  sub_1883F90F4(v16, v17, v18, v12);
  *(v2 + OBJC_IVAR____TtC8CloudKit10SyncEngine_priority) = 2;
  sub_1883FD920(OBJC_IVAR____TtC8CloudKit10SyncEngine_isAutomaticSyncEnabledMutex);
  *(v19 + 4) = 1;
  sub_1883FD920(OBJC_IVAR____TtC8CloudKit10SyncEngine_automaticSyncOptionsMutex);
  *(v20 + 88) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 40) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 8) = 0u;
  v21 = v2 + OBJC_IVAR____TtC8CloudKit10SyncEngine_accountProviderMutex;
  *v21 = 0;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 0;
  *(v2 + OBJC_IVAR____TtC8CloudKit10SyncEngine_scheduleSyncTask) = 0;
  sub_1883FD920(OBJC_IVAR____TtC8CloudKit10SyncEngine_allowFetchAndModifyConcurrentlyMutex);
  *(v22 + 4) = 1;
  static Date.distantPast.getter();
  sub_1883FD920(OBJC_IVAR____TtC8CloudKit10SyncEngine_loggingIDMutex);
  *(v23 + 8) = 0x6E776F6E6B6E5520;
  *(v23 + 16) = 0xE800000000000000;
  sub_1883FD920(OBJC_IVAR____TtC8CloudKit10SyncEngine_notificationObserverTasksMutex);
  *(v24 + 8) = MEMORY[0x1E69E7CC0];
  swift_weakAssign();
  v25 = *(a1 + 176);
  swift_unknownObjectWeakAssign();
  v26 = *a1;
  *(v2 + 136) = *a1;
  v27 = [v26 container];
  if (!v27)
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(192);
    sub_18840F8A8();
    v86 = [*(v2 + 136) description];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    MEMORY[0x18CFD5140](v87, v89);

LABEL_36:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  *(v2 + 144) = v27;
  v28 = qword_1EA90CA20;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  if (!sub_18841E9FC([*(v2 + 136) databaseScope], qword_1EA919C30))
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    sub_18840F8A8();
    v90 = CKDatabaseScopeString([*(v2 + 136) databaseScope]);
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    MEMORY[0x18CFD5140](v91, v93);

    MEMORY[0x18CFD5140](0x7361626174616420, 0xE900000000000065);
    goto LABEL_36;
  }

  os_unfair_lock_lock(v21);
  sub_1883F9FEC(v21 + 8, &qword_1EA90E3D8, &qword_1886FAF80);
  v30 = _s22DefaultAccountProviderCMa();
  sub_1883F7B88();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v21 + 32) = v30;
  *(v21 + 40) = &off_1EFA2BF60;
  *(v21 + 8) = v31;
  v32 = v29;
  os_unfair_lock_unlock(v21);
  v94 = v32;
  v33 = [objc_allocWithZone(CKSystemSharingUIObserver) initWithContainer_];
  *(v2 + OBJC_IVAR____TtC8CloudKit10SyncEngine_sharingObserver) = v33;
  v34 = *(a1 + 24);
  v35 = *(a1 + 32);
  sub_18844E6FC(&unk_1EA90E410, &qword_1886FB168);
  swift_allocObject();
  v36 = swift_unknownObjectRetain();
  *(v2 + 152) = sub_18841D0B0(v36, v35, &qword_1EA90E470, &unk_1886FB260);
  if (*(a1 + 64))
  {
    v37 = *(a1 + 72);
    sub_18844E6FC(&qword_1EA90E438, &qword_1886FB1C8);
    swift_allocObject();
    v38 = swift_unknownObjectRetain();
    v39 = sub_18841D0B0(v38, v37, &unk_1EA90E440, &qword_1886FB1D0);
  }

  else
  {
    v39 = 0;
  }

  *(v2 + 160) = v39;
  sub_18845457C(a1 + 128, &aBlock, &qword_1EA90E740, &qword_1886FB170);
  if (v99)
  {
    sub_18843E080(&aBlock, v96);
    sub_18848CE70(v96, v95);
    sub_18844E6FC(&qword_1EA90E430, &qword_1886FB1C0);
    swift_allocObject();
    v40 = sub_1884C83D0(v95);
    sub_1883FE944(v96);
  }

  else
  {
    v40 = 0;
  }

  *(v2 + 168) = v40;
  v41 = *(*(a1 + 96) + 16);
  if (v41)
  {
    v42 = xpc_copy(v41);
  }

  else
  {
    v42 = 0;
  }

  sub_18844E6FC(&unk_1EA90E420, &qword_1886FB178);
  sub_1883F7B88();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v2 + OBJC_IVAR____TtC8CloudKit10SyncEngine_xpcActivityCriteriaWrapper) = v43;
  v44 = *(a1 + 56);
  *(v2 + 376) = *(a1 + 48);
  *(v2 + 384) = v44;
  v45 = *(a1 + 88);
  *(v2 + 344) = *(a1 + 80);
  *(v2 + 352) = v45;
  *(v2 + 200) = *(a1 + 120);
  v46 = *(a1 + 112);
  *(v2 + 392) = *(a1 + 121);
  *(v2 + 201) = *(a1 + 168);
  *(v2 + 360) = *(a1 + 104);
  v47 = *(a1 + 16);
  *(v2 + 240) = v46;
  if (v47 >> 60 == 15)
  {
    type metadata accessor for CKSyncEngine.State();
    sub_1883F7B88();
    v48 = swift_allocObject();
    v49 = objc_opt_self();
    v50 = v46;

    *(v48 + 16) = [v49 emptyState];
  }

  else
  {
    *&aBlock = *(a1 + 8);
    *(&aBlock + 1) = v47;
    type metadata accessor for CKSyncEngine.State();
    sub_1883F7B88();
    swift_allocObject();
    v51 = sub_1883FAA50();
    sub_188424184(v51, v52);
    v53 = v46;

    v54 = sub_1883FAA50();
    sub_188424184(v54, v55);
    v44 = 0;
    v48 = sub_188424198(&aBlock);
    v56 = sub_1883FAA50();
    sub_18841BA74(v56, v57);
  }

  *(v2 + 128) = v48;
  v58 = v2 + OBJC_IVAR____TtC8CloudKit10SyncEngine_isAutomaticSyncEnabledMutex;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC8CloudKit10SyncEngine_isAutomaticSyncEnabledMutex));
  *(v58 + 4) = *(a1 + 40);
  os_unfair_lock_unlock(v58);
  v59 = v2 + OBJC_IVAR____TtC8CloudKit10SyncEngine_allowFetchAndModifyConcurrentlyMutex;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC8CloudKit10SyncEngine_allowFetchAndModifyConcurrentlyMutex));
  *(v59 + 4) = *(a1 + 105);
  os_unfair_lock_unlock(v59);
  [*(*(v2 + 128) + 16) moveInFlightRecordZoneChangesToPending];
  [*(*(v2 + 128) + 16) moveInFlightDatabaseChangesToPending];
  [*(*(v2 + 128) + 16) moveInFlightAssetSyncsToPending];
  sub_18841D694(v2);
  sub_1883F7B88();
  swift_allocObject();
  sub_1884CDD2C();

  sub_1883F96C8();

  v60 = sub_18841EB70();
  if (v60)
  {
    v44 = v60;
    sub_1883F7B88();
    v61 = swift_allocObject();
    swift_weakInit();

    sub_18841E3F4(v44, 0, &unk_1886FB1B8, v61);
  }

  if ([*(v2 + 136) scope] == 3)
  {
    sub_1883F7B88();
    swift_allocObject();
    sub_1884CDD2C();

    sub_1883F96C8();
  }

  v62 = *(v2 + OBJC_IVAR____TtC8CloudKit10SyncEngine_sharingObserver);
  if (v62)
  {
    sub_1883F7B88();
    swift_allocObject();
    sub_1884CDD2C();
    v63 = v62;

    CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.setter(sub_1884CD7D0, v44);
  }

  v64 = *(*(v2 + 128) + 16);
  sub_1883F7B88();
  v65 = swift_allocObject();
  swift_weakInit();
  v66 = v64;

  v100 = sub_1884CD738;
  v101 = v65;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v98 = sub_18840FC8C;
  v99 = &unk_1EFA2BEC0;
  v67 = _Block_copy(&aBlock);

  [v66 setChangeHandler_];
  _Block_release(v67);

  sub_18841E65C();
  type metadata accessor for TaskPriority();
  sub_18844334C();
  sub_1883F90F4(v68, v69, v70, v71);
  v72 = swift_allocObject();
  sub_188402E3C(v72);
  sub_1884101D8();
  sub_188453610();

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v73 = type metadata accessor for Logger();
  sub_1883FDE5C(v73, qword_1EA90C9F8);
  sub_1883FEFE0();

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v76 = 136315394;

    v77 = sub_1883FE43C();
    v79 = v78;

    v80 = sub_1883FE340(v77, v79, &aBlock);

    *(v76 + 4) = v80;
    *(v76 + 12) = 2080;
    v81 = [*(v2 + 144) options];
    v82 = [v81 isCloudCoreSession];

    if (v82)
    {
      v83 = 0xD000000000000018;
    }

    else
    {
      v83 = 0;
    }

    if (v82)
    {
      v84 = 0x8000000188701FF0;
    }

    else
    {
      v84 = 0xE000000000000000;
    }

    sub_1883FE340(v83, v84, &aBlock);
    sub_1883FE2FC();
    *(v76 + 14) = v82;
    _os_log_impl(&dword_1883EA000, v74, v75, "%s initialized sync engine%s", v76, 0x16u);
    swift_arrayDestroy();
    sub_1883F7B60();
    sub_1883F82B8();
  }

  sub_18841F6DC(a1);
  return v2;
}