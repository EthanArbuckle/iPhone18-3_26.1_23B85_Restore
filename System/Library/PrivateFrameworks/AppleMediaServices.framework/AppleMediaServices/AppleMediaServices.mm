id sub_100002614()
{
  if (qword_1002DA598 != -1)
  {
    swift_once();
  }

  v1 = qword_100310610;

  return v1;
}

uint64_t sub_100002670(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  sub_1000062AC();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = sub_1000050CC();

  return sub_100004754(v10, v11);
}

uint64_t sub_100002750()
{
  sub_100007F3C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100005C94(v3);
  *v4 = v5;
  v4[1] = sub_100013D70;
  v6 = sub_10000DFBC();

  return v7(v6);
}

uint64_t sub_100002840@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_1000028BC@<X0>(char a1@<W8>)
{
  *(v1 + 56) = a1;

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

void sub_100002900()
{
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v6 = v0[27];
  v5 = v0[25];

  sub_10011DE50();
}

uint64_t sub_100002934()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = (*(v0 + 288) + 32) & ~*(v0 + 288);

  return static Log.tsDataSync.getter();
}

uint64_t sub_1000029A4()
{
  v2 = v0[225];
  v3 = v0[222];
  v4 = v0[221];
  v5 = v0[220];
  v6 = v0[219];
}

void sub_1000029C8()
{

  sub_100005DB0();
}

uint64_t sub_1000029E8()
{

  return sub_10014FE48();
}

void sub_100002A38(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  *a1 = v2;
  a1[1] = v3;
}

void *sub_100002A44@<X0>(uint64_t a1@<X8>, void *__src, char __dst)
{
  v6 = (a1 << 10) | (16 * __clz(__rbit64(v4)));
  v7 = (*(v3 + 48) + v6);
  v8 = *v7;
  v9 = v7[1];
  v10 = (*(v3 + 56) + v6);
  v11 = *v10;
  v12 = v10[1];

  return memcpy(&__dst, __src, 0x48uLL);
}

uint64_t sub_100002AA4()
{
  *(v1 - 192) = v0;
  *(v1 - 184) = 0;
  return v1 - 264;
}

uint64_t sub_100002AE0()
{

  return swift_allocObject();
}

uint64_t sub_100002B00(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100013EAC;

  return v7(a1);
}

uint64_t sub_100002BF8()
{
  sub_10000DB4C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100005C94(v5);
  *v6 = v7;
  v6[1] = sub_100013D70;
  v8 = sub_10000DFBC();

  return v9(v8);
}

uint64_t sub_100002CCC()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100002CE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000C6A64;

  return v8();
}

uint64_t sub_100002E08()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100002E44()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t sub_100002E90@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  v4 = *(v2 + a1);
  return result;
}

void *sub_100002EBC(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x51uLL);
}

__n128 sub_100002EE0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 176);
  *a1 = *(v1 - 192);
  *(a1 + 16) = v2;
  result = *(v1 - 160);
  v4 = *(v1 - 144);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

void sub_100002EF4()
{
  v1 = v0[107];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[99];
  v6 = v0[97];
}

uint64_t sub_100002F10()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100005C94(v5);
  *v6 = v7;
  v6[1] = sub_100013D70;
  sub_1000D32C8();
  sub_10000AD14();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100002FC8()
{
  v2 = *(v0 - 72);

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

NSString sub_100002FFC()
{

  return String._bridgeToObjectiveC()();
}

void sub_100003024()
{
  v1 = v0[55];
  v3 = v0[49];
  v2 = v0[50];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[42];
}

uint64_t sub_100003118()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_1000031D4(uint64_t a1@<X8>)
{
  *(v3 - 256) = v2;
  *(v3 - 296) = a1;
  *(v3 - 288) = v1;
}

void sub_1000031F0()
{
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v1 - 72) = 0;
}

unint64_t sub_10000325C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

void sub_1000032CC()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 704);
  *(v0 + 138) = *(v1 + 16);
  *(v0 + 1048) = *(v1 + 24);
  *(v0 + 1056) = *(v1 + 32);
  *(v0 + 1064) = v2[24];
  v3 = v2[25];
  *(v0 + 1072) = v3;
  *(v0 + 1080) = v2[22];
  *(v0 + 1088) = v2[23];
  *(v0 + 1096) = *(v3 + 8);
  *(v0 + 1104) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x96B9000000000000;
}

uint64_t sub_100003338@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5 | (16 * a1);
  v8 = (*(a5 + 48) + v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = (*(a5 + 56) + v7);
  v12 = v11[1];
  v14 = *v11;
}

uint64_t sub_10000336C()
{
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[13];

  return static Log.tsDataSync.getter();
}

uint64_t sub_1000033A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

uint64_t sub_1000033CC()
{
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t sub_1000033D8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100013D70;

  return v7();
}

uint64_t sub_1000034C0()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_100003568()
{
  v0[307] = v1;
  v0[304] = *(v2 - 128);
  v0[305] = *(v2 - 112);
}

uint64_t sub_1000035E4(_OWORD *a1)
{
  sub_1001514B8(a1, v1);
}

void sub_100003624()
{
}

uint64_t sub_10000363C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  v3[4] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_100013A64;

  return sub_1000042B0();
}

void *sub_100003758@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = v2;
  result[1] = a2;
  v4 = *v3;
  return result;
}

void sub_1000037F8()
{

  sub_1001070B0();
}

uint64_t sub_100003828()
{

  return sub_10003CD48(v0, v1, v2);
}

uint64_t sub_100003844()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000389C()
{
  v2 = *(v0 - 408);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000038EC(uint64_t a1)
{

  return sub_100004E24(a1, v1, v2);
}

uint64_t sub_100003934()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100003974()
{

  return swift_once();
}

__n128 sub_1000039C4()
{
  v1 = *v0;
  result = *(v0 + 5);
  v3 = *(v0 + 1);
  v4 = *(v0 + 7);
  v5 = *(v0 + 3);
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[11];
  v9 = *(v0 + 48);
  return result;
}

uint64_t sub_1000039E8(uint64_t result)
{
  v1[89] = result;
  v1[86] = v2;
  v1[82] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100003A70(uint64_t result)
{
  *(result + 8) = sub_10019BBA0;
  v2 = *(v1 + 232);
  v3 = *(v1 + 176);
  return result;
}

uint64_t sub_100003A98(uint64_t a1)
{
  *(a1 + 8) = sub_10019FE94;
  v2 = *(v1 + 928);
  v3 = *(v1 + 920);
  return v1 + 16;
}

uint64_t sub_100003AE0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100003B58@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v2 + v1, v4 + a1, v5, v3);
}

uint64_t sub_100003B88()
{
  v2 = v0[373];
  v3 = v0[371];
  v4 = v0[362];
  v5 = v0[361];
  v6 = v0[360];
  v7 = v0[359];
  v8 = v0[358];
  v9 = v0[357];
  v10 = v0[354];
}

uint64_t sub_100003BD8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_100003C34(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = *(v1 + 60);
}

uint64_t sub_100003C48()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_100003C6C(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 8);
  return result;
}

uint64_t sub_100003C84()
{
  v7 = v5 + *(v0 + 24);
  v8 = v4 + *(v3 + 24);

  return sub_10003D178(v7, v8, v1, v2);
}

uint64_t sub_100003CBC()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100003CDC()
{

  return swift_allocObject();
}

uint64_t sub_100003D20()
{
  v1 = *(v0 - 248);
  v2 = *(v0 - 240);
  return v0 - 248;
}

uint64_t sub_100003D48@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v4 + a1, v3 + a1, v1, v2);
}

uint64_t sub_100003D68()
{
  v2 = v0[71];
  v3 = v0[68];
  v9 = v0[66];
  v10 = v0[73];
  v11 = v0[60];
  v12 = v0[74];
  v5 = v0[55];
  v4 = v0[56];
  v13 = v0[54];
  v8 = v0[49];
  v6 = v0[47];

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100003DC0()
{
  v2 = v0[32];
  v7 = v0[33];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[26];

  return static LogInterpolation.prefix(_:_:)();
}

void sub_100003DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{

  sub_100147074(v56, &a56);
}

uint64_t sub_100003E14(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_100003E6C()
{
  v2 = v0[29];
  v0[28] = v0[30];

  return sub_100007914(v0 + 25);
}

__n128 sub_100003E88()
{
  v2 = *(v0 + 16);
  *(v1 - 112) = *v0;
  *(v1 - 96) = v2;
  result = *(v0 + 32);
  *(v1 - 80) = result;
  return result;
}

void sub_100003ED0(uint64_t a1)
{
  *(v1 + 1944) = a1;
}

uint64_t sub_100003EE8(uint64_t a1)
{
  *(a1 + 8) = sub_100189D20;
  v2 = v1[50];
  v3 = v1[47];
  return v1[46];
}

uint64_t sub_100003F40()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100003F58()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

void sub_100003F74()
{
  v1 = v0[210];
  v2 = v0[209];
  v3 = v0[208];
  v4 = v0[207];
  v5 = v0[206];
  v6 = v0[204];
  v7 = v0[202];
  v8 = v0[200];
  v9 = v0[199];
}

uint64_t sub_100003FA8()
{

  return swift_task_alloc();
}

uint64_t sub_100003FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002728(a1, a2, a3, v3);

  return sub_1000BA2CC(v4 - 176, v4 - 240);
}

uint64_t sub_10000401C()
{

  return DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
}

void sub_100004044()
{
  v3 = (v2 + v1[15]);
  *v3 = 0;
  v3[1] = 0;
  *(v2 + v1[16]) = 0;
  *(v2 + v1[17]) = 0;
  *(v2 + v1[18]) = v0;
  v4 = v1[19];
}

uint64_t sub_100004088()
{

  return sub_10003D1E4();
}

unint64_t sub_1000040A0()
{
  v2 = *v0;

  return sub_10000DA08();
}

void *sub_1000040C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char __dst)
{

  return memcpy(&__dst, (v53 + 16), 0x51uLL);
}

uint64_t sub_100004118(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000041AC()
{
  v1 = v0[28];
  v2 = v0[25];
  sub_100004118(v0 + 2);
}

uint64_t sub_1000041F8@<X0>(uint64_t a1@<X8>)
{

  return sub_1000D31EC(v5 + a1, v4 + v1, v2, v3);
}

uint64_t sub_100004218()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_10000426C()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100004288@<X0>(uint64_t a1@<X8>)
{

  return sub_1001AC540(0xD000000000000017, (a1 - 32) | 0x8000000000000000, 2);
}

uint64_t sub_1000042B0()
{
  sub_100004194();
  v1[30] = v2;
  v1[31] = v0;
  v1[32] = swift_getObjectType();
  v3 = type metadata accessor for AccountDataState(0);
  sub_100003B78(v3);
  v1[33] = v4;
  v6 = *(v5 + 64);
  v1[34] = sub_100003FA8();
  v7 = sub_100099DF4(&qword_1002DB970, &qword_100232F30);
  v1[35] = v7;
  sub_100003B78(v7);
  v1[36] = v8;
  v10 = *(v9 + 64);
  v1[37] = sub_1000D3604();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v11 = type metadata accessor for AccountIdentity();
  v1[40] = v11;
  sub_100003B78(v11);
  v1[41] = v12;
  v14 = *(v13 + 64);
  v1[42] = sub_1000D3604();
  v1[43] = swift_task_alloc();
  v15 = type metadata accessor for AccountIdentity.DSID();
  v1[44] = v15;
  sub_100003B78(v15);
  v1[45] = v16;
  v18 = *(v17 + 64);
  v1[46] = sub_100003FA8();
  v19 = type metadata accessor for Log();
  v1[47] = v19;
  sub_100003B78(v19);
  v1[48] = v20;
  v22 = *(v21 + 64);
  v1[49] = sub_100003FA8();
  v23 = sub_10000EF80();

  return _swift_task_switch(v23, v24, v25);
}

uint64_t sub_1000044BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_100004538()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = (*(v0 + 528) + 32) & ~*(v0 + 528);
  v6 = 3 * *(v0 + 416);
}

uint64_t sub_1000045DC()
{
  result = v2 + *(v1 + 36);
  v4 = *(v0 + 128);
  return result;
}

uint64_t sub_100004608()
{
  v2 = *(v0 - 392);

  return swift_unknownObjectRelease();
}

void sub_100004620(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_100004668()
{
  v1 = v0[214];
  v2 = v0[213];
  v3 = *(v0[215] + 96);
  return v0[216];
}

__n128 sub_100004698(__n128 *a1)
{
  result = *(v1 - 368);
  a1[1] = result;
  v3 = *(v1 - 336);
  return result;
}

void sub_1000046C8()
{

  sub_100107170();
}

void *sub_1000046EC(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x62uLL);
}

uint64_t sub_100004754(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v5 = sub_1000030B8(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  sub_100002728(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10023FCA0;
  v12[5] = v11;
  sub_1001A4288(0, 0, v9, &unk_10023FCB0, v12);
}

uint64_t sub_1000048AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100099DF4(a3, a4);
}

void sub_1000048CC()
{
  v1 = v0[373];
  v2 = v0[372];
  v3 = v0[351];
}

uint64_t sub_10000495C@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = *(v1 + 960);
  v5 = *(v1 + 944);
  v6 = *(v1 + 888);
  v7 = *(v1 + 704);
  v8 = (*(v1 + 140) + 32) & ~*(v1 + 140);
  v9 = 3 * *(v1 + 952);

  return static Log.tsDataSync.getter();
}

uint64_t sub_100004994()
{

  return swift_getErrorValue();
}

void sub_100004A44()
{
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[21];
}

uint64_t sub_100004B3C()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100004C34(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_100004C74@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2024);
  v3 = *(v1 + 1712);
  v4 = *(v1 + 1696) + ((*(*(v1 + 1720) + 80) + 32) & ~*(*(v1 + 1720) + 80)) + *(*(v1 + 1720) + 72) * a1;
  v5 = *(*(v1 + 1720) + 16);
  return *(v1 + 1728);
}

uint64_t sub_100004CCC()
{
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[19];
  v9 = v0[31];

  return sub_100179634(v9, v8);
}

uint64_t sub_100004D40()
{
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[26];
  v10 = v0[39];

  return sub_10019A170(v10, v9);
}

uint64_t sub_100004D84(uint64_t result)
{
  *(result + 8) = sub_10019BE90;
  v2 = *(v1 + 232);
  v3 = *(v1 + 168);
  return result;
}

uint64_t sub_100004DAC()
{
  v1 = v0[43];
  v2 = v0[42];
  v3 = v0[39];
  v5 = v0[37];
  v4 = v0[38];
  v6 = *(v0[41] + 16);
  result = v0[44];
  v8 = v0[40];
  return result;
}

uint64_t sub_100004E24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100099DF4(a2, a3);
  sub_10000307C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100004E7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100099DF4(a2, a3);
  sub_10000B7EC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100004EE8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100004F04()
{

  sub_100013524();
}

uint64_t sub_100004F24()
{

  return sub_10000601C(v1, v0 - 80);
}

uint64_t sub_100004F40()
{
  v3 = *(*(*(v1 - 120) + 48) + 16 * v0 + 8);
}

uint64_t sub_100004F7C()
{

  return sub_10003D1E4();
}

void sub_100004FC8()
{

  Hasher._combine(_:)(0);
}

uint64_t sub_100004FF8()
{
  v3 = *(*(v0 + 48) + 16 * v1 + 8);
}

uint64_t sub_100005014()
{
  v2 = v0[107];
  v3 = v0[99];
  v4 = v0[82];

  return static LogInterpolation.prefix(_:_:)();
}

__n128 sub_10000504C(__n128 *a1)
{
  result = *(v1 - 272);
  a1[1] = result;
  v3 = a1 + *(v1 - 240);
  *(v1 - 120) = *(v1 - 280);
  return result;
}

BOOL sub_1000050F4()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

uint64_t sub_100005170()
{

  return swift_allocObject();
}

uint64_t *sub_100005190()
{
  v2 = v0[69];
  v0[64] = v0[70];

  return sub_100007914(v0 + 61);
}

uint64_t sub_1000051BC@<X0>(uint64_t a1@<X8>)
{
  v1[335] = a1;
  v1[332] = *(v3 - 88);
  v1[333] = v2;
}

uint64_t sub_1000051F8()
{

  return swift_task_create();
}

void sub_100005280()
{
  v1 = *(v0 - 328);
  v2 = *(v0 - 320);
  v3 = *(v0 - 344);
}

uint64_t sub_10000529C()
{

  return sub_10014F648();
}

double sub_1000052D4@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  if (result == 0.0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100005300@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 48 * v1);
  sub_100004118(v3);
  sub_100122C8C((v2 - 248), v3);
}

uint64_t sub_100005390()
{
  result = *(v0 - 192);
  v2 = *(v0 - 184);
  v3 = *(v0 - 176);
  return result;
}

uint64_t sub_10000539C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_1000053C8()
{
  v1 = v0[214];
  v2 = v0[213];
  v3 = *(v0[215] + 96);
  return v0[216];
}

uint64_t sub_1000053F8(uint64_t result)
{
  *(result + 8) = sub_100192984;
  v2 = v1[34];
  v3 = v1[28];
  v4 = v1[29];
  return result;
}

uint64_t sub_100005424()
{
  v1 = v0[45];
  v2 = v0[42];
  result = v0[35];
  v4 = v0[32];
  v5 = *(v0[33] + 8);
  return result;
}

uint64_t sub_10000543C()
{

  return swift_getErrorValue();
}

uint64_t sub_100005460(uint64_t a1)
{

  return sub_100004E24(a1, v1, v2);
}

