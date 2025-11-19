Swift::Int sub_188451478()
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](0);
  return Hasher._finalize()();
}

Swift::Int sub_1884514E4()
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](0);
  return Hasher._finalize()();
}

uint64_t sub_188451528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1884513D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_188451570@<X0>(_BYTE *a1@<X8>)
{
  result = _sSo18CKDeviceCapabilityC8CloudKitE20supportsSecureCodingSbvgZ_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18845159C(uint64_t a1)
{
  v2 = sub_188453E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1884515D8(uint64_t a1)
{
  v2 = sub_188453E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_188451614()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AssetStreamHandle()
{
  return objc_opt_self();
}

{
  return MEMORY[0x1EEDF3FA8]();
}

uint64_t sub_1884516B8(void *a1)
{
  v3 = v1;
  v5 = sub_18844E6FC(&qword_1EA90D1B8, &qword_1886F7010);
  sub_1883F70DC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F83A4();
  v11 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_188453E74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *(v3 + OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal);
  v14 = *(v3 + OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal + 16);
  sub_188453EC8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v2, v5);
}

void *sub_188451844(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = sub_18844E6FC(&qword_1EA90D230, &qword_1886F70A8);
  sub_1883F70DC(v6);
  v23 = v7;
  v9 = *(v8 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = a1[4];
  v14 = sub_188400B68(a1, a1[3]);
  sub_188453E74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1883FE944(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v23;
    sub_188454528();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v22;
    v18 = &v3[OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal];
    *v18 = v21;
    *(v18 + 2) = v17;
    v20.receiver = v3;
    v20.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v20, sel_init);
    (*(v15 + 8))(v12, v6);
    sub_1883FE944(a1);
  }

  return v14;
}

void *sub_188451A1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_188451800(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

__n128 sub_188451AA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_188451AB4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_188451AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_188451B54()
{
  sub_1883F8AF0();
  v1 = v0;
  v2 = sub_1883F4C9C(v0);
  v3 = 0;
  v4 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      sub_1883F8178();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x18CFD59D0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = *&v5[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range];
    v7 = *&v5[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range + 8];

    v8 = v7 - v6;
    if (__OFSUB__(v7, v6))
    {
      goto LABEL_15;
    }

    ++v3;
    v9 = __OFADD__(v4, v8);
    v4 += v8;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_188451C1C()
{
  sub_188451B54();
  if (v0 < 0)
  {
    __break(1u);
  }
}

uint64_t sub_188451C44()
{
  sub_1883F7120();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = sub_18844E6FC(&qword_1EA90D1D0, &qword_1886F7020);
  v0[8] = v7;
  v8 = *(v7 - 8);
  v0[9] = v8;
  v9 = *(v8 + 64) + 15;
  v0[10] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_188451D10()
{
  sub_1883FC738();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v11 = *(v0 + 40);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v8 + 16) = v11;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8790], v3);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  sub_1883F816C();

  return v9();
}

BOOL sub_188451E1C(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_188451E70(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for URL();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for URLRequest();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188451F8C, 0, 0);
}

uint64_t sub_188451F8C()
{
  sub_1883F7120();
  v1 = v0[10];
  (*(v0[6] + 16))(v0[7], v0[4], v0[5]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v2 = [objc_opt_self() sharedManager];
  v0[11] = v2;
  if (v2)
  {
    type metadata accessor for AssetStreamHandle();
    v4 = sub_18844F690();
    v0[12] = v4;
    v5 = *(MEMORY[0x1E698F6C0] + 4);
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_18845209C;
    v2 = v0[10];
    v3 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEDF0D18](v2, v3);
}

uint64_t sub_18845209C()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F78D4();
  *v4 = v3;
  v5 = *(v2 + 104);
  v6 = *v1;
  sub_1883F78D4();
  *v7 = v6;
  v10[14] = v8;
  v10[15] = v9;
  v10[16] = v11;
  v10[17] = v0;

  v12 = *(v2 + 88);

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void sub_1884521E4()
{
  sub_1883FC738();
  v1 = v0[16];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && [v2 statusCode] == 200)
  {
    v3 = v0[16];
    v4 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v5 = v0[1];
    v6 = v0[14];
    v7 = v0[15];
    sub_1883F9968();

    __asm { BRAA            X3, X16 }
  }

  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[14];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];
  type metadata accessor for CKError(0);
  v0[3] = 4;
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_1883FD9AC();
  sub_1884547F0(v16, v17);
  _BridgedStoredNSError.init(_:userInfo:)();
  v18 = v0[2];
  swift_willThrow();
  sub_188423CCC(v12, v10);

  (*(v14 + 8))(v13, v15);
  v19 = v0[10];
  v20 = v0[7];

  sub_1883F816C();
  sub_1883F9968();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1884523A8()
{
  sub_1883F7120();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[7];

  sub_1883F816C();

  return v4();
}

uint64_t sub_188452428(uint64_t result, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  v7 = *(result + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v9 = result + 32;
  if (!v7)
  {
    return v8;
  }

  while (1)
  {
    v10 = *(v9 + 32);
    v13[1] = *(v9 + 16);
    v13[2] = v10;
    v13[0] = *v9;
    v14 = *(v9 + 48);
    v11 = v6 + v10;
    if (__OFADD__(v6, v10))
    {
      break;
    }

    if (v11 < v6)
    {
      goto LABEL_12;
    }

    objc_allocWithZone(type metadata accessor for ChunkStreamHandle(0));
    sub_188454838(v13, v12);
    sub_188423C74(a2, a3);
    sub_18845A1C0(v13, a2, a3, v6, v11);
    if (v3)
    {

      return v8;
    }

    MEMORY[0x18CFD52F0]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v8 = v15;
    v9 += 56;
    --v7;
    v6 = v11;
    if (!v7)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_188452584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61486B6E756863 && a2 == 0xEC00000073656C64;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_188452698(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1884526E0(char a1)
{
  if (a1)
  {
    return 0x7079547465737361;
  }

  else
  {
    return 0x6E61486B6E756863;
  }
}

uint64_t sub_188452724(void *a1)
{
  v4 = sub_18844E6FC(&qword_1EA90D210, &qword_1886F7078);
  sub_1883F70DC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F83A4();
  v10 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_188454128();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_18844E6FC(&qword_1EA90D1F8, &qword_1886F7070);
  sub_18845417C(&qword_1EA90D218, &qword_1EA90D220);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1884528E4(uint64_t *a1)
{
  v3 = sub_18844E6FC(&qword_1EA90D1E8, &qword_1886F7068);
  sub_1883F70DC(v3);
  v5 = *(v4 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F83A4();
  v7 = a1[3];
  sub_188400B68(a1, v7);
  sub_188454128();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_18844E6FC(&qword_1EA90D1F8, &qword_1886F7070);
    sub_18845417C(&qword_1EA90D200, &qword_1EA90D208);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v11;
    KeyedDecodingContainer.decode(_:forKey:)();
    v9 = sub_1883F7E48();
    v10(v9);
  }

  sub_1883FE944(a1);
  return v7;
}

uint64_t sub_188452B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_188452584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_188452B3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_188452658();
  *a1 = result;
  return result;
}

uint64_t sub_188452B64(uint64_t a1)
{
  v2 = sub_188454128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_188452BA0(uint64_t a1)
{
  v2 = sub_188454128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_188452BDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1884528E4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_188452C0C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_188452724(a1);
}

uint64_t sub_188452C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v10 = sub_18844E6FC(&qword_1EA90D1D8, &qword_1886F7028);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - v17;
  v19 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a1, v10);
  v20 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a2;
  *(v21 + 5) = a3;
  v23 = v25;
  v22 = v26;
  *(v21 + 6) = a4;
  *(v21 + 7) = v23;
  *(v21 + 8) = v22;
  (*(v11 + 32))(&v21[v20], v14, v10);

  sub_188453610();
  return AsyncThrowingStream.Continuation.onTermination.setter();
}

uint64_t sub_188452E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v14;
  v8[6] = a4;
  v8[7] = a7;
  v9 = sub_18844E6FC(&qword_1EA90D1E0, &qword_1886F7060);
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188452F14, 0, 0);
}

void sub_188452F14()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v30 = MEMORY[0x1E69E7CC0];
  v4 = sub_1883F4C9C(v3);
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = v3 + 32;
  v9 = v1;
  while (v4 != v5)
  {
    if (v6)
    {
      v10 = MEMORY[0x18CFD59D0](v5, v0[6]);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(v8 + 8 * v5);
    }

    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v11 = *&v10[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range + 8];
    if (v11 <= v0[7] || (v12 = *&v10[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range], v12 >= v0[8]) || v9 == v2 || v12 == v11)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v2;
      v14 = *(v30 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v2 = v13;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 = v1;
    }

    ++v5;
  }

  v0[13] = v30;
  v15 = sub_1883F4C9C(v30);
  v0[14] = v15;
  if (!v15)
  {

    sub_1883F9744();
    sub_18844E6FC(&qword_1EA90D1D8, &qword_1886F7028);
    AsyncThrowingStream.Continuation.finish(throwing:)();

    sub_1883F816C();
    sub_1883FEB30();

    __asm { BRAA            X1, X16 }
  }

  if (v15 < 1)
  {
    goto LABEL_30;
  }

  v16 = sub_1883FDD1C(0);
  if (v18)
  {
    v19 = *(v17 + 8 * v16 + 32);
  }

  else
  {
    v19 = MEMORY[0x18CFD59D0](v16);
  }

  v0[16] = v19;
  static Task<>.checkCancellation()();
  v23 = v0[7];
  v22 = v0[8];
  sub_18840546C();
  if (v24 != v25)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v26 = swift_task_alloc();
  v0[17] = v26;
  *v26 = v0;
  sub_1883F9B60(v26);
  sub_1883FEB30();

  sub_188456CAC(v27, v28);
}

uint64_t sub_1884531AC()
{
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  sub_1883F78EC();
  v7 = v6;
  sub_1883F78D4();
  *v8 = v7;
  v10 = *(v9 + 136);
  v11 = *v1;
  sub_1883F7110();
  *v12 = v11;
  v7[18] = v0;

  if (!v0)
  {
    v7[19] = v3;
    v7[20] = v5;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void sub_1884532C8()
{
  v1 = v0[20];
  v0[2] = v1;
  v2 = v0[19];
  v3 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v30 = v0[10];
  v0[3] = v2;
  sub_188423C74(v1, v2);
  v7 = sub_1883FF6E8();
  sub_18844E6FC(v7, v8);
  AsyncThrowingStream.Continuation.yield(_:)();

  sub_188423CCC(v1, v2);
  (*(v5 + 8))(v4, v30);
  for (i = v0[18]; ; i = 0)
  {
    v10 = sub_1883FB49C();
    if (v11)
    {
      v19 = v0[13];

      sub_1883F9744();
      sub_18844E6FC(&qword_1EA90D1D8, &qword_1886F7028);
      AsyncThrowingStream.Continuation.finish(throwing:)();

      sub_1883F816C();
      sub_1883FEB30();

      __asm { BRAA            X1, X16 }
    }

    v12 = sub_1883FDD1C(v10);
    v14 = v11 ? *(v13 + 8 * v12 + 32) : MEMORY[0x18CFD59D0](v12);
    v0[16] = v14;
    static Task<>.checkCancellation()();
    if (!i)
    {
      break;
    }

    v15 = v0[16];
    v16 = v0[9];
    v0[4] = i;
    v17 = sub_1883FF6E8();
    sub_18844E6FC(v17, v18);
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  v23 = v0[7];
  v22 = v0[8];
  sub_18840546C();
  if (v24 != v25)
  {
    __break(1u);
  }

  else
  {
    v26 = swift_task_alloc();
    v0[17] = v26;
    *v26 = v0;
    sub_1883F9B60();
    sub_1883FEB30();

    sub_188456CAC(v27, v28);
  }
}

void sub_1884534B0()
{
  sub_1883FB4AC();
  v2 = v0[18];
  sub_18840ACE0();
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v3 = sub_1883FB49C();
  if (v4)
  {
    v15 = v0[13];

    sub_1883F9744();
    sub_18844E6FC(&qword_1EA90D1D8, &qword_1886F7028);
    AsyncThrowingStream.Continuation.finish(throwing:)();

    sub_1883F816C();

    v16();
  }

  else
  {
    v5 = sub_1883FDD1C(v3);
    if (v4)
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    else
    {
      v7 = MEMORY[0x18CFD59D0](v5);
    }

    v0[16] = v7;
    static Task<>.checkCancellation()();
    v9 = v0[7];
    v8 = v0[8];
    sub_18840546C();
    if (v10 != v11)
    {
      __break(1u);
    }

    else
    {
      v12 = swift_task_alloc();
      v0[17] = v12;
      *v12 = v0;
      v13 = sub_1883F9B60();

      sub_188456CAC(v13, v14);
    }
  }
}

void sub_188453610()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v8);
  v10 = *(v9 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00]();
  v12 = v26 - v11;
  v13 = sub_1883FA2CC();
  sub_18845457C(v13, v14, &qword_1EA90E6A0, &qword_1886F7030);
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_1883F971C(v12, 1, v15);

  if (v16 == 1)
  {
    sub_1883F9FEC(v12, &qword_1EA90E6A0, &qword_1886F7030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v15 - 8) + 8))(v12, v15);
  }

  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      sub_1883F8708();
      v23 = swift_allocObject();
      *(v23 + 16) = v3;
      *(v23 + 24) = v1;

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v24 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v26[1] = 7;
      v26[2] = v24;
      v26[3] = v22;
      swift_task_create();

      sub_1883F9FEC(v5, &qword_1EA90E6A0, &qword_1886F7030);

      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1883F9FEC(v5, &qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8708();
  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  *(v25 + 24) = v1;
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  swift_task_create();
LABEL_14:
  sub_1883F8178();
}

void sub_1884538D0()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v8);
  v10 = *(v9 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  v14 = sub_1883FA2CC();
  sub_18845457C(v14, v15, &qword_1EA90E6A0, &qword_1886F7030);
  v16 = type metadata accessor for TaskPriority();
  v17 = sub_1884041DC(v13);

  if (v17 == 1)
  {
    sub_1883F9FEC(v13, &qword_1EA90E6A0, &qword_1886F7030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v16 - 8) + 8))(v13, v16);
  }

  v19 = *(v1 + 16);
  v18 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v23 = String.utf8CString.getter() + 32;
      sub_1883F8708();
      v24 = swift_allocObject();
      *(v24 + 16) = v3;
      *(v24 + 24) = v1;

      sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
      v25 = (v22 | v20);
      if (v22 | v20)
      {
        v28[0] = 0;
        v28[1] = 0;
        v25 = v28;
        v28[2] = v20;
        v28[3] = v22;
      }

      v27[1] = 7;
      v27[2] = v25;
      v27[3] = v23;
      swift_task_create();

      sub_1883F9FEC(v5, &qword_1EA90E6A0, &qword_1886F7030);

      goto LABEL_13;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1883F9FEC(v5, &qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8708();
  v26 = swift_allocObject();
  *(v26 + 16) = v3;
  *(v26 + 24) = v1;
  sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
  if (v22 | v20)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v20;
    v28[7] = v22;
  }

  swift_task_create();
LABEL_13:
  sub_1883F8178();
}

uint64_t sub_188453BC8()
{
  v1 = *v0;
  sub_188451C1C();
  return 0;
}

uint64_t sub_188453BE8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1884061E0;

  return sub_188451C44();
}

uint64_t sub_188453CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6994720] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_188453D74;

  return MEMORY[0x1EEDF4078](a1, a2, a3, a4);
}

uint64_t sub_188453D74()
{
  sub_1883F78E0();
  v3 = v2;
  v5 = v4;
  sub_1883F78EC();
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_1883F7110();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

unint64_t sub_188453E74()
{
  result = qword_1EA90D1C0;
  if (!qword_1EA90D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D1C0);
  }

  return result;
}

unint64_t sub_188453EC8()
{
  result = qword_1EA90D1C8;
  if (!qword_1EA90D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D1C8);
  }

  return result;
}

uint64_t sub_188453F2C()
{
  sub_1883FC738();
  v1 = sub_18844E6FC(&qword_1EA90D1D8, &qword_1886F7028);
  sub_1883F8AE4(v1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0 + ((*(v2 + 80) + 72) & ~*(v2 + 80));
  v11 = swift_task_alloc();
  v12 = sub_1883F7E38(v11);
  *v12 = v13;
  v12[1] = sub_188442BE4;
  sub_1883F9968();

  return sub_188452E3C(v14, v15, v16, v17, v18, v19, v20, v21);
}

id sub_18845404C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSURL *a3@<X8>)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(a3);
  v8 = v7;
  if (a2)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [v4 initWithURL:v8 options:v9.super.isa];

  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

