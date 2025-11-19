uint64_t variable initialization expression of OptimisticValue.transaction@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OptimisticValue.Transaction();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

BOOL sub_10002F440(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_10002F4B4(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634990, type metadata accessor for MPCPlayerRequestError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10002F520(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634990, type metadata accessor for MPCPlayerRequestError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10002F58C(uint64_t a1)
{
  v2 = sub_100031128(&unk_100639FD0, type metadata accessor for MPCPlayerRequestError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_10002F69C()
{
  sub_1004DF26C();
  swift_getWitnessTable();
  sub_1004D87AC();
  return sub_1004DF2BC();
}

uint64_t sub_10002F704()
{
  swift_getWitnessTable();

  return sub_1004D879C();
}

uint64_t sub_10002F780(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634CA0, type metadata accessor for MPCPlayerEnqueueError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10002F7EC(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634CA0, type metadata accessor for MPCPlayerEnqueueError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10002F858(void *a1, uint64_t a2)
{
  v4 = sub_100031128(&qword_100634CA0, type metadata accessor for MPCPlayerEnqueueError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10002F8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100031128(&qword_100634CA0, type metadata accessor for MPCPlayerEnqueueError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10002F978(uint64_t a1)
{
  v2 = sub_100031128(&unk_100639FD0, type metadata accessor for MPCPlayerRequestError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10002F9E4(uint64_t a1)
{
  v2 = sub_100031128(&unk_100639FD0, type metadata accessor for MPCPlayerRequestError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10002FA50(void *a1, uint64_t a2)
{
  v4 = sub_100031128(&unk_100639FD0, type metadata accessor for MPCPlayerRequestError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10002FAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100031128(&unk_100639FD0, type metadata accessor for MPCPlayerRequestError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10002FB6C(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634CE0, type metadata accessor for MPCError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10002FBD8(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634CE0, type metadata accessor for MPCError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10002FC44(void *a1, uint64_t a2)
{
  v4 = sub_100031128(&qword_100634CE0, type metadata accessor for MPCError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10002FCD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100031128(&qword_100634CE0, type metadata accessor for MPCError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10002FD60(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634C90, type metadata accessor for MPCMusicBehaviorError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10002FDCC(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634C90, type metadata accessor for MPCMusicBehaviorError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10002FE38(void *a1, uint64_t a2)
{
  v4 = sub_100031128(&qword_100634C90, type metadata accessor for MPCMusicBehaviorError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10002FEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100031128(&qword_100634C90, type metadata accessor for MPCMusicBehaviorError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10002FF50()
{
  sub_100031128(&qword_100634D20, type metadata accessor for OpenExternalURLOptionsKey);
  sub_100031128(&qword_100634D28, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_1004DEE0C();
}

uint64_t sub_10003000C()
{
  sub_100031128(&qword_100634D50, _s3__C4NameVMa_0);
  sub_100031128(&qword_100634D58, _s3__C4NameVMa_0);

  return sub_1004DEE0C();
}

uint64_t sub_1000300C8()
{
  sub_100031128(&qword_1006349F0, type metadata accessor for ICURLBagKey);
  sub_100031128(&qword_1006349F8, type metadata accessor for ICURLBagKey);

  return sub_1004DEE0C();
}

uint64_t sub_100030184()
{
  sub_100031128(&qword_1006349E0, type metadata accessor for ICPrivacyIdentifier);
  sub_100031128(&qword_1006349E8, type metadata accessor for ICPrivacyIdentifier);

  return sub_1004DEE0C();
}

uint64_t sub_100030240(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634CF8, type metadata accessor for MPCPlayerEnqueueError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000302AC(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634CF8, type metadata accessor for MPCPlayerEnqueueError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100030318(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634CA0, type metadata accessor for MPCPlayerEnqueueError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100030384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100031128(&qword_100634CA0, type metadata accessor for MPCPlayerEnqueueError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100030408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100031128(&unk_100639FD0, type metadata accessor for MPCPlayerRequestError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10003048C(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634CB0, type metadata accessor for MPCError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000304F8(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634CB0, type metadata accessor for MPCError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100030564(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634CE0, type metadata accessor for MPCError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000305D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100031128(&qword_100634CE0, type metadata accessor for MPCError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100030654(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634C60, type metadata accessor for MPCMusicBehaviorError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000306C0(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634C60, type metadata accessor for MPCMusicBehaviorError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10003072C(uint64_t a1)
{
  v2 = sub_100031128(&qword_100634C90, type metadata accessor for MPCMusicBehaviorError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100030798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100031128(&qword_100634C90, type metadata accessor for MPCMusicBehaviorError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10003081C()
{
  sub_100031128(&qword_100634D40, type metadata accessor for AttributeName);
  sub_100031128(&qword_100634D48, type metadata accessor for AttributeName);

  return sub_1004DEE0C();
}

uint64_t sub_1000308D8()
{
  sub_100031128(&qword_100634D30, type metadata accessor for Key);
  sub_100031128(&qword_100634D38, type metadata accessor for Key);

  return sub_1004DEE0C();
}

uint64_t sub_100030994()
{
  sub_100031128(&qword_1006349D0, type metadata accessor for MSVAutoBugCaptureDomain);
  sub_100031128(&qword_1006349D8, type metadata accessor for MSVAutoBugCaptureDomain);

  return sub_1004DEE0C();
}

unint64_t sub_100030A54(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100634A60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004CB8(&qword_100634A68);
    v7 = sub_1004DEDBC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000108DC(v9, v5, &qword_100634A60);
      result = sub_100056C8C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1004D82AC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
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

unint64_t sub_100030C58()
{
  result = qword_100634540;
  if (!qword_100634540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100634540);
  }

  return result;
}

uint64_t type metadata accessor for BundleFinder()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

__n128 _s11ProgressionVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100030D44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_100030D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 sub_100030DD8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100030DF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100030E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_10003103C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100031128(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000319F4()
{
  result = qword_1006349B8;
  if (!qword_1006349B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006349B8);
  }

  return result;
}

uint64_t sub_100031AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100634B30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031B48(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100634B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100031BBC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100031BDC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_100031D08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100031D1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100031D3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t ActionDeclaring.init(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1004DE7CC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = __chkstk_darwin(v10);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  v26 = a1;
  sub_10000904C(a1, v28);
  sub_100004CB8(&qword_100634E90);
  v19 = swift_dynamicCast();
  v20 = *(v13 + 56);
  if (v19)
  {
    v20(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v18, v12, AssociatedTypeWitness);
    (*(v13 + 16))(v16, v18, AssociatedTypeWitness);
    v21 = v27;
    (*(a3 + 24))(v16, a2, a3);
    sub_100008D24(v26);
    (*(v13 + 8))(v18, AssociatedTypeWitness);
    v22 = 0;
    v23 = v21;
  }

  else
  {
    v22 = 1;
    v20(v12, 1, 1, AssociatedTypeWitness);
    sub_100008D24(v26);
    (*(v9 + 8))(v12, v8);
    v23 = v27;
  }

  return (*(*(a2 - 8) + 56))(v23, v22, 1, a2);
}

__n128 AnyAction.init(identifier:contexts:resolver:logs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100034C80(a1, a2, a3, a4, v10);
  v6 = v10[7];
  *(a5 + 96) = v10[6];
  *(a5 + 112) = v6;
  *(a5 + 128) = v10[8];
  v7 = v10[3];
  *(a5 + 32) = v10[2];
  *(a5 + 48) = v7;
  v8 = v10[5];
  *(a5 + 64) = v10[4];
  *(a5 + 80) = v8;
  result = v10[1];
  *a5 = v10[0];
  *(a5 + 16) = result;
  return result;
}

uint64_t AnyAction.canPerform.getter()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  __break(1u);
  return result;
}

uint64_t sub_100032DE8(uint64_t a1)
{
  v1[2] = a1;
  sub_1004DDA4C();
  v1[3] = sub_1004DDA3C();
  v3 = sub_1004DD9BC();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100032E80, v3, v2);
}

uint64_t sub_100032E80()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_100008C70(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_100032FA4;

  return v6(v2, v3);
}

uint64_t sub_100032FA4()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_100035C8C;
  }

  else
  {
    v5 = sub_100035C90;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000330E0(uint64_t a1)
{
  v1[2] = a1;
  sub_1004DDA4C();
  v1[3] = sub_1004DDA3C();
  v3 = sub_1004DD9BC();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100033178, v3, v2);
}

uint64_t sub_100033178()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_100008C70(v1, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_10003329C;

  return v6(v2, v3);
}

uint64_t sub_10003329C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_10003343C;
  }

  else
  {
    v5 = sub_1000333D8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000333D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003343C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *AnyAction.submenu.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t AnyAction.execute()()
{
  v1[21] = v0;
  sub_1004DDA4C();
  v1[22] = sub_1004DDA3C();
  v3 = sub_1004DD9BC();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(sub_100033578, v3, v2);
}

void sub_100033578()
{
  v31 = v0;
  v1 = *(v0[21] + 80);
  if (!v1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1();
  if (v3 == 1)
  {
    v4 = *(v0[21] + 96);
    if (v4)
    {
      v29 = (v4 + *v4);
      v5 = swift_task_alloc();
      v0[25] = v5;
      *v5 = v0;
      v5[1] = sub_100033920;

      v29();
      return;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v6 = v2;
  v7 = v3;

  v8 = sub_1000354D0(v6, v7);
  v9 = (v1)(v8);
  if (v10 == 1)
  {
    sub_1000354E4();
    v11 = swift_allocError();
    *v12 = 0;
    v12[1] = 0;
  }

  else
  {
    v13 = v9;
    v14 = v10;
    sub_1000354E4();
    v11 = swift_allocError();
    *v15 = v13;
    v15[1] = v14;
  }

  swift_willThrow();
  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v16 = v0[21];
  v17 = sub_1004D966C();
  sub_100035430(v17, static Logger.actions);
  sub_100035468(v16, (v0 + 2));
  swift_errorRetain();
  v18 = sub_1004D964C();
  v19 = sub_1004DDF7C();
  sub_1000354A0(v16);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[21];
    v21 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v21 = 136446466;
    v22 = ActionType.rawValue.getter(*v20);
    v24 = sub_1000343A8(v22, v23, v30);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v0[20] = v11;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v25 = sub_1004DD4DC();
    v27 = sub_1000343A8(v25, v26, v30);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to perform action %{public}s with error %{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v28 = v0[1];

  v28();
}

uint64_t sub_100033920()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_100033D14;
  }

  else
  {
    v5 = sub_100033A5C;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_100033A5C()
{
  v1 = *(*(v0 + 168) + 112);
  if (v1)
  {
    v3 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 216) = v2;
    *v2 = v0;
    v2[1] = sub_100033B54;

    v3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100033B54()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_100033F34;
  }

  else
  {
    v5 = sub_100033C90;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100033C90()
{
  v1 = *(*(v0 + 168) + 128);
  if (v1)
  {
    v1();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100033D14()
{
  v17 = v0;

  v1 = v0[26];
  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = sub_1004D966C();
  sub_100035430(v3, static Logger.actions);
  sub_100035468(v2, (v0 + 2));
  swift_errorRetain();
  v4 = sub_1004D964C();
  v5 = sub_1004DDF7C();
  sub_1000354A0(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = sub_1000343A8(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v11 = sub_1004DD4DC();
    v13 = sub_1000343A8(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_100033F34()
{
  v17 = v0;

  v1 = v0[28];
  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = sub_1004D966C();
  sub_100035430(v3, static Logger.actions);
  sub_100035468(v2, (v0 + 2));
  swift_errorRetain();
  v4 = sub_1004D964C();
  v5 = sub_1004DDF7C();
  sub_1000354A0(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = sub_1000343A8(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v11 = sub_1004DD4DC();
    v13 = sub_1000343A8(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t Logger.actions.unsafeMutableAddressor()
{
  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.actions);
}

uint64_t sub_1000341B8()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.actions);
  sub_100035430(v0, static Logger.actions);
  return sub_1004D965C();
}

uint64_t static Logger.actions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.actions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000342D8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10003434C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000343A8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000343A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100034474(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000904C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008D24(v11);
  return v7;
}

unint64_t sub_100034474(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100034580(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1004DEB6C();
    a6 = v11;
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

void *sub_100034580(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000345CC(a1, a2);
  sub_1000346FC(&off_1005D0588);
  return v3;
}

void *sub_1000345CC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1002B18F8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1004DEB6C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1004DD61C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1002B18F8(v10, 0);
        result = sub_1004DEA9C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000346FC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000347E8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1000347E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&unk_10063D0D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1000348DC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

__n128 sub_1000348EC@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_100008C70(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v5 = a1[4];
  *&v40 = DynamicType;
  *(&v40 + 1) = v5;
  sub_100004CB8(&qword_100634EB8);
  v6 = sub_1004DD4DC();
  v28 = v7;
  v29 = v6;
  sub_100035868(a1, &v40);
  sub_100004CB8(&qword_100634EC0);
  sub_100004CB8(&qword_100634EC8);
  if (swift_dynamicCast())
  {
    v8 = *(&v58 + 1);
    v9 = v59;
    sub_100008C70(&v57, *(&v58 + 1));
    (*(v9 + 8))(v60, v8, v9);
    v10 = v60[1];
    v11 = v60[2];
    v26 = v60[3];
    v24 = v60[0];
    v25 = v60[4];
    v23 = v60[5];
    sub_100008D24(&v57);
  }

  else
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_10001074C(&v57, &qword_100634ED0);
    v24 = 0;
    v25 = 0;
    v11 = 0;
    v26 = 0;
    v23 = 0;
    v10 = 1;
  }

  v12 = a1[3];
  v13 = a1[4];
  sub_100008C70(a1, v12);
  v22 = (*(v13 + 24))(v12, v13);
  sub_100035868(a1, &v40);
  v21 = swift_allocObject();
  sub_100035850(&v40, v21 + 16);
  sub_100035868(a1, &v40);
  v20 = swift_allocObject();
  sub_100035850(&v40, v20 + 16);
  sub_100035868(a1, &v40);
  v19 = swift_allocObject();
  sub_100035850(&v40, v19 + 16);
  sub_100035868(a1, &v40);
  v14 = swift_allocObject();
  sub_100035850(&v40, v14 + 16);
  LOBYTE(v31) = a2;
  *(&v31 + 1) = v29;
  v32.n128_u64[0] = v28;
  v32.n128_u64[1] = v24;
  *&v33 = v10;
  *(&v33 + 1) = v11;
  *&v34 = v26;
  *(&v34 + 1) = v25;
  *&v35 = v23;
  *(&v35 + 1) = v22;
  *&v36 = sub_1000359AC;
  *(&v36 + 1) = v21;
  *&v37 = &unk_100515060;
  *(&v37 + 1) = v20;
  *&v38 = &unk_100515070;
  *(&v38 + 1) = v19;
  *&v39 = sub_100035C1C;
  *(&v39 + 1) = v14;
  sub_100035468(&v31, &v40);
  sub_100008D24(a1);
  LOBYTE(v40) = a2;
  *(&v40 + 1) = v29;
  v41 = v28;
  v42 = v24;
  v43 = v10;
  v44 = v11;
  v45 = v26;
  v46 = v25;
  v47 = v23;
  v48 = v22;
  v49 = sub_1000359AC;
  v50 = v21;
  v51 = &unk_100515060;
  v52 = v20;
  v53 = &unk_100515070;
  v54 = v19;
  v55 = sub_100035C1C;
  v56 = v14;
  sub_1000354A0(&v40);
  v15 = v38;
  *(a3 + 96) = v37;
  *(a3 + 112) = v15;
  *(a3 + 128) = v39;
  v16 = v34;
  *(a3 + 32) = v33;
  *(a3 + 48) = v16;
  v17 = v36;
  *(a3 + 64) = v35;
  *(a3 + 80) = v17;
  result = v32;
  *a3 = v31;
  *(a3 + 16) = result;
  return result;
}

void sub_100034C80(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v63 = a2;
  v5 = a1;
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v42 = a4;
    if (((1 << a1) & 0x700000000180) != 0)
    {
      v43 = sub_100035920();
      v44 = &type metadata for Feature.MusicKit;
    }

    else
    {
      LOBYTE(v96) = 2;
      v43 = sub_1000358CC();
      v44 = &type metadata for Feature.MediaPlayer;
    }

    v52 = FeatureFlagsKey.isEnabled.getter(v44, v43);
    a4 = v42;
    if ((v52 & 1) == 0)
    {

      if (qword_100634428 != -1)
      {
LABEL_34:
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_11;
      }

      *&v96 = 0;
      *(&v96 + 1) = 0xE000000000000000;
      sub_1004DEAAC(32);
      v53 = ActionType.rawValue.getter(v5);
      v55 = v54;

      *&v96 = v53;
      *(&v96 + 1) = v55;
      v113._countAndFlagsBits = 0xD00000000000001ELL;
      v113._object = 0x80000001004E9FD0;
      sub_1004DD5FC(v113);
      v28 = *(&v96 + 1);
      v27 = v96;
      goto LABEL_10;
    }
  }

  v59 = a4;
  v8 = a3[3];
  v9 = a3[4];
  sub_100008C70(a3, v8);
  LOBYTE(v96) = v5;
  v10 = *(v9 + 8);
  v11 = sub_10003577C();
  v12 = v10(&v96, &type metadata for ActionType, v11, v8, v9);
  if (!v12)
  {

    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_1004DEAAC(22);
    v24 = ActionType.rawValue.getter(v5);
    v26 = v25;

    *&v96 = v24;
    *(&v96 + 1) = v26;
    v106._countAndFlagsBits = 0xD000000000000014;
    v106._object = 0x80000001004E9F70;
    sub_1004DD5FC(v106);
    v28 = *(&v96 + 1);
    v27 = v96;
LABEL_10:
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v27, v28, 80, 120, 0xE100000000000000);

    goto LABEL_11;
  }

  v57 = a5;
  v58 = v5;
  v56 = a3;
  v62 = *(v63 + 16);
  if (v62)
  {
    v14 = v12;
    v15 = v13;
    a5 = 0;
    a3 = (v63 + 32);
    v60 = v12 - 8;
    v61 = v13 + 8;
    while (1)
    {
      if (a5 >= *(v63 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      sub_10000904C(a3, v82);
      v16 = *(v15 + 8);
      v17 = sub_1004DE7CC();
      v18 = *(v17 - 8);
      __chkstk_darwin(v17);
      v20 = &v56 - v19;
      v16(v82, v14, v15);
      v5 = *(v14 - 8);
      if ((*(v5 + 48))(v20, 1, v14) != 1)
      {
        break;
      }

      a5 = (a5 + 1);
      (*(v18 + 8))(v20, v17);
      v83 = 0u;
      v84 = 0u;
      v85 = 0;
      sub_10001074C(&v83, &qword_100634EA8);
      a3 += 4;
      if (v62 == a5)
      {
        goto LABEL_8;
      }
    }

    *(&v84 + 1) = v14;
    v85 = v15;
    v33 = sub_1000357EC(&v83);
    (*(v5 + 32))(v33, v20, v14);
    sub_100035850(&v83, v86);
    sub_100035868(v86, &v96);
    v34 = v58;
    sub_1000348EC(&v96, v58, &v87);
    v79 = v93;
    v80 = v94;
    v81 = v95;
    v75 = v89;
    v76 = v90;
    v77 = v91;
    v78 = v92;
    v73 = v87;
    v74 = v88;
    if (!v92)
    {
      __break(1u);
      return;
    }

    v35 = (v92)();
    a3 = v56;
    if (v36 == 1)
    {
      *&v96 = ActionType.rawValue.getter(v34);
      *(&v96 + 1) = v38;
      v107._countAndFlagsBits = 10272;
      v107._object = 0xE200000000000000;
      sub_1004DD5FC(v107);
      v39 = *(&v87 + 1);
      v40 = v88;

      v108._countAndFlagsBits = v39;
      v108._object = v40;
      sub_1004DD5FC(v108);

      v109._countAndFlagsBits = 41;
      v109._object = 0xE100000000000000;
      sub_1004DD5FC(v109);
      Array<A>.appendStringComponents(_:lineLength:bullet:)(v96, *(&v96 + 1), 80, 9673954, 0xA300000000000000);

      sub_100008D24(v86);
      v70 = v79;
      v71 = v80;
      v72 = v81;
      v66 = v75;
      v67 = v76;
      v68 = v77;
      v69 = v78;
      v64 = v73;
      v65 = v74;
      v41.location = &v64;
      CFRange.init(_:)(v41);
      v102 = v70;
      v103 = v71;
      v104 = v72;
      v98 = v66;
      v99 = v67;
      v100 = v68;
      v101 = v69;
      v96 = v64;
      v97 = v65;
      a5 = v57;
      goto LABEL_12;
    }

    v45 = v35;
    v46 = v36;
    if (v37)
    {
      sub_100008D24(v86);
      sub_1000354D0(v45, v46);
      sub_1000354A0(&v87);
    }

    else
    {
      *&v96 = ActionType.rawValue.getter(v34);
      *(&v96 + 1) = v47;
      v110._countAndFlagsBits = 10272;
      v110._object = 0xE200000000000000;
      sub_1004DD5FC(v110);
      v48 = *(&v87 + 1);
      v49 = v88;

      v111._countAndFlagsBits = v48;
      v111._object = v49;
      sub_1004DD5FC(v111);

      v112._countAndFlagsBits = 539828265;
      v112._object = 0xE400000000000000;
      sub_1004DD5FC(v112);
      if (v46)
      {
        v50._countAndFlagsBits = v45;
      }

      else
      {
        v50._countAndFlagsBits = 0xD000000000000013;
      }

      if (v46)
      {
        v51 = v46;
      }

      else
      {
        v51 = 0x80000001004E9F90;
      }

      v50._object = v51;
      sub_1004DD5FC(v50);

      Array<A>.appendStringComponents(_:lineLength:bullet:)(v96, *(&v96 + 1), 80, 120, 0xE100000000000000);

      sub_1000354A0(&v87);
      sub_100008D24(v86);
    }

    a5 = v57;
  }

  else
  {
LABEL_8:

    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_1004DEAAC(24);
    v21 = ActionType.rawValue.getter(v58);
    v23 = v22;

    *&v96 = v21;
    *(&v96 + 1) = v23;
    v105._countAndFlagsBits = 0xD000000000000016;
    v105._object = 0x80000001004E9FB0;
    sub_1004DD5FC(v105);
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v96, *(&v96 + 1), 80, 120, 0xE100000000000000);

    a3 = v56;
    a5 = v57;
  }

LABEL_11:
  sub_1000357D0(&v96);
LABEL_12:
  sub_100008D24(a3);
  v29 = v103;
  a5[6] = v102;
  a5[7] = v29;
  a5[8] = v104;
  v30 = v99;
  a5[2] = v98;
  a5[3] = v30;
  v31 = v101;
  a5[4] = v100;
  a5[5] = v31;
  v32 = v97;
  *a5 = v96;
  a5[1] = v32;
}

uint64_t sub_1000353C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100634E98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035430(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000354D0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1000354E4()
{
  result = qword_100634EA0;
  if (!qword_100634EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100634EA0);
  }

  return result;
}

uint64_t sub_100035538(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003555C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100035574(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1000355A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000355E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003565C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000356B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t *sub_100035718(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10003577C()
{
  result = qword_100635720;
  if (!qword_100635720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635720);
  }

  return result;
}

double sub_1000357D0(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t *sub_1000357EC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100035850(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100035868(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000358CC()
{
  result = qword_100634EB0;
  if (!qword_100634EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100634EB0);
  }

  return result;
}

unint64_t sub_100035920()
{
  result = qword_100635980;
  if (!qword_100635980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635980);
  }

  return result;
}

uint64_t sub_100035974()
{
  sub_100008D24(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000359AC()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100008C70(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_100035A00()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_100032DE8(v0 + 16);
}

uint64_t sub_100035A94()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035B28;

  return sub_1000330E0(v0 + 16);
}

uint64_t sub_100035B28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100035C1C()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100008C70(v0 + 2, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t ActionCondition.Result.failure.getter(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  sub_100035CC8(a1, a2);
  return v2;
}

uint64_t sub_100035CC8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t ActionCondition.init(_:file:line:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t ActionCondition.init(_:_:redactLog:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t (*a6)()@<X5>, uint64_t (*a7)()@<X6>, uint64_t (*a8)()@<X7>, uint64_t (**a9)()@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *a9 = sub_1000360DC;
  a9[1] = result;
  a9[2] = a6;
  a9[3] = a7;
  a9[4] = a8;
  return result;
}

BOOL ActionCondition.isTrue.getter()
{
  v1 = (*v0)();
  v3 = v2 == 1;
  sub_1000354D0(v1, v2);
  return v3;
}

uint64_t static ActionConditionEvaluator.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v14 = a1 + 32;
    v15 = *(a1 + 16);
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v5 = *(v4 + 16);
      if (v5)
      {
        break;
      }

LABEL_3:
      if (++v2 == v1)
      {
        return 0;
      }
    }

    v7 = 0;
    v8 = v4 + 56;
    while (v7 < *(v4 + 16))
    {
      v9 = *(v8 - 24);

      v11 = v9(v10);
      v13 = v12;

      if (v13 != 1)
      {

        return v11;
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {

        v3 = v14;
        v1 = v15;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t static ActionConditionEvaluator.buildExpression(_:)(__int128 *a1)
{
  sub_100004CB8(&qword_100634ED8);
  v2 = swift_allocObject();
  v4 = *a1;
  v7 = a1[1];
  v3 = v7;
  *(v2 + 16) = xmmword_100511DA0;
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 64) = *(a1 + 4);

  sub_100036140(&v7, &v6);
  return v2;
}

BOOL _s9MusicCore15ActionConditionV6ResultO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = sub_1004DF08C();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return (a6 ^ a3 ^ 1) & 1;
}

uint64_t sub_10003609C()
{

  return swift_deallocObject();
}

uint64_t sub_1000360DC()
{
  v1 = *(v0 + 32);
  if ((*(v0 + 16))())
  {
    return 0;
  }

  return v1;
}

__n128 sub_10003619C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000361B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000361F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100036250(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_100036274(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100036288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000362E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100036344(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t Actions.GoToArtist.Context.menuItemSubtitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Alert.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *ActionDisplayConfiguration.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ActionDisplayConfiguration.init(title:subtitle:image:attributes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t sub_10003645C()
{
  result = qword_100634EE0;
  if (!qword_100634EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100634EE0);
  }

  return result;
}

unint64_t sub_1000364B4()
{
  result = qword_100634EE8;
  if (!qword_100634EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100634EE8);
  }

  return result;
}

unint64_t sub_10003650C()
{
  result = qword_100634EF0;
  if (!qword_100634EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100634EF0);
  }

  return result;
}

unint64_t sub_100036564()
{
  result = qword_100634EF8;
  if (!qword_100634EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100634EF8);
  }

  return result;
}

uint64_t sub_1000365B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100032A14();

  *a1 = v2;
  return result;
}

uint64_t sub_1000365F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100036654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void ActionList.init(_:lookup:resolver:excluding:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v37 = a3;
  v5 = a2;
  v6 = a1;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v36 = a4;
    *&v38 = a2;
    v41 = _swiftEmptyArrayStorage;
    sub_10003744C(0, v7, 0);
    v8 = _swiftEmptyArrayStorage;
    v9 = v6 + 32;
    do
    {
      sub_10000904C(v9, v40);
      sub_10000904C(v40, v39);
      sub_100004CB8(&qword_100634E90);
      v10 = sub_1004DD4DC();
      v12 = String.components(wrappedToLineLength:bullet:)(80, 62, 0xE100000000000000, v10, v11);

      a1 = sub_100008D24(v40);
      v41 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        a1 = sub_10003744C((v13 > 1), v14 + 1, 1);
        v8 = v41;
      }

      v8[2] = v14 + 1;
      v8[v14 + 4] = v12;
      v9 += 32;
      --v7;
    }

    while (v7);
    v5 = v38;
    v4 = v36;
  }

  v40[0] = v8;
  __chkstk_darwin(a1);
  v35[2] = v6;
  v35[3] = v37;
  v35[4] = v4;
  v35[5] = v40;
  v36 = sub_100036B9C(sub_10003746C, v35, v5);

  v35[7] = v40[0];
  v15 = Array<A>.asciiBoxed()(v40[0]);
  v17 = v15;
  v18 = *(v15 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = (v15 + 40);
    v21 = &qword_100633000;
    *&v16 = 136446210;
    v38 = v16;
    while (v19 < *(v17 + 2))
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      v24 = v21[337];

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = sub_1004D966C();
      sub_100035430(v25, static Logger.actions);

      v26 = sub_1004D964C();
      v27 = sub_1004DDF9C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = v21;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v22;
        v32 = v17;
        v33 = v18;
        v34 = v30;
        v39[0] = v30;
        *v29 = v38;
        *(v29 + 4) = sub_1000343A8(v31, v23, v39);
        _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s", v29, 0xCu);
        sub_100008D24(v34);
        v18 = v33;
        v17 = v32;

        v21 = v28;
      }

      ++v19;
      v20 += 2;
      if (v18 == v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    sub_100008D24(v37);
  }
}

uint64_t sub_100036A54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char **a6@<X8>)
{
  v10 = *a1;
  v19 = _swiftEmptyArrayStorage;
  sub_100035868(a3, v18);
  v17[2] = &v19;
  v17[3] = a4;
  v17[4] = a2;
  v17[5] = v18;
  v11 = sub_100036CD8(sub_1000383E0, v17, v10);
  if (!*(v11 + 2))
  {

    v11 = 0;
  }

  sub_100008D24(v18);
  v12 = v19;
  v13 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v13;
  if ((result & 1) == 0)
  {
    result = sub_100039EF8(0, v13[2] + 1, 1, v13);
    v13 = result;
    *a5 = result;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    result = sub_100039EF8((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
    *a5 = result;
  }

  v13[2] = v16 + 1;
  v13[v16 + 4] = v12;
  *a6 = v11;
  return result;
}

char *sub_100036B9C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = *v6;

    a1(&v12, &v13);
    if (v3)
    {
      break;
    }

    v8 = v12;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100039DB4(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_100039DB4((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v8;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_100036CD8(void (*a1)(__int128 *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v41[0] = v8;
    a1(&v32, v41);
    if (v3)
    {
      break;
    }

    v31[6] = v38;
    v31[7] = v39;
    v31[8] = v40;
    v31[2] = v34;
    v31[3] = v35;
    v31[4] = v36;
    v31[5] = v37;
    v31[0] = v32;
    v31[1] = v33;
    if (sub_100038400(v31) == 1)
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      sub_10001074C(&v22, &qword_100634F48);
    }

    else
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100039DD0(0, *(v6 + 2) + 1, 1, v6);
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v6 = sub_100039DD0((v9 > 1), v10 + 1, 1, v6);
      }

      v15 = v24;
      v16 = v25;
      v20 = v29;
      v21 = v30;
      v18 = v27;
      v19 = v28;
      v17 = v26;
      v13 = v22;
      v14 = v23;
      *(v6 + 2) = v10 + 1;
      v11 = &v6[144 * v10];
      *(v11 + 2) = v13;
      *(v11 + 5) = v16;
      *(v11 + 6) = v17;
      *(v11 + 3) = v14;
      *(v11 + 4) = v15;
      *(v11 + 9) = v20;
      *(v11 + 10) = v21;
      *(v11 + 7) = v18;
      *(v11 + 8) = v19;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_100036EE8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v6 = sub_100004CB8(&qword_100634F38);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1004D7E3C();
  v10 = __chkstk_darwin(v9);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v30 = &v26 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = (a3 + 32);
  v16 = (v12 + 48);
  v29 = v12;
  v31 = (v12 + 32);
  v17 = _swiftEmptyArrayStorage;
  v27 = v9;
  v28 = a1;
  v26 = (v12 + 48);
  while (1)
  {
    v34 = *v15;
    a1(&v34);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_10001074C(v8, &qword_100634F38);
    }

    else
    {
      v18 = v30;
      v19 = *v31;
      (*v31)(v30, v8, v9);
      v19(v32, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_10003AB30(0, v17[2] + 1, 1, v17);
      }

      v21 = v17[2];
      v20 = v17[3];
      v22 = v29;
      if (v21 >= v20 >> 1)
      {
        v24 = sub_10003AB30(v20 > 1, v21 + 1, 1, v17);
        v22 = v29;
        v17 = v24;
      }

      v17[2] = v21 + 1;
      v23 = v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21;
      v9 = v27;
      v19(v23, v32, v27);
      a1 = v28;
      v16 = v26;
    }

    ++v15;
    if (!--v14)
    {
      return v17;
    }
  }

  return v17;
}

__n128 sub_1000371C0@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  if ((1 << v6) & 0xF8FFFFD7FFE7FLL) != 0 || ((v19 = a3, ((1 << v6) & 0x700000000180) == 0) ? (LOBYTE(v27[0]) = 2, v20 = sub_1000358CC(), v21 = &type metadata for Feature.MediaPlayer) : (v20 = sub_100035920(), v21 = &type metadata for Feature.MusicKit), v22 = FeatureFlagsKey.isEnabled.getter(v21, v20), a3 = v19, (v22))
  {
    if (!sub_1001B3E90(v6, a3))
    {
      sub_100035868(a5, v26);

      sub_100034C80(v6, a4, v26, a2, v27);
      goto LABEL_7;
    }

    sub_1004DEAAC(24);
    v11 = ActionType.rawValue.getter(v6);
    v13 = v12;

    *&v27[0] = v11;
    *(&v27[0] + 1) = v13;
    v14._object = 0x80000001004E9FF0;
    v14._countAndFlagsBits = 0xD000000000000016;
  }

  else
  {
    if (qword_100634428 != -1)
    {
      swift_once();
    }

    if (static DeviceCapabilities.isInternalInstall != 1)
    {
      goto LABEL_5;
    }

    sub_1004DEAAC(32);
    v23 = ActionType.rawValue.getter(v6);
    v25 = v24;

    *&v27[0] = v23;
    *(&v27[0] + 1) = v25;
    v14._countAndFlagsBits = 0xD00000000000001ELL;
    v14._object = 0x80000001004E9FD0;
  }

  sub_1004DD5FC(v14);
  Array<A>.appendStringComponents(_:lineLength:bullet:)(*&v27[0], *(&v27[0] + 1), 80, 120, 0xE100000000000000);

LABEL_5:
  sub_1000357D0(v27);
LABEL_7:
  v15 = v27[7];
  *(a6 + 96) = v27[6];
  *(a6 + 112) = v15;
  *(a6 + 128) = v27[8];
  v16 = v27[3];
  *(a6 + 32) = v27[2];
  *(a6 + 48) = v16;
  v17 = v27[5];
  *(a6 + 64) = v27[4];
  *(a6 + 80) = v17;
  result = v27[1];
  *a6 = v27[0];
  *(a6 + 16) = result;
  return result;
}

size_t sub_10003742C(size_t a1, int64_t a2, char a3)
{
  result = sub_10003763C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003744C(void *a1, int64_t a2, char a3)
{
  result = sub_10003782C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000374AC(char *a1, int64_t a2, char a3)
{
  result = sub_100037960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000374CC(char *a1, int64_t a2, char a3)
{
  result = sub_100037A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000374EC(char *a1, int64_t a2, char a3)
{
  result = sub_100037B84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003750C(char *a1, int64_t a2, char a3)
{
  result = sub_100037C90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003752C(void *a1, int64_t a2, char a3)
{
  result = sub_100037EB8(a1, a2, a3, *v3, &unk_100639D70, &unk_100515830, &qword_100639DA0);
  *v3 = result;
  return result;
}

char *sub_10003756C(char *a1, int64_t a2, char a3)
{
  result = sub_100037DCC(a1, a2, a3, *v3, &qword_100634F28);
  *v3 = result;
  return result;
}

void *sub_10003759C(void *a1, int64_t a2, char a3)
{
  result = sub_100037EB8(a1, a2, a3, *v3, &qword_100634F20, &unk_100515428, &qword_10063AD20);
  *v3 = result;
  return result;
}

char *sub_1000375DC(char *a1, int64_t a2, char a3)
{
  result = sub_100038000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000375FC(char *a1, int64_t a2, char a3)
{
  result = sub_100038104(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10003761C(size_t a1, int64_t a2, char a3)
{
  result = sub_100038208(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10003763C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_100634B38);
  v10 = *(sub_100004CB8(&qword_100634B30) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_100634B30) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10003782C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100634F50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&unk_1006372E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100037960(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&unk_1006351C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100037A88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100634F10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_100037B84(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&unk_100637DF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100037C90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100634F40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100037DCC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100004CB8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *sub_100037EB8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_100004CB8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_100038000(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100634F08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100038104(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100634F18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

size_t sub_100038208(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_100634F00);
  v10 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100038400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t ActionType.isHidden.getter(char a1)
{
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x700000000180) != 0)
  {
    v2 = sub_100035920();
    v3 = &type metadata for Feature.MusicKit;
  }

  else
  {
    v2 = sub_1000358CC();
    v3 = &type metadata for Feature.MediaPlayer;
  }

  return (FeatureFlagsKey.isEnabled.getter(v3, v2) ^ 1) & 1;
}

uint64_t sub_1000384C8(char a1)
{
  result = 0x6C6576654C706F74;
  switch(a1)
  {
    case 1:
      result = 0x7463416B63697571;
      break;
    case 2:
      result = 7368564;
      break;
    case 3:
      result = 0x7972617262696CLL;
      break;
    case 4:
    case 11:
      result = 0x7473696C79616C70;
      break;
    case 5:
      result = 0x6B63616279616C70;
      break;
    case 6:
      result = 0x697461676976616ELL;
      break;
    case 7:
      result = 0x6574736174;
      break;
    case 8:
      result = 0x6E6974726F706572;
      break;
    case 9:
      result = 0x6F697463416E6970;
      break;
    case 10:
      result = 0x7463757274736564;
      break;
    case 12:
      result = 1867804519;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MenuType.title.getter(char a1)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 == 9)
  {
    sub_1004DD37C();
    (*(v4 + 16))(v7, v9, v3);
    if (qword_100633A80 == -1)
    {
      goto LABEL_7;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  if (a1 != 12 && a1 != 11)
  {
    return 0;
  }

  sub_1004DD37C();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_100633A80 != -1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = qword_100671958;
  sub_1004D838C();
  v11 = sub_1004DD4AC();
  (*(v4 + 8))(v9, v3);
  return v11;
}

id MenuType.image.getter(char a1)
{
  if (a1 != 9 && a1 != 12 && a1 != 11)
  {
    return 0;
  }

  v1 = sub_1004DD3FC();
  v2 = [objc_opt_self() systemImageNamed:v1];

  return v2;
}

uint64_t MenuType.style.getter(uint64_t a1)
{
  switch(a1)
  {
    case 11:
      goto LABEL_6;
    default:
      v2 = sub_1004DF08C();

      if (v2)
      {
        goto LABEL_3;
      }

      v4 = MenuType.description.getter(a1);
      v6 = v5;
      if (v4 == 1867804519 && v5 == 0xE400000000000000)
      {
        goto LABEL_6;
      }

      v8 = v4;
      v9 = sub_1004DF08C();

      if (v9)
      {
LABEL_3:
        v3 = 1;
      }

      else if (v8 == 0x6F697463416E6970 && v6 == 0xE90000000000006ELL)
      {
LABEL_6:

        v3 = 1;
      }

      else
      {
        v3 = sub_1004DF08C();
      }

      return v3 & 1;
  }
}

UIMenuElementSize __swiftcall MenuType.size(for:)(Swift::Int a1)
{
  switch(v1)
  {
    case 1:

      if (a1 <= 1)
      {
        return 2;
      }

      return 1;
    default:
      v3 = sub_1004DF08C();

      if ((v3 & 1) != 0 && a1 > 1)
      {
        return 1;
      }

      else
      {
        return 2;
      }
  }
}

uint64_t sub_100038ED0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore8MenuTypeO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100038F00@<X0>(uint64_t *a1@<X8>)
{
  result = MenuType.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *ActionType.mutuallyExclusiveActions.getter(unsigned __int8 a1)
{
  if (a1 > 0x18u)
  {
    if (a1 > 0x2Fu)
    {
      switch(a1)
      {
        case '0':
          v1 = &off_1005D07B0;
          return sub_10003B990(v1);
        case '1':
          v1 = &off_1005D0788;
          return sub_10003B990(v1);
        case '3':
          return &_swiftEmptySetSingleton;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x19u:
          v1 = &off_1005D0828;
          return sub_10003B990(v1);
        case 0x24u:
          v1 = &off_1005D08A0;
          return sub_10003B990(v1);
        case 0x25u:
          v1 = &off_1005D08C8;
          return sub_10003B990(v1);
      }
    }
  }

  else if (a1 > 7u)
  {
    switch(a1)
    {
      case 8u:
        v1 = &off_1005D0760;
        return sub_10003B990(v1);
      case 0x17u:
        v1 = &off_1005D07D8;
        return sub_10003B990(v1);
      case 0x18u:
        v1 = &off_1005D0800;
        return sub_10003B990(v1);
    }
  }

  else
  {
    switch(a1)
    {
      case 2u:
        v1 = &off_1005D0850;
        return sub_10003B990(v1);
      case 3u:
        v1 = &off_1005D0878;
        return sub_10003B990(v1);
      case 7u:
        v1 = &off_1005D0738;
        return sub_10003B990(v1);
    }
  }

  return 0;
}

uint64_t ActionType.rawValue.getter(char a1)
{
  result = 0x62694C6F54646461;
  switch(a1)
  {
    case 1:
      return 0x64616F6C6E776F64;
    case 2:
      return 0x657469726F766166;
    case 3:
      return 0x6F7661466F646E75;
    case 4:
      return 0x6572616873;
    case 5:
      return 2036427888;
    case 6:
      return 0x656C6666756873;
    case 7:
      return 7235952;
    case 8:
      return 0x6E69706E75;
    case 9:
      return 0x6C50657461657263;
    case 10:
      v3 = 1634038371;
      goto LABEL_34;
    case 11:
      return 0x616C506F54646461;
    case 12:
      return 0x7473696C79616C70;
    case 13:
      return 0x726F62616C6C6F63;
    case 14:
    case 41:
      return 0xD000000000000015;
    case 15:
      return 0xD000000000000011;
    case 16:
    case 29:
    case 47:
      return 0xD000000000000012;
    case 17:
      return 0xD000000000000011;
    case 18:
    case 46:
      return 0xD000000000000017;
    case 19:
      v4 = 0x656D616E6572;
      goto LABEL_42;
    case 20:
      v4 = 0x6F5465766F6DLL;
      goto LABEL_42;
    case 21:
      return 0x766F4D6575657571;
    case 22:
      return 0x7478654E79616C70;
    case 23:
      return 0x6575516F54646461;
    case 24:
      return 0x7473614C79616C70;
    case 25:
      return 0x6574664179616C70;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0x7453657461657263;
    case 28:
      return 0x79616C506F546F67;
    case 30:
      return 0x75626C416F546F67;
    case 31:
      return 0x697472416F546F67;
    case 32:
      v5 = 2003789939;
      goto LABEL_48;
    case 33:
      return 0x6C6C754677656976;
    case 34:
      return 0x72794C6572616873;
    case 35:
      return 0x6C436E496E65706FLL;
    case 36:
      return 0x4C74736567677573;
    case 37:
      return 0x676775536F646E75;
    case 38:
      v5 = 1702125938;
LABEL_48:
      result = v5 | 0x676E6F5300000000;
      break;
    case 39:
      result = 0xD000000000000014;
      break;
    case 40:
    case 42:
    case 44:
      result = 0xD000000000000013;
      break;
    case 43:
      result = 0xD00000000000001BLL;
      break;
    case 45:
      result = 0xD000000000000016;
      break;
    case 48:
      result = 0x6F4465766F6D6572;
      break;
    case 49:
      result = 0xD000000000000011;
      break;
    case 50:
      v3 = 1701602660;
LABEL_34:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_42:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6F46000000000000;
      break;
    case 51:
      result = 0x65766F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100039758(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1004DF08C();
  }

  return v12 & 1;
}

uint64_t sub_1000397EC@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore10ActionTypeO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_10003981C@<X0>(uint64_t *a1@<X8>)
{
  result = ActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100039870(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1004DF26C();
  a3(v5);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1000398F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_1004DD55C();
}

Swift::Int sub_100039964(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1004DF26C();
  a4(v6);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

char *sub_1000399D8(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = result + 32;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_100039F1C(result, v8, 1, v3, &qword_100634F58);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static ActionLookupBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_100004CB8(&qword_100634F58);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100511DA0;
  *(v2 + 32) = a1;

  return v2;
}

void *static ActionLookupBuilder.buildOptional(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  return v1;
}

size_t sub_100039BC4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_100634B38);
  v10 = *(sub_100004CB8(&qword_100634B30) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_100634B30) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100039DD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006350C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100039F1C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100004CB8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_10003A028(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006350B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003A134(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&unk_100637DF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10003A240(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&unk_1006351C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003A368(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006350A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003A490(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100634F90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10003A5A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100634F10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_10003A6F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100635068);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ICURLBagKey(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003A840(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100634F40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003A9D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100635088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100638980);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003AB7C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100635048);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003ACF8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100004CB8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_10003ADE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100634F08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10003AEE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100634FE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003B010(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100634F18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_10003B138(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_100004CB8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_10003B294(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

char *sub_10003B470(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100634FD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003B5A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_100004CB8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_10003B70C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_100004CB8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_10003B840(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100634FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t _s9MusicCore8MenuTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D05B0;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_10003B990(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_1006350B8);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      sub_1004DF26C();
      v7 = ActionType.rawValue.getter(v6);
      v9 = v8;
      sub_1004DD55C();

      result = sub_1004DF2BC();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v23 = v6;
        v16 = ~v11;
        do
        {
          if (ActionType.rawValue.getter(*(*(v3 + 48) + v12)) == v7 && v17 == v9)
          {

            goto LABEL_4;
          }

          v19 = sub_1004DF08C();

          if (v19)
          {
            goto LABEL_4;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
        }

        while (((1 << v12) & v14) != 0);
        v6 = v23;
      }

      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + v12) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t _s9MusicCore10ActionTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1004DF0DC();

  if (v0 >= 0x34)
  {
    return 52;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_10003BBD0()
{
  result = qword_100634F70;
  if (!qword_100634F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100634F70);
  }

  return result;
}

uint64_t sub_10003BC54(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003BCAC()
{
  result = qword_100634F88;
  if (!qword_100634F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100634F88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MenuType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MenuType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_10003BFEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100635080);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1004DF26C();

      sub_1004DD55C();
      result = sub_1004DF2BC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1004DF08C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_10003C154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100634FF8);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1004DF26C();
      sub_1004DF27C(v10);
      result = sub_1004DF2BC();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10003C290(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1004DED5C();
    if (result)
    {
LABEL_3:
      sub_100004CB8(&qword_100635030);
      result = sub_1004DEA8C();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1004DED5C();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_1004DEB2C();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_1004D9ABC();
    sub_10003D310(&qword_100635038);
    result = sub_1004DD2AC();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_10003D310(&qword_100635040);
      while (1)
      {
        result = sub_1004DD35C();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

Swift::Int sub_10003C4FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100635028);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (1)
    {
      v6 = *(v22 + v4++);
      sub_1004DF26C();
      sub_1004DD55C();

      result = sub_1004DF2BC();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          if (*(*(v3 + 48) + v9))
          {
            if (*(*(v3 + 48) + v9) == 1)
            {
              v13 = 0x657469726F766166;
            }

            else
            {
              v13 = 0x64616F6C6E776F64;
            }

            v14 = 0xE900000000000073;
            if (!v6)
            {
LABEL_10:
              v15 = 0xE300000000000000;
              if (v13 != 7105633)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          else
          {
            v14 = 0xE300000000000000;
            v13 = 7105633;
            if (!v6)
            {
              goto LABEL_10;
            }
          }

          if (v6 == 1)
          {
            v16 = 0x657469726F766166;
          }

          else
          {
            v16 = 0x64616F6C6E776F64;
          }

          v15 = 0xE900000000000073;
          if (v13 != v16)
          {
            goto LABEL_19;
          }

LABEL_18:
          if (v14 == v15)
          {

            goto LABEL_4;
          }

LABEL_19:
          v17 = sub_1004DF08C();

          if (v17)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v20;
LABEL_4:
      if (v4 == v21)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_10003C76C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_100004CB8(&qword_100635018);
  v3 = sub_1004DEA8C();
  v4 = 0;
  v5 = v3 + 56;
  v23 = a1 + 32;
  do
  {
    v24 = v4;
    v6 = *(v23 + v4);
    sub_1004DF26C();
    Library.Menu.Identifier.rawValue.getter(v6);
    sub_1004DD55C();

    v7 = sub_1004DF2BC();
    v8 = ~(-1 << *(v3 + 32));
    v9 = v7 & v8;
    v10 = (v7 & v8) >> 6;
    v11 = *(v5 + 8 * v10);
    v12 = 1 << (v7 & v8);
    if ((v12 & v11) != 0)
    {
      while (1)
      {
        v13 = 0xD000000000000029;
        v14 = "orites";
        switch(*(*(v3 + 48) + v9))
        {
          case 1:
            v13 = 0xD000000000000025;
            v14 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v13 = 0xD000000000000023;
            v14 = "LibraryView.Playlists";
            break;
          case 3:
            v13 = 0xD000000000000022;
            v14 = "LibraryView.Artists";
            break;
          case 4:
            v13 = 0xD000000000000021;
            v14 = "LibraryView.Albums";
            break;
          case 5:
            v13 = 0xD000000000000026;
            v14 = "LibraryView.Songs";
            break;
          case 6:
            v13 = 0xD000000000000027;
            v14 = "LibraryView.MadeForYou";
            break;
          case 7:
            v13 = 0xD000000000000022;
            v14 = "LibraryView.MusicVideos";
            break;
          case 8:
            v13 = 0xD000000000000028;
            v14 = "LibraryView.Genres";
            break;
          case 9:
            v13 = 0xD000000000000025;
            v14 = "LibraryView.Compilations";
            break;
          case 0xA:
            v13 = 0xD000000000000021;
            v14 = "LibraryView.Composers";
            break;
          case 0xB:
            v13 = 0xD000000000000026;
            v14 = "LibraryView.Shows";
            break;
          case 0xC:
            v13 = 0xD000000000000027;
            v14 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        v15 = v14 | 0x8000000000000000;
        v16 = 0xD000000000000029;
        v17 = "orites";
        switch(v6)
        {
          case 1:
            v16 = 0xD000000000000025;
            v17 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v16 = 0xD000000000000023;
            v17 = "LibraryView.Playlists";
            break;
          case 3:
            v16 = 0xD000000000000022;
            v17 = "LibraryView.Artists";
            break;
          case 4:
            v16 = 0xD000000000000021;
            v17 = "LibraryView.Albums";
            break;
          case 5:
            v16 = 0xD000000000000026;
            v17 = "LibraryView.Songs";
            break;
          case 6:
            v16 = 0xD000000000000027;
            v17 = "LibraryView.MadeForYou";
            break;
          case 7:
            v16 = 0xD000000000000022;
            v17 = "LibraryView.MusicVideos";
            break;
          case 8:
            v16 = 0xD000000000000028;
            v17 = "LibraryView.Genres";
            break;
          case 9:
            v16 = 0xD000000000000025;
            v17 = "LibraryView.Compilations";
            break;
          case 10:
            v16 = 0xD000000000000021;
            v17 = "LibraryView.Composers";
            break;
          case 11:
            v16 = 0xD000000000000026;
            v17 = "LibraryView.Shows";
            break;
          case 12:
            v16 = 0xD000000000000027;
            v17 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        if (v13 == v16 && v15 == (v17 | 0x8000000000000000))
        {
          break;
        }

        v18 = sub_1004DF08C();

        if (v18)
        {
          goto LABEL_4;
        }

        v9 = (v9 + 1) & v8;
        v10 = v9 >> 6;
        v11 = *(v5 + 8 * (v9 >> 6));
        v12 = 1 << v9;
        if ((v11 & (1 << v9)) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
LABEL_36:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        __break(1u);
        JUMPOUT(0x10003CB64);
      }

      *(v3 + 16) = v21;
    }

LABEL_4:
    v4 = v24 + 1;
  }

  while (v24 + 1 != v1);
  return v3;
}

Swift::Int sub_10003CBCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100635008);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v20 = a1 + 32;
    while (1)
    {
      v6 = *(v20 + v4);
      sub_1004DF26C();
      sub_1004DD55C();

      result = sub_1004DF2BC();
      v8 = -1 << *(v3 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      v11 = *(v5 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) != 0)
      {
        break;
      }

LABEL_21:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v19;
LABEL_3:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v13 = ~v8;
    while (1)
    {
      v14 = *(*(v3 + 48) + v9);
      v15 = v14 >> 6;
      if (v14 >> 6 > 1)
      {
        if (v15 != 2 && v14 == 192 && v6 == 192)
        {
          goto LABEL_3;
        }
      }

      else if (v15)
      {
        if (v6 >> 6 == 1)
        {
          if (((v14 ^ v6) & 0x3F) == 0)
          {
            goto LABEL_3;
          }

          goto LABEL_7;
        }
      }

      else if (v6 < 0x40)
      {
        if (((v14 ^ v6) & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_7;
      }

      sub_1004DF26C();
      sub_1004DD55C();

      v16 = sub_1004DF2BC();
      sub_1004DF26C();
      sub_1004DD55C();

      result = sub_1004DF2BC();
      if (v16 == result)
      {
        goto LABEL_3;
      }

LABEL_7:
      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v5 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if ((v11 & (1 << v9)) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10003D310(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1004D9ABC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Class ActionList.menu.getter(uint64_t a1)
{
  v67 = _swiftEmptyArrayStorage;
  v1 = *(a1 + 16);
  if (!v1)
  {
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

  v2 = 0;
  v55 = *(a1 + 16);
  v56 = a1 + 32;
  v52 = _swiftEmptyArrayStorage;
LABEL_3:
  v3 = v2;
  do
  {
    if (v3 >= v1)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v2 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_53;
    }

    v4 = *(v56 + 8 * v3);
    v66 = _swiftEmptyArrayStorage;
    v5 = *(v4 + 16);

    v60 = v5;
    if (v5)
    {
      v7 = 0;
      v8 = v4 + 32;
      v9 = _swiftEmptyArrayStorage;
      v59 = v2;
      v61 = v4;
      v54 = v4 + 32;
      while (1)
      {
        v57 = v9;
        v10 = v60 - v7;
        v11 = (v8 + 144 * v7);
        while (1)
        {
          if (v7 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_52;
          }

          v68 = *v11;
          v12 = v11[1];
          v13 = v11[2];
          v14 = v11[4];
          v71 = v11[3];
          v72 = v14;
          v69 = v12;
          v70 = v13;
          v15 = v11[5];
          v16 = v11[6];
          v17 = v11[8];
          v75 = v11[7];
          v76 = v17;
          v73 = v15;
          v74 = v16;
          v18 = *(v11 + 56);
          v19 = *(v11 + 40);
          v78 = *(v11 + 24);
          v79 = v19;
          v80 = v18;
          v20 = *(&v78 + 1);
          if (*(&v78 + 1) == 1)
          {
            goto LABEL_9;
          }

          v21 = v73;
          if (!v73)
          {
            __break(1u);
            return result;
          }

          v62 = v10;
          v22 = v78;
          v23 = v79;
          v24 = v80;
          v25 = BYTE8(v80);
          sub_100035468(&v68, &v64);
          v26 = sub_1000108DC(&v78, &v64, &qword_100634E98);
          v27 = v21(v26);
          if (v28 == 1)
          {
            break;
          }

          sub_1000354D0(v27, v28);
          sub_1000354A0(&v68);
          v81[0] = v22;
          v81[1] = v20;
          sub_10001074C(v81, &unk_100639EB0);
          v82 = v23;
          sub_10001074C(&v82, &unk_100639EB0);
          v83 = v24;
          result = sub_10001074C(&v83, &qword_1006350E0);
          v4 = v61;
          v10 = v62;
LABEL_9:
          v11 += 9;
          ++v7;
          if (!--v10)
          {
            v1 = v55;
            v9 = v57;
            v2 = v59;
            goto LABEL_36;
          }
        }

        v58 = v22;
        v29 = *(&v72 + 1);
        v77 = *(&v72 + 1);
        v53 = v20;
        if (*(&v72 + 1))
        {
          v2 = v59;
          v30 = v24;
          goto LABEL_29;
        }

        if (v25)
        {
          if ((v25 & 2) == 0)
          {
            v31 = 1;
            if ((v25 & 4) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

          v31 = 3;
          if ((v25 & 4) != 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if ((v25 & 2) != 0)
          {
            v31 = 2;
            if ((v25 & 4) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v31 = 0;
            if ((v25 & 4) == 0)
            {
              goto LABEL_28;
            }
          }

LABEL_27:
          v31 |= 4uLL;
        }

LABEL_28:
        sub_100006F10(0, &qword_1006350D0);
        v32 = swift_allocObject();
        v33 = v75;
        v32[7] = v74;
        v32[8] = v33;
        v32[9] = v76;
        v34 = v71;
        v32[3] = v70;
        v32[4] = v34;
        v35 = v73;
        v32[5] = v72;
        v32[6] = v35;
        v36 = v69;
        v32[1] = v68;
        v32[2] = v36;
        sub_100035468(&v68, &v64);
        v30 = v24;
        v37 = v24;

        v51._rawValue = v31;
        v29 = sub_1004DE62C();
        v2 = v59;
LABEL_29:
        v64 = 0x2E736E6F69746341;
        v65 = 0xE800000000000000;
        v38 = ActionType.rawValue.getter(v68);
        v40 = v39;
        sub_1000108DC(&v77, v63, &qword_1006350D8);
        v41 = v29;
        v89._countAndFlagsBits = v38;
        v89._object = v40;
        sub_1004DD5FC(v89);

        v43 = v64;
        v42 = v65;
        if (qword_100633E98 != -1)
        {
          swift_once();
        }

        v64 = qword_10063CF40;
        v65 = *algn_10063CF48;

        v90._countAndFlagsBits = 46;
        v90._object = 0xE100000000000000;
        sub_1004DD5FC(v90);

        v91._countAndFlagsBits = v43;
        v91._object = v42;
        sub_1004DD5FC(v91);

        v44 = sub_1004DD3FC();

        [v41 setAccessibilityIdentifier:v44];
        sub_1000354A0(&v68);

        v84[0] = v58;
        v84[1] = v53;
        sub_10001074C(v84, &unk_100639EB0);
        v85 = v23;
        sub_10001074C(&v85, &unk_100639EB0);
        v86 = v30;
        sub_10001074C(&v86, &qword_1006350E0);
        sub_1004DD84C();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1004DD8BC();
        }

        ++v7;
        result = sub_1004DD90C();
        v9 = v66;
        v4 = v61;
        v8 = v54;
        v1 = v55;
        if (v62 == 1)
        {
LABEL_36:
          if (v9 >> 62)
          {
            goto LABEL_41;
          }

LABEL_37:
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
          {
            goto LABEL_38;
          }

LABEL_42:
          v47 = v9;
          sub_100006F10(0, &qword_1006350E8);
          v92._countAndFlagsBits = 0;
          v92._object = 0xE000000000000000;
          v94.value._countAndFlagsBits = 0;
          v94.value._object = 0;
          v87.value.super.isa = 0;
          v87.is_nil = 0;
          v48.value = 1;
          sub_1004DE4AC(v92, v94, v87, v48, 0xFFFFFFFFFFFFFFFFLL, v47, v51);

          sub_1004DD84C();
          if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004DD8BC();
          }

          sub_1004DD90C();
          v52 = v67;
          if (v2 == v1)
          {
            goto LABEL_47;
          }

          goto LABEL_3;
        }
      }
    }

    v9 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_37;
    }

LABEL_41:
    v45 = v9;
    v46 = sub_1004DED5C();
    v9 = v45;
    if (v46 > 0)
    {
      goto LABEL_42;
    }

LABEL_38:

    v3 = v2;
  }

  while (v2 != v1);
LABEL_47:
  if (!(v52 >> 62))
  {
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      sub_1004DF0AC();
      sub_100006F10(0, &qword_1006350F0);
      v49 = v52;
LABEL_50:

      sub_100006F10(0, &qword_1006350E8);
      v93._countAndFlagsBits = 0;
      v93._object = 0xE000000000000000;
      v95.value._countAndFlagsBits = 0;
      v95.value._object = 0;
      v88.value.super.isa = 0;
      v88.is_nil = 0;
      v50.value = 0;
      return sub_1004DE4AC(v93, v95, v88, v50, 0xFFFFFFFFFFFFFFFFLL, v49, v51).super.super.isa;
    }

    goto LABEL_56;
  }

LABEL_54:
  if (sub_1004DED5C() > 0)
  {
    sub_100006F10(0, &qword_1006350F0);

    v49 = sub_1004DECEC();

    goto LABEL_50;
  }

LABEL_56:

  return 0;
}

Class ActionGroup.menu.getter(Class result)
{
  v1 = _swiftEmptyArrayStorage;
  v42 = _swiftEmptyArrayStorage;
  v2 = *(result + 2);
  if (!v2)
  {
    goto LABEL_30;
  }

  v3 = 0;
  v4 = result + 32;
  v36 = result + 32;
  v38 = *(result + 2);
  do
  {
    v37 = v1;
    v5 = &v4[144 * v3];
    v6 = v3;
    while (1)
    {
      if (v6 >= v2)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v7 = *(v5 + 7);
      v49 = *(v5 + 6);
      v50 = v7;
      v51 = *(v5 + 8);
      v8 = *(v5 + 3);
      v45 = *(v5 + 2);
      v46 = v8;
      v9 = *(v5 + 5);
      v47 = *(v5 + 4);
      v48 = v9;
      v10 = *(v5 + 1);
      v43 = *v5;
      v44 = v10;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_34;
      }

      if (v45 != 1)
      {
        break;
      }

LABEL_4:
      ++v6;
      v5 += 144;
      if (v11 == v2)
      {
        v1 = v37;
        goto LABEL_30;
      }
    }

    v12 = v48;
    if (!v48)
    {
      __break(1u);
      return result;
    }

    v14 = *(&v46 + 1);
    v13 = v47;
    sub_100035468(&v43, &v40);
    v1 = v14;

    v16 = v12(v15);
    if (v17 != 1)
    {
      sub_1000354D0(v16, v17);

      result = sub_1000354A0(&v43);
      v2 = v38;
      v11 = v6 + 1;
      goto LABEL_4;
    }

    v18 = *(&v47 + 1);
    v52 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      v2 = v38;
      v3 = v6 + 1;
      v19 = v1;
    }

    else
    {
      v3 = v6 + 1;
      if (v13)
      {
        v2 = v38;
        v19 = v1;
        if ((v13 & 2) != 0)
        {
          v20 = 3;
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v2 = v38;
        v19 = v1;
        if ((v13 & 2) != 0)
        {
          v20 = 2;
        }

        else
        {
          v20 = 0;
        }
      }

      if ((v13 & 4) != 0)
      {
        v20 |= 4uLL;
      }

      sub_100006F10(0, &qword_1006350D0);
      v21 = swift_allocObject();
      v22 = v50;
      v21[7] = v49;
      v21[8] = v22;
      v21[9] = v51;
      v23 = v46;
      v21[3] = v45;
      v21[4] = v23;
      v24 = v48;
      v21[5] = v47;
      v21[6] = v24;
      v25 = v44;
      v21[1] = v43;
      v21[2] = v25;
      sub_100035468(&v43, &v40);

      v26 = v19;
      v35._rawValue = v20;
      v18 = sub_1004DE62C();
    }

    v40 = 0x2E736E6F69746341;
    v41 = 0xE800000000000000;
    v27 = ActionType.rawValue.getter(v43);
    v29 = v28;
    sub_1000108DC(&v52, v39, &qword_1006350D8);
    v30 = v18;
    v54._countAndFlagsBits = v27;
    v54._object = v29;
    sub_1004DD5FC(v54);

    v32 = v40;
    v31 = v41;
    if (qword_100633E98 != -1)
    {
      swift_once();
    }

    v40 = qword_10063CF40;
    v41 = *algn_10063CF48;

    v55._countAndFlagsBits = 46;
    v55._object = 0xE100000000000000;
    sub_1004DD5FC(v55);

    v56._countAndFlagsBits = v32;
    v56._object = v31;
    sub_1004DD5FC(v56);

    v33 = sub_1004DD3FC();

    [v30 setAccessibilityIdentifier:v33];

    sub_1000354A0(&v43);
    sub_1004DD84C();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004DD8BC();
    }

    result = sub_1004DD90C();
    v1 = v42;
    v4 = v36;
  }

  while (v3 != v2);
LABEL_30:
  if (v1 >> 62)
  {
LABEL_35:
    if (sub_1004DED5C() <= 0)
    {
      goto LABEL_36;
    }

LABEL_32:
    sub_100006F10(0, &qword_1006350E8);
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    v58.value._countAndFlagsBits = 0;
    v58.value._object = 0;
    v53.value.super.isa = 0;
    v53.is_nil = 0;
    v34.value = 1;
    return sub_1004DE4AC(v57, v58, v53, v34, 0xFFFFFFFFFFFFFFFFLL, v1, v35).super.super.isa;
  }

  else
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
      goto LABEL_32;
    }

LABEL_36:

    return 0;
  }
}

Class ActionList.contextMenuConfiguration(identifier:previewProvider:)(uint64_t a1, void *(*a2)(), uint64_t a3, uint64_t a4)
{
  v7 = ActionList.menu.getter(a4);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = objc_opt_self();
    v17 = a2;
    v18 = a3;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10000DF28;
    v16 = &unk_1005D4F60;
    v10 = _Block_copy(&v13);
    swift_unknownObjectRetain();
    swift_retain_n();

    v17 = NowPlaying.TrackMetadata.underlyingItem.getter;
    v18 = v8;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10003EB00;
    v16 = &unk_1005D4F88;
    v11 = _Block_copy(&v13);

    v7 = [v9 configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
    swift_unknownObjectRelease();

    _Block_release(v11);
    _Block_release(v10);
  }

  return v7;
}

void AnyAction.menuElement.getter()
{
  if (*(v0 + 32) != 1)
  {
    v1 = v0;
    v2 = *(v0 + 80);
    if (v2)
    {
      v3 = *(v0 + 56);

      v5 = v2(v4);
      if (v6 == 1)
      {
        v7 = *(v0 + 72);
        v24 = v7;
        if (!v7)
        {
          sub_100006F10(0, &qword_1006350D0);
          v8 = swift_allocObject();
          v9 = *(v1 + 112);
          v8[7] = *(v1 + 96);
          v8[8] = v9;
          v8[9] = *(v1 + 128);
          v10 = *(v1 + 48);
          v8[3] = *(v1 + 32);
          v8[4] = v10;
          v11 = *(v1 + 80);
          v8[5] = *(v1 + 64);
          v8[6] = v11;
          v12 = *(v1 + 16);
          v8[1] = *v1;
          v8[2] = v12;

          v13 = v3;
          sub_100035468(v1, &v22);
          v7 = sub_1004DE62C();
        }

        v22 = 0x2E736E6F69746341;
        v23 = 0xE800000000000000;
        v14 = ActionType.rawValue.getter(*v1);
        v16 = v15;
        sub_1000108DC(&v24, v21, &qword_1006350D8);
        v17 = v7;
        v25._countAndFlagsBits = v14;
        v25._object = v16;
        sub_1004DD5FC(v25);

        v19 = v22;
        v18 = v23;
        if (qword_100633E98 != -1)
        {
          swift_once();
        }

        v22 = qword_10063CF40;
        v23 = *algn_10063CF48;

        v26._countAndFlagsBits = 46;
        v26._object = 0xE100000000000000;
        sub_1004DD5FC(v26);

        v27._countAndFlagsBits = v19;
        v27._object = v18;
        sub_1004DD5FC(v27);

        v20 = sub_1004DD3FC();

        [v17 setAccessibilityIdentifier:v20];
      }

      else
      {
        sub_1000354D0(v5, v6);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10003E48C(uint64_t a1, _OWORD *a2)
{
  v3 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-v4];
  v6 = sub_1004DDA8C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1004DDA4C();
  sub_100035468(a2, v14);
  v7 = sub_1004DDA3C();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = a2[7];
  *(v8 + 128) = a2[6];
  *(v8 + 144) = v9;
  *(v8 + 160) = a2[8];
  v10 = a2[3];
  *(v8 + 64) = a2[2];
  *(v8 + 80) = v10;
  v11 = a2[5];
  *(v8 + 96) = a2[4];
  *(v8 + 112) = v11;
  v12 = a2[1];
  *(v8 + 32) = *a2;
  *(v8 + 48) = v12;
  sub_10011F560(0, 0, v5, &unk_100515B00, v8);
}

uint64_t sub_10003E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v4[22] = sub_1004DDA4C();
  v4[23] = sub_1004DDA3C();
  v5 = swift_task_alloc();
  v4[24] = v5;
  *v5 = v4;
  v5[1] = sub_10003E690;

  return AnyAction.execute()();
}

uint64_t sub_10003E690()
{
  *(*v1 + 200) = v0;

  v3 = sub_1004DD9BC();
  if (v0)
  {
    v4 = sub_10003E84C;
  }

  else
  {
    v4 = sub_10003E7EC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10003E7EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003E84C()
{
  v18 = v0;

  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_1004D966C();
  sub_100035430(v2, static Logger.actions);
  sub_100035468(v1, (v0 + 2));
  swift_errorRetain();
  v3 = sub_1004D964C();
  v4 = sub_1004DDF7C();
  sub_1000354A0(v1);

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  if (v5)
  {
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = ActionType.rawValue.getter(*v7);
    v11 = sub_1000343A8(v9, v10, &v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v0[20] = v6;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v12 = sub_1004DD4DC();
    v14 = sub_1000343A8(v12, v13, &v17);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Action %{public}s failed: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10003EA88()
{

  return swift_deallocObject();
}

void *NowPlaying.TrackMetadata.underlyingItem.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10003EAE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10003EB00(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100006F10(0, &qword_1006350F0);
  v2 = sub_1004DD87C();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_10003EB90()
{

  if (*(v0 + 48) != 1)
  {
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10003EC30()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64) != 1)
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  if (*(v0 + 160))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10003ECD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035B28;

  return sub_10003E5DC(a1, v4, v5, v1 + 32);
}

int *Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  (*(*(a11 - 8) + 32))(a9, a1, a11);
  result = type metadata accessor for Action();
  *(a9 + result[9]) = a2;
  *(a9 + result[11]) = a10;
  v21 = (a9 + result[10]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + result[12]);
  *v22 = a5;
  v22[1] = a6;
  v23 = (a9 + result[13]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t Action.execute(checkSupportedStatus:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 357) = a2;
  *(v4 + 56) = a1;
  sub_100004CB8(&qword_100635240);
  *(v4 + 80) = swift_task_alloc();
  v6 = *(a3 + 24);
  *(v4 + 88) = v6;
  v7 = *(v6 - 8);
  *(v4 + 96) = v7;
  *(v4 + 104) = *(v7 + 64);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  sub_100004CB8(&qword_100635110);
  *(v4 + 136) = swift_task_alloc();
  v8 = *(a3 - 8);
  *(v4 + 144) = v8;
  *(v4 + 152) = *(v8 + 64);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v9 = sub_1004D966C();
  *(v4 + 208) = v9;
  *(v4 + 216) = *(v9 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_10003F188, 0, 0);
}

uint64_t sub_10003F188()
{
  v115 = v0;
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 72) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v75 = sub_100035920();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v75) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 356) = 2;
    v76 = sub_1000358CC();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v76) & 1) == 0)
    {
LABEL_21:
      if (qword_100634428 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_100633A90 != -1)
        {
          swift_once();
        }

        v77 = *(v0 + 232);
        v78 = *(v0 + 208);
        v79 = *(v0 + 216);
        v80 = *(v0 + 168);
        v81 = *(v0 + 144);
        v83 = *(v0 + 64);
        v82 = *(v0 + 72);
        v84 = sub_100035430(v78, qword_1006350F8);
        (*(v79 + 16))(v77, v84, v78);
        (*(v81 + 16))(v80, v82, v83);
        v85 = sub_1004D964C();
        v86 = sub_1004DDF7C();
        v87 = os_log_type_enabled(v85, v86);
        v88 = *(v0 + 232);
        v90 = *(v0 + 208);
        v89 = *(v0 + 216);
        v91 = *(v0 + 168);
        v92 = *(v0 + 144);
        v93 = *(v0 + 64);
        if (v87)
        {
          v113 = *(v0 + 232);
          v94 = swift_slowAlloc();
          v110 = v90;
          v95 = swift_slowAlloc();
          v114[0] = v95;
          *v94 = 136446210;
          v96 = *(v91 + *(v1 + 36));
          (*(v92 + 8))(v91, v93);
          v97 = ActionType.rawValue.getter(v96);
          v99 = sub_1000343A8(v97, v98, v114);

          *(v94 + 4) = v99;
          _os_log_impl(&_mh_execute_header, v85, v86, "%{public}s: attempted to execute but identifier is hidden", v94, 0xCu);
          sub_100008D24(v95);

          (*(v89 + 8))(v113, v110);
        }

        else
        {
          (*(v92 + 8))(*(v0 + 168), *(v0 + 64));

          (*(v89 + 8))(v88, v90);
        }
      }

      v48 = 0x80000001004EA0B0;
      v67 = 0xD000000000000014;
      goto LABEL_30;
    }
  }

LABEL_2:
  if (*(v0 + 357) != 1 || (v3 = (*(*(v0 + 72) + *(*(v0 + 64) + 40)))(), v4 == 1))
  {
    if (qword_100633A90 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 248);
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    v8 = *(v0 + 192);
    v9 = *(v0 + 144);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = sub_100035430(v6, qword_1006350F8);
    *(v0 + 264) = v12;
    v13 = *(v7 + 16);
    *(v0 + 272) = v13;
    *(v0 + 280) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v5, v12, v6);
    v14 = *(v9 + 16);
    *(v0 + 288) = v14;
    *(v0 + 296) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v108 = v14;
    v14(v8, v10, v11);
    v15 = sub_1004D964C();
    v16 = sub_1004DDF9C();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 248);
    v20 = *(v0 + 208);
    v19 = *(v0 + 216);
    v21 = *(v0 + 192);
    v22 = *(v0 + 144);
    v23 = *(v0 + 64);
    if (v17)
    {
      v104 = *(v0 + 248);
      v24 = swift_slowAlloc();
      v102 = v20;
      v25 = swift_slowAlloc();
      v114[0] = v25;
      *v24 = 136446210;
      v26 = *(v21 + *(v1 + 36));
      (*(v22 + 8))(v21, v23);
      v27 = ActionType.rawValue.getter(v26);
      v29 = sub_1000343A8(v27, v28, v114);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: performing…", v24, 0xCu);
      sub_100008D24(v25);

      (*(v19 + 8))(v104, v102);
    }

    else
    {
      (*(v22 + 8))(*(v0 + 192), *(v0 + 64));

      (*(v19 + 8))(v18, v20);
    }

    v30 = *(v0 + 184);
    v31 = *(v0 + 144);
    v32 = *(v0 + 136);
    v105 = *(v0 + 88);
    v34 = *(v0 + 64);
    v33 = *(v0 + 72);
    sub_1000426F4();
    v35 = [objc_opt_self() mainRunLoop];
    v36 = sub_1004DE74C();
    (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
    v37 = sub_1004DE59C();

    sub_10001074C(v32, &qword_100635110);
    *(v0 + 32) = v37;
    sub_1004DE58C();
    sub_100042740();
    v38 = sub_1004D9B0C();

    *(v0 + 40) = v38;
    v108(v30, v33, v34);
    v39 = *(v31 + 80);
    *(v0 + 352) = v39;
    v40 = (v39 + 32) & ~v39;
    v41 = swift_allocObject();
    v42 = *(v34 + 16);
    *(v0 + 304) = v42;
    *(v41 + 16) = v42;
    *(v41 + 24) = v105;
    v43 = *(v31 + 32);
    *(v0 + 312) = v43;
    *(v0 + 320) = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v43(v41 + v40, v30, v34);
    sub_100004CB8(&qword_100635128);
    sub_100042B08(&qword_100635130, &qword_100635128);
    *(v0 + 328) = sub_1004D9C0C();

    v111 = (*(v33 + *(v34 + 48)) + **(v33 + *(v34 + 48)));
    v44 = swift_task_alloc();
    *(v0 + 336) = v44;
    *v44 = v0;
    v44[1] = sub_10003FD24;
    v45 = *(v0 + 72);
    v46 = *(v0 + 56);

    return v111(v46, v45);
  }

  v48 = v4;
  v112 = v3;
  v106 = v1;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 256);
  v51 = *(v0 + 208);
  v50 = *(v0 + 216);
  v52 = *(v0 + 200);
  v53 = *(v0 + 144);
  v55 = *(v0 + 64);
  v54 = *(v0 + 72);
  v56 = sub_100035430(v51, qword_1006350F8);
  (*(v50 + 16))(v49, v56, v51);
  (*(v53 + 16))(v52, v54, v55);

  v57 = sub_1004D964C();
  v58 = sub_1004DDF7C();
  sub_1000354D0(v112, v48);
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 256);
  v61 = *(v0 + 216);
  v109 = *(v0 + 208);
  v62 = *(v0 + 200);
  v63 = *(v0 + 144);
  v64 = *(v0 + 64);
  if (v59)
  {
    v103 = *(v0 + 256);
    v65 = swift_slowAlloc();
    v114[0] = swift_slowAlloc();
    *v65 = 136446466;
    v66 = *(v106 + 36);
    v107 = v58;
    v67 = v112;
    v68 = *(v62 + v66);
    (*(v63 + 8))(v62, v64);
    v69 = ActionType.rawValue.getter(v68);
    v71 = sub_1000343A8(v69, v70, v114);

    *(v65 + 4) = v71;
    *(v65 + 12) = 2082;
    *(v0 + 16) = v112;
    *(v0 + 24) = v48;

    sub_100004CB8(&unk_100639EB0);
    v72 = sub_1004DD4DC();
    v74 = sub_1000343A8(v72, v73, v114);

    *(v65 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v57, v107, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v65, 0x16u);
    swift_arrayDestroy();

    (*(v61 + 8))(v103, v109);
  }

  else
  {
    (*(v63 + 8))(*(v0 + 200), *(v0 + 64));

    (*(v61 + 8))(v60, v109);
    v67 = v112;
  }

LABEL_30:
  sub_100042AA4();
  swift_allocError();
  *v100 = v67;
  v100[1] = v48;
  swift_willThrow();

  v101 = *(v0 + 8);

  return v101();
}

uint64_t sub_10003FD24()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_10004041C;
  }

  else
  {
    v2 = sub_10003FE38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003FE38()
{
  v67 = v0;
  v63 = *(v0 + 288);
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 208);
  v5 = *(v0 + 176);
  v6 = *(v0 + 96);
  v59 = *(v0 + 88);
  v61 = *(v0 + 128);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v58 = *(v0 + 56);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v63(v5, v7, v8);
  v9 = *(v6 + 16);
  v9(v61, v58, v59);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  v64 = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v60 = v11;
    v62 = v10;
    v12 = *(v0 + 176);
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v57 = *(v0 + 128);
    v15 = *(v0 + 88);
    v16 = *(v0 + 64);
    v17 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v17 = 136446466;
    v18 = *(v12 + *(v16 + 36));
    (*(v13 + 8))(v12, v16);
    v19 = ActionType.rawValue.getter(v18);
    v21 = sub_1000343A8(v19, v20, &v65);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v9(v14, v57, v15);
    v22 = 0xE000000000000000;
    if (swift_dynamicCast())
    {
      v23 = 0;
    }

    else
    {
      v30 = *(v0 + 128);
      v31 = *(v0 + 112);
      v32 = *(v0 + 88);
      v66[0] = 0;
      v66[1] = 0xE000000000000000;
      sub_1004DEAAC(16);

      strcpy(v66, " with result: ");
      HIBYTE(v66[1]) = -18;
      v9(v31, v30, v32);
      v69._countAndFlagsBits = sub_1004DD4DC();
      sub_1004DD5FC(v69);

      v23 = v66[0];
      v22 = v66[1];
    }

    v33 = *(v0 + 240);
    v34 = *(v0 + 208);
    v35 = *(v0 + 216);
    (*(*(v0 + 96) + 8))(*(v0 + 128), *(v0 + 88));
    v36 = sub_1000343A8(v23, v22, &v65);

    *(v17 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v62, v60, "%{public}s: perform success%{public}s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v33, v34);
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 208);
    v26 = *(v0 + 216);
    v27 = *(v0 + 128);
    v28 = *(v0 + 88);
    v29 = *(v0 + 96);
    (*(*(v0 + 144) + 8))(*(v0 + 176), *(v0 + 64));

    (*(v29 + 8))(v27, v28);
    (*(v26 + 8))(v24, v25);
  }

  v55 = *(v0 + 304);
  v56 = *(v0 + 312);
  v37 = *(v0 + 352);
  v53 = *(v0 + 288);
  v38 = *(v0 + 184);
  v52 = *(v0 + 152);
  v39 = *(v0 + 112);
  v40 = *(v0 + 96);
  v41 = *(v0 + 80);
  v42 = *(v0 + 88);
  v54 = v41;
  v44 = *(v0 + 64);
  v43 = *(v0 + 72);
  v45 = *(v0 + 56);
  v46 = sub_1004DDA8C();
  (*(*(v46 - 8) + 56))(v41, 1, 1, v46);
  v53(v38, v43, v44);
  v64(v39, v45, v42);
  v47 = (v37 + 48) & ~v37;
  v48 = (v52 + v47 + *(v40 + 80)) & ~*(v40 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  *(v49 + 4) = v55;
  *(v49 + 5) = v42;
  v56(&v49[v47], v38, v44);
  (*(v40 + 32))(&v49[v48], v39, v42);
  sub_100041790(0, 0, v54, &unk_100515B40, v49);

  sub_10001074C(v54, &qword_100635240);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_10004041C()
{
  v32 = v0;
  v28 = v0[36];
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[20];
  v7 = v0[8];
  v6 = v0[9];

  v1(v3, v2, v4);
  v28(v5, v6, v7);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[43];
    v27 = v0[27];
    v29 = v0[26];
    v30 = v0[28];
    v11 = v0[20];
    v12 = v0[18];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v14 = 136446466;
    v15 = *(v11 + *(v13 + 36));
    (*(v12 + 8))(v11, v13);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_1000343A8(v16, v17, v31);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[6] = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v19 = sub_1004DD4DC();
    v21 = sub_1000343A8(v19, v20, v31);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v30, v29);
  }

  else
  {
    v23 = v0[27];
    v22 = v0[28];
    v24 = v0[26];
    (*(v0[18] + 8))(v0[20], v0[8]);

    (*(v23 + 8))(v22, v24);
  }

  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t sub_100040780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_100004CB8(&qword_100635110);
  v7[9] = swift_task_alloc();
  v8 = type metadata accessor for Action();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v7[12] = *(v9 + 64);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v10 = sub_1004D966C();
  v7[17] = v10;
  v7[18] = *(v10 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_10004092C, 0, 0);
}

uint64_t sub_10004092C()
{
  v47 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 40);
  v8 = sub_100035430(v2, qword_1006350F8);
  *(v0 + 176) = v8;
  v9 = *(v3 + 16);
  *(v0 + 184) = v9;
  *(v0 + 192) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v2);
  v10 = *(v6 + 16);
  *(v0 + 200) = v10;
  *(v0 + 208) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44 = v10;
  v10(v4, v7, v5);
  v11 = sub_1004D964C();
  v12 = sub_1004DDF9C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 168);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 128);
  v19 = *(v0 + 80);
  v18 = *(v0 + 88);
  if (v13)
  {
    v42 = *(v0 + 168);
    v20 = swift_slowAlloc();
    v41 = v16;
    v21 = swift_slowAlloc();
    v46 = v21;
    *v20 = 136446210;
    v22 = *(v17 + *(v19 + 36));
    (*(v18 + 8))(v17, v19);
    v23 = ActionType.rawValue.getter(v22);
    v25 = sub_1000343A8(v23, v24, &v46);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: finishing…", v20, 0xCu);
    sub_100008D24(v21);

    (*(v15 + 8))(v42, v41);
  }

  else
  {
    (*(v18 + 8))(*(v0 + 128), *(v0 + 80));

    (*(v15 + 8))(v14, v16);
  }

  v26 = *(v0 + 120);
  v27 = *(v0 + 88);
  v29 = *(v0 + 72);
  v28 = *(v0 + 80);
  v30 = *(v0 + 40);
  sub_1000426F4();
  v43 = *(v0 + 56);
  v31 = [objc_opt_self() mainRunLoop];
  v32 = sub_1004DE74C();
  (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
  v33 = sub_1004DE59C();

  sub_10001074C(v29, &qword_100635110);
  *(v0 + 16) = v33;
  sub_1004DE58C();
  sub_100042740();
  v34 = sub_1004D9B0C();

  *(v0 + 24) = v34;
  v44(v26, v30, v28);
  v35 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v43;
  (*(v27 + 32))(v36 + v35, v26, v28);
  sub_100004CB8(&qword_100635128);
  sub_100042B08(&qword_100635130, &qword_100635128);
  *(v0 + 216) = sub_1004D9C0C();

  v45 = (*(v30 + *(v28 + 52)) + **(v30 + *(v28 + 52)));
  v37 = swift_task_alloc();
  *(v0 + 224) = v37;
  *v37 = v0;
  v37[1] = sub_100040E28;
  v39 = *(v0 + 40);
  v38 = *(v0 + 48);

  return v45(v39, v38);
}

uint64_t sub_100040E28()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1000411A8;
  }

  else
  {
    v2 = sub_100040F3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100040F3C()
{
  v29 = v0;
  v25 = v0[25];
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[10];
  v7 = v0[5];
  sub_1004D9AAC();
  v2(v3, v1, v4);
  v25(v5, v7, v6);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[20];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[14];
  v16 = v0[10];
  v15 = v0[11];
  if (v10)
  {
    v27 = v0[17];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136446210;
    v26 = v11;
    v19 = *(v14 + *(v16 + 36));
    (*(v15 + 8))(v14, v16);
    v20 = ActionType.rawValue.getter(v19);
    v22 = sub_1000343A8(v20, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v17, 0xCu);
    sub_100008D24(v18);

    (*(v12 + 8))(v26, v27);
  }

  else
  {
    (*(v15 + 8))(v0[14], v0[10]);

    (*(v12 + 8))(v11, v13);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000411A8()
{
  v32 = v0;
  v28 = v0[25];
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[5];

  v2(v3, v1, v4);
  v28(v5, v7, v6);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[29];
    v27 = v0[18];
    v29 = v0[17];
    v30 = v0[19];
    v11 = v0[13];
    v13 = v0[10];
    v12 = v0[11];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = *(v11 + *(v13 + 36));
    (*(v12 + 8))(v11, v13);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_1000343A8(v16, v17, &v31);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[4] = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v19 = sub_1004DD4DC();
    v21 = sub_1000343A8(v19, v20, &v31);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v30, v29);
  }

  else
  {
    v23 = v0[18];
    v22 = v0[19];
    v24 = v0[17];
    (*(v0[11] + 8))(v0[13], v0[10]);

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_1000414A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = type metadata accessor for Action();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = sub_1004D966C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v15 = sub_100035430(v11, qword_1006350F8);
  (*(v12 + 16))(v14, v15, v11);
  (*(v8 + 16))(v10, a2, v7);
  v16 = sub_1004D964C();
  v17 = sub_1004DDF9C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28 = a5;
    v21 = v20;
    v30 = v20;
    *v19 = 136446210;
    v22 = v10[*(v7 + 36)];
    (*(v8 + 8))(v10, v7);
    v23 = ActionType.rawValue.getter(v22);
    v25 = sub_1000343A8(v23, v24, &v30);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, v28, v19, 0xCu);
    sub_100008D24(v21);

    return (*(v12 + 8))(v14, v29);
  }

  else
  {
    (*(v8 + 8))(v10, v7);

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100041790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000435A8(a3, v25 - v10);
  v12 = sub_1004DDA8C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001074C(v11, &qword_100635240);
  }

  else
  {
    sub_1004DDA7C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1004DD9BC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1004DD52C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t static ActionSupportedStatus.allSupported(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = a1 + 32;
    v22 = a1 + 32;
    v5 = 2;
    v21 = *(a1 + 16);
    while (1)
    {
      v6 = *(v4 + 16 * v3);
      v7 = *(v4 + 16 * v3 + 8);
      if (v5 == 2)
      {
        v2 = *(v4 + 16 * v3);
        sub_100035CC8(v2, *(v4 + 16 * v3 + 8));
        goto LABEL_4;
      }

      if (v5 == 1 && v7 == 1)
      {
        v23 = *(v4 + 16 * v3);
        sub_100042B50(v2, 1);
        v2 = v23;
        goto LABEL_4;
      }

      v25 = v2;
      v26 = v5;
      v8 = v6;
      v27 = v6;
      sub_100035CC8(v6, v7);
      v24 = v8;
      sub_100035CC8(v8, v7);
      sub_100042AF8(v2, v5);
      v9 = 0;
      v10 = _swiftEmptyArrayStorage;
      do
      {
        v11 = &v26 + 2 * v9++;
        while (1)
        {
          v12 = *v11;
          if (*v11 != 1)
          {
            break;
          }

LABEL_11:
          v11 += 2;
          if (++v9 == 3)
          {
            goto LABEL_20;
          }
        }

        v13 = *(v11 - 1);
        if (!v12)
        {
          sub_1000354D0(*(v11 - 1), 0);
          goto LABEL_11;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10003A134(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_10003A134((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v16 = &v10[16 * v15];
        *(v16 + 4) = v13;
        *(v16 + 5) = v12;
        v1 = v21;
      }

      while (v9 != 2);
LABEL_20:
      swift_arrayDestroy();
      sub_100004CB8(&unk_1006372E0);
      sub_100042B08(&qword_100637D70, &unk_1006372E0);
      v17 = sub_1004DD30C();
      v19 = v18;
      sub_1000354D0(v24, v7);
      sub_100042B50(v2, v5);

      v2 = v17;
      v7 = v19;
      v4 = v22;
LABEL_4:
      ++v3;
      v5 = v7;
      if (v3 == v1)
      {
        goto LABEL_22;
      }
    }
  }

  v2 = 0;
  v7 = 2;
LABEL_22:
  if (v7 == 2)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v2;
  }
}