uint64_t sub_100005478()
{
  v1 = v0[49];
  v3 = v0[31];
  v2 = v0[32];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  v6 = *(v5 + 72);
  sub_10000A1F0();
  v7 = sub_1000D3384();
  v0[22] = v3;
  *(v7 + 16) = xmmword_1002329D0;
  v0[25] = v2;
  v8 = v3;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = v0[48];
  v11 = v0[49];
  v95 = v0[47];
  v97 = v0[35];
  v99 = v0[40];
  v13 = v0[30];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 22);
  LogInterpolation.init(stringLiteral:)();
  v0[29] = sub_100099DF4(&qword_1002DBBE8, &qword_100232F38);
  v0[26] = v13;

  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C((v0 + 26), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v12 + 8))(v11, v95);
  sub_100006034();
  v14 = &_swiftEmptyArrayStorage;
  v91 = Dictionary.init(dictionaryLiteral:)();
  result = sub_100005DA8(v13);
  if (!result)
  {
LABEL_25:
    v0[51] = v14;
    v0[52] = v91;
    v0[50] = v91;
    v80 = swift_task_alloc();
    v0[53] = v80;
    *v80 = v0;
    v80[1] = sub_100011088;
    v81 = v0[31];
    sub_1000D3590();

    return sub_100008590();
  }

  if (result < 1)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v16 = 0;
  v98 = v0 + 2;
  v17 = (v0 + 7);
  v90 = v0 + 17;
  v18 = v0[30];
  v94 = v18 & 0xC000000000000001;
  v96 = v0 + 12;
  v19 = v0[41];
  v92 = result;
  v93 = (v0[45] + 8);
  v88 = v0[36];
  v89 = v18 + 32;
  v85 = v19 + 16;
  v86 = v19;
  v87 = (v19 + 8);
  while (1)
  {
    v100 = v14;
    if (v94)
    {
      v20 = v0[30];
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(v89 + 8 * v16);
    }

    v22 = v21;
    v23 = v0[46];
    v24 = v0[44];
    v25 = v0[32];
    v26 = [v21 dsid];
    [v26 unsignedLongLongValue];

    AccountIdentity.DSID.init(_:)();
    sub_100005DB0();
    (*v93)(v23, v24);
    if (v0[10])
    {
      sub_10000601C(v17, v98);
      sub_100007974(v98, v96);
      v14 = v100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = v100[2];
        sub_1000079D4();
        v14 = v78;
      }

      v27 = v14[2];
      if (v27 >= v14[3] >> 1)
      {
        sub_1000079D4();
        v14 = v79;
      }

      sub_100004118(v98);
      v28 = v0[15];
      v29 = sub_100008494(v96, v28);
      v30 = *(v28 - 8);
      v31 = *(v30 + 64);
      v32 = sub_100003FA8();
      (*(v30 + 16))(v32, v29, v28);
      v0[20] = type metadata accessor for AMPAccount();
      v0[21] = &off_1002B4510;
      v33 = sub_100007914(v90);
      sub_10000853C(v32, v33);
      v14[2] = v27 + 1;
      sub_10000601C(v90, &v14[5 * v27 + 4]);
      sub_100004118(v96);

      goto LABEL_24;
    }

    v34 = v0[43];
    v35 = v0[38];
    v36 = v0[39];
    v37 = v0[35];
    sub_100004E7C(v17, &qword_1002DB958, &qword_100232B60);
    v38 = v22;
    AccountIdentity.init(amsAccountID:)();
    v39 = String._bridgeToObjectiveC()();
    v40 = String._bridgeToObjectiveC()();
    v41 = AMSError();

    *v36 = v41;
    swift_storeEnumTagMultiPayload();
    sub_1000D3234(v36, v35, &qword_1002DB970, &qword_100232F30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_10000DA08();
    v44 = *(v91 + 16);
    v45 = (v43 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v47 = result;
    v48 = v43;
    sub_100099DF4(&qword_1002DBBF0, &unk_100232F40);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v46))
    {
      break;
    }

LABEL_19:
    if (v48)
    {
      sub_1000D3560(v0[38], v49, v50, v51, v52, v53, v54, v55, v85, v86, v87, v88);
      sub_1000D317C(v58, v59);
    }

    else
    {
      v60 = v0[43];
      v61 = v0[40];
      v62 = v0[38];
      *(v91 + 8 * (v47 >> 6) + 64) |= 1 << v47;
      v63 = (*(v86 + 16))(*(v91 + 48) + *(v86 + 72) * v47, v60, v61);
      sub_1000D3560(v63, v64, v65, v66, v67, v68, v69, v70, v85, v86, v87, v88);
      result = sub_1000D3234(v62, v71, &qword_1002DB970, &qword_100232F30);
      v72 = *(v91 + 16);
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        goto LABEL_32;
      }

      *(v91 + 16) = v74;
    }

    v75 = v0[43];
    v76 = v0[40];

    (*v87)(v75, v76);
    v14 = v100;
LABEL_24:
    ++v16;
    v17 = (v0 + 7);
    if (v92 == v16)
    {
      goto LABEL_25;
    }
  }

  v56 = v0[43];
  v57 = sub_10000DA08();
  if ((v48 & 1) == (v49 & 1))
  {
    v47 = v57;
    goto LABEL_19;
  }

  v83 = v0[40];
  sub_1000D3590();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100005BE8()
{

  return Hasher.init(_seed:)();
}

void sub_100005C20()
{

  Hasher._combine(_:)(1u);
}

uint64_t sub_100005C38@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v3 + a1, v2 + v1, v5, v4);
}

void sub_100005CA0()
{
  *(v2 + 16) = v0;
  v5 = v2 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

void sub_100005CDC(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = *(v3 - 212);
  v4 = *(v2 + 60);
}

uint64_t sub_100005CFC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

void sub_100005D20(int a1@<W8>)
{
  v1[84] = a1;
  v1[86] = a1;
  v1[88] = a1;
}

void sub_100005D30()
{

  sub_10013C578();
}

NSString sub_100005D64()
{
  *(v1 + 1960) = *v0;
  *(v1 + 1968) = v0[1];

  return String._bridgeToObjectiveC()();
}

void sub_100005DB0()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Log();
  v5 = sub_100003724(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  sub_10000608C(v1);
  if (v17)
  {
    sub_10000601C(&v16, v3);
  }

  else
  {
    sub_100004E7C(&v16, &qword_1002DB958, &qword_100232B60);
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_1000D33A8();
    v8 = type metadata accessor for LogInterpolation();
    sub_100003B78(v8);
    v10 = *(v9 + 72);
    sub_10000AA9C();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    v11 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v12 = type metadata accessor for AccountIdentity.DSID();
    v17 = v12;
    sub_100007914(&v16);
    sub_10000B7EC(v12);
    (*(v13 + 16))();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E7C(&v16, &unk_1002DFC10, &qword_10022E6D0);
    Log.error(_:)();

    v14 = sub_1000048DC();
    v15(v14);
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
  }

  sub_1000027F8();
}

uint64_t sub_10000601C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100006034()
{
  result = qword_1002DE9E0;
  if (!qword_1002DE9E0)
  {
    type metadata accessor for AccountIdentity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE9E0);
  }

  return result;
}

uint64_t sub_10000608C(uint64_t a1)
{
  sub_10000309C();
  v3 = type metadata accessor for AccountIdentity.DSID();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = sub_100099DF4(&qword_1002DA6C0, &unk_100232C60);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_10000308C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  (*(v6 + 16))(v11, a1, v3);
  sub_100006378();
  v20 = sub_1000049C0();
  sub_100007518(v20, v21);
  v22 = type metadata accessor for AMPAccount();
  if (sub_100004DFC(v16, 1, v22) == 1)
  {
    sub_100004E24(v19, &qword_1002DA6C0, &unk_100232C60);
    result = sub_100004E24(v16, &qword_1002DA6C0, &unk_100232C60);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0;
  }

  else
  {
    *(v1 + 24) = v22;
    *(v1 + 32) = &off_1002B4510;
    v24 = sub_100007914(v1);
    sub_100007078(v16, v24);
    return sub_100004E24(v19, &qword_1002DA6C0, &unk_100232C60);
  }

  return result;
}

uint64_t sub_100006260()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10000628C@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v4 + a1, v3 + v1, v2, v5);
}

uint64_t sub_1000062BC()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

__n128 sub_100006300@<Q0>(__int128 *a1@<X8>)
{
  result = a1[1];
  v2 = *a1;
  v3 = *(a1 + 4);
  return result;
}

uint64_t sub_100006320()
{

  return swift_continuation_init();
}

uint64_t sub_100006338()
{
  v3 = *(v1 + 104);
  result = v0;
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_100006354()
{

  return LogInterpolation.init(stringLiteral:)();
}

void sub_100006378()
{
  sub_100004168();
  v3 = v2;
  sub_10000309C();
  v4 = type metadata accessor for AccountIdentity.DSID();
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v10 = sub_10000B96C();
  v11 = sub_10000307C(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  v16 = v15 - v14;
  v17 = [objc_opt_self() ams_sharedAccountStore];
  AccountIdentity.DSID.value.getter();
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v19 = [v17 ams_iTunesAccountWithDSID:isa];

  if (v19)
  {
    sub_10009B9E4(v19);
    if (v20)
    {
      *(v16 + *(v10 + 20)) = v19;
      (*(v7 + 16))(v1, v3, v4);
      AccountIdentity.init(altDSID:dsid:)();
      v21 = sub_100003748();
      v22(v21);
      sub_100007078(v16, v0);
      sub_100002728(v0, 0, 1, v10);
      sub_1000027F8();
      return;
    }

    v25 = sub_100003748();
    v26(v25);
  }

  else
  {
    v23 = sub_100003748();
    v24(v23);
  }

  sub_100007AC8();
  sub_1000027F8();

  sub_100002728(v27, v28, v29, v30);
}

uint64_t sub_1000065DC()
{

  return URL.append<A>(component:directoryHint:)();
}

void sub_1000066AC(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_1000066EC@<X0>(uint64_t a1@<X8>)
{

  return sub_100002728(v1 + a1, 1, 1, v2);
}

uint64_t sub_100006744(uint64_t a1, void *a2)
{
  *a2 = 0xD00000000000002CLL;
  a2[1] = v2;

  return swift_willThrow();
}

void sub_10000678C()
{
  *v1 = v0;
  v1[7] = 0;
  v1[10] = 0;
}

uint64_t sub_1000067C0(uint64_t result)
{
  v1[113] = result;
  v1[110] = v2;
  v1[106] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10000682C()
{
  v0[2] = 0u;
  v0[3] = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

id sub_100006844(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_100006868()
{

  return sub_1001A4830(v0, type metadata accessor for TSDataSyncExternalEvent);
}

void sub_1000068B0(uint64_t a1, const char *a2)
{

  xpc_dictionary_set_BOOL(v2, a2, 1);
}

void *sub_1000068E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = v2;
  result[1] = a2;
  v4 = *v3;
  return result;
}

uint64_t sub_1000068F4()
{

  return Substring.init(_:)(48, 0xE100000000000000);
}

uint64_t sub_10000691C()
{
  v2 = *(v0 + 2920);
  v3 = *(v0 + 2904);
  v4 = *(v0 + 2864);
  v5 = *(v0 + 2824);
  v6 = (*(v0 + 3080) + 32) & ~*(v0 + 3080);
  v7 = 5 * *(v0 + 2912);
  v9 = *(v1 - 3);
  result = *(v1 - 2);
  v10 = *(v1 - 1);
  v11 = *v1;
  return result;
}

uint64_t sub_100006960(uint64_t a1, uint64_t a2)
{

  return sub_100012C2C(v2, a2, v3, v4);
}

uint64_t sub_10000697C()
{
  v2 = *(v0 - 360);

  return sub_1000D65DC(v2, type metadata accessor for TSDataSyncDatasetState);
}

id sub_100006A28(uint64_t a1)
{
  v5 = *(v3 + 552);

  return [v1 v5];
}

unint64_t sub_100006A64()
{
  *(v0 + 16) = v1;
  v4 = *(v2 + 32);
  return v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v3;
}

uint64_t sub_100006AB4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100006AD0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
}

uint64_t sub_100006B00(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_100006B24(uint64_t result)
{
  v1[73] = result;
  v1[70] = v2;
  v1[66] = _NSConcreteStackBlock;
  return result;
}

BOOL sub_100006B48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_100006B68()
{

  return sub_100179CB8(v0);
}

uint64_t sub_100006BD0()
{
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[15];
}

uint64_t sub_100006BF8(__n128 a1, __n128 a2)
{
  v4 = (v3 - 144);
  *v4 = a1;
  v4[1] = a2;
  v5 = *(*sub_10000C4FC((v2 + 32), *(v2 + 56)) + 24);
}

id sub_100006C9C(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_100006CCC()
{

  return swift_once();
}

uint64_t sub_100006D94(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0xD000000000000012;
  a1[2].n128_u64[1] = v3;
  v6 = *(v2 + 8);

  return sub_100125BF0(v4, v6);
}

uint64_t sub_100006DF0@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v2 + a1, v1 + a1, v3, v4);
}

void sub_100006E30(unint64_t a1@<X8>)
{

  sub_10000B654(a1 > 1, v1, 1, v2);
}

uint64_t sub_100006E54()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_100006EA8()
{
  v2 = *(v0 + 16) + 1;

  sub_100107110();
}

uint64_t *sub_100006ECC()
{
  result = sub_10000C4FC((v0 + 32), *(v0 + 56));
  v2 = *result;
  return result;
}

void sub_100006F14()
{
  v1 = *(v0 - 352);
  v2 = *(v0 - 344);
  v3 = *(v0 - 360);
}

uint64_t sub_100006F30(uint64_t result)
{
  v1[97] = result;
  v1[94] = v2;
  v1[90] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100006FA8(uint64_t a1)
{
  *(a1 + 8) = sub_10019B854;
  v2 = v1[29];
  v3 = v1[24];
  return v1[18];
}

uint64_t sub_100007010()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t type metadata accessor for AMPAccount()
{
  result = qword_1002DA728;
  if (!qword_1002DA728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMPAccount();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000070F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccountIdentity();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100002728(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000071A4()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void sub_100007204()
{
  *(v3 + v2[10]) = v0;
  *(v3 + v2[11]) = v6;
  *(v3 + v2[12]) = *(v1 + 240);
  *(v3 + v2[13]) = v4;
  *(v3 + v2[14]) = v5;
  v7 = v2[17];
}

void sub_100007238()
{
  v9 = *(v0 + 440);
  v1 = *(v0 + 528);
  v2 = *(v0 + 416);
  v6 = *(v0 + 424);
  v7 = *(v0 + 432);
  v3 = *(v0 + 392);
  v8 = *(v0 + 400);
  v4 = *(v0 + 376);
  v10 = *(v0 + 368);
  v11 = *(v0 + 360);
  v5 = *(v0 + 336);
  v12 = *(v0 + 312);
}

uint64_t sub_100007288@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 120);
  v4 = *(v1 - 112);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_1000072AC(uint64_t a1@<X8>)
{
  *a1 = *(v2 - 256);
  *(a1 + 8) = *(v2 - 264);
  v3 = *(v1 + 60);
}

void sub_10000731C()
{
  v2 = *(v0 + 16) + 1;

  sub_10000B654(0, v2, 1, v0);
}

uint64_t sub_100007340@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v4 + v1, v3 + a1, v5, v2);
}

uint64_t sub_100007360()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

BOOL sub_1000073A0()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

void sub_1000073C0()
{

  sub_10013C2FC();
}

void sub_100007418()
{
  v1 = v0[125];
  v2 = v0[124];
  v3 = v0[119];
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[112];
  v11 = v0[113];
  v12 = v0[111];
  v7 = v0[109];
  v8 = v0[107];
  v13 = v0[108];
  v14 = v0[106];
  v15 = v0[105];
  v16 = v0[102];
  v17 = v0[100];
  v18 = v0[99];
  v9 = v0[98];
  v19 = v0[97];
  v20 = v0[94];
  v10 = v0[91];
}

uint64_t sub_100007484()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[18];
  v8 = v0[15];
  v9 = *(v0[27] + 8);
  return v0[28];
}

uint64_t sub_1000074A8()
{

  return swift_getErrorValue();
}

void sub_1000074C8()
{
  v1 = v0[114];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[102];
  v7 = v0[99];
  v8 = v0[97];
  v9 = v0[94];
  v10 = v0[92];
  v11 = v0[91];
}

uint64_t sub_1000074F8(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t sub_100007518(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DA6C0, &unk_100232C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000075F8@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v5 + a1, v4 + v1, v2, v3);
}

uint64_t sub_100007698()
{
}

void sub_1000076C8()
{
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v1 - 72) = 0;
}

uint64_t sub_1000076DC()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_1000076F8()
{
  v2 = *(v0 + 20);

  return type metadata accessor for AccountIdentity();
}

uint64_t sub_100007728()
{
  v2 = *(v0 - 184);
  v3 = *(v0 - 72);

  return sub_100002728(v2, 1, 1, v3);
}

void *sub_10000776C(void *a1)
{

  return memcpy(a1, v1, 0x62uLL);
}

uint64_t sub_1000077AC()
{

  return sub_10018B1D8();
}

uint64_t sub_100007800()
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_100007820()
{

  return sub_10014416C(v0, v1 - 248);
}

uint64_t sub_10000783C()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100007868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccountIdentity();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100004DFC(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t *sub_100007914(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100007974(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_10000B7EC(v3);
  (*v4)(a2);
  return a2;
}

void sub_1000079D4()
{
  sub_1000076BC();
  if (v5)
  {
    sub_100006D74();
    if (v7 != v8)
    {
      sub_100007310();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000066AC(v6);
  if (v3)
  {
    sub_100099DF4(&qword_1002DBBE0, &qword_100232E80);
    v9 = sub_10000EE6C();
    sub_10000BAE0(v9);
    sub_10000A5C0(v10);
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v3 != v0 || &v0[40 * v2 + 32] <= v3 + 32)
    {
      v12 = sub_10000B80C();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    sub_100099DF4(&qword_1002DD530, &qword_100238258);
    sub_10000B80C();
    swift_arrayInitWithCopy();
  }
}

void sub_100007AD8(unint64_t a1@<X8>)
{

  sub_10000B654(a1 > 1, v2, 1, v1);
}

uint64_t sub_100007B44()
{

  return sub_1000AEFB0(v0, type metadata accessor for TSDataSyncConfigScheduleAction);
}

uint64_t sub_100007BB8()
{
  result = *(v0 + 56) + *(*(v2 - 128) + 72) * v1;
  v4 = *(v2 - 88);
  return result;
}

uint64_t sub_100007C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[6] = a1;
  v3[9] = a2;
  v3[10] = v5;
  v3[11] = v4;
  v7 = *(v2 + 16);

  return sub_100125E0C();
}

void *sub_100007C9C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = v2;
  result[1] = a2;
  v4 = *v3;
  return result;
}

uint64_t sub_100007CB0()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t *sub_100007D24(void *a1, uint64_t a2)
{
  result = sub_10000C4FC(a1, a2);
  v3 = *result;
  return result;
}

uint64_t sub_100007D58(unint64_t *a1)
{

  return sub_100163640(a1);
}

uint64_t sub_100007D7C(uint64_t result)
{
  v1[105] = result;
  v1[102] = v2;
  v1[98] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100007DB8(uint64_t a1)
{
  *(a1 + 8) = sub_10018584C;
  v3 = *(v1 + 1104);
  v4 = *(v1 + 1088);
  v5 = *(v1 + 1080);
  v6 = *(v1 + 1064);
  v7 = *(v1 + 1056);
  v8 = *(v1 + 1048);
  v9 = *(v1 + 928);
  v10 = *(v1 + 664);
  v11 = *(v1 + 138);
  *(v2 + 16) = *(v1 + 1072);
  return v10;
}

uint64_t sub_100007E54()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100007E78()
{
  result = v0;
  v3 = *(v1 - 144);
  v4 = *(v1 - 248);
  v5 = *(v1 - 168);
  return result;
}

uint64_t sub_100007F60()
{

  return swift_allocError();
}

uint64_t sub_100007F90@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_10000801C()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

void sub_100008060()
{
  v2 = *(v0 + 16) + 1;

  sub_10000B654(0, v2, 1, v0);
}

void sub_1000080AC()
{

  sub_100107110();
}

uint64_t sub_1000080E0(uint64_t result)
{
  *(result + 8) = sub_1001448F8;
  v2 = *(v1 + 192);
  return result;
}

uint64_t sub_100008134(uint64_t result)
{
  v1[81] = result;
  v1[78] = v2;
  v1[74] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100008208()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100008260@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v4 + v1, v2 + a1, v3, v5);
}

uint64_t sub_100008290()
{
  v3 = v0[27];
  v2 = v0[28];
  v6 = v0[26];
  v7 = v0[25];
  v9 = v0[24];
  v10 = v0[23];
  v8 = v0[22];
  v4 = v0[20];

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_1000082E0()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_100008304()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100008360(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100008380()
{
  v5 = *(v3 - 264);

  return DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)(v2, v1, 0, 1, v0, 0, v5, 0);
}

void sub_1000083E8(uint64_t a1@<X8>)
{
  v1[60] = sub_1001701F4;
  v1[61] = a1;
  v1[62] = v2;
}

uint64_t sub_100008400()
{

  return sub_100177204();
}

void sub_100008428()
{
  v1 = v0[75];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v8 = v0[60];
  v7 = v0[61];
  v9 = v0[59];
  v10 = v0[56];
}

void sub_100008464()
{
  v1 = v0[34];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[25];
  v5 = v0[22];
}

uint64_t sub_100008478()
{

  return sub_10014416C(v0, v1 - 248);
}

uint64_t sub_100008494(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000084E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v5 = v4(v3);
  sub_10000307C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000050CC();
  v9(v8);
  return a2;
}

uint64_t sub_10000853C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v5 = v4(v3);
  sub_100003BF0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000050CC();
  v9(v8);
  return a2;
}

uint64_t sub_100008590()
{
  sub_100004194();
  v1[34] = v2;
  v1[35] = v0;
  v1[36] = swift_getObjectType();
  v3 = type metadata accessor for AccountIdentity();
  v1[37] = v3;
  sub_100003B78(v3);
  v1[38] = v4;
  v6 = *(v5 + 64);
  v1[39] = sub_100003FA8();
  v7 = type metadata accessor for Date();
  v1[40] = v7;
  sub_100003B78(v7);
  v1[41] = v8;
  v10 = *(v9 + 64);
  v1[42] = sub_100003FA8();
  v11 = type metadata accessor for AccountDataState(0);
  v1[43] = v11;
  sub_100003B78(v11);
  v1[44] = v12;
  v14 = *(v13 + 64);
  v1[45] = sub_1000D3604();
  v1[46] = swift_task_alloc();
  v15 = type metadata accessor for Log();
  v1[47] = v15;
  sub_100003B78(v15);
  v1[48] = v16;
  v18 = *(v17 + 64);
  v1[49] = sub_1000D3604();
  v1[50] = swift_task_alloc();
  v19 = sub_10000EF80();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_100008754()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100008798()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = *(v0 + 400);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  static Log.accountsDataSync.getter();
  *(v0 + 408) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  *(v0 + 416) = *(v5 + 72);
  *(v0 + 528) = *(v6 + 80);
  v7 = sub_1000D3384();
  *(v0 + 104) = v2;
  *(v7 + 16) = xmmword_1002329D0;
  *(v0 + 128) = v3;
  v8 = v2;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008A8C();
  }

  else
  {
    sub_1000D339C();
  }

  v11 = *(v0 + 400);
  v12 = *(v0 + 384);
  v26 = *(v0 + 376);
  v13 = *(v0 + 272);
  sub_100008754();

  sub_100004118((v0 + 104));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 160) = sub_100099DF4(&qword_1002DBBD0, &qword_100232E58);
  *(v0 + 136) = v13;

  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C(v0 + 136, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v14 = *(v12 + 8);
  *(v0 + 424) = v14;
  *(v0 + 432) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v26);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v15 = *(v0 + 344);
  v16 = *(v0 + 296);
  v17 = *(v0 + 280);
  *(v0 + 440) = qword_1003106E8;
  sub_100002860();
  sub_100008F38(0xD000000000000010, v18);
  sub_100006034();
  *(v0 + 448) = Dictionary.init(dictionaryLiteral:)();
  v19 = *(v17 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_bag);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 456) = v20;
  *v20 = v21;
  sub_10000BFD4(v20);
  sub_100003128();

  return sub_10000ACF8(v22, v23);
}

__n128 sub_100008A50@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 32);
  *(v1 + 240) = *(a1 + 16);
  *(v1 + 256) = v2;
  result = *(a1 + 48);
  *(v1 + 272) = result;
  return result;
}