unint64_t sub_188454128()
{
  result = qword_1EA90D1F0;
  if (!qword_1EA90D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D1F0);
  }

  return result;
}

uint64_t sub_18845417C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(&qword_1EA90D1F8, &qword_1886F7070);
    sub_1884547F0(a2, type metadata accessor for ChunkStreamHandle);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_188454218(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_18845430C;

  return v6(v2 + 32);
}

uint64_t sub_18845430C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  *v6 = *(v2 + 32);
  sub_1883F816C();

  return v9();
}

uint64_t sub_188454408()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F78B4(v1);

  return v4(v3);
}

uint64_t sub_188454498()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F78B4(v1);

  return v4(v3);
}

unint64_t sub_188454528()
{
  result = qword_1EA90D238;
  if (!qword_1EA90D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D238);
  }

  return result;
}

uint64_t sub_18845457C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_18844E6FC(a3, a4);
  sub_1883F7B50(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1884545DC()
{
  result = qword_1EA90D248;
  if (!qword_1EA90D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D248);
  }

  return result;
}

unint64_t sub_188454630()
{
  result = qword_1EA90D250;
  if (!qword_1EA90D250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90D250);
  }

  return result;
}

unint64_t sub_188454674()
{
  result = qword_1EA90D268;
  if (!qword_1EA90D268)
  {
    sub_18844E798(&qword_1EA90D260, &qword_1886F70B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D268);
  }

  return result;
}

uint64_t sub_1884546D8()
{
  sub_1883FB4AC();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1884061E0;

  return sub_18844FF0C(v2, v3, v4, v5);
}

unint64_t sub_18845479C()
{
  result = qword_1EA90D270;
  if (!qword_1EA90D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D270);
  }

  return result;
}

uint64_t sub_1884547F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AssetStreamHandleInternal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetStreamHandleInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetStreamHandle.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AssetStreamHandle.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_188454B0C()
{
  result = qword_1EA90D278;
  if (!qword_1EA90D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D278);
  }

  return result;
}

unint64_t sub_188454B64()
{
  result = qword_1EA90D280;
  if (!qword_1EA90D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D280);
  }

  return result;
}

unint64_t sub_188454BBC()
{
  result = qword_1EA90D288;
  if (!qword_1EA90D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D288);
  }

  return result;
}

unint64_t sub_188454C14()
{
  result = qword_1EA90D290;
  if (!qword_1EA90D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D290);
  }

  return result;
}

unint64_t sub_188454C6C()
{
  result = qword_1EA90D298;
  if (!qword_1EA90D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D298);
  }

  return result;
}

unint64_t sub_188454CC4()
{
  result = qword_1EA90D2A0;
  if (!qword_1EA90D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2A0);
  }

  return result;
}

uint64_t *sub_188454D24(_CCCryptor *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = *v4;
  v10 = sub_188454E20(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v10;
    sub_188423CCC(a3, a4);
    sub_188423CCC(a1, a2);
    v4[2] = v11;
  }

  else
  {
    sub_188455C98();
    swift_allocError();
    swift_willThrow();
    sub_188423CCC(a3, a4);
    sub_188423CCC(a1, a2);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

CCCryptorRef sub_188454E20(CCCryptorRef result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v15 = result >> 32;
      if (result >> 32 >= result)
      {
        v16 = result;
        sub_188423C74(a3, a4);
        v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v13 = v16;
        v14 = v15;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v11 = *(result + 2);
      v10 = *(result + 3);
      sub_188423C74(a3, a4);
      v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = v11;
      v14 = v10;
LABEL_8:
      result = sub_18845552C(v13, v14, v12, a3, a4);
      break;
    case 3uLL:
      sub_188423C74(a3, a4);
      v9 = 0;
      v8 = 0;
      goto LABEL_5;
    default:
      sub_188423C74(a3, a4);
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      v9 = v7;
LABEL_5:
      result = sub_188455484(v9, v8, a3, a4);
      break;
  }

  return result;
}

uint64_t sub_188454F34()
{
  CCCryptorRelease(*(v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_188454F90(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, CCCryptorRef *a5@<X8>)
{
  cryptorRef[1] = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      sub_188423C74(a3, a4);
      v13 = a4 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = a3;
      v15 = a3 >> 32;
      goto LABEL_11;
    case 2uLL:
      v11 = *(a3 + 16);
      v12 = *(a3 + 24);
      sub_188423C74(a3, a4);
      v13 = a4 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v11;
      v15 = v12;
LABEL_11:
      v18 = sub_1884555F4(v14, v15, v13, a1, a2, a3, a4);
      if (v5)
      {

        __break(1u);
      }

      else
      {
        v17 = v18;
LABEL_13:
        *a5 = v17;
        v19 = *MEMORY[0x1E69E9840];
      }

      return;
    case 3uLL:
      memset(key, 0, 14);
      goto LABEL_5;
    default:
      key[0] = a3;
      LOWORD(key[1]) = a4;
      BYTE2(key[1]) = BYTE2(a4);
      BYTE3(key[1]) = BYTE3(a4);
      BYTE4(key[1]) = BYTE4(a4);
      BYTE5(key[1]) = BYTE5(a4);
LABEL_5:
      cryptorRef[0] = 0;
      v16 = MEMORY[0x18CFD45F0](a3, a4);
      if (CCCryptorCreateWithMode(1u, 3u, 0, 0, a1, key, v16, 0, 0, 0, 0, cryptorRef))
      {
        v17 = 0;
      }

      else
      {
        v17 = cryptorRef[0];
      }

      sub_188423CCC(a3, a4);
      sub_188423CCC(a3, a4);
      goto LABEL_13;
  }
}

uint64_t sub_188455194(uint64_t a1, unint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x18CFD45F0]();
  v10[0] = MEMORY[0x18CFD45E0](v5);
  v10[1] = v6;
  v9 = 0;
  sub_188423C74(a1, a2);

  sub_188455700(v10, a1, a2, v2, &v9);
  result = v10[0];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_188455238(void *dataOut, int a2, uint64_t a3, unint64_t a4, uint64_t a5, size_t *dataOutMoved)
{
  dataIn[2] = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 > a3 >> 32)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      sub_188423C74(a3, a4);
      v16 = __DataStorage._bytes.getter();
      if (v16)
      {
        v22 = __DataStorage._offset.getter();
        if (__OFSUB__(a3, v22))
        {
          goto LABEL_22;
        }

        v16 += a3 - v22;
      }

      MEMORY[0x18CFD43A0]();
      if (__OFSUB__(HIDWORD(a3), a3))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      v21 = *(a5 + 16);
      v20 = HIDWORD(a3) - a3;
LABEL_16:
      CCCryptorUpdate(v21, v16, v20, dataOut, v20, dataOutMoved);

LABEL_17:
      result = sub_188423CCC(a3, a4);
      v24 = *MEMORY[0x1E69E9840];
      return result;
    case 2uLL:
      v15 = *(a3 + 16);

      sub_188423C74(a3, a4);
      v16 = __DataStorage._bytes.getter();
      if (!v16)
      {
        goto LABEL_6;
      }

      v17 = __DataStorage._offset.getter();
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_21;
      }

      v16 += v15 - v17;
LABEL_6:
      MEMORY[0x18CFD43A0]();
      v19 = *(a3 + 16);
      v18 = *(a3 + 24);
      v20 = v18 - v19;
      if (__OFSUB__(v18, v19))
      {
        goto LABEL_19;
      }

      v21 = *(a5 + 16);
      goto LABEL_16;
    case 3uLL:
      memset(dataIn, 0, 14);
      v12 = *(a5 + 16);
      v11 = 0;
      v13 = dataOut;
      v14 = 0;
      goto LABEL_9;
    default:
      dataIn[0] = a3;
      LOWORD(dataIn[1]) = a4;
      BYTE2(dataIn[1]) = BYTE2(a4);
      BYTE3(dataIn[1]) = BYTE3(a4);
      BYTE4(dataIn[1]) = BYTE4(a4);
      BYTE5(dataIn[1]) = BYTE5(a4);
      v11 = BYTE6(a4);
      v12 = *(a5 + 16);
      v13 = dataOut;
      v14 = BYTE6(a4);
LABEL_9:
      CCCryptorUpdate(v12, dataIn, v11, v13, v14, dataOutMoved);
      goto LABEL_17;
  }
}

CCCryptorRef sub_188455484(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v11 = WORD2(a2);
  v10 = a2;
  sub_188454F90(&v9, &v9 + BYTE6(a2), a3, a4, v12);
  result = sub_188423CCC(a3, a4);
  if (!v4)
  {
    result = v12[0];
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CCCryptorRef sub_18845552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 = (v11 + a1 - result);
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = MEMORY[0x18CFD43A0]();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v11 + v15;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_188454F90(v11, v17, a4, a5, &v18);
  result = sub_188423CCC(a4, a5);
  if (!v5)
  {
    return v18;
  }

  return result;
}

CCCryptorRef sub_1884555F4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  cryptorRef[1] = *MEMORY[0x1E69E9840];
  v11 = __DataStorage._bytes.getter();
  if (v11)
  {
    v12 = v11;
    v13 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v13))
    {
      __break(1u);
    }

    v14 = (a1 - v13 + v12);
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x18CFD43A0]();
  cryptorRef[0] = 0;
  v15 = MEMORY[0x18CFD45F0](a6, a7);
  if (CCCryptorCreateWithMode(1u, 3u, 0, 0, a4, v14, v15, 0, 0, 0, 0, cryptorRef))
  {
    v16 = 0;
  }

  else
  {
    v16 = cryptorRef[0];
  }

  sub_188423CCC(a6, a7);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t sub_188455700(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, size_t *a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v5 = a1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v26 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      sub_188423C74(a2, a3);

      sub_188423C74(a2, a3);

      sub_188423C74(v6, v5);
      sub_188423CCC(v6, v5);
      *a1 = xmmword_1886F7310;
      sub_188423CCC(0, 0xC000000000000000);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v6;
      v29 = v6 >> 32;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      if (v29 < v6)
      {
        goto LABEL_28;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_29;
      }

      v30 = type metadata accessor for __DataStorage();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      v33 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v28 = v6;
      v26 = v33;
      v29 = v6 >> 32;
LABEL_16:
      v42 = a1;
      v34 = v29 - v28;
      if (v29 < v28)
      {
        goto LABEL_25;
      }

      sub_188423C74(a2, a3);

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        goto LABEL_31;
      }

      v35 = result;
      v36 = __DataStorage._offset.getter();
      v37 = v6 - v36;
      if (__OFSUB__(v6, v36))
      {
        goto LABEL_27;
      }

      v38 = MEMORY[0x18CFD43A0]();
      if (v38 >= v34)
      {
        v39 = v34;
      }

      else
      {
        v39 = v38;
      }

      sub_188455238((v35 + v37), v35 + v37 + v39, a2, a3, a4, a5);
      sub_188423CCC(a2, a3);

      sub_188423CCC(a2, a3);

      sub_188423CCC(a2, a3);
      *v42 = v6;
      v42[1] = v26 | 0x4000000000000000;
      goto LABEL_23;
    case 2uLL:
      sub_188423C74(a2, a3);

      sub_188423C74(a2, a3);

      sub_188423C74(v6, v5);
      sub_188423CCC(v6, v5);
      *&dataOut = v6;
      *(&dataOut + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = a1;
      *a1 = xmmword_1886F7310;
      sub_188423CCC(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v15 = *(&dataOut + 1);
      v16 = *(dataOut + 16);
      v17 = *(dataOut + 24);
      sub_188423C74(a2, a3);

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v19 = result;
      v20 = __DataStorage._offset.getter();
      v21 = v16 - v20;
      if (__OFSUB__(v16, v20))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v22 = __OFSUB__(v17, v16);
      v23 = v17 - v16;
      if (v22)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      v24 = MEMORY[0x18CFD43A0]();
      if (v24 >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v24;
      }

      sub_188455238((v19 + v21), v19 + v21 + v25, a2, a3, a4, a5);
      sub_188423CCC(a2, a3);

      sub_188423CCC(a2, a3);

      sub_188423CCC(a2, a3);
      *v14 = dataOut;
      v14[1] = v15 | 0x8000000000000000;
LABEL_23:

      sub_188423CCC(a2, a3);

      v40 = *MEMORY[0x1E69E9840];
      return result;
    case 3uLL:
      *(&dataOut + 7) = 0;
      *&dataOut = 0;
      sub_188423C74(a2, a3);

      sub_188455238(&dataOut, &dataOut, a2, a3, a4, a5);
      sub_188423CCC(a2, a3);
      goto LABEL_23;
    default:
      sub_188423C74(a2, a3);

      sub_188423C74(a2, a3);

      sub_188423CCC(v6, v5);
      *&dataOut = v6;
      WORD4(dataOut) = v5;
      BYTE10(dataOut) = BYTE2(v5);
      BYTE11(dataOut) = BYTE3(v5);
      BYTE12(dataOut) = BYTE4(v5);
      BYTE13(dataOut) = BYTE5(v5);
      BYTE14(dataOut) = BYTE6(v5);
      sub_188455238(&dataOut, &dataOut + BYTE6(v5), a2, a3, a4, a5);
      v12 = dataOut;
      v13 = DWORD2(dataOut) | ((WORD6(dataOut) | (BYTE14(dataOut) << 16)) << 32);
      sub_188423CCC(a2, a3);

      sub_188423CCC(a2, a3);
      *a1 = v12;
      a1[1] = v13;
      goto LABEL_23;
  }
}

unint64_t sub_188455C98()
{
  result = qword_1EA90D2A8;
  if (!qword_1EA90D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChunkDataDecryptor.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_188455D9C()
{
  result = qword_1EA90D2B0;
  if (!qword_1EA90D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2B0);
  }

  return result;
}

uint64_t sub_188455DF0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int64_t a6, uint64_t *a7)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v7 = a6;
  switch(a2 >> 62)
  {
    case 1uLL:
      v22 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v30 = a7;
      v31 = a6;
      v23 = a1;
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_15;
      }

      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v23, v24))
      {
LABEL_26:
        __break(1u);
      }

      v15 += v23 - v24;
LABEL_15:
      v7 = v22 - v23;
LABEL_16:
      v25 = MEMORY[0x18CFD43A0]();
      if (v25 >= v7)
      {
        v26 = v7;
      }

      else
      {
        v26 = v25;
      }

      v27 = (v26 + v15);
      if (v15)
      {
        v11 = v27;
      }

      else
      {
        v11 = 0;
      }

      v12 = v15;
      v18 = a3;
      v19 = a4;
      v20 = a5;
      v7 = v31;
      v21 = v31;
      a7 = v30;
LABEL_23:
      sub_188456288(v12, v11, v18, v19, v20, v21, a7);
      sub_188423CCC(a3, a4);
      result = sub_188423CCC(a5, v7);
      v29 = *MEMORY[0x1E69E9840];
      return result;
    case 2uLL:
      v30 = a7;
      v31 = a6;
      v14 = *(a1 + 16);
      v13 = *(a1 + 24);
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_6;
      }

      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_25;
      }

      v15 += v14 - v16;
LABEL_6:
      v17 = __OFSUB__(v13, v14);
      v7 = v13 - v14;
      if (!v17)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_9:
      memset(v32, 0, 14);
      v12 = v32;
      v11 = v32;
LABEL_10:
      v18 = a3;
      v19 = a4;
      v20 = a5;
      v21 = v7;
      goto LABEL_23;
    case 3uLL:
      goto LABEL_9;
    default:
      v32[0] = a1;
      LOWORD(v32[1]) = a2;
      BYTE2(v32[1]) = BYTE2(a2);
      BYTE3(v32[1]) = BYTE3(a2);
      BYTE4(v32[1]) = BYTE4(a2);
      BYTE5(v32[1]) = BYTE5(a2);
      v11 = v32 + BYTE6(a2);
      v12 = v32;
      goto LABEL_10;
  }
}

uint64_t sub_188456028(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_188423C74(a1, a2);
  sub_188456100(1, a1, a2, &v11);
  v8 = v11;
  v11 = xmmword_1886F7310;
  sub_188423C74(a3, a4);
  sub_188423C74(v8, *(&v8 + 1));
  sub_188455DF0(v8, *(&v8 + 1), a3, a4, v8, *(&v8 + 1), &v11);
  sub_188423CCC(v8, *(&v8 + 1));
  v9 = v11;
  sub_188423C74(v11, *(&v11 + 1));
  sub_188423CCC(v9, *(&v9 + 1));
  return v9;
}