uint64_t sub_100008ADC()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100008B04(uint64_t a1)
{
  result = sub_100004DFC(v2, 1, a1);
  v4 = *(v1 + 792);
  return result;
}

uint64_t sub_100008B54()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void *sub_100008BC0()
{
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;

  return memcpy((v1 + 16), (v4 - 192), 0x62uLL);
}

uint64_t sub_100008BE0()
{

  return _NativeDictionary._delete(at:)();
}

void sub_100008BFC()
{
  v3 = v0[91];
  v1 = v0[90];
  v4 = v0[89];
  v2 = v0[88];
}

uint64_t sub_100008C18()
{
}

void sub_100008C3C()
{

  Hasher._combine(_:)(0);
}

uint64_t sub_100008C54()
{

  return sub_100004E24(v2 + 2432, v0, v1);
}

void *sub_100008CAC(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x73uLL);
}

uint64_t sub_100008CD8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for TSDataSyncDatasetGroupAccessActor();
}

uint64_t sub_100008CF0()
{

  return swift_getErrorValue();
}

uint64_t sub_100008D0C()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100008D34@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v3 + v1, v2 + a1, v4, v5);
}

uint64_t sub_100008D54()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 136);
  return result;
}

void sub_100008D90(uint64_t a1@<X8>)
{
  *a1 = *(v2 - 240);
  *(a1 + 8) = *(v2 - 248);
  v3 = *(v1 + 64);
}

uint64_t sub_100008DC0()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void sub_100008DE0(unint64_t a1@<X8>)
{

  sub_10000B654(a1 > 1, v2, 1, v1);
}

uint64_t sub_100008E30()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v14 = *(v0 + 120);
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  v11 = *(v0 + 88);

  return sub_10014E7B4(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1), v12, v13, v14);
}

uint64_t sub_100008E74()
{
  *(v0 + 120) = v1;
  *(v0 + 88) = sub_10016C560;

  return swift_continuation_init();
}

uint64_t sub_100008EA8()
{
  v2 = *(v0 - 424);

  return sub_100177204();
}

uint64_t sub_100008F00()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100008F20()
{

  return dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t sub_100008F38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[OBJC_IVAR___AMSLiveTransactionStore_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = ObjectType;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100009D98;
  *(v9 + 24) = v8;
  v13[4] = sub_100009DA4;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100009DCC;
  v13[3] = &unk_1002BBEF0;
  v10 = _Block_copy(v13);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000090F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000091A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000091B4(uint64_t *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v108 = a4;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v101 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v93 - v12;
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for Log();
  v105 = *(v16 - 8);
  v106 = v16;
  v17 = *(v105 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  v24 = &v93 - v23;
  __chkstk_darwin(v22);
  v27 = &v93 - v26;
  v28 = *(a1 + OBJC_IVAR___AMSLiveTransactionStore_isShuttingDown);
  v109 = a2;
  v107 = a3;
  if (v28 == 1)
  {
    static Log.accountsDaemon.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v29 = *(type metadata accessor for LogInterpolation() - 8);
    v30 = *(v29 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v113 = v108;
    v111 = a1;
    v32 = a1;
    v33 = AMSLogKey();
    if (v33)
    {
      v34 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v111);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v55._countAndFlagsBits = 0xD000000000000043;
    v55._object = 0x80000001002763D0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
    v113 = &type metadata for String;
    v111 = v109;
    v112 = v107;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100009DF4(&v111);
    v56._countAndFlagsBits = 41;
    v56._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v56);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    return (*(v105 + 8))(v27, v106);
  }

  else
  {
    v99 = v25;
    v103 = v8;
    v104 = v7;
    v35 = *(a1 + OBJC_IVAR___AMSLiveTransactionStore_transactionSet);
    v36 = String._bridgeToObjectiveC()();
    [v35 addObject:v36];

    v37 = OBJC_IVAR___AMSLiveTransactionStore_signposter;
    String._bridgeToObjectiveC()();
    v100 = v37;
    OSSignposter.logHandle.getter();
    v102 = v13;
    OSSignpostID.init(log:object:)();
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 countForObject:v38];

    if (v39 == 1)
    {
      static Log.accountsDaemon.getter();
      v40 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      v41 = *(type metadata accessor for LogInterpolation() - 8);
      v42 = *(v41 + 72);
      v43 = *(v41 + 80);
      v44 = (v43 + 32) & ~v43;
      v97 = v40;
      v98 = v42;
      v94 = v44 + 2 * v42;
      v95 = v43;
      v45 = swift_allocObject();
      v93 = xmmword_1002329F0;
      *(v45 + 16) = xmmword_1002329F0;
      v96 = v44;
      v113 = v108;
      v111 = a1;
      v46 = a1;
      v47 = AMSLogKey();
      if (v47)
      {
        v48 = v47;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004118(&v111);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v58._countAndFlagsBits = 0xD000000000000016;
      v58._object = 0x8000000100276350;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v58);
      v113 = &type metadata for String;
      v59 = v107;
      v111 = v109;
      v112 = v107;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009DF4(&v111);
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v60);
      v61 = v59;
      LogInterpolation.init(stringInterpolation:)();
      Log.info(_:)();

      v105 = *(v105 + 8);
      (v105)(v24, v106);

      v62 = OSSignposter.logHandle.getter();
      v63 = static os_signpost_type_t.begin.getter();

      if (OS_os_log.signpostsEnabled.getter())
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v111 = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_100009E5C(v109, v61, &v111);
        v66 = v102;
        v67 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v62, v63, v67, "Transaction", "%s", v64, 0xCu);
        sub_100004118(v65);

        v69 = v103;
        v68 = v104;
      }

      else
      {

        v69 = v103;
        v68 = v104;
        v66 = v102;
      }

      v70 = v108;
      (*(v69 + 16))(v101, v66, v68);
      v71 = type metadata accessor for OSSignpostIntervalState();
      v72 = *(v71 + 48);
      v73 = *(v71 + 52);
      swift_allocObject();
      OSSignpostIntervalState.init(id:isOpen:)();
      v74 = OBJC_IVAR___AMSLiveTransactionStore_transactionSignpostStateStore;
      swift_beginAccess();
      v75 = sub_10000A07C(v109, v61, *&v46[v74]);
      swift_endAccess();
      if (v75)
      {

        static Log.accountsDaemon.getter();
        *(swift_allocObject() + 16) = v93;
        v113 = v70;
        v111 = v46;
        v76 = v46;
        v77 = AMSLogKey();
        if (v77)
        {
          v78 = v77;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100004118(&v111);
        LogInterpolation.init(stringLiteral:)();
        v86 = v99;
        Log.fault(_:)();

        (v105)(v86, v106);
        v61 = v107;
      }

      v87 = v109;
      String.utf8CString.getter();
      v88 = os_transaction_create();

      v89 = OBJC_IVAR___AMSLiveTransactionStore_transactionStore;
      swift_beginAccess();
      if (v88)
      {
        v90 = *&v46[v89];
        swift_isUniquelyReferenced_nonNull_native();
        v110 = *&v46[v89];
        sub_10000A0CC();
        *&v46[v89] = v110;
      }

      else
      {
        sub_1001AE7B8(v87, v61);
        swift_unknownObjectRelease();
      }

      v91 = v102;
      swift_endAccess();
      swift_beginAccess();

      v92 = *&v46[v74];
      swift_isUniquelyReferenced_nonNull_native();
      v110 = *&v46[v74];
      sub_10000A6A8();
      *&v46[v74] = v110;
      swift_endAccess();

      return (*(v103 + 8))(v91, v104);
    }

    else
    {
      static Log.accountsDaemon.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      v49 = *(type metadata accessor for LogInterpolation() - 8);
      v50 = *(v49 + 72);
      v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      *(swift_allocObject() + 16) = xmmword_1002329F0;
      v113 = v108;
      v111 = a1;
      v52 = a1;
      v53 = AMSLogKey();
      if (v53)
      {
        v54 = v53;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004118(&v111);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v79._object = 0x8000000100276330;
      v79._countAndFlagsBits = 0xD000000000000014;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v79);
      v113 = &type metadata for String;
      v111 = v109;
      v112 = v107;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009DF4(&v111);
      v80._countAndFlagsBits = 0;
      v80._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v80);
      LogInterpolation.init(stringInterpolation:)();
      Log.info(_:)();

      (*(v105 + 8))(v20, v106);
      v81 = OSSignposter.logHandle.getter();
      v82 = static os_signpost_type_t.event.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        v84 = v102;
        v85 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v81, v82, v85, "Transaction", "Transaction joined", v83, 2u);

        return (*(v103 + 8))(v84, v104);
      }

      else
      {

        return (*(v103 + 8))(v102, v104);
      }
    }
  }
}

uint64_t sub_100009DA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100009DF4(uint64_t a1)
{
  v2 = sub_100099DF4(&unk_1002DFC10, &qword_10022E6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009E5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009F7C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100009F20(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100004118(v11);
  return v7;
}

uint64_t sub_100009F20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100009F7C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1001ADEA4(a5, a6);
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

uint64_t sub_10000A07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10014EB30(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_10000A0CC()
{
  sub_100002EA8();
  sub_100003994();
  sub_100004C1C();
  v7 = sub_10000BCF4(v4, v5, v6);
  sub_100006768(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_1001514E8();
  sub_100099DF4(&unk_1002DE9D0, &unk_10023B930);
  if (sub_1000073A0())
  {
    v10 = *v1;
    sub_100004C1C();
    sub_100151560(v11, v12, v13);
    sub_10000775C();
    if (!v15)
    {
      goto LABEL_14;
    }

    v3 = v14;
  }

  if (v2)
  {
    v16 = *(*v1 + 56);
    v17 = *(v16 + 8 * v3);
    *(v16 + 8 * v3) = v0;
    sub_10015150C();

    return swift_unknownObjectRelease();
  }

  else
  {
    v20 = sub_1000083B8();
    sub_10000A8B8(v20, v21, v22, v23, v24);
    sub_10015150C();
  }
}

uint64_t sub_10000A1AC@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  result = v1 - 72;
  v3 = *(v1 - 128);
  return result;
}

uint64_t sub_10000A1CC()
{

  return String.hash(into:)();
}

uint64_t sub_10000A1FC()
{
}

unint64_t sub_10000A274()
{

  return sub_1000ED168();
}

uint64_t sub_10000A28C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_10014A87C(a8, v8, a3, a4, v9);
}

void sub_10000A2C0(uint64_t a1@<X8>)
{
  *(v1 + 8 * (v2 >> 6) + 64) |= 1 << v2;
  v4 = (*(v1 + 48) + 16 * v2);
  *v4 = a1;
  v4[1] = v3;
  v5 = *(v1 + 56) + 32 * v2;
}

uint64_t sub_10000A2F4()
{
  *(v0 - 232) = *(v0 - 376);
  *(v0 - 256) = *(v0 - 72);
}

uint64_t sub_10000A318@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 1112) = a1;
  v4 = (v1 + (a1 << 6));
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  *(v2 + 121) = *(v4 + 73);
  *(v2 + 96) = v6;
  *(v2 + 112) = v7;
  *(v2 + 80) = v5;

  return sub_1000BA2CC(v2 + 80, v2 + 144);
}

uint64_t sub_10000A350(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v5 = sub_10000A874();

  return a3(v5);
}

unint64_t sub_10000A3D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10000A484()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

void sub_10000A4A4()
{
  *(v2 + v1[11]) = v5;
  *(v2 + v1[12]) = *(v0 + 240);
  *(v2 + v1[13]) = v3;
  *(v2 + v1[14]) = v4;
  v6 = v1[17];
}

uint64_t sub_10000A4D0()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10000A554()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10000A574()
{
}

void sub_10000A5E4()
{
  v4 = *(v1 + 32);
  *(v3 - 104) = *(v2 + 32);
  *(v3 - 96) = v4;
  v5 = *(*(v3 - 144) + 32);
  v6 = *(v0 + 32);
}

uint64_t sub_10000A600(void *a1)
{
  sub_10000C4FC(a1, v1);

  return dispatch thunk of Encoder.userInfo.getter();
}

uint64_t sub_10000A6A8()
{
  sub_100002EA8();
  sub_100003994();
  sub_100004C1C();
  v7 = sub_10000BCF4(v4, v5, v6);
  sub_100006768(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_1001514E8();
  sub_100099DF4(&unk_1002DFFE0, &unk_100240480);
  if (sub_1000073A0())
  {
    v10 = *v1;
    sub_100004C1C();
    sub_100151560(v11, v12, v13);
    sub_10000775C();
    if (!v15)
    {
      goto LABEL_14;
    }

    v3 = v14;
  }

  if (v2)
  {
    v16 = *(*v1 + 56);
    v17 = *(v16 + 8 * v3);
    *(v16 + 8 * v3) = v0;
    sub_10015150C();
  }

  else
  {
    v20 = sub_1000083B8();
    sub_10000A8B8(v20, v21, v22, v23, v24);
    sub_10015150C();
  }
}

uint64_t sub_10000A7DC()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10000A7FC()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[27];
}

__n128 sub_10000A880()
{
  *v0 = 0u;
  v0[1] = 0u;
  v2 = *(v1 + 1792);
  v3 = *(v1 + 1776);
  result = *(v1 + 1760);
  v5 = *(v1 + 1744);
  return result;
}

unint64_t sub_10000A8B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10000A988()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1000062AC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000A9C8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000AA10()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AA6C@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v4 + v1, v3 + a1, v2, v5);
}

void sub_10000AAAC()
{

  sub_1001070D0(0, v0, 0);
}

void sub_10000AB10()
{

  sub_10013BC44();
}

uint64_t sub_10000AB74()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_10000ABC8(unint64_t *a1)
{

  return sub_10015C37C(a1);
}

uint64_t sub_10000ABFC()
{
  v1 = v0[214];
  v2 = v0[213];
  v3 = *(v0[215] + 96);
  return v0[216];
}

uint64_t sub_10000AC2C()
{
  sub_100004118(*(v0 - 192));
  sub_100004118(*(v0 - 184));
  sub_100004118(*(v0 - 208));
  v1 = *(v0 - 200);

  return sub_100004118(v1);
}

uint64_t sub_10000AC68@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 240);
  **(v1 + 248) = a1;

  return swift_storeEnumTagMultiPayload();
}

void sub_10000AC9C()
{
  v2 = *(v0 + 56);
  *(v0 + 48) = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 16) + 1;
}

uint64_t sub_10000ACB4()
{
  *(v1 + 992) = v0;
  v3 = *(v1 + 880);
  v4 = *(v1 + 872);
  v5 = *(v1 + 856);
  v6 = *(v1 + 656);
  v7 = *(v1 + 648);
  v8 = (*(v1 + 1024) + 32) & ~*(v1 + 1024);

  return static Log.tsDataSync.getter();
}

uint64_t sub_10000ACF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_100007620(sub_10000B170, 0);
}

uint64_t sub_10000AD28()
{

  return swift_dynamicCast();
}

uint64_t sub_10000AD48()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_10000AD74@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

BOOL sub_10000AD84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15);
}

uint64_t sub_10000ADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
  *(v22 - 80) = a1;
  *(v19 + 584) = v21;
  *(v19 + 560) = v20;
}

uint64_t sub_10000ADD0@<X0>(uint64_t *a1@<X8>)
{
  v1 = *(a1[1] + 16);
  result = 12;
  v3 = *a1;
  return result;
}

uint64_t sub_10000AE5C()
{

  return swift_dynamicCast();
}

void sub_10000AE90()
{
  v3 = v0[22];
  v2 = v0[23];
  v6 = v0[21];
  v4 = v0[19];
  v5 = v0[20];

  sub_10011DE50();
}

uint64_t sub_10000AEC4()
{
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v7 = v0[13];
  v5 = v0[11];

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10000AEF8(double a1)
{
  if (a1 == 0.0)
  {
    a1 = v2;
  }

  Hasher._combine(_:)(*&a1);
}

uint64_t sub_10000AF4C(uint64_t result)
{
  *(v1 + 3024) = v2;
  v3 = *(v1 + 2808);
  v4 = *(result + 48);
  return result;
}

void sub_10000AFB4(void *a1@<X8>)
{
  v2 = *(v1 - 664);
  *a1 = *(v1 - 736);
  a1[1] = v2;
  v3 = *(*(v1 - 352) + 64);
  v4 = *(v1 - 784);
}

void sub_10000AFE0()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

uint64_t sub_10000AFF8()
{
}

uint64_t sub_10000B03C()
{

  return Calendar.component(_:from:)(v0, v1);
}

uint64_t sub_10000B098()
{
  v1 = v0[214];
  v2 = v0[213];
  v3 = *(v0[215] + 96);
  return v0[216];
}

void sub_10000B11C()
{

  sub_1000E0484();
}

uint64_t sub_10000B170()
{
  sub_100004194();
  v0[10] = sub_10000B20C();
  v1 = async function pointer to SendableBag.cachedCodableDictionary(for:)[1];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10000BD88;
  v3 = v0[9];
  v4 = sub_1000D32C8();

  return SendableBag.cachedCodableDictionary(for:)(v4);
}

uint64_t sub_10000B20C()
{
  v2 = type metadata accessor for BagValueType();
  v3 = sub_100003724(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_1000045F0();
  sub_100013BFC();
  *v0 = 0xD000000000000012;
  v0[1] = v6;
  v7 = sub_10000B874();
  v8(v7);
  sub_10000B654(0, 1, 1, &_swiftEmptyArrayStorage);
  sub_10000D05C(v9);
  if (v11)
  {
    sub_100008DE0(v10);
    v1 = v15;
  }

  v12 = sub_100006A64();
  v13(v12);
  return v1;
}

void sub_10000B344()
{
  v1 = v0[364];
  v2 = v0[363];
  v3 = v0[361];
  v4 = v0[353];
}

void sub_10000B3B8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = v1;
  v3 = *(v2 + 64);
}

__n128 sub_10000B3FC()
{
  v3 = *(v2 - 96);
  v4 = *(v2 - 88);
  v5 = *(v2 - 128);
  *(v2 - 160) = *(v2 - 112);
  *(v2 - 144) = v5;
  sub_100004118(v0);
  v7 = *(v2 - 160);
  result = *(v2 - 144);
  *v1 = result;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

void *sub_10000B440()
{
  v2 = *(v0 + 56);

  return sub_10000C4FC((v0 + 32), v2);
}

uint64_t sub_10000B478(unint64_t *a1)
{

  return sub_100163640(a1);
}

uint64_t sub_10000B49C()
{
  *(v0 + 440) = v1;
  *(v0 + 408) = sub_10016ACC8;

  return swift_continuation_init();
}

void sub_10000B4D0()
{
  v3 = v0[11];
  *(v2 - 304) = *(v1 + v0[10]);
  v4 = *(v1 + v3);
  v5 = *(v1 + v0[12]);
  v6 = *(v1 + v0[13]);
  v7 = v0[15];
  v8 = *(v1 + v0[14]);
}

void sub_10000B50C()
{

  sub_100107170();
}

uint64_t sub_10000B52C()
{
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = (*(v0 + 344) + 32) & ~*(v0 + 344);

  return static Log.tsDataSync.getter();
}

void sub_10000B558(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    sub_100006D74();
    if (v13 != v14)
    {
      sub_100007310();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_10000B690(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_10013CC70(a4 + v18, v15, &v16[v18], a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_10000B690(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000F090(a1, a2, a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = v5;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10000B780(unint64_t a1@<X8>)
{

  sub_10000B654(a1 > 1, v2, 1, v1);
}

uint64_t sub_10000B7BC()
{
  v1 = **(v0 - 472);
  result = *(v0 - 280);
  v3 = *(v0 - 176);
  return result;
}

uint64_t sub_10000B7D8(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  return result;
}

uint64_t sub_10000B840()
{

  return String.lowercased()()._countAndFlagsBits;
}

uint64_t sub_10000B894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>)
{

  return sub_10014E7B4(a1, a2, a3, a4, a5, a6, a7, a8, a10.n128_i64[0], a10.n128_i64[1], a9, v10, v11);
}

uint64_t sub_10000B8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v17 - 40) = 0;
  *(v17 - 32) = 0;
  *(v17 - 48) = 0;
  *(v17 - 24) = 0;

  return sub_100161A40(&a17, &a9);
}

uint64_t sub_10000B8D4()
{
  *(v0 + 376) = v1;
  *(v0 + 344) = sub_10016B504;

  return swift_continuation_init();
}

uint64_t sub_10000B918@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 88);
  v3 = *(v1 + 96);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
}

uint64_t sub_10000B938()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10000B96C()
{

  return type metadata accessor for AMPAccount();
}

void sub_10000B988(unint64_t a1@<X8>)
{

  sub_10000B654(a1 > 1, v2, 1, v1);
}

uint64_t sub_10000B9E4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10000BA2C()
{
  v2 = *(v0 - 408);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_10000BA98(unint64_t a1@<X8>)
{

  sub_10000B654(a1 > 1, v2, 1, v1);
}

uint64_t sub_10000BACC()
{
  v5 = *v1;
  result = v1[1];
  *(v0 + *(v2 + 24)) = v3;
  v6 = *(v2 + 28);
  return result;
}

uint64_t sub_10000BB1C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000BB3C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v14 = *(v0 + 128);
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v11 = *(v0 + 96);

  return sub_10014E7B4(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1), v12, v13, v14);
}

uint64_t sub_10000BBA8()
{

  return sub_10018B1D8();
}

uint64_t sub_10000BC2C()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10000BC50()
{

  return String.hash(into:)();
}

uint64_t sub_10000BC68(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10000BCB8()
{

  return String.hash(into:)();
}

uint64_t sub_10000BCF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  return sub_10000A350(a2, v3, a3);
}

NSString sub_10000BD1C()
{
  *(v1 + 1832) = *v0;
  *(v1 + 1840) = v0[1];

  return String._bridgeToObjectiveC()();
}

uint64_t sub_10000BD3C()
{
  v3 = v0[125];
  *(v1 - 88) = v0[124];
  *(v1 - 80) = v3;
  v4 = v0[119];
  v5 = v0[114];
  v10 = v0[109];
  v6 = v0[108];
  v7 = v0[105];
  v8 = v0[103];

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000BD88()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_10000452C();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  sub_100004504();
  *v10 = v9;
  v5[12] = v0;

  if (!v0)
  {
    v11 = v5[10];
    v5[13] = v3;
  }

  sub_10000381C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10000BED8()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10000BEF4()
{
  v2 = *(v0 - 392);

  return sub_1000ED254();
}

void sub_10000BF14(uint64_t a1@<X8>)
{
  *a1 = v2;
  *(a1 + 8) = *(v3 - 156);
  v4 = *(v1 + 60);
}

uint64_t sub_10000BF58@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10000BF7C@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v5 + v1, v4 + a1, v3, v2);
}

void *sub_10000BF9C@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = (v2 + (v3 | (16 * a2)));
  *(v4 + 3040) = *v6;
  *(v4 + 3048) = v6[1];
  v7 = *(v4 + 3084);
  v8 = *(v4 + 3086);

  return memcpy((v4 + 408), a1, 0x148uLL);
}

__n128 sub_10000BFF8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 344) + a1;
  v3 = *(v2 + 16);
  *(v1 - 176) = *v2;
  *(v1 - 160) = v3;
  *(v1 - 144) = *(v2 + 32);
  result = *(v2 + 41);
  *(v1 - 135) = result;
  return result;
}

uint64_t sub_10000C048()
{
  result = v2 + *(v1 + 28);
  v5 = v0[5];
  v6 = v3 + v0[4];
  v7 = v0[18];
  return result;
}

uint64_t sub_10000C084()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  return 1;
}

uint64_t sub_10000C0D0(uint64_t result)
{
  *(v1 + 520) = result;
  *(v1 + 464) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10000C108()
{
  v2 = *(v0 + 840);

  return sub_10018B234();
}

void *sub_10000C144()
{

  return sub_100148604(v0, v1 + v2, v3);
}

uint64_t sub_10000C164()
{
  sub_100007F3C();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  sub_10000C1F4(v1, (v0 + 16));

  if (v2)
  {
    sub_100002E08();
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 16);
    v6 = *(v0 + 48);
    v4[1] = *(v0 + 32);
    v4[2] = v6;
    *v4 = v5;
    sub_100003844();
  }

  return v3();
}

uint64_t sub_10000C1F4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v14[0] = 0;
  v4 = [objc_opt_self() dataWithJSONObject:a1 options:0 error:v14];
  v5 = *&v14[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = type metadata accessor for JSONDecoder();
    sub_10018C398(v9);
    JSONDecoder.init()();
    sub_10000C344();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10000D170(v6, v8);

    if (!v2)
    {
      v11 = v14[1];
      v12 = v14[2];
      *a2 = v14[0];
      a2[1] = v11;
      a2[2] = v12;
    }
  }

  else
  {
    v13 = v5;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10000C344()
{
  result = qword_1002DF740;
  if (!qword_1002DF740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF740);
  }

  return result;
}

double sub_10000C398(uint64_t *a1)
{
  v3 = sub_100099DF4(&qword_1002DDDE0, &qword_100239580);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_10000F05C();
  sub_10000C540();
  sub_1000082E0();
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    sub_10000C594();
    sub_10000C660();
    v7 = sub_10000AB64();
    v8(v7, v3);
    *&result = sub_10000B3FC().n128_u64[0];
  }

  return result;
}

double sub_10000C4B8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_10000C398(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void *sub_10000C4FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000C540()
{
  result = qword_1002DDDE8;
  if (!qword_1002DDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDDE8);
  }

  return result;
}

unint64_t sub_10000C594()
{
  result = qword_1002DDDF0;
  if (!qword_1002DDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDDF0);
  }

  return result;
}

uint64_t sub_10000C5F8()
{
  *(v0 - 232) = *(v0 - 376);
  *(v0 - 256) = *(v0 - 312);
}

uint64_t sub_10000C660()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10000C6A0()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t sub_10000C6B8()
{
  v1 = v0[214];
  v2 = v0[213];
  v3 = *(v0[215] + 96);
  return v0[216];
}

uint64_t sub_10000C6E0()
{
  v14 = *(v0 + 400);
  v3 = *(v0 + 376);
  v4 = *(v0 + 368);
  v5 = *(v0 + 520);
  v12 = *(v0 + 392);
  v13 = *(v0 + 336);
  v10 = *(v0 + 328);
  v11 = *(v0 + 312);
  v15 = *(v0 + 304);
  v16 = *(v0 + 296);
  v19 = *(v0 + 280);
  v8 = *(v0 + 384);
  v9 = 3 * *(v0 + 352);
  v17 = *(v0 + 288);
  v18 = *(v0 + 272);
  *(v1 - 88) = *(v0 + 264);
  v6 = *(v0 + 232);

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000C778()
{
  v2 = v0[112];
  v3 = v0[110];
  v4 = v0[107];
  v5 = v0[105];

  return static LogInterpolation.prefix(_:_:)();
}

_BYTE *sub_10000C7F0(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x10000C88CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000C8BC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return _s12amsaccountsd4AvroC20schemaEncodingOption33_E75BE20988CE4C068FC731DDC06586E6LLAA0b6SchemadE0Ovpfi_0();
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

double sub_10000C908(uint64_t *a1)
{
  v3 = sub_100099DF4(&qword_1002DDE38, &qword_100239840);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_10000F05C();
  sub_10000CA6C();
  sub_1000082E0();
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    sub_10000CAC0();
    sub_10000C660();
    v7 = sub_10000AB64();
    v8(v7, v3);
    *&result = sub_10000B3FC().n128_u64[0];
  }

  return result;
}

double sub_10000CA28@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_10000C908(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_10000CA6C()
{
  result = qword_1002DDE40;
  if (!qword_1002DDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE40);
  }

  return result;
}

unint64_t sub_10000CAC0()
{
  result = qword_1002DDE48;
  if (!qword_1002DDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE48);
  }

  return result;
}

uint64_t sub_10000CB34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100099DF4(&qword_1002DDE90, &qword_100239AD8);
  sub_100003724(v5);
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_10000F05C();
  sub_10000CD50();
  sub_1000082E0();
  if (v2)
  {
    return sub_100004118(a1);
  }

  v9 = sub_1000076DC();
  v10 = sub_1000076DC();
  v17 = sub_1000076DC();
  v16 = sub_1000076DC();
  v15 = sub_1000076DC();
  v11 = sub_1000076DC();
  v12 = sub_10000AB64();
  v13(v12, v5);
  result = sub_100004118(a1);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v17;
  a2[3] = v16;
  a2[4] = v15;
  a2[5] = v11;
  return result;
}

double sub_10000CD0C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10000CB34(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_10000CD50()
{
  result = qword_1002DDE98;
  if (!qword_1002DDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE98);
  }

  return result;
}

unint64_t sub_10000CDB8(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_10000CE7C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x10000CF48);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_10000CF90()
{
  *(v3 - 512) = v2;
  *(v3 - 504) = v1;
  *(v3 - 496) = v0;
}

__n128 sub_10000CFD8()
{
  v2 = *(v1 - 680);
  *v0 = *(v1 - 760);
  *(v0 + 8) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 16) = result;
  *(v0 + 32) = v4;
  return result;
}

uint64_t sub_10000D014()
{

  return swift_dynamicCast();
}

uint64_t sub_10000D05C(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_10000D07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v61 = a60;

  return sub_100008494(&a57, v61);
}

uint64_t sub_10000D098@<X0>(__int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, __int16 a42)
{
  a42 = a1;

  return sub_10014EA0C(&a30, &a17);
}

__n128 sub_10000D0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __n128 a19)
{
  *v19 = a17;
  v19[1] = a18;
  result = a19;
  v19[2] = a19;
  return result;
}

uint64_t sub_10000D0C8()
{
  *(v0 + 184) = v1;
  *(v0 + 152) = sub_10016BD3C;

  return swift_continuation_init();
}

uint64_t sub_10000D0FC()
{
  v2 = *(v0 - 416);

  return sub_100177204();
}

uint64_t sub_10000D128()
{

  return sub_100197878();
}

uint64_t sub_10000D150(uint64_t a1)
{

  return QueryType.upsertMany(_:)(v2, v1, a1);
}

uint64_t sub_10000D170(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000D1C8()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v6 = *(v5 + 456);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v3 + 464) = v0;

  if (v0)
  {
    v9 = *(v3 + 448);
  }

  sub_10000381C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10000D2CC()
{
  sub_100002E38();
  v1 = v0[34];
  v2 = *(v1 + 16);
  v3 = v0[56];
  v0[60] = 0;
  v0[61] = v3;
  v0[59] = v2;
  if (!v2)
  {
    sub_100003024();
    v9 = v0[39];
    v10 = sub_10000A520();
    sub_1001AC540(v10, v11, v12);

    sub_1000D3518();
    sub_1000D34C8();

    __asm { BRAA            X2, X16 }
  }

  sub_100007974(v1 + 32, (v0 + 8));
  swift_task_alloc();
  sub_10000DEA0();
  v0[62] = v4;
  *v4 = v5;
  sub_100013FB8(v4);
  sub_1000D34C8();

  return sub_10000D3F0(v6);
}

uint64_t sub_10000D3F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100007620(sub_10000D5CC, 0);
}

void sub_10000D41C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void sub_10000D428()
{
  *(v1 + v0[16]) = *(v2 - 172);
  *(v1 + v0[17]) = *(v2 - 196);
  v3 = v0[18];
}

uint64_t sub_10000D494()
{
  v2 = *(v0 - 368) | 7;
  v3 = *(v0 - 360);

  return swift_allocObject();
}

uint64_t sub_10000D528()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void sub_10000D580()
{
  *(v4 - 176) = v2;
  *(v4 - 168) = v0;
  *(v4 - 160) = *(v4 - 296);
  *(v4 - 152) = v1;
  v5 = *(v4 - 272);
  *(v4 - 144) = v3;
  *(v4 - 136) = v5;
}

void sub_10000D5A0()
{
  v1 = v0[216];
  v2 = v0[215];
  v3 = v0[214];
  v4 = v0[213];
}

void sub_10000D5B4()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v0 + 240);
}

uint64_t sub_10000D5CC()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_accountDataActors);
  v3 = OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics;
  v0[4] = v2;
  v0[5] = v3;
  v0[6] = *(v1 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_bag);
  return sub_100007620(sub_10000D60C, v2);
}

uint64_t sub_10000D60C()
{
  sub_100007F3C();
  v1 = *(v0 + 32);
  sub_10000D68C(*(v0 + 16), *(v0 + 24) + *(v0 + 40), *(v0 + 48));
  sub_1000D3518();

  return v2();
}

uint64_t sub_10000D68C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v40 = a3;
  v7 = type metadata accessor for AccountIdentity();
  v8 = sub_100003724(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = sub_10000C4FC(a1, a1[3]);
  v39 = *(v10 + 16);
  v39(v17, v18, v7);
  swift_beginAccess();
  v19 = *(v3 + 112);
  if (*(v19 + 16))
  {

    v20 = sub_10000DA08();
    if (v21)
    {
      v22 = *(*(v19 + 56) + 8 * v20);
      v23 = *(v10 + 8);

      v23(v17, v7);

      return v22;
    }
  }

  v38 = v15;
  v37 = *(v10 + 8);
  v37(v17, v7);
  sub_100007974(a1, v45);
  sub_100007974(a2, v44);
  type metadata accessor for LiveTransactionStore();
  sub_100003F9C();
  v24 = type metadata accessor for DeviceDetails();
  v25 = [objc_allocWithZone(AMSDefaults) init];
  v42 = sub_100003AE0(0, &qword_1002DBBB8, AMSDefaults_ptr);
  v43 = &protocol witness table for AMSDefaults;
  v41[0] = v25;
  v26 = type metadata accessor for AccountDataAccessActor();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v22 = swift_allocObject();
  v29 = v40;
  v30 = v46;
  sub_1000BC050(v45, v44, &type metadata for AccountDataNetworking, &off_1002B62F8, &type metadata for AccountDataFileSystemStore, &off_1002B6330, &type metadata for AccountDataSyncDASScheduler, &off_1002B63E0, &type metadata for AccountDataUpdateDarwinNotifier, &off_1002B6418, &type metadata for AccountsFrameworkFinder, &off_1002B44E0, v19, &off_1002BBE38, v24, &protocol witness table for DeviceDetails, v41, v29, v36, v37, v38, v39, v40, v41[0], v41[1], v41[2], v42, v43, v44[0], v44[1]);
  if (!v30)
  {
    v22 = v31;
    v32 = sub_10000C4FC(a1, a1[3]);
    v33 = v38;
    v39(v38, v32, v7);
    swift_beginAccess();

    v34 = *(v4 + 112);
    swift_isUniquelyReferenced_nonNull_native();
    v44[0] = *(v4 + 112);
    sub_10014F8C8();
    *(v4 + 112) = v44[0];
    v37(v33, v7);
    swift_endAccess();
  }

  return v22;
}