uint64_t sub_188456100@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = BYTE6(a3);
    v11 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v11 = a2;
        v9 = a2 >> 32;
        break;
      case 2uLL:
        v11 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v11 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v12 = sub_188456760(v11, v9, a2, a3);
    if (v7 && v12 < v7)
    {
      switch(v5)
      {
        case 2:
          goto LABEL_15;
        default:
          break;
      }
    }

    else
    {
      v13 = sub_1884566F8(v11, v7, a2, a3);
      v14 = 0;
      switch(v5)
      {
        case 1:
          v14 = a2 >> 32;
          break;
        case 2:
          v14 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v14 = v10;
          break;
      }

      if (v14 < v13)
      {
        __break(1u);
LABEL_15:
        v15 = *(a2 + 24);
      }
    }

    v16 = Data._Representation.subscript.getter();
    v18 = v17;
    result = sub_188423CCC(a2, a3);
    *a4 = v16;
    a4[1] = v18;
  }

  return result;
}

void *sub_188456288(UInt8 *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = a6;
  v9 = a5;
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 > a3 >> 32)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v61 = a5;
      v9 = a6;
      sub_188423C74(a5, a6);
      sub_188423C74(a3, a4);
      v46 = __DataStorage._bytes.getter();
      if (!v46)
      {
        goto LABEL_16;
      }

      v47 = __DataStorage._offset.getter();
      if (__OFSUB__(a3, v47))
      {
LABEL_21:
        __break(1u);
      }

      v46 += a3 - v47;
LABEL_16:
      MEMORY[0x18CFD43A0]();
      v48 = *MEMORY[0x1E695E480];
      v49 = MEMORY[0x18CFD45F0](v61, v9);
      v8 = CFDataCreate(v48, a1, v49);
      v50 = MEMORY[0x18CFD45F0](a3, a4);
      a1 = CFDataCreate(v48, v46, v50);
      result = PCSCopyUnwrappedKey();
      if (result)
      {
LABEL_17:
        v51 = result;
        BytePtr = CFDataGetBytePtr(v51);
        Length = CFDataGetLength(v51);

        v54 = sub_188515EB4(BytePtr, Length);
        v56 = v55;

        v57 = *a7;
        v58 = a7[1];
        *a7 = v54;
        a7[1] = v56;
        sub_188423CCC(v57, v58);
        v44 = v61;
        v45 = v9;
LABEL_18:
        sub_188423CCC(v44, v45);
        result = sub_188423CCC(a3, a4);
        v59 = *MEMORY[0x1E69E9840];
      }

      else
      {
LABEL_24:
        __break(1u);
      }

      return result;
    case 2uLL:
      v27 = *(a3 + 16);
      v61 = a5;
      v9 = a6;
      sub_188423C74(a5, a6);
      sub_188423C74(a3, a4);
      v28 = __DataStorage._bytes.getter();
      if (!v28)
      {
        goto LABEL_7;
      }

      v29 = __DataStorage._offset.getter();
      if (__OFSUB__(v27, v29))
      {
        goto LABEL_20;
      }

      v28 += v27 - v29;
LABEL_7:
      MEMORY[0x18CFD43A0]();
      v30 = *MEMORY[0x1E695E480];
      v31 = MEMORY[0x18CFD45F0](v61, v9);
      v8 = CFDataCreate(v30, a1, v31);
      v32 = MEMORY[0x18CFD45F0](a3, a4);
      a1 = CFDataCreate(v30, v28, v32);
      result = PCSCopyUnwrappedKey();
      if (result)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_9:
      memset(bytes, 0, 14);
      v33 = *MEMORY[0x1E695E480];
      sub_188423C74(v9, v8);
      v34 = MEMORY[0x18CFD45F0](v9, v8);
      v60 = v8;
      v35 = CFDataCreate(v33, a1, v34);
      v36 = MEMORY[0x18CFD45F0](a3, a4);
      v37 = CFDataCreate(v33, bytes, v36);
      result = PCSCopyUnwrappedKey();
      if (!result)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v38 = result;
      v39 = CFDataGetBytePtr(v38);
      v40 = CFDataGetLength(v38);

      v41 = sub_188515EB4(v39, v40);
      v43 = v42;

      v25 = *a7;
      v26 = a7[1];
      *a7 = v41;
      a7[1] = v43;
LABEL_11:
      sub_188423CCC(v25, v26);
      v44 = v9;
      v45 = v60;
      goto LABEL_18;
    case 3uLL:
      goto LABEL_9;
    default:
      *bytes = a3;
      *&bytes[8] = a4;
      bytes[10] = BYTE2(a4);
      bytes[11] = BYTE3(a4);
      bytes[12] = BYTE4(a4);
      bytes[13] = BYTE5(a4);
      v13 = *MEMORY[0x1E695E480];
      sub_188423C74(a5, a6);
      v14 = MEMORY[0x18CFD45F0](v9, v8);
      v60 = v8;
      v15 = CFDataCreate(v13, a1, v14);
      v16 = MEMORY[0x18CFD45F0](a3, a4);
      v17 = CFDataCreate(v13, bytes, v16);
      result = PCSCopyUnwrappedKey();
      if (!result)
      {
        goto LABEL_23;
      }

      v19 = result;
      v20 = CFDataGetBytePtr(v19);
      v21 = CFDataGetLength(v19);

      v22 = sub_188515EB4(v20, v21);
      v24 = v23;

      v25 = *a7;
      v26 = a7[1];
      *a7 = v22;
      a7[1] = v24;
      goto LABEL_11;
  }
}

uint64_t sub_1884566F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_188456760(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < result || v5 > result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v10)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_188456830(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256Digest();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v36[0] = v36 - v14;
  v15 = type metadata accessor for __DataStorage();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = __DataStorage.init(capacity:)();
  v37 = 0;
  v38 = v18 | 0x4000000000000000;
  sub_188456B2C(0, 0, 129);
  sub_188456BF0();
  sub_1883F9B8C();
  dispatch thunk of HashFunction.init()();
  sub_188423C74(a1, a2);
  sub_188517514(a1, a2);
  sub_188423CCC(a1, a2);
  sub_1883F9B8C();
  dispatch thunk of HashFunction.finalize()();
  v19 = *(v5 + 8);
  v19(v8, v4);
  sub_188515F84(v12);
  sub_1883F9B8C();
  dispatch thunk of HashFunction.init()();
  v20 = sub_1883F712C();
  sub_188423C74(v20, v21);
  v22 = sub_1883F712C();
  sub_188517514(v22, v23);
  v24 = sub_1883F712C();
  sub_188423CCC(v24, v25);
  v26 = v36[0];
  sub_1883F9B8C();
  dispatch thunk of HashFunction.finalize()();
  v19(v8, v4);
  v27 = sub_1883F712C();
  sub_188423CCC(v27, v28);
  v29 = sub_188515F84(v26);
  v31 = v30;
  v32 = sub_188456AC4(20, v29, v30);
  v34 = v33;
  sub_188423CCC(v29, v31);
  Data.append(_:)();
  sub_188423CCC(v32, v34);
  return v37;
}

uint64_t sub_188456AC4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = BYTE6(a3);
  v4 = a3 >> 62;
  v7 = 0;
  result = 0;
  switch(v4)
  {
    case 1uLL:
      result = a2;
      v7 = a2 >> 32;
      break;
    case 2uLL:
      result = *(a2 + 16);
      v7 = *(a2 + 24);
      break;
    case 3uLL:
      break;
    default:
      result = 0;
      v7 = v3;
      break;
  }

  if (v7 >= result && result <= a1)
  {
    return Data._Representation.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t sub_188456B2C(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = sub_18844E6FC(&qword_1EA90D2C0, &qword_1886F73F8);
  v9 = sub_188456C48();
  LOBYTE(v7[0]) = a3;
  v6 = *sub_188400B68(v7, v8);
  Data._Representation.replaceSubrange(_:with:count:)();
  result = sub_1883FE944(v7);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_188456BF0()
{
  result = qword_1EA90D2B8;
  if (!qword_1EA90D2B8)
  {
    type metadata accessor for SHA256();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2B8);
  }

  return result;
}

unint64_t sub_188456C48()
{
  result = qword_1EA90D2C8;
  if (!qword_1EA90D2C8)
  {
    sub_18844E798(&qword_1EA90D2C0, &qword_1886F73F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2C8);
  }

  return result;
}

uint64_t sub_188456CAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_188456CD0, 0, 0);
}

void sub_188456CD0()
{
  sub_1883F78E0();
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v1 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range);
  if (v3 > v2 || (v4 = v0[3], *(v1 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range + 8) < v4))
  {
    sub_18845AD68();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    sub_1883F816C();

    v6();
    return;
  }

  v7 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < v7)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_chunkReader);
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_188456E24;

  sub_18845868C(v7, v8);
}

uint64_t sub_188456E24()
{
  sub_1883F78E0();
  v3 = v2;
  v5 = v4;
  v6 = *(*v1 + 40);
  v7 = *v1;
  sub_1883F78D4();
  *v8 = v7;

  sub_1883F7904();
  if (!v0)
  {
    v9 = v5;
    v10 = v3;
  }

  return v11(v9, v10);
}

uint64_t sub_188456F28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C6E776F64 && a2 == 0xEB000000004C5255;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_188457088(char a1)
{
  result = 0x64616F6C6E776F64;
  switch(a1)
  {
    case 1:
      result = 7955819;
      break;
    case 2:
      result = 0x727574616E676973;
      break;
    case 3:
      result = 0x65676E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_188457114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_188456F28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18845713C(uint64_t a1)
{
  v2 = sub_18845ADBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_188457178(uint64_t a1)
{
  v2 = sub_18845ADBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1884571B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v30 = a3;
  v33 = type metadata accessor for URL.DirectoryHint();
  v11 = *(v33 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v31 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v19 = *(v16 + 16);
  v34 = a1;
  v19(v6 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_url, a1, v15);
  v20 = (v6 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature);
  v21 = a2;
  *v20 = a2;
  v22 = v30;
  v20[1] = v30;
  v23 = (v6 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_key);
  *v23 = a4;
  v23[1] = a5;

  v32 = a4;
  v24 = a4;
  v25 = a5;
  sub_188423C74(v24, a5);
  if (qword_1EA90CB08 != -1)
  {
    swift_once();
  }

  sub_1883FDE5C(v15, qword_1EA90D2D0);
  v35 = v21;
  v36 = v22;
  v26 = v33;
  (*(v11 + 104))(v14, *MEMORY[0x1E6968F70], v33);
  sub_18845B108();
  v27 = v31;
  URL.appending<A>(component:directoryHint:)();
  sub_188423CCC(v32, v25);
  (*(v16 + 8))(v34, v15);
  (*(v11 + 8))(v14, v26);

  (*(v16 + 32))(v6 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheFile, v27, v15);
  *(v6 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState) = 0;
  return v6;
}

unint64_t sub_188457494(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for __DataStorage();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = __DataStorage.init(length:)();
  v11 = *(v2 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_key);
  v12 = *(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_key + 8);
  type metadata accessor for ChunkDataDecryptor();
  swift_allocObject();

  sub_188423C74(v11, v12);
  sub_188454D24(0x1000000000, v10 | 0x4000000000000000, v11, v12);
  if (!v3)
  {
    a2 = sub_188455194(a1, a2);
  }

  return a2;
}

uint64_t sub_18845759C(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature);
  v4 = *(v2 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8);
  v5 = sub_188456830(a1, a2);
  v7 = v6 >> 62;
  v8 = v6;
  v38 = HIDWORD(v5);
  v39 = BYTE6(v6);
  switch(v6 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_51;
      }

      v9 = HIDWORD(v5) - v5;
LABEL_6:
      if (!v9)
      {
LABEL_10:
        sub_188423CCC(v5, v6);
        v14 = MEMORY[0x1E69E7CC0];
        goto LABEL_37;
      }

      v47 = MEMORY[0x1E69E7CC0];
      v40 = v5;
      sub_18840489C(0, v9 & ~(v9 >> 63), 0);
      v12 = v40;
      v37 = v4;
      if (v7)
      {
        if (v7 == 2)
        {
          v13 = *(v40 + 16);
        }

        else
        {
          v13 = v40;
        }
      }

      else
      {
        v13 = 0;
      }

      if (v9 < 0)
      {
        goto LABEL_50;
      }

      v14 = v47;
      break;
    case 2uLL:
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

      goto LABEL_52;
    case 3uLL:
      goto LABEL_10;
    default:
      v9 = BYTE6(v6);
      goto LABEL_6;
  }

  do
  {
    if (v7 == 1)
    {
      if (v13 < v40 || v13 >= v40 >> 32)
      {
        goto LABEL_46;
      }

      v17 = __DataStorage._bytes.getter();
      if (!v17)
      {
        goto LABEL_53;
      }

      v18 = v17;
      v19 = __DataStorage._offset.getter();
      v20 = v13 - v19;
      if (__OFSUB__(v13, v19))
      {
        goto LABEL_48;
      }

LABEL_32:
      v15 = *(v18 + v20);
      v12 = v40;
      goto LABEL_33;
    }

    if (v7)
    {
      if (v13 < *(v12 + 16))
      {
        __break(1u);
LABEL_45:
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
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
      }

      if (v13 >= *(v12 + 24))
      {
        goto LABEL_47;
      }

      v21 = __DataStorage._bytes.getter();
      if (!v21)
      {
        goto LABEL_54;
      }

      v18 = v21;
      v22 = __DataStorage._offset.getter();
      v20 = v13 - v22;
      if (__OFSUB__(v13, v22))
      {
        goto LABEL_49;
      }

      goto LABEL_32;
    }

    if (v13 >= v39)
    {
      goto LABEL_45;
    }

    LOBYTE(v41) = v12;
    *(&v41 + 1) = *(&v40 + 1);
    BYTE3(v41) = BYTE3(v40);
    BYTE4(v41) = v38;
    *(&v41 + 5) = *(&v40 + 5);
    HIBYTE(v41) = HIBYTE(v40);
    v42 = v8;
    v43 = BYTE2(v8);
    v44 = BYTE3(v8);
    v45 = BYTE4(v8);
    v46 = BYTE5(v8);
    v15 = *(&v41 + v13);
LABEL_33:
    sub_18844E6FC(&qword_1EA90D328, &qword_1886F75C8);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1886F7400;
    *(v23 + 56) = MEMORY[0x1E69E7508];
    *(v23 + 64) = MEMORY[0x1E69E7558];
    *(v23 + 32) = v15;
    v24 = String.init(format:_:)();
    v26 = v25;
    v47 = v14;
    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_18840489C((v27 > 1), v28 + 1, 1);
      v12 = v40;
      v14 = v47;
    }

    *(v14 + 16) = v28 + 1;
    v29 = v14 + 16 * v28;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
    ++v13;
    --v9;
  }

  while (v9);
  sub_188423CCC(v12, v8);
  v4 = v37;
LABEL_37:
  v41 = v14;
  sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  sub_1883F94A4();
  v30 = BidirectionalCollection<>.joined(separator:)();
  v32 = v31;

  if (v3 == v30 && v4 == v32)
  {
    v34 = 1;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v35 = *MEMORY[0x1E69E9840];
  return v34 & 1;
}

void sub_188457994()
{
  v0 = type metadata accessor for URL();
  sub_188420F44(v0, qword_1EA90D2D0);
  v1 = sub_1883FDE5C(v0, qword_1EA90D2D0);
  sub_1884579E0(v1);
}

void sub_1884579E0(uint64_t a1@<X8>)
{
  v42 = a1;
  v43[1] = *MEMORY[0x1E69E9840];
  v1 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v41 = &v38 - v3;
  v4 = type metadata accessor for URL.DirectoryHint();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  v43[0] = 0;
  v15 = [v14 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v43];
  v16 = v43[0];
  if (v15)
  {
    v17 = v15;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v16;

    v19 = [v13 defaultManager];
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    v43[0] = 0;
    v23 = [v19 URLForDirectory:99 inDomain:1 appropriateForURL:v21 create:1 error:v43];

    v24 = v43[0];
    if (v23)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      (*(v9 + 8))(v12, v8);
      goto LABEL_11;
    }

    v28 = v43[0];
    v27 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v26 = v43[0];
    v27 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_1EA90CC18 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1883FDE5C(v29, qword_1EA90E888);
  v30 = v27;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    v35 = v27;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_1883EA000, v31, v32, "Failed to create cache directory with error %@", v33, 0xCu);
    sub_18845B1B0(v34, &qword_1EA90DC70, &unk_1886FA190);
    MEMORY[0x18CFD7E80](v34, -1, -1);
    MEMORY[0x18CFD7E80](v33, -1, -1);
  }

  (*(v39 + 104))(v7, *MEMORY[0x1E6968F58], v40);
  sub_1883F90F4(v41, 1, 1, v8);
  URL.init(filePath:directoryHint:relativeTo:)();

LABEL_11:
  v37 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188457E80()
{
  v1 = type metadata accessor for URL();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_url, v3);
  return URLRequest.init(url:cachePolicy:timeoutInterval:)();
}