unint64_t sub_10000DA08()
{
  sub_100005150();
  type metadata accessor for AccountIdentity();
  sub_10000DADC(&qword_1002DE9E0, 255, &type metadata accessor for AccountIdentity);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v0 = sub_100004938();

  return sub_10000DC8C(v0, v1);
}

uint64_t sub_10000DA94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000DADC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_100004938();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000DB20()
{

  return String.hash(into:)();
}

uint64_t sub_10000DB58()
{

  return swift_allocObject();
}

uint64_t sub_10000DB74()
{
  v3 = *(v0 - 2);
  v4 = *(v0 - 1);
  v5 = *v0;
  *(v1 - 120) = 0;
  *(v1 - 112) = 0xE000000000000000;
}

uint64_t sub_10000DBA8()
{
  v2 = *(v0 - 440);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000DBCC()
{

  return sub_100147074();
}

void sub_10000DBE4()
{
  v0[2] = v1;
  v0[9] = 0;
  v0[12] = 0;
}

uint64_t sub_10000DBF4()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

NSString sub_10000DC1C()
{
  *(v1 + 1800) = *v0;
  *(v1 + 1808) = v0[1];

  return String._bridgeToObjectiveC()();
}

uint64_t sub_10000DC3C@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *(v2[1] + 16);
  result = 11;
  v5 = *v2;
  return result;
}

void sub_10000DC58()
{
  v1 = v0[46];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[27];
  v11 = v0[28];
}

unint64_t sub_10000DC8C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = type metadata accessor for AccountIdentity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_10000DADC(&qword_1002DE9E8, 255, &type metadata accessor for AccountIdentity);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10000DE4C(uint64_t *a1)
{
  result = *a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  return result;
}

uint64_t sub_10000DEAC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = v1;

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_10000DED8()
{
  v2 = *(v0 - 416);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000DF30()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

void *sub_10000DF44(void *a1)
{

  return memcpy(a1, v1, 0x62uLL);
}

uint64_t sub_10000DF5C()
{
  *(v0 + 128) = 0;

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_10000DFCC()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v6 = *(v5 + 496);
  *v4 = *v1;
  v3[63] = v7;
  v3[64] = v0;

  if (v0)
  {
    v8 = v3[61];
  }

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10000E0D8()
{
  sub_100004194();
  v1 = *(v0 + 504);
  v2 = *(v0 + 336);
  static Date.now.getter();
  v3 = sub_10000AA8C();

  return _swift_task_switch(v3, v4, v5);
}

void sub_10000E138()
{
  sub_100004868();
  v162 = v1;
  v164 = v2;
  v4 = v3;
  v155 = type metadata accessor for Date();
  v5 = sub_100003724(v155);
  v153 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v150 = v9;
  v152 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v10);
  v12 = *(v11 + 64);
  sub_100003774();
  __chkstk_darwin(v13);
  sub_100003018();
  v151 = v14;
  v15 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v15);
  v17 = *(v16 + 64);
  sub_100003774();
  __chkstk_darwin(v18);
  sub_100003018();
  v146 = v19;
  v20 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v21 = sub_1000030B8(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v24);
  sub_10000D478();
  sub_100008280(v25);
  v26 = type metadata accessor for LogInterpolation.StringInterpolation();
  v27 = sub_1000030B8(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_1000037D4();
  sub_100005238();
  __chkstk_darwin(v30);
  sub_10000D478();
  sub_100008280(v31);
  v149 = type metadata accessor for Log();
  v32 = sub_100003724(v149);
  v148 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_1000030E4();
  v161 = v36;
  v37 = sub_100013FAC();
  v38 = type metadata accessor for AccountDataState(v37);
  v39 = sub_10000307C(v38);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  sub_10000306C();
  v44 = v43 - v42;
  v45 = type metadata accessor for CachedServerDataSyncTaskScheduleInput(0);
  v46 = (v45 - 8);
  v47 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  sub_10000306C();
  v50 = (v49 - v48);
  v51 = (v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account);
  v144 = v0;
  v52 = v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100007F24();
  v163 = v52;
  sub_1000C6B44(v52, v44);
  v54 = *v4;
  v53 = v4[1];
  v55 = v4[2];
  v160 = v4[3];
  v57 = v4[4];
  v56 = v4[5];
  v156 = v53;
  v157 = v57;
  v154 = v4;
  v158 = v55;
  v159 = v56;
  v58 = sub_10000C4FC(v51, v51[3]);
  v59 = sub_10000F2C8(v58);
  v61 = v60;
  v62 = sub_10000C4FC(v51, v51[3]);
  v63 = v46[7];
  v64 = type metadata accessor for AccountIdentity();
  sub_10000307C(v64);
  v66 = *(v65 + 16);
  v143 = v67;
  v142 = v66;
  v141 = v65 + 16;
  (v66)(v50 + v63, v62);
  sub_1000C68A8(v44 + v38[5], v50 + v46[15], &qword_1002DA970, &qword_1002318B0);
  v68 = v46[16];
  sub_10000628C(v38[6]);
  v69 = v46[17];
  sub_10000628C(v38[9]);
  v70 = v46[18];
  sub_10000628C(v38[11]);
  v71 = *(v44 + v38[12]);
  sub_1000C68A8(v44 + v38[13], v50 + v46[20], &qword_1002DB940, &qword_100232B48);
  LODWORD(v63) = *(v44 + v38[8]);
  sub_100004A2C();
  sub_100010478();
  *v50 = v59;
  v50[1] = v61;
  *(v50 + v46[8]) = v54;
  *(v50 + v46[9]) = v156;
  v72 = v157;
  *(v50 + v46[10]) = v158;
  *(v50 + v46[11]) = v72;
  *(v50 + v46[12]) = 8;
  v73 = v160;
  *(v50 + v46[13]) = v159;
  *(v50 + v46[14]) = v73;
  *(v50 + v46[19]) = v71;
  *(v50 + v46[21]) = v63 != 3;
  v74 = sub_1000104CC(v50);
  if (v74 != 11)
  {
    v75 = v74;
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100002834();
    v76 = type metadata accessor for LogInterpolation();
    sub_100003B78(v76);
    v78 = *(v77 + 72);
    sub_10000A1F0();
    v81 = v80 & ~v79;
    v159 = v82;
    sub_1000C71C8();
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1002329E0;
    v157 = v83;
    v160 = v83 + v81;
    *(&v166 + 1) = type metadata accessor for AccountDataAccessActor();
    v84 = v144;
    *&v165 = v144;

    v85 = AMSLogKey();
    if (v85)
    {
      v86 = v85;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v165);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v87._countAndFlagsBits = 0xD00000000000001ALL;
    v87._object = 0x8000000100272D80;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v87);
    *(&v166 + 1) = &type metadata for CachedServerDataSyncTrigger;
    LODWORD(v158) = v75;
    LOBYTE(v165) = v75;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    v88 = sub_100010F78();
    sub_100004E24(v88, v89, v90);
    v91._countAndFlagsBits = sub_10000BEA8();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v91);
    LogInterpolation.init(stringInterpolation:)();
    v92 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
    v93 = v143;
    *(&v166 + 1) = v143;
    v94 = sub_100007914(&v165);
    v95 = v84;
    v142(v94, v84 + v92, v93);
    static LogInterpolation.traceableSensitive(_:)();
    v96 = sub_100010F78();
    sub_100004E24(v96, v97, v98);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100002860();
    v99._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v99);
    v100 = v163;
    v101 = *(v163 + v38[12]);
    *(&v166 + 1) = &type metadata for UInt;
    *&v165 = v101;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    v102 = sub_100010F78();
    v103 = v100;
    sub_100004E24(v102, v104, v105);
    v106._countAndFlagsBits = sub_100002E14();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v106);
    v107 = v145;
    sub_1000C68A8(v100 + v38[6], v145, &qword_1002DA970, &qword_1002318B0);
    v108 = sub_100013DDC();
    v109 = v155;
    if (sub_100004DFC(v108, v110, v155) == 1)
    {
      sub_100004E24(v107, &qword_1002DA970, &qword_1002318B0);
      v165 = 0u;
      v166 = 0u;
      v111 = v153;
    }

    else
    {
      *(&v166 + 1) = v109;
      sub_100007914(&v165);
      v111 = v153;
      sub_1000C7258();
      v112();
    }

    sub_1000C73EC();
    sub_100004E24(&v165, &unk_1002DFC10, &qword_10022E6D0);
    v113._countAndFlagsBits = sub_1000C6F80();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v113);
    v114 = v146;
    sub_1000C68A8(v103 + v38[13], v146, &qword_1002DB940, &qword_100232B48);
    v115 = type metadata accessor for CachedServerDataSyncAttempt(0);
    if (sub_100004DFC(v114, 1, v115) == 1)
    {
      sub_100004E24(v114, &qword_1002DB940, &qword_100232B48);
      v165 = 0u;
      v166 = 0u;
    }

    else
    {
      *(&v166 + 1) = v115;
      sub_100007914(&v165);
      v116 = sub_100005C58();
      sub_1000084E4(v116, v117);
    }

    v118 = v147;
    sub_1000C73EC();
    sub_100004E24(&v165, &unk_1002DFC10, &qword_10022E6D0);
    v119._countAndFlagsBits = sub_1000C6EE8();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v119);
    v120 = *(v103 + v38[8]);
    if (v120 == 3)
    {
      v121 = 0;
      v165 = 0uLL;
      *&v166 = 0;
    }

    else
    {
      LOWORD(v165) = v120;
      v121 = &type metadata for AccountDataChange;
    }

    *(&v166 + 1) = v121;
    sub_1000C73EC();
    sub_100004E24(&v165, &unk_1002DFC10, &qword_10022E6D0);
    v122._countAndFlagsBits = sub_1000C6F9C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v122);
    sub_1000C68A8(v103 + v38[5], v118, &qword_1002DA970, &qword_1002318B0);
    v123 = sub_100013DDC();
    if (sub_100004DFC(v123, v124, v109) == 1)
    {
      sub_100004E24(v118, &qword_1002DA970, &qword_1002318B0);
      v165 = 0u;
      v166 = 0u;
    }

    else
    {
      *(&v166 + 1) = v109;
      sub_100007914(&v165);
      sub_1000C7258();
      v125();
    }

    v126 = v161;
    sub_1000C73EC();
    sub_100004E24(&v165, &unk_1002DFC10, &qword_10022E6D0);
    v127._countAndFlagsBits = sub_10000286C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v127);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    (*(v148 + 8))(v126, v149);
    type metadata accessor for TaskPriority();
    v128 = v151;
    sub_100007B78();
    sub_100002728(v129, v130, v131, v132);
    v133 = v152;
    (*(v111 + 16))(v152, v164, v109);
    sub_1000C6E1C();
    v136 = sub_1000C6B9C(v134, v135);
    v137 = (*(v111 + 80) + 96) & ~*(v111 + 80);
    v138 = swift_allocObject();
    *(v138 + 16) = v95;
    *(v138 + 24) = v136;
    *(v138 + 32) = v95;
    *(v138 + 40) = v158;
    v139 = v154;
    v140 = *(v154 + 1);
    *(v138 + 48) = *v154;
    *(v138 + 64) = v140;
    *(v138 + 80) = *(v139 + 2);
    (*(v111 + 32))(v138 + v137, v133, v109);
    swift_retain_n();
    sub_10013ABD4(0, 0, v128, &unk_100232B80, v138);
  }

  sub_100006C84();
  sub_100010478();
  sub_100007F24();
  sub_1000C6B44(v163, v162);
  sub_100005074();
}

uint64_t sub_10000EC20()
{
  v1 = type metadata accessor for Date();
  sub_100003724(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 96) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10000ECE0()
{
  sub_100007F3C();
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[46];
  v4 = v0[42];
  sub_10000E138();
  v0[65] = v2;
  if (v2)
  {
    v5 = v0[61];
    (*(v0[41] + 8))(v0[42], v0[40]);
  }

  else
  {
    (*(v0[41] + 8))(v0[42], v0[40]);
  }

  sub_10000381C();

  return _swift_task_switch(v6, v7, v8);
}

void sub_10000EDA8()
{
  *(v2 + v1[13]) = v3;
  *(v2 + v1[14]) = v4;
  *(v2 + v1[17]) = v0;
  v5 = v1[18];
}

void sub_10000EDF4()
{
  *(v0 + v1[16]) = *(v2 - 784);
  *(v0 + v1[17]) = *(v2 - 792);
  v3 = v1[18];
}

uint64_t sub_10000EE2C()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_10000EE6C()
{

  return swift_allocObject();
}

uint64_t sub_10000EE88@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    return a2;
  }

  else
  {
    return v2;
  }
}

void sub_10000EE9C()
{
  *(v2 - 264) = *(v2 - 280);
  v3 = *(v2 - 296);
  *(v2 - 256) = v0;
  *(v2 - 248) = v3;
  v4 = *(v2 - 288);
  *(v2 - 240) = v1;
  *(v2 - 232) = v4;
}

uint64_t sub_10000EECC()
{
  v1 = v0[214];
  v2 = v0[213];
  v3 = *(v0[215] + 96);
  return v0[216];
}

void sub_10000EEFC()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 944);
  v3 = *(v0 + 896);
  v4 = *(v0 + 704);
  v5 = ((*(v0 + 140) + 32) & ~*(v0 + 140)) + 2 * *(v0 + 952);
}

uint64_t sub_10000EF90()
{

  return static LogInterpolation.prefix(_:_:)();
}

__n128 sub_10000EFE0()
{
  result = *(v2 + 32);
  *(v0 + 176) = *(v2 + 16);
  *(v0 + 192) = result;
  *(v0 + 201) = *(v2 + 41);
  *(v0 + 160) = *v2;
  v4 = *(v1 + 24);
  return result;
}

void sub_10000F000()
{
  *(v0 + *(v1 + 44)) = *(v2 - 704);
  v3 = v0 + *(v1 + 52);
  v4 = *(v2 - 728);
}

uint64_t sub_10000F03C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10000F080()
{
  v1 = *(*(v0 - 136) + 8);
  result = *(v0 - 120);
  v3 = *(v0 - 112);
  return result;
}

uint64_t sub_10000F090(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100099DF4(a3, a4);
}

uint64_t sub_10000F0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 - 160);

  return DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)(a1, a2, 0, 1, a5, 0, v7, 0);
}

__n128 sub_10000F0DC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  a1[1] = a19;
  return result;
}

uint64_t sub_10000F0F4()
{
  v1 = v0[214];
  v2 = v0[213];
  v3 = *(v0[215] + 96);
  return v0[216];
}

uint64_t sub_10000F13C()
{

  return dispatch thunk of MetricsActivity.complete<A>(with:)();
}

uint64_t sub_10000F1A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v5 = v4(v3);
  sub_100003BF0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000050CC();
  v9(v8);
  return a2;
}

uint64_t sub_10000F1F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 328))
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

uint64_t sub_10000F234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000F2C8(uint64_t a1)
{
  v2 = type metadata accessor for AMPAccount();
  v8 = v2;
  v9 = &off_1002B4510;
  sub_100007914(v7);
  sub_100005C78();
  sub_10000F1A0(a1, v3);
  v4 = sub_10000C4FC(v7, v8);
  v5._countAndFlagsBits = sub_10000F454(v4, [*(v4 + *(v2 + 20)) ams_isSandboxAccount]);
  String.append(_:)(v5);

  sub_1000102EC(0xD000000000000027);
  sub_100004118(v7);
  return sub_1000050CC();
}

void sub_10000F420()
{
  v3 = *(v2 + *(v0 + 24));
  *(v1 + 1032) = v3;
  *(v1 + 1040) = *(v3 + 16);
}

uint64_t sub_10000F454(uint64_t a1, char a2)
{
  v3 = type metadata accessor for AccountIdentity.DSID();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AccountIdentity.dsid.getter();
  v11 = AccountIdentity.DSID.value.getter();
  (*(v6 + 8))(v10, v3);
  v17 = v11;
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v14 = v13;
  if (a2)
  {
    v17 = v12;
    v18 = v13;

    v15._countAndFlagsBits = 0x786F62646E61732ELL;
    v15._object = 0xE800000000000000;
    String.append(_:)(v15);

    v12 = v17;
    v14 = v18;
  }

  sub_10000F598(v12, v14);

  return sub_100007198();
}

void sub_10000F598(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA512();
  v5 = sub_100003724(v4);
  *&v49 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SHA512Digest();
  v12 = sub_100003724(v11);
  v48 = v13;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v12);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v45 - v19;

  sub_10000F99C(a1, a2);
  sub_10000FFF0(&qword_1002DA5E8, &type metadata accessor for SHA512);
  dispatch thunk of HashFunction.init()();
  v21 = sub_100003060();
  sub_10000FF98(v21, v22);
  v23 = sub_100003060();
  sub_10001010C(v23, v24);
  v25 = sub_100003060();
  sub_10000D170(v25, v26);
  dispatch thunk of HashFunction.finalize()();
  (*(v49 + 8))(v10, v4);
  v27 = sub_100003060();
  sub_10000D170(v27, v28);
  v29 = *(v48 + 16);
  v46 = v20;
  v29(v18, v20, v11);
  sub_10000FFF0(&qword_1002DA5F0, &type metadata accessor for SHA512Digest);
  v47 = v11;
  dispatch thunk of Sequence.makeIterator()();
  v30 = v50;
  v31 = v51;
  v32 = v50[2];
  v33 = &_swiftEmptyArrayStorage;
  if (v51 == v32)
  {
LABEL_2:

    v50 = v33;
    sub_100099DF4(&qword_1002DA600, &qword_10022E490);
    sub_100010288();
    BidirectionalCollection<>.joined(separator:)();

    (*(v48 + 8))(v46, v47);
  }

  else
  {
    v49 = xmmword_10022E400;
    v34 = v51;
    while ((v31 & 0x8000000000000000) == 0)
    {
      if (v34 >= v30[2])
      {
        goto LABEL_13;
      }

      v35 = *(v30 + v34 + 32);
      sub_100099DF4(&qword_1002DA5F8, &qword_10022E488);
      v36 = swift_allocObject();
      *(v36 + 16) = v49;
      *(v36 + 56) = &type metadata for UInt8;
      *(v36 + 64) = &protocol witness table for UInt8;
      *(v36 + 32) = v35;
      v37 = String.init(format:_:)();
      v39 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = v33[2];
        sub_1000101B8();
        v33 = v43;
      }

      v40 = v33[2];
      if (v40 >= v33[3] >> 1)
      {
        sub_1000101B8();
        v33 = v44;
      }

      ++v34;
      v33[2] = v40 + 1;
      v41 = &v33[2 * v40];
      *(v41 + 4) = v37;
      *(v41 + 5) = v39;
      if (v32 == v34)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_10000F99C(uint64_t a1, unint64_t a2)
{
  *&v44 = a1;
  *(&v44 + 1) = a2;

  sub_100099DF4(&qword_1002DA610, &qword_10022E498);
  if (swift_dynamicCast())
  {
    sub_10000601C(v42, &v45);
    sub_10000C4FC(&v45, v46);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v42[0] = v44;
    sub_100004118(&v45);
    goto LABEL_56;
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_10000FE68(v42);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v42[0] = a1;
    *(&v42[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v42;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10000FED0(v4, v5, &v45);
  v6 = *(&v45 + 1);
  v7 = v45;
  if (*(&v45 + 1) >> 60 != 15)
  {
    v42[0] = v45;
    goto LABEL_56;
  }

LABEL_9:
  *&v42[0] = Data._Representation.init(count:)();
  *(&v42[0] + 1) = v8;
  __chkstk_darwin(*&v42[0]);
  v9 = sub_10009A02C(sub_10009A784);
  v11 = *(&v42[0] + 1) >> 62;
  v12 = v9;
  v14 = v13;
  v16 = v15;
  v17 = BYTE14(v42[0]);
  switch(*(&v42[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v18) = DWORD1(v42[0]) - LODWORD(v42[0]);
      if (__OFSUB__(DWORD1(v42[0]), v42[0]))
      {
        goto LABEL_63;
      }

      v18 = v18;
LABEL_19:
      if (v10 == v18)
      {
        goto LABEL_20;
      }

      if (v11 == 2)
      {
        v17 = *(*&v42[0] + 24);
      }

      else if (v11 == 1)
      {
        v17 = *&v42[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v20 = *(*&v42[0] + 16);
      v19 = *(*&v42[0] + 24);
      v21 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v21)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v10)
      {
        v17 = 0;
LABEL_53:
        if (v17 < v10)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v41 = v7;
      LOBYTE(v22) = 0;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v23 = v9 & 0xFFFFFFFFFFFFLL;
      }

      v24 = (v9 >> 59) & 1;
      if ((v14 & 0x1000000000000000) == 0)
      {
        LOBYTE(v24) = 1;
      }

      v25 = 4 << v24;
      *(&v44 + 7) = 0;
      *&v44 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v18 = BYTE14(v42[0]);
      goto LABEL_19;
  }

  while (4 * v23 != v16 >> 14)
  {
    v26 = v16;
    if ((v16 & 0xC) == v25)
    {
      v30 = sub_100003738();
      v26 = sub_10009A610(v30, v31, v32);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v23)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v29 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      *&v45 = v12;
      *(&v45 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
      v29 = *(&v45 + v27);
    }

    else
    {
      v28 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = _StringObject.sharedUTF8.getter();
      }

      v29 = *(v28 + v27);
    }

    if ((v16 & 0xC) == v25)
    {
      v33 = sub_100003738();
      v16 = sub_10009A610(v33, v34, v35);
      if ((v14 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v23 <= v16 >> 16)
    {
      goto LABEL_59;
    }

    sub_100003738();
    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v44 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_58;
    }

    if (v22 == 14)
    {
      sub_100007588();
      Data._Representation.append(contentsOf:)();
      LOBYTE(v22) = 0;
    }
  }

  if (!v22)
  {

    sub_10009A7A0(v41, v6);
    goto LABEL_56;
  }

  sub_100007588();
  Data._Representation.append(contentsOf:)();
  sub_10009A7A0(v41, v6);
LABEL_55:

LABEL_56:
  v36 = sub_100007198();
  sub_10000FF98(v36, v37);

  v38 = sub_100007198();
  sub_10000D170(v38, v39);
  return sub_100007198();
}

uint64_t sub_10000FE68(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002DA618, &qword_10022E4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_10000FF98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000FFF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100010038()
{
  type metadata accessor for SHA512();
  sub_10000FFF0(&qword_1002DA5E8, &type metadata accessor for SHA512);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10001010C(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v6;
LABEL_7:
      result = sub_10009A66C(a1, v4);
      if (v2)
      {
LABEL_8:

        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x1000101A8);
      }

      return result;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      goto LABEL_7;
    default:
      result = sub_100010038();
      if (!v2)
      {
        return result;
      }

      goto LABEL_8;
  }
}

void sub_1000101B8()
{
  sub_1000076BC();
  if (v5)
  {
    sub_100006D74();
    if (v7 != v8)
    {
      sub_100007310();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000066AC(v6);
  if (v3)
  {
    sub_100099DF4(&qword_1002DD538, &unk_100238260);
    v9 = sub_100003CDC();
    j__malloc_size(v9);
    sub_100007C48();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = sub_10000C078();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_100010288()
{
  result = qword_1002DA608;
  if (!qword_1002DA608)
  {
    sub_10009A468(&qword_1002DA600, &qword_10022E490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA608);
  }

  return result;
}

uint64_t sub_1000102EC(uint64_t a1)
{
  v2 = *(String.utf8CString.getter() + 16);

  if (v2 < 0x81)
  {
    return a1;
  }

  v3 = String.count.getter();
  v4 = 0;
  if (String.count.getter())
  {
LABEL_9:

    return v4;
  }

  if (v3 >= 127)
  {
    v3 = 127;
  }

  while (1)
  {
    String.index(_:offsetBy:)();
    String.subscript.getter();
    v5 = static String._fromSubstring(_:)();

    v6 = *(String.utf8CString.getter() + 16);

    if (__OFSUB__(v3--, 1))
    {
      break;
    }

    if (v6 <= 0x80)
    {
      v4 = v5;
    }

    if (String.count.getter())
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100010438(uint64_t a1)
{

  return sub_100002728(v1, 1, 1, a1);
}

uint64_t sub_100010458(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 24) = v3;
}

uint64_t sub_100010478()
{
  v1 = sub_100002834();
  v3 = v2(v1);
  sub_10000307C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1000104CC(uint64_t a1)
{
  v3 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  v7 = sub_10000737C();
  v8 = type metadata accessor for CachedServerDataSyncAttempt(v7);
  v9 = sub_10000307C(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10000306C();
  v14 = (v13 - v12);
  v15 = type metadata accessor for CachedServerDataSyncTaskScheduleInput(0);
  sub_100010660(a1 + v15[18], v1, &qword_1002DB940, &qword_100232B48);
  if (sub_100004DFC(v1, 1, v8) == 1)
  {
    sub_100004E24(v1, &qword_1002DB940, &qword_100232B48);
    if (*(a1 + v15[19]))
    {
      return 2;
    }

    else if (*(a1 + v15[17]))
    {
      return 3;
    }

    else if (sub_10001074C(a1 + v15[13]))
    {
      return 1;
    }

    else
    {
      return 11;
    }
  }

  else
  {
    sub_100137E40(v1, v14);
    v16 = *v14;
    sub_10013AB78(v14);
  }

  return v16;
}

uint64_t sub_100010660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100099DF4(a3, a4);
  sub_100003BF0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000106D0(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 245)
  {
    v3 = *a1;
    if (v3 >= 0xB)
    {
      return v3 - 10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for Date();
    v6 = sub_100003F68(*(a3 + 20));

    return sub_100004DFC(v6, v7, v8);
  }
}

uint64_t sub_10001074C(uint64_t a1)
{
  v3 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_10000737C();
  v7 = type metadata accessor for Date();
  v8 = sub_100003724(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10000306C();
  v15 = v14 - v13;
  sub_100010660(a1, v1, &qword_1002DA970, &qword_1002318B0);
  if (sub_100004DFC(v1, 1, v7) == 1)
  {
    sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
    v16 = 1;
  }

  else
  {
    (*(v10 + 32))(v15, v1, v7);
    sub_1000108D8();
    v17 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v10 + 8))(v15, v7);
    v16 = v17 ^ 1;
  }

  return v16 & 1;
}

unint64_t sub_1000108D8()
{
  result = qword_1002DB968;
  if (!qword_1002DB968)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB968);
  }

  return result;
}

uint64_t sub_100010960()
{
  v6 = *(v0 + 336);
  sub_100002728(*(v0 + 384) + v1, 0, 1, v4);
  v7 = *(*(v5 - 72) + 44);
  v8 = *(v0 + 384) + v7;

  return sub_1000C68A8(v6 + v7, v8, v3, v2);
}

void sub_1000109C4()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v4 = v0[17];
}

uint64_t sub_100010A08()
{
  v2 = *(*(v1 - 400) + 8);
  result = v0;
  v4 = *(v1 - 392);
  return result;
}

uint64_t sub_100010A34()
{
  sub_100002E38();
  v1 = v0[61];
  v3 = v0[45];
  v2 = v0[46];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  v7 = sub_10000C4FC(v0 + 8, v0[11]);
  v8 = *(v5 + 16);
  v8(v4, v7, v6);
  sub_10000BC88();
  sub_10000F1A0(v2, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[33] = v1;
  result = sub_10000DA08();
  v12 = *(v1 + 16);
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = result;
  v16 = v11;
  sub_100099DF4(&qword_1002DBBD8, &qword_100232E78);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14))
  {
    v17 = v0[39];
    v18 = v0[33];
    v19 = sub_10000DA08();
    if ((v16 & 1) != (v20 & 1))
    {
      v21 = v0[37];
      sub_1000D34C8();

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v15 = v19;
  }

  v23 = v0[33];
  v25 = v0[44];
  v24 = v0[45];
  if ((v16 & 1) == 0)
  {
    v27 = v0[38];
    v26 = v0[39];
    v28 = v0[37];
    v23[(v15 >> 6) + 8] |= 1 << v15;
    v8(v23[6] + *(v27 + 72) * v15, v26, v28);
    v29 = v23[7];
    v30 = *(v25 + 72);
    sub_100010D8C();
    result = sub_10000853C(v24, v31);
    v32 = v23[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (!v33)
    {
      v23[2] = v34;
      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  sub_1000D2C8C(v0[45], v23[7] + *(v25 + 72) * v15);
LABEL_12:
  v35 = v0[63];
  v36 = v0[46];
  v38 = v0[38];
  v37 = v0[39];
  v39 = v0[37];

  (*(v38 + 8))(v37, v39);
  sub_100010EFC(v36);
  sub_100004118(v0 + 8);
  v40 = v0[59];
  v41 = v0[60] + 1;
  v0[60] = v41;
  v0[61] = v23;
  if (v41 == v40)
  {
    sub_100003024();
    v42 = v0[39];
    v43 = sub_10000A520();
    sub_1001AC540(v43, v44, v45);

    sub_1000D3518();
    sub_1000D34C8();

    __asm { BRAA            X2, X16 }
  }

  sub_100007974(v0[34] + 40 * v41 + 32, (v0 + 8));
  swift_task_alloc();
  sub_10000DEA0();
  v0[62] = v48;
  *v48 = v49;
  sub_100013FB8();
  sub_1000D34C8();

  return sub_10000D3F0(v50);
}

uint64_t sub_100010D2C@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v3 + v1, v4 + a1, v5, v2);
}

uint64_t sub_100010D4C()
{

  return sub_1000B9E6C();
}

uint64_t sub_100010D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  *(a1 + 16) = a17;
  *(v19 + 2648) = v18;
  *(v19 + 2624) = v17;
}

void sub_100010DA4()
{
  v2 = *(v1 - 120);
  v3 = *(v1 - 112);
  *(v1 - 104) = v0;
  v4 = *(v0 + 24);
  v5 = *(v0 + 16) + 1;
}

uint64_t sub_100010DEC()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

void sub_100010E50()
{
  v2 = *(v0 + 16) + 1;

  sub_10013C578();
}

NSString sub_100010E90()
{
  *(v1 + 1992) = *v0;
  *(v1 + 2000) = v0[1];

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100010EB0()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);
  v4 = *(v0 + 344);
  result = *(v0 + 312);
  v6 = *(v0 + 280);
  v7 = *(v0 + 208);
  v8 = (*(v0 + 464) + 32) & ~*(v0 + 464);
  v9 = *(*(v0 + 288) + 8);
  return result;
}

void sub_100010EEC()
{
  v1 = v0[30];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[21];
}

uint64_t sub_100010EFC(uint64_t a1)
{
  v2 = type metadata accessor for AccountDataState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010F58()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_100010F88(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 136);
  return *(v2 + 128);
}

uint64_t sub_100010FA8()
{
}

uint64_t sub_100010FD0()
{

  return type metadata accessor for AutoBugCaptureReport();
}

uint64_t sub_100010FEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100011034(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011088()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v6 = *(v5 + 424);
  *v4 = *v1;
  v3[54] = v7;
  v3[55] = v0;

  if (v0)
  {
    v9 = v3[51];
    v8 = v3[52];
  }

  sub_10000381C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10001119C()
{
  v53 = v0;
  v1 = v0[54];
  v2 = v0[41];
  v40 = v0[33];
  v41 = v0[36];
  sub_100099DF4(&qword_1002DB9A8, &qword_100232BB8);
  result = static _DictionaryStorage.copy(original:)();
  v4 = result;
  v5 = 0;
  v6 = v1 + 64;
  v42 = v2;
  v43 = v1;
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v1 + 64);
  v10 = (v7 + 63) >> 6;
  v39 = result + 64;
  v44 = result;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v46 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = v45[40];
      v16 = v45[37];
      v17 = v45[34];
      v48 = v45[35];
      v50 = v45[42];
      v18 = *(v42 + 72) * v14;
      v19 = *(v43 + 48) + v18;
      (*(v42 + 16))();
      v20 = *(v43 + 56);
      v21 = *(v40 + 72);
      sub_10000BC88();
      sub_10000F1A0(v22, v17);
      sub_100010D8C();
      sub_10000853C(v17, v16);
      swift_storeEnumTagMultiPayload();
      *(v39 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v4 = v44;
      (*(v42 + 32))(v44[6] + v18, v50, v15);
      result = sub_1000D3234(v16, v44[7] + *(v41 + 72) * v14, &qword_1002DB970, &qword_100232F30);
      v23 = v44[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v44[2] = v25;
      v9 = v46;
      if (!v46)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v46 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    v26 = v45[54];
    v27 = v45[55];
    v29 = v45[50];
    v28 = v45[51];
    v30 = v45[49];
    v31 = v45[46];
    v32 = v45[42];
    v33 = v45[43];
    v34 = v45[39];
    v47 = v45[38];
    v49 = v45[37];
    v51 = v45[34];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v29;
    sub_100011544(v4, sub_100011E28, 0, isUniquelyReferenced_nonNull_native, &v52);

    v36 = v52;
    sub_100003AE0(0, &qword_1002DBBF8, AMSAccountCachedServerDataResponse_ptr);
    v37 = sub_1000122F4(v36);

    sub_1000D3518();

    return v38(v37);
  }

  return result;
}

uint64_t sub_1000114E8()
{
  sub_100002FBC();
  v3 = sub_100099DF4(v1, v2);
  sub_10000B7EC(v3);
  v5 = *(v4 + 32);
  v6 = sub_1000050CC();
  v7(v6);
  return v0;
}

uint64_t sub_100011544(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v45 = a4;
  v9 = &qword_1002DB970;
  v10 = sub_100099DF4(&qword_1002DB970, &qword_100232F30);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  __chkstk_darwin(v10 - 8);
  v53 = v42 - v12;
  v46 = type metadata accessor for AccountIdentity();
  v13 = *(v46 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v46);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100099DF4(&qword_1002DBC08, &qword_100232F60);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v42 - v19;
  sub_100011968(a1, a2, a3, v51);
  v47 = v51[0];
  v48 = v51[1];
  v49 = v51[2];
  v50 = v52;
  v43 = v13;
  v21 = (v13 + 32);
  v42[2] = a1;

  v42[1] = a3;

  while (1)
  {
    sub_1000119A4(v20);
    v22 = sub_100099DF4(&qword_1002DBC00, &qword_100232F58);
    if (sub_100004DFC(v20, 1, v22) == 1)
    {
      goto LABEL_14;
    }

    v23 = *(v22 + 48);
    v24 = *v21;
    (*v21)(v16, v20, v46);
    v25 = v9;
    sub_1000D3234(&v20[v23], v53, v9, &qword_100232F30);
    v26 = *a5;
    v28 = sub_10000DA08();
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (v45)
      {
        if (v27)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_100099DF4(&qword_1002DBBF0, &unk_100232F40);
        _NativeDictionary.copy()();
        if (v32)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_100011EA4(v31, v45 & 1);
      v33 = *a5;
      v34 = sub_10000DA08();
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_17;
      }

      v28 = v34;
      if (v32)
      {
LABEL_13:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_14:
        sub_1000122EC();
      }
    }

    v36 = *a5;
    *(*a5 + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v24((v36[6] + *(v43 + 72) * v28), v16, v46);
    v37 = v36[7] + *(v44 + 72) * v28;
    v9 = v25;
    sub_1000D3234(v53, v37, v25, &qword_100232F30);
    v38 = v36[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_16;
    }

    v36[2] = v40;
    v45 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100011968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1000119A4@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_100099DF4(&qword_1002DB990, &qword_100232F50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v44 - v4;
  v6 = sub_100099DF4(&qword_1002DB970, &qword_100232F30);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v44 - v8;
  v10 = type metadata accessor for AccountIdentity();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100099DF4(&qword_1002DB978, &qword_100232BA0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v50 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v17);
  v21 = &v44 - v20;
  v22 = *v1;
  v23 = v1[1];
  v24 = v1[2];
  v25 = v1[3];
  v26 = v1[4];
  v45 = v5;
  v49 = v24;
  if (v26)
  {
    v47 = v21;
    v27 = v25;
LABEL_7:
    v46 = (v26 - 1) & v26;
    v28 = __clz(__rbit64(v26)) | (v27 << 6);
    v29 = v14;
    v30 = v22;
    (*(v11 + 16))(v29, *(v22 + 48) + *(v11 + 72) * v28, v10);
    sub_1000D31EC(*(v30 + 56) + *(v48 + 72) * v28, v9, &qword_1002DB970, &qword_100232F30);
    v31 = v9;
    v32 = *(v2 + 48);
    v21 = v47;
    (*(v11 + 32))();
    v33 = v46;
    sub_1000D3234(v31, &v21[v32], &qword_1002DB970, &qword_100232F30);
    v34 = 0;
LABEL_8:
    v35 = 1;
    sub_100002728(v21, v34, 1, v2);
    *v1 = v30;
    v1[1] = v23;
    v1[2] = v49;
    v1[3] = v25;
    v1[4] = v33;
    v37 = v1[5];
    v36 = v1[6];
    v38 = v21;
    v39 = v50;
    sub_1000D3234(v38, v50, &qword_1002DB978, &qword_100232BA0);
    v40 = sub_100004DFC(v39, 1, v2);
    v41 = v51;
    if (v40 != 1)
    {
      v42 = v45;
      sub_1000D3234(v39, v45, &qword_1002DB990, &qword_100232F50);
      v37(v42);
      sub_100004E7C(v42, &qword_1002DB990, &qword_100232F50);
      v35 = 0;
    }

    v43 = sub_100099DF4(&qword_1002DBC00, &qword_100232F58);
    return sub_100002728(v41, v35, 1, v43);
  }

  else
  {
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= ((v24 + 64) >> 6))
      {
        v33 = 0;
        v34 = 1;
        v30 = v22;
        goto LABEL_8;
      }

      v26 = *(v23 + 8 * v27);
      ++v25;
      if (v26)
      {
        v47 = v21;
        v25 = v27;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100011D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AccountIdentity();
  (*(*(v8 - 8) + 16))(a1, a3, v8);
  return sub_1000D31EC(a4, a2, &qword_1002DB970, &qword_100232F30);
}

uint64_t sub_100011E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_100099DF4(&qword_1002DB990, &qword_100232F50) + 48);
  v5 = a2 + *(sub_100099DF4(&qword_1002DBC00, &qword_100232F58) + 48);

  return sub_100011D9C(a2, v5, a1, a1 + v4);
}

uint64_t sub_100011EA4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_100099DF4(&qword_1002DB970, &qword_100232F30);
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v6 - 8);
  v56 = v48 - v8;
  v9 = type metadata accessor for AccountIdentity();
  v10 = sub_100003724(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_1000030E4();
  v55 = v15;
  v16 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v17 = *(*v3 + 24);
  }

  sub_100099DF4(&qword_1002DB9A8, &qword_100232BB8);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v19 = result;
  if (!*(v16 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v19;
    return result;
  }

  v48[0] = v3;
  v20 = 0;
  v21 = (v16 + 64);
  v22 = 1 << *(v16 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v16 + 64);
  v25 = (v22 + 63) >> 6;
  v48[1] = v12 + 16;
  v49 = v12;
  v53 = (v12 + 32);
  v26 = result + 64;
  v50 = v16;
  if (!v24)
  {
LABEL_9:
    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v20 >= v25)
      {
        break;
      }

      v28 = v21[v20];
      ++v27;
      if (v28)
      {
        v24 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v48[0];
      goto LABEL_35;
    }

    v47 = 1 << *(v16 + 32);
    v3 = v48[0];
    if (v47 >= 64)
    {
      sub_1000EA578(0, (v47 + 63) >> 6, v21);
    }

    else
    {
      *v21 = -1 << v47;
    }

    *(v16 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v24 &= v24 - 1;
LABEL_14:
    v29 = *(v16 + 48);
    v54 = *(v12 + 72);
    if (v52)
    {
      v30 = sub_10000B9D0();
      v31(v30);
      v32 = sub_100007BB8();
      sub_100012CF4(v32, v33, &qword_1002DB970, &qword_100232F30);
    }

    else
    {
      v34 = sub_10000B9D0();
      v35(v34);
      v36 = sub_100007BB8();
      sub_10003D178(v36, v37, &qword_1002DB970, &qword_100232F30);
    }

    v38 = *(v19 + 40);
    sub_10001391C(&qword_1002DE9E0, &type metadata accessor for AccountIdentity);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v39 = -1 << *(v19 + 32);
    v40 = result & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~*(v26 + 8 * (v40 >> 6))) == 0)
    {
      break;
    }

    v42 = __clz(__rbit64((-1 << v40) & ~*(v26 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v26 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    (*v53)(*(v19 + 48) + v54 * v42, v55, v9);
    result = sub_100012CF4(v56, *(v19 + 56) + v16 * v42, &qword_1002DB970, &qword_100232F30);
    ++*(v19 + 16);
    v12 = v49;
    v16 = v50;
    if (!v24)
    {
      goto LABEL_9;
    }
  }

  v43 = 0;
  v44 = (63 - v39) >> 6;
  while (++v41 != v44 || (v43 & 1) == 0)
  {
    v45 = v41 == v44;
    if (v41 == v44)
    {
      v41 = 0;
    }

    v43 |= v45;
    v46 = *(v26 + 8 * v41);
    if (v46 != -1)
    {
      v42 = __clz(__rbit64(~v46)) + (v41 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

id sub_1000122F4(uint64_t a1)
{
  v101 = a1;
  v1 = type metadata accessor for AccountDataState(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_1000030E4();
  v107 = v3;
  v106 = sub_100099DF4(&qword_1002DB970, &qword_100232F30);
  v4 = sub_100003724(v106);
  v100 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000308C();
  v10 = v8 - v9;
  v12 = __chkstk_darwin(v11);
  v14 = v97 - v13;
  __chkstk_darwin(v12);
  v99 = v97 - v15;
  v119 = type metadata accessor for AccountIdentity();
  v16 = sub_100003724(v119);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_10000308C();
  v117 = v21 - v22;
  __chkstk_darwin(v23);
  v110 = v97 - v24;
  v25 = sub_100099DF4(&qword_1002DB978, &qword_100232BA0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  sub_10000308C();
  v109 = v27 - v28;
  __chkstk_darwin(v29);
  v31 = v97 - v30;
  v32 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v33 = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  v34 = sub_100003AE0(0, &qword_1002DB980, AMSAccountCachedServerDataAccountResult_ptr);
  v35 = sub_100012BC4();
  v36 = v32;
  Dictionary.init(dictionaryLiteral:)();
  v115 = v34;
  v116 = v33;
  v114 = v35;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v36 setAllAccountResults:isa];

  v118 = v36;
  v38 = 0;
  v40 = v101 + 64;
  v39 = *(v101 + 64);
  v41 = 1 << *(v101 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v39;
  v44 = (v41 + 63) >> 6;
  v97[3] = v18 + 16;
  v112 = (v18 + 32);
  v97[2] = "During read, found reason ";
  v97[1] = "No account data found";
  v98 = v18;
  v102 = (v18 + 8);
  v103 = v44;
  v104 = v101 + 64;
  v105 = v10;
  v111 = v14;
  v108 = v31;
  if ((v42 & v39) != 0)
  {
    while (1)
    {
      v45 = v38;
LABEL_10:
      v47 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v48 = v47 | (v45 << 6);
      v49 = v101;
      v50 = v98;
      v51 = v119;
      (*(v98 + 16))(v110, *(v101 + 48) + *(v98 + 72) * v48, v119);
      v52 = v99;
      sub_10003D178(*(v49 + 56) + *(v100 + 72) * v48, v99, &qword_1002DB970, &qword_100232F30);
      v53 = sub_100099DF4(&qword_1002DB990, &qword_100232F50);
      v54 = *(v53 + 48);
      v55 = *(v50 + 32);
      v46 = v109;
      v55(v109, v110, v51);
      sub_100012CF4(v52, v46 + v54, &qword_1002DB970, &qword_100232F30);
      sub_100002728(v46, 0, 1, v53);
      v14 = v111;
LABEL_11:
      v56 = v46;
      v57 = v108;
      sub_100012CF4(v56, v108, &qword_1002DB978, &qword_100232BA0);
      v58 = sub_100099DF4(&qword_1002DB990, &qword_100232F50);
      if (sub_100004DFC(v57, 1, v58) == 1)
      {
        break;
      }

      v59 = *(v58 + 48);
      (*v112)(v117, v57, v119);
      sub_100012CF4(v57 + v59, v14, &qword_1002DB970, &qword_100232F30);
      v60 = AccountIdentity.amsAccountIdentity()();
      v61 = [objc_allocWithZone(AMSAccountCachedServerDataAccountResult) init];
      v62 = v14;
      v63 = v105;
      sub_10003D178(v62, v105, &qword_1002DB970, &qword_100232F30);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v64 = *v63;
        v65 = _convertErrorToNSError(_:)();
        [v61 setError:v65];
      }

      else
      {
        v66 = v107;
        sub_100012D9C(v63, v107);
        v67 = sub_100012E00(v66);
        if (v67)
        {
          v68 = v67;
          [v61 setFields:v67];
        }

        else
        {
          v70 = String._bridgeToObjectiveC()();
          v71 = String._bridgeToObjectiveC()();
          v68 = AMSError();

          v72 = _convertErrorToNSError(_:)();
          [v61 setError:v72];
        }

        sub_100010EFC(v107);
      }

      v73 = v60;
      v74 = v61;
      v75 = [v118 allAccountResults];
      v76 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v113 = v74;
      if ((v76 & 0xC000000000000001) != 0)
      {
        if (v76 >= 0)
        {
          v76 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v77 = __CocoaDictionary.count.getter();
        if (__OFADD__(v77, 1))
        {
          goto LABEL_38;
        }

        v76 = sub_1000C7C70(v76, v77 + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120 = v76;
      v79 = sub_100013964();
      v81 = *(v76 + 16);
      v82 = (v80 & 1) == 0;
      v83 = v81 + v82;
      if (__OFADD__(v81, v82))
      {
        goto LABEL_37;
      }

      v84 = v79;
      v85 = v80;
      sub_100099DF4(&qword_1002DB998, &qword_100232BA8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v83))
      {
        v86 = sub_100013964();
        v14 = v111;
        if ((v85 & 1) != (v87 & 1))
        {
          goto LABEL_40;
        }

        v84 = v86;
      }

      else
      {
        v14 = v111;
      }

      v88 = v113;
      v89 = v120;
      if (v85)
      {
        v90 = v120[7];
        v91 = *(v90 + 8 * v84);
        *(v90 + 8 * v84) = v113;
      }

      else
      {
        v120[(v84 >> 6) + 8] |= 1 << v84;
        *(v89[6] + 8 * v84) = v73;
        *(v89[7] + 8 * v84) = v88;
        v92 = v89[2];
        v93 = __OFADD__(v92, 1);
        v94 = v92 + 1;
        if (v93)
        {
          goto LABEL_39;
        }

        v89[2] = v94;
      }

      v95 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v118 setAllAccountResults:v95];

      sub_100004E24(v14, &qword_1002DB970, &qword_100232F30);
      (*v102)(v117, v119);
      v44 = v103;
      v40 = v104;
      if (!v43)
      {
        goto LABEL_5;
      }
    }

    return v118;
  }

  else
  {
LABEL_5:
    v46 = v109;
    while (1)
    {
      v45 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v45 >= v44)
      {
        v69 = sub_100099DF4(&qword_1002DB990, &qword_100232F50);
        sub_100002728(v46, 1, 1, v69);
        v43 = 0;
        goto LABEL_11;
      }

      v43 = *(v40 + 8 * v45);
      ++v38;
      if (v43)
      {
        v38 = v45;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100012BC4()
{
  result = qword_1002DB988;
  if (!qword_1002DB988)
  {
    sub_100003AE0(255, &qword_1002DEA60, AMSAccountIdentity_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB988);
  }

  return result;
}

uint64_t sub_100012C2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100099DF4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100012C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100099DF4(a3, a4);
  sub_10000307C(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100012CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000048AC(a1, a2, a3, a4);
  sub_10000307C(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_100012D44()
{
  sub_100002FBC();
  v3 = sub_100099DF4(v1, v2);
  sub_10000307C(v3);
  v5 = *(v4 + 32);
  v6 = sub_1000050CC();
  v7(v6);
  return v0;
}

uint64_t sub_100012D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100012E00(char *a1)
{
  v2 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v47 - v4;
  v6 = type metadata accessor for Date();
  v7 = sub_100003724(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_10000308C();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = v47 - v16;
  memcpy(v83, a1, sizeof(v83));
  v18 = type metadata accessor for AccountDataState(0);
  v19 = *&a1[v18[10]];
  v20 = *&a1[v18[8]];
  sub_100013524();
  memcpy(v66, v65, sizeof(v66));
  v21 = 0;
  if (sub_100013900(v66) != 1)
  {
    v47[2] = v66[1];
    v47[3] = v66[0];
    v82 = BYTE1(v66[3]);
    v47[1] = v66[4];
    v22 = v66[5];
    v48 = v66[2];
    v49 = v66[8];
    v50 = v66[7];
    v51 = v66[10];
    v80 = BYTE1(v66[11]);
    v81 = v66[11];
    v78 = BYTE3(v66[11]);
    v79 = BYTE2(v66[11]);
    v52 = v66[9];
    v53 = v66[12];
    v76 = BYTE1(v66[13]);
    v77 = v66[13];
    v74 = BYTE3(v66[13]);
    v75 = BYTE2(v66[13]);
    v72 = BYTE5(v66[13]);
    v73 = BYTE4(v66[13]);
    v55 = v66[15];
    v56 = v66[14];
    v57 = v66[17];
    v58 = v66[16];
    v59 = v66[19];
    v60 = v66[18];
    v71 = v66[20];
    v54 = BYTE1(v66[20]);
    v61 = v66[22];
    v62 = v66[21];
    v47[0] = v66[29];
    v69 = BYTE1(v66[30]);
    v70 = v66[30];
    v68 = v66[33];
    v63 = v66[35];
    v64 = v66[34];
    v67 = BYTE1(v66[39]);
    v23 = v66[40];
    sub_10003D178(&a1[v18[5]], v5, &qword_1002DA970, &qword_1002318B0);
    if (sub_100004DFC(v5, 1, v6) == 1)
    {
      sub_100004E24(v65, &qword_1002DB920, &qword_100238870);
      v24 = &qword_1002DA970;
      v25 = &qword_1002318B0;
      v26 = v5;
LABEL_6:
      sub_100004E24(v26, v24, v25);
      return 0;
    }

    (*(v9 + 32))(v17, v5, v6);
    static Date.distantPast.getter();
    sub_10001391C(&qword_1002E27C0, &type metadata accessor for Date);
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    v28 = *(v9 + 8);
    v28(v14, v6);
    if (v27)
    {
      v28(v17, v6);
      v24 = &qword_1002DB920;
      v25 = &qword_100238870;
      v26 = v65;
      goto LABEL_6;
    }

    v29 = v23;
    v21 = [objc_allocWithZone(AMSAccountCachedServerDataFields) init];
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_100006C9C(isa, "setExpiration:");

    v31 = String._bridgeToObjectiveC()();
    sub_100006C9C(v31, "setAcAccountName:");

    [v21 setAccountFlagsVersion:v48];
    v32 = [v21 setAutoPlayEnabled:v82];
    if (v22)
    {

      v33 = String._bridgeToObjectiveC()();
    }

    else
    {
      v33 = 0;
    }

    sub_100006C9C(v32, "setCombinedStoreFrontID:");

    v34 = String._bridgeToObjectiveC()();
    sub_100006C9C(v34, "setCreditBalance:");

    v35 = String._bridgeToObjectiveC()();
    sub_100006C9C(v35, "setFirstName:");

    [v21 setHasAgreedToAppClipTerms:v81];
    [v21 setHasAgreedToTerms:v80];
    [v21 setHasSubscriptionFamilySharingEnabled:v79];
    [v21 setHasHardwareWatchOffer:v78];
    [v21 setIdentityLastVerified:v53];
    [v21 setIsAskToBuy:v77];
    [v21 setIsDisabledAccount:v76];
    [v21 setIsInBadCredit:v75];
    [v21 setIsInFamily:v74];
    [v21 setIsManagedAccount:v72];
    [v21 setIsRestrictedAccount:v71];
    v36 = [v21 setIsInRestrictedRegion:v73];
    if (v54 == 2)
    {
      v37 = 0;
    }

    else
    {
      v36 = [objc_allocWithZone(NSNumber) initWithBool:v54 & 1];
      v37 = v36;
    }

    sub_100006C9C(v36, "setIsU18OrCountrysEquivalent:");

    v38 = String._bridgeToObjectiveC()();
    sub_100006C9C(v38, "setIsoCountryCode:");

    v39 = String._bridgeToObjectiveC()();
    sub_100006C9C(v39, "setIso2CountryCode:");

    v40 = String._bridgeToObjectiveC()();
    sub_100006C9C(v40, "setIso3CountryCode:");

    v41 = String._bridgeToObjectiveC()();
    sub_100006C9C(v41, "setLastName:");

    if (v70)
    {
      v43 = 0;
    }

    else
    {
      v44 = objc_allocWithZone(NSNumber);
      v42 = [v44 initWithUnsignedLongLong:v47[0]];
      v43 = v42;
    }

    sub_100006C9C(v42, "setOneAccountLinkedDSID:");

    [v21 setPersonalization:v69];
    [v21 setRetailDemo:v68];
    v45 = String._bridgeToObjectiveC()();
    sub_100006C9C(v45, "setStorefrontId:");

    [v21 setUnderThirteen:v67];
    [v21 setVerifiedExpirationDate:v29];
    sub_100004E24(v65, &qword_1002DB920, &qword_100238870);
    v28(v17, v6);
  }

  return v21;
}

void sub_100013524()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_10012EC60(v14);
  if (sub_100013900(v14) != 1)
  {
    v61 = v16;
    v60 = v23;
    v59 = v24;
    v6.i32[0] = v28;
    v7 = vmovl_u8(v6).u64[0];
    if (v3 == 3 || v3 == 2)
    {
      v9 = v1;
      if (v1 == 3 || v1 == 2)
      {
        v11 = v61;
      }

      else
      {
        v11 = v1;
      }

      if (v3 == 3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = v3;
    }

    v12 = HIBYTE(v3);
    if (v12 != 2)
    {
LABEL_22:
      *&__src[16] = v14[2];
      __src[24] = v15;
      __src[25] = v11 & 1;
      *&__src[32] = v17;
      *&__src[72] = v21;
      __src[88] = v60;
      __src[89] = v59;
      __src[90] = v25 & 1;
      __src[91] = v26 & 1;
      *&__src[96] = v27;
      __src[108] = v29 & 1;
      __src[109] = v30 & 1;
      *&__src[112] = v31;
      *&__src[128] = v33;
      *&__src[144] = v35;
      __src[160] = v37 & 1;
      __src[161] = v38;
      *&__src[168] = v39;
      *&__src[184] = v41;
      __src[208] = v43 & 1;
      *&__src[216] = v44;
      *&__src[192] = v42;
      *&__src[224] = v45;
      __src[240] = v46 & 1;
      __src[241] = v12 & 1;
      *&__src[248] = v48;
      __src[264] = v50 & 1;
      *&__src[272] = v51;
      *&__src[288] = v53;
      *&__src[304] = v55;
      __src[312] = v56 & 1;
      __src[313] = v57 & 1;
      *&__src[320] = v58;
      *__src = v14[0];
      *&__src[8] = v14[1];
      *&__src[64] = v20;
      *&__src[40] = v18;
      *&__src[48] = v19;
      *&__src[80] = v22;
      *&__src[104] = vuzp1_s8((v7 & 0xFF01FF01FF01FF01), (v7 & 0xFF01FF01FF01FF01)).u32[0];
      *&__src[120] = v32;
      *&__src[136] = v34;
      *&__src[152] = v36;
      *&__src[176] = v40;
      *&__src[256] = v49;
      *&__src[280] = v52;
      *&__src[296] = v54;
      PIScheduledRotationConfiguration.rotationInterval.getter(__src);
      memcpy(__dst, __src, 0x148uLL);

      goto LABEL_23;
    }

    v9 = v1;
LABEL_17:
    if (v9 == 3)
    {
      LOBYTE(v12) = v47;
    }

    else if (HIBYTE(v1) == 2)
    {
      LOBYTE(v12) = v47;
    }

    else
    {
      LOBYTE(v12) = HIBYTE(v1);
    }

    goto LABEL_22;
  }

  sub_10012EC60(__dst);
LABEL_23:
  memcpy(v5, __dst, 0x148uLL);
  sub_1000027F8();
}

uint64_t sub_100013900(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10001391C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100013964()
{
  NSObject._rawHashValue(seed:)(*(v0 + 40));
  v1 = sub_100004938();

  return sub_1000139A4(v1, v2);
}

unint64_t sub_1000139A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_100150E84();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100013A64()
{
  sub_10000DB4C();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;
  sub_100004504();
  *v10 = v9;

  v11 = *(v5 + 24);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = sub_100008D64();
    v14(v13, 0, v12);

    _Block_release(v11);
  }

  else
  {
    v15 = sub_100008D64();
    v16(v15, v4, 0);
    _Block_release(v11);
  }

  sub_1000D33F4();

  return v17();
}

uint64_t sub_100013C08@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v5 + v1, v4 + a1, v3, v2);
}

__n128 sub_100013C64@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 160);
  *a1 = *(v1 - 176);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 - 144);
  result = *(v1 - 135);
  *(a1 + 41) = result;
  return result;
}

double sub_100013C80@<D0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t sub_100013CC4()
{
  result = v0;
  v3 = *(v1 - 200);
  return result;
}

void sub_100013CD0()
{

  sub_10013C2FC();
}

uint64_t sub_100013CE8()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_10016CD84;

  return swift_continuation_init();
}

uint64_t sub_100013D34@<X0>(uint64_t a1@<X8>)
{
  sub_10000C4FC((a1 + 136), v1);

  return dispatch thunk of MetricsQueue.enqueue(event:)();
}

NSString sub_100013D74()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100013E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 56) + 16 * v8);
  result = v9[1];
  *v9 = v7;
  v9[1] = v6;
  return result;
}

_OWORD *sub_100013E54()
{

  return sub_10018AED4(v0, v2, 0x636F4C726F727265, 0xED00006E6F697461, v1, (v3 + 24));
}

uint64_t sub_100013EAC()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100004504();
  *v4 = v3;

  sub_100003844();

  return v5();
}

void sub_100013F94()
{
  *(v1 + v0[13]) = v2;
  *(v1 + v0[14]) = v3;
  v4 = v0[17];
}

uint64_t sub_100013FB8(uint64_t a1)
{
  *(a1 + 8) = sub_10000DFCC;
  v2 = *(v1 + 280);
  return v1 + 64;
}

uint64_t sub_100014034()
{

  return sub_10014EB30(0x63617073656D616ELL, 0xE900000000000065);
}

uint64_t sub_100014074()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_1000140E4()
{
  v2 = *(v0 - 320);
  v3 = *(v0 - 344);

  return swift_allocObject();
}

uint64_t sub_1000141C0()
{
  _Block_release(*(v0 + 32));

  v1 = sub_10000F3C0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100014208()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100005C94(v5);
  *v6 = v7;
  sub_100003BD8(v6);
  sub_10000AD14();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1000142A8(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = type metadata accessor for Date();
  v4[3] = v7;
  v8 = *(v7 - 8);
  v4[4] = v8;
  v9 = *(v8 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = _Block_copy(a3);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[7] = v10;
  a4;
  v11 = swift_task_alloc();
  v4[8] = v11;
  *v11 = v4;
  v11[1] = sub_1000149D4;

  return sub_1000143FC();
}

uint64_t sub_1000143FC()
{
  sub_100004194();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v1[34] = swift_getObjectType();
  v5 = type metadata accessor for MetricsEvent();
  v1[35] = v5;
  sub_100003B78(v5);
  v1[36] = v6;
  v8 = *(v7 + 64);
  v1[37] = sub_100003FA8();
  v9 = type metadata accessor for Date();
  v1[38] = v9;
  sub_100003B78(v9);
  v1[39] = v10;
  v12 = *(v11 + 64);
  v1[40] = sub_100003FA8();
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v13);
  v15 = *(v14 + 64);
  v1[41] = sub_100003FA8();
  v16 = type metadata accessor for Log();
  v1[42] = v16;
  sub_100003B78(v16);
  v1[43] = v17;
  v19 = *(v18 + 64);
  v1[44] = sub_100003FA8();
  v20 = sub_10000EF80();

  return _swift_task_switch(v20, v21, v22);
}

void sub_100014568()
{
  v1 = v0;
  v2 = v0[44];
  v4 = v0[33];
  v3 = v0[34];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  v7 = *(v6 + 72);
  sub_10000A1F0();
  v8 = sub_1000D3384();
  v0[18] = v4;
  *(v8 + 16) = xmmword_1002329F0;
  v0[21] = v3;
  v9 = v4;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v28 = v0[44];
  v12 = v0[41];
  v30 = v0[43];
  v31 = v0[42];
  v13 = v0[39];
  v32 = v0[40];
  v14 = v0[38];
  v33 = v0[37];
  v34 = v0[36];
  v35 = v0[35];
  v29 = v0[33];
  v27 = v0[32];
  v16 = v0[30];
  v15 = v1[31];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v1 + 18);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0xD000000000000024;
  v17._object = 0x8000000100273200;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  v1[25] = v14;
  v18 = sub_100007914(v1 + 22);
  (*(v13 + 16))(v18, v16, v14);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C((v1 + 22), &unk_1002DFC10, &qword_10022E6D0);
  v19._countAndFlagsBits = 0x20726F6620;
  v19._object = 0xE500000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  v1[29] = &type metadata for String;
  v1[26] = v15;
  v1[27] = v27;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C((v1 + 26), &unk_1002DFC10, &qword_10022E6D0);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  LogInterpolation.init(stringInterpolation:)();
  Log.debug(_:)();

  (*(v30 + 8))(v28, v31);
  v21 = (v29 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics);
  static Date.now.getter();
  sub_100099DF4(&qword_1002DBBC0, &unk_100232E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002329F0;
  *(inited + 32) = 0x656C6174537369;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = static Date.< infix(_:_:)() & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 7368801;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = v15;
  *(inited + 104) = v27;

  sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
  Dictionary.init(dictionaryLiteral:)();
  static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

  v23 = v21[4];
  sub_10000C4FC(v21, v21[3]);
  dispatch thunk of MetricsQueue.enqueue(event:)();
  (*(v34 + 8))(v33, v35);
  (*(v13 + 8))(v32, v14);

  v24 = v1[1];
  sub_1000D3590();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000149D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v14 = v12;
  v15 = *v13;
  v16 = *v13;
  sub_100004504();
  *v17 = v16;
  v18 = v15[8];
  v19 = v15[7];
  v20 = v15[5];
  v21 = v15[4];
  v22 = v15[3];
  v23 = v15[2];
  *v17 = *v13;

  (*(v21 + 8))(v20, v22);

  v24 = v15[6];
  if (v14)
  {
    v25 = _convertErrorToNSError(_:)();

    v26 = sub_100008D64();
    v27(v26, v25);
  }

  else
  {
    v28 = sub_100008D64();
    v29(v28, 0);
  }

  v31 = v16 + 5;
  v30 = v16[5];
  _Block_release(v31[1]);

  sub_1000D33F4();
  sub_100003128();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

void sub_100014BA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AMSSetLogKey();
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);

  if (string)
  {
    string = [[NSString alloc] initWithUTF8String:string];
  }

  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543874;
    v31 = v9;
    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = string;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received a Darwin notification. notification = %{public}@", buf, 0x20u);
  }

  if ([string isEqualToString:@"com.apple.ams.provision-biometrics"])
  {
    [*(a1 + 32) _handleBiometricsProvisioningNotification];
    goto LABEL_12;
  }

  if (([string isEqualToString:@"AppleLanguagePreferencesChangedNotification"] & 1) != 0 || objc_msgSend(string, "isEqualToString:", @"com.apple.language.changed"))
  {
    [*(a1 + 32) _handleDeviceLanguageChangeNotification:0];
    goto LABEL_12;
  }

  if (([string isEqualToString:@"com.apple.StoreServices.SSAccountStore.activeaccountchanged"] & 1) != 0 || objc_msgSend(string, "isEqualToString:", @"com.apple.AppleMediaServices.activeicloudaccountchanged"))
  {
    [*(a1 + 32) _handleAccountChange];
    goto LABEL_12;
  }

  v11 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  v12 = [NSString stringWithUTF8String:"com.apple.mobile.keybagd.lock_status"];
  v13 = [string isEqualToString:v12];

  if (v13)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052EB4;
    block[3] = &unk_1002B04C0;
    block[4] = *(a1 + 32);
    if (qword_1002E31D8 != -1)
    {
      dispatch_once(&qword_1002E31D8, block);
    }

    goto LABEL_12;
  }

  if ([string isEqualToString:AMSAccountCachedServerDataUpdatedNotification])
  {
    [*(a1 + 32) _handleCachedDataUpdate];
    goto LABEL_12;
  }

  if ([string isEqualToString:@"com.apple.AppleMediaServices.eligibilityoverridechanged"])
  {
LABEL_39:
    [*(a1 + 32) _updateRegulatoryEligibility];
    goto LABEL_12;
  }

  if ([string isEqualToString:@"com.apple.os-eligibility-domain.input-needed"])
  {
    v14 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = AMSLogKey();
      v17 = *(a1 + 32);
      v18 = objc_opt_class();
      v19 = v18;
      if (v16)
      {
        v11 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v19, v11];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v18];
      }
      v20 = ;
      *buf = 138543362;
      v31 = v20;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Eligibility engine is requesting input.", buf, 0xCu);
      if (v16)
      {

        v20 = v11;
      }
    }

    goto LABEL_39;
  }

  if ([string isEqualToString:@"com.apple.ams.privateListeningChanged"])
  {
    v21 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v21 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      *buf = 138543618;
      v31 = v24;
      v32 = 2114;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Private listening setting changed.", buf, 0x16u);
    }

    v26 = [[AMSDRefreshMultiUserOptions alloc] initWithReason:@"Private listening setting changed."];
    [(AMSDRefreshMultiUserOptions *)v26 setShouldUseCloudData:0];
    v27 = +[AMSDMultiUserController sharedController];
    v28 = [v27 refreshWithOptions:v26];
  }

LABEL_12:
}

uint64_t sub_100015280(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*a1);
  }

  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = *(a3 + 24);
  }

  else
  {
    type metadata accessor for Date();
    v8 = *(a3 + 28);
  }

  v9 = sub_100003F68(v8);

  return sub_100004DFC(v9, v10, v11);
}

void sub_100015344()
{
  sub_100002FBC();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      type metadata accessor for Date();
      v8 = *(v4 + 28);
    }

    v9 = sub_100003F68(v8);

    sub_100002728(v9, v10, v0, v11);
  }
}