char *sub_188457F5C(unint64_t a1, char *a2)
{
  v4 = v2;
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18845B058();
  (*(v8 + 16))(v11, v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheFile, v7);
  v12 = sub_1884583B0(v11);
  if (v3)
  {
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v11 = v12;
  v30[0] = 0;
  if (![v12 seekToOffset:a1 error:v30])
  {
    a2 = v30[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_13;
  }

  v13 = &a2[-a1];
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_19;
  }

  v14 = v30[0];
  v15 = NSFileHandle.read(upToCount:)();
  a2 = v15;
  a1 = v16;
  if (v16 >> 60 != 15)
  {
    sub_188423C74(v15, v16);
    v17 = MEMORY[0x18CFD45F0](a2, a1);
    sub_18841BA74(a2, a1);
    if (v17 == v13)
    {
      if (qword_1EA90CC18 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1883FDE5C(v18, qword_1EA90E888);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v30[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_1883FE340(*(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature), *(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8), v30);
        _os_log_impl(&dword_1883EA000, v19, v20, "found chunk with signature %s in local cache", v21, 0xCu);
        sub_1883FE944(v22);
        MEMORY[0x18CFD7E80](v22, -1, -1);
        MEMORY[0x18CFD7E80](v21, -1, -1);
      }

      goto LABEL_13;
    }
  }

  if (qword_1EA90CC18 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v25 = type metadata accessor for Logger();
  sub_1883FDE5C(v25, qword_1EA90E888);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1883FE340(*(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature), *(v4 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8), v30);
    _os_log_impl(&dword_1883EA000, v26, v27, "can't find chunk with signature %s in local cache", v28, 0xCu);
    sub_1883FE944(v29);
    MEMORY[0x18CFD7E80](v29, -1, -1);
    MEMORY[0x18CFD7E80](v28, -1, -1);
  }

  sub_18841BA74(a2, a1);

  a2 = 0;
LABEL_13:
  v23 = *MEMORY[0x1E69E9840];
  return a2;
}

id sub_1884583B0(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v14);
  v3 = v2;
  v13 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v13];

  v5 = v13;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

id sub_188458508()
{
  v2 = v0;
  result = Data.write(to:options:)();
  if (!v1)
  {
    if (qword_1EA90CC18 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1883FDE5C(v4, qword_1EA90E888);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1883FE340(*(v2 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature), *(v2 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8), &v9);
      _os_log_impl(&dword_1883EA000, v5, v6, "cache chunk with signature %s", v7, 0xCu);
      sub_1883FE944(v8);
      MEMORY[0x18CFD7E80](v8, -1, -1);
      MEMORY[0x18CFD7E80](v7, -1, -1);
    }

    return sub_1885160C4();
  }

  return result;
}

uint64_t sub_18845868C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18845872C, v2, 0);
}

uint64_t sub_18845872C()
{
  v48 = v0;
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState;
  v3 = *(v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState);
  *(v0 + 80) = v3;
  if (!v3)
  {
    if (qword_1EA90CC18 != -1)
    {
      sub_1883F7138();
      v44 = *(v0 + 64);
    }

    v12 = type metadata accessor for Logger();
    sub_1883FDE5C(v12, qword_1EA90E888);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_21;
    }

    v15 = *(v0 + 64);
    v16 = sub_1883F9984();
    v17 = sub_1883FE540();
    v47 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1883FF074(OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature, v47);
    v18 = "chunk %s needed, downloading";
    goto LABEL_20;
  }

  if (v3 == 1)
  {
    if (qword_1EA90CC18 != -1)
    {
      sub_1883F7138();
      v43 = *(v0 + 64);
    }

    v4 = type metadata accessor for Logger();
    sub_1883FDE5C(v4, qword_1EA90E888);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 64);
      v8 = sub_1883F9984();
      v9 = sub_1883FE540();
      v47 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1883FE340(*(v7 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature), *(v7 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8), &v47);
      _os_log_impl(&dword_1883EA000, v5, v6, "chunk %s available in cache, retrieving", v8, 0xCu);
      sub_1883FE944(v9);
      sub_1883F7B60();
      sub_1883F7B60();
    }

    v10 = *(v0 + 64);
    sub_188457F5C(*(v0 + 48), *(v0 + 56));
    if (v11 >> 60 != 15)
    {
      v40 = *(v0 + 72);

      sub_1883F7904();
      sub_1883F7E58();

      __asm { BRAA            X3, X16 }
    }

    v28 = *(v0 + 64);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_21;
    }

    v29 = *(v0 + 64);
    v16 = sub_1883F9984();
    v17 = sub_1883FE540();
    v47 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1883FF074(OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature, v47);
    v18 = "chunk %s not found in cache, re-downloading";
LABEL_20:
    _os_log_impl(&dword_1883EA000, v13, v14, v18, v16, 0xCu);
    sub_1883FE944(v17);
    sub_1883F7B60();
    sub_1883F7B60();
LABEL_21:

    v31 = *(v0 + 64);
    v30 = *(v0 + 72);
    v32 = type metadata accessor for TaskPriority();
    sub_1883F90F4(v30, 1, 1, v32);
    v33 = sub_18845AE64(&qword_1EA90D318, type metadata accessor for ChunkStreamHandle.ChunkReader);
    v34 = swift_allocObject();
    v34[2] = v31;
    v34[3] = v33;
    v34[4] = v31;
    swift_retain_n();
    v35 = sub_1884E049C(0, 0, v30, &unk_1886F75B8, v34);
    *(v0 + 112) = v35;
    v36 = *(v1 + v2);
    *(v1 + v2) = v35;

    sub_18845B048(v36);
    v37 = *(MEMORY[0x1E69E86A8] + 4);
    v38 = swift_task_alloc();
    *(v0 + 120) = v38;
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    *v38 = v0;
    v38[1] = sub_188458FAC;
    goto LABEL_22;
  }

  v19 = qword_1EA90CC18;

  if (v19 != -1)
  {
    sub_1883F7138();
    v45 = *(v0 + 64);
  }

  v20 = type metadata accessor for Logger();
  *(v0 + 88) = sub_1883FDE5C(v20, qword_1EA90E888);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 64);
    v24 = sub_1883F9984();
    v25 = sub_1883FE540();
    v47 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1883FF074(OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature, v47);
    _os_log_impl(&dword_1883EA000, v21, v22, "chunk %s download in-progress, waiting", v24, 0xCu);
    sub_1883FE944(v25);
    sub_1883F7B60();
    sub_1883F7B60();
  }

  v26 = *(MEMORY[0x1E69E86A8] + 4);
  v27 = swift_task_alloc();
  *(v0 + 96) = v27;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  *v27 = v0;
  v27[1] = sub_188458D20;
LABEL_22:
  sub_1883F7E58();

  return MEMORY[0x1EEE6DA10]();
}

uint64_t sub_188458D20()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F78D4();
  *v4 = v3;
  v5 = *(v2 + 96);
  *v4 = *v1;
  *(v3 + 104) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_18845917C;
  }

  else
  {
    v7 = sub_188458E44;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

void sub_188458E44()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  Data.subdata(in:)();
  sub_188423CCC(v6, v5);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  if (v9)
  {
    v11 = v0[8];
    v12 = sub_1883F9984();
    v13 = sub_1883FE540();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1883FE340(*(v11 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature), *(v11 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8), &v17);
    _os_log_impl(&dword_1883EA000, v7, v8, "chunk %s download in-progress, done waiting", v12, 0xCu);
    sub_1883FE944(v13);
    sub_1883F7B60();
    sub_1883F7B60();
  }

  sub_18845B048(v10);

  v14 = v0[9];

  sub_1883F7904();
  sub_1883F7E58();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_188458FAC()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F78D4();
  *v4 = v3;
  v5 = *(v2 + 120);
  *v4 = *v1;
  *(v3 + 128) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1884591E4;
  }

  else
  {
    v7 = sub_1884590D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1884590D0()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = v0[3];
  v6 = Data.subdata(in:)();
  v8 = v7;

  sub_188423CCC(v4, v5);
  v9 = v0[9];

  sub_1883F7904();

  return v10(v6, v8);
}

uint64_t sub_18845917C()
{
  sub_18845B048(v0[10]);
  v1 = v0[13];
  v2 = v0[9];

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884591E4()
{
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[9];

  sub_1883F816C();

  return v4();
}

uint64_t sub_18845924C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  v6 = type metadata accessor for URLRequest();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188459310, a4, 0);
}

uint64_t sub_188459310()
{
  v17 = v0;
  if (qword_1EA90CC18 != -1)
  {
    sub_1883F7138();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_1883FDE5C(v2, qword_1EA90E888);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = sub_1883F9984();
    v7 = sub_1883FE540();
    v16 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1883FE340(*(v5 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature), *(v5 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8), &v16);
    _os_log_impl(&dword_1883EA000, v3, v4, "chunk %s, download starting", v6, 0xCu);
    sub_1883FE944(v7);
    sub_1883F7B60();
    sub_1883F7B60();
  }

  v8 = v0[8];
  v9 = v0[5];
  sub_188457E80();
  type metadata accessor for AssetStreamHandle();
  v10 = sub_18844F690();
  v0[9] = v10;
  v11 = [objc_opt_self() sharedManager];
  v0[10] = v11;
  if (v11)
  {
    v13 = *(MEMORY[0x1E698F6C0] + 4);
    v14 = swift_task_alloc();
    v0[11] = v14;
    *v14 = v0;
    v14[1] = sub_188459500;
    v11 = v0[8];
    v12 = v10;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEDF0D18](v11, v12);
}

uint64_t sub_188459500()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F78D4();
  *v4 = v3;
  v5 = v2[11];
  v6 = *v1;
  sub_1883F78D4();
  *v7 = v6;
  v10[12] = v8;
  v10[13] = v9;
  v10[14] = v11;
  v10[15] = v0;

  v12 = v2[10];
  v13 = v2[5];

  if (v0)
  {
    v14 = sub_188459970;
  }

  else
  {
    v14 = sub_188459648;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_188459648()
{
  v1 = v0[14];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || [v2 statusCode] != 200)
  {
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[12];
    v14 = v0[9];
    v41 = v0[8];
    v15 = v0[6];
    v16 = v0[7];
    v17 = v0[5];
    v18 = *(v17 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState);
    *(v17 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState) = 0;
    sub_18845B048(v18);
    type metadata accessor for CKError(0);
    v0[3] = 4;
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18845AE64(&qword_1EA90CAE0, type metadata accessor for CKError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v19 = v0[2];
    swift_willThrow();

    sub_188423CCC(v13, v11);
    (*(v16 + 8))(v41, v15);
    goto LABEL_6;
  }

  v3 = v0[15];
  v4 = v0[5];
  v5 = sub_188457494(v0[12], v0[13]);
  if (v3)
  {
    v7 = v0[13];
    v8 = v0[14];
    v9 = v0[12];
    v10 = v0[9];
    (*(v0[7] + 8))(v0[8], v0[6]);

    sub_188423CCC(v9, v7);
LABEL_6:
    v20 = v0[8];

    sub_1883F816C();
    goto LABEL_7;
  }

  v23 = v5;
  v24 = v6;
  v25 = v0[5];
  if ((sub_18845759C(v5, v6) & 1) == 0)
  {
    v31 = v0[13];
    v32 = v0[14];
    v33 = v0[12];
    v34 = v0[9];
    v35 = v0[7];
    v40 = v0[6];
    v42 = v0[8];
    sub_18845AD68();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();

    sub_188423CCC(v23, v24);
    sub_188423CCC(v33, v31);
    (*(v35 + 8))(v42, v40);
    goto LABEL_6;
  }

  v26 = v0[5];
  sub_188458508();
  v27 = v0[13];
  v28 = v0[14];
  v29 = v0[12];
  v30 = v0[9];
  v43 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  sub_188423CCC(v29, v27);
  v37 = *(v43 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState);
  *(v43 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState) = 1;
  sub_18845B048(v37);
  v38 = v0[8];
  v39 = v0[4];
  *v39 = v23;
  v39[1] = v24;

  sub_1883F816C();
LABEL_7:

  return v21();
}

uint64_t sub_188459970()
{
  sub_1883F78E0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 120);
  v5 = *(v0 + 64);

  sub_1883F816C();

  return v6();
}

uint64_t sub_1884599F8()
{
  v1 = v0;
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheFile;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheFile, v2);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v6, v2);
  v21[0] = 0;
  v13 = [v7 removeItemAtURL:v11 error:v21];

  if (v13)
  {
    v14 = v21[0];
  }

  else
  {
    v15 = v21[0];
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v12((v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_url), v2);
  v17 = *(v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_signature + 8);

  sub_188423CCC(*(v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_key), *(v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_key + 8));
  v12((v1 + v8), v2);
  sub_18845B048(*(v1 + OBJC_IVAR____TtCC8CloudKit17ChunkStreamHandleP33_8C09B02C3959D7B1EC6CDDBFBA6DF63011ChunkReader_cacheState));
  swift_defaultActor_destroy();
  v18 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_188459C24()
{
  v0 = sub_1884599F8();

  return MEMORY[0x1EEE6DEF0](v0);
}

id sub_188459C94(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for URL();
  v3 = sub_1883F70DC(v2);
  v46 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v43 - v10;
  v48 = sub_18844E6FC(&qword_1EA90D338, &qword_1886F75D8);
  v12 = sub_1883F70DC(v48);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v43 - v15;
  v17 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_18845ADBC();
  v47 = v16;
  v18 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    sub_1883FE944(a1);
    v42 = v50;
    v21 = *((*MEMORY[0x1E69E7D40] & *v50) + 0x30);
    v22 = *((*MEMORY[0x1E69E7D40] & *v50) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v45 = v8;
    v49 = a1;
    LOBYTE(v53) = 0;
    sub_1883F9130();
    sub_18845AE64(v19, v20);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = *(v46 + 32);
    v25 = v50;
    v44 = OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_downloadURL;
    v24(v50 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_downloadURL, v11, v2);
    v54 = 1;
    sub_188424048();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = &v25[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_key];
    *&v25[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_key] = v53;
    LOBYTE(v53) = 2;
    v43[1] = 0;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = v49;
    v29 = v25;
    v30 = &v25[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_signature];
    *v30 = v27;
    v30[1] = v31;
    sub_18844E6FC(&qword_1EA90D308, &unk_1886F75A0);
    v54 = 3;
    sub_18845B09C(&qword_1EA90D348);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v29[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range] = v53;
    (*(v46 + 16))(v45, &v29[v44], v2);
    v32 = v30[1];
    v46 = *v30;
    v33 = v29;
    v34 = *v26;
    v35 = v26[1];
    v36 = type metadata accessor for ChunkStreamHandle.ChunkReader(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();

    sub_188423C74(v34, v35);
    v39 = sub_1884571B4(v45, v46, v32, v34, v35);
    v40 = sub_1883F8714();
    v41(v40);
    *&v33[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_chunkReader] = v39;
    v52.receiver = v33;
    v52.super_class = ObjectType;
    v42 = objc_msgSendSuper2(&v52, sel_init);
    sub_1883FE944(v28);
  }

  return v42;
}

id sub_18845A1C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a5;
  v69 = a4;
  v78 = a3;
  v73 = v5;
  v74 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for URLError.Code();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for URLError();
  v10 = sub_1883F70DC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v63 - v19;
  v21 = type metadata accessor for URL();
  v22 = sub_1883F70DC(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v68 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - v29;
  v31 = *(a1 + 40);
  v32 = *(a1 + 48);
  URL.init(string:)();
  if (sub_1883F971C(v20, 1, v21) == 1)
  {
    sub_18845B15C(a1);
    sub_18845B1B0(v20, &qword_1EA90D240, &qword_1886F70B0);
    static URLError.Code.badURL.getter();
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18845AE64(&qword_1EA90D350, MEMORY[0x1E6969C20]);
    _BridgedStoredNSError.init(_:userInfo:)();
    URLError._nsError.getter();
    v34 = *(v12 + 8);
    v33 = (v12 + 8);
    v34(v16, v9);
    swift_willThrow();
    sub_188423CCC(v74, v78);
  }

  else
  {
    v35 = v74;
    v33 = v78;
    (*(v24 + 32))(v30, v20, v21);
    v36 = *a1;
    v37 = *(a1 + 8);
    v38 = v71;
    v39 = sub_188516178();
    if (!v38)
    {
      v66 = v40;
      v67 = v39;
      v44 = sub_188456028(v39, v40, v35, v33);
      v71 = v45;
      v46 = *(v24 + 16);
      v63 = OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_downloadURL;
      v64 = v46;
      v47 = v73;
      v46(&v73[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_downloadURL], v30, v21);
      v48 = &v47[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_key];
      v49 = v44;
      v65 = v44;
      v50 = v71;
      *v48 = v44;
      v48[1] = v50;
      v51 = &v47[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range];
      v52 = v70;
      *v51 = v69;
      v51[1] = v52;
      v77 = *(a1 + 16);
      v53 = &v47[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_signature];
      *&v47[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_signature] = v77;
      sub_188423C74(v49, v50);
      sub_18845B204(&v77, v76);
      sub_18845B15C(a1);
      v54 = v68;
      v64(v68, &v47[v63], v21);
      v55 = *v53;
      v56 = v53[1];
      v70 = v55;
      v57 = *v48;
      v58 = v48[1];
      v59 = type metadata accessor for ChunkStreamHandle.ChunkReader(0);
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      v69 = swift_allocObject();

      sub_188423C74(v57, v58);
      v62 = sub_1884571B4(v54, v70, v56, v57, v58);
      sub_188423CCC(v67, v66);
      sub_188423CCC(v65, v71);
      (*(v24 + 8))(v30, v21);
      *&v47[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_chunkReader] = v62;
      v75.receiver = v47;
      v75.super_class = ObjectType;
      v33 = objc_msgSendSuper2(&v75, sel_init);
      sub_188423CCC(v74, v78);
      return v33;
    }

    sub_188423CCC(v35, v33);
    sub_18845B15C(a1);
    (*(v24 + 8))(v30, v21);
  }

  v41 = *((*MEMORY[0x1E69E7D40] & *v73) + 0x30);
  v42 = *((*MEMORY[0x1E69E7D40] & *v73) + 0x34);
  swift_deallocPartialClassInstance();
  return v33;
}

uint64_t sub_18845A7D0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18845A8B4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18845A8EC()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18845A9A8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18845A9CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18845AA20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_18845AA7C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_18845AAAC(void *a1)
{
  v3 = v1;
  v5 = sub_18844E6FC(&qword_1EA90D2F0, &qword_1886F7598);
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20 - v11;
  v13 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_18845ADBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  type metadata accessor for URL();
  sub_1883F9130();
  sub_18845AE64(v14, v15);
  sub_1883F9550();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = *(v3 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_key + 8);
    *&v22 = *(v3 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_key);
    *(&v22 + 1) = v16;
    v21 = 1;
    sub_188423C74(v22, v16);
    sub_18845AE10();
    sub_1883F9550();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_188423CCC(v22, *(&v22 + 1));
    v17 = *(v3 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_signature);
    v18 = *(v3 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_signature + 8);
    LOBYTE(v22) = 2;
    sub_1883F9550();
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range);
    v21 = 3;
    sub_18844E6FC(&qword_1EA90D308, &unk_1886F75A0);
    sub_18845B09C(&qword_1EA90D310);
    sub_1883F9550();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

id sub_18845AD18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_188459C50(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_18845AD68()
{
  result = qword_1EA90D2E8;
  if (!qword_1EA90D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2E8);
  }

  return result;
}

unint64_t sub_18845ADBC()
{
  result = qword_1EA90D2F8;
  if (!qword_1EA90D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2F8);
  }

  return result;
}

unint64_t sub_18845AE10()
{
  result = qword_1EA90C660;
  if (!qword_1EA90C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C660);
  }

  return result;
}

uint64_t sub_18845AE64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18845AEAC()
{
  sub_1883F78E0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_18845AF5C;

  return sub_18845924C(v3, v4, v5, v6);
}

uint64_t sub_18845AF5C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1883F78D4();
  *v3 = v2;

  sub_1883F816C();

  return v4();
}

unint64_t sub_18845B048(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_18845B058()
{
  result = qword_1EA90D320;
  if (!qword_1EA90D320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90D320);
  }

  return result;
}

uint64_t sub_18845B09C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(&qword_1EA90D308, &unk_1886F75A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18845B108()
{
  result = qword_1EA90C8E0[0];
  if (!qword_1EA90C8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA90C8E0);
  }

  return result;
}

uint64_t sub_18845B1B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_18844E6FC(a2, a3);
  sub_1883F7158(v4);
  (*(v5 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ChunkStreamHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChunkStreamHandle.StreamError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18845B41C()
{
  result = qword_1EA90D358;
  if (!qword_1EA90D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D358);
  }

  return result;
}

unint64_t sub_18845B474()
{
  result = qword_1EA90D360;
  if (!qword_1EA90D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D360);
  }

  return result;
}

unint64_t sub_18845B4CC()
{
  result = qword_1EA90D368;
  if (!qword_1EA90D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D368);
  }

  return result;
}

unint64_t sub_18845B524()
{
  result = qword_1EA90D370;
  if (!qword_1EA90D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D370);
  }

  return result;
}

id sub_18845B578(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12)
{
  v32 = a7;
  v33 = a8;
  v31 = a6;
  v29 = a10;
  v30 = a9;
  v27 = a12;
  v28 = a11;
  v13 = type metadata accessor for AssetStreamHandle();
  v14 = sub_1883F70DC(v13);
  v25 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v35;
  static AssetStreamHandle.makeAssetStreamHandle(partition:owner:accessToken:requestorID:signature:referenceSignature:size:assetKey:filenameExtension:applicationID:)();
  if (!v20)
  {
    v21 = v26;
    v22 = objc_allocWithZone(v26);
    v23 = v25;
    (*(v25 + 16))(v22 + OBJC_IVAR____TtC8CloudKit28CloudAssetsAssetStreamHandle_assetStreamHandle, v19, v13);
    v34.receiver = v22;
    v34.super_class = v21;
    a1 = objc_msgSendSuper2(&v34, sel_init);
    (*(v23 + 8))(v19, v13);
  }

  return a1;
}

void *sub_18845BD50()
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AssetStreamHandle();
  v4 = sub_1883F70DC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1883F716C();
  sub_188423C74(v11, v12);
  sub_1883F716C();
  AssetStreamHandle.init(from:)();
  if (v1)
  {
    v13 = sub_1883F716C();
    sub_188423CCC(v13, v14);
    v15 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x30);
    v16 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v6 + 32))(v0 + OBJC_IVAR____TtC8CloudKit28CloudAssetsAssetStreamHandle_assetStreamHandle, v10, v3);
    v20.receiver = v0;
    v20.super_class = ObjectType;
    v0 = objc_msgSendSuper2(&v20, sel_init);
    v17 = sub_1883F716C();
    sub_188423CCC(v17, v18);
  }

  return v0;
}