uint64_t sub_10001540C()
{
  sub_100002FBC();
  v2 = type metadata accessor for AccountIdentity();

  return sub_100004DFC(v1, v0, v2);
}

uint64_t sub_100015450()
{
  sub_100002FBC();
  v2 = type metadata accessor for AccountIdentity();

  return sub_100002728(v1, v0, v0, v2);
}

uint64_t sub_100015498(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 8));
  }

  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = a3[5];
  }

  else
  {
    v9 = type metadata accessor for Date();
    sub_1000071F8(v9);
    if (*(v10 + 84) == a2)
    {
      v8 = a3[7];
    }

    else
    {
      type metadata accessor for AccountIdentity();
      v8 = a3[8];
    }
  }

  v11 = sub_100003F68(v8);

  return sub_100004DFC(v11, v12, v13);
}

void sub_10001559C()
{
  sub_100002FBC();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = v4[5];
    }

    else
    {
      v9 = type metadata accessor for Date();
      sub_1000071F8(v9);
      if (*(v10 + 84) == v5)
      {
        v8 = v4[7];
      }

      else
      {
        type metadata accessor for AccountIdentity();
        v8 = v4[8];
      }
    }

    v11 = sub_100003F68(v8);

    sub_100002728(v11, v12, v0, v13);
  }
}