uint64_t type metadata accessor for CloudAssetsAssetStreamHandle()
{
  result = qword_1EA90C2C0;
  if (!qword_1EA90C2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18845C170()
{
  result = type metadata accessor for AssetStreamHandle();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18845C260(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CKContainer.fetchAllLongLivedOperationIDs(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  sub_1883F7188();
  v4[1] = 1107296256;
  v4[2] = sub_18845C364;
  v4[3] = &unk_1EFA263D0;
  v3 = _Block_copy(v4);

  [v2 fetchAllLongLivedOperationIDsWithCompletionHandler_];
  _Block_release(v3);
}

uint64_t sub_18845C364(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t CKContainer.allLongLivedOperationIDs()()
{
  sub_1883F7120();
  v1[19] = v0;
  v2 = sub_18844E6FC(&qword_1EA90D378, &qword_1886F77F0);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18845C4C0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_18845C68C;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_188403664(v1 + 14);
  sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_18845C85C;
  v1[13] = &unk_1EFA263F8;
  [v11 fetchAllLongLivedOperationIDsWithCompletionHandler_];
  (*(v7 + 8))(v9, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_18845C68C()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18845C788()
{
  sub_1883F7120();
  v1 = v0[22];
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_18845C7F0()
{
  sub_1883F78E0();
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  swift_willThrow();

  sub_1883F816C();
  v4 = *(v0 + 184);

  return v3();
}

void sub_18845C85C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_1884E09BC();
  }

  else
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1884E0B24();
  }
}

void CKContainer.fetchLongLivedOperation(withID:completionHandler:)()
{
  sub_1883FDE94();
  v3 = MEMORY[0x18CFD5010]();
  v6 = v2;
  v7 = v0;
  sub_1883F7188();
  v5[1] = 1107296256;
  v5[2] = sub_18845C9D8;
  v5[3] = &unk_1EFA26420;
  v4 = _Block_copy(v5);

  [v1 fetchLongLivedOperationWithID:v3 completionHandler:v4];
  _Block_release(v4);
}

void sub_18845C9D8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t CKContainer.longLivedOperation(for:)()
{
  sub_1883F7120();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_18844E6FC(&qword_1EA90D380, &qword_1886F7800);
  v1[22] = v4;
  v5 = *(v4 - 8);
  v1[23] = v5;
  v6 = *(v5 + 64) + 15;
  v1[24] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18845CB2C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v10 = v1[21];
  v7 = MEMORY[0x18CFD5010](v1[19], v1[20]);
  v1[25] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_18845CD08;
  swift_continuation_init();
  v1[17] = v6;
  v8 = sub_188403664(v1 + 14);
  sub_18844E6FC(&qword_1EA90D388, &qword_1886F7808);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  CheckedContinuation.init(continuation:function:)();
  (*(v4 + 32))(v8, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_18845CEE8;
  v1[13] = &unk_1EFA26448;
  [v10 fetchLongLivedOperationWithID:v7 completionHandler:?];
  (*(v4 + 8))(v8, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_18845CD08()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18845CE04()
{
  sub_1883F7120();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_18845CE74()
{
  sub_1883F78E0();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  sub_1883F816C();
  v5 = v0[26];

  return v4();
}

void sub_18845CEE8(uint64_t a1, void *a2, void *a3)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    sub_1884E09E4();
  }

  else
  {
    v5 = a2;

    sub_1884E0B38();
  }
}

void CKContainer.configuredWith<A>(configuration:group:body:)(void *a1, void *a2, void (*a3)(void))
{
  v4 = v3;
  swift_getObjectType();
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v8 = a2;
  v9 = a1;
  v10 = sub_1884296E8(a1, a2);
  v11 = [v4 implementation];
  v12 = v10;
  v13 = sub_1884276B8(v11, v10);
  a3();
  sub_18845D450(v13, nullsub_4);
}

uint64_t CKContainer.configuredWith<A>(configuration:group:body:)()
{
  sub_1883F7120();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = swift_getObjectType();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18845D110()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v6 = v4;
  v7 = v5;
  v8 = sub_1884296E8(v5, v4);
  v0[9] = v8;
  v9 = [v2 implementation];
  v10 = v8;
  v11 = sub_1884276B8(v9, v8);
  v0[10] = v11;
  v17 = (v3 + *v3);
  v12 = v3[1];
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_18845D298;
  v14 = v0[6];
  v15 = v0[2];

  return v17(v15, v11);
}

uint64_t sub_18845D298()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18845D390()
{
  sub_1883F7120();
  sub_1883F819C();

  sub_1883F816C();

  return v2();
}

uint64_t sub_18845D3F0()
{
  sub_1883F7120();
  sub_1883F819C();

  sub_1883F816C();
  v4 = *(v2 + 96);

  return v3();
}

uint64_t sub_18845D450(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v7 = a1;
  return sub_18849C900(&v7, a2, 0, ObjectType, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v5);
}

uint64_t CKContainer.userIdentities(forEmailAddresses:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845D510()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845D6F8(v5, v6, v7);
}

uint64_t sub_18845D5CC()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = sub_1883FA044();

    return v14(v13);
  }
}

uint64_t sub_18845D6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845D710()
{
  sub_1883F78E0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1883FDD2C();
  sub_1883F8724(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  sub_1883F9758(v5);
  sub_18844E6FC(&qword_1EA90D488, &qword_1886F7980);
  sub_1883FE558();
  *v1 = v6;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18845D7E4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t CKContainer.userIdentities(forPhoneNumbers:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845D9F4()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845DC3C(v5, v6, v7);
}

uint64_t sub_18845DAB0()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = sub_1883FA044();

    return v14(v13);
  }
}

uint64_t sub_18845DBDC()
{
  sub_1883F7120();
  v1 = *(v0 + 32);

  sub_1883F816C();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_18845DC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845DC54()
{
  sub_1883F78E0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1883FDD2C();
  sub_1883F8724(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  sub_1883F9758(v5);
  sub_18844E6FC(&qword_1EA90D488, &qword_1886F7980);
  sub_1883FE558();
  *v1 = v6;
  v1[1] = sub_18845DD28;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18845DD28()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18845DE28()
{
  sub_1883F7120();
  v1 = *(v0 + 56);

  sub_1883F816C();
  v3 = *(v0 + 72);

  return v2();
}

void sub_18845DEB8()
{
  v1 = [v0 implementation];
  v2 = [v0 convenienceConfiguration];
  sub_18845E680();
}

uint64_t CKContainer.userIdentities(forUserRecordIDs:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845DF98()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845E054(v5, v6, v7);
}

uint64_t sub_18845E054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845E06C()
{
  sub_1883F78E0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1883FDD2C();
  sub_1883F8724(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  sub_1883F9758(v5);
  sub_18844E6FC(&qword_1EA90D460, &qword_1886F7968);
  sub_1883FE558();
  *v1 = v6;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t CKContainer.shareParticipants(forEmailAddresses:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845E190()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845E24C(v5, v6, v7);
}

uint64_t sub_18845E24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845E264()
{
  sub_1883F78E0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1883FDD2C();
  sub_1883F8724(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  sub_1883F9758(v5);
  sub_18844E6FC(&qword_1EA90D448, &qword_1886F7950);
  sub_1883FE558();
  *v1 = v6;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18845E374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1883F9160();
  v41 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v36 = [v34 *v25];

  sub_1883F4C5C(0, &qword_1EA90D428, off_1E70BA990);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = swift_allocObject();
  *(v38 + 16) = v29;
  *(v38 + 24) = v27;

  a23(v37, v33, v31, v41, v38);

  sub_1883F8750();
}

uint64_t CKContainer.shareParticipants(forPhoneNumbers:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845E4A4()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845E560(v5, v6, v7);
}

uint64_t sub_18845E560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845E578()
{
  sub_1883F78E0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1883FDD2C();
  sub_1883F8724(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  sub_1883F9758(v5);
  sub_18844E6FC(&qword_1EA90D448, &qword_1886F7950);
  sub_1883FE558();
  *v1 = v6;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18845E680()
{
  sub_1883F9160();
  v18 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_self();
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13 = [v11 lookupInfosWithRecordIDs_];

  sub_1883F4C5C(0, &qword_1EA90D428, off_1E70BA990);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = v4;

  v18(v14, v10, v8, v2, v15);

  sub_1883F8750();
}

uint64_t CKContainer.shareParticipants(forUserRecordIDs:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845E7C4()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845E880(v5, v6, v7);
}

uint64_t sub_18845E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845E898()
{
  sub_1883F78E0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1883FDD2C();
  sub_1883F8724(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  sub_1883F9758(v5);
  sub_18844E6FC(&qword_1EA90D430, &qword_1886F7938);
  sub_1883FE558();
  *v1 = v6;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t CKContainer.shareParticipants(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845E980()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845EA3C(v5, v6, v7);
}

uint64_t sub_18845EA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845EA54()
{
  sub_1883F78E0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1883FDD2C();
  sub_1883F8724(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  sub_1883F9758(v5);
  sub_18844E6FC(&qword_1EA90D410, &qword_1886F7928);
  sub_1883FE558();
  *v1 = v6;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t CKContainer.fetchShareMetadatas(for:completionHandler:)(uint64_t a1)
{
  v3 = [v1 implementation];
  v4 = [v1 convenienceConfiguration];
  type metadata accessor for URL();
  sub_1883F4C5C(0, &qword_1EA90D390, off_1E70BA190);
  sub_188461F84();
  v5 = Dictionary.init(dictionaryLiteral:)();
  sub_18845EC28(a1, v5);
}

uint64_t sub_18845EC28(uint64_t a1, uint64_t a2)
{
  sub_1883F4C5C(0, &qword_1EA90D408, off_1E70BA320);

  v3 = sub_188462088();
  if (*(a2 + 16))
  {
    sub_188462E54(a2, v3);
  }

  sub_1883F7B88();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC8];

  CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter(sub_188462EF4, v4);
  sub_1883F7E80();
  v5 = swift_allocObject();
  sub_18840AF5C(v5);

  v6 = sub_188405278();
  v8 = CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.setter(v6, v7);
  sub_1883FEC38(v8, sel__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_);
}

uint64_t CKContainer.shareMetadatas(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845ED70()
{
  sub_1883F78E0();
  v1 = v0[3];
  v0[4] = [v1 implementation];
  v2 = [v1 convenienceConfiguration];
  v0[5] = v2;
  type metadata accessor for URL();
  sub_1883F4C5C(0, &qword_1EA90D390, off_1E70BA190);
  sub_188461F84();
  v3 = Dictionary.init(dictionaryLiteral:)();
  v0[6] = v3;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_18845EEA0;
  v6 = v0[2];
  v5 = v0[3];

  return sub_18845F03C(v6, v3, v5, v2);
}

uint64_t sub_18845EEA0()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];
    v14 = v3[4];

    v15 = sub_1883FA044();

    return v16(v15);
  }
}

uint64_t sub_18845EFD4()
{
  sub_1883F7120();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  sub_1883F816C();
  v5 = v0[8];

  return v4();
}

uint64_t sub_18845F03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return sub_1883F7178();
}

uint64_t sub_18845F058()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  sub_18844E6FC(&qword_1EA90D3F8, &qword_1886F7918);
  sub_1883FE558();
  *v7 = v8;
  v7[1] = sub_18845F168;
  sub_1883F7FD8();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18845F168()
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

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18845F284()
{
  sub_1883F7120();
  v1 = *(v0 + 64);

  sub_1883F816C();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t CKContainer.shareMetadatas(for:invitationTokensByShareURL:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1883F7178();
}

uint64_t sub_18845F2F8()
{
  sub_1883F7120();
  v1 = v0[4];
  v0[5] = [v1 implementation];
  v2 = [v1 convenienceConfiguration];
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_18845F3D8;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_18845F03C(v6, v4, v5, v2);
}

uint64_t sub_18845F3D8()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = sub_1883FA044();

    return v14(v13);
  }
}

uint64_t sub_18845F504()
{
  sub_1883F7120();
  v1 = *(v0 + 40);

  sub_1883F816C();
  v3 = *(v0 + 64);

  return v2();
}

void sub_18845F57C()
{
  sub_1883FDE94();
  v4 = v3;
  v6 = v5;
  v7 = [v1 implementation];
  v8 = [v1 convenienceConfiguration];
  v0(v6, v1, v8, v4, v2);
}

uint64_t sub_18845F62C()
{
  sub_1883FF090();
  sub_1883F4C5C(0, &qword_1EA90D3F0, off_1E70B9F90);

  v0 = sub_188460FB8();
  sub_1883F7B88();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC8];

  CKAcceptSharesOperation.perShareResultBlock.setter(sub_188462DE8, v1);
  sub_1883F7E80();
  v2 = swift_allocObject();
  sub_18840AF5C(v2);

  v3 = sub_188405278();
  v5 = CKAcceptSharesOperation.acceptSharesResultBlock.setter(v3, v4);
  sub_1883FEC38(v5, sel__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_);
}

uint64_t CKContainer.accept(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845F764()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845F820(v5, v6, v7);
}

uint64_t sub_18845F820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845F838()
{
  sub_1883F78E0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1883FDD2C();
  sub_1883F8724(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  sub_1883F9758(v5);
  sub_18844E6FC(&qword_1EA90D3E0, &qword_1886F7908);
  sub_1883FE558();
  *v1 = v6;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18845F924()
{
  sub_1883FF090();
  sub_1883F4C5C(0, &qword_1EA90D3D0, off_1E70BA160);

  v0 = sub_188460FB8();
  sub_1883F7B88();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC8];

  CKDeclineSharesOperation.perShareResultBlock.setter(sub_188462D74, v1);
  sub_1883F7E80();
  v2 = swift_allocObject();
  sub_18840AF5C(v2);

  v3 = sub_188405278();
  v5 = CKDeclineSharesOperation.declineSharesResultBlock.setter(v3, v4);
  sub_1883FEC38(v5, sel__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_);
}

uint64_t CKContainer.decline(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845FA5C()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845FB18(v5, v6, v7);
}

uint64_t sub_18845FB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845FB30()
{
  sub_1883F78E0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1883FDD2C();
  sub_1883F8724(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  sub_1883F9758(v5);
  sub_18844E6FC(&qword_1EA90D3C0, &qword_1886F78F8);
  sub_1883FE558();
  *v1 = v6;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t CKContainer.requestShareAccess(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_18845FC18()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  sub_1884036E8([v1 implementation]);
  sub_1883F856C([v1 convenienceConfiguration]);
  v2 = swift_task_alloc();
  v3 = sub_1883F8B08(v2);
  *v3 = v4;
  v5 = sub_1883F9B98(v3);

  return sub_18845FCD4(v5, v6, v7);
}

uint64_t sub_18845FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18845FCEC()
{
  sub_1883F78E0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1883FDD2C();
  sub_1883F8724(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  sub_1883F9758(v5);
  sub_18844E6FC(&qword_1EA90D3A0, &qword_1886F78E0);
  sub_1883FE558();
  *v1 = v6;
  v1[1] = sub_18845D7E4;
  sub_1883F9148();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18845FDC0()
{
  sub_1883FF090();
  sub_1883F4C5C(0, &qword_1EA90D470, off_1E70BA1A8);

  v0 = sub_188460FB8();
  sub_1883F7B88();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  v8[4] = sub_188463180;
  v8[5] = v1;
  sub_1883F7188();
  v8[1] = 1107296256;
  v8[2] = sub_18845FFA8;
  v8[3] = &unk_1EFA26898;
  v2 = _Block_copy(v8);

  [v0 setUserIdentityDiscoveredBlock_];
  _Block_release(v2);
  sub_1883F7E80();
  v3 = swift_allocObject();
  sub_18840AF5C(v3);

  v4 = sub_188405278();
  v6 = CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.setter(v4, v5);
  sub_1883FEC38(v6, sel__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_);
}

uint64_t sub_18845FF44(void *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_18846FE34(a1, a2);
  return swift_endAccess();
}

void sub_18845FFA8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

uint64_t sub_1884601D0@<X0>(uint64_t *a1@<X0>, SEL *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  format = a3;
  v68 = a2;
  v63 = a4;
  v4 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *a1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v7 = ~v10;
    v6 = v4 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v4 + 64);
    v9 = *a1;
  }

  v13 = 0;
  v62 = v7;
  v14 = (v7 + 64) >> 6;
  v64 = MEMORY[0x1E69E7CC8];
  *&v15 = 138412290;
  *v66 = v15;
  while (2)
  {
    v16 = v13;
    if ((v9 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        if (!__CocoaDictionary.Iterator.next()())
        {
          goto LABEL_35;
        }

        v25 = v24;
        sub_1883F4C5C(0, &qword_1EA90D428, off_1E70BA990);
        swift_dynamicCast();
        v22 = *v75;
        v74 = v25;
        sub_1883F4C5C(0, &qword_1EA90D480, off_1E70BA988);
        swift_dynamicCast();
        v23 = *v75;
        v13 = v16;
        v19 = v8;
        if (!*v75)
        {
          goto LABEL_35;
        }

LABEL_19:
        v72 = v19;
        v26 = v6;
        v27 = v9;
        v28 = sub_188463094(v22, v68);
        if (v29)
        {
          break;
        }

        v69 = v23;
        if (qword_1ED4B5C68 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_1883FDE5C(v30, qword_1ED4B5C70);
        v31 = v22;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = v66[0];
          *(v34 + 4) = v31;
          *v35 = v22;
          v36 = v31;
          _os_log_impl(&dword_1883EA000, v32, v33, format, v34, 0xCu);
          sub_188462FE0(v35);
          sub_1883F7B60();
          sub_1883F7B60();
          v31 = v32;
          v32 = v36;
        }

        v9 = v27;

        v16 = v13;
        v8 = v72;
        v6 = v26;
        if ((v9 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }
      }

      v37 = v28;
      v38 = v29;
      v70 = v23;
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      *v76 = v64;
      v39 = sub_188420F2C(v37, v38);
      LODWORD(v64) = v40;
      if (__OFADD__(*(*v76 + 16), (v40 & 1) == 0))
      {
        goto LABEL_37;
      }

      v41 = v39;
      v42 = sub_18844E6FC(&qword_1EA90D498, &unk_1886F7990);
      if (sub_188405D10(v42, v43, v44, v45, v46, v47, v48, v49, v60, isUnique, v62, v63, v64, v66[0], v66[1], format, v68, v70, v72, v74, v76[0]))
      {
        v50 = sub_188420F2C(v37, v38);
        if ((v65 & 1) != (v51 & 1))
        {
          goto LABEL_39;
        }

        v41 = v50;
        if ((v65 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if ((v65 & 1) == 0)
      {
LABEL_30:
        sub_188405670(*v75 + 8 * (v41 >> 6));
        v53 = (v52 + 16 * v41);
        *v53 = v37;
        v53[1] = v38;
        *(*(*v75 + 56) + 8 * v41) = v71;

        v54 = *(*v75 + 16);
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_38;
        }

        v64 = *v75;
        *(*v75 + 16) = v56;
        goto LABEL_34;
      }

      v64 = *v75;
      v57 = *(*v75 + 56);
      v58 = *(v57 + 8 * v41);
      *(v57 + 8 * v41) = v71;

LABEL_34:
      v9 = v27;
      v6 = v26;
      v8 = v73;
      continue;
    }

    break;
  }

LABEL_11:
  v17 = v16;
  v18 = v8;
  v13 = v16;
  if (v8)
  {
LABEL_15:
    v19 = (v18 - 1) & v18;
    v20 = (v13 << 9) | (8 * __clz(__rbit64(v18)));
    v21 = *(*(v9 + 56) + v20);
    v22 = *(*(v9 + 48) + v20);
    v23 = v21;
    if (v22)
    {
      goto LABEL_19;
    }

LABEL_35:
    result = sub_1883F70C4();
    *v63 = v64;
  }

  else
  {
    while (1)
    {
      v13 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v13 >= v14)
      {
        goto LABEL_35;
      }

      v18 = *(v6 + 8 * v13);
      ++v17;
      if (v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1884607EC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = *a1;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  v54 = MEMORY[0x1E69E7CC8];
  v55 = v3;
  v56 = v11;
LABEL_8:
  v12 = v10;
  if ((v6 & 0x8000000000000000) != 0)
  {
    while (__CocoaDictionary.Iterator.next()())
    {
      sub_1883F4C5C(0, &qword_1EA90D428, off_1E70BA990);
      swift_dynamicCast();
      v18 = v57;
      sub_1883F4C5C(0, &qword_1EA90D480, off_1E70BA988);
      swift_dynamicCast();
      v19 = v57;
      v10 = v12;
      v15 = v5;
      if (!v57)
      {
        break;
      }

LABEL_17:
      v20 = [v18 userRecordID];
      if (v20)
      {
        v30 = v20;
        v31 = v54;
        v52 = v6;
        if ((v54 & 0xC000000000000001) != 0)
        {
          if (v54 >= 0)
          {
            v31 = (v54 & 0xFFFFFFFFFFFFFF8);
          }

          v32 = v19;
          v33 = v19;
          v34 = __CocoaSet.count.getter();
          if (__OFADD__(v34, 1))
          {
            goto LABEL_43;
          }

          v31 = sub_188510C74(v31, v34 + 1);
        }

        else
        {
          v32 = v19;
          v35 = v19;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v31;
        sub_188486398();
        v39 = v31[2];
        v40 = (v38 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
          goto LABEL_42;
        }

        v42 = v37;
        v43 = v38;
        sub_18844E6FC(&qword_1EA90D478, &qword_1886F7978);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v41))
        {
          sub_188486398();
          v6 = v52;
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_45;
          }

          v42 = v44;
        }

        else
        {
          v6 = v52;
        }

        v54 = v31;
        if (v43)
        {
          v46 = v31[7];
          v47 = *(v46 + 8 * v42);
          *(v46 + 8 * v42) = v32;
        }

        else
        {
          v31[(v42 >> 6) + 8] |= 1 << v42;
          *(v31[6] + 8 * v42) = v30;
          *(v31[7] + 8 * v42) = v32;

          v48 = v31[2];
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            goto LABEL_44;
          }

          v31[2] = v50;
        }

        v5 = v15;
        v3 = v55;
        v11 = v56;
        goto LABEL_8;
      }

      v21 = v19;
      v22 = v6;
      if (qword_1ED4B5C68 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1883FDE5C(v23, qword_1ED4B5C70);
      v24 = v18;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v18;
        v29 = v24;
        _os_log_impl(&dword_1883EA000, v25, v26, "Unexpected lookup info that lacks user record id: %@", v27, 0xCu);
        sub_188462FE0(v28);
        MEMORY[0x18CFD7E80](v28, -1, -1);
        MEMORY[0x18CFD7E80](v27, -1, -1);
        v24 = v25;
        v25 = v29;
      }

      v6 = v22;
      v3 = v55;

      v12 = v10;
      v5 = v15;
      v11 = v56;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_40;
  }

LABEL_9:
  v13 = v12;
  v14 = v5;
  v10 = v12;
  if (v5)
  {
LABEL_13:
    v15 = (v14 - 1) & v14;
    v16 = (v10 << 9) | (8 * __clz(__rbit64(v14)));
    v17 = *(*(v6 + 56) + v16);
    v18 = *(*(v6 + 48) + v16);
    v19 = v17;
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_40:
    result = sub_1883F70C4();
    *a2 = v54;
    return result;
  }

  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      goto LABEL_40;
    }

    v14 = *(v3 + 8 * v10);
    ++v13;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_188460CC8(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D468, &qword_1886F7970);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  sub_18845E680();
}

uint64_t sub_188460E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_1883F4C5C(0, &qword_1EA90D420, off_1E70BA330);

  v11 = sub_188460FB8();
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC8];

  CKFetchShareParticipantsOperation.perShareParticipantResultBlock.setter(sub_188462F44, v12);
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a4;
  v13[4] = a5;

  CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.setter(sub_188463240, v13);
  [v6 _scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_];
}

id sub_188460FB8()
{
  sub_1883FDE94();
  v3 = v2;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1883F4C5C(0, v3, v1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 *v0];

  return v6;
}

void sub_188461044(void *a1, char a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
  }

  v8 = sub_1883FB4B8();
  a4(v8);
  v9 = sub_1883FB4B8();
  sub_1884631E0(v9, v10);
}

uint64_t sub_1884610CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_18844E6FC(&qword_1EA90D418, &qword_1886F7930);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v18 - v13;
  (*(v10 + 16))(&v18 - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v14, v9);
  sub_188460E60(a3, a4, a5, sub_188462F30, v16);
}

void sub_1884613D8(id a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, id *, uint64_t, uint64_t))
{
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v17 = a1;
    a7(&v16, &v17, a5, a6);
  }

  v9 = sub_1883FB4B8();
  sub_1884631D4(v9, v10);
  v11 = sub_1883FB4B8();
  a3(v11);
  v12 = sub_1883FB4B8();
  sub_1884631E0(v12, v13);
  v14 = sub_1883FB4B8();
  sub_1884631E0(v14, v15);
}

uint64_t sub_188461468@<X0>(uint64_t *a1@<X0>, SEL *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  format = a3;
  v60 = a4;
  v4 = *a1;
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v69 = a2;
  v70 = v4;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC8];
  *&v12 = 138412290;
  *v61 = v12;
  while (2)
  {
    while (2)
    {
      v67 = v11;
      if (v8)
      {
        goto LABEL_9;
      }

      do
      {
LABEL_5:
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (v13 >= v9)
        {

          *v60 = v11;
          return result;
        }

        v8 = *(v5 + 8 * v13);
        ++v10;
      }

      while (!v8);
      v10 = v13;
LABEL_9:
      while (1)
      {
        v14 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v15 = v14 | (v10 << 6);
        v16 = *(*(v70 + 48) + 8 * v15);
        v17 = *(v70 + 56) + 16 * v15;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = v16;
        v21 = sub_188405284();
        sub_188449260(v21);
        v22 = sub_188463094(v20, v69);
        HIDWORD(v71) = v19;
        if (v23)
        {
          break;
        }

        if (qword_1ED4B5C68 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_1883FDE5C(v24, qword_1ED4B5C70);
        v25 = v20;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = v61[0];
          *(v28 + 4) = v25;
          *v29 = v25;
          v64 = v25;
          _os_log_impl(&dword_1883EA000, v26, v27, format, v28, 0xCu);
          sub_188462FE0(v29);
          sub_1883F7B60();
          sub_1883F7B60();
          v25 = v26;
          v26 = v64;
        }

        sub_18844CAFC(v18);

        v11 = v67;
        if (!v8)
        {
          goto LABEL_5;
        }
      }

      v30 = v22;
      v31 = v23;
      v32 = sub_188405284();
      sub_188449260(v32);
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      v65 = sub_188420F2C(v30, v31);
      LODWORD(v67) = v33;
      if (__OFADD__(*(v11 + 16), (v33 & 1) == 0))
      {
        goto LABEL_26;
      }

      v34 = sub_18844E6FC(&qword_1EA90D458, &qword_1886F7960);
      if (!sub_188405D10(v34, v35, v36, v37, v38, v39, v40, v41, v58, isUnique, v60, v61[0], v61[1], v62, format, v65, v67, v69, v70, v71, v11))
      {
        v44 = BYTE4(v71);
        if ((v68 & 1) == 0)
        {
          break;
        }

        goto LABEL_23;
      }

      v42 = sub_188420F2C(v30, v31);
      v44 = BYTE4(v71);
      if ((v68 & 1) != (v43 & 1))
      {
        goto LABEL_28;
      }

      v66 = v42;
      if (v68)
      {
LABEL_23:

        v11 = *v72;
        v53 = *(*v72 + 56) + 16 * v66;
        v54 = *v53;
        v55 = *(v53 + 8);
        *v53 = v18;
        *(v53 + 8) = v44;
        sub_18844CAFC(v54);
        v56 = sub_188405284();
        sub_18844CAFC(v56);

        continue;
      }

      break;
    }

    v11 = *v72;
    sub_188405670(*v72 + 8 * (v66 >> 6));
    v47 = (v45 + 16 * v46);
    *v47 = v30;
    v47[1] = v31;
    v48 = *(*v72 + 56) + 16 * v46;
    *v48 = v18;
    *(v48 + 8) = v44;
    v49 = sub_188405284();
    sub_18844CAFC(v49);

    v50 = *(*v72 + 16);
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (!v51)
    {
      *(*v72 + 16) = v52;
      continue;
    }

    break;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_18846198C(id a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t *__return_ptr, id *))
{
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v15 = a1;
    a5(&v14, &v15);
  }

  v7 = sub_1883FE28C();
  sub_1884631D4(v7, v8);
  v9 = sub_1883FE28C();
  a3(v9);
  v10 = sub_1883FE28C();
  sub_1884631E0(v10, v11);
  v12 = sub_1883FE28C();
  sub_1884631E0(v12, v13);
}

uint64_t sub_188461A14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v48 = MEMORY[0x1E69E7CC8];
  v9 = &selRef_unsignedShortValue;
  v50 = v2;
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v8 << 6);
    v13 = *(*(v2 + 48) + 8 * v12);
    v14 = *(v2 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = v13;
    sub_188449260(v15);
    v18 = [v17 v9[52]];
    v52 = v16;
    v51 = v15;
    if (v18)
    {
      v28 = v18;
      sub_188449260(v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v48;
      sub_188486398();
      v31 = v48[2];
      v49 = v32;
      v33 = (v32 & 1) == 0;
      v34 = v31 + v33;
      if (__OFADD__(v31, v33))
      {
        goto LABEL_26;
      }

      v35 = v30;
      sub_18844E6FC(&qword_1EA90D440, &qword_1886F7948);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
      {
        sub_188486398();
        v38 = v49;
        v9 = &selRef_unsignedShortValue;
        if ((v49 & 1) != (v37 & 1))
        {
          goto LABEL_28;
        }

        v35 = v36;
      }

      else
      {
        v9 = &selRef_unsignedShortValue;
        v38 = v49;
      }

      v48 = v53;
      if (v38)
      {
        v39 = v53[7] + 16 * v35;
        v40 = *v39;
        v41 = *(v39 + 8);
        *v39 = v15;
        *(v39 + 8) = v52;
        sub_18844CAFC(v40);

        sub_18844CAFC(v15);
        v2 = v50;
      }

      else
      {
        v53[(v35 >> 6) + 8] |= 1 << v35;
        *(v53[6] + 8 * v35) = v28;
        v42 = v53[7] + 16 * v35;
        *v42 = v15;
        *(v42 + 8) = v52;
        sub_18844CAFC(v15);

        v43 = v53[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_27;
        }

        v53[2] = v45;
        v2 = v50;
      }
    }

    else
    {
      if (qword_1ED4B5C68 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1883FDE5C(v19, qword_1ED4B5C70);
      v20 = v17;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        *(v23 + 4) = v20;
        *v24 = v20;
        v25 = v20;
        _os_log_impl(&dword_1883EA000, v21, v22, "Unexpected lookup info that lacks user record id: %@", v23, 0xCu);
        sub_188462FE0(v24);
        v26 = v24;
        v2 = v50;
        MEMORY[0x18CFD7E80](v26, -1, -1);
        v27 = v23;
        v9 = &selRef_unsignedShortValue;
        MEMORY[0x18CFD7E80](v27, -1, -1);
        v20 = v21;
        v21 = v25;
      }

      sub_18844CAFC(v51);
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      *a2 = v48;
      return result;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_188461DEC(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D438, &qword_1886F7940);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  sub_18845E680();
}

unint64_t sub_188461F84()
{
  result = qword_1EA90D398;
  if (!qword_1EA90D398)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D398);
  }

  return result;
}

_BYTE *_s11ApplicationOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_188462088()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithShareURLs_];

  return v2;
}

uint64_t sub_188462100(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  sub_188449260(a2);
  v8 = *(a4 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a4 + 16);
  sub_1884AE418(a2, a3 & 1, a1);
  *(a4 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_188462194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = a6;
  v9 = sub_18844E6FC(&qword_1EA90D400, &qword_1886F7920);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  (*(v10 + 16))(v18 - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v14, v9);
  sub_18845EC28(a3, a4);
}

uint64_t sub_188462308(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D3E8, &qword_1886F7910);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  sub_18845F62C();
}

uint64_t sub_188462470(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, void), void (*a6)(uint64_t, void, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a2, a3 & 1);
  v12 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a4 + 16);
  a6(a2, a3 & 1, a1, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v15;
  return swift_endAccess();
}

uint64_t sub_18846251C(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D3C8, &qword_1886F7900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  sub_18845F924();
}

void sub_188462684()
{
  sub_1883FF090();
  sub_1883F4C5C(0, &qword_1EA90D3B0, off_1E70BA780);

  v4 = sub_188462088();
  sub_1883F7E80();
  v3 = swift_allocObject();
  sub_18840AF5C(v3);

  CKShareRequestAccessOperation.shareAccessRequestResultBlock.setter(sub_188462CAC, v3);
  [v1 _scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_];
}

void sub_188462768(void *a1, int a2, uint64_t a3, void (*a4)(void *, void), uint64_t a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  if (a2)
  {
    v19 = a1;
LABEL_17:
    a4(a1, a2 & 1);
    sub_1884631E0(a1, a2 & 1);
    return;
  }

  v45 = a5;
  v46 = a4;
  v47 = a2;
  v20 = *(a3 + 16);
  if (!v20)
  {
    a1 = MEMORY[0x1E69E7CC8];
LABEL_16:
    LOBYTE(a2) = v47;
    a4 = v46;
    goto LABEL_17;
  }

  v22 = *(v15 + 16);
  v21 = v15 + 16;
  v23 = a3 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
  v49 = *(v21 + 56);
  v50 = v22;
  a1 = MEMORY[0x1E69E7CC8];
  v51 = v21;
  v48 = (v21 - 8);
  while (1)
  {
    v24 = v50;
    (v50)(v18, v23, v10, v16);
    v25 = v18;
    v24(v13, v18, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = a1;
    sub_1884863DC();
    v29 = a1[2];
    v30 = (v28 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    v33 = v28;
    sub_18844E6FC(&qword_1EA90D3B8, &qword_1886F78F0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v31))
    {
      sub_1884863DC();
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_20;
      }

      v32 = v34;
    }

    v18 = v25;
    a1 = v52;
    if (v33)
    {
      v36 = v52[7] + 16 * v32;
      v37 = *v36;
      v38 = *(v36 + 8);
      *v36 = 0;
      *(v36 + 8) = 0;
      sub_188462CBC(v37, v38);
      v39 = *v48;
      (*v48)(v13, v10);
      v39(v25, v10);
    }

    else
    {
      v52[(v32 >> 6) + 8] |= 1 << v32;
      v50((a1[6] + v32 * v49), v13, v10);
      v40 = a1[7] + 16 * v32;
      *v40 = 0;
      *(v40 + 8) = 0;
      v41 = *v48;
      (*v48)(v13, v10);
      v41(v25, v10);
      v42 = a1[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_19;
      }

      a1[2] = v44;
    }

    v23 += v49;
    if (!--v20)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_188462AA4(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D3A8, &qword_1886F78E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  sub_188462684();
}

uint64_t sub_188462C0C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_188462AA4(a1);
}

uint64_t sub_188462C18(void *a1, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    v7 = a1;
    sub_18844E6FC(a4, a5);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_18844E6FC(a4, a5);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_188462CBC(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_188462CC8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_18846251C(a1);
}

uint64_t sub_188462CE8()
{
  sub_1883FDE94();
  v4 = v3;
  v6 = v5;
  v9 = *(sub_18844E6FC(v7, v8) - 8);
  return sub_188462C18(v6, v4 & 1, v1 + ((*(v9 + 80) + 16) & ~*(v9 + 80)), v2, v0);
}

id sub_188462DBC(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_188462DC8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_188462308(a1);
}

void sub_188462E54(uint64_t a1, void *a2)
{
  type metadata accessor for URL();
  sub_1883F4C5C(0, &qword_1EA90D390, off_1E70BA190);
  sub_188461F84();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [a2 setShareInvitationTokensByShareURL_];
}

uint64_t sub_188462F8C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_188461DEC(a1);
}

uint64_t sub_188462FE0(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90DC70, &unk_1886FA190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_188463094(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_18846312C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_188460CC8(a1);
}

id sub_1884631D4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1884631E0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1884632A8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

uint64_t CKDatabaseScope.description.getter(uint64_t a1)
{
  if (a1 == 3)
  {
    return 0x6465726168732ELL;
  }

  v6[4] = v1;
  v6[5] = v2;
  if (a1 == 2)
  {
    return 0x657461766972702ELL;
  }

  if (a1 == 1)
  {
    return 0x63696C6275702ELL;
  }

  if (qword_1EA90C8A0 != -1)
  {
    swift_once();
  }

  if (qword_1EA90C8A8 == a1)
  {
    return 0x7A696E6167726F2ELL;
  }

  if (qword_1EA90CB18 != -1)
  {
    swift_once();
  }

  if (qword_1EA90D4A0 == a1)
  {
    return 0x6E776F6E6B6E752ELL;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v6, "unrecognized(");
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18CFD5140](v5);

  MEMORY[0x18CFD5140](41, 0xE100000000000000);
  return v6[0];
}

void CKDatabase.undeprecated_perform(_:inZoneWith:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[4] = a3;
  v7[5] = a4;
  sub_1883F7188();
  v7[1] = 1107296256;
  v7[2] = sub_188463674;
  v7[3] = &unk_1EFA26988;
  v4 = _Block_copy(v7);

  v5 = sub_1883FD768();
  [v5 v6];
  _Block_release(v4);
}

uint64_t sub_188463674(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t CKDatabase.records(matching:inZoneWith:)()
{
  sub_1883F7120();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_18844E6FC(&qword_1EA90D4A8, &qword_1886F79B8);
  v1[22] = v4;
  sub_1883F8620(v4);
  v1[23] = v5;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1884637D8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  v12 = v1[21];
  v13 = v1[20];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  sub_188413778();
  v1[17] = v8;
  v9 = sub_188403664(v1 + 14);
  sub_18844E6FC(&qword_1EA90D4B0, &unk_1886F79C0);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  CheckedContinuation.init(continuation:function:)();
  (*(v6 + 32))(v9, v7, v8);
  sub_1883F83B4();
  v1[11] = 1107296256;
  v1[12] = sub_188463B64;
  v1[13] = &unk_1EFA269B0;
  [v12 performQuery:v11 inZoneWithID:v13 completionHandler:v4];
  (*(v6 + 8))(v9, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_188463990()
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

uint64_t sub_188463A90()
{
  sub_1883F7120();
  v1 = v0[24];
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_188463AF8()
{
  sub_1883F78E0();
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  swift_willThrow();

  sub_1883F816C();
  v4 = *(v0 + 200);

  return v3();
}

void sub_188463B64(uint64_t a1, uint64_t a2, void *a3)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_1884E0A0C();
  }

  else
  {
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1884E0B7C();
  }
}

void CKDatabase.fetch(withSubscriptionID:completionHandler:)()
{
  sub_1883FDE94();
  v2 = MEMORY[0x18CFD5010]();
  v7 = v1;
  v8 = v0;
  sub_1883F7188();
  v6[1] = 1107296256;
  v6[2] = sub_18845C9D8;
  v6[3] = &unk_1EFA269D8;
  v3 = _Block_copy(v6);

  v4 = sub_1883FD768();
  [v4 v5];
  _Block_release(v3);
}

uint64_t CKDatabase.subscription(for:)()
{
  sub_1883F7120();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_18844E6FC(&qword_1EA90D4B8, &qword_1886F79D8);
  v1[22] = v4;
  sub_1883F8620(v4);
  v1[23] = v5;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_188463D94()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v12 = v1[21];
  v7 = MEMORY[0x18CFD5010](v1[19], v1[20]);
  v1[25] = v7;
  v1[2] = v1;
  v1[7] = v3;
  sub_188413778();
  v1[17] = v6;
  v8 = sub_188403664(v1 + 14);
  sub_1883F4C5C(0, &qword_1EA90CA90, off_1E70BA7C8);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_188404BC0();
  CheckedContinuation.init(continuation:function:)();
  v9 = sub_1883FE814(v4);
  v10(v9);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_188464050;
  v1[13] = &unk_1EFA26A00;
  [v12 fetchSubscriptionWithID:v7 completionHandler:?];
  (*(v4 + 8))(v8, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_188463F50()
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

void sub_188464050(uint64_t a1, void *a2, void *a3)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    sub_1884E0A34();
  }

  else if (a2)
  {
    v5 = a2;

    sub_1884E0B90();
  }

  else
  {
    __break(1u);
  }
}

void CKDatabase.delete(withSubscriptionID:completionHandler:)()
{
  sub_1883FDE94();
  v2 = MEMORY[0x18CFD5010]();
  v7 = v1;
  v8 = v0;
  sub_1883F7188();
  v6[1] = 1107296256;
  v6[2] = sub_1884641A8;
  v6[3] = &unk_1EFA26A28;
  v3 = _Block_copy(v6);

  v4 = sub_1883FD768();
  [v4 v5];
  _Block_release(v3);
}

uint64_t sub_1884641A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t CKDatabase.deleteSubscription(withID:)()
{
  sub_1883F7120();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_18844E6FC(&qword_1EA90D4C0, &qword_1886F79E8);
  v1[23] = v4;
  sub_1883F8620(v4);
  v1[24] = v5;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_188464300()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v13 = v1[22];
  v8 = MEMORY[0x18CFD5010](v1[20], v1[21]);
  v1[26] = v8;
  v1[2] = v1;
  v1[7] = v4;
  sub_188413778();
  v1[17] = v7;
  v9 = sub_188403664(v1 + 14);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_188404BC0();
  CheckedContinuation.init(continuation:function:)();
  v10 = sub_1883FE814(v6);
  v11(v10);
  sub_1883F83B4();
  v1[11] = 1107296256;
  v1[12] = sub_188464684;
  v1[13] = &unk_1EFA26A50;
  [v13 deleteSubscriptionWithID:v8 completionHandler:v3];
  (*(v6 + 8))(v9, v7);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_188464494()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_188464594()
{
  sub_1883F78E0();
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_188464610()
{
  sub_1883F78E0();
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  swift_willThrow();

  sub_1883F816C();
  v5 = v0[27];

  return v4();
}

void sub_188464684(uint64_t a1, uint64_t a2, void *a3)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_1884E0A5C();
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1884E0BB8();
  }
}

void CKDatabase.configuredWith<A>(configuration:group:body:)(void *a1, void *a2, void (*a3)(void))
{
  v4 = v3;
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v8 = a2;
  v9 = a1;
  v10 = sub_1884296E8(a1, a2);
  v11 = [v4 container];
  if (v11)
  {
    v12 = v11;
    swift_getObjectType();

    v13 = [v4 container];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 implementation];

      v16 = v10;
      v17 = sub_1884276B8(v15, v10);
      v18 = [v17 databaseWithDatabaseScope_];
      a3();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1884648A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return sub_1883F7178();
}

id sub_1884648C8()
{
  sub_1883FB4AC();
  sub_18846D2F0();
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v4 = v1;
  v5 = v2;
  v6 = sub_1883FDFD0();
  sub_188404A1C(v6);
  result = [v0 container];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = v3[4];
  swift_getObjectType();

  result = sub_18841BAB8();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = v3[4];
  v12 = [result implementation];

  v13 = v1;
  v14 = sub_1884276B8(v12, v1);
  v3[10] = v14;
  v3[11] = [v14 databaseWithDatabaseScope_];
  v15 = swift_task_alloc();
  v3[12] = v15;
  *v15 = v3;
  v15[1] = sub_188464A54;
  v17 = v3[7];
  v16 = v3[8];
  v18 = sub_1883FF484(v3[6]);

  return sub_18846EB78(v18, v19, v20);
}

uint64_t sub_188464A54()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v8 = *(v7 + 96);
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  sub_1883F9BB4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_188464B5C()
{
  sub_1883FB4AC();
  sub_1883FF49C();

  v7 = *(v3 + 8);
  v8 = *(v3 + 112);
  sub_1883FB5FC();

  __asm { BRAA            X2, X16 }
}

void sub_188464BE0()
{
  sub_1883FB4AC();
  sub_1883FF49C();

  sub_1883F816C();
  v7 = *(v3 + 104);
  sub_1883FB5FC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188464C5C()
{
  sub_1883F653C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1883F78EC();
  v11 = v10;
  sub_1883F7B78();
  *v12 = v11;
  v14 = *(v13 + 80);
  v15 = *v1;
  sub_1883F7110();
  *v16 = v15;
  *(v11 + 88) = v0;

  if (!v0)
  {
    *(v11 + 120) = v3 & 1;
    *(v11 + 96) = v5;
    *(v11 + 104) = v7;
    *(v11 + 112) = v9;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_188464D90()
{
  sub_1883F7120();
  sub_188411038();

  v3 = *(v2 + 8);
  v5 = *(v2 + 104);
  v4 = *(v2 + 112);
  v6 = *(v2 + 96);
  v7 = *(v2 + 120);

  return v3(v4, v5, v6, v7);
}

uint64_t sub_188464E00()
{
  sub_1883F7120();
  sub_188411038();

  sub_1883F816C();
  v4 = *(v2 + 88);

  return v3();
}

uint64_t sub_188464E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1883F7178();
}

id sub_188464E80()
{
  sub_1883FB4E4();
  v19 = v3;
  sub_1883F653C();
  sub_18846D2F0();
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v4 = v0;
  v5 = v1;
  v6 = sub_1883FDFD0();
  result = sub_18840AD04(v6);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = v2[4];
  swift_getObjectType();

  result = sub_18841BAB8();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = result;
  v12 = v2[4];
  v11 = v2[5];
  [result implementation];

  v13 = v0;
  v14 = sub_1883FDBA8();
  sub_1883FE210(v14);
  sub_1883FE990([v0 databaseWithDatabaseScope_]);
  v15 = *(v11 + 4);
  v16 = swift_task_alloc();
  v2[10] = v16;
  *v16 = v2;
  v17 = sub_1884036F4(v16);

  return v18(v17);
}

uint64_t sub_188464FFC()
{
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  sub_1883F78EC();
  v7 = v6;
  sub_1883F7B78();
  *v8 = v7;
  v10 = *(v9 + 80);
  v11 = *v1;
  sub_1883F7110();
  *v12 = v11;
  v7[11] = v0;

  if (!v0)
  {
    v7[12] = v3;
    v7[13] = v5;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_188465114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1883F7178();
}

id sub_188465130()
{
  sub_1883FB4E4();
  v19 = v3;
  sub_1883F653C();
  sub_18846D2F0();
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v4 = v0;
  v5 = v1;
  v6 = sub_1883FDFD0();
  result = sub_18840AD04(v6);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = v2[4];
  swift_getObjectType();

  result = sub_18841BAB8();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = result;
  v12 = v2[4];
  v11 = v2[5];
  [result implementation];

  v13 = v0;
  v14 = sub_1883FDBA8();
  sub_1883FE210(v14);
  sub_1883FE990([v0 databaseWithDatabaseScope_]);
  v15 = *(v11 + 4);
  v16 = swift_task_alloc();
  v2[10] = v16;
  *v16 = v2;
  v17 = sub_1884036F4(v16);

  return v18(v17);
}

uint64_t sub_1884652AC()
{
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  sub_1883F78EC();
  v7 = v6;
  sub_1883F7B78();
  *v8 = v7;
  v10 = *(v9 + 80);
  v11 = *v1;
  sub_1883F7110();
  *v12 = v11;
  v7[11] = v0;

  if (!v0)
  {
    v7[12] = v3;
    v7[13] = v5;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1884653C4()
{
  sub_1883F7120();
  sub_188411038();

  v3 = v2[1];
  v5 = v2[12];
  v4 = v2[13];

  return v3(v4, v5);
}

uint64_t sub_18846542C()
{
  sub_1883F7120();
  sub_188411038();

  sub_1883F816C();
  v4 = *(v2 + 88);

  return v3();
}

uint64_t CKDatabase.configuredWith<A>(configuration:group:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_1883F7178();
}

id sub_1884654A8()
{
  sub_1883FB4E4();
  v23 = v1;
  sub_1883F653C();
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v5 = v3;
  v6 = v4;
  v7 = sub_1883FDFD0();
  sub_1883FE210(v7);
  result = [v2 container];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  v10 = v0[7];
  swift_getObjectType();

  result = sub_18841BAB8();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = v0[7];
  v13 = v0[5];
  v14 = [result implementation];

  v15 = v3;
  v16 = sub_1883FDBA8();
  sub_188404A1C(v16);
  v17 = [v3 databaseWithDatabaseScope_];
  v0[10] = v17;
  v22 = (v13 + *v13);
  v18 = v13[1];
  v19 = swift_task_alloc();
  v0[11] = v19;
  *v19 = v0;
  v19[1] = sub_188465688;
  v20 = v0[6];
  v21 = v0[2];

  return v22(v21, v17);
}

uint64_t sub_188465688()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_188465784()
{
  sub_1883F7120();
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884657EC()
{
  sub_1883F7120();
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);

  sub_1883F816C();
  v4 = *(v0 + 96);

  return v3();
}

uint64_t sub_18846586C()
{
  sub_1883FEFBC();
  sub_1883F4C5C(0, &unk_1EA90C110, off_1E70BA308);

  v0 = sub_18846D310();

  CKFetchRecordsOperation.desiredKeys.setter(v1);
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];

  v2 = sub_1883F8FF0();
  CKFetchRecordsOperation.perRecordResultBlock.setter(v2, v3);
  sub_1883F7E80();
  v4 = swift_allocObject();
  sub_1883F8B14(v4);

  v5 = sub_188405278();
  v7 = CKFetchRecordsOperation.fetchRecordsResultBlock.setter(v5, v6);
  sub_1883FEC38(v7, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);
}

uint64_t CKDatabase.records(for:desiredKeys:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1883F7178();
}

uint64_t sub_188465994()
{
  sub_1883F78E0();
  v2 = *(v1 + 32);
  sub_1883F856C([v2 implementation]);
  sub_18840C12C([objc_msgSend(v2 container)]);
  v3 = swift_task_alloc();
  v4 = sub_1884101CC(v3);
  *v4 = v5;
  v4[1] = sub_188465A7C;
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = sub_1884007BC();

  return sub_188465BAC(v8, v9, v10, v0);
}

uint64_t sub_188465A7C()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = sub_1883FA044();

    return v14(v13);
  }
}

uint64_t sub_188465BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return sub_1883F7178();
}

uint64_t sub_188465BC8()
{
  sub_1883F653C();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v10 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  v5 = sub_1883FE210(v4);
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  *(v5 + 32) = v10;
  *(v5 + 48) = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  sub_18844E6FC(&qword_1EA90D580, &qword_1886F7FA0);
  sub_1883FE558();
  *v7 = v8;
  v7[1] = sub_188465CD4;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_188465CD4()
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

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:completionHandler:)()
{
  sub_1883F9160();
  sub_188414720();
  v1 = [v0 implementation];
  v2 = [v0 container];
  [v2 convenienceConfiguration];

  sub_1883F8630();
  sub_1883FC628();
  sub_188465E84();

  sub_1883F8750();
}

uint64_t sub_188465E84()
{
  sub_1883F8AF0();
  sub_188410CD0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1883F4C5C(0, &qword_1EA90C668, off_1E70BA428);

  v20.is_nil = v5;
  CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v6, v20, v21);
  v8 = v7;
  [v7 setSavePolicy_];
  [v8 setAtomic_];
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];
  sub_1883F7B88();
  v9 = swift_allocObject();
  sub_1883FA6A8(v9);
  v10 = sub_1883F8FF0();
  CKModifyRecordsOperation.perRecordSaveBlock.setter(v10, v11);

  v12 = sub_188405278();
  CKModifyRecordsOperation.perRecordDeleteBlock.setter(v12, v13);
  sub_188405D30();
  v14 = swift_allocObject();
  sub_1883FB4C4(v14);

  v15 = sub_1883F7AB8();
  CKModifyRecordsOperation.modifyRecordsResultBlock.setter(v15, v16);
  sub_1883FEC38(v17, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);

  sub_1883F8178();
}

uint64_t CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 80) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return sub_1883F7178();
}

uint64_t sub_188466014()
{
  sub_1883F78E0();
  v1 = *(v0 + 40);
  *(v0 + 48) = [v1 implementation];
  v2 = [v1 container];
  v3 = [v2 convenienceConfiguration];
  *(v0 + 56) = v3;

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_188466114;
  v5 = *(v0 + 80);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);
  v9 = sub_1883FF484(*(v0 + 16));

  return sub_1884662A0(v9, v10, v11, v12, v13, v3);
}

uint64_t sub_188466114()
{
  sub_1883F78E0();
  sub_1883F8D90();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = sub_1883F917C();

    return v14(v13);
  }
}

uint64_t sub_188466240()
{
  sub_1883F7120();
  v1 = *(v0 + 48);

  sub_1883F816C();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1884662A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 104) = a4;
  *(v7 + 48) = a3;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  return sub_1883F7178();
}

uint64_t sub_1884662C0()
{
  sub_1883F653C();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 104);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  sub_18846D2E0(v6);
  *(v7 + 40) = v5;
  *(v7 + 48) = v3;
  *(v7 + 56) = v4;
  *(v7 + 64) = v2;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  sub_18844E6FC(&qword_1EA90D570, &qword_1886F7F90);
  sub_1883FE558();
  *v9 = v10;
  v9[1] = sub_1884663D4;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1884663D4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v9 = *(v3 + 80);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1884664F0()
{
  sub_1883F7120();
  v1 = *(v0 + 80);

  sub_1883F816C();
  v3 = *(v0 + 96);

  return v2();
}

void CKDatabase.fetch(withQuery:inZoneWith:desiredKeys:resultsLimit:completionHandler:)()
{
  sub_1883F9160();
  v1 = [v0 implementation];
  v2 = [v0 container];
  [v2 convenienceConfiguration];

  sub_1883F8630();
  sub_1883FC628();
  sub_18846660C();

  sub_1883F8750();
}

uint64_t sub_18846660C()
{
  sub_1883F8AF0();
  sub_188410CD0();
  v1 = v0;
  v3 = v2;
  v5 = [objc_allocWithZone(CKQueryOperation) initWithQuery_];
  [v5 setZoneID_];

  CKQueryOperation.desiredKeys.setter(v6);
  [v5 setResultsLimit_];
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];

  v7 = sub_1883F8FF0();
  CKQueryOperation.recordMatchedBlock.setter(v7, v8);
  sub_1883F7E80();
  v9 = swift_allocObject();
  sub_1883F8B14(v9);

  v10 = sub_188405278();
  v12 = CKQueryOperation.queryResultBlock.setter(v10, v11);
  sub_1883FEC38(v12, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);

  sub_1883F8178();
}

void CKDatabase.fetch(withCursor:desiredKeys:resultsLimit:completionHandler:)()
{
  sub_188404A04();
  sub_1883FDEF0();
  v1 = [v0 implementation];
  v2 = [v0 container];
  [v2 convenienceConfiguration];

  sub_1883FD9C4();
  sub_1883FDD44();
  sub_1884667E0();

  sub_1883FE1B8();
}

uint64_t sub_1884667E0()
{
  sub_1884055FC();
  v1 = v0;
  v3 = [objc_allocWithZone(CKQueryOperation) initWithCursor_];

  CKQueryOperation.desiredKeys.setter(v4);
  [v3 setResultsLimit_];
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];

  v5 = sub_1883F8FF0();
  CKQueryOperation.recordMatchedBlock.setter(v5, v6);
  sub_1883F7E80();
  v7 = swift_allocObject();
  sub_1883F8B14(v7);

  v8 = sub_188405278();
  v10 = CKQueryOperation.queryResultBlock.setter(v8, v9);
  sub_1883FEC38(v10, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);
}

uint64_t CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1883F7178();
}

uint64_t sub_188466914()
{
  sub_1883F78E0();
  v1 = v0[6];
  sub_1884041F4([v1 implementation]);
  v2 = [v1 container];
  v3 = [v2 convenienceConfiguration];
  v0[8] = v3;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_188466A0C;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = sub_1884007BC();

  return sub_188466B98(v9, v10, v11, v12, v13, v3);
}

uint64_t sub_188466A0C()
{
  sub_1883F78E0();
  sub_1883F8D90();
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
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    v13 = sub_1883F917C();

    return v14(v13);
  }
}

uint64_t sub_188466B38()
{
  sub_1883F7120();
  v1 = *(v0 + 56);

  sub_1883F816C();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_188466B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  return sub_1883F7178();
}

uint64_t sub_188466BB8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v9 = *(v0 + 32);
  v10 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v3;
  *(v4 + 48) = v10;
  *(v4 + 64) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  sub_18844E6FC(&qword_1EA90D560, &qword_1886F7F80);
  sub_1883FE558();
  *v6 = v7;
  v6[1] = sub_188466CD8;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_188466CD8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_188466DD8()
{
  sub_1883F7120();
  v1 = *(v0 + 88);

  sub_1883F816C();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t CKDatabase.records(continuingMatchFrom:desiredKeys:resultsLimit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1883F7178();
}

uint64_t sub_188466E4C()
{
  sub_1883F78E0();
  v1 = v0[5];
  v0[6] = [v1 implementation];
  v2 = [v1 container];
  v3 = [v2 convenienceConfiguration];
  v0[7] = v3;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_188466F48;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = sub_1883FF484(v0[2]);

  return sub_188467074(v8, v9, v10, v11, v3);
}

uint64_t sub_188466F48()
{
  sub_1883F78E0();
  sub_1883F8D90();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = sub_1883F917C();

    return v14(v13);
  }
}

uint64_t sub_188467074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return sub_1883F7178();
}

uint64_t sub_188467090()
{
  sub_1883FB4E4();
  v12 = v1;
  sub_1883F653C();
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v11 = *(v0 + 48);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  *(v6 + 40) = v11;
  *(v6 + 56) = v3;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  sub_18844E6FC(&qword_1EA90D560, &qword_1886F7F80);
  sub_1883FE558();
  *v8 = v9;
  v8[1] = sub_1884671A4;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1884671A4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v9 = *(v3 + 80);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1884672BC()
{
  sub_1884057B8();
  sub_1883F4C5C(0, &qword_1EA90C108, off_1E70BA2F8);

  v0 = sub_18846AF9C();
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];

  v1 = sub_1883F8FF0();
  CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter(v1, v2);
  sub_1883F7E80();
  v3 = swift_allocObject();
  sub_1883F8B14(v3);

  v4 = sub_188405278();
  v6 = CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter(v4, v5);
  sub_1883FEC38(v6, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);
}