Swift::Int sub_1000156EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_10009D1F4();
}

uint64_t sub_1000158DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 8));
  }

  v7 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v8 = sub_1000071F8(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(a3 + 40);
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(a3 + 48);
  }

  return sub_100004DFC(a1 + v11, a2, v10);
}

uint64_t sub_1000159A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    v9 = sub_1000071F8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 40);
    }

    else
    {
      v11 = type metadata accessor for Date();
      v12 = *(a4 + 48);
    }

    return sub_100002728(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100015A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = sub_1000071F8(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_100002840(*(a1 + *(a3 + 20) + 8));
  }

  return sub_100004DFC(a1, a2, v7);
}

uint64_t sub_100015B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  result = sub_1000071F8(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_100002728(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100015BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DB1C0, &unk_100231900);
  v5 = sub_100004DFC(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100015C10(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100099DF4(&qword_1002DB1C0, &unk_100231900);

  return sub_100002728(a1, v5, a3, v6);
}

uint64_t sub_100015CA8(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*a1);
  }

  if (*(*(sub_100099DF4(&qword_1002DA970, &qword_1002318B0) - 8) + 84) == a2)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    type metadata accessor for Date();
    v5 = *(a3 + 28);
  }

  v6 = sub_100003F68(v5);

  return sub_100004DFC(v6, v7, v8);
}

void sub_100015D70()
{
  sub_10000ADF4();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(sub_100099DF4(&qword_1002DA970, &qword_1002318B0) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      type metadata accessor for Date();
      v8 = *(v5 + 28);
    }

    v9 = sub_100003F68(v8);

    sub_100002728(v9, v10, v0, v11);
  }
}

uint64_t sub_100015E34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 8));
  }

  type metadata accessor for URL();
  v5 = sub_100003F68(*(a3 + 20));

  return sub_100004DFC(v5, v6, v7);
}

void sub_100015EAC()
{
  sub_10000ADF4();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for URL();
    v5 = sub_100003F68(*(v4 + 20));

    sub_100002728(v5, v6, v0, v7);
  }
}

uint64_t sub_1000160BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 20);

    return sub_100004DFC(v9, a2, v8);
  }
}

uint64_t sub_100016144(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 20);

    return sub_100002728(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000161C4()
{
  v1 = type metadata accessor for AccountDataServerRequest(0);
  sub_100003B78(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Date();
  sub_100003724(v7);
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = *(v0 + 32);

  v15 = type metadata accessor for AccountIdentity.DSID();
  sub_10000307C(v15);
  (*(v16 + 8))(v0 + v4);
  v17 = (((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 48) & ~v10;
  (*(v9 + 8))(v0 + v17, v7);

  return _swift_deallocObject(v0, v17 + v12, v3 | v10 | 7);
}

uint64_t sub_10001632C()
{
  v1 = type metadata accessor for AccountIdentity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000163C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = sub_10000F3C0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100016408()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1000062AC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10001644C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 24));
  }

  v7 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v8 = sub_1000071F8(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[5];
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = sub_1000071F8(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[7];
    }

    else
    {
      v10 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
      v11 = a3[10];
    }
  }

  return sub_100004DFC(a1 + v11, a2, v10);
}

uint64_t sub_100016554(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    v9 = sub_1000071F8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = sub_1000071F8(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v11 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
        v12 = a4[10];
      }
    }

    return sub_100002728(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000169E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000168AC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100016A50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000C62C();
  v7 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(v6);
  sub_1000071F8(v7);
  if (*(v8 + 84) == v3)
  {
    v9 = sub_1000F832C();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_100002840(*(v4 + a3[5]));
    }

    v12 = type metadata accessor for AccountIdentity();
    v13 = sub_1000071F8(v12);
    if (*(v14 + 84) == v3)
    {
      v10 = v13;
      v15 = a3[7];
    }

    else
    {
      v16 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
      v17 = sub_1000071F8(v16);
      if (*(v18 + 84) == v3)
      {
        v10 = v17;
        v15 = a3[13];
      }

      else
      {
        v10 = type metadata accessor for URL();
        v15 = a3[15];
      }
    }

    v9 = v4 + v15;
  }

  return sub_100004DFC(v9, v3, v10);
}

uint64_t sub_100016B90()
{
  sub_10000AAE4();
  v4 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  result = sub_1000071F8(v4);
  if (*(v6 + 84) == v3)
  {
    sub_1000F8320();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + v2[5]) = (v0 - 1);
      return result;
    }

    v7 = type metadata accessor for AccountIdentity();
    sub_1000071F8(v7);
    if (*(v8 + 84) == v3)
    {
      v9 = v2[7];
    }

    else
    {
      v10 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
      sub_1000071F8(v10);
      if (*(v11 + 84) == v3)
      {
        v12 = v2[13];
      }

      else
      {
        type metadata accessor for URL();
        v13 = v2[15];
      }
    }
  }

  sub_10000A828();

  return sub_100002728(v14, v15, v16, v17);
}

uint64_t sub_100016CD0(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*a1);
  }

  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v4 = sub_1000F8314();

  return sub_100004DFC(v4, a2, v5);
}

void *sub_100016D54(void *result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000F8314();
    sub_10000A828();

    return sub_100002728(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_100016DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C62C();
  v7 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(v6);
  sub_1000071F8(v7);
  if (*(v8 + 84) == v3)
  {
    v9 = sub_1000F832C();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_100002840(*(v4 + *(a3 + 20)));
    }

    v10 = type metadata accessor for URL();
    v9 = v4 + *(a3 + 36);
  }

  return sub_100004DFC(v9, v3, v10);
}

uint64_t sub_100016E8C()
{
  sub_10000AAE4();
  v4 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  result = sub_1000071F8(v4);
  if (*(v6 + 84) == v3)
  {
    sub_1000F8320();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20)) = (v0 - 1);
      return result;
    }

    type metadata accessor for URL();
    v7 = v1 + *(v2 + 36);
  }

  sub_10000A828();

  return sub_100002728(v8, v9, v10, v11);
}

uint64_t sub_100016F40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = sub_1000F832C();
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = sub_1000071F8(v10);
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      v14 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
      v15 = sub_1000071F8(v14);
      if (*(v16 + 84) != a2)
      {
        return sub_100002840(*(a1 + a3[9] + 8));
      }

      v9 = v15;
      v13 = a3[8];
    }

    v8 = a1 + v13;
  }

  return sub_100004DFC(v8, a2, v9);
}

uint64_t sub_100017078()
{
  sub_10000AAE4();
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1000F8320();
  }

  else
  {
    v6 = type metadata accessor for Date();
    sub_1000071F8(v6);
    if (*(v7 + 84) == v3)
    {
      v8 = v2[5];
    }

    else
    {
      v9 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
      result = sub_1000071F8(v9);
      if (*(v11 + 84) != v3)
      {
        *(v1 + v2[9] + 8) = (v0 - 1);
        return result;
      }

      v12 = v2[8];
    }
  }

  sub_10000A828();

  return sub_100002728(v13, v14, v15, v16);
}